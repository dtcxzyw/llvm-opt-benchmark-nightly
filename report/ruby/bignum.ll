inline.NumInlined: 999
inline.NumDeleted: 129
begin_hunk_0_@rb_absint_numwords:bb.a

rbimpl_size_mul_or_raise.exit.i.i:                ; preds = %.critedge2.thread.i.i
  %i.ch = load i64, ptr %i.a, align 8             ; 2 uses
  store i64 %i.ch, ptr %i.d, align 8
  %i.ci = lshr i64 %i.ch, 32
  %i.cj = trunc nuw i64 %i.ci to i32
  br label %.preheader134.i.i

.lr.ph152.preheader.i.i:                          ; preds = %.critedge2.i.i
  store i32 %i.bv, ptr %i.d, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 0, ptr %i.ck, align 4
  br label %.preheader134.i.i

.preheader134.i.i:                                ; preds = %.lr.ph152.preheader.i.i, %rbimpl_size_mul_or_raise.exit.i.i
  %i.cl = phi i32 [ %i.cj, %rbimpl_size_mul_or_raise.exit.i.i ], [ 0, %.lr.ph152.preheader.i.i ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, i8 0, i64 16, i1 false), !tbaa !7
  br label %bary_divmod.exit.i

bb.o:                                             ; preds = %.critedge2.thread.i.i
  br i1 %.not.i.i16, label %bb.t, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.o, %.critedge2.i.i, %.critedge.preheader.i.i
  %.0103142.lcssa172180183.i.sroa.phi.i = phi ptr [ %.0103142.lcssa172180183.i.sroa.gep.i, %bb.o ], [ %.0103142.lcssa172180183.i.sroa.gep33.i, %.critedge.preheader.i.i ], [ %.0103142.lcssa172180183.i.sroa.gep34.i, %.critedge2.i.i ]
  %exitcond.not.i.i.i9.i = phi i1 [ false, %bb.o ], [ false, %.critedge.preheader.i.i ], [ true, %.critedge2.i.i ] ; 2 uses
  %exitcond.not.i.i.i9.i.1 = phi i1 [ true, %bb.o ], [ false, %.critedge.preheader.i.i ], [ false, %.critedge2.i.i ] ; 2 uses
  %.0103142.lcssa172180183.i.i = phi i64 [ 2, %bb.o ], [ 3, %.critedge.preheader.i.i ], [ 1, %.critedge2.i.i ] ; 7 uses
  %i.cm = shl nuw nsw i64 %.0103142.lcssa172180183.i.i, 2 ; 2 uses
  %i.cn = call ptr @__memcpy_chk(ptr noundef nonnull %i.c, ptr noundef nonnull readonly %i.a, i64 noundef range(i64 1, 0) %i.cm, i64 noundef 16) #23, !alias.scope !168 ; 0 uses
  %i.co = sub nuw nsw i64 16, %i.cm
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.0103142.lcssa172180183.i.sroa.phi.i, i8 0, i64 %i.co, i1 false), !tbaa !7
  %i.cp = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.bz)
  %i.cq = icmp samesign ult i32 %i.cp, 2
  br i1 %i.cq, label %.lr.ph.i.i.i.i.i, label %.lr.ph.i.i.i8.i

.lr.ph.i.i.i.i.i:                                 ; preds = %._crit_edge.i.i
  %i.cr = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bz, i1 false)
  %i.cs = sub nsw i32 31, %i.cr
  %i.ct = zext nneg i32 %i.cs to i64              ; 3 uses
  %i.cu = add nsw i64 %.0103142.lcssa172180183.i.i, -1 ; 2 uses
  %i.cv = getelementptr [4 x i8], ptr %i.a, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !7
  %i.cx = zext i32 %i.cw to i64                   ; 2 uses
  %i.cy = lshr i64 %i.cx, %i.ct
  %i.cz = trunc nuw i64 %i.cy to i32
  %i.da = getelementptr [4 x i8], ptr %i.c, i64 %i.cu
  store i32 %i.cz, ptr %i.da, align 4, !tbaa !7
  br i1 %exitcond.not.i.i.i9.i, label %bigdivrem_single.exit.loopexit.i.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i
  %.014.i.i.i.i.i.1 = shl nuw i64 %i.cx, 32
  %i.db = add nsw i64 %.0103142.lcssa172180183.i.i, -2 ; 2 uses
  %i.dc = getelementptr [4 x i8], ptr %i.a, i64 %i.db
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !7
  %i.de = zext i32 %i.dd to i64                   ; 2 uses
  %i.df = or disjoint i64 %.014.i.i.i.i.i.1, %i.de
  %i.dg = lshr i64 %i.df, %i.ct
  %i.dh = trunc i64 %i.dg to i32
  %i.di = getelementptr [4 x i8], ptr %i.c, i64 %i.db
  store i32 %i.dh, ptr %i.di, align 4, !tbaa !7
  br i1 %exitcond.not.i.i.i9.i.1, label %bigdivrem_single.exit.loopexit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.014.i.i.i.i.i.2 = shl nuw i64 %i.de, 32
  %i.dj = add nsw i64 %.0103142.lcssa172180183.i.i, -3 ; 2 uses
  %i.dk = getelementptr [4 x i8], ptr %i.a, i64 %i.dj
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !7
  %i.dm = zext i32 %i.dl to i64
  %i.dn = or disjoint i64 %.014.i.i.i.i.i.2, %i.dm
  %i.do = lshr i64 %i.dn, %i.ct
  %i.dp = trunc i64 %i.do to i32
  %i.dq = getelementptr [4 x i8], ptr %i.c, i64 %i.dj
  store i32 %i.dp, ptr %i.dq, align 4, !tbaa !7
  br label %bigdivrem_single.exit.loopexit.i.i

.lr.ph.i.i.i8.i:                                  ; preds = %._crit_edge.i.i
  %i.dr = and i64 %1, 4294967295                  ; 6 uses
  %i.ds = add nsw i64 %.0103142.lcssa172180183.i.i, -1 ; 2 uses
  %i.dt = getelementptr [4 x i8], ptr %i.a, i64 %i.ds
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !7
  %i.dv = zext i32 %i.du to i64                   ; 2 uses
  %i.dw = udiv i64 %i.dv, %i.dr
  %i.dx = trunc nuw i64 %i.dw to i32
  %i.dy = getelementptr [4 x i8], ptr %i.c, i64 %i.ds
  store i32 %i.dx, ptr %i.dy, align 4, !tbaa !7
  %i.dz = urem i64 %i.dv, %i.dr                   ; 2 uses
  br i1 %exitcond.not.i.i.i9.i, label %._crit_edge.loopexit.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i8.i
  %i.ea = shl nuw i64 %i.dz, 32
  %i.eb = add nsw i64 %.0103142.lcssa172180183.i.i, -2 ; 2 uses
  %i.ec = getelementptr [4 x i8], ptr %i.a, i64 %i.eb
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !7
  %i.ee = zext i32 %i.ed to i64
  %i.ef = or disjoint i64 %i.ea, %i.ee            ; 2 uses
  %i.eg = udiv i64 %i.ef, %i.dr
  %i.eh = trunc i64 %i.eg to i32
  %i.ei = getelementptr [4 x i8], ptr %i.c, i64 %i.eb
  store i32 %i.eh, ptr %i.ei, align 4, !tbaa !7
  %i.ej = urem i64 %i.ef, %i.dr                   ; 2 uses
  br i1 %exitcond.not.i.i.i9.i.1, label %._crit_edge.loopexit.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ek = shl nuw i64 %i.ej, 32
  %i.el = add nsw i64 %.0103142.lcssa172180183.i.i, -3 ; 2 uses
  %i.em = getelementptr [4 x i8], ptr %i.a, i64 %i.el
  %i.en = load i32, ptr %i.em, align 4, !tbaa !7
  %i.eo = zext i32 %i.en to i64
  %i.ep = or disjoint i64 %i.ek, %i.eo            ; 2 uses
  %i.eq = udiv i64 %i.ep, %i.dr
  %i.er = trunc i64 %i.eq to i32
  %i.es = getelementptr [4 x i8], ptr %i.c, i64 %i.el
  store i32 %i.er, ptr %i.es, align 4, !tbaa !7
  %i.et = urem i64 %i.ep, %i.dr
  br label %._crit_edge.loopexit.i.i.i.i

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.s, %bb.r, %.lr.ph.i.i.i8.i
  %.lcssa = phi i64 [ %i.dz, %.lr.ph.i.i.i8.i ], [ %i.ej, %bb.r ], [ %i.et, %bb.s ]
  %i.eu = trunc nuw i64 %.lcssa to i32
  br label %bigdivrem_single.exit.i.i

bigdivrem_single.exit.loopexit.i.i:               ; preds = %bb.q, %bb.p, %.lr.ph.i.i.i.i.i
  %i.ev = add i32 %i.bz, -1
  %i.ew = and i32 %i.bv, %i.ev
  br label %bigdivrem_single.exit.i.i

