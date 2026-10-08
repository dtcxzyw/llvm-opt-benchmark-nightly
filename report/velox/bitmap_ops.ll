Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/bitmap_ops?download=true
inline.NumInlined: 402
inline.NumDeleted: 154
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN5arrow8internal12CountSetBitsEPKhll:bb.a
  %i.am = insertelement <2 x i64> poison, i64 %i.ak, i64 0
  %i.an = insertelement <2 x i64> %i.am, i64 %i.al, i64 1
  %i.ao = load i64, ptr %next.gep98, align 8, !tbaa !14
  %i.ap = load i64, ptr %next.gep99, align 8, !tbaa !14
  %i.aq = insertelement <2 x i64> poison, i64 %i.ao, i64 0
  %i.ar = insertelement <2 x i64> %i.aq, i64 %i.ap, i64 1
  %i.as = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.an)
  %i.at = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.ar)
  %i.au = add <2 x i64> %vec.phi, %i.as           ; 2 uses
  %i.av = add <2 x i64> %vec.phi90, %i.at         ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.ax = getelementptr i8, ptr %i.ah, i64 40
  %i.ay = getelementptr i8, ptr %i.ai, i64 72
  %i.az = getelementptr i8, ptr %i.aj, i64 104
  %i.ba = load i64, ptr %i.aw, align 8, !tbaa !14
  %i.bb = load i64, ptr %i.ax, align 8, !tbaa !14
  %i.bc = insertelement <2 x i64> poison, i64 %i.ba, i64 0
  %i.bd = insertelement <2 x i64> %i.bc, i64 %i.bb, i64 1
  %i.be = load i64, ptr %i.ay, align 8, !tbaa !14
  %i.bf = load i64, ptr %i.az, align 8, !tbaa !14
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
  %i.bq = load i64, ptr %i.bm, align 8, !tbaa !14
  %i.br = load i64, ptr %i.bn, align 8, !tbaa !14
  %i.bs = insertelement <2 x i64> poison, i64 %i.bq, i64 0
  %i.bt = insertelement <2 x i64> %i.bs, i64 %i.br, i64 1
  %i.bu = load i64, ptr %i.bo, align 8, !tbaa !14
  %i.bv = load i64, ptr %i.bp, align 8, !tbaa !14
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
  %i.cg = load i64, ptr %i.cc, align 8, !tbaa !14
  %i.ch = load i64, ptr %i.cd, align 8, !tbaa !14
  %i.ci = insertelement <2 x i64> poison, i64 %i.cg, i64 0
  %i.cj = insertelement <2 x i64> %i.ci, i64 %i.ch, i64 1
  %i.ck = load i64, ptr %i.ce, align 8, !tbaa !14
  %i.cl = load i64, ptr %i.cf, align 8, !tbaa !14
  %i.cm = insertelement <2 x i64> poison, i64 %i.ck, i64 0
  %i.cn = insertelement <2 x i64> %i.cm, i64 %i.cl, i64 1
  %i.co = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.cj)
  %i.cp = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.cn)
  %i.cq = add <2 x i64> %vec.phi95, %i.co         ; 2 uses
  %i.cr = add <2 x i64> %vec.phi96, %i.cp         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cs = icmp eq i64 %index.next, %n.vec
  br i1 %i.cs, label %middle.block, label %vector.body, !llvm.loop !56

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
  br i1 %cmp.n, label %.preheader45, label %.preheader46.preheader126

.preheader46.preheader126:                        ; preds = %.preheader46.preheader, %middle.block
  %.03851.ph = phi i64 [ 0, %.preheader46.preheader ], [ %i.ad, %middle.block ]
  %.03950.ph = phi ptr [ %i.m, %.preheader46.preheader ], [ %i.af, %middle.block ]
  %.ph = phi <4 x i64> [ zeroinitializer, %.preheader46.preheader ], [ %i.da, %middle.block ]
  br label %.preheader46

