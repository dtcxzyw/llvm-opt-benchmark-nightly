inline.NumInlined: 114
inline.NumDeleted: 46
begin_hunk_0_@Disto4x4_SSE2:bb.a
  %i.cz = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cv, <8 x i16> %.val4)
  %i.da = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cw, <8 x i16> %.val35)
  %i.db = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cx, <8 x i16> %.val4)
  %i.dc = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cy, <8 x i16> %.val35)
  %.neg7 = add <4 x i32> %i.da, %i.cz
  %i.dd = add <4 x i32> %i.db, %i.dc
  %i.de = sub <4 x i32> %.neg7, %i.dd
  %i.df = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.de)
  %i.dg = tail call i32 @llvm.abs.i32(i32 %i.df, i1 true)
  %i.dh = lshr i32 %i.dg, 5
  ret i32 %i.dh
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define internal i32 @Disto16x16_SSE2(ptr noalias noundef readonly captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2) #5 {
bb.a:
  %.val4.i = load <8 x i16>, ptr %2, align 1, !tbaa !14, !alias.scope !333, !noalias !336 ; 2 uses
  %i.a = getelementptr i8, ptr %2, i64 16
  %.val35.i = load <8 x i16>, ptr %i.a, align 1, !tbaa !14, !alias.scope !333, !noalias !336 ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.c
  %indvars.iv23 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next24, %bb.c ] ; 4 uses
  %.01320 = phi i32 [ 0, %bb.a ], [ %i.di, %bb.c ]
  %invariant.gep = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv23
  %invariant.gep16 = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv23
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %.118 = phi i32 [ %.01320, %.preheader ], [ %i.di, %bb.b ]
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv ; 4 uses
  %gep17 = getelementptr inbounds nuw i8, ptr %invariant.gep16, i64 %indvars.iv ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !340)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !333)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !341)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !344)
  %i.b = load i64, ptr %gep, align 1, !tbaa !14, !alias.scope !346, !noalias !347
  %i.c = insertelement <2 x i64> poison, i64 %i.b, i64 0
  %i.d = getelementptr inbounds nuw i8, ptr %gep, i64 32
  %i.e = load i64, ptr %i.d, align 1, !tbaa !14, !alias.scope !346, !noalias !347
  %i.f = insertelement <2 x i64> poison, i64 %i.e, i64 0
  %i.g = getelementptr inbounds nuw i8, ptr %gep, i64 64
  %i.h = load i64, ptr %i.g, align 1, !tbaa !14, !alias.scope !346, !noalias !347
  %i.i = insertelement <2 x i64> poison, i64 %i.h, i64 0
  %i.j = getelementptr inbounds nuw i8, ptr %gep, i64 96
  %i.k = load i64, ptr %i.j, align 1, !tbaa !14, !alias.scope !346, !noalias !347
  %i.l = insertelement <2 x i64> poison, i64 %i.k, i64 0
  %i.m = load i64, ptr %gep17, align 1, !tbaa !14, !alias.scope !348, !noalias !349
  %i.n = insertelement <2 x i64> poison, i64 %i.m, i64 0
  %i.o = getelementptr inbounds nuw i8, ptr %gep17, i64 32
  %i.p = load i64, ptr %i.o, align 1, !tbaa !14, !alias.scope !348, !noalias !349
  %i.q = insertelement <2 x i64> poison, i64 %i.p, i64 0
  %i.r = getelementptr inbounds nuw i8, ptr %gep17, i64 64
  %i.s = load i64, ptr %i.r, align 1, !tbaa !14, !alias.scope !348, !noalias !349
  %i.t = insertelement <2 x i64> poison, i64 %i.s, i64 0
  %i.u = getelementptr inbounds nuw i8, ptr %gep17, i64 96
  %i.v = load i64, ptr %i.u, align 1, !tbaa !14, !alias.scope !348, !noalias !349
  %i.w = insertelement <2 x i64> poison, i64 %i.v, i64 0
  %i.x = bitcast <2 x i64> %i.c to <4 x i32>
  %i.y = bitcast <2 x i64> %i.n to <4 x i32>
  %i.z = shufflevector <4 x i32> %i.x, <4 x i32> %i.y, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.aa = bitcast <2 x i64> %i.f to <4 x i32>
  %i.ab = bitcast <2 x i64> %i.q to <4 x i32>
  %i.ac = shufflevector <4 x i32> %i.aa, <4 x i32> %i.ab, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.ad = bitcast <2 x i64> %i.i to <4 x i32>
  %i.ae = bitcast <2 x i64> %i.t to <4 x i32>
  %i.af = shufflevector <4 x i32> %i.ad, <4 x i32> %i.ae, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.ag = bitcast <2 x i64> %i.l to <4 x i32>
  %i.ah = bitcast <2 x i64> %i.w to <4 x i32>
  %i.ai = shufflevector <4 x i32> %i.ag, <4 x i32> %i.ah, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.aj = bitcast <4 x i32> %i.z to <16 x i8>
  %i.ak = shufflevector <16 x i8> %i.aj, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.al = bitcast <4 x i32> %i.ac to <16 x i8>
  %i.am = shufflevector <16 x i8> %i.al, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.an = bitcast <4 x i32> %i.af to <16 x i8>
  %i.ao = shufflevector <16 x i8> %i.an, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ap = bitcast <4 x i32> %i.ai to <16 x i8>
  %i.aq = shufflevector <16 x i8> %i.ap, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ar = bitcast <16 x i8> %i.ak to <8 x i16>    ; 2 uses
  %i.as = bitcast <16 x i8> %i.ao to <8 x i16>    ; 2 uses
  %i.at = add nuw nsw <8 x i16> %i.as, %i.ar      ; 2 uses
  %i.au = bitcast <16 x i8> %i.am to <8 x i16>    ; 2 uses
  %i.av = bitcast <16 x i8> %i.aq to <8 x i16>    ; 2 uses
  %i.aw = add nuw nsw <8 x i16> %i.av, %i.au      ; 2 uses
  %i.ax = sub nsw <8 x i16> %i.au, %i.av          ; 2 uses
  %i.ay = sub nsw <8 x i16> %i.ar, %i.as          ; 2 uses
  %i.az = add nuw nsw <8 x i16> %i.aw, %i.at      ; 2 uses
  %i.ba = add nsw <8 x i16> %i.ax, %i.ay          ; 2 uses
  %i.bb = sub nsw <8 x i16> %i.ay, %i.ax          ; 2 uses
  %i.bc = sub nsw <8 x i16> %i.at, %i.aw          ; 2 uses
  %i.bd = shufflevector <8 x i16> %i.az, <8 x i16> %i.ba, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.be = shufflevector <8 x i16> %i.bb, <8 x i16> %i.bc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bf = shufflevector <8 x i16> %i.az, <8 x i16> %i.ba, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bg = shufflevector <8 x i16> %i.bb, <8 x i16> %i.bc, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bh = bitcast <8 x i16> %i.bd to <4 x i32>    ; 2 uses
  %i.bi = bitcast <8 x i16> %i.be to <4 x i32>    ; 2 uses
  %i.bj = shufflevector <4 x i32> %i.bh, <4 x i32> %i.bi, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.bk = bitcast <4 x i32> %i.bj to <2 x i64>    ; 2 uses
  %i.bl = bitcast <8 x i16> %i.bf to <4 x i32>    ; 2 uses
  %i.bm = bitcast <8 x i16> %i.bg to <4 x i32>    ; 2 uses
  %i.bn = shufflevector <4 x i32> %i.bl, <4 x i32> %i.bm, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.bo = bitcast <4 x i32> %i.bn to <2 x i64>    ; 2 uses
  %i.bp = shufflevector <4 x i32> %i.bh, <4 x i32> %i.bi, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.bq = bitcast <4 x i32> %i.bp to <2 x i64>    ; 2 uses
  %i.br = shufflevector <4 x i32> %i.bl, <4 x i32> %i.bm, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.bs = bitcast <4 x i32> %i.br to <2 x i64>    ; 2 uses
  %i.bt = shufflevector <2 x i64> %i.bk, <2 x i64> %i.bo, <2 x i32> <i32 0, i32 2>
  %i.bu = shufflevector <2 x i64> %i.bk, <2 x i64> %i.bo, <2 x i32> <i32 1, i32 3>
  %i.bv = shufflevector <2 x i64> %i.bq, <2 x i64> %i.bs, <2 x i32> <i32 0, i32 2>
  %i.bw = shufflevector <2 x i64> %i.bq, <2 x i64> %i.bs, <2 x i32> <i32 1, i32 3>
  %i.bx = bitcast <2 x i64> %i.bt to <8 x i16>    ; 2 uses
  %i.by = bitcast <2 x i64> %i.bv to <8 x i16>    ; 2 uses
  %i.bz = add <8 x i16> %i.bx, %i.by              ; 2 uses
  %i.ca = bitcast <2 x i64> %i.bu to <8 x i16>    ; 2 uses
  %i.cb = bitcast <2 x i64> %i.bw to <8 x i16>    ; 2 uses
  %i.cc = add <8 x i16> %i.ca, %i.cb              ; 2 uses
  %i.cd = sub <8 x i16> %i.ca, %i.cb              ; 2 uses
  %i.ce = sub <8 x i16> %i.bx, %i.by              ; 2 uses
  %i.cf = add <8 x i16> %i.bz, %i.cc
  %i.cg = bitcast <8 x i16> %i.cf to <2 x i64>    ; 2 uses
  %i.ch = add <8 x i16> %i.ce, %i.cd
  %i.ci = bitcast <8 x i16> %i.ch to <2 x i64>    ; 2 uses
  %i.cj = sub <8 x i16> %i.ce, %i.cd
  %i.ck = bitcast <8 x i16> %i.cj to <2 x i64>    ; 2 uses
  %i.cl = sub <8 x i16> %i.bz, %i.cc
  %i.cm = bitcast <8 x i16> %i.cl to <2 x i64>    ; 2 uses
  %i.cn = shufflevector <2 x i64> %i.cg, <2 x i64> %i.ci, <2 x i32> <i32 0, i32 2>
  %i.co = shufflevector <2 x i64> %i.ck, <2 x i64> %i.cm, <2 x i32> <i32 0, i32 2>
  %i.cp = shufflevector <2 x i64> %i.cg, <2 x i64> %i.ci, <2 x i32> <i32 1, i32 3>
  %i.cq = shufflevector <2 x i64> %i.ck, <2 x i64> %i.cm, <2 x i32> <i32 1, i32 3>
  %i.cr = bitcast <2 x i64> %i.cn to <8 x i16>
  %i.cs = bitcast <2 x i64> %i.co to <8 x i16>
  %i.ct = bitcast <2 x i64> %i.cp to <8 x i16>
  %i.cu = bitcast <2 x i64> %i.cq to <8 x i16>
  %i.cv = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.cr, i1 false)
  %i.cw = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.cs, i1 false)
  %i.cx = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.ct, i1 false)
  %i.cy = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.cu, i1 false)
  %i.cz = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cv, <8 x i16> %.val4.i)
  %i.da = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cw, <8 x i16> %.val35.i)
  %i.db = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cx, <8 x i16> %.val4.i)
  %i.dc = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cy, <8 x i16> %.val35.i)
  %.neg15 = add <4 x i32> %i.da, %i.cz
  %i.dd = add <4 x i32> %i.db, %i.dc
  %i.de = sub <4 x i32> %.neg15, %i.dd
  %i.df = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.de)
  %i.dg = tail call i32 @llvm.abs.i32(i32 %i.df, i1 true)
  %i.dh = lshr i32 %i.dg, 5
  %i.di = add nsw i32 %i.dh, %.118                ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4
  %i.dj = icmp samesign ult i64 %indvars.iv, 12
  br i1 %i.dj, label %bb.b, label %bb.c, !llvm.loop !350

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 128
  %i.dk = icmp samesign ult i64 %indvars.iv23, 384
  br i1 %i.dk, label %.preheader, label %bb.d, !llvm.loop !351

