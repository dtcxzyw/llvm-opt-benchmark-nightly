Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/enc_b64_avx2?download=true
inline.NumInlined: 35
inline.NumDeleted: 10
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@shuffle_masks = internal unnamed_addr constant [16 x [16 x i8]] [[16 x i8] c"\80\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E", [16 x i8] c"\00\80\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E", [16 x i8] c"\00\01\80\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E", [16 x i8] c"\00\01\02\80\03\04\05\06\07\08\09\0A\0B\0C\0D\0E", [16 x i8] c"\00\01\02\03\80\04\05\06\07\08\09\0A\0B\0C\0D\0E", [16 x i8] c"\00\01\02\03\04\80\05\06\07\08\09\0A\0B\0C\0D\0E", [16 x i8] c"\00\01\02\03\04\05\80\06\07\08\09\0A\0B\0C\0D\0E", [16 x i8] c"\00\01\02\03\04\05\06\80\07\08\09\0A\0B\0C\0D\0E", [16 x i8] c"\00\01\02\03\04\05\06\07\80\08\09\0A\0B\0C\0D\0E", [16 x i8] c"\00\01\02\03\04\05\06\07\08\80\09\0A\0B\0C\0D\0E", [16 x i8] c"\00\01\02\03\04\05\06\07\08\09\80\0A\0B\0C\0D\0E", [16 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\80\0B\0C\0D\0E", [16 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\80\0C\0D\0E", [16 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\80\0D\0E", [16 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\80\0E", [16 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\80"], align 16
@switch.table.insert_nl_gt16 = private unnamed_addr constant [16 x <32 x i8>] [<32 x i8> splat (i8 -1), <32 x i8> <i8 0, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, <32 x i8> <i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, <32 x i8> <i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>], align 32

; Function Attrs: nounwind uwtable
define i64 @encode_base64_avx2(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 25 uses
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = sdiv i32 %4, 3
  %i.d = shl nsw i32 %i.c, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load i32, ptr %i.e, align 4, !tbaa !13
  %i.g = and i32 %i.f, 2
  %i.h = icmp ne i32 %i.g, 0
  br label %bb.c

bb.c:                                             ; preds = %.thread, %bb.b
  %i.i = phi i32 [ 0, %.thread ], [ %i.d, %bb.b ] ; 14 uses
  %i.j = phi i1 [ false, %.thread ], [ %i.h, %bb.b ] ; 2 uses
  store i32 0, ptr %i.a, align 4, !tbaa !8
  %.not262286 = icmp slt i32 %3, 100
  br i1 %.not262286, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.k = icmp sgt i32 %i.i, 31
  %i.l = icmp sgt i32 %i.i, 15
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.as
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.as ] ; 3 uses
  %.0289 = phi ptr [ %1, %.lr.ph ], [ %.2, %bb.as ] ; 91 uses
  %.0253287 = phi i32 [ 0, %.lr.ph ], [ %.1254, %bb.as ] ; 9 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 192
  tail call void @llvm.prefetch.p0(ptr nonnull %i.n, i32 0, i32 3, i32 1)
  %i.o = load <2 x i64>, ptr %i.m, align 1, !tbaa !9
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.q = load <2 x i64>, ptr %i.p, align 1, !tbaa !9
  %i.r = shufflevector <2 x i64> %i.o, <2 x i64> %i.q, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.s = bitcast <4 x i64> %i.r to <32 x i8>
  %i.t = shufflevector <32 x i8> %i.s, <32 x i8> poison, <32 x i32> <i32 1, i32 0, i32 2, i32 1, i32 4, i32 3, i32 5, i32 4, i32 7, i32 6, i32 8, i32 7, i32 10, i32 9, i32 11, i32 10, i32 17, i32 16, i32 18, i32 17, i32 20, i32 19, i32 21, i32 20, i32 23, i32 22, i32 24, i32 23, i32 26, i32 25, i32 27, i32 26> ; 2 uses
  %i.u = bitcast <32 x i8> %i.t to <16 x i16>
  %i.v = and <16 x i16> %i.u, <i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032>
  %i.w = tail call <16 x i16> @llvm.umulh.v16i16(<16 x i16> %i.v, <16 x i16> <i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024>)
  %i.x = bitcast <32 x i8> %i.t to <16 x i16>
  %i.y = and <16 x i16> %i.x, <i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63>
  %i.z = shl <16 x i16> %i.y, <i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8>
  %i.aa = or <16 x i16> %i.w, %i.z                ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.ac = load <2 x i64>, ptr %i.ab, align 1, !tbaa !9
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 36
  %i.ae = load <2 x i64>, ptr %i.ad, align 1, !tbaa !9
  %i.af = shufflevector <2 x i64> %i.ac, <2 x i64> %i.ae, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ag = bitcast <4 x i64> %i.af to <32 x i8>
  %i.ah = shufflevector <32 x i8> %i.ag, <32 x i8> poison, <32 x i32> <i32 1, i32 0, i32 2, i32 1, i32 4, i32 3, i32 5, i32 4, i32 7, i32 6, i32 8, i32 7, i32 10, i32 9, i32 11, i32 10, i32 17, i32 16, i32 18, i32 17, i32 20, i32 19, i32 21, i32 20, i32 23, i32 22, i32 24, i32 23, i32 26, i32 25, i32 27, i32 26> ; 2 uses
  %i.ai = bitcast <32 x i8> %i.ah to <16 x i16>
  %i.aj = and <16 x i16> %i.ai, <i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032>
  %i.ak = tail call <16 x i16> @llvm.umulh.v16i16(<16 x i16> %i.aj, <16 x i16> <i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024>)
  %i.al = bitcast <32 x i8> %i.ah to <16 x i16>
  %i.am = and <16 x i16> %i.al, <i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63>
  %i.an = shl <16 x i16> %i.am, <i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8>
  %i.ao = or <16 x i16> %i.ak, %i.an              ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.aq = load <2 x i64>, ptr %i.ap, align 1, !tbaa !9
  %i.ar = getelementptr inbounds nuw i8, ptr %i.m, i64 60
  %i.as = load <2 x i64>, ptr %i.ar, align 1, !tbaa !9
  %i.at = shufflevector <2 x i64> %i.aq, <2 x i64> %i.as, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.au = bitcast <4 x i64> %i.at to <32 x i8>
  %i.av = shufflevector <32 x i8> %i.au, <32 x i8> poison, <32 x i32> <i32 1, i32 0, i32 2, i32 1, i32 4, i32 3, i32 5, i32 4, i32 7, i32 6, i32 8, i32 7, i32 10, i32 9, i32 11, i32 10, i32 17, i32 16, i32 18, i32 17, i32 20, i32 19, i32 21, i32 20, i32 23, i32 22, i32 24, i32 23, i32 26, i32 25, i32 27, i32 26> ; 2 uses
  %i.aw = bitcast <32 x i8> %i.av to <16 x i16>
  %i.ax = and <16 x i16> %i.aw, <i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032>
  %i.ay = tail call <16 x i16> @llvm.umulh.v16i16(<16 x i16> %i.ax, <16 x i16> <i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024>)
  %i.az = bitcast <32 x i8> %i.av to <16 x i16>
  %i.ba = and <16 x i16> %i.az, <i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63>
  %i.bb = shl <16 x i16> %i.ba, <i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8>
  %i.bc = or <16 x i16> %i.ay, %i.bb              ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  %i.be = load <2 x i64>, ptr %i.bd, align 1, !tbaa !9
  %i.bf = getelementptr inbounds nuw i8, ptr %i.m, i64 84
  %i.bg = load <2 x i64>, ptr %i.bf, align 1, !tbaa !9
  %i.bh = shufflevector <2 x i64> %i.be, <2 x i64> %i.bg, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bi = bitcast <4 x i64> %i.bh to <32 x i8>
  %i.bj = shufflevector <32 x i8> %i.bi, <32 x i8> poison, <32 x i32> <i32 1, i32 0, i32 2, i32 1, i32 4, i32 3, i32 5, i32 4, i32 7, i32 6, i32 8, i32 7, i32 10, i32 9, i32 11, i32 10, i32 17, i32 16, i32 18, i32 17, i32 20, i32 19, i32 21, i32 20, i32 23, i32 22, i32 24, i32 23, i32 26, i32 25, i32 27, i32 26> ; 2 uses
  %i.bk = bitcast <32 x i8> %i.bj to <16 x i16>
  %i.bl = and <16 x i16> %i.bk, <i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032>
  %i.bm = tail call <16 x i16> @llvm.umulh.v16i16(<16 x i16> %i.bl, <16 x i16> <i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024>)
  %i.bn = bitcast <32 x i8> %i.bj to <16 x i16>
  %i.bo = and <16 x i16> %i.bn, <i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63>
  %i.bp = shl <16 x i16> %i.bo, <i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8>
  %i.bq = or <16 x i16> %i.bm, %i.bp              ; 3 uses
  %i.br = bitcast <16 x i16> %i.aa to <32 x i8>   ; 8 uses
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bs = icmp sgt <32 x i8> %i.br, splat (i8 63)
  %i.bt = icmp sgt <32 x i8> %i.br, splat (i8 9)
  %.neg.i = zext <32 x i1> %i.bt to <32 x i8>
  %i.bu = icmp sgt <32 x i8> %i.br, splat (i8 35)
  %.neg19.i = zext <32 x i1> %i.bu to <32 x i8>
  %i.bv = add nuw nsw <32 x i8> %.neg19.i, %.neg.i
  %i.bw = icmp eq <32 x i8> %i.br, splat (i8 62)
  %i.bx = select <32 x i1> %i.bw, <32 x i8> splat (i8 3), <32 x i8> %i.bv
  %i.by = icmp eq <32 x i8> %i.br, splat (i8 63)
  %i.bz = select <32 x i1> %i.by, <32 x i8> splat (i8 4), <32 x i8> %i.bx
  %i.ca = bitcast <16 x i16> %i.aa to <32 x i8>
  %i.cb = and <32 x i8> %i.ca, splat (i8 -128)
  %i.cc = select <32 x i1> %i.bs, <32 x i8> splat (i8 -128), <32 x i8> %i.cb
  %i.cd = or disjoint <32 x i8> %i.bz, %i.cc
  %i.ce = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 48, i8 55, i8 61, i8 -16, i8 -16, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 48, i8 55, i8 61, i8 -16, i8 -16, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i8> %i.cd)
  %i.cf = bitcast <16 x i16> %i.ao to <32 x i8>   ; 6 uses
  %i.cg = icmp sgt <32 x i8> %i.cf, splat (i8 63)
  %i.ch = icmp sgt <32 x i8> %i.cf, splat (i8 9)
  %.neg.i265 = zext <32 x i1> %i.ch to <32 x i8>
  %i.ci = icmp sgt <32 x i8> %i.cf, splat (i8 35)
  %.neg19.i266 = zext <32 x i1> %i.ci to <32 x i8>
  %i.cj = add nuw nsw <32 x i8> %.neg19.i266, %.neg.i265
  %i.ck = icmp eq <32 x i8> %i.cf, splat (i8 62)
  %i.cl = select <32 x i1> %i.ck, <32 x i8> splat (i8 3), <32 x i8> %i.cj
  %i.cm = icmp eq <32 x i8> %i.cf, splat (i8 63)
  %i.cn = select <32 x i1> %i.cm, <32 x i8> splat (i8 4), <32 x i8> %i.cl
  %i.co = bitcast <16 x i16> %i.ao to <32 x i8>
  %i.cp = and <32 x i8> %i.co, splat (i8 -128)
  %i.cq = select <32 x i1> %i.cg, <32 x i8> splat (i8 -128), <32 x i8> %i.cp
  %i.cr = or disjoint <32 x i8> %i.cn, %i.cq
  %i.cs = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 48, i8 55, i8 61, i8 -16, i8 -16, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 48, i8 55, i8 61, i8 -16, i8 -16, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i8> %i.cr)
  %i.ct = add <32 x i8> %i.cs, %i.cf
  %i.cu = bitcast <16 x i16> %i.bc to <32 x i8>   ; 6 uses
  %i.cv = icmp sgt <32 x i8> %i.cu, splat (i8 63)
  %i.cw = icmp sgt <32 x i8> %i.cu, splat (i8 9)
  %.neg.i267 = zext <32 x i1> %i.cw to <32 x i8>
  %i.cx = icmp sgt <32 x i8> %i.cu, splat (i8 35)
  %.neg19.i268 = zext <32 x i1> %i.cx to <32 x i8>
  %i.cy = add nuw nsw <32 x i8> %.neg19.i268, %.neg.i267
  %i.cz = icmp eq <32 x i8> %i.cu, splat (i8 62)
  %i.da = select <32 x i1> %i.cz, <32 x i8> splat (i8 3), <32 x i8> %i.cy
  %i.db = icmp eq <32 x i8> %i.cu, splat (i8 63)
  %i.dc = select <32 x i1> %i.db, <32 x i8> splat (i8 4), <32 x i8> %i.da
  %i.dd = bitcast <16 x i16> %i.bc to <32 x i8>
  %i.de = and <32 x i8> %i.dd, splat (i8 -128)
  %i.df = select <32 x i1> %i.cv, <32 x i8> splat (i8 -128), <32 x i8> %i.de
  %i.dg = or disjoint <32 x i8> %i.dc, %i.df
  %i.dh = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 48, i8 55, i8 61, i8 -16, i8 -16, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 48, i8 55, i8 61, i8 -16, i8 -16, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i8> %i.dg)
  %i.di = add <32 x i8> %i.dh, %i.cu
  %i.dj = bitcast <16 x i16> %i.bq to <32 x i8>   ; 6 uses
  %i.dk = icmp sgt <32 x i8> %i.dj, splat (i8 63)
  %i.dl = icmp sgt <32 x i8> %i.dj, splat (i8 9)
  %.neg.i269 = zext <32 x i1> %i.dl to <32 x i8>
  %i.dm = icmp sgt <32 x i8> %i.dj, splat (i8 35)
  %.neg19.i270 = zext <32 x i1> %i.dm to <32 x i8>
  %i.dn = add nuw nsw <32 x i8> %.neg19.i270, %.neg.i269
  %i.do = icmp eq <32 x i8> %i.dj, splat (i8 62)
  %i.dp = select <32 x i1> %i.do, <32 x i8> splat (i8 3), <32 x i8> %i.dn
  %i.dq = icmp eq <32 x i8> %i.dj, splat (i8 63)
  %i.dr = select <32 x i1> %i.dq, <32 x i8> splat (i8 4), <32 x i8> %i.dp
  %i.ds = bitcast <16 x i16> %i.bq to <32 x i8>
  %i.dt = and <32 x i8> %i.ds, splat (i8 -128)
  %i.du = select <32 x i1> %i.dk, <32 x i8> splat (i8 -128), <32 x i8> %i.dt
  %i.dv = or disjoint <32 x i8> %i.dr, %i.du
  %i.dw = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 48, i8 55, i8 61, i8 -16, i8 -16, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 48, i8 55, i8 61, i8 -16, i8 -16, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i8> %i.dv)
  %i.dx = add <32 x i8> %i.dw, %i.dj
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.dy = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %i.br, <32 x i8> splat (i8 51))
  %i.dz = icmp slt <32 x i8> %i.br, splat (i8 26)
  %i.ea = select <32 x i1> %i.dz, <32 x i8> splat (i8 13), <32 x i8> zeroinitializer
  %i.eb = or <32 x i8> %i.ea, %i.dy
  %i.ec = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 71, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -19, i8 -16, i8 65, i8 0, i8 0, i8 71, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -19, i8 -16, i8 65, i8 0, i8 0>, <32 x i8> %i.eb)
  %i.ed = bitcast <16 x i16> %i.ao to <32 x i8>   ; 3 uses
  %i.ee = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %i.ed, <32 x i8> splat (i8 51))
  %i.ef = icmp slt <32 x i8> %i.ed, splat (i8 26)
  %i.eg = select <32 x i1> %i.ef, <32 x i8> splat (i8 13), <32 x i8> zeroinitializer
  %i.eh = or <32 x i8> %i.eg, %i.ee
  %i.ei = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 71, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -19, i8 -16, i8 65, i8 0, i8 0, i8 71, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -19, i8 -16, i8 65, i8 0, i8 0>, <32 x i8> %i.eh)
  %i.ej = add <32 x i8> %i.ei, %i.ed
  %i.ek = bitcast <16 x i16> %i.bc to <32 x i8>   ; 3 uses
  %i.el = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %i.ek, <32 x i8> splat (i8 51))
  %i.em = icmp slt <32 x i8> %i.ek, splat (i8 26)
  %i.en = select <32 x i1> %i.em, <32 x i8> splat (i8 13), <32 x i8> zeroinitializer
  %i.eo = or <32 x i8> %i.en, %i.el
  %i.ep = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 71, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -19, i8 -16, i8 65, i8 0, i8 0, i8 71, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -19, i8 -16, i8 65, i8 0, i8 0>, <32 x i8> %i.eo)
  %i.eq = add <32 x i8> %i.ep, %i.ek
  %i.er = bitcast <16 x i16> %i.bq to <32 x i8>   ; 3 uses
  %i.es = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %i.er, <32 x i8> splat (i8 51))
  %i.et = icmp slt <32 x i8> %i.er, splat (i8 26)
  %i.eu = select <32 x i1> %i.et, <32 x i8> splat (i8 13), <32 x i8> zeroinitializer
  %i.ev = or <32 x i8> %i.eu, %i.es
  %i.ew = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 71, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -19, i8 -16, i8 65, i8 0, i8 0, i8 71, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -19, i8 -16, i8 65, i8 0, i8 0>, <32 x i8> %i.ev)
  %i.ex = add <32 x i8> %i.ew, %i.er
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn = phi <32 x i8> [ %i.ce, %bb.e ], [ %i.ec, %bb.f ]
  %.0257.in = phi <32 x i8> [ %i.ct, %bb.e ], [ %i.ej, %bb.f ] ; 19 uses
  %.0256.in = phi <32 x i8> [ %i.di, %bb.e ], [ %i.eq, %bb.f ] ; 19 uses
  %.0255.in = phi <32 x i8> [ %i.dx, %bb.e ], [ %i.ex, %bb.f ] ; 19 uses
  %.0258.in = add <32 x i8> %.pn, %i.br           ; 19 uses
  %.0255 = bitcast <32 x i8> %.0255.in to <4 x i64> ; 4 uses
  %.0256 = bitcast <32 x i8> %.0256.in to <4 x i64> ; 4 uses
  %.0257 = bitcast <32 x i8> %.0257.in to <4 x i64> ; 4 uses
  %.0258 = bitcast <32 x i8> %.0258.in to <4 x i64> ; 4 uses
  switch i32 %i.i, label %bb.q [
    i32 0, label %bb.h
    i32 64, label %bb.i
    i32 4, label %bb.j
    i32 8, label %bb.k
    i32 12, label %bb.l
  ]

