# Run base ML-KEM ISS tests
./bazelisk.sh test --test_timeout=1000 --copt="-DKYBER_K=2" --cache_test_results=no --sandbox_writable_path="/home/hien/towards-ml-kem-and-ml-dsa-on-opentitan-dev-kmac-only" //sw/otbn/crypto/tests:mlkem512_base_keypair_bench
./bazelisk.sh test --test_timeout=1000 --copt="-DKYBER_K=2" --cache_test_results=no --sandbox_writable_path="/home/hien/towards-ml-kem-and-ml-dsa-on-opentitan-dev-kmac-only" //sw/otbn/crypto/tests:mlkem512_base_encap_bench
./bazelisk.sh test --test_timeout=1000 --copt="-DKYBER_K=2" --cache_test_results=no --sandbox_writable_path="/home/hien/towards-ml-kem-and-ml-dsa-on-opentitan-dev-kmac-only" //sw/otbn/crypto/tests:mlkem512_base_decap_bench
./bazelisk.sh test --test_timeout=1000 --copt="-DKYBER_K=3" --cache_test_results=no --sandbox_writable_path="/home/hien/towards-ml-kem-and-ml-dsa-on-opentitan-dev-kmac-only" //sw/otbn/crypto/tests:mlkem768_base_keypair_bench
./bazelisk.sh test --test_timeout=1000 --copt="-DKYBER_K=3" --cache_test_results=no --sandbox_writable_path="/home/hien/towards-ml-kem-and-ml-dsa-on-opentitan-dev-kmac-only" //sw/otbn/crypto/tests:mlkem768_base_encap_bench
./bazelisk.sh test --test_timeout=1000 --copt="-DKYBER_K=3" --cache_test_results=no --sandbox_writable_path="/home/hien/towards-ml-kem-and-ml-dsa-on-opentitan-dev-kmac-only" //sw/otbn/crypto/tests:mlkem768_base_decap_bench
./bazelisk.sh test --test_timeout=1000 --copt="-DKYBER_K=4" --cache_test_results=no --sandbox_writable_path="/home/hien/towards-ml-kem-and-ml-dsa-on-opentitan-dev-kmac-only" //sw/otbn/crypto/tests:mlkem1024_base_keypair_bench
./bazelisk.sh test --test_timeout=1000 --copt="-DKYBER_K=4" --cache_test_results=no --sandbox_writable_path="/home/hien/towards-ml-kem-and-ml-dsa-on-opentitan-dev-kmac-only" //sw/otbn/crypto/tests:mlkem1024_base_encap_bench
./bazelisk.sh test --test_timeout=1000 --copt="-DKYBER_K=4" --cache_test_results=no --sandbox_writable_path="/home/hien/towards-ml-kem-and-ml-dsa-on-opentitan-dev-kmac-only" //sw/otbn/crypto/tests:mlkem1024_base_decap_bench

