Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/rbbitblb?download=true
inline.NumInlined: 154
inline.NumDeleted: 31
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN6icu_7816RBBITableBuilder11exportTableEPv:bb.a
  %indvars.iv70 = phi i64 [ %indvars.iv.next71.1, %_ZNK6icu_789UVector3210elementAtiEi.exit.us.us.1 ], [ 0, %.lr.ph57.us.us ] ; 5 uses
  %niter90 = phi i64 [ %niter90.next.1, %_ZNK6icu_789UVector3210elementAtiEi.exit.us.us.1 ], [ 0, %.lr.ph57.us.us ]
  %i.de = load ptr, ptr %i.bp, align 8, !tbaa !60 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load i32, ptr %i.df, align 8
  %i.dh = sext i32 %i.dg to i64
  %i.di = icmp slt i64 %indvars.iv70, %i.dh
  br i1 %i.di, label %bb.p, label %_ZNK6icu_789UVector3210elementAtiEi.exit.us.us

bb.p:                                             ; preds = %.lr.ph57.us.us.new
  %i.dj = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !63
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %indvars.iv70
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !64
  %i.dn = trunc i32 %i.dm to i8
  br label %_ZNK6icu_789UVector3210elementAtiEi.exit.us.us

_ZNK6icu_789UVector3210elementAtiEi.exit.us.us:   ; preds = %bb.p, %.lr.ph57.us.us.new
  %i.do = phi i8 [ %i.dn, %bb.p ], [ 0, %.lr.ph57.us.us.new ]
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dd, i64 %indvars.iv70
  store i8 %i.do, ptr %i.dp, align 1, !tbaa !75
  %indvars.iv.next71 = or disjoint i64 %indvars.iv70, 1 ; 3 uses
  %i.dq = load ptr, ptr %i.bp, align 8, !tbaa !60 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ds = load i32, ptr %i.dr, align 8
  %i.dt = sext i32 %i.ds to i64
  %i.du = icmp slt i64 %indvars.iv.next71, %i.dt
  br i1 %i.du, label %bb.q, label %_ZNK6icu_789UVector3210elementAtiEi.exit.us.us.1

bb.q:                                             ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit.us.us
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !63
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %indvars.iv.next71
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !64
  %i.dz = trunc i32 %i.dy to i8
  br label %_ZNK6icu_789UVector3210elementAtiEi.exit.us.us.1

_ZNK6icu_789UVector3210elementAtiEi.exit.us.us.1: ; preds = %bb.q, %_ZNK6icu_789UVector3210elementAtiEi.exit.us.us
  %i.ea = phi i8 [ %i.dz, %bb.q ], [ 0, %_ZNK6icu_789UVector3210elementAtiEi.exit.us.us ]
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dd, i64 %indvars.iv.next71
  store i8 %i.ea, ptr %i.eb, align 1, !tbaa !75
  %indvars.iv.next71.1 = add nuw nsw i64 %indvars.iv70, 2 ; 2 uses
  %niter90.next.1 = add i64 %niter90, 2           ; 2 uses
  %niter90.ncmp.1 = icmp eq i64 %niter90.next.1, %unroll_iter89
  br i1 %niter90.ncmp.1, label %..loopexit53_crit_edge.us.us.loopexit.unr-lcssa, label %.lr.ph57.us.us.new, !llvm.loop !144

..loopexit53_crit_edge.us.us.loopexit.unr-lcssa:  ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit.us.us.1
  br i1 %lcmp.mod87.not, label %..loopexit53_crit_edge.us.us, label %.epil.preheader85

.epil.preheader85:                                ; preds = %..loopexit53_crit_edge.us.us.loopexit.unr-lcssa, %.lr.ph57.us.us
  %indvars.iv70.epil.init = phi i64 [ 0, %.lr.ph57.us.us ], [ %indvars.iv.next71.1, %..loopexit53_crit_edge.us.us.loopexit.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod88)
  %i.ec = load ptr, ptr %i.bp, align 8, !tbaa !60 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ee = load i32, ptr %i.ed, align 8
  %i.ef = sext i32 %i.ee to i64
  %i.eg = icmp slt i64 %indvars.iv70.epil.init, %i.ef
  br i1 %i.eg, label %bb.r, label %_ZNK6icu_789UVector3210elementAtiEi.exit.us.us.epil