bb.h:                                             ; preds = %bb.g
end_hunk_0
begin_hunk_1_@encode_base64_avx2:bb.a

bb.ab:                                            ; preds = %bb.z
  %i.oe = extractelement <32 x i8> %.0257.in, i64 31
  %i.of = icmp sgt i32 %i.nz, 15
  br i1 %i.of, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.og = zext nneg i32 %i.nz to i64
  %i.oh = getelementptr [16 x i8], ptr @shuffle_masks, i64 %i.og
  %i.oi = getelementptr i8, ptr %i.oh, i64 -256
  %i.oj = load <2 x i64>, ptr %i.oi, align 16, !tbaa !9
  %i.ok = shufflevector <2 x i64> <i64 506097522914230528, i64 1084818905618843912>, <2 x i64> %i.oj, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ol = bitcast <4 x i64> %i.ok to <32 x i8>    ; 2 uses
  %i.om = icmp eq <32 x i8> %i.ol, splat (i8 -128)
  %i.on = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %.0257.in, <32 x i8> %i.ol)
  %i.oo = select <32 x i1> %i.om, <32 x i8> splat (i8 10), <32 x i8> %i.on
  br label %insert_line_feed32.exit.i271

bb.ad:                                            ; preds = %bb.ab
  %i.op = shufflevector <4 x i64> %.0257, <4 x i64> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 1>
  %i.oq = bitcast <4 x i64> %i.op to <32 x i8>
  %i.or = shufflevector <32 x i8> %.0257.in, <32 x i8> %i.oq, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 63, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30>
  %i.os = sext i32 %i.nz to i64
  %i.ot = getelementptr inbounds [16 x i8], ptr @shuffle_masks, i64 %i.os
  %i.ou = load <2 x i64>, ptr %i.ot, align 16, !tbaa !9
  %i.ov = shufflevector <2 x i64> %i.ou, <2 x i64> <i64 506097522914230528, i64 1084818905618843912>, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ow = bitcast <4 x i64> %i.ov to <32 x i8>    ; 2 uses
  %i.ox = icmp eq <32 x i8> %i.ow, splat (i8 -128)
  %i.oy = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %i.or, <32 x i8> %i.ow)
  %i.oz = select <32 x i1> %i.ox, <32 x i8> splat (i8 10), <32 x i8> %i.oy
  br label %insert_line_feed32.exit.i271

