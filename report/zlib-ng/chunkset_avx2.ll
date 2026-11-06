Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib-ng/original/chunkset_avx2?download=true
inline.NumInlined: 39
inline.NumDeleted: 21
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@chunkmemset_safe_avx2:bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %.01628, i64 8
  %i.ar = load i8, ptr %i.an, align 1, !tbaa !13
  %i.as = getelementptr inbounds nuw i8, ptr %.01727, i64 8 ; 2 uses
  store i8 %i.ar, ptr %i.ap, align 1, !tbaa !13
  %i.at = add i32 %.01529, -8                     ; 2 uses
  %.not19.7 = icmp eq i32 %i.at, 0
  br i1 %.not19.7, label %.loopexit, label %.lr.ph, !llvm.loop !23

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.au = ptrtoint ptr %0 to i64
  %i.av = ptrtoint ptr %1 to i64
  %i.aw = sub i64 %i.au, %i.av                    ; 3 uses
  %i.ax = tail call i64 @llvm.abs.i64(i64 %i.aw, i1 true) ; 10 uses
  %i.ay = icmp slt i64 %i.aw, 0
  br i1 %i.ay, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.az = zext i32 %i.d to i64                    ; 3 uses
  %i.ba = icmp samesign ult i64 %i.ax, %i.az
  br i1 %i.ba, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %0, ptr align 1 %1, i64 %i.az, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 %i.az
  br label %chunkmemset_avx2.exit

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.bc = icmp eq i64 %i.ax, 1
  br i1 %i.bc, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bd = load i8, ptr %1, align 1, !tbaa !13
  %i.be = zext i32 %i.d to i64                    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %0, i8 %i.bd, i64 %i.be, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 %i.be
  br label %chunkmemset_avx2.exit

bb.h:                                             ; preds = %bb.f
  %i.bg = icmp samesign ugt i64 %i.ax, 31
  br i1 %i.bg, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bh = add i32 %i.d, 31
  %i.bi = and i32 %i.bh, 31
  %narrow.i.i = add nuw nsw i32 %i.bi, 1          ; 2 uses
  %.val.i.i = load <4 x i64>, ptr %1, align 1, !tbaa !13
  store <4 x i64> %.val.i.i, ptr %0, align 1, !tbaa !13
  %i.bj = zext nneg i32 %narrow.i.i to i64        ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 %i.bj ; 2 uses
  %i.bl = sub i32 %i.d, %narrow.i.i               ; 2 uses
  %.not20.i.i = icmp eq i32 %i.bl, 0
  br i1 %.not20.i.i, label %chunkmemset_avx2.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.i
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 %i.bj
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.023.i.i = phi i32 [ %i.bp, %.lr.ph.i.i ], [ %i.bl, %.lr.ph.preheader.i.i ]
  %.01522.i.i = phi ptr [ %i.bo, %.lr.ph.i.i ], [ %i.bm, %.lr.ph.preheader.i.i ] ; 2 uses
  %.01621.i.i = phi ptr [ %i.bn, %.lr.ph.i.i ], [ %i.bk, %.lr.ph.preheader.i.i ] ; 2 uses
  %.015.val.i.i = load <4 x i64>, ptr %.01522.i.i, align 1, !tbaa !13
  store <4 x i64> %.015.val.i.i, ptr %.01621.i.i, align 1, !tbaa !13
  %i.bn = getelementptr inbounds nuw i8, ptr %.01621.i.i, i64 32 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.01522.i.i, i64 32
  %i.bp = add i32 %.023.i.i, -32                  ; 2 uses
  %.not.i.i = icmp eq i32 %i.bp, 0
  br i1 %.not.i.i, label %chunkmemset_avx2.exit, label %.lr.ph.i.i, !llvm.loop !0

bb.j:                                             ; preds = %bb.h
  %i.bq = icmp ult i32 %i.d, 17
  br i1 %i.bq, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.br = icmp samesign ugt i64 %i.ax, 15
  br i1 %i.br, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bs = add nuw nsw i32 %i.d, 15
  %i.bt = and i32 %i.bs, 15
  %narrow.i83.i = add nuw nsw i32 %i.bt, 1        ; 2 uses
  %.val.i84.i = load <2 x i64>, ptr %1, align 1, !tbaa !13
  store <2 x i64> %.val.i84.i, ptr %0, align 1, !tbaa !13
  %i.bu = zext nneg i32 %narrow.i83.i to i64      ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 %i.bu ; 2 uses
  %i.bw = sub nsw i32 %i.d, %narrow.i83.i         ; 2 uses
  %.not20.i85.i = icmp eq i32 %i.bw, 0
  br i1 %.not20.i85.i, label %chunkmemset_avx2.exit, label %.lr.ph.preheader.i86.i

.lr.ph.preheader.i86.i:                           ; preds = %bb.l
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 %i.bu
  br label %.lr.ph.i87.i

.lr.ph.i87.i:                                     ; preds = %.lr.ph.i87.i, %.lr.ph.preheader.i86.i
  %.023.i88.i = phi i32 [ %i.ca, %.lr.ph.i87.i ], [ %i.bw, %.lr.ph.preheader.i86.i ]
  %.01522.i89.i = phi ptr [ %i.bz, %.lr.ph.i87.i ], [ %i.bx, %.lr.ph.preheader.i86.i ] ; 2 uses
  %.01621.i90.i = phi ptr [ %i.by, %.lr.ph.i87.i ], [ %i.bv, %.lr.ph.preheader.i86.i ] ; 2 uses
  %.015.val.i91.i = load <2 x i64>, ptr %.01522.i89.i, align 1, !tbaa !13
  store <2 x i64> %.015.val.i91.i, ptr %.01621.i90.i, align 1, !tbaa !13
  %i.by = getelementptr inbounds nuw i8, ptr %.01621.i90.i, i64 16 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.01522.i89.i, i64 16
  %i.ca = add i32 %.023.i88.i, -16                ; 2 uses
  %.not.i92.i = icmp eq i32 %i.ca, 0
  br i1 %.not.i92.i, label %chunkmemset_avx2.exit, label %.lr.ph.i87.i, !llvm.loop !1

bb.m:                                             ; preds = %bb.k
  %i.cb = trunc i64 %i.ax to i1
  %i.cc = icmp eq i64 %i.ax, 6
  %or.cond.i = or i1 %i.cc, %i.cb
  br i1 %or.cond.i, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %.val7798.i = load <16 x i8>, ptr %1, align 1, !tbaa !13
  %i.cd = add nuw nsw i64 %i.ax, 4294967293
  %i.ce = and i64 %i.cd, 4294967295
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr @perm_idx_lut, i64 %i.ce
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.cf, align 4, !tbaa !19
  %i.cg = zext i16 %.sroa.0.0.copyload.i.i to i64
  %i.ch = getelementptr inbounds nuw i8, ptr @permute_table, i64 %i.cg
  %i.ci = load <16 x i8>, ptr %i.ch, align 16, !tbaa !13
  %i.cj = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %.val7798.i, <16 x i8> %i.ci) ; 2 uses
  %i.ck = bitcast <16 x i8> %i.cj to <2 x i64>
  %i.cl = icmp eq i32 %i.d, 16
  br i1 %i.cl, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store <16 x i8> %i.cj, ptr %0, align 1, !tbaa !13
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.067.i = phi ptr [ %i.cm, %bb.o ], [ %0, %bb.n ]
  %.0.i = phi i32 [ 0, %bb.o ], [ %i.d, %bb.n ]
  %i.cn = shufflevector <2 x i64> %i.ck, <2 x i64> zeroinitializer, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i64> %i.cn, ptr %i.c, align 32, !tbaa !13
  br label %.loopexit.i

bb.q:                                             ; preds = %bb.m, %bb.j
  %i.co = tail call range(i64 0, 6) i64 @llvm.ctpop.i64(i64 %i.ax)
  %i.cp = icmp eq i64 %i.co, 1
  br i1 %i.cp, label %.split.i, label %bb.v

.split.i:                                         ; preds = %bb.q
  %i.cq = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.aw, i1 true)
  switch i64 %i.cq, label %bb.v [
    i64 1, label %bb.r
    i64 2, label %bb.s
    i64 3, label %bb.t
    i64 4, label %bb.u
  ]

bb.r:                                             ; preds = %.split.i
  %.val79.i = load i16, ptr %1, align 1, !tbaa !13
  %i.cr = insertelement <16 x i16> poison, i16 %.val79.i, i64 0
  %i.cs = shufflevector <16 x i16> %i.cr, <16 x i16> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.ct = bitcast <16 x i16> %i.cs to <4 x i64>
  store <16 x i16> %i.cs, ptr %i.c, align 32, !tbaa !13
  br label %bb.y

bb.s:                                             ; preds = %.split.i
  %.val80.i = load i32, ptr %1, align 1, !tbaa !13
  %i.cu = insertelement <8 x i32> poison, i32 %.val80.i, i64 0
  %i.cv = shufflevector <8 x i32> %i.cu, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.cw = bitcast <8 x i32> %i.cv to <4 x i64>
  store <8 x i32> %i.cv, ptr %i.c, align 32, !tbaa !13
  br label %bb.y

bb.t:                                             ; preds = %.split.i
  %.val81.i = load i64, ptr %1, align 1, !tbaa !13
  %i.cx = insertelement <4 x i64> poison, i64 %.val81.i, i64 0
  %i.cy = shufflevector <4 x i64> %i.cx, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  store <4 x i64> %i.cy, ptr %i.c, align 32, !tbaa !13
  br label %bb.y

