inline.NumInlined: 402
inline.NumDeleted: 154
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN5arrow8internal12CountSetBitsEPKhll:bb.a
  %i.be = load i64, ptr %i.ay, align 8, !tbaa !10
  %i.bf = load i64, ptr %i.az, align 8, !tbaa !10
  %i.bg = insertelement <2 x i64> poison, i64 %i.be, i64 0
  %i.bh = insertelement <2 x i64> %i.bg, i64 %i.bf, i64 1
  %i.bi = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.bd)
  %i.bj = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.bh)
  %i.bk = add <2 x i64> %vec.phi91, %i.bi         ; 2 uses
  %i.bl = add <2 x i64> %vec.phi92, %i.bj         ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %next.gep, i64 16
  %i.bn = getelementptr i8, ptr %i.ah, i64 48
  %i.bo = getelementptr i8, ptr %i.ai, i64 80
  %i.bp = getelementptr i8, ptr %i.aj, i64 112
  %i.bq = load i64, ptr %i.bm, align 8, !tbaa !10
  %i.br = load i64, ptr %i.bn, align 8, !tbaa !10
  %i.bs = insertelement <2 x i64> poison, i64 %i.bq, i64 0
  %i.bt = insertelement <2 x i64> %i.bs, i64 %i.br, i64 1
  %i.bu = load i64, ptr %i.bo, align 8, !tbaa !10
  %i.bv = load i64, ptr %i.bp, align 8, !tbaa !10
  %i.bw = insertelement <2 x i64> poison, i64 %i.bu, i64 0
  %i.bx = insertelement <2 x i64> %i.bw, i64 %i.bv, i64 1
  %i.by = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.bt)
  %i.bz = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.bx)
  %i.ca = add <2 x i64> %vec.phi93, %i.by         ; 2 uses
  %i.cb = add <2 x i64> %vec.phi94, %i.bz         ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %next.gep, i64 24
  %i.cd = getelementptr i8, ptr %i.ah, i64 56
  %i.ce = getelementptr i8, ptr %i.ai, i64 88
  %i.cf = getelementptr i8, ptr %i.aj, i64 120
  %i.cg = load i64, ptr %i.cc, align 8, !tbaa !10
  %i.ch = load i64, ptr %i.cd, align 8, !tbaa !10
  %i.ci = insertelement <2 x i64> poison, i64 %i.cg, i64 0
  %i.cj = insertelement <2 x i64> %i.ci, i64 %i.ch, i64 1
  %i.ck = load i64, ptr %i.ce, align 8, !tbaa !10
  %i.cl = load i64, ptr %i.cf, align 8, !tbaa !10
  %i.cm = insertelement <2 x i64> poison, i64 %i.ck, i64 0
  %i.cn = insertelement <2 x i64> %i.cm, i64 %i.cl, i64 1
  %i.co = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.cj)
  %i.cp = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.cn)
  %i.cq = add <2 x i64> %vec.phi95, %i.co         ; 2 uses
  %i.cr = add <2 x i64> %vec.phi96, %i.cp         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cs = icmp eq i64 %index.next, %n.vec
  br i1 %i.cs, label %middle.block, label %vector.body, !llvm.loop !12

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.av, %i.au
  %i.ct = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  %bin.rdx100 = add <2 x i64> %i.bl, %i.bk
  %i.cu = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx100)
  %bin.rdx101 = add <2 x i64> %i.cb, %i.ca
  %i.cv = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx101)
  %bin.rdx102 = add <2 x i64> %i.cr, %i.cq
  %i.cw = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx102)
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  %i.cx = insertelement <4 x i64> poison, i64 %i.ct, i64 0
  %i.cy = insertelement <4 x i64> %i.cx, i64 %i.cu, i64 1
  %i.cz = insertelement <4 x i64> %i.cy, i64 %i.cv, i64 2
  %i.da = insertelement <4 x i64> %i.cz, i64 %i.cw, i64 3 ; 2 uses
  br i1 %cmp.n, label %.preheader45, label %.preheader46.preheader127

.preheader46.preheader127:                        ; preds = %.preheader46.preheader, %middle.block
  %.03851.ph = phi i64 [ 0, %.preheader46.preheader ], [ %i.ad, %middle.block ]
  %.04150.ph = phi ptr [ %i.m, %.preheader46.preheader ], [ %i.af, %middle.block ]
  %.ph = phi <4 x i64> [ zeroinitializer, %.preheader46.preheader ], [ %i.da, %middle.block ]
  br label %.preheader46

