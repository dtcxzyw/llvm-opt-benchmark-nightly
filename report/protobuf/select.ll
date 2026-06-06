inline.NumInlined: 39
inline.NumDeleted: 26
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@upb_DecodeFast_GetFunctionName.names = internal unnamed_addr constant [80 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79], align 16
@.str = private unnamed_addr constant [36 x i8] c"upb_DecodeFast_Bool_Scalar_Tag1Byte\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"upb_DecodeFast_Bool_Scalar_Tag2Byte\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"upb_DecodeFast_Bool_Oneof_Tag1Byte\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"upb_DecodeFast_Bool_Oneof_Tag2Byte\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"upb_DecodeFast_Bool_Repeated_Tag1Byte\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"upb_DecodeFast_Bool_Repeated_Tag2Byte\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"upb_DecodeFast_Bool_Packed_Tag1Byte\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"upb_DecodeFast_Bool_Packed_Tag2Byte\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"upb_DecodeFast_Varint32_Scalar_Tag1Byte\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"upb_DecodeFast_Varint32_Scalar_Tag2Byte\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"upb_DecodeFast_Varint32_Oneof_Tag1Byte\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"upb_DecodeFast_Varint32_Oneof_Tag2Byte\00", align 1
@.str.12 = private unnamed_addr constant [42 x i8] c"upb_DecodeFast_Varint32_Repeated_Tag1Byte\00", align 1
@.str.13 = private unnamed_addr constant [42 x i8] c"upb_DecodeFast_Varint32_Repeated_Tag2Byte\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"upb_DecodeFast_Varint32_Packed_Tag1Byte\00", align 1
@.str.15 = private unnamed_addr constant [40 x i8] c"upb_DecodeFast_Varint32_Packed_Tag2Byte\00", align 1
@.str.16 = private unnamed_addr constant [40 x i8] c"upb_DecodeFast_Varint64_Scalar_Tag1Byte\00", align 1
@.str.17 = private unnamed_addr constant [40 x i8] c"upb_DecodeFast_Varint64_Scalar_Tag2Byte\00", align 1
@.str.18 = private unnamed_addr constant [39 x i8] c"upb_DecodeFast_Varint64_Oneof_Tag1Byte\00", align 1
@.str.19 = private unnamed_addr constant [39 x i8] c"upb_DecodeFast_Varint64_Oneof_Tag2Byte\00", align 1
@.str.20 = private unnamed_addr constant [42 x i8] c"upb_DecodeFast_Varint64_Repeated_Tag1Byte\00", align 1
@.str.21 = private unnamed_addr constant [42 x i8] c"upb_DecodeFast_Varint64_Repeated_Tag2Byte\00", align 1
@.str.22 = private unnamed_addr constant [40 x i8] c"upb_DecodeFast_Varint64_Packed_Tag1Byte\00", align 1
@.str.23 = private unnamed_addr constant [40 x i8] c"upb_DecodeFast_Varint64_Packed_Tag2Byte\00", align 1
@.str.24 = private unnamed_addr constant [40 x i8] c"upb_DecodeFast_ZigZag32_Scalar_Tag1Byte\00", align 1
@.str.25 = private unnamed_addr constant [40 x i8] c"upb_DecodeFast_ZigZag32_Scalar_Tag2Byte\00", align 1
@.str.26 = private unnamed_addr constant [39 x i8] c"upb_DecodeFast_ZigZag32_Oneof_Tag1Byte\00", align 1
@.str.27 = private unnamed_addr constant [39 x i8] c"upb_DecodeFast_ZigZag32_Oneof_Tag2Byte\00", align 1
@.str.28 = private unnamed_addr constant [42 x i8] c"upb_DecodeFast_ZigZag32_Repeated_Tag1Byte\00", align 1
@.str.29 = private unnamed_addr constant [42 x i8] c"upb_DecodeFast_ZigZag32_Repeated_Tag2Byte\00", align 1
@.str.30 = private unnamed_addr constant [40 x i8] c"upb_DecodeFast_ZigZag32_Packed_Tag1Byte\00", align 1
@.str.31 = private unnamed_addr constant [40 x i8] c"upb_DecodeFast_ZigZag32_Packed_Tag2Byte\00", align 1
@.str.32 = private unnamed_addr constant [40 x i8] c"upb_DecodeFast_ZigZag64_Scalar_Tag1Byte\00", align 1
@.str.33 = private unnamed_addr constant [40 x i8] c"upb_DecodeFast_ZigZag64_Scalar_Tag2Byte\00", align 1
@.str.34 = private unnamed_addr constant [39 x i8] c"upb_DecodeFast_ZigZag64_Oneof_Tag1Byte\00", align 1
@.str.35 = private unnamed_addr constant [39 x i8] c"upb_DecodeFast_ZigZag64_Oneof_Tag2Byte\00", align 1
@.str.36 = private unnamed_addr constant [42 x i8] c"upb_DecodeFast_ZigZag64_Repeated_Tag1Byte\00", align 1
@.str.37 = private unnamed_addr constant [42 x i8] c"upb_DecodeFast_ZigZag64_Repeated_Tag2Byte\00", align 1
@.str.38 = private unnamed_addr constant [40 x i8] c"upb_DecodeFast_ZigZag64_Packed_Tag1Byte\00", align 1
@.str.39 = private unnamed_addr constant [40 x i8] c"upb_DecodeFast_ZigZag64_Packed_Tag2Byte\00", align 1
@.str.40 = private unnamed_addr constant [39 x i8] c"upb_DecodeFast_Fixed32_Scalar_Tag1Byte\00", align 1
@.str.41 = private unnamed_addr constant [39 x i8] c"upb_DecodeFast_Fixed32_Scalar_Tag2Byte\00", align 1
@.str.42 = private unnamed_addr constant [38 x i8] c"upb_DecodeFast_Fixed32_Oneof_Tag1Byte\00", align 1
@.str.43 = private unnamed_addr constant [38 x i8] c"upb_DecodeFast_Fixed32_Oneof_Tag2Byte\00", align 1
@.str.44 = private unnamed_addr constant [41 x i8] c"upb_DecodeFast_Fixed32_Repeated_Tag1Byte\00", align 1
@.str.45 = private unnamed_addr constant [41 x i8] c"upb_DecodeFast_Fixed32_Repeated_Tag2Byte\00", align 1
@.str.46 = private unnamed_addr constant [39 x i8] c"upb_DecodeFast_Fixed32_Packed_Tag1Byte\00", align 1
@.str.47 = private unnamed_addr constant [39 x i8] c"upb_DecodeFast_Fixed32_Packed_Tag2Byte\00", align 1
@.str.48 = private unnamed_addr constant [39 x i8] c"upb_DecodeFast_Fixed64_Scalar_Tag1Byte\00", align 1
@.str.49 = private unnamed_addr constant [39 x i8] c"upb_DecodeFast_Fixed64_Scalar_Tag2Byte\00", align 1
@.str.50 = private unnamed_addr constant [38 x i8] c"upb_DecodeFast_Fixed64_Oneof_Tag1Byte\00", align 1
@.str.51 = private unnamed_addr constant [38 x i8] c"upb_DecodeFast_Fixed64_Oneof_Tag2Byte\00", align 1
@.str.52 = private unnamed_addr constant [41 x i8] c"upb_DecodeFast_Fixed64_Repeated_Tag1Byte\00", align 1
@.str.53 = private unnamed_addr constant [41 x i8] c"upb_DecodeFast_Fixed64_Repeated_Tag2Byte\00", align 1
@.str.54 = private unnamed_addr constant [39 x i8] c"upb_DecodeFast_Fixed64_Packed_Tag1Byte\00", align 1
@.str.55 = private unnamed_addr constant [39 x i8] c"upb_DecodeFast_Fixed64_Packed_Tag2Byte\00", align 1
@.str.56 = private unnamed_addr constant [38 x i8] c"upb_DecodeFast_String_Scalar_Tag1Byte\00", align 1
@.str.57 = private unnamed_addr constant [38 x i8] c"upb_DecodeFast_String_Scalar_Tag2Byte\00", align 1
@.str.58 = private unnamed_addr constant [37 x i8] c"upb_DecodeFast_String_Oneof_Tag1Byte\00", align 1
@.str.59 = private unnamed_addr constant [37 x i8] c"upb_DecodeFast_String_Oneof_Tag2Byte\00", align 1
@.str.60 = private unnamed_addr constant [40 x i8] c"upb_DecodeFast_String_Repeated_Tag1Byte\00", align 1
@.str.61 = private unnamed_addr constant [40 x i8] c"upb_DecodeFast_String_Repeated_Tag2Byte\00", align 1
@.str.62 = private unnamed_addr constant [38 x i8] c"upb_DecodeFast_String_Packed_Tag1Byte\00", align 1
@.str.63 = private unnamed_addr constant [38 x i8] c"upb_DecodeFast_String_Packed_Tag2Byte\00", align 1
@.str.64 = private unnamed_addr constant [37 x i8] c"upb_DecodeFast_Bytes_Scalar_Tag1Byte\00", align 1
@.str.65 = private unnamed_addr constant [37 x i8] c"upb_DecodeFast_Bytes_Scalar_Tag2Byte\00", align 1
@.str.66 = private unnamed_addr constant [36 x i8] c"upb_DecodeFast_Bytes_Oneof_Tag1Byte\00", align 1
@.str.67 = private unnamed_addr constant [36 x i8] c"upb_DecodeFast_Bytes_Oneof_Tag2Byte\00", align 1
@.str.68 = private unnamed_addr constant [39 x i8] c"upb_DecodeFast_Bytes_Repeated_Tag1Byte\00", align 1
@.str.69 = private unnamed_addr constant [39 x i8] c"upb_DecodeFast_Bytes_Repeated_Tag2Byte\00", align 1
@.str.70 = private unnamed_addr constant [37 x i8] c"upb_DecodeFast_Bytes_Packed_Tag1Byte\00", align 1
@.str.71 = private unnamed_addr constant [37 x i8] c"upb_DecodeFast_Bytes_Packed_Tag2Byte\00", align 1
@.str.72 = private unnamed_addr constant [39 x i8] c"upb_DecodeFast_Message_Scalar_Tag1Byte\00", align 1
@.str.73 = private unnamed_addr constant [39 x i8] c"upb_DecodeFast_Message_Scalar_Tag2Byte\00", align 1
@.str.74 = private unnamed_addr constant [38 x i8] c"upb_DecodeFast_Message_Oneof_Tag1Byte\00", align 1
@.str.75 = private unnamed_addr constant [38 x i8] c"upb_DecodeFast_Message_Oneof_Tag2Byte\00", align 1
@.str.76 = private unnamed_addr constant [41 x i8] c"upb_DecodeFast_Message_Repeated_Tag1Byte\00", align 1
@.str.77 = private unnamed_addr constant [41 x i8] c"upb_DecodeFast_Message_Repeated_Tag2Byte\00", align 1
@.str.78 = private unnamed_addr constant [39 x i8] c"upb_DecodeFast_Message_Packed_Tag1Byte\00", align 1
@.str.79 = private unnamed_addr constant [39 x i8] c"upb_DecodeFast_Message_Packed_Tag2Byte\00", align 1
@.str.80 = private unnamed_addr constant [31 x i8] c"_upb_FastDecoder_DecodeGeneric\00", align 1
@upb_DecodeFast_GetFieldType.types = internal unnamed_addr constant [19 x i8] c"\00\06\05\02\02\01\06\05\00\07\00\09\08\01\01\05\06\03\04", align 16
@switch.table.upb_DecodeFast_BuildTable.18 = private unnamed_addr constant [18 x i32] [i32 1, i32 5, i32 0, i32 0, i32 0, i32 1, i32 5, i32 0, i32 2, i32 3, i32 2, i32 2, i32 0, i32 0, i32 5, i32 1, i32 0, i32 0], align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden range(i32 0, 6) i32 @GetWireTypeForField(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 11
  %.val = load i8, ptr %i.a, align 1, !tbaa !7    ; 2 uses
  %i.b = and i8 %.val, 4
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %.sink.split, label %bb.b

.sink.split:                                      ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 10
  %.val2 = load i8, ptr %i.c, align 2, !tbaa !10
  %i.d = and i8 %.val, 16
  %.not.i = icmp eq i8 %i.d, 0
  %switch.table.GetWireTypeForField.17.switch.table.GetWireTypeForField = select i1 %.not.i, ptr @switch.table.upb_DecodeFast_BuildTable.18, ptr @switch.table.upb_DecodeFast_BuildTable.18
  %i.e = sext i8 %.val2 to i64
  %1 = getelementptr [4 x i8], ptr %switch.table.GetWireTypeForField.17.switch.table.GetWireTypeForField, i64 %i.e
  %switch.gep11 = getelementptr i8, ptr %1, i64 -4
  %switch.load12 = load i32, ptr %switch.gep11, align 4
  br label %bb.b

bb.b:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i32 [ 2, %bb.a ], [ %switch.load12, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 0, 33) i32 @upb_DecodeFast_BuildTable(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) initializes((0, 4), (8, 20), (24, 36), (40, 52), (56, 68), (72, 84), (88, 100), (104, 116), (120, 132), (136, 148), (152, 164), (168, 180), (184, 196), (200, 212), (216, 228), (232, 244), (248, 260), (264, 276), (280, 292), (296, 308), (312, 324), (328, 340), (344, 356), (360, 372), (376, 388), (392, 404), (408, 420), (424, 436), (440, 452), (456, 468), (472, 484), (488, 500), (504, 512)) %1) local_unnamed_addr #1 {
bb.a:
  store i32 -1, ptr %1, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.a, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 -1, ptr %i.b, align 8, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 0, ptr %i.c, align 8, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 -1, ptr %i.d, align 8, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 0, ptr %i.e, align 8, !tbaa !14
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i32 -1, ptr %i.f, align 8, !tbaa !11
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i64 0, ptr %i.g, align 8, !tbaa !14
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i32 -1, ptr %i.h, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i64 0, ptr %i.i, align 8, !tbaa !14
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i32 -1, ptr %i.j, align 8, !tbaa !11
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i64 0, ptr %i.k, align 8, !tbaa !14
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i32 -1, ptr %i.l, align 8, !tbaa !11
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i64 0, ptr %i.m, align 8, !tbaa !14
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i32 -1, ptr %i.n, align 8, !tbaa !11
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i64 0, ptr %i.o, align 8, !tbaa !14
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 128
  store i32 -1, ptr %i.p, align 8, !tbaa !11
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 136
  store i64 0, ptr %i.q, align 8, !tbaa !14
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 144
  store i32 -1, ptr %i.r, align 8, !tbaa !11
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 152
  store i64 0, ptr %i.s, align 8, !tbaa !14
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 160
  store i32 -1, ptr %i.t, align 8, !tbaa !11
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 168
  store i64 0, ptr %i.u, align 8, !tbaa !14
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 176
  store i32 -1, ptr %i.v, align 8, !tbaa !11
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 184
  store i64 0, ptr %i.w, align 8, !tbaa !14
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 192
  store i32 -1, ptr %i.x, align 8, !tbaa !11
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 200
  store i64 0, ptr %i.y, align 8, !tbaa !14
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 208
  store i32 -1, ptr %i.z, align 8, !tbaa !11
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 216
  store i64 0, ptr %i.aa, align 8, !tbaa !14
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 224
  store i32 -1, ptr %i.ab, align 8, !tbaa !11
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 232
  store i64 0, ptr %i.ac, align 8, !tbaa !14
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 240
  store i32 -1, ptr %i.ad, align 8, !tbaa !11
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 248
  store i64 0, ptr %i.ae, align 8, !tbaa !14
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 256
  store i32 -1, ptr %i.af, align 8, !tbaa !11
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 264
  store i64 0, ptr %i.ag, align 8, !tbaa !14
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 272
  store i32 -1, ptr %i.ah, align 8, !tbaa !11
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 280
  store i64 0, ptr %i.ai, align 8, !tbaa !14
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 288
  store i32 -1, ptr %i.aj, align 8, !tbaa !11
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 296
  store i64 0, ptr %i.ak, align 8, !tbaa !14
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 304
  store i32 -1, ptr %i.al, align 8, !tbaa !11
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 312
  store i64 0, ptr %i.am, align 8, !tbaa !14
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 320
  store i32 -1, ptr %i.an, align 8, !tbaa !11
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 328
  store i64 0, ptr %i.ao, align 8, !tbaa !14
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 336
  store i32 -1, ptr %i.ap, align 8, !tbaa !11
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 344
  store i64 0, ptr %i.aq, align 8, !tbaa !14
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 352
  store i32 -1, ptr %i.ar, align 8, !tbaa !11
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 360
  store i64 0, ptr %i.as, align 8, !tbaa !14
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 368
  store i32 -1, ptr %i.at, align 8, !tbaa !11
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 376
  store i64 0, ptr %i.au, align 8, !tbaa !14
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 384
  store i32 -1, ptr %i.av, align 8, !tbaa !11
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 392
  store i64 0, ptr %i.aw, align 8, !tbaa !14
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 400
  store i32 -1, ptr %i.ax, align 8, !tbaa !11
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 408
  store i64 0, ptr %i.ay, align 8, !tbaa !14
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 416
  store i32 -1, ptr %i.az, align 8, !tbaa !11
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 424
  store i64 0, ptr %i.ba, align 8, !tbaa !14
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 432
  store i32 -1, ptr %i.bb, align 8, !tbaa !11
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 440
  store i64 0, ptr %i.bc, align 8, !tbaa !14
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 448
  store i32 -1, ptr %i.bd, align 8, !tbaa !11
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 456
  store i64 0, ptr %i.be, align 8, !tbaa !14
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 464
  store i32 -1, ptr %i.bf, align 8, !tbaa !11
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 472
  store i64 0, ptr %i.bg, align 8, !tbaa !14
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 480
  store i32 -1, ptr %i.bh, align 8, !tbaa !11
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 488
  store i64 0, ptr %i.bi, align 8, !tbaa !14
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 496
  store i32 -1, ptr %i.bj, align 8, !tbaa !11
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 504
  store i64 0, ptr %i.bk, align 8, !tbaa !14
  %i.bl = getelementptr i8, ptr %0, i64 10
  %.val = load i16, ptr %i.bl, align 2, !tbaa !15 ; 2 uses
  %i.bm = zext i16 %.val to i64
  %.not = icmp eq i16 %.val, 0
  br i1 %.not, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.val25 = load ptr, ptr %0, align 8, !tbaa !16
  br label %bb.c

