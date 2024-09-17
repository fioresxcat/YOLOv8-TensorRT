
# onnx
# python3 export-det.py \
#     --weights yolov8n-face.pt \
#     --iou-thres 0.65 \
#     --conf-thres 0.3 \
#     --topk 300 \
#     --opset 14 \
#     --sim \
#     --input-shape 6 3 640 640 \
#     --device cuda:0

# python3 export-det.py \
#     --weights yolov9s-person_laptop_head.pt \
#     --iou-thres 0.65 \
#     --conf-thres 0.3 \
#     --topk 300 \
#     --opset 14 \
#     --sim \
#     --input-shape 1 3 640 640 \
#     --device cuda:0

# tensorrt
# python3 build.py \
#     --weights yolov8n-face-batch6.onnx \
#     --iou-thres 0.65 \
#     --conf-thres 0.3 \
#     --topk 300 \
#     --device cuda:0

python3 build.py \
    --weights yolov9s-person_laptop_head-batch1.onnx \
    --iou-thres 0.65 \
    --conf-thres 0.3 \
    --topk 300 \
    --fp16  \
    --device cuda:0