.preheader46:                                     ; preds = %.preheader46.preheader127, %.preheader46
  %.03851 = phi i64 [ %i.dg, %.preheader46 ], [ %.03851.ph, %.preheader46.preheader127 ]
  %.04150 = phi ptr [ %i.df, %.preheader46 ], [ %.04150.ph, %.preheader46.preheader127 ] ; 2 uses
  %i.db = phi <4 x i64> [ %i.de, %.preheader46 ], [ %.ph, %.preheader46.preheader127 ]
  %i.dc = load <4 x i64>, ptr %.04150, align 8, !tbaa !10
  %i.dd = tail call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %i.dc)
  %i.de = add <4 x i64> %i.db, %i.dd              ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.04150, i64 32 ; 2 uses
  %i.dg = add nuw nsw i64 %.03851, 4              ; 2 uses
  %i.dh = icmp samesign ult i64 %i.dg, %i.z
  br i1 %i.dh, label %.preheader46, label %.preheader45, !llvm.loop !15

.preheader45:                                     ; preds = %.preheader46, %middle.block, %bb.b
  %.041.lcssa = phi ptr [ %i.m, %bb.b ], [ %i.af, %middle.block ], [ %i.df, %.preheader46 ] ; 5 uses
  %i.di = phi <4 x i64> [ zeroinitializer, %bb.b ], [ %i.da, %middle.block ], [ %i.de, %.preheader46 ]
  %i.dj = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.di)
  %op.rdx = add i64 %i.dj, %.039.lcssa            ; 3 uses
  %i.dk = icmp ult ptr %.041.lcssa, %i.y
  br i1 %i.dk, label %.lr.ph57.preheader, label %._crit_edge58

.lr.ph57.preheader:                               ; preds = %.preheader45
  %i.dl = shl nuw nsw i64 %i.h, 3
  %i.dm = add i64 %i.l, %i.a
  %i.dn = add i64 %i.dm, %i.dl
  %i.do = ptrtoint ptr %.041.lcssa to i64         ; 2 uses
  %i.dp = add i64 %i.do, 8
  %i.dq = tail call i64 @llvm.umax.i64(i64 %i.dn, i64 %i.dp)
  %i.dr = xor i64 %i.do, -1
  %i.ds = add i64 %i.dq, %i.dr                    ; 2 uses
  %i.dt = lshr i64 %i.ds, 3
  %i.du = add nuw nsw i64 %i.dt, 1                ; 2 uses
  %min.iters.check108 = icmp ult i64 %i.ds, 24
  br i1 %min.iters.check108, label %.lr.ph57.preheader124, label %vector.ph109

vector.ph109:                                     ; preds = %.lr.ph57.preheader
  %n.vec111 = and i64 %i.du, 4611686018427387900  ; 3 uses
  %i.dv = shl i64 %n.vec111, 3
  %i.dw = getelementptr i8, ptr %.041.lcssa, i64 %i.dv
  %i.dx = insertelement <2 x i64> <i64 poison, i64 0>, i64 %op.rdx, i64 0
  br label %vector.body112

vector.body112:                                   ; preds = %vector.body112, %vector.ph109
  %index113 = phi i64 [ 0, %vector.ph109 ], [ %index.next118, %vector.body112 ] ; 2 uses
  %vec.phi114 = phi <2 x i64> [ %i.dx, %vector.ph109 ], [ %i.ec, %vector.body112 ]
  %vec.phi115 = phi <2 x i64> [ zeroinitializer, %vector.ph109 ], [ %i.ed, %vector.body112 ]
  %i.dy = shl i64 %index113, 3
  %next.gep116 = getelementptr i8, ptr %.041.lcssa, i64 %i.dy ; 2 uses
  %i.dz = getelementptr i8, ptr %next.gep116, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep116, align 8, !tbaa !10
  %wide.load117 = load <2 x i64>, ptr %i.dz, align 8, !tbaa !10
  %i.ea = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load)
  %i.eb = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load117)
  %i.ec = add <2 x i64> %i.ea, %vec.phi114        ; 2 uses
  %i.ed = add <2 x i64> %i.eb, %vec.phi115        ; 2 uses
  %index.next118 = add nuw i64 %index113, 4       ; 2 uses
  %i.ee = icmp eq i64 %index.next118, %n.vec111
  br i1 %i.ee, label %middle.block119, label %vector.body112, !llvm.loop !16

middle.block119:                                  ; preds = %vector.body112
  %bin.rdx120 = add <2 x i64> %i.ed, %i.ec
  %i.ef = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx120) ; 2 uses
  %cmp.n121 = icmp eq i64 %i.du, %n.vec111
  br i1 %cmp.n121, label %._crit_edge58, label %.lr.ph57.preheader124