bb.u:                                             ; preds = %.split.i
  %.val82.i = load <2 x i64>, ptr %1, align 1, !tbaa !13
  %i.cz = shufflevector <2 x i64> %.val82.i, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  store <4 x i64> %i.cz, ptr %i.c, align 32, !tbaa !13
  br label %bb.y

bb.v:                                             ; preds = %.split.i, %bb.q
  %i.da = add nuw nsw i64 %i.ax, 4294967293
  %i.db = and i64 %i.da, 4294967295
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr @perm_idx_lut, i64 %i.db ; 2 uses
  %.sroa.0.0.copyload.i94.i = load i16, ptr %i.dc, align 4, !tbaa !19 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 2
  %.sroa.5.0.copyload.i.i = load i16, ptr %.sroa.5.0..sroa_idx.i.i, align 2, !tbaa !19
  %i.dd = zext i16 %.sroa.5.0.copyload.i.i to i32
  %i.de = icmp samesign ult i64 %i.ax, 16
  br i1 %i.de, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.df = zext i16 %.sroa.0.0.copyload.i94.i to i64
  %i.dg = getelementptr inbounds nuw i8, ptr @permute_table, i64 %i.df
  %i.dh = load <32 x i8>, ptr %i.dg, align 32, !tbaa !13
  %4 = load <16 x i8>, ptr %1, align 1, !tbaa !13
  %i.di = add <32 x i8> %i.dh, <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16>
  %5 = shufflevector <16 x i8> %4, <16 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dj = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %5, <32 x i8> %i.di)
  %i.dk = bitcast <32 x i8> %i.dj to <4 x i64>
  br label %GET_CHUNK_MAG.exit.i

bb.x:                                             ; preds = %bb.v
  %i.dl = load <2 x i64>, ptr %1, align 1, !tbaa !13 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dn = load <16 x i8>, ptr %i.dm, align 1, !tbaa !13
  %i.do = zext i16 %.sroa.0.0.copyload.i94.i to i64
  %i.dp = getelementptr inbounds nuw i8, ptr @permute_table, i64 %i.do
  %i.dq = load <16 x i8>, ptr %i.dp, align 16, !tbaa !13 ; 2 uses
  %i.dr = icmp slt <16 x i8> %i.dq, splat (i8 16)
  %i.ds = bitcast <2 x i64> %i.dl to <16 x i8>
  %i.dt = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.ds, <16 x i8> %i.dq)
  %i.du = select <16 x i1> %i.dr, <16 x i8> %i.dt, <16 x i8> %i.dn
  %i.dv = bitcast <16 x i8> %i.du to <2 x i64>
  %i.dw = shufflevector <2 x i64> %i.dl, <2 x i64> %i.dv, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  br label %GET_CHUNK_MAG.exit.i

GET_CHUNK_MAG.exit.i:                             ; preds = %bb.x, %bb.w
  %.0.i.i = phi <4 x i64> [ %i.dk, %bb.w ], [ %i.dw, %bb.x ] ; 2 uses
  store <4 x i64> %.0.i.i, ptr %i.c, align 32, !tbaa !13
  %i.dx = sub nsw i32 32, %i.dd
  br label %bb.y

bb.y:                                             ; preds = %GET_CHUNK_MAG.exit.i, %bb.u, %bb.t, %bb.s, %bb.r
  %.0..0..val.i = phi <4 x i64> [ %.0.i.i, %GET_CHUNK_MAG.exit.i ], [ %i.ct, %bb.r ], [ %i.cw, %bb.s ], [ %i.cy, %bb.t ], [ %i.cz, %bb.u ] ; 3 uses
  %.097.i = phi i32 [ %i.dx, %GET_CHUNK_MAG.exit.i ], [ 32, %bb.r ], [ 32, %bb.s ], [ 32, %bb.t ], [ 32, %bb.u ] ; 4 uses
  %i.dy = icmp ugt i32 %i.d, 63
  br i1 %i.dy, label %.lr.ph.i, label %.preheader.i

.lr.ph.i:                                         ; preds = %bb.y
  %i.dz = zext i32 %.097.i to i64
  %i.ea = shl nsw i32 %.097.i, 1                  ; 2 uses
  %i.eb = zext i32 %i.ea to i64
  br label %bb.z

.preheader.i:                                     ; preds = %bb.z, %bb.y
  %.168.lcssa.i = phi ptr [ %0, %bb.y ], [ %i.ef, %bb.z ] ; 2 uses
  %.1.lcssa.i = phi i32 [ %i.d, %bb.y ], [ %i.eg, %bb.z ] ; 3 uses
  %i.ec = icmp samesign ugt i32 %.1.lcssa.i, 31
  br i1 %i.ec, label %.lr.ph106.i, label %.loopexit.i

.lr.ph106.i:                                      ; preds = %.preheader.i
  %i.ed = zext i32 %.097.i to i64
  br label %bb.aa

bb.z:                                             ; preds = %bb.z, %.lr.ph.i
  %.1102.i = phi i32 [ %i.d, %.lr.ph.i ], [ %i.eg, %bb.z ]
  %.168101.i = phi ptr [ %0, %.lr.ph.i ], [ %i.ef, %bb.z ] ; 3 uses
  store <4 x i64> %.0..0..val.i, ptr %.168101.i, align 1, !tbaa !13
  %i.ee = getelementptr inbounds nuw i8, ptr %.168101.i, i64 %i.dz
  store <4 x i64> %.0..0..val.i, ptr %i.ee, align 1, !tbaa !13
  %i.ef = getelementptr inbounds nuw i8, ptr %.168101.i, i64 %i.eb ; 2 uses
  %i.eg = sub i32 %.1102.i, %i.ea                 ; 3 uses
  %i.eh = icmp ugt i32 %i.eg, 63
  br i1 %i.eh, label %bb.z, label %.preheader.i, !llvm.loop !2

bb.aa:                                            ; preds = %bb.aa, %.lr.ph106.i
  %.2105.i = phi i32 [ %.1.lcssa.i, %.lr.ph106.i ], [ %i.ei, %bb.aa ]
  %.269104.i = phi ptr [ %.168.lcssa.i, %.lr.ph106.i ], [ %i.ej, %bb.aa ] ; 2 uses
  store <4 x i64> %.0..0..val.i, ptr %.269104.i, align 1, !tbaa !13
  %i.ei = sub i32 %.2105.i, %.097.i               ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.269104.i, i64 %i.ed ; 2 uses
  %i.ek = icmp ugt i32 %i.ei, 31
  br i1 %i.ek, label %bb.aa, label %.loopexit.i, !llvm.loop !3

.loopexit.i:                                      ; preds = %bb.aa, %.preheader.i, %bb.p
  %.370.i = phi ptr [ %.067.i, %bb.p ], [ %.168.lcssa.i, %.preheader.i ], [ %i.ej, %bb.aa ] ; 3 uses
  %.3.i = phi i32 [ %.0.i, %bb.p ], [ %.1.lcssa.i, %.preheader.i ], [ %i.ei, %bb.aa ] ; 2 uses
  %.not.i = icmp eq i32 %.3.i, 0
  br i1 %.not.i, label %chunkmemset_avx2.exit, label %bb.ab

bb.ab:                                            ; preds = %.loopexit.i
  %i.el = zext nneg i32 %.3.i to i64              ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.370.i, ptr nonnull align 32 %i.c, i64 %i.el, i1 false)
  %i.em = getelementptr inbounds nuw i8, ptr %.370.i, i64 %i.el
  br label %chunkmemset_avx2.exit