bb.d:                                             ; preds = %bb.c
  ret i32 %i.di
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @Mean16x4_SSE2(ptr noalias noundef readonly captures(none) %0, ptr noundef writeonly captures(none) initializes((0, 16)) %1) #4 {
bb.a:
  %i.a = load <2 x i64>, ptr %0, align 1, !tbaa !14 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load <2 x i64>, ptr %i.b, align 1, !tbaa !14 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load <2 x i64>, ptr %i.d, align 1, !tbaa !14 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = load <2 x i64>, ptr %i.f, align 1, !tbaa !14 ; 2 uses
  %i.h = bitcast <2 x i64> %i.a to <8 x i16>
  %i.i = lshr <8 x i16> %i.h, splat (i16 8)
  %i.j = bitcast <2 x i64> %i.c to <8 x i16>
  %i.k = lshr <8 x i16> %i.j, splat (i16 8)
  %i.l = bitcast <2 x i64> %i.e to <8 x i16>
  %i.m = lshr <8 x i16> %i.l, splat (i16 8)
  %i.n = bitcast <2 x i64> %i.g to <8 x i16>
  %i.o = lshr <8 x i16> %i.n, splat (i16 8)
  %i.p = bitcast <8 x i16> %i.i to <4 x i32>
  %i.q = bitcast <2 x i64> %i.a to <4 x i32>
  %i.r = and <4 x i32> %i.q, splat (i32 16711935)
  %i.s = bitcast <8 x i16> %i.k to <4 x i32>
  %i.t = bitcast <2 x i64> %i.c to <4 x i32>
  %i.u = and <4 x i32> %i.t, splat (i32 16711935)
  %i.v = bitcast <8 x i16> %i.m to <4 x i32>
  %i.w = bitcast <2 x i64> %i.e to <4 x i32>
  %i.x = and <4 x i32> %i.w, splat (i32 16711935)
  %i.y = bitcast <8 x i16> %i.o to <4 x i32>
  %i.z = bitcast <2 x i64> %i.g to <4 x i32>
  %i.aa = and <4 x i32> %i.z, splat (i32 16711935)
  %i.ab = add nuw nsw <4 x i32> %i.r, %i.p
  %i.ac = add nuw nsw <4 x i32> %i.ab, %i.u
  %i.ad = add nuw nsw <4 x i32> %i.ac, %i.s
  %i.ae = add nuw nsw <4 x i32> %i.ad, %i.x
  %i.af = add nuw nsw <4 x i32> %i.ae, %i.v
  %i.ag = add nuw nsw <4 x i32> %i.af, %i.aa
  %i.ah = add nuw nsw <4 x i32> %i.ag, %i.y       ; 2 uses
  %2 = bitcast <4 x i32> %i.ah to <8 x i16>
  %i.ai = and <4 x i32> %i.ah, splat (i32 65535)
  %3 = shufflevector <8 x i16> %2, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %4 = zext <4 x i16> %3 to <4 x i32>
  %i.aj = add nuw nsw <4 x i32> %i.ai, %4
  store <4 x i32> %i.aj, ptr %1, align 4, !tbaa !3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #8