insert_line_feed32.exit.i271:                     ; preds = %bb.ad, %bb.ac
  %.0.in.i.i272 = phi <32 x i8> [ %i.oo, %bb.ac ], [ %i.oz, %bb.ad ]
  store <32 x i8> %.0.in.i.i272, ptr %i.ny, align 1, !tbaa !9
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ny, i64 32
  store i8 %i.oe, ptr %i.pa, align 1, !tbaa !9
  %i.pb = sub nsw i32 32, %i.nz
  br label %ins_nl_gt32.exit275

ins_nl_gt32.exit275:                              ; preds = %bb.y, %bb.aa, %insert_line_feed32.exit.i271
  %.sink.i273 = phi i32 [ %i.pb, %insert_line_feed32.exit.i271 ], [ 0, %bb.aa ], [ %i.ob, %bb.y ] ; 2 uses
  %.0.i274 = phi i64 [ 33, %insert_line_feed32.exit.i271 ], [ 33, %bb.aa ], [ 32, %bb.y ]
  %i.pc = getelementptr inbounds nuw i8, ptr %i.ny, i64 %.0.i274 ; 6 uses
  %i.pd = sub nsw i32 %i.i, %.sink.i273           ; 6 uses
  %i.pe = icmp sgt i32 %i.pd, 32
  br i1 %i.pe, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %ins_nl_gt32.exit275
  store <32 x i8> %.0256.in, ptr %i.pc, align 1, !tbaa !9
  %i.pf = add nsw i32 %.sink.i273, 32
  br label %ins_nl_gt32.exit280

bb.af:                                            ; preds = %ins_nl_gt32.exit275
  %i.pg = icmp eq i32 %i.pd, 32
  br i1 %i.pg, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store <32 x i8> %.0256.in, ptr %i.pc, align 1, !tbaa !9
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pc, i64 32
  store i8 10, ptr %i.ph, align 1, !tbaa !9
  br label %ins_nl_gt32.exit280

bb.ah:                                            ; preds = %bb.af
  %i.pi = extractelement <32 x i8> %.0256.in, i64 31
  %i.pj = icmp sgt i32 %i.pd, 15
  br i1 %i.pj, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.pk = zext nneg i32 %i.pd to i64
  %i.pl = getelementptr [16 x i8], ptr @shuffle_masks, i64 %i.pk
  %i.pm = getelementptr i8, ptr %i.pl, i64 -256
  %i.pn = load <2 x i64>, ptr %i.pm, align 16, !tbaa !9
  %i.po = shufflevector <2 x i64> <i64 506097522914230528, i64 1084818905618843912>, <2 x i64> %i.pn, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.pp = bitcast <4 x i64> %i.po to <32 x i8>    ; 2 uses
  %i.pq = icmp eq <32 x i8> %i.pp, splat (i8 -128)
  %i.pr = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %.0256.in, <32 x i8> %i.pp)
  %i.ps = select <32 x i1> %i.pq, <32 x i8> splat (i8 10), <32 x i8> %i.pr
  br label %insert_line_feed32.exit.i276

bb.aj:                                            ; preds = %bb.ah
  %i.pt = shufflevector <4 x i64> %.0256, <4 x i64> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 1>
  %i.pu = bitcast <4 x i64> %i.pt to <32 x i8>
  %i.pv = shufflevector <32 x i8> %.0256.in, <32 x i8> %i.pu, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 63, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30>
  %i.pw = sext i32 %i.pd to i64
  %i.px = getelementptr inbounds [16 x i8], ptr @shuffle_masks, i64 %i.pw
  %i.py = load <2 x i64>, ptr %i.px, align 16, !tbaa !9
  %i.pz = shufflevector <2 x i64> %i.py, <2 x i64> <i64 506097522914230528, i64 1084818905618843912>, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.qa = bitcast <4 x i64> %i.pz to <32 x i8>    ; 2 uses
  %i.qb = icmp eq <32 x i8> %i.qa, splat (i8 -128)
  %i.qc = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %i.pv, <32 x i8> %i.qa)
  %i.qd = select <32 x i1> %i.qb, <32 x i8> splat (i8 10), <32 x i8> %i.qc
  br label %insert_line_feed32.exit.i276

insert_line_feed32.exit.i276:                     ; preds = %bb.aj, %bb.ai
  %.0.in.i.i277 = phi <32 x i8> [ %i.ps, %bb.ai ], [ %i.qd, %bb.aj ]
  store <32 x i8> %.0.in.i.i277, ptr %i.pc, align 1, !tbaa !9
  %i.qe = getelementptr inbounds nuw i8, ptr %i.pc, i64 32
  store i8 %i.pi, ptr %i.qe, align 1, !tbaa !9
  %i.qf = sub nsw i32 32, %i.pd
  br label %ins_nl_gt32.exit280