chunkmemset_avx2.exit:                            ; preds = %.lr.ph.i87.i, %.lr.ph.i.i, %bb.e, %bb.g, %bb.i, %bb.l, %.loopexit.i, %bb.ab
  %.066.i = phi ptr [ %i.bb, %bb.e ], [ %i.bf, %bb.g ], [ %.370.i, %.loopexit.i ], [ %i.bn, %.lr.ph.i.i ], [ %i.em, %bb.ab ], [ %i.bk, %bb.i ], [ %i.bv, %bb.l ], [ %i.by, %.lr.ph.i87.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %.preheader, %bb.b, %chunkmemset_avx2.exit
  %.0 = phi ptr [ %0, %bb.b ], [ %.066.i, %chunkmemset_avx2.exit ], [ %0, %.preheader ], [ %i.l, %middle.block ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.as, %.lr.ph ]
  ret ptr %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @inflate_fast_avx2(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca <4 x i64>, align 32               ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !53   ; 14 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !54     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !55
  %i.g = add i32 %i.f, -14
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.h ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !56   ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !57   ; 3 uses
  %i.n = sub i32 %1, %i.m
  %i.o = zext i32 %i.n to i64
  %i.p = sub nsw i64 0, %i.o
  %i.q = getelementptr inbounds i8, ptr %i.k, i64 %i.p
  %i.r = add i32 %i.m, -259
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.s ; 2 uses
  %i.u = zext i32 %i.m to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.u ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.x = load i32, ptr %i.w, align 64, !tbaa !63  ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.z = load i32, ptr %i.y, align 8, !tbaa !64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !65 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.ad = load ptr, ptr %i.ac, align 16, !tbaa !66 ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 88 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !67
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 32, !tbaa !68
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !69 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.al = load ptr, ptr %i.ak, align 16, !tbaa !70 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 100
  %i.an = load i32, ptr %i.am, align 4, !tbaa !71
  %notmask = shl nsw i32 -1, %i.an
  %i.ao = xor i32 %notmask, -1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !72
  %notmask252 = shl nsw i32 -1, %i.aq
  %i.ar = xor i32 %notmask252, -1
  %.not = icmp eq i32 %i.x, 0
  %.not253 = icmp ult ptr %i.k, %i.ad
  %or.cond = select i1 %.not, i1 true, i1 %.not253
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %i.k, i64 260
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 68
  %i.au = load i32, ptr %i.at, align 4, !tbaa !73
  %i.av = zext i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.av
  %i.ax = icmp ule ptr %i.as, %i.aw
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ay = phi i1 [ %i.ax, %bb.b ], [ false, %bb.a ] ; 3 uses
  %i.az = zext nneg i32 %i.ao to i64              ; 3 uses
  %i.ba = zext nneg i32 %i.ar to i64
  %i.bb = ptrtoint ptr %i.q to i64
  %i.bc = ptrtoint ptr %i.v to i64                ; 4 uses
  %i.bd = icmp eq i32 %i.ab, 0
  br label %bb.d

bb.d:                                             ; preds = %chunkcopy_safe.exit300, %bb.c
  %.0227 = phi ptr [ %i.d, %bb.c ], [ %.2229, %chunkcopy_safe.exit300 ] ; 2 uses
  %.0222 = phi ptr [ %i.k, %bb.c ], [ %.3225, %chunkcopy_safe.exit300 ] ; 4 uses
  %.0215 = phi i32 [ %i.ah, %bb.c ], [ %.5220, %chunkcopy_safe.exit300 ] ; 3 uses
  %.0212 = phi i64 [ %i.af, %bb.c ], [ %.5, %chunkcopy_safe.exit300 ]
  %.0227.val = load i64, ptr %.0227, align 1, !tbaa !13
  %i.be = zext nneg i32 %.0215 to i64
  %i.bf = shl i64 %.0227.val, %i.be
  %i.bg = or i64 %i.bf, %.0212                    ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.0227, i64 7
  %i.bi = lshr i32 %.0215, 3
  %i.bj = and i32 %i.bi, 7
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = sub nsw i64 0, %i.bk
  %i.bm = getelementptr inbounds i8, ptr %i.bh, i64 %i.bl ; 6 uses
  %i.bn = or i32 %.0215, 56                       ; 2 uses
  %i.bo = and i64 %i.bg, %i.az
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.bo ; 4 uses
  %i.bq = load i8, ptr %i.bp, align 2, !tbaa !75  ; 2 uses
  %i.br = icmp eq i8 %i.bq, 0
  br i1 %i.br, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 2
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !76
  %i.bu = trunc i16 %i.bt to i8
  %i.bv = getelementptr inbounds nuw i8, ptr %.0222, i64 1 ; 2 uses
  store i8 %i.bu, ptr %.0222, align 1, !tbaa !13
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !77  ; 2 uses
  %i.by = zext i8 %i.bx to i32
  %i.bz = zext nneg i8 %i.bx to i64
  %i.ca = lshr i64 %i.bg, %i.bz                   ; 3 uses
  %i.cb = sub i32 %i.bn, %i.by                    ; 2 uses
  %i.cc = and i64 %i.ca, %i.az
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.cc ; 4 uses
  %i.ce = load i8, ptr %i.cd, align 2, !tbaa !75  ; 2 uses
  %i.cf = icmp eq i8 %i.ce, 0
  br i1 %i.cf, label %bb.f, label %.thread

end_hunk_0
begin_hunk_1_@inflate_fast_avx2:bb.a
  %.481.i353.prol = phi ptr [ %i.to, %.lr.ph84.i351.prol ], [ %.481.i353.ph, %.lr.ph84.i351.preheader ] ; 2 uses
  %.46980.i354.prol = phi ptr [ %i.tq, %.lr.ph84.i351.prol ], [ %.46980.i354.ph, %.lr.ph84.i351.preheader ] ; 2 uses
  %prol.iter921 = phi i64 [ %prol.iter921.next, %.lr.ph84.i351.prol ], [ 0, %.lr.ph84.i351.preheader ]
  %i.tn = add i64 %.382.i352.prol, -1             ; 2 uses
  %i.to = getelementptr inbounds nuw i8, ptr %.481.i353.prol, i64 1 ; 3 uses
  %i.tp = load i8, ptr %.481.i353.prol, align 1, !tbaa !13
  %i.tq = getelementptr inbounds nuw i8, ptr %.46980.i354.prol, i64 1 ; 3 uses
  store i8 %i.tp, ptr %.46980.i354.prol, align 1, !tbaa !13
  %prol.iter921.next = add i64 %prol.iter921, 1   ; 2 uses
  %prol.iter921.cmp.not = icmp eq i64 %prol.iter921.next, %xtraiter919
  br i1 %prol.iter921.cmp.not, label %.lr.ph84.i351.prol.loopexit, label %.lr.ph84.i351.prol, !llvm.loop !45

.lr.ph84.i351.prol.loopexit:                      ; preds = %.lr.ph84.i351.prol, %.lr.ph84.i351.preheader
  %.lcssa891.unr = phi ptr [ poison, %.lr.ph84.i351.preheader ], [ %i.to, %.lr.ph84.i351.prol ]
  %.lcssa890.unr = phi ptr [ poison, %.lr.ph84.i351.preheader ], [ %i.tq, %.lr.ph84.i351.prol ]
  %.382.i352.unr = phi i64 [ %.382.i352.ph, %.lr.ph84.i351.preheader ], [ %i.tn, %.lr.ph84.i351.prol ]
  %.481.i353.unr = phi ptr [ %.481.i353.ph, %.lr.ph84.i351.preheader ], [ %i.to, %.lr.ph84.i351.prol ]
  %.46980.i354.unr = phi ptr [ %.46980.i354.ph, %.lr.ph84.i351.preheader ], [ %i.tq, %.lr.ph84.i351.prol ]
  %i.tr = icmp ult i64 %i.tm, 7
  br i1 %i.tr, label %.loopexit.i356, label %.lr.ph84.i351

.lr.ph84.i351:                                    ; preds = %.lr.ph84.i351.prol.loopexit, %.lr.ph84.i351
  %.382.i352 = phi i64 [ %i.un, %.lr.ph84.i351 ], [ %.382.i352.unr, %.lr.ph84.i351.prol.loopexit ]
  %.481.i353 = phi ptr [ %i.uo, %.lr.ph84.i351 ], [ %.481.i353.unr, %.lr.ph84.i351.prol.loopexit ] ; 9 uses
  %.46980.i354 = phi ptr [ %i.uq, %.lr.ph84.i351 ], [ %.46980.i354.unr, %.lr.ph84.i351.prol.loopexit ] ; 9 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %.481.i353, i64 1
  %i.tt = load i8, ptr %.481.i353, align 1, !tbaa !13
  %i.tu = getelementptr inbounds nuw i8, ptr %.46980.i354, i64 1
  store i8 %i.tt, ptr %.46980.i354, align 1, !tbaa !13
  %i.tv = getelementptr inbounds nuw i8, ptr %.481.i353, i64 2
  %i.tw = load i8, ptr %i.ts, align 1, !tbaa !13
  %i.tx = getelementptr inbounds nuw i8, ptr %.46980.i354, i64 2
  store i8 %i.tw, ptr %i.tu, align 1, !tbaa !13
  %i.ty = getelementptr inbounds nuw i8, ptr %.481.i353, i64 3
  %i.tz = load i8, ptr %i.tv, align 1, !tbaa !13
  %i.ua = getelementptr inbounds nuw i8, ptr %.46980.i354, i64 3
  store i8 %i.tz, ptr %i.tx, align 1, !tbaa !13
  %i.ub = getelementptr inbounds nuw i8, ptr %.481.i353, i64 4
  %i.uc = load i8, ptr %i.ty, align 1, !tbaa !13
  %i.ud = getelementptr inbounds nuw i8, ptr %.46980.i354, i64 4
  store i8 %i.uc, ptr %i.ua, align 1, !tbaa !13
  %i.ue = getelementptr inbounds nuw i8, ptr %.481.i353, i64 5
  %i.uf = load i8, ptr %i.ub, align 1, !tbaa !13
  %i.ug = getelementptr inbounds nuw i8, ptr %.46980.i354, i64 5
  store i8 %i.uf, ptr %i.ud, align 1, !tbaa !13
  %i.uh = getelementptr inbounds nuw i8, ptr %.481.i353, i64 6
  %i.ui = load i8, ptr %i.ue, align 1, !tbaa !13
  %i.uj = getelementptr inbounds nuw i8, ptr %.46980.i354, i64 6
  store i8 %i.ui, ptr %i.ug, align 1, !tbaa !13
  %i.uk = getelementptr inbounds nuw i8, ptr %.481.i353, i64 7
  %i.ul = load i8, ptr %i.uh, align 1, !tbaa !13
  %i.um = getelementptr inbounds nuw i8, ptr %.46980.i354, i64 7
  store i8 %i.ul, ptr %i.uj, align 1, !tbaa !13
  %i.un = add i64 %.382.i352, -8                  ; 2 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %.481.i353, i64 8 ; 2 uses
  %i.up = load i8, ptr %i.uk, align 1, !tbaa !13
  %i.uq = getelementptr inbounds nuw i8, ptr %.46980.i354, i64 8 ; 2 uses
  store i8 %i.up, ptr %i.um, align 1, !tbaa !13
  %.not72.i355.7 = icmp eq i64 %i.un, 0
  br i1 %.not72.i355.7, label %.loopexit.i356, label %.lr.ph84.i351, !llvm.loop !46

bb.ba:                                            ; preds = %bb.ar
  %.not261 = icmp samesign ule i64 %i.dx, %i.fe
  %i.ur = icmp samesign ugt i64 %i.fe, 31
  %or.cond395 = select i1 %.not261, i1 true, i1 %i.ur
  %i.us = sub nsw i64 0, %i.fe
  %i.ut = getelementptr inbounds i8, ptr %.1223582, i64 %i.us ; 11 uses
  br i1 %or.cond395, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.uu = add nuw nsw i32 %i.dy, 31
  %i.uv = and i32 %i.uu, 31
  %narrow.i = add nuw nsw i32 %i.uv, 1            ; 2 uses
  %.val.i365 = load <4 x i64>, ptr %i.ut, align 1, !tbaa !13
  store <4 x i64> %.val.i365, ptr %.1223582, align 1, !tbaa !13
  %i.uw = zext nneg i32 %narrow.i to i64          ; 2 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %.1223582, i64 %i.uw ; 2 uses
  %i.uy = sub nsw i32 %i.dy, %narrow.i            ; 2 uses
  %.not20.i = icmp eq i32 %i.uy, 0
  br i1 %.not20.i, label %chunkcopy_safe.exit300, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.bb
  %i.uz = getelementptr inbounds nuw i8, ptr %i.ut, i64 %i.uw
  br label %.lr.ph.i366

.lr.ph.i366:                                      ; preds = %.lr.ph.i366, %.lr.ph.preheader.i
  %.023.i = phi i32 [ %i.vc, %.lr.ph.i366 ], [ %i.uy, %.lr.ph.preheader.i ]
  %.01522.i = phi ptr [ %i.vb, %.lr.ph.i366 ], [ %i.uz, %.lr.ph.preheader.i ] ; 2 uses
  %.01621.i = phi ptr [ %i.va, %.lr.ph.i366 ], [ %i.ux, %.lr.ph.preheader.i ] ; 2 uses
  %.015.val.i = load <4 x i64>, ptr %.01522.i, align 1, !tbaa !13
  store <4 x i64> %.015.val.i, ptr %.01621.i, align 1, !tbaa !13
  %i.va = getelementptr inbounds nuw i8, ptr %.01621.i, i64 32 ; 2 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %.01522.i, i64 32
  %i.vc = add i32 %.023.i, -32                    ; 2 uses
  %.not.i367 = icmp eq i32 %i.vc, 0
  br i1 %.not.i367, label %chunkcopy_safe.exit300, label %.lr.ph.i366, !llvm.loop !0

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.vd = icmp eq i64 %i.fe, 1
  br i1 %i.vd, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.ve = load i8, ptr %i.ut, align 1, !tbaa !13
  tail call void @llvm.memset.p0.i64(ptr align 1 %.1223582, i8 %i.ve, i64 %i.dx, i1 false)
  %i.vf = getelementptr inbounds nuw i8, ptr %.1223582, i64 %i.dx
  br label %chunkmemset_avx2.exit

bb.be:                                            ; preds = %bb.bc
  %i.vg = icmp samesign ult i64 %i.dx, 17
  %i.vh = trunc i64 %i.fe to i1
  %i.vi = icmp eq i64 %i.fe, 6
  %or.cond.i372 = or i1 %i.vi, %i.vh
  %or.cond470 = and i1 %i.vg, %or.cond.i372
  br i1 %or.cond470, label %bb.bf, label %bb.bi

bb.bf:                                            ; preds = %bb.be
  %.val7798.i = load <16 x i8>, ptr %i.ut, align 1, !tbaa !13
  %i.vj = add nuw nsw i64 %i.fe, 4294967293
  %i.vk = and i64 %i.vj, 4294967295
  %i.vl = getelementptr inbounds nuw [4 x i8], ptr @perm_idx_lut, i64 %i.vk
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.vl, align 4, !tbaa !19
  %i.vm = zext i16 %.sroa.0.0.copyload.i.i to i64
  %i.vn = getelementptr inbounds nuw i8, ptr @permute_table, i64 %i.vm
  %i.vo = load <16 x i8>, ptr %i.vn, align 16, !tbaa !13
  %i.vp = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %.val7798.i, <16 x i8> %i.vo) ; 2 uses
  %i.vq = bitcast <16 x i8> %i.vp to <2 x i64>
  %i.vr = icmp eq i64 %i.dx, 16
  br i1 %i.vr, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  store <16 x i8> %i.vp, ptr %.1223582, align 1, !tbaa !13
  %i.vs = getelementptr inbounds nuw i8, ptr %.1223582, i64 16
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.067.i = phi ptr [ %i.vs, %bb.bg ], [ %.1223582, %bb.bf ]
  %.0.i = phi i32 [ 0, %bb.bg ], [ %i.dy, %bb.bf ]
  %i.vt = shufflevector <2 x i64> %i.vq, <2 x i64> zeroinitializer, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i64> %i.vt, ptr %i.a, align 32, !tbaa !13
  br label %.loopexit.i369

bb.bi:                                            ; preds = %bb.be
  %i.vu = tail call range(i64 0, 6) i64 @llvm.ctpop.i64(i64 %i.fe)
  %i.vv = icmp eq i64 %i.vu, 1
  br i1 %i.vv, label %.split.i, label %bb.bn

.split.i:                                         ; preds = %bb.bi
  %i.vw = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.fe, i1 true)
  switch i64 %i.vw, label %bb.bn [
    i64 1, label %bb.bj
    i64 2, label %bb.bk
    i64 3, label %bb.bl
    i64 4, label %bb.bm
  ]

