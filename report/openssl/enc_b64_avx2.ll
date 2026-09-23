Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/enc_b64_avx2?download=true
inline.NumInlined: 33
inline.NumDeleted: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@shuffle_masks = internal unnamed_addr constant [16 x [16 x i8]] [[16 x i8] c"\80\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E", [16 x i8] c"\00\80\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E", [16 x i8] c"\00\01\80\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E", [16 x i8] c"\00\01\02\80\03\04\05\06\07\08\09\0A\0B\0C\0D\0E", [16 x i8] c"\00\01\02\03\80\04\05\06\07\08\09\0A\0B\0C\0D\0E", [16 x i8] c"\00\01\02\03\04\80\05\06\07\08\09\0A\0B\0C\0D\0E", [16 x i8] c"\00\01\02\03\04\05\80\06\07\08\09\0A\0B\0C\0D\0E", [16 x i8] c"\00\01\02\03\04\05\06\80\07\08\09\0A\0B\0C\0D\0E", [16 x i8] c"\00\01\02\03\04\05\06\07\80\08\09\0A\0B\0C\0D\0E", [16 x i8] c"\00\01\02\03\04\05\06\07\08\80\09\0A\0B\0C\0D\0E", [16 x i8] c"\00\01\02\03\04\05\06\07\08\09\80\0A\0B\0C\0D\0E", [16 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\80\0B\0C\0D\0E", [16 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\80\0C\0D\0E", [16 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\80\0D\0E", [16 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\80\0E", [16 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\80"], align 16

; Function Attrs: nounwind uwtable
define i64 @encode_base64_avx2(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 25 uses
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = sdiv i32 %4, 3
  %i.d = shl nsw i32 %i.c, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
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
  %i.w = tail call <16 x i16> @llvm.x86.avx2.pmulhu.w(<16 x i16> %i.v, <16 x i16> <i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024>)
  %i.x = bitcast <32 x i8> %i.t to <16 x i16>
  %i.y = and <16 x i16> %i.x, <i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63>
  %i.z = shl <16 x i16> %i.y, <i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8>
  %i.aa = or <16 x i16> %i.z, %i.w                ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.ac = load <2 x i64>, ptr %i.ab, align 1, !tbaa !9
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 36
  %i.ae = load <2 x i64>, ptr %i.ad, align 1, !tbaa !9
  %i.af = shufflevector <2 x i64> %i.ac, <2 x i64> %i.ae, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ag = bitcast <4 x i64> %i.af to <32 x i8>
  %i.ah = shufflevector <32 x i8> %i.ag, <32 x i8> poison, <32 x i32> <i32 1, i32 0, i32 2, i32 1, i32 4, i32 3, i32 5, i32 4, i32 7, i32 6, i32 8, i32 7, i32 10, i32 9, i32 11, i32 10, i32 17, i32 16, i32 18, i32 17, i32 20, i32 19, i32 21, i32 20, i32 23, i32 22, i32 24, i32 23, i32 26, i32 25, i32 27, i32 26> ; 2 uses
  %i.ai = bitcast <32 x i8> %i.ah to <16 x i16>
  %i.aj = and <16 x i16> %i.ai, <i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032>
  %i.ak = tail call <16 x i16> @llvm.x86.avx2.pmulhu.w(<16 x i16> %i.aj, <16 x i16> <i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024>)
  %i.al = bitcast <32 x i8> %i.ah to <16 x i16>
  %i.am = and <16 x i16> %i.al, <i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63>
  %i.an = shl <16 x i16> %i.am, <i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8>
  %i.ao = or <16 x i16> %i.an, %i.ak              ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.aq = load <2 x i64>, ptr %i.ap, align 1, !tbaa !9
  %i.ar = getelementptr inbounds nuw i8, ptr %i.m, i64 60
  %i.as = load <2 x i64>, ptr %i.ar, align 1, !tbaa !9
  %i.at = shufflevector <2 x i64> %i.aq, <2 x i64> %i.as, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.au = bitcast <4 x i64> %i.at to <32 x i8>
  %i.av = shufflevector <32 x i8> %i.au, <32 x i8> poison, <32 x i32> <i32 1, i32 0, i32 2, i32 1, i32 4, i32 3, i32 5, i32 4, i32 7, i32 6, i32 8, i32 7, i32 10, i32 9, i32 11, i32 10, i32 17, i32 16, i32 18, i32 17, i32 20, i32 19, i32 21, i32 20, i32 23, i32 22, i32 24, i32 23, i32 26, i32 25, i32 27, i32 26> ; 2 uses
  %i.aw = bitcast <32 x i8> %i.av to <16 x i16>
  %i.ax = and <16 x i16> %i.aw, <i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032>
  %i.ay = tail call <16 x i16> @llvm.x86.avx2.pmulhu.w(<16 x i16> %i.ax, <16 x i16> <i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024>)
  %i.az = bitcast <32 x i8> %i.av to <16 x i16>
  %i.ba = and <16 x i16> %i.az, <i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63>
  %i.bb = shl <16 x i16> %i.ba, <i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8>
  %i.bc = or <16 x i16> %i.bb, %i.ay              ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  %i.be = load <2 x i64>, ptr %i.bd, align 1, !tbaa !9
  %i.bf = getelementptr inbounds nuw i8, ptr %i.m, i64 84
  %i.bg = load <2 x i64>, ptr %i.bf, align 1, !tbaa !9
  %i.bh = shufflevector <2 x i64> %i.be, <2 x i64> %i.bg, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bi = bitcast <4 x i64> %i.bh to <32 x i8>
  %i.bj = shufflevector <32 x i8> %i.bi, <32 x i8> poison, <32 x i32> <i32 1, i32 0, i32 2, i32 1, i32 4, i32 3, i32 5, i32 4, i32 7, i32 6, i32 8, i32 7, i32 10, i32 9, i32 11, i32 10, i32 17, i32 16, i32 18, i32 17, i32 20, i32 19, i32 21, i32 20, i32 23, i32 22, i32 24, i32 23, i32 26, i32 25, i32 27, i32 26> ; 2 uses
  %i.bk = bitcast <32 x i8> %i.bj to <16 x i16>
  %i.bl = and <16 x i16> %i.bk, <i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032>
  %i.bm = tail call <16 x i16> @llvm.x86.avx2.pmulhu.w(<16 x i16> %i.bl, <16 x i16> <i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024>)
  %i.bn = bitcast <32 x i8> %i.bj to <16 x i16>
  %i.bo = and <16 x i16> %i.bn, <i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63>
  %i.bp = shl <16 x i16> %i.bo, <i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8>
  %i.bq = or <16 x i16> %i.bp, %i.bm              ; 3 uses
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
end_hunk_0
begin_hunk_1_@encode_base64_avx2:bb.a

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
declare <16 x i16> @llvm.x86.avx2.pmulhu.w(<16 x i16>, <16 x i16>) #4

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal <4 x i64> @lookup_pshufb_srp(<4 x i64> noundef %0) unnamed_addr #5 {
bb.a:
  %i.a = bitcast <4 x i64> %0 to <32 x i8>        ; 6 uses
  %i.b = icmp sgt <32 x i8> %i.a, splat (i8 63)
  %i.c = icmp sgt <32 x i8> %i.a, splat (i8 9)
  %.neg = zext <32 x i1> %i.c to <32 x i8>
  %i.d = icmp sgt <32 x i8> %i.a, splat (i8 35)
  %.neg19 = zext <32 x i1> %i.d to <32 x i8>
  %i.e = add nuw nsw <32 x i8> %.neg19, %.neg
  %i.f = icmp eq <32 x i8> %i.a, splat (i8 62)
  %i.g = select <32 x i1> %i.f, <32 x i8> splat (i8 3), <32 x i8> %i.e
  %i.h = icmp eq <32 x i8> %i.a, splat (i8 63)
  %i.i = select <32 x i1> %i.h, <32 x i8> splat (i8 4), <32 x i8> %i.g
  %i.j = bitcast <4 x i64> %0 to <32 x i8>
  %i.k = and <32 x i8> %i.j, splat (i8 -128)
  %i.l = select <32 x i1> %i.b, <32 x i8> splat (i8 -128), <32 x i8> %i.k
  %i.m = or disjoint <32 x i8> %i.i, %i.l
  %i.n = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 48, i8 55, i8 61, i8 -16, i8 -16, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 48, i8 55, i8 61, i8 -16, i8 -16, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i8> %i.m)
  %i.o = add <32 x i8> %i.n, %i.a
  %i.p = bitcast <32 x i8> %i.o to <4 x i64>
  ret <4 x i64> %i.p
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <32 x i8> @llvm.x86.avx2.pblendvb(<32 x i8>, <32 x i8>, <32 x i8>) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal <4 x i64> @lookup_pshufb_std(<4 x i64> noundef %0) unnamed_addr #6 {
bb.a:
  %i.a = bitcast <4 x i64> %0 to <32 x i8>        ; 3 uses
  %i.b = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %i.a, <32 x i8> splat (i8 51))
  %i.c = icmp slt <32 x i8> %i.a, splat (i8 26)
  %i.d = select <32 x i1> %i.c, <32 x i8> splat (i8 13), <32 x i8> zeroinitializer
  %i.e = or <32 x i8> %i.d, %i.b
  %i.f = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 71, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -19, i8 -16, i8 65, i8 0, i8 0, i8 71, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -19, i8 -16, i8 65, i8 0, i8 0>, <32 x i8> %i.e)
  %i.g = add <32 x i8> %i.f, %i.a
  %i.h = bitcast <32 x i8> %i.g to <4 x i64>
  ret <4 x i64> %i.h
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x i8> @llvm.usub.sat.v32i8(<32 x i8>, <32 x i8>) #7

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc range(i64 32, 36) i64 @insert_nl_gt16(<4 x i64> noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, i32 noundef range(i32 12, -2147483648) %2, ptr nofree noundef nonnull captures(none) %3) unnamed_addr #8 {
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
  br label %bb.as

bb.c:                                             ; preds = %bb.a
  %i.f = icmp slt i32 %i.b, 16                    ; 6 uses
  %i.g = zext i1 %i.f to i32                      ; 3 uses
  br i1 %i.f, label %bb.d, label %._crit_edge200

._crit_edge200:                                   ; preds = %bb.c
  %.pre = bitcast <4 x i64> %0 to <32 x i8>
  %i.h = bitcast <4 x i64> %0 to <32 x i8>
  br label %bb.w

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
  %i.az = add nsw i32 %i.b, %i.g                  ; 2 uses
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
  br label %shift_left_zeros.exit98

shift_left_zeros.exit.thread132:                  ; preds = %shift_right_zeros.exit
  %i.bw = bitcast <4 x i64> %.0.i to <32 x i8>
  %i.bx = shufflevector <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i8> %i.bw, <32 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54>
  %i.by = bitcast <32 x i8> %i.bx to <4 x i64>
  br label %shift_left_zeros.exit98

shift_left_zeros.exit.thread135:                  ; preds = %shift_right_zeros.exit
  %i.bz = bitcast <4 x i64> %.0.i to <32 x i8>
  %i.ca = shufflevector <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i8> %i.bz, <32 x i32> <i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53>
  %i.cb = bitcast <32 x i8> %i.ca to <4 x i64>
  br label %shift_left_zeros.exit98

shift_left_zeros.exit.thread138:                  ; preds = %shift_right_zeros.exit
  %i.cc = bitcast <4 x i64> %.0.i to <32 x i8>
  %i.cd = shufflevector <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i8> %i.cc, <32 x i32> <i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52>
  %i.ce = bitcast <32 x i8> %i.cd to <4 x i64>
  br label %shift_left_zeros.exit98

shift_left_zeros.exit.thread141:                  ; preds = %shift_right_zeros.exit
  %i.cf = bitcast <4 x i64> %.0.i to <32 x i8>
  %i.cg = shufflevector <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i8> %i.cf, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51>
  %i.ch = bitcast <32 x i8> %i.cg to <4 x i64>
  br label %shift_left_zeros.exit98

shift_left_zeros.exit.thread144:                  ; preds = %shift_right_zeros.exit
  %i.ci = bitcast <4 x i64> %.0.i to <32 x i8>
  %i.cj = shufflevector <32 x i8> <i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i8> %i.ci, <32 x i32> <i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50>
  %i.ck = bitcast <32 x i8> %i.cj to <4 x i64>
  br label %shift_left_zeros.exit98

shift_left_zeros.exit.thread147:                  ; preds = %shift_right_zeros.exit
  %i.cl = bitcast <4 x i64> %.0.i to <32 x i8>
  %i.cm = shufflevector <32 x i8> <i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i8> %i.cl, <32 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49>
  %i.cn = bitcast <32 x i8> %i.cm to <4 x i64>
  br label %shift_left_zeros.exit98

shift_left_zeros.exit.thread150:                  ; preds = %shift_right_zeros.exit
  %i.co = bitcast <4 x i64> %.0.i to <32 x i8>
  %i.cp = shufflevector <32 x i8> <i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i8> %i.co, <32 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 48>
  %i.cq = bitcast <32 x i8> %i.cp to <4 x i64>
  br label %shift_left_zeros.exit98

shift_left_zeros.exit:                            ; preds = %shift_right_zeros.exit
  switch i32 %i.az, label %bb.v [
    i32 0, label %shift_left_zeros.exit98
    i32 1, label %4
    i32 2, label %5
    i32 3, label %6
    i32 4, label %7
    i32 5, label %8
    i32 6, label %9
    i32 7, label %10
    i32 8, label %11
    i32 9, label %12
    i32 10, label %13
    i32 11, label %14
    i32 12, label %15
    i32 13, label %16
    i32 14, label %17
    i32 15, label %bb.u
  ]

4:                                                ; preds = %shift_left_zeros.exit
  br label %shift_left_zeros.exit98

5:                                                ; preds = %shift_left_zeros.exit
  br label %shift_left_zeros.exit98

6:                                                ; preds = %shift_left_zeros.exit
  br label %shift_left_zeros.exit98

7:                                                ; preds = %shift_left_zeros.exit
  br label %shift_left_zeros.exit98

8:                                                ; preds = %shift_left_zeros.exit
  br label %shift_left_zeros.exit98

9:                                                ; preds = %shift_left_zeros.exit
  br label %shift_left_zeros.exit98

10:                                               ; preds = %shift_left_zeros.exit
  br label %shift_left_zeros.exit98

11:                                               ; preds = %shift_left_zeros.exit
  br label %shift_left_zeros.exit98

12:                                               ; preds = %shift_left_zeros.exit
  br label %shift_left_zeros.exit98

13:                                               ; preds = %shift_left_zeros.exit
  br label %shift_left_zeros.exit98

14:                                               ; preds = %shift_left_zeros.exit
  br label %shift_left_zeros.exit98

15:                                               ; preds = %shift_left_zeros.exit
  br label %shift_left_zeros.exit98

16:                                               ; preds = %shift_left_zeros.exit
  br label %shift_left_zeros.exit98

17:                                               ; preds = %shift_left_zeros.exit
  br label %shift_left_zeros.exit98

bb.u:                                             ; preds = %shift_left_zeros.exit
  br label %shift_left_zeros.exit98

bb.v:                                             ; preds = %shift_left_zeros.exit
  br label %shift_left_zeros.exit98

shift_left_zeros.exit98:                          ; preds = %shift_right_zeros.exit, %shift_left_zeros.exit.thread150, %shift_left_zeros.exit.thread147, %shift_left_zeros.exit.thread144, %shift_left_zeros.exit.thread141, %shift_left_zeros.exit.thread138, %shift_left_zeros.exit.thread135, %shift_left_zeros.exit.thread132, %shift_left_zeros.exit.thread129, %shift_left_zeros.exit.thread126, %shift_left_zeros.exit.thread123, %shift_left_zeros.exit.thread120, %shift_left_zeros.exit.thread117, %shift_left_zeros.exit.thread114, %shift_left_zeros.exit.thread111, %shift_left_zeros.exit.thread108, %shift_left_zeros.exit, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13, %14, %15, %16, %17, %bb.u, %bb.v
  %.0.i96107 = phi <4 x i64> [ zeroinitializer, %bb.v ], [ zeroinitializer, %shift_left_zeros.exit ], [ zeroinitializer, %bb.u ], [ zeroinitializer, %4 ], [ zeroinitializer, %5 ], [ zeroinitializer, %6 ], [ zeroinitializer, %7 ], [ zeroinitializer, %8 ], [ zeroinitializer, %9 ], [ zeroinitializer, %10 ], [ zeroinitializer, %11 ], [ zeroinitializer, %12 ], [ zeroinitializer, %13 ], [ zeroinitializer, %14 ], [ zeroinitializer, %15 ], [ zeroinitializer, %16 ], [ zeroinitializer, %17 ], [ %i.bc, %shift_left_zeros.exit.thread108 ], [ %i.bf, %shift_left_zeros.exit.thread111 ], [ %i.bi, %shift_left_zeros.exit.thread114 ], [ %i.bl, %shift_left_zeros.exit.thread117 ], [ %i.bo, %shift_left_zeros.exit.thread120 ], [ %i.br, %shift_left_zeros.exit.thread123 ], [ %i.bu, %shift_left_zeros.exit.thread126 ], [ %i.bv, %shift_left_zeros.exit.thread129 ], [ %i.by, %shift_left_zeros.exit.thread132 ], [ %i.cb, %shift_left_zeros.exit.thread135 ], [ %i.ce, %shift_left_zeros.exit.thread138 ], [ %i.ch, %shift_left_zeros.exit.thread141 ], [ %i.ck, %shift_left_zeros.exit.thread144 ], [ %i.cn, %shift_left_zeros.exit.thread147 ], [ %i.cq, %shift_left_zeros.exit.thread150 ], [ %.0.i, %shift_right_zeros.exit ]
  %18 = phi <32 x i8> [ <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, %bb.v ], [ splat (i8 -1), %shift_left_zeros.exit ], [ <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, %bb.u ], [ <i8 0, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, %4 ], [ <i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, %5 ], [ <i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, %6 ], [ <i8 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, %7 ], [ <i8 0, i8 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, %8 ], [ <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, %9 ], [ <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, %10 ], [ <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, %11 ], [ <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, %12 ], [ <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, %13 ], [ <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, %14 ], [ <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, %15 ], [ <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, %16 ], [ <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, %17 ], [ <i8 0, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, %shift_left_zeros.exit.thread108 ], [ <i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, %shift_left_zeros.exit.thread111 ], [ <i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, %shift_left_zeros.exit.thread114 ], [ <i8 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, %shift_left_zeros.exit.thread117 ], [ <i8 0, i8 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, %shift_left_zeros.exit.thread120 ], [ <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, %shift_left_zeros.exit.thread123 ], [ <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, %shift_left_zeros.exit.thread126 ], [ <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, %shift_left_zeros.exit.thread129 ], [ <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, %shift_left_zeros.exit.thread132 ], [ <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, %shift_left_zeros.exit.thread135 ], [ <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, %shift_left_zeros.exit.thread138 ], [ <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, %shift_left_zeros.exit.thread141 ], [ <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, %shift_left_zeros.exit.thread144 ], [ <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, %shift_left_zeros.exit.thread147 ], [ <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, %shift_left_zeros.exit.thread150 ], [ splat (i8 -1), %shift_right_zeros.exit ] ; 2 uses
  %i.cr = bitcast <4 x i64> %0 to <32 x i8>       ; 3 uses
  %i.cs = shufflevector <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0>, <32 x i8> %i.cr, <32 x i32> <i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62>
  %i.ct = bitcast <4 x i64> %.0.i96107 to <32 x i8>
  %i.cu = tail call <32 x i8> @llvm.x86.avx2.pblendvb(<32 x i8> %i.ct, <32 x i8> %i.cs, <32 x i8> %18)
  %i.cv = tail call <32 x i8> @llvm.x86.avx2.pblendvb(<32 x i8> %i.cr, <32 x i8> %i.cu, <32 x i8> %18) ; 2 uses
  store <32 x i8> %i.cv, ptr %1, align 1, !tbaa !9
  %i.cw = add nsw i32 %i.b, %2
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge200, %shift_left_zeros.exit98
  %.pre-phi = phi <32 x i8> [ %.pre, %._crit_edge200 ], [ %i.cr, %shift_left_zeros.exit98 ] ; 18 uses
  %.093 = phi <32 x i8> [ %i.h, %._crit_edge200 ], [ %i.cv, %shift_left_zeros.exit98 ]
  %.092 = phi i32 [ %i.b, %._crit_edge200 ], [ %i.cw, %shift_left_zeros.exit98 ] ; 6 uses
  %i.cx = and i32 %.092, -16
  %i.cy = icmp eq i32 %i.cx, 16                   ; 3 uses
  %i.cz = zext i1 %i.cy to i32                    ; 4 uses
  %i.da = extractelement <32 x i8> %.pre-phi, i64 31 ; 2 uses
  br i1 %i.cy, label %bb.x, label %bb.an

bb.x:                                             ; preds = %bb.w
  %i.db = extractelement <32 x i8> %.pre-phi, i64 30
  %i.dc = add nsw i32 %.092, -16                  ; 2 uses
  switch i32 %i.dc, label %default.unreachable [
    i32 0, label %shift_right_zeros.exit101
    i32 1, label %bb.y
    i32 2, label %bb.z
    i32 3, label %bb.aa
    i32 4, label %bb.ab
    i32 5, label %bb.ac
    i32 6, label %bb.ad
    i32 7, label %bb.ae
    i32 8, label %bb.af
    i32 9, label %bb.ag
    i32 10, label %bb.ah
    i32 11, label %bb.ai
    i32 12, label %bb.aj
    i32 13, label %bb.ak
    i32 14, label %bb.al
    i32 15, label %bb.am
  ]

bb.y:                                             ; preds = %bb.x
  %i.dd = shufflevector <32 x i8> %.pre-phi, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 48>
  %i.de = bitcast <32 x i8> %i.dd to <4 x i64>
  br label %shift_right_zeros.exit101

bb.z:                                             ; preds = %bb.x
  %i.df = shufflevector <32 x i8> %.pre-phi, <32 x i8> <i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49>
  %i.dg = bitcast <32 x i8> %i.df to <4 x i64>
  br label %shift_right_zeros.exit101

bb.aa:                                            ; preds = %bb.x
  %i.dh = shufflevector <32 x i8> %.pre-phi, <32 x i8> <i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50>
  %i.di = bitcast <32 x i8> %i.dh to <4 x i64>
  br label %shift_right_zeros.exit101

bb.ab:                                            ; preds = %bb.x
  %i.dj = shufflevector <32 x i8> %.pre-phi, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51>
  %i.dk = bitcast <32 x i8> %i.dj to <4 x i64>
  br label %shift_right_zeros.exit101

bb.ac:                                            ; preds = %bb.x
  %i.dl = shufflevector <32 x i8> %.pre-phi, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52>
  %i.dm = bitcast <32 x i8> %i.dl to <4 x i64>
  br label %shift_right_zeros.exit101

bb.ad:                                            ; preds = %bb.x
  %i.dn = shufflevector <32 x i8> %.pre-phi, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53>
  %i.do = bitcast <32 x i8> %i.dn to <4 x i64>
  br label %shift_right_zeros.exit101

bb.ae:                                            ; preds = %bb.x
  %i.dp = shufflevector <32 x i8> %.pre-phi, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54>
  %i.dq = bitcast <32 x i8> %i.dp to <4 x i64>
  br label %shift_right_zeros.exit101

bb.af:                                            ; preds = %bb.x
  %i.dr = shufflevector <32 x i8> %.pre-phi, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55>
  %i.ds = bitcast <32 x i8> %i.dr to <4 x i64>
  br label %shift_right_zeros.exit101

bb.ag:                                            ; preds = %bb.x
  %i.dt = shufflevector <32 x i8> %.pre-phi, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56>
  %i.du = bitcast <32 x i8> %i.dt to <4 x i64>
  br label %shift_right_zeros.exit101

bb.ah:                                            ; preds = %bb.x
  %i.dv = shufflevector <32 x i8> %.pre-phi, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57>
  %i.dw = bitcast <32 x i8> %i.dv to <4 x i64>
  br label %shift_right_zeros.exit101

bb.ai:                                            ; preds = %bb.x
  %i.dx = shufflevector <32 x i8> %.pre-phi, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 27, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58>
  %i.dy = bitcast <32 x i8> %i.dx to <4 x i64>
  br label %shift_right_zeros.exit101

bb.aj:                                            ; preds = %bb.x
  %i.dz = shufflevector <32 x i8> %.pre-phi, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59>
  %i.ea = bitcast <32 x i8> %i.dz to <4 x i64>
  br label %shift_right_zeros.exit101

bb.ak:                                            ; preds = %bb.x
  %i.eb = shufflevector <32 x i8> %.pre-phi, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60>
  %i.ec = bitcast <32 x i8> %i.eb to <4 x i64>
  br label %shift_right_zeros.exit101

bb.al:                                            ; preds = %bb.x
  %i.ed = shufflevector <32 x i8> %.pre-phi, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison>, <32 x i32> <i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61>
  %i.ee = bitcast <32 x i8> %i.ed to <4 x i64>
  br label %shift_right_zeros.exit101

bb.am:                                            ; preds = %bb.x
  %i.ef = shufflevector <32 x i8> %.pre-phi, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison>, <32 x i32> <i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62>
  %i.eg = bitcast <32 x i8> %i.ef to <4 x i64>
  br label %shift_right_zeros.exit101

default.unreachable:                              ; preds = %bb.x
  unreachable

shift_right_zeros.exit101:                        ; preds = %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.aj, %bb.ak, %bb.al, %bb.am
  %.0.i100 = phi <4 x i64> [ %0, %bb.x ], [ %i.eg, %bb.am ], [ %i.de, %bb.y ], [ %i.dg, %bb.z ], [ %i.di, %bb.aa ], [ %i.dk, %bb.ab ], [ %i.dm, %bb.ac ], [ %i.do, %bb.ad ], [ %i.dq, %bb.ae ], [ %i.ds, %bb.af ], [ %i.du, %bb.ag ], [ %i.dw, %bb.ah ], [ %i.dy, %bb.ai ], [ %i.ea, %bb.aj ], [ %i.ec, %bb.ak ], [ %i.ee, %bb.al ] ; 15 uses
  %i.eh = add nuw nsw i32 %i.dc, %i.g
  %i.ei = add nuw nsw i32 %i.eh, %i.cz
  switch i32 %i.ei, label %shift_left_zeros.exit105 [
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
  %i.ej = bitcast <4 x i64> %.0.i100 to <32 x i8>
  %i.ek = shufflevector <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0>, <32 x i8> %i.ej, <32 x i32> <i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62>
  br label %shift_left_zeros.exit105

shift_left_zeros.exit103.thread158:               ; preds = %shift_right_zeros.exit101
  %i.el = bitcast <4 x i64> %.0.i100 to <32 x i8>
  %i.em = shufflevector <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <32 x i8> %i.el, <32 x i32> <i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61>
  br label %shift_left_zeros.exit105

shift_left_zeros.exit103.thread161:               ; preds = %shift_right_zeros.exit101
  %i.en = bitcast <4 x i64> %.0.i100 to <32 x i8>
  %i.eo = shufflevector <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0>, <32 x i8> %i.en, <32 x i32> <i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60>
  br label %shift_left_zeros.exit105

shift_left_zeros.exit103.thread164:               ; preds = %shift_right_zeros.exit101
  %i.ep = bitcast <4 x i64> %.0.i100 to <32 x i8>
  %i.eq = shufflevector <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <32 x i8> %i.ep, <32 x i32> <i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59>
  br label %shift_left_zeros.exit105

shift_left_zeros.exit103.thread167:               ; preds = %shift_right_zeros.exit101
  %i.er = bitcast <4 x i64> %.0.i100 to <32 x i8>
  %i.es = shufflevector <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i8> %i.er, <32 x i32> <i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 27, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58>
  br label %shift_left_zeros.exit105

shift_left_zeros.exit103.thread170:               ; preds = %shift_right_zeros.exit101
  %i.et = bitcast <4 x i64> %.0.i100 to <32 x i8>
  %i.eu = shufflevector <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i8> %i.et, <32 x i32> <i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57>
  br label %shift_left_zeros.exit105

shift_left_zeros.exit103.thread173:               ; preds = %shift_right_zeros.exit101
  %i.ev = bitcast <4 x i64> %.0.i100 to <32 x i8>
  %i.ew = shufflevector <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i8> %i.ev, <32 x i32> <i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56>
  br label %shift_left_zeros.exit105

shift_left_zeros.exit103.thread176:               ; preds = %shift_right_zeros.exit101
  %i.ex = bitcast <4 x i64> %.0.i100 to <32 x i8>
  %i.ey = shufflevector <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i8> %i.ex, <32 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55>
  br label %shift_left_zeros.exit105

shift_left_zeros.exit103.thread179:               ; preds = %shift_right_zeros.exit101
  %i.ez = bitcast <4 x i64> %.0.i100 to <32 x i8>
  %i.fa = shufflevector <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i8> %i.ez, <32 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54>
  br label %shift_left_zeros.exit105

shift_left_zeros.exit103.thread182:               ; preds = %shift_right_zeros.exit101
  %i.fb = bitcast <4 x i64> %.0.i100 to <32 x i8>
  %i.fc = shufflevector <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i8> %i.fb, <32 x i32> <i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53>
  br label %shift_left_zeros.exit105

shift_left_zeros.exit103.thread185:               ; preds = %shift_right_zeros.exit101
  %i.fd = bitcast <4 x i64> %.0.i100 to <32 x i8>
  %i.fe = shufflevector <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i8> %i.fd, <32 x i32> <i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52>
  br label %shift_left_zeros.exit105

shift_left_zeros.exit103.thread188:               ; preds = %shift_right_zeros.exit101
  %i.ff = bitcast <4 x i64> %.0.i100 to <32 x i8>
  %i.fg = shufflevector <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i8> %i.ff, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51>
  br label %shift_left_zeros.exit105

shift_left_zeros.exit103.thread191:               ; preds = %shift_right_zeros.exit101
  %i.fh = bitcast <4 x i64> %.0.i100 to <32 x i8>
  %i.fi = shufflevector <32 x i8> <i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i8> %i.fh, <32 x i32> <i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50>
  br label %shift_left_zeros.exit105
end_hunk_1