._crit_edge:                                      ; preds = %upb_DecodeFast_TryFillEntry.exit.thread
  %i.bn = icmp eq i32 %.2, 0
  %i.bo = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.2, i1 true)
  %i.bp = sub nuw nsw i32 32, %i.bo
  %i.bq = shl nuw nsw i32 1, %i.bp
  br i1 %i.bn, label %._crit_edge.thread, label %bb.b

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %._crit_edge.thread
  %i.br = phi i32 [ 0, %._crit_edge.thread ], [ %i.bq, %._crit_edge ]
  ret i32 %i.br

bb.c:                                             ; preds = %.lr.ph, %upb_DecodeFast_TryFillEntry.exit.thread
  %.02335 = phi i32 [ 0, %.lr.ph ], [ %.2, %upb_DecodeFast_TryFillEntry.exit.thread ] ; 9 uses
  %.02434 = phi i64 [ 0, %.lr.ph ], [ %i.ef, %upb_DecodeFast_TryFillEntry.exit.thread ] ; 2 uses
  %i.bs = getelementptr inbounds nuw [12 x i8], ptr %.val25, i64 %.02434 ; 8 uses
  %.val.i.i = load i32, ptr %i.bs, align 4, !tbaa !19 ; 6 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 11
  %.val.i.i.i = load i8, ptr %i.bt, align 1, !tbaa !7 ; 3 uses
  %i.bu = and i8 %.val.i.i.i, 4
  %.not.i.i.i = icmp eq i8 %i.bu, 0               ; 2 uses
  br i1 %.not.i.i.i, label %GetWireTypeForField.exit.i.i.sink.split, label %GetWireTypeForField.exit.i.i