bb.bj:                                            ; preds = %.split.i
  %.val79.i = load i16, ptr %i.ut, align 1, !tbaa !13
  %i.vx = insertelement <16 x i16> poison, i16 %.val79.i, i64 0
  %i.vy = shufflevector <16 x i16> %i.vx, <16 x i16> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.vz = bitcast <16 x i16> %i.vy to <4 x i64>
  store <16 x i16> %i.vy, ptr %i.a, align 32, !tbaa !13
  br label %bb.bq

bb.bk:                                            ; preds = %.split.i
  %.val80.i = load i32, ptr %i.ut, align 1, !tbaa !13
  %i.wa = insertelement <8 x i32> poison, i32 %.val80.i, i64 0
  %i.wb = shufflevector <8 x i32> %i.wa, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.wc = bitcast <8 x i32> %i.wb to <4 x i64>
  store <8 x i32> %i.wb, ptr %i.a, align 32, !tbaa !13
  br label %bb.bq

bb.bl:                                            ; preds = %.split.i
  %.val81.i = load i64, ptr %i.ut, align 1, !tbaa !13
  %i.wd = insertelement <4 x i64> poison, i64 %.val81.i, i64 0
  %i.we = shufflevector <4 x i64> %i.wd, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  store <4 x i64> %i.we, ptr %i.a, align 32, !tbaa !13
  br label %bb.bq

bb.bm:                                            ; preds = %.split.i
  %.val82.i = load <2 x i64>, ptr %i.ut, align 1, !tbaa !13
  %i.wf = shufflevector <2 x i64> %.val82.i, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  store <4 x i64> %i.wf, ptr %i.a, align 32, !tbaa !13
  br label %bb.bq

bb.bn:                                            ; preds = %.split.i, %bb.bi
  %i.wg = add nuw nsw i64 %i.fe, 4294967293
  %i.wh = and i64 %i.wg, 4294967295
  %i.wi = getelementptr inbounds nuw [4 x i8], ptr @perm_idx_lut, i64 %i.wh ; 2 uses
  %.sroa.0.0.copyload.i94.i = load i16, ptr %i.wi, align 4, !tbaa !19 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.wi, i64 2
  %.sroa.5.0.copyload.i.i = load i16, ptr %.sroa.5.0..sroa_idx.i.i, align 2, !tbaa !19
  %i.wj = zext i16 %.sroa.5.0.copyload.i.i to i32
  %i.wk = icmp samesign ult i64 %i.fe, 16
  br i1 %i.wk, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.wl = zext i16 %.sroa.0.0.copyload.i94.i to i64
  %i.wm = getelementptr inbounds nuw i8, ptr @permute_table, i64 %i.wl
  %i.wn = load <32 x i8>, ptr %i.wm, align 32, !tbaa !13
  %2 = load <16 x i8>, ptr %i.ut, align 1, !tbaa !13
  %i.wo = add <32 x i8> %i.wn, <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16>
  %3 = shufflevector <16 x i8> %2, <16 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.wp = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %3, <32 x i8> %i.wo)
  %i.wq = bitcast <32 x i8> %i.wp to <4 x i64>
  br label %GET_CHUNK_MAG.exit.i

bb.bp:                                            ; preds = %bb.bn
  %i.wr = load <2 x i64>, ptr %i.ut, align 1, !tbaa !13 ; 2 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %i.ut, i64 16
  %i.wt = load <16 x i8>, ptr %i.ws, align 1, !tbaa !13
  %i.wu = zext i16 %.sroa.0.0.copyload.i94.i to i64
  %i.wv = getelementptr inbounds nuw i8, ptr @permute_table, i64 %i.wu
  %i.ww = load <16 x i8>, ptr %i.wv, align 16, !tbaa !13 ; 2 uses
  %i.wx = icmp slt <16 x i8> %i.ww, splat (i8 16)
  %i.wy = bitcast <2 x i64> %i.wr to <16 x i8>
  %i.wz = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.wy, <16 x i8> %i.ww)
  %i.xa = select <16 x i1> %i.wx, <16 x i8> %i.wz, <16 x i8> %i.wt
  %i.xb = bitcast <16 x i8> %i.xa to <2 x i64>
  %i.xc = shufflevector <2 x i64> %i.wr, <2 x i64> %i.xb, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  br label %GET_CHUNK_MAG.exit.i