.preheader46:                                     ; preds = %.preheader46.preheader126, %.preheader46
  %.03851 = phi i64 [ %i.dg, %.preheader46 ], [ %.03851.ph, %.preheader46.preheader126 ]
  %.03950 = phi ptr [ %i.df, %.preheader46 ], [ %.03950.ph, %.preheader46.preheader126 ] ; 2 uses
  %i.db = phi <4 x i64> [ %i.de, %.preheader46 ], [ %.ph, %.preheader46.preheader126 ]
  %i.dc = load <4 x i64>, ptr %.03950, align 8, !tbaa !14
  %i.dd = tail call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %i.dc)
  %i.de = add <4 x i64> %i.db, %i.dd              ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.03950, i64 32 ; 2 uses
  %i.dg = add nuw nsw i64 %.03851, 4              ; 2 uses
  %i.dh = icmp samesign ult i64 %i.dg, %i.z
  br i1 %i.dh, label %.preheader46, label %.preheader45, !llvm.loop !57

.preheader45:                                     ; preds = %.preheader46, %middle.block, %bb.b
  %.039.lcssa = phi ptr [ %i.m, %bb.b ], [ %i.af, %middle.block ], [ %i.df, %.preheader46 ] ; 5 uses
  %i.di = phi <4 x i64> [ zeroinitializer, %bb.b ], [ %i.da, %middle.block ], [ %i.de, %.preheader46 ]
  %i.dj = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.di)
  %op.rdx = add i64 %i.dj, %.041.lcssa            ; 3 uses
  %i.dk = icmp ult ptr %.039.lcssa, %i.y
  br i1 %i.dk, label %.lr.ph57.preheader, label %._crit_edge58

.lr.ph57.preheader:                               ; preds = %.preheader45
  %i.dl = shl nuw nsw i64 %i.h, 3
  %i.dm = ptrtoaddr ptr %.039.lcssa to i64
  %i.dn = add i64 %i.l, %i.a
  %i.do = add i64 %i.dn, %i.dl
  %i.dp = xor i64 %i.dm, -1
  %i.dq = add i64 %i.do, %i.dp                    ; 2 uses
  %i.dr = lshr i64 %i.dq, 3
  %i.ds = add nuw nsw i64 %i.dr, 1                ; 2 uses
  %min.iters.check108 = icmp ult i64 %i.dq, 24
  br i1 %min.iters.check108, label %.lr.ph57.preheader123, label %vector.ph109

vector.ph109:                                     ; preds = %.lr.ph57.preheader
  %n.vec110 = and i64 %i.ds, 4611686018427387900  ; 3 uses
  %i.dt = shl i64 %n.vec110, 3
  %i.du = getelementptr i8, ptr %.039.lcssa, i64 %i.dt
  %i.dv = insertelement <2 x i64> <i64 poison, i64 0>, i64 %op.rdx, i64 0
  br label %vector.body111

vector.body111:                                   ; preds = %vector.body111, %vector.ph109
  %index112 = phi i64 [ 0, %vector.ph109 ], [ %index.next117, %vector.body111 ] ; 2 uses
  %vec.phi113 = phi <2 x i64> [ %i.dv, %vector.ph109 ], [ %i.ea, %vector.body111 ]
  %vec.phi114 = phi <2 x i64> [ zeroinitializer, %vector.ph109 ], [ %i.eb, %vector.body111 ]
  %i.dw = shl i64 %index112, 3
  %next.gep115 = getelementptr i8, ptr %.039.lcssa, i64 %i.dw ; 2 uses
  %i.dx = getelementptr i8, ptr %next.gep115, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep115, align 8, !tbaa !14
  %wide.load116 = load <2 x i64>, ptr %i.dx, align 8, !tbaa !14
  %i.dy = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load)
  %i.dz = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load116)
  %i.ea = add <2 x i64> %i.dy, %vec.phi113        ; 2 uses
  %i.eb = add <2 x i64> %i.dz, %vec.phi114        ; 2 uses
  %index.next117 = add nuw i64 %index112, 4       ; 2 uses
  %i.ec = icmp eq i64 %index.next117, %n.vec110
  br i1 %i.ec, label %middle.block118, label %vector.body111, !llvm.loop !58

middle.block118:                                  ; preds = %vector.body111
  %bin.rdx119 = add <2 x i64> %i.eb, %i.ea
  %i.ed = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx119) ; 2 uses
  %cmp.n120 = icmp eq i64 %i.ds, %n.vec110
  br i1 %cmp.n120, label %._crit_edge58, label %.lr.ph57.preheader123

.lr.ph57.preheader123:                            ; preds = %.lr.ph57.preheader, %middle.block118
  %.156.ph = phi ptr [ %.039.lcssa, %.lr.ph57.preheader ], [ %i.du, %middle.block118 ]
  %.355.ph = phi i64 [ %op.rdx, %.lr.ph57.preheader ], [ %i.ed, %middle.block118 ]
  br label %.lr.ph57