GetWireTypeForField.exit.i.i.sink.split:          ; preds = %bb.c
  %i.bv = getelementptr i8, ptr %i.bs, i64 10
  %.val2.i.i.i = load i8, ptr %i.bv, align 2, !tbaa !10
  %i.bw = and i8 %.val.i.i.i, 16
  %.not.i.i.i.i = icmp eq i8 %i.bw, 0
  %switch.table.upb_DecodeFast_BuildTable.18.switch.table.upb_DecodeFast_BuildTable = select i1 %.not.i.i.i.i, ptr @switch.table.upb_DecodeFast_BuildTable.18, ptr @switch.table.upb_DecodeFast_BuildTable.18
  %i.bx = sext i8 %.val2.i.i.i to i64
  %2 = getelementptr [4 x i8], ptr %switch.table.upb_DecodeFast_BuildTable.18.switch.table.upb_DecodeFast_BuildTable, i64 %i.bx
  %switch.gep43 = getelementptr i8, ptr %2, i64 -4
  %switch.load44 = load i32, ptr %switch.gep43, align 4
  br label %GetWireTypeForField.exit.i.i

GetWireTypeForField.exit.i.i:                     ; preds = %GetWireTypeForField.exit.i.i.sink.split, %bb.c
  %.0.i.i.i = phi i32 [ 2, %bb.c ], [ %switch.load44, %GetWireTypeForField.exit.i.i.sink.split ] ; 2 uses
  %i.by = icmp ult i32 %.val.i.i, 2048
  br i1 %i.by, label %bb.d, label %upb_DecodeFast_TryFillEntry.exit.thread

