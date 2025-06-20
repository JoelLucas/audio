# audio
fix to audio android 16

rm -rf hardware/qcom-caf/sm8250/audio

rm -rf hardware/qcom-caf/sm8350/audio

cp -r audio voltage/hardware/qcom-caf/sm8250/audio/

cp -r audio voltage/hardware/qcom-caf/sm8350/audio/

rm -rf audio/