.lr.ph57:                                         ; preds = %.lr.ph57.preheader123, %.lr.ph57
  %.156 = phi ptr [ %i.eh, %.lr.ph57 ], [ %.156.ph, %.lr.ph57.preheader123 ] ; 2 uses
  %.355 = phi i64 [ %i.eg, %.lr.ph57 ], [ %.355.ph, %.lr.ph57.preheader123 ]
  %i.ee = load i64, ptr %.156, align 8, !tbaa !14
  %i.ef = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ee)
  %i.eg = add i64 %i.ef, %.355                    ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.156, i64 8 ; 2 uses
  %i.ei = icmp ult ptr %i.eh, %i.y
  br i1 %i.ei, label %.lr.ph57, label %._crit_edge58, !llvm.loop !59

._crit_edge58:                                    ; preds = %.lr.ph57, %middle.block118, %.preheader45, %._crit_edge
  %.4 = phi i64 [ %.041.lcssa, %._crit_edge ], [ %op.rdx, %.preheader45 ], [ %i.ed, %middle.block118 ], [ %i.eg, %.lr.ph57 ] ; 2 uses
  %i.ej = add nsw i64 %2, %1                      ; 2 uses
  %i.ek = icmp slt i64 %i.k, %i.ej
  br i1 %i.ek, label %.lr.ph63, label %._crit_edge64

._crit_edge64:                                    ; preds = %.lr.ph63, %._crit_edge58
  %.5.lcssa = phi i64 [ %.4, %._crit_edge58 ], [ %spec.select44, %.lr.ph63 ]
  ret i64 %.5.lcssa

.lr.ph63:                                         ; preds = %._crit_edge58, %.lr.ph63
  %.061 = phi i64 [ %i.et, %.lr.ph63 ], [ %i.k, %._crit_edge58 ] ; 3 uses
  %.560 = phi i64 [ %spec.select44, %.lr.ph63 ], [ %.4, %._crit_edge58 ]
  %i.el = lshr i64 %.061, 3
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 %i.el
  %i.en = load i8, ptr %i.em, align 1, !tbaa !11
  %i.eo = trunc i64 %.061 to i8
  %i.ep = and i8 %i.eo, 7
  %i.eq = lshr i8 %i.en, %i.ep
  %i.er = and i8 %i.eq, 1
  %i.es = zext nneg i8 %i.er to i64
  %spec.select44 = add nsw i64 %.560, %i.es       ; 2 uses
  %i.et = add nsw i64 %.061, 1                    ; 2 uses
  %i.eu = icmp slt i64 %i.et, %i.ej
  br i1 %i.eu, label %.lr.ph63, label %._crit_edge64, !llvm.loop !60
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
  %5 = srem i64 %1, 8                             ; 5 uses
  %i.a = sdiv i64 %1, 8
  %i.b = srem i64 %3, 8                           ; 5 uses
  %i.c = sdiv i64 %3, 8
  %.not36.i = icmp eq i64 %5, 0
  %i.d = sub nsw i64 128, %5
  %spec.select.i = select i1 %.not36.i, i64 64, i64 %i.d
  %.not37.i = icmp eq i64 %i.b, 0
  %i.e = sub nsw i64 128, %i.b
  %i.f = select i1 %.not37.i, i64 64, i64 %i.e
  %i.g = tail call i64 @llvm.umax.i64(i64 %spec.select.i, i64 %i.f)
  %i.h = or i64 %i.b, %5
  %brmerge.not.i = icmp eq i64 %i.h, 0
  %brmerge.not.i.a = icmp eq i64 %4, 0
  br i1 %brmerge.not.i.a, label %_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail11BitBlockAndEEENS0_13BitBlockCountEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i7.i = icmp eq ptr %2, null
  %_ZN5arrow4util8internalL14kNonNullFillerE..i8.i = select i1 %.not.i7.i, ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %2, !prof !17
  %6 = getelementptr inbounds i8, ptr %_ZN5arrow4util8internalL14kNonNullFillerE..i8.i, i64 %i.c
  %.not.i.i = icmp eq ptr %0, null
  %_ZN5arrow4util8internalL14kNonNullFillerE..i.i = select i1 %.not.i.i, ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %0, !prof !17
  %7 = getelementptr inbounds i8, ptr %_ZN5arrow4util8internalL14kNonNullFillerE..i.i, i64 %i.a
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.backedge
  %.0721 = phi i64 [ 0, %bb.b ], [ %.07.be, %.backedge ] ; 2 uses
  %.sroa.0.020 = phi ptr [ %7, %bb.b ], [ %.sroa.0.0.be, %.backedge ] ; 5 uses
  %.sroa.9.019 = phi ptr [ %6, %bb.b ], [ %.sroa.9.0.be, %.backedge ] ; 6 uses
  %.sroa.17.018 = phi i64 [ %4, %bb.b ], [ %.sroa.17.0.be, %.backedge ] ; 4 uses
  %i.i = icmp slt i64 %.sroa.17.018, %i.g
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.speculated31.i = tail call i64 @llvm.smin.i64(i64 %.sroa.17.018, i64 64) ; 3 uses
  %i.j = trunc i64 %.sroa.speculated31.i to i16
  %sext.i = shl i64 %.sroa.speculated31.i, 48
  %i.k = ashr exact i64 %sext.i, 48               ; 3 uses
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i.loopexit:                           ; preds = %.lr.ph.i
  %8 = sext i16 %spec.select20.i to i64
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %bb.d
  %.016.lcssa.i = phi i64 [ 0, %bb.d ], [ %8, %._crit_edge.i.loopexit ]
  %i.m = sdiv i16 %i.j, 8
  %i.n = sext i16 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %.sroa.0.020, i64 %i.n
  %i.p = getelementptr inbounds i8, ptr %.sroa.9.019, i64 %i.n
  %i.q = sub nsw i64 %.sroa.17.018, %i.k
  %i.r = and i64 %.sroa.speculated31.i, 65535
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail11BitBlockAndEEENS0_13BitBlockCountEv.exit, label %.backedge