ins_nl_gt32.exit280:                              ; preds = %bb.ae, %bb.ag, %insert_line_feed32.exit.i276
  %.sink.i278 = phi i32 [ %i.qf, %insert_line_feed32.exit.i276 ], [ 0, %bb.ag ], [ %i.pf, %bb.ae ] ; 2 uses
  %.0.i279 = phi i64 [ 33, %insert_line_feed32.exit.i276 ], [ 33, %bb.ag ], [ 32, %bb.ae ]
  %i.qg = getelementptr inbounds nuw i8, ptr %i.pc, i64 %.0.i279 ; 6 uses
  %i.qh = sub nsw i32 %i.i, %.sink.i278           ; 6 uses
  %i.qi = icmp sgt i32 %i.qh, 32
  br i1 %i.qi, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %ins_nl_gt32.exit280
  store <32 x i8> %.0255.in, ptr %i.qg, align 1, !tbaa !9
  %i.qj = add nsw i32 %.sink.i278, 32
  br label %ins_nl_gt32.exit285

bb.al:                                            ; preds = %ins_nl_gt32.exit280
  %i.qk = icmp eq i32 %i.qh, 32
  br i1 %i.qk, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  store <32 x i8> %.0255.in, ptr %i.qg, align 1, !tbaa !9
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qg, i64 32
  store i8 10, ptr %i.ql, align 1, !tbaa !9
  br label %ins_nl_gt32.exit285

bb.an:                                            ; preds = %bb.al
  %i.qm = extractelement <32 x i8> %.0255.in, i64 31
  %i.qn = icmp sgt i32 %i.qh, 15
  br i1 %i.qn, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.qo = zext nneg i32 %i.qh to i64
  %i.qp = getelementptr [16 x i8], ptr @shuffle_masks, i64 %i.qo
  %i.qq = getelementptr i8, ptr %i.qp, i64 -256
  %i.qr = load <2 x i64>, ptr %i.qq, align 16, !tbaa !9
  %i.qs = shufflevector <2 x i64> <i64 506097522914230528, i64 1084818905618843912>, <2 x i64> %i.qr, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.qt = bitcast <4 x i64> %i.qs to <32 x i8>    ; 2 uses
  %i.qu = icmp eq <32 x i8> %i.qt, splat (i8 -128)
  %i.qv = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %.0255.in, <32 x i8> %i.qt)
  %i.qw = select <32 x i1> %i.qu, <32 x i8> splat (i8 10), <32 x i8> %i.qv
  br label %insert_line_feed32.exit.i281

bb.ap:                                            ; preds = %bb.an
  %i.qx = shufflevector <4 x i64> %.0255, <4 x i64> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 1>
  %i.qy = bitcast <4 x i64> %i.qx to <32 x i8>
  %i.qz = shufflevector <32 x i8> %.0255.in, <32 x i8> %i.qy, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 63, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30>
  %i.ra = sext i32 %i.qh to i64
  %i.rb = getelementptr inbounds [16 x i8], ptr @shuffle_masks, i64 %i.ra
  %i.rc = load <2 x i64>, ptr %i.rb, align 16, !tbaa !9
  %i.rd = shufflevector <2 x i64> %i.rc, <2 x i64> <i64 506097522914230528, i64 1084818905618843912>, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.re = bitcast <4 x i64> %i.rd to <32 x i8>    ; 2 uses
  %i.rf = icmp eq <32 x i8> %i.re, splat (i8 -128)
  %i.rg = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %i.qz, <32 x i8> %i.re)
  %i.rh = select <32 x i1> %i.rf, <32 x i8> splat (i8 10), <32 x i8> %i.rg
  br label %insert_line_feed32.exit.i281

insert_line_feed32.exit.i281:                     ; preds = %bb.ap, %bb.ao
  %.0.in.i.i282 = phi <32 x i8> [ %i.qw, %bb.ao ], [ %i.rh, %bb.ap ]
  store <32 x i8> %.0.in.i.i282, ptr %i.qg, align 1, !tbaa !9
  %i.ri = getelementptr inbounds nuw i8, ptr %i.qg, i64 32
  store i8 %i.qm, ptr %i.ri, align 1, !tbaa !9
  %i.rj = sub nsw i32 32, %i.qh
  br label %ins_nl_gt32.exit285

ins_nl_gt32.exit285:                              ; preds = %bb.ak, %bb.am, %insert_line_feed32.exit.i281
  %.sink.i283 = phi i32 [ %i.rj, %insert_line_feed32.exit.i281 ], [ 0, %bb.am ], [ %i.qj, %bb.ak ]
  %.0.i284 = phi i64 [ 33, %insert_line_feed32.exit.i281 ], [ 33, %bb.am ], [ 32, %bb.ak ]
  store i32 %.sink.i283, ptr %i.a, align 4, !tbaa !8
  %i.rk = getelementptr inbounds nuw i8, ptr %i.qg, i64 %.0.i284
  br label %bb.as

bb.aq:                                            ; preds = %bb.q
  br i1 %i.l, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.rl = call fastcc i64 @insert_nl_gt16(<4 x i64> noundef %.0258, ptr noundef %.0289, i32 noundef %i.i, ptr noundef %i.a)
  %i.rm = getelementptr inbounds nuw i8, ptr %.0289, i64 %i.rl ; 2 uses
  %i.rn = call fastcc i64 @insert_nl_gt16(<4 x i64> noundef %.0257, ptr noundef nonnull %i.rm, i32 noundef %i.i, ptr noundef %i.a)
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rm, i64 %i.rn ; 2 uses
  %i.rp = call fastcc i64 @insert_nl_gt16(<4 x i64> noundef %.0256, ptr noundef nonnull %i.ro, i32 noundef %i.i, ptr noundef %i.a)
  %i.rq = getelementptr inbounds nuw i8, ptr %i.ro, i64 %i.rp ; 2 uses
  %i.rr = call fastcc i64 @insert_nl_gt16(<4 x i64> noundef %.0255, ptr noundef nonnull %i.rq, i32 noundef %i.i, ptr noundef %i.a)
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rq, i64 %i.rr
  br label %bb.as