.lr.ph57.preheader124:                            ; preds = %.lr.ph57.preheader, %middle.block119
  %.356.ph = phi i64 [ %op.rdx, %.lr.ph57.preheader ], [ %i.ef, %middle.block119 ]
  %.14255.ph = phi ptr [ %.041.lcssa, %.lr.ph57.preheader ], [ %i.dw, %middle.block119 ]
  br label %.lr.ph57

.lr.ph57:                                         ; preds = %.lr.ph57.preheader124, %.lr.ph57
  %.356 = phi i64 [ %i.ei, %.lr.ph57 ], [ %.356.ph, %.lr.ph57.preheader124 ]
  %.14255 = phi ptr [ %i.ej, %.lr.ph57 ], [ %.14255.ph, %.lr.ph57.preheader124 ] ; 2 uses
  %i.eg = load i64, ptr %.14255, align 8, !tbaa !10
  %i.eh = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.eg)
  %i.ei = add i64 %i.eh, %.356                    ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.14255, i64 8 ; 2 uses
  %i.ek = icmp ult ptr %i.ej, %i.y
  br i1 %i.ek, label %.lr.ph57, label %._crit_edge58, !llvm.loop !17

._crit_edge58:                                    ; preds = %.lr.ph57, %middle.block119, %.preheader45, %._crit_edge
  %.4 = phi i64 [ %.039.lcssa, %._crit_edge ], [ %op.rdx, %.preheader45 ], [ %i.ef, %middle.block119 ], [ %i.ei, %.lr.ph57 ] ; 2 uses
  %i.el = add nsw i64 %2, %1                      ; 2 uses
  %i.em = icmp slt i64 %i.k, %i.el
  br i1 %i.em, label %.lr.ph63, label %._crit_edge64

._crit_edge64:                                    ; preds = %.lr.ph63, %._crit_edge58
  %.5.lcssa = phi i64 [ %.4, %._crit_edge58 ], [ %spec.select44, %.lr.ph63 ]
  ret i64 %.5.lcssa