.backedge:                                        ; preds = %._crit_edge.i, %bb.h
  %.sroa.17.0.be = phi i64 [ %i.as, %bb.h ], [ %i.q, %._crit_edge.i ] ; 2 uses
  %.sroa.9.0.be = phi ptr [ %i.ar, %bb.h ], [ %i.p, %._crit_edge.i ]
  %.sroa.0.0.be = phi ptr [ %i.aq, %bb.h ], [ %i.o, %._crit_edge.i ]
  %.pn = phi i64 [ %i.ap, %bb.h ], [ %.016.lcssa.i, %._crit_edge.i ]
  %.07.be = add nsw i64 %.pn, %.0721              ; 2 uses
  %.not.i = icmp eq i64 %.sroa.17.0.be, 0
  br i1 %.not.i, label %_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail11BitBlockAndEEENS0_13BitBlockCountEv.exit, label %bb.c

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.01540.i = phi i64 [ %i.ak, %.lr.ph.i ], [ 0, %bb.d ] ; 3 uses
  %.01639.i = phi i16 [ %spec.select20.i, %.lr.ph.i ], [ 0, %bb.d ]
  %i.t = add nsw i64 %.01540.i, %5                ; 2 uses
  %i.u = lshr i64 %i.t, 3
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.020, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !11
  %i.x = trunc i64 %i.t to i8
  %i.y = and i8 %i.x, 7
  %i.z = lshr i8 %i.w, %i.y
  %i.aa = add nsw i64 %.01540.i, %i.b             ; 2 uses
  %i.ab = lshr i64 %i.aa, 3
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.9.019, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !11
  %i.ae = trunc i64 %i.aa to i8
  %i.af = and i8 %i.ae, 7
  %i.ag = lshr i8 %i.ad, %i.af
  %i.ah = and i8 %i.z, 1
  %i.ai = and i8 %i.ah, %i.ag
  %i.aj = zext nneg i8 %i.ai to i16
  %spec.select20.i = add i16 %.01639.i, %i.aj     ; 2 uses
  %i.ak = add nuw nsw i64 %.01540.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ak, %i.k
  br i1 %exitcond.not.i, label %._crit_edge.i.loopexit, label %.lr.ph.i, !llvm.loop !61