bb.as:                                            ; preds = %bb.i, %bb.k, %ins_nl_gt32.exit285, %bb.ar, %bb.aq, %bb.p, %bb.j, %bb.h
  %.1254 = phi i32 [ %.0253287, %bb.h ], [ %.0253287, %bb.i ], [ %.0253287, %bb.j ], [ %.0253287, %bb.k ], [ %spec.store.select, %bb.p ], [ %.0253287, %ins_nl_gt32.exit285 ], [ %.0253287, %bb.ar ], [ %.0253287, %bb.aq ]
  %.2 = phi ptr [ %i.fb, %bb.h ], [ %i.fh, %bb.i ], [ %i.if, %bb.j ], [ %i.kf, %bb.k ], [ %.1, %bb.p ], [ %i.rk, %ins_nl_gt32.exit285 ], [ %i.rs, %bb.ar ], [ %.0289, %bb.aq ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 96 ; 2 uses
  %i.rt = trunc i64 %indvars.iv to i32
  %i.ru = add i32 %i.rt, 196
  %.not262 = icmp sgt i32 %i.ru, %3
  br i1 %.not262, label %._crit_edge.loopexit, label %bb.d, !llvm.loop !10

._crit_edge.loopexit:                             ; preds = %bb.as
  %i.rv = trunc nuw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %.0250.lcssa = phi i32 [ 0, %bb.c ], [ %i.rv, %._crit_edge.loopexit ] ; 4 uses
  %.0.lcssa = phi ptr [ %1, %bb.c ], [ %.2, %._crit_edge.loopexit ] ; 5 uses
  %i.rw = icmp ne i32 %i.i, 0
  %i.rx = add nuw nsw i32 %.0250.lcssa, 28
  %.not263291 = icmp sgt i32 %i.rx, %3
  %or.cond297 = select i1 %i.rw, i1 true, i1 %.not263291
  br i1 %or.cond297, label %.loopexit, label %.lr.ph294

.lr.ph294:                                        ; preds = %._crit_edge
  %6 = zext i32 %.0250.lcssa to i64               ; 2 uses
  br i1 %i.j, label %.lr.ph294.a, label %bb.at

.lr.ph294.a:                                      ; preds = %.lr.ph294, %.lr.ph294.a
  %indvars.iv308 = phi i64 [ %indvars.iv.next309, %.lr.ph294.a ], [ %6, %.lr.ph294 ] ; 3 uses
  %.3293.us = phi ptr [ %36, %.lr.ph294.a ], [ %.0.lcssa, %.lr.ph294 ] ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv308 ; 2 uses
  %8 = load <2 x i64>, ptr %7, align 1, !tbaa !9
  %9 = getelementptr inbounds nuw i8, ptr %7, i64 12
  %10 = load <2 x i64>, ptr %9, align 1, !tbaa !9
  %11 = shufflevector <2 x i64> %8, <2 x i64> %10, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %12 = bitcast <4 x i64> %11 to <32 x i8>
  %13 = shufflevector <32 x i8> %12, <32 x i8> poison, <32 x i32> <i32 1, i32 0, i32 2, i32 1, i32 4, i32 3, i32 5, i32 4, i32 7, i32 6, i32 8, i32 7, i32 10, i32 9, i32 11, i32 10, i32 17, i32 16, i32 18, i32 17, i32 20, i32 19, i32 21, i32 20, i32 23, i32 22, i32 24, i32 23, i32 26, i32 25, i32 27, i32 26> ; 2 uses
  %14 = bitcast <32 x i8> %13 to <16 x i16>
  %15 = and <16 x i16> %14, <i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032>
  %16 = tail call <16 x i16> @llvm.umulh.v16i16(<16 x i16> %15, <16 x i16> <i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024>)
  %17 = bitcast <32 x i8> %13 to <16 x i16>
  %18 = and <16 x i16> %17, <i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63>
  %19 = shl <16 x i16> %18, <i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8>
  %20 = or <16 x i16> %16, %19                    ; 2 uses
  %21 = bitcast <16 x i16> %20 to <32 x i8>       ; 6 uses
  %22 = icmp sgt <32 x i8> %21, splat (i8 63)
  %23 = icmp sgt <32 x i8> %21, splat (i8 9)
  %.neg.i324 = zext <32 x i1> %23 to <32 x i8>
  %24 = icmp sgt <32 x i8> %21, splat (i8 35)
  %.neg19.i325 = zext <32 x i1> %24 to <32 x i8>
  %25 = add nuw nsw <32 x i8> %.neg19.i325, %.neg.i324
  %26 = icmp eq <32 x i8> %21, splat (i8 62)
  %27 = select <32 x i1> %26, <32 x i8> splat (i8 3), <32 x i8> %25
  %28 = icmp eq <32 x i8> %21, splat (i8 63)
  %29 = select <32 x i1> %28, <32 x i8> splat (i8 4), <32 x i8> %27
  %30 = bitcast <16 x i16> %20 to <32 x i8>
  %31 = and <32 x i8> %30, splat (i8 -128)
  %32 = select <32 x i1> %22, <32 x i8> splat (i8 -128), <32 x i8> %31
  %33 = or disjoint <32 x i8> %29, %32
  %34 = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 48, i8 55, i8 61, i8 -16, i8 -16, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 48, i8 55, i8 61, i8 -16, i8 -16, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i8> %33)
  %35 = add <32 x i8> %34, %21
  store <32 x i8> %35, ptr %.3293.us, align 1, !tbaa !9
  %36 = getelementptr inbounds nuw i8, ptr %.3293.us, i64 32 ; 2 uses
  %indvars.iv.next309 = add nuw nsw i64 %indvars.iv308, 24 ; 2 uses
  %37 = trunc i64 %indvars.iv308 to i32
  %38 = add i32 %37, 52
  %.not263.us = icmp sgt i32 %38, %3
  br i1 %.not263.us, label %.loopexit.thread, label %.lr.ph294.a, !llvm.loop !11

bb.at:                                            ; preds = %.lr.ph294, %bb.at
  %indvars.iv301 = phi i64 [ %indvars.iv.next302, %bb.at ], [ %6, %.lr.ph294 ] ; 3 uses
  %.3293 = phi ptr [ %i.sm, %bb.at ], [ %.0.lcssa, %.lr.ph294 ] ; 2 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv301 ; 2 uses
  %i.rz = load <2 x i64>, ptr %i.ry, align 1, !tbaa !9
  %i.sa = getelementptr inbounds nuw i8, ptr %i.ry, i64 12
  %i.sb = load <2 x i64>, ptr %i.sa, align 1, !tbaa !9
  %i.sc = shufflevector <2 x i64> %i.rz, <2 x i64> %i.sb, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.sd = bitcast <4 x i64> %i.sc to <32 x i8>
  %i.se = shufflevector <32 x i8> %i.sd, <32 x i8> poison, <32 x i32> <i32 1, i32 0, i32 2, i32 1, i32 4, i32 3, i32 5, i32 4, i32 7, i32 6, i32 8, i32 7, i32 10, i32 9, i32 11, i32 10, i32 17, i32 16, i32 18, i32 17, i32 20, i32 19, i32 21, i32 20, i32 23, i32 22, i32 24, i32 23, i32 26, i32 25, i32 27, i32 26> ; 2 uses
  %i.sf = bitcast <32 x i8> %i.se to <16 x i16>
  %i.sg = and <16 x i16> %i.sf, <i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032>
  %i.sh = tail call <16 x i16> @llvm.umulh.v16i16(<16 x i16> %i.sg, <16 x i16> <i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024>)
  %i.si = bitcast <32 x i8> %i.se to <16 x i16>
  %i.sj = and <16 x i16> %i.si, <i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63>
  %i.sk = shl <16 x i16> %i.sj, <i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8>
  %i.sl = or <16 x i16> %i.sh, %i.sk
  %39 = bitcast <16 x i16> %i.sl to <32 x i8>     ; 3 uses
  %40 = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %39, <32 x i8> splat (i8 51))
  %41 = icmp slt <32 x i8> %39, splat (i8 26)
  %42 = select <32 x i1> %41, <32 x i8> splat (i8 13), <32 x i8> zeroinitializer
  %43 = or <32 x i8> %42, %40
  %44 = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 71, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -19, i8 -16, i8 65, i8 0, i8 0, i8 71, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -19, i8 -16, i8 65, i8 0, i8 0>, <32 x i8> %43)
  %45 = add <32 x i8> %44, %39
  store <32 x i8> %45, ptr %.3293, align 1, !tbaa !9
  %i.sm = getelementptr inbounds nuw i8, ptr %.3293, i64 32 ; 2 uses
  %indvars.iv.next302 = add nuw nsw i64 %indvars.iv301, 24 ; 2 uses
  %i.sn = trunc i64 %indvars.iv301 to i32
  %i.so = add i32 %i.sn, 52
  %.not263 = icmp sgt i32 %i.so, %3
  br i1 %.not263, label %.loopexit.thread, label %bb.at, !llvm.loop !11

.loopexit.thread:                                 ; preds = %bb.at, %.lr.ph294.a
  %indvars.iv.next306.lcssa.sink = phi i64 [ %indvars.iv.next309, %.lr.ph294.a ], [ %indvars.iv.next302, %bb.at ]
  %.4.ph = phi ptr [ %36, %.lr.ph294.a ], [ %i.sm, %bb.at ]
  %i.sp = trunc nuw i64 %indvars.iv.next306.lcssa.sink to i32
  %i.sq = load i32, ptr %i.a, align 4, !tbaa !8
  store i32 %i.sq, ptr %5, align 4, !tbaa !8
  br label %bb.av

.loopexit:                                        ; preds = %._crit_edge
  %i.sr = load i32, ptr %i.a, align 4, !tbaa !8   ; 2 uses
  store i32 %i.sr, ptr %5, align 4, !tbaa !8
  %i.ss = icmp sgt i32 %i.i, 31
  %i.st = icmp eq i32 %i.sr, %i.i
  %or.cond = select i1 %i.ss, i1 %i.st, i1 false
  br i1 %or.cond, label %bb.au, label %bb.av

bb.au:                                            ; preds = %.loopexit
  %i.su = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 1
  store i8 10, ptr %.0.lcssa, align 1, !tbaa !9
  br label %bb.av