.lr.ph63:                                         ; preds = %._crit_edge58, %.lr.ph63
  %.061 = phi i64 [ %i.ev, %.lr.ph63 ], [ %i.k, %._crit_edge58 ] ; 3 uses
  %.560 = phi i64 [ %spec.select44, %.lr.ph63 ], [ %.4, %._crit_edge58 ]
  %i.en = lshr i64 %.061, 3
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 %i.en
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !7
  %i.eq = trunc i64 %.061 to i8
  %i.er = and i8 %i.eq, 7
  %i.es = lshr i8 %i.ep, %i.er
  %i.et = and i8 %i.es, 1
  %i.eu = zext nneg i8 %i.et to i64
  %spec.select44 = add nsw i64 %.560, %i.eu       ; 2 uses
  %i.ev = add nsw i64 %.061, 1                    ; 2 uses
  %i.ew = icmp slt i64 %i.ev, %i.el
  br i1 %i.ew, label %.lr.ph63, label %._crit_edge64, !llvm.loop !18
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZN5arrow8internal15CountAndSetBitsEPKhlS2_ll(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #3 {
bb.a:
  %.not.i.i = icmp eq ptr %0, null
  %_ZN5arrow4util8internalL14kNonNullFillerE..i.i = select i1 %.not.i.i, ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %0, !prof !19
  %i.a = sdiv i64 %1, 8
  %i.b = getelementptr inbounds i8, ptr %_ZN5arrow4util8internalL14kNonNullFillerE..i.i, i64 %i.a
  %i.c = srem i64 %1, 8                           ; 5 uses
  %.not.i7.i = icmp eq ptr %2, null
  %_ZN5arrow4util8internalL14kNonNullFillerE..i8.i = select i1 %.not.i7.i, ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %2, !prof !19
  %i.d = sdiv i64 %3, 8
  %i.e = getelementptr inbounds i8, ptr %_ZN5arrow4util8internalL14kNonNullFillerE..i8.i, i64 %i.d
  %i.f = srem i64 %3, 8                           ; 5 uses
  %.not36.i = icmp eq i64 %i.c, 0
  %i.g = sub nsw i64 128, %i.c
  %spec.select.i = select i1 %.not36.i, i64 64, i64 %i.g
  %.not37.i = icmp eq i64 %i.f, 0
  %i.h = sub nsw i64 128, %i.f
  %i.i = select i1 %.not37.i, i64 64, i64 %i.h
  %i.j = tail call i64 @llvm.smax.i64(i64 %spec.select.i, i64 %i.i)
  %i.k = or i64 %i.f, %i.c
  %brmerge.not.i = icmp eq i64 %i.k, 0
  br label %bb.b

bb.b:                                             ; preds = %_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail11BitBlockAndEEENS0_13BitBlockCountEv.exit, %bb.a
  %.sroa.9.0 = phi ptr [ %i.e, %bb.a ], [ %.sroa.9.1, %_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail11BitBlockAndEEENS0_13BitBlockCountEv.exit ] ; 6 uses
  %.sroa.17.0 = phi i64 [ %4, %bb.a ], [ %.sroa.17.1, %_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail11BitBlockAndEEENS0_13BitBlockCountEv.exit ] ; 5 uses
  %.sroa.0.0 = phi ptr [ %i.b, %bb.a ], [ %.sroa.0.1, %_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail11BitBlockAndEEENS0_13BitBlockCountEv.exit ] ; 5 uses
  %.07 = phi i64 [ 0, %bb.a ], [ %i.ay, %_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail11BitBlockAndEEENS0_13BitBlockCountEv.exit ] ; 2 uses
  %.not.i = icmp eq i64 %.sroa.17.0, 0
  br i1 %.not.i, label %_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail11BitBlockAndEEENS0_13BitBlockCountEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = icmp slt i64 %.sroa.17.0, %i.j
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.speculated31.i = tail call i64 @llvm.smin.i64(i64 %.sroa.17.0, i64 64) ; 3 uses
  %i.m = trunc i64 %.sroa.speculated31.i to i16
  %sext.i = shl i64 %.sroa.speculated31.i, 48
  %i.n = ashr exact i64 %sext.i, 48               ; 3 uses
  %i.o = icmp sgt i64 %i.n, 0
  br i1 %i.o, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i.loopexit:                           ; preds = %.lr.ph.i
  %i.p = zext i16 %spec.select20.i to i64
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %bb.d
  %.016.lcssa.i = phi i64 [ 0, %bb.d ], [ %i.p, %._crit_edge.i.loopexit ]
  %i.q = sdiv i16 %i.m, 8
  %i.r = sext i16 %i.q to i64                     ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %.sroa.0.0, i64 %i.r
  %i.t = getelementptr inbounds i8, ptr %.sroa.9.0, i64 %i.r
  %i.u = sub nsw i64 %.sroa.17.0, %i.n
  %i.v = and i64 %.sroa.speculated31.i, 65535
  %i.w = icmp eq i64 %i.v, 0
  br label %_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail11BitBlockAndEEENS0_13BitBlockCountEv.exit

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.01540.i = phi i64 [ %i.ao, %.lr.ph.i ], [ 0, %bb.d ] ; 3 uses
  %.01639.i = phi i16 [ %spec.select20.i, %.lr.ph.i ], [ 0, %bb.d ]
  %i.x = add nsw i64 %.01540.i, %i.c              ; 2 uses
  %i.y = lshr i64 %i.x, 3
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !7
  %i.ab = trunc i64 %i.x to i8
  %i.ac = and i8 %i.ab, 7
  %i.ad = lshr i8 %i.aa, %i.ac
  %i.ae = add nsw i64 %.01540.i, %i.f             ; 2 uses
  %i.af = lshr i64 %i.ae, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.9.0, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !7
  %i.ai = trunc i64 %i.ae to i8
  %i.aj = and i8 %i.ai, 7
  %i.ak = lshr i8 %i.ah, %i.aj
  %i.al = and i8 %i.ad, 1
  %i.am = and i8 %i.al, %i.ak
  %i.an = zext nneg i8 %i.am to i16
  %spec.select20.i = add i16 %.01639.i, %i.an     ; 2 uses
  %i.ao = add nuw nsw i64 %.01540.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ao, %i.n
  br i1 %exitcond.not.i, label %._crit_edge.i.loopexit, label %.lr.ph.i, !llvm.loop !20

bb.e:                                             ; preds = %bb.c
  %.0.copyload.i.i.i = load i64, ptr %.sroa.0.0, align 1 ; 2 uses
  br i1 %brmerge.not.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.0.copyload.i.i22.i = load i64, ptr %.sroa.9.0, align 1
  %i.ap = and i64 %.0.copyload.i.i22.i, %.0.copyload.i.i.i
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8
  %.0.copyload.i.i24.i = load i64, ptr %i.aq, align 1
  %.0.i.i = tail call noundef i64 @llvm.fshr.i64(i64 %.0.copyload.i.i24.i, i64 %.0.copyload.i.i.i, i64 %i.c)
  %.0.copyload.i.i25.i = load i64, ptr %.sroa.9.0, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.9.0, i64 8
  %.0.copyload.i.i26.i = load i64, ptr %i.ar, align 1
  %.0.i27.i = tail call noundef i64 @llvm.fshr.i64(i64 %.0.copyload.i.i26.i, i64 %.0.copyload.i.i25.i, i64 %i.f)
  %i.as = and i64 %.0.i27.i, %.0.i.i
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink.i = phi i64 [ %i.as, %bb.g ], [ %i.ap, %bb.f ]
  %i.at = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %.sink.i)
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.9.0, i64 8
  %i.aw = add nsw i64 %.sroa.17.0, -64
  br label %_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail11BitBlockAndEEENS0_13BitBlockCountEv.exit