GET_CHUNK_MAG.exit.i:                             ; preds = %bb.bp, %bb.bo
  %.0.i.i = phi <4 x i64> [ %i.wq, %bb.bo ], [ %i.xc, %bb.bp ] ; 2 uses
  store <4 x i64> %.0.i.i, ptr %i.a, align 32, !tbaa !13
  %i.xd = sub nsw i32 32, %i.wj
  br label %bb.bq

bb.bq:                                            ; preds = %GET_CHUNK_MAG.exit.i, %bb.bm, %bb.bl, %bb.bk, %bb.bj
  %.0..0..val.i = phi <4 x i64> [ %.0.i.i, %GET_CHUNK_MAG.exit.i ], [ %i.vz, %bb.bj ], [ %i.wc, %bb.bk ], [ %i.we, %bb.bl ], [ %i.wf, %bb.bm ] ; 3 uses
  %.097.i = phi i32 [ %i.xd, %GET_CHUNK_MAG.exit.i ], [ 32, %bb.bj ], [ 32, %bb.bk ], [ 32, %bb.bl ], [ 32, %bb.bm ] ; 4 uses
  %i.xe = icmp samesign ugt i64 %i.dx, 63
  br i1 %i.xe, label %.lr.ph.i371, label %.preheader.i

.lr.ph.i371:                                      ; preds = %bb.bq
  %i.xf = zext i32 %.097.i to i64
  %i.xg = shl nsw i32 %.097.i, 1                  ; 2 uses
  %i.xh = zext i32 %i.xg to i64
  br label %bb.br

.preheader.i:                                     ; preds = %bb.br, %bb.bq
  %.168.lcssa.i = phi ptr [ %.1223582, %bb.bq ], [ %i.xl, %bb.br ] ; 2 uses
  %.1.lcssa.i = phi i32 [ %i.dy, %bb.bq ], [ %i.xm, %bb.br ] ; 3 uses
  %i.xi = icmp samesign ugt i32 %.1.lcssa.i, 31
  br i1 %i.xi, label %.lr.ph106.i, label %.loopexit.i369

.lr.ph106.i:                                      ; preds = %.preheader.i
  %i.xj = zext i32 %.097.i to i64
  br label %bb.bs

bb.br:                                            ; preds = %bb.br, %.lr.ph.i371
  %.1102.i = phi i32 [ %i.dy, %.lr.ph.i371 ], [ %i.xm, %bb.br ]
  %.168101.i = phi ptr [ %.1223582, %.lr.ph.i371 ], [ %i.xl, %bb.br ] ; 3 uses
  store <4 x i64> %.0..0..val.i, ptr %.168101.i, align 1, !tbaa !13
  %i.xk = getelementptr inbounds nuw i8, ptr %.168101.i, i64 %i.xf
  store <4 x i64> %.0..0..val.i, ptr %i.xk, align 1, !tbaa !13
  %i.xl = getelementptr inbounds nuw i8, ptr %.168101.i, i64 %i.xh ; 2 uses
  %i.xm = sub i32 %.1102.i, %i.xg                 ; 3 uses
  %i.xn = icmp ugt i32 %i.xm, 63
  br i1 %i.xn, label %bb.br, label %.preheader.i, !llvm.loop !2

bb.bs:                                            ; preds = %bb.bs, %.lr.ph106.i
  %.2105.i = phi i32 [ %.1.lcssa.i, %.lr.ph106.i ], [ %i.xo, %bb.bs ]
  %.269104.i = phi ptr [ %.168.lcssa.i, %.lr.ph106.i ], [ %i.xp, %bb.bs ] ; 2 uses
  store <4 x i64> %.0..0..val.i, ptr %.269104.i, align 1, !tbaa !13
  %i.xo = sub i32 %.2105.i, %.097.i               ; 3 uses
  %i.xp = getelementptr inbounds nuw i8, ptr %.269104.i, i64 %i.xj ; 2 uses
  %i.xq = icmp ugt i32 %i.xo, 31
  br i1 %i.xq, label %bb.bs, label %.loopexit.i369, !llvm.loop !3

.loopexit.i369:                                   ; preds = %bb.bs, %.preheader.i, %bb.bh
  %.370.i = phi ptr [ %.067.i, %bb.bh ], [ %.168.lcssa.i, %.preheader.i ], [ %i.xp, %bb.bs ] ; 3 uses
  %.3.i = phi i32 [ %.0.i, %bb.bh ], [ %.1.lcssa.i, %.preheader.i ], [ %i.xo, %bb.bs ] ; 2 uses
  %.not.i370 = icmp eq i32 %.3.i, 0
  br i1 %.not.i370, label %chunkmemset_avx2.exit, label %bb.bt

bb.bt:                                            ; preds = %.loopexit.i369
  %i.xr = zext nneg i32 %.3.i to i64              ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.370.i, ptr nonnull align 32 %i.a, i64 %i.xr, i1 false)
  %i.xs = getelementptr inbounds nuw i8, ptr %.370.i, i64 %i.xr
  br label %chunkmemset_avx2.exit