bb.av:                                            ; preds = %.loopexit.thread, %bb.au, %.loopexit
  %.2252315 = phi i32 [ %.0250.lcssa, %bb.au ], [ %.0250.lcssa, %.loopexit ], [ %i.sp, %.loopexit.thread ] ; 2 uses
  %.5 = phi ptr [ %i.su, %bb.au ], [ %.0.lcssa, %.loopexit ], [ %.4.ph, %.loopexit.thread ] ; 2 uses
  %i.sv = ptrtoint ptr %.5 to i64
  %i.sw = ptrtoint ptr %1 to i64
  %i.sx = sub i64 %i.sv, %i.sw
  %i.sy = sext i32 %.2252315 to i64
  %i.sz = getelementptr inbounds i8, ptr %2, i64 %i.sy
  %i.ta = sub nsw i32 %3, %.2252315
  %i.tb = tail call i64 @evp_encodeblock_int(ptr noundef %0, ptr noundef %.5, ptr noundef %i.sz, i32 noundef %i.ta, ptr noundef nonnull %5) #7
  %i.tc = add i64 %i.sx, %i.tb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i64 %i.tc
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i64 @evp_encodeblock_int(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8>, <32 x i8>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <32 x i8> @llvm.x86.avx2.pblendvb(<32 x i8>, <32 x i8>, <32 x i8>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x i8> @llvm.usub.sat.v32i8(<32 x i8>, <32 x i8>) #5

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc range(i64 32, 36) i64 @insert_nl_gt16(<4 x i64> noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, i32 noundef range(i32 12, -2147483648) %2, ptr nofree noundef nonnull captures(none) %3) unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr %3, align 4, !tbaa !8
  %i.b = sub nsw i32 %2, %i.a                     ; 6 uses
  store <4 x i64> %0, ptr %1, align 1, !tbaa !9
  %i.c = icmp sgt i32 %i.b, 32
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %3, align 4, !tbaa !8
  %i.e = add nsw i32 %i.d, 32
  store i32 %i.e, ptr %3, align 4, !tbaa !8
  br label %bb.aq

bb.c:                                             ; preds = %bb.a
  %i.f = icmp slt i32 %i.b, 16                    ; 6 uses
  %i.g = zext i1 %i.f to i32                      ; 3 uses
  br i1 %i.f, label %bb.d, label %._crit_edge200

._crit_edge200:                                   ; preds = %bb.c
  %.pre = bitcast <4 x i64> %0 to <32 x i8>
  %i.h = bitcast <4 x i64> %0 to <32 x i8>
  br label %bb.u

bb.d:                                             ; preds = %bb.c
  switch i32 %i.b, label %bb.t [
    i32 0, label %shift_right_zeros.exit
    i32 1, label %bb.e
    i32 2, label %bb.f
    i32 3, label %bb.g
    i32 4, label %bb.h
    i32 5, label %bb.i
    i32 6, label %bb.j
    i32 7, label %bb.k
    i32 8, label %bb.l
    i32 9, label %bb.m
    i32 10, label %bb.n
    i32 11, label %bb.o
    i32 12, label %bb.p
    i32 13, label %bb.q
    i32 14, label %bb.r
    i32 15, label %bb.s
  ]

bb.e:                                             ; preds = %bb.d
  %i.i = bitcast <4 x i64> %0 to <32 x i8>
  %i.j = shufflevector <32 x i8> %i.i, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 48>
  %i.k = bitcast <32 x i8> %i.j to <4 x i64>
  br label %shift_right_zeros.exit

bb.f:                                             ; preds = %bb.d
  %i.l = bitcast <4 x i64> %0 to <32 x i8>
  %i.m = shufflevector <32 x i8> %i.l, <32 x i8> <i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49>
  %i.n = bitcast <32 x i8> %i.m to <4 x i64>
  br label %shift_right_zeros.exit

bb.g:                                             ; preds = %bb.d
  %i.o = bitcast <4 x i64> %0 to <32 x i8>
  %i.p = shufflevector <32 x i8> %i.o, <32 x i8> <i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50>
  %i.q = bitcast <32 x i8> %i.p to <4 x i64>
  br label %shift_right_zeros.exit

bb.h:                                             ; preds = %bb.d
  %i.r = bitcast <4 x i64> %0 to <32 x i8>
  %i.s = shufflevector <32 x i8> %i.r, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51>
  %i.t = bitcast <32 x i8> %i.s to <4 x i64>
  br label %shift_right_zeros.exit

bb.i:                                             ; preds = %bb.d
  %i.u = bitcast <4 x i64> %0 to <32 x i8>
  %i.v = shufflevector <32 x i8> %i.u, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52>
  %i.w = bitcast <32 x i8> %i.v to <4 x i64>
  br label %shift_right_zeros.exit

bb.j:                                             ; preds = %bb.d
  %i.x = bitcast <4 x i64> %0 to <32 x i8>
  %i.y = shufflevector <32 x i8> %i.x, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53>
  %i.z = bitcast <32 x i8> %i.y to <4 x i64>
  br label %shift_right_zeros.exit

bb.k:                                             ; preds = %bb.d
  %i.aa = bitcast <4 x i64> %0 to <32 x i8>
  %i.ab = shufflevector <32 x i8> %i.aa, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54>
  %i.ac = bitcast <32 x i8> %i.ab to <4 x i64>
  br label %shift_right_zeros.exit

bb.l:                                             ; preds = %bb.d
  %i.ad = shufflevector <4 x i64> %0, <4 x i64> <i64 0, i64 poison, i64 0, i64 poison>, <4 x i32> <i32 1, i32 4, i32 3, i32 6>
  br label %shift_right_zeros.exit

bb.m:                                             ; preds = %bb.d
  %i.ae = bitcast <4 x i64> %0 to <32 x i8>
  %i.af = shufflevector <32 x i8> %i.ae, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56>
  %i.ag = bitcast <32 x i8> %i.af to <4 x i64>
  br label %shift_right_zeros.exit

bb.n:                                             ; preds = %bb.d
  %i.ah = bitcast <4 x i64> %0 to <32 x i8>
  %i.ai = shufflevector <32 x i8> %i.ah, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57>
  %i.aj = bitcast <32 x i8> %i.ai to <4 x i64>
  br label %shift_right_zeros.exit

bb.o:                                             ; preds = %bb.d
  %i.ak = bitcast <4 x i64> %0 to <32 x i8>
  %i.al = shufflevector <32 x i8> %i.ak, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 27, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58>
  %i.am = bitcast <32 x i8> %i.al to <4 x i64>
  br label %shift_right_zeros.exit

bb.p:                                             ; preds = %bb.d
  %i.an = bitcast <4 x i64> %0 to <32 x i8>
  %i.ao = shufflevector <32 x i8> %i.an, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59>
  %i.ap = bitcast <32 x i8> %i.ao to <4 x i64>
  br label %shift_right_zeros.exit

bb.q:                                             ; preds = %bb.d
  %i.aq = bitcast <4 x i64> %0 to <32 x i8>
  %i.ar = shufflevector <32 x i8> %i.aq, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60>
  %i.as = bitcast <32 x i8> %i.ar to <4 x i64>
  br label %shift_right_zeros.exit

bb.r:                                             ; preds = %bb.d
  %i.at = bitcast <4 x i64> %0 to <32 x i8>
  %i.au = shufflevector <32 x i8> %i.at, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison>, <32 x i32> <i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61>
  %i.av = bitcast <32 x i8> %i.au to <4 x i64>
  br label %shift_right_zeros.exit

bb.s:                                             ; preds = %bb.d
  %i.aw = bitcast <4 x i64> %0 to <32 x i8>
  %i.ax = shufflevector <32 x i8> %i.aw, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison>, <32 x i32> <i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62>
  %i.ay = bitcast <32 x i8> %i.ax to <4 x i64>
  br label %shift_right_zeros.exit

bb.t:                                             ; preds = %bb.d
  br label %shift_right_zeros.exit

shift_right_zeros.exit:                           ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t
  %.0.i = phi <4 x i64> [ zeroinitializer, %bb.t ], [ %i.ay, %bb.s ], [ %i.k, %bb.e ], [ %i.n, %bb.f ], [ %i.q, %bb.g ], [ %i.t, %bb.h ], [ %i.w, %bb.i ], [ %i.z, %bb.j ], [ %i.ac, %bb.k ], [ %i.ad, %bb.l ], [ %i.ag, %bb.m ], [ %i.aj, %bb.n ], [ %i.am, %bb.o ], [ %i.ap, %bb.p ], [ %i.as, %bb.q ], [ %i.av, %bb.r ], [ %0, %bb.d ] ; 16 uses
  %i.az = add nsw i32 %i.b, %i.g                  ; 3 uses
  switch i32 %i.az, label %shift_left_zeros.exit [
    i32 0, label %shift_left_zeros.exit98
    i32 1, label %shift_left_zeros.exit.thread108
    i32 2, label %shift_left_zeros.exit.thread111
    i32 3, label %shift_left_zeros.exit.thread114
    i32 4, label %shift_left_zeros.exit.thread117
    i32 5, label %shift_left_zeros.exit.thread120
    i32 6, label %shift_left_zeros.exit.thread123
    i32 7, label %shift_left_zeros.exit.thread126
    i32 8, label %shift_left_zeros.exit.thread129
    i32 9, label %shift_left_zeros.exit.thread132
    i32 10, label %shift_left_zeros.exit.thread135
    i32 11, label %shift_left_zeros.exit.thread138
    i32 12, label %shift_left_zeros.exit.thread141
    i32 13, label %shift_left_zeros.exit.thread144
    i32 14, label %shift_left_zeros.exit.thread147
    i32 15, label %shift_left_zeros.exit.thread150
  ]

shift_left_zeros.exit.thread108:                  ; preds = %shift_right_zeros.exit
  %i.ba = bitcast <4 x i64> %.0.i to <32 x i8>
  %i.bb = shufflevector <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0>, <32 x i8> %i.ba, <32 x i32> <i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62>
  %i.bc = bitcast <32 x i8> %i.bb to <4 x i64>
  br label %shift_left_zeros.exit98

shift_left_zeros.exit.thread111:                  ; preds = %shift_right_zeros.exit
  %i.bd = bitcast <4 x i64> %.0.i to <32 x i8>
  %i.be = shufflevector <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <32 x i8> %i.bd, <32 x i32> <i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61>
  %i.bf = bitcast <32 x i8> %i.be to <4 x i64>
  br label %shift_left_zeros.exit98

shift_left_zeros.exit.thread114:                  ; preds = %shift_right_zeros.exit
  %i.bg = bitcast <4 x i64> %.0.i to <32 x i8>
  %i.bh = shufflevector <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0>, <32 x i8> %i.bg, <32 x i32> <i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60>
  %i.bi = bitcast <32 x i8> %i.bh to <4 x i64>
  br label %shift_left_zeros.exit98

shift_left_zeros.exit.thread117:                  ; preds = %shift_right_zeros.exit
  %i.bj = bitcast <4 x i64> %.0.i to <32 x i8>
  %i.bk = shufflevector <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <32 x i8> %i.bj, <32 x i32> <i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59>
  %i.bl = bitcast <32 x i8> %i.bk to <4 x i64>
  br label %shift_left_zeros.exit98

shift_left_zeros.exit.thread120:                  ; preds = %shift_right_zeros.exit
  %i.bm = bitcast <4 x i64> %.0.i to <32 x i8>
  %i.bn = shufflevector <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i8> %i.bm, <32 x i32> <i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 27, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58>
  %i.bo = bitcast <32 x i8> %i.bn to <4 x i64>
  br label %shift_left_zeros.exit98

shift_left_zeros.exit.thread123:                  ; preds = %shift_right_zeros.exit
  %i.bp = bitcast <4 x i64> %.0.i to <32 x i8>
  %i.bq = shufflevector <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i8> %i.bp, <32 x i32> <i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57>
  %i.br = bitcast <32 x i8> %i.bq to <4 x i64>
  br label %shift_left_zeros.exit98

shift_left_zeros.exit.thread126:                  ; preds = %shift_right_zeros.exit
  %i.bs = bitcast <4 x i64> %.0.i to <32 x i8>
  %i.bt = shufflevector <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i8> %i.bs, <32 x i32> <i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56>
  %i.bu = bitcast <32 x i8> %i.bt to <4 x i64>
  br label %shift_left_zeros.exit98

shift_left_zeros.exit.thread129:                  ; preds = %shift_right_zeros.exit
  %i.bv = shufflevector <4 x i64> <i64 poison, i64 0, i64 poison, i64 0>, <4 x i64> %.0.i, <4 x i32> <i32 1, i32 4, i32 3, i32 6>
end_hunk_1
begin_hunk_2_@insert_nl_gt16:bb.a
  br label %shift_right_zeros.exit101

bb.ag:                                            ; preds = %bb.v
  %i.ea = shufflevector <32 x i8> %.pre-phi, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 27, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58>
  %i.eb = bitcast <32 x i8> %i.ea to <4 x i64>
  br label %shift_right_zeros.exit101

bb.ah:                                            ; preds = %bb.v
  %i.ec = shufflevector <32 x i8> %.pre-phi, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59>
  %i.ed = bitcast <32 x i8> %i.ec to <4 x i64>
  br label %shift_right_zeros.exit101

bb.ai:                                            ; preds = %bb.v
  %i.ee = shufflevector <32 x i8> %.pre-phi, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60>
  %i.ef = bitcast <32 x i8> %i.ee to <4 x i64>
  br label %shift_right_zeros.exit101

bb.aj:                                            ; preds = %bb.v
  %i.eg = shufflevector <32 x i8> %.pre-phi, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison>, <32 x i32> <i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61>
  %i.eh = bitcast <32 x i8> %i.eg to <4 x i64>
  br label %shift_right_zeros.exit101

bb.ak:                                            ; preds = %bb.v
  %i.ei = shufflevector <32 x i8> %.pre-phi, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison>, <32 x i32> <i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62>
  %i.ej = bitcast <32 x i8> %i.ei to <4 x i64>
  br label %shift_right_zeros.exit101

default.unreachable:                              ; preds = %bb.v
  unreachable

shift_right_zeros.exit101:                        ; preds = %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.aj, %bb.ak
  %.0.i100 = phi <4 x i64> [ %0, %bb.v ], [ %i.ej, %bb.ak ], [ %i.dh, %bb.w ], [ %i.dj, %bb.x ], [ %i.dl, %bb.y ], [ %i.dn, %bb.z ], [ %i.dp, %bb.aa ], [ %i.dr, %bb.ab ], [ %i.dt, %bb.ac ], [ %i.dv, %bb.ad ], [ %i.dx, %bb.ae ], [ %i.dz, %bb.af ], [ %i.eb, %bb.ag ], [ %i.ed, %bb.ah ], [ %i.ef, %bb.ai ], [ %i.eh, %bb.aj ] ; 15 uses
  %i.ek = add nuw nsw i32 %i.df, %i.g
  %i.el = add nuw nsw i32 %i.ek, %i.dc
  switch i32 %i.el, label %shift_left_zeros.exit105 [
    i32 15, label %shift_left_zeros.exit103.thread197
    i32 1, label %shift_left_zeros.exit103.thread155
    i32 2, label %shift_left_zeros.exit103.thread158
    i32 3, label %shift_left_zeros.exit103.thread161
    i32 4, label %shift_left_zeros.exit103.thread164
    i32 5, label %shift_left_zeros.exit103.thread167
    i32 6, label %shift_left_zeros.exit103.thread170
    i32 7, label %shift_left_zeros.exit103.thread173
    i32 8, label %shift_left_zeros.exit103.thread176
    i32 9, label %shift_left_zeros.exit103.thread179
    i32 10, label %shift_left_zeros.exit103.thread182
    i32 11, label %shift_left_zeros.exit103.thread185
    i32 12, label %shift_left_zeros.exit103.thread188
    i32 13, label %shift_left_zeros.exit103.thread191
    i32 14, label %shift_left_zeros.exit103.thread194
  ]

shift_left_zeros.exit103.thread155:               ; preds = %shift_right_zeros.exit101
  %i.em = bitcast <4 x i64> %.0.i100 to <32 x i8>
  %i.en = shufflevector <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0>, <32 x i8> %i.em, <32 x i32> <i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62>
  br label %shift_left_zeros.exit105

shift_left_zeros.exit103.thread158:               ; preds = %shift_right_zeros.exit101
  %i.eo = bitcast <4 x i64> %.0.i100 to <32 x i8>
  %i.ep = shufflevector <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <32 x i8> %i.eo, <32 x i32> <i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61>
  br label %shift_left_zeros.exit105

shift_left_zeros.exit103.thread161:               ; preds = %shift_right_zeros.exit101
  %i.eq = bitcast <4 x i64> %.0.i100 to <32 x i8>
  %i.er = shufflevector <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0>, <32 x i8> %i.eq, <32 x i32> <i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60>
  br label %shift_left_zeros.exit105

shift_left_zeros.exit103.thread164:               ; preds = %shift_right_zeros.exit101
  %i.es = bitcast <4 x i64> %.0.i100 to <32 x i8>
  %i.et = shufflevector <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <32 x i8> %i.es, <32 x i32> <i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59>
  br label %shift_left_zeros.exit105

shift_left_zeros.exit103.thread167:               ; preds = %shift_right_zeros.exit101
  %i.eu = bitcast <4 x i64> %.0.i100 to <32 x i8>
  %i.ev = shufflevector <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i8> %i.eu, <32 x i32> <i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 27, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58>
  br label %shift_left_zeros.exit105

shift_left_zeros.exit103.thread170:               ; preds = %shift_right_zeros.exit101
  %i.ew = bitcast <4 x i64> %.0.i100 to <32 x i8>
  %i.ex = shufflevector <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i8> %i.ew, <32 x i32> <i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57>
  br label %shift_left_zeros.exit105

shift_left_zeros.exit103.thread173:               ; preds = %shift_right_zeros.exit101
  %i.ey = bitcast <4 x i64> %.0.i100 to <32 x i8>
  %i.ez = shufflevector <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i8> %i.ey, <32 x i32> <i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56>
  br label %shift_left_zeros.exit105

shift_left_zeros.exit103.thread176:               ; preds = %shift_right_zeros.exit101
  %i.fa = bitcast <4 x i64> %.0.i100 to <32 x i8>
  %i.fb = shufflevector <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i8> %i.fa, <32 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55>
  br label %shift_left_zeros.exit105

shift_left_zeros.exit103.thread179:               ; preds = %shift_right_zeros.exit101
  %i.fc = bitcast <4 x i64> %.0.i100 to <32 x i8>
  %i.fd = shufflevector <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i8> %i.fc, <32 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54>
  br label %shift_left_zeros.exit105

shift_left_zeros.exit103.thread182:               ; preds = %shift_right_zeros.exit101
  %i.fe = bitcast <4 x i64> %.0.i100 to <32 x i8>
  %i.ff = shufflevector <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i8> %i.fe, <32 x i32> <i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53>
  br label %shift_left_zeros.exit105

shift_left_zeros.exit103.thread185:               ; preds = %shift_right_zeros.exit101
  %i.fg = bitcast <4 x i64> %.0.i100 to <32 x i8>
  %i.fh = shufflevector <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i8> %i.fg, <32 x i32> <i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52>
  br label %shift_left_zeros.exit105

shift_left_zeros.exit103.thread188:               ; preds = %shift_right_zeros.exit101
  %i.fi = bitcast <4 x i64> %.0.i100 to <32 x i8>
  %i.fj = shufflevector <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i8> %i.fi, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51>
  br label %shift_left_zeros.exit105

shift_left_zeros.exit103.thread191:               ; preds = %shift_right_zeros.exit101
  %i.fk = bitcast <4 x i64> %.0.i100 to <32 x i8>
  %i.fl = shufflevector <32 x i8> <i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i8> %i.fk, <32 x i32> <i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50>
  br label %shift_left_zeros.exit105

shift_left_zeros.exit103.thread194:               ; preds = %shift_right_zeros.exit101
  %i.fm = bitcast <4 x i64> %.0.i100 to <32 x i8>
  %i.fn = shufflevector <32 x i8> <i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i8> %i.fm, <32 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49>
  br label %shift_left_zeros.exit105

shift_left_zeros.exit103.thread197:               ; preds = %shift_right_zeros.exit101
  %i.fo = bitcast <4 x i64> %.0.i100 to <32 x i8>
  %i.fp = shufflevector <32 x i8> <i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i8> %i.fo, <32 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 48>
  br label %shift_left_zeros.exit105

shift_left_zeros.exit105:                         ; preds = %shift_right_zeros.exit101, %shift_left_zeros.exit103.thread197, %shift_left_zeros.exit103.thread194, %shift_left_zeros.exit103.thread191, %shift_left_zeros.exit103.thread188, %shift_left_zeros.exit103.thread185, %shift_left_zeros.exit103.thread182, %shift_left_zeros.exit103.thread179, %shift_left_zeros.exit103.thread176, %shift_left_zeros.exit103.thread173, %shift_left_zeros.exit103.thread170, %shift_left_zeros.exit103.thread167, %shift_left_zeros.exit103.thread164, %shift_left_zeros.exit103.thread161, %shift_left_zeros.exit103.thread158, %shift_left_zeros.exit103.thread155
  %i.fq = phi <32 x i8> [ %i.en, %shift_left_zeros.exit103.thread155 ], [ %i.fp, %shift_left_zeros.exit103.thread197 ], [ %i.ep, %shift_left_zeros.exit103.thread158 ], [ %i.fn, %shift_left_zeros.exit103.thread194 ], [ %i.fl, %shift_left_zeros.exit103.thread191 ], [ %i.fj, %shift_left_zeros.exit103.thread188 ], [ %i.fh, %shift_left_zeros.exit103.thread185 ], [ %i.ff, %shift_left_zeros.exit103.thread182 ], [ %i.fd, %shift_left_zeros.exit103.thread179 ], [ %i.fb, %shift_left_zeros.exit103.thread176 ], [ %i.ez, %shift_left_zeros.exit103.thread173 ], [ %i.ex, %shift_left_zeros.exit103.thread170 ], [ %i.ev, %shift_left_zeros.exit103.thread167 ], [ %i.et, %shift_left_zeros.exit103.thread164 ], [ %i.er, %shift_left_zeros.exit103.thread161 ], [ zeroinitializer, %shift_right_zeros.exit101 ]
  %i.fr = phi <32 x i8> [ <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, %shift_left_zeros.exit103.thread155 ], [ <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 -1>, %shift_left_zeros.exit103.thread197 ], [ <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, %shift_left_zeros.exit103.thread158 ], [ <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 -1, i8 -1>, %shift_left_zeros.exit103.thread194 ], [ <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1>, %shift_left_zeros.exit103.thread191 ], [ <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 -1>, %shift_left_zeros.exit103.thread188 ], [ <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, %shift_left_zeros.exit103.thread185 ], [ <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, %shift_left_zeros.exit103.thread182 ], [ <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, %shift_left_zeros.exit103.thread179 ], [ <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, %shift_left_zeros.exit103.thread176 ], [ <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, %shift_left_zeros.exit103.thread173 ], [ <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, %shift_left_zeros.exit103.thread170 ], [ <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, %shift_left_zeros.exit103.thread167 ], [ <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, %shift_left_zeros.exit103.thread164 ], [ <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, %shift_left_zeros.exit103.thread161 ], [ zeroinitializer, %shift_right_zeros.exit101 ]
  %i.fs = tail call <32 x i8> @llvm.x86.avx2.pblendvb(<32 x i8> %.093, <32 x i8> %i.fq, <32 x i8> %i.fr)
  store <32 x i8> %i.fs, ptr %1, align 1, !tbaa !9
  %i.ft = add nuw nsw i32 %.092, %i.g
  %i.fu = zext nneg i32 %i.ft to i64
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 %i.fu
  store i8 10, ptr %i.fv, align 1, !tbaa !9
  %i.fw = select i1 %i.f, i32 32, i32 31          ; 2 uses
  %i.fx = zext nneg i32 %i.fw to i64
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 %i.fx
  store i8 %i.de, ptr %i.fy, align 1, !tbaa !9
  %i.fz = add nuw nsw i32 %i.fw, %i.dc
  %i.ga = zext nneg i32 %i.fz to i64
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 %i.ga
  store i8 %i.dd, ptr %i.gb, align 1, !tbaa !9
  br label %bb.al

bb.al:                                            ; preds = %shift_left_zeros.exit105, %bb.u
  br i1 %i.f, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.gc = sub nsw i32 %.092, %2
  %i.gd = sext i32 %i.gc to i64
  %i.ge = getelementptr inbounds i8, ptr %1, i64 %i.gd
  store i8 10, ptr %i.ge, align 1, !tbaa !9
  %i.gf = extractelement <32 x i8> %.pre-phi, i64 15
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 %i.gf, ptr %i.gg, align 1, !tbaa !9
  %i.gh = select i1 %i.db, i64 33, i64 32
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 %i.gh
  store i8 %i.dd, ptr %i.gi, align 1, !tbaa !9
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.gj = icmp sgt i32 %.092, 32
  %.p.v = select i1 %i.gj, i32 %2, i32 0
  %.p = sub i32 %.p.v, %.092
  %i.gk = add i32 %.p, 32                         ; 3 uses
  store i32 %i.gk, ptr %3, align 4, !tbaa !8
  %i.gl = icmp eq i32 %i.gk, %2
  %i.gm = icmp eq i32 %i.gk, 0
  %or.cond = or i1 %i.gl, %i.gm
  br i1 %or.cond, label %bb.ao, label %._crit_edge

._crit_edge:                                      ; preds = %bb.an
  %.pre201 = select i1 %i.f, i32 33, i32 32
  %.pre203 = add nuw nsw i32 %.pre201, %i.dc
  br label %bb.ap

bb.ao:                                            ; preds = %bb.an
  store i32 0, ptr %3, align 4, !tbaa !8
  %i.gn = select i1 %i.f, i32 33, i32 32
  %i.go = add nuw nsw i32 %i.gn, %i.dc            ; 2 uses
  %i.gp = zext nneg i32 %i.go to i64
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 %i.gp
  store i8 10, ptr %i.gq, align 1, !tbaa !9
  br label %bb.ap

bb.ap:                                            ; preds = %._crit_edge, %bb.ao
  %.pre-phi204 = phi i32 [ %.pre203, %._crit_edge ], [ %i.go, %bb.ao ]
  %.091 = phi i32 [ 0, %._crit_edge ], [ 1, %bb.ao ]
  %i.gr = add nuw nsw i32 %.pre-phi204, %.091
  %i.gs = zext nneg i32 %i.gr to i64
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.b
  %.0 = phi i64 [ 32, %bb.b ], [ %i.gs, %bb.ap ]
  ret i64 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i16> @llvm.umulh.v16i16(<16 x i16>, <16 x i16>) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!5, !5, i64 0}
!9 = !{!4, !4, i64 0}
!10 = distinct !{!10, !14}
!11 = distinct !{!11, !14}
!12 = !{!"evp_Encode_Ctx_st", !5, i64 0, !4, i64 4, !5, i64 84, !5, i64 88}
!13 = !{!12, !5, i64 88}
!14 = !{!"llvm.loop.mustprogress"}
end_hunk_2