bb.r:                                             ; preds = %.epil.preheader85
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !63
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %indvars.iv70.epil.init
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !64
  %i.el = trunc i32 %i.ek to i8
  br label %_ZNK6icu_789UVector3210elementAtiEi.exit.us.us.epil

_ZNK6icu_789UVector3210elementAtiEi.exit.us.us.epil: ; preds = %bb.r, %.epil.preheader85
  %i.em = phi i8 [ %i.el, %bb.r ], [ 0, %.epil.preheader85 ]
  %i.en = getelementptr inbounds nuw i8, ptr %i.dd, i64 %indvars.iv70.epil.init
  store i8 %i.em, ptr %i.en, align 1, !tbaa !75
  br label %..loopexit53_crit_edge.us.us

..loopexit53_crit_edge.us.us.loopexit82.unr-lcssa: ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit52.us.us.1
  br i1 %lcmp.mod.not, label %..loopexit53_crit_edge.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %..loopexit53_crit_edge.us.us.loopexit82.unr-lcssa, %.lr.ph.us.us
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.us.us ], [ %indvars.iv.next.1, %..loopexit53_crit_edge.us.us.loopexit82.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod84)
  %i.eo = load ptr, ptr %i.bp, align 8, !tbaa !60 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.eq = load i32, ptr %i.ep, align 8
  %i.er = sext i32 %i.eq to i64
  %i.es = icmp slt i64 %indvars.iv.epil.init, %i.er
  br i1 %i.es, label %bb.s, label %_ZNK6icu_789UVector3210elementAtiEi.exit52.us.us.epil

bb.s:                                             ; preds = %.epil.preheader
  %i.et = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !63
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %indvars.iv.epil.init
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !64
  %i.ex = trunc i32 %i.ew to i16
  br label %_ZNK6icu_789UVector3210elementAtiEi.exit52.us.us.epil

_ZNK6icu_789UVector3210elementAtiEi.exit52.us.us.epil: ; preds = %bb.s, %.epil.preheader
  %i.ey = phi i16 [ %i.ex, %bb.s ], [ 0, %.epil.preheader ]
  %i.ez = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv.epil.init
  store i16 %i.ey, ptr %i.ez, align 2, !tbaa !75
  br label %..loopexit53_crit_edge.us.us

..loopexit53_crit_edge.us.us:                     ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit52.us.us.epil, %..loopexit53_crit_edge.us.us.loopexit82.unr-lcssa, %_ZNK6icu_789UVector3210elementAtiEi.exit.us.us.epil, %..loopexit53_crit_edge.us.us.loopexit.unr-lcssa
  %i.fa = add nuw i32 %.04758.us.us, 1            ; 2 uses
  %i.fb = load i32, ptr %1, align 4, !tbaa !79
  %i.fc = icmp ult i32 %i.fa, %i.fb
  br i1 %i.fc, label %.lr.ph59.split.us.split.us, label %.loopexit54, !llvm.loop !145

.lr.ph59.split.split:                             ; preds = %.lr.ph59, %bb.t
  %.04758 = phi i32 [ %i.gf, %bb.t ], [ 0, %.lr.ph59 ] ; 3 uses
  %i.fd = load ptr, ptr %i.n, align 8, !tbaa !20
  %i.fe = tail call noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.fd, i32 noundef %.04758) ; 3 uses
  %i.ff = load i32, ptr %i.am, align 4, !tbaa !81
  %i.fg = mul i32 %i.ff, %.04758
  %i.fh = zext i32 %i.fg to i64
  %i.fi = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.fh ; 6 uses
  %i.fj = load ptr, ptr %i.n, align 8, !tbaa !20
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fl = load i32, ptr %i.fk, align 8, !tbaa !24
  %i.fm = icmp slt i32 %i.fl, 256
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fe, i64 4
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !65 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fe, i64 8 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fe, i64 24 ; 2 uses
  br i1 %i.fm, label %.loopexit, label %.loopexit53