bigdivrem_single.exit.i.i:                        ; preds = %bigdivrem_single.exit.loopexit.i.i, %._crit_edge.loopexit.i.i.i.i
  %.027.i.i.i.i = phi i32 [ %i.eu, %._crit_edge.loopexit.i.i.i.i ], [ %i.ew, %bigdivrem_single.exit.loopexit.i.i ] ; 2 uses
  store i32 %.027.i.i.i.i, ptr %i.d, align 8, !tbaa !7
  %.0108.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 0, ptr %.0108.i.i, align 4, !tbaa !7
  br label %.preheader.i.1.i

bb.t:                                             ; preds = %bb.o
  %i.ex = load i64, ptr %i.a, align 8             ; 2 uses
  %i.ey = udiv i64 %i.ex, %1
  store i64 %i.ey, ptr %i.c, align 16
  store i64 0, ptr %.0103142.lcssa172180183.i.sroa.gep.i, align 8
  %i.ez = urem i64 %i.ex, %1                      ; 2 uses
  store i64 %i.ez, ptr %i.d, align 8
  %i.fa = lshr i64 %i.ez, 32
  %i.fb = trunc nuw i64 %i.fa to i32
  br label %bary_divmod.exit.i

.thread184.i.i:                                   ; preds = %.critedge.preheader.thread.i.i
  call fastcc void @bary_divmod_normal(ptr noundef nonnull %i.c, i64 noundef 4, ptr noundef nonnull %i.d, i64 noundef 2, ptr noundef nonnull readonly %i.a, i64 noundef 3, ptr noundef nonnull %i.b, i64 noundef 2)
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !7
  br label %bary_divmod.exit.i

bary_divmod.exit.i:                               ; preds = %.thread184.i.i, %bb.t, %.preheader134.i.i
  %i.fc = phi i32 [ %i.fb, %bb.t ], [ %i.cl, %.preheader134.i.i ], [ %.pre.i, %.thread184.i.i ]
  %.not.i10.i = icmp eq i32 %i.fc, 0
  br i1 %.not.i10.i, label %.preheader.i.1thread-pre-split.i, label %.lr.ph.i.i11.preheader.i

.lr.ph.i.i11.preheader.i:                         ; preds = %.preheader.i.1.i, %bary_divmod.exit.i
  %i.fd = load i32, ptr %i.c, align 16, !tbaa !7  ; 2 uses
  %i.fe = add i32 %i.fd, 1
  store i32 %i.fe, ptr %i.c, align 16, !tbaa !7
  %.not45.i = icmp eq i32 %i.fd, -1
  br i1 %.not45.i, label %.lr.ph83.i.i.1.i, label %bary_add.exit.i

.preheader.i.1thread-pre-split.i:                 ; preds = %bary_divmod.exit.i
  %.pr.i = load i32, ptr %i.d, align 8, !tbaa !7
  br label %.preheader.i.1.i

.preheader.i.1.i:                                 ; preds = %.preheader.i.1thread-pre-split.i, %bigdivrem_single.exit.i.i
  %i.ff = phi i32 [ %.pr.i, %.preheader.i.1thread-pre-split.i ], [ %.027.i.i.i.i, %bigdivrem_single.exit.i.i ]
  %.not.i10.1.i = icmp eq i32 %i.ff, 0
  br i1 %.not.i10.1.i, label %bary_zero_p.exit.i, label %.lr.ph.i.i11.preheader.i

.lr.ph83.i.i.1.i:                                 ; preds = %.lr.ph.i.i11.preheader.i
  %i.fg = load i32, ptr %.0103142.lcssa172180183.i.sroa.gep34.i, align 4, !tbaa !7 ; 2 uses
  %i.fh = add i32 %i.fg, 1
  store i32 %i.fh, ptr %.0103142.lcssa172180183.i.sroa.gep34.i, align 4, !tbaa !7
  %.not46.i = icmp eq i32 %i.fg, -1
  br i1 %.not46.i, label %.lr.ph83.i.i.2.i, label %bary_add.exit.i

.lr.ph83.i.i.2.i:                                 ; preds = %.lr.ph83.i.i.1.i
  %i.fi = load i32, ptr %.0103142.lcssa172180183.i.sroa.gep.i, align 8, !tbaa !7 ; 2 uses
  %i.fj = add i32 %i.fi, 1
  store i32 %i.fj, ptr %.0103142.lcssa172180183.i.sroa.gep.i, align 8, !tbaa !7
  %.not47.i = icmp eq i32 %i.fi, -1
  br i1 %.not47.i, label %bb.u, label %bary_add.exit.i

bb.u:                                             ; preds = %.lr.ph83.i.i.2.i
  %i.fk = load i32, ptr %.0103142.lcssa172180183.i.sroa.gep33.i, align 4, !tbaa !7
  %i.fl = add i32 %i.fk, 1
  store i32 %i.fl, ptr %.0103142.lcssa172180183.i.sroa.gep33.i, align 4, !tbaa !7
  br label %bary_add.exit.i

bary_add.exit.i:                                  ; preds = %bb.u, %.lr.ph83.i.i.2.i, %.lr.ph83.i.i.1.i, %.lr.ph.i.i11.preheader.i
  %i.fm = call fastcc i32 @bary_pack(i32 noundef 1, ptr noundef nonnull %i.d, i64 noundef 2, ptr noundef %i.e, i64 noundef 1, i64 noundef 8, i64 noundef 0, i32 noundef 64) ; 0 uses
  %i.fn = load i64, ptr %i.e, align 8, !tbaa !11
  %i.fo = sub i64 %1, %i.fn
  br label %bary_zero_p.exit.i

bary_zero_p.exit.i:                               ; preds = %bary_add.exit.i, %.preheader.i.1.i, %.preheader.i.1.thread.i
  %.05.i = phi i64 [ %i.fo, %bary_add.exit.i ], [ 0, %.preheader.i.1.i ], [ 0, %.preheader.i.1.thread.i ]
  %i.fp = call fastcc i32 @bary_pack(i32 noundef 1, ptr noundef nonnull %i.c, i64 noundef 4, ptr noundef %i.f, i64 noundef 1, i64 noundef 8, i64 noundef 0, i32 noundef 64)
  %i.fq = icmp eq i32 %i.fp, 2
  %i.fr = load i64, ptr %i.f, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br i1 %i.fq, label %.thread, label %bb.v

bb.v:                                             ; preds = %bary_zero_p.exit.i, %bb.j
  %.020 = phi i64 [ %i.aw, %bb.j ], [ %.05.i, %bary_zero_p.exit.i ]
  %.0 = phi i64 [ %i.au, %bb.j ], [ %i.fr, %bary_zero_p.exit.i ] ; 3 uses
  %i.fs = icmp eq i64 %.0, -1
  br i1 %i.fs, label %.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i64 %.020, ptr %2, align 8, !tbaa !11
  br label %.thread

.thread:                                          ; preds = %bary_zero_p.exit.i, %bb.w, %bb.x, %bb.v, %bb.a
  %.012 = phi i64 [ -1, %bb.v ], [ -1, %bb.a ], [ %.0, %bb.x ], [ %.0, %bb.w ], [ -1, %bary_zero_p.exit.i ]
  ret i64 %.012
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 0, 2) i32 @rb_absint_singlebit_p(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.b = tail call i64 @rb_to_int(i64 noundef %0) #23 ; 3 uses
  %i.c = trunc i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = ashr i64 %i.b, 1
  %spec.select = tail call i64 @llvm.abs.i64(i64 %i.d, i1 true) ; 2 uses
  %i.e = trunc i64 %spec.select to i32
  store i32 %i.e, ptr %i.a, align 4, !tbaa !7
  %i.f = lshr i64 %spec.select, 32
  %i.g = trunc nuw nsw i64 %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.g, ptr %i.h, align 4, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.j = inttoptr i64 %i.b to ptr                 ; 4 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !13   ; 2 uses
  %i.l = and i64 %i.k, 16384
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %i.j, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !15
  %i.o = getelementptr i8, ptr %i.j, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !15
  br label %BIGNUM_LEN.exit

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr i8, ptr %i.j, i64 16
  %i.r = lshr i64 %i.k, 15
  %i.s = and i64 %i.r, 511
  br label %BIGNUM_LEN.exit

BIGNUM_LEN.exit:                                  ; preds = %bb.d, %bb.e
  %.0.i41 = phi ptr [ %i.q, %bb.e ], [ %i.n, %bb.d ] ; 2 uses
  %.0.i39 = phi i64 [ %i.s, %bb.e ], [ %i.p, %bb.d ]
  %i.t = getelementptr [4 x i8], ptr %.0.i41, i64 %.0.i39
  br label %bb.f

bb.f:                                             ; preds = %BIGNUM_LEN.exit, %bb.b
  %.034 = phi ptr [ %i.a, %bb.b ], [ %.0.i41, %BIGNUM_LEN.exit ] ; 3 uses
  %.032 = phi ptr [ %i.i, %bb.b ], [ %i.t, %BIGNUM_LEN.exit ]
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.133 = phi ptr [ %.032, %bb.f ], [ %i.v, %bb.h ] ; 4 uses
  %i.u = icmp ult ptr %.034, %.133
  br i1 %i.u, label %bb.h, label %.critedge2

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr i8, ptr %.133, i64 -4      ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !7
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.g, label %.lr.ph, !llvm.loop !172

.lr.ph:                                           ; preds = %bb.h, %bb.i
  %.13545 = phi ptr [ %i.aa, %bb.i ], [ %.034, %bb.h ] ; 3 uses
  %i.y = load i32, ptr %.13545, align 4, !tbaa !7
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.i, label %.critedge2

bb.i:                                             ; preds = %.lr.ph
  %i.aa = getelementptr i8, ptr %.13545, i64 4    ; 3 uses
  %i.ab = icmp ult ptr %i.aa, %.133
  br i1 %i.ab, label %.lr.ph, label %.critedge2, !llvm.loop !173

.critedge2:                                       ; preds = %bb.g, %.lr.ph, %bb.i
  %.135.lcssa = phi ptr [ %.13545, %.lr.ph ], [ %i.aa, %bb.i ], [ %.034, %bb.g ] ; 2 uses
  %i.ac = getelementptr i8, ptr %.133, i64 -4
  %.not = icmp eq ptr %.135.lcssa, %i.ac
  br i1 %.not, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.critedge2
  %i.ad = load i32, ptr %.135.lcssa, align 4, !tbaa !7
  %i.ae = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.ad)
  %i.af = icmp samesign ult i32 %i.ae, 2
  %i.ag = zext i1 %i.af to i32
  br label %bb.k

