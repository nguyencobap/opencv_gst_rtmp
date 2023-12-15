from opencv_gst_rtmp import OpenCVStreamGSTRTMP
import time

server = OpenCVStreamGSTRTMP(rtmp_url="rtmp://localhost:1935/live", stream_link="rtsp://example.com", use_gpu=False)
server.start_background()

# Keep app run
while True:
    time.sleep(10)