.loopexit:                                        ; preds = %.lr.ph59.split.split
  %i.fr = trunc i32 %i.fo to i8
  store i8 %i.fr, ptr %i.fi, align 1, !tbaa !83
  %i.fs = load i32, ptr %i.fp, align 8, !tbaa !66
  %i.ft = trunc i32 %i.fs to i8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fi, i64 1
  store i8 %i.ft, ptr %i.fu, align 1, !tbaa !84
  %i.fv = load i32, ptr %i.fq, align 8, !tbaa !68
  %i.fw = trunc i32 %i.fv to i8
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fi, i64 2
  store i8 %i.fw, ptr %i.fx, align 1, !tbaa !85
  br label %bb.t

.loopexit53:                                      ; preds = %.lr.ph59.split.split
  %i.fy = trunc i32 %i.fo to i16
  store i16 %i.fy, ptr %i.fi, align 2, !tbaa !75
  %i.fz = load i32, ptr %i.fp, align 8, !tbaa !66
  %i.ga = trunc i32 %i.fz to i16
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fi, i64 2
  store i16 %i.ga, ptr %i.gb, align 2, !tbaa !75
  %i.gc = load i32, ptr %i.fq, align 8, !tbaa !68
  %i.gd = trunc i32 %i.gc to i16
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fi, i64 4
  store i16 %i.gd, ptr %i.ge, align 2, !tbaa !75
  br label %bb.t

bb.t:                                             ; preds = %.loopexit53, %.loopexit
  %i.gf = add nuw i32 %.04758, 1                  ; 2 uses
  %i.gg = load i32, ptr %1, align 4, !tbaa !79
  %i.gh = icmp ult i32 %i.gf, %i.gg
  br i1 %i.gh, label %.lr.ph59.split.split, label %.loopexit54, !llvm.loop !145

.loopexit54:                                      ; preds = %bb.t, %..loopexit53_crit_edge.us.us, %bb.m, %bb.e, %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7816RBBITableBuilder21buildSafeReverseTableER10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(52) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = alloca i16, align 2                      ; 4 uses
  %2 = alloca %"class.icu_78::UnicodeString", align 8 ; 12 uses
  %3 = alloca %"struct.std::pair", align 8        ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %2, align 8, !tbaa !27
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i16 2, ptr %i.c, align 8, !tbaa !75
  %i.d = load ptr, ptr %0, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !44
  %i.g = invoke noundef i32 @_ZNK6icu_7814RBBISetBuilder20getNumCharCategoriesEv(ptr noundef nonnull align 8 dereferenceable(53) %i.f)
          to label %.split unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 8 uses

.split:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !20
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !24   ; 2 uses
  %i.l = icmp sgt i32 %i.g, 0                     ; 2 uses
  %i.m = icmp sgt i32 %i.k, 1
  %or.cond214 = select i1 %i.l, i1 %i.m, i1 false
  br i1 %or.cond214, label %.preheader140.us.preheader, label %._crit_edge.split

.preheader140.us.preheader:                       ; preds = %.split
  %wide.trip.count191 = zext nneg i32 %i.g to i64 ; 2 uses
  br label %.preheader140.us

.preheader140.us:                                 ; preds = %.preheader140.us.preheader, %._crit_edge154.split.us.us
  %indvars.iv188 = phi i64 [ 0, %.preheader140.us.preheader ], [ %indvars.iv.next189, %._crit_edge154.split.us.us ] ; 4 uses
  %i.n = trunc i64 %indvars.iv188 to i16
  br label %.preheader137.us.us

.preheader137.us.us:                              ; preds = %bb.i, %.preheader140.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.i ], [ 0, %.preheader140.us ] ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %4, %.preheader137.us.us
  %.076149.us.us = phi i32 [ 1, %.preheader137.us.us ], [ %5, %4 ] ; 2 uses
  %.079148.us.us = phi i32 [ -1, %.preheader137.us.us ], [ %.281.us.us, %4 ] ; 4 uses
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !20
  %i.p = invoke noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.o, i32 noundef %.076149.us.us)
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !60   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i32, ptr %i.s, align 8
  %i.u = sext i32 %i.t to i64
  %i.v = icmp slt i64 %indvars.iv188, %i.u
  br i1 %i.v, label %bb.d, label %_ZNK6icu_789UVector3210elementAtiEi.exit.us.us

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !63
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv188
  %i.z = load i32, ptr %i.y, align 4, !tbaa !64
  br label %_ZNK6icu_789UVector3210elementAtiEi.exit.us.us