bb.k:                                             ; preds = %.critedge2, %bb.j
  %.031 = phi i32 [ %i.ag, %bb.j ], [ 0, %.critedge2 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i32 %.031
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @bary_pack(i32 noundef range(i32 -1, 2) %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i32 noundef %7) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr [4 x i8], ptr %1, i64 %2
  tail call fastcc void @validate_integer_pack_format(i64 noundef %4, i64 noundef %5, i64 noundef %6, i32 noundef %7, i32 noundef 1267)
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.0476 = phi ptr [ %i.a, %bb.a ], [ %i.c, %bb.c ] ; 20 uses
  %i.b = icmp ult ptr %1, %.0476                  ; 3 uses
  br i1 %i.b, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %.0476, i64 -4     ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !7
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %.critedge, !llvm.loop !174

.critedge:                                        ; preds = %bb.b, %bb.c
  %i.f = icmp eq ptr %1, %.0476                   ; 3 uses
  %spec.select = select i1 %i.f, i32 0, i32 %0    ; 19 uses
  %i.g = and i32 %7, 1024
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.d, label %bb.as

bb.d:                                             ; preds = %.critedge
  %i.h = icmp eq i32 %spec.select, 0
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = mul i64 %5, %4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %3, i8 noundef 0, i64 noundef %i.i, i1 noundef false) #23
  br label %.thread494

bb.f:                                             ; preds = %bb.d
  %i.j = icmp eq i64 %6, 0                        ; 2 uses
  %i.k = icmp eq i64 %4, 1
  %or.cond = and i1 %i.k, %i.j
  br i1 %or.cond, label %bb.g, label %..thread498_crit_edge

..thread498_crit_edge:                            ; preds = %bb.f
  %.pre = and i32 %7, 112
  br label %.thread498

bb.g:                                             ; preds = %bb.f
  %.not311 = icmp eq i64 %5, 1
  %i.l = and i32 %7, 112                          ; 7 uses
  %.not312 = icmp eq i32 %i.l, 64
  %or.cond329 = or i1 %.not311, %.not312
  br i1 %or.cond329, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = and i32 %7, 16
  %i.n = icmp ne i32 %i.m, 0
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.o = phi i1 [ %i.n, %bb.h ], [ false, %bb.g ] ; 4 uses
  %i.p = icmp sgt i32 %spec.select, 0
  %i.q = and i32 %7, 128
  %.not313 = icmp eq i32 %i.q, 0
  %or.cond330 = or i1 %.not313, %i.p
  br i1 %or.cond330, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i
  switch i64 %5, label %.thread498 [
    i64 1, label %bb.k
    i64 2, label %bb.l
    i64 4, label %bb.n
  ]

bb.k:                                             ; preds = %bb.j
  %i.r = load i32, ptr %1, align 4, !tbaa !7      ; 2 uses
  %i.s = trunc i32 %i.r to i8
  store i8 %i.s, ptr %3, align 1, !tbaa !15
  %i.t = ptrtoint ptr %.0476 to i64
  %i.u = ptrtoint ptr %1 to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = icmp sgt i64 %i.v, 4
  %i.x = icmp ugt i32 %i.r, 255
  %i.y = select i1 %i.w, i1 true, i1 %i.x
  %i.z = zext i1 %i.y to i32
  %i.aa = shl nsw i32 %spec.select, %i.z
  br label %.thread494

bb.l:                                             ; preds = %bb.j
  %i.ab = ptrtoint ptr %3 to i64
  %i.ac = and i64 %i.ab, 1
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.m, label %.thread498
end_hunk_0
begin_hunk_1_@bary_pack:bb.a
  %i.bz = sub nsw i64 0, %i.by                    ; 2 uses
  %i.ca = trunc i64 %i.bz to i32                  ; 2 uses
  %i.cb = tail call i32 @llvm.bswap.i32(i32 %i.ca)
  %spec.select540 = select i1 %i.o, i32 %i.cb, i32 %i.ca
  store i32 %spec.select540, ptr %3, align 4, !tbaa !7
  %i.cc = ptrtoint ptr %.0476 to i64
  %i.cd = ptrtoint ptr %1 to i64
  %i.ce = sub i64 %i.cc, %i.cd                    ; 2 uses
  %i.cf = icmp eq i64 %i.ce, 8
  br i1 %i.cf, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.cg = getelementptr i8, ptr %1, i64 4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !7
  %i.ci = icmp eq i32 %i.ch, 1
  br i1 %i.ci, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cj = load i32, ptr %1, align 4, !tbaa !7
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %.thread494, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %i.cl = icmp sgt i64 %i.ce, 4
  %i.cm = icmp ult i64 %i.bz, -4294967296
  %i.cn = select i1 %i.cl, i1 true, i1 %i.cm
  %i.co = select i1 %i.cn, i32 -2, i32 -1
  br label %.thread494

.thread498:                                       ; preds = %..thread498_crit_edge, %bb.r, %bb.l, %bb.n, %bb.j, %bb.t, %bb.p
  %.pre-phi = phi i32 [ %.pre, %..thread498_crit_edge ], [ %i.l, %bb.r ], [ %i.l, %bb.l ], [ %i.l, %bb.n ], [ %i.l, %bb.j ], [ %i.l, %bb.t ], [ %i.l, %bb.p ]
  %i.cp = and i32 %7, 3
  %i.cq = icmp eq i32 %i.cp, 2
  %.not314 = icmp ne i32 %.pre-phi, 16
  %i.cr = and i1 %i.cq, %.not314
  %or.cond342.not = and i1 %i.j, %i.cr
  br i1 %or.cond342.not, label %bb.y, label %bb.ag

bb.y:                                             ; preds = %.thread498
  %i.cs = ptrtoint ptr %.0476 to i64
  %i.ct = ptrtoint ptr %1 to i64
  %i.cu = sub i64 %i.cs, %i.ct                    ; 2 uses
  %i.cv = mul i64 %5, %4                          ; 16 uses
  %.not323603 = icmp eq i64 %i.cu, 0
  br i1 %.not323603, label %ruby_nonempty_memcpy.exit, label %.lr.ph606

.lr.ph606:                                        ; preds = %bb.y, %bb.z
  %.0289604 = phi i64 [ %i.da, %bb.z ], [ %i.cu, %bb.y ] ; 7 uses
  %i.cw = getelementptr i8, ptr %1, i64 %.0289604
  %i.cx = getelementptr i8, ptr %i.cw, i64 -1
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !15
  %i.cz = icmp eq i8 %i.cy, 0
  br i1 %i.cz, label %bb.z, label %.critedge5.thread

bb.z:                                             ; preds = %.lr.ph606
  %i.da = add i64 %.0289604, -1                   ; 2 uses
  %.not323 = icmp eq i64 %i.da, 0
  br i1 %.not323, label %ruby_nonempty_memcpy.exit, label %.lr.ph606, !llvm.loop !177

.critedge5.thread:                                ; preds = %.lr.ph606
  %.not324501 = icmp ugt i64 %.0289604, %i.cv
  br i1 %.not324501, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.critedge5.thread
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull readonly align 1 dereferenceable(1) %1, i64 noundef range(i64 1, 0) %.0289604, i1 noundef false) #23
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %bb.z, %bb.y, %bb.aa
  %.0289560 = phi i64 [ %.0289604, %bb.aa ], [ 0, %bb.y ], [ 0, %bb.z ] ; 3 uses
  %i.db = getelementptr i8, ptr %3, i64 %.0289560
  %i.dc = sub nuw i64 %i.cv, %.0289560
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.db, i8 noundef 0, i64 noundef %i.dc, i1 noundef false) #23
  br label %ruby_nonempty_memcpy.exit364