# Run plain ML-KEM ISS tests
./bazelisk.sh test --test_timeout=1000 --copt="-DKYBER_K=2" --cache_test_results=no --sandbox_writable_path="/home/hien/towards-ml-kem-and-ml-dsa-on-opentitan-dev-kmac-only" //sw/otbn/crypto/tests:mlkem512_plain_keypair_bench
./bazelisk.sh test --test_timeout=1000 --copt="-DKYBER_K=2" --cache_test_results=no --sandbox_writable_path="/home/hien/towards-ml-kem-and-ml-dsa-on-opentitan-dev-kmac-only" //sw/otbn/crypto/tests:mlkem512_plain_encap_bench
./bazelisk.sh test --test_timeout=1000 --copt="-DKYBER_K=2" --cache_test_results=no --sandbox_writable_path="/home/hien/towards-ml-kem-and-ml-dsa-on-opentitan-dev-kmac-only" //sw/otbn/crypto/tests:mlkem512_plain_decap_bench
./bazelisk.sh test --test_timeout=1000 --copt="-DKYBER_K=3" --cache_test_results=no --sandbox_writable_path="/home/hien/towards-ml-kem-and-ml-dsa-on-opentitan-dev-kmac-only" //sw/otbn/crypto/tests:mlkem768_plain_keypair_bench
./bazelisk.sh test --test_timeout=1000 --copt="-DKYBER_K=3" --cache_test_results=no --sandbox_writable_path="/home/hien/towards-ml-kem-and-ml-dsa-on-opentitan-dev-kmac-only" //sw/otbn/crypto/tests:mlkem768_plain_encap_bench
./bazelisk.sh test --test_timeout=1000 --copt="-DKYBER_K=3" --cache_test_results=no --sandbox_writable_path="/home/hien/towards-ml-kem-and-ml-dsa-on-opentitan-dev-kmac-only" //sw/otbn/crypto/tests:mlkem768_plain_decap_bench
./bazelisk.sh test --test_timeout=1000 --copt="-DKYBER_K=4" --cache_test_results=no --sandbox_writable_path="/home/hien/towards-ml-kem-and-ml-dsa-on-opentitan-dev-kmac-only" //sw/otbn/crypto/tests:mlkem1024_plain_keypair_bench
./bazelisk.sh test --test_timeout=1000 --copt="-DKYBER_K=4" --cache_test_results=no --sandbox_writable_path="/home/hien/towards-ml-kem-and-ml-dsa-on-opentitan-dev-kmac-only" //sw/otbn/crypto/tests:mlkem1024_plain_encap_bench
./bazelisk.sh test --test_timeout=1000 --copt="-DKYBER_K=4" --cache_test_results=no --sandbox_writable_path="/home/hien/towards-ml-kem-and-ml-dsa-on-opentitan-dev-kmac-only" //sw/otbn/crypto/tests:mlkem1024_plain_decap_bench

# Run base ML-DSA ISS tests
./bazelisk.sh test --test_timeout=10000 --copt="-DDILITHIUM_MODE=2" --cache_test_results=no --sandbox_writable_path="/home/hien/towards-ml-kem-and-ml-dsa-on-opentitan-dev-kmac-only/" //sw/otbn/crypto/tests:dilithium2_key_pair_base_bench
./bazelisk.sh test --test_timeout=10000 --copt="-DDILITHIUM_MODE=2" --cache_test_results=no --sandbox_writable_path="/home/hien/towards-ml-kem-and-ml-dsa-on-opentitan-dev-kmac-only/" //sw/otbn/crypto/tests:dilithium2_sign_base_bench
./bazelisk.sh test --test_timeout=10000 --copt="-DDILITHIUM_MODE=2" --cache_test_results=no --sandbox_writable_path="/home/hien/towards-ml-kem-and-ml-dsa-on-opentitan-dev-kmac-only/" //sw/otbn/crypto/tests:dilithium2_verify_base_bench
./bazelisk.sh test --test_timeout=10000 --copt="-DDILITHIUM_MODE=3" --cache_test_results=no --sandbox_writable_path="/home/hien/towards-ml-kem-and-ml-dsa-on-opentitan-dev-kmac-only/" //sw/otbn/crypto/tests:dilithium3_key_pair_base_bench
./bazelisk.sh test --test_timeout=10000 --copt="-DDILITHIUM_MODE=3" --cache_test_results=no --sandbox_writable_path="/home/hien/towards-ml-kem-and-ml-dsa-on-opentitan-dev-kmac-only/" //sw/otbn/crypto/tests:dilithium3_sign_base_bench
./bazelisk.sh test --test_timeout=10000 --copt="-DDILITHIUM_MODE=3" --cache_test_results=no --sandbox_writable_path="/home/hien/towards-ml-kem-and-ml-dsa-on-opentitan-dev-kmac-only/" //sw/otbn/crypto/tests:dilithium3_verify_base_bench
./bazelisk.sh test --test_timeout=10000 --copt="-DDILITHIUM_MODE=5" --cache_test_results=no --sandbox_writable_path="/home/hien/towards-ml-kem-and-ml-dsa-on-opentitan-dev-kmac-only/" //sw/otbn/crypto/tests:dilithium5_key_pair_base_bench
./bazelisk.sh test --test_timeout=10000 --copt="-DDILITHIUM_MODE=5" --cache_test_results=no --sandbox_writable_path="/home/hien/towards-ml-kem-and-ml-dsa-on-opentitan-dev-kmac-only/" //sw/otbn/crypto/tests:dilithium5_sign_base_bench
./bazelisk.sh test --test_timeout=10000 --copt="-DDILITHIUM_MODE=5" --cache_test_results=no --sandbox_writable_path="/home/hien/towards-ml-kem-and-ml-dsa-on-opentitan-dev-kmac-only/" //sw/otbn/crypto/tests:dilithium5_verify_base_bench