_ZNK6icu_789UVector3210elementAtiEi.exit.us.us:   ; preds = %bb.d, %bb.c
  %i.aa = phi i32 [ %i.z, %bb.d ], [ 0, %bb.c ]
  %i.ab = load ptr, ptr %i.h, align 8, !tbaa !20
  %i.ac = invoke noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.ab, i32 noundef %i.aa)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.e:                                             ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit.us.us
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !60 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load i32, ptr %i.af, align 8
  %i.ah = sext i32 %i.ag to i64
  %i.ai = icmp slt i64 %indvars.iv, %i.ah
  br i1 %i.ai, label %bb.f, label %_ZNK6icu_789UVector3210elementAtiEi.exit108.us.us

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !63
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv
  %i.am = load i32, ptr %i.al, align 4, !tbaa !64
  br label %_ZNK6icu_789UVector3210elementAtiEi.exit108.us.us

_ZNK6icu_789UVector3210elementAtiEi.exit108.us.us: ; preds = %bb.f, %bb.e
  %i.an = phi i32 [ %i.am, %bb.f ], [ 0, %bb.e ]  ; 3 uses
  %i.ao = icmp slt i32 %.079148.us.us, 0          ; 2 uses
  %.not103.us.us = icmp eq i32 %.079148.us.us, %i.an
  %or.cond = select i1 %i.ao, i1 true, i1 %.not103.us.us
  br i1 %or.cond, label %4, label %_ZNK6icu_789UVector3210elementAtiEi.exit108._crit_edge.us.us

4:                                                ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit108.us.us
  %.281.us.us = select i1 %i.ao, i32 %i.an, i32 %.079148.us.us ; 2 uses
  %5 = add nuw nsw i32 %.076149.us.us, 1          ; 2 uses
  %exitcond.not = icmp eq i32 %5, %i.k
  br i1 %exitcond.not, label %_ZNK6icu_789UVector3210elementAtiEi.exit108._crit_edge.us.us, label %bb.b, !llvm.loop !149

_ZNK6icu_789UVector3210elementAtiEi.exit108._crit_edge.us.us: ; preds = %4, %_ZNK6icu_789UVector3210elementAtiEi.exit108.us.us
  %.079.lcssa.us.us = phi i32 [ %.079148.us.us, %_ZNK6icu_789UVector3210elementAtiEi.exit108.us.us ], [ %.281.us.us, %4 ]
  %i.ap = icmp eq i32 %.079.lcssa.us.us, %i.an
  br i1 %i.ap, label %bb.g, label %bb.i

bb.g:                                             ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit108._crit_edge.us.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 %i.n, ptr %i.b, align 2, !tbaa !77
  %i.aq = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef 1)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ar = trunc i64 %indvars.iv to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %i.ar, ptr %i.a, align 2, !tbaa !77
  %i.as = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1)
          to label %_ZN6icu_7813UnicodeString6appendEDs.exit109.us.us unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN6icu_7813UnicodeString6appendEDs.exit109.us.us: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.i

bb.i:                                             ; preds = %_ZN6icu_7813UnicodeString6appendEDs.exit109.us.us, %_ZNK6icu_789UVector3210elementAtiEi.exit108._crit_edge.us.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not.a = icmp eq i64 %indvars.iv.next, %wide.trip.count191
  br i1 %exitcond.not.a, label %._crit_edge154.split.us.us, label %.preheader137.us.us, !llvm.loop !150

._crit_edge154.split.us.us:                       ; preds = %bb.i
  %indvars.iv.next189 = add nuw nsw i64 %indvars.iv188, 1 ; 2 uses
  %exitcond192.not = icmp eq i64 %indvars.iv.next189, %wide.trip.count191
  br i1 %exitcond192.not, label %._crit_edge.split, label %.preheader140.us, !llvm.loop !151

._crit_edge.split:                                ; preds = %._crit_edge154.split.us.us, %.split
  %i.at = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 40) #13 ; 6 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.k, label %bb.j