bb.ab:                                            ; preds = %.critedge5.thread
  %.not.i362 = icmp eq i64 %i.cv, 0
  br i1 %.not.i362, label %ruby_nonempty_memcpy.exit364.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull readonly align 1 %1, i64 noundef range(i64 1, 0) %i.cv, i1 noundef false) #23
  br label %ruby_nonempty_memcpy.exit364

ruby_nonempty_memcpy.exit364:                     ; preds = %bb.ac, %ruby_nonempty_memcpy.exit
  %.0289559 = phi i64 [ %.0289560, %ruby_nonempty_memcpy.exit ], [ %.0289604, %bb.ac ]
  %.not324502 = phi i1 [ false, %ruby_nonempty_memcpy.exit ], [ true, %bb.ac ]
  %.not326 = phi i1 [ true, %ruby_nonempty_memcpy.exit ], [ false, %bb.ac ]
  %i.dd = icmp sgt i32 %spec.select, -1
  %i.de = and i32 %7, 128
  %.not325 = icmp eq i32 %i.de, 0
  %or.cond344 = or i1 %.not325, %i.dd
  br i1 %or.cond344, label %bytes_2comp.exit.thread, label %bb.ad

ruby_nonempty_memcpy.exit364.thread:              ; preds = %bb.ab
  %i.df = icmp sgt i32 %spec.select, -1
  %i.dg = and i32 %7, 128
  %.not325511 = icmp eq i32 %i.dg, 0
  %or.cond344512 = or i1 %.not325511, %i.df
  br i1 %or.cond344512, label %.thread527, label %bytes_2comp.exit.thread652

bb.ad:                                            ; preds = %ruby_nonempty_memcpy.exit364
  %.not24.i = icmp eq i64 %i.cv, 0
  br i1 %.not24.i, label %bytes_2comp.exit, label %iter.check

iter.check:                                       ; preds = %bb.ad
  %min.iters.check711.a = icmp ult i64 %i.cv, 4
  br i1 %min.iters.check711.a, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check712 = icmp ult i64 %i.cv, 32
  br i1 %min.iters.check712, label %vec.epilog.ph, label %vector.ph713

vector.ph713:                                     ; preds = %vector.main.loop.iter.check
  %n.mod.vf714 = and i64 %i.cv, 28
  %n.vec715 = and i64 %i.cv, -32                  ; 4 uses
  br label %vector.body716

vector.body716:                                   ; preds = %vector.body716, %vector.ph713
  %index717 = phi i64 [ 0, %vector.ph713 ], [ %index.next720, %vector.body716 ] ; 2 uses
  %i.dh = getelementptr i8, ptr %3, i64 %index717 ; 3 uses
  %i.di = getelementptr i8, ptr %i.dh, i64 16     ; 2 uses
  %wide.load718.a = load <16 x i8>, ptr %i.dh, align 1, !tbaa !15
  %wide.load719 = load <16 x i8>, ptr %i.di, align 1, !tbaa !15
  %i.dj = xor <16 x i8> %wide.load718.a, splat (i8 -1)
  %i.dk = xor <16 x i8> %wide.load719, splat (i8 -1)
  store <16 x i8> %i.dj, ptr %i.dh, align 1, !tbaa !15
  store <16 x i8> %i.dk, ptr %i.di, align 1, !tbaa !15
  %index.next720 = add nuw i64 %index717, 32      ; 2 uses
  %i.dl = icmp eq i64 %index.next720, %n.vec715
  br i1 %i.dl, label %middle.block721, label %vector.body716, !llvm.loop !178

middle.block721:                                  ; preds = %vector.body716
  %cmp.n722 = icmp eq i64 %i.cv, %n.vec715
  br i1 %cmp.n722, label %.lr.ph21.i.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block721
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf714, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !179

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec715, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec724 = and i64 %i.cv, -4                   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index725 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next727, %vec.epilog.vector.body ] ; 2 uses
  %i.dm = getelementptr i8, ptr %3, i64 %index725 ; 2 uses
  %wide.load726 = load <4 x i8>, ptr %i.dm, align 1, !tbaa !15
  %i.dn = xor <4 x i8> %wide.load726, splat (i8 -1)
  store <4 x i8> %i.dn, ptr %i.dm, align 1, !tbaa !15
  %index.next727 = add nuw i64 %index725, 4       ; 2 uses
  %i.do = icmp eq i64 %index.next727, %n.vec724
  br i1 %i.do, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !180

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n728 = icmp eq i64 %i.cv, %n.vec724
  br i1 %cmp.n728, label %.lr.ph21.i.preheader, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.01719.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec715, %vec.epilog.iter.check ], [ %n.vec724, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.01719.i = phi i64 [ %i.ds, %.lr.ph.i ], [ %.01719.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.dp = getelementptr i8, ptr %3, i64 %.01719.i ; 2 uses
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !15
  %i.dr = xor i8 %i.dq, -1
  store i8 %i.dr, ptr %i.dp, align 1, !tbaa !15
  %i.ds = add nuw i64 %.01719.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ds, %i.cv
  br i1 %exitcond.not.i, label %.lr.ph21.i.preheader, label %.lr.ph.i, !llvm.loop !181

.lr.ph21.i.preheader:                             ; preds = %.lr.ph.i, %vec.epilog.middle.block, %middle.block721
  br label %.lr.ph21.i

bb.ae:                                            ; preds = %.lr.ph21.i
  %i.dt = add nuw i64 %.120.i, 1                  ; 2 uses
  %exitcond26.not.i = icmp eq i64 %i.dt, %i.cv
  br i1 %exitcond26.not.i, label %bytes_2comp.exit, label %.lr.ph21.i, !llvm.loop !182

.lr.ph21.i:                                       ; preds = %.lr.ph21.i.preheader, %bb.ae
  %.120.i = phi i64 [ %i.dt, %bb.ae ], [ 0, %.lr.ph21.i.preheader ] ; 2 uses
  %i.du = getelementptr i8, ptr %3, i64 %.120.i   ; 2 uses
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !15
  %i.dw = add i8 %i.dv, 1                         ; 2 uses
  store i8 %i.dw, ptr %i.du, align 1, !tbaa !15
  %.not.i365 = icmp eq i8 %i.dw, 0
  br i1 %.not.i365, label %bb.ae, label %bytes_2comp.exit.thread

bytes_2comp.exit:                                 ; preds = %bb.ae, %bb.ad
  br i1 %.not324502, label %bytes_2comp.exit.thread652, label %bytes_2comp.exit.thread

bytes_2comp.exit.thread652:                       ; preds = %ruby_nonempty_memcpy.exit364.thread, %bytes_2comp.exit
  %.0289558656 = phi i64 [ %.0289559, %bytes_2comp.exit ], [ %.0289604, %ruby_nonempty_memcpy.exit364.thread ]
  %i.dx = add i64 %.0289558656, -1
  %i.dy = icmp eq i64 %i.cv, %i.dx
  br i1 %i.dy, label %bb.af, label %.thread527

bb.af:                                            ; preds = %bytes_2comp.exit.thread652
  %i.dz = getelementptr i8, ptr %1, i64 %i.cv
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !15
  %i.eb = icmp eq i8 %i.ea, 1
  br i1 %i.eb, label %.thread531, label %.thread527

.thread527:                                       ; preds = %bytes_2comp.exit.thread652, %bb.af, %ruby_nonempty_memcpy.exit364.thread
  %i.ec = shl nsw i32 %spec.select, 1
  br label %.thread494

bytes_2comp.exit.thread:                          ; preds = %.lr.ph21.i, %bytes_2comp.exit, %ruby_nonempty_memcpy.exit364
  %i.ed = shl nsw i32 %spec.select, 1
  br i1 %.not326, label %.thread531, label %.thread494

.thread531:                                       ; preds = %bb.af, %bytes_2comp.exit.thread
  br label %.thread494

bb.ag:                                            ; preds = %.thread498
  %i.ee = ptrtoint ptr %3 to i64
  %i.ef = or i64 %5, %i.ee
  %i.eg = and i64 %i.ef, 3
  %i.eh = or i64 %i.eg, %6
  %or.cond353 = icmp eq i64 %i.eh, 0
  br i1 %or.cond353, label %bb.ah, label %bb.as

bb.ah:                                            ; preds = %bb.ag
  %i.ei = lshr exact i64 %5, 2
  %i.ej = ptrtoint ptr %.0476 to i64
  %i.ek = ptrtoint ptr %1 to i64
  %i.el = sub i64 %i.ej, %i.ek                    ; 4 uses
  %i.em = ashr exact i64 %i.el, 2                 ; 5 uses
  %i.en = mul i64 %i.ei, %4                       ; 20 uses
  %i.eo = and i32 %7, 1
  %.not315 = icmp eq i32 %i.eo, 0                 ; 2 uses
  %.not317 = icmp ugt i64 %i.em, %i.en            ; 2 uses
  br i1 %.not317, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ep = icmp ugt i64 %i.em, 4611686018427387903
  br i1 %i.ep, label %bb.aj, label %rbimpl_size_mul_or_raise.exit, !prof !32

bb.aj:                                            ; preds = %bb.ai
  tail call void @ruby_malloc_size_overflow(i64 noundef 4, i64 noundef %i.em) #25
  unreachable

rbimpl_size_mul_or_raise.exit:                    ; preds = %bb.ai
  br i1 %i.f, label %ruby_nonempty_memcpy.exit369, label %bb.ak

bb.ak:                                            ; preds = %rbimpl_size_mul_or_raise.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull readonly align 1 %1, i64 noundef range(i64 1, 0) %i.el, i1 noundef false) #23
  br label %ruby_nonempty_memcpy.exit369

ruby_nonempty_memcpy.exit369:                     ; preds = %rbimpl_size_mul_or_raise.exit, %bb.ak
  %.not318593 = icmp eq i64 %i.en, %i.em
  br i1 %.not318593, label %ruby_nonempty_memcpy.exit373, label %.lr.ph596.preheader

.lr.ph596.preheader:                              ; preds = %ruby_nonempty_memcpy.exit369
  %i.eq = getelementptr i8, ptr %3, i64 %i.el
  %i.er = shl i64 %i.en, 2
  %i.es = sub i64 %i.er, %i.el
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.eq, i8 0, i64 %i.es, i1 false), !tbaa !7
  br label %ruby_nonempty_memcpy.exit373