# Run plain ML-DSA ISS tests
./bazelisk.sh test --test_timeout=10000 --copt="-DDILITHIUM_MODE=2" --cache_test_results=no --sandbox_writable_path="/home/hien/towards-ml-kem-and-ml-dsa-on-opentitan-dev-kmac-only/" //sw/otbn/crypto/tests:dilithium2_key_pair_plain_bench
./bazelisk.sh test --test_timeout=10000 --copt="-DDILITHIUM_MODE=2" --cache_test_results=no --sandbox_writable_path="/home/hien/towards-ml-kem-and-ml-dsa-on-opentitan-dev-kmac-only/" //sw/otbn/crypto/tests:dilithium2_sign_plain_bench
./bazelisk.sh test --test_timeout=10000 --copt="-DDILITHIUM_MODE=2" --cache_test_results=no --sandbox_writable_path="/home/hien/towards-ml-kem-and-ml-dsa-on-opentitan-dev-kmac-only/" //sw/otbn/crypto/tests:dilithium2_verify_plain_bench
./bazelisk.sh test --test_timeout=10000 --copt="-DDILITHIUM_MODE=3" --cache_test_results=no --sandbox_writable_path="/home/hien/towards-ml-kem-and-ml-dsa-on-opentitan-dev-kmac-only/" //sw/otbn/crypto/tests:dilithium3_key_pair_plain_bench
./bazelisk.sh test --test_timeout=10000 --copt="-DDILITHIUM_MODE=3" --cache_test_results=no --sandbox_writable_path="/home/hien/towards-ml-kem-and-ml-dsa-on-opentitan-dev-kmac-only/" //sw/otbn/crypto/tests:dilithium3_sign_plain_bench
./bazelisk.sh test --test_timeout=10000 --copt="-DDILITHIUM_MODE=3" --cache_test_results=no --sandbox_writable_path="/home/hien/towards-ml-kem-and-ml-dsa-on-opentitan-dev-kmac-only/" //sw/otbn/crypto/tests:dilithium3_verify_plain_bench
./bazelisk.sh test --test_timeout=10000 --copt="-DDILITHIUM_MODE=5" --cache_test_results=no --sandbox_writable_path="/home/hien/towards-ml-kem-and-ml-dsa-on-opentitan-dev-kmac-only/" //sw/otbn/crypto/tests:dilithium5_key_pair_plain_bench
./bazelisk.sh test --test_timeout=10000 --copt="-DDILITHIUM_MODE=5" --cache_test_results=no --sandbox_writable_path="/home/hien/towards-ml-kem-and-ml-dsa-on-opentitan-dev-kmac-only/" //sw/otbn/crypto/tests:dilithium5_sign_plain_bench
./bazelisk.sh test --test_timeout=10000 --copt="-DDILITHIUM_MODE=5" --cache_test_results=no --sandbox_writable_path="/home/hien/towards-ml-kem-and-ml-dsa-on-opentitan-dev-kmac-only/" //sw/otbn/crypto/tests:dilithium5_verify_plain_bench

# Load bitstream on CW310
./bazelisk.sh run //sw/host/opentitantool -- fpga load-bitstream home/hien/towards-ml-kem-and-ml-dsa-on-opentitan-dev-kmac-only/hw/bitstream/cw310/lowrisc_systems_chip_earlgrey_cw310_0.1.bit

# Run FPGA KMAC interface test
./bazelisk.sh test --define bitstream=skip --cache_test_results=no --test_output=streamed //sw/device/tests:otbn_kmac_smoketest_fpga_cw310_test_rom