bb.j:                                             ; preds = %._crit_edge.split
  %i.av = add nsw i32 %i.g, 2
  invoke void @_ZN6icu_787UVectorC1EPFvPvEPFa8UElementS4_EiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.at, ptr noundef nonnull @uprv_deleteUObject_78, ptr noundef nonnull @uhash_compareUnicodeString_78, i32 noundef %i.av, ptr noundef nonnull align 4 dereferenceable(4) %1)
          to label %_ZN6icu_7812LocalPointerINS_7UVectorEEC2EPS1_R10UErrorCode.exit unwind label %bb.m

bb.k:                                             ; preds = %._crit_edge.split
  %i.aw = load i32, ptr %1, align 4
  %i.ax = icmp sgt i32 %i.aw, 0
  br i1 %i.ax, label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 7, ptr %1, align 4, !tbaa !19
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit

_ZN6icu_7812LocalPointerINS_7UVectorEEC2EPS1_R10UErrorCode.exit: ; preds = %bb.j
  %.pre = load i32, ptr %1, align 4, !tbaa !19
  %i.ay = icmp slt i32 %.pre, 1
  br i1 %i.ay, label %bb.n, label %bb.af

bb.m:                                             ; preds = %bb.j
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.at) #13
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit115

bb.n:                                             ; preds = %_ZN6icu_7812LocalPointerINS_7UVectorEEC2EPS1_R10UErrorCode.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  store ptr %i.at, ptr %i.ba, align 8, !tbaa !28
  %i.bb = add i32 %i.g, 2                         ; 2 uses
  %i.bc = icmp sgt i32 %i.g, -2
  br i1 %i.bc, label %.lr.ph, label %._crit_edge163

.lr.ph:                                           ; preds = %bb.n
  %i.bd = add nsw i32 %i.g, 4
  %smax = call i32 @llvm.smax.i32(i32 %i.bb, i32 1)
  br label %bb.o

._crit_edge163:                                   ; preds = %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit, %bb.n
  %i.be = load i32, ptr %1, align 4, !tbaa !19
  %i.bf = icmp slt i32 %i.be, 1
  br i1 %i.bf, label %bb.t, label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit

bb.o:                                             ; preds = %.lr.ph, %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit
  %.064161 = phi i32 [ 0, %.lr.ph ], [ %i.bl, %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit ]
  %i.bg = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 64) #13 ; 4 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN6icu_7813UnicodeStringC1Eiii(ptr noundef nonnull align 8 dereferenceable(64) %i.bg, i32 noundef %i.g, i32 noundef 0, i32 noundef %i.bd)
          to label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit unwind label %bb.s

bb.q:                                             ; preds = %bb.o
  %i.bi = load i32, ptr %1, align 4
  %i.bj = icmp sgt i32 %i.bi, 0
  br i1 %i.bj, label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i32 7, ptr %1, align 4, !tbaa !19
  br label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit

_ZN6icu_7812LocalPointerINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit: ; preds = %bb.p, %bb.r, %bb.q
  %i.bk = load ptr, ptr %i.ba, align 8, !tbaa !28
  invoke void @_ZN6icu_787UVector12adoptElementEPvR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.bk, ptr noundef %i.bg, ptr noundef nonnull align 4 dereferenceable(4) %1)
          to label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit: ; preds = %_ZN6icu_7812LocalPointerINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit
  %i.bl = add nuw nsw i32 %.064161, 1             ; 2 uses
  %exitcond193.not = icmp eq i32 %i.bl, %smax
  br i1 %exitcond193.not, label %._crit_edge163, label %bb.o, !llvm.loop !152

bb.s:                                             ; preds = %bb.p
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.bg) #13
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit115

bb.t:                                             ; preds = %._crit_edge163
  %i.bn = load ptr, ptr %i.ba, align 8, !tbaa !28
  %i.bo = invoke noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.bn, i32 noundef 1)
          to label %.preheader131 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.preheader131:                                    ; preds = %bb.t
  br i1 %i.l, label %.lr.ph165, label %.preheader

.lr.ph167.preheader:                              ; preds = %bb.u
  %smax195 = call i32 @llvm.smax.i32(i32 %i.bb, i32 3)
  br label %.lr.ph167