bb.e:                                             ; preds = %bb.c
  %.0.copyload.i.i.i = load i64, ptr %.sroa.0.020, align 1 ; 2 uses
  br i1 %brmerge.not.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.0.copyload.i.i22.i = load i64, ptr %.sroa.9.019, align 1
  %i.al = and i64 %.0.copyload.i.i22.i, %.0.copyload.i.i.i
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.020, i64 8
  %.0.copyload.i.i24.i = load i64, ptr %i.am, align 1
  %.0.i.i = tail call noundef i64 @llvm.fshr.i64(i64 %.0.copyload.i.i24.i, i64 %.0.copyload.i.i.i, i64 %5)
  %.0.copyload.i.i25.i = load i64, ptr %.sroa.9.019, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.9.019, i64 8
  %.0.copyload.i.i26.i = load i64, ptr %i.an, align 1
  %.0.i27.i = tail call noundef i64 @llvm.fshr.i64(i64 %.0.copyload.i.i26.i, i64 %.0.copyload.i.i25.i, i64 %i.b)
  %i.ao = and i64 %.0.i27.i, %.0.i.i
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.sink.i = phi i64 [ %i.ao, %bb.g ], [ %i.al, %bb.f ]
  %i.ap = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %.sink.i)
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.020, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.9.019, i64 8
  %i.as = add nsw i64 %.sroa.17.018, -64
  br label %.backedge