bb.al:                                            ; preds = %bb.ah
  %i.et = icmp ugt i64 %i.en, 4611686018427387903
  br i1 %i.et, label %bb.am, label %rbimpl_size_mul_or_raise.exit370, !prof !32

bb.am:                                            ; preds = %bb.al
  tail call void @ruby_malloc_size_overflow(i64 noundef 4, i64 noundef %i.en) #25
  unreachable

rbimpl_size_mul_or_raise.exit370:                 ; preds = %bb.al
  %.not.i371 = icmp eq i64 %i.en, 0
  br i1 %.not.i371, label %ruby_nonempty_memcpy.exit373.thread, label %bb.an

bb.an:                                            ; preds = %rbimpl_size_mul_or_raise.exit370
  %i.eu = shl nuw i64 %i.en, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull readonly align 1 %1, i64 noundef range(i64 1, 0) %i.eu, i1 noundef false) #23
  br label %ruby_nonempty_memcpy.exit373

ruby_nonempty_memcpy.exit373:                     ; preds = %.lr.ph596.preheader, %ruby_nonempty_memcpy.exit369, %bb.an
  %.0284 = phi i32 [ 1, %bb.an ], [ 0, %.lr.ph596.preheader ], [ 0, %ruby_nonempty_memcpy.exit369 ] ; 5 uses
  %i.ev = icmp sgt i32 %spec.select, -1
  %i.ew = and i32 %7, 128
  %.not319 = icmp eq i32 %i.ew, 0
  %or.cond355 = or i1 %.not319, %i.ev
  br i1 %or.cond355, label %bary_2comp.exit.thread, label %bb.ao

ruby_nonempty_memcpy.exit373.thread:              ; preds = %rbimpl_size_mul_or_raise.exit370
  %i.ex = icmp sgt i32 %spec.select, -1
  %i.ey = and i32 %7, 128
  %.not319658 = icmp eq i32 %i.ey, 0
  %or.cond355659 = or i1 %.not319658, %i.ex
  br i1 %or.cond355659, label %bary_2comp.exit.thread.thread, label %bary_2comp.exit.thread664

bary_2comp.exit.thread.thread:                    ; preds = %ruby_nonempty_memcpy.exit373.thread
  %i.ez = and i32 %7, 80
  %.not320.not667 = icmp eq i32 %i.ez, 16
  br label %.loopexit555

bb.ao:                                            ; preds = %ruby_nonempty_memcpy.exit373
  %.not27.i = icmp eq i64 %i.en, 0
  br i1 %.not27.i, label %bary_2comp.exit, label %.lr.ph.i374

.lr.ph.i374:                                      ; preds = %bb.ao, %bb.ap
  %.023.i = phi i64 [ %i.fc, %bb.ap ], [ 0, %bb.ao ] ; 5 uses
  %i.fa = getelementptr [4 x i8], ptr %3, i64 %.023.i
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !7  ; 2 uses
  %.not.i375 = icmp eq i32 %i.fb, 0
  br i1 %.not.i375, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.lr.ph.i374
  %i.fc = add nuw i64 %.023.i, 1                  ; 2 uses
  %exitcond.not.i376 = icmp eq i64 %i.fc, %i.en
  br i1 %exitcond.not.i376, label %bary_2comp.exit, label %.lr.ph.i374, !llvm.loop !55

bb.aq:                                            ; preds = %.lr.ph.i374
  %i.fd = getelementptr [4 x i8], ptr %3, i64 %.023.i
  %i.fe = sub i32 0, %i.fb
  store i32 %i.fe, ptr %i.fd, align 4, !tbaa !7
  %.124.i = add i64 %.023.i, 1                    ; 4 uses
  %i.ff = icmp ult i64 %.124.i, %i.en
  br i1 %i.ff, label %.lr.ph26.i.preheader, label %bary_2comp.exit.thread

.lr.ph26.i.preheader:                             ; preds = %bb.aq
  %i.fg = xor i64 %.023.i, -1
  %i.fh = add i64 %i.en, %i.fg                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.fh, 8
  br i1 %min.iters.check, label %.lr.ph26.i.preheader732, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph26.i.preheader
  %n.vec = and i64 %i.fh, -8                      ; 3 uses
  %i.fi = add i64 %.124.i, %n.vec
  %i.fj = getelementptr [4 x i8], ptr %3, i64 %.124.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fk = getelementptr [4 x i8], ptr %i.fj, i64 %index ; 3 uses
  %i.fl = getelementptr i8, ptr %i.fk, i64 16     ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.fk, align 4, !tbaa !7
  %wide.load696 = load <4 x i32>, ptr %i.fl, align 4, !tbaa !7
  %i.fm = xor <4 x i32> %wide.load, splat (i32 -1)
  %i.fn = xor <4 x i32> %wide.load696, splat (i32 -1)
  store <4 x i32> %i.fm, ptr %i.fk, align 4, !tbaa !7
  store <4 x i32> %i.fn, ptr %i.fl, align 4, !tbaa !7
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fo = icmp eq i64 %index.next, %n.vec
  br i1 %i.fo, label %middle.block, label %vector.body, !llvm.loop !183

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fh, %n.vec
  br i1 %cmp.n, label %bary_2comp.exit.thread, label %.lr.ph26.i.preheader732

.lr.ph26.i.preheader732:                          ; preds = %.lr.ph26.i.preheader, %middle.block
  %.125.i.ph = phi i64 [ %.124.i, %.lr.ph26.i.preheader ], [ %i.fi, %middle.block ]
  br label %.lr.ph26.i

.lr.ph26.i:                                       ; preds = %.lr.ph26.i.preheader732, %.lr.ph26.i
  %.125.i = phi i64 [ %.1.i, %.lr.ph26.i ], [ %.125.i.ph, %.lr.ph26.i.preheader732 ] ; 2 uses
  %i.fp = getelementptr [4 x i8], ptr %3, i64 %.125.i ; 2 uses
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !7
  %i.fr = xor i32 %i.fq, -1
  store i32 %i.fr, ptr %i.fp, align 4, !tbaa !7
  %.1.i = add nuw i64 %.125.i, 1                  ; 2 uses
  %exitcond31.not.i = icmp eq i64 %.1.i, %i.en
  br i1 %exitcond31.not.i, label %bary_2comp.exit.thread, label %.lr.ph26.i, !llvm.loop !184

bary_2comp.exit:                                  ; preds = %bb.ap, %bb.ao
  br i1 %.not317, label %bary_2comp.exit.thread664, label %bary_2comp.exit.thread

bary_2comp.exit.thread664:                        ; preds = %ruby_nonempty_memcpy.exit373.thread, %bary_2comp.exit
  %i.fs = add nsw i64 %i.em, -1
  %i.ft = icmp eq i64 %i.en, %i.fs
  br i1 %i.ft, label %bb.ar, label %bary_2comp.exit.thread

bb.ar:                                            ; preds = %bary_2comp.exit.thread664
  %i.fu = getelementptr [4 x i8], ptr %1, i64 %i.en
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !7
  %i.fw = icmp ne i32 %i.fv, 1
  %spec.select356 = zext i1 %i.fw to i32
  br label %bary_2comp.exit.thread