_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail11BitBlockAndEEENS0_13BitBlockCountEv.exit: ; preds = %._crit_edge.i, %bb.h
  %.sroa.9.1 = phi ptr [ %i.t, %._crit_edge.i ], [ %i.av, %bb.h ]
  %.sroa.17.1 = phi i64 [ %i.u, %._crit_edge.i ], [ %i.aw, %bb.h ]
  %.sroa.0.1 = phi ptr [ %i.s, %._crit_edge.i ], [ %i.au, %bb.h ]
  %.sroa.0.0.i = phi i1 [ %i.w, %._crit_edge.i ], [ false, %bb.h ]
  %.sroa.4.0.i = phi i64 [ %.016.lcssa.i, %._crit_edge.i ], [ %i.at, %bb.h ]
  %sext = shl nuw i64 %.sroa.4.0.i, 48
  %i.ax = ashr exact i64 %sext, 48
  %i.ay = add nsw i64 %i.ax, %.07
  br i1 %.sroa.0.0.i, label %_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail11BitBlockAndEEENS0_13BitBlockCountEv.exit.thread, label %bb.b

_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail11BitBlockAndEEENS0_13BitBlockCountEv.exit.thread: ; preds = %bb.b, %_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail11BitBlockAndEEENS0_13BitBlockCountEv.exit
  ret i64 %.07
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i8 @_ZN5arrow8internal12ReverseUint8Eh(i8 noundef zeroext %0) local_unnamed_addr #4 {
bb.a:
  %rev = tail call i8 @llvm.bitreverse.i8(i8 %0)
  ret i8 %rev
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i8 @_ZN5arrow8internal16GetReversedBlockEhhh(i8 noundef zeroext %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #4 {
bb.a:
  %i.a = zext i8 %1 to i32
  %i.b = shl nuw nsw i32 %i.a, 8
  %i.c = zext i8 %0 to i32
  %i.d = or disjoint i32 %i.b, %i.c
  %i.e = zext nneg i8 %2 to i32
  %i.f = lshr i32 %i.d, %i.e
  %i.g = trunc i32 %i.f to i8
  %rev.i = tail call noundef i8 @llvm.bitreverse.i8(i8 %i.g)
  ret i8 %rev.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN5arrow8internal19ReverseBlockOffsetsEPKhlllPh(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #5 {
bb.a:
  %i.a = sdiv i64 %1, 8
  %i.b = srem i64 %1, 8
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.a ; 2 uses
  %i.d = sdiv i64 %3, 8
  %i.e = getelementptr inbounds i8, ptr %4, i64 %i.d
  %i.f = icmp sgt i64 %2, 0
  br i1 %i.f, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.g = add nsw i64 %i.b, %2                     ; 2 uses
  %i.h = ashr i64 %i.g, 3
  %i.i = add nsw i64 %i.h, -1
  %i.j = and i64 %i.g, 7
  %i.k = icmp ne i64 %i.j, 0
  %i.l = zext i1 %i.k to i64
  %i.m = add nsw i64 %i.i, %i.l
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %.04858 = phi i64 [ %i.bd, %bb.g ], [ %2, %.lr.ph.preheader ] ; 4 uses
  %.04957 = phi i64 [ %i.bf, %bb.g ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.05056 = phi i64 [ %spec.select, %bb.g ], [ %i.m, %.lr.ph.preheader ] ; 3 uses
  %.05155 = phi i64 [ %i.bc, %bb.g ], [ %3, %.lr.ph.preheader ] ; 2 uses
  %i.n = add nsw i64 %.04858, %1
  %i.o = srem i64 %i.n, 8                         ; 2 uses
  %i.p = trunc nsw i64 %i.o to i8
  %.not = icmp eq i64 %i.o, 0
  %i.q = select i1 %.not, i8 8, i8 %i.p           ; 2 uses
  %i.r = srem i64 %.05155, 8                      ; 2 uses
  %i.s = trunc nsw i64 %i.r to i8
  %i.t = sub nsw i8 8, %i.s                       ; 3 uses
  %i.u = zext nneg i8 %i.t to i32
  %i.v = sub nsw i32 8, %i.u                      ; 2 uses
  %i.w = shl nuw nsw i32 255, %i.v                ; 3 uses
  %i.x = icmp samesign ult i64 %.04858, 9
  br i1 %i.x, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.y = add nsw i64 %.04858, %i.r                ; 2 uses
  %i.z = icmp slt i64 %i.y, 8
  br i1 %i.z, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aa = trunc nsw i64 %i.y to i32
  %i.ab = sub nsw i32 8, %i.aa                    ; 2 uses
  %i.ac = shl i32 %i.w, %i.ab
  %i.ad = and i32 %i.ac, 255
  %i.ae = lshr i32 %i.ad, %i.ab
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.lr.ph
  %.047.in = phi i32 [ %i.ae, %bb.c ], [ %i.w, %bb.b ], [ %i.w, %.lr.ph ] ; 2 uses
  %i.af = icmp eq i64 %.05056, 0
  %i.ag = zext nneg i8 %i.q to i32
  br i1 %i.af, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ah = load i8, ptr %i.c, align 1, !tbaa !7
  %i.ai = zext i8 %i.ah to i32                    ; 2 uses
  %i.aj = shl nuw nsw i32 %i.ai, 8
  %i.ak = or disjoint i32 %i.aj, %i.ai
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.al = getelementptr i8, ptr %i.c, i64 %.05056
  %i.am = getelementptr i8, ptr %i.al, i64 -1
  %i.an = load i16, ptr %i.am, align 1
  %i.ao = zext i16 %i.an to i32
  br label %bb.g
end_hunk_0
begin_hunk_1_@_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.k = phi i64 [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ]
  %i.l = icmp ugt i64 %i.e, %i.k
  br i1 %i.l, label %bb.b, label %bb.d

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.m = load ptr, ptr %2, align 8, !tbaa !95
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13: ; preds = %bb.b
  %i.p = icmp ult i64 %i.d, 16
  tail call void @llvm.assume(i1 %i.p)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12: ; preds = %bb.b
  %i.q = load i64, ptr %i.n, align 8, !tbaa !7
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12
  %i.r = phi i64 [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13 ]
  %.not = icmp ugt i64 %i.e, %i.r
  br i1 %.not, label %bb.d, label %.critedge

.critedge:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14
  %i.s = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.f, i64 noundef %i.b) ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !94
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !95   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 5 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15

bb.c:                                             ; preds = %.critedge
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !96   ; 2 uses
  %i.z = icmp ult i64 %i.y, 16
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = add nuw nsw i64 %i.y, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(1) %i.v, i64 %i.aa, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15: ; preds = %.critedge
  store ptr %i.u, ptr %0, align 8, !tbaa !95
  %i.ab = load i64, ptr %i.v, align 8, !tbaa !7
  store i64 %i.ab, ptr %i.t, align 8, !tbaa !7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !96
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !96
  store ptr %i.v, ptr %i.s, align 8, !tbaa !95
  store i64 0, ptr %i.ac, align 8, !tbaa !96
  store i8 0, ptr %i.v, align 8, !tbaa !7
  br label %bb.g

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.af = sub i64 4611686018427387903, %i.b
  %i.ag = icmp ult i64 %i.af, %i.d
  br i1 %i.ag, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #25
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit: ; preds = %bb.d
  %i.ah = load ptr, ptr %2, align 8, !tbaa !95
  %i.ai = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.ah, i64 noundef %i.d) ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.aj, ptr %0, align 8, !tbaa !94
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !95 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 5 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !96 ; 2 uses
  %i.ap = icmp ult i64 %i.ao, 16
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = add nuw nsw i64 %i.ao, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aj, ptr noundef nonnull align 8 dereferenceable(1) %i.al, i64 %i.aq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  store ptr %i.ak, ptr %0, align 8, !tbaa !95
  %i.ar = load i64, ptr %i.al, align 8, !tbaa !7
  store i64 %i.ar, ptr %i.aj, align 8, !tbaa !7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !96
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.at, ptr %i.au, align 8, !tbaa !96
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !95
  store i64 0, ptr %i.as, align 8, !tbaa !96
  store i8 0, ptr %i.al, align 8, !tbaa !7
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !94
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.4) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #21 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.d, ptr %i.a, align 8, !tbaa !10
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !95
  %i.g = load i64, ptr %i.a, align 8, !tbaa !10
  store i64 %i.g, ptr %i.b, align 8, !tbaa !7
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !7
  store i8 %i.i, ptr %i.h, align 1, !tbaa !7
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !10   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !96
  %i.l = load ptr, ptr %0, align 8, !tbaa !95
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void
}