.lr.ph165:                                        ; preds = %.preheader131, %bb.u
  %.062164 = phi i32 [ %i.bs, %bb.u ], [ 0, %.preheader131 ] ; 3 uses
  %i.bp = trunc i32 %.062164 to i16
  %i.bq = add i16 %i.bp, 2
  %i.br = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9setCharAtEiDs(ptr noundef nonnull align 8 dereferenceable(64) %i.bo, i32 noundef %.062164, i16 noundef zeroext %i.bq)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.u:                                             ; preds = %.lr.ph165
  %i.bs = add nuw nsw i32 %.062164, 1             ; 2 uses
  %exitcond194.not = icmp eq i32 %i.bs, %i.g
  br i1 %exitcond194.not, label %.lr.ph167.preheader, label %.lr.ph165, !llvm.loop !153

.preheader:                                       ; preds = %bb.w, %.preheader131
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.bu = load i16, ptr %i.c, align 8, !tbaa !75  ; 3 uses
  %i.bv = icmp slt i16 %i.bu, 0
  %i.bw = ashr i16 %i.bu, 5
  %i.bx = sext i16 %i.bw to i32
  %i.by = load i32, ptr %i.bt, align 4
  %i.bz = select i1 %i.bv, i32 %i.by, i32 %i.bx   ; 2 uses
  %i.ca = icmp sgt i32 %i.bz, 0
  br i1 %i.ca, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.lr.ph, label %._crit_edge169

_ZNK6icu_7813UnicodeString6charAtEi.exit.lr.ph:   ; preds = %.preheader
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit

.lr.ph167:                                        ; preds = %.lr.ph167.preheader, %bb.w
  %.061166 = phi i32 [ %i.cg, %bb.w ], [ 2, %.lr.ph167.preheader ] ; 2 uses
  %i.cd = load ptr, ptr %i.ba, align 8, !tbaa !28
  %i.ce = invoke noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.cd, i32 noundef %.061166)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %.lr.ph167
  %i.cf = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.ce, ptr noundef nonnull align 8 dereferenceable(64) %i.bo)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.w:                                             ; preds = %bb.v
  %i.cg = add nuw nsw i32 %.061166, 1             ; 2 uses
  %exitcond196.not = icmp eq i32 %i.cg, %smax195
  br i1 %exitcond196.not, label %.preheader, label %.lr.ph167, !llvm.loop !154

._crit_edge169:                                   ; preds = %bb.z, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  store i32 1, ptr %3, align 8, !tbaa !73
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %i.ch, align 4, !tbaa !74
  br label %bb.aa

_ZNK6icu_7813UnicodeString6charAtEi.exit:         ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.lr.ph, %bb.z
  %indvars.iv197 = phi i64 [ 0, %_ZNK6icu_7813UnicodeString6charAtEi.exit.lr.ph ], [ %indvars.iv.next198, %bb.z ] ; 3 uses
  %i.ci = phi i32 [ %i.bz, %_ZNK6icu_7813UnicodeString6charAtEi.exit.lr.ph ], [ %i.df, %bb.z ]
  %i.cj = phi i16 [ %i.bu, %_ZNK6icu_7813UnicodeString6charAtEi.exit.lr.ph ], [ %i.da, %bb.z ]
  %i.ck = and i16 %i.cj, 2
  %.not.i.i.i = icmp eq i16 %i.ck, 0
  %i.cl = load ptr, ptr %i.cc, align 8
  %i.cm = select i1 %.not.i.i.i, ptr %i.cl, ptr %i.cb ; 2 uses
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %i.cm, i64 %indvars.iv197
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !77
  %i.cp = zext i16 %i.co to i32
  %i.cq = or disjoint i64 %indvars.iv197, 1       ; 2 uses
  %i.cr = zext i32 %i.ci to i64
  %i.cs = icmp samesign ult i64 %i.cq, %i.cr
  br i1 %i.cs, label %bb.x, label %_ZNK6icu_7813UnicodeString6charAtEi.exit114

bb.x:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %i.cm, i64 %i.cq
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !77
  %i.cv = zext i16 %i.cu to i32
  %i.cw = add nuw nsw i32 %i.cv, 2
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit114

_ZNK6icu_7813UnicodeString6charAtEi.exit114:      ; preds = %bb.x, %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %.0.i.i112 = phi i32 [ %i.cw, %bb.x ], [ 65537, %_ZNK6icu_7813UnicodeString6charAtEi.exit ]
  %i.cx = load ptr, ptr %i.ba, align 8, !tbaa !28
end_hunk_0