bary_2comp.exit.thread:                           ; preds = %.lr.ph26.i, %middle.block, %bb.aq, %bb.ar, %bary_2comp.exit, %bary_2comp.exit.thread664, %ruby_nonempty_memcpy.exit373
  %.2286 = phi i32 [ %.0284, %ruby_nonempty_memcpy.exit373 ], [ %.0284, %bary_2comp.exit ], [ %spec.select356, %bb.ar ], [ 1, %bary_2comp.exit.thread664 ], [ %.0284, %bb.aq ], [ %.0284, %middle.block ], [ %.0284, %.lr.ph26.i ] ; 3 uses
  %i.fx = and i32 %7, 80
  %.not320.not = icmp eq i32 %i.fx, 16            ; 4 uses
  %i.fy = icmp ne i64 %i.en, 0
  %or.cond609 = and i1 %.not320.not, %i.fy
  br i1 %or.cond609, label %.lr.ph599.preheader, label %.loopexit555

.lr.ph599.preheader:                              ; preds = %bary_2comp.exit.thread
  %min.iters.check698 = icmp ult i64 %i.en, 8
  br i1 %min.iters.check698, label %.lr.ph599.preheader731, label %vector.ph699

vector.ph699:                                     ; preds = %.lr.ph599.preheader
  %n.vec701 = and i64 %i.en, -8                   ; 3 uses
  br label %vector.body702

vector.body702:                                   ; preds = %vector.body702, %vector.ph699
  %index703 = phi i64 [ 0, %vector.ph699 ], [ %index.next706, %vector.body702 ] ; 2 uses
  %i.fz = getelementptr [4 x i8], ptr %3, i64 %index703 ; 3 uses
  %i.ga = getelementptr i8, ptr %i.fz, i64 16     ; 2 uses
  %wide.load704.a = load <4 x i32>, ptr %i.fz, align 4, !tbaa !7
end_hunk_1
begin_hunk_2_@big2str_karatsuba:bb.a
  store ptr %i.aw, ptr %i.s, align 8, !tbaa !248
  store i8 45, ptr %i.au, align 1, !tbaa !15
  br label %big2str_alloc.exit.i

big2str_alloc.exit.i:                             ; preds = %bb.n, %RSTRING_PTR.exit.i.i
  %.not.i38.i = icmp eq i64 %.0.i136, 65
  br i1 %.not.i38.i, label %ruby_nonempty_memcpy.exit.i, label %bb.o

bb.o:                                             ; preds = %big2str_alloc.exit.i
  %i.ax = load ptr, ptr %i.s, align 8, !tbaa !248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.ax, ptr noundef nonnull readonly align 1 %i.ah, i64 noundef range(i64 1, 0) %i.ai, i1 noundef false) #23
  br label %ruby_nonempty_memcpy.exit.i

bb.p:                                             ; preds = %bary2bdigitdbl.exit.thread.i, %bary2bdigitdbl.exit.i
  %.0.i42.i = phi i64 [ 0, %bary2bdigitdbl.exit.thread.i ], [ %.0.i.i, %bary2bdigitdbl.exit.i ] ; 3 uses
  %i.ay = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !435 ; 3 uses
  %i.ba = sext i32 %i.az to i64                   ; 2 uses
  %i.bb = getelementptr i8, ptr %0, i64 4         ; 3 uses
  %i.bc = and i32 %i.az, 1
  %lcmp.mod335.not = icmp eq i32 %i.bc, 0
  br i1 %lcmp.mod335.not, label %.prol.loopexit332, label %.prol.loopexit332.unr-lcssa

.prol.loopexit332.unr-lcssa:                      ; preds = %bb.p
  %i.bd = load i32, ptr %i.bb, align 4, !tbaa !245
  %i.be = sext i32 %i.bd to i64                   ; 2 uses
  %i.bf = urem i64 %.0.i42.i, %i.be
  %i.bg = udiv i64 %.0.i42.i, %i.be
  %i.bh = getelementptr i8, ptr @ruby_digitmap, i64 %i.bf
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !15
  %i.bj = add nsw i64 %i.ba, -1                   ; 2 uses
  %i.bk = getelementptr i8, ptr %i.t, i64 %i.bj
  store i8 %i.bi, ptr %i.bk, align 1, !tbaa !15
  br label %.prol.loopexit332

.prol.loopexit332:                                ; preds = %.prol.loopexit332.unr-lcssa, %bb.p
  %.133.i.unr = phi i64 [ %.0.i42.i, %bb.p ], [ %i.bg, %.prol.loopexit332.unr-lcssa ]
  %.1.i.unr = phi i64 [ %i.ba, %bb.p ], [ %i.bj, %.prol.loopexit332.unr-lcssa ]
  %i.bl = icmp eq i32 %i.az, 1
  br i1 %i.bl, label %.unr-lcssa336, label %.new333

.new333:                                          ; preds = %.prol.loopexit332, %.new333
  %.133.i = phi i64 [ %i.bx, %.new333 ], [ %.133.i.unr, %.prol.loopexit332 ] ; 2 uses
  %.1.i = phi i64 [ %i.ca, %.new333 ], [ %.1.i.unr, %.prol.loopexit332 ] ; 2 uses
  %i.bm = load i32, ptr %i.bb, align 4, !tbaa !245
  %i.bn = sext i32 %i.bm to i64                   ; 2 uses
  %i.bo = urem i64 %.133.i, %i.bn
  %i.bp = udiv i64 %.133.i, %i.bn                 ; 2 uses
  %i.bq = getelementptr i8, ptr @ruby_digitmap, i64 %i.bo
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !15
  %i.bs = getelementptr i8, ptr %i.t, i64 %.1.i
  %i.bt = getelementptr i8, ptr %i.bs, i64 -1
  store i8 %i.br, ptr %i.bt, align 1, !tbaa !15
  %i.bu = load i32, ptr %i.bb, align 4, !tbaa !245
  %i.bv = sext i32 %i.bu to i64                   ; 2 uses
  %i.bw = urem i64 %i.bp, %i.bv
  %i.bx = udiv i64 %i.bp, %i.bv
  %i.by = getelementptr i8, ptr @ruby_digitmap, i64 %i.bw
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !15
  %i.ca = add i64 %.1.i, -2                       ; 3 uses
  %i.cb = getelementptr i8, ptr %i.t, i64 %i.ca
  store i8 %i.bz, ptr %i.cb, align 1, !tbaa !15
  %.not36.i.1 = icmp eq i64 %i.ca, 0
  br i1 %.not36.i.1, label %.unr-lcssa336, label %.new333, !llvm.loop !436

.unr-lcssa336:                                    ; preds = %.new333, %.prol.loopexit332
  %i.cc = load i32, ptr %i.ay, align 8, !tbaa !435
  %i.cd = sext i32 %i.cc to i64
  br label %ruby_nonempty_memcpy.exit.i

ruby_nonempty_memcpy.exit.i:                      ; preds = %.unr-lcssa336, %bb.o, %big2str_alloc.exit.i
  %.034.i = phi i64 [ %i.cd, %.unr-lcssa336 ], [ 0, %big2str_alloc.exit.i ], [ %i.ai, %bb.o ]
  %i.ce = load ptr, ptr %i.s, align 8, !tbaa !248
  %i.cf = getelementptr i8, ptr %i.ce, i64 %.034.i
  store ptr %i.cf, ptr %i.s, align 8, !tbaa !248
  br label %big2str_2bdigits.exit

big2str_2bdigits.exit:                            ; preds = %bary2bdigitdbl.exit.thread.i, %bb.h, %ruby_nonempty_memcpy.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %bb.ay

bb.q:                                             ; preds = %bb.d
  %i.cg = add i32 %4, -1                          ; 5 uses
  %i.ch = getelementptr i8, ptr %0, i64 4         ; 6 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !245
  %i.cj = call fastcc i64 @power_cache_get_power(i32 noundef %i.ci, i32 noundef %i.cg, ptr noundef nonnull %i.c)
  %i.ck = inttoptr i64 %i.cj to ptr               ; 4 uses
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !13 ; 2 uses
  %i.cm = and i64 %i.cl, 16384
  %.not.i137 = icmp eq i64 %i.cm, 0
  br i1 %.not.i137, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cn = lshr i64 %i.cl, 15
  %i.co = and i64 %i.cn, 511
  %i.cp = getelementptr i8, ptr %i.ck, i64 16
  br label %BIGNUM_DIGITS.exit

bb.s:                                             ; preds = %bb.q
  %i.cq = getelementptr i8, ptr %i.ck, i64 16
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !15
  %i.cs = getelementptr i8, ptr %i.ck, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit

BIGNUM_DIGITS.exit:                               ; preds = %bb.r, %bb.s
  %.0.i138194 = phi i64 [ %i.co, %bb.r ], [ %i.cr, %bb.s ] ; 2 uses
  %.0.i140 = phi ptr [ %i.cp, %bb.r ], [ %i.ct, %bb.s ] ; 2 uses
  %i.cu = load i64, ptr %i.c, align 8, !tbaa !11  ; 2 uses
  %i.cv = icmp sgt i32 %i.cg, 0
  br i1 %i.cv, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %BIGNUM_DIGITS.exit, %BIGNUM_DIGITS.exit150
  %.0121219 = phi i32 [ %i.eb, %BIGNUM_DIGITS.exit150 ], [ %i.cg, %BIGNUM_DIGITS.exit ] ; 7 uses
  %.0122218 = phi i64 [ %.0.i146198, %BIGNUM_DIGITS.exit150 ], [ %.0.i138194, %BIGNUM_DIGITS.exit ] ; 3 uses
  %.0123217 = phi ptr [ %.0.i149, %BIGNUM_DIGITS.exit150 ], [ %.0.i140, %BIGNUM_DIGITS.exit ] ; 8 uses
  %i.cw = icmp ult i64 %2, %.0122218
  br i1 %i.cw, label %.critedge2, label %bb.t