# Run FPGA ML-KEM tests
./bazelisk.sh test --define  bitstream=skip --copt="-DKYBER_K=2" --test_timeout=10000 --test_output=streamed //sw/device/tests:otbn_mlkem_keypair_test_fpga_cw310_test_rom
./bazelisk.sh test --define  bitstream=skip --copt="-DKYBER_K=3" --test_timeout=10000 --test_output=streamed //sw/device/tests:otbn_mlkem_keypair_test_fpga_cw310_test_rom
./bazelisk.sh test --define  bitstream=skip --copt="-DKYBER_K=4" --test_timeout=10000 --test_output=streamed //sw/device/tests:otbn_mlkem_keypair_test_fpga_cw310_test_rom

./bazelisk.sh test --define  bitstream=skip --copt="-DKYBER_K=2" --test_timeout=10000 --test_output=streamed //sw/device/tests:otbn_mlkem_encap_test_fpga_cw310_test_rom
./bazelisk.sh test --define  bitstream=skip --copt="-DKYBER_K=3" --test_timeout=10000 --test_output=streamed //sw/device/tests:otbn_mlkem_encap_test_fpga_cw310_test_rom
./bazelisk.sh test --define  bitstream=skip --copt="-DKYBER_K=4" --test_timeout=10000 --test_output=streamed //sw/device/tests:otbn_mlkem_encap_test_fpga_cw310_test_rom

./bazelisk.sh test --define  bitstream=skip --copt="-DKYBER_K=2" --test_timeout=10000 --test_output=streamed //sw/device/tests:otbn_mlkem_decap_test_fpga_cw310_test_rom
./bazelisk.sh test --define  bitstream=skip --copt="-DKYBER_K=3" --test_timeout=10000 --test_output=streamed //sw/device/tests:otbn_mlkem_decap_test_fpga_cw310_test_rom
./bazelisk.sh test --define  bitstream=skip --copt="-DKYBER_K=4" --test_timeout=10000 --test_output=streamed //sw/device/tests:otbn_mlkem_decap_test_fpga_cw310_test_rom

# Run FPGA ML-DSA tests
./bazelisk.sh test --define  bitstream=skip --copt="-DDILITHIUM_MODE=2" --test_timeout=10000 --test_output=streamed //sw/device/tests:otbn_mldsa_keypair_test_fpga_cw310_test_rom
./bazelisk.sh test --define  bitstream=skip --copt="-DDILITHIUM_MODE=3" --test_timeout=10000 --test_output=streamed //sw/device/tests:otbn_mldsa_keypair_test_fpga_cw310_test_rom
./bazelisk.sh test --define  bitstream=skip --copt="-DDILITHIUM_MODE=5" --test_timeout=10000 --test_output=streamed //sw/device/tests:otbn_mldsa_keypair_test_fpga_cw310_test_rom

./bazelisk.sh test --define  bitstream=skip --copt="-DDILITHIUM_MODE=2" --test_timeout=10000 --test_output=streamed //sw/device/tests:otbn_mldsa_sign_test_fpga_cw310_test_rom
./bazelisk.sh test --define  bitstream=skip --copt="-DDILITHIUM_MODE=3" --test_timeout=10000 --test_output=streamed //sw/device/tests:otbn_mldsa_sign_test_fpga_cw310_test_rom
./bazelisk.sh test --define  bitstream=skip --copt="-DDILITHIUM_MODE=5" --test_timeout=10000 --test_output=streamed //sw/device/tests:otbn_mldsa_sign_test_fpga_cw310_test_rom

./bazelisk.sh test --define  bitstream=skip --copt="-DDILITHIUM_MODE=2" --test_timeout=10000 --test_output=streamed //sw/device/tests:otbn_mldsa_verify_test_fpga_cw310_test_rom
./bazelisk.sh test --define  bitstream=skip --copt="-DDILITHIUM_MODE=3" --test_timeout=10000 --test_output=streamed //sw/device/tests:otbn_mldsa_verify_test_fpga_cw310_test_rom
./bazelisk.sh test --define  bitstream=skip --copt="-DDILITHIUM_MODE=5" --test_timeout=10000 --test_output=streamed //sw/device/tests:otbn_mldsa_verify_test_fpga_cw310_test_rom