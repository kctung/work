gcloud ai-platform jobs submit training hp_kt_resnet_tpu_hb_tune \
--staging-bucket=gs://ai-tpu-experiment \
--package-path=tfk \
--module-name=tfk.tuner.hp_kt_resnet_tpu_act \
--runtime-version=2.2 \
--python-version=3.7 \
--scale-tier=BASIC_TPU \
--region=us-central1 \
--use-chief-in-tf-config="true" \
-- \
--distribution_strategy=tpu \
--data_dir=gs://ai-tpu-experiment/tfrecord-flowers \
--model_dir=gs://ai-tpu-experiment/hp_kt_resnet_tpu_hb_tune \
--tuner_type=HYPERBAND