bb.d:                                             ; preds = %GetWireTypeForField.exit.i.i
  %i.bz = icmp samesign ugt i32 %.val.i.i, 15
  br i1 %i.bz, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ca = shl nuw nsw i32 %.val.i.i, 4
  %i.cb = and i32 %i.ca, 32512
  %i.cc = shl nuw nsw i32 %.val.i.i, 3
  %i.cd = and i32 %i.cc, 120
  %i.ce = or disjoint i32 %i.cb, %i.cd
  %i.cf = or disjoint i32 %i.ce, %.0.i.i.i
  %i.cg = or disjoint i32 %i.cf, 128
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ch = shl nuw nsw i32 %.val.i.i, 3
  %i.ci = or disjoint i32 %.0.i.i.i, %i.ch
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.02.ph.in.i = phi i32 [ %i.cg, %bb.e ], [ %i.ci, %bb.f ]
  %.0.ph.i = phi i32 [ 1, %bb.e ], [ 0, %bb.f ]
  %i.cj = and i8 %.val.i.i.i, 3
  switch i8 %i.cj, label %bb.j [
    i8 0, label %upb_DecodeFast_TryFillEntry.exit.thread
    i8 1, label %bb.h
    i8 2, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.ck = select i1 %.not.i.i.i, i32 2, i32 3
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.cl = getelementptr i8, ptr %i.bs, i64 6
  %.val7.i.i.i = load i16, ptr %i.cl, align 2, !tbaa !20
  %.val7.lobit.i.i.i = lshr i16 %.val7.i.i.i, 15
  %i.cm = zext nneg i16 %.val7.lobit.i.i.i to i32
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  unreachable

bb.k:                                             ; preds = %bb.i, %bb.h
  %.03.ph.i.i = phi i32 [ %i.ck, %bb.h ], [ %i.cm, %bb.i ]
  %i.cn = getelementptr i8, ptr %i.bs, i64 10
  %.val.i15.i = load i8, ptr %i.cn, align 2, !tbaa !10 ; 3 uses
  switch i8 %.val.i15.i, label %bb.l [
    i8 10, label %upb_DecodeFast_TryFillEntry.exit.thread
    i8 14, label %upb_DecodeFast_TryFillEntry.exit.thread
  ]

bb.l:                                             ; preds = %bb.k
  %i.co = zext i8 %.val.i15.i to i64
  %i.cp = getelementptr inbounds nuw i8, ptr @upb_DecodeFast_GetFieldType.types, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !21
  %i.cr = sext i8 %i.cq to i32
  %i.cs = shl nsw i32 %i.cr, 3
  %i.ct = shl nuw nsw i32 %.03.ph.i.i, 1
  %i.cu = or disjoint i32 %i.ct, %.0.ph.i
  %i.cv = or i32 %i.cs, %i.cu                     ; 2 uses
  %switch.i = icmp ult i32 %i.cv, 72
  br i1 %switch.i, label %bb.m, label %upb_DecodeFast_TryFillEntry.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.cw = getelementptr i8, ptr %i.bs, i64 4
  %.val10.i.i = load i16, ptr %i.cw, align 4, !tbaa !22
  %i.cx = zext i16 %.val10.i.i to i64
  %i.cy = getelementptr i8, ptr %i.bs, i64 6
  %.val.i17.i = load i16, ptr %i.cy, align 2, !tbaa !20 ; 4 uses
  %i.cz = icmp slt i16 %.val.i17.i, 0
  %i.da = tail call i16 @llvm.smin.i16(i16 %.val.i17.i, i16 -1)
  %narrow.i.i = xor i16 %i.da, -1
  %i.db = zext nneg i16 %narrow.i.i to i64
  %i.dc = and i8 %.val.i15.i, -2
  %spec.select.i.i.i = icmp eq i8 %i.dc, 10
  br i1 %spec.select.i.i.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.de = load i16, ptr %i.dd, align 4, !tbaa !23
  %i.df = zext i16 %i.de to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.dg = phi i64 [ %i.df, %bb.n ], [ 0, %bb.m ]  ; 2 uses
  br i1 %i.cz, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dh = zext nneg i32 %.val.i.i to i64
  br label %upb_DecodeFast_GetPresence.exit.thread.i.i

bb.q:                                             ; preds = %bb.o
  %.not.i.i18.i = icmp eq i16 %.val.i17.i, 0
  br i1 %.not.i.i18.i, label %upb_DecodeFast_GetPresence.exit.thread.i.i, label %upb_DecodeFast_GetPresence.exit.i.i

upb_DecodeFast_GetPresence.exit.i.i:              ; preds = %bb.q
  %i.di = zext nneg i16 %.val.i17.i to i64
  %i.dj = add nsw i64 %i.di, -64                  ; 2 uses
  %i.dk = icmp ugt i64 %i.dj, 31
  br i1 %i.dk, label %upb_DecodeFast_TryFillEntry.exit.thread, label %upb_DecodeFast_GetPresence.exit.thread.i.i

upb_DecodeFast_GetPresence.exit.thread.i.i:       ; preds = %upb_DecodeFast_GetPresence.exit.i.i, %bb.q, %bb.p
  %.016.i.i = phi i64 [ %i.dj, %upb_DecodeFast_GetPresence.exit.i.i ], [ 63, %bb.q ], [ %i.dh, %bb.p ] ; 2 uses
  %i.dl = icmp samesign ult i64 %.016.i.i, 256
  %i.dm = icmp samesign ult i64 %i.dg, 256
  %or.cond5.not.i.i.i = select i1 %i.dl, i1 %i.dm, i1 false
  br i1 %or.cond5.not.i.i.i, label %bb.r, label %upb_DecodeFast_TryFillEntry.exit.thread

bb.r:                                             ; preds = %upb_DecodeFast_GetPresence.exit.thread.i.i
  %i.dn = zext nneg i32 %.02.ph.in.i to i64
  %i.do = shl nuw i64 %i.cx, 48
  %i.dp = shl nuw nsw i64 %i.db, 32
  %i.dq = or disjoint i64 %i.dp, %i.do
  %i.dr = shl nuw nsw i64 %.016.i.i, 24
  %i.ds = or disjoint i64 %i.dr, %i.dq
  %i.dt = shl nuw nsw i64 %i.dg, 16
  %i.du = or disjoint i64 %i.ds, %i.dt
  %i.dv = add nuw nsw i64 %i.du, %i.dn            ; 2 uses
  %i.dw = trunc i64 %i.dv to i32
  %i.dx = lshr i32 %i.dw, 3
  %i.dy = and i32 %i.dx, 31                       ; 2 uses
  %i.dz = zext nneg i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.dz ; 3 uses
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !11
  %i.ec = icmp eq i32 %i.eb, -1
  br i1 %i.ec, label %bb.s, label %upb_DecodeFast_TryFillEntry.exit.thread

bb.s:                                             ; preds = %bb.r
  store i32 %i.cv, ptr %i.ea, align 8, !tbaa !3
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  store i64 %i.dv, ptr %.sroa.426.0..sroa_idx, align 8, !tbaa !24
  %i.ed = tail call i32 @llvm.smax.i32(i32 %.02335, i32 %i.dy)
  %i.ee = freeze i32 %i.ed
  br label %upb_DecodeFast_TryFillEntry.exit.thread

upb_DecodeFast_TryFillEntry.exit.thread:          ; preds = %bb.k, %bb.k, %bb.g, %upb_DecodeFast_GetPresence.exit.thread.i.i, %upb_DecodeFast_GetPresence.exit.i.i, %GetWireTypeForField.exit.i.i, %bb.l, %bb.r, %bb.s
  %.2 = phi i32 [ %.02335, %bb.r ], [ %i.ee, %bb.s ], [ %.02335, %bb.l ], [ %.02335, %GetWireTypeForField.exit.i.i ], [ %.02335, %upb_DecodeFast_GetPresence.exit.i.i ], [ %.02335, %upb_DecodeFast_GetPresence.exit.thread.i.i ], [ %.02335, %bb.g ], [ %.02335, %bb.k ], [ %.02335, %bb.k ] ; 3 uses
  %i.ef = add nuw nsw i64 %.02434, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ef, %i.bm
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !25
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden zeroext range(i8 -8, -15) i8 @upb_DecodeFast_GetTableMask(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  %.tr = trunc i32 %0 to i8
  %i.b = shl i8 %.tr, 3
  %i.c = add i8 %i.b, -8
  %i.d = select i1 %i.a, i8 %i.c, i8 -1
  ret i8 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden ptr @upb_DecodeFast_GetFunctionName(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq i32 %0, -1
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext i32 %0 to i64
  %i.c = getelementptr inbounds nuw [8 x i8], ptr @upb_DecodeFast_GetFunctionName.names, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !27
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ @.str.80, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smin.i16(i16, i16) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
end_hunk_0