declare void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #15

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #16

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.bitreverse.i8(i8) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshr.i64(i64, i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.ctpop.v2i64(<2 x i64>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i64> @llvm.ctpop.v4i64(<4 x i64>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v4i64(<4 x i64>) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #21 = { nounwind }
attributes #22 = { builtin allocsize(0) }
attributes #23 = { builtin nounwind }
attributes #24 = { noreturn nounwind }
attributes #25 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!5, !5, i64 0}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = distinct !{!12, !9, !13, !14}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = distinct !{!15, !9, !14, !13}
!16 = distinct !{!16, !9, !13, !14}
!17 = distinct !{!17, !9, !14, !13}
!18 = distinct !{!18, !9}
!19 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!20 = distinct !{!20, !9}
!21 = distinct !{!21, !9}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.unroll.disable"}
!24 = distinct !{!24, !9}
!25 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!26 = distinct !{!26, !9}
!27 = distinct !{!27, !9}
!28 = distinct !{!28, !23}
!29 = distinct !{!29, !9}
!30 = distinct !{!30, !9}
!31 = distinct !{!31, !9, !13, !14}
!32 = !{!"branch_weights", i32 4, i32 28}
!33 = distinct !{!33, !9, !13, !14}
!34 = distinct !{!34, !23}
!35 = distinct !{!35, !9, !13}
!36 = !{!37, !38, i64 0}
!37 = !{!"_ZTSN5arrow6StatusE", !38, i64 0}
!38 = !{!"p1 _ZTSN5arrow6Status5StateE", !39, i64 0}
!39 = !{!"any pointer", !5, i64 0}
!40 = !{!41}
!41 = distinct !{!41, !42, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv: argument 0"}
!42 = distinct !{!42, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv"}
!43 = !{!44}
!44 = distinct !{!44, !45, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv: argument 0"}
!45 = distinct !{!45, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv"}
!46 = !{!47, !48, i64 0}
!47 = !{!"_ZTSSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EE", !48, i64 0, !49, i64 8}
!48 = !{!"p1 _ZTSN5arrow6BufferE", !39, i64 0}
!49 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !50, i64 0}
!50 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !39, i64 0}
!51 = !{!44, !41}
!52 = !{!49, !50, i64 0}
!53 = !{!54, !55, i64 9}
!54 = !{!"_ZTSN5arrow6BufferE", !55, i64 8, !55, i64 9, !56, i64 16, !11, i64 24, !11, i64 32, !57, i64 40, !58, i64 48, !59, i64 64}
!55 = !{!"bool", !5, i64 0}
!56 = !{!"p1 omnipotent char", !39, i64 0}
!57 = !{!"_ZTSN5arrow20DeviceAllocationTypeE", !5, i64 0}
!58 = !{!"_ZTSSt10shared_ptrIN5arrow6BufferEE", !47, i64 0}
!59 = !{!"_ZTSSt10shared_ptrIN5arrow13MemoryManagerEE", !60, i64 0}
!60 = !{!"_ZTSSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EE", !61, i64 0, !49, i64 8}
!61 = !{!"p1 _ZTSN5arrow13MemoryManagerE", !39, i64 0}
!62 = !{i8 0, i8 2}
!63 = !{}
!64 = distinct !{!64, !9}
!65 = !{!66, !4, i64 8}
!66 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !4, i64 8, !4, i64 12}
!67 = !{!66, !4, i64 12}
!68 = !{!69, !69, i64 0}
!69 = !{!"vtable pointer", !6, i64 0}
!70 = distinct !{ptr @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev, null, null, ptr @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!71 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!72 = !{!73}
!73 = distinct !{!73, !74, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv: argument 0"}
!74 = distinct !{!74, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv"}
!75 = !{!76}
!76 = distinct !{!76, !77, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv: argument 0"}
!77 = distinct !{!77, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv"}
!78 = !{!76, !73}
!79 = distinct !{!79, !9}
!80 = !{!39, !39, i64 0}
!81 = !{!82, !84}
!82 = distinct !{!82, !83, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv: argument 0"}
!83 = distinct !{!83, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv"}
!84 = distinct !{!84, !85, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv: argument 0"}
!85 = distinct !{!85, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv"}
!86 = !{!87, !88, i64 0}
!87 = !{!"_ZTSN5arrow6Status5StateE", !88, i64 0, !89, i64 8, !91, i64 40}
!88 = !{!"_ZTSN5arrow10StatusCodeE", !5, i64 0}
!89 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !90, i64 0, !11, i64 8, !5, i64 16}
!90 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !56, i64 0}
!91 = !{!"_ZTSSt10shared_ptrIN5arrow12StatusDetailEE", !92, i64 0}
!92 = !{!"_ZTSSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EE", !93, i64 0, !49, i64 8}
!93 = !{!"p1 _ZTSN5arrow12StatusDetailE", !39, i64 0}
!94 = !{!90, !56, i64 0}
!95 = !{!89, !56, i64 0}
!96 = !{!89, !11, i64 8}
!97 = distinct !{null, null}
!98 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!99 = distinct !{!99, !9}
!100 = distinct !{!100, !9}
!101 = distinct !{!101, !9}
!102 = !{!103}
!103 = distinct !{!103, !104, !"_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_andEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll: argument 0"}
!104 = distinct !{!104, !"_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_andEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll"}
!105 = !{!106, !108, !103}
!106 = distinct !{!106, !107, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv: argument 0"}
!107 = distinct !{!107, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv"}
!108 = distinct !{!108, !109, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv: argument 0"}
!109 = distinct !{!109, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv"}
!110 = distinct !{null, ptr @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev, null, null, ptr @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!111 = distinct !{!111, !9, !13, !14}
!112 = distinct !{!112, !9, !13, !14}
!113 = distinct !{!113, !23}
!114 = distinct !{!114, !9, !13}
!115 = distinct !{!115, !9}
!116 = distinct !{!116, !9}
!117 = !{!118}
!118 = distinct !{!118, !119, !"_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt6bit_orEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll: argument 0"}
!119 = distinct !{!119, !"_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt6bit_orEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll"}
!120 = !{!121, !123, !118}
!121 = distinct !{!121, !122, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv: argument 0"}
!122 = distinct !{!122, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv"}
!123 = distinct !{!123, !124, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv: argument 0"}
!124 = distinct !{!124, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv"}
!125 = distinct !{null, ptr @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev, null, null, ptr @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!126 = distinct !{!126, !9, !13, !14}
!127 = distinct !{!127, !9, !13, !14}
!128 = distinct !{!128, !23}
!129 = distinct !{!129, !9, !13}
!130 = distinct !{!130, !9}
!131 = distinct !{!131, !9}
!132 = !{!133}
!133 = distinct !{!133, !134, !"_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_xorEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll: argument 0"}
!134 = distinct !{!134, !"_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_xorEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll"}
!135 = !{!136, !138, !133}
!136 = distinct !{!136, !137, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv: argument 0"}
!137 = distinct !{!137, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv"}
!138 = distinct !{!138, !139, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv: argument 0"}
!139 = distinct !{!139, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv"}
!140 = distinct !{null, ptr @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev, null, null, ptr @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!141 = distinct !{!141, !9, !13, !14}
!142 = distinct !{!142, !9, !13, !14}
!143 = distinct !{!143, !23}
!144 = distinct !{!144, !9, !13}
!145 = distinct !{!145, !9}
!146 = distinct !{!146, !9}
!147 = !{!148}
!148 = distinct !{!148, !149, !"_ZN5arrow8internal12_GLOBAL__N_18BitmapOpINS0_8AndNotOpEEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll: argument 0"}
!149 = distinct !{!149, !"_ZN5arrow8internal12_GLOBAL__N_18BitmapOpINS0_8AndNotOpEEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll"}
!150 = !{!151, !153, !148}
!151 = distinct !{!151, !152, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv: argument 0"}
!152 = distinct !{!152, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv"}
!153 = distinct !{!153, !154, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv: argument 0"}
!154 = distinct !{!154, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv"}
!155 = distinct !{null, ptr @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev, null, null, ptr @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!156 = distinct !{!156, !9, !13, !14}
!157 = distinct !{!157, !9, !13, !14}
!158 = distinct !{!158, !9, !13}
!159 = distinct !{!159, !9}
!160 = distinct !{!160, !9}
!161 = !{!162}
!162 = distinct !{!162, !163, !"_ZN5arrow8internal12_GLOBAL__N_18BitmapOpINS0_7OrNotOpEEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll: argument 0"}
!163 = distinct !{!163, !"_ZN5arrow8internal12_GLOBAL__N_18BitmapOpINS0_7OrNotOpEEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll"}
end_hunk_1