chunkmemset_avx2.exit:                            ; preds = %bb.bd, %.loopexit.i369, %bb.bt
  %.066.i = phi ptr [ %i.xs, %bb.bt ], [ %i.vf, %bb.bd ], [ %.370.i, %.loopexit.i369 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %chunkcopy_safe.exit300

.lr.ph463:                                        ; preds = %bb.i, %bb.bu
  %i.xt = phi i32 [ %i.yn, %bb.bu ], [ %i.ev, %bb.i ] ; 2 uses
  %i.xu = phi i32 [ %i.yl, %bb.bu ], [ %i.et, %bb.i ] ; 2 uses
  %i.xv = phi i64 [ %i.yk, %bb.bu ], [ %i.es, %bb.i ] ; 3 uses
  %.2461 = phi ptr [ %i.yf, %bb.bu ], [ %i.ed, %bb.i ]
  %i.xw = and i32 %i.xt, 64
  %i.xx = icmp eq i32 %i.xw, 0
  br i1 %i.xx, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %.lr.ph463
  %i.xy = getelementptr inbounds nuw i8, ptr %.2461, i64 2
  %i.xz = load i16, ptr %i.xy, align 2, !tbaa !76
  %i.ya = zext i16 %i.xz to i64
  %i.yb = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.ya
  %notmask259 = shl nsw i32 -1, %i.xt
  %i.yc = xor i32 %notmask259, -1
  %i.yd = zext nneg i32 %i.yc to i64
  %i.ye = and i64 %i.xv, %i.yd
  %i.yf = getelementptr inbounds nuw [4 x i8], ptr %i.yb, i64 %i.ye ; 4 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yf, i64 1
  %i.yh = load i8, ptr %i.yg, align 1, !tbaa !77  ; 2 uses
  %i.yi = zext i8 %i.yh to i32
  %i.yj = zext nneg i8 %i.yh to i64
  %i.yk = lshr i64 %i.xv, %i.yj                   ; 2 uses
  %i.yl = sub i32 %i.xu, %i.yi                    ; 2 uses
  %i.ym = load i8, ptr %i.yf, align 2, !tbaa !75
  %i.yn = zext i8 %i.ym to i32                    ; 3 uses
  %i.yo = and i32 %i.yn, 16
  %.not258 = icmp eq i32 %i.yo, 0
  br i1 %.not258, label %.lr.ph463, label %._crit_edge464

bb.bv:                                            ; preds = %.lr.ph463
  %i.yp = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 16209, ptr %i.yp, align 8, !tbaa !78
  %i.yq = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @.str.1, ptr %i.yq, align 8, !tbaa !79
  br label %.loopexit

bb.bw:                                            ; preds = %.lr.ph
  %i.yr = and i32 %i.do, 64
  %i.ys = icmp eq i32 %i.yr, 0
  br i1 %i.ys, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.yt = getelementptr inbounds nuw i8, ptr %.1457, i64 2
  %i.yu = load i16, ptr %i.yt, align 2, !tbaa !76
  %i.yv = zext i16 %i.yu to i64
  %i.yw = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.yv
  %notmask256 = shl nsw i32 -1, %i.do
  %i.yx = xor i32 %notmask256, -1
  %i.yy = zext nneg i32 %i.yx to i64
  %i.yz = and i64 %i.dn, %i.yy
  %i.za = getelementptr inbounds nuw [4 x i8], ptr %i.yw, i64 %i.yz ; 4 uses
  %i.zb = getelementptr inbounds nuw i8, ptr %i.za, i64 1
  %i.zc = load i8, ptr %i.zb, align 1, !tbaa !77  ; 2 uses
  %i.zd = zext i8 %i.zc to i32
  %i.ze = zext nneg i8 %i.zc to i64
  %i.zf = lshr i64 %i.dn, %i.ze                   ; 2 uses
  %i.zg = sub i32 %i.dm, %i.zd                    ; 2 uses
  %i.zh = load i8, ptr %i.za, align 2, !tbaa !75  ; 2 uses
  %i.zi = icmp eq i8 %i.zh, 0
  br i1 %i.zi, label %._crit_edge, label %.lr.ph

bb.by:                                            ; preds = %bb.bw
  %i.zj = and i32 %i.do, 32
  %.not255 = icmp eq i32 %i.zj, 0
  %i.zk = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br i1 %.not255, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  store i32 16191, ptr %i.zk, align 8, !tbaa !78
  br label %.loopexit

bb.ca:                                            ; preds = %bb.by
  store i32 16209, ptr %i.zk, align 8, !tbaa !78
  %i.zl = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @.str.2, ptr %i.zl, align 8, !tbaa !79
  br label %.loopexit

chunkcopy_safe.exit300:                           ; preds = %.lr.ph.i366, %.loopexit.i356, %.loopexit.i324, %.loopexit.i292, %bb.bb, %bb.av, %bb.au, %bb.at, %bb.al, %bb.ak, %bb.aj, %bb.ac, %._crit_edge, %chunkmemset_avx2.exit, %chunkunroll_avx2.exit, %bb.aq
  %.2229 = phi ptr [ %i.bm, %._crit_edge ], [ %.1228, %chunkmemset_avx2.exit ], [ %.1228, %chunkunroll_avx2.exit ], [ %.1228, %.loopexit.i356 ], [ %.1228, %bb.aq ], [ %.1228, %bb.av ], [ %.1228, %.loopexit.i324 ], [ %.1228, %bb.ac ], [ %.1228, %.loopexit.i292 ], [ %.1228, %bb.bb ], [ %.1228, %bb.aj ], [ %.1228, %bb.ak ], [ %.1228, %bb.al ], [ %.1228, %bb.at ], [ %.1228, %bb.au ], [ %.1228, %.lr.ph.i366 ] ; 3 uses
  %.3225 = phi ptr [ %i.dl, %._crit_edge ], [ %.066.i, %chunkmemset_avx2.exit ], [ %i.gx, %chunkunroll_avx2.exit ], [ %.469.lcssa.i357, %.loopexit.i356 ], [ %i.ri, %bb.aq ], [ %.1223582, %bb.av ], [ %.469.lcssa.i325, %.loopexit.i324 ], [ %i.kt, %bb.ac ], [ %.469.lcssa.i293, %.loopexit.i292 ], [ %i.ux, %bb.bb ], [ %i.ny, %bb.aj ], [ %i.ny, %bb.ak ], [ %.2224, %bb.al ], [ %i.ro, %bb.at ], [ %i.ro, %bb.au ], [ %i.va, %.lr.ph.i366 ] ; 3 uses
  %.5220 = phi i32 [ %.lcssa403, %._crit_edge ], [ %i.fi, %chunkmemset_avx2.exit ], [ %i.fi, %chunkunroll_avx2.exit ], [ %i.fi, %.loopexit.i356 ], [ %i.fi, %bb.aq ], [ %i.fi, %bb.av ], [ %i.fi, %.loopexit.i324 ], [ %i.fi, %bb.ac ], [ %i.fi, %.loopexit.i292 ], [ %i.fi, %bb.bb ], [ %i.fi, %bb.aj ], [ %i.fi, %bb.ak ], [ %i.fi, %bb.al ], [ %i.fi, %bb.at ], [ %i.fi, %bb.au ], [ %i.fi, %.lr.ph.i366 ] ; 2 uses
  %.5 = phi i64 [ %.lcssa406, %._crit_edge ], [ %i.fh, %chunkmemset_avx2.exit ], [ %i.fh, %chunkunroll_avx2.exit ], [ %i.fh, %.loopexit.i356 ], [ %i.fh, %bb.aq ], [ %i.fh, %bb.av ], [ %i.fh, %.loopexit.i324 ], [ %i.fh, %bb.ac ], [ %i.fh, %.loopexit.i292 ], [ %i.fh, %bb.bb ], [ %i.fh, %bb.aj ], [ %i.fh, %bb.ak ], [ %i.fh, %bb.al ], [ %i.fh, %bb.at ], [ %i.fh, %bb.au ], [ %i.fh, %.lr.ph.i366 ] ; 2 uses
  %i.zm = icmp ult ptr %.2229, %i.i
  %i.zn = icmp ult ptr %.3225, %i.t
  %i.zo = select i1 %i.zm, i1 %i.zn, i1 false
  br i1 %i.zo, label %bb.d, label %.loopexit, !llvm.loop !47

.loopexit:                                        ; preds = %chunkcopy_safe.exit300, %bb.ca, %bb.bz, %bb.bv, %bb.k
  %.3230 = phi ptr [ %i.bm, %bb.ca ], [ %.1228, %bb.k ], [ %.1228, %bb.bv ], [ %i.bm, %bb.bz ], [ %.2229, %chunkcopy_safe.exit300 ]
  %.4226 = phi ptr [ %.1223582, %bb.ca ], [ %.1223582, %bb.k ], [ %.1223582, %bb.bv ], [ %.1223582, %bb.bz ], [ %.3225, %chunkcopy_safe.exit300 ] ; 2 uses
  %.6221 = phi i32 [ %i.dm, %bb.ca ], [ %i.fi, %bb.k ], [ %i.xu, %bb.bv ], [ %i.dm, %bb.bz ], [ %.5220, %chunkcopy_safe.exit300 ] ; 2 uses
  %.6 = phi i64 [ %i.dn, %bb.ca ], [ %i.fh, %bb.k ], [ %i.xv, %bb.bv ], [ %i.dn, %bb.bz ], [ %.5, %chunkcopy_safe.exit300 ]
  %i.zp = lshr i32 %.6221, 3
  %i.zq = zext nneg i32 %i.zp to i64
  %i.zr = sub nsw i64 0, %i.zq
  %i.zs = getelementptr inbounds i8, ptr %.3230, i64 %i.zr ; 2 uses
  store ptr %i.zs, ptr %0, align 8, !tbaa !54
  store ptr %.4226, ptr %i.j, align 8, !tbaa !56
  %i.zt = ptrtoint ptr %i.i to i64
  %i.zu = ptrtoint ptr %i.zs to i64
  %i.zv = sub i64 %i.zt, %i.zu
  %i.zw = trunc i64 %i.zv to i32
  %i.zx = add i32 %i.zw, 14
  store i32 %i.zx, ptr %i.e, align 8, !tbaa !55
  %i.zy = ptrtoint ptr %i.t to i64
  %i.zz = ptrtoint ptr %.4226 to i64
  %i.aaa = sub i64 %i.zy, %i.zz
  %i.aab = and i32 %.6221, 7                      ; 2 uses
  %i.aac = zext nneg i32 %i.aab to i64
  %notmask263 = shl nsw i64 -1, %i.aac
  %i.aad = xor i64 %notmask263, -1
  %i.aae = and i64 %.6, %i.aad
  %i.aaf = trunc i64 %i.aaa to i32
  %i.aag = add i32 %i.aaf, 259
  store i32 %i.aag, ptr %i.l, align 8, !tbaa !57
end_hunk_1
begin_hunk_2_@CHUNKCOPY_SAFE:bb.a
  store i8 %i.av, ptr %i.at, align 1, !tbaa !13
  %i.ax = getelementptr inbounds nuw i8, ptr %.02235, i64 6
  %i.ay = load i8, ptr %i.au, align 1, !tbaa !13
  %i.az = getelementptr inbounds nuw i8, ptr %.02334, i64 6
  store i8 %i.ay, ptr %i.aw, align 1, !tbaa !13
  %i.ba = getelementptr inbounds nuw i8, ptr %.02235, i64 7
  %i.bb = load i8, ptr %i.ax, align 1, !tbaa !13
  %i.bc = getelementptr inbounds nuw i8, ptr %.02334, i64 7
  store i8 %i.bb, ptr %i.az, align 1, !tbaa !13
  %i.bd = add nsw i64 %.02136, -8                 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.02235, i64 8
  %i.bf = load i8, ptr %i.ba, align 1, !tbaa !13
  %i.bg = getelementptr inbounds nuw i8, ptr %.02334, i64 8 ; 2 uses
  store i8 %i.bf, ptr %i.bc, align 1, !tbaa !13
  %.not.7 = icmp eq i64 %i.bd, 0
  br i1 %.not.7, label %.loopexit, label %.lr.ph, !llvm.loop !83

bb.d:                                             ; preds = %bb.c
  %i.bh = trunc nuw i64 %i.g to i32               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bi = sub i64 %i.e, %i.h                      ; 3 uses
  %i.bj = tail call i64 @llvm.abs.i64(i64 %i.bi, i1 true) ; 10 uses
  %i.bk = icmp slt i64 %i.bi, 0
  %i.bl = icmp samesign ult i64 %i.bj, %i.g
  %or.cond = select i1 %i.bk, i1 %i.bl, i1 false
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %0, ptr align 1 %1, i64 %i.g, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 %i.g
  br label %chunkmemset_avx2.exit

bb.f:                                             ; preds = %bb.d
  %i.bn = icmp eq i64 %i.bj, 1
  br i1 %i.bn, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bo = load i8, ptr %1, align 1, !tbaa !13
  tail call void @llvm.memset.p0.i64(ptr align 1 %0, i8 %i.bo, i64 %i.g, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 %i.g
  br label %chunkmemset_avx2.exit

bb.h:                                             ; preds = %bb.f
  %i.bq = icmp samesign ugt i64 %i.bj, 31
  br i1 %i.bq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.br = add i32 %i.bh, 31
  %i.bs = and i32 %i.br, 31
  %narrow.i.i = add nuw nsw i32 %i.bs, 1          ; 2 uses
  %.val.i.i = load <4 x i64>, ptr %1, align 1, !tbaa !13
  store <4 x i64> %.val.i.i, ptr %0, align 1, !tbaa !13
  %i.bt = zext nneg i32 %narrow.i.i to i64        ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 %i.bt ; 2 uses
  %i.bv = sub i32 %i.bh, %narrow.i.i              ; 2 uses
  %.not20.i.i = icmp eq i32 %i.bv, 0
  br i1 %.not20.i.i, label %chunkmemset_avx2.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.i
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 %i.bt
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.023.i.i = phi i32 [ %i.bz, %.lr.ph.i.i ], [ %i.bv, %.lr.ph.preheader.i.i ]
  %.01522.i.i = phi ptr [ %i.by, %.lr.ph.i.i ], [ %i.bw, %.lr.ph.preheader.i.i ] ; 2 uses
  %.01621.i.i = phi ptr [ %i.bx, %.lr.ph.i.i ], [ %i.bu, %.lr.ph.preheader.i.i ] ; 2 uses
  %.015.val.i.i = load <4 x i64>, ptr %.01522.i.i, align 1, !tbaa !13
  store <4 x i64> %.015.val.i.i, ptr %.01621.i.i, align 1, !tbaa !13
  %i.bx = getelementptr inbounds nuw i8, ptr %.01621.i.i, i64 32 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.01522.i.i, i64 32
  %i.bz = add i32 %.023.i.i, -32                  ; 2 uses
  %.not.i.i = icmp eq i32 %i.bz, 0
  br i1 %.not.i.i, label %chunkmemset_avx2.exit, label %.lr.ph.i.i, !llvm.loop !0

bb.j:                                             ; preds = %bb.h
  %i.ca = icmp samesign ult i64 %i.g, 17
  br i1 %i.ca, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.cb = icmp samesign ugt i64 %i.bj, 15
  br i1 %i.cb, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cc = add nuw nsw i32 %i.bh, 15
  %i.cd = and i32 %i.cc, 15
  %narrow.i83.i = add nuw nsw i32 %i.cd, 1        ; 2 uses
  %.val.i84.i = load <2 x i64>, ptr %1, align 1, !tbaa !13
  store <2 x i64> %.val.i84.i, ptr %0, align 1, !tbaa !13
  %i.ce = zext nneg i32 %narrow.i83.i to i64      ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 %i.ce ; 2 uses
  %i.cg = sub nsw i32 %i.bh, %narrow.i83.i        ; 2 uses
  %.not20.i85.i = icmp eq i32 %i.cg, 0
  br i1 %.not20.i85.i, label %chunkmemset_avx2.exit, label %.lr.ph.preheader.i86.i

.lr.ph.preheader.i86.i:                           ; preds = %bb.l
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 %i.ce
  br label %.lr.ph.i87.i

.lr.ph.i87.i:                                     ; preds = %.lr.ph.i87.i, %.lr.ph.preheader.i86.i
  %.023.i88.i = phi i32 [ %i.ck, %.lr.ph.i87.i ], [ %i.cg, %.lr.ph.preheader.i86.i ]
  %.01522.i89.i = phi ptr [ %i.cj, %.lr.ph.i87.i ], [ %i.ch, %.lr.ph.preheader.i86.i ] ; 2 uses
  %.01621.i90.i = phi ptr [ %i.ci, %.lr.ph.i87.i ], [ %i.cf, %.lr.ph.preheader.i86.i ] ; 2 uses
  %.015.val.i91.i = load <2 x i64>, ptr %.01522.i89.i, align 1, !tbaa !13
  store <2 x i64> %.015.val.i91.i, ptr %.01621.i90.i, align 1, !tbaa !13
  %i.ci = getelementptr inbounds nuw i8, ptr %.01621.i90.i, i64 16 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.01522.i89.i, i64 16
  %i.ck = add i32 %.023.i88.i, -16                ; 2 uses
  %.not.i92.i = icmp eq i32 %i.ck, 0
  br i1 %.not.i92.i, label %chunkmemset_avx2.exit, label %.lr.ph.i87.i, !llvm.loop !1

bb.m:                                             ; preds = %bb.k
  %i.cl = trunc i64 %i.bj to i1
  %i.cm = icmp eq i64 %i.bj, 6
  %or.cond.i = or i1 %i.cm, %i.cl
  br i1 %or.cond.i, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %.val7798.i = load <16 x i8>, ptr %1, align 1, !tbaa !13
  %i.cn = add nuw nsw i64 %i.bj, 4294967293
  %i.co = and i64 %i.cn, 4294967295
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr @perm_idx_lut, i64 %i.co
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.cp, align 4, !tbaa !19
  %i.cq = zext i16 %.sroa.0.0.copyload.i.i to i64
  %i.cr = getelementptr inbounds nuw i8, ptr @permute_table, i64 %i.cq
  %i.cs = load <16 x i8>, ptr %i.cr, align 16, !tbaa !13
  %i.ct = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %.val7798.i, <16 x i8> %i.cs) ; 2 uses
  %i.cu = bitcast <16 x i8> %i.ct to <2 x i64>
  %i.cv = icmp eq i64 %i.g, 16
  br i1 %i.cv, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store <16 x i8> %i.ct, ptr %0, align 1, !tbaa !13
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.067.i = phi ptr [ %i.cw, %bb.o ], [ %0, %bb.n ]
  %.0.i = phi i32 [ 0, %bb.o ], [ %i.bh, %bb.n ]
  %i.cx = shufflevector <2 x i64> %i.cu, <2 x i64> zeroinitializer, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i64> %i.cx, ptr %i.a, align 32, !tbaa !13
  br label %.loopexit.i

bb.q:                                             ; preds = %bb.m, %bb.j
  %i.cy = tail call range(i64 1, 6) i64 @llvm.ctpop.i64(i64 %i.bj)
  %i.cz = icmp eq i64 %i.cy, 1
  br i1 %i.cz, label %.split.i, label %bb.v

.split.i:                                         ; preds = %bb.q
  %i.da = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.bi, i1 true)
  switch i64 %i.da, label %bb.v [
    i64 1, label %bb.r
    i64 2, label %bb.s
    i64 3, label %bb.t
    i64 4, label %bb.u
  ]

