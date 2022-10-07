# Face Identification
The models provide 16 x float32, 8 x float32 output vectors.  
Data distribution allows float32 packing to int16 values,
providing 32-byte or 16-byte respective int8 vectors.

### Terminology
**Face Detection** - finding face boundaries on the image.  
**Face Recognition (Identification)** - finding whether two face photos belong to the same person.  

# Hardware
- [Graphcore](https://graphcore.ai) IPUs x1/x4/x16
- Nvidia GPUs x4/x16/x32 (torch: DataParallel, DistributedDataParallel)
- Google TPUs (no meaningful results)