bb.t:                                             ; preds = %.lr.ph
  %i.cx = icmp eq i64 %2, %.0122218
  br i1 %i.cx, label %.lr.ph.i, label %.critedge.thread

.lr.ph.i:                                         ; preds = %bb.t, %bb.u
  %.03337.i = phi i64 [ %i.dc, %bb.u ], [ %2, %bb.t ] ; 3 uses
  %i.cy = getelementptr [4 x i8], ptr %1, i64 %.03337.i
  %i.cz = getelementptr i8, ptr %i.cy, i64 -4
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !7
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %bb.u, label %.lr.ph42.i.preheader

bb.u:                                             ; preds = %.lr.ph.i
  %i.dc = add i64 %.03337.i, -1                   ; 2 uses
  %.not.i144 = icmp eq i64 %i.dc, 0
  br i1 %.not.i144, label %.lr.ph42.i.preheader, label %.lr.ph.i, !llvm.loop !269

.lr.ph42.i.preheader:                             ; preds = %.lr.ph.i, %bb.u
  %.033.lcssa.i = phi i64 [ 0, %bb.u ], [ %.03337.i, %.lr.ph.i ] ; 7 uses
  br label %.lr.ph42.i

.lr.ph42.i:                                       ; preds = %.lr.ph42.i.preheader, %bb.v
  %.03141.i = phi i64 [ %i.dh, %bb.v ], [ %2, %.lr.ph42.i.preheader ] ; 3 uses
  %i.dd = getelementptr [4 x i8], ptr %.0123217, i64 %.03141.i
  %i.de = getelementptr i8, ptr %i.dd, i64 -4
  %i.df = load i32, ptr %i.de, align 4, !tbaa !7
  %i.dg = icmp eq i32 %i.df, 0
  br i1 %i.dg, label %bb.v, label %.critedge2.i

bb.v:                                             ; preds = %.lr.ph42.i
  %i.dh = add i64 %.03141.i, -1                   ; 2 uses
  %.not34.i = icmp eq i64 %i.dh, 0
  br i1 %.not34.i, label %.critedge2.i, label %.lr.ph42.i, !llvm.loop !270

.critedge2.i:                                     ; preds = %bb.v, %.lr.ph42.i
  %.031.lcssa.i.ph = phi i64 [ %.03141.i, %.lr.ph42.i ], [ 0, %bb.v ] ; 4 uses
  %i.di = icmp ult i64 %.033.lcssa.i, %.031.lcssa.i.ph
  br i1 %i.di, label %.critedge2, label %bb.w

bb.w:                                             ; preds = %.critedge2.i
  %i.dj = icmp ugt i64 %.033.lcssa.i, %.031.lcssa.i.ph
  br i1 %i.dj, label %.critedge, label %.preheader.i142

.preheader.i142:                                  ; preds = %bb.w
  %.not51.i = icmp eq i64 %.033.lcssa.i, 0
  br i1 %.not51.i, label %._crit_edge.i, label %.lr.ph47.i

.lr.ph47.i:                                       ; preds = %.preheader.i142
  %i.dk = getelementptr [4 x i8], ptr %1, i64 %.033.lcssa.i
  %i.dl = getelementptr [4 x i8], ptr %.0123217, i64 %.031.lcssa.i.ph
  br label %bb.x

bb.x:                                             ; preds = %bb.y, %.lr.ph47.i
  %.046.i = phi i64 [ 0, %.lr.ph47.i ], [ %i.dr, %bb.y ] ; 3 uses
  %i.dm = xor i64 %.046.i, -1                     ; 2 uses
  %i.dn = getelementptr [4 x i8], ptr %i.dk, i64 %i.dm
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !7
  %i.dp = getelementptr [4 x i8], ptr %i.dl, i64 %i.dm
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !7
  %.not35.i = icmp eq i32 %i.do, %i.dq
  br i1 %.not35.i, label %bb.y, label %._crit_edge.i

bb.y:                                             ; preds = %bb.x
  %i.dr = add nuw i64 %.046.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.dr, %.033.lcssa.i
  br i1 %exitcond.not.i, label %.critedge, label %bb.x, !llvm.loop !271

._crit_edge.i:                                    ; preds = %bb.x, %.preheader.i142
  %.0.lcssa.i = phi i64 [ 0, %.preheader.i142 ], [ %.046.i, %bb.x ] ; 2 uses
  %i.ds = icmp eq i64 %.0.lcssa.i, %.033.lcssa.i
  br i1 %i.ds, label %.critedge, label %bb.z

bb.z:                                             ; preds = %._crit_edge.i
  %i.dt = xor i64 %.0.lcssa.i, -1                 ; 2 uses
  %i.du = getelementptr [4 x i8], ptr %1, i64 %.033.lcssa.i
  %i.dv = getelementptr [4 x i8], ptr %i.du, i64 %i.dt
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !7
  %i.dx = getelementptr [4 x i8], ptr %.0123217, i64 %.031.lcssa.i.ph
  %i.dy = getelementptr [4 x i8], ptr %i.dx, i64 %i.dt
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !7
  %i.ea = icmp ult i32 %i.dw, %i.dz
  br i1 %i.ea, label %.critedge2, label %.critedge

.critedge2:                                       ; preds = %bb.z, %.critedge2.i, %.lr.ph
  %i.eb = add nsw i32 %.0121219, -1               ; 2 uses
  %i.ec = load i32, ptr %i.ch, align 4, !tbaa !245
  %i.ed = call fastcc i64 @power_cache_get_power(i32 noundef %i.ec, i32 noundef %i.eb, ptr noundef nonnull %i.c)
  %i.ee = inttoptr i64 %i.ed to ptr               ; 4 uses
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !13 ; 2 uses
  %i.eg = and i64 %i.ef, 16384
  %.not.i145 = icmp eq i64 %i.eg, 0
  br i1 %.not.i145, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.critedge2
  %i.eh = lshr i64 %i.ef, 15
  %i.ei = and i64 %i.eh, 511
  %i.ej = getelementptr i8, ptr %i.ee, i64 16
  br label %BIGNUM_DIGITS.exit150

bb.ab:                                            ; preds = %.critedge2
  %i.ek = getelementptr i8, ptr %i.ee, i64 16
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !15
  %i.em = getelementptr i8, ptr %i.ee, i64 24
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit150

BIGNUM_DIGITS.exit150:                            ; preds = %bb.aa, %bb.ab
  %.0.i146198 = phi i64 [ %i.ei, %bb.aa ], [ %i.el, %bb.ab ] ; 2 uses
  %.0.i149 = phi ptr [ %i.ej, %bb.aa ], [ %i.en, %bb.ab ] ; 2 uses
  %i.eo = icmp sgt i32 %.0121219, 1
  br i1 %i.eo, label %.lr.ph, label %.critedge.thread271, !llvm.loop !437

.critedge:                                        ; preds = %bb.z, %bb.w, %._crit_edge.i, %bb.y, %BIGNUM_DIGITS.exit
  %.0123216 = phi ptr [ %.0123217, %bb.y ], [ %.0.i140, %BIGNUM_DIGITS.exit ], [ %.0123217, %._crit_edge.i ], [ %.0123217, %bb.w ], [ %.0123217, %bb.z ] ; 2 uses
  %.0122212 = phi i64 [ %2, %bb.y ], [ %.0.i138194, %BIGNUM_DIGITS.exit ], [ %2, %._crit_edge.i ], [ %2, %bb.w ], [ %2, %bb.z ] ; 2 uses
  %.0121208 = phi i32 [ %.0121219, %bb.y ], [ %i.cg, %BIGNUM_DIGITS.exit ], [ %.0121219, %._crit_edge.i ], [ %.0121219, %bb.w ], [ %.0121219, %bb.z ] ; 2 uses
  %i.ep = icmp eq i32 %.0121208, 0
  br i1 %i.ep, label %.critedge.thread271, label %.critedge.thread

.critedge.thread271:                              ; preds = %BIGNUM_DIGITS.exit150, %.critedge
  %.0122212276 = phi i64 [ %.0122212, %.critedge ], [ %.0.i146198, %BIGNUM_DIGITS.exit150 ] ; 3 uses
  %.0123216275 = phi ptr [ %.0123216, %.critedge ], [ %.0.i149, %BIGNUM_DIGITS.exit150 ] ; 3 uses
  %i.eq = icmp ult i64 %2, %.0122212276
  br i1 %i.eq, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %.critedge.thread271
  %i.er = icmp eq i64 %2, %.0122212276
  br i1 %i.er, label %bb.ad, label %.critedge.thread