declare void @VP8SetHistogramData(ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smin.v8i16(<8 x i16>, <8 x i16>) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8>, <16 x i8>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16>, <8 x i16>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8>, <16 x i8>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.usub.sat.v16i8(<16 x i8>, <16 x i8>) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse2.pmulhu.w(<8 x i16>, <8 x i16>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32>, <4 x i32>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16>, <8 x i16>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16>, <8 x i16>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16>, <8 x i16>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16>, <8 x i16>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.ssub.sat.v8i16(<8 x i16>, <8 x i16>) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.abs.v8i16(<8 x i16>, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #15 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!10}
!10 = distinct !{!10, !11, !"FTransform_SSE2: argument 0"}
!11 = distinct !{!11, !"FTransform_SSE2"}
!12 = !{!13}
!13 = distinct !{!13, !11, !"FTransform_SSE2: argument 1"}
!14 = !{!5, !5, i64 0}
!15 = !{!13, !16}
!16 = distinct !{!16, !11, !"FTransform_SSE2: argument 2"}
!17 = !{!10, !16}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!21}
!21 = distinct !{!21, !22, !"DC16Mode_SSE2: argument 0"}
!22 = distinct !{!22, !"DC16Mode_SSE2"}
!23 = !{!24}
!24 = distinct !{!24, !22, !"DC16Mode_SSE2: argument 1"}
!25 = !{!26}
!26 = distinct !{!26, !22, !"DC16Mode_SSE2: argument 2"}
!27 = !{!21, !26}
!28 = !{!21, !24}
!29 = !{!24, !26}
!30 = !{!31}
!31 = distinct !{!31, !32, !"VerticalPred_SSE2: argument 0"}
!32 = distinct !{!32, !"VerticalPred_SSE2"}
!33 = !{!34}
!34 = distinct !{!34, !32, !"VerticalPred_SSE2: argument 1"}
!35 = !{!36}
!36 = distinct !{!36, !37, !"HorizontalPred_SSE2: argument 0"}
!37 = distinct !{!37, !"HorizontalPred_SSE2"}
!38 = !{!39}
!39 = distinct !{!39, !37, !"HorizontalPred_SSE2: argument 1"}
!40 = !{!41}
!41 = distinct !{!41, !42, !"HE16_SSE2: argument 0"}
!42 = distinct !{!42, !"HE16_SSE2"}
!43 = !{!44}
!44 = distinct !{!44, !42, !"HE16_SSE2: argument 1"}
!45 = !{!44, !39}
!46 = !{!41, !36}
!47 = !{!48}
!48 = distinct !{!48, !49, !"TrueMotion_SSE2: argument 0"}
!49 = distinct !{!49, !"TrueMotion_SSE2"}
!50 = !{!51}
!51 = distinct !{!51, !49, !"TrueMotion_SSE2: argument 1"}
!52 = !{!53}
!53 = distinct !{!53, !49, !"TrueMotion_SSE2: argument 2"}
!54 = !{!55}
!55 = distinct !{!55, !56, !"TM_SSE2: argument 0"}
!56 = distinct !{!56, !"TM_SSE2"}
!57 = !{!58}
!58 = distinct !{!58, !56, !"TM_SSE2: argument 1"}
!59 = !{!60}
!60 = distinct !{!60, !56, !"TM_SSE2: argument 2"}
!61 = !{!60, !53}
!62 = !{!55, !58, !48, !51}
!63 = !{!58, !51}
!64 = !{!55, !60, !48, !53}
!65 = !{!55, !48}
!66 = !{!58, !60, !51, !53}
!67 = !{!68, !70, !48}
!68 = distinct !{!68, !69, !"HE16_SSE2: argument 0"}
!69 = distinct !{!69, !"HE16_SSE2"}
!70 = distinct !{!70, !71, !"HorizontalPred_SSE2: argument 0"}
!71 = distinct !{!71, !"HorizontalPred_SSE2"}
!72 = !{!73, !74, !51, !53}
!73 = distinct !{!73, !69, !"HE16_SSE2: argument 1"}
!74 = distinct !{!74, !71, !"HorizontalPred_SSE2: argument 1"}
!75 = !{!76}
!76 = distinct !{!76, !77, !"VerticalPred_SSE2: argument 0"}
!77 = distinct !{!77, !"VerticalPred_SSE2"}
!78 = !{!79}
!79 = distinct !{!79, !77, !"VerticalPred_SSE2: argument 1"}
!80 = !{!79, !53}
!81 = !{!76, !48, !51}
!82 = !{!83, !76, !48}
!83 = distinct !{!83, !84, !"VE16_SSE2: argument 0"}
!84 = distinct !{!84, !"VE16_SSE2"}
!85 = !{!79, !51, !53}
!86 = !{!51, !53}
!87 = !{!88}
!88 = distinct !{!88, !89, !"DC8uvMode_SSE2: argument 0"}
!89 = distinct !{!89, !"DC8uvMode_SSE2"}
!90 = !{!91}
!91 = distinct !{!91, !89, !"DC8uvMode_SSE2: argument 1"}
!92 = !{!93}
!93 = distinct !{!93, !89, !"DC8uvMode_SSE2: argument 2"}
!94 = !{!88, !93}
!95 = !{!88, !91}
!96 = !{!91, !93}
!97 = !{!98}
!98 = distinct !{!98, !99, !"VerticalPred_SSE2: argument 0"}
!99 = distinct !{!99, !"VerticalPred_SSE2"}
!100 = !{!101}
!101 = distinct !{!101, !99, !"VerticalPred_SSE2: argument 1"}
!102 = !{!103}
!103 = distinct !{!103, !104, !"HorizontalPred_SSE2: argument 0"}
!104 = distinct !{!104, !"HorizontalPred_SSE2"}
!105 = !{!106}
!106 = distinct !{!106, !104, !"HorizontalPred_SSE2: argument 1"}
!107 = !{!108}
!108 = distinct !{!108, !109, !"HE8uv_SSE2: argument 0"}
!109 = distinct !{!109, !"HE8uv_SSE2"}
!110 = !{!111}
!111 = distinct !{!111, !109, !"HE8uv_SSE2: argument 1"}
!112 = !{!111, !106}
!113 = !{!108, !103}
!114 = !{!115}
!115 = distinct !{!115, !116, !"TrueMotion_SSE2: argument 0"}
end_hunk_0