bb.r:                                             ; preds = %.split.i
  %.val79.i = load i16, ptr %1, align 1, !tbaa !13
  %i.db = insertelement <16 x i16> poison, i16 %.val79.i, i64 0
  %i.dc = shufflevector <16 x i16> %i.db, <16 x i16> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.dd = bitcast <16 x i16> %i.dc to <4 x i64>
  store <16 x i16> %i.dc, ptr %i.a, align 32, !tbaa !13
  br label %bb.y

bb.s:                                             ; preds = %.split.i
  %.val80.i = load i32, ptr %1, align 1, !tbaa !13
  %i.de = insertelement <8 x i32> poison, i32 %.val80.i, i64 0
  %i.df = shufflevector <8 x i32> %i.de, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.dg = bitcast <8 x i32> %i.df to <4 x i64>
  store <8 x i32> %i.df, ptr %i.a, align 32, !tbaa !13
  br label %bb.y

bb.t:                                             ; preds = %.split.i
  %.val81.i = load i64, ptr %1, align 1, !tbaa !13
  %i.dh = insertelement <4 x i64> poison, i64 %.val81.i, i64 0
  %i.di = shufflevector <4 x i64> %i.dh, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  store <4 x i64> %i.di, ptr %i.a, align 32, !tbaa !13
  br label %bb.y

bb.u:                                             ; preds = %.split.i
  %.val82.i = load <2 x i64>, ptr %1, align 1, !tbaa !13
  %i.dj = shufflevector <2 x i64> %.val82.i, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  store <4 x i64> %i.dj, ptr %i.a, align 32, !tbaa !13
  br label %bb.y

bb.v:                                             ; preds = %.split.i, %bb.q
  %i.dk = add nuw nsw i64 %i.bj, 4294967293
  %i.dl = and i64 %i.dk, 4294967295
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr @perm_idx_lut, i64 %i.dl ; 2 uses
  %.sroa.0.0.copyload.i94.i = load i16, ptr %i.dm, align 4, !tbaa !19 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dm, i64 2
  %.sroa.5.0.copyload.i.i = load i16, ptr %.sroa.5.0..sroa_idx.i.i, align 2, !tbaa !19
  %i.dn = zext i16 %.sroa.5.0.copyload.i.i to i32
  %i.do = icmp samesign ult i64 %i.bj, 16
  br i1 %i.do, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dp = zext i16 %.sroa.0.0.copyload.i94.i to i64
  %i.dq = getelementptr inbounds nuw i8, ptr @permute_table, i64 %i.dp
  %i.dr = load <32 x i8>, ptr %i.dq, align 32, !tbaa !13
  %4 = load <16 x i8>, ptr %1, align 1, !tbaa !13
  %i.ds = add <32 x i8> %i.dr, <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16>
  %5 = shufflevector <16 x i8> %4, <16 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dt = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %5, <32 x i8> %i.ds)
  %i.du = bitcast <32 x i8> %i.dt to <4 x i64>
  br label %GET_CHUNK_MAG.exit.i

bb.x:                                             ; preds = %bb.v
  %i.dv = load <2 x i64>, ptr %1, align 1, !tbaa !13 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dx = load <16 x i8>, ptr %i.dw, align 1, !tbaa !13
  %i.dy = zext i16 %.sroa.0.0.copyload.i94.i to i64
  %i.dz = getelementptr inbounds nuw i8, ptr @permute_table, i64 %i.dy
  %i.ea = load <16 x i8>, ptr %i.dz, align 16, !tbaa !13 ; 2 uses
  %i.eb = icmp slt <16 x i8> %i.ea, splat (i8 16)
  %i.ec = bitcast <2 x i64> %i.dv to <16 x i8>
  %i.ed = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.ec, <16 x i8> %i.ea)
  %i.ee = select <16 x i1> %i.eb, <16 x i8> %i.ed, <16 x i8> %i.dx
  %i.ef = bitcast <16 x i8> %i.ee to <2 x i64>
  %i.eg = shufflevector <2 x i64> %i.dv, <2 x i64> %i.ef, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  br label %GET_CHUNK_MAG.exit.i