bb.ad:                                            ; preds = %bb.ac
  %i.es = call fastcc i32 @bary_cmp(ptr noundef %1, i64 noundef %2, ptr noundef %.0123216275, i64 noundef %2)
  %i.et = icmp slt i32 %i.es, 0
  br i1 %i.et, label %bb.ae, label %.critedge.thread

bb.ae:                                            ; preds = %bb.ad, %.critedge.thread271
  %i.eu = getelementptr i8, ptr %0, i64 32        ; 8 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !248 ; 2 uses
  %.not132 = icmp eq ptr %i.ev, null
  br i1 %.not132, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ew = shl i64 %i.cu, 1
  %i.ex = load i64, ptr %i.c, align 8, !tbaa !11
  %i.ey = sub i64 %i.ew, %i.ex                    ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.ev, i8 noundef 48, i64 noundef %i.ey, i1 noundef false) #23
  %i.ez = load ptr, ptr %i.eu, align 8, !tbaa !248
  %i.fa = getelementptr i8, ptr %i.ez, i64 %i.ey  ; 2 uses
  store ptr %i.fa, ptr %i.eu, align 8, !tbaa !248
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.fb = phi ptr [ %i.fa, %bb.af ], [ null, %bb.ae ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %.not.i151 = icmp eq ptr %i.fb, null            ; 2 uses
  switch i64 %2, label %bary2bdigitdbl.exit.thread.i169 [
    i64 2, label %bb.ah
    i64 1, label %bb.ai
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.fc = load i64, ptr %1, align 4
  br label %bary2bdigitdbl.exit.i152

bb.ai:                                            ; preds = %bb.ag
  %i.fd = load i32, ptr %1, align 4, !tbaa !7
  %i.fe = zext i32 %i.fd to i64
  br label %bary2bdigitdbl.exit.i152

bary2bdigitdbl.exit.i152:                         ; preds = %bb.ai, %bb.ah
  %.0.i.i153 = phi i64 [ %i.fc, %bb.ah ], [ %i.fe, %bb.ai ] ; 3 uses
  br i1 %.not.i151, label %bb.aj, label %bb.ar

bary2bdigitdbl.exit.thread.i169:                  ; preds = %bb.ag
  br i1 %.not.i151, label %big2str_2bdigits.exit170, label %bb.ar

bb.aj:                                            ; preds = %bary2bdigitdbl.exit.i152
  %i.ff = icmp eq i64 %.0.i.i153, 0
  br i1 %i.ff, label %big2str_2bdigits.exit170, label %.preheader.i160

.preheader.i160:                                  ; preds = %bb.aj
  %i.fg = load i32, ptr %i.ch, align 4, !tbaa !245
  %i.fh = sext i32 %i.fg to i64                   ; 3 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ak, %.preheader.i160
  %.032.i161 = phi i64 [ %i.fj, %bb.ak ], [ %.0.i.i153, %.preheader.i160 ] ; 3 uses
  %.0.i162 = phi i64 [ %i.fm, %bb.ak ], [ 64, %.preheader.i160 ] ; 3 uses
  %i.fi = urem i64 %.032.i161, %i.fh
  %i.fj = udiv i64 %.032.i161, %i.fh
  %i.fk = getelementptr i8, ptr @ruby_digitmap, i64 %i.fi
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !15
  %i.fm = add i64 %.0.i162, -1                    ; 3 uses
  %i.fn = getelementptr i8, ptr %i.a, i64 %i.fm
  store i8 %i.fl, ptr %i.fn, align 1, !tbaa !15
  %.not37.i163 = icmp ult i64 %.032.i161, %i.fh
  br i1 %.not37.i163, label %bb.al, label %bb.ak, !llvm.loop !249

bb.al:                                            ; preds = %bb.ak
  %i.fo = getelementptr i8, ptr %i.a, i64 %i.fm
  %i.fp = sub i64 65, %.0.i162                    ; 3 uses
  %i.fq = add i64 %i.fp, %5                       ; 2 uses
  %i.fr = icmp ugt i64 %i.fq, 9223372036854775806
  br i1 %i.fr, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.fs = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.fs, ptr noundef nonnull @.str.32) #25
  unreachable

bb.an:                                            ; preds = %bb.al
  %i.ft = add nuw nsw i64 %i.fq, 1
  %i.fu = call i64 @rb_usascii_str_new(ptr noundef null, i64 noundef %i.ft) #23, !callees !236, !inline_history !250 ; 2 uses
  %i.fv = getelementptr i8, ptr %0, i64 24
  store i64 %i.fu, ptr %i.fv, align 8, !tbaa !247
  %i.fw = inttoptr i64 %i.fu to ptr               ; 2 uses
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !13
  %i.fy = and i64 %i.fx, 8192
  %.not.i.i.i164 = icmp eq i64 %i.fy, 0
  %i.fz = getelementptr i8, ptr %i.fw, i64 24     ; 2 uses
  br i1 %.not.i.i.i164, label %RSTRING_PTR.exit.i.i165, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !15
  br label %RSTRING_PTR.exit.i.i165

RSTRING_PTR.exit.i.i165:                          ; preds = %bb.ao, %bb.an
  %i.gb = phi ptr [ %i.ga, %bb.ao ], [ %i.fz, %bb.an ] ; 3 uses
  store ptr %i.gb, ptr %i.eu, align 8, !tbaa !248
  %i.gc = load i32, ptr %0, align 8, !tbaa !242
  %.not.i.i166 = icmp eq i32 %i.gc, 0
  br i1 %.not.i.i166, label %big2str_alloc.exit.i167, label %bb.ap

bb.ap:                                            ; preds = %RSTRING_PTR.exit.i.i165
  %i.gd = getelementptr i8, ptr %i.gb, i64 1
  store ptr %i.gd, ptr %i.eu, align 8, !tbaa !248
  store i8 45, ptr %i.gb, align 1, !tbaa !15
  br label %big2str_alloc.exit.i167

big2str_alloc.exit.i167:                          ; preds = %bb.ap, %RSTRING_PTR.exit.i.i165
  %.not.i38.i168 = icmp eq i64 %.0.i162, 65
  br i1 %.not.i38.i168, label %ruby_nonempty_memcpy.exit.i158, label %bb.aq

bb.aq:                                            ; preds = %big2str_alloc.exit.i167
  %i.ge = load ptr, ptr %i.eu, align 8, !tbaa !248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.ge, ptr noundef nonnull readonly align 1 %i.fo, i64 noundef range(i64 1, 0) %i.fp, i1 noundef false) #23
  br label %ruby_nonempty_memcpy.exit.i158

bb.ar:                                            ; preds = %bary2bdigitdbl.exit.thread.i169, %bary2bdigitdbl.exit.i152
  %.0.i42.i154 = phi i64 [ 0, %bary2bdigitdbl.exit.thread.i169 ], [ %.0.i.i153, %bary2bdigitdbl.exit.i152 ] ; 3 uses
  %i.gf = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.gg = load i32, ptr %i.gf, align 8, !tbaa !435 ; 3 uses
  %i.gh = sext i32 %i.gg to i64                   ; 2 uses
  %i.gi = and i32 %i.gg, 1
  %lcmp.mod329.not = icmp eq i32 %i.gi, 0
  br i1 %lcmp.mod329.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %bb.ar
  %i.gj = load i32, ptr %i.ch, align 4, !tbaa !245
  %i.gk = sext i32 %i.gj to i64                   ; 2 uses
  %i.gl = urem i64 %.0.i42.i154, %i.gk
  %i.gm = udiv i64 %.0.i42.i154, %i.gk
  %i.gn = getelementptr i8, ptr @ruby_digitmap, i64 %i.gl
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !15
  %i.gp = add nsw i64 %i.gh, -1                   ; 2 uses
  %i.gq = getelementptr i8, ptr %i.fb, i64 %i.gp
  store i8 %i.go, ptr %i.gq, align 1, !tbaa !15
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %bb.ar
  %.133.i155.unr = phi i64 [ %.0.i42.i154, %bb.ar ], [ %i.gm, %.prol.loopexit.unr-lcssa ]
  %.1.i156.unr = phi i64 [ %i.gh, %bb.ar ], [ %i.gp, %.prol.loopexit.unr-lcssa ]
  %i.gr = icmp eq i32 %i.gg, 1
  br i1 %i.gr, label %.unr-lcssa330, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.133.i155 = phi i64 [ %i.hd, %.new ], [ %.133.i155.unr, %.prol.loopexit ] ; 2 uses
  %.1.i156 = phi i64 [ %i.hg, %.new ], [ %.1.i156.unr, %.prol.loopexit ] ; 2 uses
  %i.gs = load i32, ptr %i.ch, align 4, !tbaa !245
  %i.gt = sext i32 %i.gs to i64                   ; 2 uses
  %i.gu = urem i64 %.133.i155, %i.gt
  %i.gv = udiv i64 %.133.i155, %i.gt              ; 2 uses
  %i.gw = getelementptr i8, ptr @ruby_digitmap, i64 %i.gu
end_hunk_2
