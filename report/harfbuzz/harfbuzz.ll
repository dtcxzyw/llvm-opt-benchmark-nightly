Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/harfbuzz?download=true
inline.NumInlined: 35471
inline.NumDeleted: 12449
loop-unroll.NumCompletelyUnrolled: 169
loop-unroll.NumRuntimeUnrolled: 274
loop-unroll.NumUnrolled: 473
begin_hunk_0_@_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEEixEj:bb.a
  %i.y = zext i16 %i.x to i32
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit11

_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit.thread20: ; preds = %bb.b
  %i.z = zext i32 %1 to i64
  %i.aa = getelementptr inbounds nuw [3 x i8], ptr %i.e, i64 %i.z ; 3 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !280
  %i.ac = zext i8 %i.ab to i32
  %i.ad = shl nuw nsw i32 %i.ac, 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !280
  %i.ag = zext i8 %i.af to i32
  %i.ah = shl nuw nsw i32 %i.ag, 8
  %i.ai = or disjoint i32 %i.ah, %i.ad
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !280
  %i.al = zext i8 %i.ak to i32
  %i.am = or disjoint i32 %i.ai, %i.al
  %i.an = add nuw i32 %1, 1
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [3 x i8], ptr %i.e, i64 %i.ao ; 3 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !280
  %i.ar = zext i8 %i.aq to i32
  %i.as = shl nuw nsw i32 %i.ar, 16
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  %i.au = load i8, ptr %i.at, align 1, !tbaa !280
  %i.av = zext i8 %i.au to i32
  %i.aw = shl nuw nsw i32 %i.av, 8
  %i.ax = or disjoint i32 %i.aw, %i.as
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !280
  %i.ba = zext i8 %i.az to i32
  %i.bb = or disjoint i32 %i.ax, %i.ba
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit11

_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit.thread23: ; preds = %bb.b
  %i.bc = zext i32 %1 to i64
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 1, !tbaa !278
  %i.bf = tail call noundef i32 @llvm.bswap.i32(i32 %i.be)
  %i.bg = add nuw i32 %1, 1
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 1, !tbaa !278
  %i.bk = tail call noundef i32 @llvm.bswap.i32(i32 %i.bj)
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit11

_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit11: ; preds = %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit.thread, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit.thread17, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit.thread20, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit.thread23
  %.0.i16 = phi i32 [ %i.bf, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit.thread23 ], [ %i.i, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit.thread ], [ %i.s, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit.thread17 ], [ %i.am, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit.thread20 ] ; 2 uses
  %.0.i10 = phi i32 [ %i.bk, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit.thread23 ], [ %i.n, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit.thread ], [ %i.y, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit.thread17 ], [ %i.bb, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit.thread20 ] ; 2 uses
  %i.bl = icmp ult i32 %.0.i10, %.0.i16
  br i1 %i.bl, label %.critedge, label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit11.thread, !prof !478

_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit11.thread: ; preds = %bb.b, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit11
  %.0.i1029 = phi i32 [ %.0.i10, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit11 ], [ 0, %bb.b ] ; 2 uses
  %.0.i1628 = phi i32 [ %.0.i16, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit11 ], [ 0, %bb.b ] ; 2 uses
  %i.bm = load i32, ptr %0, align 1, !tbaa !278
  %i.bn = tail call noundef i32 @llvm.bswap.i32(i32 %i.bm) ; 5 uses
  switch i8 %i.d, label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit13 [
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

bb.c:                                             ; preds = %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit11.thread
  %i.bo = zext i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !303
  %i.br = zext i8 %i.bq to i32
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit13

bb.d:                                             ; preds = %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit11.thread
  %i.bs = zext i32 %i.bn to i64
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.bs
  %i.bu = load i16, ptr %i.bt, align 1, !tbaa !283
  %i.bv = tail call noundef i16 @llvm.bswap.i16(i16 %i.bu)
  %i.bw = zext i16 %i.bv to i32
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit13

bb.e:                                             ; preds = %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit11.thread
  %i.bx = zext i32 %i.bn to i64
  %i.by = getelementptr inbounds nuw [3 x i8], ptr %i.e, i64 %i.bx ; 3 uses
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !280
  %i.ca = zext i8 %i.bz to i32
  %i.cb = shl nuw nsw i32 %i.ca, 16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 1
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !280
  %i.ce = zext i8 %i.cd to i32
  %i.cf = shl nuw nsw i32 %i.ce, 8
  %i.cg = or disjoint i32 %i.cf, %i.cb
  %i.ch = getelementptr inbounds nuw i8, ptr %i.by, i64 2
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !280
  %i.cj = zext i8 %i.ci to i32
  %i.ck = or disjoint i32 %i.cg, %i.cj
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit13

bb.f:                                             ; preds = %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit11.thread
  %i.cl = zext i32 %i.bn to i64
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 1, !tbaa !278
  %i.co = tail call noundef i32 @llvm.bswap.i32(i32 %i.cn)
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit13

_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit13: ; preds = %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit11.thread, %bb.c, %bb.d, %bb.e, %bb.f
  %.0.i12 = phi i32 [ %i.co, %bb.f ], [ %i.br, %bb.c ], [ %i.bw, %bb.d ], [ %i.ck, %bb.e ], [ 0, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit11.thread ]
  %i.cp = icmp ugt i32 %.0.i1029, %.0.i12
  br i1 %i.cp, label %.critedge, label %bb.g, !prof !267

bb.g:                                             ; preds = %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit13
  %i.cq = zext i8 %i.d to i32
  %i.cr = add i32 %i.bn, 1
  %i.cs = mul i32 %i.cr, %i.cq
  %i.ct = zext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ct
  %i.cv = zext i32 %.0.i1628 to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cv
  %i.cx = sub i32 %.0.i1029, %.0.i1628
  %.sroa.6.8.insert.ext = zext i32 %i.cx to i64
  br label %.critedge

.critedge:                                        ; preds = %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit13, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit11, %bb.a, %bb.g
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.cw, %bb.g ], [ null, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit11 ], [ null, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit13 ]
  %.sroa.6.0 = phi i64 [ 0, %bb.a ], [ %.sroa.6.8.insert.ext, %bb.g ], [ 0, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit11 ], [ 0, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit13 ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.6.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK2OT23MultiItemVariationStore12create_cacheEPNS_17hb_scalar_cache_tE(ptr noundef nonnull align 1 dereferenceable(12) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i32, ptr %i.a, align 1, !tbaa !278  ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  %i.d = tail call i32 @llvm.bswap.i32(i32 %i.b)
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  %.0.i.i = select i1 %i.c, ptr @_hb_NullPool, ptr %i.f, !prof !267
  %i.g = load i16, ptr %.0.i.i, align 1, !tbaa !283 ; 2 uses
  %i.h = tail call noundef i16 @llvm.bswap.i16(i16 %i.g) ; 8 uses
  %i.i = zext i16 %i.h to i32                     ; 4 uses
  %.not.i = icmp eq i16 %i.g, 0
  br i1 %.not.i, label %_ZN2OT17hb_scalar_cache_t6createEjPS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ne ptr %1, null
  %i.k = icmp ult i16 %i.h, 129
  %or.cond.i = and i1 %i.j, %i.k
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 %i.i, ptr %1, align 4, !tbaa !480
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 12 uses
  %i.m = icmp samesign ugt i16 %i.h, 3
  br i1 %i.m, label %.lr.ph.i.preheader.i, label %.preheader.i.i

.lr.ph.i.preheader.i:                             ; preds = %bb.c
  %i.n = zext nneg i16 %i.h to i64
  %i.o = add nsw i64 %i.n, -4                     ; 2 uses
  %i.p = lshr i64 %i.o, 2                         ; 2 uses
  %i.q = add nuw nsw i64 %i.p, 1                  ; 2 uses
  %i.r = icmp eq i64 %i.p, 0
  br i1 %i.r, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.preheader.i.new

.lr.ph.i.preheader.i.new:                         ; preds = %.lr.ph.i.preheader.i
  %unroll_iter19 = and i64 %i.q, 9223372036854775806
  br label %.lr.ph.i.i

.preheader.i.loopexit.i.unr-lcssa:                ; preds = %.lr.ph.i.i
  %i.s = and i64 %i.o, 4
  %lcmp.mod16.not.not = icmp eq i64 %i.s, 0
  br i1 %lcmp.mod16.not.not, label %.lr.ph.i.i.epil.preheader, label %.preheader.i.loopexit.i

.lr.ph.i.i.epil.preheader:                        ; preds = %.preheader.i.loopexit.i.unr-lcssa, %.lr.ph.i.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader.i ], [ %indvars.iv.next.i.1, %.preheader.i.loopexit.i.unr-lcssa ] ; 2 uses
  %lcmp.mod18 = trunc i64 %i.q to i1
  tail call void @llvm.assume(i1 %lcmp.mod18)
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i.epil.init ; 4 uses
  store atomic i32 -2147483648, ptr %i.t monotonic, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  store atomic i32 -2147483648, ptr %i.u monotonic, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store atomic i32 -2147483648, ptr %i.v monotonic, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store atomic i32 -2147483648, ptr %i.w monotonic, align 4
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil.init, 4
  br label %.preheader.i.loopexit.i

.preheader.i.loopexit.i:                          ; preds = %.preheader.i.loopexit.i.unr-lcssa, %.lr.ph.i.i.epil.preheader
  %indvars.iv.next.i.lcssa = phi i64 [ %indvars.iv.next.i.1, %.preheader.i.loopexit.i.unr-lcssa ], [ %indvars.iv.next.i.epil, %.lr.ph.i.i.epil.preheader ]
  %i.x = trunc nuw nsw i64 %indvars.iv.next.i.lcssa to i32
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.loopexit.i, %bb.c
  %.0.lcssa.i.i = phi i32 [ 0, %bb.c ], [ %i.x, %.preheader.i.loopexit.i ] ; 2 uses
  %i.y = icmp samesign ult i32 %.0.lcssa.i.i, %i.i
  br i1 %i.y, label %.lr.ph18.preheader.i.i, label %_ZN2OT17hb_scalar_cache_t6createEjPS0_.exit

.lr.ph18.preheader.i.i:                           ; preds = %.preheader.i.i
  %i.z = zext nneg i32 %.0.lcssa.i.i to i64       ; 4 uses
  %wide.trip.count.i.i = zext nneg i16 %i.h to i64 ; 3 uses
  %i.aa = sub nsw i64 %wide.trip.count.i.i, %i.z
  %xtraiter21 = and i64 %i.aa, 7                  ; 2 uses
  %lcmp.mod22.not = icmp eq i64 %xtraiter21, 0
  br i1 %lcmp.mod22.not, label %.lr.ph18.i.i.prol.loopexit, label %.lr.ph18.i.i.prol

.lr.ph18.i.i.prol:                                ; preds = %.lr.ph18.preheader.i.i, %.lr.ph18.i.i.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %.lr.ph18.i.i.prol ], [ %i.z, %.lr.ph18.preheader.i.i ] ; 2 uses
  %prol.iter23 = phi i64 [ %prol.iter23.next, %.lr.ph18.i.i.prol ], [ 0, %.lr.ph18.preheader.i.i ]
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i.i.prol
  store atomic i32 -2147483648, ptr %i.ab monotonic, align 4
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter23.next = add i64 %prol.iter23, 1     ; 2 uses
  %prol.iter23.cmp.not = icmp eq i64 %prol.iter23.next, %xtraiter21
  br i1 %prol.iter23.cmp.not, label %.lr.ph18.i.i.prol.loopexit, label %.lr.ph18.i.i.prol, !llvm.loop !2155

.lr.ph18.i.i.prol.loopexit:                       ; preds = %.lr.ph18.i.i.prol, %.lr.ph18.preheader.i.i
  %indvars.iv.i.i.unr = phi i64 [ %i.z, %.lr.ph18.preheader.i.i ], [ %indvars.iv.next.i.i.prol, %.lr.ph18.i.i.prol ]
  %i.ac = sub nsw i64 %i.z, %wide.trip.count.i.i
  %i.ad = icmp ugt i64 %i.ac, -8
  br i1 %i.ad, label %_ZN2OT17hb_scalar_cache_t6createEjPS0_.exit, label %.lr.ph18.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.preheader.i.new ], [ %indvars.iv.next.i.1, %.lr.ph.i.i ] ; 3 uses
  %niter20 = phi i64 [ 0, %.lr.ph.i.preheader.i.new ], [ %niter20.next.1, %.lr.ph.i.i ]
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i ; 4 uses
  store atomic i32 -2147483648, ptr %i.ae monotonic, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  store atomic i32 -2147483648, ptr %i.af monotonic, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store atomic i32 -2147483648, ptr %i.ag monotonic, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  store atomic i32 -2147483648, ptr %i.ah monotonic, align 4
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store atomic i32 -2147483648, ptr %i.aj monotonic, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 20
  store atomic i32 -2147483648, ptr %i.ak monotonic, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store atomic i32 -2147483648, ptr %i.al monotonic, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 28
  store atomic i32 -2147483648, ptr %i.am monotonic, align 4
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 8 ; 3 uses
  %niter20.next.1 = add i64 %niter20, 2           ; 2 uses
  %niter20.ncmp.1.not = icmp eq i64 %niter20.next.1, %unroll_iter19
  br i1 %niter20.ncmp.1.not, label %.preheader.i.loopexit.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !5

.lr.ph18.i.i:                                     ; preds = %.lr.ph18.i.i.prol.loopexit, %.lr.ph18.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.7, %.lr.ph18.i.i ], [ %indvars.iv.i.i.unr, %.lr.ph18.i.i.prol.loopexit ] ; 9 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i.i
  store atomic i32 -2147483648, ptr %i.an monotonic, align 4
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  store atomic i32 -2147483648, ptr %i.ap monotonic, align 4
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store atomic i32 -2147483648, ptr %i.ar monotonic, align 4
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  store atomic i32 -2147483648, ptr %i.at monotonic, align 4
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store atomic i32 -2147483648, ptr %i.av monotonic, align 4
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 20
  store atomic i32 -2147483648, ptr %i.ax monotonic, align 4
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  store atomic i32 -2147483648, ptr %i.az monotonic, align 4
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 28
  store atomic i32 -2147483648, ptr %i.bb monotonic, align 4
  %indvars.iv.next.i.i.7 = add nuw nsw i64 %indvars.iv.i.i, 8 ; 2 uses
  %exitcond.not.i.i.7 = icmp eq i64 %indvars.iv.next.i.i.7, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.7, label %_ZN2OT17hb_scalar_cache_t6createEjPS0_.exit, label %.lr.ph18.i.i, !llvm.loop !6

bb.d:                                             ; preds = %bb.b
  %i.bc = zext i16 %i.h to i64                    ; 4 uses
  %i.bd = shl nuw nsw i64 %i.bc, 2
  %i.be = add nuw nsw i64 %i.bd, 4
  %i.bf = tail call noalias noundef ptr @malloc(i64 noundef %i.be) #65 ; 6 uses
  %.not16.i = icmp eq ptr %i.bf, null
  br i1 %.not16.i, label %_ZN2OT17hb_scalar_cache_t6createEjPS0_.exit, label %bb.e, !prof !267

bb.e:                                             ; preds = %bb.d
  store i32 %i.i, ptr %i.bf, align 4, !tbaa !480
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 4 ; 12 uses
  %i.bh = icmp ugt i16 %i.h, 3
  br i1 %i.bh, label %.lr.ph.i25.i.preheader, label %.preheader.i17.i

.lr.ph.i25.i.preheader:                           ; preds = %bb.e
  %i.bi = zext i16 %i.h to i64
  %i.bj = add nsw i64 %i.bi, -4                   ; 2 uses
  %i.bk = lshr i64 %i.bj, 2                       ; 2 uses
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 2 uses
  %i.bm = icmp eq i64 %i.bk, 0
  br i1 %i.bm, label %.lr.ph.i25.i.epil.preheader, label %.lr.ph.i25.i.preheader.new

.lr.ph.i25.i.preheader.new:                       ; preds = %.lr.ph.i25.i.preheader
  %unroll_iter = and i64 %i.bl, 9223372036854775806
  br label %.lr.ph.i25.i

.preheader.i17.i.loopexit.unr-lcssa:              ; preds = %.lr.ph.i25.i
  %i.bn = and i64 %i.bj, 4
  %lcmp.mod.not.not = icmp eq i64 %i.bn, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i25.i.epil.preheader, label %.preheader.i17.i.loopexit

.lr.ph.i25.i.epil.preheader:                      ; preds = %.preheader.i17.i.loopexit.unr-lcssa, %.lr.ph.i25.i.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.i25.i.preheader ], [ %indvars.iv.next.1, %.preheader.i17.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod12 = trunc i64 %i.bl to i1
  tail call void @llvm.assume(i1 %lcmp.mod12)
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.epil.init ; 4 uses
  store atomic i32 -2147483648, ptr %i.bo monotonic, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  store atomic i32 -2147483648, ptr %i.bp monotonic, align 4
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store atomic i32 -2147483648, ptr %i.bq monotonic, align 4
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  store atomic i32 -2147483648, ptr %i.br monotonic, align 4
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil.init, 4
  br label %.preheader.i17.i.loopexit

.preheader.i17.i.loopexit:                        ; preds = %.preheader.i17.i.loopexit.unr-lcssa, %.lr.ph.i25.i.epil.preheader
  %indvars.iv.next.lcssa = phi i64 [ %indvars.iv.next.1, %.preheader.i17.i.loopexit.unr-lcssa ], [ %indvars.iv.next.epil, %.lr.ph.i25.i.epil.preheader ]
  %i.bs = trunc nuw nsw i64 %indvars.iv.next.lcssa to i32
  br label %.preheader.i17.i

.preheader.i17.i:                                 ; preds = %.preheader.i17.i.loopexit, %bb.e
  %.0.lcssa.i18.i = phi i32 [ 0, %bb.e ], [ %i.bs, %.preheader.i17.i.loopexit ] ; 2 uses
  %i.bt = icmp samesign ult i32 %.0.lcssa.i18.i, %i.i
  br i1 %i.bt, label %.lr.ph18.preheader.i19.i, label %_ZN2OT17hb_scalar_cache_t6createEjPS0_.exit

.lr.ph18.preheader.i19.i:                         ; preds = %.preheader.i17.i
  %i.bu = zext nneg i32 %.0.lcssa.i18.i to i64    ; 4 uses
  %i.bv = sub nsw i64 %i.bc, %i.bu
  %xtraiter13 = and i64 %i.bv, 7                  ; 2 uses
  %lcmp.mod14.not = icmp eq i64 %xtraiter13, 0
  br i1 %lcmp.mod14.not, label %.lr.ph18.i21.i.prol.loopexit, label %.lr.ph18.i21.i.prol

.lr.ph18.i21.i.prol:                              ; preds = %.lr.ph18.preheader.i19.i, %.lr.ph18.i21.i.prol
  %indvars.iv.i22.i.prol = phi i64 [ %indvars.iv.next.i23.i.prol, %.lr.ph18.i21.i.prol ], [ %i.bu, %.lr.ph18.preheader.i19.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph18.i21.i.prol ], [ 0, %.lr.ph18.preheader.i19.i ]
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.i22.i.prol
  store atomic i32 -2147483648, ptr %i.bw monotonic, align 4
  %indvars.iv.next.i23.i.prol = add nuw nsw i64 %indvars.iv.i22.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter13
  br i1 %prol.iter.cmp.not, label %.lr.ph18.i21.i.prol.loopexit, label %.lr.ph18.i21.i.prol, !llvm.loop !2156

.lr.ph18.i21.i.prol.loopexit:                     ; preds = %.lr.ph18.i21.i.prol, %.lr.ph18.preheader.i19.i
  %indvars.iv.i22.i.unr = phi i64 [ %i.bu, %.lr.ph18.preheader.i19.i ], [ %indvars.iv.next.i23.i.prol, %.lr.ph18.i21.i.prol ]
  %i.bx = sub nsw i64 %i.bu, %i.bc
  %i.by = icmp ugt i64 %i.bx, -8
  br i1 %i.by, label %_ZN2OT17hb_scalar_cache_t6createEjPS0_.exit, label %.lr.ph18.i21.i

.lr.ph.i25.i:                                     ; preds = %.lr.ph.i25.i, %.lr.ph.i25.i.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.i25.i.preheader.new ], [ %indvars.iv.next.1, %.lr.ph.i25.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i25.i.preheader.new ], [ %niter.next.1, %.lr.ph.i25.i ]
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv ; 4 uses
  store atomic i32 -2147483648, ptr %i.bz monotonic, align 4
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  store atomic i32 -2147483648, ptr %i.ca monotonic, align 4
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store atomic i32 -2147483648, ptr %i.cb monotonic, align 4
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 12
  store atomic i32 -2147483648, ptr %i.cc monotonic, align 4
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store atomic i32 -2147483648, ptr %i.ce monotonic, align 4
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 20
  store atomic i32 -2147483648, ptr %i.cf monotonic, align 4
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  store atomic i32 -2147483648, ptr %i.cg monotonic, align 4
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 28
  store atomic i32 -2147483648, ptr %i.ch monotonic, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 8 ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader.i17.i.loopexit.unr-lcssa, label %.lr.ph.i25.i, !llvm.loop !5

.lr.ph18.i21.i:                                   ; preds = %.lr.ph18.i21.i.prol.loopexit, %.lr.ph18.i21.i
  %indvars.iv.i22.i = phi i64 [ %indvars.iv.next.i23.i.7, %.lr.ph18.i21.i ], [ %indvars.iv.i22.i.unr, %.lr.ph18.i21.i.prol.loopexit ] ; 9 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.i22.i
  store atomic i32 -2147483648, ptr %i.ci monotonic, align 4
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.i22.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  store atomic i32 -2147483648, ptr %i.ck monotonic, align 4
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.i22.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store atomic i32 -2147483648, ptr %i.cm monotonic, align 4
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.i22.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 12
  store atomic i32 -2147483648, ptr %i.co monotonic, align 4
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.i22.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store atomic i32 -2147483648, ptr %i.cq monotonic, align 4
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.i22.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 20
  store atomic i32 -2147483648, ptr %i.cs monotonic, align 4
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.i22.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  store atomic i32 -2147483648, ptr %i.cu monotonic, align 4
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.i22.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 28
  store atomic i32 -2147483648, ptr %i.cw monotonic, align 4
  %indvars.iv.next.i23.i.7 = add nuw nsw i64 %indvars.iv.i22.i, 8 ; 2 uses
  %exitcond.not.i24.i.7 = icmp eq i64 %indvars.iv.next.i23.i.7, %i.bc
  br i1 %exitcond.not.i24.i.7, label %_ZN2OT17hb_scalar_cache_t6createEjPS0_.exit, label %.lr.ph18.i21.i, !llvm.loop !6

_ZN2OT17hb_scalar_cache_t6createEjPS0_.exit:      ; preds = %.lr.ph18.i21.i.prol.loopexit, %.lr.ph18.i21.i, %.lr.ph18.i.i.prol.loopexit, %.lr.ph18.i.i, %bb.a, %.preheader.i.i, %bb.d, %.preheader.i17.i
  %.1.i = phi ptr [ @_hb_NullPool, %bb.a ], [ @_hb_NullPool, %bb.d ], [ %1, %.lr.ph18.i.i.prol.loopexit ], [ %1, %.preheader.i.i ], [ %i.bf, %.preheader.i17.i ], [ %1, %.lr.ph18.i.i ], [ %i.bf, %.lr.ph18.i21.i ], [ %i.bf, %.lr.ph18.i21.i.prol.loopexit ]
  ret ptr %.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN3AAT22hb_aat_apply_context_tC2EPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_tP9hb_blob_t(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(180) initializes((0, 4), (8, 44), (48, 81), (88, 102), (104, 112)) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 align 2 {
bb.a:
  store i32 0, ptr %0, align 8, !tbaa !2157
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !491
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.b, align 8, !tbaa !492
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !264  ; 3 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !493
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %3, ptr %i.f, align 8, !tbaa !494
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i32 0, ptr %i.g, align 8, !tbaa !495
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  store ptr null, ptr %i.j, align 8, !tbaa !496
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.h, i8 0, i64 33, i1 false)
  store i32 65536, ptr %i.k, align 8, !tbaa !497
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  store i8 0, ptr %i.l, align 4, !tbaa !498
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 101
  store i8 0, ptr %i.m, align 1, !tbaa !499
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr @_hb_NullPool, ptr %i.n, align 8, !tbaa !500
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 304 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %i.r = load atomic ptr, ptr %i.p acquire, align 8 ; 2 uses
  %.not14.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not14.i.i.i, label %.lr.ph.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT18GDEF_accelerator_tE21hb_face_lazy_loader_tIS1_Lj25EE9hb_face_tLj25ES1_EptEv.exit, !prof !265

.lr.ph.i.i.i:                                     ; preds = %bb.a, %bb.e
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !266
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT18GDEF_accelerator_tE21hb_face_lazy_loader_tIS1_Lj25EE9hb_face_tLj25ES1_EptEv.exit, label %bb.b, !prof !267

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.t = tail call noundef ptr @_ZNK17hb_data_wrapper_tI9hb_face_tLj25EE11call_createIN2OT18GDEF_accelerator_tE21hb_face_lazy_loader_tIS4_Lj25EEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) %i.p) ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not10.i.i.i, label %bb.c, label %bb.d, !prof !267

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.07.i.i.i = phi ptr [ @_hb_NullPool, %bb.c ], [ %i.t, %bb.b ] ; 3 uses
  %i.u = cmpxchg weak ptr %i.p, ptr null, ptr %.07.i.i.i acq_rel monotonic, align 8
  %i.v = extractvalue { ptr, i1 } %i.u, 1
  br i1 %i.v, label %_ZNK16hb_lazy_loader_tIN2OT18GDEF_accelerator_tE21hb_face_lazy_loader_tIS1_Lj25EE9hb_face_tLj25ES1_EptEv.exit, label %bb.e, !prof !268

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN16hb_lazy_loader_tIN2OT18GDEF_accelerator_tE21hb_face_lazy_loader_tIS1_Lj25EE9hb_face_tLj25ES1_E10do_destroyEPS1_(ptr noundef nonnull %.07.i.i.i)
  %i.w = load atomic ptr, ptr %i.p acquire, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT18GDEF_accelerator_tE21hb_face_lazy_loader_tIS1_Lj25EE9hb_face_tLj25ES1_EptEv.exit, !prof !269

_ZNK16hb_lazy_loader_tIN2OT18GDEF_accelerator_tE21hb_face_lazy_loader_tIS1_Lj25EE9hb_face_tLj25ES1_EptEv.exit: ; preds = %.lr.ph.i.i.i, %bb.d, %bb.e, %bb.a
  %.19.ph.i.i.i = phi ptr [ %i.r, %bb.a ], [ @_hb_NullPool, %.lr.ph.i.i.i ], [ %i.w, %bb.e ], [ %.07.i.i.i, %bb.d ]
  %i.x = load ptr, ptr %.19.ph.i.i.i, align 8, !tbaa !272 ; 2 uses
  %.not.i.i.i.i5 = icmp eq ptr %i.x, null
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i5, ptr @_hb_NullPool, ptr %i.x ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !275
  %i.aa = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i, i64 24
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !276
  %i.ac = icmp ult i32 %i.ab, 4
  %spec.select.i.i1.i.i = select i1 %i.ac, ptr @_hb_NullPool, ptr %i.z ; 3 uses
  store ptr %spec.select.i.i1.i.i, ptr %i.o, align 8, !tbaa !501
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ae = load i16, ptr %spec.select.i.i1.i.i, align 1, !tbaa !283
  %cond.i = icmp eq i16 %i.ae, 256
  br i1 %cond.i, label %bb.f, label %_ZNK2OT4GDEF17has_glyph_classesEv.exit

bb.f:                                             ; preds = %_ZNK16hb_lazy_loader_tIN2OT18GDEF_accelerator_tE21hb_face_lazy_loader_tIS1_Lj25EE9hb_face_tLj25ES1_EptEv.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.af = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i, i64 4
  %i.ag = load i16, ptr %i.af, align 1, !tbaa !283
  %i.ah = icmp ne i16 %i.ag, 0
  %i.ai = zext i1 %i.ah to i8
  br label %_ZNK2OT4GDEF17has_glyph_classesEv.exit

_ZNK2OT4GDEF17has_glyph_classesEv.exit:           ; preds = %_ZNK16hb_lazy_loader_tIN2OT18GDEF_accelerator_tE21hb_face_lazy_loader_tIS1_Lj25EE9hb_face_tLj25ES1_EptEv.exit, %bb.f
  %.0.i = phi i8 [ %i.ai, %bb.f ], [ 0, %_ZNK16hb_lazy_loader_tIN2OT18GDEF_accelerator_tE21hb_face_lazy_loader_tIS1_Lj25EE9hb_face_tLj25ES1_EptEv.exit ]
  store i8 %.0.i, ptr %i.ad, align 8, !tbaa !502
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.not.i.i.i.i6 = icmp eq ptr %4, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.aj, i8 0, i64 14, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.ak, i8 0, i64 36, i1 false)
  br i1 %.not.i.i.i.i6, label %_ZN21hb_sanitize_context_t4initEP9hb_blob_t.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK2OT4GDEF17has_glyph_classesEv.exit
  %i.al = load atomic i32, ptr %4 monotonic, align 4 ; 0 uses
  %i.am = load atomic i32, ptr %4 monotonic, align 4
  %.not.i7.i.i.i = icmp eq i32 %i.am, 0
  br i1 %.not.i7.i.i.i, label %_ZN21hb_sanitize_context_t4initEP9hb_blob_t.exit, label %bb.h, !prof !267

bb.h:                                             ; preds = %bb.g
  %i.an = atomicrmw add ptr %4, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN21hb_sanitize_context_t4initEP9hb_blob_t.exit

_ZN21hb_sanitize_context_t4initEP9hb_blob_t.exit: ; preds = %_ZNK2OT4GDEF17has_glyph_classesEv.exit, %bb.g, %bb.h
  store ptr %4, ptr %i.j, align 8, !tbaa !496
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 0, ptr %i.ao, align 8, !tbaa !503
  %i.ap = load ptr, ptr %i.c, align 8, !tbaa !493 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load atomic i32, ptr %i.aq monotonic, align 4 ; 2 uses
  %i.as = icmp eq i32 %i.ar, -1
  br i1 %i.as, label %bb.i, label %_ZNK9hb_face_t14get_num_glyphsEv.exit, !prof !267

bb.i:                                             ; preds = %_ZN21hb_sanitize_context_t4initEP9hb_blob_t.exit
  %i.at = tail call noundef i32 @_ZNK9hb_face_t15load_num_glyphsEv(ptr noundef nonnull align 8 dereferenceable(448) %i.ap), !inline_history !7
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !496
  br label %_ZNK9hb_face_t14get_num_glyphsEv.exit
end_hunk_0
begin_hunk_1_@_ZNK3AAT4trak5applyEPNS_22hb_aat_apply_context_tEf:bb.a
  br i1 %i.j, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.o = load i16, ptr %i.n, align 1, !tbaa !283  ; 2 uses
  %i.p = icmp eq i16 %i.o, 0
  %i.q = tail call i16 @llvm.bswap.i16(i16 %i.o)
  %i.r = zext i16 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %i.r
  %.0.i.i.i = select i1 %i.p, ptr @_hb_NullPool, ptr %i.s, !prof !267
  %i.t = tail call noundef float @_ZNK3AAT9TrackData12get_trackingEPKvff(ptr noundef nonnull align 1 dereferenceable(16) %.0.i.i.i, ptr noundef nonnull align 1 dereferenceable(12) %0, float noundef %i.l, float noundef %2)
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.v = load float, ptr %i.u, align 8, !tbaa !615
  %i.w = fmul float %i.t, %i.v
  %i.x = fadd float %i.w, 5.000000e-01
  %i.y = tail call noundef float @llvm.floor.f32(float %i.x)
  %i.z = fptosi float %i.y to i32
  %i.aa = load i32, ptr %i.m, align 8, !tbaa !607 ; 6 uses
  %.not33 = icmp eq i32 %i.aa, 0
  br i1 %.not33, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.ac = add i32 %i.aa, -1                       ; 2 uses
  %wide.trip.count68 = zext i32 %i.ac to i64
  %exitcond69.not88 = icmp eq i32 %i.ac, 0
  br i1 %exitcond69.not88, label %.lr.ph56, label %.lr.ph90.preheader

.lr.ph90.preheader:                               ; preds = %bb.c
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !589
  br label %.lr.ph90

bb.d:                                             ; preds = %.lr.ph90
  %exitcond69.not = icmp eq i64 %indvars.iv.next66, %wide.trip.count68
  br i1 %exitcond69.not, label %.lr.ph56, label %.lr.ph90, !llvm.loop !19

.lr.ph90:                                         ; preds = %.lr.ph90.preheader, %bb.d
  %indvars.iv6589 = phi i64 [ %indvars.iv.next66, %bb.d ], [ 0, %.lr.ph90.preheader ]
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv6589, 1 ; 4 uses
  %i.ae = getelementptr inbounds nuw [20 x i8], ptr %i.ad, i64 %indvars.iv.next66
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.val.i = load i16, ptr %i.af, align 4, !tbaa !280
  %i.ag = and i16 %.val.i, 128
  %.not46 = icmp eq i16 %i.ag, 0
  br i1 %.not46, label %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit.split.loop.exit, label %bb.d, !llvm.loop !19

_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit.split.loop.exit: ; preds = %.lr.ph90
  %i.ah = trunc nuw i64 %indvars.iv.next66 to i32
  br label %.lr.ph56

.lr.ph56:                                         ; preds = %bb.d, %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit.split.loop.exit, %bb.c
  %i.ai = phi i32 [ %i.ah, %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit.split.loop.exit ], [ %i.aa, %bb.c ], [ %i.aa, %bb.d ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !611
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph56, %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit35
  %.03155 = phi i32 [ %i.ai, %.lr.ph56 ], [ %.lcssa, %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit35 ] ; 5 uses
  %.03254 = phi i32 [ 0, %.lr.ph56 ], [ %.03155, %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit35 ]
  %i.am = zext i32 %.03254 to i64
  %i.an = getelementptr inbounds nuw [20 x i8], ptr %i.ak, i64 %i.am ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !617
  %i.ap = add nsw i32 %i.ao, %i.z
  store i32 %i.ap, ptr %i.an, align 4, !tbaa !617
  %i.aq = add i32 %.03155, 1
  %umax70 = tail call i32 @llvm.umax.i32(i32 %i.aa, i32 %i.aq) ; 3 uses
  %i.ar = add i32 %umax70, -1                     ; 2 uses
  %exitcond71.not91 = icmp eq i32 %.03155, %i.ar
  br i1 %exitcond71.not91, label %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit35, label %.lr.ph93.preheader

.lr.ph93.preheader:                               ; preds = %bb.e
  %i.as = load ptr, ptr %i.al, align 8, !tbaa !589
  br label %.lr.ph93

bb.f:                                             ; preds = %.lr.ph93
  %exitcond71.not = icmp eq i32 %i.at, %i.ar
  br i1 %exitcond71.not, label %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit35, label %.lr.ph93, !llvm.loop !19

.lr.ph93:                                         ; preds = %.lr.ph93.preheader, %bb.f
  %.0.i3492 = phi i32 [ %i.at, %bb.f ], [ %.03155, %.lr.ph93.preheader ]
  %i.at = add i32 %.0.i3492, 1                    ; 4 uses
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [20 x i8], ptr %i.as, i64 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %.val.i41 = load i16, ptr %i.aw, align 4, !tbaa !280
  %i.ax = and i16 %.val.i41, 128
  %.not47 = icmp eq i16 %i.ax, 0
  br i1 %.not47, label %._ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit35_crit_edge95, label %bb.f, !llvm.loop !19

._ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit35_crit_edge95: ; preds = %.lr.ph93
  br label %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit35, !llvm.loop !19

_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit35: ; preds = %bb.f, %._ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit35_crit_edge95, %bb.e
  %.lcssa = phi i32 [ %umax70, %bb.e ], [ %i.at, %._ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit35_crit_edge95 ], [ %umax70, %bb.f ]
  %i.ay = icmp ult i32 %.03155, %i.aa
  br i1 %i.ay, label %bb.e, label %.loopexit, !llvm.loop !2209

bb.g:                                             ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ba = load i16, ptr %i.az, align 1, !tbaa !283 ; 2 uses
  %i.bb = icmp eq i16 %i.ba, 0
  %i.bc = tail call i16 @llvm.bswap.i16(i16 %i.ba)
  %i.bd = zext i16 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 %i.bd
  %.0.i.i.i36 = select i1 %i.bb, ptr @_hb_NullPool, ptr %i.be, !prof !267
  %i.bf = tail call noundef float @_ZNK3AAT9TrackData12get_trackingEPKvff(ptr noundef nonnull align 1 dereferenceable(16) %.0.i.i.i36, ptr noundef nonnull align 1 dereferenceable(12) %0, float noundef %i.l, float noundef %2)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !618
  %i.bi = fmul float %i.bf, %i.bh
  %i.bj = fadd float %i.bi, 5.000000e-01
  %i.bk = tail call noundef float @llvm.floor.f32(float %i.bj)
  %i.bl = fptosi float %i.bk to i32
  %i.bm = load i32, ptr %i.m, align 8, !tbaa !607 ; 6 uses
  %.not = icmp eq i32 %i.bm, 0
  br i1 %.not, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bn = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.bo = add i32 %i.bm, -1                       ; 2 uses
  %wide.trip.count = zext i32 %i.bo to i64
  %exitcond.not80 = icmp eq i32 %i.bo, 0
  br i1 %exitcond.not80, label %.lr.ph, label %.lr.ph82.preheader

.lr.ph82.preheader:                               ; preds = %bb.h
  %i.bp = load ptr, ptr %i.bn, align 8, !tbaa !589
  br label %.lr.ph82

bb.i:                                             ; preds = %.lr.ph82
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph, label %.lr.ph82, !llvm.loop !19

.lr.ph82:                                         ; preds = %.lr.ph82.preheader, %bb.i
  %indvars.iv81 = phi i64 [ %indvars.iv.next, %bb.i ], [ 0, %.lr.ph82.preheader ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv81, 1 ; 4 uses
  %i.bq = getelementptr inbounds nuw [20 x i8], ptr %i.bp, i64 %indvars.iv.next
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %.val.i42 = load i16, ptr %i.br, align 4, !tbaa !280
  %i.bs = and i16 %.val.i42, 128
  %.not44 = icmp eq i16 %i.bs, 0
  br i1 %.not44, label %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit38.split.loop.exit, label %bb.i, !llvm.loop !19

_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit38.split.loop.exit: ; preds = %.lr.ph82
  %i.bt = trunc nuw i64 %indvars.iv.next to i32
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.i, %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit38.split.loop.exit, %bb.h
  %i.bu = phi i32 [ %i.bt, %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit38.split.loop.exit ], [ %i.bm, %bb.h ], [ %i.bm, %bb.i ]
  %i.bv = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !611
  %i.bx = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit40
  %.053 = phi i32 [ %i.bu, %.lr.ph ], [ %.lcssa61, %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit40 ] ; 5 uses
  %.03052 = phi i32 [ 0, %.lr.ph ], [ %.053, %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit40 ]
  %i.by = zext i32 %.03052 to i64
  %i.bz = getelementptr inbounds nuw [20 x i8], ptr %i.bw, i64 %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 4 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !619
  %i.cc = add nsw i32 %i.cb, %i.bl
  store i32 %i.cc, ptr %i.ca, align 4, !tbaa !619
  %i.cd = add i32 %.053, 1
  %umax = tail call i32 @llvm.umax.i32(i32 %i.bm, i32 %i.cd) ; 3 uses
  %i.ce = add i32 %umax, -1                       ; 2 uses
  %exitcond64.not83 = icmp eq i32 %.053, %i.ce
  br i1 %exitcond64.not83, label %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit40, label %.lr.ph85.preheader

.lr.ph85.preheader:                               ; preds = %bb.j
  %i.cf = load ptr, ptr %i.bx, align 8, !tbaa !589
  br label %.lr.ph85

bb.k:                                             ; preds = %.lr.ph85
  %exitcond64.not = icmp eq i32 %i.cg, %i.ce
  br i1 %exitcond64.not, label %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit40, label %.lr.ph85, !llvm.loop !19

.lr.ph85:                                         ; preds = %.lr.ph85.preheader, %bb.k
  %.0.i3984 = phi i32 [ %i.cg, %bb.k ], [ %.053, %.lr.ph85.preheader ]
  %i.cg = add i32 %.0.i3984, 1                    ; 4 uses
  %i.ch = zext i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [20 x i8], ptr %i.cf, i64 %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %.val.i43 = load i16, ptr %i.cj, align 4, !tbaa !280
  %i.ck = and i16 %.val.i43, 128
  %.not45 = icmp eq i16 %i.ck, 0
  br i1 %.not45, label %._ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit40_crit_edge86, label %bb.k, !llvm.loop !19

._ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit40_crit_edge86: ; preds = %.lr.ph85
  br label %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit40, !llvm.loop !19

_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit40: ; preds = %bb.k, %._ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit40_crit_edge86, %bb.j
  %.lcssa61 = phi i32 [ %umax, %bb.j ], [ %i.cg, %._ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit40_crit_edge86 ], [ %umax, %bb.k ]
  %i.cl = icmp ult i32 %.053, %i.bm
  br i1 %i.cl, label %bb.j, label %.loopexit, !llvm.loop !2210

.loopexit:                                        ; preds = %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit40, %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit35, %bb.g, %bb.b
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define noundef range(i32 0, 65536) i32 @hb_aat_layout_get_feature_types(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = load atomic ptr, ptr %i.a acquire, align 8 ; 2 uses
  %.not14.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not14.i.i.i, label %.lr.ph.i.i.i, label %_ZNK16hb_lazy_loader_tIN3AAT4featE22hb_table_lazy_loader_tIS1_Lj35ELb0EE9hb_face_tLj35E9hb_blob_tEptEv.exit, !prof !265

.lr.ph.i.i.i:                                     ; preds = %bb.a, %bb.e
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !266  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNK16hb_lazy_loader_tIN3AAT4featE22hb_table_lazy_loader_tIS1_Lj35ELb0EE9hb_face_tLj35E9hb_blob_tEptEv.exit, label %bb.b, !prof !267

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.e = tail call noundef ptr @_ZN22hb_table_lazy_loader_tIN3AAT4featELj35ELb0EE6createEP9hb_face_t(ptr noundef nonnull %i.d) ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not10.i.i.i, label %bb.c, label %bb.d, !prof !267

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.07.i.i.i = phi ptr [ @_hb_NullPool, %bb.c ], [ %i.e, %bb.b ] ; 3 uses
  %i.f = cmpxchg weak ptr %i.a, ptr null, ptr %.07.i.i.i acq_rel monotonic, align 8
  %i.g = extractvalue { ptr, i1 } %i.f, 1
  br i1 %i.g, label %_ZNK16hb_lazy_loader_tIN3AAT4featE22hb_table_lazy_loader_tIS1_Lj35ELb0EE9hb_face_tLj35E9hb_blob_tEptEv.exit, label %bb.e, !prof !268

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN16hb_lazy_loader_tIN3AAT4featE22hb_table_lazy_loader_tIS1_Lj35ELb0EE9hb_face_tLj35E9hb_blob_tE10do_destroyEPS5_(ptr noundef nonnull %.07.i.i.i)
  %i.h = load atomic ptr, ptr %i.a acquire, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_ZNK16hb_lazy_loader_tIN3AAT4featE22hb_table_lazy_loader_tIS1_Lj35ELb0EE9hb_face_tLj35E9hb_blob_tEptEv.exit, !prof !269

_ZNK16hb_lazy_loader_tIN3AAT4featE22hb_table_lazy_loader_tIS1_Lj35ELb0EE9hb_face_tLj35E9hb_blob_tEptEv.exit: ; preds = %.lr.ph.i.i.i, %bb.d, %bb.e, %bb.a
  %.19.ph.i.i.i = phi ptr [ %i.c, %bb.a ], [ @_hb_NullPool, %.lr.ph.i.i.i ], [ %i.h, %bb.e ], [ %.07.i.i.i, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !275
  %i.k = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !276
  %i.m = icmp ult i32 %i.l, 12
  %spec.select.i.i.i.i.i = select i1 %i.m, ptr @_hb_NullPool, ptr %i.j ; 2 uses
  %i.n = icmp ne ptr %2, null
  %i.o = icmp ne ptr %3, null
  %or.cond.i = and i1 %i.n, %i.o
  %i.p = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 4
  %i.q = load i16, ptr %i.p, align 1, !tbaa !283
  %i.r = tail call noundef i16 @llvm.bswap.i16(i16 %i.q)
  %i.s = zext i16 %i.r to i32                     ; 2 uses
  br i1 %or.cond.i, label %_ZNK17hb_sorted_array_tIKN3AAT11FeatureNameEE9sub_arrayEjPj.exit.i, label %_ZNK3AAT4feat17get_feature_typesEjPjP28hb_aat_layout_feature_type_t.exit

_ZNK17hb_sorted_array_tIKN3AAT11FeatureNameEE9sub_arrayEjPj.exit.i: ; preds = %_ZNK16hb_lazy_loader_tIN3AAT4featE22hb_table_lazy_loader_tIS1_Lj35ELb0EE9hb_face_tLj35E9hb_blob_tEptEv.exit
  %storemerge.i.i.i = tail call i32 @llvm.usub.sat.i32(i32 %i.s, i32 %1)
  %i.t = load i32, ptr %2, align 4, !tbaa !324
  %.sroa.speculated.i.i.i = tail call i32 @llvm.umin.i32(i32 %storemerge.i.i.i, i32 %i.t) ; 7 uses
  store i32 %.sroa.speculated.i.i.i, ptr %2, align 4, !tbaa !324
  %.not4.i.i.i = icmp eq i32 %.sroa.speculated.i.i.i, 0
  br i1 %.not4.i.i.i, label %_ZNK3AAT4feat17get_feature_typesEjPjP28hb_aat_layout_feature_type_t.exit, label %_ZN9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN3AAT11FeatureNameEEMS3_KF28hb_aat_layout_feature_type_tvEL24hb_function_sortedness_t0ELPv0EES6_EdeEv.exit.us.i.i.preheader.i

_ZN9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN3AAT11FeatureNameEEMS3_KF28hb_aat_layout_feature_type_tvEL24hb_function_sortedness_t0ELPv0EES6_EdeEv.exit.us.i.i.preheader.i: ; preds = %_ZNK17hb_sorted_array_tIKN3AAT11FeatureNameEE9sub_arrayEjPj.exit.i
  %.sroa.2.8.insert.ext.i.i = zext nneg i32 %.sroa.speculated.i.i.i to i64 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 12
  %i.v = zext i32 %1 to i64
  %i.w = getelementptr inbounds nuw [12 x i8], ptr %i.u, i64 %i.v ; 3 uses
  %xtraiter = and i32 %.sroa.speculated.i.i.i, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN3AAT11FeatureNameEEMS3_KF28hb_aat_layout_feature_type_tvEL24hb_function_sortedness_t0ELPv0EES6_EdeEv.exit.us.i.i.i.prol.loopexit, label %_ZN9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN3AAT11FeatureNameEEMS3_KF28hb_aat_layout_feature_type_tvEL24hb_function_sortedness_t0ELPv0EES6_EdeEv.exit.us.i.i.i.prol

_ZN9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN3AAT11FeatureNameEEMS3_KF28hb_aat_layout_feature_type_tvEL24hb_function_sortedness_t0ELPv0EES6_EdeEv.exit.us.i.i.i.prol: ; preds = %_ZN9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN3AAT11FeatureNameEEMS3_KF28hb_aat_layout_feature_type_tvEL24hb_function_sortedness_t0ELPv0EES6_EdeEv.exit.us.i.i.preheader.i
  %i.x = load i16, ptr %i.w, align 1, !tbaa !283
  %i.y = tail call noundef i16 @llvm.bswap.i16(i16 %i.x)
  %i.z = zext i16 %i.y to i32
  store i32 %i.z, ptr %3, align 4, !tbaa !571
  %i.aa = add nuw nsw i64 %.sroa.2.8.insert.ext.i.i, 4294967295
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ac = add nsw i32 %.sroa.speculated.i.i.i, -1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  br label %_ZN9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN3AAT11FeatureNameEEMS3_KF28hb_aat_layout_feature_type_tvEL24hb_function_sortedness_t0ELPv0EES6_EdeEv.exit.us.i.i.i.prol.loopexit

_ZN9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN3AAT11FeatureNameEEMS3_KF28hb_aat_layout_feature_type_tvEL24hb_function_sortedness_t0ELPv0EES6_EdeEv.exit.us.i.i.i.prol.loopexit: ; preds = %_ZN9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN3AAT11FeatureNameEEMS3_KF28hb_aat_layout_feature_type_tvEL24hb_function_sortedness_t0ELPv0EES6_EdeEv.exit.us.i.i.i.prol, %_ZN9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN3AAT11FeatureNameEEMS3_KF28hb_aat_layout_feature_type_tvEL24hb_function_sortedness_t0ELPv0EES6_EdeEv.exit.us.i.i.preheader.i
  %.sroa.7.2.i.unr = phi i64 [ %.sroa.2.8.insert.ext.i.i, %_ZN9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN3AAT11FeatureNameEEMS3_KF28hb_aat_layout_feature_type_tvEL24hb_function_sortedness_t0ELPv0EES6_EdeEv.exit.us.i.i.preheader.i ], [ %i.aa, %_ZN9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN3AAT11FeatureNameEEMS3_KF28hb_aat_layout_feature_type_tvEL24hb_function_sortedness_t0ELPv0EES6_EdeEv.exit.us.i.i.i.prol ]
  %.sroa.023.2.i.unr = phi ptr [ %3, %_ZN9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN3AAT11FeatureNameEEMS3_KF28hb_aat_layout_feature_type_tvEL24hb_function_sortedness_t0ELPv0EES6_EdeEv.exit.us.i.i.preheader.i ], [ %i.ab, %_ZN9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN3AAT11FeatureNameEEMS3_KF28hb_aat_layout_feature_type_tvEL24hb_function_sortedness_t0ELPv0EES6_EdeEv.exit.us.i.i.i.prol ]
  %.unr = phi i32 [ %.sroa.speculated.i.i.i, %_ZN9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN3AAT11FeatureNameEEMS3_KF28hb_aat_layout_feature_type_tvEL24hb_function_sortedness_t0ELPv0EES6_EdeEv.exit.us.i.i.preheader.i ], [ %i.ac, %_ZN9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN3AAT11FeatureNameEEMS3_KF28hb_aat_layout_feature_type_tvEL24hb_function_sortedness_t0ELPv0EES6_EdeEv.exit.us.i.i.i.prol ]
  %.unr9 = phi ptr [ %i.w, %_ZN9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN3AAT11FeatureNameEEMS3_KF28hb_aat_layout_feature_type_tvEL24hb_function_sortedness_t0ELPv0EES6_EdeEv.exit.us.i.i.preheader.i ], [ %i.ad, %_ZN9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN3AAT11FeatureNameEEMS3_KF28hb_aat_layout_feature_type_tvEL24hb_function_sortedness_t0ELPv0EES6_EdeEv.exit.us.i.i.i.prol ]
  %i.ae = icmp eq i32 %.sroa.speculated.i.i.i, 1
  br i1 %i.ae, label %_ZNK3AAT4feat17get_feature_typesEjPjP28hb_aat_layout_feature_type_t.exit, label %_ZN9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN3AAT11FeatureNameEEMS3_KF28hb_aat_layout_feature_type_tvEL24hb_function_sortedness_t0ELPv0EES6_EdeEv.exit.us.i.i.i

_ZN9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN3AAT11FeatureNameEEMS3_KF28hb_aat_layout_feature_type_tvEL24hb_function_sortedness_t0ELPv0EES6_EdeEv.exit.us.i.i.i: ; preds = %_ZN9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN3AAT11FeatureNameEEMS3_KF28hb_aat_layout_feature_type_tvEL24hb_function_sortedness_t0ELPv0EES6_EdeEv.exit.us.i.i.i.prol.loopexit, %_ZNR9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN3AAT11FeatureNameEEMS3_KF28hb_aat_layout_feature_type_tvEL24hb_function_sortedness_t0ELPv0EES6_EppEv.exit.us.i.i.i.1
  %.sroa.7.2.i = phi i64 [ %.sroa.7.3.i.1, %_ZNR9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN3AAT11FeatureNameEEMS3_KF28hb_aat_layout_feature_type_tvEL24hb_function_sortedness_t0ELPv0EES6_EppEv.exit.us.i.i.i.1 ], [ %.sroa.7.2.i.unr, %_ZN9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN3AAT11FeatureNameEEMS3_KF28hb_aat_layout_feature_type_tvEL24hb_function_sortedness_t0ELPv0EES6_EdeEv.exit.us.i.i.i.prol.loopexit ] ; 3 uses
  %.sroa.023.2.i = phi ptr [ %.sroa.023.3.i.1, %_ZNR9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN3AAT11FeatureNameEEMS3_KF28hb_aat_layout_feature_type_tvEL24hb_function_sortedness_t0ELPv0EES6_EppEv.exit.us.i.i.i.1 ], [ %.sroa.023.2.i.unr, %_ZN9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN3AAT11FeatureNameEEMS3_KF28hb_aat_layout_feature_type_tvEL24hb_function_sortedness_t0ELPv0EES6_EdeEv.exit.us.i.i.i.prol.loopexit ] ; 3 uses
  %i.af = phi i32 [ %i.au, %_ZNR9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN3AAT11FeatureNameEEMS3_KF28hb_aat_layout_feature_type_tvEL24hb_function_sortedness_t0ELPv0EES6_EppEv.exit.us.i.i.i.1 ], [ %.unr, %_ZN9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN3AAT11FeatureNameEEMS3_KF28hb_aat_layout_feature_type_tvEL24hb_function_sortedness_t0ELPv0EES6_EdeEv.exit.us.i.i.i.prol.loopexit ]
  %i.ag = phi ptr [ %i.av, %_ZNR9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN3AAT11FeatureNameEEMS3_KF28hb_aat_layout_feature_type_tvEL24hb_function_sortedness_t0ELPv0EES6_EppEv.exit.us.i.i.i.1 ], [ %.unr9, %_ZN9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN3AAT11FeatureNameEEMS3_KF28hb_aat_layout_feature_type_tvEL24hb_function_sortedness_t0ELPv0EES6_EdeEv.exit.us.i.i.i.prol.loopexit ] ; 3 uses
  %i.ah = load i16, ptr %i.ag, align 1, !tbaa !283
  %i.ai = tail call noundef i16 @llvm.bswap.i16(i16 %i.ah)
  %i.aj = zext i16 %i.ai to i32                   ; 2 uses
  %i.ak = and i64 %.sroa.7.2.i, 4294967295
  %.not.i.i.i.us.i.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i.us.i.i.i, label %_ZN9hb_iter_tI10hb_array_tI28hb_aat_layout_feature_type_tERS1_EdeEv.exit.thread.i.us.i.i.i, label %bb.f, !prof !267

bb.f:                                             ; preds = %_ZN9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN3AAT11FeatureNameEEMS3_KF28hb_aat_layout_feature_type_tvEL24hb_function_sortedness_t0ELPv0EES6_EdeEv.exit.us.i.i.i
  store i32 %i.aj, ptr %.sroa.023.2.i, align 4, !tbaa !571
  %i.al = add i64 %.sroa.7.2.i, 4294967295
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.023.2.i, i64 4
  br label %_ZNR9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN3AAT11FeatureNameEEMS3_KF28hb_aat_layout_feature_type_tvEL24hb_function_sortedness_t0ELPv0EES6_EppEv.exit.us.i.i.i

_ZN9hb_iter_tI10hb_array_tI28hb_aat_layout_feature_type_tERS1_EdeEv.exit.thread.i.us.i.i.i: ; preds = %_ZN9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN3AAT11FeatureNameEEMS3_KF28hb_aat_layout_feature_type_tvEL24hb_function_sortedness_t0ELPv0EES6_EdeEv.exit.us.i.i.i
  store i32 %i.aj, ptr @_hb_CrapPool, align 16, !tbaa !571
  br label %_ZNR9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN3AAT11FeatureNameEEMS3_KF28hb_aat_layout_feature_type_tvEL24hb_function_sortedness_t0ELPv0EES6_EppEv.exit.us.i.i.i

_ZNR9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN3AAT11FeatureNameEEMS3_KF28hb_aat_layout_feature_type_tvEL24hb_function_sortedness_t0ELPv0EES6_EppEv.exit.us.i.i.i: ; preds = %_ZN9hb_iter_tI10hb_array_tI28hb_aat_layout_feature_type_tERS1_EdeEv.exit.thread.i.us.i.i.i, %bb.f
  %.sroa.7.3.i = phi i64 [ %.sroa.7.2.i, %_ZN9hb_iter_tI10hb_array_tI28hb_aat_layout_feature_type_tERS1_EdeEv.exit.thread.i.us.i.i.i ], [ %i.al, %bb.f ] ; 3 uses
  %.sroa.023.3.i = phi ptr [ %.sroa.023.2.i, %_ZN9hb_iter_tI10hb_array_tI28hb_aat_layout_feature_type_tERS1_EdeEv.exit.thread.i.us.i.i.i ], [ %i.am, %bb.f ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  %i.ao = load i16, ptr %i.an, align 1, !tbaa !283
  %i.ap = tail call noundef i16 @llvm.bswap.i16(i16 %i.ao)
  %i.aq = zext i16 %i.ap to i32                   ; 2 uses
  %i.ar = and i64 %.sroa.7.3.i, 4294967295
  %.not.i.i.i.us.i.i.i.1 = icmp eq i64 %i.ar, 0
  br i1 %.not.i.i.i.us.i.i.i.1, label %_ZN9hb_iter_tI10hb_array_tI28hb_aat_layout_feature_type_tERS1_EdeEv.exit.thread.i.us.i.i.i.1, label %bb.g, !prof !267

bb.g:                                             ; preds = %_ZNR9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN3AAT11FeatureNameEEMS3_KF28hb_aat_layout_feature_type_tvEL24hb_function_sortedness_t0ELPv0EES6_EppEv.exit.us.i.i.i
  store i32 %i.aq, ptr %.sroa.023.3.i, align 4, !tbaa !571
  %i.as = add i64 %.sroa.7.3.i, 4294967295
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.023.3.i, i64 4
  br label %_ZNR9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN3AAT11FeatureNameEEMS3_KF28hb_aat_layout_feature_type_tvEL24hb_function_sortedness_t0ELPv0EES6_EppEv.exit.us.i.i.i.1

_ZN9hb_iter_tI10hb_array_tI28hb_aat_layout_feature_type_tERS1_EdeEv.exit.thread.i.us.i.i.i.1: ; preds = %_ZNR9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN3AAT11FeatureNameEEMS3_KF28hb_aat_layout_feature_type_tvEL24hb_function_sortedness_t0ELPv0EES6_EppEv.exit.us.i.i.i
  store i32 %i.aq, ptr @_hb_CrapPool, align 16, !tbaa !571
  br label %_ZNR9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN3AAT11FeatureNameEEMS3_KF28hb_aat_layout_feature_type_tvEL24hb_function_sortedness_t0ELPv0EES6_EppEv.exit.us.i.i.i.1

_ZNR9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN3AAT11FeatureNameEEMS3_KF28hb_aat_layout_feature_type_tvEL24hb_function_sortedness_t0ELPv0EES6_EppEv.exit.us.i.i.i.1: ; preds = %_ZN9hb_iter_tI10hb_array_tI28hb_aat_layout_feature_type_tERS1_EdeEv.exit.thread.i.us.i.i.i.1, %bb.g
  %.sroa.7.3.i.1 = phi i64 [ %.sroa.7.3.i, %_ZN9hb_iter_tI10hb_array_tI28hb_aat_layout_feature_type_tERS1_EdeEv.exit.thread.i.us.i.i.i.1 ], [ %i.as, %bb.g ]
  %.sroa.023.3.i.1 = phi ptr [ %.sroa.023.3.i, %_ZN9hb_iter_tI10hb_array_tI28hb_aat_layout_feature_type_tERS1_EdeEv.exit.thread.i.us.i.i.i.1 ], [ %i.at, %bb.g ]
  %i.au = add nsw i32 %i.af, -2                   ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %.not.us.i.i.i.1 = icmp eq i32 %i.au, 0
  br i1 %.not.us.i.i.i.1, label %_ZNK3AAT4feat17get_feature_typesEjPjP28hb_aat_layout_feature_type_t.exit, label %_ZN9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN3AAT11FeatureNameEEMS3_KF28hb_aat_layout_feature_type_tvEL24hb_function_sortedness_t0ELPv0EES6_EdeEv.exit.us.i.i.i, !llvm.loop !2211

_ZNK3AAT4feat17get_feature_typesEjPjP28hb_aat_layout_feature_type_t.exit: ; preds = %_ZN9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN3AAT11FeatureNameEEMS3_KF28hb_aat_layout_feature_type_tvEL24hb_function_sortedness_t0ELPv0EES6_EdeEv.exit.us.i.i.i.prol.loopexit, %_ZNR9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN3AAT11FeatureNameEEMS3_KF28hb_aat_layout_feature_type_tvEL24hb_function_sortedness_t0ELPv0EES6_EppEv.exit.us.i.i.i.1, %_ZNK16hb_lazy_loader_tIN3AAT4featE22hb_table_lazy_loader_tIS1_Lj35ELb0EE9hb_face_tLj35E9hb_blob_tEptEv.exit, %_ZNK17hb_sorted_array_tIKN3AAT11FeatureNameEE9sub_arrayEjPj.exit.i
  ret i32 %i.s
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK16hb_lazy_loader_tIN3AAT4featE22hb_table_lazy_loader_tIS1_Lj35ELb0EE9hb_face_tLj35E9hb_blob_tEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -280
  %i.b = load atomic ptr, ptr %0 acquire, align 8 ; 2 uses
  %.not14.i.i = icmp eq ptr %i.b, null
  br i1 %.not14.i.i, label %.lr.ph.i.i, label %_ZNK16hb_lazy_loader_tIN3AAT4featE22hb_table_lazy_loader_tIS1_Lj35ELb0EE9hb_face_tLj35E9hb_blob_tE3getEv.exit, !prof !265

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.e
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !266  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNK16hb_lazy_loader_tIN3AAT4featE22hb_table_lazy_loader_tIS1_Lj35ELb0EE9hb_face_tLj35E9hb_blob_tE3getEv.exit, label %bb.b, !prof !267

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.d = tail call noundef ptr @_ZN22hb_table_lazy_loader_tIN3AAT4featELj35ELb0EE6createEP9hb_face_t(ptr noundef nonnull %i.c) ; 2 uses
  %.not10.i.i = icmp eq ptr %i.d, null
  br i1 %.not10.i.i, label %bb.c, label %bb.d, !prof !267

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.07.i.i = phi ptr [ @_hb_NullPool, %bb.c ], [ %i.d, %bb.b ] ; 3 uses
  %i.e = cmpxchg weak ptr %0, ptr null, ptr %.07.i.i acq_rel monotonic, align 8
  %i.f = extractvalue { ptr, i1 } %i.e, 1
  br i1 %i.f, label %_ZNK16hb_lazy_loader_tIN3AAT4featE22hb_table_lazy_loader_tIS1_Lj35ELb0EE9hb_face_tLj35E9hb_blob_tE3getEv.exit, label %bb.e, !prof !268

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN16hb_lazy_loader_tIN3AAT4featE22hb_table_lazy_loader_tIS1_Lj35ELb0EE9hb_face_tLj35E9hb_blob_tE10do_destroyEPS5_(ptr noundef nonnull %.07.i.i)
  %i.g = load atomic ptr, ptr %0 acquire, align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %.lr.ph.i.i, label %_ZNK16hb_lazy_loader_tIN3AAT4featE22hb_table_lazy_loader_tIS1_Lj35ELb0EE9hb_face_tLj35E9hb_blob_tE3getEv.exit, !prof !269

_ZNK16hb_lazy_loader_tIN3AAT4featE22hb_table_lazy_loader_tIS1_Lj35ELb0EE9hb_face_tLj35E9hb_blob_tE3getEv.exit: ; preds = %.lr.ph.i.i, %bb.d, %bb.e, %bb.a
  %.19.ph.i.i = phi ptr [ %i.b, %bb.a ], [ %.07.i.i, %bb.d ], [ %i.g, %bb.e ], [ @_hb_NullPool, %.lr.ph.i.i ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.19.ph.i.i, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !275
  %i.j = getelementptr inbounds nuw i8, ptr %.19.ph.i.i, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !276
  %i.l = icmp ult i32 %i.k, 12
  %spec.select.i.i.i.i = select i1 %i.l, ptr @_hb_NullPool, ptr %i.i
  ret ptr %spec.select.i.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define noundef range(i32 -32768, 32768) i32 @hb_aat_layout_feature_type_get_name_id(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = load atomic ptr, ptr %i.a acquire, align 8 ; 2 uses
  %.not14.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not14.i.i.i, label %.lr.ph.i.i.i, label %_ZNK16hb_lazy_loader_tIN3AAT4featE22hb_table_lazy_loader_tIS1_Lj35ELb0EE9hb_face_tLj35E9hb_blob_tEptEv.exit, !prof !265

.lr.ph.i.i.i:                                     ; preds = %bb.a, %bb.e
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !266  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNK16hb_lazy_loader_tIN3AAT4featE22hb_table_lazy_loader_tIS1_Lj35ELb0EE9hb_face_tLj35E9hb_blob_tEptEv.exit, label %bb.b, !prof !267

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.e = tail call noundef ptr @_ZN22hb_table_lazy_loader_tIN3AAT4featELj35ELb0EE6createEP9hb_face_t(ptr noundef nonnull %i.d) ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not10.i.i.i, label %bb.c, label %bb.d, !prof !267

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.07.i.i.i = phi ptr [ @_hb_NullPool, %bb.c ], [ %i.e, %bb.b ] ; 3 uses
  %i.f = cmpxchg weak ptr %i.a, ptr null, ptr %.07.i.i.i acq_rel monotonic, align 8
  %i.g = extractvalue { ptr, i1 } %i.f, 1
  br i1 %i.g, label %_ZNK16hb_lazy_loader_tIN3AAT4featE22hb_table_lazy_loader_tIS1_Lj35ELb0EE9hb_face_tLj35E9hb_blob_tEptEv.exit, label %bb.e, !prof !268

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN16hb_lazy_loader_tIN3AAT4featE22hb_table_lazy_loader_tIS1_Lj35ELb0EE9hb_face_tLj35E9hb_blob_tE10do_destroyEPS5_(ptr noundef nonnull %.07.i.i.i)
  %i.h = load atomic ptr, ptr %i.a acquire, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_ZNK16hb_lazy_loader_tIN3AAT4featE22hb_table_lazy_loader_tIS1_Lj35ELb0EE9hb_face_tLj35E9hb_blob_tEptEv.exit, !prof !269

_ZNK16hb_lazy_loader_tIN3AAT4featE22hb_table_lazy_loader_tIS1_Lj35ELb0EE9hb_face_tLj35E9hb_blob_tEptEv.exit: ; preds = %.lr.ph.i.i.i, %bb.d, %bb.e, %bb.a
  %.19.ph.i.i.i = phi ptr [ %i.c, %bb.a ], [ @_hb_NullPool, %.lr.ph.i.i.i ], [ %i.h, %bb.e ], [ %.07.i.i.i, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !275
  %i.k = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !276
  %i.m = icmp ult i32 %i.l, 12
  %spec.select.i.i.i.i.i = select i1 %i.m, ptr @_hb_NullPool, ptr %i.j ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 12 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 4
  %i.p = load i16, ptr %i.o, align 1, !tbaa !283  ; 2 uses
  %.not1.i.i.i.i.i.not.i.i = icmp eq i16 %i.p, 0
  br i1 %.not1.i.i.i.i.i.not.i.i, label %_ZNK3AAT4feat19get_feature_name_idE28hb_aat_layout_feature_type_t.exit, label %.lr.ph.preheader.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %_ZNK16hb_lazy_loader_tIN3AAT4featE22hb_table_lazy_loader_tIS1_Lj35ELb0EE9hb_face_tLj35E9hb_blob_tEptEv.exit
  %i.q = tail call noundef i16 @llvm.bswap.i16(i16 %i.p)
  %i.r = zext i16 %i.q to i32
  %i.s = add nsw i32 %i.r, -1
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.i, %.lr.ph.preheader.i.i.i.i.i.i.i
  %.0203.i.i.i.i.i.i.i = phi i32 [ %.2.i.i.i.i.i.i.i, %bb.i ], [ %i.s, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 2 uses
  %.0212.i.i.i.i.i.i.i = phi i32 [ %.223.i.i.i.i.i.i.i, %bb.i ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 2 uses
  %i.t = add i32 %.0212.i.i.i.i.i.i.i, %.0203.i.i.i.i.i.i.i
  %i.u = lshr i32 %i.t, 1                         ; 3 uses
  %i.v = zext nneg i32 %i.u to i64                ; 2 uses
  %i.w = mul nuw nsw i64 %i.v, 12
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.w
  %i.y = load i16, ptr %i.x, align 1, !tbaa !283
  %i.z = tail call noundef i16 @llvm.bswap.i16(i16 %i.y)
  %i.aa = zext i16 %i.z to i32                    ; 2 uses
  %i.ab = icmp slt i32 %1, %i.aa
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ac = add nsw i32 %i.u, -1
  br label %bb.i

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %.not28.i.i.i.i.i.i.i = icmp eq i32 %1, %i.aa
  br i1 %.not28.i.i.i.i.i.i.i, label %_ZNK17hb_sorted_array_tIKN3AAT11FeatureNameEE5bfindI28hb_aat_layout_feature_type_tEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = add nuw nsw i32 %i.u, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %.223.i.i.i.i.i.i.i = phi i32 [ %i.ad, %bb.h ], [ %.0212.i.i.i.i.i.i.i, %bb.f ] ; 2 uses
  %.2.i.i.i.i.i.i.i = phi i32 [ %.0203.i.i.i.i.i.i.i, %bb.h ], [ %i.ac, %bb.f ] ; 2 uses
  %.not.not.i.i.i.i.i.i.i = icmp sgt i32 %.223.i.i.i.i.i.i.i, %.2.i.i.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i.i.i, label %_ZNK3AAT4feat19get_feature_name_idE28hb_aat_layout_feature_type_t.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !14

_ZNK17hb_sorted_array_tIKN3AAT11FeatureNameEE5bfindI28hb_aat_layout_feature_type_tEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i: ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw [12 x i8], ptr %i.n, i64 %i.v
  br label %_ZNK3AAT4feat19get_feature_name_idE28hb_aat_layout_feature_type_t.exit

_ZNK3AAT4feat19get_feature_name_idE28hb_aat_layout_feature_type_t.exit: ; preds = %bb.i, %_ZNK16hb_lazy_loader_tIN3AAT4featE22hb_table_lazy_loader_tIS1_Lj35ELb0EE9hb_face_tLj35E9hb_blob_tEptEv.exit, %_ZNK17hb_sorted_array_tIKN3AAT11FeatureNameEE5bfindI28hb_aat_layout_feature_type_tEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i
  %i.af = phi ptr [ %i.ae, %_ZNK17hb_sorted_array_tIKN3AAT11FeatureNameEE5bfindI28hb_aat_layout_feature_type_tEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i ], [ @_hb_NullPool, %_ZNK16hb_lazy_loader_tIN3AAT4featE22hb_table_lazy_loader_tIS1_Lj35ELb0EE9hb_face_tLj35E9hb_blob_tEptEv.exit ], [ @_hb_NullPool, %bb.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 10
  %i.ah = load i16, ptr %i.ag, align 1, !tbaa !283
  %i.ai = tail call noundef i16 @llvm.bswap.i16(i16 %i.ah)
  %i.aj = sext i16 %i.ai to i32
  ret i32 %i.aj
}

; Function Attrs: mustprogress nounwind uwtable
define noundef i32 @hb_aat_layout_feature_type_get_selector_infos(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = load atomic ptr, ptr %i.a acquire, align 8 ; 2 uses
  %.not14.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not14.i.i.i, label %.lr.ph.i.i.i, label %_ZNK16hb_lazy_loader_tIN3AAT4featE22hb_table_lazy_loader_tIS1_Lj35ELb0EE9hb_face_tLj35E9hb_blob_tEptEv.exit, !prof !265

.lr.ph.i.i.i:                                     ; preds = %bb.a, %bb.e
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !266  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNK16hb_lazy_loader_tIN3AAT4featE22hb_table_lazy_loader_tIS1_Lj35ELb0EE9hb_face_tLj35E9hb_blob_tEptEv.exit, label %bb.b, !prof !267

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.e = tail call noundef ptr @_ZN22hb_table_lazy_loader_tIN3AAT4featELj35ELb0EE6createEP9hb_face_t(ptr noundef nonnull %i.d) ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not10.i.i.i, label %bb.c, label %bb.d, !prof !267

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.07.i.i.i = phi ptr [ @_hb_NullPool, %bb.c ], [ %i.e, %bb.b ] ; 3 uses
  %i.f = cmpxchg weak ptr %i.a, ptr null, ptr %.07.i.i.i acq_rel monotonic, align 8
  %i.g = extractvalue { ptr, i1 } %i.f, 1
  br i1 %i.g, label %_ZNK16hb_lazy_loader_tIN3AAT4featE22hb_table_lazy_loader_tIS1_Lj35ELb0EE9hb_face_tLj35E9hb_blob_tEptEv.exit, label %bb.e, !prof !268

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN16hb_lazy_loader_tIN3AAT4featE22hb_table_lazy_loader_tIS1_Lj35ELb0EE9hb_face_tLj35E9hb_blob_tE10do_destroyEPS5_(ptr noundef nonnull %.07.i.i.i)
  %i.h = load atomic ptr, ptr %i.a acquire, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_ZNK16hb_lazy_loader_tIN3AAT4featE22hb_table_lazy_loader_tIS1_Lj35ELb0EE9hb_face_tLj35E9hb_blob_tEptEv.exit, !prof !269

_ZNK16hb_lazy_loader_tIN3AAT4featE22hb_table_lazy_loader_tIS1_Lj35ELb0EE9hb_face_tLj35E9hb_blob_tEptEv.exit: ; preds = %.lr.ph.i.i.i, %bb.d, %bb.e, %bb.a
  %.19.ph.i.i.i = phi ptr [ %i.c, %bb.a ], [ @_hb_NullPool, %.lr.ph.i.i.i ], [ %i.h, %bb.e ], [ %.07.i.i.i, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !275
  %i.k = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !276
  %i.m = icmp ult i32 %i.l, 12
  %spec.select.i.i.i.i.i = select i1 %i.m, ptr @_hb_NullPool, ptr %i.j ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 12 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 4
  %i.p = load i16, ptr %i.o, align 1, !tbaa !283  ; 2 uses
  %.not1.i.i.i.i.i.not.i.i = icmp eq i16 %i.p, 0
  br i1 %.not1.i.i.i.i.i.not.i.i, label %_ZNK3AAT4feat18get_selector_infosE28hb_aat_layout_feature_type_tjPjP37hb_aat_layout_feature_selector_info_tS2_.exit, label %.lr.ph.preheader.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %_ZNK16hb_lazy_loader_tIN3AAT4featE22hb_table_lazy_loader_tIS1_Lj35ELb0EE9hb_face_tLj35E9hb_blob_tEptEv.exit
  %i.q = tail call noundef i16 @llvm.bswap.i16(i16 %i.p)
  %i.r = zext i16 %i.q to i32
  %i.s = add nsw i32 %i.r, -1
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.i, %.lr.ph.preheader.i.i.i.i.i.i.i
  %.0203.i.i.i.i.i.i.i = phi i32 [ %.2.i.i.i.i.i.i.i, %bb.i ], [ %i.s, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 2 uses
  %.0212.i.i.i.i.i.i.i = phi i32 [ %.223.i.i.i.i.i.i.i, %bb.i ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 2 uses
  %i.t = add i32 %.0212.i.i.i.i.i.i.i, %.0203.i.i.i.i.i.i.i
  %i.u = lshr i32 %i.t, 1                         ; 3 uses
  %i.v = zext nneg i32 %i.u to i64                ; 2 uses
  %i.w = mul nuw nsw i64 %i.v, 12
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.w
  %i.y = load i16, ptr %i.x, align 1, !tbaa !283
  %i.z = tail call noundef i16 @llvm.bswap.i16(i16 %i.y)
  %i.aa = zext i16 %i.z to i32                    ; 2 uses
  %i.ab = icmp slt i32 %1, %i.aa
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ac = add nsw i32 %i.u, -1
  br label %bb.i

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %.not28.i.i.i.i.i.i.i = icmp eq i32 %1, %i.aa
  br i1 %.not28.i.i.i.i.i.i.i, label %_ZNK17hb_sorted_array_tIKN3AAT11FeatureNameEE5bfindI28hb_aat_layout_feature_type_tEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = add nuw nsw i32 %i.u, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %.223.i.i.i.i.i.i.i = phi i32 [ %i.ad, %bb.h ], [ %.0212.i.i.i.i.i.i.i, %bb.f ] ; 2 uses
  %.2.i.i.i.i.i.i.i = phi i32 [ %.0203.i.i.i.i.i.i.i, %bb.h ], [ %i.ac, %bb.f ] ; 2 uses
  %.not.not.i.i.i.i.i.i.i = icmp sgt i32 %.223.i.i.i.i.i.i.i, %.2.i.i.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i.i.i, label %_ZNK3AAT4feat18get_selector_infosE28hb_aat_layout_feature_type_tjPjP37hb_aat_layout_feature_selector_info_tS2_.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !14

_ZNK17hb_sorted_array_tIKN3AAT11FeatureNameEE5bfindI28hb_aat_layout_feature_type_tEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i: ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw [12 x i8], ptr %i.n, i64 %i.v
  br label %_ZNK3AAT4feat18get_selector_infosE28hb_aat_layout_feature_type_tjPjP37hb_aat_layout_feature_selector_info_tS2_.exit

_ZNK3AAT4feat18get_selector_infosE28hb_aat_layout_feature_type_tjPjP37hb_aat_layout_feature_selector_info_tS2_.exit: ; preds = %bb.i, %_ZNK16hb_lazy_loader_tIN3AAT4featE22hb_table_lazy_loader_tIS1_Lj35ELb0EE9hb_face_tLj35E9hb_blob_tEptEv.exit, %_ZNK17hb_sorted_array_tIKN3AAT11FeatureNameEE5bfindI28hb_aat_layout_feature_type_tEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i
  %i.af = phi ptr [ %i.ae, %_ZNK17hb_sorted_array_tIKN3AAT11FeatureNameEE5bfindI28hb_aat_layout_feature_type_tEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i ], [ @_hb_NullPool, %_ZNK16hb_lazy_loader_tIN3AAT4featE22hb_table_lazy_loader_tIS1_Lj35ELb0EE9hb_face_tLj35E9hb_blob_tEptEv.exit ], [ @_hb_NullPool, %bb.i ]
  %i.ag = tail call noundef i32 @_ZNK3AAT11FeatureName18get_selector_infosEjPjP37hb_aat_layout_feature_selector_info_tS1_PKv(ptr noundef nonnull align 1 dereferenceable(12) %i.af, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef nonnull align 1 dereferenceable(24) %spec.select.i.i.i.i.i)
  ret i32 %i.ag
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(12) ptr @_ZNK3AAT4feat11get_featureE28hb_aat_layout_feature_type_t(ptr noundef nonnull align 1 dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i16, ptr %i.b, align 1, !tbaa !283  ; 2 uses
  %.not1.i.i.i.i.i.not = icmp eq i16 %i.c, 0
end_hunk_1
begin_hunk_2_@_ZN11hb_buffer_t6verifyEPS_P9hb_font_tPK12hb_feature_tjPKPKc:bb.a
.lr.ph.i:                                         ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = load i32, ptr %i.k, align 8, !tbaa !614
  %i.m = and i32 %i.l, -3
  %i.n = icmp ne i32 %i.m, 4
  %wide.trip.count.i = zext i32 %i.h to i64
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !608
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %i.o = phi i32 [ %.pre.i, %.lr.ph.i ], [ %i.r, %bb.d ] ; 2 uses
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ] ; 2 uses
  %i.p = getelementptr inbounds nuw [20 x i8], ptr %i.j, i64 %indvars.iv.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i32, ptr %i.q, align 4, !tbaa !608  ; 3 uses
  %.not21.i = icmp eq i32 %i.o, %i.r
  %i.s = icmp ult i32 %i.o, %i.r
  %.not22.i = xor i1 %i.n, %i.s
  %or.cond.i = select i1 %.not21.i, i1 true, i1 %.not22.i
  br i1 %or.cond.i, label %bb.d, label %.thread128

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit, label %bb.c, !llvm.loop !2259

.loopexit:                                        ; preds = %bb.d, %bb.b
  %i.t = tail call noalias noundef dereferenceable_or_null(280) ptr @calloc(i64 noundef 1, i64 noundef 280) #64 ; 9 uses
  %.not.i.i.i38 = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i38, label %hb_buffer_create.exit.i39, label %bb.e, !prof !267

bb.e:                                             ; preds = %.loopexit
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store atomic i32 1, ptr %i.t monotonic, align 4
  store atomic i8 1, ptr %i.u monotonic, align 4
  store atomic ptr null, ptr %i.v monotonic, align 8
  %i.w = load atomic i32, ptr %i.t monotonic, align 8 ; 0 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 220
  store i32 1073741823, ptr %i.x, align 4, !tbaa !650
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 224
  store i32 536870911, ptr %i.y, align 8, !tbaa !651
  tail call void @_ZN11hb_buffer_t5resetEv(ptr noundef nonnull align 8 dereferenceable(276) %i.t)
  br label %hb_buffer_create.exit.i39

hb_buffer_create.exit.i39:                        ; preds = %bb.e, %.loopexit
  %.0.i.i40 = phi ptr [ %i.t, %bb.e ], [ @_hb_Null_hb_buffer_t, %.loopexit ] ; 23 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i.i40, i64 16 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !652
  tail call void @hb_unicode_funcs_destroy(ptr noundef %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !652 ; 5 uses
  %.not.i.i.i.i.i41 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i41, label %hb_buffer_create_similar.exit43, label %bb.f

bb.f:                                             ; preds = %hb_buffer_create.exit.i39
  %i.ad = load atomic i32, ptr %i.ac monotonic, align 4 ; 0 uses
  %i.ae = load atomic i32, ptr %i.ac monotonic, align 4
  %.not.i7.i.i.i.i42 = icmp eq i32 %i.ae, 0
  br i1 %.not.i7.i.i.i.i42, label %hb_buffer_create_similar.exit43, label %bb.g, !prof !267

bb.g:                                             ; preds = %bb.f
  %i.af = atomicrmw add ptr %i.ac, i32 1 acq_rel, align 4 ; 0 uses
  br label %hb_buffer_create_similar.exit43

hb_buffer_create_similar.exit43:                  ; preds = %hb_buffer_create.exit.i39, %bb.f, %bb.g
  store ptr %i.ac, ptr %i.z, align 8, !tbaa !652
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i.i40, i64 24 ; 4 uses
  %i.ai = load <4 x i32>, ptr %i.ag, align 8, !tbaa !280
  %i.aj = load i32, ptr %i.ag, align 8, !tbaa !587
  store <4 x i32> %i.ai, ptr %i.ah, align 8, !tbaa !280
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i.i40, i64 40
  %i.am = load <2 x i32>, ptr %i.ak, align 8, !tbaa !324
  store <2 x i32> %i.am, ptr %i.al, align 8, !tbaa !324
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i.i40, i64 4 ; 3 uses
  %i.ao = load atomic i8, ptr %i.an monotonic, align 4, !range !380, !noundef !293
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.h, label %hb_buffer_set_flags.exit37, !prof !268

bb.h:                                             ; preds = %hb_buffer_create_similar.exit43
  %i.aq = and i32 %i.aj, -33
  store i32 %i.aq, ptr %i.ah, align 8, !tbaa !587
  br label %hb_buffer_set_flags.exit37

hb_buffer_set_flags.exit37:                       ; preds = %hb_buffer_create_similar.exit43, %bb.h
  %i.ar = tail call noalias noundef dereferenceable_or_null(280) ptr @calloc(i64 noundef 1, i64 noundef 280) #64 ; 9 uses
  %.not.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i, label %hb_buffer_create.exit.i, label %bb.i, !prof !267

bb.i:                                             ; preds = %hb_buffer_set_flags.exit37
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store atomic i32 1, ptr %i.ar monotonic, align 4
  store atomic i8 1, ptr %i.as monotonic, align 4
  store atomic ptr null, ptr %i.at monotonic, align 8
  %i.au = load atomic i32, ptr %i.ar monotonic, align 8 ; 0 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 220
  store i32 1073741823, ptr %i.av, align 4, !tbaa !650
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 224
  store i32 536870911, ptr %i.aw, align 8, !tbaa !651
  tail call void @_ZN11hb_buffer_t5resetEv(ptr noundef nonnull align 8 dereferenceable(276) %i.ar)
  br label %hb_buffer_create.exit.i

hb_buffer_create.exit.i:                          ; preds = %bb.i, %hb_buffer_set_flags.exit37
  %.0.i.i = phi ptr [ %i.ar, %bb.i ], [ @_hb_Null_hb_buffer_t, %hb_buffer_set_flags.exit37 ] ; 9 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !652
  tail call void @hb_unicode_funcs_destroy(ptr noundef %i.ay)
  %i.az = load ptr, ptr %i.ab, align 8, !tbaa !652 ; 5 uses
  %.not.i.i.i.i.i36 = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i.i36, label %hb_buffer_create_similar.exit, label %bb.j

bb.j:                                             ; preds = %hb_buffer_create.exit.i
  %i.ba = load atomic i32, ptr %i.az monotonic, align 4 ; 0 uses
  %i.bb = load atomic i32, ptr %i.az monotonic, align 4
  %.not.i7.i.i.i.i = icmp eq i32 %i.bb, 0
  br i1 %.not.i7.i.i.i.i, label %hb_buffer_create_similar.exit, label %bb.k, !prof !267

bb.k:                                             ; preds = %bb.j
  %i.bc = atomicrmw add ptr %i.az, i32 1 acq_rel, align 4 ; 0 uses
  br label %hb_buffer_create_similar.exit

hb_buffer_create_similar.exit:                    ; preds = %hb_buffer_create.exit.i, %bb.j, %bb.k
  store ptr %i.az, ptr %i.ax, align 8, !tbaa !652
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24 ; 2 uses
  %i.be = load <4 x i32>, ptr %i.ag, align 8, !tbaa !280
  %i.bf = load i32, ptr %i.ag, align 8, !tbaa !587
  store <4 x i32> %i.be, ptr %i.bd, align 8, !tbaa !280
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 40
  %i.bh = load <2 x i32>, ptr %i.ak, align 8, !tbaa !324
  store <2 x i32> %i.bh, ptr %i.bg, align 8, !tbaa !324
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  %i.bj = load atomic i8, ptr %i.bi monotonic, align 4, !range !380, !noundef !293
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.l, label %hb_buffer_set_flags.exit35, !prof !268

bb.l:                                             ; preds = %hb_buffer_create_similar.exit
  %i.bl = and i32 %i.bf, -33
  store i32 %i.bl, ptr %i.bd, align 8, !tbaa !587
  br label %hb_buffer_set_flags.exit35

hb_buffer_set_flags.exit35:                       ; preds = %hb_buffer_create_similar.exit, %bb.l
  %i.bm = load i32, ptr %i.g, align 8, !tbaa !607 ; 2 uses
  %i.bn = load ptr, ptr %i.i, align 8, !tbaa !589 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !607 ; 6 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !589 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !614
  %i.bu = and i32 %i.bt, -3
  %i.bv = icmp ne i32 %i.bu, 4                    ; 6 uses
  %i.bw = add i32 %i.bm, 1                        ; 2 uses
  %.not92.i165 = icmp ugt i32 %i.bw, 1
  br i1 %.not92.i165, label %.lr.ph170, label %.critedge95.i.thread

.lr.ph170:                                        ; preds = %hb_buffer_set_flags.exit35
  %i.bx = select i1 %i.bv, i32 %i.bp, i32 0       ; 2 uses
  %.neg.i = sext i1 %i.bv to i64
  %i.by = getelementptr inbounds nuw i8, ptr %.0.i.i40, i64 48
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.i.i40, i64 56
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.i.i40, i64 88 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.i.i40, i64 89
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i.i40, i64 90
  %i.cd = getelementptr inbounds nuw i8, ptr %.0.i.i40, i64 92
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.i.i40, i64 96
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.i.i40, i64 100
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.i.i40, i64 112
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.i.i40, i64 120
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.i.i40, i64 136
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.i.i40, i64 208
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.i.i40, i64 209
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.i.i40, i64 212
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.i.i40, i64 216
  %i.cn = zext i32 %i.bp to i64
  %i.co = zext i32 %i.bm to i64                   ; 2 uses
  %wide.trip.count = zext i32 %i.bw to i64
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph170, %bb.ad
  %indvars.iv198 = phi i64 [ 1, %.lr.ph170 ], [ %indvars.iv.next199, %bb.ad ] ; 7 uses
  %.072.i167 = phi i32 [ %i.bx, %.lr.ph170 ], [ %.5.i, %bb.ad ] ; 9 uses
  %.074.i166 = phi i32 [ %i.bx, %.lr.ph170 ], [ %.579.i, %bb.ad ] ; 8 uses
  %i.cp = icmp samesign ult i64 %indvars.iv198, %i.co
  br i1 %i.cp, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.cq = getelementptr inbounds nuw [20 x i8], ptr %i.bn, i64 %indvars.iv198
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !608
  %i.ct = getelementptr [20 x i8], ptr %i.bn, i64 %indvars.iv198
  %i.cu = getelementptr i8, ptr %i.ct, i64 -12
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !608
  %i.cw = icmp eq i32 %i.cs, %i.cv
  br i1 %i.cw, label %bb.ad, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cx = add nsw i64 %indvars.iv198, %.neg.i
  %i.cy = and i64 %i.cx, 4294967295
  %i.cz = getelementptr inbounds nuw [20 x i8], ptr %i.bn, i64 %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  %i.db = load i32, ptr %i.da, align 4, !tbaa !591
  %i.dc = and i32 %i.db, 1
  %.not86.i = icmp eq i32 %i.dc, 0
  br i1 %.not86.i, label %bb.p, label %bb.ad

bb.p:                                             ; preds = %bb.o, %bb.m
  %i.dd = icmp eq i64 %indvars.iv198, %i.co
  br i1 %i.dd, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %spec.select.i = select i1 %i.bv, i32 0, i32 %.074.i166
  %spec.select96.i = select i1 %i.bv, i32 %.072.i167, i32 %i.bp
  br label %.critedge.i

bb.r:                                             ; preds = %bb.p
  %i.de = getelementptr [20 x i8], ptr %i.bn, i64 %indvars.iv198 ; 2 uses
  br i1 %i.bv, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !608
  %i.dh = icmp ult i32 %.072.i167, %i.bp
  br i1 %i.dh, label %.lr.ph.preheader, label %.critedge.i

.lr.ph.preheader:                                 ; preds = %bb.s
  %i.di = zext i32 %.072.i167 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.t
  %indvars.iv = phi i64 [ %i.di, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.t ] ; 3 uses
  %i.dj = getelementptr inbounds nuw [20 x i8], ptr %i.br, i64 %indvars.iv
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !608
  %i.dm = icmp ult i32 %i.dl, %i.dg
  br i1 %i.dm, label %bb.t, label %.critedge.i.loopexit252.split.loop.exit

bb.t:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.cn
  br i1 %exitcond.not, label %.critedge.i, label %.lr.ph, !llvm.loop !2260

bb.u:                                             ; preds = %bb.r
  %i.dn = getelementptr i8, ptr %i.de, i64 -12
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !608
  %.not87.i266 = icmp eq i32 %.074.i166, 0
  br i1 %.not87.i266, label %.critedge.i, label %.lr.ph269

.lr.ph269:                                        ; preds = %bb.u
  %i.dp = zext i32 %.074.i166 to i64
  br label %bb.w

bb.v:                                             ; preds = %bb.w
  %.not87.i = icmp eq i64 %i.dq, 0
  br i1 %.not87.i, label %.critedge.i, label %bb.w, !llvm.loop !2261

bb.w:                                             ; preds = %.lr.ph269, %bb.v
  %indvars.iv195267 = phi i64 [ %i.dp, %.lr.ph269 ], [ %i.dq, %bb.v ] ; 2 uses
  %i.dq = add nsw i64 %indvars.iv195267, -1       ; 3 uses
  %i.dr = getelementptr inbounds nuw [20 x i8], ptr %i.br, i64 %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !608
  %.not88.i = icmp ult i32 %i.dt, %i.do
  br i1 %.not88.i, label %.critedge.i.loopexit.split.loop.exit255, label %bb.v, !llvm.loop !2261

.critedge.i.loopexit.split.loop.exit255:          ; preds = %bb.w
  %i.du = trunc nuw i64 %indvars.iv195267 to i32
  br label %.critedge.i

.critedge.i.loopexit252.split.loop.exit:          ; preds = %.lr.ph
  %i.dv = trunc nuw i64 %indvars.iv to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.t, %bb.v, %bb.u, %.critedge.i.loopexit252.split.loop.exit, %.critedge.i.loopexit.split.loop.exit255, %bb.s, %bb.q
  %.276.i = phi i32 [ %spec.select.i, %bb.q ], [ %.074.i166, %.critedge.i.loopexit252.split.loop.exit ], [ %.074.i166, %bb.s ], [ %i.du, %.critedge.i.loopexit.split.loop.exit255 ], [ 0, %bb.u ], [ 0, %bb.v ], [ %.074.i166, %bb.t ] ; 4 uses
  %.2.i22 = phi i32 [ %spec.select96.i, %bb.q ], [ %i.dv, %.critedge.i.loopexit252.split.loop.exit ], [ %.072.i167, %bb.s ], [ %.072.i167, %.critedge.i.loopexit.split.loop.exit255 ], [ %.072.i167, %bb.u ], [ %.072.i167, %bb.v ], [ %i.bp, %bb.t ] ; 4 uses
  %.not89.i = icmp ult i32 %.276.i, %.2.i22
  br i1 %.not89.i, label %bb.y, label %bb.x, !prof !268

bb.x:                                             ; preds = %.critedge.i
  tail call void (ptr, ptr, ptr, ...) @_ZL19buffer_verify_errorP11hb_buffer_tP9hb_font_tPKcz(ptr noundef nonnull %0, ptr noundef %2, ptr noundef nonnull @.str.76), !inline_history !2262
  br label %.thread

bb.y:                                             ; preds = %.critedge.i
  %i.dw = load atomic i8, ptr %i.an monotonic, align 4, !range !380, !noundef !293
  %i.dx = trunc nuw i8 %i.dw to i1
  br i1 %i.dx, label %bb.z, label %hb_buffer_clear_contents.exit, !prof !268

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.by, align 8, !tbaa !646
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bz, i8 0, i64 32, i1 false)
  store i8 1, ptr %i.ca, align 8, !tbaa !586
  store i8 0, ptr %i.cb, align 1, !tbaa !634
  store i8 0, ptr %i.cc, align 2, !tbaa !632
  store i32 0, ptr %i.cd, align 4, !tbaa !653
  store i32 0, ptr %i.ce, align 8, !tbaa !607
  store i32 0, ptr %i.cf, align 4, !tbaa !635
  %i.dy = load ptr, ptr %i.cg, align 8, !tbaa !589
  store ptr %i.dy, ptr %i.ch, align 8, !tbaa !636
  store i8 0, ptr %i.cj, align 8, !tbaa !654
  store i8 0, ptr %i.ck, align 1, !tbaa !655
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ci, i8 0, i64 48, i1 false)
  store i32 1, ptr %i.cl, align 4, !tbaa !656
  store i32 0, ptr %i.cm, align 8, !tbaa !606
  br label %hb_buffer_clear_contents.exit

hb_buffer_clear_contents.exit:                    ; preds = %bb.y, %bb.z
  %i.dz = load i32, ptr %i.ah, align 8, !tbaa !587 ; 2 uses
  %i.ea = load atomic i8, ptr %i.an monotonic, align 4, !range !380, !noundef !293
  %i.eb = trunc nuw i8 %i.ea to i1
  br i1 %i.eb, label %bb.aa, label %hb_buffer_set_flags.exit, !prof !268

bb.aa:                                            ; preds = %hb_buffer_clear_contents.exit
  %i.ec = icmp ult i32 %.2.i22, %i.bp
  %.not90.i = icmp eq i32 %.276.i, 0
  %i.ed = and i32 %i.dz, -2
  %spec.select160 = select i1 %.not90.i, i32 %i.dz, i32 %i.ed ; 2 uses
  %i.ee = and i32 %spec.select160, -3
  %.168.i = select i1 %i.ec, i32 %i.ee, i32 %spec.select160
  store i32 %.168.i, ptr %i.ah, align 8, !tbaa !587
  br label %hb_buffer_set_flags.exit

hb_buffer_set_flags.exit:                         ; preds = %hb_buffer_clear_contents.exit, %bb.aa
  tail call void @hb_buffer_append(ptr noundef nonnull %.0.i.i40, ptr noundef %1, i32 noundef %.276.i, i32 noundef %.2.i22), !inline_history !2262
  %i.ef = tail call i32 @hb_shape_full(ptr noundef %2, ptr noundef nonnull %.0.i.i40, ptr noundef %3, i32 noundef %4, ptr noundef %5), !inline_history !2262
  %.not91.i = icmp eq i32 %i.ef, 0
  br i1 %.not91.i, label %.thread, label %bb.ab

bb.ab:                                            ; preds = %hb_buffer_set_flags.exit
  %i.eg = load i8, ptr %i.ca, align 8, !tbaa !586, !range !380, !noundef !293
  %i.eh = trunc nuw i8 %i.eg to i1
  br i1 %i.eh, label %bb.ac, label %.thread

bb.ac:                                            ; preds = %bb.ab
  tail call void @hb_buffer_append(ptr noundef nonnull %.0.i.i, ptr noundef nonnull %.0.i.i40, i32 noundef 0, i32 noundef -1), !inline_history !2262
  %.276..2.i = select i1 %i.bv, i32 %.276.i, i32 %.2.i22 ; 2 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.o, %bb.n
  %.579.i = phi i32 [ %.074.i166, %bb.n ], [ %.074.i166, %bb.o ], [ %.276..2.i, %bb.ac ]
  %.5.i = phi i32 [ %.072.i167, %bb.n ], [ %.072.i167, %bb.o ], [ %.276..2.i, %bb.ac ]
  %indvars.iv.next199 = add nuw nsw i64 %indvars.iv198, 1 ; 2 uses
  %exitcond201.not = icmp eq i64 %indvars.iv.next199, %wide.trip.count
  br i1 %exitcond201.not, label %.critedge95.i.thread, label %bb.m, !llvm.loop !2263

.critedge95.i.thread:                             ; preds = %bb.ad, %hb_buffer_set_flags.exit35
  %i.ei = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 88
  %i.ej = load i8, ptr %i.ei, align 8, !tbaa !586, !range !380, !noundef !293
  %i.ek = trunc nuw i8 %i.ej to i1
  br i1 %i.ek, label %bb.ae, label %.thread, !prof !268

bb.ae:                                            ; preds = %.critedge95.i.thread
  %i.el = tail call i32 @hb_buffer_diff(ptr noundef nonnull %.0.i.i, ptr noundef nonnull %0, i32 noundef -1, i32 noundef 0), !inline_history !2262
  %i.em = and i32 %i.el, 191
  %.not93.i = icmp eq i32 %i.em, 0
  br i1 %.not93.i, label %.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void (ptr, ptr, ptr, ...) @_ZL19buffer_verify_errorP11hb_buffer_tP9hb_font_tPKcz(ptr noundef nonnull %0, ptr noundef %2, ptr noundef nonnull @.str.77), !inline_history !2262
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.eo = load atomic i8, ptr %i.en monotonic, align 4, !range !380, !noundef !293
  %i.ep = trunc nuw i8 %i.eo to i1
  br i1 %i.ep, label %bb.ag, label %hb_buffer_set_length.exit, !prof !268

bb.ag:                                            ; preds = %bb.af
  store i32 0, ptr %i.g, align 8, !tbaa !607
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 0, ptr %i.eq, align 8, !tbaa !646
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i32 0, ptr %i.er, align 8, !tbaa !324
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 180
  store i32 0, ptr %i.es, align 4, !tbaa !324
  br label %hb_buffer_set_length.exit

hb_buffer_set_length.exit:                        ; preds = %bb.af, %bb.ag
  tail call void @hb_buffer_append(ptr noundef nonnull %0, ptr noundef nonnull %.0.i.i, i32 noundef 0, i32 noundef -1), !inline_history !2262
  br label %.thread

.thread128:                                       ; preds = %bb.c
  tail call void (ptr, ptr, ptr, ...) @_ZL19buffer_verify_errorP11hb_buffer_tP9hb_font_tPKcz(ptr noundef nonnull %0, ptr noundef %2, ptr noundef nonnull @.str.75)
  br label %bb.br

.thread:                                          ; preds = %bb.ab, %hb_buffer_set_flags.exit, %.critedge95.i.thread, %bb.ae, %hb_buffer_set_length.exit, %bb.x
  %.484.i = phi i1 [ true, %bb.ae ], [ true, %.critedge95.i.thread ], [ false, %hb_buffer_set_length.exit ], [ false, %bb.x ], [ true, %hb_buffer_set_flags.exit ], [ true, %bb.ab ] ; 2 uses
  tail call void @hb_buffer_destroy(ptr noundef nonnull %.0.i.i)
  tail call void @hb_buffer_destroy(ptr noundef nonnull %.0.i.i40)
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !587
  %i.ev = and i32 %i.eu, 64
  %.not = icmp eq i32 %i.ev, 0
  br i1 %.not, label %bb.bq, label %bb.ah

.thread.thread:                                   ; preds = %bb.a
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !587
  %i.ey = and i32 %i.ex, 64
  %.not247 = icmp eq i32 %i.ey, 0
  br i1 %.not247, label %_ZN11hb_vector_tIcLb0EED2Ev.exit, label %bb.ah
end_hunk_2
begin_hunk_3_@hb_script_from_iso15924_tag:bb.a
    i32 1400468074, label %bb.j
    i32 1400468078, label %bb.j
  ]

bb.c:                                             ; preds = %bb.b
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  br label %bb.l

bb.e:                                             ; preds = %bb.b
  br label %bb.l

bb.f:                                             ; preds = %bb.b
  br label %bb.l

bb.g:                                             ; preds = %bb.b, %bb.b
  br label %bb.l

bb.h:                                             ; preds = %bb.b
  br label %bb.l

bb.i:                                             ; preds = %bb.b, %bb.b
  br label %bb.l

bb.j:                                             ; preds = %bb.b, %bb.b, %bb.b
  br label %bb.l

bb.k:                                             ; preds = %bb.b
  %i.d = and i32 %i.c, -1059004192
  %i.e = icmp eq i32 %i.d, 1080057952
  %. = select i1 %i.e, i32 %i.c, i32 1517976186
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.b, %bb.a, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.0 = phi i32 [ 1400468067, %bb.j ], [ %., %bb.k ], [ 1281455214, %bb.i ], [ 0, %bb.a ], [ 1131376756, %bb.c ], [ 1098015074, %bb.d ], [ 1132032620, %bb.e ], [ 1197830002, %bb.f ], [ 1214344809, %bb.g ], [ 1516858984, %bb.b ], [ 1214344807, %bb.h ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2139062144) i32 @hb_script_from_string(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #63
  %i.b = icmp ne ptr %0, null
  %i.c = icmp ne i32 %1, 0
  %or.cond.i = and i1 %i.b, %i.c
  br i1 %or.cond.i, label %bb.b, label %hb_tag_from_string.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %0, align 1, !tbaa !280
  %.not.i = icmp eq i8 %i.d, 0
  br i1 %.not.i, label %hb_tag_from_string.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %spec.store.select.i = tail call i32 @llvm.umin.i32(i32 %1, i32 4) ; 4 uses
  %i.e = load i8, ptr %0, align 1, !tbaa !280     ; 2 uses
  %.not23.i = icmp eq i8 %i.e, 0
  br i1 %.not23.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 %i.e, ptr %i.a, align 4, !tbaa !280
  %exitcond.not.i = icmp eq i32 %1, 1
  br i1 %exitcond.not.i, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !280   ; 2 uses
  %.not23.i.1 = icmp eq i8 %i.g, 0
  br i1 %.not23.i.1, label %.critedge.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.g, ptr %i.h, align 1, !tbaa !280
  %exitcond.not.i.1 = icmp eq i32 %1, 2
  br i1 %exitcond.not.i.1, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.j = load i8, ptr %i.i, align 1, !tbaa !280   ; 2 uses
  %.not23.i.2 = icmp eq i8 %i.j, 0
  br i1 %.not23.i.2, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.j, ptr %i.k, align 2, !tbaa !280
  %exitcond.not.i.2 = icmp eq i32 %1, 3
  br i1 %exitcond.not.i.2, label %.critedge.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.m = load i8, ptr %i.l, align 1, !tbaa !280   ; 2 uses
  %.not23.i.3 = icmp eq i8 %i.m, 0
  br i1 %.not23.i.3, label %.critedge.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.m, ptr %i.n, align 1, !tbaa !280
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.d, %bb.f, %bb.h, %bb.j, %bb.c, %bb.e, %bb.g, %bb.i
  %.0.lcssa.i = phi i32 [ 3, %bb.i ], [ 0, %bb.c ], [ 1, %bb.e ], [ 2, %bb.g ], [ %spec.store.select.i, %bb.j ], [ %spec.store.select.i, %bb.h ], [ %spec.store.select.i, %bb.f ], [ %spec.store.select.i, %bb.d ] ; 3 uses
  %i.o = icmp ult i32 %.0.lcssa.i, 4
  br i1 %i.o, label %.lr.ph.preheader.i, label %hb_tag_from_string.exit

.lr.ph.preheader.i:                               ; preds = %.critedge.i
  %i.p = zext nneg i32 %.0.lcssa.i to i64
  %scevgep.i = getelementptr i8, ptr %i.a, i64 %i.p
  %narrow.i = sub nuw nsw i32 4, %.0.lcssa.i
  %i.q = zext nneg i32 %narrow.i to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i, i8 32, i64 %i.q, i1 false), !tbaa !280
  br label %hb_tag_from_string.exit

hb_tag_from_string.exit.thread:                   ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #63
  br label %hb_script_from_iso15924_tag.exit

hb_tag_from_string.exit:                          ; preds = %.critedge.i, %.lr.ph.preheader.i
  %i.r = load i32, ptr %i.a, align 4              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #63
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %hb_script_from_iso15924_tag.exit, label %bb.k, !prof !318

bb.k:                                             ; preds = %hb_tag_from_string.exit
  %i.t = and i32 %i.r, -538976289
  %i.u = or disjoint i32 %i.t, 538976256
  %i.v = tail call i32 @llvm.bswap.i32(i32 %i.u)  ; 3 uses
  switch i32 %i.v, label %bb.t [
    i32 1365336425, label %hb_script_from_iso15924_tag.exit
    i32 1365336419, label %bb.l
    i32 1098015086, label %bb.m
    i32 1132032627, label %bb.n
    i32 1197829995, label %bb.o
    i32 1214344819, label %bb.p
    i32 1214344820, label %bb.p
    i32 1247898991, label %bb.q
    i32 1281455206, label %bb.r
    i32 1281455207, label %bb.r
    i32 1400468069, label %bb.s
    i32 1400468074, label %bb.s
    i32 1400468078, label %bb.s
  ]

bb.l:                                             ; preds = %bb.k
  br label %hb_script_from_iso15924_tag.exit

bb.m:                                             ; preds = %bb.k
  br label %hb_script_from_iso15924_tag.exit

bb.n:                                             ; preds = %bb.k
  br label %hb_script_from_iso15924_tag.exit

bb.o:                                             ; preds = %bb.k
  br label %hb_script_from_iso15924_tag.exit

bb.p:                                             ; preds = %bb.k, %bb.k
  br label %hb_script_from_iso15924_tag.exit

bb.q:                                             ; preds = %bb.k
  br label %hb_script_from_iso15924_tag.exit

bb.r:                                             ; preds = %bb.k, %bb.k
  br label %hb_script_from_iso15924_tag.exit

bb.s:                                             ; preds = %bb.k, %bb.k, %bb.k
  br label %hb_script_from_iso15924_tag.exit

bb.t:                                             ; preds = %bb.k
  %i.w = and i32 %i.v, -1059004192
  %i.x = icmp eq i32 %i.w, 1080057952
  %..i = select i1 %i.x, i32 %i.v, i32 1517976186
  br label %hb_script_from_iso15924_tag.exit

hb_script_from_iso15924_tag.exit:                 ; preds = %hb_tag_from_string.exit.thread, %hb_tag_from_string.exit, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t
  %.0.i = phi i32 [ 1400468067, %bb.s ], [ %..i, %bb.t ], [ 1281455214, %bb.r ], [ 0, %hb_tag_from_string.exit ], [ 1131376756, %bb.l ], [ 1098015074, %bb.m ], [ 1132032620, %bb.n ], [ 1197830002, %bb.o ], [ 1214344809, %bb.p ], [ 1516858984, %bb.k ], [ 1214344807, %bb.q ], [ 0, %hb_tag_from_string.exit.thread ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @hb_script_to_iso15924_tag(i32 noundef returned %0) local_unnamed_addr #4 {
bb.a:
  ret i32 %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @hb_version(ptr nofree noundef writeonly captures(none) initializes((0, 4)) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2) local_unnamed_addr #3 {
bb.a:
  store i32 14, ptr %0, align 4, !tbaa !324
  store i32 3, ptr %1, align 4, !tbaa !324
  store i32 1, ptr %2, align 4, !tbaa !324
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @hb_version_string() local_unnamed_addr #4 {
bb.a:
  ret ptr @.str.20
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i32 0, 2) i32 @hb_version_atleast(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = mul i32 %0, 10000
  %i.b = mul i32 %1, 100
  %i.c = add i32 %i.b, %i.a
  %i.d = add i32 %i.c, %2
  %i.e = icmp ult i32 %i.d, 140302
  %i.f = zext i1 %i.e to i32
  ret i32 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @hb_feature_from_string(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = alloca [32 x i8], align 16               ; 9 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca [32 x i8], align 16               ; 9 uses
  %i.e = alloca ptr, align 8                      ; 6 uses
  %i.f = alloca [32 x i8], align 16               ; 9 uses
  %i.g = alloca ptr, align 8                      ; 6 uses
  %i.h = alloca ptr, align 8                      ; 22 uses
  %3 = alloca %struct.hb_feature_t, align 4       ; 7 uses
  store ptr %0, ptr %i.h, align 8, !tbaa !631
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #63
  %i.i = icmp slt i32 %1, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #68
  %i.k = trunc i64 %i.j to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.06 = phi i32 [ %i.k, %bb.b ], [ %1, %bb.a ]   ; 2 uses
  %i.l = sext i32 %.06 to i64                     ; 3 uses
  %i.m = getelementptr i8, ptr %0, i64 %i.l       ; 33 uses
  %i.n = icmp sgt i32 %.06, 0
  br i1 %i.n, label %.lr.ph.i.i.i.i, label %_ZL11parse_spacePPKcS0_.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %bb.d
  %i.o = phi ptr [ %i.q, %bb.d ], [ %0, %bb.c ]   ; 3 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !280
  switch i8 %i.p, label %_ZL11parse_spacePPKcS0_.exit.i.i.i.loopexit [
    i8 32, label %bb.d
    i8 13, label %bb.d
    i8 12, label %bb.d
    i8 10, label %bb.d
    i8 9, label %bb.d
    i8 11, label %bb.d
  ]

bb.d:                                             ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq ptr %i.q, %i.m
  br i1 %exitcond.not.i.i.i.i, label %_ZL11parse_spacePPKcS0_.exit.i.i.i.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !31

_ZL11parse_spacePPKcS0_.exit.i.i.i.loopexit:      ; preds = %.lr.ph.i.i.i.i, %bb.d
  %i.r = phi ptr [ %i.m, %bb.d ], [ %i.o, %.lr.ph.i.i.i.i ] ; 2 uses
  store ptr %i.r, ptr %i.h, align 8
  br label %_ZL11parse_spacePPKcS0_.exit.i.i.i

_ZL11parse_spacePPKcS0_.exit.i.i.i:               ; preds = %_ZL11parse_spacePPKcS0_.exit.i.i.i.loopexit, %bb.c
  %.promoted.i.i6.i.i = phi ptr [ %0, %bb.c ], [ %i.r, %_ZL11parse_spacePPKcS0_.exit.i.i.i.loopexit ] ; 6 uses
  %i.s = icmp eq ptr %.promoted.i.i6.i.i, %i.m
  br i1 %i.s, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZL11parse_spacePPKcS0_.exit.i.i.i
  %i.t = load i8, ptr %.promoted.i.i6.i.i, align 1, !tbaa !280
  %.not.i.i.i = icmp eq i8 %i.t, 45
  br i1 %.not.i.i.i, label %_ZL10parse_charPPKcS0_c.exit12.sink.split.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZL11parse_spacePPKcS0_.exit.i.i.i
  %i.u = icmp ult ptr %.promoted.i.i6.i.i, %i.m
  br i1 %i.u, label %.lr.ph.i.i10.i.i, label %_ZL11parse_spacePPKcS0_.exit.i7.i.i

.lr.ph.i.i10.i.i:                                 ; preds = %bb.f, %bb.g
  %i.v = phi ptr [ %i.x, %bb.g ], [ %.promoted.i.i6.i.i, %bb.f ] ; 3 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !280
  switch i8 %i.w, label %_ZL11parse_spacePPKcS0_.exit.i7.i.i [
    i8 32, label %bb.g
    i8 13, label %bb.g
    i8 12, label %bb.g
    i8 10, label %bb.g
    i8 9, label %bb.g
    i8 11, label %bb.g
  ]

bb.g:                                             ; preds = %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 1 ; 3 uses
  store ptr %i.x, ptr %i.h, align 8, !tbaa !631
  %exitcond.not.i.i11.i.i = icmp eq ptr %i.x, %i.m
  br i1 %exitcond.not.i.i11.i.i, label %_ZL26parse_feature_value_prefixPPKcS0_P12hb_feature_t.exit.i, label %.lr.ph.i.i10.i.i, !llvm.loop !31

_ZL11parse_spacePPKcS0_.exit.i7.i.i:              ; preds = %.lr.ph.i.i10.i.i, %bb.f
  %i.y = phi ptr [ %.promoted.i.i6.i.i, %bb.f ], [ %i.v, %.lr.ph.i.i10.i.i ] ; 3 uses
  %i.z = icmp eq ptr %i.y, %i.m
  br i1 %i.z, label %_ZL26parse_feature_value_prefixPPKcS0_P12hb_feature_t.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZL11parse_spacePPKcS0_.exit.i7.i.i
  %i.aa = load i8, ptr %i.y, align 1, !tbaa !280
  %.not.i8.i.i = icmp eq i8 %i.aa, 43
  br i1 %.not.i8.i.i, label %_ZL10parse_charPPKcS0_c.exit12.sink.split.i.i, label %_ZL26parse_feature_value_prefixPPKcS0_P12hb_feature_t.exit.i

_ZL10parse_charPPKcS0_c.exit12.sink.split.i.i:    ; preds = %bb.h, %bb.e
  %.sink23.i.i = phi ptr [ %.promoted.i.i6.i.i, %bb.e ], [ %i.y, %bb.h ]
  %.sink.ph.i.i = phi i32 [ 0, %bb.e ], [ 1, %bb.h ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.sink23.i.i, i64 1
  store ptr %i.ab, ptr %i.h, align 8, !tbaa !631
  br label %_ZL26parse_feature_value_prefixPPKcS0_P12hb_feature_t.exit.i

_ZL26parse_feature_value_prefixPPKcS0_P12hb_feature_t.exit.i: ; preds = %bb.g, %_ZL10parse_charPPKcS0_c.exit12.sink.split.i.i, %bb.h, %_ZL11parse_spacePPKcS0_.exit.i7.i.i
  %.sink.i.i = phi i32 [ 1, %bb.h ], [ 1, %_ZL11parse_spacePPKcS0_.exit.i7.i.i ], [ %.sink.ph.i.i, %_ZL10parse_charPPKcS0_c.exit12.sink.split.i.i ], [ 1, %bb.g ]
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  store i32 %.sink.i.i, ptr %i.ac, align 4, !tbaa !561
  %i.ad = call fastcc noundef zeroext i1 @_ZL9parse_tagPPKcS0_Pj(ptr noundef nonnull %i.h, ptr noundef %i.m, ptr noundef nonnull %3)
  br i1 %i.ad, label %bb.i, label %_ZL17parse_one_featurePPKcS0_P12hb_feature_t.exit.thread, !prof !525

bb.i:                                             ; preds = %_ZL26parse_feature_value_prefixPPKcS0_P12hb_feature_t.exit.i
  %.promoted.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !631 ; 5 uses
  %i.ae = icmp ult ptr %.promoted.i.i.i, %i.m
  br i1 %i.ae, label %.lr.ph.i.i.i.preheader, label %_ZL11parse_spacePPKcS0_.exit.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %bb.i
  %.promoted.i.i.i25 = ptrtoaddr ptr %.promoted.i.i.i to i64
  %i.af = add i64 %i.a, %i.l
  %i.ag = sub i64 %i.af, %.promoted.i.i.i25
  %scevgep = getelementptr i8, ptr %.promoted.i.i.i, i64 %i.ag
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.j
  %i.ah = phi ptr [ %i.aj, %bb.j ], [ %.promoted.i.i.i, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !280
  switch i8 %i.ai, label %_ZL11parse_spacePPKcS0_.exit.i.i.loopexit [
    i8 32, label %bb.j
    i8 13, label %bb.j
    i8 12, label %bb.j
    i8 10, label %bb.j
    i8 9, label %bb.j
    i8 11, label %bb.j
  ]

bb.j:                                             ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i, %.lr.ph.i.i.i, %.lr.ph.i.i.i, %.lr.ph.i.i.i, %.lr.ph.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq ptr %i.aj, %i.m
  br i1 %exitcond.not.i.i.i, label %_ZL11parse_spacePPKcS0_.exit.i.i.loopexit, label %.lr.ph.i.i.i, !llvm.loop !31

_ZL11parse_spacePPKcS0_.exit.i.i.loopexit:        ; preds = %.lr.ph.i.i.i, %bb.j
  %i.ak = phi ptr [ %i.ah, %.lr.ph.i.i.i ], [ %scevgep, %bb.j ] ; 2 uses
  store ptr %i.ak, ptr %i.h, align 8
  br label %_ZL11parse_spacePPKcS0_.exit.i.i

_ZL11parse_spacePPKcS0_.exit.i.i:                 ; preds = %_ZL11parse_spacePPKcS0_.exit.i.i.loopexit, %bb.i
  %.promoted.i.i.i16.i = phi ptr [ %.promoted.i.i.i, %bb.i ], [ %i.ak, %_ZL11parse_spacePPKcS0_.exit.i.i.loopexit ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 0, ptr %i.al, align 4, !tbaa !709
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 3 uses
  store i32 -1, ptr %i.am, align 4, !tbaa !710
  %i.an = icmp ult ptr %.promoted.i.i.i16.i, %i.m
  br i1 %i.an, label %.lr.ph.i.i.i19.i, label %_ZL11parse_spacePPKcS0_.exit.i.i17.i

.lr.ph.i.i.i19.i:                                 ; preds = %_ZL11parse_spacePPKcS0_.exit.i.i, %bb.k
  %i.ao = phi ptr [ %i.aq, %bb.k ], [ %.promoted.i.i.i16.i, %_ZL11parse_spacePPKcS0_.exit.i.i ] ; 3 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !280
  switch i8 %i.ap, label %_ZL11parse_spacePPKcS0_.exit.i.i17.i [
    i8 32, label %bb.k
    i8 13, label %bb.k
    i8 12, label %bb.k
    i8 10, label %bb.k
    i8 9, label %bb.k
    i8 11, label %bb.k
  ]

bb.k:                                             ; preds = %.lr.ph.i.i.i19.i, %.lr.ph.i.i.i19.i, %.lr.ph.i.i.i19.i, %.lr.ph.i.i.i19.i, %.lr.ph.i.i.i19.i, %.lr.ph.i.i.i19.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 1 ; 4 uses
  store ptr %i.aq, ptr %i.h, align 8, !tbaa !631
  %exitcond.not.i.i.i20.i = icmp eq ptr %i.aq, %i.m
  br i1 %exitcond.not.i.i.i20.i, label %_ZL11parse_spacePPKcS0_.exit.i.i17.i, label %.lr.ph.i.i.i19.i, !llvm.loop !31

_ZL11parse_spacePPKcS0_.exit.i.i17.i:             ; preds = %bb.k, %.lr.ph.i.i.i19.i, %_ZL11parse_spacePPKcS0_.exit.i.i
  %i.ar = phi ptr [ %.promoted.i.i.i16.i, %_ZL11parse_spacePPKcS0_.exit.i.i ], [ %i.aq, %bb.k ], [ %i.ao, %.lr.ph.i.i.i19.i ] ; 5 uses
  %i.as = icmp eq ptr %i.ar, %i.m
  br i1 %i.as, label %bb.ab, label %bb.l

bb.l:                                             ; preds = %_ZL11parse_spacePPKcS0_.exit.i.i17.i
  %i.at = load i8, ptr %i.ar, align 1, !tbaa !280
  %.not.i.i18.i = icmp eq i8 %i.at, 91
  br i1 %.not.i.i18.i, label %bb.m, label %bb.ab

bb.m:                                             ; preds = %bb.l
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 1 ; 5 uses
  store ptr %i.au, ptr %i.h, align 8, !tbaa !631
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #63
  %i.av = ptrtoint ptr %i.m to i64                ; 2 uses
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = trunc i64 %i.ax to i32
  %.sroa.speculated.i.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.ay, i32 31)
  %i.az = zext nneg i32 %.sroa.speculated.i.i.i.i.i to i64 ; 2 uses
  %i.ba = call ptr @strncpy(ptr noundef nonnull %i.f, ptr noundef nonnull %i.au, i64 noundef %i.az) #63 ; 0 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.az
end_hunk_3
begin_hunk_4_@hb_font_funcs_set_paint_glyph_or_fail_func:bb.a
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !641  ; 2 uses
  %.not24 = icmp eq ptr %i.t, null
  br i1 %.not24, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 160
  store ptr %.034.ph, ptr %i.u, align 8, !tbaa !999
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !967  ; 2 uses
  %.not25 = icmp eq ptr %i.v, null
  br i1 %.not25, label %_ZL27_hb_font_funcs_set_preambleP15hb_font_funcs_tbPPvPPFvS1_E.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 160
  store ptr %.0.ph, ptr %i.w, align 8, !tbaa !998
  br label %_ZL27_hb_font_funcs_set_preambleP15hb_font_funcs_tbPPvPPFvS1_E.exit

_ZL27_hb_font_funcs_set_preambleP15hb_font_funcs_tbPPvPPFvS1_E.exit: ; preds = %.thread20.i, %bb.r, %bb.c, %bb.b, %bb.v, %bb.u
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef range(i32 0, 2) i32 @_ZL35hb_font_paint_glyph_or_fail_defaultP9hb_font_tPvjP16hb_paint_funcs_tS1_jjS1_(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, ptr nofree readnone captures(none) %7) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !952  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !951  ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i32, ptr %i.e, align 8, !tbaa !951
  %i.g = sitofp i32 %i.f to float
  %i.h = sitofp i32 %i.d to float
  %i.i = fdiv float %i.g, %i.h
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.j = phi float [ %i.i, %bb.b ], [ 0.000000e+00, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.l = load i32, ptr %i.k, align 4, !tbaa !954  ; 2 uses
  %.not17 = icmp eq i32 %i.l, 0
  br i1 %.not17, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.n = load i32, ptr %i.m, align 4, !tbaa !954
  %i.o = sitofp i32 %i.n to float
  %i.p = sitofp i32 %i.l to float
  %i.q = fdiv float %i.o, %i.p
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.r = phi float [ %i.q, %bb.d ], [ 0.000000e+00, %bb.c ]
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1013
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 4 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1014 ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %_ZN16hb_paint_funcs_t14push_transformEPvffffff.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1016
  br label %_ZN16hb_paint_funcs_t14push_transformEPvffffff.exit

_ZN16hb_paint_funcs_t14push_transformEPvffffff.exit: ; preds = %bb.e, %bb.f
  %i.x = phi ptr [ %i.w, %bb.f ], [ null, %bb.e ]
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(176) %3, ptr noundef %4, float noundef %i.j, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %i.r, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef %i.x) #63, !inline_history !72
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !952  ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 76 ; 2 uses
  %i.aa = load float, ptr %i.z, align 4, !tbaa !1017 ; 2 uses
  %i.ab = fcmp une float %i.aa, 0.000000e+00
  br i1 %i.ab, label %bb.g, label %bb.i

bb.g:                                             ; preds = %_ZN16hb_paint_funcs_t14push_transformEPvffffff.exit
  %i.ac = load ptr, ptr %i.s, align 8, !tbaa !1013
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !1014 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i, label %hb_paint_push_transform.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1016
  br label %hb_paint_push_transform.exit.i

hb_paint_push_transform.exit.i:                   ; preds = %bb.h, %bb.g
  %i.af = phi ptr [ %i.ae, %bb.h ], [ null, %bb.g ]
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(176) %3, ptr noundef %4, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef %i.aa, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef %i.af) #63, !inline_history !73
  br label %bb.i

bb.i:                                             ; preds = %hb_paint_push_transform.exit.i, %_ZN16hb_paint_funcs_t14push_transformEPvffffff.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 144
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !638 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 192
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !280
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 152
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !639
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !641 ; 2 uses
  %.not.i18 = icmp eq ptr %i.an, null
  br i1 %.not.i18, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 160
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !999
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.aq = phi ptr [ %i.ap, %bb.j ], [ null, %bb.i ]
  %i.ar = tail call noundef i32 %i.aj(ptr noundef nonnull align 8 dereferenceable(192) %i.y, ptr noundef %i.al, i32 noundef %2, ptr noundef nonnull %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %i.aq) #63, !inline_history !74
  %i.as = load float, ptr %i.z, align 4, !tbaa !1017
  %i.at = fcmp une float %i.as, 0.000000e+00
  br i1 %i.at, label %bb.l, label %_ZN9hb_font_t19paint_glyph_or_failEjP16hb_paint_funcs_tPvjjb.exit

bb.l:                                             ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !1018
  %i.aw = load ptr, ptr %i.u, align 8, !tbaa !1014 ; 2 uses
  %.not.i.i13.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i13.i, label %hb_paint_pop_transform.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !1019
  br label %hb_paint_pop_transform.exit.i

hb_paint_pop_transform.exit.i:                    ; preds = %bb.m, %bb.l
  %i.az = phi ptr [ %i.ay, %bb.m ], [ null, %bb.l ]
  tail call void %i.av(ptr noundef nonnull align 8 dereferenceable(176) %3, ptr noundef %4, ptr noundef %i.az) #63, !inline_history !75
  br label %_ZN9hb_font_t19paint_glyph_or_failEjP16hb_paint_funcs_tPvjjb.exit

_ZN9hb_font_t19paint_glyph_or_failEjP16hb_paint_funcs_tPvjjb.exit: ; preds = %bb.k, %hb_paint_pop_transform.exit.i
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !1018
  %i.bc = load ptr, ptr %i.u, align 8, !tbaa !1014 ; 2 uses
  %.not.i19 = icmp eq ptr %i.bc, null
  br i1 %.not.i19, label %_ZN16hb_paint_funcs_t13pop_transformEPv.exit, label %bb.n

bb.n:                                             ; preds = %_ZN9hb_font_t19paint_glyph_or_failEjP16hb_paint_funcs_tPvjjb.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !1019
  br label %_ZN16hb_paint_funcs_t13pop_transformEPv.exit

_ZN16hb_paint_funcs_t13pop_transformEPv.exit:     ; preds = %_ZN9hb_font_t19paint_glyph_or_failEjP16hb_paint_funcs_tPvjjb.exit, %bb.n
  %i.bf = phi ptr [ %i.be, %bb.n ], [ null, %_ZN9hb_font_t19paint_glyph_or_failEjP16hb_paint_funcs_tPvjjb.exit ]
  %i.bg = icmp ne i32 %i.ar, 0
  tail call void %i.bb(ptr noundef nonnull align 8 dereferenceable(176) %3, ptr noundef %4, ptr noundef %i.bf) #63, !inline_history !76
  %i.bh = zext i1 %i.bg to i32
  ret i32 %i.bh
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN9hb_font_t12has_func_setEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %0, i32 noundef %1) local_unnamed_addr #21 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !638
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = zext i32 %1 to i64                       ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !280
  %i.g = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL22_hb_font_funcs_default, i64 32), i64 %i.d
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !280
  %i.i = icmp ne ptr %i.f, %i.h
  ret i1 %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN9hb_font_t8has_funcEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %0, i32 noundef %1) local_unnamed_addr #21 align 2 {
bb.a:
  %i.a = zext i32 %1 to i64                       ; 2 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL22_hb_font_funcs_default, i64 32), i64 %i.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !280
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.b, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %i.j, %bb.b ]   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.tr, i64 144
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !638
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.a
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !280
  %.not3.not.not.not.not = icmp ne ptr %i.h, %i.c ; 2 uses
  br i1 %.not3.not.not.not.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %tailrecurse
  %i.i = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !952  ; 3 uses
  %.not = icmp eq ptr %i.j, null
  %.not2 = icmp eq ptr %i.j, @_hb_Null_hb_font_t
  %or.cond = or i1 %.not, %.not2
  br i1 %or.cond, label %bb.c, label %tailrecurse

bb.c:                                             ; preds = %bb.b, %tailrecurse
  ret i1 %.not3.not.not.not.not
}

; Function Attrs: mustprogress nounwind uwtable
define noundef range(i32 0, 2) i32 @hb_font_get_h_extents(ptr noundef %0, ptr noundef initializes((0, 48)) %1) local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %1, i8 0, i64 48, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !638  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !280
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !639
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !641  ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !970
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = phi ptr [ %i.i, %bb.b ], [ null, %bb.a ]
  %i.k = tail call noundef i32 %i.d(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %i.f, ptr noundef nonnull %1, ptr noundef %i.j) #63, !inline_history !64
  %i.l = icmp ne i32 %i.k, 0                      ; 2 uses
  br i1 %i.l, label %bb.d, label %_ZN9hb_font_t18get_font_h_extentsEP17hb_font_extents_tb.exit

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.n = load i32, ptr %i.m, align 4, !tbaa !954
  %i.o = icmp slt i32 %i.n, 0
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.q = load i32, ptr %i.p, align 4, !tbaa !1004 ; 2 uses
  %i.r = sub nsw i32 0, %i.q
  %i.s = select i1 %i.o, i32 %i.r, i32 %i.q
  %i.t = load i32, ptr %1, align 4, !tbaa !1001
  %i.u = add nsw i32 %i.t, %i.s
  store i32 %i.u, ptr %1, align 4, !tbaa !1001
  br label %_ZN9hb_font_t18get_font_h_extentsEP17hb_font_extents_tb.exit

_ZN9hb_font_t18get_font_h_extentsEP17hb_font_extents_tb.exit: ; preds = %bb.c, %bb.d
  %i.v = zext i1 %i.l to i32
  ret i32 %i.v
}

; Function Attrs: mustprogress nounwind uwtable
define noundef range(i32 0, 2) i32 @hb_font_get_v_extents(ptr noundef %0, ptr noundef initializes((0, 48)) %1) local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %1, i8 0, i64 48, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !638  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !280
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !639
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !641  ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !972
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = phi ptr [ %i.j, %bb.b ], [ null, %bb.a ]
  %i.l = tail call noundef i32 %i.d(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %i.f, ptr noundef nonnull %1, ptr noundef %i.k) #63, !inline_history !65
  %i.m = icmp ne i32 %i.l, 0                      ; 2 uses
  br i1 %i.m, label %bb.d, label %_ZN9hb_font_t18get_font_v_extentsEP17hb_font_extents_tb.exit

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load i32, ptr %i.n, align 8, !tbaa !951
  %i.p = icmp slt i32 %i.o, 0
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = load i32, ptr %i.q, align 8, !tbaa !949  ; 2 uses
  %i.s = sub nsw i32 0, %i.r
  %i.t = select i1 %i.p, i32 %i.s, i32 %i.r       ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.v = load i8, ptr %i.u, align 4, !tbaa !950, !range !380, !noundef !293
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = sdiv i32 %i.t, 2                         ; 2 uses
  %i.y = load i32, ptr %1, align 4, !tbaa !1001
  %i.z = add nsw i32 %i.y, %i.x
  store i32 %i.z, ptr %1, align 4, !tbaa !1001
  %.neg.i = sub i32 %i.x, %i.t
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !1002
  %i.ac = add i32 %.neg.i, %i.ab
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !1002
  br label %_ZN9hb_font_t18get_font_v_extentsEP17hb_font_extents_tb.exit

bb.f:                                             ; preds = %bb.d
  %i.ad = load i32, ptr %1, align 4, !tbaa !1001
  %i.ae = add nsw i32 %i.ad, %i.t
  store i32 %i.ae, ptr %1, align 4, !tbaa !1001
  br label %_ZN9hb_font_t18get_font_v_extentsEP17hb_font_extents_tb.exit

_ZN9hb_font_t18get_font_v_extentsEP17hb_font_extents_tb.exit: ; preds = %bb.c, %bb.e, %bb.f
  %i.af = zext i1 %i.m to i32
  ret i32 %i.af
}

; Function Attrs: mustprogress nounwind uwtable
define noundef i32 @hb_font_get_glyph(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef initializes((0, 4)) %3) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %2, 0
  store i32 0, ptr %3, align 4, !tbaa !324
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !638  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !639  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !641  ; 3 uses
  %.not.i9 = icmp eq ptr %i.f, null               ; 2 uses
  br i1 %.not, label %bb.d, label %bb.b, !prof !268

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !280
  br i1 %.not.i9, label %_ZN9hb_font_t19get_variation_glyphEjjPjj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !976
  br label %_ZN9hb_font_t19get_variation_glyphEjjPjj.exit

_ZN9hb_font_t19get_variation_glyphEjjPjj.exit:    ; preds = %bb.b, %bb.c
  %i.k = phi ptr [ %i.j, %bb.c ], [ null, %bb.b ]
  %i.l = tail call noundef i32 %i.h(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %i.d, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %3, ptr noundef %i.k) #63, !inline_history !66
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !280
  br i1 %.not.i9, label %_ZN9hb_font_t17get_nominal_glyphEjPjj.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !947
  br label %_ZN9hb_font_t17get_nominal_glyphEjPjj.exit

_ZN9hb_font_t17get_nominal_glyphEjPjj.exit:       ; preds = %bb.d, %bb.e
  %i.q = phi ptr [ %i.p, %bb.e ], [ null, %bb.d ]
  %i.r = tail call noundef i32 %i.n(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %i.d, i32 noundef %1, ptr noundef nonnull %3, ptr noundef %i.q) #63, !inline_history !51
  br label %bb.f

bb.f:                                             ; preds = %_ZN9hb_font_t17get_nominal_glyphEjPjj.exit, %_ZN9hb_font_t19get_variation_glyphEjjPjj.exit
  %.0 = phi i32 [ %i.l, %_ZN9hb_font_t19get_variation_glyphEjjPjj.exit ], [ %i.r, %_ZN9hb_font_t17get_nominal_glyphEjPjj.exit ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define noundef i32 @hb_font_get_nominal_glyph(ptr noundef %0, i32 noundef %1, ptr noundef initializes((0, 4)) %2) local_unnamed_addr #0 {
bb.a:
  store i32 0, ptr %2, align 4, !tbaa !324
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !638  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !280
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !639
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !641  ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZN9hb_font_t17get_nominal_glyphEjPjj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !947
  br label %_ZN9hb_font_t17get_nominal_glyphEjPjj.exit

_ZN9hb_font_t17get_nominal_glyphEjPjj.exit:       ; preds = %bb.a, %bb.b
  %i.k = phi ptr [ %i.j, %bb.b ], [ null, %bb.a ]
  %i.l = tail call noundef i32 %i.d(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %i.f, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %i.k) #63, !inline_history !51
  ret i32 %i.l
}

; Function Attrs: mustprogress nounwind uwtable
define noundef i32 @hb_font_get_nominal_glyphs(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !638  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !280
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !639
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !641  ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZN9hb_font_t18get_nominal_glyphsEjPKjjPjj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !953
  br label %_ZN9hb_font_t18get_nominal_glyphsEjPKjjPjj.exit

_ZN9hb_font_t18get_nominal_glyphsEjPKjjPjj.exit:  ; preds = %bb.a, %bb.b
  %i.k = phi ptr [ %i.j, %bb.b ], [ null, %bb.a ]
  %i.l = tail call noundef i32 %i.d(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %i.f, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %i.k) #63, !inline_history !53
  ret i32 %i.l
}

; Function Attrs: mustprogress nounwind uwtable
define noundef i32 @hb_font_get_variation_glyph(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef initializes((0, 4)) %3) local_unnamed_addr #0 {
bb.a:
  store i32 0, ptr %3, align 4, !tbaa !324
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !638  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !280
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !639
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !641  ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZN9hb_font_t19get_variation_glyphEjjPjj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !976
  br label %_ZN9hb_font_t19get_variation_glyphEjjPjj.exit

_ZN9hb_font_t19get_variation_glyphEjjPjj.exit:    ; preds = %bb.a, %bb.b
  %i.k = phi ptr [ %i.j, %bb.b ], [ null, %bb.a ]
  %i.l = tail call noundef i32 %i.d(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %i.f, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %3, ptr noundef %i.k) #63, !inline_history !66
  ret i32 %i.l
}

; Function Attrs: mustprogress nounwind uwtable
define i32 @hb_font_get_glyph_h_advance(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !638  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !280
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !639
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !641  ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.c, label %bb.b

end_hunk_4
begin_hunk_5_@hb_font_get_glyph_v_advances:bb.a
  %.not17.i = icmp eq i32 %i.m, 0
  br i1 %.not17.i, label %_ZN9hb_font_t20get_glyph_v_advancesEjPKjjPijb.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.o = load i8, ptr %i.n, align 4, !tbaa !950, !range !380, !noundef !293
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %_ZN9hb_font_t20get_glyph_v_advancesEjPKjjPijb.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.r = load i32, ptr %i.q, align 4, !tbaa !954
  %i.s = sub nsw i32 0, %i.m
  %i.t = icmp slt i32 %i.r, 0
  %i.u = select i1 %i.t, i32 %i.s, i32 %i.m       ; 5 uses
  %.not21.i = icmp eq i32 %1, 0
  br i1 %.not21.i, label %_ZN9hb_font_t20get_glyph_v_advancesEjPKjjPijb.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.v = zext i32 %5 to i64                       ; 5 uses
  %xtraiter = and i32 %1, 3                       ; 3 uses
  %i.w = icmp ult i32 %1, 4
  br i1 %i.w, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i32 %1, -4
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.new
  %.01419.i = phi ptr [ %4, %.lr.ph.i.new ], [ %i.am, %bb.f ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.f ]
  %i.x = load i32, ptr %.01419.i, align 4, !tbaa !324 ; 2 uses
  %.not18.i = icmp eq i32 %i.x, 0
  %i.y = select i1 %.not18.i, i32 0, i32 %i.u
  %i.z = add nsw i32 %i.y, %i.x
  store i32 %i.z, ptr %.01419.i, align 4, !tbaa !324
  %i.aa = getelementptr inbounds nuw i8, ptr %.01419.i, i64 %i.v ; 3 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !324 ; 2 uses
  %.not18.i.1 = icmp eq i32 %i.ab, 0
  %i.ac = select i1 %.not18.i.1, i32 0, i32 %i.u
  %i.ad = add nsw i32 %i.ac, %i.ab
  store i32 %i.ad, ptr %i.aa, align 4, !tbaa !324
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.v ; 3 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !324 ; 2 uses
  %.not18.i.2 = icmp eq i32 %i.af, 0
  %i.ag = select i1 %.not18.i.2, i32 0, i32 %i.u
  %i.ah = add nsw i32 %i.ag, %i.af
  store i32 %i.ah, ptr %i.ae, align 4, !tbaa !324
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.v ; 3 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !324 ; 2 uses
  %.not18.i.3 = icmp eq i32 %i.aj, 0
  %i.ak = select i1 %.not18.i.3, i32 0, i32 %i.u
  %i.al = add nsw i32 %i.ak, %i.aj
  store i32 %i.al, ptr %i.ai, align 4, !tbaa !324
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.v ; 2 uses
  %niter.next.3 = add nuw i32 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN9hb_font_t20get_glyph_v_advancesEjPKjjPijb.exit.loopexit.unr-lcssa, label %bb.f, !llvm.loop !78

_ZN9hb_font_t20get_glyph_v_advancesEjPKjjPijb.exit.loopexit.unr-lcssa: ; preds = %bb.f
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN9hb_font_t20get_glyph_v_advancesEjPKjjPijb.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN9hb_font_t20get_glyph_v_advancesEjPKjjPijb.exit.loopexit.unr-lcssa, %.lr.ph.i
  %.01419.i.epil.init = phi ptr [ %4, %.lr.ph.i ], [ %i.am, %_ZN9hb_font_t20get_glyph_v_advancesEjPKjjPijb.exit.loopexit.unr-lcssa ]
  %lcmp.mod7 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod7)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader
  %.01419.i.epil = phi ptr [ %.01419.i.epil.init, %.epil.preheader ], [ %i.aq, %bb.g ] ; 3 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.g ]
  %i.an = load i32, ptr %.01419.i.epil, align 4, !tbaa !324 ; 2 uses
  %.not18.i.epil = icmp eq i32 %i.an, 0
  %i.ao = select i1 %.not18.i.epil, i32 0, i32 %i.u
  %i.ap = add nsw i32 %i.ao, %i.an
  store i32 %i.ap, ptr %.01419.i.epil, align 4, !tbaa !324
  %i.aq = getelementptr inbounds nuw i8, ptr %.01419.i.epil, i64 %i.v
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN9hb_font_t20get_glyph_v_advancesEjPKjjPijb.exit, label %bb.g, !llvm.loop !2493

_ZN9hb_font_t20get_glyph_v_advancesEjPKjjPijb.exit: ; preds = %_ZN9hb_font_t20get_glyph_v_advancesEjPKjjPijb.exit.loopexit.unr-lcssa, %bb.g, %bb.c, %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN9hb_font_t20get_glyph_v_advancesEjPKjjPijb(ptr noundef nonnull align 8 dereferenceable(192) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i1 noundef zeroext %6) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !638  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !280
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !639
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !641  ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !959
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.k = phi ptr [ %i.j, %bb.b ], [ null, %bb.a ]
  tail call void %i.d(ptr noundef nonnull %0, ptr noundef %i.f, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %i.k) #63
  br i1 %6, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.m = load i32, ptr %i.l, align 4, !tbaa !1004 ; 3 uses
  %.not17 = icmp eq i32 %i.m, 0
  br i1 %.not17, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.o = load i8, ptr %i.n, align 4, !tbaa !950, !range !380, !noundef !293
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.r = load i32, ptr %i.q, align 4, !tbaa !954
  %i.s = sub nsw i32 0, %i.m
  %i.t = icmp slt i32 %i.r, 0
  %i.u = select i1 %i.t, i32 %i.s, i32 %i.m       ; 5 uses
  %.not21 = icmp eq i32 %1, 0
  br i1 %.not21, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.v = zext i32 %5 to i64                       ; 5 uses
  %xtraiter = and i32 %1, 3                       ; 3 uses
  %i.w = icmp ult i32 %1, 4
  br i1 %i.w, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i32 %1, -4
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.new
  %.01419 = phi ptr [ %4, %.lr.ph.new ], [ %i.am, %bb.g ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.g ]
  %i.x = load i32, ptr %.01419, align 4, !tbaa !324 ; 2 uses
  %.not18 = icmp eq i32 %i.x, 0
  %i.y = select i1 %.not18, i32 0, i32 %i.u
  %i.z = add nsw i32 %i.y, %i.x
  store i32 %i.z, ptr %.01419, align 4, !tbaa !324
  %i.aa = getelementptr inbounds nuw i8, ptr %.01419, i64 %i.v ; 3 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !324 ; 2 uses
  %.not18.1 = icmp eq i32 %i.ab, 0
  %i.ac = select i1 %.not18.1, i32 0, i32 %i.u
  %i.ad = add nsw i32 %i.ac, %i.ab
  store i32 %i.ad, ptr %i.aa, align 4, !tbaa !324
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.v ; 3 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !324 ; 2 uses
  %.not18.2 = icmp eq i32 %i.af, 0
  %i.ag = select i1 %.not18.2, i32 0, i32 %i.u
  %i.ah = add nsw i32 %i.ag, %i.af
  store i32 %i.ah, ptr %i.ae, align 4, !tbaa !324
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.v ; 3 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !324 ; 2 uses
  %.not18.3 = icmp eq i32 %i.aj, 0
  %i.ak = select i1 %.not18.3, i32 0, i32 %i.u
  %i.al = add nsw i32 %i.ak, %i.aj
  store i32 %i.al, ptr %i.ai, align 4, !tbaa !324
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.v ; 2 uses
  %niter.next.3 = add nuw i32 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.g, !llvm.loop !78

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.g
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %.01419.epil.init = phi ptr [ %4, %.lr.ph ], [ %i.am, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod24 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod24)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader
  %.01419.epil = phi ptr [ %.01419.epil.init, %.epil.preheader ], [ %i.aq, %bb.h ] ; 3 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.h ]
  %i.an = load i32, ptr %.01419.epil, align 4, !tbaa !324 ; 2 uses
  %.not18.epil = icmp eq i32 %i.an, 0
  %i.ao = select i1 %.not18.epil, i32 0, i32 %i.u
  %i.ap = add nsw i32 %i.ao, %i.an
  store i32 %i.ap, ptr %.01419.epil, align 4, !tbaa !324
  %i.aq = getelementptr inbounds nuw i8, ptr %.01419.epil, i64 %i.v
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.h, !llvm.loop !2494

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.h, %bb.f, %bb.e, %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef range(i32 0, 2) i32 @hb_font_get_glyph_h_origin(ptr noundef %0, i32 noundef %1, ptr noundef initializes((0, 4)) %2, ptr noundef initializes((0, 4)) %3) local_unnamed_addr #0 {
bb.a:
  store i32 0, ptr %3, align 4, !tbaa !324
  store i32 0, ptr %2, align 4, !tbaa !324
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !638  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !280
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !639
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !641  ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !961
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = phi ptr [ %i.j, %bb.b ], [ null, %bb.a ]
  %i.l = tail call noundef i32 %i.d(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %i.f, i32 noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef %i.k) #63, !inline_history !56
  %i.m = icmp ne i32 %i.l, 0                      ; 2 uses
  br i1 %i.m, label %bb.d, label %_ZN9hb_font_t18get_glyph_h_originEjPiS0_b.exit

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.o = load i8, ptr %i.n, align 4, !tbaa !950, !range !380, !noundef !293
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %_ZN9hb_font_t18get_glyph_h_originEjPiS0_b.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load i32, ptr %i.q, align 8, !tbaa !951
  %i.s = icmp slt i32 %i.r, 0
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.u = load i32, ptr %i.t, align 8, !tbaa !949  ; 2 uses
  %i.v = sub nsw i32 0, %i.u
  %i.w = select i1 %i.s, i32 %i.v, i32 %i.u
  %i.x = load i32, ptr %2, align 4, !tbaa !324
  %i.y = add nsw i32 %i.x, %i.w
  store i32 %i.y, ptr %2, align 4, !tbaa !324
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !954
  %i.ab = icmp slt i32 %i.aa, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !1004 ; 2 uses
  %i.ae = sub nsw i32 0, %i.ad
  %i.af = select i1 %i.ab, i32 %i.ae, i32 %i.ad
  %i.ag = load i32, ptr %3, align 4, !tbaa !324
  %i.ah = add nsw i32 %i.ag, %i.af
  store i32 %i.ah, ptr %3, align 4, !tbaa !324
  br label %_ZN9hb_font_t18get_glyph_h_originEjPiS0_b.exit

_ZN9hb_font_t18get_glyph_h_originEjPiS0_b.exit:   ; preds = %bb.c, %bb.d, %bb.e
  %i.ai = zext i1 %i.m to i32
  ret i32 %i.ai
}

; Function Attrs: mustprogress nounwind uwtable
define noundef range(i32 0, 2) i32 @hb_font_get_glyph_v_origin(ptr noundef %0, i32 noundef %1, ptr noundef initializes((0, 4)) %2, ptr noundef initializes((0, 4)) %3) local_unnamed_addr #0 {
bb.a:
  store i32 0, ptr %3, align 4, !tbaa !324
  store i32 0, ptr %2, align 4, !tbaa !324
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !638  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !280
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !639
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !641  ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !963
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = phi ptr [ %i.j, %bb.b ], [ null, %bb.a ]
  %i.l = tail call noundef i32 %i.d(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %i.f, i32 noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef %i.k) #63, !inline_history !59
  %i.m = icmp ne i32 %i.l, 0                      ; 2 uses
  br i1 %i.m, label %bb.d, label %_ZN9hb_font_t18get_glyph_v_originEjPiS0_b.exit

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.o = load i8, ptr %i.n, align 4, !tbaa !950, !range !380, !noundef !293
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %_ZN9hb_font_t18get_glyph_v_originEjPiS0_b.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load i32, ptr %i.q, align 8, !tbaa !951
  %i.s = icmp slt i32 %i.r, 0
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.u = load i32, ptr %i.t, align 8, !tbaa !949  ; 2 uses
  %i.v = sub nsw i32 0, %i.u
  %i.w = select i1 %i.s, i32 %i.v, i32 %i.u
  %i.x = load i32, ptr %2, align 4, !tbaa !324
  %i.y = add nsw i32 %i.x, %i.w
  store i32 %i.y, ptr %2, align 4, !tbaa !324
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !954
  %i.ab = icmp slt i32 %i.aa, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !1004 ; 2 uses
  %i.ae = sub nsw i32 0, %i.ad
  %i.af = select i1 %i.ab, i32 %i.ae, i32 %i.ad
  %i.ag = load i32, ptr %3, align 4, !tbaa !324
  %i.ah = add nsw i32 %i.ag, %i.af
  store i32 %i.ah, ptr %3, align 4, !tbaa !324
  br label %_ZN9hb_font_t18get_glyph_v_originEjPiS0_b.exit

_ZN9hb_font_t18get_glyph_v_originEjPiS0_b.exit:   ; preds = %bb.c, %bb.d, %bb.e
  %i.ai = zext i1 %i.m to i32
  ret i32 %i.ai
}

; Function Attrs: mustprogress nounwind uwtable
define noundef range(i32 0, 2) i32 @hb_font_get_glyph_h_origins(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !638  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !280
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !639
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !641  ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !962
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = phi ptr [ %i.j, %bb.b ], [ null, %bb.a ]
  %i.l = tail call noundef i32 %i.d(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %i.f, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7, ptr noundef %i.k) #63, !inline_history !57
  %i.m = icmp ne i32 %i.l, 0                      ; 2 uses
  br i1 %i.m, label %bb.d, label %_ZN9hb_font_t19get_glyph_h_originsEjPKjjPijS2_jb.exit

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.p = load <2 x i32>, ptr %i.n, align 8, !tbaa !324
  %i.q = icmp slt <2 x i32> %i.p, zeroinitializer
  %i.r = load <2 x i32>, ptr %i.o, align 8, !tbaa !324 ; 2 uses
  %i.s = sub nsw <2 x i32> zeroinitializer, %i.r
  %i.t = select <2 x i1> %i.q, <2 x i32> %i.s, <2 x i32> %i.r ; 6 uses
  %.not28.i = icmp eq i32 %1, 0
  br i1 %.not28.i, label %_ZN9hb_font_t19get_glyph_h_originsEjPKjjPijS2_jb.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.v = load i8, ptr %i.u, align 4, !tbaa !950, !range !380, !noundef !293
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = zext i32 %5 to i64                       ; 2 uses
  %i.y = zext i32 %7 to i64                       ; 2 uses
  br i1 %i.w, label %_ZN9hb_font_t19get_glyph_h_originsEjPKjjPijS2_jb.exit, label %.lr.ph.split.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %.lr.ph.i
  %xtraiter = and i32 %1, 1
  %i.z = icmp eq i32 %1, 1
  br i1 %i.z, label %.lr.ph.split.i.epil.preheader, label %.lr.ph.split.i.preheader.new

.lr.ph.split.i.preheader.new:                     ; preds = %.lr.ph.split.i.preheader
  %unroll_iter = and i32 %1, -2
  %i.aa = extractelement <2 x i32> %i.t, i64 0
  %i.ab = extractelement <2 x i32> %i.t, i64 1
  %i.ac = extractelement <2 x i32> %i.t, i64 0
  %i.ad = extractelement <2 x i32> %i.t, i64 1
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i, %.lr.ph.split.i.preheader.new
  %.02226.i = phi ptr [ %4, %.lr.ph.split.i.preheader.new ], [ %i.ao, %.lr.ph.split.i ] ; 3 uses
  %.02325.i = phi ptr [ %6, %.lr.ph.split.i.preheader.new ], [ %i.ap, %.lr.ph.split.i ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph.split.i.preheader.new ], [ %niter.next.1, %.lr.ph.split.i ]
  %i.ae = load i32, ptr %.02226.i, align 4, !tbaa !324
  %i.af = add nsw i32 %i.ae, %i.aa
  store i32 %i.af, ptr %.02226.i, align 4, !tbaa !324
  %i.ag = load i32, ptr %.02325.i, align 4, !tbaa !324
  %i.ah = add nsw i32 %i.ag, %i.ab
  store i32 %i.ah, ptr %.02325.i, align 4, !tbaa !324
  %i.ai = getelementptr inbounds nuw i8, ptr %.02226.i, i64 %i.x ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.02325.i, i64 %i.y ; 3 uses
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !324
  %i.al = add nsw i32 %i.ak, %i.ac
  store i32 %i.al, ptr %i.ai, align 4, !tbaa !324
  %i.am = load i32, ptr %i.aj, align 4, !tbaa !324
  %i.an = add nsw i32 %i.am, %i.ad
  store i32 %i.an, ptr %i.aj, align 4, !tbaa !324
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.x ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.y ; 2 uses
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN9hb_font_t19get_glyph_h_originsEjPKjjPijS2_jb.exit.loopexit.unr-lcssa, label %.lr.ph.split.i, !llvm.loop !58

_ZN9hb_font_t19get_glyph_h_originsEjPKjjPijS2_jb.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.split.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN9hb_font_t19get_glyph_h_originsEjPKjjPijS2_jb.exit, label %.lr.ph.split.i.epil.preheader

.lr.ph.split.i.epil.preheader:                    ; preds = %_ZN9hb_font_t19get_glyph_h_originsEjPKjjPijS2_jb.exit.loopexit.unr-lcssa, %.lr.ph.split.i.preheader
  %.02226.i.epil.init = phi ptr [ %4, %.lr.ph.split.i.preheader ], [ %i.ao, %_ZN9hb_font_t19get_glyph_h_originsEjPKjjPijS2_jb.exit.loopexit.unr-lcssa ] ; 2 uses
  %.02325.i.epil.init = phi ptr [ %6, %.lr.ph.split.i.preheader ], [ %i.ap, %_ZN9hb_font_t19get_glyph_h_originsEjPKjjPijS2_jb.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod8 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod8)
  %i.aq = load i32, ptr %.02226.i.epil.init, align 4, !tbaa !324
  %i.ar = extractelement <2 x i32> %i.t, i64 0
  %i.as = add nsw i32 %i.aq, %i.ar
  store i32 %i.as, ptr %.02226.i.epil.init, align 4, !tbaa !324
  %i.at = load i32, ptr %.02325.i.epil.init, align 4, !tbaa !324
  %i.au = extractelement <2 x i32> %i.t, i64 1
  %i.av = add nsw i32 %i.at, %i.au
  store i32 %i.av, ptr %.02325.i.epil.init, align 4, !tbaa !324
  br label %_ZN9hb_font_t19get_glyph_h_originsEjPKjjPijS2_jb.exit

_ZN9hb_font_t19get_glyph_h_originsEjPKjjPijS2_jb.exit: ; preds = %.lr.ph.split.i.epil.preheader, %_ZN9hb_font_t19get_glyph_h_originsEjPKjjPijS2_jb.exit.loopexit.unr-lcssa, %bb.c, %bb.d, %.lr.ph.i
  %i.aw = zext i1 %i.m to i32
  ret i32 %i.aw
}

; Function Attrs: mustprogress nounwind uwtable
define noundef range(i32 0, 2) i32 @hb_font_get_glyph_v_origins(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !638  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !280
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !639
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !641  ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !964
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = phi ptr [ %i.j, %bb.b ], [ null, %bb.a ]
  %i.l = tail call noundef i32 %i.d(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %i.f, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7, ptr noundef %i.k) #63, !inline_history !60
  %i.m = icmp ne i32 %i.l, 0                      ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = load i8, ptr %i.n, align 8, !tbaa !965, !range !380, !noundef !293
  %i.p = trunc nuw i8 %i.o to i1
  %or.cond.i = and i1 %i.m, %i.p
  br i1 %or.cond.i, label %bb.d, label %_ZN9hb_font_t19get_glyph_v_originsEjPKjjPijS2_jb.exit

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.s = load <2 x i32>, ptr %i.q, align 8, !tbaa !324
  %i.t = icmp slt <2 x i32> %i.s, zeroinitializer
  %i.u = load <2 x i32>, ptr %i.r, align 8, !tbaa !324 ; 2 uses
  %i.v = sub nsw <2 x i32> zeroinitializer, %i.u
  %i.w = select <2 x i1> %i.t, <2 x i32> %i.v, <2 x i32> %i.u ; 6 uses
  %.not28.i = icmp eq i32 %1, 0
  br i1 %.not28.i, label %_ZN9hb_font_t19get_glyph_v_originsEjPKjjPijS2_jb.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.y = load i8, ptr %i.x, align 4, !tbaa !950, !range !380, !noundef !293
  %i.z = trunc nuw i8 %i.y to i1
  %i.aa = zext i32 %5 to i64                      ; 2 uses
  %i.ab = zext i32 %7 to i64                      ; 2 uses
  br i1 %i.z, label %_ZN9hb_font_t19get_glyph_v_originsEjPKjjPijS2_jb.exit, label %.lr.ph.split.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %.lr.ph.i
  %xtraiter = and i32 %1, 1
  %i.ac = icmp eq i32 %1, 1
  br i1 %i.ac, label %.lr.ph.split.i.epil.preheader, label %.lr.ph.split.i.preheader.new

.lr.ph.split.i.preheader.new:                     ; preds = %.lr.ph.split.i.preheader
  %unroll_iter = and i32 %1, -2
  %i.ad = extractelement <2 x i32> %i.w, i64 0
  %i.ae = extractelement <2 x i32> %i.w, i64 1
  %i.af = extractelement <2 x i32> %i.w, i64 0
  %i.ag = extractelement <2 x i32> %i.w, i64 1
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i, %.lr.ph.split.i.preheader.new
  %.02226.i = phi ptr [ %4, %.lr.ph.split.i.preheader.new ], [ %i.ar, %.lr.ph.split.i ] ; 3 uses
  %.02325.i = phi ptr [ %6, %.lr.ph.split.i.preheader.new ], [ %i.as, %.lr.ph.split.i ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph.split.i.preheader.new ], [ %niter.next.1, %.lr.ph.split.i ]
  %i.ah = load i32, ptr %.02226.i, align 4, !tbaa !324
  %i.ai = add nsw i32 %i.ah, %i.ad
  store i32 %i.ai, ptr %.02226.i, align 4, !tbaa !324
  %i.aj = load i32, ptr %.02325.i, align 4, !tbaa !324
  %i.ak = add nsw i32 %i.aj, %i.ae
  store i32 %i.ak, ptr %.02325.i, align 4, !tbaa !324
  %i.al = getelementptr inbounds nuw i8, ptr %.02226.i, i64 %i.aa ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.02325.i, i64 %i.ab ; 3 uses
  %i.an = load i32, ptr %i.al, align 4, !tbaa !324
  %i.ao = add nsw i32 %i.an, %i.af
  store i32 %i.ao, ptr %i.al, align 4, !tbaa !324
  %i.ap = load i32, ptr %i.am, align 4, !tbaa !324
  %i.aq = add nsw i32 %i.ap, %i.ag
  store i32 %i.aq, ptr %i.am, align 4, !tbaa !324
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aa ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ab ; 2 uses
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN9hb_font_t19get_glyph_v_originsEjPKjjPijS2_jb.exit.loopexit.unr-lcssa, label %.lr.ph.split.i, !llvm.loop !61

_ZN9hb_font_t19get_glyph_v_originsEjPKjjPijS2_jb.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.split.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN9hb_font_t19get_glyph_v_originsEjPKjjPijS2_jb.exit, label %.lr.ph.split.i.epil.preheader

.lr.ph.split.i.epil.preheader:                    ; preds = %_ZN9hb_font_t19get_glyph_v_originsEjPKjjPijS2_jb.exit.loopexit.unr-lcssa, %.lr.ph.split.i.preheader
  %.02226.i.epil.init = phi ptr [ %4, %.lr.ph.split.i.preheader ], [ %i.ar, %_ZN9hb_font_t19get_glyph_v_originsEjPKjjPijS2_jb.exit.loopexit.unr-lcssa ] ; 2 uses
  %.02325.i.epil.init = phi ptr [ %6, %.lr.ph.split.i.preheader ], [ %i.as, %_ZN9hb_font_t19get_glyph_v_originsEjPKjjPijS2_jb.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod8 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod8)
  %i.at = load i32, ptr %.02226.i.epil.init, align 4, !tbaa !324
  %i.au = extractelement <2 x i32> %i.w, i64 0
  %i.av = add nsw i32 %i.at, %i.au
  store i32 %i.av, ptr %.02226.i.epil.init, align 4, !tbaa !324
  %i.aw = load i32, ptr %.02325.i.epil.init, align 4, !tbaa !324
  %i.ax = extractelement <2 x i32> %i.w, i64 1
  %i.ay = add nsw i32 %i.aw, %i.ax
  store i32 %i.ay, ptr %.02325.i.epil.init, align 4, !tbaa !324
  br label %_ZN9hb_font_t19get_glyph_v_originsEjPKjjPijS2_jb.exit

_ZN9hb_font_t19get_glyph_v_originsEjPKjjPijS2_jb.exit: ; preds = %.lr.ph.split.i.epil.preheader, %_ZN9hb_font_t19get_glyph_v_originsEjPKjjPijS2_jb.exit.loopexit.unr-lcssa, %bb.c, %bb.d, %.lr.ph.i
  %i.az = zext i1 %i.m to i32
  ret i32 %i.az
}

; Function Attrs: mustprogress nounwind uwtable
define noundef i32 @hb_font_get_glyph_h_kerning(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !638  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !280
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !639
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !641  ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZN9hb_font_t19get_glyph_h_kerningEjj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !986
  br label %_ZN9hb_font_t19get_glyph_h_kerningEjj.exit

_ZN9hb_font_t19get_glyph_h_kerningEjj.exit:       ; preds = %bb.a, %bb.b
  %i.k = phi ptr [ %i.j, %bb.b ], [ null, %bb.a ]
  %i.l = tail call noundef i32 %i.d(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %i.f, i32 noundef %1, i32 noundef %2, ptr noundef %i.k) #63, !inline_history !67
  ret i32 %i.l
}

; Function Attrs: mustprogress nounwind uwtable
define noundef i32 @hb_font_get_glyph_v_kerning(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !638  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !280
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !639
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !641  ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZN9hb_font_t19get_glyph_v_kerningEjj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !988
  br label %_ZN9hb_font_t19get_glyph_v_kerningEjj.exit

_ZN9hb_font_t19get_glyph_v_kerningEjj.exit:       ; preds = %bb.a, %bb.b
  %i.k = phi ptr [ %i.j, %bb.b ], [ null, %bb.a ]
  %i.l = tail call noundef i32 %i.d(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %i.f, i32 noundef %1, i32 noundef %2, ptr noundef %i.k) #63, !inline_history !68
  ret i32 %i.l
}

; Function Attrs: mustprogress nounwind uwtable
define noundef i32 @hb_font_get_glyph_extents(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 @_ZN9hb_font_t17get_glyph_extentsEjP18hb_glyph_extents_tb(ptr noundef nonnull align 8 dereferenceable(192) %0, i32 noundef %1, ptr noundef %2, i1 noundef zeroext true)
  ret i32 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN9hb_font_t17get_glyph_extentsEjP18hb_glyph_extents_tb(ptr noundef nonnull align 8 dereferenceable(192) %0, i32 noundef %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #31 comdat align 2 {
bb.a:
  %4 = alloca %struct.hb_paint_extents_context_t, align 8 ; 18 uses
  %5 = alloca %struct.hb_extents_t, align 16      ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  br i1 %3, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !638  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !280
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !639
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !641  ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !990
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.k = phi ptr [ %i.j, %bb.c ], [ null, %bb.b ]
  %i.l = tail call noundef i32 %i.d(ptr noundef nonnull %0, ptr noundef %i.f, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %i.k) #63
  br label %bb.aq

bb.e:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = load i8, ptr %i.m, align 8, !tbaa !965, !range !380, !noundef !293
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.i, label %bb.f

end_hunk_5
begin_hunk_6_@_ZN9hb_font_t17get_glyph_extentsEjP18hb_glyph_extents_tb:bb.a
  br i1 %or.cond27.i36, label %_ZNK12hb_extents_tIfE16to_glyph_extentsEbb.exit45, label %bb.ac, !prof !1029

bb.ac:                                            ; preds = %bb.ab
  %i.eh = extractelement <2 x double> %i.dx, i64 0
  %i.ei = fsub double %i.dr, %i.eh
  %i.ej = extractelement <2 x double> %i.dx, i64 1
  %i.ek = fsub double %i.ej, %i.du
  %i.el = insertelement <2 x double> %i.dx, double %i.ei, i64 1 ; 2 uses
  %i.em = fcmp oge <2 x double> %i.el, splat (double f0xC1E0000000000000)
  %i.en = select <2 x i1> %i.em, <2 x double> %i.el, <2 x double> splat (double f0xC1E0000000000000) ; 2 uses
  %i.eo = fcmp ole <2 x double> %i.en, splat (double f0x41DFFFFFFFC00000)
  %i.ep = select <2 x i1> %i.eo, <2 x double> %i.en, <2 x double> splat (double f0x41DFFFFFFFC00000)
  %i.eq = fptosi <2 x double> %i.ep to <2 x i32>
  %i.er = insertelement <2 x double> poison, double %i.du, i64 0
  %i.es = insertelement <2 x double> %i.er, double %i.ek, i64 1 ; 2 uses
  %i.et = fcmp oge <2 x double> %i.es, splat (double f0xC1E0000000000000)
  %i.eu = select <2 x i1> %i.et, <2 x double> %i.es, <2 x double> splat (double f0xC1E0000000000000) ; 2 uses
  %i.ev = fcmp ole <2 x double> %i.eu, splat (double f0x41DFFFFFFFC00000)
  %i.ew = select <2 x i1> %i.ev, <2 x double> %i.eu, <2 x double> splat (double f0x41DFFFFFFFC00000)
  %i.ex = fptosi <2 x double> %i.ew to <2 x i32>
  %i.ey = zext <2 x i32> %i.ex to <2 x i64>
  %i.ez = shl nuw <2 x i64> %i.ey, splat (i64 32)
  %i.fa = zext <2 x i32> %i.eq to <2 x i64>
  %i.fb = or disjoint <2 x i64> %i.ez, %i.fa
  br label %_ZNK12hb_extents_tIfE16to_glyph_extentsEbb.exit45

_ZNK12hb_extents_tIfE16to_glyph_extentsEbb.exit45: ; preds = %bb.ab, %bb.ac
  %i.fc = phi <2 x i64> [ %i.fb, %bb.ac ], [ zeroinitializer, %bb.ab ]
  store <2 x i64> %i.fc, ptr %2, align 4, !tbaa !324
  br label %bb.al

bb.ad:                                            ; preds = %_Z25hb_draw_extents_get_funcsv.exit
  %i.fd = load ptr, ptr %i.as, align 8, !tbaa !638 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 152
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !280
  %i.fg = load ptr, ptr %i.aw, align 8, !tbaa !639
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !641 ; 2 uses
  %.not23 = icmp eq ptr %i.fi, null
  br i1 %.not23, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 120
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !990
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %i.fl = phi ptr [ %i.fk, %bb.ae ], [ null, %bb.ad ]
  %i.fm = call noundef i32 %i.ff(ptr noundef nonnull %0, ptr noundef %i.fg, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %i.fl) #63
  %i.fn = icmp ne i32 %i.fm, 0                    ; 2 uses
  br i1 %i.fn, label %bb.ag, label %_ZN9hb_font_t23synthetic_glyph_extentsEP18hb_glyph_extents_t.exit

bb.ag:                                            ; preds = %bb.af
  %i.fo = load float, ptr %i.aj, align 4, !tbaa !1017 ; 3 uses
  %i.fp = fcmp une float %i.fo, 0.000000e+00
  br i1 %i.fp, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.fq = load i32, ptr %2, align 4, !tbaa !372   ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !373 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !374
  %i.fv = add nsw i32 %i.fu, %i.fq
  %i.fw = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !375
  %i.fy = add nsw i32 %i.fx, %i.fs
  %i.fz = sitofp i32 %i.fs to float
  %i.ga = fmul float %i.fo, %i.fz                 ; 4 uses
  %i.gb = sitofp i32 %i.fy to float
  %i.gc = fmul float %i.fo, %i.gb                 ; 4 uses
  %i.gd = fcmp ole float %i.ga, %i.gc
  %.sroa.speculated30.i = select i1 %i.gd, float %i.ga, float %i.gc
  %i.ge = call float @llvm.floor.f32(float %.sroa.speculated30.i)
  %i.gf = sitofp i32 %i.fq to float
  %i.gg = fadd float %i.ge, %i.gf
  %i.gh = fptosi float %i.gg to i32               ; 2 uses
  %i.gi = fcmp oge float %i.ga, %i.gc
  %.sroa.speculated.i = select i1 %i.gi, float %i.ga, float %i.gc
  %i.gj = call float @llvm.ceil.f32(float %.sroa.speculated.i)
  %i.gk = sitofp i32 %i.fv to float
  %i.gl = fadd float %i.gj, %i.gk
  %i.gm = fptosi float %i.gl to i32
  store i32 %i.gh, ptr %2, align 4, !tbaa !372
  %i.gn = sub nsw i32 %i.gm, %i.gh
  store i32 %i.gn, ptr %i.ft, align 4, !tbaa !374
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.gp = load i32, ptr %i.go, align 8, !tbaa !949 ; 3 uses
  %.not.i46 = icmp eq i32 %i.gp, 0
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !1004 ; 3 uses
  %.not28.i = icmp eq i32 %i.gr, 0
  %or.cond.i = select i1 %.not.i46, i1 %.not28.i, i1 false
  br i1 %or.cond.i, label %_ZN9hb_font_t23synthetic_glyph_extentsEP18hb_glyph_extents_t.exit, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.ai
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !954
  %i.gu = icmp slt i32 %i.gt, 0
  %i.gv = sub nsw i32 0, %i.gr
  %spec.select.i = select i1 %i.gu, i32 %i.gv, i32 %i.gr ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !373
  %i.gy = add nsw i32 %spec.select.i, %i.gx
  store i32 %i.gy, ptr %i.gw, align 4, !tbaa !373
  %i.gz = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !375
  %i.hb = sub nsw i32 %i.ha, %spec.select.i
  store i32 %i.hb, ptr %i.gz, align 4, !tbaa !375
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.hd = load i32, ptr %i.hc, align 8, !tbaa !951
  %i.he = icmp slt i32 %i.hd, 0
  %i.hf = sub nsw i32 0, %i.gp
  %.0.i = select i1 %i.he, i32 %i.hf, i32 %i.gp   ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.hh = load i8, ptr %i.hg, align 4, !tbaa !950, !range !380, !noundef !293
  %i.hi = trunc nuw i8 %i.hh to i1
  br i1 %i.hi, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %._crit_edge.i
  %.neg.i = sdiv i32 %.0.i, -2
  %i.hj = load i32, ptr %2, align 4, !tbaa !372
  %i.hk = add i32 %i.hj, %.neg.i
  store i32 %i.hk, ptr %2, align 4, !tbaa !372
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %._crit_edge.i
  %i.hl = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !374
  %i.hn = add nsw i32 %i.hm, %.0.i
  store i32 %i.hn, ptr %i.hl, align 4, !tbaa !374
  br label %_ZN9hb_font_t23synthetic_glyph_extentsEP18hb_glyph_extents_t.exit

_ZN9hb_font_t23synthetic_glyph_extentsEP18hb_glyph_extents_t.exit: ; preds = %bb.ak, %bb.ai, %bb.af
  %i.ho = zext i1 %i.fn to i32
  br label %bb.al

bb.al:                                            ; preds = %_ZN9hb_font_t23synthetic_glyph_extentsEP18hb_glyph_extents_t.exit, %_ZNK12hb_extents_tIfE16to_glyph_extentsEbb.exit45
  %.0 = phi i32 [ 1, %_ZNK12hb_extents_tIfE16to_glyph_extentsEbb.exit45 ], [ %i.ho, %_ZN9hb_font_t23synthetic_glyph_extentsEP18hb_glyph_extents_t.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #63
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %_ZNK12hb_extents_tIfE16to_glyph_extentsEbb.exit
  %.1 = phi i32 [ 1, %_ZNK12hb_extents_tIfE16to_glyph_extentsEbb.exit ], [ %.0, %bb.al ]
  %i.hp = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.hq = load i32, ptr %i.hp, align 8, !tbaa !1031
  %i.hr = add i32 %i.hq, -1
  %spec.select.i.i.i.i = icmp ult i32 %i.hr, -2
  br i1 %spec.select.i.i.i.i, label %bb.an, label %_ZN11hb_vector_tI11hb_bounds_tIfELb0EED2Ev.exit.i

bb.an:                                            ; preds = %bb.am
  %i.hs = getelementptr inbounds nuw i8, ptr %4, i64 44
  store i32 0, ptr %i.hs, align 4, !tbaa !1026
  %i.ht = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !1027
  call void @free(ptr noundef %i.hu) #63
  br label %_ZN11hb_vector_tI11hb_bounds_tIfELb0EED2Ev.exit.i

_ZN11hb_vector_tI11hb_bounds_tIfELb0EED2Ev.exit.i: ; preds = %bb.an, %bb.am
  %i.hv = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.hw = load i32, ptr %i.hv, align 8, !tbaa !1031
  %i.hx = add i32 %i.hw, -1
  %spec.select.i.i.i1.i = icmp ult i32 %i.hx, -2
  br i1 %spec.select.i.i.i1.i, label %bb.ao, label %_ZN11hb_vector_tI11hb_bounds_tIfELb0EED2Ev.exit2.i

bb.ao:                                            ; preds = %_ZN11hb_vector_tI11hb_bounds_tIfELb0EED2Ev.exit.i
  %i.hy = getelementptr inbounds nuw i8, ptr %4, i64 28
  store i32 0, ptr %i.hy, align 4, !tbaa !1026
  %i.hz = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !1027
  call void @free(ptr noundef %i.ia) #63
  br label %_ZN11hb_vector_tI11hb_bounds_tIfELb0EED2Ev.exit2.i

_ZN11hb_vector_tI11hb_bounds_tIfELb0EED2Ev.exit2.i: ; preds = %bb.ao, %_ZN11hb_vector_tI11hb_bounds_tIfELb0EED2Ev.exit.i
  %i.ib = load i32, ptr %i.ab, align 8, !tbaa !1032
  %i.ic = add i32 %i.ib, -1
  %spec.select.i.i.i3.i = icmp ult i32 %i.ic, -2
  br i1 %spec.select.i.i.i3.i, label %bb.ap, label %_ZN26hb_paint_extents_context_tD2Ev.exit

bb.ap:                                            ; preds = %_ZN11hb_vector_tI11hb_bounds_tIfELb0EED2Ev.exit2.i
  %i.id = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 0, ptr %i.id, align 4, !tbaa !1033
  %i.ie = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !1034
  call void @free(ptr noundef %i.if) #63
  br label %_ZN26hb_paint_extents_context_tD2Ev.exit

_ZN26hb_paint_extents_context_tD2Ev.exit:         ; preds = %_ZN11hb_vector_tI11hb_bounds_tIfELb0EED2Ev.exit2.i, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #63
  br label %bb.aq

bb.aq:                                            ; preds = %bb.h, %_ZN26hb_paint_extents_context_tD2Ev.exit, %bb.d
  %.2 = phi i32 [ %.1, %_ZN26hb_paint_extents_context_tD2Ev.exit ], [ %i.l, %bb.d ], [ 1, %bb.h ]
  ret i32 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define noundef range(i32 0, 2) i32 @hb_font_get_glyph_contour_point(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef initializes((0, 4)) %3, ptr noundef initializes((0, 4)) %4) local_unnamed_addr #0 {
bb.a:
  store i32 0, ptr %4, align 4, !tbaa !324
  store i32 0, ptr %3, align 4, !tbaa !324
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !638  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !280
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !639
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !641  ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 128
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !992
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = phi ptr [ %i.j, %bb.b ], [ null, %bb.a ]
  %i.l = tail call noundef i32 %i.d(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %i.f, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %i.k) #63, !inline_history !69
  %i.m = icmp ne i32 %i.l, 0                      ; 2 uses
  br i1 %i.m, label %bb.d, label %_ZN9hb_font_t23get_glyph_contour_pointEjjPiS0_b.exit

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.o = load float, ptr %i.n, align 4, !tbaa !1017 ; 2 uses
  %i.p = fcmp une float %i.o, 0.000000e+00
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = load i32, ptr %4, align 4, !tbaa !324
  %i.r = sitofp i32 %i.q to float
  %i.s = fmul float %i.o, %i.r
  %i.t = fadd float %i.s, 5.000000e-01
  %i.u = tail call noundef float @llvm.floor.f32(float %i.t)
  %i.v = load i32, ptr %3, align 4, !tbaa !324
  %i.w = sitofp i32 %i.v to float
  %i.x = fadd float %i.u, %i.w
  %i.y = fptosi float %i.x to i32
  store i32 %i.y, ptr %3, align 4, !tbaa !324
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.aa = load i8, ptr %i.z, align 4, !tbaa !950, !range !380, !noundef !293
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %_ZN9hb_font_t23get_glyph_contour_pointEjjPiS0_b.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !951
  %i.ae = icmp slt i32 %i.ad, 0
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !949 ; 2 uses
  %i.ah = sub nsw i32 0, %i.ag
  %i.ai = select i1 %i.ae, i32 %i.ah, i32 %i.ag
  %i.aj = load i32, ptr %3, align 4, !tbaa !324
  %i.ak = add nsw i32 %i.aj, %i.ai
  store i32 %i.ak, ptr %3, align 4, !tbaa !324
  br label %_ZN9hb_font_t23get_glyph_contour_pointEjjPiS0_b.exit

_ZN9hb_font_t23get_glyph_contour_pointEjjPiS0_b.exit: ; preds = %bb.c, %bb.f, %bb.g
  %i.al = zext i1 %i.m to i32
  ret i32 %i.al
}

; Function Attrs: mustprogress nounwind uwtable
define noundef i32 @hb_font_get_glyph_name(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq i32 %3, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %2, align 1, !tbaa !280
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !638  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !280
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !639
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !641  ; 2 uses
  %.not5.i = icmp eq ptr %i.h, null
  br i1 %.not5.i, label %_ZN9hb_font_t14get_glyph_nameEjPcj.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 136
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !643
  br label %_ZN9hb_font_t14get_glyph_nameEjPcj.exit

_ZN9hb_font_t14get_glyph_nameEjPcj.exit:          ; preds = %bb.c, %bb.d
  %i.k = phi ptr [ %i.j, %bb.d ], [ null, %bb.c ]
  %i.l = tail call noundef i32 %i.d(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %i.f, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %i.k) #63, !inline_history !70
  ret i32 %i.l
}

; Function Attrs: mustprogress nounwind uwtable
define noundef i32 @hb_font_get_glyph_from_name(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef initializes((0, 4)) %3) local_unnamed_addr #0 {
bb.a:
  store i32 0, ptr %3, align 4, !tbaa !324
  %i.a = icmp eq i32 %2, -1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #68
  %i.c = trunc i64 %i.b to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0.i = phi i32 [ %i.c, %bb.b ], [ %2, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !638  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !280
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !639
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !641  ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %_ZN9hb_font_t19get_glyph_from_nameEPKciPj.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 144
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !995
  br label %_ZN9hb_font_t19get_glyph_from_nameEPKciPj.exit

_ZN9hb_font_t19get_glyph_from_nameEPKciPj.exit:   ; preds = %bb.c, %bb.d
  %i.n = phi ptr [ %i.m, %bb.d ], [ null, %bb.c ]
  %i.o = tail call noundef i32 %i.g(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %i.i, ptr noundef %1, i32 noundef %.0.i, ptr noundef nonnull %3, ptr noundef %i.n) #63, !inline_history !71
  ret i32 %i.o
}

; Function Attrs: mustprogress nounwind uwtable
define void @hb_font_get_glyph_shape(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN9hb_font_t18draw_glyph_or_failEjP15hb_draw_funcs_tPvb(ptr noundef nonnull align 8 dereferenceable(192) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext true) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @hb_font_draw_glyph(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN9hb_font_t18draw_glyph_or_failEjP15hb_draw_funcs_tPvb(ptr noundef nonnull align 8 dereferenceable(192) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext true) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef range(i32 0, 2) i32 @hb_font_draw_glyph_or_fail(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN9hb_font_t18draw_glyph_or_failEjP15hb_draw_funcs_tPvb(ptr noundef nonnull align 8 dereferenceable(192) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext true)
  %i.b = zext i1 %i.a to i32
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN9hb_font_t18draw_glyph_or_failEjP15hb_draw_funcs_tPvb(ptr noundef nonnull align 8 dereferenceable(192) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %struct.hb_outline_t, align 8       ; 14 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !949
  %.not = icmp ne i32 %i.d, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4
  %i.g = icmp ne i32 %i.f, 0
  %i.h = select i1 %.not, i1 true, i1 %i.g        ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.j = load float, ptr %i.i, align 4, !tbaa !1017
  %i.k = fcmp une float %i.j, 0.000000e+00        ; 2 uses
  %i.l = select i1 %i.h, i1 true, i1 %i.k
  %i.m = select i1 %4, i1 %i.l, i1 false
  br i1 %i.m, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !638  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 184
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !280
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !639
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !641  ; 2 uses
  %.not22 = icmp eq ptr %i.u, null
  br i1 %.not22, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 152
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !997
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.w, %bb.c ], [ null, %bb.b ]
  %i.y = tail call noundef i32 %i.q(ptr noundef nonnull %0, ptr noundef %i.s, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %i.x) #63
  %i.z = icmp ne i32 %i.y, 0
  br label %bb.s

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #63
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !638
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 184
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !280
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !639
  %i.ag = load atomic ptr, ptr @_ZL34static_outline_recording_pen_funcs acquire, align 8 ; 2 uses
  %.not19.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not19.i.i.i, label %.lr.ph.i.i.i, label %_Z34hb_outline_recording_pen_get_funcsv.exit, !prof !265

.lr.ph.i.i.i:                                     ; preds = %bb.e, %_ZN16hb_lazy_loader_tI15hb_draw_funcs_t44hb_outline_recording_pen_funcs_lazy_loader_tvLj0ES0_E10do_destroyEPS0_.exit.i.i.i
  %i.ah = tail call noundef ptr @_ZN44hb_outline_recording_pen_funcs_lazy_loader_t6createEv() ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not10.i.i.i, label %.thread.i.i.i, label %bb.f, !prof !267

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.ai = cmpxchg weak ptr @_ZL34static_outline_recording_pen_funcs, ptr null, ptr %i.ah acq_rel monotonic, align 8
  %i.aj = extractvalue { ptr, i1 } %i.ai, 1
  br i1 %i.aj, label %_Z34hb_outline_recording_pen_get_funcsv.exit, label %bb.g, !prof !268

.thread.i.i.i:                                    ; preds = %.lr.ph.i.i.i
  %i.ak = cmpxchg weak ptr @_ZL34static_outline_recording_pen_funcs, ptr null, ptr @_hb_Null_hb_draw_funcs_t acq_rel monotonic, align 8
  %i.al = extractvalue { ptr, i1 } %i.ak, 1
  br i1 %i.al, label %_Z34hb_outline_recording_pen_get_funcsv.exit, label %_ZN16hb_lazy_loader_tI15hb_draw_funcs_t44hb_outline_recording_pen_funcs_lazy_loader_tvLj0ES0_E10do_destroyEPS0_.exit.i.i.i, !prof !268

bb.g:                                             ; preds = %bb.f
  %.not3.i.i.i.i = icmp eq ptr %i.ah, @_hb_Null_hb_draw_funcs_t
  br i1 %.not3.i.i.i.i, label %_ZN16hb_lazy_loader_tI15hb_draw_funcs_t44hb_outline_recording_pen_funcs_lazy_loader_tvLj0ES0_E10do_destroyEPS0_.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @hb_draw_funcs_destroy(ptr noundef nonnull %i.ah)
  br label %_ZN16hb_lazy_loader_tI15hb_draw_funcs_t44hb_outline_recording_pen_funcs_lazy_loader_tvLj0ES0_E10do_destroyEPS0_.exit.i.i.i

_ZN16hb_lazy_loader_tI15hb_draw_funcs_t44hb_outline_recording_pen_funcs_lazy_loader_tvLj0ES0_E10do_destroyEPS0_.exit.i.i.i: ; preds = %bb.h, %bb.g, %.thread.i.i.i
  %i.am = load atomic ptr, ptr @_ZL34static_outline_recording_pen_funcs acquire, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_Z34hb_outline_recording_pen_get_funcsv.exit, !prof !269

_Z34hb_outline_recording_pen_get_funcsv.exit:     ; preds = %bb.f, %.thread.i.i.i, %_ZN16hb_lazy_loader_tI15hb_draw_funcs_t44hb_outline_recording_pen_funcs_lazy_loader_tvLj0ES0_E10do_destroyEPS0_.exit.i.i.i, %bb.e
  %.19.ph.i.i.i = phi ptr [ %i.ag, %bb.e ], [ %i.ah, %bb.f ], [ %i.am, %_ZN16hb_lazy_loader_tI15hb_draw_funcs_t44hb_outline_recording_pen_funcs_lazy_loader_tvLj0ES0_E10do_destroyEPS0_.exit.i.i.i ], [ @_hb_Null_hb_draw_funcs_t, %.thread.i.i.i ]
  %i.an = load ptr, ptr %i.aa, align 8, !tbaa !638
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !641 ; 2 uses
  %.not23 = icmp eq ptr %i.ap, null
  br i1 %.not23, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_Z34hb_outline_recording_pen_get_funcsv.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 152
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !997
  br label %bb.j

bb.j:                                             ; preds = %_Z34hb_outline_recording_pen_get_funcsv.exit, %bb.i
  %i.as = phi ptr [ %i.ar, %bb.i ], [ null, %_Z34hb_outline_recording_pen_get_funcsv.exit ]
  %i.at = call noundef i32 %i.ad(ptr noundef nonnull %0, ptr noundef %i.af, i32 noundef %1, ptr noundef nonnull %.19.ph.i.i.i, ptr noundef nonnull %5, ptr noundef %i.as) #63
  %.not24 = icmp ne i32 %i.at, 0                  ; 2 uses
  br i1 %.not24, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  br i1 %i.k, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #63
  store i32 0, ptr %i.b, align 4, !tbaa !324
  store i32 0, ptr %i.a, align 4, !tbaa !324
  %i.au = load ptr, ptr %i.aa, align 8, !tbaa !638 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 104
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !280
  %i.ax = load ptr, ptr %i.ae, align 8, !tbaa !639
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !641 ; 2 uses
  %.not.i = icmp eq ptr %i.az, null
  br i1 %.not.i, label %_ZN9hb_font_t18get_glyph_h_originEjPiS0_b.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 72
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !961
  br label %_ZN9hb_font_t18get_glyph_h_originEjPiS0_b.exit

_ZN9hb_font_t18get_glyph_h_originEjPiS0_b.exit:   ; preds = %bb.l, %bb.m
  %i.bc = phi ptr [ %i.bb, %bb.m ], [ null, %bb.l ]
  %i.bd = call noundef i32 %i.aw(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %i.ax, i32 noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %i.bc) #63, !inline_history !56 ; 0 uses
  %i.be = load i32, ptr %i.a, align 4, !tbaa !324
  %i.bf = load i32, ptr %i.b, align 4, !tbaa !324
  %i.bg = insertelement <2 x i32> poison, i32 %i.be, i64 0
  %i.bh = insertelement <2 x i32> %i.bg, i32 %i.bf, i64 1 ; 2 uses
  %i.bi = sub nsw <2 x i32> zeroinitializer, %i.bh
  %i.bj = sitofp <2 x i32> %i.bi to <2 x float>
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !1037 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !1038 ; 2 uses
  %i.bo = zext i32 %i.bn to i64
  %.idx.i = mul nuw nsw i64 %i.bo, 12
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.idx.i ; 3 uses
  %.not11.i = icmp eq i32 %i.bn, 0
  br i1 %.not11.i, label %_ZN12hb_outline_t9translateEff.exit34, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN9hb_font_t18get_glyph_h_originEjPiS0_b.exit, %.lr.ph.i
  %.012.i = phi ptr [ %i.bs, %.lr.ph.i ], [ %i.bl, %_ZN9hb_font_t18get_glyph_h_originEjPiS0_b.exit ] ; 3 uses
  %i.bq = load <2 x float>, ptr %.012.i, align 4, !tbaa !304
  %i.br = fadd <2 x float> %i.bq, %i.bj
  store <2 x float> %i.br, ptr %.012.i, align 4, !tbaa !304
  %i.bs = getelementptr inbounds nuw i8, ptr %.012.i, i64 12 ; 2 uses
  %.not.i25 = icmp eq ptr %i.bs, %i.bp
  br i1 %.not.i25, label %_ZN12hb_outline_t9translateEff.exit, label %.lr.ph.i

_ZN12hb_outline_t9translateEff.exit:              ; preds = %.lr.ph.i
  %i.bt = load float, ptr %i.i, align 4, !tbaa !1017
  br label %.lr.ph.i27

.lr.ph.i27:                                       ; preds = %_ZN12hb_outline_t9translateEff.exit, %.lr.ph.i27
  %.011.i = phi ptr [ %i.by, %.lr.ph.i27 ], [ %i.bl, %_ZN12hb_outline_t9translateEff.exit ] ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.011.i, i64 4
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !1041
  %i.bw = load float, ptr %.011.i, align 4, !tbaa !1042
  %i.bx = call float @llvm.fmuladd.f32(float %i.bt, float %i.bv, float %i.bw)
  store float %i.bx, ptr %.011.i, align 4, !tbaa !1042
  %i.by = getelementptr inbounds nuw i8, ptr %.011.i, i64 12 ; 2 uses
  %.not.i28 = icmp eq ptr %i.by, %i.bp
  br i1 %.not.i28, label %_ZN12hb_outline_t5slantEf.exit, label %.lr.ph.i27

_ZN12hb_outline_t5slantEf.exit:                   ; preds = %.lr.ph.i27
  %i.bz = sitofp <2 x i32> %i.bh to <2 x float>
  br label %.lr.ph.i31

.lr.ph.i31:                                       ; preds = %_ZN12hb_outline_t5slantEf.exit, %.lr.ph.i31
  %.012.i32 = phi ptr [ %i.cc, %.lr.ph.i31 ], [ %i.bl, %_ZN12hb_outline_t5slantEf.exit ] ; 3 uses
  %i.ca = load <2 x float>, ptr %.012.i32, align 4, !tbaa !304
  %i.cb = fadd <2 x float> %i.ca, %i.bz
  store <2 x float> %i.cb, ptr %.012.i32, align 4, !tbaa !304
  %i.cc = getelementptr inbounds nuw i8, ptr %.012.i32, i64 12 ; 2 uses
  %.not.i33 = icmp eq ptr %i.cc, %i.bp
  br i1 %.not.i33, label %_ZN12hb_outline_t9translateEff.exit34, label %.lr.ph.i31

_ZN12hb_outline_t9translateEff.exit34:            ; preds = %.lr.ph.i31, %_ZN9hb_font_t18get_glyph_h_originEjPiS0_b.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #63
  br label %bb.n

bb.n:                                             ; preds = %_ZN12hb_outline_t9translateEff.exit34, %bb.k
  br i1 %i.h, label %._crit_edge, label %bb.o

._crit_edge:                                      ; preds = %bb.n
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ce = load i8, ptr %i.cd, align 4, !tbaa !950, !range !380, !noundef !293
  %i.cf = trunc nuw i8 %i.ce to i1
  %.pre = load i32, ptr %i.c, align 8, !tbaa !949
  %.pre35 = sitofp i32 %.pre to float             ; 2 uses
  %i.cg = fmul nnan float %.pre35, 5.000000e-01
  %i.ch = select i1 %i.cf, float 0.000000e+00, float %i.cg ; 2 uses
  %i.ci = load i32, ptr %i.e, align 4, !tbaa !1004
  %i.cj = sitofp i32 %i.ci to float               ; 2 uses
  %i.ck = fmul nnan float %i.cj, 5.000000e-01     ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !951
  %i.cn = icmp slt i32 %i.cm, 0
  %i.co = fneg float %i.ch
  %.018 = select i1 %i.cn, float %i.co, float %i.ch
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !954
  %i.cr = icmp slt i32 %i.cq, 0
  %i.cs = fneg float %i.ck
  %.0 = select i1 %i.cr, float %i.cs, float %i.ck
  call void @_ZN12hb_outline_t8emboldenEffff(ptr noundef nonnull align 8 dereferenceable(32) %5, float noundef %.pre35, float noundef %i.cj, float noundef %.018, float noundef %.0)
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge, %bb.n
  call void @_ZNK12hb_outline_t6replayEP15hb_draw_funcs_tPv(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %2, ptr noundef %3)
  br label %bb.p

bb.p:                                             ; preds = %bb.j, %bb.o
  %i.ct = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !326
  %i.cv = add i32 %i.cu, -1
  %spec.select.i.i.i.i = icmp ult i32 %i.cv, -2
  br i1 %spec.select.i.i.i.i, label %bb.q, label %_ZN11hb_vector_tIjLb0EED2Ev.exit.i

bb.q:                                             ; preds = %bb.p
  %i.cw = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 0, ptr %i.cw, align 4, !tbaa !296
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !323
  call void @free(ptr noundef %i.cy) #63
  br label %_ZN11hb_vector_tIjLb0EED2Ev.exit.i

_ZN11hb_vector_tIjLb0EED2Ev.exit.i:               ; preds = %bb.q, %bb.p
  %i.cz = load i32, ptr %5, align 8, !tbaa !1043
  %i.da = add i32 %i.cz, -1
  %spec.select.i.i.i1.i = icmp ult i32 %i.da, -2
  br i1 %spec.select.i.i.i1.i, label %bb.r, label %_ZN12hb_outline_tD2Ev.exit

bb.r:                                             ; preds = %_ZN11hb_vector_tIjLb0EED2Ev.exit.i
  %i.db = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 0, ptr %i.db, align 4, !tbaa !1038
  %i.dc = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !1037
  call void @free(ptr noundef %i.dd) #63
  br label %_ZN12hb_outline_tD2Ev.exit

_ZN12hb_outline_tD2Ev.exit:                       ; preds = %_ZN11hb_vector_tIjLb0EED2Ev.exit.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #63
  br label %bb.s

bb.s:                                             ; preds = %_ZN12hb_outline_tD2Ev.exit, %bb.d
  %.1 = phi i1 [ %.not24, %_ZN12hb_outline_tD2Ev.exit ], [ %i.z, %bb.d ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define noundef range(i32 0, 2) i32 @hb_font_paint_glyph_or_fail(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.b = load float, ptr %i.a, align 4, !tbaa !1017 ; 2 uses
  %i.c = fcmp une float %i.b, 0.000000e+00
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1013
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1014 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %hb_paint_push_transform.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1016
  br label %hb_paint_push_transform.exit.i

hb_paint_push_transform.exit.i:                   ; preds = %bb.c, %bb.b
  %i.i = phi ptr [ %i.h, %bb.c ], [ null, %bb.b ]
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(176) %2, ptr noundef %3, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef %i.b, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef %i.i) #63, !inline_history !73
  br label %bb.d

bb.d:                                             ; preds = %hb_paint_push_transform.exit.i, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !638  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 192
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !280
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !639
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !641  ; 2 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 160
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !999
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.t = phi ptr [ %i.s, %bb.e ], [ null, %bb.d ]
  %i.u = tail call noundef i32 %i.m(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %i.o, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %i.t) #63, !inline_history !74
  %i.v = load float, ptr %i.a, align 4, !tbaa !1017
  %i.w = fcmp une float %i.v, 0.000000e+00
  br i1 %i.w, label %bb.g, label %_ZN9hb_font_t19paint_glyph_or_failEjP16hb_paint_funcs_tPvjjb.exit

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1018
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1014 ; 2 uses
  %.not.i.i13.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i13.i, label %hb_paint_pop_transform.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1019
  br label %hb_paint_pop_transform.exit.i

hb_paint_pop_transform.exit.i:                    ; preds = %bb.h, %bb.g
  %i.ad = phi ptr [ %i.ac, %bb.h ], [ null, %bb.g ]
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(176) %2, ptr noundef %3, ptr noundef %i.ad) #63, !inline_history !75
  br label %_ZN9hb_font_t19paint_glyph_or_failEjP16hb_paint_funcs_tPvjjb.exit

_ZN9hb_font_t19paint_glyph_or_failEjP16hb_paint_funcs_tPvjjb.exit: ; preds = %bb.f, %hb_paint_pop_transform.exit.i
  %i.ae = icmp ne i32 %i.u, 0
  %i.af = zext i1 %i.ae to i32
  ret i32 %i.af
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN9hb_font_t11paint_glyphEjP16hb_paint_funcs_tPvjj(ptr noundef nonnull align 8 dereferenceable(192) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.b = load float, ptr %i.a, align 4, !tbaa !1017 ; 2 uses
  %i.c = fcmp une float %i.b, 0.000000e+00
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1013
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1014 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %hb_paint_push_transform.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1016
  br label %hb_paint_push_transform.exit.i

hb_paint_push_transform.exit.i:                   ; preds = %bb.c, %bb.b
  %i.i = phi ptr [ %i.h, %bb.c ], [ null, %bb.b ]
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(176) %2, ptr noundef %3, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef %i.b, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef %i.i) #63, !inline_history !73
  br label %bb.d

bb.d:                                             ; preds = %hb_paint_push_transform.exit.i, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !638  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 192
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !280
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !639
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !641  ; 2 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 160
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !999
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.t = phi ptr [ %i.s, %bb.e ], [ null, %bb.d ]
  %i.u = tail call noundef i32 %i.m(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %i.o, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %i.t) #63, !inline_history !74
  %i.v = load float, ptr %i.a, align 4, !tbaa !1017
  %i.w = fcmp une float %i.v, 0.000000e+00
  br i1 %i.w, label %bb.g, label %_ZN9hb_font_t19paint_glyph_or_failEjP16hb_paint_funcs_tPvjjb.exit

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1018
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1014 ; 2 uses
  %.not.i.i13.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i13.i, label %hb_paint_pop_transform.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1019
  br label %hb_paint_pop_transform.exit.i

hb_paint_pop_transform.exit.i:                    ; preds = %bb.h, %bb.g
  %i.ad = phi ptr [ %i.ac, %bb.h ], [ null, %bb.g ]
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(176) %2, ptr noundef %3, ptr noundef %i.ad) #63, !inline_history !75
  br label %_ZN9hb_font_t19paint_glyph_or_failEjP16hb_paint_funcs_tPvjjb.exit

_ZN9hb_font_t19paint_glyph_or_failEjP16hb_paint_funcs_tPvjjb.exit: ; preds = %bb.f, %hb_paint_pop_transform.exit.i
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %bb.i, label %bb.k

bb.i:                                             ; preds = %_ZN9hb_font_t19paint_glyph_or_failEjP16hb_paint_funcs_tPvjjb.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1044
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1014 ; 2 uses
  %.not.i9 = icmp eq ptr %i.ah, null
  br i1 %.not.i9, label %_ZN16hb_paint_funcs_t10fill_glyphEPvjP9hb_font_tij.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 136
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1045
  br label %_ZN16hb_paint_funcs_t10fill_glyphEPvjP9hb_font_tij.exit

_ZN16hb_paint_funcs_t10fill_glyphEPvjP9hb_font_tij.exit: ; preds = %bb.i, %bb.j
  %i.ak = phi ptr [ %i.aj, %bb.j ], [ null, %bb.i ]
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(176) %2, ptr noundef %3, i32 noundef %1, ptr noundef nonnull %0, i32 noundef 1, i32 noundef %5, ptr noundef %i.ak) #63, !inline_history !79
  br label %bb.k

bb.k:                                             ; preds = %_ZN9hb_font_t19paint_glyph_or_failEjP16hb_paint_funcs_tPvjjb.exit, %_ZN16hb_paint_funcs_t10fill_glyphEPvjP9hb_font_tij.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @hb_font_paint_glyph(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.b = load float, ptr %i.a, align 4, !tbaa !1017 ; 2 uses
  %i.c = fcmp une float %i.b, 0.000000e+00
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1013
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1014 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %hb_paint_push_transform.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1016
  br label %hb_paint_push_transform.exit.i.i

hb_paint_push_transform.exit.i.i:                 ; preds = %bb.c, %bb.b
  %i.i = phi ptr [ %i.h, %bb.c ], [ null, %bb.b ]
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(176) %2, ptr noundef %3, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef %i.b, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef %i.i) #63, !inline_history !2495
  br label %bb.d

bb.d:                                             ; preds = %hb_paint_push_transform.exit.i.i, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !638  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 192
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !280
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !639
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !641  ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %bb.f, label %bb.e
end_hunk_6
begin_hunk_7_@hb_map_get:bb.a
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %i.aa = getelementptr inbounds nuw [12 x i8], ptr %i.b, i64 %i.z ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ac = load i32, ptr %i.ab, align 4            ; 2 uses
  %i.ad = and i32 %i.ac, 2
  %.not.i.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i.i.i, label %_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit, label %bb.c, !llvm.loop !81

_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit:          ; preds = %.lr.ph.i.i, %bb.a, %bb.b, %._crit_edge.i.i
  %.0.i = phi ptr [ @minus_1, %bb.a ], [ %spec.select.i.i, %._crit_edge.i.i ], [ @minus_1, %bb.b ], [ @minus_1, %.lr.ph.i.i ]
  %i.ae = load i32, ptr %.0.i, align 4, !tbaa !324
  ret i32 %i.ae
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @hb_map_del(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #20 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1091 ; 4 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN12hb_hashmap_tIjjLb1EE3delERKj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = mul i32 %1, 506952113
  %i.d = and i32 %i.c, 1073741823
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !1092
  %i.g = urem i32 %i.d, %i.f                      ; 2 uses
  %i.h = zext nneg i32 %i.g to i64                ; 2 uses
  %i.i = getelementptr inbounds nuw [12 x i8], ptr %i.b, i64 %i.h ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.k = load i32, ptr %i.j, align 4              ; 2 uses
  %i.l = and i32 %i.k, 2
  %.not15.i.i = icmp eq i32 %i.l, 0
  br i1 %.not15.i.i, label %_ZN12hb_hashmap_tIjjLb1EE3delERKj.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.n = load i32, ptr %i.m, align 4
  %i.o = load i32, ptr %i.i, align 4, !tbaa !324
  %i.p = icmp eq i32 %i.o, %1
  br i1 %i.p, label %._crit_edge.i, label %.lr.ph.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.q = load i32, ptr %i.z, align 4, !tbaa !324
  %i.r = icmp eq i32 %i.q, %1
  br i1 %i.r, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !81

._crit_edge.i:                                    ; preds = %bb.c, %.lr.ph.i.i
  %i.s = phi i32 [ %i.k, %.lr.ph.i.i ], [ %i.ab, %bb.c ] ; 2 uses
  %i.t = phi i64 [ %i.h, %.lr.ph.i.i ], [ %i.y, %bb.c ]
  %i.u = trunc i32 %i.s to i1
  br i1 %i.u, label %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i, label %_ZN12hb_hashmap_tIjjLb1EE3delERKj.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.i, %bb.c
  %.01016.i12.i = phi i32 [ %i.x, %bb.c ], [ %i.g, %.lr.ph.i.i ]
  %.017.i11.i = phi i32 [ %i.v, %bb.c ], [ 0, %.lr.ph.i.i ]
  %i.v = add i32 %.017.i11.i, 1                   ; 2 uses
  %i.w = add i32 %i.v, %.01016.i12.i
  %i.x = and i32 %i.w, %i.n                       ; 2 uses
  %i.y = zext i32 %i.x to i64                     ; 2 uses
  %i.z = getelementptr inbounds nuw [12 x i8], ptr %i.b, i64 %i.y ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ab = load i32, ptr %i.aa, align 4            ; 2 uses
  %i.ac = and i32 %i.ab, 2
  %.not.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i, label %_ZN12hb_hashmap_tIjjLb1EE3delERKj.exit, label %bb.c, !llvm.loop !81

_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i: ; preds = %._crit_edge.i
  %i.ad = getelementptr inbounds nuw [12 x i8], ptr %i.b, i64 %i.t
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.af = and i32 %i.s, -2
  store i32 %i.af, ptr %i.ae, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !1093
  %i.ai = add i32 %i.ah, -1
  store i32 %i.ai, ptr %i.ag, align 4, !tbaa !1093
  br label %_ZN12hb_hashmap_tIjjLb1EE3delERKj.exit

_ZN12hb_hashmap_tIjjLb1EE3delERKj.exit:           ; preds = %.lr.ph.i, %bb.a, %bb.b, %._crit_edge.i, %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @hb_map_has(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #21 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1091 ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNK12hb_hashmap_tIjjLb1EE3hasIjEEbRKjPPT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = mul i32 %1, 506952113
  %i.d = and i32 %i.c, 1073741823
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !1092
  %i.g = urem i32 %i.d, %i.f                      ; 2 uses
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [12 x i8], ptr %i.b, i64 %i.h ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.k = load i32, ptr %i.j, align 4              ; 2 uses
  %i.l = and i32 %i.k, 2
  %.not15.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not15.i.i.i, label %_ZNK12hb_hashmap_tIjjLb1EE3hasIjEEbRKjPPT_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.n = load i32, ptr %i.m, align 4
  %i.o = load i32, ptr %i.i, align 4, !tbaa !324
  %i.p = icmp eq i32 %i.o, %1
  br i1 %i.p, label %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i, label %.lr.ph.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.q = load i32, ptr %i.w, align 4, !tbaa !324
  %i.r = icmp eq i32 %i.q, %1
  br i1 %i.r, label %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i, label %.lr.ph.i.i, !llvm.loop !81

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.i, %bb.c
  %.01016.i20.i.i = phi i32 [ %i.u, %bb.c ], [ %i.g, %.lr.ph.i.i.i ]
  %.017.i19.i.i = phi i32 [ %i.s, %bb.c ], [ 0, %.lr.ph.i.i.i ]
  %i.s = add i32 %.017.i19.i.i, 1                 ; 2 uses
  %i.t = add i32 %i.s, %.01016.i20.i.i
  %i.u = and i32 %i.t, %i.n                       ; 2 uses
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [12 x i8], ptr %i.b, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.y = load i32, ptr %i.x, align 4              ; 2 uses
  %i.z = and i32 %i.y, 2
  %.not.i.i.i = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.i, label %_ZNK12hb_hashmap_tIjjLb1EE3hasIjEEbRKjPPT_.exit, label %bb.c, !llvm.loop !81

_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i: ; preds = %bb.c, %.lr.ph.i.i.i
  %.lcssa17.i.i = phi i32 [ %i.k, %.lr.ph.i.i.i ], [ %i.y, %bb.c ]
  %i.aa = and i32 %.lcssa17.i.i, 1
  br label %_ZNK12hb_hashmap_tIjjLb1EE3hasIjEEbRKjPPT_.exit

_ZNK12hb_hashmap_tIjjLb1EE3hasIjEEbRKjPPT_.exit:  ; preds = %.lr.ph.i.i, %bb.a, %bb.b, %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i
  %.0.i = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.aa, %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i ], [ 0, %.lr.ph.i.i ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @hb_map_clear(ptr nofree noundef captures(none) %0) local_unnamed_addr #19 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1093
  %.not.i = icmp eq i32 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8
  %.not8.i = icmp eq i32 %i.d, 0
  %or.cond.i = select i1 %.not.i, i1 %.not8.i, i1 false
  br i1 %or.cond.i, label %_ZN12hb_hashmap_tIjjLb1EE5clearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !1094
  %.fr15.i = freeze i32 %i.f
  %i.g = add i32 %.fr15.i, 1                      ; 2 uses
  %.not912.i = icmp ult i32 %i.g, 2
  br i1 %.not912.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %.sroa.2.8.insert.ext.i.i = zext i32 %i.g to i64
  %.idx.i = mul nuw nsw i64 %.sroa.2.8.insert.ext.i.i, 12 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1091
  %i.j = add nsw i64 %.idx.i, -12
  %i.k = urem i64 %i.j, 12
  %i.l = sub nuw nsw i64 %.idx.i, %i.k
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.i, i8 0, i64 %i.l, i1 false)
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.preheader.i, %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !1095
  store i32 0, ptr %i.a, align 4, !tbaa !1093
  br label %_ZN12hb_hashmap_tIjjLb1EE5clearEv.exit

_ZN12hb_hashmap_tIjjLb1EE5clearEv.exit:           ; preds = %bb.a, %._crit_edge.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @hb_map_is_empty(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1093
  %i.c = icmp eq i32 %i.b, 0
  %i.d = zext i1 %i.c to i32
  ret i32 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @hb_map_get_population(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1093
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define noundef range(i32 0, 2) i32 @hb_map_is_equal(ptr noundef nonnull %0, ptr noundef nonnull %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK12hb_hashmap_tIjjLb1EE8is_equalERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1)
  %i.b = zext i1 %i.a to i32
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK12hb_hashmap_tIjjLb1EE8is_equalERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1093
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !1093
  %.not = icmp eq i32 %i.b, %i.d
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.val = load i32, ptr %i.e, align 4, !tbaa !1094
  %i.f = add i32 %.val, 1                         ; 2 uses
  %.not15.i.i.i.i.i = icmp ult i32 %i.f, 2
  br i1 %.not15.i.i.i.i.i, label %.loopexit, label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.preheader

_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.preheader: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val10 = load ptr, ptr %i.g, align 8, !tbaa !1091
  br label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i

_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i: ; preds = %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.preheader, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i
  %.sroa.5.sroa.0.0.i = phi i32 [ %i.k, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i ], [ %i.f, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.preheader ] ; 4 uses
  %.sroa.02.0.i = phi ptr [ %i.l, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i ], [ %.val10, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.preheader ] ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 4
  %i.i = load i32, ptr %i.h, align 4, !noalias !2558
  %i.j = trunc i32 %i.i to i1
  br i1 %i.j, label %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_E3endEv.exit", label %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i

_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i: ; preds = %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i
  %i.k = add i32 %.sroa.5.sroa.0.0.i, -1          ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 12
  %i.m = icmp eq i32 %i.k, 0
  br i1 %i.m, label %.loopexit, label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i, !llvm.loop !82

"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_E3endEv.exit": ; preds = %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i
  %i.n = zext i32 %.sroa.5.sroa.0.0.i to i64
  %.idx = mul nuw nsw i64 %i.n, 12
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 %.idx ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !1091 ; 4 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_E3endEv.exit.split.us", label %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_E3endEv.exit.split"

"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_E3endEv.exit.split.us": ; preds = %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_E3endEv.exit", %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit.us"
  %.sroa.020.043.us = phi ptr [ %.lcssa, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit.us" ], [ %.sroa.02.0.i, %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_E3endEv.exit" ] ; 3 uses
  %.sroa.721.042.us = phi i32 [ %.lcssa105, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit.us" ], [ %.sroa.5.sroa.0.0.i, %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_E3endEv.exit" ] ; 2 uses
  %.not.i.i.i.i.i.i.us = icmp eq i32 %.sroa.721.042.us, 0
  br i1 %.not.i.i.i.i.i.i.us, label %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EdeEv.exit.us.thread", label %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EdeEv.exit.us", !prof !267

"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EdeEv.exit.us.thread": ; preds = %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_E3endEv.exit.split.us"
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @_hb_CrapPool, i8 0, i64 12, i1 false)
  br label %.loopexit

"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EdeEv.exit.us": ; preds = %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_E3endEv.exit.split.us"
  %.phi.trans.insert83 = getelementptr inbounds nuw i8, ptr %.sroa.020.043.us, i64 8
  %.pre84 = load i32, ptr %.phi.trans.insert83, align 4, !tbaa !1097
  %i.s = icmp eq i32 %.pre84, -1                  ; 3 uses
  br i1 %i.s, label %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.i.i.i.us.preheader, label %.loopexit

_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.i.i.i.us.preheader: ; preds = %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EdeEv.exit.us"
  %i.t = add i32 %.sroa.721.042.us, -1            ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.020.043.us, i64 12 ; 2 uses
  %.not.i.i.i.i.us120 = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i.i.us120, label %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit.us", label %"_ZNK4$_35clIRMN12hb_hashmap_tIjjLb1EE6item_tEKFbvERS3_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS9_OSA_.exit.i.i.i.i.us"

_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.i.i.i.us: ; preds = %"_ZNK4$_35clIRMN12hb_hashmap_tIjjLb1EE6item_tEKFbvERS3_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS9_OSA_.exit.i.i.i.i.us"
  %i.v = add i32 %i.y, -1                         ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.x, i64 12 ; 2 uses
  %.not.i.i.i.i.us = icmp eq i32 %i.v, 0
  br i1 %.not.i.i.i.i.us, label %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit.us", label %"_ZNK4$_35clIRMN12hb_hashmap_tIjjLb1EE6item_tEKFbvERS3_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS9_OSA_.exit.i.i.i.i.us", !llvm.loop !83

"_ZNK4$_35clIRMN12hb_hashmap_tIjjLb1EE6item_tEKFbvERS3_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS9_OSA_.exit.i.i.i.i.us": ; preds = %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.i.i.i.us.preheader, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.i.i.i.us
  %i.x = phi ptr [ %i.w, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.i.i.i.us ], [ %i.u, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.i.i.i.us.preheader ] ; 3 uses
  %i.y = phi i32 [ %i.v, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.i.i.i.us ], [ %i.t, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.i.i.i.us.preheader ] ; 2 uses
  %.sroa.020.1.us121 = phi ptr [ %i.x, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.i.i.i.us ], [ %.sroa.020.043.us, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.i.i.i.us.preheader ]
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.020.1.us121, i64 16
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = trunc i32 %i.aa to i1
  br i1 %i.ab, label %"_ZNK4$_35clIRMN12hb_hashmap_tIjjLb1EE6item_tEKFbvERS3_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS9_OSA_.exit.i.i.i.i.us._ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit.us_crit_edge", label %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.i.i.i.us, !llvm.loop !83

"_ZNK4$_35clIRMN12hb_hashmap_tIjjLb1EE6item_tEKFbvERS3_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS9_OSA_.exit.i.i.i.i.us._ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit.us_crit_edge": ; preds = %"_ZNK4$_35clIRMN12hb_hashmap_tIjjLb1EE6item_tEKFbvERS3_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS9_OSA_.exit.i.i.i.i.us"
  br label %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit.us", !llvm.loop !83

"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit.us": ; preds = %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.i.i.i.us, %"_ZNK4$_35clIRMN12hb_hashmap_tIjjLb1EE6item_tEKFbvERS3_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS9_OSA_.exit.i.i.i.i.us._ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit.us_crit_edge", %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.i.i.i.us.preheader
  %.lcssa105 = phi i32 [ %i.y, %"_ZNK4$_35clIRMN12hb_hashmap_tIjjLb1EE6item_tEKFbvERS3_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS9_OSA_.exit.i.i.i.i.us._ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit.us_crit_edge" ], [ %i.t, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.i.i.i.us.preheader ], [ %i.v, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.i.i.i.us ] ; 2 uses
  %.lcssa = phi ptr [ %i.x, %"_ZNK4$_35clIRMN12hb_hashmap_tIjjLb1EE6item_tEKFbvERS3_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS9_OSA_.exit.i.i.i.i.us._ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit.us_crit_edge" ], [ %i.u, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.i.i.i.us.preheader ], [ %i.w, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.i.i.i.us ] ; 2 uses
  %.not.i.i.i.us = icmp eq ptr %.lcssa, %i.o
  %i.ac = icmp eq i32 %.lcssa105, 0
  %.not35.us = and i1 %i.ac, %.not.i.i.i.us
  br i1 %.not35.us, label %.loopexit, label %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_E3endEv.exit.split.us"

"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_E3endEv.exit.split": ; preds = %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_E3endEv.exit"
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !1092
  br label %bb.c

bb.c:                                             ; preds = %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_E3endEv.exit.split", %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit"
  %.sroa.020.043 = phi ptr [ %.sroa.02.0.i, %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_E3endEv.exit.split" ], [ %.sroa.020.2, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit" ] ; 4 uses
  %.sroa.721.042 = phi i32 [ %.sroa.5.sroa.0.0.i, %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_E3endEv.exit.split" ], [ %.sroa.721.2, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit" ] ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %.sroa.721.042, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %"._ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EdeEv.exit_crit_edge", !prof !267

"._ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EdeEv.exit_crit_edge": ; preds = %bb.c
  %.pre = load i32, ptr %.sroa.020.043, align 4, !tbaa !1098
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.020.043, i64 8
  %.pre82 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !1097
  br label %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EdeEv.exit"

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @_hb_CrapPool, i8 0, i64 12, i1 false)
  br label %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EdeEv.exit"

"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EdeEv.exit": ; preds = %"._ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EdeEv.exit_crit_edge", %bb.d
  %i.af = phi i32 [ 0, %bb.d ], [ %.pre82, %"._ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EdeEv.exit_crit_edge" ]
  %i.ag = phi i32 [ 0, %bb.d ], [ %.pre, %"._ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EdeEv.exit_crit_edge" ] ; 3 uses
  %i.ah = mul i32 %i.ag, 506952113
  %i.ai = and i32 %i.ah, 1073741823
  %i.aj = urem i32 %i.ai, %i.ae                   ; 2 uses
  %i.ak = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.al = getelementptr inbounds nuw [12 x i8], ptr %i.r, i64 %i.ak ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.an = load i32, ptr %i.am, align 4            ; 2 uses
  %i.ao = and i32 %i.an, 2
  %.not15.i.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not15.i.i.i, label %_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EdeEv.exit"
  %i.ap = load i32, ptr %i.q, align 4
  %i.aq = load i32, ptr %i.al, align 4, !tbaa !324
  %i.ar = icmp eq i32 %i.aq, %i.ag
  br i1 %i.ar, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.as = load i32, ptr %i.bc, align 4, !tbaa !324
  %i.at = icmp eq i32 %i.as, %i.ag
  br i1 %i.at, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !81

._crit_edge.i.i:                                  ; preds = %bb.e, %.lr.ph.i.i.i
  %.lcssa10.i.i = phi i32 [ %i.an, %.lr.ph.i.i.i ], [ %i.be, %bb.e ]
  %i.au = phi i64 [ %i.ak, %.lr.ph.i.i.i ], [ %i.bb, %bb.e ]
  %i.av = getelementptr inbounds nuw [12 x i8], ptr %i.r, i64 %i.au
  %i.aw = trunc i32 %.lcssa10.i.i to i1
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %spec.select.i.i = select i1 %i.aw, ptr %i.ax, ptr @minus_1
  br label %_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.i, %bb.e
  %.01016.i13.i.i = phi i32 [ %i.ba, %bb.e ], [ %i.aj, %.lr.ph.i.i.i ]
  %.017.i12.i.i = phi i32 [ %i.ay, %bb.e ], [ 0, %.lr.ph.i.i.i ]
  %i.ay = add i32 %.017.i12.i.i, 1                ; 2 uses
  %i.az = add i32 %i.ay, %.01016.i13.i.i
  %i.ba = and i32 %i.az, %i.ap                    ; 2 uses
  %i.bb = zext i32 %i.ba to i64                   ; 2 uses
  %i.bc = getelementptr inbounds nuw [12 x i8], ptr %i.r, i64 %i.bb ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.be = load i32, ptr %i.bd, align 4            ; 2 uses
  %i.bf = and i32 %i.be, 2
  %.not.i.i.i16 = icmp eq i32 %i.bf, 0
  br i1 %.not.i.i.i16, label %_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit, label %bb.e, !llvm.loop !81

_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit:          ; preds = %.lr.ph.i.i, %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EdeEv.exit", %._crit_edge.i.i
  %.0.i = phi ptr [ @minus_1, %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EdeEv.exit" ], [ %spec.select.i.i, %._crit_edge.i.i ], [ @minus_1, %.lr.ph.i.i ]
  %i.bg = load i32, ptr %.0.i, align 4, !tbaa !324
  %.not9 = icmp eq i32 %i.bg, %i.af               ; 3 uses
  br i1 %.not9, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit
  %i.bh = zext i32 %.sroa.721.042 to i64
  %i.bi = mul nuw nsw i64 %i.bh, 12
  %scevgep = getelementptr i8, ptr %.sroa.020.043, i64 %i.bi
  %.not.i.i.i.i.i.i17112 = icmp eq i32 %.sroa.721.042, 0
  br i1 %.not.i.i.i.i.i.i17112, label %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit", label %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.i.i.i, !prof !920

.preheader:                                       ; preds = %"_ZNK4$_35clIRMN12hb_hashmap_tIjjLb1EE6item_tEKFbvERS3_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS9_OSA_.exit.i.i.i.i"
  br label %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.i.i.i, !llvm.loop !83

_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.i.i.i: ; preds = %.preheader.preheader, %.preheader
  %.sroa.020.1114 = phi ptr [ %i.bk, %.preheader ], [ %.sroa.020.043, %.preheader.preheader ] ; 2 uses
  %.sroa.721.1113 = phi i32 [ %i.bj, %.preheader ], [ %.sroa.721.042, %.preheader.preheader ]
  %i.bj = add i32 %.sroa.721.1113, -1             ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.020.1114, i64 12 ; 3 uses
  %.not.i.i.i.i = icmp eq i32 %i.bj, 0
  br i1 %.not.i.i.i.i, label %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit", label %"_ZNK4$_35clIRMN12hb_hashmap_tIjjLb1EE6item_tEKFbvERS3_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS9_OSA_.exit.i.i.i.i"

"_ZNK4$_35clIRMN12hb_hashmap_tIjjLb1EE6item_tEKFbvERS3_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS9_OSA_.exit.i.i.i.i": ; preds = %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.i.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.020.1114, i64 16
  %i.bm = load i32, ptr %i.bl, align 4
  %i.bn = trunc i32 %i.bm to i1
  br i1 %i.bn, label %"_ZNK4$_35clIRMN12hb_hashmap_tIjjLb1EE6item_tEKFbvERS3_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS9_OSA_.exit.i.i.i.i._ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit_crit_edge", label %.preheader, !llvm.loop !83

"_ZNK4$_35clIRMN12hb_hashmap_tIjjLb1EE6item_tEKFbvERS3_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS9_OSA_.exit.i.i.i.i._ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit_crit_edge": ; preds = %"_ZNK4$_35clIRMN12hb_hashmap_tIjjLb1EE6item_tEKFbvERS3_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS9_OSA_.exit.i.i.i.i"
end_hunk_7
begin_hunk_8_@_ZNK3CFF12CFF2FDSelect6get_fdEj:bb.a
  %i.t = tail call noundef i16 @llvm.bswap.i16(i16 %i.s)
  %i.u = zext i16 %i.t to i32
  %i.v = icmp ult i32 %1, %i.u
  br i1 %i.v, label %_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE10_cmp_rangeEPKvS7_.exit.thread.i.i.i, label %_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE10_cmp_rangeEPKvS7_.exit.i.i.i

_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE10_cmp_rangeEPKvS7_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 3
  %i.x = load i16, ptr %i.w, align 1, !tbaa !283
  %i.y = tail call noundef i16 @llvm.bswap.i16(i16 %i.x)
  %i.z = zext i16 %i.y to i32
  %.not2.i.i.i = icmp ult i32 %1, %i.z
  br i1 %.not2.i.i.i, label %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE6get_fdEj.exit, label %bb.f

_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE10_cmp_rangeEPKvS7_.exit.thread.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.aa = add nsw i32 %i.o, -1
  br label %bb.g

bb.f:                                             ; preds = %_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE10_cmp_rangeEPKvS7_.exit.i.i.i
  %i.ab = add nuw nsw i32 %i.o, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE10_cmp_rangeEPKvS7_.exit.thread.i.i.i
  %.223.i.i.i = phi i32 [ %i.ab, %bb.f ], [ %.0214.i.i.i, %_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE10_cmp_rangeEPKvS7_.exit.thread.i.i.i ] ; 2 uses
  %.2.i.i.i = phi i32 [ %.0205.i.i.i, %bb.f ], [ %i.aa, %_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE10_cmp_rangeEPKvS7_.exit.thread.i.i.i ] ; 2 uses
  %.not.not.i.i.i = icmp sgt i32 %.223.i.i.i, %.2.i.i.i
  br i1 %.not.not.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i, !llvm.loop !86

.loopexit.i:                                      ; preds = %bb.g, %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit.i
  %.not.i4.not.i = icmp eq i16 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i4.not.i, label %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE6get_fdEj.exit, label %bb.h, !prof !267

bb.h:                                             ; preds = %.loopexit.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.ac = zext i16 %i.k to i64
  %i.ad = getelementptr [3 x i8], ptr %i.h, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.ad, i64 -1
  br label %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE6get_fdEj.exit

_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE6get_fdEj.exit: ; preds = %_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE10_cmp_rangeEPKvS7_.exit.i.i.i, %.loopexit.i, %bb.h
  %.pn.i = phi ptr [ @_hb_NullPool, %.loopexit.i ], [ %i.ae, %bb.h ], [ %i.r, %_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE10_cmp_rangeEPKvS7_.exit.i.i.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %.pn.i, i64 2
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !303
  %i.ah = zext i8 %i.ag to i32
  br label %bb.n

bb.i:                                             ; preds = %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 1, !tbaa !278
  %.not.i.not.i5 = icmp eq i32 %i.aj, 0
  br i1 %.not.i.not.i5, label %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_EixEi.exit.i, label %bb.j, !prof !267

bb.j:                                             ; preds = %bb.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 5
  %.sroa.0.0.copyload.i.pre.i6 = load i32, ptr %i.ai, align 1, !tbaa !280
  br label %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_EixEi.exit.i

_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_EixEi.exit.i: ; preds = %bb.j, %bb.i
  %.sroa.0.0.copyload.i.i7 = phi i32 [ %.sroa.0.0.copyload.i.pre.i6, %bb.j ], [ 0, %bb.i ] ; 2 uses
  %.0.i.i8 = phi ptr [ %i.ak, %bb.j ], [ @_hb_NullPool, %bb.i ]
  %i.al = tail call noundef i32 @llvm.bswap.i32(i32 %.sroa.0.0.copyload.i.i7) ; 2 uses
  %i.am = add i32 %i.al, -1                       ; 2 uses
  %.not3.i.i.i9 = icmp sgt i32 %i.am, 0
  br i1 %.not3.i.i.i9, label %.lr.ph.preheader.i.i.i13, label %.loopexit.i10

.lr.ph.preheader.i.i.i13:                         ; preds = %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_EixEi.exit.i
  %i.an = add i32 %i.al, -2
  br label %.lr.ph.i.i.i14

.lr.ph.i.i.i14:                                   ; preds = %bb.l, %.lr.ph.preheader.i.i.i13
  %.0205.i.i.i15 = phi i32 [ %.2.i.i.i19, %bb.l ], [ %i.an, %.lr.ph.preheader.i.i.i13 ] ; 2 uses
  %.0214.i.i.i16 = phi i32 [ %.223.i.i.i18, %bb.l ], [ 0, %.lr.ph.preheader.i.i.i13 ] ; 2 uses
  %i.ao = add i32 %.0214.i.i.i16, %.0205.i.i.i15
  %i.ap = lshr i32 %i.ao, 1                       ; 3 uses
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = mul nuw nsw i64 %i.aq, 6
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i.i8, i64 %i.ar ; 3 uses
  %i.at = load i32, ptr %i.as, align 1, !tbaa !278
  %i.au = tail call noundef i32 @llvm.bswap.i32(i32 %i.at)
  %i.av = icmp ult i32 %1, %i.au
  br i1 %i.av, label %_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EjLj4EEENS2_ILb1EtLj2EEEE10_cmp_rangeEPKvS7_.exit.thread.i.i.i, label %_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EjLj4EEENS2_ILb1EtLj2EEEE10_cmp_rangeEPKvS7_.exit.i.i.i

_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EjLj4EEENS2_ILb1EtLj2EEEE10_cmp_rangeEPKvS7_.exit.i.i.i: ; preds = %.lr.ph.i.i.i14
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 6
  %i.ax = load i32, ptr %i.aw, align 1, !tbaa !278
  %i.ay = tail call noundef i32 @llvm.bswap.i32(i32 %i.ax)
  %.not2.i.i.i17 = icmp ult i32 %1, %i.ay
  br i1 %.not2.i.i.i17, label %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EjLj4EEENS2_ILb1EtLj2EEEE6get_fdEj.exit, label %bb.k

_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EjLj4EEENS2_ILb1EtLj2EEEE10_cmp_rangeEPKvS7_.exit.thread.i.i.i: ; preds = %.lr.ph.i.i.i14
  %i.az = add nsw i32 %i.ap, -1
  br label %bb.l

bb.k:                                             ; preds = %_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EjLj4EEENS2_ILb1EtLj2EEEE10_cmp_rangeEPKvS7_.exit.i.i.i
  %i.ba = add nuw nsw i32 %i.ap, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EjLj4EEENS2_ILb1EtLj2EEEE10_cmp_rangeEPKvS7_.exit.thread.i.i.i
  %.223.i.i.i18 = phi i32 [ %i.ba, %bb.k ], [ %.0214.i.i.i16, %_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EjLj4EEENS2_ILb1EtLj2EEEE10_cmp_rangeEPKvS7_.exit.thread.i.i.i ] ; 2 uses
  %.2.i.i.i19 = phi i32 [ %.0205.i.i.i15, %bb.k ], [ %i.az, %_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EjLj4EEENS2_ILb1EtLj2EEEE10_cmp_rangeEPKvS7_.exit.thread.i.i.i ] ; 2 uses
  %.not.not.i.i.i20 = icmp sgt i32 %.223.i.i.i18, %.2.i.i.i19
  br i1 %.not.not.i.i.i20, label %.loopexit.i10, label %.lr.ph.i.i.i14, !llvm.loop !2635

.loopexit.i10:                                    ; preds = %bb.l, %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_EixEi.exit.i
  %.not.i4.not.i11 = icmp eq i32 %.sroa.0.0.copyload.i.i7, 0
  br i1 %.not.i4.not.i11, label %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EjLj4EEENS2_ILb1EtLj2EEEE6get_fdEj.exit, label %bb.m, !prof !267

bb.m:                                             ; preds = %.loopexit.i10
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.bc = zext i32 %i.am to i64
  %i.bd = getelementptr inbounds nuw [6 x i8], ptr %i.bb, i64 %i.bc
  br label %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EjLj4EEENS2_ILb1EtLj2EEEE6get_fdEj.exit

_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EjLj4EEENS2_ILb1EtLj2EEEE6get_fdEj.exit: ; preds = %_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EjLj4EEENS2_ILb1EtLj2EEEE10_cmp_rangeEPKvS7_.exit.i.i.i, %.loopexit.i10, %bb.m
  %.pn.i12 = phi ptr [ @_hb_NullPool, %.loopexit.i10 ], [ %i.bd, %bb.m ], [ %i.as, %_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EjLj4EEENS2_ILb1EtLj2EEEE10_cmp_rangeEPKvS7_.exit.i.i.i ]
  %i.be = getelementptr inbounds nuw i8, ptr %.pn.i12, i64 4
  %i.bf = load i16, ptr %i.be, align 1, !tbaa !283
  %i.bg = tail call noundef i16 @llvm.bswap.i16(i16 %i.bf)
  %i.bh = zext i16 %i.bg to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.b, %bb.a, %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EjLj4EEENS2_ILb1EtLj2EEEE6get_fdEj.exit, %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE6get_fdEj.exit, %bb.c
  %.0 = phi i32 [ %i.bh, %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EjLj4EEENS2_ILb1EtLj2EEEE6get_fdEj.exit ], [ 0, %bb.a ], [ %i.g, %bb.c ], [ %i.ah, %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE6get_fdEj.exit ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZNK2OT4cff213accelerator_t8get_pathEP9hb_font_tjR17hb_draw_session_t(ptr noundef nonnull align 8 dereferenceable(204) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !309
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.d = load i8, ptr %i.c, align 8, !tbaa !1064, !range !380, !noundef !293
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.g = load i32, ptr %i.f, align 4, !tbaa !310
  %i.h = zext i32 %i.g to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.2.8.insert.ext.i = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ]
  %i.i = tail call noundef zeroext i1 @_ZNK2OT4cff213accelerator_t11get_path_atEP9hb_font_tjR17hb_draw_session_t10hb_array_tIKiEPl(ptr noundef nonnull align 8 dereferenceable(204) %0, ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr %i.b, i64 %.sroa.2.8.insert.ext.i, ptr noundef null)
  ret i1 %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @hb_ot_color_has_palettes(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = load atomic ptr, ptr %i.a acquire, align 8 ; 2 uses
  %.not14.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not14.i.i.i, label %.lr.ph.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT4CPALE22hb_table_lazy_loader_tIS1_Lj37ELb1EE9hb_face_tLj37E9hb_blob_tEptEv.exit, !prof !265

.lr.ph.i.i.i:                                     ; preds = %bb.a, %bb.e
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !266  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT4CPALE22hb_table_lazy_loader_tIS1_Lj37ELb1EE9hb_face_tLj37E9hb_blob_tEptEv.exit, label %bb.b, !prof !267

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.e = tail call noundef ptr @_ZN22hb_table_lazy_loader_tIN2OT4CPALELj37ELb1EE6createEP9hb_face_t(ptr noundef nonnull %i.d) ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not10.i.i.i, label %bb.c, label %bb.d, !prof !267

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.07.i.i.i = phi ptr [ @_hb_NullPool, %bb.c ], [ %i.e, %bb.b ] ; 3 uses
  %i.f = cmpxchg weak ptr %i.a, ptr null, ptr %.07.i.i.i acq_rel monotonic, align 8
  %i.g = extractvalue { ptr, i1 } %i.f, 1
  br i1 %i.g, label %_ZNK16hb_lazy_loader_tIN2OT4CPALE22hb_table_lazy_loader_tIS1_Lj37ELb1EE9hb_face_tLj37E9hb_blob_tEptEv.exit, label %bb.e, !prof !268

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN16hb_lazy_loader_tIN2OT4CPALE22hb_table_lazy_loader_tIS1_Lj37ELb1EE9hb_face_tLj37E9hb_blob_tE10do_destroyEPS5_(ptr noundef nonnull %.07.i.i.i)
  %i.h = load atomic ptr, ptr %i.a acquire, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT4CPALE22hb_table_lazy_loader_tIS1_Lj37ELb1EE9hb_face_tLj37E9hb_blob_tEptEv.exit, !prof !269

_ZNK16hb_lazy_loader_tIN2OT4CPALE22hb_table_lazy_loader_tIS1_Lj37ELb1EE9hb_face_tLj37E9hb_blob_tEptEv.exit: ; preds = %.lr.ph.i.i.i, %bb.d, %bb.e, %bb.a
  %.19.ph.i.i.i = phi ptr [ %i.c, %bb.a ], [ @_hb_NullPool, %.lr.ph.i.i.i ], [ %i.h, %bb.e ], [ %.07.i.i.i, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !275
  %i.k = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !276
  %i.m = icmp ult i32 %i.l, 12
  %spec.select.i.i.i.i.i = select i1 %i.m, ptr @_hb_NullPool, ptr %i.j
  %i.n = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 4
  %i.o = load i16, ptr %i.n, align 1, !tbaa !283
  %i.p = icmp ne i16 %i.o, 0
  %i.q = zext i1 %i.p to i32
  ret i32 %i.q
}

; Function Attrs: mustprogress nounwind uwtable
define noundef range(i32 0, 65536) i32 @hb_ot_color_palette_get_count(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = load atomic ptr, ptr %i.a acquire, align 8 ; 2 uses
  %.not14.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not14.i.i.i, label %.lr.ph.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT4CPALE22hb_table_lazy_loader_tIS1_Lj37ELb1EE9hb_face_tLj37E9hb_blob_tEptEv.exit, !prof !265

.lr.ph.i.i.i:                                     ; preds = %bb.a, %bb.e
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !266  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT4CPALE22hb_table_lazy_loader_tIS1_Lj37ELb1EE9hb_face_tLj37E9hb_blob_tEptEv.exit, label %bb.b, !prof !267

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.e = tail call noundef ptr @_ZN22hb_table_lazy_loader_tIN2OT4CPALELj37ELb1EE6createEP9hb_face_t(ptr noundef nonnull %i.d) ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not10.i.i.i, label %bb.c, label %bb.d, !prof !267

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.07.i.i.i = phi ptr [ @_hb_NullPool, %bb.c ], [ %i.e, %bb.b ] ; 3 uses
  %i.f = cmpxchg weak ptr %i.a, ptr null, ptr %.07.i.i.i acq_rel monotonic, align 8
  %i.g = extractvalue { ptr, i1 } %i.f, 1
  br i1 %i.g, label %_ZNK16hb_lazy_loader_tIN2OT4CPALE22hb_table_lazy_loader_tIS1_Lj37ELb1EE9hb_face_tLj37E9hb_blob_tEptEv.exit, label %bb.e, !prof !268

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN16hb_lazy_loader_tIN2OT4CPALE22hb_table_lazy_loader_tIS1_Lj37ELb1EE9hb_face_tLj37E9hb_blob_tE10do_destroyEPS5_(ptr noundef nonnull %.07.i.i.i)
  %i.h = load atomic ptr, ptr %i.a acquire, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT4CPALE22hb_table_lazy_loader_tIS1_Lj37ELb1EE9hb_face_tLj37E9hb_blob_tEptEv.exit, !prof !269

_ZNK16hb_lazy_loader_tIN2OT4CPALE22hb_table_lazy_loader_tIS1_Lj37ELb1EE9hb_face_tLj37E9hb_blob_tEptEv.exit: ; preds = %.lr.ph.i.i.i, %bb.d, %bb.e, %bb.a
  %.19.ph.i.i.i = phi ptr [ %i.c, %bb.a ], [ @_hb_NullPool, %.lr.ph.i.i.i ], [ %i.h, %bb.e ], [ %.07.i.i.i, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !275
  %i.k = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !276
  %i.m = icmp ult i32 %i.l, 12
  %spec.select.i.i.i.i.i = select i1 %i.m, ptr @_hb_NullPool, ptr %i.j
  %i.n = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 4
  %i.o = load i16, ptr %i.n, align 1, !tbaa !283
  %i.p = tail call noundef i16 @llvm.bswap.i16(i16 %i.o)
  %i.q = zext i16 %i.p to i32
  ret i32 %i.q
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 65536) i32 @hb_ot_color_palette_get_name_id(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = load atomic ptr, ptr %i.a acquire, align 8 ; 2 uses
  %.not14.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not14.i.i.i, label %.lr.ph.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT4CPALE22hb_table_lazy_loader_tIS1_Lj37ELb1EE9hb_face_tLj37E9hb_blob_tEptEv.exit, !prof !265

.lr.ph.i.i.i:                                     ; preds = %bb.a, %bb.e
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !266  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT4CPALE22hb_table_lazy_loader_tIS1_Lj37ELb1EE9hb_face_tLj37E9hb_blob_tEptEv.exit, label %bb.b, !prof !267

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.e = tail call noundef ptr @_ZN22hb_table_lazy_loader_tIN2OT4CPALELj37ELb1EE6createEP9hb_face_t(ptr noundef nonnull %i.d) ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not10.i.i.i, label %bb.c, label %bb.d, !prof !267

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.07.i.i.i = phi ptr [ @_hb_NullPool, %bb.c ], [ %i.e, %bb.b ] ; 3 uses
  %i.f = cmpxchg weak ptr %i.a, ptr null, ptr %.07.i.i.i acq_rel monotonic, align 8
  %i.g = extractvalue { ptr, i1 } %i.f, 1
  br i1 %i.g, label %_ZNK16hb_lazy_loader_tIN2OT4CPALE22hb_table_lazy_loader_tIS1_Lj37ELb1EE9hb_face_tLj37E9hb_blob_tEptEv.exit, label %bb.e, !prof !268

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN16hb_lazy_loader_tIN2OT4CPALE22hb_table_lazy_loader_tIS1_Lj37ELb1EE9hb_face_tLj37E9hb_blob_tE10do_destroyEPS5_(ptr noundef nonnull %.07.i.i.i)
  %i.h = load atomic ptr, ptr %i.a acquire, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT4CPALE22hb_table_lazy_loader_tIS1_Lj37ELb1EE9hb_face_tLj37E9hb_blob_tEptEv.exit, !prof !269

_ZNK16hb_lazy_loader_tIN2OT4CPALE22hb_table_lazy_loader_tIS1_Lj37ELb1EE9hb_face_tLj37E9hb_blob_tEptEv.exit: ; preds = %.lr.ph.i.i.i, %bb.d, %bb.e, %bb.a
  %.19.ph.i.i.i = phi ptr [ %i.c, %bb.a ], [ @_hb_NullPool, %.lr.ph.i.i.i ], [ %i.h, %bb.e ], [ %.07.i.i.i, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !275
  %i.k = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !276
  %i.m = icmp ult i32 %i.l, 12
  %spec.select.i.i.i.i.i = select i1 %i.m, ptr @_hb_NullPool, ptr %i.j ; 5 uses
  %i.n = load i16, ptr %spec.select.i.i.i.i.i, align 1, !tbaa !283
  %i.o = icmp eq i16 %i.n, 0
  br i1 %i.o, label %_ZNK2OT4CPAL2v1Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNK16hb_lazy_loader_tIN2OT4CPALE22hb_table_lazy_loader_tIS1_Lj37ELb1EE9hb_face_tLj37E9hb_blob_tEptEv.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.p = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 4
  %i.q = load i16, ptr %i.p, align 1, !tbaa !283
  %i.r = tail call noundef i16 @llvm.bswap.i16(i16 %i.q)
  %i.s = zext i16 %i.r to i64
  %i.t = shl nuw nsw i64 %i.s, 1
  %i.u = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  br label %_ZNK2OT4CPAL2v1Ev.exit.i

_ZNK2OT4CPAL2v1Ev.exit.i:                         ; preds = %bb.f, %_ZNK16hb_lazy_loader_tIN2OT4CPALE22hb_table_lazy_loader_tIS1_Lj37ELb1EE9hb_face_tLj37E9hb_blob_tEptEv.exit
  %.0.i.i = phi ptr [ %i.v, %bb.f ], [ @_hb_NullPool, %_ZNK16hb_lazy_loader_tIN2OT4CPALE22hb_table_lazy_loader_tIS1_Lj37ELb1EE9hb_face_tLj37E9hb_blob_tEptEv.exit ]
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  %i.x = load i32, ptr %i.w, align 1, !tbaa !278  ; 2 uses
  %.not.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i, label %_ZNK2OT4CPAL19get_palette_name_idEj.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK2OT4CPAL2v1Ev.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 4
  %i.z = load i16, ptr %i.y, align 1, !tbaa !283
  %i.aa = tail call noundef i16 @llvm.bswap.i16(i16 %i.z)
  %i.ab = zext i16 %i.aa to i32
  %i.ac = tail call noundef i32 @llvm.bswap.i32(i32 %i.x)
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 %i.ad
  %.not.i.i.i.i1 = icmp ult i32 %1, %i.ab
  %i.af = zext i32 %1 to i64
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %i.af
  %.0.i.i.i.i = select i1 %.not.i.i.i.i1, ptr %i.ag, ptr @_hb_Null_OT_Index, !prof !268
  %i.ah = load i16, ptr %.0.i.i.i.i, align 1, !tbaa !283
  %i.ai = tail call noundef i16 @llvm.bswap.i16(i16 %i.ah)
  %i.aj = zext i16 %i.ai to i32
  br label %_ZNK2OT4CPAL19get_palette_name_idEj.exit

_ZNK2OT4CPAL19get_palette_name_idEj.exit:         ; preds = %_ZNK2OT4CPAL2v1Ev.exit.i, %bb.g
  %.0.i1.i = phi i32 [ %i.aj, %bb.g ], [ 65535, %_ZNK2OT4CPAL2v1Ev.exit.i ]
  ret i32 %.0.i1.i
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 65536) i32 @hb_ot_color_palette_color_get_name_id(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = load atomic ptr, ptr %i.a acquire, align 8 ; 2 uses
  %.not14.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not14.i.i.i, label %.lr.ph.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT4CPALE22hb_table_lazy_loader_tIS1_Lj37ELb1EE9hb_face_tLj37E9hb_blob_tEptEv.exit, !prof !265

.lr.ph.i.i.i:                                     ; preds = %bb.a, %bb.e
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !266  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT4CPALE22hb_table_lazy_loader_tIS1_Lj37ELb1EE9hb_face_tLj37E9hb_blob_tEptEv.exit, label %bb.b, !prof !267

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.e = tail call noundef ptr @_ZN22hb_table_lazy_loader_tIN2OT4CPALELj37ELb1EE6createEP9hb_face_t(ptr noundef nonnull %i.d) ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not10.i.i.i, label %bb.c, label %bb.d, !prof !267

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.07.i.i.i = phi ptr [ @_hb_NullPool, %bb.c ], [ %i.e, %bb.b ] ; 3 uses
  %i.f = cmpxchg weak ptr %i.a, ptr null, ptr %.07.i.i.i acq_rel monotonic, align 8
  %i.g = extractvalue { ptr, i1 } %i.f, 1
  br i1 %i.g, label %_ZNK16hb_lazy_loader_tIN2OT4CPALE22hb_table_lazy_loader_tIS1_Lj37ELb1EE9hb_face_tLj37E9hb_blob_tEptEv.exit, label %bb.e, !prof !268

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN16hb_lazy_loader_tIN2OT4CPALE22hb_table_lazy_loader_tIS1_Lj37ELb1EE9hb_face_tLj37E9hb_blob_tE10do_destroyEPS5_(ptr noundef nonnull %.07.i.i.i)
  %i.h = load atomic ptr, ptr %i.a acquire, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT4CPALE22hb_table_lazy_loader_tIS1_Lj37ELb1EE9hb_face_tLj37E9hb_blob_tEptEv.exit, !prof !269

_ZNK16hb_lazy_loader_tIN2OT4CPALE22hb_table_lazy_loader_tIS1_Lj37ELb1EE9hb_face_tLj37E9hb_blob_tEptEv.exit: ; preds = %.lr.ph.i.i.i, %bb.d, %bb.e, %bb.a
  %.19.ph.i.i.i = phi ptr [ %i.c, %bb.a ], [ @_hb_NullPool, %.lr.ph.i.i.i ], [ %i.h, %bb.e ], [ %.07.i.i.i, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !275
  %i.k = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !276
  %i.m = icmp ult i32 %i.l, 12
  %spec.select.i.i.i.i.i = select i1 %i.m, ptr @_hb_NullPool, ptr %i.j ; 5 uses
  %i.n = load i16, ptr %spec.select.i.i.i.i.i, align 1, !tbaa !283
  %i.o = icmp eq i16 %i.n, 0
  br i1 %i.o, label %_ZNK2OT4CPAL2v1Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNK16hb_lazy_loader_tIN2OT4CPALE22hb_table_lazy_loader_tIS1_Lj37ELb1EE9hb_face_tLj37E9hb_blob_tEptEv.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.p = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 4
  %i.q = load i16, ptr %i.p, align 1, !tbaa !283
  %i.r = tail call noundef i16 @llvm.bswap.i16(i16 %i.q)
  %i.s = zext i16 %i.r to i64
  %i.t = shl nuw nsw i64 %i.s, 1
  %i.u = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  br label %_ZNK2OT4CPAL2v1Ev.exit.i

_ZNK2OT4CPAL2v1Ev.exit.i:                         ; preds = %bb.f, %_ZNK16hb_lazy_loader_tIN2OT4CPALE22hb_table_lazy_loader_tIS1_Lj37ELb1EE9hb_face_tLj37E9hb_blob_tEptEv.exit
  %.0.i.i = phi ptr [ %i.v, %bb.f ], [ @_hb_NullPool, %_ZNK16hb_lazy_loader_tIN2OT4CPALE22hb_table_lazy_loader_tIS1_Lj37ELb1EE9hb_face_tLj37E9hb_blob_tEptEv.exit ]
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.x = load i32, ptr %i.w, align 1, !tbaa !278  ; 2 uses
  %.not.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i, label %_ZNK2OT4CPAL17get_color_name_idEj.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK2OT4CPAL2v1Ev.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 2
  %i.z = load i16, ptr %i.y, align 1, !tbaa !283
end_hunk_8
begin_hunk_9_@_ZNK2OT4GDEF14is_blocklistedEP9hb_blob_tP9hb_face_t
define hidden noundef zeroext i1 @_ZNK2OT4GDEF14is_blocklistedEP9hb_blob_tP9hb_face_t(ptr nofree nonnull readnone align 1 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !276
  %i.c = zext i32 %i.b to i64
  %i.d = shl i64 %i.c, 42
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 312 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.g = load atomic ptr, ptr %i.e acquire, align 8 ; 2 uses
  %.not14.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not14.i.i.i, label %.lr.ph.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT18GSUB_accelerator_tE21hb_face_lazy_loader_tIS1_Lj26EE9hb_face_tLj26ES1_EptEv.exit, !prof !265

.lr.ph.i.i.i:                                     ; preds = %bb.a, %bb.e
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !266
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT18GSUB_accelerator_tE21hb_face_lazy_loader_tIS1_Lj26EE9hb_face_tLj26ES1_EptEv.exit, label %bb.b, !prof !267

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.i = tail call noundef ptr @_ZNK17hb_data_wrapper_tI9hb_face_tLj26EE11call_createIN2OT18GSUB_accelerator_tE21hb_face_lazy_loader_tIS4_Lj26EEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) %i.e) ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not10.i.i.i, label %bb.c, label %bb.d, !prof !267

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.07.i.i.i = phi ptr [ @_hb_NullPool, %bb.c ], [ %i.i, %bb.b ] ; 3 uses
  %i.j = cmpxchg weak ptr %i.e, ptr null, ptr %.07.i.i.i acq_rel monotonic, align 8
  %i.k = extractvalue { ptr, i1 } %i.j, 1
  br i1 %i.k, label %_ZNK16hb_lazy_loader_tIN2OT18GSUB_accelerator_tE21hb_face_lazy_loader_tIS1_Lj26EE9hb_face_tLj26ES1_EptEv.exit, label %bb.e, !prof !268

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN16hb_lazy_loader_tIN2OT18GSUB_accelerator_tE21hb_face_lazy_loader_tIS1_Lj26EE9hb_face_tLj26ES1_E10do_destroyEPS1_(ptr noundef nonnull %.07.i.i.i)
  %i.l = load atomic ptr, ptr %i.e acquire, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT18GSUB_accelerator_tE21hb_face_lazy_loader_tIS1_Lj26EE9hb_face_tLj26ES1_EptEv.exit, !prof !269

_ZNK16hb_lazy_loader_tIN2OT18GSUB_accelerator_tE21hb_face_lazy_loader_tIS1_Lj26EE9hb_face_tLj26ES1_EptEv.exit: ; preds = %.lr.ph.i.i.i, %bb.d, %bb.e, %bb.a
  %.19.ph.i.i.i = phi ptr [ %i.g, %bb.a ], [ @_hb_NullPool, %.lr.ph.i.i.i ], [ %i.l, %bb.e ], [ %.07.i.i.i, %bb.d ]
  %i.m = load ptr, ptr %.19.ph.i.i.i, align 8, !tbaa !272 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  %spec.select.i.i = select i1 %.not.i.i, ptr @_hb_NullPool, ptr %i.m
  %i.n = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 24
  %i.o = load i32, ptr %i.n, align 8, !tbaa !276
  %i.p = zext i32 %i.o to i64
  %i.q = shl nuw nsw i64 %i.p, 21
  %i.r = or i64 %i.q, %i.d
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 320 ; 4 uses
  %i.t = load atomic ptr, ptr %i.s acquire, align 8 ; 2 uses
  %.not14.i.i.i4 = icmp eq ptr %i.t, null
  br i1 %.not14.i.i.i4, label %.lr.ph.i.i.i6, label %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit, !prof !265

.lr.ph.i.i.i6:                                    ; preds = %_ZNK16hb_lazy_loader_tIN2OT18GSUB_accelerator_tE21hb_face_lazy_loader_tIS1_Lj26EE9hb_face_tLj26ES1_EptEv.exit, %bb.i
  %i.u = load ptr, ptr %i.f, align 8, !tbaa !266
  %.not.i.i.i.i7 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i7, label %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit, label %bb.f, !prof !267

bb.f:                                             ; preds = %.lr.ph.i.i.i6
  %i.v = tail call noundef ptr @_ZNK17hb_data_wrapper_tI9hb_face_tLj27EE11call_createIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS4_Lj27EEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) %i.s) ; 2 uses
  %.not10.i.i.i8 = icmp eq ptr %i.v, null
  br i1 %.not10.i.i.i8, label %bb.g, label %bb.h, !prof !267

bb.g:                                             ; preds = %bb.f
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.07.i.i.i9 = phi ptr [ @_hb_NullPool, %bb.g ], [ %i.v, %bb.f ] ; 3 uses
  %i.w = cmpxchg weak ptr %i.s, ptr null, ptr %.07.i.i.i9 acq_rel monotonic, align 8
  %i.x = extractvalue { ptr, i1 } %i.w, 1
  br i1 %i.x, label %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit, label %bb.i, !prof !268

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_E10do_destroyEPS1_(ptr noundef nonnull %.07.i.i.i9)
  %i.y = load atomic ptr, ptr %i.s acquire, align 8 ; 2 uses
  %.not.i.i.i10 = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i10, label %.lr.ph.i.i.i6, label %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit, !prof !269

_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit: ; preds = %.lr.ph.i.i.i6, %bb.h, %bb.i, %_ZNK16hb_lazy_loader_tIN2OT18GSUB_accelerator_tE21hb_face_lazy_loader_tIS1_Lj26EE9hb_face_tLj26ES1_EptEv.exit
  %.19.ph.i.i.i5 = phi ptr [ %i.t, %_ZNK16hb_lazy_loader_tIN2OT18GSUB_accelerator_tE21hb_face_lazy_loader_tIS1_Lj26EE9hb_face_tLj26ES1_EptEv.exit ], [ @_hb_NullPool, %.lr.ph.i.i.i6 ], [ %i.y, %bb.i ], [ %.07.i.i.i9, %bb.h ]
  %i.z = load ptr, ptr %.19.ph.i.i.i5, align 8, !tbaa !272 ; 2 uses
  %.not.i.i11 = icmp eq ptr %i.z, null
  %spec.select.i.i12 = select i1 %.not.i.i11, ptr @_hb_NullPool, ptr %i.z
  %i.aa = getelementptr inbounds nuw i8, ptr %spec.select.i.i12, i64 24
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !276
  %i.ac = zext i32 %i.ab to i64
  %i.ad = or i64 %i.r, %i.ac
  switch i64 %i.ad, label %bb.j [
    i64 1943942585164854, label %bb.k
    i64 1891166027030230, label %bb.k
    i64 1943942585161932, label %bb.k
    i64 1891166027028942, label %bb.k
    i64 2155049178407590, label %bb.k
    i64 2102272620274606, label %bb.k
    i64 3949472094664070, label %bb.k
    i64 4002248677964404, label %bb.k
    i64 4081436021811140, label %bb.k
    i64 4134212605111612, label %bb.k
    i64 4239766824479400, label %bb.k
    i64 4292543374225424, label %bb.k
    i64 4371709557795760, label %bb.k
    i64 4424486107541804, label %bb.k
    i64 4424486329839522, label %bb.k
    i64 4477262879585644, label %bb.k
    i64 4424486329839528, label %bb.k
    i64 4477262879585650, label %bb.k
    i64 3659190056826938, label %bb.k
    i64 3711966568821154, label %bb.k
    i64 791675748228182, label %bb.k
    i64 844451433946198, label %bb.k
    i64 844451542998102, label %bb.k
    i64 826833264185100, label %bb.k
    i64 826833297739106, label %bb.k
    i64 4653231842012714, label %bb.k
    i64 4600455279685944, label %bb.k
    i64 4653283775889794, label %bb.k
    i64 4600507205174726, label %bb.k
    i64 4600507200979672, label %bb.k
    i64 4653283771696234, label %bb.k
    i64 5849632345219666, label %bb.k
    i64 5849632345220700, label %bb.k
    i64 4415762622069236, label %bb.k
    i64 2586061997881426, label %bb.k
    i64 2586061997881246, label %bb.k
    i64 3931889572283560, label %bb.k
    i64 3931889555506856, label %bb.k
    i64 3588822453469852, label %bb.k
    i64 3588822453469938, label %bb.k
  ]

bb.j:                                             ; preds = %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit
  br label %bb.k

bb.k:                                             ; preds = %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit, %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit, %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit, %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit, %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit, %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit, %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit, %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit, %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit, %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit, %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit, %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit, %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit, %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit, %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit, %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit, %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit, %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit, %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit, %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit, %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit, %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit, %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit, %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit, %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit, %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit, %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit, %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit, %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit, %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit, %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit, %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit, %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit, %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit, %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit, %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit, %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit, %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit, %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit, %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit, %bb.j
  %.0 = phi i1 [ false, %bb.j ], [ true, %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit ], [ true, %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit ], [ true, %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit ], [ true, %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit ], [ true, %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit ], [ true, %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit ], [ true, %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit ], [ true, %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit ], [ true, %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit ], [ true, %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit ], [ true, %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit ], [ true, %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit ], [ true, %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit ], [ true, %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit ], [ true, %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit ], [ true, %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit ], [ true, %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit ], [ true, %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit ], [ true, %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit ], [ true, %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit ], [ true, %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit ], [ true, %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit ], [ true, %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit ], [ true, %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit ], [ true, %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit ], [ true, %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit ], [ true, %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit ], [ true, %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit ], [ true, %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit ], [ true, %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit ], [ true, %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit ], [ true, %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit ], [ true, %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit ], [ true, %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit ], [ true, %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit ], [ true, %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit ], [ true, %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit ], [ true, %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit ], [ true, %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit ], [ true, %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @hb_ot_layout_has_glyph_classes(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = load atomic ptr, ptr %i.a acquire, align 8 ; 2 uses
  %.not14.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not14.i.i.i, label %.lr.ph.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT18GDEF_accelerator_tE21hb_face_lazy_loader_tIS1_Lj25EE9hb_face_tLj25ES1_EptEv.exit, !prof !265

.lr.ph.i.i.i:                                     ; preds = %bb.a, %bb.e
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !266
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT18GDEF_accelerator_tE21hb_face_lazy_loader_tIS1_Lj25EE9hb_face_tLj25ES1_EptEv.exit, label %bb.b, !prof !267

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.e = tail call noundef ptr @_ZNK17hb_data_wrapper_tI9hb_face_tLj25EE11call_createIN2OT18GDEF_accelerator_tE21hb_face_lazy_loader_tIS4_Lj25EEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not10.i.i.i, label %bb.c, label %bb.d, !prof !267

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.07.i.i.i = phi ptr [ @_hb_NullPool, %bb.c ], [ %i.e, %bb.b ] ; 3 uses
  %i.f = cmpxchg weak ptr %i.a, ptr null, ptr %.07.i.i.i acq_rel monotonic, align 8
  %i.g = extractvalue { ptr, i1 } %i.f, 1
  br i1 %i.g, label %_ZNK16hb_lazy_loader_tIN2OT18GDEF_accelerator_tE21hb_face_lazy_loader_tIS1_Lj25EE9hb_face_tLj25ES1_EptEv.exit, label %bb.e, !prof !268

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN16hb_lazy_loader_tIN2OT18GDEF_accelerator_tE21hb_face_lazy_loader_tIS1_Lj25EE9hb_face_tLj25ES1_E10do_destroyEPS1_(ptr noundef nonnull %.07.i.i.i)
  %i.h = load atomic ptr, ptr %i.a acquire, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT18GDEF_accelerator_tE21hb_face_lazy_loader_tIS1_Lj25EE9hb_face_tLj25ES1_EptEv.exit, !prof !269

_ZNK16hb_lazy_loader_tIN2OT18GDEF_accelerator_tE21hb_face_lazy_loader_tIS1_Lj25EE9hb_face_tLj25ES1_EptEv.exit: ; preds = %.lr.ph.i.i.i, %bb.d, %bb.e, %bb.a
  %.19.ph.i.i.i = phi ptr [ %i.c, %bb.a ], [ @_hb_NullPool, %.lr.ph.i.i.i ], [ %i.h, %bb.e ], [ %.07.i.i.i, %bb.d ]
  %i.i = load ptr, ptr %.19.ph.i.i.i, align 8, !tbaa !272 ; 2 uses
  %.not.i.i.i.i1 = icmp eq ptr %i.i, null
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i1, ptr @_hb_NullPool, ptr %i.i ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !275
  %i.l = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !276
  %i.n = icmp ult i32 %i.m, 4
  %spec.select.i.i1.i.i = select i1 %i.n, ptr @_hb_NullPool, ptr %i.k ; 2 uses
  %i.o = load i16, ptr %spec.select.i.i1.i.i, align 1, !tbaa !283
  %cond.i = icmp eq i16 %i.o, 256
  br i1 %cond.i, label %bb.f, label %_ZNK2OT4GDEF17has_glyph_classesEv.exit

bb.f:                                             ; preds = %_ZNK16hb_lazy_loader_tIN2OT18GDEF_accelerator_tE21hb_face_lazy_loader_tIS1_Lj25EE9hb_face_tLj25ES1_EptEv.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.p = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i, i64 4
  %i.q = load i16, ptr %i.p, align 1, !tbaa !283
  %i.r = icmp ne i16 %i.q, 0
  %i.s = zext i1 %i.r to i32
  br label %_ZNK2OT4GDEF17has_glyph_classesEv.exit

_ZNK2OT4GDEF17has_glyph_classesEv.exit:           ; preds = %_ZNK16hb_lazy_loader_tIN2OT18GDEF_accelerator_tE21hb_face_lazy_loader_tIS1_Lj25EE9hb_face_tLj25ES1_EptEv.exit, %bb.f
  %.0.i = phi i32 [ %i.s, %bb.f ], [ 0, %_ZNK16hb_lazy_loader_tIN2OT18GDEF_accelerator_tE21hb_face_lazy_loader_tIS1_Lj25EE9hb_face_tLj25ES1_EptEv.exit ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define noundef range(i32 0, 65536) i32 @hb_ot_layout_get_glyph_class(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = load atomic ptr, ptr %i.a acquire, align 8 ; 2 uses
  %.not14.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not14.i.i.i, label %.lr.ph.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT18GDEF_accelerator_tE21hb_face_lazy_loader_tIS1_Lj25EE9hb_face_tLj25ES1_EptEv.exit, !prof !265

.lr.ph.i.i.i:                                     ; preds = %bb.a, %bb.e
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !266
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT18GDEF_accelerator_tE21hb_face_lazy_loader_tIS1_Lj25EE9hb_face_tLj25ES1_EptEv.exit, label %bb.b, !prof !267

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.e = tail call noundef ptr @_ZNK17hb_data_wrapper_tI9hb_face_tLj25EE11call_createIN2OT18GDEF_accelerator_tE21hb_face_lazy_loader_tIS4_Lj25EEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not10.i.i.i, label %bb.c, label %bb.d, !prof !267

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.07.i.i.i = phi ptr [ @_hb_NullPool, %bb.c ], [ %i.e, %bb.b ] ; 3 uses
  %i.f = cmpxchg weak ptr %i.a, ptr null, ptr %.07.i.i.i acq_rel monotonic, align 8
  %i.g = extractvalue { ptr, i1 } %i.f, 1
  br i1 %i.g, label %_ZNK16hb_lazy_loader_tIN2OT18GDEF_accelerator_tE21hb_face_lazy_loader_tIS1_Lj25EE9hb_face_tLj25ES1_EptEv.exit, label %bb.e, !prof !268

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN16hb_lazy_loader_tIN2OT18GDEF_accelerator_tE21hb_face_lazy_loader_tIS1_Lj25EE9hb_face_tLj25ES1_E10do_destroyEPS1_(ptr noundef nonnull %.07.i.i.i)
  %i.h = load atomic ptr, ptr %i.a acquire, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT18GDEF_accelerator_tE21hb_face_lazy_loader_tIS1_Lj25EE9hb_face_tLj25ES1_EptEv.exit, !prof !269

_ZNK16hb_lazy_loader_tIN2OT18GDEF_accelerator_tE21hb_face_lazy_loader_tIS1_Lj25EE9hb_face_tLj25ES1_EptEv.exit: ; preds = %.lr.ph.i.i.i, %bb.d, %bb.e, %bb.a
  %.19.ph.i.i.i = phi ptr [ %i.c, %bb.a ], [ @_hb_NullPool, %.lr.ph.i.i.i ], [ %i.h, %bb.e ], [ %.07.i.i.i, %bb.d ]
  %i.i = load ptr, ptr %.19.ph.i.i.i, align 8, !tbaa !272 ; 2 uses
  %.not.i.i.i.i1 = icmp eq ptr %i.i, null
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i1, ptr @_hb_NullPool, ptr %i.i ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !275
  %i.l = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !276
  %i.n = icmp ult i32 %i.m, 4
  %spec.select.i.i1.i.i = select i1 %i.n, ptr @_hb_NullPool, ptr %i.k ; 3 uses
  %i.o = load i16, ptr %spec.select.i.i1.i.i, align 1, !tbaa !283
  %cond.i.i = icmp eq i16 %i.o, 256
  br i1 %cond.i.i, label %bb.f, label %_ZNK2OT4GDEF19get_glyph_class_defEv.exit.i

bb.f:                                             ; preds = %_ZNK16hb_lazy_loader_tIN2OT18GDEF_accelerator_tE21hb_face_lazy_loader_tIS1_Lj25EE9hb_face_tLj25ES1_EptEv.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.p = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i, i64 4
  %i.q = load i16, ptr %i.p, align 1, !tbaa !283  ; 2 uses
  %i.r = icmp eq i16 %i.q, 0
  %i.s = tail call i16 @llvm.bswap.i16(i16 %i.q)
  %i.t = zext i16 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i, i64 %i.t
  %.0.i.i.i.i = select i1 %i.r, ptr @_hb_NullPool, ptr %i.u, !prof !267
  br label %_ZNK2OT4GDEF19get_glyph_class_defEv.exit.i

_ZNK2OT4GDEF19get_glyph_class_defEv.exit.i:       ; preds = %bb.f, %_ZNK16hb_lazy_loader_tIN2OT18GDEF_accelerator_tE21hb_face_lazy_loader_tIS1_Lj25EE9hb_face_tLj25ES1_EptEv.exit
  %.0.i.i = phi ptr [ %.0.i.i.i.i, %bb.f ], [ @_hb_NullPool, %_ZNK16hb_lazy_loader_tIN2OT18GDEF_accelerator_tE21hb_face_lazy_loader_tIS1_Lj25EE9hb_face_tLj25ES1_EptEv.exit ] ; 6 uses
  %i.v = load i16, ptr %.0.i.i, align 1, !tbaa !283
  %i.w = tail call noundef i16 @llvm.bswap.i16(i16 %i.v)
  switch i16 %i.w, label %_ZNK2OT4GDEF15get_glyph_classEj.exit [
    i16 1, label %bb.g
    i16 2, label %bb.i
  ]

bb.g:                                             ; preds = %_ZNK2OT4GDEF19get_glyph_class_defEv.exit.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 2
  %i.z = load i16, ptr %i.y, align 1, !tbaa !283
  %i.aa = tail call noundef i16 @llvm.bswap.i16(i16 %i.z)
  %i.ab = zext i16 %i.aa to i32
  %i.ac = sub i32 %1, %i.ab                       ; 2 uses
  %i.ad = load i16, ptr %i.x, align 1, !tbaa !283
  %i.ae = tail call noundef i16 @llvm.bswap.i16(i16 %i.ad)
  %i.af = zext i16 %i.ae to i32
  %.not.i.i.i.i2 = icmp ult i32 %i.ac, %i.af
  br i1 %.not.i.i.i.i2, label %bb.h, label %_ZNK2OT17ClassDefFormat1_3INS_6Layout10SmallTypesEE9get_classEj.exit.i.i, !prof !268

bb.h:                                             ; preds = %bb.g
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 6
  %i.ah = zext nneg i32 %i.ac to i64
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.ah
  br label %_ZNK2OT17ClassDefFormat1_3INS_6Layout10SmallTypesEE9get_classEj.exit.i.i

_ZNK2OT17ClassDefFormat1_3INS_6Layout10SmallTypesEE9get_classEj.exit.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i2.i = phi ptr [ %i.ai, %bb.h ], [ @_hb_NullPool, %bb.g ]
  %i.aj = load i16, ptr %.0.i.i.i2.i, align 1, !tbaa !283
  %i.ak = tail call noundef i16 @llvm.bswap.i16(i16 %i.aj)
  br label %_ZNK2OT4GDEF15get_glyph_classEj.exit

bb.i:                                             ; preds = %_ZNK2OT4GDEF19get_glyph_class_defEv.exit.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 2
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4 ; 2 uses
  %i.an = load i16, ptr %i.al, align 1, !tbaa !283 ; 2 uses
  %.not1.i.i.i.i.not.i.i.i.i = icmp eq i16 %i.an, 0
  br i1 %.not1.i.i.i.i.not.i.i.i.i, label %_ZNK2OT17ClassDefFormat2_4INS_6Layout10SmallTypesEE9get_classEj.exit.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i:                 ; preds = %bb.i
  %i.ao = tail call noundef i16 @llvm.bswap.i16(i16 %i.an)
  %.sroa.4.8.extract.trunc.i.i.i.i = zext i16 %i.ao to i32
  %i.ap = add nsw i32 %.sroa.4.8.extract.trunc.i.i.i.i, -1
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.k, %.lr.ph.preheader.i.i.i.i.i.i.i.i
  %.0203.i.i.i.i.i.i.i.i = phi i32 [ %.2.i.i.i.i.i.i.i.i, %bb.k ], [ %i.ap, %.lr.ph.preheader.i.i.i.i.i.i.i.i ] ; 2 uses
  %.0212.i.i.i.i.i.i.i.i = phi i32 [ %.223.i.i.i.i.i.i.i.i, %bb.k ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.aq = add i32 %.0212.i.i.i.i.i.i.i.i, %.0203.i.i.i.i.i.i.i.i
  %i.ar = lshr i32 %i.aq, 1                       ; 3 uses
  %i.as = zext nneg i32 %i.ar to i64              ; 2 uses
  %i.at = mul nuw nsw i64 %i.as, 6
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.at ; 2 uses
  %i.av = load i16, ptr %i.au, align 1, !tbaa !283
  %i.aw = tail call noundef i16 @llvm.bswap.i16(i16 %i.av)
  %i.ax = zext i16 %i.aw to i32
  %i.ay = icmp ult i32 %1, %i.ax
  br i1 %i.ay, label %_ZL14_hb_cmp_methodIjKN2OT6Layout6Common11RangeRecordINS1_10SmallTypesEEEJEEiPKvS8_DpT1_.exit.thread.i.i.i.i.i.i.i.i, label %_ZL14_hb_cmp_methodIjKN2OT6Layout6Common11RangeRecordINS1_10SmallTypesEEEJEEiPKvS8_DpT1_.exit.i.i.i.i.i.i.i.i

_ZL14_hb_cmp_methodIjKN2OT6Layout6Common11RangeRecordINS1_10SmallTypesEEEJEEiPKvS8_DpT1_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 2
  %i.ba = load i16, ptr %i.az, align 1, !tbaa !283
  %i.bb = tail call noundef i16 @llvm.bswap.i16(i16 %i.ba)
  %i.bc = zext i16 %i.bb to i32
  %.not.i.i.not.i.i.i.i.i.i.i.i = icmp ugt i32 %1, %i.bc
  br i1 %.not.i.i.not.i.i.i.i.i.i.i.i, label %bb.j, label %_ZNK17hb_sorted_array_tIKN2OT6Layout6Common11RangeRecordINS1_10SmallTypesEEEE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i

_ZL14_hb_cmp_methodIjKN2OT6Layout6Common11RangeRecordINS1_10SmallTypesEEEJEEiPKvS8_DpT1_.exit.thread.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.bd = add nsw i32 %i.ar, -1
  br label %bb.k

bb.j:                                             ; preds = %_ZL14_hb_cmp_methodIjKN2OT6Layout6Common11RangeRecordINS1_10SmallTypesEEEJEEiPKvS8_DpT1_.exit.i.i.i.i.i.i.i.i
  %i.be = add nuw nsw i32 %i.ar, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZL14_hb_cmp_methodIjKN2OT6Layout6Common11RangeRecordINS1_10SmallTypesEEEJEEiPKvS8_DpT1_.exit.thread.i.i.i.i.i.i.i.i
  %.223.i.i.i.i.i.i.i.i = phi i32 [ %i.be, %bb.j ], [ %.0212.i.i.i.i.i.i.i.i, %_ZL14_hb_cmp_methodIjKN2OT6Layout6Common11RangeRecordINS1_10SmallTypesEEEJEEiPKvS8_DpT1_.exit.thread.i.i.i.i.i.i.i.i ] ; 2 uses
  %.2.i.i.i.i.i.i.i.i = phi i32 [ %.0203.i.i.i.i.i.i.i.i, %bb.j ], [ %i.bd, %_ZL14_hb_cmp_methodIjKN2OT6Layout6Common11RangeRecordINS1_10SmallTypesEEEJEEiPKvS8_DpT1_.exit.thread.i.i.i.i.i.i.i.i ] ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i = icmp sgt i32 %.223.i.i.i.i.i.i.i.i, %.2.i.i.i.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i.i.i.i, label %_ZNK2OT17ClassDefFormat2_4INS_6Layout10SmallTypesEE9get_classEj.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !4

_ZNK17hb_sorted_array_tIKN2OT6Layout6Common11RangeRecordINS1_10SmallTypesEEEE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i: ; preds = %_ZL14_hb_cmp_methodIjKN2OT6Layout6Common11RangeRecordINS1_10SmallTypesEEEJEEiPKvS8_DpT1_.exit.i.i.i.i.i.i.i.i
  %i.bf = getelementptr inbounds nuw [6 x i8], ptr %i.am, i64 %i.as
  br label %_ZNK2OT17ClassDefFormat2_4INS_6Layout10SmallTypesEE9get_classEj.exit.i.i

_ZNK2OT17ClassDefFormat2_4INS_6Layout10SmallTypesEE9get_classEj.exit.i.i: ; preds = %bb.k, %_ZNK17hb_sorted_array_tIKN2OT6Layout6Common11RangeRecordINS1_10SmallTypesEEEE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i, %bb.i
  %i.bg = phi ptr [ %i.bf, %_ZNK17hb_sorted_array_tIKN2OT6Layout6Common11RangeRecordINS1_10SmallTypesEEEE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i ], [ @_hb_Null_OT_RangeRecord, %bb.i ], [ @_hb_Null_OT_RangeRecord, %bb.k ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.bi = load i16, ptr %i.bh, align 1, !tbaa !283
  %i.bj = tail call noundef i16 @llvm.bswap.i16(i16 %i.bi)
  br label %_ZNK2OT4GDEF15get_glyph_classEj.exit

_ZNK2OT4GDEF15get_glyph_classEj.exit:             ; preds = %_ZNK2OT4GDEF19get_glyph_class_defEv.exit.i, %_ZNK2OT17ClassDefFormat1_3INS_6Layout10SmallTypesEE9get_classEj.exit.i.i, %_ZNK2OT17ClassDefFormat2_4INS_6Layout10SmallTypesEE9get_classEj.exit.i.i
  %.0.shrunk.i.i = phi i16 [ %i.bj, %_ZNK2OT17ClassDefFormat2_4INS_6Layout10SmallTypesEE9get_classEj.exit.i.i ], [ %i.ak, %_ZNK2OT17ClassDefFormat1_3INS_6Layout10SmallTypesEE9get_classEj.exit.i.i ], [ 0, %_ZNK2OT4GDEF19get_glyph_class_defEv.exit.i ]
  %.0.i1.i = zext i16 %.0.shrunk.i.i to i32
  ret i32 %.0.i1.i
}

; Function Attrs: mustprogress nounwind uwtable
define void @hb_ot_layout_get_glyphs_in_class(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = load atomic ptr, ptr %i.a acquire, align 8 ; 2 uses
  %.not14.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not14.i.i.i, label %.lr.ph.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT18GDEF_accelerator_tE21hb_face_lazy_loader_tIS1_Lj25EE9hb_face_tLj25ES1_EptEv.exit, !prof !265

.lr.ph.i.i.i:                                     ; preds = %bb.a, %bb.e
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !266
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT18GDEF_accelerator_tE21hb_face_lazy_loader_tIS1_Lj25EE9hb_face_tLj25ES1_EptEv.exit, label %bb.b, !prof !267

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.e = tail call noundef ptr @_ZNK17hb_data_wrapper_tI9hb_face_tLj25EE11call_createIN2OT18GDEF_accelerator_tE21hb_face_lazy_loader_tIS4_Lj25EEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not10.i.i.i, label %bb.c, label %bb.d, !prof !267

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.07.i.i.i = phi ptr [ @_hb_NullPool, %bb.c ], [ %i.e, %bb.b ] ; 3 uses
  %i.f = cmpxchg weak ptr %i.a, ptr null, ptr %.07.i.i.i acq_rel monotonic, align 8
  %i.g = extractvalue { ptr, i1 } %i.f, 1
  br i1 %i.g, label %_ZNK16hb_lazy_loader_tIN2OT18GDEF_accelerator_tE21hb_face_lazy_loader_tIS1_Lj25EE9hb_face_tLj25ES1_EptEv.exit, label %bb.e, !prof !268

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN16hb_lazy_loader_tIN2OT18GDEF_accelerator_tE21hb_face_lazy_loader_tIS1_Lj25EE9hb_face_tLj25ES1_E10do_destroyEPS1_(ptr noundef nonnull %.07.i.i.i)
  %i.h = load atomic ptr, ptr %i.a acquire, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT18GDEF_accelerator_tE21hb_face_lazy_loader_tIS1_Lj25EE9hb_face_tLj25ES1_EptEv.exit, !prof !269

_ZNK16hb_lazy_loader_tIN2OT18GDEF_accelerator_tE21hb_face_lazy_loader_tIS1_Lj25EE9hb_face_tLj25ES1_EptEv.exit: ; preds = %.lr.ph.i.i.i, %bb.d, %bb.e, %bb.a
  %.19.ph.i.i.i = phi ptr [ %i.c, %bb.a ], [ @_hb_NullPool, %.lr.ph.i.i.i ], [ %i.h, %bb.e ], [ %.07.i.i.i, %bb.d ]
  %i.i = load ptr, ptr %.19.ph.i.i.i, align 8, !tbaa !272 ; 2 uses
  %.not.i.i.i.i2 = icmp eq ptr %i.i, null
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i2, ptr @_hb_NullPool, ptr %i.i ; 2 uses
end_hunk_9
begin_hunk_10_@_ZNK2OT4GDEF17get_attach_pointsEjjPjS1_:bb.a
  %i.ab = icmp ne ptr %4, null
  %or.cond.i = and i1 %i.aa, %i.ab
  %.pre41.i = load i16, ptr %.0.i.i21.i, align 1, !tbaa !283 ; 3 uses
  br i1 %or.cond.i, label %_ZNK10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEE9sub_arrayEjPj.exit.i, label %_ZorI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEE9hb_sink_tIS0_IjEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSA_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISA_Efp_EEEOSA_OSG_.exit.i

_ZNK10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEE9sub_arrayEjPj.exit.i: ; preds = %_ZNK2OT7ArrayOfINS_8OffsetToINS_11AttachPointENS_7NumTypeILb1EtLj2EEEvLb1EEES4_EixEi.exit.i
  %i.ac = tail call noundef i16 @llvm.bswap.i16(i16 %.pre41.i)
  %.sroa.5.8.extract.trunc.i = zext i16 %i.ac to i32
  %storemerge.i.i = tail call i32 @llvm.usub.sat.i32(i32 %.sroa.5.8.extract.trunc.i, i32 %2)
  %i.ad = load i32, ptr %3, align 4, !tbaa !324
  %.sroa.speculated.i.i = tail call i32 @llvm.umin.i32(i32 %storemerge.i.i, i32 %i.ad) ; 8 uses
  store i32 %.sroa.speculated.i.i, ptr %3, align 4, !tbaa !324
  %.not5.i.i.i = icmp eq i32 %.sroa.speculated.i.i, 0
  br i1 %.not5.i.i.i, label %_ZorI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEE9hb_sink_tIS0_IjEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSA_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISA_Efp_EEEOSA_OSG_.exit.i, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %_ZNK10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEE9sub_arrayEjPj.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i.i21.i, i64 2
  %i.af = zext i32 %2 to i64
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %i.af ; 3 uses
  %xtraiter = and i32 %.sroa.speculated.i.i, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.preheader.i
  %.sroa.0.0.copyload.i.i.i.prol = load i16, ptr %i.ag, align 1, !tbaa !280
  %i.ah = tail call noundef i16 @llvm.bswap.i16(i16 %.sroa.0.0.copyload.i.i.i.prol)
  %i.ai = zext i16 %i.ah to i32
  store i32 %i.ai, ptr %4, align 4, !tbaa !324
  %.sroa.6.1.i.prol = add nsw i32 %.sroa.speculated.i.i, -1
  %.sroa.030.1.i.prol = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.aj = add nsw i32 %.sroa.speculated.i.i, -1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  br label %.lr.ph.i.i.i.prol.loopexit

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.preheader.i
  %.sroa.6.0.i.unr = phi i32 [ %.sroa.speculated.i.i, %.lr.ph.i.i.preheader.i ], [ %.sroa.6.1.i.prol, %.lr.ph.i.i.i.prol ]
  %.sroa.030.0.i.unr = phi ptr [ %4, %.lr.ph.i.i.preheader.i ], [ %.sroa.030.1.i.prol, %.lr.ph.i.i.i.prol ]
  %.sroa.0.07.i.i.i.unr = phi ptr [ %i.ag, %.lr.ph.i.i.preheader.i ], [ %i.ak, %.lr.ph.i.i.i.prol ]
  %.sroa.4.06.i.i.i.unr = phi i32 [ %.sroa.speculated.i.i, %.lr.ph.i.i.preheader.i ], [ %i.aj, %.lr.ph.i.i.i.prol ]
  %i.al = icmp eq i32 %.sroa.speculated.i.i, 1
  br i1 %i.al, label %_ZorI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEE9hb_sink_tIS0_IjEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSA_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISA_Efp_EEEOSA_OSG_.exit.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.1
  %.sroa.6.0.i = phi i32 [ %.sroa.6.1.i.1, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.1 ], [ %.sroa.6.0.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 3 uses
  %.sroa.030.0.i = phi ptr [ %.sroa.030.1.i.1, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.1 ], [ %.sroa.030.0.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.0.07.i.i.i = phi ptr [ %i.as, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.1 ], [ %.sroa.0.07.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 3 uses
  %.sroa.4.06.i.i.i = phi i32 [ %i.ar, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.1 ], [ %.sroa.4.06.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %.sroa.0.07.i.i.i, align 1, !tbaa !280
  %i.am = tail call noundef i16 @llvm.bswap.i16(i16 %.sroa.0.0.copyload.i.i.i)
  %i.an = zext i16 %i.am to i32
  %.not.i.i.i.i.i.i = icmp eq i32 %.sroa.6.0.i, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i, !prof !267

bb.g:                                             ; preds = %.lr.ph.i.i.i
  store i32 0, ptr @_hb_CrapPool, align 16
  br label %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i

_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i: ; preds = %bb.g, %.lr.ph.i.i.i
  %.sroa.030.1.idx.i = phi i64 [ 0, %bb.g ], [ 4, %.lr.ph.i.i.i ]
  %.0.i.i.i.i.i.i = phi ptr [ @_hb_CrapPool, %bb.g ], [ %.sroa.030.0.i, %.lr.ph.i.i.i ]
  store i32 %i.an, ptr %.0.i.i.i.i.i.i, align 4, !tbaa !324
  %.sroa.030.1.i = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i, i64 %.sroa.030.1.idx.i ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i, i64 2
  %.sroa.0.0.copyload.i.i.i.1 = load i16, ptr %i.ao, align 1, !tbaa !280
  %i.ap = tail call noundef i16 @llvm.bswap.i16(i16 %.sroa.0.0.copyload.i.i.i.1)
  %i.aq = zext i16 %i.ap to i32
  %.not.i.i.i.i.i.i.1 = icmp ult i32 %.sroa.6.0.i, 2
  br i1 %.not.i.i.i.i.i.i.1, label %bb.h, label %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.1, !prof !267

bb.h:                                             ; preds = %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i
  store i32 0, ptr @_hb_CrapPool, align 16
  br label %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.1

_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.1: ; preds = %bb.h, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i
  %.sroa.030.1.idx.i.1 = phi i64 [ 0, %bb.h ], [ 4, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i ]
  %.0.i.i.i.i.i.i.1 = phi ptr [ @_hb_CrapPool, %bb.h ], [ %.sroa.030.1.i, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i ]
  store i32 %i.aq, ptr %.0.i.i.i.i.i.i.1, align 4, !tbaa !324
  %.sroa.6.1.i.1 = tail call i32 @llvm.usub.sat.i32(i32 %.sroa.6.0.i, i32 2)
  %.sroa.030.1.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.030.1.i, i64 %.sroa.030.1.idx.i.1
  %i.ar = add nsw i32 %.sroa.4.06.i.i.i, -2       ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i, i64 4
  %.not.i.i.i.1 = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i.i.1, label %_ZorI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEE9hb_sink_tIS0_IjEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSA_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISA_Efp_EEEOSA_OSG_.exit.loopexit.i, label %.lr.ph.i.i.i, !llvm.loop !2643

_ZorI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEE9hb_sink_tIS0_IjEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSA_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISA_Efp_EEEOSA_OSG_.exit.loopexit.i: ; preds = %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.1, %.lr.ph.i.i.i.prol.loopexit
  %.pre.i = load i16, ptr %.0.i.i21.i, align 1, !tbaa !283
  br label %_ZorI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEE9hb_sink_tIS0_IjEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSA_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISA_Efp_EEEOSA_OSG_.exit.i

_ZorI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEE9hb_sink_tIS0_IjEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSA_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISA_Efp_EEEOSA_OSG_.exit.i: ; preds = %_ZorI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEE9hb_sink_tIS0_IjEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSA_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISA_Efp_EEEOSA_OSG_.exit.loopexit.i, %_ZNK10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEE9sub_arrayEjPj.exit.i, %_ZNK2OT7ArrayOfINS_8OffsetToINS_11AttachPointENS_7NumTypeILb1EtLj2EEEvLb1EEES4_EixEi.exit.i
  %i.at = phi i16 [ %.pre.i, %_ZorI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEE9hb_sink_tIS0_IjEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSA_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISA_Efp_EEEOSA_OSG_.exit.loopexit.i ], [ %.pre41.i, %_ZNK10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEE9sub_arrayEjPj.exit.i ], [ %.pre41.i, %_ZNK2OT7ArrayOfINS_8OffsetToINS_11AttachPointENS_7NumTypeILb1EtLj2EEEvLb1EEES4_EixEi.exit.i ]
  %i.au = tail call noundef i16 @llvm.bswap.i16(i16 %i.at)
  %i.av = zext i16 %i.au to i32
  br label %_ZNK2OT10AttachList17get_attach_pointsEjjPjS1_.exit

_ZNK2OT10AttachList17get_attach_pointsEjjPjS1_.exit: ; preds = %bb.c, %bb.d, %_ZorI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEE9hb_sink_tIS0_IjEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSA_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISA_Efp_EEEOSA_OSG_.exit.i
  %.0.i5 = phi i32 [ %i.av, %_ZorI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEE9hb_sink_tIS0_IjEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSA_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISA_Efp_EEEOSA_OSG_.exit.i ], [ 0, %bb.d ], [ 0, %bb.c ]
  ret i32 %.0.i5
}

; Function Attrs: mustprogress nounwind uwtable
define noundef i32 @hb_ot_layout_get_ligature_carets(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !264  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 304 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.e = load atomic ptr, ptr %i.c acquire, align 8 ; 2 uses
  %.not14.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not14.i.i.i, label %.lr.ph.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT18GDEF_accelerator_tE21hb_face_lazy_loader_tIS1_Lj25EE9hb_face_tLj25ES1_EptEv.exit, !prof !265

.lr.ph.i.i.i:                                     ; preds = %bb.a, %bb.e
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !266
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT18GDEF_accelerator_tE21hb_face_lazy_loader_tIS1_Lj25EE9hb_face_tLj25ES1_EptEv.exit, label %bb.b, !prof !267

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.g = tail call noundef ptr @_ZNK17hb_data_wrapper_tI9hb_face_tLj25EE11call_createIN2OT18GDEF_accelerator_tE21hb_face_lazy_loader_tIS4_Lj25EEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) %i.c) ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not10.i.i.i, label %bb.c, label %bb.d, !prof !267

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.07.i.i.i = phi ptr [ @_hb_NullPool, %bb.c ], [ %i.g, %bb.b ] ; 3 uses
  %i.h = cmpxchg weak ptr %i.c, ptr null, ptr %.07.i.i.i acq_rel monotonic, align 8
  %i.i = extractvalue { ptr, i1 } %i.h, 1
  br i1 %i.i, label %_ZNK16hb_lazy_loader_tIN2OT18GDEF_accelerator_tE21hb_face_lazy_loader_tIS1_Lj25EE9hb_face_tLj25ES1_EptEv.exit, label %bb.e, !prof !268

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN16hb_lazy_loader_tIN2OT18GDEF_accelerator_tE21hb_face_lazy_loader_tIS1_Lj25EE9hb_face_tLj25ES1_E10do_destroyEPS1_(ptr noundef nonnull %.07.i.i.i)
  %i.j = load atomic ptr, ptr %i.c acquire, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT18GDEF_accelerator_tE21hb_face_lazy_loader_tIS1_Lj25EE9hb_face_tLj25ES1_EptEv.exit, !prof !269

_ZNK16hb_lazy_loader_tIN2OT18GDEF_accelerator_tE21hb_face_lazy_loader_tIS1_Lj25EE9hb_face_tLj25ES1_EptEv.exit: ; preds = %.lr.ph.i.i.i, %bb.d, %bb.e, %bb.a
  %.19.ph.i.i.i = phi ptr [ %i.e, %bb.a ], [ @_hb_NullPool, %.lr.ph.i.i.i ], [ %i.j, %bb.e ], [ %.07.i.i.i, %bb.d ]
  %i.k = load ptr, ptr %.19.ph.i.i.i, align 8, !tbaa !272 ; 2 uses
  %.not.i.i.i.i6 = icmp eq ptr %i.k, null
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i6, ptr @_hb_NullPool, ptr %i.k ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !275
  %i.n = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i, i64 24
  %i.o = load i32, ptr %i.n, align 8, !tbaa !276
  %i.p = icmp ult i32 %i.o, 4
  %spec.select.i.i1.i.i = select i1 %i.p, ptr @_hb_NullPool, ptr %i.m ; 7 uses
  %i.q = load i16, ptr %spec.select.i.i1.i.i, align 1, !tbaa !283
  %cond.i.i = icmp eq i16 %i.q, 256
  br i1 %cond.i.i, label %_ZNK2OT4GDEF18get_lig_caret_listEv.exit.i, label %_ZNK2OT4GDEF14get_lig_caretsEP9hb_font_t14hb_direction_tjjPjPi.exit

_ZNK2OT4GDEF18get_lig_caret_listEv.exit.i:        ; preds = %_ZNK16hb_lazy_loader_tIN2OT18GDEF_accelerator_tE21hb_face_lazy_loader_tIS1_Lj25EE9hb_face_tLj25ES1_EptEv.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.r = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i, i64 8
  %i.s = load i16, ptr %i.r, align 1, !tbaa !283  ; 2 uses
  %i.t = icmp eq i16 %i.s, 0
  %i.u = tail call i16 @llvm.bswap.i16(i16 %i.s)
  %i.v = zext i16 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i, i64 %i.v
  %.0.i.i.i.i = select i1 %i.t, ptr @_hb_NullPool, ptr %i.w, !prof !267 ; 3 uses
  %.pr.i = load i16, ptr %spec.select.i.i1.i.i, align 1, !tbaa !283
  %cond.i6.i = icmp eq i16 %.pr.i, 256
  br i1 %cond.i6.i, label %bb.f, label %_ZNK2OT4GDEF14get_lig_caretsEP9hb_font_t14hb_direction_tjjPjPi.exit

bb.f:                                             ; preds = %_ZNK2OT4GDEF18get_lig_caret_listEv.exit.i
  %i.x = load i32, ptr %spec.select.i.i1.i.i, align 1
  %i.y = tail call noundef i32 @llvm.bswap.i32(i32 %i.x)
  %i.z = icmp ugt i32 %i.y, 65538
  br i1 %i.z, label %bb.g, label %_ZNK2OT4GDEF14get_lig_caretsEP9hb_font_t14hb_direction_tjjPjPi.exit

bb.g:                                             ; preds = %bb.f
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.aa = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i, i64 14
  %i.ab = load i32, ptr %i.aa, align 1, !tbaa !278 ; 2 uses
  %i.ac = icmp eq i32 %i.ab, 0
  %i.ad = tail call i32 @llvm.bswap.i32(i32 %i.ab)
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i, i64 %i.ae
  %.0.i.i.i8.i = select i1 %i.ac, ptr @_hb_NullPool, ptr %i.af, !prof !267
  br label %_ZNK2OT4GDEF14get_lig_caretsEP9hb_font_t14hb_direction_tjjPjPi.exit

_ZNK2OT4GDEF14get_lig_caretsEP9hb_font_t14hb_direction_tjjPjPi.exit: ; preds = %_ZNK16hb_lazy_loader_tIN2OT18GDEF_accelerator_tE21hb_face_lazy_loader_tIS1_Lj25EE9hb_face_tLj25ES1_EptEv.exit, %_ZNK2OT4GDEF18get_lig_caret_listEv.exit.i, %bb.f, %bb.g
  %.0.i11.i = phi ptr [ %.0.i.i.i.i, %bb.f ], [ %.0.i.i.i.i, %bb.g ], [ %.0.i.i.i.i, %_ZNK2OT4GDEF18get_lig_caret_listEv.exit.i ], [ @_hb_NullPool, %_ZNK16hb_lazy_loader_tIN2OT18GDEF_accelerator_tE21hb_face_lazy_loader_tIS1_Lj25EE9hb_face_tLj25ES1_EptEv.exit ]
  %.0.i7.i = phi ptr [ @_hb_NullPool, %bb.f ], [ %.0.i.i.i8.i, %bb.g ], [ @_hb_NullPool, %_ZNK2OT4GDEF18get_lig_caret_listEv.exit.i ], [ @_hb_NullPool, %_ZNK16hb_lazy_loader_tIN2OT18GDEF_accelerator_tE21hb_face_lazy_loader_tIS1_Lj25EE9hb_face_tLj25ES1_EptEv.exit ]
  %i.ag = tail call noundef i32 @_ZNK2OT12LigCaretList14get_lig_caretsEP9hb_font_t14hb_direction_tjRKNS_18ItemVariationStoreEjPjPi(ptr noundef nonnull align 1 dereferenceable(6) %.0.i11.i, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 1 dereferenceable(12) %.0.i7.i, i32 noundef %3, ptr noundef %4, ptr noundef %5)
  ret i32 %i.ag
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZNK2OT6Layout4GSUB14is_blocklistedEP9hb_blob_tP9hb_face_t(ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(14) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #4 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZNK2OT6Layout4GPOS14is_blocklistedEP9hb_blob_tP9hb_face_t(ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(14) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #4 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define noundef range(i32 0, 65536) i32 @hb_ot_layout_table_get_script_tags(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc noundef nonnull align 1 dereferenceable(14) ptr @_ZL18get_gsubgpos_tableP9hb_face_tj(ptr noundef %0, i32 noundef %1) ; 3 uses
  %i.b = load i16, ptr %i.a, align 1, !tbaa !283
  %cond.i.i = icmp eq i16 %i.b, 256
  br i1 %cond.i.i, label %bb.b, label %_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.d = load i16, ptr %i.c, align 1, !tbaa !283  ; 2 uses
  %i.e = icmp eq i16 %i.d, 0
  %i.f = tail call i16 @llvm.bswap.i16(i16 %i.d)
  %i.g = zext i16 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.g
  %.0.i.i.i.i = select i1 %i.e, ptr @_hb_NullPool, ptr %i.h, !prof !267
  br label %_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i

_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i:       ; preds = %bb.b, %bb.a
  %.0.i.i = phi ptr [ %.0.i.i.i.i, %bb.b ], [ @_hb_NullPool, %bb.a ] ; 3 uses
  %i.i = icmp ne ptr %3, null
  %i.j = icmp ne ptr %4, null
  %or.cond.i.i = and i1 %i.i, %i.j
  %.pre36.i.i = load i16, ptr %.0.i.i, align 1, !tbaa !283 ; 3 uses
  br i1 %or.cond.i.i, label %_ZNK17hb_sorted_array_tIKN2OT6RecordINS0_6ScriptEEEE9sub_arrayEjPj.exit.i.i, label %_ZNK2OT8GSUBGPOS15get_script_tagsEjPjS1_.exit

_ZNK17hb_sorted_array_tIKN2OT6RecordINS0_6ScriptEEEE9sub_arrayEjPj.exit.i.i: ; preds = %_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i
  %i.k = tail call noundef i16 @llvm.bswap.i16(i16 %.pre36.i.i)
  %.sroa.5.8.extract.trunc.i.i = zext i16 %i.k to i32
  %storemerge.i.i.i.i = tail call i32 @llvm.usub.sat.i32(i32 %.sroa.5.8.extract.trunc.i.i, i32 %2)
  %i.l = load i32, ptr %3, align 4, !tbaa !324
  %.sroa.speculated.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %storemerge.i.i.i.i, i32 %i.l) ; 8 uses
  store i32 %.sroa.speculated.i.i.i.i, ptr %3, align 4, !tbaa !324
  %.not4.i.i.i.i = icmp eq i32 %.sroa.speculated.i.i.i.i, 0
  br i1 %.not4.i.i.i.i, label %_ZNK2OT8GSUBGPOS15get_script_tagsEjPjS1_.exit, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %_ZNK17hb_sorted_array_tIKN2OT6RecordINS0_6ScriptEEEE9sub_arrayEjPj.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 2
  %i.n = zext i32 %2 to i64
  %i.o = getelementptr inbounds nuw [6 x i8], ptr %i.m, i64 %i.n ; 3 uses
  %xtraiter = and i32 %.sroa.speculated.i.i.i.i, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.preheader.i.i
  %.sroa.0.0.copyload.i.i21.i.i.prol = load i32, ptr %i.o, align 1
  %i.p = tail call noundef i32 @llvm.bswap.i32(i32 %.sroa.0.0.copyload.i.i21.i.i.prol)
  store i32 %i.p, ptr %4, align 4, !tbaa !324
  %.sroa.6.1.i.i.prol = add nsw i32 %.sroa.speculated.i.i.i.i, -1
  %.sroa.022.1.i.i.prol = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.q = add nsw i32 %.sroa.speculated.i.i.i.i, -1
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 6
  br label %.lr.ph.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.preheader.i.i
  %.sroa.6.0.i.i.unr = phi i32 [ %.sroa.speculated.i.i.i.i, %.lr.ph.i.i.preheader.i.i ], [ %.sroa.6.1.i.i.prol, %.lr.ph.i.i.i.i.prol ]
  %.sroa.022.0.i.i.unr = phi ptr [ %4, %.lr.ph.i.i.preheader.i.i ], [ %.sroa.022.1.i.i.prol, %.lr.ph.i.i.i.i.prol ]
  %.unr = phi i32 [ %.sroa.speculated.i.i.i.i, %.lr.ph.i.i.preheader.i.i ], [ %i.q, %.lr.ph.i.i.i.i.prol ]
  %.unr7 = phi ptr [ %i.o, %.lr.ph.i.i.preheader.i.i ], [ %i.r, %.lr.ph.i.i.i.i.prol ]
  %i.s = icmp eq i32 %.sroa.speculated.i.i.i.i, 1
  br i1 %i.s, label %_ZorI13hb_map_iter_tI17hb_sorted_array_tIKN2OT6RecordINS2_6ScriptEEEEMS5_NS2_3TagEL24hb_function_sortedness_t0ELPv0EE9hb_sink_tI10hb_array_tIjEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSI_6item_tEEE5valueEvE4typeELSB_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISI_Efp_EEEOSI_OSN_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.1
  %.sroa.6.0.i.i = phi i32 [ %.sroa.6.1.i.i.1, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.1 ], [ %.sroa.6.0.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 3 uses
  %.sroa.022.0.i.i = phi ptr [ %.sroa.022.1.i.i.1, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.1 ], [ %.sroa.022.0.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.t = phi i32 [ %i.y, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.1 ], [ %.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %i.u = phi ptr [ %i.z, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.1 ], [ %.unr7, %.lr.ph.i.i.i.i.prol.loopexit ] ; 3 uses
  %.sroa.0.0.copyload.i.i21.i.i = load i32, ptr %i.u, align 1
  %i.v = tail call noundef i32 @llvm.bswap.i32(i32 %.sroa.0.0.copyload.i.i21.i.i)
  %.not.i.i.i.i.i.i.i = icmp eq i32 %.sroa.6.0.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.c, label %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i, !prof !267

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  store i32 0, ptr @_hb_CrapPool, align 16
  br label %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i

_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.sroa.022.1.idx.i.i = phi i64 [ 0, %bb.c ], [ 4, %.lr.ph.i.i.i.i ]
  %.0.i.i.i.i.i.i.i = phi ptr [ @_hb_CrapPool, %bb.c ], [ %.sroa.022.0.i.i, %.lr.ph.i.i.i.i ]
  store i32 %i.v, ptr %.0.i.i.i.i.i.i.i, align 4, !tbaa !324
  %.sroa.022.1.i.i = getelementptr inbounds nuw i8, ptr %.sroa.022.0.i.i, i64 %.sroa.022.1.idx.i.i ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 6
  %.sroa.0.0.copyload.i.i21.i.i.1 = load i32, ptr %i.w, align 1
  %i.x = tail call noundef i32 @llvm.bswap.i32(i32 %.sroa.0.0.copyload.i.i21.i.i.1)
  %.not.i.i.i.i.i.i.i.1 = icmp ult i32 %.sroa.6.0.i.i, 2
  br i1 %.not.i.i.i.i.i.i.i.1, label %bb.d, label %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.1, !prof !267

bb.d:                                             ; preds = %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i
  store i32 0, ptr @_hb_CrapPool, align 16
  br label %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.1

_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.1: ; preds = %bb.d, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i
  %.sroa.022.1.idx.i.i.1 = phi i64 [ 0, %bb.d ], [ 4, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i ]
  %.0.i.i.i.i.i.i.i.1 = phi ptr [ @_hb_CrapPool, %bb.d ], [ %.sroa.022.1.i.i, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i ]
  store i32 %i.x, ptr %.0.i.i.i.i.i.i.i.1, align 4, !tbaa !324
  %.sroa.6.1.i.i.1 = tail call i32 @llvm.usub.sat.i32(i32 %.sroa.6.0.i.i, i32 2)
  %.sroa.022.1.i.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.022.1.i.i, i64 %.sroa.022.1.idx.i.i.1
  %i.y = add nsw i32 %i.t, -2                     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %.not.i.i.i.i.1 = icmp eq i32 %i.y, 0
  br i1 %.not.i.i.i.i.1, label %_ZorI13hb_map_iter_tI17hb_sorted_array_tIKN2OT6RecordINS2_6ScriptEEEEMS5_NS2_3TagEL24hb_function_sortedness_t0ELPv0EE9hb_sink_tI10hb_array_tIjEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSI_6item_tEEE5valueEvE4typeELSB_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISI_Efp_EEEOSI_OSN_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2644

_ZorI13hb_map_iter_tI17hb_sorted_array_tIKN2OT6RecordINS2_6ScriptEEEEMS5_NS2_3TagEL24hb_function_sortedness_t0ELPv0EE9hb_sink_tI10hb_array_tIjEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSI_6item_tEEE5valueEvE4typeELSB_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISI_Efp_EEEOSI_OSN_.exit.loopexit.i.i: ; preds = %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.1, %.lr.ph.i.i.i.i.prol.loopexit
  %.pre.i.i = load i16, ptr %.0.i.i, align 1, !tbaa !283
  br label %_ZNK2OT8GSUBGPOS15get_script_tagsEjPjS1_.exit

_ZNK2OT8GSUBGPOS15get_script_tagsEjPjS1_.exit:    ; preds = %_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i, %_ZNK17hb_sorted_array_tIKN2OT6RecordINS0_6ScriptEEEE9sub_arrayEjPj.exit.i.i, %_ZorI13hb_map_iter_tI17hb_sorted_array_tIKN2OT6RecordINS2_6ScriptEEEEMS5_NS2_3TagEL24hb_function_sortedness_t0ELPv0EE9hb_sink_tI10hb_array_tIjEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSI_6item_tEEE5valueEvE4typeELSB_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISI_Efp_EEEOSI_OSN_.exit.loopexit.i.i
  %i.aa = phi i16 [ %.pre.i.i, %_ZorI13hb_map_iter_tI17hb_sorted_array_tIKN2OT6RecordINS2_6ScriptEEEEMS5_NS2_3TagEL24hb_function_sortedness_t0ELPv0EE9hb_sink_tI10hb_array_tIjEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSI_6item_tEEE5valueEvE4typeELSB_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISI_Efp_EEEOSI_OSN_.exit.loopexit.i.i ], [ %.pre36.i.i, %_ZNK17hb_sorted_array_tIKN2OT6RecordINS0_6ScriptEEEE9sub_arrayEjPj.exit.i.i ], [ %.pre36.i.i, %_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i ]
  %i.ab = tail call noundef i16 @llvm.bswap.i16(i16 %i.aa)
  %i.ac = zext i16 %i.ab to i32
  ret i32 %i.ac
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef nonnull align 1 dereferenceable(14) ptr @_ZL18get_gsubgpos_tableP9hb_face_tj(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  switch i32 %1, label %bb.l [
    i32 1196643650, label %bb.b
    i32 1196445523, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = load atomic ptr, ptr %i.a acquire, align 8 ; 2 uses
  %.not14.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not14.i.i.i, label %.lr.ph.i.i.i, label %.sink.split, !prof !265

.lr.ph.i.i.i:                                     ; preds = %bb.b, %bb.f
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !266
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %.sink.split, label %bb.c, !prof !267

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.e = tail call noundef ptr @_ZNK17hb_data_wrapper_tI9hb_face_tLj26EE11call_createIN2OT18GSUB_accelerator_tE21hb_face_lazy_loader_tIS4_Lj26EEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not10.i.i.i, label %bb.d, label %bb.e, !prof !267

bb.d:                                             ; preds = %bb.c
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.07.i.i.i = phi ptr [ @_hb_NullPool, %bb.d ], [ %i.e, %bb.c ] ; 3 uses
  %i.f = cmpxchg weak ptr %i.a, ptr null, ptr %.07.i.i.i acq_rel monotonic, align 8
  %i.g = extractvalue { ptr, i1 } %i.f, 1
  br i1 %i.g, label %.sink.split, label %bb.f, !prof !268

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN16hb_lazy_loader_tIN2OT18GSUB_accelerator_tE21hb_face_lazy_loader_tIS1_Lj26EE9hb_face_tLj26ES1_E10do_destroyEPS1_(ptr noundef nonnull %.07.i.i.i)
  %i.h = load atomic ptr, ptr %i.a acquire, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %.sink.split, !prof !269

bb.g:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.k = load atomic ptr, ptr %i.i acquire, align 8 ; 2 uses
  %.not14.i.i.i4 = icmp eq ptr %i.k, null
  br i1 %.not14.i.i.i4, label %.lr.ph.i.i.i6, label %.sink.split, !prof !265

.lr.ph.i.i.i6:                                    ; preds = %bb.g, %bb.k
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !266
  %.not.i.i.i.i7 = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i7, label %.sink.split, label %bb.h, !prof !267

bb.h:                                             ; preds = %.lr.ph.i.i.i6
  %i.m = tail call noundef ptr @_ZNK17hb_data_wrapper_tI9hb_face_tLj27EE11call_createIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS4_Lj27EEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) %i.i) ; 2 uses
  %.not10.i.i.i8 = icmp eq ptr %i.m, null
  br i1 %.not10.i.i.i8, label %bb.i, label %bb.j, !prof !267

bb.i:                                             ; preds = %bb.h
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.07.i.i.i9 = phi ptr [ @_hb_NullPool, %bb.i ], [ %i.m, %bb.h ] ; 3 uses
  %i.n = cmpxchg weak ptr %i.i, ptr null, ptr %.07.i.i.i9 acq_rel monotonic, align 8
  %i.o = extractvalue { ptr, i1 } %i.n, 1
  br i1 %i.o, label %.sink.split, label %bb.k, !prof !268

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_E10do_destroyEPS1_(ptr noundef nonnull %.07.i.i.i9)
  %i.p = load atomic ptr, ptr %i.i acquire, align 8 ; 2 uses
  %.not.i.i.i10 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i10, label %.lr.ph.i.i.i6, label %.sink.split, !prof !269

.sink.split:                                      ; preds = %bb.k, %bb.j, %.lr.ph.i.i.i6, %bb.f, %bb.e, %.lr.ph.i.i.i, %bb.g, %bb.b
  %.19.ph.i.i.i5.sink = phi ptr [ %.07.i.i.i, %bb.e ], [ %i.c, %bb.b ], [ %i.k, %bb.g ], [ @_hb_NullPool, %.lr.ph.i.i.i ], [ %i.h, %bb.f ], [ @_hb_NullPool, %.lr.ph.i.i.i6 ], [ %i.p, %bb.k ], [ %.07.i.i.i9, %bb.j ]
  %i.q = load ptr, ptr %.19.ph.i.i.i5.sink, align 8, !tbaa !272 ; 2 uses
  %.not.i.i.i.i11 = icmp eq ptr %i.q, null
  %spec.select.i.i.i.i12 = select i1 %.not.i.i.i.i11, ptr @_hb_NullPool, ptr %i.q ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i12, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !275
  %i.t = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i12, i64 24
  %i.u = load i32, ptr %i.t, align 8, !tbaa !276
  %i.v = icmp ult i32 %i.u, 4
  %spec.select.i.i1.i.i13 = select i1 %i.v, ptr @_hb_NullPool, ptr %i.s
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi ptr [ @_hb_NullPool, %bb.a ], [ %spec.select.i.i1.i.i13, %.sink.split ]
  ret ptr %.0
end_hunk_10
begin_hunk_11_@hb_ot_layout_table_select_script:bb.a
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %.223.i.i.i.i.i.i47 = phi i32 [ %i.au, %bb.l ], [ %.0212.i.i.i.i.i.i45, %bb.j ] ; 2 uses
  %.2.i.i.i.i.i.i48 = phi i32 [ %.0203.i.i.i.i.i.i44, %bb.l ], [ %i.at, %bb.j ] ; 2 uses
  %.not.not.i.i.i.i.i.i49 = icmp sgt i32 %.223.i.i.i.i.i.i47, %.2.i.i.i.i.i.i48
  br i1 %.not.not.i.i.i.i.i.i49, label %.loopexit.i.i.i.i50, label %.lr.ph.i.i.i.i.i.i43, !llvm.loop !94

_ZNK17hb_sorted_array_tIKN2OT6RecordINS0_6ScriptEEEE12bsearch_implIjJEEEbRKT_PjDpT0_.exit.i.i.i.i56: ; preds = %bb.k
  %.not10.i.i.i.i57 = icmp eq ptr %4, null
  br i1 %.not10.i.i.i.i57, label %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit59.thread, label %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit59.thread115

_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit59.thread115: ; preds = %_ZNK17hb_sorted_array_tIKN2OT6RecordINS0_6ScriptEEEE12bsearch_implIjJEEEbRKT_PjDpT0_.exit.i.i.i.i56
  store i32 %i.am, ptr %4, align 4, !tbaa !324
  br label %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit59.thread

.loopexit.i.i.i.i50:                              ; preds = %bb.m, %_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i38
  %.not.i.i.i.i51 = icmp eq ptr %4, null          ; 5 uses
  br i1 %.not.i.i.i.i51, label %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit59.thread113, label %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit59

_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit59:   ; preds = %.loopexit.i.i.i.i50
  store i32 65535, ptr %4, align 4, !tbaa !324
  br label %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit59.thread113

_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit59.thread: ; preds = %_ZNK17hb_sorted_array_tIKN2OT6RecordINS0_6ScriptEEEE12bsearch_implIjJEEEbRKT_PjDpT0_.exit.i.i.i.i56, %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit59.thread115
  %.not35 = icmp eq ptr %5, null
  br i1 %.not35, label %bb.y, label %.sink.split

_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit59.thread113: ; preds = %.loopexit.i.i.i.i50, %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit59
  %i.av = load i16, ptr %i.a, align 1, !tbaa !283
  %cond.i.i60 = icmp eq i16 %i.av, 256
  br i1 %cond.i.i60, label %bb.n, label %_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i61

bb.n:                                             ; preds = %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit59.thread113
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ax = load i16, ptr %i.aw, align 1, !tbaa !283 ; 2 uses
  %i.ay = icmp eq i16 %i.ax, 0
  %i.az = tail call i16 @llvm.bswap.i16(i16 %i.ax)
  %i.ba = zext i16 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ba
  %.0.i.i.i.i81 = select i1 %i.ay, ptr @_hb_NullPool, ptr %i.bb, !prof !267
  br label %_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i61

_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i61:     ; preds = %bb.n, %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit59.thread113
  %.0.i.i62 = phi ptr [ %.0.i.i.i.i81, %bb.n ], [ @_hb_NullPool, %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit59.thread113 ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i.i62, i64 2
  %i.bd = load i16, ptr %.0.i.i62, align 1, !tbaa !283 ; 2 uses
  %.not1.i.i.i.not.i.i.i63 = icmp eq i16 %i.bd, 0
  br i1 %.not1.i.i.i.not.i.i.i63, label %.loopexit.i.i.i.i73, label %.lr.ph.preheader.i.i.i.i.i.i64

.lr.ph.preheader.i.i.i.i.i.i64:                   ; preds = %_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i61
  %i.be = tail call noundef i16 @llvm.bswap.i16(i16 %i.bd)
  %.sroa.4.8.extract.trunc.i.i.i65 = zext i16 %i.be to i32
  %i.bf = add nsw i32 %.sroa.4.8.extract.trunc.i.i.i65, -1
  br label %.lr.ph.i.i.i.i.i.i66

.lr.ph.i.i.i.i.i.i66:                             ; preds = %bb.r, %.lr.ph.preheader.i.i.i.i.i.i64
  %.0203.i.i.i.i.i.i67 = phi i32 [ %.2.i.i.i.i.i.i71, %bb.r ], [ %i.bf, %.lr.ph.preheader.i.i.i.i.i.i64 ] ; 2 uses
  %.0212.i.i.i.i.i.i68 = phi i32 [ %.223.i.i.i.i.i.i70, %bb.r ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i64 ] ; 2 uses
  %i.bg = add i32 %.0212.i.i.i.i.i.i68, %.0203.i.i.i.i.i.i67
  %i.bh = lshr i32 %i.bg, 1                       ; 4 uses
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = mul nuw nsw i64 %i.bi, 6
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 1, !tbaa !278 ; 2 uses
  %i.bm = tail call noundef i32 @llvm.bswap.i32(i32 %i.bl)
  %i.bn = icmp ugt i32 %i.bm, 1684434036
  br i1 %i.bn, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i.i66
  %i.bo = add nsw i32 %i.bh, -1
  br label %bb.r

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i.i66
  %.not28.i.i.i.i.i.i69 = icmp eq i32 %i.bl, 1953261156
  br i1 %.not28.i.i.i.i.i.i69, label %_ZNK17hb_sorted_array_tIKN2OT6RecordINS0_6ScriptEEEE12bsearch_implIjJEEEbRKT_PjDpT0_.exit.i.i.i.i79, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bp = add nuw nsw i32 %i.bh, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.o
  %.223.i.i.i.i.i.i70 = phi i32 [ %i.bp, %bb.q ], [ %.0212.i.i.i.i.i.i68, %bb.o ] ; 2 uses
  %.2.i.i.i.i.i.i71 = phi i32 [ %.0203.i.i.i.i.i.i67, %bb.q ], [ %i.bo, %bb.o ] ; 2 uses
  %.not.not.i.i.i.i.i.i72 = icmp sgt i32 %.223.i.i.i.i.i.i70, %.2.i.i.i.i.i.i71
  br i1 %.not.not.i.i.i.i.i.i72, label %.loopexit.i.i.i.i73, label %.lr.ph.i.i.i.i.i.i66, !llvm.loop !94

_ZNK17hb_sorted_array_tIKN2OT6RecordINS0_6ScriptEEEE12bsearch_implIjJEEEbRKT_PjDpT0_.exit.i.i.i.i79: ; preds = %bb.p
  br i1 %.not.i.i.i.i51, label %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit82.thread, label %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit82.thread121

_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit82.thread121: ; preds = %_ZNK17hb_sorted_array_tIKN2OT6RecordINS0_6ScriptEEEE12bsearch_implIjJEEEbRKT_PjDpT0_.exit.i.i.i.i79
  store i32 %i.bh, ptr %4, align 4, !tbaa !324
  br label %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit82.thread

.loopexit.i.i.i.i73:                              ; preds = %bb.r, %_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i61
  br i1 %.not.i.i.i.i51, label %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit82.thread119, label %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit82

_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit82:   ; preds = %.loopexit.i.i.i.i73
  store i32 65535, ptr %4, align 4, !tbaa !324
  br label %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit82.thread119

_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit82.thread: ; preds = %_ZNK17hb_sorted_array_tIKN2OT6RecordINS0_6ScriptEEEE12bsearch_implIjJEEEbRKT_PjDpT0_.exit.i.i.i.i79, %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit82.thread121
  %.not34 = icmp eq ptr %5, null
  br i1 %.not34, label %bb.y, label %.sink.split

_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit82.thread119: ; preds = %.loopexit.i.i.i.i73, %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit82
  %i.bq = load i16, ptr %i.a, align 1, !tbaa !283
  %cond.i.i83 = icmp eq i16 %i.bq, 256
  br i1 %cond.i.i83, label %bb.s, label %_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i84

bb.s:                                             ; preds = %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit82.thread119
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.bs = load i16, ptr %i.br, align 1, !tbaa !283 ; 2 uses
  %i.bt = icmp eq i16 %i.bs, 0
  %i.bu = tail call i16 @llvm.bswap.i16(i16 %i.bs)
  %i.bv = zext i16 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bv
  %.0.i.i.i.i104 = select i1 %i.bt, ptr @_hb_NullPool, ptr %i.bw, !prof !267
  br label %_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i84

_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i84:     ; preds = %bb.s, %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit82.thread119
  %.0.i.i85 = phi ptr [ %.0.i.i.i.i104, %bb.s ], [ @_hb_NullPool, %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit82.thread119 ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.i.i85, i64 2
  %i.by = load i16, ptr %.0.i.i85, align 1, !tbaa !283 ; 2 uses
  %.not1.i.i.i.not.i.i.i86 = icmp eq i16 %i.by, 0
  br i1 %.not1.i.i.i.not.i.i.i86, label %.loopexit.i.i.i.i96, label %.lr.ph.preheader.i.i.i.i.i.i87

.lr.ph.preheader.i.i.i.i.i.i87:                   ; preds = %_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i84
  %i.bz = tail call noundef i16 @llvm.bswap.i16(i16 %i.by)
  %.sroa.4.8.extract.trunc.i.i.i88 = zext i16 %i.bz to i32
  %i.ca = add nsw i32 %.sroa.4.8.extract.trunc.i.i.i88, -1
  br label %.lr.ph.i.i.i.i.i.i89

.lr.ph.i.i.i.i.i.i89:                             ; preds = %bb.w, %.lr.ph.preheader.i.i.i.i.i.i87
  %.0203.i.i.i.i.i.i90 = phi i32 [ %.2.i.i.i.i.i.i94, %bb.w ], [ %i.ca, %.lr.ph.preheader.i.i.i.i.i.i87 ] ; 2 uses
  %.0212.i.i.i.i.i.i91 = phi i32 [ %.223.i.i.i.i.i.i93, %bb.w ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i87 ] ; 2 uses
  %i.cb = add i32 %.0212.i.i.i.i.i.i91, %.0203.i.i.i.i.i.i90
  %i.cc = lshr i32 %i.cb, 1                       ; 4 uses
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = mul nuw nsw i64 %i.cd, 6
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 1, !tbaa !278 ; 2 uses
  %i.ch = tail call noundef i32 @llvm.bswap.i32(i32 %i.cg)
  %i.ci = icmp ugt i32 %i.ch, 1818326126
  br i1 %i.ci, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph.i.i.i.i.i.i89
  %i.cj = add nsw i32 %i.cc, -1
  br label %bb.w

bb.u:                                             ; preds = %.lr.ph.i.i.i.i.i.i89
  %.not28.i.i.i.i.i.i92 = icmp eq i32 %i.cg, 1853120876
  br i1 %.not28.i.i.i.i.i.i92, label %_ZNK17hb_sorted_array_tIKN2OT6RecordINS0_6ScriptEEEE12bsearch_implIjJEEEbRKT_PjDpT0_.exit.i.i.i.i102, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ck = add nuw nsw i32 %i.cc, 1
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.t
  %.223.i.i.i.i.i.i93 = phi i32 [ %i.ck, %bb.v ], [ %.0212.i.i.i.i.i.i91, %bb.t ] ; 2 uses
  %.2.i.i.i.i.i.i94 = phi i32 [ %.0203.i.i.i.i.i.i90, %bb.v ], [ %i.cj, %bb.t ] ; 2 uses
  %.not.not.i.i.i.i.i.i95 = icmp sgt i32 %.223.i.i.i.i.i.i93, %.2.i.i.i.i.i.i94
  br i1 %.not.not.i.i.i.i.i.i95, label %.loopexit.i.i.i.i96, label %.lr.ph.i.i.i.i.i.i89, !llvm.loop !94

_ZNK17hb_sorted_array_tIKN2OT6RecordINS0_6ScriptEEEE12bsearch_implIjJEEEbRKT_PjDpT0_.exit.i.i.i.i102: ; preds = %bb.u
  br i1 %.not.i.i.i.i51, label %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit105.thread, label %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit105.thread127

_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit105.thread127: ; preds = %_ZNK17hb_sorted_array_tIKN2OT6RecordINS0_6ScriptEEEE12bsearch_implIjJEEEbRKT_PjDpT0_.exit.i.i.i.i102
  store i32 %i.cc, ptr %4, align 4, !tbaa !324
  br label %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit105.thread

.loopexit.i.i.i.i96:                              ; preds = %bb.w, %_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i84
  br i1 %.not.i.i.i.i51, label %.thread, label %bb.x

_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit105.thread: ; preds = %_ZNK17hb_sorted_array_tIKN2OT6RecordINS0_6ScriptEEEE12bsearch_implIjJEEEbRKT_PjDpT0_.exit.i.i.i.i102, %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit105.thread127
  %.not33 = icmp eq ptr %5, null
  br i1 %.not33, label %bb.y, label %.sink.split

bb.x:                                             ; preds = %.loopexit.i.i.i.i96
  store i32 65535, ptr %4, align 4, !tbaa !324
  br label %.thread

.thread:                                          ; preds = %.loopexit.i.i.i.i96, %bb.x
  %.not32 = icmp eq ptr %5, null
  br i1 %.not32, label %bb.y, label %.sink.split

.sink.split:                                      ; preds = %.thread, %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit105.thread, %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit82.thread, %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit59.thread, %bb.h
  %.sink = phi i32 [ 1818326126, %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit105.thread ], [ 1684434036, %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit82.thread ], [ 1145457748, %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit59.thread ], [ %i.z, %bb.h ], [ 0, %.thread ]
  %.029.ph = phi i32 [ 0, %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit105.thread ], [ 0, %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit82.thread ], [ 0, %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit59.thread ], [ 1, %bb.h ], [ 0, %.thread ]
  store i32 %.sink, ptr %5, align 4, !tbaa !324
  br label %bb.y

bb.y:                                             ; preds = %.sink.split, %.thread, %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit105.thread, %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit82.thread, %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit59.thread, %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit.thread
  %.029 = phi i32 [ 0, %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit105.thread ], [ 1, %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit.thread ], [ 0, %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit59.thread ], [ 0, %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit82.thread ], [ 0, %.thread ], [ %.029.ph, %.sink.split ]
  ret i32 %.029
}

; Function Attrs: mustprogress nounwind uwtable
define noundef range(i32 0, 65536) i32 @hb_ot_layout_table_get_feature_tags(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc noundef nonnull align 1 dereferenceable(14) ptr @_ZL18get_gsubgpos_tableP9hb_face_tj(ptr noundef %0, i32 noundef %1) ; 3 uses
  %i.b = load i16, ptr %i.a, align 1, !tbaa !283
  %cond.i.i = icmp eq i16 %i.b, 256
  br i1 %cond.i.i, label %bb.b, label %_ZNK2OT8GSUBGPOS16get_feature_listEv.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.d = load i16, ptr %i.c, align 1, !tbaa !283  ; 2 uses
  %i.e = icmp eq i16 %i.d, 0
  %i.f = tail call i16 @llvm.bswap.i16(i16 %i.d)
  %i.g = zext i16 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.g
  %.0.i.i.i.i = select i1 %i.e, ptr @_hb_NullPool, ptr %i.h, !prof !267
  br label %_ZNK2OT8GSUBGPOS16get_feature_listEv.exit.i

_ZNK2OT8GSUBGPOS16get_feature_listEv.exit.i:      ; preds = %bb.b, %bb.a
  %.0.i.i = phi ptr [ %.0.i.i.i.i, %bb.b ], [ @_hb_NullPool, %bb.a ] ; 3 uses
  %i.i = icmp ne ptr %3, null
  %i.j = icmp ne ptr %4, null
  %or.cond.i.i = and i1 %i.i, %i.j
  %.pre36.i.i = load i16, ptr %.0.i.i, align 1, !tbaa !283 ; 3 uses
  br i1 %or.cond.i.i, label %_ZNK17hb_sorted_array_tIKN2OT6RecordINS0_7FeatureEEEE9sub_arrayEjPj.exit.i.i, label %_ZNK2OT8GSUBGPOS16get_feature_tagsEjPjS1_.exit

_ZNK17hb_sorted_array_tIKN2OT6RecordINS0_7FeatureEEEE9sub_arrayEjPj.exit.i.i: ; preds = %_ZNK2OT8GSUBGPOS16get_feature_listEv.exit.i
  %i.k = tail call noundef i16 @llvm.bswap.i16(i16 %.pre36.i.i)
  %.sroa.5.8.extract.trunc.i.i = zext i16 %i.k to i32
  %storemerge.i.i.i.i = tail call i32 @llvm.usub.sat.i32(i32 %.sroa.5.8.extract.trunc.i.i, i32 %2)
  %i.l = load i32, ptr %3, align 4, !tbaa !324
  %.sroa.speculated.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %storemerge.i.i.i.i, i32 %i.l) ; 8 uses
  store i32 %.sroa.speculated.i.i.i.i, ptr %3, align 4, !tbaa !324
  %.not4.i.i.i.i = icmp eq i32 %.sroa.speculated.i.i.i.i, 0
  br i1 %.not4.i.i.i.i, label %_ZNK2OT8GSUBGPOS16get_feature_tagsEjPjS1_.exit, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %_ZNK17hb_sorted_array_tIKN2OT6RecordINS0_7FeatureEEEE9sub_arrayEjPj.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 2
  %i.n = zext i32 %2 to i64
  %i.o = getelementptr inbounds nuw [6 x i8], ptr %i.m, i64 %i.n ; 3 uses
  %xtraiter = and i32 %.sroa.speculated.i.i.i.i, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.preheader.i.i
  %.sroa.0.0.copyload.i.i21.i.i.prol = load i32, ptr %i.o, align 1
  %i.p = tail call noundef i32 @llvm.bswap.i32(i32 %.sroa.0.0.copyload.i.i21.i.i.prol)
  store i32 %i.p, ptr %4, align 4, !tbaa !324
  %.sroa.6.1.i.i.prol = add nsw i32 %.sroa.speculated.i.i.i.i, -1
  %.sroa.022.1.i.i.prol = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.q = add nsw i32 %.sroa.speculated.i.i.i.i, -1
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 6
  br label %.lr.ph.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.preheader.i.i
  %.sroa.6.0.i.i.unr = phi i32 [ %.sroa.speculated.i.i.i.i, %.lr.ph.i.i.preheader.i.i ], [ %.sroa.6.1.i.i.prol, %.lr.ph.i.i.i.i.prol ]
  %.sroa.022.0.i.i.unr = phi ptr [ %4, %.lr.ph.i.i.preheader.i.i ], [ %.sroa.022.1.i.i.prol, %.lr.ph.i.i.i.i.prol ]
  %.unr = phi i32 [ %.sroa.speculated.i.i.i.i, %.lr.ph.i.i.preheader.i.i ], [ %i.q, %.lr.ph.i.i.i.i.prol ]
  %.unr7 = phi ptr [ %i.o, %.lr.ph.i.i.preheader.i.i ], [ %i.r, %.lr.ph.i.i.i.i.prol ]
  %i.s = icmp eq i32 %.sroa.speculated.i.i.i.i, 1
  br i1 %i.s, label %_ZorI13hb_map_iter_tI17hb_sorted_array_tIKN2OT6RecordINS2_7FeatureEEEEMS5_NS2_3TagEL24hb_function_sortedness_t0ELPv0EE9hb_sink_tI10hb_array_tIjEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSI_6item_tEEE5valueEvE4typeELSB_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISI_Efp_EEEOSI_OSN_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.1
  %.sroa.6.0.i.i = phi i32 [ %.sroa.6.1.i.i.1, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.1 ], [ %.sroa.6.0.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 3 uses
  %.sroa.022.0.i.i = phi ptr [ %.sroa.022.1.i.i.1, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.1 ], [ %.sroa.022.0.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.t = phi i32 [ %i.y, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.1 ], [ %.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %i.u = phi ptr [ %i.z, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.1 ], [ %.unr7, %.lr.ph.i.i.i.i.prol.loopexit ] ; 3 uses
  %.sroa.0.0.copyload.i.i21.i.i = load i32, ptr %i.u, align 1
  %i.v = tail call noundef i32 @llvm.bswap.i32(i32 %.sroa.0.0.copyload.i.i21.i.i)
  %.not.i.i.i.i.i.i.i = icmp eq i32 %.sroa.6.0.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.c, label %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i, !prof !267

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  store i32 0, ptr @_hb_CrapPool, align 16
  br label %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i

_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.sroa.022.1.idx.i.i = phi i64 [ 0, %bb.c ], [ 4, %.lr.ph.i.i.i.i ]
  %.0.i.i.i.i.i.i.i = phi ptr [ @_hb_CrapPool, %bb.c ], [ %.sroa.022.0.i.i, %.lr.ph.i.i.i.i ]
  store i32 %i.v, ptr %.0.i.i.i.i.i.i.i, align 4, !tbaa !324
  %.sroa.022.1.i.i = getelementptr inbounds nuw i8, ptr %.sroa.022.0.i.i, i64 %.sroa.022.1.idx.i.i ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 6
  %.sroa.0.0.copyload.i.i21.i.i.1 = load i32, ptr %i.w, align 1
  %i.x = tail call noundef i32 @llvm.bswap.i32(i32 %.sroa.0.0.copyload.i.i21.i.i.1)
  %.not.i.i.i.i.i.i.i.1 = icmp ult i32 %.sroa.6.0.i.i, 2
  br i1 %.not.i.i.i.i.i.i.i.1, label %bb.d, label %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.1, !prof !267

bb.d:                                             ; preds = %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i
  store i32 0, ptr @_hb_CrapPool, align 16
  br label %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.1

_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.1: ; preds = %bb.d, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i
  %.sroa.022.1.idx.i.i.1 = phi i64 [ 0, %bb.d ], [ 4, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i ]
  %.0.i.i.i.i.i.i.i.1 = phi ptr [ @_hb_CrapPool, %bb.d ], [ %.sroa.022.1.i.i, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i ]
  store i32 %i.x, ptr %.0.i.i.i.i.i.i.i.1, align 4, !tbaa !324
  %.sroa.6.1.i.i.1 = tail call i32 @llvm.usub.sat.i32(i32 %.sroa.6.0.i.i, i32 2)
  %.sroa.022.1.i.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.022.1.i.i, i64 %.sroa.022.1.idx.i.i.1
  %i.y = add nsw i32 %i.t, -2                     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %.not.i.i.i.i.1 = icmp eq i32 %i.y, 0
  br i1 %.not.i.i.i.i.1, label %_ZorI13hb_map_iter_tI17hb_sorted_array_tIKN2OT6RecordINS2_7FeatureEEEEMS5_NS2_3TagEL24hb_function_sortedness_t0ELPv0EE9hb_sink_tI10hb_array_tIjEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSI_6item_tEEE5valueEvE4typeELSB_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISI_Efp_EEEOSI_OSN_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2646

_ZorI13hb_map_iter_tI17hb_sorted_array_tIKN2OT6RecordINS2_7FeatureEEEEMS5_NS2_3TagEL24hb_function_sortedness_t0ELPv0EE9hb_sink_tI10hb_array_tIjEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSI_6item_tEEE5valueEvE4typeELSB_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISI_Efp_EEEOSI_OSN_.exit.loopexit.i.i: ; preds = %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.1, %.lr.ph.i.i.i.i.prol.loopexit
  %.pre.i.i = load i16, ptr %.0.i.i, align 1, !tbaa !283
  br label %_ZNK2OT8GSUBGPOS16get_feature_tagsEjPjS1_.exit

_ZNK2OT8GSUBGPOS16get_feature_tagsEjPjS1_.exit:   ; preds = %_ZNK2OT8GSUBGPOS16get_feature_listEv.exit.i, %_ZNK17hb_sorted_array_tIKN2OT6RecordINS0_7FeatureEEEE9sub_arrayEjPj.exit.i.i, %_ZorI13hb_map_iter_tI17hb_sorted_array_tIKN2OT6RecordINS2_7FeatureEEEEMS5_NS2_3TagEL24hb_function_sortedness_t0ELPv0EE9hb_sink_tI10hb_array_tIjEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSI_6item_tEEE5valueEvE4typeELSB_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISI_Efp_EEEOSI_OSN_.exit.loopexit.i.i
  %i.aa = phi i16 [ %.pre.i.i, %_ZorI13hb_map_iter_tI17hb_sorted_array_tIKN2OT6RecordINS2_7FeatureEEEEMS5_NS2_3TagEL24hb_function_sortedness_t0ELPv0EE9hb_sink_tI10hb_array_tIjEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSI_6item_tEEE5valueEvE4typeELSB_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISI_Efp_EEEOSI_OSN_.exit.loopexit.i.i ], [ %.pre36.i.i, %_ZNK17hb_sorted_array_tIKN2OT6RecordINS0_7FeatureEEEE9sub_arrayEjPj.exit.i.i ], [ %.pre36.i.i, %_ZNK2OT8GSUBGPOS16get_feature_listEv.exit.i ]
  %i.ab = tail call noundef i16 @llvm.bswap.i16(i16 %i.aa)
  %i.ac = zext i16 %i.ab to i32
  ret i32 %i.ac
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_Z31hb_ot_layout_table_find_featureP9hb_face_tjjPj(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc noundef nonnull align 1 dereferenceable(14) ptr @_ZL18get_gsubgpos_tableP9hb_face_tj(ptr noundef %0, i32 noundef %1) ; 6 uses
  %i.b = load i16, ptr %i.a, align 1, !tbaa !283
  %cond.i.i = icmp eq i16 %i.b, 256
  br i1 %cond.i.i, label %bb.b, label %_ZNK2OT8GSUBGPOS17get_feature_countEv.exit

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.d = load i16, ptr %i.c, align 1, !tbaa !283  ; 2 uses
  %i.e = icmp eq i16 %i.d, 0
  %i.f = tail call i16 @llvm.bswap.i16(i16 %i.d)
  %i.g = zext i16 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.g
  %.0.i.i.i.i = select i1 %i.e, ptr @_hb_NullPool, ptr %i.h, !prof !267
  br label %_ZNK2OT8GSUBGPOS17get_feature_countEv.exit

_ZNK2OT8GSUBGPOS17get_feature_countEv.exit:       ; preds = %bb.a, %bb.b
  %.0.i.i = phi ptr [ %.0.i.i.i.i, %bb.b ], [ @_hb_NullPool, %bb.a ]
  %i.i = load i16, ptr %.0.i.i, align 1, !tbaa !283 ; 2 uses
  %.not1927.not = icmp eq i16 %i.i, 0
  br i1 %.not1927.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK2OT8GSUBGPOS17get_feature_countEv.exit
  %i.j = tail call noundef i16 @llvm.bswap.i16(i16 %i.i)
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %wide.trip.count = zext i16 %i.j to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 4 uses
  %i.l = load i16, ptr %i.a, align 1, !tbaa !283
  %cond.i.i21 = icmp eq i16 %i.l, 256
  br i1 %cond.i.i21, label %bb.d, label %_ZNK2OT8GSUBGPOS16get_feature_listEv.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.m = load i16, ptr %i.k, align 1, !tbaa !283  ; 2 uses
  %i.n = icmp eq i16 %i.m, 0
  %i.o = tail call i16 @llvm.bswap.i16(i16 %i.m)
  %i.p = zext i16 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.p
  %.0.i.i.i.i23 = select i1 %i.n, ptr @_hb_NullPool, ptr %i.q, !prof !267
  br label %_ZNK2OT8GSUBGPOS16get_feature_listEv.exit.i

_ZNK2OT8GSUBGPOS16get_feature_listEv.exit.i:      ; preds = %bb.d, %bb.c
  %.0.i.i22 = phi ptr [ %.0.i.i.i.i23, %bb.d ], [ @_hb_NullPool, %bb.c ] ; 2 uses
  %i.r = load i16, ptr %.0.i.i22, align 1, !tbaa !283
  %i.s = tail call noundef i16 @llvm.bswap.i16(i16 %i.r)
  %i.t = zext i16 %i.s to i64
  %.not.i.i.i = icmp samesign ult i64 %indvars.iv, %i.t
  br i1 %.not.i.i.i, label %bb.e, label %_ZNK2OT8GSUBGPOS15get_feature_tagEj.exit, !prof !268

bb.e:                                             ; preds = %_ZNK2OT8GSUBGPOS16get_feature_listEv.exit.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i.i22, i64 2
  %i.v = getelementptr inbounds nuw [6 x i8], ptr %i.u, i64 %indvars.iv
  br label %_ZNK2OT8GSUBGPOS15get_feature_tagEj.exit

_ZNK2OT8GSUBGPOS15get_feature_tagEj.exit:         ; preds = %_ZNK2OT8GSUBGPOS16get_feature_listEv.exit.i, %bb.e
  %.0.i.i.i = phi ptr [ %i.v, %bb.e ], [ @_hb_NullPool, %_ZNK2OT8GSUBGPOS16get_feature_listEv.exit.i ]
  %i.w = load i32, ptr %.0.i.i.i, align 1, !tbaa !278
  %i.x = tail call noundef i32 @llvm.bswap.i32(i32 %i.w)
  %i.y = icmp eq i32 %2, %i.x
  br i1 %i.y, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNK2OT8GSUBGPOS15get_feature_tagEj.exit
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = trunc nuw nsw i64 %indvars.iv to i32
  br label %.sink.split

bb.h:                                             ; preds = %_ZNK2OT8GSUBGPOS15get_feature_tagEj.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.c, !llvm.loop !95

.critedge:                                        ; preds = %bb.h, %_ZNK2OT8GSUBGPOS17get_feature_countEv.exit
  %.not20.old = icmp eq ptr %3, null
  br i1 %.not20.old, label %bb.i, label %.sink.split

.sink.split:                                      ; preds = %.critedge, %bb.g
  %.sink = phi i32 [ %i.z, %bb.g ], [ 65535, %.critedge ]
  %.not1925.ph = phi i1 [ true, %bb.g ], [ false, %.critedge ]
  store i32 %.sink, ptr %3, align 4, !tbaa !324
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.f, %.critedge
  %.not1925 = phi i1 [ false, %.critedge ], [ true, %bb.f ], [ %.not1925.ph, %.sink.split ]
  ret i1 %.not1925
}

; Function Attrs: mustprogress nounwind uwtable
define noundef range(i32 0, 65536) i32 @hb_ot_layout_script_get_language_tags(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef captures(address_is_null) %4, ptr nofree noundef writeonly captures(address_is_null) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc noundef nonnull align 1 dereferenceable(14) ptr @_ZL18get_gsubgpos_tableP9hb_face_tj(ptr noundef %0, i32 noundef %1) ; 3 uses
  %i.b = load i16, ptr %i.a, align 1, !tbaa !283
  %cond.i.i = icmp eq i16 %i.b, 256
  br i1 %cond.i.i, label %bb.b, label %_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.d = load i16, ptr %i.c, align 1, !tbaa !283  ; 2 uses
  %i.e = icmp eq i16 %i.d, 0
  %i.f = tail call i16 @llvm.bswap.i16(i16 %i.d)
  %i.g = zext i16 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.g
  %.0.i.i.i.i = select i1 %i.e, ptr @_hb_NullPool, ptr %i.h, !prof !267
  br label %_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i

_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i:       ; preds = %bb.b, %bb.a
  %.0.i.i = phi ptr [ %.0.i.i.i.i, %bb.b ], [ @_hb_NullPool, %bb.a ] ; 3 uses
  %i.i = load i16, ptr %.0.i.i, align 1, !tbaa !283
  %i.j = tail call noundef i16 @llvm.bswap.i16(i16 %i.i)
  %i.k = zext i16 %i.j to i32
  %.not.i.i.i.i = icmp ult i32 %2, %i.k
  br i1 %.not.i.i.i.i, label %bb.c, label %_ZNK2OT8GSUBGPOS10get_scriptEj.exit, !prof !268

bb.c:                                             ; preds = %_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 2
  %i.m = zext nneg i32 %2 to i64
  %i.n = getelementptr inbounds nuw [6 x i8], ptr %i.l, i64 %i.m
  br label %_ZNK2OT8GSUBGPOS10get_scriptEj.exit

_ZNK2OT8GSUBGPOS10get_scriptEj.exit:              ; preds = %_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i, %bb.c
  %.0.i.i.i1.i = phi ptr [ %i.n, %bb.c ], [ @_hb_NullPool, %_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i.i.i1.i, i64 4
  %i.p = load i16, ptr %i.o, align 1, !tbaa !283  ; 2 uses
  %i.q = icmp eq i16 %i.p, 0
  %i.r = tail call i16 @llvm.bswap.i16(i16 %i.p)
  %i.s = zext i16 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.s
  %.0.i.i1.i.i = select i1 %i.q, ptr @_hb_NullPool, ptr %i.t, !prof !267 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i.i1.i.i, i64 2 ; 2 uses
  %i.v = icmp ne ptr %4, null
  %i.w = icmp ne ptr %5, null
  %or.cond.i.i = and i1 %i.v, %i.w
  %.pre36.i.i = load i16, ptr %i.u, align 1, !tbaa !283 ; 3 uses
  br i1 %or.cond.i.i, label %_ZNK17hb_sorted_array_tIKN2OT6RecordINS0_7LangSysEEEE9sub_arrayEjPj.exit.i.i, label %_ZNK2OT6Script17get_lang_sys_tagsEjPjS1_.exit

_ZNK17hb_sorted_array_tIKN2OT6RecordINS0_7LangSysEEEE9sub_arrayEjPj.exit.i.i: ; preds = %_ZNK2OT8GSUBGPOS10get_scriptEj.exit
  %i.x = tail call noundef i16 @llvm.bswap.i16(i16 %.pre36.i.i)
  %.sroa.5.8.extract.trunc.i.i = zext i16 %i.x to i32
  %storemerge.i.i.i.i = tail call i32 @llvm.usub.sat.i32(i32 %.sroa.5.8.extract.trunc.i.i, i32 %3)
  %i.y = load i32, ptr %4, align 4, !tbaa !324
  %.sroa.speculated.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %storemerge.i.i.i.i, i32 %i.y) ; 8 uses
  store i32 %.sroa.speculated.i.i.i.i, ptr %4, align 4, !tbaa !324
  %.not4.i.i.i.i = icmp eq i32 %.sroa.speculated.i.i.i.i, 0
  br i1 %.not4.i.i.i.i, label %_ZNK2OT6Script17get_lang_sys_tagsEjPjS1_.exit, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %_ZNK17hb_sorted_array_tIKN2OT6RecordINS0_7LangSysEEEE9sub_arrayEjPj.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i.i1.i.i, i64 4
  %i.aa = zext i32 %3 to i64
  %i.ab = getelementptr inbounds nuw [6 x i8], ptr %i.z, i64 %i.aa ; 3 uses
  %xtraiter = and i32 %.sroa.speculated.i.i.i.i, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.preheader.i.i
  %.sroa.0.0.copyload.i.i21.i.i.prol = load i32, ptr %i.ab, align 1
  %i.ac = tail call noundef i32 @llvm.bswap.i32(i32 %.sroa.0.0.copyload.i.i21.i.i.prol)
  store i32 %i.ac, ptr %5, align 4, !tbaa !324
  %.sroa.6.1.i.i.prol = add nsw i32 %.sroa.speculated.i.i.i.i, -1
  %.sroa.022.1.i.i.prol = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ad = add nsw i32 %.sroa.speculated.i.i.i.i, -1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 6
  br label %.lr.ph.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.preheader.i.i
  %.sroa.6.0.i.i.unr = phi i32 [ %.sroa.speculated.i.i.i.i, %.lr.ph.i.i.preheader.i.i ], [ %.sroa.6.1.i.i.prol, %.lr.ph.i.i.i.i.prol ]
  %.sroa.022.0.i.i.unr = phi ptr [ %5, %.lr.ph.i.i.preheader.i.i ], [ %.sroa.022.1.i.i.prol, %.lr.ph.i.i.i.i.prol ]
  %.unr = phi i32 [ %.sroa.speculated.i.i.i.i, %.lr.ph.i.i.preheader.i.i ], [ %i.ad, %.lr.ph.i.i.i.i.prol ]
  %.unr10 = phi ptr [ %i.ab, %.lr.ph.i.i.preheader.i.i ], [ %i.ae, %.lr.ph.i.i.i.i.prol ]
  %i.af = icmp eq i32 %.sroa.speculated.i.i.i.i, 1
  br i1 %i.af, label %_ZorI13hb_map_iter_tI17hb_sorted_array_tIKN2OT6RecordINS2_7LangSysEEEEMS5_NS2_3TagEL24hb_function_sortedness_t0ELPv0EE9hb_sink_tI10hb_array_tIjEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSI_6item_tEEE5valueEvE4typeELSB_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISI_Efp_EEEOSI_OSN_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.1
  %.sroa.6.0.i.i = phi i32 [ %.sroa.6.1.i.i.1, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.1 ], [ %.sroa.6.0.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 3 uses
  %.sroa.022.0.i.i = phi ptr [ %.sroa.022.1.i.i.1, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.1 ], [ %.sroa.022.0.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.ag = phi i32 [ %i.al, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.1 ], [ %.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %i.ah = phi ptr [ %i.am, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.1 ], [ %.unr10, %.lr.ph.i.i.i.i.prol.loopexit ] ; 3 uses
  %.sroa.0.0.copyload.i.i21.i.i = load i32, ptr %i.ah, align 1
  %i.ai = tail call noundef i32 @llvm.bswap.i32(i32 %.sroa.0.0.copyload.i.i21.i.i)
  %.not.i.i.i.i.i.i.i = icmp eq i32 %.sroa.6.0.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.d, label %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i, !prof !267

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  store i32 0, ptr @_hb_CrapPool, align 16
  br label %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i

_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i.i
  %.sroa.022.1.idx.i.i = phi i64 [ 0, %bb.d ], [ 4, %.lr.ph.i.i.i.i ]
  %.0.i.i.i.i.i.i.i = phi ptr [ @_hb_CrapPool, %bb.d ], [ %.sroa.022.0.i.i, %.lr.ph.i.i.i.i ]
  store i32 %i.ai, ptr %.0.i.i.i.i.i.i.i, align 4, !tbaa !324
  %.sroa.022.1.i.i = getelementptr inbounds nuw i8, ptr %.sroa.022.0.i.i, i64 %.sroa.022.1.idx.i.i ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 6
  %.sroa.0.0.copyload.i.i21.i.i.1 = load i32, ptr %i.aj, align 1
  %i.ak = tail call noundef i32 @llvm.bswap.i32(i32 %.sroa.0.0.copyload.i.i21.i.i.1)
  %.not.i.i.i.i.i.i.i.1 = icmp ult i32 %.sroa.6.0.i.i, 2
  br i1 %.not.i.i.i.i.i.i.i.1, label %bb.e, label %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.1, !prof !267

bb.e:                                             ; preds = %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i
  store i32 0, ptr @_hb_CrapPool, align 16
  br label %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.1

_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.1: ; preds = %bb.e, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i
  %.sroa.022.1.idx.i.i.1 = phi i64 [ 0, %bb.e ], [ 4, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i ]
  %.0.i.i.i.i.i.i.i.1 = phi ptr [ @_hb_CrapPool, %bb.e ], [ %.sroa.022.1.i.i, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i ]
  store i32 %i.ak, ptr %.0.i.i.i.i.i.i.i.1, align 4, !tbaa !324
  %.sroa.6.1.i.i.1 = tail call i32 @llvm.usub.sat.i32(i32 %.sroa.6.0.i.i, i32 2)
  %.sroa.022.1.i.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.022.1.i.i, i64 %.sroa.022.1.idx.i.i.1
  %i.al = add nsw i32 %i.ag, -2                   ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  %.not.i.i.i.i6.1 = icmp eq i32 %i.al, 0
  br i1 %.not.i.i.i.i6.1, label %_ZorI13hb_map_iter_tI17hb_sorted_array_tIKN2OT6RecordINS2_7LangSysEEEEMS5_NS2_3TagEL24hb_function_sortedness_t0ELPv0EE9hb_sink_tI10hb_array_tIjEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSI_6item_tEEE5valueEvE4typeELSB_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISI_Efp_EEEOSI_OSN_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2647

_ZorI13hb_map_iter_tI17hb_sorted_array_tIKN2OT6RecordINS2_7LangSysEEEEMS5_NS2_3TagEL24hb_function_sortedness_t0ELPv0EE9hb_sink_tI10hb_array_tIjEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSI_6item_tEEE5valueEvE4typeELSB_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISI_Efp_EEEOSI_OSN_.exit.loopexit.i.i: ; preds = %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.1, %.lr.ph.i.i.i.i.prol.loopexit
  %.pre.i.i = load i16, ptr %i.u, align 1, !tbaa !283
  br label %_ZNK2OT6Script17get_lang_sys_tagsEjPjS1_.exit

_ZNK2OT6Script17get_lang_sys_tagsEjPjS1_.exit:    ; preds = %_ZNK2OT8GSUBGPOS10get_scriptEj.exit, %_ZNK17hb_sorted_array_tIKN2OT6RecordINS0_7LangSysEEEE9sub_arrayEjPj.exit.i.i, %_ZorI13hb_map_iter_tI17hb_sorted_array_tIKN2OT6RecordINS2_7LangSysEEEEMS5_NS2_3TagEL24hb_function_sortedness_t0ELPv0EE9hb_sink_tI10hb_array_tIjEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSI_6item_tEEE5valueEvE4typeELSB_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISI_Efp_EEEOSI_OSN_.exit.loopexit.i.i
  %i.an = phi i16 [ %.pre.i.i, %_ZorI13hb_map_iter_tI17hb_sorted_array_tIKN2OT6RecordINS2_7LangSysEEEEMS5_NS2_3TagEL24hb_function_sortedness_t0ELPv0EE9hb_sink_tI10hb_array_tIjEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSI_6item_tEEE5valueEvE4typeELSB_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISI_Efp_EEEOSI_OSN_.exit.loopexit.i.i ], [ %.pre36.i.i, %_ZNK17hb_sorted_array_tIKN2OT6RecordINS0_7LangSysEEEE9sub_arrayEjPj.exit.i.i ], [ %.pre36.i.i, %_ZNK2OT8GSUBGPOS10get_scriptEj.exit ]
  %i.ao = tail call noundef i16 @llvm.bswap.i16(i16 %i.an)
  %i.ap = zext i16 %i.ao to i32
  ret i32 %i.ap
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @hb_ot_layout_script_find_language(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  store i32 %3, ptr %i.a, align 4, !tbaa !324
  %i.b = call range(i32 0, 2) i32 @hb_ot_layout_script_select_language2(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef 1, ptr noundef nonnull readonly %i.a, ptr noundef %4, ptr noundef null)
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @hb_ot_layout_script_select_language(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef writeonly captures(address_is_null) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @hb_ot_layout_script_select_language2(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef null)
  ret i32 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @hb_ot_layout_script_select_language2(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef writeonly captures(address_is_null) %5, ptr nofree noundef writeonly captures(address_is_null) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc noundef nonnull align 1 dereferenceable(14) ptr @_ZL18get_gsubgpos_tableP9hb_face_tj(ptr noundef %0, i32 noundef %1) ; 3 uses
  %i.b = load i16, ptr %i.a, align 1, !tbaa !283
  %cond.i.i = icmp eq i16 %i.b, 256
  br i1 %cond.i.i, label %bb.b, label %_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.d = load i16, ptr %i.c, align 1, !tbaa !283  ; 2 uses
  %i.e = icmp eq i16 %i.d, 0
  %i.f = tail call i16 @llvm.bswap.i16(i16 %i.d)
  %i.g = zext i16 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.g
  %.0.i.i.i.i = select i1 %i.e, ptr @_hb_NullPool, ptr %i.h, !prof !267
  br label %_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i

_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i:       ; preds = %bb.b, %bb.a
  %.0.i.i = phi ptr [ %.0.i.i.i.i, %bb.b ], [ @_hb_NullPool, %bb.a ] ; 3 uses
  %i.i = load i16, ptr %.0.i.i, align 1, !tbaa !283
  %i.j = tail call noundef i16 @llvm.bswap.i16(i16 %i.i)
  %i.k = zext i16 %i.j to i32
  %.not.i.i.i.i = icmp ult i32 %2, %i.k
  br i1 %.not.i.i.i.i, label %bb.c, label %_ZNK2OT8GSUBGPOS10get_scriptEj.exit, !prof !268

bb.c:                                             ; preds = %_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 2
  %i.m = zext nneg i32 %2 to i64
  %i.n = getelementptr inbounds nuw [6 x i8], ptr %i.l, i64 %i.m
  br label %_ZNK2OT8GSUBGPOS10get_scriptEj.exit

_ZNK2OT8GSUBGPOS10get_scriptEj.exit:              ; preds = %_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i, %bb.c
  %.0.i.i.i1.i = phi ptr [ %i.n, %bb.c ], [ @_hb_NullPool, %_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i.i.i1.i, i64 4
  %i.p = load i16, ptr %i.o, align 1, !tbaa !283  ; 2 uses
  %i.q = icmp eq i16 %i.p, 0
  %i.r = tail call i16 @llvm.bswap.i16(i16 %i.p)
  %i.s = zext i16 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.s
  %.0.i.i1.i.i = select i1 %i.q, ptr @_hb_NullPool, ptr %i.t, !prof !267 ; 3 uses
  %.not = icmp eq i32 %3, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.0.i.i1.i.i, i64 2 ; 2 uses
  br i1 %.not, label %_ZNK2OT8GSUBGPOS10get_scriptEj.exit.._crit_edge_crit_edge, label %.lr.ph

_ZNK2OT8GSUBGPOS10get_scriptEj.exit.._crit_edge_crit_edge: ; preds = %_ZNK2OT8GSUBGPOS10get_scriptEj.exit
  %.pre = load i16, ptr %.phi.trans.insert, align 1, !tbaa !283
end_hunk_11
begin_hunk_12_@hb_ot_layout_language_get_required_feature_index:bb.a
  %.0.i.i.i1.i.i = phi ptr [ %i.n, %bb.c ], [ @_hb_NullPool, %_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i.i.i1.i.i, i64 4
  %i.p = load i16, ptr %i.o, align 1, !tbaa !283  ; 2 uses
  %i.q = icmp eq i16 %i.p, 0
  %i.r = tail call i16 @llvm.bswap.i16(i16 %i.p)
  %i.s = zext i16 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.s
  %.0.i.i1.i.i.i = select i1 %i.q, ptr @_hb_NullPool, ptr %i.t, !prof !267 ; 4 uses
  %i.u = icmp eq i32 %3, 65535
  br i1 %i.u, label %_ZNK2OT6Script12get_lang_sysEj.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNK2OT8GSUBGPOS10get_scriptEj.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i.i1.i.i.i, i64 2
  %i.w = load i16, ptr %i.v, align 1, !tbaa !283
  %i.x = tail call noundef i16 @llvm.bswap.i16(i16 %i.w)
  %i.y = zext i16 %i.x to i32
  %.not.i.i.i = icmp ult i32 %3, %i.y
  br i1 %.not.i.i.i, label %bb.e, label %_ZNK2OT7ArrayOfINS_6RecordINS_7LangSysEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i, !prof !268

bb.e:                                             ; preds = %bb.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i.i1.i.i.i, i64 4
  %i.aa = zext nneg i32 %3 to i64
  %i.ab = getelementptr inbounds nuw [6 x i8], ptr %i.z, i64 %i.aa
  br label %_ZNK2OT7ArrayOfINS_6RecordINS_7LangSysEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i

_ZNK2OT7ArrayOfINS_6RecordINS_7LangSysEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i: ; preds = %bb.e, %bb.d
  %.0.i.i15.i = phi ptr [ %i.ab, %bb.e ], [ @_hb_NullPool, %bb.d ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i.i15.i, i64 4
  br label %_ZNK2OT6Script12get_lang_sysEj.exit.i

_ZNK2OT6Script12get_lang_sysEj.exit.i:            ; preds = %_ZNK2OT7ArrayOfINS_6RecordINS_7LangSysEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i, %_ZNK2OT8GSUBGPOS10get_scriptEj.exit.i
  %.sink9.in.i.i = phi ptr [ %i.ac, %_ZNK2OT7ArrayOfINS_6RecordINS_7LangSysEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i ], [ %.0.i.i1.i.i.i, %_ZNK2OT8GSUBGPOS10get_scriptEj.exit.i ]
  %.sink9.i.i = load i16, ptr %.sink9.in.i.i, align 1, !tbaa !283 ; 2 uses
  %i.ad = icmp eq i16 %.sink9.i.i, 0
  %i.ae = tail call i16 @llvm.bswap.i16(i16 %.sink9.i.i)
  %i.af = zext i16 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i.i1.i.i.i, i64 %i.af
  %.0.i.i.i.i = select i1 %i.ad, ptr @_hb_Null_OT_LangSys, ptr %i.ag, !prof !267
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 2
  %i.ai = load i16, ptr %i.ah, align 1, !tbaa !283 ; 2 uses
  %.not.i = icmp eq ptr %4, null
  br i1 %.not.i, label %hb_ot_layout_language_get_required_feature.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK2OT6Script12get_lang_sysEj.exit.i
  %i.aj = tail call noundef i16 @llvm.bswap.i16(i16 %i.ai)
  %i.ak = zext i16 %i.aj to i32
  store i32 %i.ak, ptr %4, align 4, !tbaa !324
  br label %hb_ot_layout_language_get_required_feature.exit

hb_ot_layout_language_get_required_feature.exit:  ; preds = %_ZNK2OT6Script12get_lang_sysEj.exit.i, %bb.f
  %i.al = icmp ne i16 %i.ai, -1
  %i.am = zext i1 %i.al to i32
  ret i32 %i.am
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @hb_ot_layout_language_get_required_feature(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4, ptr nofree noundef writeonly captures(address_is_null) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc noundef nonnull align 1 dereferenceable(14) ptr @_ZL18get_gsubgpos_tableP9hb_face_tj(ptr noundef %0, i32 noundef %1) ; 6 uses
  %i.b = load i16, ptr %i.a, align 1, !tbaa !283
  %cond.i.i = icmp eq i16 %i.b, 256
  br i1 %cond.i.i, label %bb.b, label %_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.d = load i16, ptr %i.c, align 1, !tbaa !283  ; 2 uses
  %i.e = icmp eq i16 %i.d, 0
  %i.f = tail call i16 @llvm.bswap.i16(i16 %i.d)
  %i.g = zext i16 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.g
  %.0.i.i.i.i = select i1 %i.e, ptr @_hb_NullPool, ptr %i.h, !prof !267
  br label %_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i

_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i:       ; preds = %bb.b, %bb.a
  %.0.i.i = phi ptr [ %.0.i.i.i.i, %bb.b ], [ @_hb_NullPool, %bb.a ] ; 3 uses
  %i.i = load i16, ptr %.0.i.i, align 1, !tbaa !283
  %i.j = tail call noundef i16 @llvm.bswap.i16(i16 %i.i)
  %i.k = zext i16 %i.j to i32
  %.not.i.i.i.i = icmp ult i32 %2, %i.k
  br i1 %.not.i.i.i.i, label %bb.c, label %_ZNK2OT8GSUBGPOS10get_scriptEj.exit, !prof !268

bb.c:                                             ; preds = %_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 2
  %i.m = zext nneg i32 %2 to i64
  %i.n = getelementptr inbounds nuw [6 x i8], ptr %i.l, i64 %i.m
  br label %_ZNK2OT8GSUBGPOS10get_scriptEj.exit

_ZNK2OT8GSUBGPOS10get_scriptEj.exit:              ; preds = %_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i, %bb.c
  %.0.i.i.i1.i = phi ptr [ %i.n, %bb.c ], [ @_hb_NullPool, %_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i.i.i1.i, i64 4
  %i.p = load i16, ptr %i.o, align 1, !tbaa !283  ; 2 uses
  %i.q = icmp eq i16 %i.p, 0
  %i.r = tail call i16 @llvm.bswap.i16(i16 %i.p)
  %i.s = zext i16 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.s
  %.0.i.i1.i.i = select i1 %i.q, ptr @_hb_NullPool, ptr %i.t, !prof !267 ; 4 uses
  %i.u = icmp eq i32 %3, 65535
  br i1 %i.u, label %_ZNK2OT6Script12get_lang_sysEj.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK2OT8GSUBGPOS10get_scriptEj.exit
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i.i1.i.i, i64 2
  %i.w = load i16, ptr %i.v, align 1, !tbaa !283
  %i.x = tail call noundef i16 @llvm.bswap.i16(i16 %i.w)
  %i.y = zext i16 %i.x to i32
  %.not.i.i = icmp ult i32 %3, %i.y
  br i1 %.not.i.i, label %bb.e, label %_ZNK2OT7ArrayOfINS_6RecordINS_7LangSysEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i, !prof !268

bb.e:                                             ; preds = %bb.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i.i1.i.i, i64 4
  %i.aa = zext nneg i32 %3 to i64
  %i.ab = getelementptr inbounds nuw [6 x i8], ptr %i.z, i64 %i.aa
  br label %_ZNK2OT7ArrayOfINS_6RecordINS_7LangSysEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i

_ZNK2OT7ArrayOfINS_6RecordINS_7LangSysEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i: ; preds = %bb.e, %bb.d
  %.0.i.i15 = phi ptr [ %i.ab, %bb.e ], [ @_hb_NullPool, %bb.d ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i.i15, i64 4
  br label %_ZNK2OT6Script12get_lang_sysEj.exit

_ZNK2OT6Script12get_lang_sysEj.exit:              ; preds = %_ZNK2OT8GSUBGPOS10get_scriptEj.exit, %_ZNK2OT7ArrayOfINS_6RecordINS_7LangSysEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i
  %.sink9.in.i = phi ptr [ %i.ac, %_ZNK2OT7ArrayOfINS_6RecordINS_7LangSysEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i ], [ %.0.i.i1.i.i, %_ZNK2OT8GSUBGPOS10get_scriptEj.exit ]
  %.sink9.i = load i16, ptr %.sink9.in.i, align 1, !tbaa !283 ; 2 uses
  %i.ad = icmp eq i16 %.sink9.i, 0
  %i.ae = tail call i16 @llvm.bswap.i16(i16 %.sink9.i)
  %i.af = zext i16 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i.i1.i.i, i64 %i.af
  %.0.i.i.i = select i1 %i.ad, ptr @_hb_Null_OT_LangSys, ptr %i.ag, !prof !267
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 2 ; 2 uses
  %i.ai = load i16, ptr %i.ah, align 1, !tbaa !283 ; 3 uses
  %i.aj = tail call noundef i16 @llvm.bswap.i16(i16 %i.ai) ; 3 uses
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK2OT6Script12get_lang_sysEj.exit
  %i.ak = zext i16 %i.aj to i32
  store i32 %i.ak, ptr %4, align 4, !tbaa !324
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNK2OT6Script12get_lang_sysEj.exit
  %.not14 = icmp eq ptr %5, null
  br i1 %.not14, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = icmp eq i16 %i.ai, -1
  br i1 %i.al, label %_ZNK2OT8GSUBGPOS15get_feature_tagEj.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = load i16, ptr %i.a, align 1, !tbaa !283
  %cond.i.i16 = icmp eq i16 %i.am, 256
  br i1 %cond.i.i16, label %bb.j, label %_ZNK2OT8GSUBGPOS16get_feature_listEv.exit.i

bb.j:                                             ; preds = %bb.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.ao = load i16, ptr %i.an, align 1, !tbaa !283 ; 2 uses
  %i.ap = icmp eq i16 %i.ao, 0
  %i.aq = tail call i16 @llvm.bswap.i16(i16 %i.ao)
  %i.ar = zext i16 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ar
  %.0.i.i.i.i19 = select i1 %i.ap, ptr @_hb_NullPool, ptr %i.as, !prof !267
  br label %_ZNK2OT8GSUBGPOS16get_feature_listEv.exit.i

_ZNK2OT8GSUBGPOS16get_feature_listEv.exit.i:      ; preds = %bb.j, %bb.i
  %.0.i.i17 = phi ptr [ %.0.i.i.i.i19, %bb.j ], [ @_hb_NullPool, %bb.i ] ; 2 uses
  %i.at = load i16, ptr %.0.i.i17, align 1, !tbaa !283
  %i.au = tail call noundef i16 @llvm.bswap.i16(i16 %i.at)
  %.not.i.i.i = icmp ult i16 %i.aj, %i.au
  br i1 %.not.i.i.i, label %bb.k, label %_ZNK2OT13RecordArrayOfINS_7FeatureEE7get_tagEj.exit.i, !prof !268

bb.k:                                             ; preds = %_ZNK2OT8GSUBGPOS16get_feature_listEv.exit.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i.i17, i64 2
  %i.aw = zext i16 %i.aj to i64
  %i.ax = getelementptr inbounds nuw [6 x i8], ptr %i.av, i64 %i.aw
  br label %_ZNK2OT13RecordArrayOfINS_7FeatureEE7get_tagEj.exit.i

_ZNK2OT13RecordArrayOfINS_7FeatureEE7get_tagEj.exit.i: ; preds = %bb.k, %_ZNK2OT8GSUBGPOS16get_feature_listEv.exit.i
  %.0.i.i.i18 = phi ptr [ %i.ax, %bb.k ], [ @_hb_NullPool, %_ZNK2OT8GSUBGPOS16get_feature_listEv.exit.i ]
  %i.ay = load i32, ptr %.0.i.i.i18, align 1, !tbaa !278
  %i.az = tail call noundef i32 @llvm.bswap.i32(i32 %i.ay)
  %.pre.pre = load i16, ptr %i.ah, align 1, !tbaa !283
  br label %_ZNK2OT8GSUBGPOS15get_feature_tagEj.exit

_ZNK2OT8GSUBGPOS15get_feature_tagEj.exit:         ; preds = %bb.h, %_ZNK2OT13RecordArrayOfINS_7FeatureEE7get_tagEj.exit.i
  %.pre = phi i16 [ %.pre.pre, %_ZNK2OT13RecordArrayOfINS_7FeatureEE7get_tagEj.exit.i ], [ -1, %bb.h ]
  %i.ba = phi i32 [ %i.az, %_ZNK2OT13RecordArrayOfINS_7FeatureEE7get_tagEj.exit.i ], [ 0, %bb.h ]
  store i32 %i.ba, ptr %5, align 4, !tbaa !324
  br label %bb.l

bb.l:                                             ; preds = %_ZNK2OT8GSUBGPOS15get_feature_tagEj.exit, %bb.g
  %i.bb = phi i16 [ %.pre, %_ZNK2OT8GSUBGPOS15get_feature_tagEj.exit ], [ %i.ai, %bb.g ]
  %i.bc = icmp ne i16 %i.bb, -1
  %i.bd = zext i1 %i.bc to i32
  ret i32 %i.bd
}

; Function Attrs: mustprogress nounwind uwtable
define noundef range(i32 0, 65536) i32 @hb_ot_layout_language_get_feature_indexes(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef captures(address_is_null) %5, ptr nofree noundef writeonly captures(address_is_null) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc noundef nonnull align 1 dereferenceable(14) ptr @_ZL18get_gsubgpos_tableP9hb_face_tj(ptr noundef %0, i32 noundef %1) ; 3 uses
  %i.b = load i16, ptr %i.a, align 1, !tbaa !283
  %cond.i.i = icmp eq i16 %i.b, 256
  br i1 %cond.i.i, label %bb.b, label %_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.d = load i16, ptr %i.c, align 1, !tbaa !283  ; 2 uses
  %i.e = icmp eq i16 %i.d, 0
  %i.f = tail call i16 @llvm.bswap.i16(i16 %i.d)
  %i.g = zext i16 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.g
  %.0.i.i.i.i = select i1 %i.e, ptr @_hb_NullPool, ptr %i.h, !prof !267
  br label %_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i

_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i:       ; preds = %bb.b, %bb.a
  %.0.i.i = phi ptr [ %.0.i.i.i.i, %bb.b ], [ @_hb_NullPool, %bb.a ] ; 3 uses
  %i.i = load i16, ptr %.0.i.i, align 1, !tbaa !283
  %i.j = tail call noundef i16 @llvm.bswap.i16(i16 %i.i)
  %i.k = zext i16 %i.j to i32
  %.not.i.i.i.i = icmp ult i32 %2, %i.k
  br i1 %.not.i.i.i.i, label %bb.c, label %_ZNK2OT8GSUBGPOS10get_scriptEj.exit, !prof !268

bb.c:                                             ; preds = %_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 2
  %i.m = zext nneg i32 %2 to i64
  %i.n = getelementptr inbounds nuw [6 x i8], ptr %i.l, i64 %i.m
  br label %_ZNK2OT8GSUBGPOS10get_scriptEj.exit

_ZNK2OT8GSUBGPOS10get_scriptEj.exit:              ; preds = %_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i, %bb.c
  %.0.i.i.i1.i = phi ptr [ %i.n, %bb.c ], [ @_hb_NullPool, %_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i.i.i1.i, i64 4
  %i.p = load i16, ptr %i.o, align 1, !tbaa !283  ; 2 uses
  %i.q = icmp eq i16 %i.p, 0
  %i.r = tail call i16 @llvm.bswap.i16(i16 %i.p)
  %i.s = zext i16 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.s
  %.0.i.i1.i.i = select i1 %i.q, ptr @_hb_NullPool, ptr %i.t, !prof !267 ; 4 uses
  %i.u = icmp eq i32 %3, 65535
  br i1 %i.u, label %_ZNK2OT6Script12get_lang_sysEj.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK2OT8GSUBGPOS10get_scriptEj.exit
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i.i1.i.i, i64 2
  %i.w = load i16, ptr %i.v, align 1, !tbaa !283
  %i.x = tail call noundef i16 @llvm.bswap.i16(i16 %i.w)
  %i.y = zext i16 %i.x to i32
  %.not.i.i = icmp ult i32 %3, %i.y
  br i1 %.not.i.i, label %bb.e, label %_ZNK2OT7ArrayOfINS_6RecordINS_7LangSysEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i, !prof !268

bb.e:                                             ; preds = %bb.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i.i1.i.i, i64 4
  %i.aa = zext nneg i32 %3 to i64
  %i.ab = getelementptr inbounds nuw [6 x i8], ptr %i.z, i64 %i.aa
  br label %_ZNK2OT7ArrayOfINS_6RecordINS_7LangSysEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i

_ZNK2OT7ArrayOfINS_6RecordINS_7LangSysEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i: ; preds = %bb.e, %bb.d
  %.0.i.i8 = phi ptr [ %i.ab, %bb.e ], [ @_hb_NullPool, %bb.d ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i.i8, i64 4
  br label %_ZNK2OT6Script12get_lang_sysEj.exit

_ZNK2OT6Script12get_lang_sysEj.exit:              ; preds = %_ZNK2OT8GSUBGPOS10get_scriptEj.exit, %_ZNK2OT7ArrayOfINS_6RecordINS_7LangSysEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i
  %.sink9.in.i = phi ptr [ %i.ac, %_ZNK2OT7ArrayOfINS_6RecordINS_7LangSysEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i ], [ %.0.i.i1.i.i, %_ZNK2OT8GSUBGPOS10get_scriptEj.exit ]
  %.sink9.i = load i16, ptr %.sink9.in.i, align 1, !tbaa !283 ; 2 uses
  %i.ad = icmp eq i16 %.sink9.i, 0
  %i.ae = tail call i16 @llvm.bswap.i16(i16 %.sink9.i)
  %i.af = zext i16 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i.i1.i.i, i64 %i.af
  %.0.i.i.i = select i1 %i.ad, ptr @_hb_Null_OT_LangSys, ptr %i.ag, !prof !267 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4
  %i.ai = icmp ne ptr %5, null
  %i.aj = icmp ne ptr %6, null
  %or.cond.i.i = and i1 %i.ai, %i.aj
  %.pre28.i.i = load i16, ptr %i.ah, align 1, !tbaa !283
  %i.ak = tail call noundef i16 @llvm.bswap.i16(i16 %.pre28.i.i)
  %.sroa.5.8.extract.trunc.i.i = zext i16 %i.ak to i32 ; 2 uses
  br i1 %or.cond.i.i, label %_ZNK10hb_array_tIKN2OT5IndexEE9sub_arrayEjPj.exit.i.i, label %_ZNK2OT7LangSys19get_feature_indexesEjPjS1_.exit

_ZNK10hb_array_tIKN2OT5IndexEE9sub_arrayEjPj.exit.i.i: ; preds = %_ZNK2OT6Script12get_lang_sysEj.exit
  %storemerge.i.i.i = tail call i32 @llvm.usub.sat.i32(i32 %.sroa.5.8.extract.trunc.i.i, i32 %4)
  %i.al = load i32, ptr %5, align 4, !tbaa !324
  %.sroa.speculated.i.i.i = tail call i32 @llvm.umin.i32(i32 %storemerge.i.i.i, i32 %i.al) ; 8 uses
  store i32 %.sroa.speculated.i.i.i, ptr %5, align 4, !tbaa !324
  %.not5.i.i.i.i = icmp eq i32 %.sroa.speculated.i.i.i, 0
  br i1 %.not5.i.i.i.i, label %_ZNK2OT7LangSys19get_feature_indexesEjPjS1_.exit, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %_ZNK10hb_array_tIKN2OT5IndexEE9sub_arrayEjPj.exit.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 6
  %i.an = zext i32 %4 to i64
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.an ; 3 uses
  %xtraiter = and i32 %.sroa.speculated.i.i.i, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.preheader.i.i
  %.sroa.0.0.copyload.i.i.i.i.prol = load i16, ptr %i.ao, align 1
  %i.ap = tail call noundef i16 @llvm.bswap.i16(i16 %.sroa.0.0.copyload.i.i.i.i.prol)
  %i.aq = zext i16 %i.ap to i32
  store i32 %i.aq, ptr %6, align 4, !tbaa !324
  %.sroa.6.1.i.i.prol = add nsw i32 %.sroa.speculated.i.i.i, -1
  %.sroa.018.1.i.i.prol = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.ar = add nsw i32 %.sroa.speculated.i.i.i, -1
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 2
  br label %.lr.ph.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.preheader.i.i
  %.sroa.6.0.i.i.unr = phi i32 [ %.sroa.speculated.i.i.i, %.lr.ph.i.i.preheader.i.i ], [ %.sroa.6.1.i.i.prol, %.lr.ph.i.i.i.i.prol ]
  %.sroa.018.0.i.i.unr = phi ptr [ %6, %.lr.ph.i.i.preheader.i.i ], [ %.sroa.018.1.i.i.prol, %.lr.ph.i.i.i.i.prol ]
  %.sroa.0.07.i.i.i.i.unr = phi ptr [ %i.ao, %.lr.ph.i.i.preheader.i.i ], [ %i.as, %.lr.ph.i.i.i.i.prol ]
  %.sroa.4.06.i.i.i.i.unr = phi i32 [ %.sroa.speculated.i.i.i, %.lr.ph.i.i.preheader.i.i ], [ %i.ar, %.lr.ph.i.i.i.i.prol ]
  %i.at = icmp eq i32 %.sroa.speculated.i.i.i, 1
  br i1 %i.at, label %_ZNK2OT7LangSys19get_feature_indexesEjPjS1_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.1
  %.sroa.6.0.i.i = phi i32 [ %.sroa.6.1.i.i.1, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.1 ], [ %.sroa.6.0.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 3 uses
  %.sroa.018.0.i.i = phi ptr [ %.sroa.018.1.i.i.1, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.1 ], [ %.sroa.018.0.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.0.07.i.i.i.i = phi ptr [ %i.ba, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.1 ], [ %.sroa.0.07.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 3 uses
  %.sroa.4.06.i.i.i.i = phi i32 [ %i.az, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.1 ], [ %.sroa.4.06.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.sroa.0.0.copyload.i.i.i.i = load i16, ptr %.sroa.0.07.i.i.i.i, align 1
  %i.au = tail call noundef i16 @llvm.bswap.i16(i16 %.sroa.0.0.copyload.i.i.i.i)
  %i.av = zext i16 %i.au to i32
  %.not.i.i.i.i.i.i.i = icmp eq i32 %.sroa.6.0.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i, !prof !267

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  store i32 0, ptr @_hb_CrapPool, align 16
  br label %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i

_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i
  %.sroa.018.1.idx.i.i = phi i64 [ 0, %bb.f ], [ 4, %.lr.ph.i.i.i.i ]
  %.0.i.i.i.i.i.i.i = phi ptr [ @_hb_CrapPool, %bb.f ], [ %.sroa.018.0.i.i, %.lr.ph.i.i.i.i ]
  store i32 %i.av, ptr %.0.i.i.i.i.i.i.i, align 4, !tbaa !324
  %.sroa.018.1.i.i = getelementptr inbounds nuw i8, ptr %.sroa.018.0.i.i, i64 %.sroa.018.1.idx.i.i ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i, i64 2
  %.sroa.0.0.copyload.i.i.i.i.1 = load i16, ptr %i.aw, align 1
  %i.ax = tail call noundef i16 @llvm.bswap.i16(i16 %.sroa.0.0.copyload.i.i.i.i.1)
  %i.ay = zext i16 %i.ax to i32
  %.not.i.i.i.i.i.i.i.1 = icmp ult i32 %.sroa.6.0.i.i, 2
  br i1 %.not.i.i.i.i.i.i.i.1, label %bb.g, label %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.1, !prof !267

bb.g:                                             ; preds = %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i
  store i32 0, ptr @_hb_CrapPool, align 16
  br label %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.1

_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.1: ; preds = %bb.g, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i
  %.sroa.018.1.idx.i.i.1 = phi i64 [ 0, %bb.g ], [ 4, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i ]
  %.0.i.i.i.i.i.i.i.1 = phi ptr [ @_hb_CrapPool, %bb.g ], [ %.sroa.018.1.i.i, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i ]
  store i32 %i.ay, ptr %.0.i.i.i.i.i.i.i.1, align 4, !tbaa !324
  %.sroa.6.1.i.i.1 = tail call i32 @llvm.usub.sat.i32(i32 %.sroa.6.0.i.i, i32 2)
  %.sroa.018.1.i.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.018.1.i.i, i64 %.sroa.018.1.idx.i.i.1
  %i.az = add nsw i32 %.sroa.4.06.i.i.i.i, -2     ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i, i64 4
  %.not.i.i.i.i9.1 = icmp eq i32 %i.az, 0
  br i1 %.not.i.i.i.i9.1, label %_ZNK2OT7LangSys19get_feature_indexesEjPjS1_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !97

_ZNK2OT7LangSys19get_feature_indexesEjPjS1_.exit: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.1, %_ZNK2OT6Script12get_lang_sysEj.exit, %_ZNK10hb_array_tIKN2OT5IndexEE9sub_arrayEjPj.exit.i.i
  ret i32 %.sroa.5.8.extract.trunc.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define noundef range(i32 0, 65536) i32 @hb_ot_layout_language_get_feature_tags(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef captures(address_is_null) %5, ptr nofree noundef captures(address_is_null) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc noundef nonnull align 1 dereferenceable(14) ptr @_ZL18get_gsubgpos_tableP9hb_face_tj(ptr noundef %0, i32 noundef %1) ; 6 uses
  %i.b = load i16, ptr %i.a, align 1, !tbaa !283
  %cond.i.i = icmp eq i16 %i.b, 256
  br i1 %cond.i.i, label %bb.b, label %_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.d = load i16, ptr %i.c, align 1, !tbaa !283  ; 2 uses
  %i.e = icmp eq i16 %i.d, 0
  %i.f = tail call i16 @llvm.bswap.i16(i16 %i.d)
  %i.g = zext i16 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.g
  %.0.i.i.i.i = select i1 %i.e, ptr @_hb_NullPool, ptr %i.h, !prof !267
  br label %_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i

_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i:       ; preds = %bb.b, %bb.a
  %.0.i.i = phi ptr [ %.0.i.i.i.i, %bb.b ], [ @_hb_NullPool, %bb.a ] ; 3 uses
  %i.i = load i16, ptr %.0.i.i, align 1, !tbaa !283
  %i.j = tail call noundef i16 @llvm.bswap.i16(i16 %i.i)
  %i.k = zext i16 %i.j to i32
  %.not.i.i.i.i = icmp ult i32 %2, %i.k
  br i1 %.not.i.i.i.i, label %bb.c, label %_ZNK2OT8GSUBGPOS10get_scriptEj.exit, !prof !268

bb.c:                                             ; preds = %_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 2
  %i.m = zext nneg i32 %2 to i64
  %i.n = getelementptr inbounds nuw [6 x i8], ptr %i.l, i64 %i.m
  br label %_ZNK2OT8GSUBGPOS10get_scriptEj.exit

_ZNK2OT8GSUBGPOS10get_scriptEj.exit:              ; preds = %_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i, %bb.c
  %.0.i.i.i1.i = phi ptr [ %i.n, %bb.c ], [ @_hb_NullPool, %_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i.i.i1.i, i64 4
  %i.p = load i16, ptr %i.o, align 1, !tbaa !283  ; 2 uses
  %i.q = icmp eq i16 %i.p, 0
  %i.r = tail call i16 @llvm.bswap.i16(i16 %i.p)
  %i.s = zext i16 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.s
  %.0.i.i1.i.i = select i1 %i.q, ptr @_hb_NullPool, ptr %i.t, !prof !267 ; 4 uses
  %i.u = icmp eq i32 %3, 65535
  br i1 %i.u, label %_ZNK2OT6Script12get_lang_sysEj.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK2OT8GSUBGPOS10get_scriptEj.exit
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i.i1.i.i, i64 2
  %i.w = load i16, ptr %i.v, align 1, !tbaa !283
  %i.x = tail call noundef i16 @llvm.bswap.i16(i16 %i.w)
  %i.y = zext i16 %i.x to i32
  %.not.i.i = icmp ult i32 %3, %i.y
  br i1 %.not.i.i, label %bb.e, label %_ZNK2OT7ArrayOfINS_6RecordINS_7LangSysEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i, !prof !268

bb.e:                                             ; preds = %bb.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i.i1.i.i, i64 4
  %i.aa = zext nneg i32 %3 to i64
  %i.ab = getelementptr inbounds nuw [6 x i8], ptr %i.z, i64 %i.aa
  br label %_ZNK2OT7ArrayOfINS_6RecordINS_7LangSysEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i

_ZNK2OT7ArrayOfINS_6RecordINS_7LangSysEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i: ; preds = %bb.e, %bb.d
  %.0.i.i23 = phi ptr [ %i.ab, %bb.e ], [ @_hb_NullPool, %bb.d ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i.i23, i64 4
  br label %_ZNK2OT6Script12get_lang_sysEj.exit

_ZNK2OT6Script12get_lang_sysEj.exit:              ; preds = %_ZNK2OT8GSUBGPOS10get_scriptEj.exit, %_ZNK2OT7ArrayOfINS_6RecordINS_7LangSysEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i
  %.sink9.in.i = phi ptr [ %i.ac, %_ZNK2OT7ArrayOfINS_6RecordINS_7LangSysEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i ], [ %.0.i.i1.i.i, %_ZNK2OT8GSUBGPOS10get_scriptEj.exit ]
  %.sink9.i = load i16, ptr %.sink9.in.i, align 1, !tbaa !283 ; 2 uses
  %i.ad = icmp eq i16 %.sink9.i, 0
  %i.ae = tail call i16 @llvm.bswap.i16(i16 %.sink9.i)
  %i.af = zext i16 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i.i1.i.i, i64 %i.af
  %.0.i.i.i = select i1 %i.ad, ptr @_hb_Null_OT_LangSys, ptr %i.ag, !prof !267 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4
  %i.ai = icmp ne ptr %5, null
  %i.aj = icmp ne ptr %6, null
  %or.cond.i.i = and i1 %i.ai, %i.aj
  %.pre28.i.i = load i16, ptr %i.ah, align 1, !tbaa !283
  %i.ak = tail call noundef i16 @llvm.bswap.i16(i16 %.pre28.i.i)
  %.sroa.5.8.extract.trunc.i.i = zext i16 %i.ak to i32 ; 2 uses
  br i1 %or.cond.i.i, label %_ZNK10hb_array_tIKN2OT5IndexEE9sub_arrayEjPj.exit.i.i, label %_ZNK2OT7LangSys19get_feature_indexesEjPjS1_.exit.thread29

_ZNK10hb_array_tIKN2OT5IndexEE9sub_arrayEjPj.exit.i.i: ; preds = %_ZNK2OT6Script12get_lang_sysEj.exit
  %storemerge.i.i.i = tail call i32 @llvm.usub.sat.i32(i32 %.sroa.5.8.extract.trunc.i.i, i32 %4)
  %i.al = load i32, ptr %5, align 4, !tbaa !324
  %.sroa.speculated.i.i.i = tail call i32 @llvm.umin.i32(i32 %storemerge.i.i.i, i32 %i.al) ; 8 uses
  store i32 %.sroa.speculated.i.i.i, ptr %5, align 4, !tbaa !324
  %.not5.i.i.i.i = icmp eq i32 %.sroa.speculated.i.i.i, 0
  br i1 %.not5.i.i.i.i, label %_ZNK2OT7LangSys19get_feature_indexesEjPjS1_.exit.thread29, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %_ZNK10hb_array_tIKN2OT5IndexEE9sub_arrayEjPj.exit.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 6
  %i.an = zext i32 %4 to i64
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.an ; 3 uses
  %xtraiter = and i32 %.sroa.speculated.i.i.i, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.preheader.i.i
  %.sroa.0.0.copyload.i.i.i.i.prol = load i16, ptr %i.ao, align 1
  %i.ap = tail call noundef i16 @llvm.bswap.i16(i16 %.sroa.0.0.copyload.i.i.i.i.prol)
  %i.aq = zext i16 %i.ap to i32
  store i32 %i.aq, ptr %6, align 4, !tbaa !324
  %.sroa.6.1.i.i.prol = add nsw i32 %.sroa.speculated.i.i.i, -1
  %.sroa.018.1.i.i.prol = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.ar = add nsw i32 %.sroa.speculated.i.i.i, -1
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 2
  br label %.lr.ph.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.preheader.i.i
  %.sroa.6.0.i.i.unr = phi i32 [ %.sroa.speculated.i.i.i, %.lr.ph.i.i.preheader.i.i ], [ %.sroa.6.1.i.i.prol, %.lr.ph.i.i.i.i.prol ]
  %.sroa.018.0.i.i.unr = phi ptr [ %6, %.lr.ph.i.i.preheader.i.i ], [ %.sroa.018.1.i.i.prol, %.lr.ph.i.i.i.i.prol ]
  %.sroa.0.07.i.i.i.i.unr = phi ptr [ %i.ao, %.lr.ph.i.i.preheader.i.i ], [ %i.as, %.lr.ph.i.i.i.i.prol ]
  %.sroa.4.06.i.i.i.i.unr = phi i32 [ %.sroa.speculated.i.i.i, %.lr.ph.i.i.preheader.i.i ], [ %i.ar, %.lr.ph.i.i.i.i.prol ]
  %i.at = icmp eq i32 %.sroa.speculated.i.i.i, 1
  br i1 %i.at, label %_ZNK2OT7LangSys19get_feature_indexesEjPjS1_.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.1
  %.sroa.6.0.i.i = phi i32 [ %.sroa.6.1.i.i.1, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.1 ], [ %.sroa.6.0.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 3 uses
  %.sroa.018.0.i.i = phi ptr [ %.sroa.018.1.i.i.1, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.1 ], [ %.sroa.018.0.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.0.07.i.i.i.i = phi ptr [ %i.ba, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.1 ], [ %.sroa.0.07.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 3 uses
  %.sroa.4.06.i.i.i.i = phi i32 [ %i.az, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.1 ], [ %.sroa.4.06.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.sroa.0.0.copyload.i.i.i.i = load i16, ptr %.sroa.0.07.i.i.i.i, align 1
  %i.au = tail call noundef i16 @llvm.bswap.i16(i16 %.sroa.0.0.copyload.i.i.i.i)
  %i.av = zext i16 %i.au to i32
  %.not.i.i.i.i.i.i.i = icmp eq i32 %.sroa.6.0.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i, !prof !267

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  store i32 0, ptr @_hb_CrapPool, align 16
  br label %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i

_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i
  %.sroa.018.1.idx.i.i = phi i64 [ 0, %bb.f ], [ 4, %.lr.ph.i.i.i.i ]
  %.0.i.i.i.i.i.i.i = phi ptr [ @_hb_CrapPool, %bb.f ], [ %.sroa.018.0.i.i, %.lr.ph.i.i.i.i ]
  store i32 %i.av, ptr %.0.i.i.i.i.i.i.i, align 4, !tbaa !324
  %.sroa.018.1.i.i = getelementptr inbounds nuw i8, ptr %.sroa.018.0.i.i, i64 %.sroa.018.1.idx.i.i ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i, i64 2
  %.sroa.0.0.copyload.i.i.i.i.1 = load i16, ptr %i.aw, align 1
  %i.ax = tail call noundef i16 @llvm.bswap.i16(i16 %.sroa.0.0.copyload.i.i.i.i.1)
  %i.ay = zext i16 %i.ax to i32
  %.not.i.i.i.i.i.i.i.1 = icmp ult i32 %.sroa.6.0.i.i, 2
  br i1 %.not.i.i.i.i.i.i.i.1, label %bb.g, label %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.1, !prof !267

bb.g:                                             ; preds = %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i
  store i32 0, ptr @_hb_CrapPool, align 16
  br label %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.1

_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.1: ; preds = %bb.g, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i
  %.sroa.018.1.idx.i.i.1 = phi i64 [ 0, %bb.g ], [ 4, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i ]
  %.0.i.i.i.i.i.i.i.1 = phi ptr [ @_hb_CrapPool, %bb.g ], [ %.sroa.018.1.i.i, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i ]
  store i32 %i.ay, ptr %.0.i.i.i.i.i.i.i.1, align 4, !tbaa !324
  %.sroa.6.1.i.i.1 = tail call i32 @llvm.usub.sat.i32(i32 %.sroa.6.0.i.i, i32 2)
  %.sroa.018.1.i.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.018.1.i.i, i64 %.sroa.018.1.idx.i.i.1
  %i.az = add nsw i32 %.sroa.4.06.i.i.i.i, -2     ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i, i64 4
  %.not.i.i.i.i24.1 = icmp eq i32 %i.az, 0
  br i1 %.not.i.i.i.i24.1, label %_ZNK2OT7LangSys19get_feature_indexesEjPjS1_.exit.thread, label %.lr.ph.i.i.i.i, !llvm.loop !97

_ZNK2OT7LangSys19get_feature_indexesEjPjS1_.exit.thread: ; preds = %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.1, %.lr.ph.i.i.i.i.prol.loopexit
  %.pre = load i32, ptr %5, align 4, !tbaa !324   ; 2 uses
  %.not = icmp eq i32 %.pre, 0
  br i1 %.not, label %_ZNK2OT7LangSys19get_feature_indexesEjPjS1_.exit.thread29, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK2OT7LangSys19get_feature_indexesEjPjS1_.exit.thread
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %wide.trip.count = zext i32 %.pre to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %_ZNK2OT8GSUBGPOS15get_feature_tagEj.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNK2OT8GSUBGPOS15get_feature_tagEj.exit ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !324 ; 3 uses
  %i.be = icmp eq i32 %i.bd, 65535
  br i1 %i.be, label %_ZNK2OT8GSUBGPOS15get_feature_tagEj.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = load i16, ptr %i.a, align 1, !tbaa !283
  %cond.i.i25 = icmp eq i16 %i.bf, 256
  br i1 %cond.i.i25, label %bb.j, label %_ZNK2OT8GSUBGPOS16get_feature_listEv.exit.i

bb.j:                                             ; preds = %bb.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.bg = load i16, ptr %i.bb, align 1, !tbaa !283 ; 2 uses
  %i.bh = icmp eq i16 %i.bg, 0
  %i.bi = tail call i16 @llvm.bswap.i16(i16 %i.bg)
  %i.bj = zext i16 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bj
  %.0.i.i.i.i28 = select i1 %i.bh, ptr @_hb_NullPool, ptr %i.bk, !prof !267
  br label %_ZNK2OT8GSUBGPOS16get_feature_listEv.exit.i

_ZNK2OT8GSUBGPOS16get_feature_listEv.exit.i:      ; preds = %bb.j, %bb.i
  %.0.i.i26 = phi ptr [ %.0.i.i.i.i28, %bb.j ], [ @_hb_NullPool, %bb.i ] ; 2 uses
  %i.bl = load i16, ptr %.0.i.i26, align 1, !tbaa !283
  %i.bm = tail call noundef i16 @llvm.bswap.i16(i16 %i.bl)
  %i.bn = zext i16 %i.bm to i32
  %.not.i.i.i = icmp ult i32 %i.bd, %i.bn
  br i1 %.not.i.i.i, label %bb.k, label %_ZNK2OT13RecordArrayOfINS_7FeatureEE7get_tagEj.exit.i, !prof !268

bb.k:                                             ; preds = %_ZNK2OT8GSUBGPOS16get_feature_listEv.exit.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.i.i26, i64 2
  %i.bp = zext nneg i32 %i.bd to i64
  %i.bq = getelementptr inbounds nuw [6 x i8], ptr %i.bo, i64 %i.bp
  br label %_ZNK2OT13RecordArrayOfINS_7FeatureEE7get_tagEj.exit.i

_ZNK2OT13RecordArrayOfINS_7FeatureEE7get_tagEj.exit.i: ; preds = %bb.k, %_ZNK2OT8GSUBGPOS16get_feature_listEv.exit.i
  %.0.i.i.i27 = phi ptr [ %i.bq, %bb.k ], [ @_hb_NullPool, %_ZNK2OT8GSUBGPOS16get_feature_listEv.exit.i ]
  %i.br = load i32, ptr %.0.i.i.i27, align 1, !tbaa !278
  %i.bs = tail call noundef i32 @llvm.bswap.i32(i32 %i.br)
  br label %_ZNK2OT8GSUBGPOS15get_feature_tagEj.exit

_ZNK2OT8GSUBGPOS15get_feature_tagEj.exit:         ; preds = %bb.h, %_ZNK2OT13RecordArrayOfINS_7FeatureEE7get_tagEj.exit.i
  %i.bt = phi i32 [ %i.bs, %_ZNK2OT13RecordArrayOfINS_7FeatureEE7get_tagEj.exit.i ], [ 0, %bb.h ]
  store i32 %i.bt, ptr %i.bc, align 4, !tbaa !324
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZNK2OT7LangSys19get_feature_indexesEjPjS1_.exit.thread29, label %bb.h, !llvm.loop !2649

_ZNK2OT7LangSys19get_feature_indexesEjPjS1_.exit.thread29: ; preds = %_ZNK2OT8GSUBGPOS15get_feature_tagEj.exit, %_ZNK10hb_array_tIKN2OT5IndexEE9sub_arrayEjPj.exit.i.i, %_ZNK2OT7LangSys19get_feature_indexesEjPjS1_.exit.thread, %_ZNK2OT6Script12get_lang_sysEj.exit
  ret i32 %.sroa.5.8.extract.trunc.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @hb_ot_layout_language_find_feature(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef writeonly captures(address_is_null) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc noundef nonnull align 1 dereferenceable(14) ptr @_ZL18get_gsubgpos_tableP9hb_face_tj(ptr noundef %0, i32 noundef %1) ; 6 uses
  %i.b = load i16, ptr %i.a, align 1, !tbaa !283
  %cond.i.i = icmp eq i16 %i.b, 256
  br i1 %cond.i.i, label %bb.b, label %_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.d = load i16, ptr %i.c, align 1, !tbaa !283  ; 2 uses
  %i.e = icmp eq i16 %i.d, 0
  %i.f = tail call i16 @llvm.bswap.i16(i16 %i.d)
  %i.g = zext i16 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.g
  %.0.i.i.i.i = select i1 %i.e, ptr @_hb_NullPool, ptr %i.h, !prof !267
  br label %_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i

_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i:       ; preds = %bb.b, %bb.a
  %.0.i.i = phi ptr [ %.0.i.i.i.i, %bb.b ], [ @_hb_NullPool, %bb.a ] ; 3 uses
  %i.i = load i16, ptr %.0.i.i, align 1, !tbaa !283
  %i.j = tail call noundef i16 @llvm.bswap.i16(i16 %i.i)
  %i.k = zext i16 %i.j to i32
  %.not.i.i.i.i = icmp ult i32 %2, %i.k
  br i1 %.not.i.i.i.i, label %bb.c, label %_ZNK2OT8GSUBGPOS10get_scriptEj.exit, !prof !268

bb.c:                                             ; preds = %_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 2
  %i.m = zext nneg i32 %2 to i64
  %i.n = getelementptr inbounds nuw [6 x i8], ptr %i.l, i64 %i.m
  br label %_ZNK2OT8GSUBGPOS10get_scriptEj.exit

_ZNK2OT8GSUBGPOS10get_scriptEj.exit:              ; preds = %_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i, %bb.c
  %.0.i.i.i1.i = phi ptr [ %i.n, %bb.c ], [ @_hb_NullPool, %_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i.i.i1.i, i64 4
  %i.p = load i16, ptr %i.o, align 1, !tbaa !283  ; 2 uses
  %i.q = icmp eq i16 %i.p, 0
  %i.r = tail call i16 @llvm.bswap.i16(i16 %i.p)
  %i.s = zext i16 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.s
  %.0.i.i1.i.i = select i1 %i.q, ptr @_hb_NullPool, ptr %i.t, !prof !267 ; 4 uses
  %i.u = icmp eq i32 %3, 65535
  br i1 %i.u, label %_ZNK2OT6Script12get_lang_sysEj.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK2OT8GSUBGPOS10get_scriptEj.exit
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i.i1.i.i, i64 2
  %i.w = load i16, ptr %i.v, align 1, !tbaa !283
  %i.x = tail call noundef i16 @llvm.bswap.i16(i16 %i.w)
  %i.y = zext i16 %i.x to i32
  %.not.i.i = icmp ult i32 %3, %i.y
  br i1 %.not.i.i, label %bb.e, label %_ZNK2OT7ArrayOfINS_6RecordINS_7LangSysEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i, !prof !268

bb.e:                                             ; preds = %bb.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i.i1.i.i, i64 4
  %i.aa = zext nneg i32 %3 to i64
  %i.ab = getelementptr inbounds nuw [6 x i8], ptr %i.z, i64 %i.aa
  br label %_ZNK2OT7ArrayOfINS_6RecordINS_7LangSysEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i

_ZNK2OT7ArrayOfINS_6RecordINS_7LangSysEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i: ; preds = %bb.e, %bb.d
  %.0.i.i32 = phi ptr [ %i.ab, %bb.e ], [ @_hb_NullPool, %bb.d ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i.i32, i64 4
  br label %_ZNK2OT6Script12get_lang_sysEj.exit

_ZNK2OT6Script12get_lang_sysEj.exit:              ; preds = %_ZNK2OT8GSUBGPOS10get_scriptEj.exit, %_ZNK2OT7ArrayOfINS_6RecordINS_7LangSysEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i
  %.sink9.in.i = phi ptr [ %i.ac, %_ZNK2OT7ArrayOfINS_6RecordINS_7LangSysEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i ], [ %.0.i.i1.i.i, %_ZNK2OT8GSUBGPOS10get_scriptEj.exit ]
  %.sink9.i = load i16, ptr %.sink9.in.i, align 1, !tbaa !283 ; 2 uses
  %i.ad = icmp eq i16 %.sink9.i, 0
  %i.ae = tail call i16 @llvm.bswap.i16(i16 %.sink9.i)
  %i.af = zext i16 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i.i1.i.i, i64 %i.af
  %.0.i.i.i = select i1 %i.ad, ptr @_hb_Null_OT_LangSys, ptr %i.ag, !prof !267 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4 ; 2 uses
  %i.ai = load i16, ptr %i.ah, align 1, !tbaa !283 ; 2 uses
  %.not2840.not = icmp eq i16 %i.ai, 0
  br i1 %.not2840.not, label %.critedge31, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK2OT6Script12get_lang_sysEj.exit
  %i.aj = tail call noundef i16 @llvm.bswap.i16(i16 %i.ai)
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 6
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %wide.trip.count = zext i16 %i.aj to i64
  br label %bb.g

bb.f:                                             ; preds = %_ZNK2OT8GSUBGPOS15get_feature_tagEj.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge31, label %bb.g, !llvm.loop !2650

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %i.am = load i16, ptr %i.ah, align 1, !tbaa !283
  %i.an = tail call noundef i16 @llvm.bswap.i16(i16 %i.am)
  %i.ao = zext i16 %i.an to i64
  %.not.i.i33 = icmp samesign ult i64 %indvars.iv, %i.ao
  br i1 %.not.i.i33, label %bb.h, label %_ZNK2OT7LangSys17get_feature_indexEj.exit, !prof !268

bb.h:                                             ; preds = %bb.g
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %indvars.iv
  br label %_ZNK2OT7LangSys17get_feature_indexEj.exit

_ZNK2OT7LangSys17get_feature_indexEj.exit:        ; preds = %bb.g, %bb.h
  %.0.i.i34 = phi ptr [ %i.ap, %bb.h ], [ @_hb_Null_OT_Index, %bb.g ]
  %i.aq = load i16, ptr %.0.i.i34, align 1, !tbaa !283 ; 2 uses
  %i.ar = tail call noundef i16 @llvm.bswap.i16(i16 %i.aq) ; 3 uses
  %i.as = icmp eq i16 %i.aq, -1
  br i1 %i.as, label %_ZNK2OT8GSUBGPOS15get_feature_tagEj.exit, label %bb.i

bb.i:                                             ; preds = %_ZNK2OT7LangSys17get_feature_indexEj.exit
  %i.at = load i16, ptr %i.a, align 1, !tbaa !283
  %cond.i.i35 = icmp eq i16 %i.at, 256
  br i1 %cond.i.i35, label %bb.j, label %_ZNK2OT8GSUBGPOS16get_feature_listEv.exit.i

bb.j:                                             ; preds = %bb.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.au = load i16, ptr %i.al, align 1, !tbaa !283 ; 2 uses
  %i.av = icmp eq i16 %i.au, 0
  %i.aw = tail call i16 @llvm.bswap.i16(i16 %i.au)
  %i.ax = zext i16 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ax
  %.0.i.i.i.i38 = select i1 %i.av, ptr @_hb_NullPool, ptr %i.ay, !prof !267
  br label %_ZNK2OT8GSUBGPOS16get_feature_listEv.exit.i

_ZNK2OT8GSUBGPOS16get_feature_listEv.exit.i:      ; preds = %bb.j, %bb.i
  %.0.i.i36 = phi ptr [ %.0.i.i.i.i38, %bb.j ], [ @_hb_NullPool, %bb.i ] ; 2 uses
  %i.az = load i16, ptr %.0.i.i36, align 1, !tbaa !283
  %i.ba = tail call noundef i16 @llvm.bswap.i16(i16 %i.az)
  %.not.i.i.i = icmp ult i16 %i.ar, %i.ba
  br i1 %.not.i.i.i, label %bb.k, label %_ZNK2OT13RecordArrayOfINS_7FeatureEE7get_tagEj.exit.i, !prof !268

bb.k:                                             ; preds = %_ZNK2OT8GSUBGPOS16get_feature_listEv.exit.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i.i36, i64 2
  %i.bc = zext i16 %i.ar to i64
  %i.bd = getelementptr inbounds nuw [6 x i8], ptr %i.bb, i64 %i.bc
  br label %_ZNK2OT13RecordArrayOfINS_7FeatureEE7get_tagEj.exit.i

_ZNK2OT13RecordArrayOfINS_7FeatureEE7get_tagEj.exit.i: ; preds = %bb.k, %_ZNK2OT8GSUBGPOS16get_feature_listEv.exit.i
  %.0.i.i.i37 = phi ptr [ %i.bd, %bb.k ], [ @_hb_NullPool, %_ZNK2OT8GSUBGPOS16get_feature_listEv.exit.i ]
  %i.be = load i32, ptr %.0.i.i.i37, align 1, !tbaa !278
  %i.bf = tail call noundef i32 @llvm.bswap.i32(i32 %i.be)
  br label %_ZNK2OT8GSUBGPOS15get_feature_tagEj.exit

_ZNK2OT8GSUBGPOS15get_feature_tagEj.exit:         ; preds = %_ZNK2OT7LangSys17get_feature_indexEj.exit, %_ZNK2OT13RecordArrayOfINS_7FeatureEE7get_tagEj.exit.i
  %i.bg = phi i32 [ %i.bf, %_ZNK2OT13RecordArrayOfINS_7FeatureEE7get_tagEj.exit.i ], [ 0, %_ZNK2OT7LangSys17get_feature_indexEj.exit ]
  %.not27 = icmp eq i32 %4, %i.bg
  br i1 %.not27, label %bb.l, label %bb.f

bb.l:                                             ; preds = %_ZNK2OT8GSUBGPOS15get_feature_tagEj.exit
  %.not = icmp eq ptr %5, null
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bh = zext i16 %i.ar to i32
  br label %.sink.split

.critedge31:                                      ; preds = %bb.f, %_ZNK2OT6Script12get_lang_sysEj.exit
  %.not29 = icmp eq ptr %5, null
  br i1 %.not29, label %bb.n, label %.sink.split

.sink.split:                                      ; preds = %.critedge31, %bb.m
  %.sink = phi i32 [ %i.bh, %bb.m ], [ 65535, %.critedge31 ]
  %.3.ph = phi i32 [ 1, %bb.m ], [ 0, %.critedge31 ]
  store i32 %.sink, ptr %5, align 4, !tbaa !324
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.l, %.critedge31
  %.3 = phi i32 [ 0, %.critedge31 ], [ 1, %bb.l ], [ %.3.ph, %.sink.split ]
  ret i32 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define noundef range(i32 0, 65536) i32 @hb_ot_layout_feature_get_lookups(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef captures(address_is_null) %4, ptr nofree noundef writeonly captures(address_is_null) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc noundef nonnull align 1 dereferenceable(14) ptr @_ZL18get_gsubgpos_tableP9hb_face_tj(ptr noundef %0, i32 noundef %1) ; 3 uses
  %i.b = load i16, ptr %i.a, align 1, !tbaa !283
  %cond.i.i.i = icmp eq i16 %i.b, 256
  br i1 %cond.i.i.i, label %bb.b, label %_ZNK2OT8GSUBGPOS16get_feature_listEv.exit.i.i

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.d = load i16, ptr %i.c, align 1, !tbaa !283  ; 2 uses
  %i.e = icmp eq i16 %i.d, 0
  %i.f = tail call i16 @llvm.bswap.i16(i16 %i.d)
  %i.g = zext i16 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.g
  %.0.i.i.i.i13.i = select i1 %i.e, ptr @_hb_NullPool, ptr %i.h, !prof !267
  br label %_ZNK2OT8GSUBGPOS16get_feature_listEv.exit.i.i

_ZNK2OT8GSUBGPOS16get_feature_listEv.exit.i.i:    ; preds = %bb.b, %bb.a
  %.0.i.i12.i = phi ptr [ %.0.i.i.i.i13.i, %bb.b ], [ @_hb_NullPool, %bb.a ] ; 3 uses
  %i.i = load i16, ptr %.0.i.i12.i, align 1, !tbaa !283
  %i.j = tail call noundef i16 @llvm.bswap.i16(i16 %i.i)
  %i.k = zext i16 %i.j to i32
  %.not.i.i.i.i.i5 = icmp ult i32 %2, %i.k
  br i1 %.not.i.i.i.i.i5, label %bb.c, label %_ZNK2OT8GSUBGPOS21get_feature_variationEjj.exit, !prof !268

bb.c:                                             ; preds = %_ZNK2OT8GSUBGPOS16get_feature_listEv.exit.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i.i12.i, i64 2
  %i.m = zext nneg i32 %2 to i64
  %i.n = getelementptr inbounds nuw [6 x i8], ptr %i.l, i64 %i.m
  br label %_ZNK2OT8GSUBGPOS21get_feature_variationEjj.exit

_ZNK2OT8GSUBGPOS21get_feature_variationEjj.exit:  ; preds = %_ZNK2OT8GSUBGPOS16get_feature_listEv.exit.i.i, %bb.c
  %.0.i.i.i1.i.i = phi ptr [ %i.n, %bb.c ], [ @_hb_NullPool, %_ZNK2OT8GSUBGPOS16get_feature_listEv.exit.i.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i.i.i1.i.i, i64 4
  %i.p = load i16, ptr %i.o, align 1, !tbaa !283  ; 2 uses
  %i.q = icmp eq i16 %i.p, 0
  %i.r = tail call i16 @llvm.bswap.i16(i16 %i.p)
  %i.s = zext i16 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i12.i, i64 %i.s
  %.0.i.i1.i.i.i = select i1 %i.q, ptr @_hb_NullPool, ptr %i.t, !prof !267 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i.i1.i.i.i, i64 2 ; 2 uses
  %i.v = icmp ne ptr %4, null
  %i.w = icmp ne ptr %5, null
  %or.cond.i.i.i = and i1 %i.v, %i.w
  %.pre28.i.i.i = load i16, ptr %i.u, align 1, !tbaa !283 ; 3 uses
  br i1 %or.cond.i.i.i, label %_ZNK10hb_array_tIKN2OT5IndexEE9sub_arrayEjPj.exit.i.i.i, label %hb_ot_layout_feature_with_variations_get_lookups.exit

_ZNK10hb_array_tIKN2OT5IndexEE9sub_arrayEjPj.exit.i.i.i: ; preds = %_ZNK2OT8GSUBGPOS21get_feature_variationEjj.exit
  %i.x = tail call noundef i16 @llvm.bswap.i16(i16 %.pre28.i.i.i)
  %.sroa.5.8.extract.trunc.i.i.i = zext i16 %i.x to i32
  %storemerge.i.i.i.i = tail call i32 @llvm.usub.sat.i32(i32 %.sroa.5.8.extract.trunc.i.i.i, i32 %3)
  %i.y = load i32, ptr %4, align 4, !tbaa !324
  %.sroa.speculated.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %storemerge.i.i.i.i, i32 %i.y) ; 8 uses
  store i32 %.sroa.speculated.i.i.i.i, ptr %4, align 4, !tbaa !324
  %.not5.i.i.i.i.i = icmp eq i32 %.sroa.speculated.i.i.i.i, 0
  br i1 %.not5.i.i.i.i.i, label %hb_ot_layout_feature_with_variations_get_lookups.exit, label %.lr.ph.i.i.preheader.i.i.i

.lr.ph.i.i.preheader.i.i.i:                       ; preds = %_ZNK10hb_array_tIKN2OT5IndexEE9sub_arrayEjPj.exit.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i.i1.i.i.i, i64 4
  %i.aa = zext i32 %3 to i64
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %i.aa ; 3 uses
  %xtraiter = and i32 %.sroa.speculated.i.i.i.i, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.preheader.i.i.i
  %.sroa.0.0.copyload.i.i.i.i.i.prol = load i16, ptr %i.ab, align 1
  %i.ac = tail call noundef i16 @llvm.bswap.i16(i16 %.sroa.0.0.copyload.i.i.i.i.i.prol)
  %i.ad = zext i16 %i.ac to i32
  store i32 %i.ad, ptr %5, align 4, !tbaa !324
  %.sroa.6.1.i.i.i.prol = add nsw i32 %.sroa.speculated.i.i.i.i, -1
  %.sroa.018.1.i.i.i.prol = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ae = add nsw i32 %.sroa.speculated.i.i.i.i, -1
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  br label %.lr.ph.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.preheader.i.i.i
  %.sroa.6.0.i.i.i.unr = phi i32 [ %.sroa.speculated.i.i.i.i, %.lr.ph.i.i.preheader.i.i.i ], [ %.sroa.6.1.i.i.i.prol, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.018.0.i.i.i.unr = phi ptr [ %5, %.lr.ph.i.i.preheader.i.i.i ], [ %.sroa.018.1.i.i.i.prol, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.0.07.i.i.i.i.i.unr = phi ptr [ %i.ab, %.lr.ph.i.i.preheader.i.i.i ], [ %i.af, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.4.06.i.i.i.i.i.unr = phi i32 [ %.sroa.speculated.i.i.i.i, %.lr.ph.i.i.preheader.i.i.i ], [ %i.ae, %.lr.ph.i.i.i.i.i.prol ]
  %i.ag = icmp eq i32 %.sroa.speculated.i.i.i.i, 1
  br i1 %i.ag, label %_ZorI10hb_array_tIKN2OT5IndexEE9hb_sink_tIS0_IjEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS9_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS9_Efp_EEEOS9_OSF_.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.i.1
  %.sroa.6.0.i.i.i = phi i32 [ %.sroa.6.1.i.i.i.1, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.i.1 ], [ %.sroa.6.0.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.sroa.018.0.i.i.i = phi ptr [ %.sroa.018.1.i.i.i.1, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.i.1 ], [ %.sroa.018.0.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.0.07.i.i.i.i.i = phi ptr [ %i.an, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.i.1 ], [ %.sroa.0.07.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.sroa.4.06.i.i.i.i.i = phi i32 [ %i.am, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.i.1 ], [ %.sroa.4.06.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.sroa.0.0.copyload.i.i.i.i.i = load i16, ptr %.sroa.0.07.i.i.i.i.i, align 1
  %i.ah = tail call noundef i16 @llvm.bswap.i16(i16 %.sroa.0.0.copyload.i.i.i.i.i)
  %i.ai = zext i16 %i.ah to i32
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %.sroa.6.0.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.d, label %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.i, !prof !267

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  store i32 0, ptr @_hb_CrapPool, align 16
  br label %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.i

_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %.sroa.018.1.idx.i.i.i = phi i64 [ 0, %bb.d ], [ 4, %.lr.ph.i.i.i.i.i ]
  %.0.i.i.i.i.i.i.i.i = phi ptr [ @_hb_CrapPool, %bb.d ], [ %.sroa.018.0.i.i.i, %.lr.ph.i.i.i.i.i ]
  store i32 %i.ai, ptr %.0.i.i.i.i.i.i.i.i, align 4, !tbaa !324
  %.sroa.018.1.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.018.0.i.i.i, i64 %.sroa.018.1.idx.i.i.i ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 2
  %.sroa.0.0.copyload.i.i.i.i.i.1 = load i16, ptr %i.aj, align 1
  %i.ak = tail call noundef i16 @llvm.bswap.i16(i16 %.sroa.0.0.copyload.i.i.i.i.i.1)
  %i.al = zext i16 %i.ak to i32
  %.not.i.i.i.i.i.i.i.i.1 = icmp ult i32 %.sroa.6.0.i.i.i, 2
  br i1 %.not.i.i.i.i.i.i.i.i.1, label %bb.e, label %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.i.1, !prof !267

bb.e:                                             ; preds = %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.i
  store i32 0, ptr @_hb_CrapPool, align 16
  br label %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.i.1

_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.i.1: ; preds = %bb.e, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.i
  %.sroa.018.1.idx.i.i.i.1 = phi i64 [ 0, %bb.e ], [ 4, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.i ]
  %.0.i.i.i.i.i.i.i.i.1 = phi ptr [ @_hb_CrapPool, %bb.e ], [ %.sroa.018.1.i.i.i, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.i ]
  store i32 %i.al, ptr %.0.i.i.i.i.i.i.i.i.1, align 4, !tbaa !324
  %.sroa.6.1.i.i.i.1 = tail call i32 @llvm.usub.sat.i32(i32 %.sroa.6.0.i.i.i, i32 2)
  %.sroa.018.1.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.018.1.i.i.i, i64 %.sroa.018.1.idx.i.i.i.1
  %i.am = add nsw i32 %.sroa.4.06.i.i.i.i.i, -2   ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i.1 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i.i.i.1, label %_ZorI10hb_array_tIKN2OT5IndexEE9hb_sink_tIS0_IjEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS9_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS9_Efp_EEEOS9_OSF_.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !97

_ZorI10hb_array_tIKN2OT5IndexEE9hb_sink_tIS0_IjEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS9_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS9_Efp_EEEOS9_OSF_.exit.loopexit.i.i.i: ; preds = %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.prol.loopexit
  %.pre.i.i.i = load i16, ptr %i.u, align 1, !tbaa !283
  br label %hb_ot_layout_feature_with_variations_get_lookups.exit

hb_ot_layout_feature_with_variations_get_lookups.exit: ; preds = %_ZNK2OT8GSUBGPOS21get_feature_variationEjj.exit, %_ZNK10hb_array_tIKN2OT5IndexEE9sub_arrayEjPj.exit.i.i.i, %_ZorI10hb_array_tIKN2OT5IndexEE9hb_sink_tIS0_IjEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS9_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS9_Efp_EEEOS9_OSF_.exit.loopexit.i.i.i
  %i.ao = phi i16 [ %.pre.i.i.i, %_ZorI10hb_array_tIKN2OT5IndexEE9hb_sink_tIS0_IjEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS9_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS9_Efp_EEEOS9_OSF_.exit.loopexit.i.i.i ], [ %.pre28.i.i.i, %_ZNK10hb_array_tIKN2OT5IndexEE9sub_arrayEjPj.exit.i.i.i ], [ %.pre28.i.i.i, %_ZNK2OT8GSUBGPOS21get_feature_variationEjj.exit ]
  %i.ap = tail call noundef i16 @llvm.bswap.i16(i16 %i.ao)
  %i.aq = zext i16 %i.ap to i32
  ret i32 %i.aq
}

; Function Attrs: mustprogress nounwind uwtable
define noundef range(i32 0, 65536) i32 @hb_ot_layout_feature_with_variations_get_lookups(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef captures(address_is_null) %5, ptr nofree noundef writeonly captures(address_is_null) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc noundef nonnull align 1 dereferenceable(14) ptr @_ZL18get_gsubgpos_tableP9hb_face_tj(ptr noundef %0, i32 noundef %1)
  %i.b = tail call noundef nonnull align 1 dereferenceable(6) ptr @_ZNK2OT8GSUBGPOS21get_feature_variationEjj(ptr noundef nonnull align 1 dereferenceable(14) %i.a, i32 noundef %2, i32 noundef %3) ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 2 uses
  %i.d = icmp ne ptr %5, null
  %i.e = icmp ne ptr %6, null
  %or.cond.i.i = and i1 %i.d, %i.e
  %.pre28.i.i = load i16, ptr %i.c, align 1, !tbaa !283 ; 3 uses
  br i1 %or.cond.i.i, label %_ZNK10hb_array_tIKN2OT5IndexEE9sub_arrayEjPj.exit.i.i, label %_ZNK2OT7Feature18get_lookup_indexesEjPjS1_.exit

_ZNK10hb_array_tIKN2OT5IndexEE9sub_arrayEjPj.exit.i.i: ; preds = %bb.a
  %i.f = tail call noundef i16 @llvm.bswap.i16(i16 %.pre28.i.i)
  %.sroa.5.8.extract.trunc.i.i = zext i16 %i.f to i32
  %storemerge.i.i.i = tail call i32 @llvm.usub.sat.i32(i32 %.sroa.5.8.extract.trunc.i.i, i32 %4)
  %i.g = load i32, ptr %5, align 4, !tbaa !324
  %.sroa.speculated.i.i.i = tail call i32 @llvm.umin.i32(i32 %storemerge.i.i.i, i32 %i.g) ; 8 uses
  store i32 %.sroa.speculated.i.i.i, ptr %5, align 4, !tbaa !324
  %.not5.i.i.i.i = icmp eq i32 %.sroa.speculated.i.i.i, 0
  br i1 %.not5.i.i.i.i, label %_ZNK2OT7Feature18get_lookup_indexesEjPjS1_.exit, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %_ZNK10hb_array_tIKN2OT5IndexEE9sub_arrayEjPj.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.i = zext i32 %4 to i64
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.i ; 3 uses
  %xtraiter = and i32 %.sroa.speculated.i.i.i, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.preheader.i.i
  %.sroa.0.0.copyload.i.i.i.i.prol = load i16, ptr %i.j, align 1
  %i.k = tail call noundef i16 @llvm.bswap.i16(i16 %.sroa.0.0.copyload.i.i.i.i.prol)
  %i.l = zext i16 %i.k to i32
  store i32 %i.l, ptr %6, align 4, !tbaa !324
  %.sroa.6.1.i.i.prol = add nsw i32 %.sroa.speculated.i.i.i, -1
  %.sroa.018.1.i.i.prol = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.m = add nsw i32 %.sroa.speculated.i.i.i, -1
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  br label %.lr.ph.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.preheader.i.i
  %.sroa.6.0.i.i.unr = phi i32 [ %.sroa.speculated.i.i.i, %.lr.ph.i.i.preheader.i.i ], [ %.sroa.6.1.i.i.prol, %.lr.ph.i.i.i.i.prol ]
  %.sroa.018.0.i.i.unr = phi ptr [ %6, %.lr.ph.i.i.preheader.i.i ], [ %.sroa.018.1.i.i.prol, %.lr.ph.i.i.i.i.prol ]
  %.sroa.0.07.i.i.i.i.unr = phi ptr [ %i.j, %.lr.ph.i.i.preheader.i.i ], [ %i.n, %.lr.ph.i.i.i.i.prol ]
  %.sroa.4.06.i.i.i.i.unr = phi i32 [ %.sroa.speculated.i.i.i, %.lr.ph.i.i.preheader.i.i ], [ %i.m, %.lr.ph.i.i.i.i.prol ]
  %i.o = icmp eq i32 %.sroa.speculated.i.i.i, 1
  br i1 %i.o, label %_ZorI10hb_array_tIKN2OT5IndexEE9hb_sink_tIS0_IjEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS9_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS9_Efp_EEEOS9_OSF_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.1
  %.sroa.6.0.i.i = phi i32 [ %.sroa.6.1.i.i.1, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.1 ], [ %.sroa.6.0.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 3 uses
  %.sroa.018.0.i.i = phi ptr [ %.sroa.018.1.i.i.1, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.1 ], [ %.sroa.018.0.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.0.07.i.i.i.i = phi ptr [ %i.v, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.1 ], [ %.sroa.0.07.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 3 uses
  %.sroa.4.06.i.i.i.i = phi i32 [ %i.u, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.1 ], [ %.sroa.4.06.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.sroa.0.0.copyload.i.i.i.i = load i16, ptr %.sroa.0.07.i.i.i.i, align 1
  %i.p = tail call noundef i16 @llvm.bswap.i16(i16 %.sroa.0.0.copyload.i.i.i.i)
  %i.q = zext i16 %i.p to i32
  %.not.i.i.i.i.i.i.i = icmp eq i32 %.sroa.6.0.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.b, label %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i, !prof !267

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  store i32 0, ptr @_hb_CrapPool, align 16
  br label %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i

_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.sroa.018.1.idx.i.i = phi i64 [ 0, %bb.b ], [ 4, %.lr.ph.i.i.i.i ]
  %.0.i.i.i.i.i.i.i = phi ptr [ @_hb_CrapPool, %bb.b ], [ %.sroa.018.0.i.i, %.lr.ph.i.i.i.i ]
  store i32 %i.q, ptr %.0.i.i.i.i.i.i.i, align 4, !tbaa !324
  %.sroa.018.1.i.i = getelementptr inbounds nuw i8, ptr %.sroa.018.0.i.i, i64 %.sroa.018.1.idx.i.i ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i, i64 2
  %.sroa.0.0.copyload.i.i.i.i.1 = load i16, ptr %i.r, align 1
  %i.s = tail call noundef i16 @llvm.bswap.i16(i16 %.sroa.0.0.copyload.i.i.i.i.1)
  %i.t = zext i16 %i.s to i32
  %.not.i.i.i.i.i.i.i.1 = icmp ult i32 %.sroa.6.0.i.i, 2
  br i1 %.not.i.i.i.i.i.i.i.1, label %bb.c, label %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.1, !prof !267

bb.c:                                             ; preds = %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i
  store i32 0, ptr @_hb_CrapPool, align 16
  br label %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.1

_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.1: ; preds = %bb.c, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i
  %.sroa.018.1.idx.i.i.1 = phi i64 [ 0, %bb.c ], [ 4, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i ]
  %.0.i.i.i.i.i.i.i.1 = phi ptr [ @_hb_CrapPool, %bb.c ], [ %.sroa.018.1.i.i, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i ]
  store i32 %i.t, ptr %.0.i.i.i.i.i.i.i.1, align 4, !tbaa !324
  %.sroa.6.1.i.i.1 = tail call i32 @llvm.usub.sat.i32(i32 %.sroa.6.0.i.i, i32 2)
  %.sroa.018.1.i.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.018.1.i.i, i64 %.sroa.018.1.idx.i.i.1
  %i.u = add nsw i32 %.sroa.4.06.i.i.i.i, -2      ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i, i64 4
  %.not.i.i.i.i.1 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i.i.1, label %_ZorI10hb_array_tIKN2OT5IndexEE9hb_sink_tIS0_IjEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS9_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS9_Efp_EEEOS9_OSF_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !97

_ZorI10hb_array_tIKN2OT5IndexEE9hb_sink_tIS0_IjEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS9_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS9_Efp_EEEOS9_OSF_.exit.loopexit.i.i: ; preds = %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.1, %.lr.ph.i.i.i.i.prol.loopexit
  %.pre.i.i = load i16, ptr %i.c, align 1, !tbaa !283
  br label %_ZNK2OT7Feature18get_lookup_indexesEjPjS1_.exit

_ZNK2OT7Feature18get_lookup_indexesEjPjS1_.exit:  ; preds = %bb.a, %_ZNK10hb_array_tIKN2OT5IndexEE9sub_arrayEjPj.exit.i.i, %_ZorI10hb_array_tIKN2OT5IndexEE9hb_sink_tIS0_IjEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS9_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS9_Efp_EEEOS9_OSF_.exit.loopexit.i.i
  %i.w = phi i16 [ %.pre.i.i, %_ZorI10hb_array_tIKN2OT5IndexEE9hb_sink_tIS0_IjEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS9_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS9_Efp_EEEOS9_OSF_.exit.loopexit.i.i ], [ %.pre28.i.i, %_ZNK10hb_array_tIKN2OT5IndexEE9sub_arrayEjPj.exit.i.i ], [ %.pre28.i.i, %bb.a ]
  %i.x = tail call noundef i16 @llvm.bswap.i16(i16 %i.w)
  %i.y = zext i16 %i.x to i32
  ret i32 %i.y
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 65536) i32 @hb_ot_layout_table_get_lookup_count(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc noundef nonnull align 1 dereferenceable(14) ptr @_ZL18get_gsubgpos_tableP9hb_face_tj(ptr noundef %0, i32 noundef %1) ; 3 uses
  %i.b = load i16, ptr %i.a, align 1, !tbaa !283
  %cond.i = icmp eq i16 %i.b, 256
  br i1 %cond.i, label %bb.b, label %_ZNK2OT8GSUBGPOS16get_lookup_countEv.exit

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i16, ptr %i.c, align 1, !tbaa !283  ; 2 uses
  %i.e = icmp eq i16 %i.d, 0
  %i.f = tail call i16 @llvm.bswap.i16(i16 %i.d)
  %i.g = zext i16 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.g
  %.0.i.i.i = select i1 %i.e, ptr @_hb_NullPool, ptr %i.h, !prof !267
  %i.i = load i16, ptr %.0.i.i.i, align 1, !tbaa !283
  %i.j = tail call noundef i16 @llvm.bswap.i16(i16 %i.i)
  %i.k = zext i16 %i.j to i32
  br label %_ZNK2OT8GSUBGPOS16get_lookup_countEv.exit

_ZNK2OT8GSUBGPOS16get_lookup_countEv.exit:        ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.k, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define void @hb_ot_layout_collect_features(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.hb_collect_features_context_t, align 8 ; 36 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #63
  %i.a = tail call fastcc noundef nonnull align 1 dereferenceable(14) ptr @_ZL18get_gsubgpos_tableP9hb_face_tj(ptr noundef %0, i32 noundef %1)
  store ptr %i.a, ptr %6, align 8, !tbaa !2653
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %5, ptr %i.b, align 8, !tbaa !1177
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 36
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 48
  store atomic i32 1, ptr %i.c monotonic, align 8
  store atomic i8 1, ptr %i.d monotonic, align 4
  store atomic ptr null, ptr %i.e monotonic, align 8
  store i8 1, ptr %i.f, align 8, !tbaa !550
  store i32 0, ptr %i.g, align 4, !tbaa !549
  store atomic i32 0, ptr %i.h monotonic, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.i, i8 0, i64 33, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 88
  store i8 0, ptr %i.j, align 8, !tbaa !1178
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 100
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 104
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 112
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 116
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 120
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 128
  store atomic i32 1, ptr %i.k monotonic, align 8
  store atomic i8 1, ptr %i.l monotonic, align 4
  store atomic ptr null, ptr %i.m monotonic, align 8
  store i8 1, ptr %i.n, align 8, !tbaa !550
  store i32 0, ptr %i.o, align 4, !tbaa !549
  store atomic i32 0, ptr %i.p monotonic, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.q, i8 0, i64 33, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 168 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 172
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 176
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 184
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 188
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 192
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 200
  store atomic i32 1, ptr %i.r monotonic, align 8
  store atomic i8 1, ptr %i.s monotonic, align 4
  store atomic ptr null, ptr %i.t monotonic, align 8
  store i8 1, ptr %i.u, align 8, !tbaa !550
  store i32 0, ptr %i.v, align 4, !tbaa !549
  store atomic i32 0, ptr %i.w monotonic, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.x, i8 0, i64 33, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 240
  store i32 0, ptr %i.y, align 8, !tbaa !1179
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 244
  store i32 0, ptr %i.z, align 4, !tbaa !1180
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 248
  store i32 0, ptr %i.aa, align 8, !tbaa !1181
  call void @_ZN29hb_collect_features_context_t22compute_feature_filterEPKj(ptr noundef nonnull align 8 dereferenceable(252) %6, ptr noundef %4)
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.ab = load i32, ptr %2, align 4, !tbaa !324   ; 2 uses
  %.not1536 = icmp eq i32 %i.ab, 0
  br i1 %.not1536, label %.loopexit, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.ac = load ptr, ptr %6, align 8, !tbaa !1182, !nonnull !293 ; 3 uses
  %i.ad = load i16, ptr %i.ac, align 1, !tbaa !283
  %cond.i.i = icmp eq i16 %i.ad, 256
  br i1 %cond.i.i, label %bb.c, label %_ZNK2OT8GSUBGPOS16get_script_countEv.exit
end_hunk_12
begin_hunk_13_@hb_ot_layout_collect_features:bb.a
  %i.ar = call i16 @llvm.bswap.i16(i16 %i.ap)
  %i.as = zext i16 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.as
  %.0.i.i.i.i18 = select i1 %i.aq, ptr @_hb_NullPool, ptr %i.at, !prof !267
  br label %_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i

_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i:       ; preds = %bb.d, %.lr.ph39
  %.0.i.i17 = phi ptr [ %.0.i.i.i.i18, %bb.d ], [ @_hb_NullPool, %.lr.ph39 ] ; 3 uses
  %i.au = load i16, ptr %.0.i.i17, align 1, !tbaa !283
  %i.av = call noundef i16 @llvm.bswap.i16(i16 %i.au)
  %i.aw = zext i16 %i.av to i64
  %.not.i.i.i.i = icmp samesign ult i64 %indvars.iv, %i.aw
  br i1 %.not.i.i.i.i, label %bb.e, label %_ZNK2OT8GSUBGPOS10get_scriptEj.exit, !prof !268

bb.e:                                             ; preds = %_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.i.i17, i64 2
  %i.ay = getelementptr inbounds nuw [6 x i8], ptr %i.ax, i64 %indvars.iv
  br label %_ZNK2OT8GSUBGPOS10get_scriptEj.exit

_ZNK2OT8GSUBGPOS10get_scriptEj.exit:              ; preds = %_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i, %bb.e
  %.0.i.i.i1.i = phi ptr [ %i.ay, %bb.e ], [ @_hb_NullPool, %_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %.0.i.i.i1.i, i64 4
  %i.ba = load i16, ptr %i.az, align 1, !tbaa !283 ; 2 uses
  %i.bb = icmp eq i16 %i.ba, 0
  %i.bc = call i16 @llvm.bswap.i16(i16 %i.ba)
  %i.bd = zext i16 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %.0.i.i17, i64 %i.bd
  %.0.i.i1.i.i = select i1 %i.bb, ptr @_hb_NullPool, ptr %i.be, !prof !267
  call fastcc void @_ZL23script_collect_featuresP29hb_collect_features_context_tRKN2OT6ScriptEPKj(ptr noundef %6, ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i1.i.i, ptr noundef %3)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph39, !llvm.loop !2651

.lr.ph:                                           ; preds = %.preheader, %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit.thread
  %i.bf = phi i32 [ %i.cw, %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit.thread ], [ %i.ab, %.preheader ] ; 2 uses
  %.01337 = phi ptr [ %i.cv, %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit.thread ], [ %2, %.preheader ]
  %i.bg = load ptr, ptr %6, align 8, !tbaa !1182, !nonnull !293 ; 3 uses
  %i.bh = load i16, ptr %i.bg, align 1, !tbaa !283
  %cond.i.i19 = icmp eq i16 %i.bh, 256
  br i1 %cond.i.i19, label %bb.f, label %_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i20

bb.f:                                             ; preds = %.lr.ph
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.bj = load i16, ptr %i.bi, align 1, !tbaa !283 ; 2 uses
  %i.bk = icmp eq i16 %i.bj, 0
  %i.bl = call i16 @llvm.bswap.i16(i16 %i.bj)
  %i.bm = zext i16 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bm
  %.0.i.i.i.i23 = select i1 %i.bk, ptr @_hb_NullPool, ptr %i.bn, !prof !267
  br label %_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i20

_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i20:     ; preds = %bb.f, %.lr.ph
  %.0.i.i21 = phi ptr [ %.0.i.i.i.i23, %bb.f ], [ @_hb_NullPool, %.lr.ph ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.i.i21, i64 2
  %i.bp = load i16, ptr %.0.i.i21, align 1, !tbaa !283 ; 2 uses
  %.not1.i.i.i.not.i.i.i = icmp eq i16 %i.bp, 0
  br i1 %.not1.i.i.i.not.i.i.i, label %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit.thread, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i20
  %i.bq = call noundef i16 @llvm.bswap.i16(i16 %i.bp)
  %.sroa.4.8.extract.trunc.i.i.i = zext i16 %i.bq to i32
  %i.br = add nsw i32 %.sroa.4.8.extract.trunc.i.i.i, -1
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.j, %.lr.ph.preheader.i.i.i.i.i.i
  %.0203.i.i.i.i.i.i = phi i32 [ %.2.i.i.i.i.i.i, %bb.j ], [ %i.br, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.0212.i.i.i.i.i.i = phi i32 [ %.223.i.i.i.i.i.i, %bb.j ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %i.bs = add i32 %.0212.i.i.i.i.i.i, %.0203.i.i.i.i.i.i
  %i.bt = lshr i32 %i.bs, 1                       ; 4 uses
  %i.bu = zext nneg i32 %i.bt to i64              ; 2 uses
  %i.bv = mul nuw nsw i64 %i.bu, 6
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 1, !tbaa !278
  %i.by = call noundef i32 @llvm.bswap.i32(i32 %i.bx) ; 2 uses
  %i.bz = icmp ult i32 %i.bf, %i.by
  br i1 %i.bz, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ca = add nsw i32 %i.bt, -1
  br label %bb.j

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %.not28.i.i.i.i.i.i = icmp eq i32 %i.bf, %i.by
  br i1 %.not28.i.i.i.i.i.i, label %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cb = add nuw nsw i32 %i.bt, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g
  %.223.i.i.i.i.i.i = phi i32 [ %i.cb, %bb.i ], [ %.0212.i.i.i.i.i.i, %bb.g ] ; 2 uses
  %.2.i.i.i.i.i.i = phi i32 [ %.0203.i.i.i.i.i.i, %bb.i ], [ %i.ca, %bb.g ] ; 2 uses
  %.not.not.i.i.i.i.i.i = icmp sgt i32 %.223.i.i.i.i.i.i, %.2.i.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i.i, label %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit.thread, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !94

_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit:     ; preds = %bb.h
  %i.cc = load ptr, ptr %6, align 8, !tbaa !1182, !nonnull !293 ; 3 uses
  %i.cd = load i16, ptr %i.cc, align 1, !tbaa !283
  %cond.i.i24 = icmp eq i16 %i.cd, 256
  br i1 %cond.i.i24, label %bb.k, label %_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i25

bb.k:                                             ; preds = %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %i.cf = load i16, ptr %i.ce, align 1, !tbaa !283 ; 2 uses
  %i.cg = icmp eq i16 %i.cf, 0
  %i.ch = call i16 @llvm.bswap.i16(i16 %i.cf)
  %i.ci = zext i16 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.ci
  %.0.i.i.i.i30 = select i1 %i.cg, ptr @_hb_NullPool, ptr %i.cj, !prof !267
  br label %_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i25

_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i25:     ; preds = %bb.k, %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit
  %.0.i.i26 = phi ptr [ %.0.i.i.i.i30, %bb.k ], [ @_hb_NullPool, %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit ] ; 3 uses
  %i.ck = load i16, ptr %.0.i.i26, align 1, !tbaa !283
  %i.cl = call noundef i16 @llvm.bswap.i16(i16 %i.ck)
  %i.cm = zext i16 %i.cl to i32
  %.not.i.i.i.i27 = icmp samesign ult i32 %i.bt, %i.cm
  br i1 %.not.i.i.i.i27, label %bb.l, label %_ZNK2OT8GSUBGPOS10get_scriptEj.exit31, !prof !268

bb.l:                                             ; preds = %_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i25
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.i.i26, i64 2
  %i.co = getelementptr inbounds nuw [6 x i8], ptr %i.cn, i64 %i.bu
  br label %_ZNK2OT8GSUBGPOS10get_scriptEj.exit31

_ZNK2OT8GSUBGPOS10get_scriptEj.exit31:            ; preds = %_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i25, %bb.l
  %.0.i.i.i1.i28 = phi ptr [ %i.co, %bb.l ], [ @_hb_NullPool, %_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i25 ]
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.i.i.i1.i28, i64 4
  %i.cq = load i16, ptr %i.cp, align 1, !tbaa !283 ; 2 uses
  %i.cr = icmp eq i16 %i.cq, 0
  %i.cs = call i16 @llvm.bswap.i16(i16 %i.cq)
  %i.ct = zext i16 %i.cs to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %.0.i.i26, i64 %i.ct
  %.0.i.i1.i.i29 = select i1 %i.cr, ptr @_hb_NullPool, ptr %i.cu, !prof !267
  call fastcc void @_ZL23script_collect_featuresP29hb_collect_features_context_tRKN2OT6ScriptEPKj(ptr noundef %6, ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i1.i.i29, ptr noundef %3)
  br label %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit.thread

_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit.thread: ; preds = %bb.j, %_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i20, %_ZNK2OT8GSUBGPOS10get_scriptEj.exit31
  %i.cv = getelementptr inbounds nuw i8, ptr %.01337, i64 4 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !324 ; 2 uses
  %.not15 = icmp eq i32 %i.cw, 0
  br i1 %.not15, label %.loopexit, label %.lr.ph, !llvm.loop !2652

.loopexit:                                        ; preds = %_ZNK2OT8GSUBGPOS17find_script_indexEjPj.exit.thread, %_ZNK2OT8GSUBGPOS10get_scriptEj.exit, %.preheader, %_ZNK2OT8GSUBGPOS16get_script_countEv.exit
  call void @_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.r) #63
  call void @_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.k) #63
  call void @_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.c) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #63
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL23script_collect_featuresP29hb_collect_features_context_tRKN2OT6ScriptEPKj(ptr noundef nonnull %0, ptr noundef nonnull align 1 dereferenceable(10) %1, ptr nofree noundef readonly captures(address_is_null) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN29hb_collect_features_context_t7visitedERKN2OT6ScriptE(ptr noundef nonnull align 8 dereferenceable(252) %0, ptr noundef nonnull align 1 dereferenceable(10) %1)
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.b = load i32, ptr %2, align 4, !tbaa !324    ; 2 uses
  %.not2034 = icmp eq i32 %i.b, 0
  br i1 %.not2034, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.e = load i16, ptr %i.c, align 1, !tbaa !283  ; 2 uses
  %i.f = icmp eq i16 %i.e, 0
  br i1 %i.f, label %.loopexit, label %.lr.ph.split

bb.c:                                             ; preds = %bb.b
  %i.g = load i16, ptr %1, align 1, !tbaa !283    ; 2 uses
  %.not31 = icmp eq i16 %i.g, 0
  br i1 %.not31, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call i16 @llvm.bswap.i16(i16 %i.g)
  %i.i = zext i16 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %i.i
  tail call fastcc void @_ZL24langsys_collect_featuresP29hb_collect_features_context_tRKN2OT7LangSysE(ptr noundef %0, ptr noundef nonnull align 1 dereferenceable(8) %i.j)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.l = load i16, ptr %i.k, align 1, !tbaa !283  ; 2 uses
  %.not39 = icmp eq i16 %i.l, 0
  br i1 %.not39, label %.loopexit, label %.lr.ph38

.lr.ph38:                                         ; preds = %bb.e
  %i.m = tail call noundef i16 @llvm.bswap.i16(i16 %i.l)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4
  %wide.trip.count = zext i16 %i.m to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph38, %_ZNK2OT6Script12get_lang_sysEj.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph38 ], [ %indvars.iv.next, %_ZNK2OT6Script12get_lang_sysEj.exit ] ; 3 uses
  %i.o = load i16, ptr %i.k, align 1, !tbaa !283
  %i.p = tail call noundef i16 @llvm.bswap.i16(i16 %i.o)
  %i.q = zext i16 %i.p to i64
  %.not.i.i = icmp samesign ult i64 %indvars.iv, %i.q
  br i1 %.not.i.i, label %bb.g, label %_ZNK2OT6Script12get_lang_sysEj.exit, !prof !268

bb.g:                                             ; preds = %bb.f
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.r = getelementptr inbounds nuw [6 x i8], ptr %i.n, i64 %indvars.iv
  br label %_ZNK2OT6Script12get_lang_sysEj.exit

_ZNK2OT6Script12get_lang_sysEj.exit:              ; preds = %bb.f, %bb.g
  %.0.i.i = phi ptr [ %i.r, %bb.g ], [ @_hb_NullPool, %bb.f ]
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  %.sink9.i = load i16, ptr %i.s, align 1, !tbaa !283 ; 2 uses
  %i.t = icmp eq i16 %.sink9.i, 0
  %i.u = tail call i16 @llvm.bswap.i16(i16 %.sink9.i)
  %i.v = zext i16 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %i.v
  %.0.i.i.i21 = select i1 %i.t, ptr @_hb_Null_OT_LangSys, ptr %i.w, !prof !267
  tail call fastcc void @_ZL24langsys_collect_featuresP29hb_collect_features_context_tRKN2OT7LangSysE(ptr noundef %0, ptr noundef nonnull align 1 dereferenceable(8) %.0.i.i.i21)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.f, !llvm.loop !2654

.lr.ph.splitthread-pre-split:                     ; preds = %_ZNK2OT6Script19find_lang_sys_indexEjPj.exit.thread
  %.pr = load i16, ptr %i.c, align 1, !tbaa !283
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.splitthread-pre-split
  %i.x = phi i16 [ %.pr, %.lr.ph.splitthread-pre-split ], [ %i.e, %.lr.ph ] ; 2 uses
  %i.y = phi i32 [ %i.at, %.lr.ph.splitthread-pre-split ], [ %i.b, %.lr.ph ] ; 2 uses
  %.01835 = phi ptr [ %i.as, %.lr.ph.splitthread-pre-split ], [ %2, %.lr.ph ]
  %.not1.i.i.i.not.i.i.i = icmp eq i16 %i.x, 0
  br i1 %.not1.i.i.i.not.i.i.i, label %_ZNK2OT6Script19find_lang_sys_indexEjPj.exit.thread, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %.lr.ph.split
  %i.z = tail call noundef i16 @llvm.bswap.i16(i16 %i.x)
  %.sroa.4.8.extract.trunc.i.i.i = zext i16 %i.z to i32 ; 2 uses
  %i.aa = add nsw i32 %.sroa.4.8.extract.trunc.i.i.i, -1
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.k, %.lr.ph.preheader.i.i.i.i.i.i
  %.0203.i.i.i.i.i.i = phi i32 [ %.2.i.i.i.i.i.i, %bb.k ], [ %i.aa, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.0212.i.i.i.i.i.i = phi i32 [ %.223.i.i.i.i.i.i, %bb.k ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %i.ab = add i32 %.0212.i.i.i.i.i.i, %.0203.i.i.i.i.i.i
  %i.ac = lshr i32 %i.ab, 1                       ; 5 uses
  %i.ad = zext nneg i32 %i.ac to i64              ; 2 uses
  %i.ae = mul nuw nsw i64 %i.ad, 6
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 1, !tbaa !278
  %i.ah = tail call noundef i32 @llvm.bswap.i32(i32 %i.ag) ; 2 uses
  %i.ai = icmp ult i32 %i.y, %i.ah
  br i1 %i.ai, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.aj = add nsw i32 %i.ac, -1
  br label %bb.k

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %.not28.i.i.i.i.i.i = icmp eq i32 %i.y, %i.ah
  br i1 %.not28.i.i.i.i.i.i, label %_ZNK2OT6Script19find_lang_sys_indexEjPj.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = add nuw nsw i32 %i.ac, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h
  %.223.i.i.i.i.i.i = phi i32 [ %i.ak, %bb.j ], [ %.0212.i.i.i.i.i.i, %bb.h ] ; 2 uses
  %.2.i.i.i.i.i.i = phi i32 [ %.0203.i.i.i.i.i.i, %bb.j ], [ %i.aj, %bb.h ] ; 2 uses
  %.not.not.i.i.i.i.i.i = icmp sgt i32 %.223.i.i.i.i.i.i, %.2.i.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i.i, label %_ZNK2OT6Script19find_lang_sys_indexEjPj.exit.thread, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !96

_ZNK2OT6Script19find_lang_sys_indexEjPj.exit:     ; preds = %bb.i
  %i.al = icmp eq i32 %i.ac, 65535
  br i1 %i.al, label %_ZNK2OT6Script12get_lang_sysEj.exit28, label %bb.l

bb.l:                                             ; preds = %_ZNK2OT6Script19find_lang_sys_indexEjPj.exit
  %.not.i.i22 = icmp samesign ult i32 %i.ac, %.sroa.4.8.extract.trunc.i.i.i
  br i1 %.not.i.i22, label %bb.m, label %_ZNK2OT7ArrayOfINS_6RecordINS_7LangSysEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i23, !prof !268

bb.m:                                             ; preds = %bb.l
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.am = getelementptr inbounds nuw [6 x i8], ptr %i.d, i64 %i.ad
  br label %_ZNK2OT7ArrayOfINS_6RecordINS_7LangSysEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i23

_ZNK2OT7ArrayOfINS_6RecordINS_7LangSysEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i23: ; preds = %bb.m, %bb.l
  %.0.i.i24 = phi ptr [ %i.am, %bb.m ], [ @_hb_NullPool, %bb.l ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i.i24, i64 4
  br label %_ZNK2OT6Script12get_lang_sysEj.exit28

_ZNK2OT6Script12get_lang_sysEj.exit28:            ; preds = %_ZNK2OT6Script19find_lang_sys_indexEjPj.exit, %_ZNK2OT7ArrayOfINS_6RecordINS_7LangSysEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i23
  %.sink9.in.i25 = phi ptr [ %i.an, %_ZNK2OT7ArrayOfINS_6RecordINS_7LangSysEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i23 ], [ %1, %_ZNK2OT6Script19find_lang_sys_indexEjPj.exit ]
  %.sink9.i26 = load i16, ptr %.sink9.in.i25, align 1, !tbaa !283 ; 2 uses
  %i.ao = icmp eq i16 %.sink9.i26, 0
  %i.ap = tail call i16 @llvm.bswap.i16(i16 %.sink9.i26)
  %i.aq = zext i16 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 %i.aq
  %.0.i.i.i27 = select i1 %i.ao, ptr @_hb_Null_OT_LangSys, ptr %i.ar, !prof !267
  tail call fastcc void @_ZL24langsys_collect_featuresP29hb_collect_features_context_tRKN2OT7LangSysE(ptr noundef %0, ptr noundef nonnull align 1 dereferenceable(8) %.0.i.i.i27)
  br label %_ZNK2OT6Script19find_lang_sys_indexEjPj.exit.thread

_ZNK2OT6Script19find_lang_sys_indexEjPj.exit.thread: ; preds = %bb.k, %.lr.ph.split, %_ZNK2OT6Script12get_lang_sysEj.exit28
  %i.as = getelementptr inbounds nuw i8, ptr %.01835, i64 4 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !324 ; 2 uses
  %.not20 = icmp eq i32 %i.at, 0
  br i1 %.not20, label %.loopexit, label %.lr.ph.splitthread-pre-split, !llvm.loop !2655

.loopexit:                                        ; preds = %_ZNK2OT6Script19find_lang_sys_indexEjPj.exit.thread, %_ZNK2OT6Script12get_lang_sysEj.exit, %.lr.ph, %.preheader, %bb.e, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @hb_ot_layout_collect_features_map(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = tail call fastcc noundef nonnull align 1 dereferenceable(14) ptr @_ZL18get_gsubgpos_tableP9hb_face_tj(ptr noundef %0, i32 noundef %1) ; 6 uses
  %i.d = load i16, ptr %i.c, align 1, !tbaa !283
  %cond.i.i = icmp eq i16 %i.d, 256
  br i1 %cond.i.i, label %bb.b, label %_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.f = load i16, ptr %i.e, align 1, !tbaa !283  ; 2 uses
  %i.g = icmp eq i16 %i.f, 0
  %i.h = tail call i16 @llvm.bswap.i16(i16 %i.f)
  %i.i = zext i16 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.i
  %.0.i.i.i.i = select i1 %i.g, ptr @_hb_NullPool, ptr %i.j, !prof !267
  br label %_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i

_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i:       ; preds = %bb.b, %bb.a
  %.0.i.i = phi ptr [ %.0.i.i.i.i, %bb.b ], [ @_hb_NullPool, %bb.a ] ; 3 uses
  %i.k = load i16, ptr %.0.i.i, align 1, !tbaa !283
  %i.l = tail call noundef i16 @llvm.bswap.i16(i16 %i.k)
  %i.m = zext i16 %i.l to i32
  %.not.i.i.i.i = icmp ult i32 %2, %i.m
  br i1 %.not.i.i.i.i, label %bb.c, label %_ZNK2OT8GSUBGPOS10get_scriptEj.exit, !prof !268

bb.c:                                             ; preds = %_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 2
  %i.o = zext nneg i32 %2 to i64
  %i.p = getelementptr inbounds nuw [6 x i8], ptr %i.n, i64 %i.o
  br label %_ZNK2OT8GSUBGPOS10get_scriptEj.exit

_ZNK2OT8GSUBGPOS10get_scriptEj.exit:              ; preds = %_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i, %bb.c
  %.0.i.i.i1.i = phi ptr [ %i.p, %bb.c ], [ @_hb_NullPool, %_ZNK2OT8GSUBGPOS15get_script_listEv.exit.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i.i1.i, i64 4
  %i.r = load i16, ptr %i.q, align 1, !tbaa !283  ; 2 uses
  %i.s = icmp eq i16 %i.r, 0
  %i.t = tail call i16 @llvm.bswap.i16(i16 %i.r)
  %i.u = zext i16 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.u
  %.0.i.i1.i.i = select i1 %i.s, ptr @_hb_NullPool, ptr %i.v, !prof !267 ; 4 uses
  %i.w = icmp eq i32 %3, 65535
  br i1 %i.w, label %_ZNK2OT6Script12get_lang_sysEj.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK2OT8GSUBGPOS10get_scriptEj.exit
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i.i1.i.i, i64 2
  %i.y = load i16, ptr %i.x, align 1, !tbaa !283
  %i.z = tail call noundef i16 @llvm.bswap.i16(i16 %i.y)
  %i.aa = zext i16 %i.z to i32
  %.not.i.i = icmp ult i32 %3, %i.aa
  br i1 %.not.i.i, label %bb.e, label %_ZNK2OT7ArrayOfINS_6RecordINS_7LangSysEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i, !prof !268

bb.e:                                             ; preds = %bb.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i.i1.i.i, i64 4
  %i.ac = zext nneg i32 %3 to i64
  %i.ad = getelementptr inbounds nuw [6 x i8], ptr %i.ab, i64 %i.ac
  br label %_ZNK2OT7ArrayOfINS_6RecordINS_7LangSysEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i

_ZNK2OT7ArrayOfINS_6RecordINS_7LangSysEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i: ; preds = %bb.e, %bb.d
  %.0.i.i17 = phi ptr [ %i.ad, %bb.e ], [ @_hb_NullPool, %bb.d ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i.i17, i64 4
  br label %_ZNK2OT6Script12get_lang_sysEj.exit

_ZNK2OT6Script12get_lang_sysEj.exit:              ; preds = %_ZNK2OT8GSUBGPOS10get_scriptEj.exit, %_ZNK2OT7ArrayOfINS_6RecordINS_7LangSysEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i
  %.sink9.in.i = phi ptr [ %i.ae, %_ZNK2OT7ArrayOfINS_6RecordINS_7LangSysEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i ], [ %.0.i.i1.i.i, %_ZNK2OT8GSUBGPOS10get_scriptEj.exit ]
  %.sink9.i = load i16, ptr %.sink9.in.i, align 1, !tbaa !283 ; 2 uses
  %i.af = icmp eq i16 %.sink9.i, 0
  %i.ag = tail call i16 @llvm.bswap.i16(i16 %.sink9.i)
  %i.ah = zext i16 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i.i1.i.i, i64 %i.ah
  %.0.i.i.i = select i1 %i.af, ptr @_hb_Null_OT_LangSys, ptr %i.ai, !prof !267 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4 ; 2 uses
  %.pre28.i.i = load i16, ptr %i.aj, align 1, !tbaa !283 ; 2 uses
  %i.ak = tail call noundef i16 @llvm.bswap.i16(i16 %.pre28.i.i)
  %.sroa.5.8.extract.trunc.i.i = zext i16 %i.ak to i32 ; 2 uses
  %i.al = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIjjLb1EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %4, i32 noundef %.sroa.5.8.extract.trunc.i.i) ; 0 uses
  %.not27 = icmp eq i16 %.pre28.i.i, 0
  br i1 %.not27, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK2OT6Script12get_lang_sysEj.exit
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 6
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 6
end_hunk_13
begin_hunk_14_@_ZN2OT6Layout4GPOS23position_finish_offsetsEP9hb_font_tP11hb_buffer_t:bb.a
bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !611
  %i.p = zext i32 %i.m to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.o, i8 0, i64 %i.p, i1 false)
  br label %_ZN11hb_buffer_t15clear_positionsEv.exit.i

_ZN11hb_buffer_t15clear_positionsEv.exit.i:       ; preds = %bb.d, %bb.c, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !611
  br label %hb_buffer_get_glyph_positions.exit

hb_buffer_get_glyph_positions.exit:               ; preds = %bb.b, %_ZN11hb_buffer_t15clear_positionsEv.exit.i
  %.0.i = phi ptr [ %i.r, %_ZN11hb_buffer_t15clear_positionsEv.exit.i ], [ null, %bb.b ]
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.t = load i32, ptr %i.s, align 8, !tbaa !614  ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.v = load i32, ptr %i.u, align 8, !tbaa !606
  %i.w = and i32 %i.v, 8
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %.loopexit41, label %bb.e

bb.e:                                             ; preds = %hb_buffer_get_glyph_positions.exit
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !611  ; 4 uses
  %i.z = and i32 %i.t, -3
  %i.aa = icmp eq i32 %i.z, 4
  %.not49 = icmp eq i32 %i.b, 0                   ; 2 uses
  br i1 %i.aa, label %.preheader40, label %.preheader42

.preheader42:                                     ; preds = %bb.e
  br i1 %.not49, label %.loopexit41, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader42
  %i.ab = zext i32 %i.b to i64
  br label %.lr.ph

.preheader40:                                     ; preds = %bb.e
  br i1 %.not49, label %.loopexit41, label %.lr.ph46.preheader

.lr.ph46.preheader:                               ; preds = %.preheader40
  %wide.trip.count = zext i32 %i.b to i64
  br label %.lr.ph46

.lr.ph46:                                         ; preds = %.lr.ph46.preheader, %bb.g
  %indvars.iv52 = phi i64 [ 0, %.lr.ph46.preheader ], [ %indvars.iv.next53, %bb.g ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [20 x i8], ptr %i.y, i64 %indvars.iv52
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load i16, ptr %i.ad, align 4, !tbaa !280
  %.not36 = icmp eq i16 %i.ae, 0
  br i1 %.not36, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph46
  %i.af = trunc nuw i64 %indvars.iv52 to i32
  tail call fastcc void @_ZN2OT6LayoutL28propagate_attachment_offsetsEP19hb_glyph_position_tjj14hb_direction_tj(ptr noundef nonnull %i.y, i32 noundef %i.b, i32 noundef %i.af, i32 noundef %i.t, i32 noundef 64)
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph46, %bb.f
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next53, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit41, label %.lr.ph46, !llvm.loop !2669

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %indvars.iv = phi i64 [ %i.ab, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.i ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %indvars = trunc i64 %indvars.iv.next to i32    ; 2 uses
  %i.ag = and i64 %indvars.iv.next, 4294967295
  %i.ah = getelementptr inbounds nuw [20 x i8], ptr %i.y, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load i16, ptr %i.ai, align 4, !tbaa !280
  %.not34 = icmp eq i16 %i.aj, 0
  br i1 %.not34, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  tail call fastcc void @_ZN2OT6LayoutL28propagate_attachment_offsetsEP19hb_glyph_position_tjj14hb_direction_tj(ptr noundef nonnull %i.y, i32 noundef %i.b, i32 noundef %indvars, i32 noundef %i.t, i32 noundef 64)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph
  %.not33 = icmp eq i32 %indvars, 0
  br i1 %.not33, label %.loopexit41, label %.lr.ph, !llvm.loop !2670

.loopexit41:                                      ; preds = %bb.i, %bb.g, %.preheader42, %.preheader40, %hb_buffer_get_glyph_positions.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.al = load float, ptr %i.ak, align 4, !tbaa !1017 ; 2 uses
  %i.am = fcmp une float %i.al, 0.000000e+00
  br i1 %i.am, label %bb.j, label %.loopexit, !prof !267

bb.j:                                             ; preds = %.loopexit41
  %i.an = and i32 %i.t, -2
  %i.ao = icmp eq i32 %i.an, 4
  %i.ap = icmp ne i32 %i.b, 0
  %or.cond = select i1 %i.ao, i1 %i.ap, i1 false
  br i1 %or.cond, label %.lr.ph48.preheader, label %.loopexit

.lr.ph48.preheader:                               ; preds = %bb.j
  %wide.trip.count60 = zext i32 %i.b to i64
  br label %.lr.ph48

.lr.ph48:                                         ; preds = %.lr.ph48.preheader, %bb.l
  %indvars.iv56 = phi i64 [ 0, %.lr.ph48.preheader ], [ %indvars.iv.next57, %bb.l ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [20 x i8], ptr %.0.i, i64 %indvars.iv56 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !645 ; 2 uses
  %.not35 = icmp eq i32 %i.as, 0
  br i1 %.not35, label %bb.l, label %bb.k, !prof !268

bb.k:                                             ; preds = %.lr.ph48
  %i.at = sitofp i32 %i.as to float
  %i.au = fmul float %i.al, %i.at
  %i.av = fadd float %i.au, 5.000000e-01
  %i.aw = tail call noundef float @llvm.floor.f32(float %i.av)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !644
  %i.az = sitofp i32 %i.ay to float
  %i.ba = fadd float %i.aw, %i.az
  %i.bb = fptosi float %i.ba to i32
  store i32 %i.bb, ptr %i.ax, align 4, !tbaa !644
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph48, %bb.k
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1 ; 2 uses
  %exitcond61.not = icmp eq i64 %indvars.iv.next57, %wide.trip.count60
  br i1 %exitcond61.not, label %.loopexit, label %.lr.ph48, !llvm.loop !2671

.loopexit:                                        ; preds = %bb.l, %bb.j, %.loopexit41
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @hb_ot_layout_get_size_params(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4, ptr nofree noundef writeonly captures(address_is_null) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = load atomic ptr, ptr %i.a acquire, align 8 ; 2 uses
  %.not14.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not14.i.i.i, label %.lr.ph.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit, !prof !265

.lr.ph.i.i.i:                                     ; preds = %bb.a, %bb.e
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !266
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit, label %bb.b, !prof !267

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.e = tail call noundef ptr @_ZNK17hb_data_wrapper_tI9hb_face_tLj27EE11call_createIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS4_Lj27EEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not10.i.i.i, label %bb.c, label %bb.d, !prof !267

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.07.i.i.i = phi ptr [ @_hb_NullPool, %bb.c ], [ %i.e, %bb.b ] ; 3 uses
  %i.f = cmpxchg weak ptr %i.a, ptr null, ptr %.07.i.i.i acq_rel monotonic, align 8
  %i.g = extractvalue { ptr, i1 } %i.f, 1
  br i1 %i.g, label %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit, label %bb.e, !prof !268

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_E10do_destroyEPS1_(ptr noundef nonnull %.07.i.i.i)
  %i.h = load atomic ptr, ptr %i.a acquire, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit, !prof !269

_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit: ; preds = %.lr.ph.i.i.i, %bb.d, %bb.e, %bb.a
  %.19.ph.i.i.i = phi ptr [ %i.c, %bb.a ], [ @_hb_NullPool, %.lr.ph.i.i.i ], [ %i.h, %bb.e ], [ %.07.i.i.i, %bb.d ]
  %i.i = load ptr, ptr %.19.ph.i.i.i, align 8, !tbaa !272 ; 2 uses
  %.not.i.i.i.i65 = icmp eq ptr %i.i, null
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i65, ptr @_hb_NullPool, ptr %i.i ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !275
  %i.l = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !276
  %i.n = icmp ult i32 %i.m, 4
  %spec.select.i.i1.i.i = select i1 %i.n, ptr @_hb_NullPool, ptr %i.k ; 8 uses
  %i.o = load i16, ptr %spec.select.i.i1.i.i, align 1, !tbaa !283
  %cond.i.i = icmp eq i16 %i.o, 256
  br i1 %cond.i.i, label %bb.f, label %_ZNK2OT8GSUBGPOS17get_feature_countEv.exit

bb.f:                                             ; preds = %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.p = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i, i64 6
  %i.q = load i16, ptr %i.p, align 1, !tbaa !283  ; 2 uses
  %i.r = icmp eq i16 %i.q, 0
  %i.s = tail call i16 @llvm.bswap.i16(i16 %i.q)
  %i.t = zext i16 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i, i64 %i.t
  %.0.i.i.i.i = select i1 %i.r, ptr @_hb_NullPool, ptr %i.u, !prof !267
  br label %_ZNK2OT8GSUBGPOS17get_feature_countEv.exit

_ZNK2OT8GSUBGPOS17get_feature_countEv.exit:       ; preds = %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit, %bb.f
  %.0.i.i = phi ptr [ %.0.i.i.i.i, %bb.f ], [ @_hb_NullPool, %_ZNK16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_EptEv.exit ]
  %i.v = load i16, ptr %.0.i.i, align 1, !tbaa !283 ; 2 uses
  %.not5777.not = icmp eq i16 %i.v, 0
  br i1 %.not5777.not, label %.critedge64, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK2OT8GSUBGPOS17get_feature_countEv.exit
  %i.w = tail call noundef i16 @llvm.bswap.i16(i16 %i.v)
  %i.x = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i, i64 6 ; 2 uses
  %wide.trip.count = zext i16 %i.w to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %.critedge
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.critedge ] ; 5 uses
  %i.y = load i16, ptr %spec.select.i.i1.i.i, align 1, !tbaa !283
  %cond.i.i66 = icmp eq i16 %i.y, 256
  br i1 %cond.i.i66, label %bb.h, label %_ZNK2OT8GSUBGPOS16get_feature_listEv.exit.i

bb.h:                                             ; preds = %bb.g
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.z = load i16, ptr %i.x, align 1, !tbaa !283  ; 2 uses
  %i.aa = icmp eq i16 %i.z, 0
  %i.ab = tail call i16 @llvm.bswap.i16(i16 %i.z)
  %i.ac = zext i16 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i, i64 %i.ac
  %.0.i.i.i.i69 = select i1 %i.aa, ptr @_hb_NullPool, ptr %i.ad, !prof !267
  br label %_ZNK2OT8GSUBGPOS16get_feature_listEv.exit.i

_ZNK2OT8GSUBGPOS16get_feature_listEv.exit.i:      ; preds = %bb.h, %bb.g
  %.0.i.i67 = phi ptr [ %.0.i.i.i.i69, %bb.h ], [ @_hb_NullPool, %bb.g ] ; 2 uses
  %i.ae = load i16, ptr %.0.i.i67, align 1, !tbaa !283
  %i.af = tail call noundef i16 @llvm.bswap.i16(i16 %i.ae)
  %i.ag = zext i16 %i.af to i64
  %.not.i.i.i68 = icmp samesign ult i64 %indvars.iv, %i.ag
  br i1 %.not.i.i.i68, label %bb.i, label %_ZNK2OT8GSUBGPOS15get_feature_tagEj.exit, !prof !268

bb.i:                                             ; preds = %_ZNK2OT8GSUBGPOS16get_feature_listEv.exit.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i.i67, i64 2
  %i.ai = getelementptr inbounds nuw [6 x i8], ptr %i.ah, i64 %indvars.iv
  br label %_ZNK2OT8GSUBGPOS15get_feature_tagEj.exit

_ZNK2OT8GSUBGPOS15get_feature_tagEj.exit:         ; preds = %_ZNK2OT8GSUBGPOS16get_feature_listEv.exit.i, %bb.i
  %.0.i.i.i = phi ptr [ %i.ai, %bb.i ], [ @_hb_NullPool, %_ZNK2OT8GSUBGPOS16get_feature_listEv.exit.i ]
  %i.aj = load i32, ptr %.0.i.i.i, align 1, !tbaa !278
  %i.ak = icmp eq i32 %i.aj, 1702521203
  br i1 %i.ak, label %bb.j, label %.critedge

bb.j:                                             ; preds = %_ZNK2OT8GSUBGPOS15get_feature_tagEj.exit
  %i.al = load i16, ptr %spec.select.i.i1.i.i, align 1, !tbaa !283
  %cond.i.i70 = icmp eq i16 %i.al, 256
  br i1 %cond.i.i70, label %bb.k, label %_ZNK2OT8GSUBGPOS16get_feature_listEv.exit.i71

bb.k:                                             ; preds = %bb.j
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.am = load i16, ptr %i.x, align 1, !tbaa !283 ; 2 uses
  %i.an = icmp eq i16 %i.am, 0
  %i.ao = tail call i16 @llvm.bswap.i16(i16 %i.am)
  %i.ap = zext i16 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i, i64 %i.ap
  %.0.i.i.i.i74 = select i1 %i.an, ptr @_hb_NullPool, ptr %i.aq, !prof !267
  br label %_ZNK2OT8GSUBGPOS16get_feature_listEv.exit.i71

_ZNK2OT8GSUBGPOS16get_feature_listEv.exit.i71:    ; preds = %bb.k, %bb.j
  %.0.i.i72 = phi ptr [ %.0.i.i.i.i74, %bb.k ], [ @_hb_NullPool, %bb.j ] ; 3 uses
  %i.ar = load i16, ptr %.0.i.i72, align 1, !tbaa !283
  %i.as = tail call noundef i16 @llvm.bswap.i16(i16 %i.ar)
  %i.at = zext i16 %i.as to i64
  %.not.i.i.i.i73 = icmp samesign ult i64 %indvars.iv, %i.at
  br i1 %.not.i.i.i.i73, label %bb.l, label %_ZNK2OT8GSUBGPOS11get_featureEj.exit, !prof !268

bb.l:                                             ; preds = %_ZNK2OT8GSUBGPOS16get_feature_listEv.exit.i71
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.au = getelementptr inbounds nuw i8, ptr %.0.i.i72, i64 2
  %i.av = getelementptr inbounds nuw [6 x i8], ptr %i.au, i64 %indvars.iv
  br label %_ZNK2OT8GSUBGPOS11get_featureEj.exit

_ZNK2OT8GSUBGPOS11get_featureEj.exit:             ; preds = %_ZNK2OT8GSUBGPOS16get_feature_listEv.exit.i71, %bb.l
  %.0.i.i.i1.i = phi ptr [ %i.av, %bb.l ], [ @_hb_NullPool, %_ZNK2OT8GSUBGPOS16get_feature_listEv.exit.i71 ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i.i.i1.i, i64 4
  %i.ax = load i16, ptr %i.aw, align 1, !tbaa !283 ; 2 uses
  %i.ay = icmp eq i16 %i.ax, 0
  %i.az = tail call i16 @llvm.bswap.i16(i16 %i.ax)
  %i.ba = zext i16 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i.i72, i64 %i.ba
  %.0.i.i1.i.i = select i1 %i.ay, ptr @_hb_NullPool, ptr %i.bb, !prof !267 ; 2 uses
  %i.bc = load i16, ptr %.0.i.i1.i.i, align 1, !tbaa !283 ; 2 uses
  %i.bd = icmp eq i16 %i.bc, 0
  %i.be = tail call i16 @llvm.bswap.i16(i16 %i.bc)
  %i.bf = zext i16 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.i.i1.i.i, i64 %i.bf
  %.0.i.i.i75 = select i1 %i.bd, ptr @_hb_NullPool, ptr %i.bg, !prof !267 ; 5 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.bh = load i16, ptr %.0.i.i.i75, align 1, !tbaa !283 ; 2 uses
  %.not = icmp eq i16 %i.bh, 0
  br i1 %.not, label %.critedge, label %bb.m

bb.m:                                             ; preds = %_ZNK2OT8GSUBGPOS11get_featureEj.exit
  %.not52 = icmp eq ptr %1, null
  br i1 %.not52, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bi = tail call noundef i16 @llvm.bswap.i16(i16 %i.bh)
  %i.bj = zext i16 %i.bi to i32
  store i32 %i.bj, ptr %1, align 4, !tbaa !324
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.not53 = icmp eq ptr %2, null
  br i1 %.not53, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.i.i.i75, i64 2
  %i.bl = load i16, ptr %i.bk, align 1, !tbaa !283
  %i.bm = tail call noundef i16 @llvm.bswap.i16(i16 %i.bl)
  %i.bn = zext i16 %i.bm to i32
  store i32 %i.bn, ptr %2, align 4, !tbaa !324
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.not54 = icmp eq ptr %3, null
  br i1 %.not54, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.i.i.i75, i64 4
  %i.bp = load i16, ptr %i.bo, align 1, !tbaa !283
  %i.bq = tail call noundef i16 @llvm.bswap.i16(i16 %i.bp)
  %i.br = zext i16 %i.bq to i32
  store i32 %i.br, ptr %3, align 4, !tbaa !324
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.not55 = icmp eq ptr %4, null
  br i1 %.not55, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.i.i.i75, i64 6
  %i.bt = load i16, ptr %i.bs, align 1, !tbaa !283
  %i.bu = tail call noundef i16 @llvm.bswap.i16(i16 %i.bt)
  %i.bv = zext i16 %i.bu to i32
  store i32 %i.bv, ptr %4, align 4, !tbaa !324
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.not56 = icmp eq ptr %5, null
  br i1 %.not56, label %bb.ae, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.i.i.i75, i64 8
  %i.bx = load i16, ptr %i.bw, align 1, !tbaa !283
  %i.by = tail call noundef i16 @llvm.bswap.i16(i16 %i.bx)
  %i.bz = zext i16 %i.by to i32
  br label %.sink.split

.critedge:                                        ; preds = %_ZNK2OT8GSUBGPOS11get_featureEj.exit, %_ZNK2OT8GSUBGPOS15get_feature_tagEj.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge64, label %bb.g, !llvm.loop !2672

.critedge64:                                      ; preds = %.critedge, %_ZNK2OT8GSUBGPOS17get_feature_countEv.exit
  %.not58 = icmp eq ptr %1, null
  br i1 %.not58, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.critedge64
  store i32 0, ptr %1, align 4, !tbaa !324
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.critedge64
  %.not59 = icmp eq ptr %2, null
  br i1 %.not59, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  store i32 0, ptr %2, align 4, !tbaa !324
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.not60 = icmp eq ptr %3, null
  br i1 %.not60, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store i32 65535, ptr %3, align 4, !tbaa !324
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.not61 = icmp eq ptr %4, null
  br i1 %.not61, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store i32 0, ptr %4, align 4, !tbaa !324
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.not62 = icmp eq ptr %5, null
  br i1 %.not62, label %bb.ae, label %.sink.split

.sink.split:                                      ; preds = %bb.ad, %bb.v
  %.sink = phi i32 [ %i.bz, %bb.v ], [ 0, %bb.ad ]
  %.4.ph = phi i32 [ 1, %bb.v ], [ 0, %bb.ad ]
  store i32 %.sink, ptr %5, align 4, !tbaa !324
  br label %bb.ae

bb.ae:                                            ; preds = %.sink.split, %bb.u, %bb.ad
  %.4 = phi i32 [ 0, %bb.ad ], [ 1, %bb.u ], [ %.4.ph, %.sink.split ]
  ret i32 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @hb_ot_layout_feature_get_name_ids(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4, ptr nofree noundef writeonly captures(address_is_null) %5, ptr nofree noundef writeonly captures(address_is_null) %6, ptr nofree noundef writeonly captures(address_is_null) %7) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc noundef nonnull align 1 dereferenceable(14) ptr @_ZL18get_gsubgpos_tableP9hb_face_tj(ptr noundef %0, i32 noundef %1) ; 6 uses
  %i.b = icmp eq i32 %2, 65535
  %.pre101 = load i16, ptr %i.a, align 1, !tbaa !283 ; 2 uses
  br i1 %i.b, label %_ZNK2OT8GSUBGPOS15get_feature_tagEj.exit, label %bb.b
end_hunk_14
begin_hunk_15_@hb_ot_layout_feature_get_name_ids:bb.a
  %cond.i.i90 = icmp eq i16 %i.r, 256
  br i1 %cond.i.i90, label %bb.e, label %_ZNK2OT8GSUBGPOS16get_feature_listEv.exit.i91

bb.e:                                             ; preds = %_ZNK2OT8GSUBGPOS15get_feature_tagEj.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.u = load i16, ptr %i.t, align 1, !tbaa !283  ; 2 uses
  %i.v = icmp eq i16 %i.u, 0
  %i.w = tail call i16 @llvm.bswap.i16(i16 %i.u)
  %i.x = zext i16 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.x
  %.0.i.i.i.i93 = select i1 %i.v, ptr @_hb_NullPool, ptr %i.y, !prof !267
  br label %_ZNK2OT8GSUBGPOS16get_feature_listEv.exit.i91

_ZNK2OT8GSUBGPOS16get_feature_listEv.exit.i91:    ; preds = %bb.e, %_ZNK2OT8GSUBGPOS15get_feature_tagEj.exit
  %.0.i.i92 = phi ptr [ %.0.i.i.i.i93, %bb.e ], [ @_hb_NullPool, %_ZNK2OT8GSUBGPOS15get_feature_tagEj.exit ] ; 3 uses
  %i.z = load i16, ptr %.0.i.i92, align 1, !tbaa !283
  %i.aa = tail call noundef i16 @llvm.bswap.i16(i16 %i.z)
  %i.ab = zext i16 %i.aa to i32
  %.not.i.i.i.i = icmp ult i32 %2, %i.ab
  br i1 %.not.i.i.i.i, label %bb.f, label %_ZNK2OT8GSUBGPOS11get_featureEj.exit, !prof !268

bb.f:                                             ; preds = %_ZNK2OT8GSUBGPOS16get_feature_listEv.exit.i91
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i.i92, i64 2
  %i.ad = zext nneg i32 %2 to i64
  %i.ae = getelementptr inbounds nuw [6 x i8], ptr %i.ac, i64 %i.ad
  br label %_ZNK2OT8GSUBGPOS11get_featureEj.exit

_ZNK2OT8GSUBGPOS11get_featureEj.exit:             ; preds = %_ZNK2OT8GSUBGPOS16get_feature_listEv.exit.i91, %bb.f
  %.0.i.i.i1.i = phi ptr [ %i.ae, %bb.f ], [ @_hb_NullPool, %_ZNK2OT8GSUBGPOS16get_feature_listEv.exit.i91 ]
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i.i.i1.i, i64 4
  %i.ag = load i16, ptr %i.af, align 1, !tbaa !283 ; 2 uses
  %i.ah = icmp eq i16 %i.ag, 0
  %i.ai = tail call i16 @llvm.bswap.i16(i16 %i.ag)
  %i.aj = zext i16 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i.i92, i64 %i.aj
  %.0.i.i1.i.i = select i1 %i.ah, ptr @_hb_NullPool, ptr %i.ak, !prof !267 ; 2 uses
  %i.al = load i16, ptr %.0.i.i1.i.i, align 1, !tbaa !283 ; 2 uses
  %i.am = icmp eq i16 %i.al, 0
  %i.an = tail call i16 @llvm.bswap.i16(i16 %i.al)
  %i.ao = zext i16 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i.i1.i.i, i64 %i.ao ; 7 uses
  %.not96 = icmp eq ptr %i.ap, @_hb_NullPool
  %.not = select i1 %i.am, i1 true, i1 %.not96, !prof !267
  br i1 %.not, label %.critedge89, label %bb.g

bb.g:                                             ; preds = %_ZNK2OT8GSUBGPOS11get_featureEj.exit
  switch i32 %i.s, label %.critedge89 [
    i32 1936916480, label %bb.h
    i32 1668677632, label %bb.q
  ]

bb.h:                                             ; preds = %bb.g
  %.not78 = icmp eq ptr %3, null
  br i1 %.not78, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  %i.ar = load i16, ptr %i.aq, align 1, !tbaa !283
  %i.as = tail call noundef i16 @llvm.bswap.i16(i16 %i.ar)
  %i.at = zext i16 %i.as to i32
  store i32 %i.at, ptr %3, align 4, !tbaa !324
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.not79 = icmp eq ptr %4, null
  br i1 %.not79, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 65535, ptr %4, align 4, !tbaa !324
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.not80 = icmp eq ptr %5, null
  br i1 %.not80, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 65535, ptr %5, align 4, !tbaa !324
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.not81 = icmp eq ptr %6, null
  br i1 %.not81, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %6, align 4, !tbaa !324
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.not82 = icmp eq ptr %7, null
  br i1 %.not82, label %.critedge, label %.critedge.sink.split

bb.q:                                             ; preds = %bb.g
  %.not73 = icmp eq ptr %3, null
  br i1 %.not73, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  %i.av = load i16, ptr %i.au, align 1, !tbaa !283
  %i.aw = tail call noundef i16 @llvm.bswap.i16(i16 %i.av)
  %i.ax = zext i16 %i.aw to i32
  store i32 %i.ax, ptr %3, align 4, !tbaa !324
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.not74 = icmp eq ptr %4, null
  br i1 %.not74, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.az = load i16, ptr %i.ay, align 1, !tbaa !283
  %i.ba = tail call noundef i16 @llvm.bswap.i16(i16 %i.az)
  %i.bb = zext i16 %i.ba to i32
  store i32 %i.bb, ptr %4, align 4, !tbaa !324
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.not75 = icmp eq ptr %5, null
  br i1 %.not75, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ap, i64 6
  %i.bd = load i16, ptr %i.bc, align 1, !tbaa !283
  %i.be = tail call noundef i16 @llvm.bswap.i16(i16 %i.bd)
  %i.bf = zext i16 %i.be to i32
  store i32 %i.bf, ptr %5, align 4, !tbaa !324
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.not76 = icmp eq ptr %6, null
  br i1 %.not76, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.bh = load i16, ptr %i.bg, align 1, !tbaa !283
  %i.bi = tail call noundef i16 @llvm.bswap.i16(i16 %i.bh)
  %i.bj = zext i16 %i.bi to i32
  store i32 %i.bj, ptr %6, align 4, !tbaa !324
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.not77 = icmp eq ptr %7, null
  br i1 %.not77, label %.critedge, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ap, i64 10
  %i.bl = load i16, ptr %i.bk, align 1, !tbaa !283
  %i.bm = tail call noundef i16 @llvm.bswap.i16(i16 %i.bl)
  %i.bn = zext i16 %i.bm to i32
  br label %.critedge.sink.split

.critedge89:                                      ; preds = %bb.g, %_ZNK2OT8GSUBGPOS11get_featureEj.exit
  %.not83 = icmp eq ptr %3, null
  br i1 %.not83, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.critedge89
  store i32 65535, ptr %3, align 4, !tbaa !324
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.critedge89
  %.not84 = icmp eq ptr %4, null
  br i1 %.not84, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store i32 65535, ptr %4, align 4, !tbaa !324
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.not85 = icmp eq ptr %5, null
  br i1 %.not85, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store i32 65535, ptr %5, align 4, !tbaa !324
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.not86 = icmp eq ptr %6, null
  br i1 %.not86, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store i32 0, ptr %6, align 4, !tbaa !324
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.not87 = icmp eq ptr %7, null
  br i1 %.not87, label %.critedge, label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %bb.ah, %bb.p, %bb.z
  %.sink = phi i32 [ %i.bn, %bb.z ], [ 65535, %bb.p ], [ 65535, %bb.ah ]
  %.2.ph = phi i32 [ 1, %bb.z ], [ 1, %bb.p ], [ 0, %bb.ah ]
  store i32 %.sink, ptr %7, align 4, !tbaa !324
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %bb.y, %bb.p, %bb.ah
  %.2 = phi i32 [ 0, %bb.ah ], [ 1, %bb.p ], [ 1, %bb.y ], [ %.2.ph, %.critedge.sink.split ]
  ret i32 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define noundef range(i32 0, 65536) i32 @hb_ot_layout_feature_get_characters(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef captures(address_is_null) %4, ptr nofree noundef writeonly captures(address_is_null) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc noundef nonnull align 1 dereferenceable(14) ptr @_ZL18get_gsubgpos_tableP9hb_face_tj(ptr noundef %0, i32 noundef %1) ; 6 uses
  %i.b = load i16, ptr %i.a, align 1, !tbaa !283
  %cond.i.i = icmp eq i16 %i.b, 256
  br i1 %cond.i.i, label %bb.b, label %_ZNK2OT8GSUBGPOS16get_feature_listEv.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.d = load i16, ptr %i.c, align 1, !tbaa !283  ; 2 uses
  %i.e = icmp eq i16 %i.d, 0
  %i.f = tail call i16 @llvm.bswap.i16(i16 %i.d)
  %i.g = zext i16 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.g
  %.0.i.i.i.i = select i1 %i.e, ptr @_hb_NullPool, ptr %i.h, !prof !267
  br label %_ZNK2OT8GSUBGPOS16get_feature_listEv.exit.i

_ZNK2OT8GSUBGPOS16get_feature_listEv.exit.i:      ; preds = %bb.b, %bb.a
  %.0.i.i = phi ptr [ %.0.i.i.i.i, %bb.b ], [ @_hb_NullPool, %bb.a ] ; 3 uses
  %i.i = load i16, ptr %.0.i.i, align 1, !tbaa !283
  %i.j = tail call noundef i16 @llvm.bswap.i16(i16 %i.i)
  %i.k = zext i16 %i.j to i32
  %.not.i.i.i.i = icmp ult i32 %2, %i.k
  br i1 %.not.i.i.i.i, label %bb.c, label %_ZNK2OT8GSUBGPOS11get_featureEj.exit, !prof !268

bb.c:                                             ; preds = %_ZNK2OT8GSUBGPOS16get_feature_listEv.exit.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 2
  %i.m = zext nneg i32 %2 to i64
  %i.n = getelementptr inbounds nuw [6 x i8], ptr %i.l, i64 %i.m
  br label %_ZNK2OT8GSUBGPOS11get_featureEj.exit

_ZNK2OT8GSUBGPOS11get_featureEj.exit:             ; preds = %_ZNK2OT8GSUBGPOS16get_feature_listEv.exit.i, %bb.c
  %.0.i.i.i1.i = phi ptr [ %i.n, %bb.c ], [ @_hb_NullPool, %_ZNK2OT8GSUBGPOS16get_feature_listEv.exit.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i.i.i1.i, i64 4
  %i.p = load i16, ptr %i.o, align 1, !tbaa !283  ; 2 uses
  %i.q = icmp eq i16 %i.p, 0
  %i.r = tail call i16 @llvm.bswap.i16(i16 %i.p)
  %i.s = zext i16 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.s
  %.0.i.i1.i.i = select i1 %i.q, ptr @_hb_NullPool, ptr %i.t, !prof !267 ; 2 uses
  %i.u = load i16, ptr %.0.i.i1.i.i, align 1, !tbaa !283 ; 2 uses
  %i.v = icmp ne i16 %i.u, 0
  %i.w = tail call i16 @llvm.bswap.i16(i16 %i.u)
  %i.x = zext i16 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i.i1.i.i, i64 %i.x
  %i.z = icmp eq i32 %2, 65535
  br i1 %i.z, label %_ZNK2OT8GSUBGPOS15get_feature_tagEj.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK2OT8GSUBGPOS11get_featureEj.exit
  %i.aa = load i16, ptr %i.a, align 1, !tbaa !283
  %cond.i.i8 = icmp eq i16 %i.aa, 256
  br i1 %cond.i.i8, label %bb.e, label %_ZNK2OT8GSUBGPOS16get_feature_listEv.exit.i9

bb.e:                                             ; preds = %bb.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.ac = load i16, ptr %i.ab, align 1, !tbaa !283 ; 2 uses
  %i.ad = icmp eq i16 %i.ac, 0
  %i.ae = tail call i16 @llvm.bswap.i16(i16 %i.ac)
  %i.af = zext i16 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.af
  %.0.i.i.i.i12 = select i1 %i.ad, ptr @_hb_NullPool, ptr %i.ag, !prof !267
  br label %_ZNK2OT8GSUBGPOS16get_feature_listEv.exit.i9

_ZNK2OT8GSUBGPOS16get_feature_listEv.exit.i9:     ; preds = %bb.e, %bb.d
  %.0.i.i10 = phi ptr [ %.0.i.i.i.i12, %bb.e ], [ @_hb_NullPool, %bb.d ] ; 2 uses
  %i.ah = load i16, ptr %.0.i.i10, align 1, !tbaa !283
  %i.ai = tail call noundef i16 @llvm.bswap.i16(i16 %i.ah)
  %i.aj = zext i16 %i.ai to i32
  %.not.i.i.i = icmp ult i32 %2, %i.aj
  br i1 %.not.i.i.i, label %bb.f, label %_ZNK2OT13RecordArrayOfINS_7FeatureEE7get_tagEj.exit.i, !prof !268

bb.f:                                             ; preds = %_ZNK2OT8GSUBGPOS16get_feature_listEv.exit.i9
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i.i10, i64 2
  %i.al = zext nneg i32 %2 to i64
  %i.am = getelementptr inbounds nuw [6 x i8], ptr %i.ak, i64 %i.al
  br label %_ZNK2OT13RecordArrayOfINS_7FeatureEE7get_tagEj.exit.i

_ZNK2OT13RecordArrayOfINS_7FeatureEE7get_tagEj.exit.i: ; preds = %bb.f, %_ZNK2OT8GSUBGPOS16get_feature_listEv.exit.i9
  %.0.i.i.i11 = phi ptr [ %i.am, %bb.f ], [ @_hb_NullPool, %_ZNK2OT8GSUBGPOS16get_feature_listEv.exit.i9 ]
  %i.an = load i32, ptr %.0.i.i.i11, align 1, !tbaa !278
  %i.ao = and i32 %i.an, 65535
  %i.ap = icmp eq i32 %i.ao, 30307
  %i.aq = select i1 %i.ap, i1 %i.v, i1 false
  %i.ar = select i1 %i.aq, ptr %i.y, ptr @_hb_NullPool
  br label %_ZNK2OT8GSUBGPOS15get_feature_tagEj.exit

_ZNK2OT8GSUBGPOS15get_feature_tagEj.exit:         ; preds = %_ZNK2OT8GSUBGPOS11get_featureEj.exit, %_ZNK2OT13RecordArrayOfINS_7FeatureEE7get_tagEj.exit.i
  %spec.select.i = phi ptr [ %i.ar, %_ZNK2OT13RecordArrayOfINS_7FeatureEE7get_tagEj.exit.i ], [ @_hb_NullPool, %_ZNK2OT8GSUBGPOS11get_featureEj.exit ] ; 2 uses
  %i.as = icmp ne ptr %4, null
  %i.at = icmp ne ptr %5, null
  %or.cond.i = and i1 %i.as, %i.at
  %i.au = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 12
  %i.av = load i16, ptr %i.au, align 1, !tbaa !283
  %i.aw = tail call noundef i16 @llvm.bswap.i16(i16 %i.av)
  %.sroa.5.8.extract.trunc.i = zext i16 %i.aw to i32 ; 2 uses
  br i1 %or.cond.i, label %_ZNK10hb_array_tIKN2OT7NumTypeILb1EjLj3EEEE9sub_arrayEjPj.exit.i, label %_ZNK2OT30FeatureParamsCharacterVariants14get_charactersEjPjS1_.exit

_ZNK10hb_array_tIKN2OT7NumTypeILb1EjLj3EEEE9sub_arrayEjPj.exit.i: ; preds = %_ZNK2OT8GSUBGPOS15get_feature_tagEj.exit
  %storemerge.i.i = tail call i32 @llvm.usub.sat.i32(i32 %.sroa.5.8.extract.trunc.i, i32 %3)
  %i.ax = load i32, ptr %4, align 4, !tbaa !324
  %.sroa.speculated.i.i = tail call i32 @llvm.umin.i32(i32 %storemerge.i.i, i32 %i.ax) ; 4 uses
  store i32 %.sroa.speculated.i.i, ptr %4, align 4, !tbaa !324
  %.not5.i.i.i = icmp eq i32 %.sroa.speculated.i.i, 0
  br i1 %.not5.i.i.i, label %_ZNK2OT30FeatureParamsCharacterVariants14get_charactersEjPjS1_.exit, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %_ZNK10hb_array_tIKN2OT7NumTypeILb1EjLj3EEEE9sub_arrayEjPj.exit.i
  %i.ay = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 14
  %i.az = zext i32 %3 to i64
  %i.ba = getelementptr inbounds nuw [3 x i8], ptr %i.ay, i64 %i.az
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i, %.lr.ph.i.i.preheader.i
  %.sroa.6.0.i = phi i32 [ %.sroa.6.1.i, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i ], [ %.sroa.speculated.i.i, %.lr.ph.i.i.preheader.i ] ; 2 uses
  %.sroa.018.0.i = phi ptr [ %.sroa.018.1.i, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i ], [ %5, %.lr.ph.i.i.preheader.i ] ; 2 uses
  %.sroa.0.07.i.i.i = phi ptr [ %i.bh, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i ], [ %i.ba, %.lr.ph.i.i.preheader.i ] ; 2 uses
  %.sroa.4.06.i.i.i = phi i32 [ %i.bg, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i ], [ %.sroa.speculated.i.i, %.lr.ph.i.i.preheader.i ]
  %.sroa.0.0.copyload.i.i.i = load i24, ptr %.sroa.0.07.i.i.i, align 1, !tbaa !280 ; 3 uses
  %.sroa.3.0.extract.shift.i.i.i.i = lshr i24 %.sroa.0.0.copyload.i.i.i, 16
  %i.bb = shl i24 %.sroa.0.0.copyload.i.i.i, 16
  %i.bc = and i24 %.sroa.0.0.copyload.i.i.i, 65280
  %i.bd = or disjoint i24 %i.bc, %i.bb
  %i.be = or disjoint i24 %i.bd, %.sroa.3.0.extract.shift.i.i.i.i
  %i.bf = zext i24 %i.be to i32
  %.not.i.i.i.i.i.i = icmp eq i32 %.sroa.6.0.i, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i, !prof !267

bb.g:                                             ; preds = %.lr.ph.i.i.i
  store i32 0, ptr @_hb_CrapPool, align 16
  br label %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i

_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i: ; preds = %bb.g, %.lr.ph.i.i.i
  %.sroa.018.1.idx.i = phi i64 [ 0, %bb.g ], [ 4, %.lr.ph.i.i.i ]
  %.0.i.i.i.i.i.i = phi ptr [ @_hb_CrapPool, %bb.g ], [ %.sroa.018.0.i, %.lr.ph.i.i.i ]
  store i32 %i.bf, ptr %.0.i.i.i.i.i.i, align 4, !tbaa !324
  %.sroa.6.1.i = tail call i32 @llvm.usub.sat.i32(i32 %.sroa.6.0.i, i32 1)
  %.sroa.018.1.i = getelementptr inbounds nuw i8, ptr %.sroa.018.0.i, i64 %.sroa.018.1.idx.i
  %i.bg = add nsw i32 %.sroa.4.06.i.i.i, -1       ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i, i64 3
  %.not.i.i.i13 = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i.i13, label %_ZNK2OT30FeatureParamsCharacterVariants14get_charactersEjPjS1_.exit, label %.lr.ph.i.i.i, !llvm.loop !2673

_ZNK2OT30FeatureParamsCharacterVariants14get_charactersEjPjS1_.exit: ; preds = %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i, %_ZNK2OT8GSUBGPOS15get_feature_tagEj.exit, %_ZNK10hb_array_tIKN2OT7NumTypeILb1EjLj3EEEE9sub_arrayEjPj.exit.i
  ret i32 %.sroa.5.8.extract.trunc.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK11hb_ot_map_t10substituteEPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %struct.GSUBProxy, align 8          ; 4 uses
  %i.a = alloca [5 x i8], align 1                 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #63
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !264  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 312 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.f = load atomic ptr, ptr %i.d acquire, align 8 ; 2 uses
  %.not14.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not14.i.i.i.i, label %.lr.ph.i.i.i.i, label %_ZN9GSUBProxyC2EP9hb_face_t.exit, !prof !265

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %bb.e
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !266
  %.not.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i, label %_ZN9GSUBProxyC2EP9hb_face_t.exit, label %bb.b, !prof !267

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.h = tail call noundef ptr @_ZNK17hb_data_wrapper_tI9hb_face_tLj26EE11call_createIN2OT18GSUB_accelerator_tE21hb_face_lazy_loader_tIS4_Lj26EEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) %i.d) ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not10.i.i.i.i, label %bb.c, label %bb.d, !prof !267

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.07.i.i.i.i = phi ptr [ @_hb_NullPool, %bb.c ], [ %i.h, %bb.b ] ; 3 uses
  %i.i = cmpxchg weak ptr %i.d, ptr null, ptr %.07.i.i.i.i acq_rel monotonic, align 8
  %i.j = extractvalue { ptr, i1 } %i.i, 1
  br i1 %i.j, label %_ZN9GSUBProxyC2EP9hb_face_t.exit, label %bb.e, !prof !268

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN16hb_lazy_loader_tIN2OT18GSUB_accelerator_tE21hb_face_lazy_loader_tIS1_Lj26EE9hb_face_tLj26ES1_E10do_destroyEPS1_(ptr noundef nonnull %.07.i.i.i.i)
  %i.k = load atomic ptr, ptr %i.d acquire, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %_ZN9GSUBProxyC2EP9hb_face_t.exit, !prof !269

_ZN9GSUBProxyC2EP9hb_face_t.exit:                 ; preds = %.lr.ph.i.i.i.i, %bb.d, %bb.e, %bb.a
  %.19.ph.i.i.i.i = phi ptr [ %i.f, %bb.a ], [ %.07.i.i.i.i, %bb.d ], [ %i.k, %bb.e ], [ @_hb_NullPool, %.lr.ph.i.i.i.i ]
  store ptr %.19.ph.i.i.i.i, ptr %4, align 8, !tbaa !2674
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #63
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 0, ptr %i.l, align 1
  %i.m = load i32, ptr %0, align 8, !tbaa !324    ; 4 uses
  %i.n = lshr i32 %i.m, 24
  %i.o = trunc nuw i32 %i.n to i8
  store i8 %i.o, ptr %i.a, align 1, !tbaa !280
  %i.p = lshr i32 %i.m, 16
  %i.q = trunc i32 %i.p to i8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 1
end_hunk_15
begin_hunk_16_@hb_ot_math_get_constant:bb.a
  br i1 %.not10.i.i.i21, label %bb.m, label %bb.n, !prof !267

bb.m:                                             ; preds = %bb.l
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.07.i.i.i22 = phi ptr [ @_hb_NullPool, %bb.m ], [ %i.bb, %bb.l ] ; 3 uses
  %i.bc = cmpxchg weak ptr %i.ax, ptr null, ptr %.07.i.i.i22 acq_rel monotonic, align 8
  %i.bd = extractvalue { ptr, i1 } %i.bc, 1
  br i1 %i.bd, label %_ZNK16hb_lazy_loader_tIN2OT4MATHE22hb_table_lazy_loader_tIS1_Lj41ELb1EE9hb_face_tLj41E9hb_blob_tEptEv.exit24, label %bb.o, !prof !268

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN16hb_lazy_loader_tIN2OT4MATHE22hb_table_lazy_loader_tIS1_Lj41ELb1EE9hb_face_tLj41E9hb_blob_tE10do_destroyEPS5_(ptr noundef nonnull %.07.i.i.i22)
  %i.be = load atomic ptr, ptr %i.ax acquire, align 8 ; 2 uses
  %.not.i.i.i23 = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i23, label %.lr.ph.i.i.i19, label %_ZNK16hb_lazy_loader_tIN2OT4MATHE22hb_table_lazy_loader_tIS1_Lj41ELb1EE9hb_face_tLj41E9hb_blob_tEptEv.exit24, !prof !269

_ZNK16hb_lazy_loader_tIN2OT4MATHE22hb_table_lazy_loader_tIS1_Lj41ELb1EE9hb_face_tLj41E9hb_blob_tEptEv.exit24: ; preds = %.lr.ph.i.i.i19, %bb.n, %bb.o, %bb.k
  %.19.ph.i.i.i17 = phi ptr [ %i.az, %bb.k ], [ @_hb_NullPool, %.lr.ph.i.i.i19 ], [ %i.be, %bb.o ], [ %.07.i.i.i22, %bb.n ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i17, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !275
  %i.bh = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i17, i64 24
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !276
  %i.bj = icmp ult i32 %i.bi, 10
  %spec.select.i.i.i.i.i18 = select i1 %i.bj, ptr @_hb_NullPool, ptr %i.bg ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i18, i64 4
  %i.bl = load i16, ptr %i.bk, align 1, !tbaa !283 ; 2 uses
  %i.bm = icmp eq i16 %i.bl, 0
  %i.bn = tail call i16 @llvm.bswap.i16(i16 %i.bl)
  %i.bo = zext i16 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i18, i64 %i.bo
  %.0.i.i.i25 = select i1 %i.bm, ptr @_hb_NullPool, ptr %i.bp, !prof !267
  %i.bq = tail call noundef i32 @_ZNK2OT13MathConstants9get_valueE21hb_ot_math_constant_tP9hb_font_t(ptr noundef nonnull align 1 dereferenceable(214) %.0.i.i.i25, i32 noundef %.0, ptr noundef %0)
  ret i32 %i.bq
}

; Function Attrs: mustprogress nounwind uwtable
define i32 @hb_ot_math_get_glyph_italics_correction(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !264  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 432 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.e = load atomic ptr, ptr %i.c acquire, align 8 ; 2 uses
  %.not14.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not14.i.i.i, label %.lr.ph.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT4MATHE22hb_table_lazy_loader_tIS1_Lj41ELb1EE9hb_face_tLj41E9hb_blob_tEptEv.exit, !prof !265

.lr.ph.i.i.i:                                     ; preds = %bb.a, %bb.e
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !266  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT4MATHE22hb_table_lazy_loader_tIS1_Lj41ELb1EE9hb_face_tLj41E9hb_blob_tEptEv.exit, label %bb.b, !prof !267

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.g = tail call noundef ptr @_ZN22hb_table_lazy_loader_tIN2OT4MATHELj41ELb1EE6createEP9hb_face_t(ptr noundef nonnull %i.f) ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not10.i.i.i, label %bb.c, label %bb.d, !prof !267

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.07.i.i.i = phi ptr [ @_hb_NullPool, %bb.c ], [ %i.g, %bb.b ] ; 3 uses
  %i.h = cmpxchg weak ptr %i.c, ptr null, ptr %.07.i.i.i acq_rel monotonic, align 8
  %i.i = extractvalue { ptr, i1 } %i.h, 1
  br i1 %i.i, label %_ZNK16hb_lazy_loader_tIN2OT4MATHE22hb_table_lazy_loader_tIS1_Lj41ELb1EE9hb_face_tLj41E9hb_blob_tEptEv.exit, label %bb.e, !prof !268

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN16hb_lazy_loader_tIN2OT4MATHE22hb_table_lazy_loader_tIS1_Lj41ELb1EE9hb_face_tLj41E9hb_blob_tE10do_destroyEPS5_(ptr noundef nonnull %.07.i.i.i)
  %i.j = load atomic ptr, ptr %i.c acquire, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT4MATHE22hb_table_lazy_loader_tIS1_Lj41ELb1EE9hb_face_tLj41E9hb_blob_tEptEv.exit, !prof !269

_ZNK16hb_lazy_loader_tIN2OT4MATHE22hb_table_lazy_loader_tIS1_Lj41ELb1EE9hb_face_tLj41E9hb_blob_tEptEv.exit: ; preds = %.lr.ph.i.i.i, %bb.d, %bb.e, %bb.a
  %.19.ph.i.i.i = phi ptr [ %i.e, %bb.a ], [ @_hb_NullPool, %.lr.ph.i.i.i ], [ %i.j, %bb.e ], [ %.07.i.i.i, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !275
  %i.m = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !276
  %i.o = icmp ult i32 %i.n, 10
  %spec.select.i.i.i.i.i = select i1 %i.o, ptr @_hb_NullPool, ptr %i.l ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 6
  %i.q = load i16, ptr %i.p, align 1, !tbaa !283  ; 2 uses
  %i.r = icmp eq i16 %i.q, 0
  %i.s = tail call i16 @llvm.bswap.i16(i16 %i.q)
  %i.t = zext i16 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 %i.t
  %.0.i.i.i = select i1 %i.r, ptr @_hb_NullPool, ptr %i.u, !prof !267 ; 2 uses
  %i.v = load i16, ptr %.0.i.i.i, align 1, !tbaa !283 ; 2 uses
  %i.w = icmp eq i16 %i.v, 0
  %i.x = tail call i16 @llvm.bswap.i16(i16 %i.v)
  %i.y = zext i16 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.y
  %.0.i.i.i2 = select i1 %i.w, ptr @_hb_NullPool, ptr %i.z, !prof !267 ; 5 uses
  %i.aa = load i16, ptr %.0.i.i.i2, align 1, !tbaa !283 ; 2 uses
  %i.ab = icmp eq i16 %i.aa, 0
  %i.ac = tail call i16 @llvm.bswap.i16(i16 %i.aa)
  %i.ad = zext i16 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i.i.i2, i64 %i.ad
  %.0.i.i.i.i = select i1 %i.ab, ptr @_hb_NullPool, ptr %i.ae, !prof !267
  %i.af = tail call noundef i32 @_ZNK2OT6Layout6Common8Coverage12get_coverageEj(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i.i.i, i32 noundef %1) ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i.i.i2, i64 2
  %i.ah = load i16, ptr %i.ag, align 1, !tbaa !283
  %i.ai = tail call noundef i16 @llvm.bswap.i16(i16 %i.ah)
  %i.aj = zext i16 %i.ai to i32
  %.not.i.i.i3 = icmp ult i32 %i.af, %i.aj
  br i1 %.not.i.i.i3, label %bb.f, label %_ZNK2OT13MathGlyphInfo22get_italics_correctionEjP9hb_font_t.exit, !prof !268

bb.f:                                             ; preds = %_ZNK16hb_lazy_loader_tIN2OT4MATHE22hb_table_lazy_loader_tIS1_Lj41ELb1EE9hb_face_tLj41E9hb_blob_tEptEv.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i.i.i2, i64 4
  %i.al = zext nneg i32 %i.af to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.al
  br label %_ZNK2OT13MathGlyphInfo22get_italics_correctionEjP9hb_font_t.exit

_ZNK2OT13MathGlyphInfo22get_italics_correctionEjP9hb_font_t.exit: ; preds = %_ZNK16hb_lazy_loader_tIN2OT4MATHE22hb_table_lazy_loader_tIS1_Lj41ELb1EE9hb_face_tLj41E9hb_blob_tEptEv.exit, %bb.f
  %.0.i.i2.i = phi ptr [ %i.am, %bb.f ], [ @_hb_NullPool, %_ZNK16hb_lazy_loader_tIN2OT4MATHE22hb_table_lazy_loader_tIS1_Lj41ELb1EE9hb_face_tLj41E9hb_blob_tEptEv.exit ] ; 2 uses
  %i.an = load i16, ptr %.0.i.i2.i, align 1, !tbaa !283
  %i.ao = tail call noundef i16 @llvm.bswap.i16(i16 %i.an)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !1048
  %i.ar = sext i16 %i.ao to i64
  %i.as = mul nsw i64 %i.aq, %i.ar
  %i.at = add nsw i64 %i.as, 32768
  %i.au = lshr i64 %i.at, 16
  %i.av = trunc i64 %i.au to i32
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i.i2.i, i64 2
  %i.ax = load i16, ptr %i.aw, align 1, !tbaa !283 ; 2 uses
  %i.ay = icmp eq i16 %i.ax, 0
  %i.az = tail call i16 @llvm.bswap.i16(i16 %i.ax)
  %i.ba = zext i16 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i.i.i2, i64 %i.ba
  %.0.i.i.i.i.i = select i1 %i.ay, ptr @_hb_NullPool, ptr %i.bb, !prof !267
  %i.bc = tail call noundef i32 @_ZNK2OT6Device11get_x_deltaEP9hb_font_tRKNS_18ItemVariationStoreEPNS_17hb_scalar_cache_tE(ptr noundef nonnull align 1 dereferenceable(8) %.0.i.i.i.i.i, ptr noundef nonnull %0, ptr noundef nonnull align 1 dereferenceable(12) @_hb_NullPool, ptr noundef null)
  %i.bd = add nsw i32 %i.bc, %i.av
  ret i32 %i.bd
}

; Function Attrs: mustprogress nounwind uwtable
define noundef i32 @hb_ot_math_get_glyph_top_accent_attachment(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !264  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 432 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.e = load atomic ptr, ptr %i.c acquire, align 8 ; 2 uses
  %.not14.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not14.i.i.i, label %.lr.ph.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT4MATHE22hb_table_lazy_loader_tIS1_Lj41ELb1EE9hb_face_tLj41E9hb_blob_tEptEv.exit, !prof !265

.lr.ph.i.i.i:                                     ; preds = %bb.a, %bb.e
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !266  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT4MATHE22hb_table_lazy_loader_tIS1_Lj41ELb1EE9hb_face_tLj41E9hb_blob_tEptEv.exit, label %bb.b, !prof !267

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.g = tail call noundef ptr @_ZN22hb_table_lazy_loader_tIN2OT4MATHELj41ELb1EE6createEP9hb_face_t(ptr noundef nonnull %i.f) ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not10.i.i.i, label %bb.c, label %bb.d, !prof !267

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.07.i.i.i = phi ptr [ @_hb_NullPool, %bb.c ], [ %i.g, %bb.b ] ; 3 uses
  %i.h = cmpxchg weak ptr %i.c, ptr null, ptr %.07.i.i.i acq_rel monotonic, align 8
  %i.i = extractvalue { ptr, i1 } %i.h, 1
  br i1 %i.i, label %_ZNK16hb_lazy_loader_tIN2OT4MATHE22hb_table_lazy_loader_tIS1_Lj41ELb1EE9hb_face_tLj41E9hb_blob_tEptEv.exit, label %bb.e, !prof !268

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN16hb_lazy_loader_tIN2OT4MATHE22hb_table_lazy_loader_tIS1_Lj41ELb1EE9hb_face_tLj41E9hb_blob_tE10do_destroyEPS5_(ptr noundef nonnull %.07.i.i.i)
  %i.j = load atomic ptr, ptr %i.c acquire, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT4MATHE22hb_table_lazy_loader_tIS1_Lj41ELb1EE9hb_face_tLj41E9hb_blob_tEptEv.exit, !prof !269

_ZNK16hb_lazy_loader_tIN2OT4MATHE22hb_table_lazy_loader_tIS1_Lj41ELb1EE9hb_face_tLj41E9hb_blob_tEptEv.exit: ; preds = %.lr.ph.i.i.i, %bb.d, %bb.e, %bb.a
  %.19.ph.i.i.i = phi ptr [ %i.e, %bb.a ], [ @_hb_NullPool, %.lr.ph.i.i.i ], [ %i.j, %bb.e ], [ %.07.i.i.i, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !275
  %i.m = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !276
  %i.o = icmp ult i32 %i.n, 10
  %spec.select.i.i.i.i.i = select i1 %i.o, ptr @_hb_NullPool, ptr %i.l ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 6
  %i.q = load i16, ptr %i.p, align 1, !tbaa !283  ; 2 uses
  %i.r = icmp eq i16 %i.q, 0
  %i.s = tail call i16 @llvm.bswap.i16(i16 %i.q)
  %i.t = zext i16 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 %i.t
  %.0.i.i.i = select i1 %i.r, ptr @_hb_NullPool, ptr %i.u, !prof !267 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 2
  %i.w = load i16, ptr %i.v, align 1, !tbaa !283  ; 2 uses
  %i.x = icmp eq i16 %i.w, 0
  %i.y = tail call i16 @llvm.bswap.i16(i16 %i.w)
  %i.z = zext i16 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.z
  %.0.i.i.i2 = select i1 %i.x, ptr @_hb_NullPool, ptr %i.aa, !prof !267
  %i.ab = tail call noundef i32 @_ZNK2OT23MathTopAccentAttachment9get_valueEjP9hb_font_t(ptr noundef nonnull align 1 dereferenceable(8) %.0.i.i.i2, i32 noundef %1, ptr noundef %0)
  ret i32 %i.ab
}

; Function Attrs: mustprogress nounwind uwtable
define noundef range(i32 0, 2) i32 @hb_ot_math_is_glyph_extended_shape(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = load atomic ptr, ptr %i.a acquire, align 8 ; 2 uses
  %.not14.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not14.i.i.i, label %.lr.ph.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT4MATHE22hb_table_lazy_loader_tIS1_Lj41ELb1EE9hb_face_tLj41E9hb_blob_tEptEv.exit, !prof !265

.lr.ph.i.i.i:                                     ; preds = %bb.a, %bb.e
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !266  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT4MATHE22hb_table_lazy_loader_tIS1_Lj41ELb1EE9hb_face_tLj41E9hb_blob_tEptEv.exit, label %bb.b, !prof !267

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.e = tail call noundef ptr @_ZN22hb_table_lazy_loader_tIN2OT4MATHELj41ELb1EE6createEP9hb_face_t(ptr noundef nonnull %i.d) ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not10.i.i.i, label %bb.c, label %bb.d, !prof !267

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.07.i.i.i = phi ptr [ @_hb_NullPool, %bb.c ], [ %i.e, %bb.b ] ; 3 uses
  %i.f = cmpxchg weak ptr %i.a, ptr null, ptr %.07.i.i.i acq_rel monotonic, align 8
  %i.g = extractvalue { ptr, i1 } %i.f, 1
  br i1 %i.g, label %_ZNK16hb_lazy_loader_tIN2OT4MATHE22hb_table_lazy_loader_tIS1_Lj41ELb1EE9hb_face_tLj41E9hb_blob_tEptEv.exit, label %bb.e, !prof !268

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN16hb_lazy_loader_tIN2OT4MATHE22hb_table_lazy_loader_tIS1_Lj41ELb1EE9hb_face_tLj41E9hb_blob_tE10do_destroyEPS5_(ptr noundef nonnull %.07.i.i.i)
  %i.h = load atomic ptr, ptr %i.a acquire, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT4MATHE22hb_table_lazy_loader_tIS1_Lj41ELb1EE9hb_face_tLj41E9hb_blob_tEptEv.exit, !prof !269

_ZNK16hb_lazy_loader_tIN2OT4MATHE22hb_table_lazy_loader_tIS1_Lj41ELb1EE9hb_face_tLj41E9hb_blob_tEptEv.exit: ; preds = %.lr.ph.i.i.i, %bb.d, %bb.e, %bb.a
  %.19.ph.i.i.i = phi ptr [ %i.c, %bb.a ], [ @_hb_NullPool, %.lr.ph.i.i.i ], [ %i.h, %bb.e ], [ %.07.i.i.i, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !275
  %i.k = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !276
  %i.m = icmp ult i32 %i.l, 10
  %spec.select.i.i.i.i.i = select i1 %i.m, ptr @_hb_NullPool, ptr %i.j ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 6
  %i.o = load i16, ptr %i.n, align 1, !tbaa !283  ; 2 uses
  %i.p = icmp eq i16 %i.o, 0
  %i.q = tail call i16 @llvm.bswap.i16(i16 %i.o)
  %i.r = zext i16 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 %i.r
  %.0.i.i.i = select i1 %i.p, ptr @_hb_NullPool, ptr %i.s, !prof !267 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4
  %i.u = load i16, ptr %i.t, align 1, !tbaa !283  ; 2 uses
  %i.v = icmp eq i16 %i.u, 0
  %i.w = tail call i16 @llvm.bswap.i16(i16 %i.u)
  %i.x = zext i16 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.x
  %.0.i.i.i1 = select i1 %i.v, ptr @_hb_NullPool, ptr %i.y, !prof !267
  %i.z = tail call noundef i32 @_ZNK2OT6Layout6Common8Coverage12get_coverageEj(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i.i1, i32 noundef %1)
  %i.aa = icmp ne i32 %i.z, -1
  %i.ab = zext i1 %i.aa to i32
  ret i32 %i.ab
}

; Function Attrs: mustprogress nounwind uwtable
define noundef i32 @hb_ot_math_get_glyph_kerning(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !264  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 432 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.e = load atomic ptr, ptr %i.c acquire, align 8 ; 2 uses
  %.not14.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not14.i.i.i, label %.lr.ph.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT4MATHE22hb_table_lazy_loader_tIS1_Lj41ELb1EE9hb_face_tLj41E9hb_blob_tEptEv.exit, !prof !265

.lr.ph.i.i.i:                                     ; preds = %bb.a, %bb.e
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !266  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT4MATHE22hb_table_lazy_loader_tIS1_Lj41ELb1EE9hb_face_tLj41E9hb_blob_tEptEv.exit, label %bb.b, !prof !267

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.g = tail call noundef ptr @_ZN22hb_table_lazy_loader_tIN2OT4MATHELj41ELb1EE6createEP9hb_face_t(ptr noundef nonnull %i.f) ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not10.i.i.i, label %bb.c, label %bb.d, !prof !267

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.07.i.i.i = phi ptr [ @_hb_NullPool, %bb.c ], [ %i.g, %bb.b ] ; 3 uses
  %i.h = cmpxchg weak ptr %i.c, ptr null, ptr %.07.i.i.i acq_rel monotonic, align 8
  %i.i = extractvalue { ptr, i1 } %i.h, 1
  br i1 %i.i, label %_ZNK16hb_lazy_loader_tIN2OT4MATHE22hb_table_lazy_loader_tIS1_Lj41ELb1EE9hb_face_tLj41E9hb_blob_tEptEv.exit, label %bb.e, !prof !268

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN16hb_lazy_loader_tIN2OT4MATHE22hb_table_lazy_loader_tIS1_Lj41ELb1EE9hb_face_tLj41E9hb_blob_tE10do_destroyEPS5_(ptr noundef nonnull %.07.i.i.i)
  %i.j = load atomic ptr, ptr %i.c acquire, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT4MATHE22hb_table_lazy_loader_tIS1_Lj41ELb1EE9hb_face_tLj41E9hb_blob_tEptEv.exit, !prof !269

_ZNK16hb_lazy_loader_tIN2OT4MATHE22hb_table_lazy_loader_tIS1_Lj41ELb1EE9hb_face_tLj41E9hb_blob_tEptEv.exit: ; preds = %.lr.ph.i.i.i, %bb.d, %bb.e, %bb.a
  %.19.ph.i.i.i = phi ptr [ %i.e, %bb.a ], [ @_hb_NullPool, %.lr.ph.i.i.i ], [ %i.j, %bb.e ], [ %.07.i.i.i, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !275
  %i.m = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !276
  %i.o = icmp ult i32 %i.n, 10
  %spec.select.i.i.i.i.i = select i1 %i.o, ptr @_hb_NullPool, ptr %i.l ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 6
  %i.q = load i16, ptr %i.p, align 1, !tbaa !283  ; 2 uses
  %i.r = icmp eq i16 %i.q, 0
  %i.s = tail call i16 @llvm.bswap.i16(i16 %i.q)
  %i.t = zext i16 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 %i.t
  %.0.i.i.i = select i1 %i.r, ptr @_hb_NullPool, ptr %i.u, !prof !267 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 6
  %i.w = load i16, ptr %i.v, align 1, !tbaa !283  ; 2 uses
  %i.x = icmp eq i16 %i.w, 0
  %i.y = tail call i16 @llvm.bswap.i16(i16 %i.w)
  %i.z = zext i16 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.z
  %.0.i.i.i4 = select i1 %i.x, ptr @_hb_NullPool, ptr %i.aa, !prof !267 ; 5 uses
  %i.ab = load i16, ptr %.0.i.i.i4, align 1, !tbaa !283 ; 2 uses
  %i.ac = icmp eq i16 %i.ab, 0
  %i.ad = tail call i16 @llvm.bswap.i16(i16 %i.ab)
  %i.ae = zext i16 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i.i.i4, i64 %i.ae
  %.0.i.i.i.i = select i1 %i.ac, ptr @_hb_NullPool, ptr %i.af, !prof !267
  %i.ag = tail call noundef i32 @_ZNK2OT6Layout6Common8Coverage12get_coverageEj(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i.i.i, i32 noundef %1) ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i.i.i4, i64 2
  %i.ai = load i16, ptr %i.ah, align 1, !tbaa !283
  %i.aj = tail call noundef i16 @llvm.bswap.i16(i16 %i.ai)
  %i.ak = zext i16 %i.aj to i32
  %.not.i.i.i5 = icmp ult i32 %i.ag, %i.ak
  br i1 %.not.i.i.i5, label %bb.f, label %_ZNK2OT7ArrayOfINS_18MathKernInfoRecordENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i, !prof !268

bb.f:                                             ; preds = %_ZNK16hb_lazy_loader_tIN2OT4MATHE22hb_table_lazy_loader_tIS1_Lj41ELb1EE9hb_face_tLj41E9hb_blob_tEptEv.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i.i.i4, i64 4
  %i.am = zext nneg i32 %i.ag to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.am
  br label %_ZNK2OT7ArrayOfINS_18MathKernInfoRecordENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i

_ZNK2OT7ArrayOfINS_18MathKernInfoRecordENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i: ; preds = %bb.f, %_ZNK16hb_lazy_loader_tIN2OT4MATHE22hb_table_lazy_loader_tIS1_Lj41ELb1EE9hb_face_tLj41E9hb_blob_tEptEv.exit
  %.0.i.i4.i = phi ptr [ %i.an, %bb.f ], [ @_hb_NullPool, %_ZNK16hb_lazy_loader_tIN2OT4MATHE22hb_table_lazy_loader_tIS1_Lj41ELb1EE9hb_face_tLj41E9hb_blob_tEptEv.exit ]
  %i.ao = icmp ugt i32 %2, 3
  br i1 %i.ao, label %_ZNK2OT13MathGlyphInfo11get_kerningEj17hb_ot_math_kern_tiP9hb_font_t.exit, label %bb.g, !prof !267

bb.g:                                             ; preds = %_ZNK2OT7ArrayOfINS_18MathKernInfoRecordENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i
  %i.ap = zext nneg i32 %2 to i64
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %.0.i.i4.i, i64 %i.ap
  %i.ar = load i16, ptr %i.aq, align 1, !tbaa !283 ; 2 uses
  %i.as = icmp eq i16 %i.ar, 0
  %i.at = tail call i16 @llvm.bswap.i16(i16 %i.ar)
  %i.au = zext i16 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i.i.i4, i64 %i.au
  %.0.i.i.i.i.i = select i1 %i.as, ptr @_hb_NullPool, ptr %i.av, !prof !267
  %i.aw = tail call noundef i32 @_ZNK2OT8MathKern9get_valueEiP9hb_font_t(ptr noundef nonnull align 1 dereferenceable(6) %.0.i.i.i.i.i, i32 noundef %3, ptr noundef %0)
  br label %_ZNK2OT13MathGlyphInfo11get_kerningEj17hb_ot_math_kern_tiP9hb_font_t.exit

_ZNK2OT13MathGlyphInfo11get_kerningEj17hb_ot_math_kern_tiP9hb_font_t.exit: ; preds = %_ZNK2OT7ArrayOfINS_18MathKernInfoRecordENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i, %bb.g
  %.0.i5.i.i = phi i32 [ %i.aw, %bb.g ], [ 0, %_ZNK2OT7ArrayOfINS_18MathKernInfoRecordENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i ]
  ret i32 %.0.i5.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define noundef i32 @hb_ot_math_get_glyph_kernings(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !264  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 432 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.e = load atomic ptr, ptr %i.c acquire, align 8 ; 2 uses
  %.not14.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not14.i.i.i, label %.lr.ph.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT4MATHE22hb_table_lazy_loader_tIS1_Lj41ELb1EE9hb_face_tLj41E9hb_blob_tEptEv.exit, !prof !265

.lr.ph.i.i.i:                                     ; preds = %bb.a, %bb.e
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !266  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT4MATHE22hb_table_lazy_loader_tIS1_Lj41ELb1EE9hb_face_tLj41E9hb_blob_tEptEv.exit, label %bb.b, !prof !267

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.g = tail call noundef ptr @_ZN22hb_table_lazy_loader_tIN2OT4MATHELj41ELb1EE6createEP9hb_face_t(ptr noundef nonnull %i.f) ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not10.i.i.i, label %bb.c, label %bb.d, !prof !267

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.07.i.i.i = phi ptr [ @_hb_NullPool, %bb.c ], [ %i.g, %bb.b ] ; 3 uses
  %i.h = cmpxchg weak ptr %i.c, ptr null, ptr %.07.i.i.i acq_rel monotonic, align 8
  %i.i = extractvalue { ptr, i1 } %i.h, 1
  br i1 %i.i, label %_ZNK16hb_lazy_loader_tIN2OT4MATHE22hb_table_lazy_loader_tIS1_Lj41ELb1EE9hb_face_tLj41E9hb_blob_tEptEv.exit, label %bb.e, !prof !268

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN16hb_lazy_loader_tIN2OT4MATHE22hb_table_lazy_loader_tIS1_Lj41ELb1EE9hb_face_tLj41E9hb_blob_tE10do_destroyEPS5_(ptr noundef nonnull %.07.i.i.i)
  %i.j = load atomic ptr, ptr %i.c acquire, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT4MATHE22hb_table_lazy_loader_tIS1_Lj41ELb1EE9hb_face_tLj41E9hb_blob_tEptEv.exit, !prof !269

_ZNK16hb_lazy_loader_tIN2OT4MATHE22hb_table_lazy_loader_tIS1_Lj41ELb1EE9hb_face_tLj41E9hb_blob_tEptEv.exit: ; preds = %.lr.ph.i.i.i, %bb.d, %bb.e, %bb.a
  %.19.ph.i.i.i = phi ptr [ %i.e, %bb.a ], [ @_hb_NullPool, %.lr.ph.i.i.i ], [ %i.j, %bb.e ], [ %.07.i.i.i, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i, i64 16
end_hunk_16
begin_hunk_17_@_ZNK18hb_ot_shape_plan_t8positionEP9hb_font_tP11hb_buffer_t:bb.a

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZNK11hb_ot_map_t8positionEPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = and i16 %i.b, 2048
  %.not11 = icmp eq i16 %i.e, 0
  br i1 %.not11, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_Z22hb_aat_layout_positionPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %i.f = load i16, ptr %i.a, align 4              ; 2 uses
  %i.g = and i16 %i.f, 512
  %.not12 = icmp eq i16 %i.g, 0
  br i1 %.not12, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_Z17hb_ot_layout_kernPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2)
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.h = and i16 %i.f, 1024
  %.not13 = icmp eq i16 %i.h, 0
  br i1 %.not13, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_Z26_hb_ot_shape_fallback_kernPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  %i.i = load i16, ptr %i.a, align 4
  %i.j = and i16 %i.i, 8192
  %.not14 = icmp eq i16 %i.j, 0
  br i1 %.not14, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_Z19hb_aat_layout_trackPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull ptr @_hb_ot_shaper_face_data_create(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #4 {
bb.a:
  ret ptr inttoptr (i64 1 to ptr)
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_hb_ot_shaper_face_data_destroy(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_hb_ot_shaper_font_data_create(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !264  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 304 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.e = load atomic ptr, ptr %i.c acquire, align 8 ; 2 uses
  %.not14.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not14.i.i.i, label %.lr.ph.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT18GDEF_accelerator_tE21hb_face_lazy_loader_tIS1_Lj25EE9hb_face_tLj25ES1_EptEv.exit, !prof !265

.lr.ph.i.i.i:                                     ; preds = %bb.a, %bb.e
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !266
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT18GDEF_accelerator_tE21hb_face_lazy_loader_tIS1_Lj25EE9hb_face_tLj25ES1_EptEv.exit, label %bb.b, !prof !267

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.g = tail call noundef ptr @_ZNK17hb_data_wrapper_tI9hb_face_tLj25EE11call_createIN2OT18GDEF_accelerator_tE21hb_face_lazy_loader_tIS4_Lj25EEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) %i.c) ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not10.i.i.i, label %bb.c, label %bb.d, !prof !267

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.07.i.i.i = phi ptr [ @_hb_NullPool, %bb.c ], [ %i.g, %bb.b ] ; 3 uses
  %i.h = cmpxchg weak ptr %i.c, ptr null, ptr %.07.i.i.i acq_rel monotonic, align 8
  %i.i = extractvalue { ptr, i1 } %i.h, 1
  br i1 %i.i, label %_ZNK16hb_lazy_loader_tIN2OT18GDEF_accelerator_tE21hb_face_lazy_loader_tIS1_Lj25EE9hb_face_tLj25ES1_EptEv.exit, label %bb.e, !prof !268

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN16hb_lazy_loader_tIN2OT18GDEF_accelerator_tE21hb_face_lazy_loader_tIS1_Lj25EE9hb_face_tLj25ES1_E10do_destroyEPS1_(ptr noundef nonnull %.07.i.i.i)
  %i.j = load atomic ptr, ptr %i.c acquire, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT18GDEF_accelerator_tE21hb_face_lazy_loader_tIS1_Lj25EE9hb_face_tLj25ES1_EptEv.exit, !prof !269

_ZNK16hb_lazy_loader_tIN2OT18GDEF_accelerator_tE21hb_face_lazy_loader_tIS1_Lj25EE9hb_face_tLj25ES1_EptEv.exit: ; preds = %.lr.ph.i.i.i, %bb.d, %bb.e, %bb.a
  %.19.ph.i.i.i = phi ptr [ %i.e, %bb.a ], [ @_hb_NullPool, %.lr.ph.i.i.i ], [ %i.j, %bb.e ], [ %.07.i.i.i, %bb.d ]
  %i.k = load ptr, ptr %.19.ph.i.i.i, align 8, !tbaa !272 ; 2 uses
  %.not.i.i.i.i2 = icmp eq ptr %i.k, null
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i2, ptr @_hb_NullPool, ptr %i.k ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !275
  %i.n = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i, i64 24
  %i.o = load i32, ptr %i.n, align 8, !tbaa !276
  %i.p = icmp ult i32 %i.o, 4
  %spec.select.i.i1.i.i = select i1 %i.p, ptr @_hb_NullPool, ptr %i.m ; 4 uses
  %i.q = load i16, ptr %spec.select.i.i1.i.i, align 1, !tbaa !283
  %cond.i = icmp eq i16 %i.q, 256
  br i1 %cond.i, label %bb.f, label %_ZNK2OT4GDEF13get_var_storeEv.exit

bb.f:                                             ; preds = %_ZNK16hb_lazy_loader_tIN2OT18GDEF_accelerator_tE21hb_face_lazy_loader_tIS1_Lj25EE9hb_face_tLj25ES1_EptEv.exit
  %i.r = load i32, ptr %spec.select.i.i1.i.i, align 1
  %i.s = tail call noundef i32 @llvm.bswap.i32(i32 %i.r)
  %i.t = icmp ugt i32 %i.s, 65538
  br i1 %i.t, label %bb.g, label %_ZNK2OT4GDEF13get_var_storeEv.exit

bb.g:                                             ; preds = %bb.f
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.u = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i, i64 14
  %i.v = load i32, ptr %i.u, align 1, !tbaa !278  ; 2 uses
  %i.w = icmp eq i32 %i.v, 0
  %i.x = tail call i32 @llvm.bswap.i32(i32 %i.v)
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i, i64 %i.y
  %.0.i.i.i = select i1 %i.w, ptr @_hb_NullPool, ptr %i.z, !prof !267
  br label %_ZNK2OT4GDEF13get_var_storeEv.exit

_ZNK2OT4GDEF13get_var_storeEv.exit:               ; preds = %_ZNK16hb_lazy_loader_tIN2OT18GDEF_accelerator_tE21hb_face_lazy_loader_tIS1_Lj25EE9hb_face_tLj25ES1_EptEv.exit, %bb.f, %bb.g
  %.0.i = phi ptr [ @_hb_NullPool, %bb.f ], [ %.0.i.i.i, %bb.g ], [ @_hb_NullPool, %_ZNK16hb_lazy_loader_tIN2OT18GDEF_accelerator_tE21hb_face_lazy_loader_tIS1_Lj25EE9hb_face_tLj25ES1_EptEv.exit ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i, i64 2
  %i.ab = load i32, ptr %i.aa, align 1, !tbaa !278 ; 2 uses
  %i.ac = icmp eq i32 %i.ab, 0
  %i.ad = tail call i32 @llvm.bswap.i32(i32 %i.ab)
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.ae
  %.0.i.i.i3 = select i1 %i.ac, ptr @_hb_NullPool, ptr %i.af, !prof !267
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i.i.i3, i64 2
  %i.ah = load i16, ptr %i.ag, align 1, !tbaa !283 ; 2 uses
  %i.ai = tail call noundef i16 @llvm.bswap.i16(i16 %i.ah) ; 3 uses
  %i.aj = zext i16 %i.ai to i32                   ; 2 uses
  %.not.i.i = icmp eq i16 %i.ah, 0
  br i1 %.not.i.i, label %_ZNK2OT18ItemVariationStore12create_cacheEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK2OT4GDEF13get_var_storeEv.exit
  %i.ak = zext i16 %i.ai to i64                   ; 5 uses
  %i.al = shl nuw nsw i64 %i.ak, 2
  %i.am = add nuw nsw i64 %i.al, 4
  %i.an = tail call noalias noundef ptr @malloc(i64 noundef %i.am) #65 ; 6 uses
  %.not16.i.i = icmp eq ptr %i.an, null
  br i1 %.not16.i.i, label %_ZNK2OT18ItemVariationStore12create_cacheEv.exit, label %bb.i, !prof !267

bb.i:                                             ; preds = %bb.h
  store i32 %i.aj, ptr %i.an, align 4, !tbaa !480
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4 ; 12 uses
  %i.ap = icmp ugt i16 %i.ai, 3
  br i1 %i.ap, label %.lr.ph.i25.i.i.preheader, label %.preheader.i17.i.i

.lr.ph.i25.i.i.preheader:                         ; preds = %bb.i
  %i.aq = add nsw i64 %i.ak, -4                   ; 2 uses
  %i.ar = lshr i64 %i.aq, 2                       ; 2 uses
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %i.at = icmp eq i64 %i.ar, 0
  br i1 %i.at, label %.lr.ph.i25.i.i.epil.preheader, label %.lr.ph.i25.i.i.preheader.new

.lr.ph.i25.i.i.preheader.new:                     ; preds = %.lr.ph.i25.i.i.preheader
  %unroll_iter = and i64 %i.as, 9223372036854775806
  br label %.lr.ph.i25.i.i

.preheader.i17.i.loopexit.i.unr-lcssa:            ; preds = %.lr.ph.i25.i.i
  %i.au = and i64 %i.aq, 4
  %lcmp.mod.not.not = icmp eq i64 %i.au, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i25.i.i.epil.preheader, label %.preheader.i17.i.loopexit.i

.lr.ph.i25.i.i.epil.preheader:                    ; preds = %.preheader.i17.i.loopexit.i.unr-lcssa, %.lr.ph.i25.i.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i25.i.i.preheader ], [ %indvars.iv.next.i.1, %.preheader.i17.i.loopexit.i.unr-lcssa ] ; 2 uses
  %lcmp.mod8 = trunc i64 %i.as to i1
  tail call void @llvm.assume(i1 %lcmp.mod8)
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.i.epil.init ; 4 uses
  store atomic i32 -2147483648, ptr %i.av monotonic, align 4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  store atomic i32 -2147483648, ptr %i.aw monotonic, align 4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store atomic i32 -2147483648, ptr %i.ax monotonic, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  store atomic i32 -2147483648, ptr %i.ay monotonic, align 4
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil.init, 4
  br label %.preheader.i17.i.loopexit.i

.preheader.i17.i.loopexit.i:                      ; preds = %.preheader.i17.i.loopexit.i.unr-lcssa, %.lr.ph.i25.i.i.epil.preheader
  %indvars.iv.next.i.lcssa = phi i64 [ %indvars.iv.next.i.1, %.preheader.i17.i.loopexit.i.unr-lcssa ], [ %indvars.iv.next.i.epil, %.lr.ph.i25.i.i.epil.preheader ]
  %i.az = trunc nuw nsw i64 %indvars.iv.next.i.lcssa to i32
  br label %.preheader.i17.i.i

.preheader.i17.i.i:                               ; preds = %.preheader.i17.i.loopexit.i, %bb.i
  %.0.lcssa.i18.i.i = phi i32 [ 0, %bb.i ], [ %i.az, %.preheader.i17.i.loopexit.i ] ; 2 uses
  %i.ba = icmp samesign ult i32 %.0.lcssa.i18.i.i, %i.aj
  br i1 %i.ba, label %.lr.ph18.preheader.i19.i.i, label %_ZNK2OT18ItemVariationStore12create_cacheEv.exit

.lr.ph18.preheader.i19.i.i:                       ; preds = %.preheader.i17.i.i
  %i.bb = zext nneg i32 %.0.lcssa.i18.i.i to i64  ; 4 uses
  %i.bc = sub nsw i64 %i.ak, %i.bb
  %xtraiter9 = and i64 %i.bc, 7                   ; 2 uses
  %lcmp.mod10.not = icmp eq i64 %xtraiter9, 0
  br i1 %lcmp.mod10.not, label %.lr.ph18.i21.i.i.prol.loopexit, label %.lr.ph18.i21.i.i.prol

.lr.ph18.i21.i.i.prol:                            ; preds = %.lr.ph18.preheader.i19.i.i, %.lr.ph18.i21.i.i.prol
  %indvars.iv.i22.i.i.prol = phi i64 [ %indvars.iv.next.i23.i.i.prol, %.lr.ph18.i21.i.i.prol ], [ %i.bb, %.lr.ph18.preheader.i19.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph18.i21.i.i.prol ], [ 0, %.lr.ph18.preheader.i19.i.i ]
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.i22.i.i.prol
  store atomic i32 -2147483648, ptr %i.bd monotonic, align 4
  %indvars.iv.next.i23.i.i.prol = add nuw nsw i64 %indvars.iv.i22.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter9
  br i1 %prol.iter.cmp.not, label %.lr.ph18.i21.i.i.prol.loopexit, label %.lr.ph18.i21.i.i.prol, !llvm.loop !2903

.lr.ph18.i21.i.i.prol.loopexit:                   ; preds = %.lr.ph18.i21.i.i.prol, %.lr.ph18.preheader.i19.i.i
  %indvars.iv.i22.i.i.unr = phi i64 [ %i.bb, %.lr.ph18.preheader.i19.i.i ], [ %indvars.iv.next.i23.i.i.prol, %.lr.ph18.i21.i.i.prol ]
  %i.be = sub nsw i64 %i.bb, %i.ak
  %i.bf = icmp ugt i64 %i.be, -8
  br i1 %i.bf, label %_ZNK2OT18ItemVariationStore12create_cacheEv.exit, label %.lr.ph18.i21.i.i

.lr.ph.i25.i.i:                                   ; preds = %.lr.ph.i25.i.i, %.lr.ph.i25.i.i.preheader.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i25.i.i.preheader.new ], [ %indvars.iv.next.i.1, %.lr.ph.i25.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i25.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i25.i.i ]
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.i ; 4 uses
  store atomic i32 -2147483648, ptr %i.bg monotonic, align 4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  store atomic i32 -2147483648, ptr %i.bh monotonic, align 4
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store atomic i32 -2147483648, ptr %i.bi monotonic, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  store atomic i32 -2147483648, ptr %i.bj monotonic, align 4
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.i ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store atomic i32 -2147483648, ptr %i.bl monotonic, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 20
  store atomic i32 -2147483648, ptr %i.bm monotonic, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  store atomic i32 -2147483648, ptr %i.bn monotonic, align 4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 28
  store atomic i32 -2147483648, ptr %i.bo monotonic, align 4
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 8 ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader.i17.i.loopexit.i.unr-lcssa, label %.lr.ph.i25.i.i, !llvm.loop !5

.lr.ph18.i21.i.i:                                 ; preds = %.lr.ph18.i21.i.i.prol.loopexit, %.lr.ph18.i21.i.i
  %indvars.iv.i22.i.i = phi i64 [ %indvars.iv.next.i23.i.i.7, %.lr.ph18.i21.i.i ], [ %indvars.iv.i22.i.i.unr, %.lr.ph18.i21.i.i.prol.loopexit ] ; 9 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.i22.i.i
  store atomic i32 -2147483648, ptr %i.bp monotonic, align 4
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.i22.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  store atomic i32 -2147483648, ptr %i.br monotonic, align 4
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.i22.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store atomic i32 -2147483648, ptr %i.bt monotonic, align 4
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.i22.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  store atomic i32 -2147483648, ptr %i.bv monotonic, align 4
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.i22.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store atomic i32 -2147483648, ptr %i.bx monotonic, align 4
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.i22.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 20
  store atomic i32 -2147483648, ptr %i.bz monotonic, align 4
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.i22.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  store atomic i32 -2147483648, ptr %i.cb monotonic, align 4
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.i22.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 28
  store atomic i32 -2147483648, ptr %i.cd monotonic, align 4
  %indvars.iv.next.i23.i.i.7 = add nuw nsw i64 %indvars.iv.i22.i.i, 8 ; 2 uses
  %exitcond.not.i24.i.i.7 = icmp eq i64 %indvars.iv.next.i23.i.i.7, %i.ak
  br i1 %exitcond.not.i24.i.i.7, label %_ZNK2OT18ItemVariationStore12create_cacheEv.exit, label %.lr.ph18.i21.i.i, !llvm.loop !6

_ZNK2OT18ItemVariationStore12create_cacheEv.exit: ; preds = %.lr.ph18.i21.i.i.prol.loopexit, %.lr.ph18.i21.i.i, %_ZNK2OT4GDEF13get_var_storeEv.exit, %bb.h, %.preheader.i17.i.i
  %.1.i.i = phi ptr [ @_hb_NullPool, %_ZNK2OT4GDEF13get_var_storeEv.exit ], [ @_hb_NullPool, %bb.h ], [ %i.an, %.preheader.i17.i.i ], [ %i.an, %.lr.ph18.i21.i.i ], [ %i.an, %.lr.ph18.i21.i.i.prol.loopexit ]
  ret ptr %.1.i.i
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_hb_ot_shaper_font_data_destroy(ptr noundef captures(address) %0) local_unnamed_addr #7 {
bb.a:
  %.not.i.i = icmp eq ptr %0, @_hb_NullPool
  %.not4.i.i = icmp eq ptr %0, null
  %or.cond.i.i = or i1 %.not.i.i, %.not4.i.i
  br i1 %or.cond.i.i, label %_ZN2OT18ItemVariationStore13destroy_cacheEPNS_17hb_scalar_cache_tE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %0) #63
  br label %_ZN2OT18ItemVariationStore13destroy_cacheEPNS_17hb_scalar_cache_tE.exit

_ZN2OT18ItemVariationStore13destroy_cacheEPNS_17hb_scalar_cache_tE.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_hb_ot_shape(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %5 = alloca %struct.hb_glyph_position_t, align 4 ; 4 uses
  %6 = alloca %struct.hb_glyph_info_t, align 4    ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %7 = alloca %struct.hb_glyph_info_t, align 4    ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 10 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !614  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 208 ; 10 uses
  %i.i = load i8, ptr %i.h, align 8, !tbaa !654
  %i.j = or i8 %i.i, 48
  store i8 %i.j, ptr %i.h, align 8, !tbaa !654
  %i.k = getelementptr i8, ptr %0, i64 148
  %.val.val.i = load i32, ptr %i.k, align 4, !tbaa !1330 ; 9 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 29 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !607  ; 5 uses
  %.not.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i.i, label %_ZL20hb_set_unicode_propsP11hb_buffer_t.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !589  ; 12 uses
  %wide.trip.count.i.i.i = zext i32 %i.m to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 7   ; 3 uses
  %i.p = icmp ult i32 %i.m, 8
  br i1 %i.p, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 4294967288
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.7, %bb.b ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.7, %bb.b ]
  %i.q = getelementptr inbounds nuw [20 x i8], ptr %i.o, i64 %indvars.iv.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  store i32 %.val.val.i, ptr %i.r, align 4, !tbaa !591
  %i.s = getelementptr inbounds nuw [20 x i8], ptr %i.o, i64 %indvars.iv.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store i32 %.val.val.i, ptr %i.t, align 4, !tbaa !591
  %i.u = getelementptr inbounds nuw [20 x i8], ptr %i.o, i64 %indvars.iv.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 44
  store i32 %.val.val.i, ptr %i.v, align 4, !tbaa !591
  %i.w = getelementptr inbounds nuw [20 x i8], ptr %i.o, i64 %indvars.iv.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  store i32 %.val.val.i, ptr %i.x, align 4, !tbaa !591
  %i.y = getelementptr inbounds nuw [20 x i8], ptr %i.o, i64 %indvars.iv.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 84
  store i32 %.val.val.i, ptr %i.z, align 4, !tbaa !591
  %i.aa = getelementptr inbounds nuw [20 x i8], ptr %i.o, i64 %indvars.iv.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 104
  store i32 %.val.val.i, ptr %i.ab, align 4, !tbaa !591
  %i.ac = getelementptr inbounds nuw [20 x i8], ptr %i.o, i64 %indvars.iv.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 124
  store i32 %.val.val.i, ptr %i.ad, align 4, !tbaa !591
  %i.ae = getelementptr inbounds nuw [20 x i8], ptr %i.o, i64 %indvars.iv.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 144
  store i32 %.val.val.i, ptr %i.af, align 4, !tbaa !591
  %indvars.iv.next.i.i.i.7 = add nuw nsw i64 %indvars.iv.i.i.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.lr.ph.i.i.unr-lcssa, label %bb.b, !llvm.loop !2904

.lr.ph.i.i.unr-lcssa:                             ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph.i.i.unr-lcssa, %.lr.ph.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i.7, %.lr.ph.i.i.unr-lcssa ]
  %lcmp.mod244 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod244)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.i.i.i.epil = phi i64 [ %indvars.iv.i.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i.i.epil, %bb.c ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.ag = getelementptr inbounds nuw [20 x i8], ptr %i.o, i64 %indvars.iv.i.i.i.epil
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  store i32 %.val.val.i, ptr %i.ah, align 4, !tbaa !591
  %indvars.iv.next.i.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph.i.i, label %bb.c, !llvm.loop !2905

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i.unr-lcssa
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 216 ; 12 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.r, %.lr.ph.i.i
  %.064.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.cq, %bb.r ] ; 15 uses
  %i.aj = zext i32 %.064.i.i to i64
  %i.ak = getelementptr inbounds nuw [20 x i8], ptr %i.o, i64 %i.aj ; 3 uses
  tail call fastcc void @_ZL32_hb_glyph_info_set_unicode_propsP15hb_glyph_info_tP11hb_buffer_t(ptr noundef %i.ak, ptr noundef %2)
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !637 ; 6 uses
  %i.am = icmp ult i32 %i.al, 128
  br i1 %i.am, label %bb.r, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.an = getelementptr i8, ptr %i.ak, i64 16     ; 9 uses
end_hunk_17
begin_hunk_18_@hb_ot_tags_to_script_and_language:bb.a

bb.o:                                             ; preds = %bb.n
  store ptr null, ptr %3, align 8, !tbaa !660
  br label %.thread

bb.p:                                             ; preds = %bb.n
  %.not.i = icmp eq i64 %i.w, 0
  br i1 %.not.i, label %_ZL9hb_memcpyPvPKvm.exit, label %bb.q, !prof !267

bb.q:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.y, ptr nonnull readonly align 1 %i.s, i64 %i.w, i1 false), !alias.scope !3092
  br label %_ZL9hb_memcpyPvPKvm.exit

_ZL9hb_memcpyPvPKvm.exit:                         ; preds = %bb.p, %bb.q
  %i.z = load i8, ptr %i.s, align 1, !tbaa !280
  %.not56 = icmp eq i8 %i.z, 120
  br i1 %.not56, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZL9hb_memcpyPvPKvm.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !280
  %.not57 = icmp eq i8 %i.ab, 45
  br i1 %.not57, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZL9hb_memcpyPvPKvm.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w ; 2 uses
  store i8 45, ptr %i.ac, align 1, !tbaa !280
  %i.ad = add i64 %i.w, 2
  %i.ae = getelementptr i8, ptr %i.ac, i64 1
  store i8 120, ptr %i.ae, align 1, !tbaa !280
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.046 = phi i64 [ %i.ad, %bb.s ], [ %i.w, %bb.r ] ; 7 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 %.046 ; 3 uses
  store <4 x i8> <i8 45, i8 104, i8 98, i8 115>, ptr %i.af, align 1, !tbaa !280
  %i.ag = getelementptr i8, ptr %i.af, i64 4
  store i8 99, ptr %i.ag, align 1, !tbaa !280
  %i.ah = getelementptr i8, ptr %i.af, i64 5
  store i8 45, ptr %i.ah, align 1, !tbaa !280
  %i.ai = lshr i32 %0, 28
  %i.aj = trunc nuw nsw i32 %i.ai to i8           ; 2 uses
  %i.ak = icmp ult i32 %0, -1610612736
  %i.al = or disjoint i8 %i.aj, 48
  %i.am = add nuw nsw i8 %i.aj, 87
  %i.an = select i1 %i.ak, i8 %i.al, i8 %i.am
  %i.ao = getelementptr i8, ptr %i.y, i64 %.046
  %i.ap = getelementptr i8, ptr %i.ao, i64 6
  store i8 %i.an, ptr %i.ap, align 1, !tbaa !280
  %i.aq = lshr i32 %0, 24
  %i.ar = getelementptr i8, ptr %i.y, i64 %.046
  %i.as = getelementptr i8, ptr %i.ar, i64 7
  %i.at = lshr i32 %0, 20
  %i.au = lshr i32 %0, 16
  %i.av = lshr i32 %0, 12
  %i.aw = trunc nuw i32 %i.aq to i8
  %i.ax = trunc i32 %i.at to i8
  %i.ay = trunc i32 %i.au to i8
  %i.az = trunc i32 %i.av to i8
  %i.ba = insertelement <4 x i8> poison, i8 %i.aw, i64 0
  %i.bb = insertelement <4 x i8> %i.ba, i8 %i.ax, i64 1
  %i.bc = insertelement <4 x i8> %i.bb, i8 %i.ay, i64 2
  %i.bd = insertelement <4 x i8> %i.bc, i8 %i.az, i64 3
  %i.be = and <4 x i8> %i.bd, splat (i8 15)       ; 3 uses
  %i.bf = icmp samesign ult <4 x i8> %i.be, splat (i8 10)
  %i.bg = or disjoint <4 x i8> %i.be, splat (i8 48)
  %i.bh = add nuw nsw <4 x i8> %i.be, splat (i8 87)
  %i.bi = select <4 x i1> %i.bf, <4 x i8> %i.bg, <4 x i8> %i.bh
  store <4 x i8> %i.bi, ptr %i.as, align 1, !tbaa !280
  %i.bj = lshr i32 %0, 8
  %i.bk = trunc i32 %i.bj to i8
  %i.bl = and i8 %i.bk, 15                        ; 3 uses
  %i.bm = icmp samesign ult i8 %i.bl, 10
  %i.bn = or disjoint i8 %i.bl, 48
  %i.bo = add nuw nsw i8 %i.bl, 87
  %i.bp = select i1 %i.bm, i8 %i.bn, i8 %i.bo
  %i.bq = getelementptr i8, ptr %i.y, i64 %.046
  %i.br = getelementptr i8, ptr %i.bq, i64 11
  store i8 %i.bp, ptr %i.br, align 1, !tbaa !280
  %i.bs = trunc i32 %0 to i8                      ; 2 uses
  %i.bt = lshr i8 %i.bs, 4                        ; 2 uses
  %i.bu = icmp ult i8 %i.bs, -96
  %i.bv = or disjoint i8 %i.bt, 48
  %i.bw = add nuw nsw i8 %i.bt, 87
  %i.bx = select i1 %i.bu, i8 %i.bv, i8 %i.bw
  %i.by = getelementptr i8, ptr %i.y, i64 %.046
  %i.bz = getelementptr i8, ptr %i.by, i64 12
  store i8 %i.bx, ptr %i.bz, align 1, !tbaa !280
  %i.ca = trunc i32 %0 to i8
  %i.cb = and i8 %i.ca, 15                        ; 3 uses
  %i.cc = icmp samesign ult i8 %i.cb, 10
  %i.cd = or disjoint i8 %i.cb, 48
  %i.ce = add nuw nsw i8 %i.cb, 87
  %i.cf = select i1 %i.cc, i8 %i.cd, i8 %i.ce
  %i.cg = getelementptr i8, ptr %i.y, i64 %.046
  %i.ch = getelementptr i8, ptr %i.cg, i64 13
  store i8 %i.cf, ptr %i.ch, align 1, !tbaa !280
  %i.ci = trunc i64 %.046 to i32
  %i.cj = add i32 %i.ci, 14                       ; 3 uses
  %.not61 = icmp eq i32 %i.cj, 0
  br i1 %.not61, label %hb_language_from_string.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ck = load i8, ptr %i.y, align 1, !tbaa !280
  %.not.i58 = icmp eq i8 %i.ck, 0
  br i1 %.not.i58, label %hb_language_from_string.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cl = icmp sgt i32 %i.cj, -1
  br i1 %i.cl, label %_ZL9hb_memcpyPvPKvm.exit.i, label %bb.w

_ZL9hb_memcpyPvPKvm.exit.i:                       ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #63
  %.sroa.speculated.i = call i32 @llvm.umin.i32(i32 %i.cj, i32 63)
  %i.cm = zext nneg i32 %.sroa.speculated.i to i64 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull readonly align 1 %i.y, i64 %i.cm, i1 false), !alias.scope !3093
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cm
  store i8 0, ptr %i.cn, align 1, !tbaa !280
  %i.co = call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #63
  br label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cp = call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef nonnull readonly %i.y)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZL9hb_memcpyPvPKvm.exit.i
  %.0.i59 = phi ptr [ %i.co, %_ZL9hb_memcpyPvPKvm.exit.i ], [ %i.cp, %bb.w ] ; 2 uses
  %.not11.i = icmp eq ptr %.0.i59, null
  br i1 %.not11.i, label %hb_language_from_string.exit, label %bb.y, !prof !267

bb.y:                                             ; preds = %bb.x
  %i.cq = getelementptr inbounds nuw i8, ptr %.0.i59, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !700
  br label %hb_language_from_string.exit

hb_language_from_string.exit:                     ; preds = %bb.t, %bb.u, %bb.x, %bb.y
  %.08.i = phi ptr [ null, %bb.t ], [ null, %bb.u ], [ %i.cr, %bb.y ], [ null, %bb.x ]
  store ptr %.08.i, ptr %3, align 8, !tbaa !660
  call void @free(ptr noundef nonnull %i.y) #63
  br label %.thread

.thread:                                          ; preds = %bb.l, %bb.o, %hb_language_from_string.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #63
  br label %bb.z

bb.z:                                             ; preds = %.thread, %bb.k
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @hb_ot_var_has_data(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = load atomic ptr, ptr %i.a acquire, align 8 ; 2 uses
  %.not14.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not14.i.i.i, label %.lr.ph.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT4fvarE22hb_table_lazy_loader_tIS1_Lj18ELb1EE9hb_face_tLj18E9hb_blob_tEptEv.exit, !prof !265

.lr.ph.i.i.i:                                     ; preds = %bb.a, %bb.e
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !266  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT4fvarE22hb_table_lazy_loader_tIS1_Lj18ELb1EE9hb_face_tLj18E9hb_blob_tEptEv.exit, label %bb.b, !prof !267

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.e = tail call noundef ptr @_ZN22hb_table_lazy_loader_tIN2OT4fvarELj18ELb1EE6createEP9hb_face_t(ptr noundef nonnull %i.d) ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not10.i.i.i, label %bb.c, label %bb.d, !prof !267

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.07.i.i.i = phi ptr [ @_hb_NullPool, %bb.c ], [ %i.e, %bb.b ] ; 3 uses
  %i.f = cmpxchg weak ptr %i.a, ptr null, ptr %.07.i.i.i acq_rel monotonic, align 8
  %i.g = extractvalue { ptr, i1 } %i.f, 1
  br i1 %i.g, label %_ZNK16hb_lazy_loader_tIN2OT4fvarE22hb_table_lazy_loader_tIS1_Lj18ELb1EE9hb_face_tLj18E9hb_blob_tEptEv.exit, label %bb.e, !prof !268

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN16hb_lazy_loader_tIN2OT4fvarE22hb_table_lazy_loader_tIS1_Lj18ELb1EE9hb_face_tLj18E9hb_blob_tE10do_destroyEPS5_(ptr noundef nonnull %.07.i.i.i)
  %i.h = load atomic ptr, ptr %i.a acquire, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT4fvarE22hb_table_lazy_loader_tIS1_Lj18ELb1EE9hb_face_tLj18E9hb_blob_tEptEv.exit, !prof !269

_ZNK16hb_lazy_loader_tIN2OT4fvarE22hb_table_lazy_loader_tIS1_Lj18ELb1EE9hb_face_tLj18E9hb_blob_tEptEv.exit: ; preds = %.lr.ph.i.i.i, %bb.d, %bb.e, %bb.a
  %.19.ph.i.i.i = phi ptr [ %i.c, %bb.a ], [ @_hb_NullPool, %.lr.ph.i.i.i ], [ %i.h, %bb.e ], [ %.07.i.i.i, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !275
  %i.k = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !276
  %i.m = icmp ult i32 %i.l, 16
  %spec.select.i.i.i.i.i = select i1 %i.m, ptr @_hb_NullPool, ptr %i.j
  %i.n = load i32, ptr %spec.select.i.i.i.i.i, align 1
  %i.o = icmp ne i32 %i.n, 0
  %i.p = zext i1 %i.o to i32
  ret i32 %i.p
}

; Function Attrs: mustprogress nounwind uwtable
define noundef range(i32 0, 65536) i32 @hb_ot_var_get_axis_count(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = load atomic ptr, ptr %i.a acquire, align 8 ; 2 uses
  %.not14.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not14.i.i.i, label %.lr.ph.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT4fvarE22hb_table_lazy_loader_tIS1_Lj18ELb1EE9hb_face_tLj18E9hb_blob_tEptEv.exit, !prof !265

.lr.ph.i.i.i:                                     ; preds = %bb.a, %bb.e
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !266  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT4fvarE22hb_table_lazy_loader_tIS1_Lj18ELb1EE9hb_face_tLj18E9hb_blob_tEptEv.exit, label %bb.b, !prof !267

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.e = tail call noundef ptr @_ZN22hb_table_lazy_loader_tIN2OT4fvarELj18ELb1EE6createEP9hb_face_t(ptr noundef nonnull %i.d) ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not10.i.i.i, label %bb.c, label %bb.d, !prof !267

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.07.i.i.i = phi ptr [ @_hb_NullPool, %bb.c ], [ %i.e, %bb.b ] ; 3 uses
  %i.f = cmpxchg weak ptr %i.a, ptr null, ptr %.07.i.i.i acq_rel monotonic, align 8
  %i.g = extractvalue { ptr, i1 } %i.f, 1
  br i1 %i.g, label %_ZNK16hb_lazy_loader_tIN2OT4fvarE22hb_table_lazy_loader_tIS1_Lj18ELb1EE9hb_face_tLj18E9hb_blob_tEptEv.exit, label %bb.e, !prof !268

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN16hb_lazy_loader_tIN2OT4fvarE22hb_table_lazy_loader_tIS1_Lj18ELb1EE9hb_face_tLj18E9hb_blob_tE10do_destroyEPS5_(ptr noundef nonnull %.07.i.i.i)
  %i.h = load atomic ptr, ptr %i.a acquire, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT4fvarE22hb_table_lazy_loader_tIS1_Lj18ELb1EE9hb_face_tLj18E9hb_blob_tEptEv.exit, !prof !269

_ZNK16hb_lazy_loader_tIN2OT4fvarE22hb_table_lazy_loader_tIS1_Lj18ELb1EE9hb_face_tLj18E9hb_blob_tEptEv.exit: ; preds = %.lr.ph.i.i.i, %bb.d, %bb.e, %bb.a
  %.19.ph.i.i.i = phi ptr [ %i.c, %bb.a ], [ @_hb_NullPool, %.lr.ph.i.i.i ], [ %i.h, %bb.e ], [ %.07.i.i.i, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !275
  %i.k = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !276
  %i.m = icmp ult i32 %i.l, 16
  %spec.select.i.i.i.i.i = select i1 %i.m, ptr @_hb_NullPool, ptr %i.j
  %i.n = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 8
  %i.o = load i16, ptr %i.n, align 1, !tbaa !283
  %i.p = tail call noundef i16 @llvm.bswap.i16(i16 %i.o)
  %i.q = zext i16 %i.p to i32
  ret i32 %i.q
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 65536) i32 @hb_ot_var_get_axes(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = load atomic ptr, ptr %i.a acquire, align 8 ; 2 uses
  %.not14.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not14.i.i.i, label %.lr.ph.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT4fvarE22hb_table_lazy_loader_tIS1_Lj18ELb1EE9hb_face_tLj18E9hb_blob_tEptEv.exit, !prof !265

.lr.ph.i.i.i:                                     ; preds = %bb.a, %bb.e
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !266  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT4fvarE22hb_table_lazy_loader_tIS1_Lj18ELb1EE9hb_face_tLj18E9hb_blob_tEptEv.exit, label %bb.b, !prof !267

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.e = tail call noundef ptr @_ZN22hb_table_lazy_loader_tIN2OT4fvarELj18ELb1EE6createEP9hb_face_t(ptr noundef nonnull %i.d) ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not10.i.i.i, label %bb.c, label %bb.d, !prof !267

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.07.i.i.i = phi ptr [ @_hb_NullPool, %bb.c ], [ %i.e, %bb.b ] ; 3 uses
  %i.f = cmpxchg weak ptr %i.a, ptr null, ptr %.07.i.i.i acq_rel monotonic, align 8
  %i.g = extractvalue { ptr, i1 } %i.f, 1
  br i1 %i.g, label %_ZNK16hb_lazy_loader_tIN2OT4fvarE22hb_table_lazy_loader_tIS1_Lj18ELb1EE9hb_face_tLj18E9hb_blob_tEptEv.exit, label %bb.e, !prof !268

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN16hb_lazy_loader_tIN2OT4fvarE22hb_table_lazy_loader_tIS1_Lj18ELb1EE9hb_face_tLj18E9hb_blob_tE10do_destroyEPS5_(ptr noundef nonnull %.07.i.i.i)
  %i.h = load atomic ptr, ptr %i.a acquire, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT4fvarE22hb_table_lazy_loader_tIS1_Lj18ELb1EE9hb_face_tLj18E9hb_blob_tEptEv.exit, !prof !269

_ZNK16hb_lazy_loader_tIN2OT4fvarE22hb_table_lazy_loader_tIS1_Lj18ELb1EE9hb_face_tLj18E9hb_blob_tEptEv.exit: ; preds = %.lr.ph.i.i.i, %bb.d, %bb.e, %bb.a
  %.19.ph.i.i.i = phi ptr [ %i.c, %bb.a ], [ @_hb_NullPool, %.lr.ph.i.i.i ], [ %i.h, %bb.e ], [ %.07.i.i.i, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !275
  %i.k = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !276
  %i.m = icmp ult i32 %i.l, 16
  %spec.select.i.i.i.i.i = select i1 %i.m, ptr @_hb_NullPool, ptr %i.j ; 4 uses
  %i.n = icmp ne ptr %2, null
  %i.o = icmp ne ptr %3, null
  %or.cond.i = and i1 %i.n, %i.o
  br i1 %or.cond.i, label %_ZNK10hb_array_tIKN2OT10AxisRecordEE9sub_arrayEjPj.exit.i, label %..loopexit_crit_edge.i

..loopexit_crit_edge.i:                           ; preds = %_ZNK16hb_lazy_loader_tIN2OT4fvarE22hb_table_lazy_loader_tIS1_Lj18ELb1EE9hb_face_tLj18E9hb_blob_tEptEv.exit
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 8
  %.pre.i = load i16, ptr %.phi.trans.insert.i, align 1, !tbaa !283
  %.pre18.i = tail call noundef i16 @llvm.bswap.i16(i16 %.pre.i)
  %.pre19.i = zext i16 %.pre18.i to i32
  br label %_ZNK2OT4fvar19get_axes_deprecatedEjPjP16hb_ot_var_axis_t.exit

_ZNK10hb_array_tIKN2OT10AxisRecordEE9sub_arrayEjPj.exit.i: ; preds = %_ZNK16hb_lazy_loader_tIN2OT4fvarE22hb_table_lazy_loader_tIS1_Lj18ELb1EE9hb_face_tLj18E9hb_blob_tEptEv.exit
  %i.p = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 4
  %i.q = load i16, ptr %i.p, align 1, !tbaa !283  ; 2 uses
  %i.r = icmp eq i16 %i.q, 0
  %i.s = tail call i16 @llvm.bswap.i16(i16 %i.q)
  %i.t = zext i16 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 %i.t
  %.0.i.i.i.i = select i1 %i.r, ptr @_hb_NullPool, ptr %i.u, !prof !267
  %i.v = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 8
  %i.w = load i16, ptr %i.v, align 1, !tbaa !283
  %i.x = tail call noundef i16 @llvm.bswap.i16(i16 %i.w)
  %.sroa.5.8.extract.trunc.i = zext i16 %i.x to i32 ; 3 uses
  %storemerge.i.i = tail call i32 @llvm.usub.sat.i32(i32 %.sroa.5.8.extract.trunc.i, i32 %1)
  %i.y = load i32, ptr %2, align 4, !tbaa !324
  %.sroa.speculated.i.i = tail call i32 @llvm.umin.i32(i32 %storemerge.i.i, i32 %i.y) ; 4 uses
  store i32 %.sroa.speculated.i.i, ptr %2, align 4, !tbaa !324
  %i.z = zext i32 %1 to i64
  %i.aa = getelementptr inbounds nuw [20 x i8], ptr %.0.i.i.i.i, i64 %i.z ; 5 uses
  %.not.i = icmp eq i32 %.sroa.speculated.i.i, 0
  br i1 %.not.i, label %_ZNK2OT4fvar19get_axes_deprecatedEjPjP16hb_ot_var_axis_t.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZNK10hb_array_tIKN2OT10AxisRecordEE9sub_arrayEjPj.exit.i
  %wide.trip.count.i = zext nneg i32 %.sroa.speculated.i.i to i64 ; 3 uses
  %min.iters.check = icmp samesign ult i32 %.sroa.speculated.i.i, 5
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %i.ab = and i64 %wide.trip.count.i, 3           ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  %i.ad = select i1 %i.ac, i64 4, i64 %i.ab
  %n.vec = sub nsw i64 %wide.trip.count.i, %i.ad  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.ae = getelementptr inbounds nuw [20 x i8], ptr %i.aa, i64 %index ; 5 uses
  %i.af = getelementptr inbounds nuw [20 x i8], ptr %i.aa, i64 %index ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 20
  %i.ah = getelementptr inbounds nuw [20 x i8], ptr %i.aa, i64 %index ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %i.aj = getelementptr inbounds nuw [20 x i8], ptr %i.aa, i64 %index ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 60
  %i.al = getelementptr inbounds nuw [20 x i8], ptr %3, i64 %index
  %i.am = load i32, ptr %i.ae, align 1, !tbaa !278
  %i.an = load i32, ptr %i.ag, align 1, !tbaa !278
  %i.ao = load i32, ptr %i.ai, align 1, !tbaa !278
  %i.ap = load i32, ptr %i.ak, align 1, !tbaa !278
  %i.aq = insertelement <4 x i32> poison, i32 %i.am, i64 0
  %i.ar = insertelement <4 x i32> %i.aq, i32 %i.an, i64 1
  %i.as = insertelement <4 x i32> %i.ar, i32 %i.ao, i64 2
  %i.at = insertelement <4 x i32> %i.as, i32 %i.ap, i64 3
  %i.au = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %i.at)
  %i.av = getelementptr inbounds nuw i8, ptr %i.ae, i64 18
  %i.aw = getelementptr inbounds nuw i8, ptr %i.af, i64 38
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ah, i64 58
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aj, i64 78
  %i.az = load i16, ptr %i.av, align 1, !tbaa !283
  %i.ba = load i16, ptr %i.aw, align 1, !tbaa !283
  %i.bb = load i16, ptr %i.ax, align 1, !tbaa !283
  %i.bc = load i16, ptr %i.ay, align 1, !tbaa !283
  %i.bd = insertelement <4 x i16> poison, i16 %i.az, i64 0
  %i.be = insertelement <4 x i16> %i.bd, i16 %i.ba, i64 1
  %i.bf = insertelement <4 x i16> %i.be, i16 %i.bb, i64 2
  %i.bg = insertelement <4 x i16> %i.bf, i16 %i.bc, i64 3
  %i.bh = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %i.bg)
  %i.bi = zext <4 x i16> %i.bh to <4 x i32>
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.af, i64 28
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aj, i64 68
  %i.bn = load i32, ptr %i.bj, align 1, !tbaa !278
  %i.bo = load i32, ptr %i.bk, align 1, !tbaa !278
  %i.bp = load i32, ptr %i.bl, align 1, !tbaa !278
  %i.bq = load i32, ptr %i.bm, align 1, !tbaa !278
  %i.br = insertelement <4 x i32> poison, i32 %i.bn, i64 0
  %i.bs = insertelement <4 x i32> %i.br, i32 %i.bo, i64 1
  %i.bt = insertelement <4 x i32> %i.bs, i32 %i.bp, i64 2
  %i.bu = insertelement <4 x i32> %i.bt, i32 %i.bq, i64 3
  %i.bv = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %i.bu)
  %i.bw = sitofp <4 x i32> %i.bv to <4 x float>
  %i.bx = fmul nnan <4 x float> %i.bw, splat (float f0x37800000) ; 5 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ah, i64 44
  %i.cb = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  %i.cc = load i32, ptr %i.by, align 1, !tbaa !278
  %i.cd = load i32, ptr %i.bz, align 1, !tbaa !278
  %i.ce = load i32, ptr %i.ca, align 1, !tbaa !278
  %i.cf = load i32, ptr %i.cb, align 1, !tbaa !278
  %i.cg = insertelement <4 x i32> poison, i32 %i.cc, i64 0
  %i.ch = insertelement <4 x i32> %i.cg, i32 %i.cd, i64 1
  %i.ci = insertelement <4 x i32> %i.ch, i32 %i.ce, i64 2
  %i.cj = insertelement <4 x i32> %i.ci, i32 %i.cf, i64 3
  %i.ck = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %i.cj)
  %i.cl = sitofp <4 x i32> %i.ck to <4 x float>
  %i.cm = fmul nnan <4 x float> %i.cl, splat (float f0x37800000) ; 2 uses
  %i.cn = fcmp ole <4 x float> %i.bx, %i.cm
  %i.co = select <4 x i1> %i.cn, <4 x float> %i.bx, <4 x float> %i.cm
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
end_hunk_18
begin_hunk_19_@_ZNK2OT4fvar14get_axis_infosEjPjP21hb_ot_var_axis_info_t:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g
  %.0.i.i.i = select i1 %i.e, ptr @_hb_NullPool, ptr %i.h, !prof !267
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i16, ptr %i.i, align 1, !tbaa !283
  %i.k = tail call noundef i16 @llvm.bswap.i16(i16 %i.j)
  %.sroa.5.8.extract.trunc = zext i16 %i.k to i32 ; 3 uses
  %storemerge.i = tail call i32 @llvm.usub.sat.i32(i32 %.sroa.5.8.extract.trunc, i32 %1)
  %i.l = load i32, ptr %2, align 4, !tbaa !324
  %.sroa.speculated.i = tail call i32 @llvm.umin.i32(i32 %storemerge.i, i32 %i.l) ; 3 uses
  store i32 %.sroa.speculated.i, ptr %2, align 4, !tbaa !324
  %i.m = zext i32 %1 to i64
  %i.n = getelementptr inbounds nuw [20 x i8], ptr %.0.i.i.i, i64 %i.m
  %.not = icmp eq i32 %.sroa.speculated.i, 0
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNK10hb_array_tIKN2OT10AxisRecordEE9sub_arrayEjPj.exit
  %wide.trip.count = zext nneg i32 %.sroa.speculated.i to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 4 uses
  %i.o = getelementptr inbounds nuw [20 x i8], ptr %i.n, i64 %indvars.iv ; 5 uses
  %i.p = trunc nuw i64 %indvars.iv to i32
  %i.q = add i32 %1, %i.p
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %3, i64 %indvars.iv ; 8 uses
  store i32 %i.q, ptr %i.r, align 4, !tbaa !1438
  %i.s = load i32, ptr %i.o, align 1, !tbaa !278
  %i.t = tail call noundef i32 @llvm.bswap.i32(i32 %i.s)
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store i32 %i.t, ptr %i.u, align 4, !tbaa !1439
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 18
  %i.w = load i16, ptr %i.v, align 1, !tbaa !283
  %i.x = tail call noundef i16 @llvm.bswap.i16(i16 %i.w)
  %i.y = zext i16 %i.x to i32
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i32 %i.y, ptr %i.z, align 4, !tbaa !1440
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ab = load i16, ptr %i.aa, align 1, !tbaa !283
  %i.ac = tail call noundef i16 @llvm.bswap.i16(i16 %i.ab)
  %i.ad = zext i16 %i.ac to i32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !1441
  %i.af = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 20
  %i.ah = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.ak = load i32, ptr %i.aj, align 1, !tbaa !278
  %i.al = tail call noundef i32 @llvm.bswap.i32(i32 %i.ak)
  %i.am = sitofp i32 %i.al to float
  %i.an = fmul nnan float %i.am, f0x37800000      ; 2 uses
  %i.ao = load <2 x i32>, ptr %i.ai, align 1, !tbaa !278
  %i.ap = tail call <2 x i32> @llvm.bswap.v2i32(<2 x i32> %i.ao)
  %i.aq = sitofp <2 x i32> %i.ap to <2 x float>
  %i.ar = fmul nnan <2 x float> %i.aq, splat (float f0x37800000) ; 2 uses
  %i.as = extractelement <2 x float> %i.ar, i64 0 ; 5 uses
  store float %i.as, ptr %i.ag, align 4, !tbaa !304
  %i.at = fcmp ole float %i.as, %i.an
  %.sroa.speculated7.i.i = select i1 %i.at, float %i.as, float %i.an
  store float %.sroa.speculated7.i.i, ptr %i.af, align 4, !tbaa !304
  %i.au = extractelement <2 x float> %i.ar, i64 1 ; 2 uses
  %i.av = fcmp oge float %i.as, %i.au
  %.sroa.speculated.i.i = select i1 %i.av, float %i.as, float %i.au
  store float %.sroa.speculated.i.i, ptr %i.ah, align 4, !tbaa !304
  %i.aw = getelementptr inbounds nuw i8, ptr %i.r, i64 28
  store i32 0, ptr %i.aw, align 4, !tbaa !1442
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !3096

.loopexit:                                        ; preds = %.lr.ph, %..loopexit_crit_edge, %_ZNK10hb_array_tIKN2OT10AxisRecordEE9sub_arrayEjPj.exit
  %.pre-phi22 = phi i32 [ %.pre21, %..loopexit_crit_edge ], [ %.sroa.5.8.extract.trunc, %_ZNK10hb_array_tIKN2OT10AxisRecordEE9sub_arrayEjPj.exit ], [ %.sroa.5.8.extract.trunc, %.lr.ph ]
  ret i32 %.pre-phi22
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @hb_ot_var_find_axis_info(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = load atomic ptr, ptr %i.a acquire, align 8 ; 2 uses
  %.not14.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not14.i.i.i, label %.lr.ph.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT4fvarE22hb_table_lazy_loader_tIS1_Lj18ELb1EE9hb_face_tLj18E9hb_blob_tEptEv.exit, !prof !265

.lr.ph.i.i.i:                                     ; preds = %bb.a, %bb.e
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !266  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT4fvarE22hb_table_lazy_loader_tIS1_Lj18ELb1EE9hb_face_tLj18E9hb_blob_tEptEv.exit, label %bb.b, !prof !267

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.e = tail call noundef ptr @_ZN22hb_table_lazy_loader_tIN2OT4fvarELj18ELb1EE6createEP9hb_face_t(ptr noundef nonnull %i.d) ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not10.i.i.i, label %bb.c, label %bb.d, !prof !267

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.07.i.i.i = phi ptr [ @_hb_NullPool, %bb.c ], [ %i.e, %bb.b ] ; 3 uses
  %i.f = cmpxchg weak ptr %i.a, ptr null, ptr %.07.i.i.i acq_rel monotonic, align 8
  %i.g = extractvalue { ptr, i1 } %i.f, 1
  br i1 %i.g, label %_ZNK16hb_lazy_loader_tIN2OT4fvarE22hb_table_lazy_loader_tIS1_Lj18ELb1EE9hb_face_tLj18E9hb_blob_tEptEv.exit, label %bb.e, !prof !268

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN16hb_lazy_loader_tIN2OT4fvarE22hb_table_lazy_loader_tIS1_Lj18ELb1EE9hb_face_tLj18E9hb_blob_tE10do_destroyEPS5_(ptr noundef nonnull %.07.i.i.i)
  %i.h = load atomic ptr, ptr %i.a acquire, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT4fvarE22hb_table_lazy_loader_tIS1_Lj18ELb1EE9hb_face_tLj18E9hb_blob_tEptEv.exit, !prof !269

_ZNK16hb_lazy_loader_tIN2OT4fvarE22hb_table_lazy_loader_tIS1_Lj18ELb1EE9hb_face_tLj18E9hb_blob_tEptEv.exit: ; preds = %.lr.ph.i.i.i, %bb.d, %bb.e, %bb.a
  %.19.ph.i.i.i = phi ptr [ %i.c, %bb.a ], [ @_hb_NullPool, %.lr.ph.i.i.i ], [ %i.h, %bb.e ], [ %.07.i.i.i, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !275
  %i.k = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !276
  %i.m = icmp ult i32 %i.l, 16
  %spec.select.i.i.i.i.i = select i1 %i.m, ptr @_hb_NullPool, ptr %i.j ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 4
  %i.o = load i16, ptr %i.n, align 1, !tbaa !283  ; 2 uses
  %i.p = icmp eq i16 %i.o, 0
  %i.q = tail call i16 @llvm.bswap.i16(i16 %i.o)
  %i.r = zext i16 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 %i.r
  %.0.i.i.i.i = select i1 %i.p, ptr @_hb_NullPool, ptr %i.s, !prof !267
  %i.t = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 8
  %i.u = load i16, ptr %i.t, align 1, !tbaa !283  ; 2 uses
  %.not26.i.i = icmp eq i16 %i.u, 0
  br i1 %.not26.i.i, label %_ZNK2OT4fvar14find_axis_infoEjP21hb_ot_var_axis_info_t.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK16hb_lazy_loader_tIN2OT4fvarE22hb_table_lazy_loader_tIS1_Lj18ELb1EE9hb_face_tLj18E9hb_blob_tEptEv.exit
  %i.v = tail call noundef i16 @llvm.bswap.i16(i16 %i.u)
  %wide.trip.count.i.i = zext i16 %i.v to i64     ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.g ] ; 4 uses
  %i.w = getelementptr inbounds nuw [20 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv.i.i ; 2 uses
  %.val19.i.i = load i32, ptr %i.w, align 1, !tbaa !278
  %i.x = tail call noundef i32 @llvm.bswap.i32(i32 %.val19.i.i)
  %i.y = icmp eq i32 %1, %i.x
  br i1 %i.y, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZNK2OT4fvar14find_axis_infoEjP21hb_ot_var_axis_info_t.exit, label %bb.f, !llvm.loop !118

bb.h:                                             ; preds = %bb.f
  %i.z = trunc nuw i64 %indvars.iv.i.i to i32
  %.not.i.i.i2 = icmp samesign ult i64 %indvars.iv.i.i, %wide.trip.count.i.i
  %.0.i.i.i = select i1 %.not.i.i.i2, ptr %i.w, ptr @_hb_NullPool, !prof !268 ; 5 uses
  store i32 %i.z, ptr %2, align 4, !tbaa !1438
  %i.aa = load i32, ptr %.0.i.i.i, align 1, !tbaa !278
  %i.ab = tail call noundef i32 @llvm.bswap.i32(i32 %i.aa)
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !1439
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 18
  %i.ae = load i16, ptr %i.ad, align 1, !tbaa !283
  %i.af = tail call noundef i16 @llvm.bswap.i16(i16 %i.ae)
  %i.ag = zext i16 %i.af to i32
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !1440
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  %i.aj = load i16, ptr %i.ai, align 1, !tbaa !283
  %i.ak = tail call noundef i16 @llvm.bswap.i16(i16 %i.aj)
  %i.al = zext i16 %i.ak to i32
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %i.al, ptr %i.am, align 4, !tbaa !1441
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4
  %i.as = load i32, ptr %i.ar, align 1, !tbaa !278
  %i.at = tail call noundef i32 @llvm.bswap.i32(i32 %i.as)
  %i.au = sitofp i32 %i.at to float
  %i.av = fmul nnan float %i.au, f0x37800000      ; 2 uses
  %i.aw = load <2 x i32>, ptr %i.aq, align 1, !tbaa !278
  %i.ax = tail call <2 x i32> @llvm.bswap.v2i32(<2 x i32> %i.aw)
  %i.ay = sitofp <2 x i32> %i.ax to <2 x float>
  %i.az = fmul nnan <2 x float> %i.ay, splat (float f0x37800000) ; 2 uses
  %i.ba = extractelement <2 x float> %i.az, i64 0 ; 5 uses
  store float %i.ba, ptr %i.ao, align 4, !tbaa !304
  %i.bb = fcmp ole float %i.ba, %i.av
  %.sroa.speculated7.i.i.i = select i1 %i.bb, float %i.ba, float %i.av
  store float %.sroa.speculated7.i.i.i, ptr %i.an, align 4, !tbaa !304
  %i.bc = extractelement <2 x float> %i.az, i64 1 ; 2 uses
  %i.bd = fcmp oge float %i.ba, %i.bc
  %.sroa.speculated.i.i.i = select i1 %i.bd, float %i.ba, float %i.bc
  store float %.sroa.speculated.i.i.i, ptr %i.ap, align 4, !tbaa !304
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i32 0, ptr %i.be, align 4, !tbaa !1442
  br label %_ZNK2OT4fvar14find_axis_infoEjP21hb_ot_var_axis_info_t.exit

_ZNK2OT4fvar14find_axis_infoEjP21hb_ot_var_axis_info_t.exit: ; preds = %bb.g, %_ZNK16hb_lazy_loader_tIN2OT4fvarE22hb_table_lazy_loader_tIS1_Lj18ELb1EE9hb_face_tLj18E9hb_blob_tEptEv.exit, %bb.h
  %i.bf = phi i32 [ 1, %bb.h ], [ 0, %_ZNK16hb_lazy_loader_tIN2OT4fvarE22hb_table_lazy_loader_tIS1_Lj18ELb1EE9hb_face_tLj18E9hb_blob_tEptEv.exit ], [ 0, %bb.g ]
  ret i32 %i.bf
}

; Function Attrs: mustprogress nounwind uwtable
define noundef range(i32 0, 65536) i32 @hb_ot_var_get_named_instance_count(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = load atomic ptr, ptr %i.a acquire, align 8 ; 2 uses
  %.not14.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not14.i.i.i, label %.lr.ph.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT4fvarE22hb_table_lazy_loader_tIS1_Lj18ELb1EE9hb_face_tLj18E9hb_blob_tEptEv.exit, !prof !265

.lr.ph.i.i.i:                                     ; preds = %bb.a, %bb.e
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !266  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT4fvarE22hb_table_lazy_loader_tIS1_Lj18ELb1EE9hb_face_tLj18E9hb_blob_tEptEv.exit, label %bb.b, !prof !267

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.e = tail call noundef ptr @_ZN22hb_table_lazy_loader_tIN2OT4fvarELj18ELb1EE6createEP9hb_face_t(ptr noundef nonnull %i.d) ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not10.i.i.i, label %bb.c, label %bb.d, !prof !267

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.07.i.i.i = phi ptr [ @_hb_NullPool, %bb.c ], [ %i.e, %bb.b ] ; 3 uses
  %i.f = cmpxchg weak ptr %i.a, ptr null, ptr %.07.i.i.i acq_rel monotonic, align 8
  %i.g = extractvalue { ptr, i1 } %i.f, 1
  br i1 %i.g, label %_ZNK16hb_lazy_loader_tIN2OT4fvarE22hb_table_lazy_loader_tIS1_Lj18ELb1EE9hb_face_tLj18E9hb_blob_tEptEv.exit, label %bb.e, !prof !268

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN16hb_lazy_loader_tIN2OT4fvarE22hb_table_lazy_loader_tIS1_Lj18ELb1EE9hb_face_tLj18E9hb_blob_tE10do_destroyEPS5_(ptr noundef nonnull %.07.i.i.i)
  %i.h = load atomic ptr, ptr %i.a acquire, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT4fvarE22hb_table_lazy_loader_tIS1_Lj18ELb1EE9hb_face_tLj18E9hb_blob_tEptEv.exit, !prof !269

_ZNK16hb_lazy_loader_tIN2OT4fvarE22hb_table_lazy_loader_tIS1_Lj18ELb1EE9hb_face_tLj18E9hb_blob_tEptEv.exit: ; preds = %.lr.ph.i.i.i, %bb.d, %bb.e, %bb.a
  %.19.ph.i.i.i = phi ptr [ %i.c, %bb.a ], [ @_hb_NullPool, %.lr.ph.i.i.i ], [ %i.h, %bb.e ], [ %.07.i.i.i, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !275
  %i.k = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !276
  %i.m = icmp ult i32 %i.l, 16
  %spec.select.i.i.i.i.i = select i1 %i.m, ptr @_hb_NullPool, ptr %i.j
  %i.n = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 12
  %i.o = load i16, ptr %i.n, align 1, !tbaa !283
  %i.p = tail call noundef i16 @llvm.bswap.i16(i16 %i.o)
  %i.q = zext i16 %i.p to i32
  ret i32 %i.q
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 65536) i32 @hb_ot_var_named_instance_get_subfamily_name_id(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = load atomic ptr, ptr %i.a acquire, align 8 ; 2 uses
  %.not14.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not14.i.i.i, label %.lr.ph.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT4fvarE22hb_table_lazy_loader_tIS1_Lj18ELb1EE9hb_face_tLj18E9hb_blob_tEptEv.exit, !prof !265

.lr.ph.i.i.i:                                     ; preds = %bb.a, %bb.e
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !266  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT4fvarE22hb_table_lazy_loader_tIS1_Lj18ELb1EE9hb_face_tLj18E9hb_blob_tEptEv.exit, label %bb.b, !prof !267

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.e = tail call noundef ptr @_ZN22hb_table_lazy_loader_tIN2OT4fvarELj18ELb1EE6createEP9hb_face_t(ptr noundef nonnull %i.d) ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not10.i.i.i, label %bb.c, label %bb.d, !prof !267

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.07.i.i.i = phi ptr [ @_hb_NullPool, %bb.c ], [ %i.e, %bb.b ] ; 3 uses
  %i.f = cmpxchg weak ptr %i.a, ptr null, ptr %.07.i.i.i acq_rel monotonic, align 8
  %i.g = extractvalue { ptr, i1 } %i.f, 1
  br i1 %i.g, label %_ZNK16hb_lazy_loader_tIN2OT4fvarE22hb_table_lazy_loader_tIS1_Lj18ELb1EE9hb_face_tLj18E9hb_blob_tEptEv.exit, label %bb.e, !prof !268

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN16hb_lazy_loader_tIN2OT4fvarE22hb_table_lazy_loader_tIS1_Lj18ELb1EE9hb_face_tLj18E9hb_blob_tE10do_destroyEPS5_(ptr noundef nonnull %.07.i.i.i)
  %i.h = load atomic ptr, ptr %i.a acquire, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT4fvarE22hb_table_lazy_loader_tIS1_Lj18ELb1EE9hb_face_tLj18E9hb_blob_tEptEv.exit, !prof !269

_ZNK16hb_lazy_loader_tIN2OT4fvarE22hb_table_lazy_loader_tIS1_Lj18ELb1EE9hb_face_tLj18E9hb_blob_tEptEv.exit: ; preds = %.lr.ph.i.i.i, %bb.d, %bb.e, %bb.a
  %.19.ph.i.i.i = phi ptr [ %i.c, %bb.a ], [ @_hb_NullPool, %.lr.ph.i.i.i ], [ %i.h, %bb.e ], [ %.07.i.i.i, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !275
  %i.k = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !276
  %i.m = icmp ult i32 %i.l, 16
  %spec.select.i.i.i.i.i = select i1 %i.m, ptr @_hb_NullPool, ptr %i.j ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 12
  %i.o = load i16, ptr %i.n, align 1, !tbaa !283
  %i.p = tail call noundef i16 @llvm.bswap.i16(i16 %i.o)
  %i.q = zext i16 %i.p to i32
  %.not.i.i = icmp ult i32 %1, %i.q
  br i1 %.not.i.i, label %bb.f, label %_ZNK2OT4fvar30get_instance_subfamily_name_idEj.exit, !prof !268

bb.f:                                             ; preds = %_ZNK16hb_lazy_loader_tIN2OT4fvarE22hb_table_lazy_loader_tIS1_Lj18ELb1EE9hb_face_tLj18E9hb_blob_tEptEv.exit
  %i.r = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 4
  %i.s = load i16, ptr %i.r, align 1, !tbaa !283  ; 2 uses
  %i.t = icmp eq i16 %i.s, 0
  %i.u = tail call i16 @llvm.bswap.i16(i16 %i.s)
  %i.v = zext i16 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 %i.v
  %.0.i.i.i.i.i = select i1 %i.t, ptr @_hb_NullPool, ptr %i.w, !prof !267
  %i.x = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 8
  %i.y = load i16, ptr %i.x, align 1, !tbaa !283
  %i.z = tail call noundef i16 @llvm.bswap.i16(i16 %i.y)
  %.sroa.4.8.extract.trunc.i.i = zext i16 %i.z to i64
  %i.aa = mul nuw nsw i64 %.sroa.4.8.extract.trunc.i.i, 20
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 14
  %i.ad = load i16, ptr %i.ac, align 1, !tbaa !283
  %i.ae = tail call noundef i16 @llvm.bswap.i16(i16 %i.ad)
  %i.af = zext i16 %i.ae to i32
  %i.ag = mul nuw i32 %1, %i.af
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ah
  %i.aj = load i16, ptr %i.ai, align 1, !tbaa !283
  %i.ak = tail call noundef i16 @llvm.bswap.i16(i16 %i.aj)
  %i.al = zext i16 %i.ak to i32
  br label %_ZNK2OT4fvar30get_instance_subfamily_name_idEj.exit

_ZNK2OT4fvar30get_instance_subfamily_name_idEj.exit: ; preds = %_ZNK16hb_lazy_loader_tIN2OT4fvarE22hb_table_lazy_loader_tIS1_Lj18ELb1EE9hb_face_tLj18E9hb_blob_tEptEv.exit, %bb.f
  %.0.i = phi i32 [ %i.al, %bb.f ], [ 65535, %_ZNK16hb_lazy_loader_tIN2OT4fvarE22hb_table_lazy_loader_tIS1_Lj18ELb1EE9hb_face_tLj18E9hb_blob_tEptEv.exit ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 65536) i32 @hb_ot_var_named_instance_get_postscript_name_id(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = load atomic ptr, ptr %i.a acquire, align 8 ; 2 uses
  %.not14.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not14.i.i.i, label %.lr.ph.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT4fvarE22hb_table_lazy_loader_tIS1_Lj18ELb1EE9hb_face_tLj18E9hb_blob_tEptEv.exit, !prof !265

.lr.ph.i.i.i:                                     ; preds = %bb.a, %bb.e
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !266  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT4fvarE22hb_table_lazy_loader_tIS1_Lj18ELb1EE9hb_face_tLj18E9hb_blob_tEptEv.exit, label %bb.b, !prof !267

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.e = tail call noundef ptr @_ZN22hb_table_lazy_loader_tIN2OT4fvarELj18ELb1EE6createEP9hb_face_t(ptr noundef nonnull %i.d) ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not10.i.i.i, label %bb.c, label %bb.d, !prof !267

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.07.i.i.i = phi ptr [ @_hb_NullPool, %bb.c ], [ %i.e, %bb.b ] ; 3 uses
  %i.f = cmpxchg weak ptr %i.a, ptr null, ptr %.07.i.i.i acq_rel monotonic, align 8
  %i.g = extractvalue { ptr, i1 } %i.f, 1
  br i1 %i.g, label %_ZNK16hb_lazy_loader_tIN2OT4fvarE22hb_table_lazy_loader_tIS1_Lj18ELb1EE9hb_face_tLj18E9hb_blob_tEptEv.exit, label %bb.e, !prof !268

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN16hb_lazy_loader_tIN2OT4fvarE22hb_table_lazy_loader_tIS1_Lj18ELb1EE9hb_face_tLj18E9hb_blob_tE10do_destroyEPS5_(ptr noundef nonnull %.07.i.i.i)
  %i.h = load atomic ptr, ptr %i.a acquire, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT4fvarE22hb_table_lazy_loader_tIS1_Lj18ELb1EE9hb_face_tLj18E9hb_blob_tEptEv.exit, !prof !269

_ZNK16hb_lazy_loader_tIN2OT4fvarE22hb_table_lazy_loader_tIS1_Lj18ELb1EE9hb_face_tLj18E9hb_blob_tEptEv.exit: ; preds = %.lr.ph.i.i.i, %bb.d, %bb.e, %bb.a
  %.19.ph.i.i.i = phi ptr [ %i.c, %bb.a ], [ @_hb_NullPool, %.lr.ph.i.i.i ], [ %i.h, %bb.e ], [ %.07.i.i.i, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !275
  %i.k = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !276
  %i.m = icmp ult i32 %i.l, 16
  %spec.select.i.i.i.i.i = select i1 %i.m, ptr @_hb_NullPool, ptr %i.j ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 12
  %i.o = load i16, ptr %i.n, align 1, !tbaa !283
  %i.p = tail call noundef i16 @llvm.bswap.i16(i16 %i.o)
  %i.q = zext i16 %i.p to i32
  %.not.i.i = icmp ult i32 %1, %i.q
  br i1 %.not.i.i, label %bb.f, label %_ZNK2OT4fvar31get_instance_postscript_name_idEj.exit, !prof !268

bb.f:                                             ; preds = %_ZNK16hb_lazy_loader_tIN2OT4fvarE22hb_table_lazy_loader_tIS1_Lj18ELb1EE9hb_face_tLj18E9hb_blob_tEptEv.exit
  %i.r = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 14
  %i.s = load i16, ptr %i.r, align 1, !tbaa !283
  %i.t = tail call noundef i16 @llvm.bswap.i16(i16 %i.s)
  %i.u = zext i16 %i.t to i32                     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 8
  %i.w = load i16, ptr %i.v, align 1, !tbaa !283
  %i.x = tail call noundef i16 @llvm.bswap.i16(i16 %i.w) ; 2 uses
  %i.y = zext i16 %i.x to i32
  %i.z = shl nuw nsw i32 %i.y, 2                  ; 2 uses
  %i.aa = add nuw nsw i32 %i.z, 6
  %.not4.i = icmp samesign ugt i32 %i.aa, %i.u
  br i1 %.not4.i, label %_ZNK2OT4fvar31get_instance_postscript_name_idEj.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 4
  %i.ac = load i16, ptr %i.ab, align 1, !tbaa !283 ; 2 uses
  %i.ad = icmp eq i16 %i.ac, 0
  %i.ae = tail call i16 @llvm.bswap.i16(i16 %i.ac)
  %i.af = zext i16 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 %i.af
  %.0.i.i.i.i.i = select i1 %i.ad, ptr @_hb_NullPool, ptr %i.ag, !prof !267
  %.sroa.4.8.extract.trunc.i.i = zext i16 %i.x to i64
  %i.ah = mul nuw nsw i64 %.sroa.4.8.extract.trunc.i.i, 20
end_hunk_19
begin_hunk_20_@hb_ot_var_normalize_variations:bb.a

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2OT4avar16map_coords_16_16EPij(ptr noundef nonnull align 1 dereferenceable(14) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 2 uses
  %.val44 = load i16, ptr %i.a, align 1, !tbaa !283
  %i.b = tail call noundef i16 @llvm.bswap.i16(i16 %.val44)
  %i.c = zext i16 %i.b to i32
  %spec.select.i = tail call noundef range(i32 0, 65536) i32 @llvm.umin.i32(i32 %2, i32 %i.c) ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not = icmp eq i32 %spec.select.i, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %spec.select.i to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.039.lcssa = phi ptr [ %i.d, %bb.a ], [ %i.v, %.lr.ph ] ; 3 uses
  %i.e = load i16, ptr %0, align 1, !tbaa !283
  %i.f = tail call noundef i16 @llvm.bswap.i16(i16 %i.e)
  %i.g = icmp ult i16 %i.f, 2
  br i1 %i.g, label %_ZN11hb_vector_tIiLb0EED2Ev.exit58, label %bb.b

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.039181 = phi ptr [ %i.d, %.lr.ph.preheader ], [ %i.v, %.lr.ph ] ; 3 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !324
  %i.j = sitofp i32 %i.i to float
  %i.k = fmul nnan float %i.j, f0x37800000
  %i.l = tail call noundef float @_ZNK2OT11SegmentMaps9map_floatEfjj(ptr noundef nonnull align 1 dereferenceable(6) %.039181, float noundef %i.k, i32 noundef 0, i32 noundef 1)
  %i.m = fmul float %i.l, 6.553600e+04
  %i.n = fadd float %i.m, 5.000000e-01
  %i.o = tail call noundef float @llvm.floor.f32(float %i.n)
  %i.p = fptosi float %i.o to i32
  store i32 %i.p, ptr %i.h, align 4, !tbaa !324
  %i.q = load i16, ptr %.039181, align 1, !tbaa !283
  %i.r = tail call noundef i16 @llvm.bswap.i16(i16 %i.q)
  %i.s = zext i16 %i.r to i64
  %i.t = shl nuw nsw i64 %i.s, 2
  %i.u = getelementptr inbounds nuw i8, ptr %.039181, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 2 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !3100

bb.b:                                             ; preds = %._crit_edge
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.w = load i16, ptr %i.a, align 1, !tbaa !283
  %i.x = tail call noundef i16 @llvm.bswap.i16(i16 %i.w)
  %i.y = zext i16 %i.x to i32                     ; 4 uses
  %i.z = icmp samesign ult i32 %spec.select.i, %i.y
  br i1 %i.z, label %.lr.ph185.preheader, label %._crit_edge186

.lr.ph185.preheader:                              ; preds = %bb.b
  %i.aa = sub nuw nsw i32 %i.y, %spec.select.i
  %xtraiter = and i32 %i.aa, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph185.prol.loopexit, label %.lr.ph185.prol

.lr.ph185.prol:                                   ; preds = %.lr.ph185.preheader, %.lr.ph185.prol
  %.038183.prol = phi i32 [ %i.ah, %.lr.ph185.prol ], [ %spec.select.i, %.lr.ph185.preheader ]
  %.1182.prol = phi ptr [ %i.ag, %.lr.ph185.prol ], [ %.039.lcssa, %.lr.ph185.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph185.prol ], [ 0, %.lr.ph185.preheader ]
  %i.ab = load i16, ptr %.1182.prol, align 1, !tbaa !283
  %i.ac = tail call noundef i16 @llvm.bswap.i16(i16 %i.ab)
  %i.ad = zext i16 %i.ac to i64
  %i.ae = shl nuw nsw i64 %i.ad, 2
  %i.af = getelementptr inbounds nuw i8, ptr %.1182.prol, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 2 ; 3 uses
  %i.ah = add nuw nsw i32 %.038183.prol, 1        ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph185.prol.loopexit, label %.lr.ph185.prol, !llvm.loop !3101

.lr.ph185.prol.loopexit:                          ; preds = %.lr.ph185.prol, %.lr.ph185.preheader
  %.lcssa286.unr = phi ptr [ poison, %.lr.ph185.preheader ], [ %i.ag, %.lr.ph185.prol ]
  %.038183.unr = phi i32 [ %spec.select.i, %.lr.ph185.preheader ], [ %i.ah, %.lr.ph185.prol ]
  %.1182.unr = phi ptr [ %.039.lcssa, %.lr.ph185.preheader ], [ %i.ag, %.lr.ph185.prol ]
  %i.ai = sub nsw i32 %spec.select.i, %i.y
  %i.aj = icmp ugt i32 %i.ai, -4
  br i1 %i.aj, label %._crit_edge186, label %.lr.ph185

.lr.ph185:                                        ; preds = %.lr.ph185.prol.loopexit, %.lr.ph185
  %.038183 = phi i32 [ %i.bi, %.lr.ph185 ], [ %.038183.unr, %.lr.ph185.prol.loopexit ]
  %.1182 = phi ptr [ %i.bh, %.lr.ph185 ], [ %.1182.unr, %.lr.ph185.prol.loopexit ] ; 2 uses
  %i.ak = load i16, ptr %.1182, align 1, !tbaa !283
  %i.al = tail call noundef i16 @llvm.bswap.i16(i16 %i.ak)
  %i.am = zext i16 %i.al to i64
  %i.an = shl nuw nsw i64 %i.am, 2
  %i.ao = getelementptr inbounds nuw i8, ptr %.1182, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 2 ; 2 uses
  %i.aq = load i16, ptr %i.ap, align 1, !tbaa !283
  %i.ar = tail call noundef i16 @llvm.bswap.i16(i16 %i.aq)
  %i.as = zext i16 %i.ar to i64
  %i.at = shl nuw nsw i64 %i.as, 2
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 2 ; 2 uses
  %i.aw = load i16, ptr %i.av, align 1, !tbaa !283
  %i.ax = tail call noundef i16 @llvm.bswap.i16(i16 %i.aw)
  %i.ay = zext i16 %i.ax to i64
  %i.az = shl nuw nsw i64 %i.ay, 2
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 2 ; 2 uses
  %i.bc = load i16, ptr %i.bb, align 1, !tbaa !283
  %i.bd = tail call noundef i16 @llvm.bswap.i16(i16 %i.bc)
  %i.be = zext i16 %i.bd to i64
  %i.bf = shl nuw nsw i64 %i.be, 2
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 2 ; 2 uses
  %i.bi = add nuw nsw i32 %.038183, 4             ; 2 uses
  %exitcond211.not.3 = icmp eq i32 %i.bi, %i.y
  br i1 %exitcond211.not.3, label %._crit_edge186, label %.lr.ph185, !llvm.loop !3102

._crit_edge186:                                   ; preds = %.lr.ph185.prol.loopexit, %.lr.ph185, %bb.b
  %.1.lcssa = phi ptr [ %.039.lcssa, %bb.b ], [ %.lcssa286.unr, %.lr.ph185.prol.loopexit ], [ %i.bh, %.lr.ph185 ] ; 2 uses
  %i.bj = load i32, ptr %.1.lcssa, align 1, !tbaa !278 ; 2 uses
  %i.bk = icmp eq i32 %i.bj, 0
  %i.bl = tail call i32 @llvm.bswap.i32(i32 %i.bj)
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 %i.bm
  %.0.i.i = select i1 %i.bk, ptr @_hb_NullPool, ptr %i.bn, !prof !267
  %i.bo = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 4
  %i.bp = load i32, ptr %i.bo, align 1, !tbaa !278 ; 2 uses
  %i.bq = icmp eq i32 %i.bp, 0
  %i.br = tail call i32 @llvm.bswap.i32(i32 %i.bp)
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 %i.bs
  %.0.i.i45 = select i1 %i.bq, ptr @_hb_NullPool, ptr %i.bt, !prof !267 ; 6 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.i.i45, i64 2 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 1, !tbaa !278 ; 2 uses
  %i.bw = icmp eq i32 %i.bv, 0
  %i.bx = tail call i32 @llvm.bswap.i32(i32 %i.bv)
  %i.by = zext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.i.i45, i64 %i.by
  %.0.i.i.i = select i1 %i.bw, ptr @_hb_NullPool, ptr %i.bz, !prof !267
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 2
  %i.cb = load i16, ptr %i.ca, align 1, !tbaa !283 ; 2 uses
  %i.cc = tail call noundef i16 @llvm.bswap.i16(i16 %i.cb) ; 3 uses
  %i.cd = zext i16 %i.cc to i32                   ; 2 uses
  %.not.i.i = icmp eq i16 %i.cb, 0
  br i1 %.not.i.i, label %_ZNK2OT18ItemVariationStore12create_cacheEv.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge186
  %i.ce = zext i16 %i.cc to i64                   ; 5 uses
  %i.cf = shl nuw nsw i64 %i.ce, 2
  %i.cg = add nuw nsw i64 %i.cf, 4
  %i.ch = tail call noalias noundef ptr @malloc(i64 noundef %i.cg) #65 ; 6 uses
  %.not16.i.i = icmp eq ptr %i.ch, null
  br i1 %.not16.i.i, label %_ZNK2OT18ItemVariationStore12create_cacheEv.exit, label %bb.d, !prof !267

bb.d:                                             ; preds = %bb.c
  store i32 %i.cd, ptr %i.ch, align 4, !tbaa !480
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 4 ; 12 uses
  %i.cj = icmp ugt i16 %i.cc, 3
  br i1 %i.cj, label %.lr.ph.i25.i.i.preheader, label %.preheader.i17.i.i

.lr.ph.i25.i.i.preheader:                         ; preds = %bb.d
  %i.ck = add nsw i64 %i.ce, -4                   ; 2 uses
  %i.cl = lshr i64 %i.ck, 2                       ; 2 uses
  %i.cm = add nuw nsw i64 %i.cl, 1                ; 2 uses
  %i.cn = icmp eq i64 %i.cl, 0
  br i1 %i.cn, label %.lr.ph.i25.i.i.epil.preheader, label %.lr.ph.i25.i.i.preheader.new

.lr.ph.i25.i.i.preheader.new:                     ; preds = %.lr.ph.i25.i.i.preheader
  %unroll_iter = and i64 %i.cm, 9223372036854775806
  br label %.lr.ph.i25.i.i

.preheader.i17.i.loopexit.i.unr-lcssa:            ; preds = %.lr.ph.i25.i.i
  %i.co = and i64 %i.ck, 4
  %lcmp.mod289.not.not = icmp eq i64 %i.co, 0
  br i1 %lcmp.mod289.not.not, label %.lr.ph.i25.i.i.epil.preheader, label %.preheader.i17.i.loopexit.i

.lr.ph.i25.i.i.epil.preheader:                    ; preds = %.preheader.i17.i.loopexit.i.unr-lcssa, %.lr.ph.i25.i.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i25.i.i.preheader ], [ %indvars.iv.next.i.1, %.preheader.i17.i.loopexit.i.unr-lcssa ] ; 2 uses
  %lcmp.mod291 = trunc i64 %i.cm to i1
  tail call void @llvm.assume(i1 %lcmp.mod291)
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv.i.epil.init ; 4 uses
  store atomic i32 -2147483648, ptr %i.cp monotonic, align 4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  store atomic i32 -2147483648, ptr %i.cq monotonic, align 4
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store atomic i32 -2147483648, ptr %i.cr monotonic, align 4
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 12
  store atomic i32 -2147483648, ptr %i.cs monotonic, align 4
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil.init, 4
  br label %.preheader.i17.i.loopexit.i

.preheader.i17.i.loopexit.i:                      ; preds = %.preheader.i17.i.loopexit.i.unr-lcssa, %.lr.ph.i25.i.i.epil.preheader
  %indvars.iv.next.i.lcssa = phi i64 [ %indvars.iv.next.i.1, %.preheader.i17.i.loopexit.i.unr-lcssa ], [ %indvars.iv.next.i.epil, %.lr.ph.i25.i.i.epil.preheader ]
  %i.ct = trunc nuw nsw i64 %indvars.iv.next.i.lcssa to i32
  br label %.preheader.i17.i.i

.preheader.i17.i.i:                               ; preds = %.preheader.i17.i.loopexit.i, %bb.d
  %.0.lcssa.i18.i.i = phi i32 [ 0, %bb.d ], [ %i.ct, %.preheader.i17.i.loopexit.i ] ; 2 uses
  %i.cu = icmp samesign ult i32 %.0.lcssa.i18.i.i, %i.cd
  br i1 %i.cu, label %.lr.ph18.preheader.i19.i.i, label %_ZNK2OT18ItemVariationStore12create_cacheEv.exit

.lr.ph18.preheader.i19.i.i:                       ; preds = %.preheader.i17.i.i
  %i.cv = zext nneg i32 %.0.lcssa.i18.i.i to i64  ; 4 uses
  %i.cw = sub nsw i64 %i.ce, %i.cv
  %xtraiter292 = and i64 %i.cw, 7                 ; 2 uses
  %lcmp.mod293.not = icmp eq i64 %xtraiter292, 0
  br i1 %lcmp.mod293.not, label %.lr.ph18.i21.i.i.prol.loopexit, label %.lr.ph18.i21.i.i.prol

.lr.ph18.i21.i.i.prol:                            ; preds = %.lr.ph18.preheader.i19.i.i, %.lr.ph18.i21.i.i.prol
  %indvars.iv.i22.i.i.prol = phi i64 [ %indvars.iv.next.i23.i.i.prol, %.lr.ph18.i21.i.i.prol ], [ %i.cv, %.lr.ph18.preheader.i19.i.i ] ; 2 uses
  %prol.iter294 = phi i64 [ %prol.iter294.next, %.lr.ph18.i21.i.i.prol ], [ 0, %.lr.ph18.preheader.i19.i.i ]
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv.i22.i.i.prol
  store atomic i32 -2147483648, ptr %i.cx monotonic, align 4
  %indvars.iv.next.i23.i.i.prol = add nuw nsw i64 %indvars.iv.i22.i.i.prol, 1 ; 2 uses
  %prol.iter294.next = add i64 %prol.iter294, 1   ; 2 uses
  %prol.iter294.cmp.not = icmp eq i64 %prol.iter294.next, %xtraiter292
  br i1 %prol.iter294.cmp.not, label %.lr.ph18.i21.i.i.prol.loopexit, label %.lr.ph18.i21.i.i.prol, !llvm.loop !3103

.lr.ph18.i21.i.i.prol.loopexit:                   ; preds = %.lr.ph18.i21.i.i.prol, %.lr.ph18.preheader.i19.i.i
  %indvars.iv.i22.i.i.unr = phi i64 [ %i.cv, %.lr.ph18.preheader.i19.i.i ], [ %indvars.iv.next.i23.i.i.prol, %.lr.ph18.i21.i.i.prol ]
  %i.cy = sub nsw i64 %i.cv, %i.ce
  %i.cz = icmp ugt i64 %i.cy, -8
  br i1 %i.cz, label %_ZNK2OT18ItemVariationStore12create_cacheEv.exit, label %.lr.ph18.i21.i.i

.lr.ph.i25.i.i:                                   ; preds = %.lr.ph.i25.i.i, %.lr.ph.i25.i.i.preheader.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i25.i.i.preheader.new ], [ %indvars.iv.next.i.1, %.lr.ph.i25.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i25.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i25.i.i ]
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv.i ; 4 uses
  store atomic i32 -2147483648, ptr %i.da monotonic, align 4
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  store atomic i32 -2147483648, ptr %i.db monotonic, align 4
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store atomic i32 -2147483648, ptr %i.dc monotonic, align 4
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 12
  store atomic i32 -2147483648, ptr %i.dd monotonic, align 4
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv.i ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  store atomic i32 -2147483648, ptr %i.df monotonic, align 4
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 20
  store atomic i32 -2147483648, ptr %i.dg monotonic, align 4
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  store atomic i32 -2147483648, ptr %i.dh monotonic, align 4
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 28
  store atomic i32 -2147483648, ptr %i.di monotonic, align 4
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 8 ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader.i17.i.loopexit.i.unr-lcssa, label %.lr.ph.i25.i.i, !llvm.loop !5

.lr.ph18.i21.i.i:                                 ; preds = %.lr.ph18.i21.i.i.prol.loopexit, %.lr.ph18.i21.i.i
  %indvars.iv.i22.i.i = phi i64 [ %indvars.iv.next.i23.i.i.7, %.lr.ph18.i21.i.i ], [ %indvars.iv.i22.i.i.unr, %.lr.ph18.i21.i.i.prol.loopexit ] ; 9 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv.i22.i.i
  store atomic i32 -2147483648, ptr %i.dj monotonic, align 4
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv.i22.i.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 4
  store atomic i32 -2147483648, ptr %i.dl monotonic, align 4
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv.i22.i.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store atomic i32 -2147483648, ptr %i.dn monotonic, align 4
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv.i22.i.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 12
  store atomic i32 -2147483648, ptr %i.dp monotonic, align 4
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv.i22.i.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  store atomic i32 -2147483648, ptr %i.dr monotonic, align 4
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv.i22.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 20
  store atomic i32 -2147483648, ptr %i.dt monotonic, align 4
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv.i22.i.i
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  store atomic i32 -2147483648, ptr %i.dv monotonic, align 4
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv.i22.i.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 28
  store atomic i32 -2147483648, ptr %i.dx monotonic, align 4
  %indvars.iv.next.i23.i.i.7 = add nuw nsw i64 %indvars.iv.i22.i.i, 8 ; 2 uses
  %exitcond.not.i24.i.i.7 = icmp eq i64 %indvars.iv.next.i23.i.i.7, %i.ce
  br i1 %exitcond.not.i24.i.i.7, label %_ZNK2OT18ItemVariationStore12create_cacheEv.exit, label %.lr.ph18.i21.i.i, !llvm.loop !6

_ZNK2OT18ItemVariationStore12create_cacheEv.exit: ; preds = %.lr.ph18.i21.i.i.prol.loopexit, %.lr.ph18.i21.i.i, %._crit_edge186, %bb.c, %.preheader.i17.i.i
  %.1.i.i = phi ptr [ @_hb_NullPool, %._crit_edge186 ], [ @_hb_NullPool, %bb.c ], [ %i.ch, %.preheader.i17.i.i ], [ %i.ch, %.lr.ph18.i21.i.i ], [ %i.ch, %.lr.ph18.i21.i.i.prol.loopexit ] ; 3 uses
  %or.cond = icmp sgt i32 %2, 0
  br i1 %or.cond, label %.preheader.i64, label %_ZN11hb_vector_tIiLb0EE6resizeEi.exit, !prof !3110

.preheader.i64:                                   ; preds = %_ZNK2OT18ItemVariationStore12create_cacheEv.exit, %.preheader.i64
  %.043.i65 = phi i32 [ %i.ea, %.preheader.i64 ], [ 0, %_ZNK2OT18ItemVariationStore12create_cacheEv.exit ] ; 2 uses
  %i.dy = lshr i32 %.043.i65, 1
  %i.dz = add nuw i32 %.043.i65, 8
  %i.ea = add nuw i32 %i.dz, %i.dy                ; 4 uses
  %i.eb = icmp ugt i32 %2, %i.ea
  br i1 %i.eb, label %.preheader.i64, label %.thread.i66, !llvm.loop !0

.thread.i66:                                      ; preds = %.preheader.i64
  %i.ec = icmp ugt i32 %i.ea, 1073741823
  br i1 %i.ec, label %.lr.ph189.preheader, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i69, !prof !267

_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i69: ; preds = %.thread.i66
  %i.ed = shl nuw i32 %i.ea, 2
  %i.ee = zext i32 %i.ed to i64
  %malloc = tail call ptr @malloc(i64 %i.ee)      ; 3 uses
  %.not22.i70 = icmp eq ptr %malloc, null
  br i1 %.not22.i70, label %.lr.ph189.preheader, label %bb.e, !prof !319

bb.e:                                             ; preds = %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i69
  %i.ef = shl nuw i32 %2, 2
  %i.eg = zext i32 %i.ef to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %malloc, i8 0, i64 %i.eg, i1 false)
  br label %.lr.ph189.preheader

_ZN11hb_vector_tIiLb0EE6resizeEi.exit:            ; preds = %_ZNK2OT18ItemVariationStore12create_cacheEv.exit
  %.not203 = icmp eq i32 %2, 0
  br i1 %.not203, label %._crit_edge202, label %.lr.ph189.preheader

.lr.ph189.preheader:                              ; preds = %.thread.i66, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i69, %bb.e, %_ZN11hb_vector_tIiLb0EE6resizeEi.exit
  %.sroa.0136.0245 = phi i1 [ false, %_ZN11hb_vector_tIiLb0EE6resizeEi.exit ], [ true, %bb.e ], [ false, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i69 ], [ false, %.thread.i66 ]
  %.sroa.7.0243 = phi i32 [ 0, %_ZN11hb_vector_tIiLb0EE6resizeEi.exit ], [ %2, %bb.e ], [ 0, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i69 ], [ 0, %.thread.i66 ] ; 2 uses
  %.sroa.13.0241 = phi ptr [ null, %_ZN11hb_vector_tIiLb0EE6resizeEi.exit ], [ %malloc, %bb.e ], [ null, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i69 ], [ null, %.thread.i66 ] ; 5 uses
  %i.eh = zext nneg i32 %.sroa.7.0243 to i64      ; 3 uses
  %wide.trip.count215 = zext i32 %2 to i64        ; 5 uses
  %i.ei = add nsw i64 %wide.trip.count215, -1     ; 2 uses
  %xtraiter295 = and i64 %wide.trip.count215, 1
  %i.ej = icmp eq i64 %i.ei, 0
  br i1 %i.ej, label %.lr.ph189.epil.preheader, label %.lr.ph189.preheader.new

.lr.ph189.preheader.new:                          ; preds = %.lr.ph189.preheader
  %unroll_iter298 = and i64 %wide.trip.count215, 4294967294
  br label %.lr.ph189

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %.043.i = phi i32 [ %i.em, %.preheader.i ], [ 0, %.preheader.i.preheader ] ; 2 uses
  %i.ek = lshr i32 %.043.i, 1
  %i.el = add i32 %.043.i, 8
  %i.em = add i32 %i.el, %i.ek                    ; 5 uses
  %i.en = icmp ugt i32 %2, %i.em
  br i1 %i.en, label %.preheader.i, label %.thread.i, !llvm.loop !0

.thread.i:                                        ; preds = %.preheader.i
  %i.eo = icmp ugt i32 %i.em, 1073741823
  br i1 %i.eo, label %.lr.ph196, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i, !prof !267

_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i: ; preds = %.thread.i
  %i.ep = shl nuw i32 %i.em, 2
  %i.eq = zext i32 %i.ep to i64
  %malloc177 = tail call ptr @malloc(i64 %i.eq)   ; 2 uses
  %.not22.i = icmp eq ptr %malloc177, null
  %spec.select176 = select i1 %.not22.i, i32 -1, i32 %i.em, !prof !319
  br label %.lr.ph196

.lr.ph196:                                        ; preds = %.thread.i, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i
  %.sroa.18.2 = phi ptr [ %malloc177, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i ], [ null, %.thread.i ]
  %.sroa.0.1 = phi i32 [ %spec.select176, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i ], [ -1, %.thread.i ]
  %i.er = getelementptr inbounds nuw i8, ptr %.0.i.i45, i64 6
  %i.es = getelementptr inbounds nuw i8, ptr %.0.i.i45, i64 8
  %wide.trip.count220 = zext i32 %2 to i64
  br label %bb.l

.lr.ph189:                                        ; preds = %_ZN11hb_vector_tIiLb0EEixEi.exit.1, %.lr.ph189.preheader.new
  %indvars.iv212 = phi i64 [ 0, %.lr.ph189.preheader.new ], [ %indvars.iv.next213.1, %_ZN11hb_vector_tIiLb0EEixEi.exit.1 ] ; 5 uses
  %niter299 = phi i64 [ 0, %.lr.ph189.preheader.new ], [ %niter299.next.1, %_ZN11hb_vector_tIiLb0EEixEi.exit.1 ]
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv212
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !324
  %i.ev = sitofp i32 %i.eu to float
  %i.ew = fmul nnan float %i.ev, 2.500000e-01
  %i.ex = fadd float %i.ew, 5.000000e-01
  %i.ey = tail call noundef float @llvm.floor.f32(float %i.ex)
  %i.ez = fptosi float %i.ey to i32
  %.not.i48 = icmp samesign ult i64 %indvars.iv212, %i.eh
  br i1 %.not.i48, label %bb.g, label %bb.f, !prof !268

bb.f:                                             ; preds = %.lr.ph189
  store i32 0, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIiLb0EEixEi.exit

bb.g:                                             ; preds = %.lr.ph189
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %.sroa.13.0241, i64 %indvars.iv212
  br label %_ZN11hb_vector_tIiLb0EEixEi.exit

_ZN11hb_vector_tIiLb0EEixEi.exit:                 ; preds = %bb.f, %bb.g
  %.0.i = phi ptr [ @_hb_CrapPool, %bb.f ], [ %i.fa, %bb.g ]
  store i32 %i.ez, ptr %.0.i, align 4, !tbaa !324
  %indvars.iv.next213 = or disjoint i64 %indvars.iv212, 1 ; 3 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next213
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !324
  %i.fd = sitofp i32 %i.fc to float
  %i.fe = fmul nnan float %i.fd, 2.500000e-01
  %i.ff = fadd float %i.fe, 5.000000e-01
  %i.fg = tail call noundef float @llvm.floor.f32(float %i.ff)
  %i.fh = fptosi float %i.fg to i32
  %.not.i48.1 = icmp samesign ult i64 %indvars.iv.next213, %i.eh
  br i1 %.not.i48.1, label %bb.i, label %bb.h, !prof !268

bb.h:                                             ; preds = %_ZN11hb_vector_tIiLb0EEixEi.exit
  store i32 0, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIiLb0EEixEi.exit.1

bb.i:                                             ; preds = %_ZN11hb_vector_tIiLb0EEixEi.exit
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.13.0241, i64 %indvars.iv.next213
  br label %_ZN11hb_vector_tIiLb0EEixEi.exit.1

_ZN11hb_vector_tIiLb0EEixEi.exit.1:               ; preds = %bb.i, %bb.h
  %.0.i.1 = phi ptr [ @_hb_CrapPool, %bb.h ], [ %i.fi, %bb.i ]
  store i32 %i.fh, ptr %.0.i.1, align 4, !tbaa !324
  %indvars.iv.next213.1 = add nuw nsw i64 %indvars.iv212, 2 ; 2 uses
  %niter299.next.1 = add i64 %niter299, 2         ; 2 uses
end_hunk_20
begin_hunk_21_@hb_paint_funcs_get_user_data:bb.a

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !330
  br label %_ZN20hb_user_data_array_t3getEP18hb_user_data_key_t.exit.i

_ZN20hb_user_data_array_t3getEP18hb_user_data_key_t.exit.i: ; preds = %bb.e, %bb.f, %bb.d
  %i.k = phi ptr [ %.sroa.4.0.copyload.i.i, %bb.f ], [ null, %bb.d ], [ null, %bb.e ]
  %i.l = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.c) #63 ; 0 uses
  br label %_ZL23hb_object_get_user_dataIK16hb_paint_funcs_tEPvPT_P18hb_user_data_key_t.exit

_ZL23hb_object_get_user_dataIK16hb_paint_funcs_tEPvPT_P18hb_user_data_key_t.exit: ; preds = %bb.a, %bb.b, %bb.c, %_ZN20hb_user_data_array_t3getEP18hb_user_data_key_t.exit.i
  %.1.i = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ %i.k, %_ZN20hb_user_data_array_t3getEP18hb_user_data_key_t.exit.i ], [ null, %bb.a ]
  ret ptr %.1.i
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define void @hb_paint_funcs_make_immutable(ptr nofree noundef captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load atomic i8, ptr %i.a monotonic, align 1, !range !380, !noundef !293
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store atomic i8 0, ptr %i.a monotonic, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 0, 2) i32 @hb_paint_funcs_is_immutable(ptr nofree noundef captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load atomic i8, ptr %i.a monotonic, align 1, !range !380, !noundef !293
  %i.c = xor i8 %i.b, 1
  %i.d = zext nneg i8 %i.c to i32
  ret i32 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define noundef i32 @hb_color_line_get_color_stops(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1496
  %i.c = load ptr, ptr %0, align 8, !tbaa !1497
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1498
  %i.f = tail call noundef i32 %i.b(ptr noundef nonnull %0, ptr noundef %i.c, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %i.e) #63
  ret i32 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define noundef i32 @hb_color_line_get_extend(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1499
  %i.c = load ptr, ptr %0, align 8, !tbaa !1497
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !3118
  %i.f = tail call noundef i32 %i.b(ptr noundef nonnull %0, ptr noundef %i.c, ptr noundef %i.e) #63
  ret i32 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define void @hb_paint_push_transform(ptr noundef %0, ptr noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1013
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1014 ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZN16hb_paint_funcs_t14push_transformEPvffffff.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1016
  br label %_ZN16hb_paint_funcs_t14push_transformEPvffffff.exit

_ZN16hb_paint_funcs_t14push_transformEPvffffff.exit: ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  %i.g = fcmp oeq float %7, 0.000000e+00
  %spec.store.select1.i = select i1 %i.g, float 0.000000e+00, float %7
  %i.h = fcmp oeq float %6, 0.000000e+00
  %spec.store.select.i = select i1 %i.h, float 0.000000e+00, float %6
  tail call void %i.b(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %spec.store.select.i, float noundef %spec.store.select1.i, ptr noundef %i.f) #63, !inline_history !72
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @hb_paint_push_font_transform(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !264  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.d = load atomic i32, ptr %i.c monotonic, align 4 ; 2 uses
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %bb.b, label %_ZNK9hb_face_t8get_upemEv.exit.i, !prof !267

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i32 @_ZNK9hb_face_t9load_upemEv(ptr noundef nonnull align 8 dereferenceable(448) %i.b)
  br label %_ZNK9hb_face_t8get_upemEv.exit.i

_ZNK9hb_face_t8get_upemEv.exit.i:                 ; preds = %bb.b, %bb.a
  %.0.i.i = phi i32 [ %i.e, %bb.b ], [ %i.d, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.g = load <2 x i32>, ptr %i.f, align 8, !tbaa !324
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1013
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1014 ; 2 uses
  %.not.i8.i = icmp eq ptr %i.k, null
  br i1 %.not.i8.i, label %_ZN16hb_paint_funcs_t19push_font_transformEPvPK9hb_font_t.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK9hb_face_t8get_upemEv.exit.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1016
  br label %_ZN16hb_paint_funcs_t19push_font_transformEPvPK9hb_font_t.exit

_ZN16hb_paint_funcs_t19push_font_transformEPvPK9hb_font_t.exit: ; preds = %_ZNK9hb_face_t8get_upemEv.exit.i, %bb.c
  %i.m = phi ptr [ %i.l, %bb.c ], [ null, %_ZNK9hb_face_t8get_upemEv.exit.i ]
  %i.n = sitofp <2 x i32> %i.g to <2 x float>
  %i.o = uitofp i32 %.0.i.i to float
  %i.p = insertelement <2 x float> poison, float %i.o, i64 0
  %i.q = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> zeroinitializer
  %i.r = fdiv <2 x float> %i.n, %i.q              ; 2 uses
  %i.s = extractelement <2 x float> %i.r, i64 0
  %i.t = extractelement <2 x float> %i.r, i64 1
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, float noundef %i.s, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %i.t, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef %i.m) #63, !inline_history !125
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @hb_paint_push_inverse_font_transform(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !264  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.d = load atomic i32, ptr %i.c monotonic, align 4 ; 2 uses
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %bb.b, label %_ZNK9hb_face_t8get_upemEv.exit.i, !prof !267

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i32 @_ZNK9hb_face_t9load_upemEv(ptr noundef nonnull align 8 dereferenceable(448) %i.b)
  br label %_ZNK9hb_face_t8get_upemEv.exit.i

_ZNK9hb_face_t8get_upemEv.exit.i:                 ; preds = %bb.b, %bb.a
  %.0.i.i = phi i32 [ %i.e, %bb.b ], [ %i.d, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.g = load <2 x i32>, ptr %i.f, align 8, !tbaa !324 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1013
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1014 ; 2 uses
  %.not.i14.i = icmp eq ptr %i.k, null
  br i1 %.not.i14.i, label %_ZN16hb_paint_funcs_t27push_inverse_font_transformEPvPK9hb_font_t.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK9hb_face_t8get_upemEv.exit.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1016
  br label %_ZN16hb_paint_funcs_t27push_inverse_font_transformEPvPK9hb_font_t.exit

_ZN16hb_paint_funcs_t27push_inverse_font_transformEPvPK9hb_font_t.exit: ; preds = %_ZNK9hb_face_t8get_upemEv.exit.i, %bb.c
  %i.m = phi ptr [ %i.l, %bb.c ], [ null, %_ZNK9hb_face_t8get_upemEv.exit.i ]
  %i.n = uitofp i32 %.0.i.i to float
  %i.o = icmp eq <2 x i32> %i.g, zeroinitializer
  %i.p = sitofp <2 x i32> %i.g to <2 x float>
  %i.q = insertelement <2 x float> poison, float %i.n, i64 0
  %i.r = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.s = select <2 x i1> %i.o, <2 x float> %i.r, <2 x float> %i.p
  %i.t = fptosi <2 x float> %i.s to <2 x i32>
  %i.u = sitofp <2 x i32> %i.t to <2 x float>
  %i.v = fdiv <2 x float> %i.r, %i.u              ; 2 uses
  %i.w = extractelement <2 x float> %i.v, i64 0
  %i.x = extractelement <2 x float> %i.v, i64 1
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, float noundef %i.w, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %i.x, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef %i.m) #63, !inline_history !126
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @hb_paint_pop_transform(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1018
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1014 ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZN16hb_paint_funcs_t13pop_transformEPv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1019
  br label %_ZN16hb_paint_funcs_t13pop_transformEPv.exit

_ZN16hb_paint_funcs_t13pop_transformEPv.exit:     ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  tail call void %i.b(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, ptr noundef %i.g) #63, !inline_history !76
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef range(i32 0, 2) i32 @hb_paint_color_glyph(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1450
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1014 ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZN16hb_paint_funcs_t11color_glyphEPvjP9hb_font_t.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1449
  br label %_ZN16hb_paint_funcs_t11color_glyphEPvjP9hb_font_t.exit

_ZN16hb_paint_funcs_t11color_glyphEPvjP9hb_font_t.exit: ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  %i.h = tail call noundef i32 %i.b(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %i.g) #63, !inline_history !127
  %i.i = icmp ne i32 %i.h, 0
  %i.j = zext i1 %i.i to i32
  ret i32 %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define void @hb_paint_fill_glyph(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1044
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1014 ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZN16hb_paint_funcs_t10fill_glyphEPvjP9hb_font_tij.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1045
  br label %_ZN16hb_paint_funcs_t10fill_glyphEPvjP9hb_font_tij.exit

_ZN16hb_paint_funcs_t10fill_glyphEPvjP9hb_font_tij.exit: ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  tail call void %i.b(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %i.g) #63, !inline_history !79
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @hb_paint_push_clip_glyph(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1453
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1014 ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZN16hb_paint_funcs_t15push_clip_glyphEPvjP9hb_font_t.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1452
  br label %_ZN16hb_paint_funcs_t15push_clip_glyphEPvjP9hb_font_t.exit

_ZN16hb_paint_funcs_t15push_clip_glyphEPvjP9hb_font_t.exit: ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  tail call void %i.b(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %i.g) #63, !inline_history !122
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @hb_paint_push_clip_rectangle(ptr noundef %0, ptr noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1456
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1014 ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZN16hb_paint_funcs_t19push_clip_rectangleEPvffff.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1455
  br label %_ZN16hb_paint_funcs_t19push_clip_rectangleEPvffff.exit

_ZN16hb_paint_funcs_t19push_clip_rectangleEPvffff.exit: ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  tail call void %i.b(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, ptr noundef %i.g) #63, !inline_history !128
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef ptr @hb_paint_push_clip_path_start(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #63
  store ptr null, ptr %i.a, align 8, !tbaa !330
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1459
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1014 ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZN16hb_paint_funcs_t20push_clip_path_startEPvPS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1458
  br label %_ZN16hb_paint_funcs_t20push_clip_path_startEPvPS0_.exit

_ZN16hb_paint_funcs_t20push_clip_path_startEPvPS0_.exit: ; preds = %bb.a, %bb.b
  %i.h = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  %.not = icmp eq ptr %2, null
  %spec.store.select = select i1 %.not, ptr %i.a, ptr %2
  %i.i = call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, ptr noundef nonnull %spec.store.select, ptr noundef %i.h) #63, !inline_history !3119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #63
  ret ptr %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define void @hb_paint_push_clip_path_end(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1462
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1014 ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZN16hb_paint_funcs_t18push_clip_path_endEPv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1461
  br label %_ZN16hb_paint_funcs_t18push_clip_path_endEPv.exit

_ZN16hb_paint_funcs_t18push_clip_path_endEPv.exit: ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  tail call void %i.b(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, ptr noundef %i.g) #63, !inline_history !3120
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @hb_paint_pop_clip(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1465
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1014 ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZN16hb_paint_funcs_t8pop_clipEPv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1464
  br label %_ZN16hb_paint_funcs_t8pop_clipEPv.exit

_ZN16hb_paint_funcs_t8pop_clipEPv.exit:           ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  tail call void %i.b(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, ptr noundef %i.g) #63, !inline_history !124
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @hb_paint_color(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1468
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1014 ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZN16hb_paint_funcs_t5colorEPvij.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1467
  br label %_ZN16hb_paint_funcs_t5colorEPvij.exit

_ZN16hb_paint_funcs_t5colorEPvij.exit:            ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  tail call void %i.b(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %i.g) #63, !inline_history !123
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @hb_paint_image(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, float noundef %6, ptr noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1471
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1014 ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZN16hb_paint_funcs_t5imageEPvP9hb_blob_tjjjfP18hb_glyph_extents_t.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1470
  br label %_ZN16hb_paint_funcs_t5imageEPvP9hb_blob_tjjjfP18hb_glyph_extents_t.exit

_ZN16hb_paint_funcs_t5imageEPvP9hb_blob_tjjjfP18hb_glyph_extents_t.exit: ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  %i.h = tail call noundef i32 %i.b(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, float noundef 0.000000e+00, ptr noundef %7, ptr noundef %i.g) #63, !inline_history !129 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @hb_paint_linear_gradient(ptr noundef %0, ptr noundef %1, ptr noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1474
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1014 ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZN16hb_paint_funcs_t15linear_gradientEPvP15hb_color_line_tffffff.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1473
  br label %_ZN16hb_paint_funcs_t15linear_gradientEPvP15hb_color_line_tffffff.exit

_ZN16hb_paint_funcs_t15linear_gradientEPvP15hb_color_line_tffffff.exit: ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  tail call void %i.b(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, ptr noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, ptr noundef %i.g) #63, !inline_history !130
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @hb_paint_radial_gradient(ptr noundef %0, ptr noundef %1, ptr noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1477
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1014 ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZN16hb_paint_funcs_t15radial_gradientEPvP15hb_color_line_tffffff.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1476
  br label %_ZN16hb_paint_funcs_t15radial_gradientEPvP15hb_color_line_tffffff.exit

_ZN16hb_paint_funcs_t15radial_gradientEPvP15hb_color_line_tffffff.exit: ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  tail call void %i.b(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, ptr noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, ptr noundef %i.g) #63, !inline_history !131
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @hb_paint_sweep_gradient(ptr noundef %0, ptr noundef %1, ptr noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1480
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1014 ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZN16hb_paint_funcs_t14sweep_gradientEPvP15hb_color_line_tffff.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1479
  br label %_ZN16hb_paint_funcs_t14sweep_gradientEPvP15hb_color_line_tffff.exit

_ZN16hb_paint_funcs_t14sweep_gradientEPvP15hb_color_line_tffff.exit: ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  tail call void %i.b(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, ptr noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, ptr noundef %i.g) #63, !inline_history !132
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @hb_paint_push_group(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1483
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1014 ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZN16hb_paint_funcs_t10push_groupEPv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1482
  br label %_ZN16hb_paint_funcs_t10push_groupEPv.exit

_ZN16hb_paint_funcs_t10push_groupEPv.exit:        ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  tail call void %i.b(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, ptr noundef %i.g) #63, !inline_history !3121
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @hb_paint_push_group_for(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1486
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1014 ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZN16hb_paint_funcs_t14push_group_forEPv25hb_paint_composite_mode_t.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1485
  br label %_ZN16hb_paint_funcs_t14push_group_forEPv25hb_paint_composite_mode_t.exit

_ZN16hb_paint_funcs_t14push_group_forEPv25hb_paint_composite_mode_t.exit: ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  tail call void %i.b(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, i32 noundef %2, ptr noundef %i.g) #63, !inline_history !133
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @hb_paint_pop_group(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1489
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1014 ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZN16hb_paint_funcs_t9pop_groupEPv25hb_paint_composite_mode_t.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1488
  br label %_ZN16hb_paint_funcs_t9pop_groupEPv25hb_paint_composite_mode_t.exit

_ZN16hb_paint_funcs_t9pop_groupEPv25hb_paint_composite_mode_t.exit: ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  tail call void %i.b(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, i32 noundef %2, ptr noundef %i.g) #63, !inline_history !134
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef range(i32 0, 2) i32 @hb_paint_custom_palette_color(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1492
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1014 ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZN16hb_paint_funcs_t20custom_palette_colorEPvjPj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1491
  br label %_ZN16hb_paint_funcs_t20custom_palette_colorEPvjPj.exit

_ZN16hb_paint_funcs_t20custom_palette_colorEPvjPj.exit: ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  %i.h = tail call noundef i32 %i.b(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %i.g) #63, !inline_history !3122
  %i.i = icmp ne i32 %i.h, 0
  %i.j = zext i1 %i.i to i32
  ret i32 %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @hb_paint_reduce_linear_anchors(float noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %6, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %7, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %8, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %9) local_unnamed_addr #3 {
bb.a:
  %i.a = fsub float %4, %0                        ; 4 uses
  %i.b = fsub float %5, %1                        ; 4 uses
  %i.c = fmul float %i.b, %i.b
  %i.d = tail call float @llvm.fmuladd.f32(float %i.a, float %i.a, float %i.c) ; 2 uses
  %i.e = fcmp olt float %i.d, f0x358637BD
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = fsub float %2, %0
  %i.g = fsub float %3, %1
  %i.h = fmul float %i.g, %i.b
  %i.i = tail call float @llvm.fmuladd.f32(float %i.a, float %i.f, float %i.h)
  %i.j = fneg float %i.i
  %i.k = fdiv float %i.j, %i.d                    ; 2 uses
  %i.l = tail call float @llvm.fmuladd.f32(float %i.k, float %i.a, float %2)
  %i.m = tail call float @llvm.fmuladd.f32(float %i.k, float %i.b, float %3)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi float [ %i.l, %bb.b ], [ %2, %bb.a ]
  %storemerge = phi float [ %i.m, %bb.b ], [ %3, %bb.a ]
  store float %0, ptr %6, align 4, !tbaa !304
  store float %1, ptr %7, align 4, !tbaa !304
  store float %.sink, ptr %8, align 4, !tbaa !304
  store float %storemerge, ptr %9, align 4, !tbaa !304
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(argmem: readwrite) uwtable
define void @hb_paint_normalize_color_line(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #38 {
bb.a:
  %4 = alloca %struct.hb_color_stop_t, align 4    ; 4 uses
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !267

bb.b:                                             ; preds = %bb.a
  store float 0.000000e+00, ptr %3, align 4, !tbaa !304
  store float 0.000000e+00, ptr %2, align 4, !tbaa !304
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.a = zext i32 %1 to i64                       ; 5 uses
  tail call fastcc void @"_ZL13hb_qsort_loopI15hb_color_stop_tZ29hb_paint_normalize_color_lineE3$_0EvPT_mT0_"(ptr noundef %0, i64 noundef range(i64 1, 4294967296) %i.a)
  %.idx.i.i = mul nuw nsw i64 %i.a, 12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i.i
  %.not1.i = icmp eq i32 %1, 1
  br i1 %.not1.i, label %"_ZN10hb_array_tI15hb_color_stop_tE5qsortIZ29hb_paint_normalize_color_lineE3$_0EE17hb_sorted_array_tIS0_ET_.exit.thread", label %.preheader.preheader.i.i

"_ZN10hb_array_tI15hb_color_stop_tE5qsortIZ29hb_paint_normalize_color_lineE3$_0EE17hb_sorted_array_tIS0_ET_.exit.thread": ; preds = %bb.c
  %i.c = load float, ptr %0, align 4, !tbaa !1501 ; 2 uses
  br label %._crit_edge

.preheader.preheader.i.i:                         ; preds = %bb.c
  %.01518.i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.critedge.i.loopexit.i, %.preheader.preheader.i.i
  %.01519.i.i = phi ptr [ %.015.i.i, %.critedge.i.loopexit.i ], [ %.01518.i.i, %.preheader.preheader.i.i ] ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.preheader.i.i
  %.016.i.i = phi ptr [ %i.d, %bb.d ], [ %.01519.i.i, %.preheader.i.i ] ; 4 uses
  %i.d = getelementptr inbounds i8, ptr %.016.i.i, i64 -12 ; 5 uses
  %.val.i.i = load float, ptr %i.d, align 4, !tbaa !1501
  %.0.val.i.i = load float, ptr %.016.i.i, align 4, !tbaa !1501
  %i.e = fcmp ogt float %.val.i.i, %.0.val.i.i
  br i1 %i.e, label %bb.d, label %.critedge.i.loopexit.i

.critedge.i.loopexit.i:                           ; preds = %bb.d, %.lr.ph.i.i
  %.015.i.i = getelementptr inbounds nuw i8, ptr %.01519.i.i, i64 12 ; 2 uses
  %i.f = icmp ult ptr %.015.i.i, %i.b
  br i1 %i.f, label %.preheader.i.i, label %.lr.ph.preheader, !llvm.loop !3123

bb.d:                                             ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) %i.d, i64 12, i1 false), !tbaa.struct !1502
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.d, ptr noundef nonnull align 4 dereferenceable(12) %.016.i.i, i64 12, i1 false), !tbaa.struct !1502
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.016.i.i, ptr noundef nonnull align 4 dereferenceable(12) %4, i64 12, i1 false), !tbaa.struct !1502
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.g = icmp ugt ptr %i.d, %0
  br i1 %i.g, label %.lr.ph.i.i, label %.critedge.i.loopexit.i, !llvm.loop !3124

.lr.ph.preheader:                                 ; preds = %.critedge.i.loopexit.i
  %i.h = load float, ptr %0, align 4, !tbaa !1501 ; 4 uses
  %umax = tail call i32 @llvm.umax.i32(i32 %1, i32 2)
  %wide.trip.count = zext i32 %umax to i64
  %i.i = add nsw i64 %wide.trip.count, -1         ; 3 uses
  %xtraiter = and i64 %i.i, 1
  %i.j = icmp ult i32 %1, 3
  br i1 %i.j, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.i, -2
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.03538.epil.init = phi float [ %i.h, %.lr.ph.preheader ], [ %.sroa.speculated.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.03637.epil.init = phi float [ %i.h, %.lr.ph.preheader ], [ %.sroa.speculated31.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod55 = trunc i64 %i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod55)
  %i.k = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv.epil.init
  %i.l = load float, ptr %i.k, align 4, !tbaa !304 ; 4 uses
  %i.m = fcmp ole float %.03637.epil.init, %i.l
  %.sroa.speculated31.epil = select i1 %i.m, float %.03637.epil.init, float %i.l
  %i.n = fcmp oge float %.03538.epil.init, %i.l
  %.sroa.speculated.epil = select i1 %i.n, float %.03538.epil.init, float %i.l
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %"_ZN10hb_array_tI15hb_color_stop_tE5qsortIZ29hb_paint_normalize_color_lineE3$_0EE17hb_sorted_array_tIS0_ET_.exit.thread"
  %.036.lcssa = phi float [ %i.c, %"_ZN10hb_array_tI15hb_color_stop_tE5qsortIZ29hb_paint_normalize_color_lineE3$_0EE17hb_sorted_array_tIS0_ET_.exit.thread" ], [ %.sroa.speculated31.1, %._crit_edge.loopexit.unr-lcssa ], [ %.sroa.speculated31.epil, %.lr.ph.epil.preheader ] ; 5 uses
  %.035.lcssa = phi float [ %i.c, %"_ZN10hb_array_tI15hb_color_stop_tE5qsortIZ29hb_paint_normalize_color_lineE3$_0EE17hb_sorted_array_tIS0_ET_.exit.thread" ], [ %.sroa.speculated.1, %._crit_edge.loopexit.unr-lcssa ], [ %.sroa.speculated.epil, %.lr.ph.epil.preheader ] ; 3 uses
  %i.o = fcmp une float %.036.lcssa, %.035.lcssa
  br i1 %i.o, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %._crit_edge
  %i.p = fsub float %.035.lcssa, %.036.lcssa      ; 2 uses
  %min.iters.check = icmp ult i32 %1, 5
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

scalar.ph.preheader:                              ; preds = %vector.body, %.preheader
  %indvars.iv44.ph = phi i64 [ 0, %.preheader ], [ %n.vec, %vector.body ]
  br label %scalar.ph

vector.ph:                                        ; preds = %.preheader
  %i.q = and i64 %i.a, 3                          ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  %i.s = select i1 %i.r, i64 4, i64 %i.q
  %n.vec = sub nsw i64 %i.a, %i.s                 ; 2 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.p, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert51 = insertelement <4 x float> poison, float %.036.lcssa, i64 0
  %broadcast.splat52 = shufflevector <4 x float> %broadcast.splatinsert51, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.t = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %index
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 12 ; 2 uses
  %i.w = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %index
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 2 uses
  %i.y = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %index
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 36 ; 2 uses
  %i.aa = load float, ptr %i.t, align 4, !tbaa !1501
  %i.ab = load float, ptr %i.v, align 4, !tbaa !1501
  %i.ac = load float, ptr %i.x, align 4, !tbaa !1501
  %i.ad = load float, ptr %i.z, align 4, !tbaa !1501
  %i.ae = insertelement <4 x float> poison, float %i.aa, i64 0
  %i.af = insertelement <4 x float> %i.ae, float %i.ab, i64 1
  %i.ag = insertelement <4 x float> %i.af, float %i.ac, i64 2
  %i.ah = insertelement <4 x float> %i.ag, float %i.ad, i64 3
  %i.ai = fsub <4 x float> %i.ah, %broadcast.splat52
  %i.aj = fdiv <4 x float> %i.ai, %broadcast.splat ; 4 uses
  %i.ak = extractelement <4 x float> %i.aj, i64 0
  store float %i.ak, ptr %i.t, align 4, !tbaa !1501
  %i.al = extractelement <4 x float> %i.aj, i64 1
  store float %i.al, ptr %i.v, align 4, !tbaa !1501
  %i.am = extractelement <4 x float> %i.aj, i64 2
  store float %i.am, ptr %i.x, align 4, !tbaa !1501
  %i.an = extractelement <4 x float> %i.aj, i64 3
  store float %i.an, ptr %i.z, align 4, !tbaa !1501
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %scalar.ph.preheader, label %vector.body, !llvm.loop !3125

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 3 uses
  %.03538 = phi float [ %i.h, %.lr.ph.preheader.new ], [ %.sroa.speculated.1, %.lr.ph ] ; 2 uses
  %.03637 = phi float [ %i.h, %.lr.ph.preheader.new ], [ %.sroa.speculated31.1, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ap = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv
end_hunk_21
begin_hunk_22_@hb_set_has:bb.a
  %i.al = and i8 %i.ak, 1
  br label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit

_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit: ; preds = %bb.f, %._crit_edge.i.i.i.i.i.i, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i, %bb.g
  %.0.i.i.i.i.i = phi i8 [ %i.al, %bb.g ], [ 0, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i ], [ 0, %._crit_edge.i.i.i.i.i.i ], [ 0, %bb.f ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.an = load i8, ptr %i.am, align 8, !tbaa !946, !range !380, !noundef !293
  %i.ao = icmp ne i8 %i.an, %.0.i.i.i.i.i
  %i.ap = zext i1 %i.ao to i32
  ret i32 %i.ap
}

; Function Attrs: mustprogress nounwind uwtable
define void @hb_set_add(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load i8, ptr %i.b, align 8, !tbaa !946, !range !380, !noundef !293
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c, !prof !267

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN12hb_bit_set_t3delEj(ptr noundef nonnull align 8 dereferenceable(49) %i.a, i32 noundef %1)
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN12hb_bit_set_t3addEj(ptr noundef nonnull align 8 dereferenceable(49) %i.a, i32 noundef %1)
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit

_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @hb_set_add_sorted_array(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load i8, ptr %i.b, align 8, !tbaa !946, !range !380, !noundef !293
  %i.d = trunc nuw i8 %i.c to i1
  %not..i.i = xor i1 %i.d, true
  %i.e = tail call noundef zeroext i1 @_ZN12hb_bit_set_t16set_sorted_arrayIjEEbbPKT_jj(ptr noundef nonnull align 8 dereferenceable(49) %i.a, i1 noundef zeroext %not..i.i, ptr noundef %1, i32 noundef %2, i32 noundef 4) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @hb_set_add_range(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load i8, ptr %i.b, align 8, !tbaa !946, !range !380, !noundef !293
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c, !prof !267

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN12hb_bit_set_t9del_rangeEjj(ptr noundef nonnull align 8 dereferenceable(49) %i.a, i32 noundef %1, i32 noundef %2)
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE9add_rangeEjj.exit

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_ZN12hb_bit_set_t9add_rangeEjj(ptr noundef nonnull align 8 dereferenceable(49) %i.a, i32 noundef %1, i32 noundef %2) ; 0 uses
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE9add_rangeEjj.exit

_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE9add_rangeEjj.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @hb_set_del(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load i8, ptr %i.b, align 8, !tbaa !946, !range !380, !noundef !293
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c, !prof !267

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN12hb_bit_set_t3addEj(ptr noundef nonnull align 8 dereferenceable(49) %i.a, i32 noundef %1)
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3delEj.exit

bb.c:                                             ; preds = %bb.a
  %i.e = load i8, ptr %i.a, align 8, !tbaa !550, !range !380, !noundef !293
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3delEj.exit, !prof !268

bb.d:                                             ; preds = %bb.c
  %i.g = lshr i32 %1, 9                           ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load atomic i32, ptr %i.h monotonic, align 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.k = load i32, ptr %i.j, align 4, !tbaa !1233 ; 3 uses
  %i.l = icmp ult i32 %i.i, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !553  ; 3 uses
  br i1 %i.l, label %bb.e, label %._crit_edge.i.i.i.i, !prof !268

bb.e:                                             ; preds = %bb.d
  %i.o = zext i32 %i.i to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !1235
  %.not.i.i.i.i = icmp eq i32 %i.q, %i.g
  br i1 %.not.i.i.i.i, label %_ZN12hb_bit_set_t8page_forEjb.exit.i.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.e, %bb.d
  %.not1.i.i.i.i.i.i.i.i = icmp sgt i32 %i.k, 0
  br i1 %.not1.i.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3delEj.exit

.lr.ph.preheader.i.i.i.i.i.i.i.i:                 ; preds = %._crit_edge.i.i.i.i
  %i.r = add nsw i32 %i.k, -1
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i
  %.0203.i.i.i.i.i.i.i.i = phi i32 [ %.2.i.i.i.i.i.i.i.i, %bb.i ], [ %i.r, %.lr.ph.preheader.i.i.i.i.i.i.i.i ] ; 2 uses
  %.0212.i.i.i.i.i.i.i.i = phi i32 [ %.223.i.i.i.i.i.i.i.i, %bb.i ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.s = add i32 %.0212.i.i.i.i.i.i.i.i, %.0203.i.i.i.i.i.i.i.i
  %i.t = lshr i32 %i.s, 1                         ; 4 uses
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !1235 ; 2 uses
  %i.y = icmp slt i32 %i.g, %i.x
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.z = add nsw i32 %i.t, -1
  br label %bb.i

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %.not28.i.i.i.i.i.i.i.i = icmp eq i32 %i.g, %i.x
  br i1 %.not28.i.i.i.i.i.i.i.i, label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = add nuw nsw i32 %i.t, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %.223.i.i.i.i.i.i.i.i = phi i32 [ %i.aa, %bb.h ], [ %.0212.i.i.i.i.i.i.i.i, %bb.f ] ; 2 uses
  %.2.i.i.i.i.i.i.i.i = phi i32 [ %.0203.i.i.i.i.i.i.i.i, %bb.h ], [ %i.z, %bb.f ] ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i = icmp sgt i32 %.223.i.i.i.i.i.i.i.i, %.2.i.i.i.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i.i.i.i, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3delEj.exit, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !135

_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i: ; preds = %bb.g
  store atomic i32 %i.t, ptr %i.h monotonic, align 8
  br label %_ZN12hb_bit_set_t8page_forEjb.exit.i.i.i

_ZN12hb_bit_set_t8page_forEjb.exit.i.i.i:         ; preds = %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i, %bb.e
  %i.ab = phi i64 [ %i.u, %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i ], [ %i.o, %bb.e ]
  %.sink.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sink.i.i.i.i = load ptr, ptr %.sink.in.i.i.i.i, align 8, !tbaa !1236 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sink.i.i.i.i, null
  br i1 %.not.i.i.i, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3delEj.exit, label %bb.j

bb.j:                                             ; preds = %_ZN12hb_bit_set_t8page_forEjb.exit.i.i.i
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !1238
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [72 x i8], ptr %.sink.i.i.i.i, i64 %i.af ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 -1, ptr %i.ah, align 4, !tbaa !549
  %i.ai = and i32 %1, 63
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = shl nuw i64 1, %i.aj
  %i.al = xor i64 %i.ak, -1
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.an = lshr i32 %1, 6
  %i.ao = and i32 %i.an, 7
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ap ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !1240
  %i.as = and i64 %i.ar, %i.al
  store i64 %i.as, ptr %i.aq, align 8, !tbaa !1240
  store i32 -1, ptr %i.ag, align 8, !tbaa !1507
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3delEj.exit

_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3delEj.exit: ; preds = %bb.i, %bb.b, %bb.c, %._crit_edge.i.i.i.i, %_ZN12hb_bit_set_t8page_forEjb.exit.i.i.i, %bb.j
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @hb_set_del_range(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load i8, ptr %i.b, align 8, !tbaa !946, !range !380, !noundef !293
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c, !prof !267

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_ZN12hb_bit_set_t9add_rangeEjj(ptr noundef nonnull align 8 dereferenceable(49) %i.a, i32 noundef %1, i32 noundef %2) ; 0 uses
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE9del_rangeEjj.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN12hb_bit_set_t9del_rangeEjj(ptr noundef nonnull align 8 dereferenceable(49) %i.a, i32 noundef %1, i32 noundef %2)
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE9del_rangeEjj.exit

_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE9del_rangeEjj.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef range(i32 0, 2) i32 @hb_set_is_equal(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"struct.hb_bit_set_invertible_t::iter_t", align 8 ; 5 uses
  %3 = alloca %"struct.hb_bit_set_invertible_t::iter_t", align 8 ; 5 uses
  %4 = alloca %struct.hb_map_iter_t.2046, align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load i8, ptr %i.c, align 8, !tbaa !946, !range !380, !noundef !293
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = load i8, ptr %i.e, align 8, !tbaa !946, !range !380, !noundef !293
  %i.g = icmp eq i8 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.c, !prof !268

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_ZNK12hb_bit_set_t8is_equalERKS_(ptr noundef nonnull align 8 dereferenceable(49) %i.a, ptr noundef nonnull align 8 dereferenceable(49) %i.b)
  br label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE8is_equalERKS1_.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZN23hb_bit_set_invertible_t6iter_tC2ERKS_b(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(49) %i.a, i1 noundef zeroext true)
  %.fca.0.load.i.i.i = load ptr, ptr %3, align 8
  %.fca.1.gep.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.fca.1.load.i.i.i = load i64, ptr %.fca.1.gep.i.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @_ZN23hb_bit_set_invertible_t6iter_tC2ERKS_b(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(49) %i.b, i1 noundef zeroext true)
  %.fca.0.load.i8.i.i = load ptr, ptr %2, align 8
  %.fca.1.gep.i10.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.fca.1.load.i11.i.i = load i64, ptr %.fca.1.gep.i10.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #63
  store ptr %.fca.0.load.i.i.i, ptr %4, align 8
  %.sroa.416.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %.fca.1.load.i.i.i, ptr %.sroa.416.0..sroa_idx.i.i, align 8
  %.sroa.517.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %.fca.0.load.i8.i.i, ptr %.sroa.517.0..sroa_idx.i.i, align 8
  %.sroa.618.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %.fca.1.load.i11.i.i, ptr %.sroa.618.0..sroa_idx.i.i, align 8
  %i.i = call fastcc noundef zeroext i1 @"_ZNK4$_31clI13hb_map_iter_tI13hb_zip_iter_tIN23hb_bit_set_invertible_t6iter_tES4_EZNKS3_8is_equalERKS3_EUl9hb_pair_tIjjEE_L24hb_function_sortedness_t0ELPv0EERK3$_8SG_TnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELSC_0EEEbOSI_OT0_OT1_"(ptr noundef nonnull align 8 dereferenceable(33) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #63
  br label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE8is_equalERKS1_.exit

_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE8is_equalERKS1_.exit: ; preds = %bb.b, %bb.c
  %.0.i.i = phi i1 [ %i.h, %bb.b ], [ %i.i, %bb.c ]
  %i.j = zext i1 %.0.i.i to i32
  ret i32 %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define i32 @hb_set_hash(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = tail call noundef i32 @_ZNK12hb_bit_set_t4hashEv(ptr noundef nonnull align 8 dereferenceable(49) %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load i8, ptr %i.c, align 8, !tbaa !946, !range !380, !noundef !293
  %i.e = zext nneg i8 %i.d to i32
  %i.f = xor i32 %i.b, %i.e
  ret i32 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define noundef range(i32 0, 2) i32 @hb_set_is_subset(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"struct.hb_bit_set_invertible_t::iter_t", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load i8, ptr %i.c, align 8, !tbaa !946, !range !380, !noundef !293 ; 2 uses
  %i.e = trunc nuw i8 %i.d to i1                  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.g = load i8, ptr %i.f, align 8, !tbaa !946, !range !380, !noundef !293
  %.not.i.i = icmp eq i8 %i.d, %i.g
  br i1 %.not.i.i, label %bb.e, label %bb.b, !prof !268

bb.b:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @_ZN23hb_bit_set_invertible_t6iter_tC2ERKS_b(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(49) %i.a, i1 noundef zeroext true)
  %.fca.0.load.i.i.i = load ptr, ptr %2, align 8
  %.fca.1.gep.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.fca.1.load.i.i.i = load i64, ptr %.fca.1.gep.i.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.h = call fastcc noundef zeroext i1 @"_ZNK4$_31clIN23hb_bit_set_invertible_t6iter_tERK12hb_bit_set_tRK3$_8TnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEbOSA_OT0_OT1_"(ptr %.fca.0.load.i.i.i, i64 %.fca.1.load.i.i.i, ptr noundef nonnull align 8 dereferenceable(49) %i.b)
  br label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE9is_subsetERKS1_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_ZNK12hb_bit_set_t10intersectsERKS_(ptr noundef nonnull align 8 dereferenceable(49) %i.a, ptr noundef nonnull align 8 dereferenceable(49) %i.b)
  %i.j = xor i1 %i.i, true
  br label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE9is_subsetERKS1_.exit

bb.e:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.f, label %bb.g, !prof !267

bb.f:                                             ; preds = %bb.e
  %i.k = tail call noundef zeroext i1 @_ZNK12hb_bit_set_t9is_subsetERKS_(ptr noundef nonnull align 8 dereferenceable(49) %i.b, ptr noundef nonnull align 8 dereferenceable(49) %i.a)
  br label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE9is_subsetERKS1_.exit

bb.g:                                             ; preds = %bb.e
  %i.l = tail call noundef zeroext i1 @_ZNK12hb_bit_set_t9is_subsetERKS_(ptr noundef nonnull align 8 dereferenceable(49) %i.a, ptr noundef nonnull align 8 dereferenceable(49) %i.b)
  br label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE9is_subsetERKS1_.exit

_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE9is_subsetERKS1_.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.0.i.i = phi i1 [ %i.h, %bb.c ], [ %i.j, %bb.d ], [ %i.k, %bb.f ], [ %i.l, %bb.g ]
  %i.m = zext i1 %.0.i.i to i32
  ret i32 %i.m
}

; Function Attrs: mustprogress nounwind uwtable
define void @hb_set_set(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @_ZN12hb_bit_set_t3setERKS_b(ptr noundef nonnull align 8 dereferenceable(49) %i.a, ptr noundef nonnull align 8 dereferenceable(49) %i.b, i1 noundef zeroext false)
  %i.c = load i8, ptr %i.a, align 8, !tbaa !1504, !range !380, !noundef !293
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3setERKS1_.exit, !prof !268

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = load i8, ptr %i.e, align 8, !tbaa !946, !range !380, !noundef !293
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 %i.f, ptr %i.g, align 8, !tbaa !946
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3setERKS1_.exit

_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3setERKS1_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @hb_set_union(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !946, !range !380, !noundef !293 ; 2 uses
  %i.e = trunc nuw i8 %i.d to i1                  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !946, !range !380, !noundef !293
  %i.h = icmp eq i8 %i.d, %i.g
  br i1 %i.h, label %bb.b, label %bb.e, !prof !268

bb.b:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.c, label %bb.d, !prof !267

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN12hb_bit_set_t8process_EPF16hb_vector_size_tIyLj64EERKS1_S3_EbbRKS_(ptr noundef nonnull align 8 dereferenceable(49) %i.a, ptr noundef nonnull @"_ZN12hb_bit_set_t3op_I4$_25EE16hb_vector_size_tIyLj64EERKS3_S5_", i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(49) %i.b)
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN12hb_bit_set_t8process_EPF16hb_vector_size_tIyLj64EERKS1_S3_EbbRKS_(ptr noundef nonnull align 8 dereferenceable(49) %i.a, ptr noundef nonnull @"_ZN12hb_bit_set_t3op_I4$_24EE16hb_vector_size_tIyLj64EERKS3_S5_", i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(49) %i.b)
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.f, label %bb.g, !prof !267

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN12hb_bit_set_t8process_EPF16hb_vector_size_tIyLj64EERKS1_S3_EbbRKS_(ptr noundef nonnull align 8 dereferenceable(49) %i.a, ptr noundef nonnull @"_ZN12hb_bit_set_t3op_I4$_26EE16hb_vector_size_tIyLj64EERKS3_S5_", i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(49) %i.b)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @_ZN12hb_bit_set_t8process_EPF16hb_vector_size_tIyLj64EERKS1_S3_EbbRKS_(ptr noundef nonnull align 8 dereferenceable(49) %i.a, ptr noundef nonnull @"_ZN12hb_bit_set_t3op_I4$_36EE16hb_vector_size_tIyLj64EERKS3_S5_", i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(49) %i.b)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d, %bb.c
  %i.i = load i8, ptr %i.a, align 8, !tbaa !1504, !range !380, !noundef !293
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.i, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE6union_ERKS1_.exit, !prof !268

bb.i:                                             ; preds = %bb.h
  %i.k = load i8, ptr %i.c, align 8, !tbaa !946, !range !380, !noundef !293
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.m = load i8, ptr %i.f, align 8, !tbaa !946, !range !380, !noundef !293
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.n = phi i8 [ 1, %bb.i ], [ %i.m, %bb.j ]
  store i8 %i.n, ptr %i.c, align 8, !tbaa !946
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE6union_ERKS1_.exit

_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE6union_ERKS1_.exit: ; preds = %bb.h, %bb.k
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @hb_set_intersect(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !946, !range !380, !noundef !293 ; 2 uses
  %i.e = trunc nuw i8 %i.d to i1                  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !946, !range !380, !noundef !293
  %i.h = icmp eq i8 %i.d, %i.g
  br i1 %i.h, label %bb.b, label %bb.e, !prof !268

bb.b:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.c, label %bb.d, !prof !267

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN12hb_bit_set_t8process_EPF16hb_vector_size_tIyLj64EERKS1_S3_EbbRKS_(ptr noundef nonnull align 8 dereferenceable(49) %i.a, ptr noundef nonnull @"_ZN12hb_bit_set_t3op_I4$_24EE16hb_vector_size_tIyLj64EERKS3_S5_", i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(49) %i.b)
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN12hb_bit_set_t8process_EPF16hb_vector_size_tIyLj64EERKS1_S3_EbbRKS_(ptr noundef nonnull align 8 dereferenceable(49) %i.a, ptr noundef nonnull @"_ZN12hb_bit_set_t3op_I4$_25EE16hb_vector_size_tIyLj64EERKS3_S5_", i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(49) %i.b)
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.f, label %bb.g, !prof !267

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN12hb_bit_set_t8process_EPF16hb_vector_size_tIyLj64EERKS1_S3_EbbRKS_(ptr noundef nonnull align 8 dereferenceable(49) %i.a, ptr noundef nonnull @"_ZN12hb_bit_set_t3op_I4$_36EE16hb_vector_size_tIyLj64EERKS3_S5_", i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(49) %i.b)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @_ZN12hb_bit_set_t8process_EPF16hb_vector_size_tIyLj64EERKS1_S3_EbbRKS_(ptr noundef nonnull align 8 dereferenceable(49) %i.a, ptr noundef nonnull @"_ZN12hb_bit_set_t3op_I4$_26EE16hb_vector_size_tIyLj64EERKS3_S5_", i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(49) %i.b)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d, %bb.c
  %i.i = load i8, ptr %i.a, align 8, !tbaa !1504, !range !380, !noundef !293
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.i, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE9intersectERKS1_.exit, !prof !268

bb.i:                                             ; preds = %bb.h
  %i.k = load i8, ptr %i.c, align 8, !tbaa !946, !range !380, !noundef !293
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.m = load i8, ptr %i.f, align 8, !tbaa !946, !range !380, !noundef !293
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.n = phi i8 [ 0, %bb.i ], [ %i.m, %bb.j ]
  store i8 %i.n, ptr %i.c, align 8, !tbaa !946
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE9intersectERKS1_.exit

_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE9intersectERKS1_.exit: ; preds = %bb.h, %bb.k
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @hb_set_subtract(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !946, !range !380, !noundef !293 ; 2 uses
  %i.e = trunc nuw i8 %i.d to i1                  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !946, !range !380, !noundef !293
  %i.h = icmp eq i8 %i.d, %i.g
  br i1 %i.h, label %bb.b, label %bb.e, !prof !268

bb.b:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.c, label %bb.d, !prof !267

end_hunk_22
begin_hunk_23_@hb_set_get_max:bb.a

_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE7get_maxEv.exit: ; preds = %bb.b, %bb.e
  %i.n = phi i32 [ %.pre.i.i, %bb.b ], [ %.sink.i.i.i, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #63
  ret i32 %i.n
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @hb_set_next(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load i8, ptr %i.d, align 8, !tbaa !946, !range !380, !noundef !293
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.b, !prof !267

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.c, ptr noundef %1)
  br label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #63
  %i.h = load i32, ptr %1, align 4, !tbaa !324    ; 5 uses
  store i32 %i.h, ptr %i.a, align 4, !tbaa !324
  %i.i = icmp eq i32 %i.h, -2
  br i1 %i.i, label %bb.d, label %bb.e, !prof !267

bb.d:                                             ; preds = %bb.c
  store i32 -1, ptr %1, align 4, !tbaa !324
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #63
  store i32 %i.h, ptr %i.b, align 4, !tbaa !324
  %i.j = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.c, ptr noundef nonnull %i.b) ; 0 uses
  %i.k = add i32 %i.h, 1                          ; 2 uses
  %i.l = load i32, ptr %i.b, align 4, !tbaa !324
  %i.m = icmp ult i32 %i.k, %i.l
  br i1 %i.m, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %i.h, ptr %i.b, align 4, !tbaa !324
  %i.n = call noundef zeroext i1 @_ZNK12hb_bit_set_t10next_rangeEPjS0_(ptr noundef nonnull align 8 dereferenceable(49) %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 0 uses
  %i.o = load i32, ptr %i.b, align 4, !tbaa !324
  %i.p = add i32 %i.o, 1                          ; 2 uses
  %i.q = icmp ne i32 %i.p, -1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink.i.i = phi i32 [ %i.p, %bb.f ], [ %i.k, %bb.e ]
  %.0.i.i = phi i1 [ %i.q, %bb.f ], [ true, %bb.e ]
  store i32 %.sink.i.i, ptr %1, align 4, !tbaa !324
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #63
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.1.i.i = phi i1 [ false, %bb.d ], [ %.0.i.i, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #63
  br label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit

_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit: ; preds = %bb.b, %bb.h
  %.2.i.i = phi i1 [ %i.g, %bb.b ], [ %.1.i.i, %bb.h ]
  %i.r = zext i1 %.2.i.i to i32
  ret i32 %i.r
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @hb_set_previous(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load i8, ptr %i.d, align 8, !tbaa !946, !range !380, !noundef !293
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.b, !prof !267

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_ZNK12hb_bit_set_t8previousEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.c, ptr noundef %1)
  br label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE8previousEPj.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #63
  %i.h = load i32, ptr %1, align 4, !tbaa !324    ; 5 uses
  store i32 %i.h, ptr %i.a, align 4, !tbaa !324
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.e, !prof !267

bb.d:                                             ; preds = %bb.c
  store i32 -1, ptr %1, align 4, !tbaa !324
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #63
  store i32 %i.h, ptr %i.b, align 4, !tbaa !324
  %i.j = call noundef zeroext i1 @_ZNK12hb_bit_set_t8previousEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.c, ptr noundef nonnull %i.b) ; 0 uses
  %i.k = add i32 %i.h, -1                         ; 2 uses
  %i.l = load i32, ptr %i.b, align 4, !tbaa !324  ; 2 uses
  %i.m = icmp ugt i32 %i.k, %i.l
  %i.n = icmp eq i32 %i.l, -1
  %or.cond.i.i = or i1 %i.m, %i.n
  br i1 %or.cond.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %i.h, ptr %i.b, align 4, !tbaa !324
  %i.o = call noundef zeroext i1 @_ZNK12hb_bit_set_t14previous_rangeEPjS0_(ptr noundef nonnull align 8 dereferenceable(49) %i.c, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) ; 0 uses
  %i.p = load i32, ptr %i.b, align 4, !tbaa !324  ; 2 uses
  %i.q = add i32 %i.p, -1
  %i.r = icmp ne i32 %i.p, 0
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink.i.i = phi i32 [ %i.q, %bb.f ], [ %i.k, %bb.e ]
  %.0.i.i = phi i1 [ %i.r, %bb.f ], [ true, %bb.e ]
  store i32 %.sink.i.i, ptr %1, align 4, !tbaa !324
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #63
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.1.i.i = phi i1 [ false, %bb.d ], [ %.0.i.i, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #63
  br label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE8previousEPj.exit

_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE8previousEPj.exit: ; preds = %bb.b, %bb.h
  %.2.i.i = phi i1 [ %i.g, %bb.b ], [ %.1.i.i, %bb.h ]
  %i.s = zext i1 %.2.i.i to i32
  ret i32 %i.s
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @hb_set_next_range(ptr noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load i8, ptr %i.c, align 8, !tbaa !946, !range !380, !noundef !293
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.g, label %bb.b, !prof !267

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #63
  %i.f = load i32, ptr %2, align 4, !tbaa !324
  store i32 %i.f, ptr %i.a, align 4, !tbaa !324
  %i.g = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.b, ptr noundef nonnull %i.a) ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 -1, ptr %1, align 4, !tbaa !324
  store i32 -1, ptr %2, align 4, !tbaa !324
  br label %_ZNK12hb_bit_set_t10next_rangeEPjS0_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.a, align 4, !tbaa !324  ; 2 uses
  store i32 %i.h, ptr %1, align 4, !tbaa !324
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %storemerge.i.i.i = phi i32 [ %i.h, %bb.d ], [ %i.j, %bb.f ]
  store i32 %storemerge.i.i.i, ptr %2, align 4, !tbaa !324
  %i.i = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.b, ptr noundef nonnull %i.a)
  br i1 %i.i, label %bb.f, label %_ZNK12hb_bit_set_t10next_rangeEPjS0_.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.j = load i32, ptr %i.a, align 4, !tbaa !324  ; 2 uses
  %i.k = load i32, ptr %2, align 4, !tbaa !324
  %i.l = add i32 %i.k, 1
  %i.m = icmp eq i32 %i.j, %i.l
  br i1 %i.m, label %bb.e, label %_ZNK12hb_bit_set_t10next_rangeEPjS0_.exit.i.i, !llvm.loop !105

_ZNK12hb_bit_set_t10next_rangeEPjS0_.exit.i.i:    ; preds = %bb.f, %bb.e, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #63
  %i.n = zext i1 %i.g to i32
  br label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE10next_rangeEPjS2_.exit

bb.g:                                             ; preds = %bb.a
  %i.o = tail call noundef zeroext i1 @_ZNK23hb_bit_set_invertible_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.b, ptr noundef %2)
  br i1 %i.o, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 -1, ptr %1, align 4, !tbaa !324
  store i32 -1, ptr %2, align 4, !tbaa !324
  br label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE10next_rangeEPjS2_.exit

bb.i:                                             ; preds = %bb.g
  %i.p = load i32, ptr %2, align 4, !tbaa !324
  store i32 %i.p, ptr %1, align 4, !tbaa !324
  %i.q = tail call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.b, ptr noundef nonnull %2) ; 0 uses
  %i.r = load i32, ptr %2, align 4, !tbaa !324
  %i.s = add i32 %i.r, -1
  store i32 %i.s, ptr %2, align 4, !tbaa !324
  br label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE10next_rangeEPjS2_.exit

_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE10next_rangeEPjS2_.exit: ; preds = %_ZNK12hb_bit_set_t10next_rangeEPjS0_.exit.i.i, %bb.h, %bb.i
  %.0.i.i = phi i32 [ %i.n, %_ZNK12hb_bit_set_t10next_rangeEPjS0_.exit.i.i ], [ 1, %bb.i ], [ 0, %bb.h ]
  ret i32 %.0.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define noundef range(i32 0, 2) i32 @hb_set_previous_range(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = tail call noundef zeroext i1 @_ZNK23hb_bit_set_invertible_t14previous_rangeEPjS0_(ptr noundef nonnull align 8 dereferenceable(49) %i.a, ptr noundef %1, ptr noundef %2)
  %i.c = zext i1 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define noundef i32 @hb_set_next_many(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load i8, ptr %i.b, align 8, !tbaa !946, !range !380, !noundef !293
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i32 @_ZNK12hb_bit_set_t18next_many_invertedEjPjj(ptr noundef nonnull align 8 dereferenceable(49) %i.a, i32 noundef %1, ptr noundef %2, i32 noundef %3)
  br label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE9next_manyEjPjj.exit

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef i32 @_ZNK12hb_bit_set_t9next_manyEjPjj(ptr noundef nonnull align 8 dereferenceable(49) %i.a, i32 noundef %1, ptr noundef %2, i32 noundef %3)
  br label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE9next_manyEjPjj.exit

_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE9next_manyEjPjj.exit: ; preds = %bb.b, %bb.c
  %i.g = phi i32 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  ret i32 %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN19hb_shape_plan_key_t4initEbP9hb_face_tPK23hb_segment_properties_tPK12hb_feature_tjPKijPKPKc(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(72) %0, i1 noundef zeroext %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7, ptr nofree noundef readonly captures(address_is_null) %8) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp ne i32 %5, 0
  %or.cond = and i1 %1, %i.a
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = zext i32 %5 to i64                       ; 2 uses
  %i.c = tail call noalias noundef ptr @calloc(i64 noundef %i.b, i64 noundef 16) #64 ; 8 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.critedge, label %_ZL9hb_memcpyPvPKvm.exit

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !661
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %5, ptr %i.d, align 8, !tbaa !1390
  %i.e = select i1 %1, ptr null, ptr %4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.e, ptr %i.f, align 8, !tbaa !933
  br label %.loopexit

_ZL9hb_memcpyPvPKvm.exit:                         ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !661
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %5, ptr %i.g, align 8, !tbaa !1390
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.c, ptr %i.h, align 8, !tbaa !933
  %i.i = shl nuw nsw i64 %i.b, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.c, ptr readonly align 1 %4, i64 %i.i, i1 false), !alias.scope !3144
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 4 uses
  %.promoted = load i32, ptr %i.j, align 4, !tbaa !709 ; 2 uses
  %.promoted85 = load i32, ptr %i.k, align 4, !tbaa !710 ; 2 uses
  %xtraiter = and i32 %5, 1
  %i.l = icmp eq i32 %5, 1
  br i1 %i.l, label %.epil.preheader, label %_ZL9hb_memcpyPvPKvm.exit.new

_ZL9hb_memcpyPvPKvm.exit.new:                     ; preds = %_ZL9hb_memcpyPvPKvm.exit
  %unroll_iter = and i32 %5, -2
  br label %bb.d

bb.d:                                             ; preds = %bb.l, %_ZL9hb_memcpyPvPKvm.exit.new
  %i.m = phi i32 [ %.promoted, %_ZL9hb_memcpyPvPKvm.exit.new ], [ %i.o, %bb.l ]
  %i.n = phi i32 [ %.promoted85, %_ZL9hb_memcpyPvPKvm.exit.new ], [ %i.p, %bb.l ]
  %niter = phi i32 [ 0, %_ZL9hb_memcpyPvPKvm.exit.new ], [ %niter.next.1, %bb.l ]
  %.not61 = icmp eq i32 %i.m, 0                   ; 2 uses
  br i1 %.not61, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 1, ptr %i.j, align 4, !tbaa !709
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.not62 = icmp eq i32 %i.n, -1                  ; 2 uses
  br i1 %.not62, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 2, ptr %i.k, align 4, !tbaa !710
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  br i1 %.not61, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 1, ptr %i.j, align 4, !tbaa !709
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.o = phi i32 [ 1, %bb.i ], [ 0, %bb.h ]       ; 2 uses
  br i1 %.not62, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 2, ptr %i.k, align 4, !tbaa !710
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.p = phi i32 [ -1, %bb.j ], [ 2, %bb.k ]      ; 2 uses
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.d, !llvm.loop !3142

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.l
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %_ZL9hb_memcpyPvPKvm.exit
  %.epil.init = phi i32 [ %.promoted, %_ZL9hb_memcpyPvPKvm.exit ], [ %i.o, %.loopexit.loopexit.unr-lcssa ]
  %.epil.init134 = phi i32 [ %.promoted85, %_ZL9hb_memcpyPvPKvm.exit ], [ %i.p, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod135 = trunc i32 %5 to i1
  tail call void @llvm.assume(i1 %lcmp.mod135)
  %.not61.epil = icmp eq i32 %.epil.init, 0
  br i1 %.not61.epil, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.epil.preheader
  store i32 1, ptr %i.j, align 4, !tbaa !709
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.epil.preheader
  %.not62.epil = icmp eq i32 %.epil.init134, -1
  br i1 %.not62.epil, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 2, ptr %i.k, align 4, !tbaa !710
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.o, %bb.n, %bb.c
  %.04877 = phi ptr [ null, %bb.c ], [ %i.c, %bb.n ], [ %i.c, %bb.o ], [ %i.c, %.loopexit.loopexit.unr-lcssa ] ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  %i.t = tail call i32 @hb_ot_layout_table_find_feature_variations(ptr noundef %2, i32 noundef 1196643650, ptr noundef %6, i32 noundef %7, ptr noundef nonnull align 4 dereferenceable(8) %i.s) ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = tail call i32 @hb_ot_layout_table_find_feature_variations(ptr noundef %2, i32 noundef 1196445523, ptr noundef %6, i32 noundef %7, ptr noundef nonnull %i.u) ; 0 uses
  %.not59 = icmp eq ptr %8, null
  br i1 %.not59, label %bb.v, label %.preheader, !prof !268

.preheader:                                       ; preds = %.loopexit
  %i.w = load ptr, ptr %8, align 8, !tbaa !631    ; 2 uses
  %.not6087 = icmp eq ptr %i.w, null
  br i1 %.not6087, label %.critedge, label %sub_0.lr.ph

sub_0.lr.ph:                                      ; preds = %.preheader
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  br label %sub_0

sub_0:                                            ; preds = %sub_0.lr.ph, %_ZNK16hb_lazy_loader_tI17hb_ot_face_data_t23hb_shaper_lazy_loader_tI9hb_face_tLj1ES0_ES2_Lj1ES0_EcvbEv.exit
  %i.aa = phi ptr [ %i.w, %sub_0.lr.ph ], [ %i.as, %_ZNK16hb_lazy_loader_tI17hb_ot_face_data_t23hb_shaper_lazy_loader_tI9hb_face_tLj1ES0_ES2_Lj1ES0_EcvbEv.exit ] ; 4 uses
  %.04988 = phi ptr [ %8, %sub_0.lr.ph ], [ %i.ar, %_ZNK16hb_lazy_loader_tI17hb_ot_face_data_t23hb_shaper_lazy_loader_tI9hb_face_tLj1ES0_ES2_Lj1ES0_EcvbEv.exit ]
  %i.ab = load i8, ptr %i.aa, align 1
  %.not90 = icmp eq i8 %i.ab, 111
  br i1 %.not90, label %sub_1, label %.tail.thread

sub_1:                                            ; preds = %sub_0
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  %i.ad = load i8, ptr %i.ac, align 1
  %.not91 = icmp eq i8 %i.ad, 116
  br i1 %.not91, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = icmp eq i8 %i.af, 0
  br i1 %i.ag, label %.preheader96, label %.tail.thread

.preheader96:                                     ; preds = %.tail, %bb.q
  %i.ah = load atomic ptr, ptr %i.z acquire, align 8
  %.not.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i, label %bb.p, label %bb.r, !prof !267

bb.p:                                             ; preds = %.preheader96
  %i.ai = load ptr, ptr %i.y, align 8, !tbaa !266
  %.not.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i, label %_ZNK16hb_lazy_loader_tI17hb_ot_face_data_t23hb_shaper_lazy_loader_tI9hb_face_tLj1ES0_ES2_Lj1ES0_EcvbEv.exit, label %bb.q, !prof !267

bb.q:                                             ; preds = %bb.p
  %i.aj = cmpxchg weak ptr %i.z, ptr null, ptr inttoptr (i64 1 to ptr) acq_rel monotonic, align 8
  %i.ak = extractvalue { ptr, i1 } %i.aj, 1
  br i1 %i.ak, label %bb.r, label %.preheader96, !prof !268

bb.r:                                             ; preds = %bb.q, %.preheader96
  store ptr @_hb_ot_shape, ptr %i.q, align 8, !tbaa !1508
  store ptr @.str.40, ptr %i.r, align 8, !tbaa !3145
  br label %bb.aj

.tail.thread:                                     ; preds = %sub_1, %sub_0, %.tail
  %i.al = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.aa, ptr noundef nonnull dereferenceable(9) @.str.47) #68
  %i.am = icmp eq i32 %i.al, 0
end_hunk_23
begin_hunk_24_@_ZL26hb_ot_get_glyph_h_advancesP9hb_font_tPvjPKjjPijS1_:bb.a
bb.j:                                             ; preds = %.lr.ph217, %_ZNK2OT8hmtxvmtxINS_4hmtxENS_4hheaENS_4HVAREE13accelerator_t32get_advance_without_var_unscaledEj.exit
  %.099216 = phi i32 [ 0, %.lr.ph217 ], [ %i.bo, %_ZNK2OT8hmtxvmtxINS_4hmtxENS_4hheaENS_4HVAREE13accelerator_t32get_advance_without_var_unscaledEj.exit ]
  %.1103215 = phi ptr [ %3, %.lr.ph217 ], [ %i.bm, %_ZNK2OT8hmtxvmtxINS_4hmtxENS_4hheaENS_4HVAREE13accelerator_t32get_advance_without_var_unscaledEj.exit ] ; 2 uses
  %.2108214 = phi ptr [ %5, %.lr.ph217 ], [ %i.bn, %_ZNK2OT8hmtxvmtxINS_4hmtxENS_4hheaENS_4HVAREE13accelerator_t32get_advance_without_var_unscaledEj.exit ] ; 2 uses
  %i.as = load i32, ptr %.1103215, align 4, !tbaa !324 ; 2 uses
  %i.at = load i32, ptr %i.i, align 4, !tbaa !1547
  %i.au = icmp ult i32 %i.as, %i.at
  br i1 %i.au, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.av = load ptr, ptr %i.an, align 8, !tbaa !272 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.av, null
  %spec.select.i.i.i.i.i = select i1 %.not.i.i.i.i.i, ptr @_hb_NullPool, ptr %i.av
  %i.aw = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !275
  %i.ay = load i32, ptr %.19.ph.i.i.i, align 8, !tbaa !1546
  %i.az = add i32 %i.ay, -1
  %.sroa.speculated.i = tail call i32 @llvm.umin.i32(i32 %i.as, i32 %i.az)
  %i.ba = zext i32 %.sroa.speculated.i to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.ba
  %i.bc = load i16, ptr %i.bb, align 1, !tbaa !283
  %i.bd = tail call noundef i16 @llvm.bswap.i16(i16 %i.bc)
  br label %_ZNK2OT8hmtxvmtxINS_4hmtxENS_4hheaENS_4HVAREE13accelerator_t32get_advance_without_var_unscaledEj.exit

bb.l:                                             ; preds = %bb.j
  %i.be = load i32, ptr %i.al, align 8, !tbaa !1554
  %.not.i116 = icmp eq i32 %i.be, 0
  br i1 %.not.i116, label %bb.m, label %_ZNK2OT8hmtxvmtxINS_4hmtxENS_4hheaENS_4HVAREE13accelerator_t32get_advance_without_var_unscaledEj.exit, !prof !267

bb.m:                                             ; preds = %bb.l
  %i.bf = load i32, ptr %i.am, align 8, !tbaa !1555
  %i.bg = trunc i32 %i.bf to i16
  br label %_ZNK2OT8hmtxvmtxINS_4hmtxENS_4hheaENS_4HVAREE13accelerator_t32get_advance_without_var_unscaledEj.exit

_ZNK2OT8hmtxvmtxINS_4hmtxENS_4hheaENS_4HVAREE13accelerator_t32get_advance_without_var_unscaledEj.exit: ; preds = %bb.k, %bb.l, %bb.m
  %.0.i117 = phi i16 [ %i.bd, %bb.k ], [ %i.bg, %bb.m ], [ 0, %bb.l ]
  %i.bh = sext i16 %.0.i117 to i64
  %i.bi = mul nsw i64 %i.ap, %i.bh
  %i.bj = add nsw i64 %i.bi, 32768
  %i.bk = lshr i64 %i.bj, 16
  %i.bl = trunc i64 %i.bk to i32
  store i32 %i.bl, ptr %.2108214, align 4, !tbaa !324
  %i.bm = getelementptr inbounds nuw i8, ptr %.1103215, i64 %i.aq
  %i.bn = getelementptr inbounds nuw i8, ptr %.2108214, i64 %i.ar
  %i.bo = add nuw i32 %.099216, 1                 ; 2 uses
  %exitcond233.not = icmp eq i32 %i.bo, %2
  br i1 %exitcond233.not, label %_ZNK12hb_ot_font_t17direction_cache_t21release_advance_cacheEP10hb_cache_tILj24ELj16ELj8ELb1EE.exit, label %bb.j, !llvm.loop !3527

bb.n:                                             ; preds = %bb.i
  tail call void @_ZNK12hb_ot_font_t12check_serialEP9hb_font_t(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull %0)
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  br label %_ZN10hb_cache_tILj24ELj16ELj8ELb1EEC2Ev.exit.i

_ZN10hb_cache_tILj24ELj16ELj8ELb1EEC2Ev.exit.i:   ; preds = %bb.p, %bb.n
  %i.bq = load atomic ptr, ptr %i.bp acquire, align 8 ; 3 uses
  %.not.i118 = icmp eq ptr %i.bq, null
  br i1 %.not.i118, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN10hb_cache_tILj24ELj16ELj8ELb1EEC2Ev.exit.i
  %calloc.i = tail call dereferenceable_or_null(1024) ptr @calloc(i64 1, i64 1024) ; 10 uses
  %.not11.i = icmp eq ptr %calloc.i, null
  br i1 %.not11.i, label %_ZNK12hb_ot_font_t17direction_cache_t21acquire_advance_cacheEv.exit.thread, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.o, %.preheader.i.i
  %.0.idx8.i.i.i = phi i64 [ %.0.add.i.i.i.7, %.preheader.i.i ], [ 0, %bb.o ] ; 9 uses
  %.0.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %calloc.i, i64 %.0.idx8.i.i.i
  store atomic i32 -1, ptr %.0.ptr.i.i.i monotonic, align 4
  %i.br = getelementptr inbounds nuw i8, ptr %calloc.i, i64 %.0.idx8.i.i.i
  %.0.ptr.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  store atomic i32 -1, ptr %.0.ptr.i.i.i.1 monotonic, align 4
  %i.bs = getelementptr inbounds nuw i8, ptr %calloc.i, i64 %.0.idx8.i.i.i
  %.0.ptr.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store atomic i32 -1, ptr %.0.ptr.i.i.i.2 monotonic, align 4
  %i.bt = getelementptr inbounds nuw i8, ptr %calloc.i, i64 %.0.idx8.i.i.i
  %.0.ptr.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.bt, i64 12
  store atomic i32 -1, ptr %.0.ptr.i.i.i.3 monotonic, align 4
  %i.bu = getelementptr inbounds nuw i8, ptr %calloc.i, i64 %.0.idx8.i.i.i
  %.0.ptr.i.i.i.4 = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store atomic i32 -1, ptr %.0.ptr.i.i.i.4 monotonic, align 4
  %i.bv = getelementptr inbounds nuw i8, ptr %calloc.i, i64 %.0.idx8.i.i.i
  %.0.ptr.i.i.i.5 = getelementptr inbounds nuw i8, ptr %i.bv, i64 20
  store atomic i32 -1, ptr %.0.ptr.i.i.i.5 monotonic, align 4
  %i.bw = getelementptr inbounds nuw i8, ptr %calloc.i, i64 %.0.idx8.i.i.i
  %.0.ptr.i.i.i.6 = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  store atomic i32 -1, ptr %.0.ptr.i.i.i.6 monotonic, align 4
  %i.bx = getelementptr inbounds nuw i8, ptr %calloc.i, i64 %.0.idx8.i.i.i
  %.0.ptr.i.i.i.7 = getelementptr inbounds nuw i8, ptr %i.bx, i64 28
  store atomic i32 -1, ptr %.0.ptr.i.i.i.7 monotonic, align 4
  %.0.add.i.i.i.7 = add nuw nsw i64 %.0.idx8.i.i.i, 32 ; 2 uses
  %.not.i.i.i119.7 = icmp eq i64 %.0.add.i.i.i.7, 1024
  br i1 %.not.i.i.i119.7, label %.loopexit, label %.preheader.i.i

bb.p:                                             ; preds = %_ZN10hb_cache_tILj24ELj16ELj8ELb1EEC2Ev.exit.i
  %i.by = cmpxchg weak ptr %i.bp, ptr %i.bq, ptr null acq_rel monotonic, align 8
  %i.bz = extractvalue { ptr, i1 } %i.by, 1
  br i1 %i.bz, label %.loopexit, label %_ZN10hb_cache_tILj24ELj16ELj8ELb1EEC2Ev.exit.i

.loopexit:                                        ; preds = %bb.p, %.preheader.i.i
  %.1.ph.i.ph = phi ptr [ %calloc.i, %.preheader.i.i ], [ %i.bq, %bb.p ] ; 11 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !272 ; 2 uses
  %.not.i.i.i.i120 = icmp eq ptr %i.cb, null
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i120, ptr @_hb_NullPool, ptr %i.cb ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !275
  %i.ce = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i, i64 24
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !276
  %i.cg = icmp ult i32 %i.cf, 20
  %spec.select.i.i1.i.i = select i1 %i.cg, ptr @_hb_NullPool, ptr %i.cd ; 3 uses
  %i.ch = load i16, ptr %spec.select.i.i1.i.i, align 1, !tbaa !283
  %.not196 = icmp eq i16 %i.ch, 0
  br i1 %.not196, label %bb.ab, label %bb.q

bb.q:                                             ; preds = %.loopexit
  %i.ci = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i, i64 4
  %i.cj = load i32, ptr %i.ci, align 1, !tbaa !278 ; 2 uses
  %i.ck = icmp eq i32 %i.cj, 0
  %i.cl = tail call i32 @llvm.bswap.i32(i32 %i.cj)
  %i.cm = zext i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i, i64 %i.cm
  %.0.i.i = select i1 %i.ck, ptr @_hb_NullPool, ptr %i.cn, !prof !267 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  br label %_ZNK2OT18ItemVariationStore12create_cacheEv.exit.i

_ZNK2OT18ItemVariationStore12create_cacheEv.exit.i: ; preds = %bb.u, %bb.q
  %i.cp = load atomic ptr, ptr %i.co acquire, align 8 ; 3 uses
  %.not.i121 = icmp eq ptr %i.cp, null
  br i1 %.not.i121, label %bb.r, label %bb.u

bb.r:                                             ; preds = %_ZNK2OT18ItemVariationStore12create_cacheEv.exit.i
  %i.cq = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 2
  %i.cr = load i32, ptr %i.cq, align 1, !tbaa !278 ; 2 uses
  %i.cs = icmp eq i32 %i.cr, 0
  %i.ct = tail call i32 @llvm.bswap.i32(i32 %i.cr)
  %i.cu = zext i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.cu
  %.0.i.i.i.i = select i1 %i.cs, ptr @_hb_NullPool, ptr %i.cv, !prof !267
  %i.cw = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 2
  %i.cx = load i16, ptr %i.cw, align 1, !tbaa !283 ; 2 uses
  %i.cy = tail call noundef i16 @llvm.bswap.i16(i16 %i.cx) ; 3 uses
  %i.cz = zext i16 %i.cy to i32                   ; 2 uses
  %.not.i.i.i123 = icmp eq i16 %i.cx, 0
  br i1 %.not.i.i.i123, label %_ZNK12hb_ot_font_t17direction_cache_t22acquire_varStore_cacheERKN2OT18ItemVariationStoreE.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.da = zext i16 %i.cy to i64                   ; 5 uses
  %i.db = shl nuw nsw i64 %i.da, 2
  %i.dc = add nuw nsw i64 %i.db, 4
  %i.dd = tail call noalias noundef ptr @malloc(i64 noundef %i.dc) #65 ; 6 uses
  %.not16.i.i.i = icmp eq ptr %i.dd, null
  br i1 %.not16.i.i.i, label %_ZNK12hb_ot_font_t17direction_cache_t22acquire_varStore_cacheERKN2OT18ItemVariationStoreE.exit, label %bb.t, !prof !267

bb.t:                                             ; preds = %bb.s
  store i32 %i.cz, ptr %i.dd, align 4, !tbaa !480
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 4 ; 12 uses
  %i.df = icmp ugt i16 %i.cy, 3
  br i1 %i.df, label %.lr.ph.i25.i.i.i.preheader, label %.preheader.i17.i.i.i

.lr.ph.i25.i.i.i.preheader:                       ; preds = %bb.t
  %i.dg = add nsw i64 %i.da, -4                   ; 2 uses
  %i.dh = lshr i64 %i.dg, 2                       ; 2 uses
  %i.di = add nuw nsw i64 %i.dh, 1                ; 2 uses
  %i.dj = icmp eq i64 %i.dh, 0
  br i1 %i.dj, label %.lr.ph.i25.i.i.i.epil.preheader, label %.lr.ph.i25.i.i.i.preheader.new

.lr.ph.i25.i.i.i.preheader.new:                   ; preds = %.lr.ph.i25.i.i.i.preheader
  %unroll_iter = and i64 %i.di, 9223372036854775806
  br label %.lr.ph.i25.i.i.i

.preheader.i17.i.loopexit.i.i.unr-lcssa:          ; preds = %.lr.ph.i25.i.i.i
  %i.dk = and i64 %i.dg, 4
  %lcmp.mod.not.not = icmp eq i64 %i.dk, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i25.i.i.i.epil.preheader, label %.preheader.i17.i.loopexit.i.i

.lr.ph.i25.i.i.i.epil.preheader:                  ; preds = %.preheader.i17.i.loopexit.i.i.unr-lcssa, %.lr.ph.i25.i.i.i.preheader
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i25.i.i.i.preheader ], [ %indvars.iv.next.i.i.1, %.preheader.i17.i.loopexit.i.i.unr-lcssa ] ; 2 uses
  %lcmp.mod287 = trunc i64 %i.di to i1
  tail call void @llvm.assume(i1 %lcmp.mod287)
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.i.i.epil.init ; 4 uses
  store atomic i32 -2147483648, ptr %i.dl monotonic, align 4
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  store atomic i32 -2147483648, ptr %i.dm monotonic, align 4
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store atomic i32 -2147483648, ptr %i.dn monotonic, align 4
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 12
  store atomic i32 -2147483648, ptr %i.do monotonic, align 4
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil.init, 4
  br label %.preheader.i17.i.loopexit.i.i

.preheader.i17.i.loopexit.i.i:                    ; preds = %.preheader.i17.i.loopexit.i.i.unr-lcssa, %.lr.ph.i25.i.i.i.epil.preheader
  %indvars.iv.next.i.i.lcssa = phi i64 [ %indvars.iv.next.i.i.1, %.preheader.i17.i.loopexit.i.i.unr-lcssa ], [ %indvars.iv.next.i.i.epil, %.lr.ph.i25.i.i.i.epil.preheader ]
  %i.dp = trunc nuw nsw i64 %indvars.iv.next.i.i.lcssa to i32
  br label %.preheader.i17.i.i.i

.preheader.i17.i.i.i:                             ; preds = %.preheader.i17.i.loopexit.i.i, %bb.t
  %.0.lcssa.i18.i.i.i = phi i32 [ 0, %bb.t ], [ %i.dp, %.preheader.i17.i.loopexit.i.i ] ; 2 uses
  %i.dq = icmp samesign ult i32 %.0.lcssa.i18.i.i.i, %i.cz
  br i1 %i.dq, label %.lr.ph18.preheader.i19.i.i.i, label %_ZNK12hb_ot_font_t17direction_cache_t22acquire_varStore_cacheERKN2OT18ItemVariationStoreE.exit

.lr.ph18.preheader.i19.i.i.i:                     ; preds = %.preheader.i17.i.i.i
  %i.dr = zext nneg i32 %.0.lcssa.i18.i.i.i to i64 ; 4 uses
  %i.ds = sub nsw i64 %i.da, %i.dr
  %xtraiter288 = and i64 %i.ds, 7                 ; 2 uses
  %lcmp.mod289.not = icmp eq i64 %xtraiter288, 0
  br i1 %lcmp.mod289.not, label %.lr.ph18.i21.i.i.i.prol.loopexit, label %.lr.ph18.i21.i.i.i.prol

.lr.ph18.i21.i.i.i.prol:                          ; preds = %.lr.ph18.preheader.i19.i.i.i, %.lr.ph18.i21.i.i.i.prol
  %indvars.iv.i22.i.i.i.prol = phi i64 [ %indvars.iv.next.i23.i.i.i.prol, %.lr.ph18.i21.i.i.i.prol ], [ %i.dr, %.lr.ph18.preheader.i19.i.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph18.i21.i.i.i.prol ], [ 0, %.lr.ph18.preheader.i19.i.i.i ]
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.i22.i.i.i.prol
  store atomic i32 -2147483648, ptr %i.dt monotonic, align 4
  %indvars.iv.next.i23.i.i.i.prol = add nuw nsw i64 %indvars.iv.i22.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter288
  br i1 %prol.iter.cmp.not, label %.lr.ph18.i21.i.i.i.prol.loopexit, label %.lr.ph18.i21.i.i.i.prol, !llvm.loop !3528

.lr.ph18.i21.i.i.i.prol.loopexit:                 ; preds = %.lr.ph18.i21.i.i.i.prol, %.lr.ph18.preheader.i19.i.i.i
  %indvars.iv.i22.i.i.i.unr = phi i64 [ %i.dr, %.lr.ph18.preheader.i19.i.i.i ], [ %indvars.iv.next.i23.i.i.i.prol, %.lr.ph18.i21.i.i.i.prol ]
  %i.du = sub nsw i64 %i.dr, %i.da
  %i.dv = icmp ugt i64 %i.du, -8
  br i1 %i.dv, label %_ZNK12hb_ot_font_t17direction_cache_t22acquire_varStore_cacheERKN2OT18ItemVariationStoreE.exit, label %.lr.ph18.i21.i.i.i

.lr.ph.i25.i.i.i:                                 ; preds = %.lr.ph.i25.i.i.i, %.lr.ph.i25.i.i.i.preheader.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i25.i.i.i.preheader.new ], [ %indvars.iv.next.i.i.1, %.lr.ph.i25.i.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i25.i.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i25.i.i.i ]
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.i.i ; 4 uses
  store atomic i32 -2147483648, ptr %i.dw monotonic, align 4
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  store atomic i32 -2147483648, ptr %i.dx monotonic, align 4
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store atomic i32 -2147483648, ptr %i.dy monotonic, align 4
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 12
  store atomic i32 -2147483648, ptr %i.dz monotonic, align 4
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.i.i ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  store atomic i32 -2147483648, ptr %i.eb monotonic, align 4
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 20
  store atomic i32 -2147483648, ptr %i.ec monotonic, align 4
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  store atomic i32 -2147483648, ptr %i.ed monotonic, align 4
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ea, i64 28
  store atomic i32 -2147483648, ptr %i.ee monotonic, align 4
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 8 ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader.i17.i.loopexit.i.i.unr-lcssa, label %.lr.ph.i25.i.i.i, !llvm.loop !5

.lr.ph18.i21.i.i.i:                               ; preds = %.lr.ph18.i21.i.i.i.prol.loopexit, %.lr.ph18.i21.i.i.i
  %indvars.iv.i22.i.i.i = phi i64 [ %indvars.iv.next.i23.i.i.i.7, %.lr.ph18.i21.i.i.i ], [ %indvars.iv.i22.i.i.i.unr, %.lr.ph18.i21.i.i.i.prol.loopexit ] ; 9 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.i22.i.i.i
  store atomic i32 -2147483648, ptr %i.ef monotonic, align 4
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.i22.i.i.i
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 4
  store atomic i32 -2147483648, ptr %i.eh monotonic, align 4
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.i22.i.i.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  store atomic i32 -2147483648, ptr %i.ej monotonic, align 4
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.i22.i.i.i
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 12
  store atomic i32 -2147483648, ptr %i.el monotonic, align 4
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.i22.i.i.i
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  store atomic i32 -2147483648, ptr %i.en monotonic, align 4
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.i22.i.i.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 20
  store atomic i32 -2147483648, ptr %i.ep monotonic, align 4
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.i22.i.i.i
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  store atomic i32 -2147483648, ptr %i.er monotonic, align 4
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.i22.i.i.i
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 28
  store atomic i32 -2147483648, ptr %i.et monotonic, align 4
  %indvars.iv.next.i23.i.i.i.7 = add nuw nsw i64 %indvars.iv.i22.i.i.i, 8 ; 2 uses
  %exitcond.not.i24.i.i.i.7 = icmp eq i64 %indvars.iv.next.i23.i.i.i.7, %i.da
  br i1 %exitcond.not.i24.i.i.i.7, label %_ZNK12hb_ot_font_t17direction_cache_t22acquire_varStore_cacheERKN2OT18ItemVariationStoreE.exit, label %.lr.ph18.i21.i.i.i, !llvm.loop !6

bb.u:                                             ; preds = %_ZNK2OT18ItemVariationStore12create_cacheEv.exit.i
  %i.eu = cmpxchg weak ptr %i.co, ptr %i.cp, ptr null acq_rel monotonic, align 8
  %i.ev = extractvalue { ptr, i1 } %i.eu, 1
  br i1 %i.ev, label %_ZNK12hb_ot_font_t17direction_cache_t22acquire_varStore_cacheERKN2OT18ItemVariationStoreE.exit, label %_ZNK2OT18ItemVariationStore12create_cacheEv.exit.i

_ZNK12hb_ot_font_t17direction_cache_t22acquire_varStore_cacheERKN2OT18ItemVariationStoreE.exit: ; preds = %bb.u, %.lr.ph18.i21.i.i.i.prol.loopexit, %.lr.ph18.i21.i.i.i, %bb.r, %bb.s, %.preheader.i17.i.i.i
  %.1.ph.i122 = phi ptr [ @_hb_NullPool, %bb.r ], [ %i.dd, %.lr.ph18.i21.i.i.i.prol.loopexit ], [ %i.dd, %.preheader.i17.i.i.i ], [ @_hb_NullPool, %bb.s ], [ %i.dd, %.lr.ph18.i21.i.i.i ], [ %i.cp, %bb.u ] ; 4 uses
  %.not221 = icmp eq i32 %2, 0
  br i1 %.not221, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK12hb_ot_font_t17direction_cache_t22acquire_varStore_cacheERKN2OT18ItemVariationStoreE.exit
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ex = zext i32 %4 to i64
  %i.ey = zext i32 %6 to i64
  br label %bb.x

.critedge:                                        ; preds = %_ZN10hb_cache_tILj24ELj16ELj8ELb1EE3setEjj.exit, %_ZNK12hb_ot_font_t17direction_cache_t22acquire_varStore_cacheERKN2OT18ItemVariationStoreE.exit
  %i.ez = cmpxchg weak ptr %i.co, ptr null, ptr %.1.ph.i122 acq_rel monotonic, align 8
  %i.fa = extractvalue { ptr, i1 } %i.ez, 1
  %.not.i.i.i125 = icmp eq ptr %.1.ph.i122, @_hb_NullPool
  %or.cond.i = or i1 %.not.i.i.i125, %i.fa
  br i1 %or.cond.i, label %_ZNK12hb_ot_font_t17direction_cache_t22release_varStore_cacheEPN2OT17hb_scalar_cache_tE.exit, label %bb.v

bb.v:                                             ; preds = %.critedge
  tail call void @free(ptr noundef nonnull %.1.ph.i122) #63
  br label %_ZNK12hb_ot_font_t17direction_cache_t22release_varStore_cacheEPN2OT17hb_scalar_cache_tE.exit

_ZNK12hb_ot_font_t17direction_cache_t22release_varStore_cacheEPN2OT17hb_scalar_cache_tE.exit: ; preds = %bb.v, %.critedge
  %i.fb = cmpxchg weak ptr %i.bp, ptr null, ptr %.1.ph.i.ph acq_rel monotonic, align 8
  %i.fc = extractvalue { ptr, i1 } %i.fb, 1
  br i1 %i.fc, label %_ZNK12hb_ot_font_t17direction_cache_t21release_advance_cacheEP10hb_cache_tILj24ELj16ELj8ELb1EE.exit, label %bb.w

bb.w:                                             ; preds = %_ZNK12hb_ot_font_t17direction_cache_t22release_varStore_cacheEPN2OT17hb_scalar_cache_tE.exit
  tail call void @free(ptr noundef nonnull %.1.ph.i.ph) #63
  br label %_ZNK12hb_ot_font_t17direction_cache_t21release_advance_cacheEP10hb_cache_tILj24ELj16ELj8ELb1EE.exit

bb.x:                                             ; preds = %.lr.ph, %_ZN10hb_cache_tILj24ELj16ELj8ELb1EE3setEjj.exit
  %.098209 = phi i32 [ 0, %.lr.ph ], [ %i.gf, %_ZN10hb_cache_tILj24ELj16ELj8ELb1EE3setEjj.exit ]
  %.2104208 = phi ptr [ %3, %.lr.ph ], [ %i.gd, %_ZN10hb_cache_tILj24ELj16ELj8ELb1EE3setEjj.exit ] ; 3 uses
  %.3109207 = phi ptr [ %5, %.lr.ph ], [ %i.ge, %_ZN10hb_cache_tILj24ELj16ELj8ELb1EE3setEjj.exit ] ; 2 uses
  %i.fd = load i32, ptr %.2104208, align 4, !tbaa !324 ; 3 uses
  %i.fe = and i32 %i.fd, 255
  %i.ff = zext nneg i32 %i.fe to i64
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %.1.ph.i.ph, i64 %i.ff
  %i.fh = load atomic i32, ptr %i.fg monotonic, align 4 ; 3 uses
  %i.fi = icmp eq i32 %i.fh, -1
  br i1 %i.fi, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fj = lshr i32 %i.fh, 16
  %i.fk = lshr i32 %i.fd, 8
  %.not.i127 = icmp eq i32 %i.fj, %i.fk
  br i1 %.not.i127, label %_ZN10hb_cache_tILj24ELj16ELj8ELb1EE3setEjj.exit, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.fl = tail call noundef i32 @_ZNK2OT8hmtxvmtxINS_4hmtxENS_4hheaENS_4HVAREE13accelerator_t29get_advance_with_var_unscaledEjP9hb_font_tPNS_17hb_scalar_cache_tE(ptr noundef nonnull align 8 dereferenceable(40) %.19.ph.i.i.i, i32 noundef %i.fd, ptr noundef nonnull %0, ptr noundef nonnull %.1.ph.i122) ; 4 uses
  %i.fm = load i32, ptr %.2104208, align 4, !tbaa !324 ; 3 uses
  %i.fn = icmp ugt i32 %i.fm, 16777215
  %i.fo = icmp ugt i32 %i.fl, 65535
  %i.fp = or i1 %i.fo, %i.fn
  br i1 %i.fp, label %_ZN10hb_cache_tILj24ELj16ELj8ELb1EE3setEjj.exit, label %bb.aa, !prof !267

bb.aa:                                            ; preds = %bb.z
  %i.fq = and i32 %i.fm, 255
  %i.fr = shl nuw i32 %i.fm, 8
  %i.fs = and i32 %i.fr, -65536
  %i.ft = or disjoint i32 %i.fs, %i.fl
  %i.fu = zext nneg i32 %i.fq to i64
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %.1.ph.i.ph, i64 %i.fu
  store atomic i32 %i.ft, ptr %i.fv monotonic, align 4
  br label %_ZN10hb_cache_tILj24ELj16ELj8ELb1EE3setEjj.exit

_ZN10hb_cache_tILj24ELj16ELj8ELb1EE3setEjj.exit:  ; preds = %bb.y, %bb.aa, %bb.z
  %.097 = phi i32 [ %i.fl, %bb.aa ], [ %i.fl, %bb.z ], [ %i.fh, %bb.y ]
  %i.fw = zext i32 %.097 to i64
  %i.fx = load i64, ptr %i.ew, align 8, !tbaa !1048
  %sext199 = shl i64 %i.fw, 48
  %i.fy = ashr exact i64 %sext199, 48
  %i.fz = mul nsw i64 %i.fy, %i.fx
  %i.ga = add nsw i64 %i.fz, 32768
  %i.gb = lshr i64 %i.ga, 16
  %i.gc = trunc i64 %i.gb to i32
  store i32 %i.gc, ptr %.3109207, align 4, !tbaa !324
  %i.gd = getelementptr inbounds nuw i8, ptr %.2104208, i64 %i.ex
  %i.ge = getelementptr inbounds nuw i8, ptr %.3109207, i64 %i.ey
  %i.gf = add nuw i32 %.098209, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.gf, %2
  br i1 %exitcond.not, label %.critedge, label %bb.x, !llvm.loop !3529

bb.ab:                                            ; preds = %.loopexit
  %i.gg = getelementptr inbounds nuw i8, ptr %i.a, i64 168 ; 5 uses
  %i.gh = load atomic ptr, ptr %i.gg acquire, align 8 ; 2 uses
  %.not20.i.i.i = icmp eq ptr %i.gh, null
  br i1 %.not20.i.i.i, label %.lr.ph.i.i.i130, label %_ZNK16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit, !prof !265

.lr.ph.i.i.i130:                                  ; preds = %bb.ab, %_ZN16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_E10do_destroyEPS1_.exit.i.i.i
  %i.gi = load ptr, ptr %i.a, align 8, !tbaa !266
  %.not.i.i.i.i131 = icmp eq ptr %i.gi, null
  br i1 %.not.i.i.i.i131, label %_ZNK16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit, label %bb.ac, !prof !267

bb.ac:                                            ; preds = %.lr.ph.i.i.i130
  %i.gj = tail call noundef ptr @_ZNK17hb_data_wrapper_tI9hb_face_tLj21EE11call_createIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS4_Lj21EEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) %i.gg) ; 5 uses
  %.not10.i.i.i132 = icmp eq ptr %i.gj, null
  br i1 %.not10.i.i.i132, label %.thread.i.i.i, label %bb.ad, !prof !267

bb.ad:                                            ; preds = %bb.ac
  %i.gk = cmpxchg weak ptr %i.gg, ptr null, ptr %i.gj acq_rel monotonic, align 8
  %i.gl = extractvalue { ptr, i1 } %i.gk, 1
  br i1 %i.gl, label %_ZNK16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit, label %bb.ae, !prof !268

.thread.i.i.i:                                    ; preds = %bb.ac
  %i.gm = cmpxchg weak ptr %i.gg, ptr null, ptr @_hb_NullPool acq_rel monotonic, align 8
  %i.gn = extractvalue { ptr, i1 } %i.gm, 1
  br i1 %i.gn, label %_ZNK16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit, label %_ZN16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_E10do_destroyEPS1_.exit.i.i.i, !prof !268

bb.ae:                                            ; preds = %bb.ad
  %.not3.i.i.i.i = icmp eq ptr %i.gj, @_hb_NullPool
  br i1 %.not3.i.i.i.i, label %_ZN16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_E10do_destroyEPS1_.exit.i.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void @_ZN16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_E7destroyEPS1_(ptr noundef nonnull %i.gj)
  br label %_ZN16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_E10do_destroyEPS1_.exit.i.i.i

_ZN16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_E10do_destroyEPS1_.exit.i.i.i: ; preds = %bb.af, %bb.ae, %.thread.i.i.i
  %i.go = load atomic ptr, ptr %i.gg acquire, align 8 ; 2 uses
  %.not.i.i.i133 = icmp eq ptr %i.go, null
  br i1 %.not.i.i.i133, label %.lr.ph.i.i.i130, label %_ZNK16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit, !prof !269

_ZNK16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit: ; preds = %.lr.ph.i.i.i130, %bb.ad, %.thread.i.i.i, %_ZN16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_E10do_destroyEPS1_.exit.i.i.i, %bb.ab
  %.19.ph.i.i.i129 = phi ptr [ %i.gh, %bb.ab ], [ @_hb_NullPool, %.lr.ph.i.i.i130 ], [ %i.go, %_ZN16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_E10do_destroyEPS1_.exit.i.i.i ], [ @_hb_NullPool, %.thread.i.i.i ], [ %i.gj, %bb.ad ] ; 2 uses
  %i.gp = load ptr, ptr %.19.ph.i.i.i129, align 8, !tbaa !272 ; 2 uses
  %.not.i.i.i.i.i134 = icmp eq ptr %i.gp, null
  %spec.select.i.i.i.i.i135 = select i1 %.not.i.i.i.i.i134, ptr @_hb_NullPool, ptr %i.gp ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i135, i64 16
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !275
  %i.gs = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i135, i64 24
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !276
  %i.gu = icmp ult i32 %i.gt, 20
  %spec.select.i.i1.i.i.i = select i1 %i.gu, ptr @_hb_NullPool, ptr %i.gr
  %i.gv = load i32, ptr %spec.select.i.i1.i.i.i, align 1
  %.not197 = icmp eq i32 %i.gv, 0
  br i1 %.not197, label %bb.bf, label %bb.ag

bb.ag:                                            ; preds = %_ZNK16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit
  %i.gw = getelementptr inbounds nuw i8, ptr %i.a, i64 120 ; 4 uses
  %i.gx = load atomic ptr, ptr %i.gw acquire, align 8 ; 2 uses
  %.not14.i.i.i136 = icmp eq ptr %i.gx, null
  br i1 %.not14.i.i.i136, label %.lr.ph.i.i.i138, label %_ZNK16hb_lazy_loader_tIN2OT18glyf_accelerator_tE21hb_face_lazy_loader_tIS1_Lj15EE9hb_face_tLj15ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit, !prof !265

.lr.ph.i.i.i138:                                  ; preds = %bb.ag, %bb.ak
  %i.gy = load ptr, ptr %i.a, align 8, !tbaa !266
  %.not.i.i.i.i139 = icmp eq ptr %i.gy, null
  br i1 %.not.i.i.i.i139, label %_ZNK16hb_lazy_loader_tIN2OT18glyf_accelerator_tE21hb_face_lazy_loader_tIS1_Lj15EE9hb_face_tLj15ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit, label %bb.ah, !prof !267

bb.ah:                                            ; preds = %.lr.ph.i.i.i138
  %i.gz = tail call noundef ptr @_ZNK17hb_data_wrapper_tI9hb_face_tLj15EE11call_createIN2OT18glyf_accelerator_tE21hb_face_lazy_loader_tIS4_Lj15EEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) %i.gw) ; 2 uses
  %.not10.i.i.i140 = icmp eq ptr %i.gz, null
  br i1 %.not10.i.i.i140, label %bb.ai, label %bb.aj, !prof !267

bb.ai:                                            ; preds = %bb.ah
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.07.i.i.i141 = phi ptr [ @_hb_NullPool, %bb.ai ], [ %i.gz, %bb.ah ] ; 3 uses
  %i.ha = cmpxchg weak ptr %i.gw, ptr null, ptr %.07.i.i.i141 acq_rel monotonic, align 8
  %i.hb = extractvalue { ptr, i1 } %i.ha, 1
  br i1 %i.hb, label %_ZNK16hb_lazy_loader_tIN2OT18glyf_accelerator_tE21hb_face_lazy_loader_tIS1_Lj15EE9hb_face_tLj15ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit, label %bb.ak, !prof !268

bb.ak:                                            ; preds = %bb.aj
  tail call void @_ZN16hb_lazy_loader_tIN2OT18glyf_accelerator_tE21hb_face_lazy_loader_tIS1_Lj15EE9hb_face_tLj15ES1_E10do_destroyEPS1_(ptr noundef nonnull %.07.i.i.i141)
  %i.hc = load atomic ptr, ptr %i.gw acquire, align 8 ; 2 uses
  %.not.i.i.i142 = icmp eq ptr %i.hc, null
  br i1 %.not.i.i.i142, label %.lr.ph.i.i.i138, label %_ZNK16hb_lazy_loader_tIN2OT18glyf_accelerator_tE21hb_face_lazy_loader_tIS1_Lj15EE9hb_face_tLj15ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit, !prof !269

_ZNK16hb_lazy_loader_tIN2OT18glyf_accelerator_tE21hb_face_lazy_loader_tIS1_Lj15EE9hb_face_tLj15ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit: ; preds = %.lr.ph.i.i.i138, %bb.aj, %bb.ak, %bb.ag
  %.19.ph.i.i.i137 = phi ptr [ %i.gx, %bb.ag ], [ @_hb_NullPool, %.lr.ph.i.i.i138 ], [ %i.hc, %bb.ak ], [ %.07.i.i.i141, %bb.aj ] ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i137, i64 28 ; 2 uses
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !348
  %.not9.i = icmp eq i32 %i.he, 0
  br i1 %.not9.i, label %_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit.thread, label %bb.al

bb.al:                                            ; preds = %_ZNK16hb_lazy_loader_tIN2OT18glyf_accelerator_tE21hb_face_lazy_loader_tIS1_Lj15EE9hb_face_tLj15ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit
  %i.hf = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i137, i64 48 ; 3 uses
  %i.hg = load atomic ptr, ptr %i.hf acquire, align 8 ; 3 uses
  %.not.i143 = icmp eq ptr %i.hg, null
  br i1 %.not.i143, label %_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hh = cmpxchg weak ptr %i.hf, ptr %i.hg, ptr null acq_rel monotonic, align 8
  %i.hi = extractvalue { ptr, i1 } %i.hh, 1
  br i1 %i.hi, label %_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit.thread187, label %_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit, !prof !268

_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit: ; preds = %bb.al, %bb.am
  %i.hj = tail call noalias noundef dereferenceable_or_null(152) ptr @calloc(i64 noundef 1, i64 noundef 152) #64 ; 2 uses
  %.not115 = icmp eq ptr %i.hj, null
  br i1 %.not115, label %_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit.thread, label %_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit.thread187, !prof !318

_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit.thread: ; preds = %_ZNK16hb_lazy_loader_tIN2OT18glyf_accelerator_tE21hb_face_lazy_loader_tIS1_Lj15EE9hb_face_tLj15ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit, %_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit
  %i.hk = cmpxchg weak ptr %i.bp, ptr null, ptr %.1.ph.i.ph acq_rel monotonic, align 8
  %i.hl = extractvalue { ptr, i1 } %i.hk, 1
  br i1 %i.hl, label %_ZNK12hb_ot_font_t17direction_cache_t21acquire_advance_cacheEv.exit.thread, label %_ZNK12hb_ot_font_t17direction_cache_t21acquire_advance_cacheEv.exit.thread.sink.split

_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit.thread187: ; preds = %bb.am, %_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit
  %.1.i190 = phi ptr [ %i.hj, %_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit ], [ %i.hg, %bb.am ] ; 4 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  br label %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE13accelerator_t12create_cacheEv.exit.i

_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE13accelerator_t12create_cacheEv.exit.i: ; preds = %bb.aq, %_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit.thread187
  %i.hn = load atomic ptr, ptr %i.hm acquire, align 8 ; 3 uses
  %.not.i146 = icmp eq ptr %i.hn, null
  br i1 %.not.i146, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE13accelerator_t12create_cacheEv.exit.i
  %i.ho = load ptr, ptr %.19.ph.i.i.i129, align 8, !tbaa !272 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ho, null
  %spec.select.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, ptr @_hb_NullPool, ptr %i.ho ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i.i, i64 16
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !275
  %i.hr = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i.i, i64 24
  %i.hs = load i32, ptr %i.hr, align 8, !tbaa !276
  %i.ht = icmp ult i32 %i.hs, 20
  %spec.select.i.i1.i.i.i.i = select i1 %i.ht, ptr @_hb_NullPool, ptr %i.hq
  %i.hu = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i.i.i, i64 6
  %i.hv = load i16, ptr %i.hu, align 1, !tbaa !283 ; 2 uses
  %i.hw = tail call noundef i16 @llvm.bswap.i16(i16 %i.hv) ; 2 uses
  %i.hx = tail call i16 @llvm.umin.i16(i16 %i.hw, i16 4096) ; 2 uses
  %.sroa.speculated.i.i = zext nneg i16 %i.hx to i32 ; 2 uses
  %.not.i1.i.i = icmp eq i16 %i.hv, 0
  br i1 %.not.i1.i.i, label %_ZNK12hb_ot_font_t12draw_cache_t18acquire_gvar_cacheERKN2OT18gvar_accelerator_tE.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.hy = zext nneg i16 %i.hx to i64              ; 5 uses
  %i.hz = shl nuw nsw i64 %i.hy, 2
  %i.ia = add nuw nsw i64 %i.hz, 4
  %i.ib = tail call noalias noundef ptr @malloc(i64 noundef %i.ia) #65 ; 6 uses
  %.not16.i.i.i148 = icmp eq ptr %i.ib, null
  br i1 %.not16.i.i.i148, label %_ZNK12hb_ot_font_t12draw_cache_t18acquire_gvar_cacheERKN2OT18gvar_accelerator_tE.exit, label %bb.ap, !prof !267

bb.ap:                                            ; preds = %bb.ao
  store i32 %.sroa.speculated.i.i, ptr %i.ib, align 4, !tbaa !480
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 4 ; 10 uses
  %i.id = icmp ugt i16 %i.hw, 3
  br i1 %i.id, label %.lr.ph.i25.i.i.i156, label %.preheader.i17.i.i.i149

.preheader.i17.i.loopexit.i.i159:                 ; preds = %.lr.ph.i25.i.i.i156
  %i.ie = trunc nuw nsw i64 %indvars.iv.next.i.i158 to i32
  br label %.preheader.i17.i.i.i149

.preheader.i17.i.i.i149:                          ; preds = %.preheader.i17.i.loopexit.i.i159, %bb.ap
  %.0.lcssa.i18.i.i.i150 = phi i32 [ 0, %bb.ap ], [ %i.ie, %.preheader.i17.i.loopexit.i.i159 ] ; 2 uses
  %i.if = icmp samesign ult i32 %.0.lcssa.i18.i.i.i150, %.sroa.speculated.i.i
  br i1 %i.if, label %.lr.ph18.preheader.i19.i.i.i151, label %_ZNK12hb_ot_font_t12draw_cache_t18acquire_gvar_cacheERKN2OT18gvar_accelerator_tE.exit

.lr.ph18.preheader.i19.i.i.i151:                  ; preds = %.preheader.i17.i.i.i149
  %i.ig = zext nneg i32 %.0.lcssa.i18.i.i.i150 to i64 ; 4 uses
  %i.ih = sub nsw i64 %i.hy, %i.ig
  %xtraiter290 = and i64 %i.ih, 7                 ; 2 uses
  %lcmp.mod291.not = icmp eq i64 %xtraiter290, 0
  br i1 %lcmp.mod291.not, label %.lr.ph18.i21.i.i.i152.prol.loopexit, label %.lr.ph18.i21.i.i.i152.prol

.lr.ph18.i21.i.i.i152.prol:                       ; preds = %.lr.ph18.preheader.i19.i.i.i151, %.lr.ph18.i21.i.i.i152.prol
  %indvars.iv.i22.i.i.i153.prol = phi i64 [ %indvars.iv.next.i23.i.i.i154.prol, %.lr.ph18.i21.i.i.i152.prol ], [ %i.ig, %.lr.ph18.preheader.i19.i.i.i151 ] ; 2 uses
  %prol.iter292 = phi i64 [ %prol.iter292.next, %.lr.ph18.i21.i.i.i152.prol ], [ 0, %.lr.ph18.preheader.i19.i.i.i151 ]
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %indvars.iv.i22.i.i.i153.prol
  store atomic i32 -2147483648, ptr %i.ii monotonic, align 4
  %indvars.iv.next.i23.i.i.i154.prol = add nuw nsw i64 %indvars.iv.i22.i.i.i153.prol, 1 ; 2 uses
  %prol.iter292.next = add i64 %prol.iter292, 1   ; 2 uses
  %prol.iter292.cmp.not = icmp eq i64 %prol.iter292.next, %xtraiter290
  br i1 %prol.iter292.cmp.not, label %.lr.ph18.i21.i.i.i152.prol.loopexit, label %.lr.ph18.i21.i.i.i152.prol, !llvm.loop !3530

.lr.ph18.i21.i.i.i152.prol.loopexit:              ; preds = %.lr.ph18.i21.i.i.i152.prol, %.lr.ph18.preheader.i19.i.i.i151
  %indvars.iv.i22.i.i.i153.unr = phi i64 [ %i.ig, %.lr.ph18.preheader.i19.i.i.i151 ], [ %indvars.iv.next.i23.i.i.i154.prol, %.lr.ph18.i21.i.i.i152.prol ]
  %i.ij = sub nsw i64 %i.ig, %i.hy
  %i.ik = icmp ugt i64 %i.ij, -8
  br i1 %i.ik, label %_ZNK12hb_ot_font_t12draw_cache_t18acquire_gvar_cacheERKN2OT18gvar_accelerator_tE.exit, label %.lr.ph18.i21.i.i.i152

.lr.ph.i25.i.i.i156:                              ; preds = %bb.ap, %.lr.ph.i25.i.i.i156
  %indvars.iv.i.i157 = phi i64 [ %indvars.iv.next.i.i158, %.lr.ph.i25.i.i.i156 ], [ 0, %bb.ap ] ; 2 uses
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %indvars.iv.i.i157 ; 4 uses
  store atomic i32 -2147483648, ptr %i.il monotonic, align 4
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 4
  store atomic i32 -2147483648, ptr %i.im monotonic, align 4
  %i.in = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  store atomic i32 -2147483648, ptr %i.in monotonic, align 4
  %i.io = getelementptr inbounds nuw i8, ptr %i.il, i64 12
  store atomic i32 -2147483648, ptr %i.io monotonic, align 4
  %indvars.iv.next.i.i158 = add nuw nsw i64 %indvars.iv.i.i157, 4 ; 3 uses
  %i.ip = or disjoint i64 %indvars.iv.next.i.i158, 3
  %i.iq = icmp samesign ult i64 %i.ip, %i.hy
  br i1 %i.iq, label %.lr.ph.i25.i.i.i156, label %.preheader.i17.i.loopexit.i.i159, !llvm.loop !5

.lr.ph18.i21.i.i.i152:                            ; preds = %.lr.ph18.i21.i.i.i152.prol.loopexit, %.lr.ph18.i21.i.i.i152
  %indvars.iv.i22.i.i.i153 = phi i64 [ %indvars.iv.next.i23.i.i.i154.7, %.lr.ph18.i21.i.i.i152 ], [ %indvars.iv.i22.i.i.i153.unr, %.lr.ph18.i21.i.i.i152.prol.loopexit ] ; 9 uses
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %indvars.iv.i22.i.i.i153
  store atomic i32 -2147483648, ptr %i.ir monotonic, align 4
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %indvars.iv.i22.i.i.i153
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 4
  store atomic i32 -2147483648, ptr %i.it monotonic, align 4
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %indvars.iv.i22.i.i.i153
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  store atomic i32 -2147483648, ptr %i.iv monotonic, align 4
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %indvars.iv.i22.i.i.i153
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 12
  store atomic i32 -2147483648, ptr %i.ix monotonic, align 4
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %indvars.iv.i22.i.i.i153
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 16
  store atomic i32 -2147483648, ptr %i.iz monotonic, align 4
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %indvars.iv.i22.i.i.i153
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 20
  store atomic i32 -2147483648, ptr %i.jb monotonic, align 4
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %indvars.iv.i22.i.i.i153
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 24
  store atomic i32 -2147483648, ptr %i.jd monotonic, align 4
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %indvars.iv.i22.i.i.i153
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 28
  store atomic i32 -2147483648, ptr %i.jf monotonic, align 4
  %indvars.iv.next.i23.i.i.i154.7 = add nuw nsw i64 %indvars.iv.i22.i.i.i153, 8 ; 2 uses
  %exitcond.not.i24.i.i.i155.7 = icmp eq i64 %indvars.iv.next.i23.i.i.i154.7, %i.hy
  br i1 %exitcond.not.i24.i.i.i155.7, label %_ZNK12hb_ot_font_t12draw_cache_t18acquire_gvar_cacheERKN2OT18gvar_accelerator_tE.exit, label %.lr.ph18.i21.i.i.i152, !llvm.loop !6

bb.aq:                                            ; preds = %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE13accelerator_t12create_cacheEv.exit.i
  %i.jg = cmpxchg weak ptr %i.hm, ptr %i.hn, ptr null acq_rel monotonic, align 8
  %i.jh = extractvalue { ptr, i1 } %i.jg, 1
  br i1 %i.jh, label %_ZNK12hb_ot_font_t12draw_cache_t18acquire_gvar_cacheERKN2OT18gvar_accelerator_tE.exit, label %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE13accelerator_t12create_cacheEv.exit.i

_ZNK12hb_ot_font_t12draw_cache_t18acquire_gvar_cacheERKN2OT18gvar_accelerator_tE.exit: ; preds = %bb.aq, %.lr.ph18.i21.i.i.i152.prol.loopexit, %.lr.ph18.i21.i.i.i152, %bb.an, %bb.ao, %.preheader.i17.i.i.i149
  %.1.ph.i147 = phi ptr [ @_hb_NullPool, %bb.an ], [ %i.ib, %.lr.ph18.i21.i.i.i152.prol.loopexit ], [ %i.ib, %.preheader.i17.i.i.i149 ], [ @_hb_NullPool, %bb.ao ], [ %i.ib, %.lr.ph18.i21.i.i.i152 ], [ %i.hn, %bb.aq ] ; 4 uses
  %.not222 = icmp eq i32 %2, 0
  br i1 %.not222, label %._crit_edge, label %.lr.ph213

.lr.ph213:                                        ; preds = %_ZNK12hb_ot_font_t12draw_cache_t18acquire_gvar_cacheERKN2OT18gvar_accelerator_tE.exit
  %i.ji = getelementptr inbounds nuw i8, ptr %9, i64 28
  %i.jj = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.jk = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.jl = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.jp = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.jr = zext i32 %4 to i64
  %i.js = zext i32 %6 to i64
  br label %bb.au

._crit_edge:                                      ; preds = %_ZN10hb_cache_tILj24ELj16ELj8ELb1EE3setEjj.exit174, %_ZNK12hb_ot_font_t12draw_cache_t18acquire_gvar_cacheERKN2OT18gvar_accelerator_tE.exit
  %i.jt = cmpxchg weak ptr %i.hm, ptr null, ptr %.1.ph.i147 acq_rel monotonic, align 8
  %i.ju = extractvalue { ptr, i1 } %i.jt, 1
  %.not.i.i.i161 = icmp eq ptr %.1.ph.i147, @_hb_NullPool
  %or.cond.i162 = or i1 %.not.i.i.i161, %i.ju
  br i1 %or.cond.i162, label %_ZNK12hb_ot_font_t12draw_cache_t18release_gvar_cacheEPN2OT17hb_scalar_cache_tE.exit, label %bb.ar

bb.ar:                                            ; preds = %._crit_edge
  call void @free(ptr noundef nonnull %.1.ph.i147) #63
  br label %_ZNK12hb_ot_font_t12draw_cache_t18release_gvar_cacheEPN2OT17hb_scalar_cache_tE.exit

_ZNK12hb_ot_font_t12draw_cache_t18release_gvar_cacheEPN2OT17hb_scalar_cache_tE.exit: ; preds = %bb.ar, %._crit_edge
  %i.jv = cmpxchg weak ptr %i.hf, ptr null, ptr %.1.i190 acq_rel monotonic, align 8
  %i.jw = extractvalue { ptr, i1 } %i.jv, 1
  br i1 %i.jw, label %_ZNK2OT18glyf_accelerator_t15release_scratchEP17hb_glyf_scratch_t.exit, label %bb.as

bb.as:                                            ; preds = %_ZNK12hb_ot_font_t12draw_cache_t18release_gvar_cacheEPN2OT17hb_scalar_cache_tE.exit
  call void @_ZN17hb_glyf_scratch_tD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %.1.i190) #63
  call void @free(ptr noundef nonnull %.1.i190) #63
  br label %_ZNK2OT18glyf_accelerator_t15release_scratchEP17hb_glyf_scratch_t.exit

_ZNK2OT18glyf_accelerator_t15release_scratchEP17hb_glyf_scratch_t.exit: ; preds = %bb.as, %_ZNK12hb_ot_font_t12draw_cache_t18release_gvar_cacheEPN2OT17hb_scalar_cache_tE.exit
  %i.jx = cmpxchg weak ptr %i.bp, ptr null, ptr %.1.ph.i.ph acq_rel monotonic, align 8
  %i.jy = extractvalue { ptr, i1 } %i.jx, 1
  br i1 %i.jy, label %_ZNK12hb_ot_font_t17direction_cache_t21release_advance_cacheEP10hb_cache_tILj24ELj16ELj8ELb1EE.exit, label %bb.at

bb.at:                                            ; preds = %_ZNK2OT18glyf_accelerator_t15release_scratchEP17hb_glyf_scratch_t.exit
  call void @free(ptr noundef nonnull %.1.ph.i.ph) #63
  br label %_ZNK12hb_ot_font_t17direction_cache_t21release_advance_cacheEP10hb_cache_tILj24ELj16ELj8ELb1EE.exit

bb.au:                                            ; preds = %.lr.ph213, %_ZN10hb_cache_tILj24ELj16ELj8ELb1EE3setEjj.exit174
  %.096212 = phi i32 [ 0, %.lr.ph213 ], [ %i.lv, %_ZN10hb_cache_tILj24ELj16ELj8ELb1EE3setEjj.exit174 ]
  %.3105211 = phi ptr [ %3, %.lr.ph213 ], [ %i.lt, %_ZN10hb_cache_tILj24ELj16ELj8ELb1EE3setEjj.exit174 ] ; 3 uses
  %.4110210 = phi ptr [ %5, %.lr.ph213 ], [ %i.lu, %_ZN10hb_cache_tILj24ELj16ELj8ELb1EE3setEjj.exit174 ] ; 2 uses
  %i.jz = load i32, ptr %.3105211, align 4, !tbaa !324 ; 5 uses
  %i.ka = and i32 %i.jz, 255
  %i.kb = zext nneg i32 %i.ka to i64
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %.1.ph.i.ph, i64 %i.kb
  %i.kd = load atomic i32, ptr %i.kc monotonic, align 4 ; 3 uses
  %i.ke = icmp eq i32 %i.kd, -1
  br i1 %i.ke, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.kf = lshr i32 %i.kd, 16
  %i.kg = lshr i32 %i.jz, 8
  %.not.i166 = icmp eq i32 %i.kf, %i.kg
  br i1 %.not.i166, label %_ZN10hb_cache_tILj24ELj16ELj8ELb1EE3setEjj.exit174, label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.kh = load i32, ptr %i.hd, align 4, !tbaa !348
  %.not.i169 = icmp ult i32 %i.jz, %i.kh
  br i1 %.not.i169, label %bb.ax, label %_ZNK2OT18glyf_accelerator_t29get_advance_with_var_unscaledEjP9hb_font_tbR17hb_glyf_scratch_tPNS_17hb_scalar_cache_tE.exit, !prof !268

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #63
  store <4 x float> <float f0x7F7FFFFF, float f0x7F7FFFFF, float f0xFF7FFFFF, float f0xFF7FFFFF>, ptr %i.ji, align 4, !tbaa !304
  store ptr %0, ptr %9, align 8, !tbaa !470
  store ptr null, ptr %i.jj, align 8, !tbaa !471
  store ptr %8, ptr %i.jk, align 8, !tbaa !472
  store i8 0, ptr %i.jl, align 8, !tbaa !473
  %i.ki = load ptr, ptr %i.jm, align 8, !tbaa !309
  %i.kj = load i8, ptr %i.ai, align 8, !tbaa !1064, !range !380, !noundef !293
  %i.kk = trunc nuw i8 %i.kj to i1
  br i1 %i.kk, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.kl = load i32, ptr %i.jn, align 4, !tbaa !310
  %i.km = zext i32 %i.kl to i64
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.sroa.2.8.insert.ext.i.i = phi i64 [ %i.km, %bb.ay ], [ 0, %bb.ax ]
  %i.kn = call noundef zeroext i1 @_ZNK2OT18glyf_accelerator_t10get_pointsINS0_19points_aggregator_tEEEbP9hb_font_tjT_10hb_array_tIKiER17hb_glyf_scratch_tPNS_17hb_scalar_cache_tE(ptr noundef nonnull align 8 dereferenceable(56) %.19.ph.i.i.i137, ptr noundef nonnull %0, i32 noundef %i.jz, ptr noundef nonnull byval(%"struct.OT::glyf_accelerator_t::points_aggregator_t") align 8 %9, ptr %i.ki, i64 %.sroa.2.8.insert.ext.i.i, ptr noundef nonnull align 8 dereferenceable(152) %.1.i190, ptr noundef nonnull %.1.ph.i147)
  br i1 %i.kn, label %bb.bc, label %bb.ba, !prof !268

bb.ba:                                            ; preds = %bb.az
  %i.ko = load ptr, ptr %i.jo, align 8, !tbaa !264 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 20
  %i.kq = load atomic i32, ptr %i.kp monotonic, align 4 ; 2 uses
  %.not.i.i = icmp eq i32 %i.kq, 0
  br i1 %.not.i.i, label %bb.bb, label %_ZNK9hb_face_t8get_upemEv.exit.i, !prof !267

bb.bb:                                            ; preds = %bb.ba
  %i.kr = call noundef i32 @_ZNK9hb_face_t9load_upemEv(ptr noundef nonnull align 8 dereferenceable(448) %i.ko)
  br label %_ZNK9hb_face_t8get_upemEv.exit.i

_ZNK9hb_face_t8get_upemEv.exit.i:                 ; preds = %bb.bb, %bb.ba
  %.0.i.i171 = phi i32 [ %i.kr, %bb.bb ], [ %i.kq, %bb.ba ]
  %i.ks = lshr i32 %.0.i.i171, 1
  br label %bb.bd

bb.bc:                                            ; preds = %bb.az
  %i.kt = load float, ptr %i.jp, align 4, !tbaa !1558
  %i.ku = load float, ptr %8, align 16, !tbaa !1558
  %i.kv = fsub float %i.kt, %i.ku
  %i.kw = fadd float %i.kv, 5.000000e-01
  %i.kx = call noundef float @llvm.floor.f32(float %i.kw) ; 2 uses
  %i.ky = fcmp oge float %i.kx, 0.000000e+00
  %i.kz = select i1 %i.ky, float %i.kx, float 0.000000e+00 ; 2 uses
  %i.la = fcmp ole float %i.kz, f0x4F000000
  %.sroa.speculated.i173 = select i1 %i.la, float %i.kz, float f0x4F000000
  %i.lb = fptoui float %.sroa.speculated.i173 to i32
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %_ZNK9hb_face_t8get_upemEv.exit.i
  %.0.i172 = phi i32 [ %i.ks, %_ZNK9hb_face_t8get_upemEv.exit.i ], [ %i.lb, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #63
  %.pre = load i32, ptr %.3105211, align 4, !tbaa !324
  br label %_ZNK2OT18glyf_accelerator_t29get_advance_with_var_unscaledEjP9hb_font_tbR17hb_glyf_scratch_tPNS_17hb_scalar_cache_tE.exit

end_hunk_24
begin_hunk_25_@_ZL26hb_ot_get_glyph_v_advancesP9hb_font_tPvjPKjjPijS1_:bb.a
  %.097210 = phi i32 [ 0, %.lr.ph211 ], [ %i.bg, %_ZNK2OT8hmtxvmtxINS_4vmtxENS_4vheaENS_4VVAREE13accelerator_t32get_advance_without_var_unscaledEj.exit ]
  %.1101209 = phi ptr [ %3, %.lr.ph211 ], [ %i.be, %_ZNK2OT8hmtxvmtxINS_4vmtxENS_4vheaENS_4VVAREE13accelerator_t32get_advance_without_var_unscaledEj.exit ] ; 2 uses
  %.2106208 = phi ptr [ %5, %.lr.ph211 ], [ %i.bf, %_ZNK2OT8hmtxvmtxINS_4vmtxENS_4vheaENS_4VVAREE13accelerator_t32get_advance_without_var_unscaledEj.exit ] ; 2 uses
  %i.aj = load i32, ptr %.1101209, align 4, !tbaa !324 ; 2 uses
  %i.ak = load i32, ptr %i.i, align 4, !tbaa !1553
  %i.al = icmp ult i32 %i.aj, %i.ak
  br i1 %i.al, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.am = load ptr, ptr %i.ae, align 8, !tbaa !272 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.am, null
  %spec.select.i.i.i.i.i = select i1 %.not.i.i.i.i.i, ptr @_hb_NullPool, ptr %i.am
  %i.an = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !275
  %i.ap = load i32, ptr %.19.ph.i.i.i, align 8, !tbaa !1552
  %i.aq = add i32 %i.ap, -1
  %.sroa.speculated.i = tail call i32 @llvm.umin.i32(i32 %i.aj, i32 %i.aq)
  %i.ar = zext i32 %.sroa.speculated.i to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.ar
  %i.at = load i16, ptr %i.as, align 1, !tbaa !283
  %i.au = tail call noundef i16 @llvm.bswap.i16(i16 %i.at)
  br label %_ZNK2OT8hmtxvmtxINS_4vmtxENS_4vheaENS_4VVAREE13accelerator_t32get_advance_without_var_unscaledEj.exit

bb.l:                                             ; preds = %bb.j
  %i.av = load i32, ptr %i.ac, align 8, !tbaa !1556
  %.not.i = icmp eq i32 %i.av, 0
  br i1 %.not.i, label %bb.m, label %_ZNK2OT8hmtxvmtxINS_4vmtxENS_4vheaENS_4VVAREE13accelerator_t32get_advance_without_var_unscaledEj.exit, !prof !267

bb.m:                                             ; preds = %bb.l
  %i.aw = load i32, ptr %i.ad, align 8, !tbaa !1557
  %i.ax = trunc i32 %i.aw to i16
  br label %_ZNK2OT8hmtxvmtxINS_4vmtxENS_4vheaENS_4VVAREE13accelerator_t32get_advance_without_var_unscaledEj.exit

_ZNK2OT8hmtxvmtxINS_4vmtxENS_4vheaENS_4VVAREE13accelerator_t32get_advance_without_var_unscaledEj.exit: ; preds = %bb.k, %bb.l, %bb.m
  %.0.i = phi i16 [ %i.au, %bb.k ], [ %i.ax, %bb.m ], [ 0, %bb.l ]
  %i.ay = sub i16 0, %.0.i
  %i.az = sext i16 %i.ay to i64
  %i.ba = mul nsw i64 %i.ag, %i.az
  %i.bb = add nsw i64 %i.ba, 32768
  %i.bc = lshr i64 %i.bb, 16
  %i.bd = trunc i64 %i.bc to i32
  store i32 %i.bd, ptr %.2106208, align 4, !tbaa !324
  %i.be = getelementptr inbounds nuw i8, ptr %.1101209, i64 %i.ah
  %i.bf = getelementptr inbounds nuw i8, ptr %.2106208, i64 %i.ai
  %i.bg = add nuw i32 %.097210, 1                 ; 2 uses
  %exitcond228.not = icmp eq i32 %i.bg, %2
  br i1 %exitcond228.not, label %_ZNK12hb_ot_font_t17direction_cache_t21release_advance_cacheEP10hb_cache_tILj24ELj16ELj8ELb1EE.exit, label %bb.j, !llvm.loop !3535

bb.n:                                             ; preds = %bb.i
  tail call void @_ZNK12hb_ot_font_t12check_serialEP9hb_font_t(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull %0)
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 6 uses
  br label %_ZN10hb_cache_tILj24ELj16ELj8ELb1EEC2Ev.exit.i

_ZN10hb_cache_tILj24ELj16ELj8ELb1EEC2Ev.exit.i:   ; preds = %bb.p, %bb.n
  %i.bi = load atomic ptr, ptr %i.bh acquire, align 8 ; 3 uses
  %.not.i114 = icmp eq ptr %i.bi, null
  br i1 %.not.i114, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN10hb_cache_tILj24ELj16ELj8ELb1EEC2Ev.exit.i
  %calloc.i = tail call dereferenceable_or_null(1024) ptr @calloc(i64 1, i64 1024) ; 10 uses
  %.not11.i = icmp eq ptr %calloc.i, null
  br i1 %.not11.i, label %_ZNK12hb_ot_font_t17direction_cache_t21acquire_advance_cacheEv.exit.thread, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.o, %.preheader.i.i
  %.0.idx8.i.i.i = phi i64 [ %.0.add.i.i.i.7, %.preheader.i.i ], [ 0, %bb.o ] ; 9 uses
  %.0.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %calloc.i, i64 %.0.idx8.i.i.i
  store atomic i32 -1, ptr %.0.ptr.i.i.i monotonic, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %calloc.i, i64 %.0.idx8.i.i.i
  %.0.ptr.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  store atomic i32 -1, ptr %.0.ptr.i.i.i.1 monotonic, align 4
  %i.bk = getelementptr inbounds nuw i8, ptr %calloc.i, i64 %.0.idx8.i.i.i
  %.0.ptr.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store atomic i32 -1, ptr %.0.ptr.i.i.i.2 monotonic, align 4
  %i.bl = getelementptr inbounds nuw i8, ptr %calloc.i, i64 %.0.idx8.i.i.i
  %.0.ptr.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  store atomic i32 -1, ptr %.0.ptr.i.i.i.3 monotonic, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %calloc.i, i64 %.0.idx8.i.i.i
  %.0.ptr.i.i.i.4 = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store atomic i32 -1, ptr %.0.ptr.i.i.i.4 monotonic, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %calloc.i, i64 %.0.idx8.i.i.i
  %.0.ptr.i.i.i.5 = getelementptr inbounds nuw i8, ptr %i.bn, i64 20
  store atomic i32 -1, ptr %.0.ptr.i.i.i.5 monotonic, align 4
  %i.bo = getelementptr inbounds nuw i8, ptr %calloc.i, i64 %.0.idx8.i.i.i
  %.0.ptr.i.i.i.6 = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  store atomic i32 -1, ptr %.0.ptr.i.i.i.6 monotonic, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %calloc.i, i64 %.0.idx8.i.i.i
  %.0.ptr.i.i.i.7 = getelementptr inbounds nuw i8, ptr %i.bp, i64 28
  store atomic i32 -1, ptr %.0.ptr.i.i.i.7 monotonic, align 4
  %.0.add.i.i.i.7 = add nuw nsw i64 %.0.idx8.i.i.i, 32 ; 2 uses
  %.not.i.i.i115.7 = icmp eq i64 %.0.add.i.i.i.7, 1024
  br i1 %.not.i.i.i115.7, label %.loopexit, label %.preheader.i.i

bb.p:                                             ; preds = %_ZN10hb_cache_tILj24ELj16ELj8ELb1EEC2Ev.exit.i
  %i.bq = cmpxchg weak ptr %i.bh, ptr %i.bi, ptr null acq_rel monotonic, align 8
  %i.br = extractvalue { ptr, i1 } %i.bq, 1
  br i1 %i.br, label %.loopexit, label %_ZN10hb_cache_tILj24ELj16ELj8ELb1EEC2Ev.exit.i

.loopexit:                                        ; preds = %bb.p, %.preheader.i.i
  %.1.ph.i.ph = phi ptr [ %calloc.i, %.preheader.i.i ], [ %i.bi, %bb.p ] ; 11 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i, i64 32
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !272 ; 2 uses
  %.not.i.i.i.i116 = icmp eq ptr %i.bt, null
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i116, ptr @_hb_NullPool, ptr %i.bt ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !275
  %i.bw = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i, i64 24
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !276
  %i.by = icmp ult i32 %i.bx, 24
  %spec.select.i.i1.i.i = select i1 %i.by, ptr @_hb_NullPool, ptr %i.bv ; 3 uses
  %i.bz = load i16, ptr %spec.select.i.i1.i.i, align 1, !tbaa !283
  %.not192 = icmp eq i16 %i.bz, 0
  br i1 %.not192, label %bb.ab, label %bb.q

bb.q:                                             ; preds = %.loopexit
  %i.ca = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i, i64 4
  %i.cb = load i32, ptr %i.ca, align 1, !tbaa !278 ; 2 uses
  %i.cc = icmp eq i32 %i.cb, 0
  %i.cd = tail call i32 @llvm.bswap.i32(i32 %i.cb)
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i, i64 %i.ce
  %.0.i.i = select i1 %i.cc, ptr @_hb_NullPool, ptr %i.cf, !prof !267 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  br label %_ZNK2OT18ItemVariationStore12create_cacheEv.exit.i

_ZNK2OT18ItemVariationStore12create_cacheEv.exit.i: ; preds = %bb.u, %bb.q
  %i.ch = load atomic ptr, ptr %i.cg acquire, align 8 ; 3 uses
  %.not.i117 = icmp eq ptr %i.ch, null
  br i1 %.not.i117, label %bb.r, label %bb.u

bb.r:                                             ; preds = %_ZNK2OT18ItemVariationStore12create_cacheEv.exit.i
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 2
  %i.cj = load i32, ptr %i.ci, align 1, !tbaa !278 ; 2 uses
  %i.ck = icmp eq i32 %i.cj, 0
  %i.cl = tail call i32 @llvm.bswap.i32(i32 %i.cj)
  %i.cm = zext i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.cm
  %.0.i.i.i.i = select i1 %i.ck, ptr @_hb_NullPool, ptr %i.cn, !prof !267
  %i.co = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 2
  %i.cp = load i16, ptr %i.co, align 1, !tbaa !283 ; 2 uses
  %i.cq = tail call noundef i16 @llvm.bswap.i16(i16 %i.cp) ; 3 uses
  %i.cr = zext i16 %i.cq to i32                   ; 2 uses
  %.not.i.i.i119 = icmp eq i16 %i.cp, 0
  br i1 %.not.i.i.i119, label %_ZNK12hb_ot_font_t17direction_cache_t22acquire_varStore_cacheERKN2OT18ItemVariationStoreE.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cs = zext i16 %i.cq to i64                   ; 5 uses
  %i.ct = shl nuw nsw i64 %i.cs, 2
  %i.cu = add nuw nsw i64 %i.ct, 4
  %i.cv = tail call noalias noundef ptr @malloc(i64 noundef %i.cu) #65 ; 6 uses
  %.not16.i.i.i = icmp eq ptr %i.cv, null
  br i1 %.not16.i.i.i, label %_ZNK12hb_ot_font_t17direction_cache_t22acquire_varStore_cacheERKN2OT18ItemVariationStoreE.exit, label %bb.t, !prof !267

bb.t:                                             ; preds = %bb.s
  store i32 %i.cr, ptr %i.cv, align 4, !tbaa !480
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 4 ; 12 uses
  %i.cx = icmp ugt i16 %i.cq, 3
  br i1 %i.cx, label %.lr.ph.i25.i.i.i.preheader, label %.preheader.i17.i.i.i

.lr.ph.i25.i.i.i.preheader:                       ; preds = %bb.t
  %i.cy = add nsw i64 %i.cs, -4                   ; 2 uses
  %i.cz = lshr i64 %i.cy, 2                       ; 2 uses
  %i.da = add nuw nsw i64 %i.cz, 1                ; 2 uses
  %i.db = icmp eq i64 %i.cz, 0
  br i1 %i.db, label %.lr.ph.i25.i.i.i.epil.preheader, label %.lr.ph.i25.i.i.i.preheader.new

.lr.ph.i25.i.i.i.preheader.new:                   ; preds = %.lr.ph.i25.i.i.i.preheader
  %unroll_iter = and i64 %i.da, 9223372036854775806
  br label %.lr.ph.i25.i.i.i

.preheader.i17.i.loopexit.i.i.unr-lcssa:          ; preds = %.lr.ph.i25.i.i.i
  %i.dc = and i64 %i.cy, 4
  %lcmp.mod.not.not = icmp eq i64 %i.dc, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i25.i.i.i.epil.preheader, label %.preheader.i17.i.loopexit.i.i

.lr.ph.i25.i.i.i.epil.preheader:                  ; preds = %.preheader.i17.i.loopexit.i.i.unr-lcssa, %.lr.ph.i25.i.i.i.preheader
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i25.i.i.i.preheader ], [ %indvars.iv.next.i.i.1, %.preheader.i17.i.loopexit.i.i.unr-lcssa ] ; 2 uses
  %lcmp.mod278 = trunc i64 %i.da to i1
  tail call void @llvm.assume(i1 %lcmp.mod278)
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv.i.i.epil.init ; 4 uses
  store atomic i32 -2147483648, ptr %i.dd monotonic, align 4
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  store atomic i32 -2147483648, ptr %i.de monotonic, align 4
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store atomic i32 -2147483648, ptr %i.df monotonic, align 4
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 12
  store atomic i32 -2147483648, ptr %i.dg monotonic, align 4
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil.init, 4
  br label %.preheader.i17.i.loopexit.i.i

.preheader.i17.i.loopexit.i.i:                    ; preds = %.preheader.i17.i.loopexit.i.i.unr-lcssa, %.lr.ph.i25.i.i.i.epil.preheader
  %indvars.iv.next.i.i.lcssa = phi i64 [ %indvars.iv.next.i.i.1, %.preheader.i17.i.loopexit.i.i.unr-lcssa ], [ %indvars.iv.next.i.i.epil, %.lr.ph.i25.i.i.i.epil.preheader ]
  %i.dh = trunc nuw nsw i64 %indvars.iv.next.i.i.lcssa to i32
  br label %.preheader.i17.i.i.i

.preheader.i17.i.i.i:                             ; preds = %.preheader.i17.i.loopexit.i.i, %bb.t
  %.0.lcssa.i18.i.i.i = phi i32 [ 0, %bb.t ], [ %i.dh, %.preheader.i17.i.loopexit.i.i ] ; 2 uses
  %i.di = icmp samesign ult i32 %.0.lcssa.i18.i.i.i, %i.cr
  br i1 %i.di, label %.lr.ph18.preheader.i19.i.i.i, label %_ZNK12hb_ot_font_t17direction_cache_t22acquire_varStore_cacheERKN2OT18ItemVariationStoreE.exit

.lr.ph18.preheader.i19.i.i.i:                     ; preds = %.preheader.i17.i.i.i
  %i.dj = zext nneg i32 %.0.lcssa.i18.i.i.i to i64 ; 4 uses
  %i.dk = sub nsw i64 %i.cs, %i.dj
  %xtraiter279 = and i64 %i.dk, 7                 ; 2 uses
  %lcmp.mod280.not = icmp eq i64 %xtraiter279, 0
  br i1 %lcmp.mod280.not, label %.lr.ph18.i21.i.i.i.prol.loopexit, label %.lr.ph18.i21.i.i.i.prol

.lr.ph18.i21.i.i.i.prol:                          ; preds = %.lr.ph18.preheader.i19.i.i.i, %.lr.ph18.i21.i.i.i.prol
  %indvars.iv.i22.i.i.i.prol = phi i64 [ %indvars.iv.next.i23.i.i.i.prol, %.lr.ph18.i21.i.i.i.prol ], [ %i.dj, %.lr.ph18.preheader.i19.i.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph18.i21.i.i.i.prol ], [ 0, %.lr.ph18.preheader.i19.i.i.i ]
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv.i22.i.i.i.prol
  store atomic i32 -2147483648, ptr %i.dl monotonic, align 4
  %indvars.iv.next.i23.i.i.i.prol = add nuw nsw i64 %indvars.iv.i22.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter279
  br i1 %prol.iter.cmp.not, label %.lr.ph18.i21.i.i.i.prol.loopexit, label %.lr.ph18.i21.i.i.i.prol, !llvm.loop !3536

.lr.ph18.i21.i.i.i.prol.loopexit:                 ; preds = %.lr.ph18.i21.i.i.i.prol, %.lr.ph18.preheader.i19.i.i.i
  %indvars.iv.i22.i.i.i.unr = phi i64 [ %i.dj, %.lr.ph18.preheader.i19.i.i.i ], [ %indvars.iv.next.i23.i.i.i.prol, %.lr.ph18.i21.i.i.i.prol ]
  %i.dm = sub nsw i64 %i.dj, %i.cs
  %i.dn = icmp ugt i64 %i.dm, -8
  br i1 %i.dn, label %_ZNK12hb_ot_font_t17direction_cache_t22acquire_varStore_cacheERKN2OT18ItemVariationStoreE.exit, label %.lr.ph18.i21.i.i.i

.lr.ph.i25.i.i.i:                                 ; preds = %.lr.ph.i25.i.i.i, %.lr.ph.i25.i.i.i.preheader.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i25.i.i.i.preheader.new ], [ %indvars.iv.next.i.i.1, %.lr.ph.i25.i.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i25.i.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i25.i.i.i ]
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv.i.i ; 4 uses
  store atomic i32 -2147483648, ptr %i.do monotonic, align 4
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  store atomic i32 -2147483648, ptr %i.dp monotonic, align 4
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  store atomic i32 -2147483648, ptr %i.dq monotonic, align 4
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 12
  store atomic i32 -2147483648, ptr %i.dr monotonic, align 4
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv.i.i ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  store atomic i32 -2147483648, ptr %i.dt monotonic, align 4
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 20
  store atomic i32 -2147483648, ptr %i.du monotonic, align 4
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  store atomic i32 -2147483648, ptr %i.dv monotonic, align 4
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ds, i64 28
  store atomic i32 -2147483648, ptr %i.dw monotonic, align 4
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 8 ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader.i17.i.loopexit.i.i.unr-lcssa, label %.lr.ph.i25.i.i.i, !llvm.loop !5

.lr.ph18.i21.i.i.i:                               ; preds = %.lr.ph18.i21.i.i.i.prol.loopexit, %.lr.ph18.i21.i.i.i
  %indvars.iv.i22.i.i.i = phi i64 [ %indvars.iv.next.i23.i.i.i.7, %.lr.ph18.i21.i.i.i ], [ %indvars.iv.i22.i.i.i.unr, %.lr.ph18.i21.i.i.i.prol.loopexit ] ; 9 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv.i22.i.i.i
  store atomic i32 -2147483648, ptr %i.dx monotonic, align 4
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv.i22.i.i.i
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  store atomic i32 -2147483648, ptr %i.dz monotonic, align 4
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv.i22.i.i.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  store atomic i32 -2147483648, ptr %i.eb monotonic, align 4
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv.i22.i.i.i
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 12
  store atomic i32 -2147483648, ptr %i.ed monotonic, align 4
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv.i22.i.i.i
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  store atomic i32 -2147483648, ptr %i.ef monotonic, align 4
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv.i22.i.i.i
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 20
  store atomic i32 -2147483648, ptr %i.eh monotonic, align 4
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv.i22.i.i.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  store atomic i32 -2147483648, ptr %i.ej monotonic, align 4
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv.i22.i.i.i
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 28
  store atomic i32 -2147483648, ptr %i.el monotonic, align 4
  %indvars.iv.next.i23.i.i.i.7 = add nuw nsw i64 %indvars.iv.i22.i.i.i, 8 ; 2 uses
  %exitcond.not.i24.i.i.i.7 = icmp eq i64 %indvars.iv.next.i23.i.i.i.7, %i.cs
  br i1 %exitcond.not.i24.i.i.i.7, label %_ZNK12hb_ot_font_t17direction_cache_t22acquire_varStore_cacheERKN2OT18ItemVariationStoreE.exit, label %.lr.ph18.i21.i.i.i, !llvm.loop !6

bb.u:                                             ; preds = %_ZNK2OT18ItemVariationStore12create_cacheEv.exit.i
  %i.em = cmpxchg weak ptr %i.cg, ptr %i.ch, ptr null acq_rel monotonic, align 8
  %i.en = extractvalue { ptr, i1 } %i.em, 1
  br i1 %i.en, label %_ZNK12hb_ot_font_t17direction_cache_t22acquire_varStore_cacheERKN2OT18ItemVariationStoreE.exit, label %_ZNK2OT18ItemVariationStore12create_cacheEv.exit.i

_ZNK12hb_ot_font_t17direction_cache_t22acquire_varStore_cacheERKN2OT18ItemVariationStoreE.exit: ; preds = %bb.u, %.lr.ph18.i21.i.i.i.prol.loopexit, %.lr.ph18.i21.i.i.i, %bb.r, %bb.s, %.preheader.i17.i.i.i
  %.1.ph.i118 = phi ptr [ @_hb_NullPool, %bb.r ], [ %i.cv, %.lr.ph18.i21.i.i.i.prol.loopexit ], [ %i.cv, %.preheader.i17.i.i.i ], [ @_hb_NullPool, %bb.s ], [ %i.cv, %.lr.ph18.i21.i.i.i ], [ %i.ch, %bb.u ] ; 4 uses
  %.not217 = icmp eq i32 %2, 0
  br i1 %.not217, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK12hb_ot_font_t17direction_cache_t22acquire_varStore_cacheERKN2OT18ItemVariationStoreE.exit
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ep = zext i32 %4 to i64
  %i.eq = zext i32 %6 to i64
  br label %bb.x

.critedge:                                        ; preds = %_ZN10hb_cache_tILj24ELj16ELj8ELb1EE3setEjj.exit, %_ZNK12hb_ot_font_t17direction_cache_t22acquire_varStore_cacheERKN2OT18ItemVariationStoreE.exit
  %i.er = cmpxchg weak ptr %i.cg, ptr null, ptr %.1.ph.i118 acq_rel monotonic, align 8
  %i.es = extractvalue { ptr, i1 } %i.er, 1
  %.not.i.i.i121 = icmp eq ptr %.1.ph.i118, @_hb_NullPool
  %or.cond.i = or i1 %.not.i.i.i121, %i.es
  br i1 %or.cond.i, label %_ZNK12hb_ot_font_t17direction_cache_t22release_varStore_cacheEPN2OT17hb_scalar_cache_tE.exit, label %bb.v

bb.v:                                             ; preds = %.critedge
  tail call void @free(ptr noundef nonnull %.1.ph.i118) #63
  br label %_ZNK12hb_ot_font_t17direction_cache_t22release_varStore_cacheEPN2OT17hb_scalar_cache_tE.exit

_ZNK12hb_ot_font_t17direction_cache_t22release_varStore_cacheEPN2OT17hb_scalar_cache_tE.exit: ; preds = %bb.v, %.critedge
  %i.et = cmpxchg weak ptr %i.bh, ptr null, ptr %.1.ph.i.ph acq_rel monotonic, align 8
  %i.eu = extractvalue { ptr, i1 } %i.et, 1
  br i1 %i.eu, label %_ZNK12hb_ot_font_t17direction_cache_t21release_advance_cacheEP10hb_cache_tILj24ELj16ELj8ELb1EE.exit, label %bb.w

bb.w:                                             ; preds = %_ZNK12hb_ot_font_t17direction_cache_t22release_varStore_cacheEPN2OT17hb_scalar_cache_tE.exit
  tail call void @free(ptr noundef nonnull %.1.ph.i.ph) #63
  br label %_ZNK12hb_ot_font_t17direction_cache_t21release_advance_cacheEP10hb_cache_tILj24ELj16ELj8ELb1EE.exit

bb.x:                                             ; preds = %.lr.ph, %_ZN10hb_cache_tILj24ELj16ELj8ELb1EE3setEjj.exit
  %.096203 = phi i32 [ 0, %.lr.ph ], [ %i.fw, %_ZN10hb_cache_tILj24ELj16ELj8ELb1EE3setEjj.exit ]
  %.2102202 = phi ptr [ %3, %.lr.ph ], [ %i.fu, %_ZN10hb_cache_tILj24ELj16ELj8ELb1EE3setEjj.exit ] ; 3 uses
  %.3107201 = phi ptr [ %5, %.lr.ph ], [ %i.fv, %_ZN10hb_cache_tILj24ELj16ELj8ELb1EE3setEjj.exit ] ; 2 uses
  %i.ev = load i32, ptr %.2102202, align 4, !tbaa !324 ; 3 uses
  %i.ew = and i32 %i.ev, 255
  %i.ex = zext nneg i32 %i.ew to i64
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %.1.ph.i.ph, i64 %i.ex
  %i.ez = load atomic i32, ptr %i.ey monotonic, align 4 ; 3 uses
  %i.fa = icmp eq i32 %i.ez, -1
  br i1 %i.fa, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fb = lshr i32 %i.ez, 16
  %i.fc = lshr i32 %i.ev, 8
  %.not.i123 = icmp eq i32 %i.fb, %i.fc
  br i1 %.not.i123, label %_ZN10hb_cache_tILj24ELj16ELj8ELb1EE3setEjj.exit, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.fd = tail call noundef i32 @_ZNK2OT8hmtxvmtxINS_4vmtxENS_4vheaENS_4VVAREE13accelerator_t29get_advance_with_var_unscaledEjP9hb_font_tPNS_17hb_scalar_cache_tE(ptr noundef nonnull align 8 dereferenceable(40) %.19.ph.i.i.i, i32 noundef %i.ev, ptr noundef nonnull %0, ptr noundef nonnull %.1.ph.i118) ; 4 uses
  %i.fe = load i32, ptr %.2102202, align 4, !tbaa !324 ; 3 uses
  %i.ff = icmp ugt i32 %i.fe, 16777215
  %i.fg = icmp ugt i32 %i.fd, 65535
  %i.fh = or i1 %i.fg, %i.ff
  br i1 %i.fh, label %_ZN10hb_cache_tILj24ELj16ELj8ELb1EE3setEjj.exit, label %bb.aa, !prof !267

bb.aa:                                            ; preds = %bb.z
  %i.fi = and i32 %i.fe, 255
  %i.fj = shl nuw i32 %i.fe, 8
  %i.fk = and i32 %i.fj, -65536
  %i.fl = or disjoint i32 %i.fk, %i.fd
  %i.fm = zext nneg i32 %i.fi to i64
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %.1.ph.i.ph, i64 %i.fm
  store atomic i32 %i.fl, ptr %i.fn monotonic, align 4
  br label %_ZN10hb_cache_tILj24ELj16ELj8ELb1EE3setEjj.exit

_ZN10hb_cache_tILj24ELj16ELj8ELb1EE3setEjj.exit:  ; preds = %bb.y, %bb.aa, %bb.z
  %.095 = phi i32 [ %i.fd, %bb.aa ], [ %i.fd, %bb.z ], [ %i.ez, %bb.y ]
  %i.fo = load i64, ptr %i.eo, align 8, !tbaa !1047
  %.095.neg = sub i32 0, %.095
  %.095.neg.z = zext i32 %.095.neg to i64
  %.neg194 = shl i64 %.095.neg.z, 48
  %i.fp = ashr exact i64 %.neg194, 48
  %i.fq = mul nsw i64 %i.fp, %i.fo
  %i.fr = add nsw i64 %i.fq, 32768
  %i.fs = lshr i64 %i.fr, 16
  %i.ft = trunc i64 %i.fs to i32
  store i32 %i.ft, ptr %.3107201, align 4, !tbaa !324
  %i.fu = getelementptr inbounds nuw i8, ptr %.2102202, i64 %i.ep
  %i.fv = getelementptr inbounds nuw i8, ptr %.3107201, i64 %i.eq
  %i.fw = add nuw i32 %.096203, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.fw, %2
  br i1 %exitcond.not, label %.critedge, label %bb.x, !llvm.loop !3537

bb.ab:                                            ; preds = %.loopexit
  %i.fx = getelementptr inbounds nuw i8, ptr %i.a, i64 168 ; 5 uses
  %i.fy = load atomic ptr, ptr %i.fx acquire, align 8 ; 2 uses
  %.not20.i.i.i = icmp eq ptr %i.fy, null
  br i1 %.not20.i.i.i, label %.lr.ph.i.i.i126, label %_ZNK16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit, !prof !265

.lr.ph.i.i.i126:                                  ; preds = %bb.ab, %_ZN16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_E10do_destroyEPS1_.exit.i.i.i
  %i.fz = load ptr, ptr %i.a, align 8, !tbaa !266
  %.not.i.i.i.i127 = icmp eq ptr %i.fz, null
  br i1 %.not.i.i.i.i127, label %_ZNK16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit, label %bb.ac, !prof !267

bb.ac:                                            ; preds = %.lr.ph.i.i.i126
  %i.ga = tail call noundef ptr @_ZNK17hb_data_wrapper_tI9hb_face_tLj21EE11call_createIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS4_Lj21EEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) %i.fx) ; 5 uses
  %.not10.i.i.i128 = icmp eq ptr %i.ga, null
  br i1 %.not10.i.i.i128, label %.thread.i.i.i, label %bb.ad, !prof !267

bb.ad:                                            ; preds = %bb.ac
  %i.gb = cmpxchg weak ptr %i.fx, ptr null, ptr %i.ga acq_rel monotonic, align 8
  %i.gc = extractvalue { ptr, i1 } %i.gb, 1
  br i1 %i.gc, label %_ZNK16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit, label %bb.ae, !prof !268

.thread.i.i.i:                                    ; preds = %bb.ac
  %i.gd = cmpxchg weak ptr %i.fx, ptr null, ptr @_hb_NullPool acq_rel monotonic, align 8
  %i.ge = extractvalue { ptr, i1 } %i.gd, 1
  br i1 %i.ge, label %_ZNK16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit, label %_ZN16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_E10do_destroyEPS1_.exit.i.i.i, !prof !268

bb.ae:                                            ; preds = %bb.ad
  %.not3.i.i.i.i = icmp eq ptr %i.ga, @_hb_NullPool
  br i1 %.not3.i.i.i.i, label %_ZN16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_E10do_destroyEPS1_.exit.i.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void @_ZN16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_E7destroyEPS1_(ptr noundef nonnull %i.ga)
  br label %_ZN16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_E10do_destroyEPS1_.exit.i.i.i

_ZN16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_E10do_destroyEPS1_.exit.i.i.i: ; preds = %bb.af, %bb.ae, %.thread.i.i.i
  %i.gf = load atomic ptr, ptr %i.fx acquire, align 8 ; 2 uses
  %.not.i.i.i129 = icmp eq ptr %i.gf, null
  br i1 %.not.i.i.i129, label %.lr.ph.i.i.i126, label %_ZNK16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit, !prof !269

_ZNK16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit: ; preds = %.lr.ph.i.i.i126, %bb.ad, %.thread.i.i.i, %_ZN16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_E10do_destroyEPS1_.exit.i.i.i, %bb.ab
  %.19.ph.i.i.i125 = phi ptr [ %i.fy, %bb.ab ], [ @_hb_NullPool, %.lr.ph.i.i.i126 ], [ %i.gf, %_ZN16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_E10do_destroyEPS1_.exit.i.i.i ], [ @_hb_NullPool, %.thread.i.i.i ], [ %i.ga, %bb.ad ] ; 2 uses
  %i.gg = load ptr, ptr %.19.ph.i.i.i125, align 8, !tbaa !272 ; 2 uses
  %.not.i.i.i.i.i130 = icmp eq ptr %i.gg, null
  %spec.select.i.i.i.i.i131 = select i1 %.not.i.i.i.i.i130, ptr @_hb_NullPool, ptr %i.gg ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i131, i64 16
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !275
  %i.gj = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i131, i64 24
  %i.gk = load i32, ptr %i.gj, align 8, !tbaa !276
  %i.gl = icmp ult i32 %i.gk, 20
  %spec.select.i.i1.i.i.i = select i1 %i.gl, ptr @_hb_NullPool, ptr %i.gi
  %i.gm = load i32, ptr %spec.select.i.i1.i.i.i, align 1
  %.not193 = icmp eq i32 %i.gm, 0
  br i1 %.not193, label %bb.be, label %bb.ag

bb.ag:                                            ; preds = %_ZNK16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit
  %i.gn = getelementptr inbounds nuw i8, ptr %i.a, i64 120 ; 4 uses
  %i.go = load atomic ptr, ptr %i.gn acquire, align 8 ; 2 uses
  %.not14.i.i.i132 = icmp eq ptr %i.go, null
  br i1 %.not14.i.i.i132, label %.lr.ph.i.i.i134, label %_ZNK16hb_lazy_loader_tIN2OT18glyf_accelerator_tE21hb_face_lazy_loader_tIS1_Lj15EE9hb_face_tLj15ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit, !prof !265

.lr.ph.i.i.i134:                                  ; preds = %bb.ag, %bb.ak
  %i.gp = load ptr, ptr %i.a, align 8, !tbaa !266
  %.not.i.i.i.i135 = icmp eq ptr %i.gp, null
  br i1 %.not.i.i.i.i135, label %_ZNK16hb_lazy_loader_tIN2OT18glyf_accelerator_tE21hb_face_lazy_loader_tIS1_Lj15EE9hb_face_tLj15ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit, label %bb.ah, !prof !267

bb.ah:                                            ; preds = %.lr.ph.i.i.i134
  %i.gq = tail call noundef ptr @_ZNK17hb_data_wrapper_tI9hb_face_tLj15EE11call_createIN2OT18glyf_accelerator_tE21hb_face_lazy_loader_tIS4_Lj15EEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) %i.gn) ; 2 uses
  %.not10.i.i.i136 = icmp eq ptr %i.gq, null
  br i1 %.not10.i.i.i136, label %bb.ai, label %bb.aj, !prof !267

bb.ai:                                            ; preds = %bb.ah
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.07.i.i.i137 = phi ptr [ @_hb_NullPool, %bb.ai ], [ %i.gq, %bb.ah ] ; 3 uses
  %i.gr = cmpxchg weak ptr %i.gn, ptr null, ptr %.07.i.i.i137 acq_rel monotonic, align 8
  %i.gs = extractvalue { ptr, i1 } %i.gr, 1
  br i1 %i.gs, label %_ZNK16hb_lazy_loader_tIN2OT18glyf_accelerator_tE21hb_face_lazy_loader_tIS1_Lj15EE9hb_face_tLj15ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit, label %bb.ak, !prof !268

bb.ak:                                            ; preds = %bb.aj
  tail call void @_ZN16hb_lazy_loader_tIN2OT18glyf_accelerator_tE21hb_face_lazy_loader_tIS1_Lj15EE9hb_face_tLj15ES1_E10do_destroyEPS1_(ptr noundef nonnull %.07.i.i.i137)
  %i.gt = load atomic ptr, ptr %i.gn acquire, align 8 ; 2 uses
  %.not.i.i.i138 = icmp eq ptr %i.gt, null
  br i1 %.not.i.i.i138, label %.lr.ph.i.i.i134, label %_ZNK16hb_lazy_loader_tIN2OT18glyf_accelerator_tE21hb_face_lazy_loader_tIS1_Lj15EE9hb_face_tLj15ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit, !prof !269

_ZNK16hb_lazy_loader_tIN2OT18glyf_accelerator_tE21hb_face_lazy_loader_tIS1_Lj15EE9hb_face_tLj15ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit: ; preds = %.lr.ph.i.i.i134, %bb.aj, %bb.ak, %bb.ag
  %.19.ph.i.i.i133 = phi ptr [ %i.go, %bb.ag ], [ @_hb_NullPool, %.lr.ph.i.i.i134 ], [ %i.gt, %bb.ak ], [ %.07.i.i.i137, %bb.aj ] ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i133, i64 28 ; 2 uses
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !348
  %.not9.i = icmp eq i32 %i.gv, 0
  br i1 %.not9.i, label %_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit.thread, label %bb.al

bb.al:                                            ; preds = %_ZNK16hb_lazy_loader_tIN2OT18glyf_accelerator_tE21hb_face_lazy_loader_tIS1_Lj15EE9hb_face_tLj15ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit
  %i.gw = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i133, i64 48 ; 3 uses
  %i.gx = load atomic ptr, ptr %i.gw acquire, align 8 ; 3 uses
  %.not.i139 = icmp eq ptr %i.gx, null
  br i1 %.not.i139, label %_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gy = cmpxchg weak ptr %i.gw, ptr %i.gx, ptr null acq_rel monotonic, align 8
  %i.gz = extractvalue { ptr, i1 } %i.gy, 1
  br i1 %i.gz, label %_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit.thread183, label %_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit, !prof !268

_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit: ; preds = %bb.al, %bb.am
  %i.ha = tail call noalias noundef dereferenceable_or_null(152) ptr @calloc(i64 noundef 1, i64 noundef 152) #64 ; 2 uses
  %.not113 = icmp eq ptr %i.ha, null
  br i1 %.not113, label %_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit.thread, label %_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit.thread183, !prof !318

_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit.thread: ; preds = %_ZNK16hb_lazy_loader_tIN2OT18glyf_accelerator_tE21hb_face_lazy_loader_tIS1_Lj15EE9hb_face_tLj15ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit, %_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit
  %i.hb = cmpxchg weak ptr %i.bh, ptr null, ptr %.1.ph.i.ph acq_rel monotonic, align 8
  %i.hc = extractvalue { ptr, i1 } %i.hb, 1
  br i1 %i.hc, label %_ZNK12hb_ot_font_t17direction_cache_t21acquire_advance_cacheEv.exit.thread, label %_ZNK12hb_ot_font_t17direction_cache_t21acquire_advance_cacheEv.exit.thread.sink.split

_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit.thread183: ; preds = %bb.am, %_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit
  %.1.i186 = phi ptr [ %i.ha, %_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit ], [ %i.gx, %bb.am ] ; 4 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  br label %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE13accelerator_t12create_cacheEv.exit.i

_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE13accelerator_t12create_cacheEv.exit.i: ; preds = %bb.aq, %_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit.thread183
  %i.he = load atomic ptr, ptr %i.hd acquire, align 8 ; 3 uses
  %.not.i142 = icmp eq ptr %i.he, null
  br i1 %.not.i142, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE13accelerator_t12create_cacheEv.exit.i
  %i.hf = load ptr, ptr %.19.ph.i.i.i125, align 8, !tbaa !272 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.hf, null
  %spec.select.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, ptr @_hb_NullPool, ptr %i.hf ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i.i, i64 16
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !275
  %i.hi = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i.i, i64 24
  %i.hj = load i32, ptr %i.hi, align 8, !tbaa !276
  %i.hk = icmp ult i32 %i.hj, 20
  %spec.select.i.i1.i.i.i.i = select i1 %i.hk, ptr @_hb_NullPool, ptr %i.hh
  %i.hl = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i.i.i, i64 6
  %i.hm = load i16, ptr %i.hl, align 1, !tbaa !283 ; 2 uses
  %i.hn = tail call noundef i16 @llvm.bswap.i16(i16 %i.hm) ; 2 uses
  %i.ho = tail call i16 @llvm.umin.i16(i16 %i.hn, i16 4096) ; 2 uses
  %.sroa.speculated.i.i = zext nneg i16 %i.ho to i32 ; 2 uses
  %.not.i1.i.i = icmp eq i16 %i.hm, 0
  br i1 %.not.i1.i.i, label %_ZNK12hb_ot_font_t12draw_cache_t18acquire_gvar_cacheERKN2OT18gvar_accelerator_tE.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.hp = zext nneg i16 %i.ho to i64              ; 5 uses
  %i.hq = shl nuw nsw i64 %i.hp, 2
  %i.hr = add nuw nsw i64 %i.hq, 4
  %i.hs = tail call noalias noundef ptr @malloc(i64 noundef %i.hr) #65 ; 6 uses
  %.not16.i.i.i144 = icmp eq ptr %i.hs, null
  br i1 %.not16.i.i.i144, label %_ZNK12hb_ot_font_t12draw_cache_t18acquire_gvar_cacheERKN2OT18gvar_accelerator_tE.exit, label %bb.ap, !prof !267

bb.ap:                                            ; preds = %bb.ao
  store i32 %.sroa.speculated.i.i, ptr %i.hs, align 4, !tbaa !480
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 4 ; 10 uses
  %i.hu = icmp ugt i16 %i.hn, 3
  br i1 %i.hu, label %.lr.ph.i25.i.i.i152, label %.preheader.i17.i.i.i145

.preheader.i17.i.loopexit.i.i155:                 ; preds = %.lr.ph.i25.i.i.i152
  %i.hv = trunc nuw nsw i64 %indvars.iv.next.i.i154 to i32
  br label %.preheader.i17.i.i.i145

.preheader.i17.i.i.i145:                          ; preds = %.preheader.i17.i.loopexit.i.i155, %bb.ap
  %.0.lcssa.i18.i.i.i146 = phi i32 [ 0, %bb.ap ], [ %i.hv, %.preheader.i17.i.loopexit.i.i155 ] ; 2 uses
  %i.hw = icmp samesign ult i32 %.0.lcssa.i18.i.i.i146, %.sroa.speculated.i.i
  br i1 %i.hw, label %.lr.ph18.preheader.i19.i.i.i147, label %_ZNK12hb_ot_font_t12draw_cache_t18acquire_gvar_cacheERKN2OT18gvar_accelerator_tE.exit

.lr.ph18.preheader.i19.i.i.i147:                  ; preds = %.preheader.i17.i.i.i145
  %i.hx = zext nneg i32 %.0.lcssa.i18.i.i.i146 to i64 ; 4 uses
  %i.hy = sub nsw i64 %i.hp, %i.hx
  %xtraiter281 = and i64 %i.hy, 7                 ; 2 uses
  %lcmp.mod282.not = icmp eq i64 %xtraiter281, 0
  br i1 %lcmp.mod282.not, label %.lr.ph18.i21.i.i.i148.prol.loopexit, label %.lr.ph18.i21.i.i.i148.prol

.lr.ph18.i21.i.i.i148.prol:                       ; preds = %.lr.ph18.preheader.i19.i.i.i147, %.lr.ph18.i21.i.i.i148.prol
  %indvars.iv.i22.i.i.i149.prol = phi i64 [ %indvars.iv.next.i23.i.i.i150.prol, %.lr.ph18.i21.i.i.i148.prol ], [ %i.hx, %.lr.ph18.preheader.i19.i.i.i147 ] ; 2 uses
  %prol.iter283 = phi i64 [ %prol.iter283.next, %.lr.ph18.i21.i.i.i148.prol ], [ 0, %.lr.ph18.preheader.i19.i.i.i147 ]
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %indvars.iv.i22.i.i.i149.prol
  store atomic i32 -2147483648, ptr %i.hz monotonic, align 4
  %indvars.iv.next.i23.i.i.i150.prol = add nuw nsw i64 %indvars.iv.i22.i.i.i149.prol, 1 ; 2 uses
  %prol.iter283.next = add i64 %prol.iter283, 1   ; 2 uses
  %prol.iter283.cmp.not = icmp eq i64 %prol.iter283.next, %xtraiter281
  br i1 %prol.iter283.cmp.not, label %.lr.ph18.i21.i.i.i148.prol.loopexit, label %.lr.ph18.i21.i.i.i148.prol, !llvm.loop !3538

.lr.ph18.i21.i.i.i148.prol.loopexit:              ; preds = %.lr.ph18.i21.i.i.i148.prol, %.lr.ph18.preheader.i19.i.i.i147
  %indvars.iv.i22.i.i.i149.unr = phi i64 [ %i.hx, %.lr.ph18.preheader.i19.i.i.i147 ], [ %indvars.iv.next.i23.i.i.i150.prol, %.lr.ph18.i21.i.i.i148.prol ]
  %i.ia = sub nsw i64 %i.hx, %i.hp
  %i.ib = icmp ugt i64 %i.ia, -8
  br i1 %i.ib, label %_ZNK12hb_ot_font_t12draw_cache_t18acquire_gvar_cacheERKN2OT18gvar_accelerator_tE.exit, label %.lr.ph18.i21.i.i.i148

.lr.ph.i25.i.i.i152:                              ; preds = %bb.ap, %.lr.ph.i25.i.i.i152
  %indvars.iv.i.i153 = phi i64 [ %indvars.iv.next.i.i154, %.lr.ph.i25.i.i.i152 ], [ 0, %bb.ap ] ; 2 uses
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %indvars.iv.i.i153 ; 4 uses
  store atomic i32 -2147483648, ptr %i.ic monotonic, align 4
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 4
  store atomic i32 -2147483648, ptr %i.id monotonic, align 4
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  store atomic i32 -2147483648, ptr %i.ie monotonic, align 4
  %i.if = getelementptr inbounds nuw i8, ptr %i.ic, i64 12
  store atomic i32 -2147483648, ptr %i.if monotonic, align 4
  %indvars.iv.next.i.i154 = add nuw nsw i64 %indvars.iv.i.i153, 4 ; 3 uses
  %i.ig = or disjoint i64 %indvars.iv.next.i.i154, 3
  %i.ih = icmp samesign ult i64 %i.ig, %i.hp
  br i1 %i.ih, label %.lr.ph.i25.i.i.i152, label %.preheader.i17.i.loopexit.i.i155, !llvm.loop !5

.lr.ph18.i21.i.i.i148:                            ; preds = %.lr.ph18.i21.i.i.i148.prol.loopexit, %.lr.ph18.i21.i.i.i148
  %indvars.iv.i22.i.i.i149 = phi i64 [ %indvars.iv.next.i23.i.i.i150.7, %.lr.ph18.i21.i.i.i148 ], [ %indvars.iv.i22.i.i.i149.unr, %.lr.ph18.i21.i.i.i148.prol.loopexit ] ; 9 uses
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %indvars.iv.i22.i.i.i149
  store atomic i32 -2147483648, ptr %i.ii monotonic, align 4
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %indvars.iv.i22.i.i.i149
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 4
  store atomic i32 -2147483648, ptr %i.ik monotonic, align 4
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %indvars.iv.i22.i.i.i149
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  store atomic i32 -2147483648, ptr %i.im monotonic, align 4
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %indvars.iv.i22.i.i.i149
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 12
  store atomic i32 -2147483648, ptr %i.io monotonic, align 4
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %indvars.iv.i22.i.i.i149
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  store atomic i32 -2147483648, ptr %i.iq monotonic, align 4
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %indvars.iv.i22.i.i.i149
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 20
  store atomic i32 -2147483648, ptr %i.is monotonic, align 4
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %indvars.iv.i22.i.i.i149
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 24
  store atomic i32 -2147483648, ptr %i.iu monotonic, align 4
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %indvars.iv.i22.i.i.i149
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 28
  store atomic i32 -2147483648, ptr %i.iw monotonic, align 4
  %indvars.iv.next.i23.i.i.i150.7 = add nuw nsw i64 %indvars.iv.i22.i.i.i149, 8 ; 2 uses
  %exitcond.not.i24.i.i.i151.7 = icmp eq i64 %indvars.iv.next.i23.i.i.i150.7, %i.hp
  br i1 %exitcond.not.i24.i.i.i151.7, label %_ZNK12hb_ot_font_t12draw_cache_t18acquire_gvar_cacheERKN2OT18gvar_accelerator_tE.exit, label %.lr.ph18.i21.i.i.i148, !llvm.loop !6

bb.aq:                                            ; preds = %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE13accelerator_t12create_cacheEv.exit.i
  %i.ix = cmpxchg weak ptr %i.hd, ptr %i.he, ptr null acq_rel monotonic, align 8
  %i.iy = extractvalue { ptr, i1 } %i.ix, 1
  br i1 %i.iy, label %_ZNK12hb_ot_font_t12draw_cache_t18acquire_gvar_cacheERKN2OT18gvar_accelerator_tE.exit, label %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE13accelerator_t12create_cacheEv.exit.i

_ZNK12hb_ot_font_t12draw_cache_t18acquire_gvar_cacheERKN2OT18gvar_accelerator_tE.exit: ; preds = %bb.aq, %.lr.ph18.i21.i.i.i148.prol.loopexit, %.lr.ph18.i21.i.i.i148, %bb.an, %bb.ao, %.preheader.i17.i.i.i145
  %.1.ph.i143 = phi ptr [ @_hb_NullPool, %bb.an ], [ %i.hs, %.lr.ph18.i21.i.i.i148.prol.loopexit ], [ %i.hs, %.preheader.i17.i.i.i145 ], [ @_hb_NullPool, %bb.ao ], [ %i.hs, %.lr.ph18.i21.i.i.i148 ], [ %i.he, %bb.aq ] ; 4 uses
  %.not218 = icmp eq i32 %2, 0
  br i1 %.not218, label %._crit_edge, label %.lr.ph207

.lr.ph207:                                        ; preds = %_ZNK12hb_ot_font_t12draw_cache_t18acquire_gvar_cacheERKN2OT18gvar_accelerator_tE.exit
  %i.iz = getelementptr inbounds nuw i8, ptr %9, i64 28
  %i.ja = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.jb = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.jc = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.jg = getelementptr inbounds nuw i8, ptr %8, i64 28
  %i.jh = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.jj = zext i32 %4 to i64
  %i.jk = zext i32 %6 to i64
  br label %bb.au

._crit_edge:                                      ; preds = %_ZN10hb_cache_tILj24ELj16ELj8ELb1EE3setEjj.exit170, %_ZNK12hb_ot_font_t12draw_cache_t18acquire_gvar_cacheERKN2OT18gvar_accelerator_tE.exit
  %i.jl = cmpxchg weak ptr %i.hd, ptr null, ptr %.1.ph.i143 acq_rel monotonic, align 8
  %i.jm = extractvalue { ptr, i1 } %i.jl, 1
  %.not.i.i.i157 = icmp eq ptr %.1.ph.i143, @_hb_NullPool
  %or.cond.i158 = or i1 %.not.i.i.i157, %i.jm
  br i1 %or.cond.i158, label %_ZNK12hb_ot_font_t12draw_cache_t18release_gvar_cacheEPN2OT17hb_scalar_cache_tE.exit, label %bb.ar

bb.ar:                                            ; preds = %._crit_edge
  call void @free(ptr noundef nonnull %.1.ph.i143) #63
  br label %_ZNK12hb_ot_font_t12draw_cache_t18release_gvar_cacheEPN2OT17hb_scalar_cache_tE.exit

_ZNK12hb_ot_font_t12draw_cache_t18release_gvar_cacheEPN2OT17hb_scalar_cache_tE.exit: ; preds = %bb.ar, %._crit_edge
  %i.jn = cmpxchg weak ptr %i.gw, ptr null, ptr %.1.i186 acq_rel monotonic, align 8
  %i.jo = extractvalue { ptr, i1 } %i.jn, 1
  br i1 %i.jo, label %_ZNK2OT18glyf_accelerator_t15release_scratchEP17hb_glyf_scratch_t.exit, label %bb.as

bb.as:                                            ; preds = %_ZNK12hb_ot_font_t12draw_cache_t18release_gvar_cacheEPN2OT17hb_scalar_cache_tE.exit
  call void @_ZN17hb_glyf_scratch_tD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %.1.i186) #63
  call void @free(ptr noundef nonnull %.1.i186) #63
  br label %_ZNK2OT18glyf_accelerator_t15release_scratchEP17hb_glyf_scratch_t.exit

_ZNK2OT18glyf_accelerator_t15release_scratchEP17hb_glyf_scratch_t.exit: ; preds = %bb.as, %_ZNK12hb_ot_font_t12draw_cache_t18release_gvar_cacheEPN2OT17hb_scalar_cache_tE.exit
  %i.jp = cmpxchg weak ptr %i.bh, ptr null, ptr %.1.ph.i.ph acq_rel monotonic, align 8
  %i.jq = extractvalue { ptr, i1 } %i.jp, 1
  br i1 %i.jq, label %_ZNK12hb_ot_font_t17direction_cache_t21release_advance_cacheEP10hb_cache_tILj24ELj16ELj8ELb1EE.exit, label %bb.at

bb.at:                                            ; preds = %_ZNK2OT18glyf_accelerator_t15release_scratchEP17hb_glyf_scratch_t.exit
  call void @free(ptr noundef nonnull %.1.ph.i.ph) #63
  br label %_ZNK12hb_ot_font_t17direction_cache_t21release_advance_cacheEP10hb_cache_tILj24ELj16ELj8ELb1EE.exit

bb.au:                                            ; preds = %.lr.ph207, %_ZN10hb_cache_tILj24ELj16ELj8ELb1EE3setEjj.exit170
  %.094206 = phi i32 [ 0, %.lr.ph207 ], [ %i.ll, %_ZN10hb_cache_tILj24ELj16ELj8ELb1EE3setEjj.exit170 ]
  %.3103205 = phi ptr [ %3, %.lr.ph207 ], [ %i.lj, %_ZN10hb_cache_tILj24ELj16ELj8ELb1EE3setEjj.exit170 ] ; 3 uses
  %.4108204 = phi ptr [ %5, %.lr.ph207 ], [ %i.lk, %_ZN10hb_cache_tILj24ELj16ELj8ELb1EE3setEjj.exit170 ] ; 2 uses
  %i.jr = load i32, ptr %.3103205, align 4, !tbaa !324 ; 5 uses
  %i.js = and i32 %i.jr, 255
  %i.jt = zext nneg i32 %i.js to i64
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %.1.ph.i.ph, i64 %i.jt
  %i.jv = load atomic i32, ptr %i.ju monotonic, align 4 ; 3 uses
  %i.jw = icmp eq i32 %i.jv, -1
  br i1 %i.jw, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.jx = lshr i32 %i.jv, 16
  %i.jy = lshr i32 %i.jr, 8
  %.not.i162 = icmp eq i32 %i.jx, %i.jy
  br i1 %.not.i162, label %_ZN10hb_cache_tILj24ELj16ELj8ELb1EE3setEjj.exit170, label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.jz = load i32, ptr %i.gu, align 4, !tbaa !348
  %.not.i165 = icmp ult i32 %i.jr, %i.jz
  br i1 %.not.i165, label %bb.ax, label %_ZNK2OT18glyf_accelerator_t29get_advance_with_var_unscaledEjP9hb_font_tbR17hb_glyf_scratch_tPNS_17hb_scalar_cache_tE.exit, !prof !268

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #63
  store <4 x float> <float f0x7F7FFFFF, float f0x7F7FFFFF, float f0xFF7FFFFF, float f0xFF7FFFFF>, ptr %i.iz, align 4, !tbaa !304
  store ptr %0, ptr %9, align 8, !tbaa !470
  store ptr null, ptr %i.ja, align 8, !tbaa !471
  store ptr %8, ptr %i.jb, align 8, !tbaa !472
  store i8 0, ptr %i.jc, align 8, !tbaa !473
  %i.ka = load ptr, ptr %i.jd, align 8, !tbaa !309
  %i.kb = load i8, ptr %i.z, align 8, !tbaa !1064, !range !380, !noundef !293
  %i.kc = trunc nuw i8 %i.kb to i1
  br i1 %i.kc, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.kd = load i32, ptr %i.je, align 4, !tbaa !310
  %i.ke = zext i32 %i.kd to i64
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.sroa.2.8.insert.ext.i.i = phi i64 [ %i.ke, %bb.ay ], [ 0, %bb.ax ]
  %i.kf = call noundef zeroext i1 @_ZNK2OT18glyf_accelerator_t10get_pointsINS0_19points_aggregator_tEEEbP9hb_font_tjT_10hb_array_tIKiER17hb_glyf_scratch_tPNS_17hb_scalar_cache_tE(ptr noundef nonnull align 8 dereferenceable(56) %.19.ph.i.i.i133, ptr noundef nonnull %0, i32 noundef %i.jr, ptr noundef nonnull byval(%"struct.OT::glyf_accelerator_t::points_aggregator_t") align 8 %9, ptr %i.ka, i64 %.sroa.2.8.insert.ext.i.i, ptr noundef nonnull align 8 dereferenceable(152) %.1.i186, ptr noundef nonnull %.1.ph.i143)
  br i1 %i.kf, label %bb.bc, label %bb.ba, !prof !268

bb.ba:                                            ; preds = %bb.az
  %i.kg = load ptr, ptr %i.jf, align 8, !tbaa !264 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 20
  %i.ki = load atomic i32, ptr %i.kh monotonic, align 4 ; 2 uses
  %.not.i.i = icmp eq i32 %i.ki, 0
  br i1 %.not.i.i, label %bb.bb, label %_ZNK9hb_face_t8get_upemEv.exit.i, !prof !267

bb.bb:                                            ; preds = %bb.ba
  %i.kj = call noundef i32 @_ZNK9hb_face_t9load_upemEv(ptr noundef nonnull align 8 dereferenceable(448) %i.kg)
  br label %_ZNK9hb_face_t8get_upemEv.exit.i

bb.bc:                                            ; preds = %bb.az
  %i.kk = load float, ptr %i.jg, align 4, !tbaa !1559
  %i.kl = load float, ptr %i.jh, align 8, !tbaa !1559
  %i.km = fsub float %i.kk, %i.kl
  %i.kn = fadd float %i.km, 5.000000e-01
  %i.ko = call noundef float @llvm.floor.f32(float %i.kn) ; 2 uses
  %i.kp = fcmp oge float %i.ko, 0.000000e+00
  %i.kq = select i1 %i.kp, float %i.ko, float 0.000000e+00 ; 2 uses
  %i.kr = fcmp ole float %i.kq, f0x4F000000
  %.sroa.speculated.i169 = select i1 %i.kr, float %i.kq, float f0x4F000000
  %i.ks = fptoui float %.sroa.speculated.i169 to i32
  br label %_ZNK9hb_face_t8get_upemEv.exit.i

_ZNK9hb_face_t8get_upemEv.exit.i:                 ; preds = %bb.ba, %bb.bb, %bb.bc
  %.0.i168 = phi i32 [ %i.ks, %bb.bc ], [ %i.kj, %bb.bb ], [ %i.ki, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #63
  %.pre = load i32, ptr %.3103205, align 4, !tbaa !324
  br label %_ZNK2OT18glyf_accelerator_t29get_advance_with_var_unscaledEjP9hb_font_tbR17hb_glyf_scratch_tPNS_17hb_scalar_cache_tE.exit

_ZNK2OT18glyf_accelerator_t29get_advance_with_var_unscaledEjP9hb_font_tbR17hb_glyf_scratch_tPNS_17hb_scalar_cache_tE.exit: ; preds = %bb.aw, %_ZNK9hb_face_t8get_upemEv.exit.i
  %i.kt = phi i32 [ %.pre, %_ZNK9hb_face_t8get_upemEv.exit.i ], [ %i.jr, %bb.aw ] ; 3 uses
  %.1.i166 = phi i32 [ %.0.i168, %_ZNK9hb_face_t8get_upemEv.exit.i ], [ 0, %bb.aw ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
end_hunk_25
begin_hunk_26_@_ZL25hb_ot_get_glyph_v_originsP9hb_font_tPvjPKjjPijS4_jS1_:bb.a
  %i.dj = add nsw i32 %i.db, -1
  br label %bb.x

bb.v:                                             ; preds = %.lr.ph.i.i.i.i
  %.not28.i.i.i.i = icmp eq i32 %i.ck, %i.dh
  br i1 %.not28.i.i.i.i, label %_ZNK2OT13SortedArrayOfINS_16VertOriginMetricENS_7NumTypeILb1EtLj2EEEE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dk = add nuw nsw i32 %i.db, 1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  %.223.i.i.i.i = phi i32 [ %i.dk, %bb.w ], [ %.0212.i.i.i.i, %bb.u ] ; 2 uses
  %.2.i.i.i.i = phi i32 [ %.0203.i.i.i.i, %bb.w ], [ %i.dj, %bb.u ] ; 2 uses
  %.not.not.i.i.i.i = icmp sgt i32 %.223.i.i.i.i, %.2.i.i.i.i
  br i1 %.not.not.i.i.i.i, label %_ZNK2OT4VORG12get_y_originEj.exit171, label %.lr.ph.i.i.i.i, !llvm.loop !3542

_ZNK2OT13SortedArrayOfINS_16VertOriginMetricENS_7NumTypeILb1EtLj2EEEE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit: ; preds = %bb.v
  %.not.i178 = icmp samesign ult i32 %i.db, %.sroa.4.8.extract.trunc.i
  br i1 %.not.i178, label %bb.y, label %_ZNK2OT7ArrayOfINS_16VertOriginMetricENS_7NumTypeILb1EtLj2EEEEixEi.exit, !prof !268

bb.y:                                             ; preds = %_ZNK2OT13SortedArrayOfINS_16VertOriginMetricENS_7NumTypeILb1EtLj2EEEE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.dc
  %.pre.pre = load i32, ptr %.0152350, align 4, !tbaa !324
  br label %_ZNK2OT7ArrayOfINS_16VertOriginMetricENS_7NumTypeILb1EtLj2EEEEixEi.exit

_ZNK2OT7ArrayOfINS_16VertOriginMetricENS_7NumTypeILb1EtLj2EEEEixEi.exit: ; preds = %_ZNK2OT13SortedArrayOfINS_16VertOriginMetricENS_7NumTypeILb1EtLj2EEEE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit, %bb.y
  %.pre = phi i32 [ %.pre.pre, %bb.y ], [ %i.ck, %_ZNK2OT13SortedArrayOfINS_16VertOriginMetricENS_7NumTypeILb1EtLj2EEEE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit ]
  %.0.i179 = phi ptr [ %i.dl, %bb.y ], [ @_hb_NullPool, %_ZNK2OT13SortedArrayOfINS_16VertOriginMetricENS_7NumTypeILb1EtLj2EEEE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit ]
  %i.dm = getelementptr inbounds nuw i8, ptr %.0.i179, i64 2
  br label %_ZNK2OT4VORG12get_y_originEj.exit171

_ZNK2OT4VORG12get_y_originEj.exit171:             ; preds = %bb.x, %bb.t, %_ZNK2OT7ArrayOfINS_16VertOriginMetricENS_7NumTypeILb1EtLj2EEEEixEi.exit
  %.sink.in = phi ptr [ %i.dm, %_ZNK2OT7ArrayOfINS_16VertOriginMetricENS_7NumTypeILb1EtLj2EEEEixEi.exit ], [ %i.cg, %bb.t ], [ %i.cg, %bb.x ]
  %i.dn = phi i32 [ %.pre, %_ZNK2OT7ArrayOfINS_16VertOriginMetricENS_7NumTypeILb1EtLj2EEEEixEi.exit ], [ %i.ck, %bb.t ], [ %i.ck, %bb.x ] ; 3 uses
  %.sink = load i16, ptr %.sink.in, align 1, !tbaa !283
  %i.do = tail call noundef i16 @llvm.bswap.i16(i16 %.sink)
  %i.dp = sitofp i16 %i.do to float
  %i.dq = load float, ptr %i.ch, align 4, !tbaa !618
  %i.dr = fmul float %i.dq, %i.dp
  %i.ds = fadd float %i.dr, 5.000000e-01
  %i.dt = tail call noundef float @llvm.floor.f32(float %i.ds)
  %i.du = fptosi float %i.dt to i32               ; 4 uses
  %i.dv = load i32, ptr %i.cd, align 4, !tbaa !954
  %i.dw = icmp slt i32 %i.dv, 0
  %i.dx = sub nsw i32 0, %i.du
  %i.dy = select i1 %i.dw, i32 %i.dx, i32 %i.du   ; 2 uses
  %i.dz = or i32 %i.dy, %i.dn
  %.not.i180 = icmp ult i32 %i.dz, 1048576
  br i1 %.not.i180, label %bb.z, label %_ZN10hb_cache_tILj20ELj20ELj8ELb1EE3setEjj.exit, !prof !268

bb.z:                                             ; preds = %_ZNK2OT4VORG12get_y_originEj.exit171
  %i.ea = and i32 %i.dn, 255
  %i.eb = shl nuw i32 %i.dn, 12
  %i.ec = and i32 %i.eb, -1048576
  %i.ed = or disjoint i32 %i.dy, %i.ec
  %i.ee = zext nneg i32 %i.ea to i64
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %.1.ph.i, i64 %i.ee
  store atomic i32 %i.ed, ptr %i.ef monotonic, align 4
  br label %_ZN10hb_cache_tILj20ELj20ELj8ELb1EE3setEjj.exit

_ZN10hb_cache_tILj20ELj20ELj8ELb1EE3setEjj.exit:  ; preds = %bb.z, %_ZNK2OT4VORG12get_y_originEj.exit171, %bb.s
  %.0147 = phi i32 [ %i.cw, %bb.s ], [ %i.du, %_ZNK2OT4VORG12get_y_originEj.exit171 ], [ %i.du, %bb.z ]
  store i32 %.0147, ptr %.0155349, align 4, !tbaa !324
  %i.eg = getelementptr inbounds nuw i8, ptr %.0152350, i64 %i.ci
  %i.eh = getelementptr inbounds nuw i8, ptr %.0155349, i64 %i.cj
  %i.ei = add nuw i32 %.0148351, 1                ; 2 uses
  %exitcond384.not = icmp eq i32 %i.ei, %2
  br i1 %exitcond384.not, label %_ZNK12hb_ot_font_t14origin_cache_t22release_varStore_cacheEPN2OT17hb_scalar_cache_tE.exit, label %bb.q, !llvm.loop !3543

bb.aa:                                            ; preds = %bb.p
  %i.ej = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 4 uses
  %i.ek = load atomic ptr, ptr %i.ej acquire, align 8 ; 2 uses
  %.not14.i.i.i181 = icmp eq ptr %i.ek, null
  br i1 %.not14.i.i.i181, label %.lr.ph.i.i.i183, label %_ZNK16hb_lazy_loader_tIN2OT18vmtx_accelerator_tE21hb_face_lazy_loader_tIS1_Lj12EE9hb_face_tLj12ES1_EptEv.exit, !prof !265

.lr.ph.i.i.i183:                                  ; preds = %bb.aa, %bb.ae
  %i.el = load ptr, ptr %i.a, align 8, !tbaa !266
  %.not.i.i.i.i184 = icmp eq ptr %i.el, null
  br i1 %.not.i.i.i.i184, label %_ZNK16hb_lazy_loader_tIN2OT18vmtx_accelerator_tE21hb_face_lazy_loader_tIS1_Lj12EE9hb_face_tLj12ES1_EptEv.exit, label %bb.ab, !prof !267

bb.ab:                                            ; preds = %.lr.ph.i.i.i183
  %i.em = tail call noundef ptr @_ZNK17hb_data_wrapper_tI9hb_face_tLj12EE11call_createIN2OT18vmtx_accelerator_tE21hb_face_lazy_loader_tIS4_Lj12EEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) %i.ej) ; 2 uses
  %.not10.i.i.i185 = icmp eq ptr %i.em, null
  br i1 %.not10.i.i.i185, label %bb.ac, label %bb.ad, !prof !267

bb.ac:                                            ; preds = %bb.ab
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.07.i.i.i186 = phi ptr [ @_hb_NullPool, %bb.ac ], [ %i.em, %bb.ab ] ; 3 uses
  %i.en = cmpxchg weak ptr %i.ej, ptr null, ptr %.07.i.i.i186 acq_rel monotonic, align 8
  %i.eo = extractvalue { ptr, i1 } %i.en, 1
  br i1 %i.eo, label %_ZNK16hb_lazy_loader_tIN2OT18vmtx_accelerator_tE21hb_face_lazy_loader_tIS1_Lj12EE9hb_face_tLj12ES1_EptEv.exit, label %bb.ae, !prof !268

bb.ae:                                            ; preds = %bb.ad
  tail call void @_ZN16hb_lazy_loader_tIN2OT18vmtx_accelerator_tE21hb_face_lazy_loader_tIS1_Lj12EE9hb_face_tLj12ES1_E10do_destroyEPS1_(ptr noundef nonnull %.07.i.i.i186)
  %i.ep = load atomic ptr, ptr %i.ej acquire, align 8 ; 2 uses
  %.not.i.i.i187 = icmp eq ptr %i.ep, null
  br i1 %.not.i.i.i187, label %.lr.ph.i.i.i183, label %_ZNK16hb_lazy_loader_tIN2OT18vmtx_accelerator_tE21hb_face_lazy_loader_tIS1_Lj12EE9hb_face_tLj12ES1_EptEv.exit, !prof !269

_ZNK16hb_lazy_loader_tIN2OT18vmtx_accelerator_tE21hb_face_lazy_loader_tIS1_Lj12EE9hb_face_tLj12ES1_EptEv.exit: ; preds = %.lr.ph.i.i.i183, %bb.ad, %bb.ae, %bb.aa
  %.19.ph.i.i.i182 = phi ptr [ %i.ek, %bb.aa ], [ @_hb_NullPool, %.lr.ph.i.i.i183 ], [ %i.ep, %bb.ae ], [ %.07.i.i.i186, %bb.ad ]
  %i.eq = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i182, i64 32
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !272 ; 2 uses
  %.not.i.i.i.i188 = icmp eq ptr %i.er, null
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i188, ptr @_hb_NullPool, ptr %i.er ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i, i64 16
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !275
  %i.eu = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i, i64 24
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !276
  %i.ew = icmp ult i32 %i.ev, 24
  %spec.select.i.i1.i.i = select i1 %i.ew, ptr @_hb_NullPool, ptr %i.et ; 5 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i, i64 4 ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 1, !tbaa !278 ; 2 uses
  %i.ez = icmp eq i32 %i.ey, 0
  %i.fa = tail call i32 @llvm.bswap.i32(i32 %i.ey)
  %i.fb = zext i32 %i.fa to i64
  %i.fc = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i, i64 %i.fb
  %.0.i.i = select i1 %i.ez, ptr @_hb_NullPool, ptr %i.fc, !prof !267 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  br label %_ZNK2OT18ItemVariationStore12create_cacheEv.exit.i

_ZNK2OT18ItemVariationStore12create_cacheEv.exit.i: ; preds = %bb.ai, %_ZNK16hb_lazy_loader_tIN2OT18vmtx_accelerator_tE21hb_face_lazy_loader_tIS1_Lj12EE9hb_face_tLj12ES1_EptEv.exit
  %i.fe = load atomic ptr, ptr %i.fd acquire, align 8 ; 3 uses
  %.not.i189 = icmp eq ptr %i.fe, null
  br i1 %.not.i189, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %_ZNK2OT18ItemVariationStore12create_cacheEv.exit.i
  %i.ff = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 2
  %i.fg = load i32, ptr %i.ff, align 1, !tbaa !278 ; 2 uses
  %i.fh = icmp eq i32 %i.fg, 0
  %i.fi = tail call i32 @llvm.bswap.i32(i32 %i.fg)
  %i.fj = zext i32 %i.fi to i64
  %i.fk = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.fj
  %.0.i.i.i.i = select i1 %i.fh, ptr @_hb_NullPool, ptr %i.fk, !prof !267
  %i.fl = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 2
  %i.fm = load i16, ptr %i.fl, align 1, !tbaa !283 ; 2 uses
  %i.fn = tail call noundef i16 @llvm.bswap.i16(i16 %i.fm) ; 3 uses
  %i.fo = zext i16 %i.fn to i32                   ; 2 uses
  %.not.i.i.i191 = icmp eq i16 %i.fm, 0
  br i1 %.not.i.i.i191, label %_ZNK12hb_ot_font_t14origin_cache_t22acquire_varStore_cacheERKN2OT18ItemVariationStoreE.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fp = zext i16 %i.fn to i64                   ; 5 uses
  %i.fq = shl nuw nsw i64 %i.fp, 2
  %i.fr = add nuw nsw i64 %i.fq, 4
  %i.fs = tail call noalias noundef ptr @malloc(i64 noundef %i.fr) #65 ; 6 uses
  %.not16.i.i.i = icmp eq ptr %i.fs, null
  br i1 %.not16.i.i.i, label %_ZNK12hb_ot_font_t14origin_cache_t22acquire_varStore_cacheERKN2OT18ItemVariationStoreE.exit, label %bb.ah, !prof !267

bb.ah:                                            ; preds = %bb.ag
  store i32 %i.fo, ptr %i.fs, align 4, !tbaa !480
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 4 ; 12 uses
  %i.fu = icmp ugt i16 %i.fn, 3
  br i1 %i.fu, label %.lr.ph.i25.i.i.i.preheader, label %.preheader.i17.i.i.i

.lr.ph.i25.i.i.i.preheader:                       ; preds = %bb.ah
  %i.fv = add nsw i64 %i.fp, -4                   ; 2 uses
  %i.fw = lshr i64 %i.fv, 2                       ; 2 uses
  %i.fx = add nuw nsw i64 %i.fw, 1                ; 2 uses
  %i.fy = icmp eq i64 %i.fw, 0
  br i1 %i.fy, label %.lr.ph.i25.i.i.i.epil.preheader, label %.lr.ph.i25.i.i.i.preheader.new

.lr.ph.i25.i.i.i.preheader.new:                   ; preds = %.lr.ph.i25.i.i.i.preheader
  %unroll_iter507 = and i64 %i.fx, 9223372036854775806
  br label %.lr.ph.i25.i.i.i

.preheader.i17.i.loopexit.i.i.unr-lcssa:          ; preds = %.lr.ph.i25.i.i.i
  %i.fz = and i64 %i.fv, 4
  %lcmp.mod504.not.not = icmp eq i64 %i.fz, 0
  br i1 %lcmp.mod504.not.not, label %.lr.ph.i25.i.i.i.epil.preheader, label %.preheader.i17.i.loopexit.i.i

.lr.ph.i25.i.i.i.epil.preheader:                  ; preds = %.preheader.i17.i.loopexit.i.i.unr-lcssa, %.lr.ph.i25.i.i.i.preheader
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i25.i.i.i.preheader ], [ %indvars.iv.next.i.i.1, %.preheader.i17.i.loopexit.i.i.unr-lcssa ] ; 2 uses
  %lcmp.mod506 = trunc i64 %i.fx to i1
  tail call void @llvm.assume(i1 %lcmp.mod506)
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %indvars.iv.i.i.epil.init ; 4 uses
  store atomic i32 -2147483648, ptr %i.ga monotonic, align 4
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 4
  store atomic i32 -2147483648, ptr %i.gb monotonic, align 4
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  store atomic i32 -2147483648, ptr %i.gc monotonic, align 4
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 12
  store atomic i32 -2147483648, ptr %i.gd monotonic, align 4
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil.init, 4
  br label %.preheader.i17.i.loopexit.i.i

.preheader.i17.i.loopexit.i.i:                    ; preds = %.preheader.i17.i.loopexit.i.i.unr-lcssa, %.lr.ph.i25.i.i.i.epil.preheader
  %indvars.iv.next.i.i.lcssa = phi i64 [ %indvars.iv.next.i.i.1, %.preheader.i17.i.loopexit.i.i.unr-lcssa ], [ %indvars.iv.next.i.i.epil, %.lr.ph.i25.i.i.i.epil.preheader ]
  %i.ge = trunc nuw nsw i64 %indvars.iv.next.i.i.lcssa to i32
  br label %.preheader.i17.i.i.i

.preheader.i17.i.i.i:                             ; preds = %.preheader.i17.i.loopexit.i.i, %bb.ah
  %.0.lcssa.i18.i.i.i = phi i32 [ 0, %bb.ah ], [ %i.ge, %.preheader.i17.i.loopexit.i.i ] ; 2 uses
  %i.gf = icmp samesign ult i32 %.0.lcssa.i18.i.i.i, %i.fo
  br i1 %i.gf, label %.lr.ph18.preheader.i19.i.i.i, label %_ZNK12hb_ot_font_t14origin_cache_t22acquire_varStore_cacheERKN2OT18ItemVariationStoreE.exit

.lr.ph18.preheader.i19.i.i.i:                     ; preds = %.preheader.i17.i.i.i
  %i.gg = zext nneg i32 %.0.lcssa.i18.i.i.i to i64 ; 4 uses
  %i.gh = sub nsw i64 %i.fp, %i.gg
  %xtraiter509 = and i64 %i.gh, 7                 ; 2 uses
  %lcmp.mod510.not = icmp eq i64 %xtraiter509, 0
  br i1 %lcmp.mod510.not, label %.lr.ph18.i21.i.i.i.prol.loopexit, label %.lr.ph18.i21.i.i.i.prol

.lr.ph18.i21.i.i.i.prol:                          ; preds = %.lr.ph18.preheader.i19.i.i.i, %.lr.ph18.i21.i.i.i.prol
  %indvars.iv.i22.i.i.i.prol = phi i64 [ %indvars.iv.next.i23.i.i.i.prol, %.lr.ph18.i21.i.i.i.prol ], [ %i.gg, %.lr.ph18.preheader.i19.i.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph18.i21.i.i.i.prol ], [ 0, %.lr.ph18.preheader.i19.i.i.i ]
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %indvars.iv.i22.i.i.i.prol
  store atomic i32 -2147483648, ptr %i.gi monotonic, align 4
  %indvars.iv.next.i23.i.i.i.prol = add nuw nsw i64 %indvars.iv.i22.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter509
  br i1 %prol.iter.cmp.not, label %.lr.ph18.i21.i.i.i.prol.loopexit, label %.lr.ph18.i21.i.i.i.prol, !llvm.loop !3544

.lr.ph18.i21.i.i.i.prol.loopexit:                 ; preds = %.lr.ph18.i21.i.i.i.prol, %.lr.ph18.preheader.i19.i.i.i
  %indvars.iv.i22.i.i.i.unr = phi i64 [ %i.gg, %.lr.ph18.preheader.i19.i.i.i ], [ %indvars.iv.next.i23.i.i.i.prol, %.lr.ph18.i21.i.i.i.prol ]
  %i.gj = sub nsw i64 %i.gg, %i.fp
  %i.gk = icmp ugt i64 %i.gj, -8
  br i1 %i.gk, label %_ZNK12hb_ot_font_t14origin_cache_t22acquire_varStore_cacheERKN2OT18ItemVariationStoreE.exit, label %.lr.ph18.i21.i.i.i

.lr.ph.i25.i.i.i:                                 ; preds = %.lr.ph.i25.i.i.i, %.lr.ph.i25.i.i.i.preheader.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i25.i.i.i.preheader.new ], [ %indvars.iv.next.i.i.1, %.lr.ph.i25.i.i.i ] ; 3 uses
  %niter508 = phi i64 [ 0, %.lr.ph.i25.i.i.i.preheader.new ], [ %niter508.next.1, %.lr.ph.i25.i.i.i ]
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %indvars.iv.i.i ; 4 uses
  store atomic i32 -2147483648, ptr %i.gl monotonic, align 4
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 4
  store atomic i32 -2147483648, ptr %i.gm monotonic, align 4
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  store atomic i32 -2147483648, ptr %i.gn monotonic, align 4
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 12
  store atomic i32 -2147483648, ptr %i.go monotonic, align 4
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %indvars.iv.i.i ; 4 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  store atomic i32 -2147483648, ptr %i.gq monotonic, align 4
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 20
  store atomic i32 -2147483648, ptr %i.gr monotonic, align 4
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gp, i64 24
  store atomic i32 -2147483648, ptr %i.gs monotonic, align 4
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gp, i64 28
  store atomic i32 -2147483648, ptr %i.gt monotonic, align 4
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 8 ; 3 uses
  %niter508.next.1 = add i64 %niter508, 2         ; 2 uses
  %niter508.ncmp.1.not = icmp eq i64 %niter508.next.1, %unroll_iter507
  br i1 %niter508.ncmp.1.not, label %.preheader.i17.i.loopexit.i.i.unr-lcssa, label %.lr.ph.i25.i.i.i, !llvm.loop !5

.lr.ph18.i21.i.i.i:                               ; preds = %.lr.ph18.i21.i.i.i.prol.loopexit, %.lr.ph18.i21.i.i.i
  %indvars.iv.i22.i.i.i = phi i64 [ %indvars.iv.next.i23.i.i.i.7, %.lr.ph18.i21.i.i.i ], [ %indvars.iv.i22.i.i.i.unr, %.lr.ph18.i21.i.i.i.prol.loopexit ] ; 9 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %indvars.iv.i22.i.i.i
  store atomic i32 -2147483648, ptr %i.gu monotonic, align 4
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %indvars.iv.i22.i.i.i
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 4
  store atomic i32 -2147483648, ptr %i.gw monotonic, align 4
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %indvars.iv.i22.i.i.i
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  store atomic i32 -2147483648, ptr %i.gy monotonic, align 4
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %indvars.iv.i22.i.i.i
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 12
  store atomic i32 -2147483648, ptr %i.ha monotonic, align 4
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %indvars.iv.i22.i.i.i
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  store atomic i32 -2147483648, ptr %i.hc monotonic, align 4
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %indvars.iv.i22.i.i.i
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 20
  store atomic i32 -2147483648, ptr %i.he monotonic, align 4
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %indvars.iv.i22.i.i.i
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 24
  store atomic i32 -2147483648, ptr %i.hg monotonic, align 4
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %indvars.iv.i22.i.i.i
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 28
  store atomic i32 -2147483648, ptr %i.hi monotonic, align 4
  %indvars.iv.next.i23.i.i.i.7 = add nuw nsw i64 %indvars.iv.i22.i.i.i, 8 ; 2 uses
  %exitcond.not.i24.i.i.i.7 = icmp eq i64 %indvars.iv.next.i23.i.i.i.7, %i.fp
  br i1 %exitcond.not.i24.i.i.i.7, label %_ZNK12hb_ot_font_t14origin_cache_t22acquire_varStore_cacheERKN2OT18ItemVariationStoreE.exit, label %.lr.ph18.i21.i.i.i, !llvm.loop !6

bb.ai:                                            ; preds = %_ZNK2OT18ItemVariationStore12create_cacheEv.exit.i
  %i.hj = cmpxchg weak ptr %i.fd, ptr %i.fe, ptr null acq_rel monotonic, align 8
  %i.hk = extractvalue { ptr, i1 } %i.hj, 1
  br i1 %i.hk, label %_ZNK12hb_ot_font_t14origin_cache_t22acquire_varStore_cacheERKN2OT18ItemVariationStoreE.exit, label %_ZNK2OT18ItemVariationStore12create_cacheEv.exit.i

_ZNK12hb_ot_font_t14origin_cache_t22acquire_varStore_cacheERKN2OT18ItemVariationStoreE.exit: ; preds = %bb.ai, %.lr.ph18.i21.i.i.i.prol.loopexit, %.lr.ph18.i21.i.i.i, %bb.af, %bb.ag, %.preheader.i17.i.i.i
  %.1.ph.i190 = phi ptr [ @_hb_NullPool, %bb.af ], [ %i.fs, %.lr.ph18.i21.i.i.i.prol.loopexit ], [ %i.fs, %.preheader.i17.i.i.i ], [ @_hb_NullPool, %bb.ag ], [ %i.fs, %.lr.ph18.i21.i.i.i ], [ %i.fe, %bb.ai ] ; 4 uses
  br i1 %.not368444, label %._crit_edge357, label %.lr.ph356

.lr.ph356:                                        ; preds = %_ZNK12hb_ot_font_t14origin_cache_t22acquire_varStore_cacheERKN2OT18ItemVariationStoreE.exit
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 6
  %i.hn = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 8 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 4 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.hr = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i, i64 20
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.ht = zext i32 %4 to i64
  %i.hu = zext i32 %8 to i64
  br label %bb.ak

._crit_edge357:                                   ; preds = %_ZN10hb_cache_tILj20ELj20ELj8ELb1EE3setEjj.exit222, %_ZNK12hb_ot_font_t14origin_cache_t22acquire_varStore_cacheERKN2OT18ItemVariationStoreE.exit
  %i.hv = cmpxchg weak ptr %i.fd, ptr null, ptr %.1.ph.i190 acq_rel monotonic, align 8
  %i.hw = extractvalue { ptr, i1 } %i.hv, 1
  %.not.i.i.i193 = icmp eq ptr %.1.ph.i190, @_hb_NullPool
  %or.cond.i = or i1 %.not.i.i.i193, %i.hw
  br i1 %or.cond.i, label %_ZNK12hb_ot_font_t14origin_cache_t22release_varStore_cacheEPN2OT17hb_scalar_cache_tE.exit, label %bb.aj

bb.aj:                                            ; preds = %._crit_edge357
  tail call void @free(ptr noundef nonnull %.1.ph.i190) #63
  br label %_ZNK12hb_ot_font_t14origin_cache_t22release_varStore_cacheEPN2OT17hb_scalar_cache_tE.exit

bb.ak:                                            ; preds = %.lr.ph356, %_ZN10hb_cache_tILj20ELj20ELj8ELb1EE3setEjj.exit222
  %.0146355 = phi i32 [ 0, %.lr.ph356 ], [ %i.lg, %_ZN10hb_cache_tILj20ELj20ELj8ELb1EE3setEjj.exit222 ]
  %.1153354 = phi ptr [ %3, %.lr.ph356 ], [ %i.le, %_ZN10hb_cache_tILj20ELj20ELj8ELb1EE3setEjj.exit222 ] ; 4 uses
  %.1156353 = phi ptr [ %7, %.lr.ph356 ], [ %i.lf, %_ZN10hb_cache_tILj20ELj20ELj8ELb1EE3setEjj.exit222 ] ; 2 uses
  %i.hx = load i32, ptr %.1153354, align 4, !tbaa !324 ; 4 uses
  %i.hy = and i32 %i.hx, 255
  %i.hz = zext nneg i32 %i.hy to i64
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %.1.ph.i, i64 %i.hz
  %i.ib = load atomic i32, ptr %i.ia monotonic, align 4 ; 3 uses
  %i.ic = icmp eq i32 %i.ib, -1
  br i1 %i.ic, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.id = lshr i32 %i.ib, 20
  %i.ie = lshr i32 %i.hx, 8
  %.not.i194 = icmp eq i32 %i.id, %i.ie
  br i1 %.not.i194, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.if = and i32 %i.ib, 1048575                  ; 2 uses
  %i.ig = load i32, ptr %i.hl, align 4, !tbaa !954
  %i.ih = icmp slt i32 %i.ig, 0
  %i.ii = sub nsw i32 0, %i.if
  %i.ij = select i1 %i.ih, i32 %i.ii, i32 %i.if
  br label %_ZN10hb_cache_tILj20ELj20ELj8ELb1EE3setEjj.exit222

bb.an:                                            ; preds = %bb.al, %bb.ak
  %i.ik = load i16, ptr %i.hm, align 1, !tbaa !283 ; 2 uses
  %.not1.i.i.i.not.i198 = icmp eq i16 %i.ik, 0
  br i1 %.not1.i.i.i.not.i198, label %_ZNK2OT4VORG12get_y_originEj.exit, label %.lr.ph.preheader.i.i.i.i199

.lr.ph.preheader.i.i.i.i199:                      ; preds = %bb.an
  %i.il = tail call noundef i16 @llvm.bswap.i16(i16 %i.ik)
  %.sroa.4.8.extract.trunc.i200 = zext i16 %i.il to i32 ; 2 uses
  %i.im = add nsw i32 %.sroa.4.8.extract.trunc.i200, -1
  br label %.lr.ph.i.i.i.i201

.lr.ph.i.i.i.i201:                                ; preds = %bb.ar, %.lr.ph.preheader.i.i.i.i199
  %.0203.i.i.i.i202 = phi i32 [ %.2.i.i.i.i206, %bb.ar ], [ %i.im, %.lr.ph.preheader.i.i.i.i199 ] ; 2 uses
  %.0212.i.i.i.i203 = phi i32 [ %.223.i.i.i.i205, %bb.ar ], [ 0, %.lr.ph.preheader.i.i.i.i199 ] ; 2 uses
  %i.in = add i32 %.0212.i.i.i.i203, %.0203.i.i.i.i202
  %i.io = lshr i32 %i.in, 1                       ; 4 uses
  %i.ip = zext nneg i32 %i.io to i64              ; 2 uses
  %i.iq = shl nuw nsw i64 %i.ip, 2
  %i.ir = getelementptr inbounds nuw i8, ptr %i.hn, i64 %i.iq
  %i.is = load i16, ptr %i.ir, align 1, !tbaa !283
  %i.it = tail call noundef i16 @llvm.bswap.i16(i16 %i.is)
  %i.iu = zext i16 %i.it to i32                   ; 2 uses
  %i.iv = icmp ult i32 %i.hx, %i.iu
  br i1 %i.iv, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.lr.ph.i.i.i.i201
  %i.iw = add nsw i32 %i.io, -1
  br label %bb.ar

bb.ap:                                            ; preds = %.lr.ph.i.i.i.i201
  %.not28.i.i.i.i204 = icmp eq i32 %i.hx, %i.iu
  br i1 %.not28.i.i.i.i204, label %_ZNK2OT13SortedArrayOfINS_16VertOriginMetricENS_7NumTypeILb1EtLj2EEEE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit212, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ix = add nuw nsw i32 %i.io, 1
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ao
  %.223.i.i.i.i205 = phi i32 [ %i.ix, %bb.aq ], [ %.0212.i.i.i.i203, %bb.ao ] ; 2 uses
  %.2.i.i.i.i206 = phi i32 [ %.0203.i.i.i.i202, %bb.aq ], [ %i.iw, %bb.ao ] ; 2 uses
  %.not.not.i.i.i.i207 = icmp sgt i32 %.223.i.i.i.i205, %.2.i.i.i.i206
  br i1 %.not.not.i.i.i.i207, label %_ZNK2OT4VORG12get_y_originEj.exit, label %.lr.ph.i.i.i.i201, !llvm.loop !3542

_ZNK2OT13SortedArrayOfINS_16VertOriginMetricENS_7NumTypeILb1EtLj2EEEE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit212: ; preds = %bb.ap
  %.not.i213 = icmp samesign ult i32 %i.io, %.sroa.4.8.extract.trunc.i200
  br i1 %.not.i213, label %bb.as, label %_ZNK2OT7ArrayOfINS_16VertOriginMetricENS_7NumTypeILb1EtLj2EEEEixEi.exit215, !prof !268

bb.as:                                            ; preds = %_ZNK2OT13SortedArrayOfINS_16VertOriginMetricENS_7NumTypeILb1EtLj2EEEE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit212
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %i.ip
  br label %_ZNK2OT7ArrayOfINS_16VertOriginMetricENS_7NumTypeILb1EtLj2EEEEixEi.exit215

_ZNK2OT7ArrayOfINS_16VertOriginMetricENS_7NumTypeILb1EtLj2EEEEixEi.exit215: ; preds = %_ZNK2OT13SortedArrayOfINS_16VertOriginMetricENS_7NumTypeILb1EtLj2EEEE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit212, %bb.as
  %.0.i214 = phi ptr [ %i.iy, %bb.as ], [ @_hb_NullPool, %_ZNK2OT13SortedArrayOfINS_16VertOriginMetricENS_7NumTypeILb1EtLj2EEEE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit212 ]
  %i.iz = getelementptr inbounds nuw i8, ptr %.0.i214, i64 2
  br label %_ZNK2OT4VORG12get_y_originEj.exit

_ZNK2OT4VORG12get_y_originEj.exit:                ; preds = %bb.ar, %bb.an, %_ZNK2OT7ArrayOfINS_16VertOriginMetricENS_7NumTypeILb1EtLj2EEEEixEi.exit215
  %.sink463.in = phi ptr [ %i.iz, %_ZNK2OT7ArrayOfINS_16VertOriginMetricENS_7NumTypeILb1EtLj2EEEEixEi.exit215 ], [ %i.ho, %bb.an ], [ %i.ho, %bb.ar ]
  %.sink463 = load i16, ptr %.sink463.in, align 1, !tbaa !283
  %i.ja = tail call noundef i16 @llvm.bswap.i16(i16 %.sink463)
  %i.jb = sitofp i16 %i.ja to float               ; 4 uses
  %i.jc = load ptr, ptr %i.hp, align 8, !tbaa !309
  %i.jd = load i32, ptr %i.hq, align 4, !tbaa !310
  %i.je = load i32, ptr %i.hr, align 1, !tbaa !278 ; 2 uses
  %.not.i = icmp eq i32 %i.je, 0
end_hunk_26
begin_hunk_27_@_ZL25hb_ot_get_glyph_v_originsP9hb_font_tPvjPKjjPijS4_jS1_:bb.a

bb.ax:                                            ; preds = %bb.o
  %i.lj = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 4 uses
  %i.lk = load atomic ptr, ptr %i.lj acquire, align 8 ; 2 uses
  %.not14.i.i.i224 = icmp eq ptr %i.lk, null
  br i1 %.not14.i.i.i224, label %.lr.ph.i.i.i226, label %_ZNK16hb_lazy_loader_tIN2OT18vmtx_accelerator_tE21hb_face_lazy_loader_tIS1_Lj12EE9hb_face_tLj12ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit, !prof !265

.lr.ph.i.i.i226:                                  ; preds = %bb.ax, %bb.bb
  %i.ll = load ptr, ptr %i.a, align 8, !tbaa !266
  %.not.i.i.i.i227 = icmp eq ptr %i.ll, null
  br i1 %.not.i.i.i.i227, label %_ZNK16hb_lazy_loader_tIN2OT18vmtx_accelerator_tE21hb_face_lazy_loader_tIS1_Lj12EE9hb_face_tLj12ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit, label %bb.ay, !prof !267

bb.ay:                                            ; preds = %.lr.ph.i.i.i226
  %i.lm = tail call noundef ptr @_ZNK17hb_data_wrapper_tI9hb_face_tLj12EE11call_createIN2OT18vmtx_accelerator_tE21hb_face_lazy_loader_tIS4_Lj12EEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) %i.lj) ; 2 uses
  %.not10.i.i.i228 = icmp eq ptr %i.lm, null
  br i1 %.not10.i.i.i228, label %bb.az, label %bb.ba, !prof !267

bb.az:                                            ; preds = %bb.ay
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.07.i.i.i229 = phi ptr [ @_hb_NullPool, %bb.az ], [ %i.lm, %bb.ay ] ; 3 uses
  %i.ln = cmpxchg weak ptr %i.lj, ptr null, ptr %.07.i.i.i229 acq_rel monotonic, align 8
  %i.lo = extractvalue { ptr, i1 } %i.ln, 1
  br i1 %i.lo, label %_ZNK16hb_lazy_loader_tIN2OT18vmtx_accelerator_tE21hb_face_lazy_loader_tIS1_Lj12EE9hb_face_tLj12ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit, label %bb.bb, !prof !268

bb.bb:                                            ; preds = %bb.ba
  tail call void @_ZN16hb_lazy_loader_tIN2OT18vmtx_accelerator_tE21hb_face_lazy_loader_tIS1_Lj12EE9hb_face_tLj12ES1_E10do_destroyEPS1_(ptr noundef nonnull %.07.i.i.i229)
  %i.lp = load atomic ptr, ptr %i.lj acquire, align 8 ; 2 uses
  %.not.i.i.i230 = icmp eq ptr %i.lp, null
  br i1 %.not.i.i.i230, label %.lr.ph.i.i.i226, label %_ZNK16hb_lazy_loader_tIN2OT18vmtx_accelerator_tE21hb_face_lazy_loader_tIS1_Lj12EE9hb_face_tLj12ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit, !prof !269

_ZNK16hb_lazy_loader_tIN2OT18vmtx_accelerator_tE21hb_face_lazy_loader_tIS1_Lj12EE9hb_face_tLj12ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit: ; preds = %.lr.ph.i.i.i226, %bb.ba, %bb.bb, %bb.ax
  %.19.ph.i.i.i225 = phi ptr [ %i.lk, %bb.ax ], [ @_hb_NullPool, %.lr.ph.i.i.i226 ], [ %i.lp, %bb.bb ], [ %.07.i.i.i229, %bb.ba ]
  %i.lq = getelementptr inbounds nuw i8, ptr %i.a, i64 120 ; 4 uses
  %i.lr = load atomic ptr, ptr %i.lq acquire, align 8 ; 2 uses
  %.not14.i.i.i231 = icmp eq ptr %i.lr, null
  br i1 %.not14.i.i.i231, label %.lr.ph.i.i.i233, label %_ZNK16hb_lazy_loader_tIN2OT18glyf_accelerator_tE21hb_face_lazy_loader_tIS1_Lj15EE9hb_face_tLj15ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit, !prof !265

.lr.ph.i.i.i233:                                  ; preds = %_ZNK16hb_lazy_loader_tIN2OT18vmtx_accelerator_tE21hb_face_lazy_loader_tIS1_Lj12EE9hb_face_tLj12ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit, %bb.bf
  %i.ls = load ptr, ptr %i.a, align 8, !tbaa !266
  %.not.i.i.i.i234 = icmp eq ptr %i.ls, null
  br i1 %.not.i.i.i.i234, label %_ZNK16hb_lazy_loader_tIN2OT18glyf_accelerator_tE21hb_face_lazy_loader_tIS1_Lj15EE9hb_face_tLj15ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit, label %bb.bc, !prof !267

bb.bc:                                            ; preds = %.lr.ph.i.i.i233
  %i.lt = tail call noundef ptr @_ZNK17hb_data_wrapper_tI9hb_face_tLj15EE11call_createIN2OT18glyf_accelerator_tE21hb_face_lazy_loader_tIS4_Lj15EEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) %i.lq) ; 2 uses
  %.not10.i.i.i235 = icmp eq ptr %i.lt, null
  br i1 %.not10.i.i.i235, label %bb.bd, label %bb.be, !prof !267

bb.bd:                                            ; preds = %bb.bc
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.07.i.i.i236 = phi ptr [ @_hb_NullPool, %bb.bd ], [ %i.lt, %bb.bc ] ; 3 uses
  %i.lu = cmpxchg weak ptr %i.lq, ptr null, ptr %.07.i.i.i236 acq_rel monotonic, align 8
  %i.lv = extractvalue { ptr, i1 } %i.lu, 1
  br i1 %i.lv, label %_ZNK16hb_lazy_loader_tIN2OT18glyf_accelerator_tE21hb_face_lazy_loader_tIS1_Lj15EE9hb_face_tLj15ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit, label %bb.bf, !prof !268

bb.bf:                                            ; preds = %bb.be
  tail call void @_ZN16hb_lazy_loader_tIN2OT18glyf_accelerator_tE21hb_face_lazy_loader_tIS1_Lj15EE9hb_face_tLj15ES1_E10do_destroyEPS1_(ptr noundef nonnull %.07.i.i.i236)
  %i.lw = load atomic ptr, ptr %i.lq acquire, align 8 ; 2 uses
  %.not.i.i.i237 = icmp eq ptr %i.lw, null
  br i1 %.not.i.i.i237, label %.lr.ph.i.i.i233, label %_ZNK16hb_lazy_loader_tIN2OT18glyf_accelerator_tE21hb_face_lazy_loader_tIS1_Lj15EE9hb_face_tLj15ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit, !prof !269

_ZNK16hb_lazy_loader_tIN2OT18glyf_accelerator_tE21hb_face_lazy_loader_tIS1_Lj15EE9hb_face_tLj15ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit: ; preds = %bb.bf, %bb.be, %.lr.ph.i.i.i233, %_ZNK16hb_lazy_loader_tIN2OT18vmtx_accelerator_tE21hb_face_lazy_loader_tIS1_Lj12EE9hb_face_tLj12ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit
  %.19.ph.i.i.i232 = phi ptr [ %i.lr, %_ZNK16hb_lazy_loader_tIN2OT18vmtx_accelerator_tE21hb_face_lazy_loader_tIS1_Lj12EE9hb_face_tLj12ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit ], [ @_hb_NullPool, %.lr.ph.i.i.i233 ], [ %i.lw, %bb.bf ], [ %.07.i.i.i236, %bb.be ] ; 3 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i225, i64 4
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !1553
  %.not333 = icmp eq i32 %i.ly, 0
  br i1 %.not333, label %_ZNK16hb_lazy_loader_tIN2OT18glyf_accelerator_tE21hb_face_lazy_loader_tIS1_Lj15EE9hb_face_tLj15ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit291, label %bb.bg

bb.bg:                                            ; preds = %_ZNK16hb_lazy_loader_tIN2OT18glyf_accelerator_tE21hb_face_lazy_loader_tIS1_Lj15EE9hb_face_tLj15ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit
  %i.lz = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i232, i64 28 ; 2 uses
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !348
  %.not334 = icmp eq i32 %i.ma, 0
  br i1 %.not334, label %_ZNK16hb_lazy_loader_tIN2OT18glyf_accelerator_tE21hb_face_lazy_loader_tIS1_Lj15EE9hb_face_tLj15ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit291, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.mb = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i232, i64 48 ; 3 uses
  %i.mc = load atomic ptr, ptr %i.mb acquire, align 8 ; 3 uses
  %.not.i238 = icmp eq ptr %i.mc, null
  br i1 %.not.i238, label %_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.md = cmpxchg weak ptr %i.mb, ptr %i.mc, ptr null acq_rel monotonic, align 8
  %i.me = extractvalue { ptr, i1 } %i.md, 1
  br i1 %i.me, label %_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit.thread, label %_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit, !prof !268

_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit: ; preds = %bb.bh, %bb.bi
  %i.mf = tail call noalias noundef dereferenceable_or_null(152) ptr @calloc(i64 noundef 1, i64 noundef 152) #64 ; 2 uses
  %.not166 = icmp eq ptr %i.mf, null
  br i1 %.not166, label %bb.bj, label %_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit.thread, !prof !1623

bb.bj:                                            ; preds = %_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit
  %i.mg = cmpxchg weak ptr %i.aw, ptr null, ptr %.1.ph.i acq_rel monotonic, align 8
  %i.mh = extractvalue { ptr, i1 } %i.mg, 1
  br i1 %i.mh, label %_ZNK12hb_ot_font_t14origin_cache_t20release_origin_cacheEP10hb_cache_tILj20ELj20ELj8ELb1EE.exit, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  tail call void @free(ptr noundef nonnull %.1.ph.i) #63
  br label %_ZNK12hb_ot_font_t14origin_cache_t20release_origin_cacheEP10hb_cache_tILj20ELj20ELj8ELb1EE.exit

_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit.thread: ; preds = %bb.bi, %_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit
  %.1.i327 = phi ptr [ %i.mf, %_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit ], [ %i.mc, %bb.bi ] ; 4 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.mj = load i8, ptr %i.mi, align 8, !tbaa !1064, !range !380, !noundef !293
  %i.mk = trunc nuw i8 %i.mj to i1
  br i1 %i.mk, label %bb.bl, label %_ZNK12hb_ot_font_t12draw_cache_t18acquire_gvar_cacheERKN2OT18gvar_accelerator_tE.exit

bb.bl:                                            ; preds = %_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit.thread
  %i.ml = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.a, i64 168 ; 5 uses
  %i.mn = load atomic ptr, ptr %i.mm acquire, align 8 ; 2 uses
  %.not20.i.i.i = icmp eq ptr %i.mn, null
  br i1 %.not20.i.i.i, label %.lr.ph.i.i.i242, label %_ZNK16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit, !prof !265

.lr.ph.i.i.i242:                                  ; preds = %bb.bl, %_ZN16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_E10do_destroyEPS1_.exit.i.i.i
  %i.mo = load ptr, ptr %i.a, align 8, !tbaa !266
  %.not.i.i.i.i243 = icmp eq ptr %i.mo, null
  br i1 %.not.i.i.i.i243, label %_ZNK16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit, label %bb.bm, !prof !267

bb.bm:                                            ; preds = %.lr.ph.i.i.i242
  %i.mp = tail call noundef ptr @_ZNK17hb_data_wrapper_tI9hb_face_tLj21EE11call_createIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS4_Lj21EEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) %i.mm) ; 5 uses
  %.not10.i.i.i244 = icmp eq ptr %i.mp, null
  br i1 %.not10.i.i.i244, label %.thread.i.i.i, label %bb.bn, !prof !267

bb.bn:                                            ; preds = %bb.bm
  %i.mq = cmpxchg weak ptr %i.mm, ptr null, ptr %i.mp acq_rel monotonic, align 8
  %i.mr = extractvalue { ptr, i1 } %i.mq, 1
  br i1 %i.mr, label %_ZNK16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit, label %bb.bo, !prof !268

.thread.i.i.i:                                    ; preds = %bb.bm
  %i.ms = cmpxchg weak ptr %i.mm, ptr null, ptr @_hb_NullPool acq_rel monotonic, align 8
  %i.mt = extractvalue { ptr, i1 } %i.ms, 1
  br i1 %i.mt, label %_ZNK16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit, label %_ZN16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_E10do_destroyEPS1_.exit.i.i.i, !prof !268

bb.bo:                                            ; preds = %bb.bn
  %.not3.i.i.i.i = icmp eq ptr %i.mp, @_hb_NullPool
  br i1 %.not3.i.i.i.i, label %_ZN16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_E10do_destroyEPS1_.exit.i.i.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  tail call void @_ZN16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_E7destroyEPS1_(ptr noundef nonnull %i.mp)
  br label %_ZN16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_E10do_destroyEPS1_.exit.i.i.i

_ZN16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_E10do_destroyEPS1_.exit.i.i.i: ; preds = %bb.bp, %bb.bo, %.thread.i.i.i
  %i.mu = load atomic ptr, ptr %i.mm acquire, align 8 ; 2 uses
  %.not.i.i.i245 = icmp eq ptr %i.mu, null
  br i1 %.not.i.i.i245, label %.lr.ph.i.i.i242, label %_ZNK16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit, !prof !269

_ZNK16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit: ; preds = %.lr.ph.i.i.i242, %bb.bn, %.thread.i.i.i, %_ZN16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_E10do_destroyEPS1_.exit.i.i.i, %bb.bl
  %.19.ph.i.i.i241 = phi ptr [ %i.mn, %bb.bl ], [ @_hb_NullPool, %.lr.ph.i.i.i242 ], [ %i.mu, %_ZN16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_E10do_destroyEPS1_.exit.i.i.i ], [ @_hb_NullPool, %.thread.i.i.i ], [ %i.mp, %bb.bn ]
  br label %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE13accelerator_t12create_cacheEv.exit.i

_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE13accelerator_t12create_cacheEv.exit.i: ; preds = %bb.bt, %_ZNK16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit
  %i.mv = load atomic ptr, ptr %i.ml acquire, align 8 ; 3 uses
  %.not.i246 = icmp eq ptr %i.mv, null
  br i1 %.not.i246, label %bb.bq, label %bb.bt

bb.bq:                                            ; preds = %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE13accelerator_t12create_cacheEv.exit.i
  %i.mw = load ptr, ptr %.19.ph.i.i.i241, align 8, !tbaa !272 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.mw, null
  %spec.select.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, ptr @_hb_NullPool, ptr %i.mw ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i.i, i64 16
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !275
  %i.mz = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i.i, i64 24
  %i.na = load i32, ptr %i.mz, align 8, !tbaa !276
  %i.nb = icmp ult i32 %i.na, 20
  %spec.select.i.i1.i.i.i.i = select i1 %i.nb, ptr @_hb_NullPool, ptr %i.my
  %i.nc = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i.i.i, i64 6
  %i.nd = load i16, ptr %i.nc, align 1, !tbaa !283 ; 2 uses
  %i.ne = tail call noundef i16 @llvm.bswap.i16(i16 %i.nd) ; 2 uses
  %i.nf = tail call i16 @llvm.umin.i16(i16 %i.ne, i16 4096) ; 2 uses
  %.sroa.speculated.i.i = zext nneg i16 %i.nf to i32 ; 2 uses
  %.not.i1.i.i = icmp eq i16 %i.nd, 0
  br i1 %.not.i1.i.i, label %_ZNK12hb_ot_font_t12draw_cache_t18acquire_gvar_cacheERKN2OT18gvar_accelerator_tE.exit, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ng = zext nneg i16 %i.nf to i64              ; 5 uses
  %i.nh = shl nuw nsw i64 %i.ng, 2
  %i.ni = add nuw nsw i64 %i.nh, 4
  %i.nj = tail call noalias noundef ptr @malloc(i64 noundef %i.ni) #65 ; 6 uses
  %.not16.i.i.i248 = icmp eq ptr %i.nj, null
  br i1 %.not16.i.i.i248, label %_ZNK12hb_ot_font_t12draw_cache_t18acquire_gvar_cacheERKN2OT18gvar_accelerator_tE.exit, label %bb.bs, !prof !267

bb.bs:                                            ; preds = %bb.br
  store i32 %.sroa.speculated.i.i, ptr %i.nj, align 4, !tbaa !480
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 4 ; 10 uses
  %i.nl = icmp ugt i16 %i.ne, 3
  br i1 %i.nl, label %.lr.ph.i25.i.i.i256, label %.preheader.i17.i.i.i249

.preheader.i17.i.loopexit.i.i259:                 ; preds = %.lr.ph.i25.i.i.i256
  %i.nm = trunc nuw nsw i64 %indvars.iv.next.i.i258 to i32
  br label %.preheader.i17.i.i.i249

.preheader.i17.i.i.i249:                          ; preds = %.preheader.i17.i.loopexit.i.i259, %bb.bs
  %.0.lcssa.i18.i.i.i250 = phi i32 [ 0, %bb.bs ], [ %i.nm, %.preheader.i17.i.loopexit.i.i259 ] ; 2 uses
  %i.nn = icmp samesign ult i32 %.0.lcssa.i18.i.i.i250, %.sroa.speculated.i.i
  br i1 %i.nn, label %.lr.ph18.preheader.i19.i.i.i251, label %_ZNK12hb_ot_font_t12draw_cache_t18acquire_gvar_cacheERKN2OT18gvar_accelerator_tE.exit

.lr.ph18.preheader.i19.i.i.i251:                  ; preds = %.preheader.i17.i.i.i249
  %i.no = zext nneg i32 %.0.lcssa.i18.i.i.i250 to i64 ; 4 uses
  %i.np = sub nsw i64 %i.ng, %i.no
  %xtraiter511 = and i64 %i.np, 7                 ; 2 uses
  %lcmp.mod512.not = icmp eq i64 %xtraiter511, 0
  br i1 %lcmp.mod512.not, label %.lr.ph18.i21.i.i.i252.prol.loopexit, label %.lr.ph18.i21.i.i.i252.prol

.lr.ph18.i21.i.i.i252.prol:                       ; preds = %.lr.ph18.preheader.i19.i.i.i251, %.lr.ph18.i21.i.i.i252.prol
  %indvars.iv.i22.i.i.i253.prol = phi i64 [ %indvars.iv.next.i23.i.i.i254.prol, %.lr.ph18.i21.i.i.i252.prol ], [ %i.no, %.lr.ph18.preheader.i19.i.i.i251 ] ; 2 uses
  %prol.iter513 = phi i64 [ %prol.iter513.next, %.lr.ph18.i21.i.i.i252.prol ], [ 0, %.lr.ph18.preheader.i19.i.i.i251 ]
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %indvars.iv.i22.i.i.i253.prol
  store atomic i32 -2147483648, ptr %i.nq monotonic, align 4
  %indvars.iv.next.i23.i.i.i254.prol = add nuw nsw i64 %indvars.iv.i22.i.i.i253.prol, 1 ; 2 uses
  %prol.iter513.next = add i64 %prol.iter513, 1   ; 2 uses
  %prol.iter513.cmp.not = icmp eq i64 %prol.iter513.next, %xtraiter511
  br i1 %prol.iter513.cmp.not, label %.lr.ph18.i21.i.i.i252.prol.loopexit, label %.lr.ph18.i21.i.i.i252.prol, !llvm.loop !3546

.lr.ph18.i21.i.i.i252.prol.loopexit:              ; preds = %.lr.ph18.i21.i.i.i252.prol, %.lr.ph18.preheader.i19.i.i.i251
  %indvars.iv.i22.i.i.i253.unr = phi i64 [ %i.no, %.lr.ph18.preheader.i19.i.i.i251 ], [ %indvars.iv.next.i23.i.i.i254.prol, %.lr.ph18.i21.i.i.i252.prol ]
  %i.nr = sub nsw i64 %i.no, %i.ng
  %i.ns = icmp ugt i64 %i.nr, -8
  br i1 %i.ns, label %_ZNK12hb_ot_font_t12draw_cache_t18acquire_gvar_cacheERKN2OT18gvar_accelerator_tE.exit, label %.lr.ph18.i21.i.i.i252

.lr.ph.i25.i.i.i256:                              ; preds = %bb.bs, %.lr.ph.i25.i.i.i256
  %indvars.iv.i.i257 = phi i64 [ %indvars.iv.next.i.i258, %.lr.ph.i25.i.i.i256 ], [ 0, %bb.bs ] ; 2 uses
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %indvars.iv.i.i257 ; 4 uses
  store atomic i32 -2147483648, ptr %i.nt monotonic, align 4
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 4
  store atomic i32 -2147483648, ptr %i.nu monotonic, align 4
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nt, i64 8
  store atomic i32 -2147483648, ptr %i.nv monotonic, align 4
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nt, i64 12
  store atomic i32 -2147483648, ptr %i.nw monotonic, align 4
  %indvars.iv.next.i.i258 = add nuw nsw i64 %indvars.iv.i.i257, 4 ; 3 uses
  %i.nx = or disjoint i64 %indvars.iv.next.i.i258, 3
  %i.ny = icmp samesign ult i64 %i.nx, %i.ng
  br i1 %i.ny, label %.lr.ph.i25.i.i.i256, label %.preheader.i17.i.loopexit.i.i259, !llvm.loop !5

.lr.ph18.i21.i.i.i252:                            ; preds = %.lr.ph18.i21.i.i.i252.prol.loopexit, %.lr.ph18.i21.i.i.i252
  %indvars.iv.i22.i.i.i253 = phi i64 [ %indvars.iv.next.i23.i.i.i254.7, %.lr.ph18.i21.i.i.i252 ], [ %indvars.iv.i22.i.i.i253.unr, %.lr.ph18.i21.i.i.i252.prol.loopexit ] ; 9 uses
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %indvars.iv.i22.i.i.i253
  store atomic i32 -2147483648, ptr %i.nz monotonic, align 4
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %indvars.iv.i22.i.i.i253
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 4
  store atomic i32 -2147483648, ptr %i.ob monotonic, align 4
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %indvars.iv.i22.i.i.i253
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 8
  store atomic i32 -2147483648, ptr %i.od monotonic, align 4
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %indvars.iv.i22.i.i.i253
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 12
  store atomic i32 -2147483648, ptr %i.of monotonic, align 4
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %indvars.iv.i22.i.i.i253
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 16
  store atomic i32 -2147483648, ptr %i.oh monotonic, align 4
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %indvars.iv.i22.i.i.i253
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 20
  store atomic i32 -2147483648, ptr %i.oj monotonic, align 4
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %indvars.iv.i22.i.i.i253
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 24
  store atomic i32 -2147483648, ptr %i.ol monotonic, align 4
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %indvars.iv.i22.i.i.i253
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 28
  store atomic i32 -2147483648, ptr %i.on monotonic, align 4
  %indvars.iv.next.i23.i.i.i254.7 = add nuw nsw i64 %indvars.iv.i22.i.i.i253, 8 ; 2 uses
  %exitcond.not.i24.i.i.i255.7 = icmp eq i64 %indvars.iv.next.i23.i.i.i254.7, %i.ng
  br i1 %exitcond.not.i24.i.i.i255.7, label %_ZNK12hb_ot_font_t12draw_cache_t18acquire_gvar_cacheERKN2OT18gvar_accelerator_tE.exit, label %.lr.ph18.i21.i.i.i252, !llvm.loop !6

bb.bt:                                            ; preds = %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE13accelerator_t12create_cacheEv.exit.i
  %i.oo = cmpxchg weak ptr %i.ml, ptr %i.mv, ptr null acq_rel monotonic, align 8
  %i.op = extractvalue { ptr, i1 } %i.oo, 1
  br i1 %i.op, label %_ZNK12hb_ot_font_t12draw_cache_t18acquire_gvar_cacheERKN2OT18gvar_accelerator_tE.exit, label %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE13accelerator_t12create_cacheEv.exit.i

_ZNK12hb_ot_font_t12draw_cache_t18acquire_gvar_cacheERKN2OT18gvar_accelerator_tE.exit: ; preds = %bb.bt, %.lr.ph18.i21.i.i.i252.prol.loopexit, %.lr.ph18.i21.i.i.i252, %.preheader.i17.i.i.i249, %bb.br, %bb.bq, %_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit.thread
  %i.oq = phi ptr [ null, %_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit.thread ], [ @_hb_NullPool, %bb.bq ], [ %i.nj, %.lr.ph18.i21.i.i.i252.prol.loopexit ], [ %i.nj, %.preheader.i17.i.i.i249 ], [ @_hb_NullPool, %bb.br ], [ %i.nj, %.lr.ph18.i21.i.i.i252 ], [ %i.mv, %bb.bt ] ; 5 uses
  br i1 %.not368444, label %._crit_edge362, label %.lr.ph361

.lr.ph361:                                        ; preds = %_ZNK12hb_ot_font_t12draw_cache_t18acquire_gvar_cacheERKN2OT18gvar_accelerator_tE.exit
  %i.or = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %11, i64 28
  %i.ot = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ou = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ov = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.ow = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ox = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.oy = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.oz = getelementptr inbounds nuw i8, ptr %10, i64 28
  %i.pa = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.pb = zext i32 %4 to i64
  %i.pc = zext i32 %8 to i64
  br label %bb.bu

._crit_edge362:                                   ; preds = %_ZN10hb_cache_tILj20ELj20ELj8ELb1EE3setEjj.exit269, %_ZNK12hb_ot_font_t12draw_cache_t18acquire_gvar_cacheERKN2OT18gvar_accelerator_tE.exit
  %.not167 = icmp eq ptr %i.oq, null
  br i1 %.not167, label %_ZNK12hb_ot_font_t12draw_cache_t18release_gvar_cacheEPN2OT17hb_scalar_cache_tE.exit, label %bb.cg

bb.bu:                                            ; preds = %.lr.ph361, %_ZN10hb_cache_tILj20ELj20ELj8ELb1EE3setEjj.exit269
  %.0144360 = phi i32 [ 0, %.lr.ph361 ], [ %i.qw, %_ZN10hb_cache_tILj20ELj20ELj8ELb1EE3setEjj.exit269 ]
  %.2154359 = phi ptr [ %3, %.lr.ph361 ], [ %i.qu, %_ZN10hb_cache_tILj20ELj20ELj8ELb1EE3setEjj.exit269 ] ; 3 uses
  %.2157358 = phi ptr [ %7, %.lr.ph361 ], [ %i.qv, %_ZN10hb_cache_tILj20ELj20ELj8ELb1EE3setEjj.exit269 ] ; 2 uses
  %i.pd = load i32, ptr %.2154359, align 4, !tbaa !324 ; 5 uses
  %i.pe = and i32 %i.pd, 255
  %i.pf = zext nneg i32 %i.pe to i64
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %.1.ph.i, i64 %i.pf
  %i.ph = load atomic i32, ptr %i.pg monotonic, align 4 ; 3 uses
  %i.pi = icmp eq i32 %i.ph, -1
  br i1 %i.pi, label %bb.bx, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.pj = lshr i32 %i.ph, 20
  %i.pk = lshr i32 %i.pd, 8
  %.not.i260 = icmp eq i32 %i.pj, %i.pk
  br i1 %.not.i260, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.pl = and i32 %i.ph, 1048575                  ; 2 uses
  %i.pm = load i32, ptr %i.or, align 4, !tbaa !954
  %i.pn = icmp slt i32 %i.pm, 0
  %i.po = sub nsw i32 0, %i.pl
  %i.pp = select i1 %i.pn, i32 %i.po, i32 %i.pl
  br label %_ZN10hb_cache_tILj20ELj20ELj8ELb1EE3setEjj.exit269

bb.bx:                                            ; preds = %bb.bv, %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  %i.pq = load i32, ptr %i.lz, align 4, !tbaa !348
  %.not.i263 = icmp ult i32 %i.pd, %i.pq
  br i1 %.not.i263, label %bb.by, label %_ZNK2OT18glyf_accelerator_t30get_v_origin_with_var_unscaledEjP9hb_font_tR17hb_glyf_scratch_tPNS_17hb_scalar_cache_tE.exit, !prof !268

bb.by:                                            ; preds = %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #63
  store <4 x float> <float f0x7F7FFFFF, float f0x7F7FFFFF, float f0xFF7FFFFF, float f0xFF7FFFFF>, ptr %i.os, align 4, !tbaa !304
  store ptr %0, ptr %11, align 8, !tbaa !470
  store ptr null, ptr %i.ot, align 8, !tbaa !471
  store ptr %10, ptr %i.ou, align 8, !tbaa !472
  store i8 0, ptr %i.ov, align 8, !tbaa !473
  %i.pr = load ptr, ptr %i.ow, align 8, !tbaa !309
  %i.ps = load i8, ptr %i.mi, align 8, !tbaa !1064, !range !380, !noundef !293
  %i.pt = trunc nuw i8 %i.ps to i1
  br i1 %i.pt, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.pu = load i32, ptr %i.ox, align 4, !tbaa !310
  %i.pv = zext i32 %i.pu to i64
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %.sroa.2.8.insert.ext.i.i = phi i64 [ %i.pv, %bb.bz ], [ 0, %bb.by ]
  %i.pw = call noundef zeroext i1 @_ZNK2OT18glyf_accelerator_t10get_pointsINS0_19points_aggregator_tEEEbP9hb_font_tjT_10hb_array_tIKiER17hb_glyf_scratch_tPNS_17hb_scalar_cache_tE(ptr noundef nonnull align 8 dereferenceable(56) %.19.ph.i.i.i232, ptr noundef nonnull %0, i32 noundef %i.pd, ptr noundef nonnull byval(%"struct.OT::glyf_accelerator_t::points_aggregator_t") align 8 %11, ptr %i.pr, i64 %.sroa.2.8.insert.ext.i.i, ptr noundef nonnull align 8 dereferenceable(152) %.1.i327, ptr noundef %i.oq)
  br i1 %i.pw, label %bb.cd, label %bb.cb, !prof !268

bb.cb:                                            ; preds = %bb.ca
  %i.px = load ptr, ptr %i.oy, align 8, !tbaa !264 ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 20
  %i.pz = load atomic i32, ptr %i.py monotonic, align 4 ; 2 uses
  %.not.i.i265 = icmp eq i32 %i.pz, 0
  br i1 %.not.i.i265, label %bb.cc, label %_ZNK9hb_face_t8get_upemEv.exit.i, !prof !267

bb.cc:                                            ; preds = %bb.cb
  %i.qa = call noundef i32 @_ZNK9hb_face_t9load_upemEv(ptr noundef nonnull align 8 dereferenceable(448) %i.px)
  br label %_ZNK9hb_face_t8get_upemEv.exit.i

_ZNK9hb_face_t8get_upemEv.exit.i:                 ; preds = %bb.cc, %bb.cb
  %.0.i.i266 = phi i32 [ %i.qa, %bb.cc ], [ %i.pz, %bb.cb ]
  %i.qb = uitofp i32 %.0.i.i266 to float
  br label %bb.ce

bb.cd:                                            ; preds = %bb.ca
  %i.qc = load float, ptr %i.oz, align 4, !tbaa !1559
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %_ZNK9hb_face_t8get_upemEv.exit.i
  %.0.i267 = phi float [ %i.qb, %_ZNK9hb_face_t8get_upemEv.exit.i ], [ %i.qc, %bb.cd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #63
  %.pre388 = load i32, ptr %.2154359, align 4, !tbaa !324
  br label %_ZNK2OT18glyf_accelerator_t30get_v_origin_with_var_unscaledEjP9hb_font_tR17hb_glyf_scratch_tPNS_17hb_scalar_cache_tE.exit

_ZNK2OT18glyf_accelerator_t30get_v_origin_with_var_unscaledEjP9hb_font_tR17hb_glyf_scratch_tPNS_17hb_scalar_cache_tE.exit: ; preds = %bb.bx, %bb.ce
  %i.qd = phi i32 [ %.pre388, %bb.ce ], [ %i.pd, %bb.bx ] ; 3 uses
  %.1.i264 = phi float [ %.0.i267, %bb.ce ], [ 0.000000e+00, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %i.qe = load float, ptr %i.pa, align 4, !tbaa !618
  %i.qf = fmul float %.1.i264, %i.qe
  %i.qg = fadd float %i.qf, 5.000000e-01
  %i.qh = call noundef float @llvm.floor.f32(float %i.qg)
  %i.qi = fptosi float %i.qh to i32               ; 4 uses
  %i.qj = load i32, ptr %i.or, align 4, !tbaa !954
  %i.qk = icmp slt i32 %i.qj, 0
  %i.ql = sub nsw i32 0, %i.qi
  %i.qm = select i1 %i.qk, i32 %i.ql, i32 %i.qi   ; 2 uses
  %i.qn = or i32 %i.qm, %i.qd
  %.not.i268 = icmp ult i32 %i.qn, 1048576
  br i1 %.not.i268, label %bb.cf, label %_ZN10hb_cache_tILj20ELj20ELj8ELb1EE3setEjj.exit269, !prof !268

bb.cf:                                            ; preds = %_ZNK2OT18glyf_accelerator_t30get_v_origin_with_var_unscaledEjP9hb_font_tR17hb_glyf_scratch_tPNS_17hb_scalar_cache_tE.exit
  %i.qo = and i32 %i.qd, 255
  %i.qp = shl nuw i32 %i.qd, 12
  %i.qq = and i32 %i.qp, -1048576
  %i.qr = or disjoint i32 %i.qm, %i.qq
  %i.qs = zext nneg i32 %i.qo to i64
  %i.qt = getelementptr inbounds nuw [4 x i8], ptr %.1.ph.i, i64 %i.qs
  store atomic i32 %i.qr, ptr %i.qt monotonic, align 4
  br label %_ZN10hb_cache_tILj20ELj20ELj8ELb1EE3setEjj.exit269

end_hunk_27
begin_hunk_28_@_ZL25hb_ot_get_glyph_v_originsP9hb_font_tPvjPKjjPijS4_jS1_:bb.a
  %.3364 = phi ptr [ %3, %.lr.ph366 ], [ %i.uj, %bb.dg ] ; 3 uses
  %.3158363 = phi ptr [ %7, %.lr.ph366 ], [ %i.uk, %bb.dg ] ; 2 uses
  %i.td = load i32, ptr %.3364, align 4, !tbaa !324 ; 3 uses
  %i.te = and i32 %i.td, 255
  %i.tf = zext nneg i32 %i.te to i64
  %i.tg = getelementptr inbounds nuw [4 x i8], ptr %.1.ph.i, i64 %i.tf
  %i.th = load atomic i32, ptr %i.tg monotonic, align 4 ; 3 uses
  %i.ti = icmp eq i32 %i.th, -1
  br i1 %i.ti, label %bb.db, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.tj = lshr i32 %i.th, 20
  %i.tk = lshr i32 %i.td, 8
  %.not.i295 = icmp eq i32 %i.tj, %i.tk
  br i1 %.not.i295, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.tl = and i32 %i.th, 1048575                  ; 2 uses
  %i.tm = load i32, ptr %i.si, align 4, !tbaa !954
  %i.tn = icmp slt i32 %i.tm, 0
  %i.to = sub nsw i32 0, %i.tl
  %i.tp = select i1 %i.tn, i32 %i.to, i32 %i.tl
  br label %bb.dg

bb.db:                                            ; preds = %bb.cz, %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #63
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  %i.tq = call noundef i32 @_ZN9hb_font_t17get_glyph_extentsEjP18hb_glyph_extents_tb(ptr noundef nonnull align 8 dereferenceable(192) %0, i32 noundef %i.td, ptr noundef nonnull %13, i1 noundef zeroext true)
  %.not165 = icmp eq i32 %i.tq, 0
  br i1 %.not165, label %bb.dd, label %bb.dc, !prof !267

bb.dc:                                            ; preds = %bb.db
  %i.tr = load i32, ptr %i.sz, align 4, !tbaa !373
  %i.ts = load i32, ptr %i.ta, align 4, !tbaa !375
  %i.tt = add nsw i32 %i.sy, %i.ts
  %i.tu = ashr i32 %i.tt, 1
  %i.tv = add nsw i32 %i.tu, %i.tr
  br label %bb.de

bb.dd:                                            ; preds = %bb.db
  %i.tw = load i32, ptr %12, align 4, !tbaa !1001
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %.0 = phi i32 [ %i.tv, %bb.dc ], [ %i.tw, %bb.dd ] ; 3 uses
  %i.tx = load i32, ptr %.3364, align 4, !tbaa !324 ; 3 uses
  %i.ty = load i32, ptr %i.si, align 4, !tbaa !954
  %i.tz = icmp slt i32 %i.ty, 0
  %i.ua = sub nsw i32 0, %.0
  %i.ub = select i1 %i.tz, i32 %i.ua, i32 %.0     ; 2 uses
  %i.uc = or i32 %i.ub, %i.tx
  %.not.i298 = icmp ult i32 %i.uc, 1048576
  br i1 %.not.i298, label %bb.df, label %_ZN10hb_cache_tILj20ELj20ELj8ELb1EE3setEjj.exit299, !prof !268

bb.df:                                            ; preds = %bb.de
  %i.ud = and i32 %i.tx, 255
  %i.ue = shl nuw i32 %i.tx, 12
  %i.uf = and i32 %i.ue, -1048576
  %i.ug = or disjoint i32 %i.ub, %i.uf
  %i.uh = zext nneg i32 %i.ud to i64
  %i.ui = getelementptr inbounds nuw [4 x i8], ptr %.1.ph.i, i64 %i.uh
  store atomic i32 %i.ug, ptr %i.ui monotonic, align 4
  br label %_ZN10hb_cache_tILj20ELj20ELj8ELb1EE3setEjj.exit299

_ZN10hb_cache_tILj20ELj20ELj8ELb1EE3setEjj.exit299: ; preds = %bb.de, %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #63
  br label %bb.dg

bb.dg:                                            ; preds = %_ZN10hb_cache_tILj20ELj20ELj8ELb1EE3setEjj.exit299, %bb.da
  %.1 = phi i32 [ %i.tp, %bb.da ], [ %.0, %_ZN10hb_cache_tILj20ELj20ELj8ELb1EE3setEjj.exit299 ]
  store i32 %.1, ptr %.3158363, align 4, !tbaa !324
  %i.uj = getelementptr inbounds nuw i8, ptr %.3364, i64 %i.tb
  %i.uk = getelementptr inbounds nuw i8, ptr %.3158363, i64 %i.tc
  %i.ul = add nuw i32 %.0142365, 1                ; 2 uses
  %exitcond387.not = icmp eq i32 %i.ul, %2
  br i1 %exitcond387.not, label %._crit_edge367, label %bb.cy, !llvm.loop !3548

.critedge169:                                     ; preds = %bb.ct, %._crit_edge367
  %i.um = cmpxchg weak ptr %i.aw, ptr null, ptr %.1.ph.i acq_rel monotonic, align 8
  %i.un = extractvalue { ptr, i1 } %i.um, 1
  br i1 %i.un, label %_ZNK12hb_ot_font_t14origin_cache_t20release_origin_cacheEP10hb_cache_tILj20ELj20ELj8ELb1EE.exit, label %bb.dh

bb.dh:                                            ; preds = %.critedge169
  call void @free(ptr noundef nonnull %.1.ph.i) #63
  br label %_ZNK12hb_ot_font_t14origin_cache_t20release_origin_cacheEP10hb_cache_tILj20ELj20ELj8ELb1EE.exit

_ZNK12hb_ot_font_t14origin_cache_t20release_origin_cacheEP10hb_cache_tILj20ELj20ELj8ELb1EE.exit: ; preds = %_ZNK16hb_lazy_loader_tIN2OT18glyf_accelerator_tE21hb_face_lazy_loader_tIS1_Lj15EE9hb_face_tLj15ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit291, %bb.dh, %.critedge169, %bb.cj, %_ZNK2OT18glyf_accelerator_t15release_scratchEP17hb_glyf_scratch_t.exit, %bb.bk, %bb.bj, %bb.aw, %_ZNK12hb_ot_font_t14origin_cache_t22release_varStore_cacheEPN2OT17hb_scalar_cache_tE.exit
  %.2 = phi i32 [ 0, %bb.bk ], [ 1, %bb.cj ], [ 1, %bb.aw ], [ 1, %_ZNK12hb_ot_font_t14origin_cache_t22release_varStore_cacheEPN2OT17hb_scalar_cache_tE.exit ], [ 0, %bb.bj ], [ 1, %_ZNK2OT18glyf_accelerator_t15release_scratchEP17hb_glyf_scratch_t.exit ], [ 1, %bb.dh ], [ 1, %_ZNK16hb_lazy_loader_tIN2OT18glyf_accelerator_tE21hb_face_lazy_loader_tIS1_Lj15EE9hb_face_tLj15ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit291 ], [ 1, %.critedge169 ]
  ret i32 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef range(i32 0, 2) i32 @_ZL24hb_ot_draw_glyph_or_failP9hb_font_tPvjP15hb_draw_funcs_tS1_S1_(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree readnone captures(none) %5) #0 {
bb.a:
  %6 = alloca %"struct.OT::glyf_impl::path_builder_t", align 8 ; 13 uses
  %7 = alloca %struct.hb_draw_session_t, align 8  ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #63
  store ptr %3, ptr %7, align 8, !tbaa !338
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr %4, ptr %i.a, align 8, !tbaa !339
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, i8 0, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !310
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %_ZNK12hb_ot_font_t12draw_cache_t18acquire_gvar_cacheERKN2OT18gvar_accelerator_tE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK12hb_ot_font_t12check_serialEP9hb_font_t(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull %0)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !1060   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 168 ; 5 uses
  %i.h = load atomic ptr, ptr %i.g acquire, align 8 ; 2 uses
  %.not20.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not20.i.i.i, label %.lr.ph.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit, !prof !265

.lr.ph.i.i.i:                                     ; preds = %bb.b, %_ZN16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_E10do_destroyEPS1_.exit.i.i.i
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !266
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit, label %bb.c, !prof !267

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.j = tail call noundef ptr @_ZNK17hb_data_wrapper_tI9hb_face_tLj21EE11call_createIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS4_Lj21EEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) %i.g) ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not10.i.i.i, label %.thread.i.i.i, label %bb.d, !prof !267

bb.d:                                             ; preds = %bb.c
  %i.k = cmpxchg weak ptr %i.g, ptr null, ptr %i.j acq_rel monotonic, align 8
  %i.l = extractvalue { ptr, i1 } %i.k, 1
  br i1 %i.l, label %_ZNK16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit, label %bb.e, !prof !268

.thread.i.i.i:                                    ; preds = %bb.c
  %i.m = cmpxchg weak ptr %i.g, ptr null, ptr @_hb_NullPool acq_rel monotonic, align 8
  %i.n = extractvalue { ptr, i1 } %i.m, 1
  br i1 %i.n, label %_ZNK16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit, label %_ZN16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_E10do_destroyEPS1_.exit.i.i.i, !prof !268

bb.e:                                             ; preds = %bb.d
  %.not3.i.i.i.i = icmp eq ptr %i.j, @_hb_NullPool
  br i1 %.not3.i.i.i.i, label %_ZN16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_E10do_destroyEPS1_.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_E7destroyEPS1_(ptr noundef nonnull %i.j)
  br label %_ZN16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_E10do_destroyEPS1_.exit.i.i.i

_ZN16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_E10do_destroyEPS1_.exit.i.i.i: ; preds = %bb.f, %bb.e, %.thread.i.i.i
  %i.o = load atomic ptr, ptr %i.g acquire, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit, !prof !269

_ZNK16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit: ; preds = %.lr.ph.i.i.i, %bb.d, %.thread.i.i.i, %_ZN16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_E10do_destroyEPS1_.exit.i.i.i, %bb.b
  %.19.ph.i.i.i = phi ptr [ %i.h, %bb.b ], [ @_hb_NullPool, %.lr.ph.i.i.i ], [ %i.o, %_ZN16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_E10do_destroyEPS1_.exit.i.i.i ], [ @_hb_NullPool, %.thread.i.i.i ], [ %i.j, %bb.d ]
  br label %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE13accelerator_t12create_cacheEv.exit.i

_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE13accelerator_t12create_cacheEv.exit.i: ; preds = %bb.j, %_ZNK16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit
  %i.p = load atomic ptr, ptr %i.e acquire, align 8 ; 3 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.g, label %bb.j

bb.g:                                             ; preds = %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE13accelerator_t12create_cacheEv.exit.i
  %i.q = load ptr, ptr %.19.ph.i.i.i, align 8, !tbaa !272 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.q, null
  %spec.select.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, ptr @_hb_NullPool, ptr %i.q ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i.i, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !275
  %i.t = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i.i, i64 24
  %i.u = load i32, ptr %i.t, align 8, !tbaa !276
  %i.v = icmp ult i32 %i.u, 20
  %spec.select.i.i1.i.i.i.i = select i1 %i.v, ptr @_hb_NullPool, ptr %i.s
  %i.w = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i.i.i, i64 6
  %i.x = load i16, ptr %i.w, align 1, !tbaa !283  ; 2 uses
  %i.y = tail call noundef i16 @llvm.bswap.i16(i16 %i.x) ; 2 uses
  %i.z = tail call i16 @llvm.umin.i16(i16 %i.y, i16 4096) ; 2 uses
  %.sroa.speculated.i.i = zext nneg i16 %i.z to i32 ; 2 uses
  %.not.i1.i.i = icmp eq i16 %i.x, 0
  br i1 %.not.i1.i.i, label %_ZNK12hb_ot_font_t12draw_cache_t18acquire_gvar_cacheERKN2OT18gvar_accelerator_tE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = zext nneg i16 %i.z to i64               ; 5 uses
  %i.ab = shl nuw nsw i64 %i.aa, 2
  %i.ac = add nuw nsw i64 %i.ab, 4
  %i.ad = tail call noalias noundef ptr @malloc(i64 noundef %i.ac) #65 ; 6 uses
  %.not16.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not16.i.i.i, label %_ZNK12hb_ot_font_t12draw_cache_t18acquire_gvar_cacheERKN2OT18gvar_accelerator_tE.exit, label %bb.i, !prof !267

bb.i:                                             ; preds = %bb.h
  store i32 %.sroa.speculated.i.i, ptr %i.ad, align 4, !tbaa !480
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4 ; 10 uses
  %i.af = icmp ugt i16 %i.y, 3
  br i1 %i.af, label %.lr.ph.i25.i.i.i, label %.preheader.i17.i.i.i

.preheader.i17.i.loopexit.i.i:                    ; preds = %.lr.ph.i25.i.i.i
  %i.ag = trunc nuw nsw i64 %indvars.iv.next.i.i to i32
  br label %.preheader.i17.i.i.i

.preheader.i17.i.i.i:                             ; preds = %.preheader.i17.i.loopexit.i.i, %bb.i
  %.0.lcssa.i18.i.i.i = phi i32 [ 0, %bb.i ], [ %i.ag, %.preheader.i17.i.loopexit.i.i ] ; 2 uses
  %i.ah = icmp samesign ult i32 %.0.lcssa.i18.i.i.i, %.sroa.speculated.i.i
  br i1 %i.ah, label %.lr.ph18.preheader.i19.i.i.i, label %_ZNK12hb_ot_font_t12draw_cache_t18acquire_gvar_cacheERKN2OT18gvar_accelerator_tE.exit

.lr.ph18.preheader.i19.i.i.i:                     ; preds = %.preheader.i17.i.i.i
  %i.ai = zext nneg i32 %.0.lcssa.i18.i.i.i to i64 ; 4 uses
  %i.aj = sub nsw i64 %i.aa, %i.ai
  %xtraiter = and i64 %i.aj, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph18.i21.i.i.i.prol.loopexit, label %.lr.ph18.i21.i.i.i.prol

.lr.ph18.i21.i.i.i.prol:                          ; preds = %.lr.ph18.preheader.i19.i.i.i, %.lr.ph18.i21.i.i.i.prol
  %indvars.iv.i22.i.i.i.prol = phi i64 [ %indvars.iv.next.i23.i.i.i.prol, %.lr.ph18.i21.i.i.i.prol ], [ %i.ai, %.lr.ph18.preheader.i19.i.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph18.i21.i.i.i.prol ], [ 0, %.lr.ph18.preheader.i19.i.i.i ]
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.i22.i.i.i.prol
  store atomic i32 -2147483648, ptr %i.ak monotonic, align 4
  %indvars.iv.next.i23.i.i.i.prol = add nuw nsw i64 %indvars.iv.i22.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph18.i21.i.i.i.prol.loopexit, label %.lr.ph18.i21.i.i.i.prol, !llvm.loop !3549

.lr.ph18.i21.i.i.i.prol.loopexit:                 ; preds = %.lr.ph18.i21.i.i.i.prol, %.lr.ph18.preheader.i19.i.i.i
  %indvars.iv.i22.i.i.i.unr = phi i64 [ %i.ai, %.lr.ph18.preheader.i19.i.i.i ], [ %indvars.iv.next.i23.i.i.i.prol, %.lr.ph18.i21.i.i.i.prol ]
  %i.al = sub nsw i64 %i.ai, %i.aa
  %i.am = icmp ugt i64 %i.al, -8
  br i1 %i.am, label %_ZNK12hb_ot_font_t12draw_cache_t18acquire_gvar_cacheERKN2OT18gvar_accelerator_tE.exit, label %.lr.ph18.i21.i.i.i

.lr.ph.i25.i.i.i:                                 ; preds = %bb.i, %.lr.ph.i25.i.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i25.i.i.i ], [ 0, %bb.i ] ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.i.i ; 4 uses
  store atomic i32 -2147483648, ptr %i.an monotonic, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  store atomic i32 -2147483648, ptr %i.ao monotonic, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store atomic i32 -2147483648, ptr %i.ap monotonic, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  store atomic i32 -2147483648, ptr %i.aq monotonic, align 4
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 4 ; 3 uses
  %i.ar = or disjoint i64 %indvars.iv.next.i.i, 3
  %i.as = icmp samesign ult i64 %i.ar, %i.aa
  br i1 %i.as, label %.lr.ph.i25.i.i.i, label %.preheader.i17.i.loopexit.i.i, !llvm.loop !5

.lr.ph18.i21.i.i.i:                               ; preds = %.lr.ph18.i21.i.i.i.prol.loopexit, %.lr.ph18.i21.i.i.i
  %indvars.iv.i22.i.i.i = phi i64 [ %indvars.iv.next.i23.i.i.i.7, %.lr.ph18.i21.i.i.i ], [ %indvars.iv.i22.i.i.i.unr, %.lr.ph18.i21.i.i.i.prol.loopexit ] ; 9 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.i22.i.i.i
  store atomic i32 -2147483648, ptr %i.at monotonic, align 4
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.i22.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  store atomic i32 -2147483648, ptr %i.av monotonic, align 4
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.i22.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store atomic i32 -2147483648, ptr %i.ax monotonic, align 4
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.i22.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  store atomic i32 -2147483648, ptr %i.az monotonic, align 4
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.i22.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store atomic i32 -2147483648, ptr %i.bb monotonic, align 4
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.i22.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 20
  store atomic i32 -2147483648, ptr %i.bd monotonic, align 4
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.i22.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store atomic i32 -2147483648, ptr %i.bf monotonic, align 4
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.i22.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 28
  store atomic i32 -2147483648, ptr %i.bh monotonic, align 4
  %indvars.iv.next.i23.i.i.i.7 = add nuw nsw i64 %indvars.iv.i22.i.i.i, 8 ; 2 uses
  %exitcond.not.i24.i.i.i.7 = icmp eq i64 %indvars.iv.next.i23.i.i.i.7, %i.aa
  br i1 %exitcond.not.i24.i.i.i.7, label %_ZNK12hb_ot_font_t12draw_cache_t18acquire_gvar_cacheERKN2OT18gvar_accelerator_tE.exit, label %.lr.ph18.i21.i.i.i, !llvm.loop !6

bb.j:                                             ; preds = %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE13accelerator_t12create_cacheEv.exit.i
  %i.bi = cmpxchg weak ptr %i.e, ptr %i.p, ptr null acq_rel monotonic, align 8
  %i.bj = extractvalue { ptr, i1 } %i.bi, 1
  br i1 %i.bj, label %_ZNK12hb_ot_font_t12draw_cache_t18acquire_gvar_cacheERKN2OT18gvar_accelerator_tE.exit, label %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE13accelerator_t12create_cacheEv.exit.i

_ZNK12hb_ot_font_t12draw_cache_t18acquire_gvar_cacheERKN2OT18gvar_accelerator_tE.exit: ; preds = %bb.j, %.lr.ph18.i21.i.i.i.prol.loopexit, %.lr.ph18.i21.i.i.i, %.preheader.i17.i.i.i, %bb.h, %bb.g, %bb.a
  %.052 = phi ptr [ null, %bb.a ], [ @_hb_NullPool, %bb.g ], [ %i.ad, %.lr.ph18.i21.i.i.i.prol.loopexit ], [ %i.ad, %.preheader.i17.i.i.i ], [ @_hb_NullPool, %bb.h ], [ %i.ad, %.lr.ph18.i21.i.i.i ], [ %i.p, %bb.j ] ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !264 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 288 ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 104
  %i.bo = load atomic ptr, ptr %i.bm acquire, align 8 ; 2 uses
  %.not14.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not14.i.i.i, label %.lr.ph.i.i.i18, label %_ZNK16hb_lazy_loader_tIN2OT18VARC_accelerator_tE21hb_face_lazy_loader_tIS1_Lj23EE9hb_face_tLj23ES1_EptEv.exit, !prof !265

.lr.ph.i.i.i18:                                   ; preds = %_ZNK12hb_ot_font_t12draw_cache_t18acquire_gvar_cacheERKN2OT18gvar_accelerator_tE.exit, %bb.n
  %i.bp = load ptr, ptr %i.bn, align 8, !tbaa !266
  %.not.i.i.i.i19 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i.i19, label %_ZNK16hb_lazy_loader_tIN2OT18VARC_accelerator_tE21hb_face_lazy_loader_tIS1_Lj23EE9hb_face_tLj23ES1_EptEv.exit, label %bb.k, !prof !267

bb.k:                                             ; preds = %.lr.ph.i.i.i18
  %i.bq = tail call noundef ptr @_ZNK17hb_data_wrapper_tI9hb_face_tLj23EE11call_createIN2OT18VARC_accelerator_tE21hb_face_lazy_loader_tIS4_Lj23EEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) %i.bm) ; 2 uses
  %.not10.i.i.i20 = icmp eq ptr %i.bq, null
  br i1 %.not10.i.i.i20, label %bb.l, label %bb.m, !prof !267

bb.l:                                             ; preds = %bb.k
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.07.i.i.i = phi ptr [ @_hb_NullPool, %bb.l ], [ %i.bq, %bb.k ] ; 3 uses
  %i.br = cmpxchg weak ptr %i.bm, ptr null, ptr %.07.i.i.i acq_rel monotonic, align 8
  %i.bs = extractvalue { ptr, i1 } %i.br, 1
  br i1 %i.bs, label %_ZNK16hb_lazy_loader_tIN2OT18VARC_accelerator_tE21hb_face_lazy_loader_tIS1_Lj23EE9hb_face_tLj23ES1_EptEv.exit, label %bb.n, !prof !268

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN16hb_lazy_loader_tIN2OT18VARC_accelerator_tE21hb_face_lazy_loader_tIS1_Lj23EE9hb_face_tLj23ES1_E10do_destroyEPS1_(ptr noundef nonnull %.07.i.i.i)
  %i.bt = load atomic ptr, ptr %i.bm acquire, align 8 ; 2 uses
  %.not.i.i.i21 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i21, label %.lr.ph.i.i.i18, label %_ZNK16hb_lazy_loader_tIN2OT18VARC_accelerator_tE21hb_face_lazy_loader_tIS1_Lj23EE9hb_face_tLj23ES1_EptEv.exit, !prof !269

_ZNK16hb_lazy_loader_tIN2OT18VARC_accelerator_tE21hb_face_lazy_loader_tIS1_Lj23EE9hb_face_tLj23ES1_EptEv.exit: ; preds = %.lr.ph.i.i.i18, %bb.m, %bb.n, %_ZNK12hb_ot_font_t12draw_cache_t18acquire_gvar_cacheERKN2OT18gvar_accelerator_tE.exit
  %.19.ph.i.i.i17 = phi ptr [ %i.bo, %_ZNK12hb_ot_font_t12draw_cache_t18acquire_gvar_cacheERKN2OT18gvar_accelerator_tE.exit ], [ @_hb_NullPool, %.lr.ph.i.i.i18 ], [ %i.bt, %bb.n ], [ %.07.i.i.i, %bb.m ]
  %i.bu = call noundef zeroext i1 @_ZNK2OT4VARC13accelerator_t8get_pathEP9hb_font_tjR17hb_draw_session_t(ptr noundef nonnull align 8 dereferenceable(16) %.19.ph.i.i.i17, ptr noundef %0, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %7)
  br i1 %i.bu, label %bb.ai, label %bb.o

bb.o:                                             ; preds = %_ZNK16hb_lazy_loader_tIN2OT18VARC_accelerator_tE21hb_face_lazy_loader_tIS1_Lj23EE9hb_face_tLj23ES1_EptEv.exit
  %i.bv = load ptr, ptr %i.bk, align 8, !tbaa !264 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 224 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 104
  %i.by = load atomic ptr, ptr %i.bw acquire, align 8 ; 2 uses
  %.not14.i.i.i22 = icmp eq ptr %i.by, null
  br i1 %.not14.i.i.i22, label %.lr.ph.i.i.i24, label %_ZNK16hb_lazy_loader_tIN2OT18glyf_accelerator_tE21hb_face_lazy_loader_tIS1_Lj15EE9hb_face_tLj15ES1_EptEv.exit, !prof !265

.lr.ph.i.i.i24:                                   ; preds = %bb.o, %bb.s
  %i.bz = load ptr, ptr %i.bx, align 8, !tbaa !266
  %.not.i.i.i.i25 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i.i25, label %_ZNK16hb_lazy_loader_tIN2OT18glyf_accelerator_tE21hb_face_lazy_loader_tIS1_Lj15EE9hb_face_tLj15ES1_EptEv.exit, label %bb.p, !prof !267

bb.p:                                             ; preds = %.lr.ph.i.i.i24
  %i.ca = call noundef ptr @_ZNK17hb_data_wrapper_tI9hb_face_tLj15EE11call_createIN2OT18glyf_accelerator_tE21hb_face_lazy_loader_tIS4_Lj15EEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) %i.bw) ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %i.ca, null
  br i1 %.not10.i.i.i26, label %bb.q, label %bb.r, !prof !267

bb.q:                                             ; preds = %bb.p
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.07.i.i.i27 = phi ptr [ @_hb_NullPool, %bb.q ], [ %i.ca, %bb.p ] ; 3 uses
  %i.cb = cmpxchg weak ptr %i.bw, ptr null, ptr %.07.i.i.i27 acq_rel monotonic, align 8
  %i.cc = extractvalue { ptr, i1 } %i.cb, 1
  br i1 %i.cc, label %_ZNK16hb_lazy_loader_tIN2OT18glyf_accelerator_tE21hb_face_lazy_loader_tIS1_Lj15EE9hb_face_tLj15ES1_EptEv.exit, label %bb.s, !prof !268

bb.s:                                             ; preds = %bb.r
  call void @_ZN16hb_lazy_loader_tIN2OT18glyf_accelerator_tE21hb_face_lazy_loader_tIS1_Lj15EE9hb_face_tLj15ES1_E10do_destroyEPS1_(ptr noundef nonnull %.07.i.i.i27)
  %i.cd = load atomic ptr, ptr %i.bw acquire, align 8 ; 2 uses
  %.not.i.i.i28 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i28, label %.lr.ph.i.i.i24, label %_ZNK16hb_lazy_loader_tIN2OT18glyf_accelerator_tE21hb_face_lazy_loader_tIS1_Lj15EE9hb_face_tLj15ES1_EptEv.exit, !prof !269

_ZNK16hb_lazy_loader_tIN2OT18glyf_accelerator_tE21hb_face_lazy_loader_tIS1_Lj15EE9hb_face_tLj15ES1_EptEv.exit: ; preds = %.lr.ph.i.i.i24, %bb.r, %bb.s, %bb.o
  %.19.ph.i.i.i23 = phi ptr [ %i.by, %bb.o ], [ @_hb_NullPool, %.lr.ph.i.i.i24 ], [ %i.cd, %bb.s ], [ %.07.i.i.i27, %bb.r ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.ce = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i23, i64 28
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !348
  %.not20.i = icmp eq i32 %i.cf, 0
  br i1 %.not20.i, label %_ZNK2OT18glyf_accelerator_t8get_pathEP9hb_font_tjR17hb_draw_session_tPNS_17hb_scalar_cache_tE.exit.thread54, label %bb.t

_ZNK2OT18glyf_accelerator_t8get_pathEP9hb_font_tjR17hb_draw_session_tPNS_17hb_scalar_cache_tE.exit.thread54: ; preds = %_ZNK16hb_lazy_loader_tIN2OT18glyf_accelerator_tE21hb_face_lazy_loader_tIS1_Lj15EE9hb_face_tLj15ES1_EptEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.x

bb.t:                                             ; preds = %_ZNK16hb_lazy_loader_tIN2OT18glyf_accelerator_tE21hb_face_lazy_loader_tIS1_Lj15EE9hb_face_tLj15ES1_EptEv.exit
  %i.cg = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i23, i64 48 ; 3 uses
  %i.ch = load atomic ptr, ptr %i.cg acquire, align 8 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i, label %_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ci = cmpxchg weak ptr %i.cg, ptr %i.ch, ptr null acq_rel monotonic, align 8
  %i.cj = extractvalue { ptr, i1 } %i.ci, 1
  br i1 %i.cj, label %_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit.thread.i, label %_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit.i, !prof !268

_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit.i: ; preds = %bb.u, %bb.t
  %i.ck = call noalias noundef dereferenceable_or_null(152) ptr @calloc(i64 noundef 1, i64 noundef 152) #64 ; 2 uses
  %.not.i29 = icmp eq ptr %i.ck, null
  br i1 %.not.i29, label %_ZNK2OT18glyf_accelerator_t8get_pathEP9hb_font_tjR17hb_draw_session_tPNS_17hb_scalar_cache_tE.exit.thread, label %_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit.thread.i, !prof !466

_ZNK2OT18glyf_accelerator_t8get_pathEP9hb_font_tjR17hb_draw_session_tPNS_17hb_scalar_cache_tE.exit.thread: ; preds = %_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.ai

_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit.thread.i: ; preds = %_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit.i, %bb.u
  %.1.i19.i = phi ptr [ %i.ck, %_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit.i ], [ %i.ch, %bb.u ] ; 4 uses
  store ptr %0, ptr %6, align 8, !tbaa !351
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %7, ptr %i.cl, align 8, !tbaa !352
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i8 0, ptr %i.cm, align 8, !tbaa !353
  %i.cn = getelementptr inbounds nuw i8, ptr %6, i64 28
  store i8 0, ptr %i.cn, align 4, !tbaa !353
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i8 0, ptr %i.co, align 8, !tbaa !353
  %i.cp = getelementptr inbounds nuw i8, ptr %6, i64 52
  store i8 0, ptr %i.cp, align 4, !tbaa !353
  %i.cq = getelementptr inbounds nuw i8, ptr %6, i64 64
  store i8 0, ptr %i.cq, align 8, !tbaa !353
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !309
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.cu = load i8, ptr %i.ct, align 8, !tbaa !1064, !range !380, !noundef !293
  %i.cv = trunc nuw i8 %i.cu to i1
  br i1 %i.cv, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit.thread.i
  %i.cw = load i32, ptr %i.c, align 4, !tbaa !310
  %i.cx = zext i32 %i.cw to i64
end_hunk_28