GET_CHUNK_MAG.exit.i:                             ; preds = %bb.x, %bb.w
  %.0.i.i = phi <4 x i64> [ %i.du, %bb.w ], [ %i.eg, %bb.x ] ; 2 uses
  store <4 x i64> %.0.i.i, ptr %i.a, align 32, !tbaa !13
  %i.eh = sub nsw i32 32, %i.dn
  br label %bb.y

bb.y:                                             ; preds = %GET_CHUNK_MAG.exit.i, %bb.u, %bb.t, %bb.s, %bb.r
  %.0..0..val.i = phi <4 x i64> [ %.0.i.i, %GET_CHUNK_MAG.exit.i ], [ %i.dd, %bb.r ], [ %i.dg, %bb.s ], [ %i.di, %bb.t ], [ %i.dj, %bb.u ] ; 3 uses
  %.097.i = phi i32 [ %i.eh, %GET_CHUNK_MAG.exit.i ], [ 32, %bb.r ], [ 32, %bb.s ], [ 32, %bb.t ], [ 32, %bb.u ] ; 4 uses
  %i.ei = icmp samesign ugt i64 %i.g, 63
  br i1 %i.ei, label %.lr.ph.i, label %.preheader.i

.lr.ph.i:                                         ; preds = %bb.y
  %i.ej = zext i32 %.097.i to i64
  %i.ek = shl nsw i32 %.097.i, 1                  ; 2 uses
  %i.el = zext i32 %i.ek to i64
  br label %bb.z

.preheader.i:                                     ; preds = %bb.z, %bb.y
  %.168.lcssa.i = phi ptr [ %0, %bb.y ], [ %i.ep, %bb.z ] ; 2 uses
  %.1.lcssa.i = phi i32 [ %i.bh, %bb.y ], [ %i.eq, %bb.z ] ; 3 uses
  %i.em = icmp samesign ugt i32 %.1.lcssa.i, 31
  br i1 %i.em, label %.lr.ph106.i, label %.loopexit.i

.lr.ph106.i:                                      ; preds = %.preheader.i
  %i.en = zext i32 %.097.i to i64
  br label %bb.aa

bb.z:                                             ; preds = %bb.z, %.lr.ph.i
  %.1102.i = phi i32 [ %i.bh, %.lr.ph.i ], [ %i.eq, %bb.z ]
  %.168101.i = phi ptr [ %0, %.lr.ph.i ], [ %i.ep, %bb.z ] ; 3 uses
  store <4 x i64> %.0..0..val.i, ptr %.168101.i, align 1, !tbaa !13
  %i.eo = getelementptr inbounds nuw i8, ptr %.168101.i, i64 %i.ej
  store <4 x i64> %.0..0..val.i, ptr %i.eo, align 1, !tbaa !13
  %i.ep = getelementptr inbounds nuw i8, ptr %.168101.i, i64 %i.el ; 2 uses
  %i.eq = sub i32 %.1102.i, %i.ek                 ; 3 uses
  %i.er = icmp ugt i32 %i.eq, 63
  br i1 %i.er, label %bb.z, label %.preheader.i, !llvm.loop !2

bb.aa:                                            ; preds = %bb.aa, %.lr.ph106.i
  %.2105.i = phi i32 [ %.1.lcssa.i, %.lr.ph106.i ], [ %i.es, %bb.aa ]
  %.269104.i = phi ptr [ %.168.lcssa.i, %.lr.ph106.i ], [ %i.et, %bb.aa ] ; 2 uses
  store <4 x i64> %.0..0..val.i, ptr %.269104.i, align 1, !tbaa !13
  %i.es = sub i32 %.2105.i, %.097.i               ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.269104.i, i64 %i.en ; 2 uses
  %i.eu = icmp ugt i32 %i.es, 31
  br i1 %i.eu, label %bb.aa, label %.loopexit.i, !llvm.loop !3

.loopexit.i:                                      ; preds = %bb.aa, %.preheader.i, %bb.p
  %.370.i = phi ptr [ %.067.i, %bb.p ], [ %.168.lcssa.i, %.preheader.i ], [ %i.et, %bb.aa ] ; 3 uses
  %.3.i = phi i32 [ %.0.i, %bb.p ], [ %.1.lcssa.i, %.preheader.i ], [ %i.es, %bb.aa ] ; 2 uses
  %.not.i = icmp eq i32 %.3.i, 0
  br i1 %.not.i, label %chunkmemset_avx2.exit, label %bb.ab

bb.ab:                                            ; preds = %.loopexit.i
  %i.ev = zext nneg i32 %.3.i to i64              ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.370.i, ptr nonnull align 32 %i.a, i64 %i.ev, i1 false)
  %i.ew = getelementptr inbounds nuw i8, ptr %.370.i, i64 %i.ev
  br label %chunkmemset_avx2.exit

chunkmemset_avx2.exit:                            ; preds = %.lr.ph.i87.i, %.lr.ph.i.i, %bb.e, %bb.g, %bb.i, %bb.l, %.loopexit.i, %bb.ab
  %.066.i = phi ptr [ %i.bm, %bb.e ], [ %i.bp, %bb.g ], [ %.370.i, %.loopexit.i ], [ %i.bx, %.lr.ph.i.i ], [ %i.ew, %bb.ab ], [ %i.bu, %bb.i ], [ %i.cf, %bb.l ], [ %i.ci, %.lr.ph.i87.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %.preheader, %chunkmemset_avx2.exit, %bb.b
  %.1 = phi ptr [ %i.c, %bb.b ], [ %.066.i, %chunkmemset_avx2.exit ], [ %0, %.preheader ], [ %i.aa, %vec.epilog.middle.block ], [ %i.q, %middle.block ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.bg, %.lr.ph ]
  ret ptr %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8>, <16 x i8>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8>, <32 x i8>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !14}
!1 = distinct !{!1, !14}
!2 = distinct !{!2, !14}
!3 = distinct !{!3, !14}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!13 = !{!8, !8, i64 0}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"llvm.loop.isvectorized", i32 1}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = !{!"llvm.loop.unroll.disable"}
!18 = !{!"short", !8, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"branch_weights", i32 8, i32 120}
!21 = distinct !{!21, !14, !15, !16}
!22 = distinct !{!22, !17}
!23 = distinct !{!23, !14, !15}
!24 = distinct !{!24, !14}
!25 = distinct !{!25, !14}
!26 = distinct !{!26, !17}
!27 = distinct !{!27, !14}
!28 = distinct !{!28, !14, !15, !16}
!29 = distinct !{!29, !14, !15, !16}
!30 = distinct !{!30, !17}
!31 = distinct !{!31, !14, !15}
!32 = distinct !{!32, !17}
!33 = distinct !{!33, !14, !15, !16}
!34 = distinct !{!34, !14, !15, !16}
!35 = distinct !{!35, !17}
!36 = distinct !{!36, !14, !15}
!37 = distinct !{!37, !17}
!38 = distinct !{!38, !14, !15, !16}
!39 = distinct !{!39, !14, !15, !16}
!40 = distinct !{!40, !17}
!41 = distinct !{!41, !14, !15}
!42 = distinct !{!42, !17}
!43 = distinct !{!43, !14, !15, !16}
!44 = distinct !{!44, !14, !15, !16}
!45 = distinct !{!45, !17}
!46 = distinct !{!46, !14, !15}
!47 = distinct !{!47, !14}
!48 = !{!"any pointer", !8, i64 0}
!49 = !{!"p1 omnipotent char", !48, i64 0}
!50 = !{!"long", !8, i64 0}
!51 = !{!"p1 _ZTS14internal_state", !48, i64 0}
!52 = !{!"zng_stream_s", !49, i64 0, !9, i64 8, !50, i64 16, !49, i64 24, !9, i64 32, !50, i64 40, !49, i64 48, !51, i64 56, !48, i64 64, !48, i64 72, !48, i64 80, !9, i64 88, !9, i64 92, !50, i64 96}
!53 = !{!52, !51, i64 56}
!54 = !{!52, !49, i64 0}
!55 = !{!52, !9, i64 8}
!56 = !{!52, !49, i64 24}
!57 = !{!52, !9, i64 32}
!58 = !{!"p1 _ZTS12zng_stream_s", !48, i64 0}
!59 = !{!"p1 _ZTS15zng_gz_header_s", !48, i64 0}
!60 = !{!"crc32_fold_s", !8, i64 0, !9, i64 64}
!61 = !{!"p1 _ZTS16inflate_allocs_s", !48, i64 0}
!62 = !{!"inflate_state", !58, i64 0, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !50, i64 32, !50, i64 40, !59, i64 48, !9, i64 56, !9, i64 60, !9, i64 64, !9, i64 68, !9, i64 72, !9, i64 76, !49, i64 80, !50, i64 88, !9, i64 96, !9, i64 100, !48, i64 104, !48, i64 112, !9, i64 120, !9, i64 124, !9, i64 128, !9, i64 132, !9, i64 136, !9, i64 140, !9, i64 144, !9, i64 148, !48, i64 152, !60, i64 160, !8, i64 228, !8, i64 868, !8, i64 1444, !61, i64 9144}
!63 = !{!62, !9, i64 64}
!64 = !{!62, !9, i64 72}
!65 = !{!62, !9, i64 76}
end_hunk_2