_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail11BitBlockAndEEENS0_13BitBlockCountEv.exit: ; preds = %.backedge, %._crit_edge.i, %bb.a
  %.07.lcssa = phi i64 [ 0, %bb.a ], [ %.07.be, %.backedge ], [ %.0721, %._crit_edge.i ]
  ret i64 %.07.lcssa
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
  %.04858 = phi i64 [ %i.bf, %bb.g ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.04957 = phi i64 [ %spec.select, %bb.g ], [ %i.m, %.lr.ph.preheader ] ; 3 uses
  %.05056 = phi i64 [ %i.bc, %bb.g ], [ %3, %.lr.ph.preheader ] ; 2 uses
  %.05155 = phi i64 [ %i.bd, %bb.g ], [ %2, %.lr.ph.preheader ] ; 4 uses
  %i.n = add nsw i64 %.05155, %1
  %i.o = srem i64 %i.n, 8                         ; 2 uses
  %i.p = trunc nsw i64 %i.o to i8
  %.not = icmp eq i64 %i.o, 0
  %i.q = select i1 %.not, i8 8, i8 %i.p           ; 2 uses
  %i.r = srem i64 %.05056, 8                      ; 2 uses
  %i.s = trunc nsw i64 %i.r to i8
  %i.t = sub nsw i8 8, %i.s                       ; 3 uses
  %i.u = zext nneg i8 %i.t to i32
  %i.v = sub nsw i32 8, %i.u                      ; 2 uses
  %i.w = shl nuw nsw i32 255, %i.v                ; 3 uses
  %i.x = icmp samesign ult i64 %.05155, 9
  br i1 %i.x, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.y = add nsw i64 %i.r, %.05155                ; 2 uses
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
  %i.af = icmp eq i64 %.04957, 0
  %i.ag = zext nneg i8 %i.q to i32
  br i1 %i.af, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ah = load i8, ptr %i.c, align 1, !tbaa !11
  %i.ai = zext i8 %i.ah to i32                    ; 2 uses
  %i.aj = shl nuw nsw i32 %i.ai, 8
  %i.ak = or disjoint i32 %i.aj, %i.ai
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.al = getelementptr i8, ptr %i.c, i64 %.04957
  %i.am = getelementptr i8, ptr %i.al, i64 -1
  %i.an = load i16, ptr %i.am, align 1
  %i.ao = zext i16 %i.an to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink = phi i32 [ %i.ao, %bb.f ], [ %i.ak, %bb.e ]
  %i.ap = lshr i32 %.sink, %i.ag
  %i.aq = trunc i32 %i.ap to i8
  %rev.i.i54 = tail call noundef i8 @llvm.bitreverse.i8(i8 %i.aq)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 %.04858 ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !11
  %i.at = trunc i32 %.047.in to i8
  %i.au = xor i8 %i.at, -1
  %i.av = and i8 %i.as, %i.au
  %i.aw = zext i8 %rev.i.i54 to i32
  %i.ax = shl nuw nsw i32 %i.aw, %i.v
  %i.ay = and i32 %i.ax, %.047.in
  %i.az = trunc i32 %i.ay to i8
  %i.ba = or i8 %i.av, %i.az
  store i8 %i.ba, ptr %i.ar, align 1, !tbaa !11
  %i.bb = zext nneg i8 %i.t to i64                ; 2 uses
  %i.bc = add nsw i64 %.05056, %i.bb
  %i.bd = sub nsw i64 %.05155, %i.bb              ; 2 uses
  %.not53 = icmp uge i8 %i.t, %i.q
  %i.be = sext i1 %.not53 to i64
  %spec.select = add nsw i64 %.04957, %i.be
  %i.bf = add nuw nsw i64 %.04858, 1
  %i.bg = icmp sgt i64 %i.bd, 0
  br i1 %i.bg, label %.lr.ph, label %._crit_edge, !llvm.loop !0

._crit_edge:                                      ; preds = %bb.g, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow8internal10CopyBitmapEPKhllPhl(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #6 {
bb.a:
  tail call void @_ZN5arrow8internal14TransferBitmapILNS0_12TransferModeE0EEEvPKhlllPh(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %4, ptr noundef %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal14TransferBitmapILNS0_12TransferModeE0EEEvPKhlllPh(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = or i64 %3, %1
  %i.b = and i64 %i.a, 7
  %or.cond.not = icmp eq i64 %i.b, 0
  br i1 %or.cond.not, label %bb.af, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = srem i64 %1, 8                           ; 10 uses
  %i.d = sdiv i64 %1, 8
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d ; 8 uses
  %i.f = lshr i64 %2, 6                           ; 3 uses
  %spec.select.i = tail call i64 @llvm.usub.sat.i64(i64 %i.f, i64 1) ; 5 uses
  %i.g = shl nuw i64 %spec.select.i, 6
  %i.h = sub i64 %2, %i.g                         ; 2 uses
  %i.i = trunc i64 %i.h to i32
  %sext.i = shl i64 %i.h, 32
  %i.j = ashr i64 %sext.i, 35
  %i.k = and i64 %2, 7
  %i.l = icmp ne i64 %i.k, 0
  %i.m = zext i1 %i.l to i64
  %i.n = add nsw i64 %i.j, %i.m                   ; 2 uses
  %i.o = trunc nsw i64 %i.n to i32
  %.not.i = icmp ult i64 %2, 128                  ; 2 uses
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.0.copyload.i.i.i = load i64, ptr %i.e, align 1
  br label %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit

bb.d:                                             ; preds = %bb.b
  %.not8.i = icmp eq i64 %2, 0
  br i1 %.not8.i, label %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.0.copyload.i.i7.i = load i8, ptr %i.e, align 1
  %.sroa.23.40.insert.ext = zext i8 %.0.copyload.i.i7.i to i64
  br label %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit

_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit: ; preds = %bb.c, %bb.e
  %.sroa.23.2 = phi i64 [ %.0.copyload.i.i.i, %bb.c ], [ %.sroa.23.40.insert.ext, %bb.e ] ; 5 uses
  %i.p = srem i64 %3, 8                           ; 5 uses
  %i.q = sdiv i64 %3, 8
  %i.r = getelementptr inbounds i8, ptr %4, i64 %i.q ; 7 uses
  %i.s = trunc nsw i64 %i.p to i32                ; 4 uses
  %notmask.i = shl nsw i32 -1, %i.s
  %i.t = xor i32 %notmask.i, -1
  %i.u = zext nneg i32 %i.t to i64                ; 8 uses
  %.not.i39 = icmp eq i64 %i.p, 0                 ; 3 uses
  br i1 %.not.i39, label %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit, label %bb.f

_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit.thread: ; preds = %bb.d
  %i.v = srem i64 %3, 8                           ; 3 uses
  %i.w = sdiv i64 %3, 8
  %i.x = getelementptr inbounds i8, ptr %4, i64 %i.w
  %i.y = trunc nsw i64 %i.v to i32                ; 2 uses
  %notmask.i137 = shl nsw i32 -1, %i.y
  %i.z = xor i32 %notmask.i137, -1
  %i.aa = zext nneg i32 %i.z to i64
  %.not.i39138 = icmp eq i64 %i.v, 0
  br label %.preheader

bb.f:                                             ; preds = %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit
  %i.ab = icmp sgt i64 %2, 63
  br i1 %i.ab, label %bb.g, label %bb.h

end_hunk_0
