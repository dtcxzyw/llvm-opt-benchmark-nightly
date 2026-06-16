inline.NumInlined: 75
inline.NumDeleted: 19
begin_hunk_0_@_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter27CreateDecimalRepresentationEPKciiiPNS0_13StringBuilderE:bb.a
  %i.bx = load ptr, ptr %5, align 8, !tbaa !19
  %i.by = sext i32 %i.bv to i64
  %i.bz = getelementptr inbounds i8, ptr %i.bx, i64 %i.by
  store i8 48, ptr %i.bz, align 1, !tbaa !20
  br label %_ZN14arrow_vendored17double_conversion13StringBuilder10AddPaddingEci.exit56

_ZN14arrow_vendored17double_conversion13StringBuilder10AddPaddingEci.exit56: ; preds = %.lr.ph.i53.epil.preheader, %_ZN14arrow_vendored17double_conversion13StringBuilder10AddPaddingEci.exit56.loopexit.unr-lcssa, %bb.e
  %i.ca = icmp sgt i32 %4, 0
  br i1 %i.ca, label %.lr.ph.i57, label %_ZN14arrow_vendored17double_conversion13StringBuilder10AddPaddingEci.exit52

.lr.ph.i57:                                       ; preds = %_ZN14arrow_vendored17double_conversion13StringBuilder10AddPaddingEci.exit56
  %i.cb = load i32, ptr %i.ba, align 8, !tbaa !16 ; 2 uses
  %i.cc = add nsw i32 %i.cb, 1
  store i32 %i.cc, ptr %i.ba, align 8, !tbaa !16
  %i.cd = load ptr, ptr %5, align 8, !tbaa !19
  %i.ce = sext i32 %i.cb to i64
  %i.cf = getelementptr inbounds i8, ptr %i.cd, i64 %i.ce
  store i8 46, ptr %i.cf, align 1, !tbaa !20
  %xtraiter79 = and i32 %4, 1
  %i.cg = icmp eq i32 %4, 1
  br i1 %i.cg, label %.epil.preheader, label %.lr.ph.i57.new

.lr.ph.i57.new:                                   ; preds = %.lr.ph.i57
  %unroll_iter82 = and i32 %4, 2147483646
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i57.new
  %niter83 = phi i32 [ 0, %.lr.ph.i57.new ], [ %niter83.next.1, %bb.f ]
  %i.ch = load i32, ptr %i.ba, align 8, !tbaa !16 ; 2 uses
  %i.ci = add nsw i32 %i.ch, 1
  store i32 %i.ci, ptr %i.ba, align 8, !tbaa !16
  %i.cj = load ptr, ptr %5, align 8, !tbaa !19
  %i.ck = sext i32 %i.ch to i64
  %i.cl = getelementptr inbounds i8, ptr %i.cj, i64 %i.ck
  store i8 48, ptr %i.cl, align 1, !tbaa !20
  %i.cm = load i32, ptr %i.ba, align 8, !tbaa !16 ; 2 uses
  %i.cn = add nsw i32 %i.cm, 1
  store i32 %i.cn, ptr %i.ba, align 8, !tbaa !16
  %i.co = load ptr, ptr %5, align 8, !tbaa !19
  %i.cp = sext i32 %i.cm to i64
  %i.cq = getelementptr inbounds i8, ptr %i.co, i64 %i.cp
  store i8 48, ptr %i.cq, align 1, !tbaa !20
  %niter83.next.1 = add i32 %niter83, 2           ; 2 uses
  %niter83.ncmp.1 = icmp eq i32 %niter83.next.1, %unroll_iter82
  br i1 %niter83.ncmp.1, label %_ZN14arrow_vendored17double_conversion13StringBuilder10AddPaddingEci.exit52.thread.loopexit77.unr-lcssa, label %bb.f, !llvm.loop !29

bb.g:                                             ; preds = %bb.d
  %i.cr = zext nneg i32 %3 to i64                 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.be, ptr align 1 %1, i64 %i.cr, i1 false)
  %i.cs = load i32, ptr %i.ba, align 8, !tbaa !16
  %i.ct = add nsw i32 %i.cs, %3                   ; 2 uses
  %i.cu = add nsw i32 %i.ct, 1
  store i32 %i.cu, ptr %i.ba, align 8, !tbaa !16
  %i.cv = load ptr, ptr %5, align 8, !tbaa !19
  %i.cw = sext i32 %i.ct to i64
  %i.cx = getelementptr inbounds i8, ptr %i.cv, i64 %i.cw
  store i8 46, ptr %i.cx, align 1, !tbaa !20
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 %i.cr
  %i.cz = sub nsw i32 %2, %3                      ; 3 uses
  %i.da = load i32, ptr %i.ba, align 8, !tbaa !16
  %i.db = load ptr, ptr %5, align 8, !tbaa !19
  %i.dc = sext i32 %i.da to i64
  %i.dd = getelementptr inbounds i8, ptr %i.db, i64 %i.dc
  %i.de = zext nneg i32 %i.cz to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dd, ptr nonnull align 1 %i.cy, i64 %i.de, i1 false)
  %i.df = load i32, ptr %i.ba, align 8, !tbaa !16
  %i.dg = add nsw i32 %i.df, %i.cz
  store i32 %i.dg, ptr %i.ba, align 8, !tbaa !16
  %i.dh = sub nsw i32 %4, %i.cz                   ; 4 uses
  %i.di = icmp sgt i32 %i.dh, 0
  br i1 %i.di, label %.lr.ph.i61.preheader, label %_ZN14arrow_vendored17double_conversion13StringBuilder10AddPaddingEci.exit52

.lr.ph.i61.preheader:                             ; preds = %bb.g
  %i.dj = add i32 %4, %3
  %.neg99 = add i32 %2, 1
  %xtraiter84 = and i32 %i.dh, 1
  %i.dk = icmp eq i32 %i.dj, %.neg99
  br i1 %i.dk, label %.lr.ph.i61.epil.preheader, label %.lr.ph.i61.preheader.new

.lr.ph.i61.preheader.new:                         ; preds = %.lr.ph.i61.preheader
  %unroll_iter87 = and i32 %i.dh, 2147483646
  br label %.lr.ph.i61

.lr.ph.i61:                                       ; preds = %.lr.ph.i61, %.lr.ph.i61.preheader.new
  %niter88 = phi i32 [ 0, %.lr.ph.i61.preheader.new ], [ %niter88.next.1, %.lr.ph.i61 ]
  %i.dl = load i32, ptr %i.ba, align 8, !tbaa !16 ; 2 uses
  %i.dm = add nsw i32 %i.dl, 1
  store i32 %i.dm, ptr %i.ba, align 8, !tbaa !16
  %i.dn = load ptr, ptr %5, align 8, !tbaa !19
  %i.do = sext i32 %i.dl to i64
  %i.dp = getelementptr inbounds i8, ptr %i.dn, i64 %i.do
  store i8 48, ptr %i.dp, align 1, !tbaa !20
  %i.dq = load i32, ptr %i.ba, align 8, !tbaa !16 ; 2 uses
  %i.dr = add nsw i32 %i.dq, 1
  store i32 %i.dr, ptr %i.ba, align 8, !tbaa !16
  %i.ds = load ptr, ptr %5, align 8, !tbaa !19
  %i.dt = sext i32 %i.dq to i64
  %i.du = getelementptr inbounds i8, ptr %i.ds, i64 %i.dt
  store i8 48, ptr %i.du, align 1, !tbaa !20
  %niter88.next.1 = add i32 %niter88, 2           ; 2 uses
  %niter88.ncmp.1 = icmp eq i32 %niter88.next.1, %unroll_iter87
  br i1 %niter88.ncmp.1, label %_ZN14arrow_vendored17double_conversion13StringBuilder10AddPaddingEci.exit52.loopexit.unr-lcssa, label %.lr.ph.i61, !llvm.loop !29

_ZN14arrow_vendored17double_conversion13StringBuilder10AddPaddingEci.exit52.loopexit.unr-lcssa: ; preds = %.lr.ph.i61
  %lcmp.mod85.not = icmp eq i32 %xtraiter84, 0
  br i1 %lcmp.mod85.not, label %_ZN14arrow_vendored17double_conversion13StringBuilder10AddPaddingEci.exit52, label %.lr.ph.i61.epil.preheader

.lr.ph.i61.epil.preheader:                        ; preds = %_ZN14arrow_vendored17double_conversion13StringBuilder10AddPaddingEci.exit52.loopexit.unr-lcssa, %.lr.ph.i61.preheader
  %lcmp.mod86 = trunc i32 %i.dh to i1
  tail call void @llvm.assume(i1 %lcmp.mod86)
  %i.dv = load i32, ptr %i.ba, align 8, !tbaa !16 ; 2 uses
  %i.dw = add nsw i32 %i.dv, 1
  store i32 %i.dw, ptr %i.ba, align 8, !tbaa !16
  %i.dx = load ptr, ptr %5, align 8, !tbaa !19
  %i.dy = sext i32 %i.dv to i64
  %i.dz = getelementptr inbounds i8, ptr %i.dx, i64 %i.dy
  store i8 48, ptr %i.dz, align 1, !tbaa !20
  br label %_ZN14arrow_vendored17double_conversion13StringBuilder10AddPaddingEci.exit52

_ZN14arrow_vendored17double_conversion13StringBuilder10AddPaddingEci.exit52: ; preds = %.lr.ph.i61.epil.preheader, %_ZN14arrow_vendored17double_conversion13StringBuilder10AddPaddingEci.exit52.loopexit.unr-lcssa, %bb.g, %_ZN14arrow_vendored17double_conversion13StringBuilder10AddPaddingEci.exit56, %bb.b
  %i.ea = icmp eq i32 %4, 0
  br i1 %i.ea, label %bb.h, label %_ZN14arrow_vendored17double_conversion13StringBuilder10AddPaddingEci.exit52.thread

bb.h:                                             ; preds = %_ZN14arrow_vendored17double_conversion13StringBuilder10AddPaddingEci.exit52
  %i.eb = load i32, ptr %0, align 8, !tbaa !8     ; 2 uses
  %i.ec = and i32 %i.eb, 2
  %.not47 = icmp eq i32 %i.ec, 0
  br i1 %.not47, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ed = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !16 ; 2 uses
  %i.ef = add nsw i32 %i.ee, 1
  store i32 %i.ef, ptr %i.ed, align 8, !tbaa !16
  %i.eg = load ptr, ptr %5, align 8, !tbaa !19
  %i.eh = sext i32 %i.ee to i64
  %i.ei = getelementptr inbounds i8, ptr %i.eg, i64 %i.eh
  store i8 46, ptr %i.ei, align 1, !tbaa !20
  %.pre = load i32, ptr %0, align 8, !tbaa !8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ej = phi i32 [ %.pre, %bb.i ], [ %i.eb, %bb.h ]
  %i.ek = and i32 %i.ej, 4
  %.not48 = icmp eq i32 %i.ek, 0
  br i1 %.not48, label %_ZN14arrow_vendored17double_conversion13StringBuilder10AddPaddingEci.exit52.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.el = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.em = load i32, ptr %i.el, align 8, !tbaa !16 ; 2 uses
  %i.en = add nsw i32 %i.em, 1
  store i32 %i.en, ptr %i.el, align 8, !tbaa !16
  %i.eo = load ptr, ptr %5, align 8, !tbaa !19
  %i.ep = sext i32 %i.em to i64
  %i.eq = getelementptr inbounds i8, ptr %i.eo, i64 %i.ep
  store i8 48, ptr %i.eq, align 1, !tbaa !20
  br label %_ZN14arrow_vendored17double_conversion13StringBuilder10AddPaddingEci.exit52.thread

_ZN14arrow_vendored17double_conversion13StringBuilder10AddPaddingEci.exit52.thread.loopexit.unr-lcssa: ; preds = %.lr.ph.i49
  %lcmp.mod95.not = icmp eq i32 %xtraiter94, 0
  br i1 %lcmp.mod95.not, label %_ZN14arrow_vendored17double_conversion13StringBuilder10AddPaddingEci.exit52.thread, label %.lr.ph.i49.epil.preheader

.lr.ph.i49.epil.preheader:                        ; preds = %_ZN14arrow_vendored17double_conversion13StringBuilder10AddPaddingEci.exit52.thread.loopexit.unr-lcssa, %.lr.ph.i49.preheader
  %lcmp.mod96 = trunc i32 %i.am to i1
  tail call void @llvm.assume(i1 %lcmp.mod96)
  %i.er = load i32, ptr %i.b, align 8, !tbaa !16  ; 2 uses
  %i.es = add nsw i32 %i.er, 1
  store i32 %i.es, ptr %i.b, align 8, !tbaa !16
  %i.et = load ptr, ptr %5, align 8, !tbaa !19
  %i.eu = sext i32 %i.er to i64
  %i.ev = getelementptr inbounds i8, ptr %i.et, i64 %i.eu
  store i8 48, ptr %i.ev, align 1, !tbaa !20
  br label %_ZN14arrow_vendored17double_conversion13StringBuilder10AddPaddingEci.exit52.thread

_ZN14arrow_vendored17double_conversion13StringBuilder10AddPaddingEci.exit52.thread.loopexit77.unr-lcssa: ; preds = %bb.f
  %lcmp.mod80.not = icmp eq i32 %xtraiter79, 0
  br i1 %lcmp.mod80.not, label %_ZN14arrow_vendored17double_conversion13StringBuilder10AddPaddingEci.exit52.thread, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN14arrow_vendored17double_conversion13StringBuilder10AddPaddingEci.exit52.thread.loopexit77.unr-lcssa, %.lr.ph.i57
  %lcmp.mod81 = trunc i32 %4 to i1
  tail call void @llvm.assume(i1 %lcmp.mod81)
  %i.ew = load i32, ptr %i.ba, align 8, !tbaa !16 ; 2 uses
  %i.ex = add nsw i32 %i.ew, 1
  store i32 %i.ex, ptr %i.ba, align 8, !tbaa !16
  %i.ey = load ptr, ptr %5, align 8, !tbaa !19
  %i.ez = sext i32 %i.ew to i64
  %i.fa = getelementptr inbounds i8, ptr %i.ey, i64 %i.ez
  store i8 48, ptr %i.fa, align 1, !tbaa !20
  br label %_ZN14arrow_vendored17double_conversion13StringBuilder10AddPaddingEci.exit52.thread

_ZN14arrow_vendored17double_conversion13StringBuilder10AddPaddingEci.exit52.thread: ; preds = %.epil.preheader, %_ZN14arrow_vendored17double_conversion13StringBuilder10AddPaddingEci.exit52.thread.loopexit77.unr-lcssa, %.lr.ph.i49.epil.preheader, %_ZN14arrow_vendored17double_conversion13StringBuilder10AddPaddingEci.exit52.thread.loopexit.unr-lcssa, %_ZN14arrow_vendored17double_conversion13StringBuilder10AddPaddingEci.exit, %bb.j, %bb.k, %_ZN14arrow_vendored17double_conversion13StringBuilder10AddPaddingEci.exit52
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter20ToShortestIeeeNumberEdPNS0_13StringBuilderENS1_8DtoaModeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, double noundef %1, ptr nofree noundef captures(none) %2, i32 noundef %3) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca [18 x i8], align 16               ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = tail call double @llvm.fabs.f64(double %1) ; 2 uses
  %i.f = fcmp ueq double %i.e, +inf
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = fcmp oeq double %i.e, +inf
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !12   ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter19HandleSpecialValuesEdPNS0_13StringBuilderE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = fcmp olt double %1, 0.000000e+00
  br i1 %i.k, label %bb.e, label %.sink.split.i

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !16   ; 2 uses
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %i.l, align 8, !tbaa !16
  %i.o = load ptr, ptr %2, align 8, !tbaa !19
  %i.p = sext i32 %i.m to i64
  %i.q = getelementptr inbounds i8, ptr %i.o, i64 %i.p
  store i8 45, ptr %i.q, align 1, !tbaa !20
  %.pre.i = load ptr, ptr %i.h, align 8, !tbaa !12
  br label %.sink.split.i

bb.f:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter19HandleSpecialValuesEdPNS0_13StringBuilderE.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.f, %bb.e, %bb.d
  %.sink23.i = phi ptr [ %i.i, %bb.d ], [ %.pre.i, %bb.e ], [ %i.s, %bb.f ] ; 2 uses
  %i.u = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.sink23.i) #13 ; 2 uses
  %i.v = trunc i64 %i.u to i32
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !16
  %i.y = load ptr, ptr %2, align 8, !tbaa !19
  %i.z = sext i32 %i.x to i64
  %i.aa = getelementptr inbounds i8, ptr %i.y, i64 %i.z
  %sext.i8.i = shl i64 %i.u, 32
  %i.ab = ashr exact i64 %sext.i8.i, 32
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr nonnull align 1 %.sink23.i, i64 %i.ab, i1 false)
  %i.ac = load i32, ptr %i.w, align 8, !tbaa !16
  %i.ad = add nsw i32 %i.ac, %i.v
  store i32 %i.ad, ptr %i.w, align 8, !tbaa !16
  br label %_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter19HandleSpecialValuesEdPNS0_13StringBuilderE.exit

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  call void @_ZN14arrow_vendored17double_conversion23DoubleToStringConverter13DoubleToAsciiEdNS1_8DtoaModeEiPciPbPiS5_(double noundef %1, i32 noundef %3, i32 noundef 0, ptr noundef nonnull %i.c, i32 noundef 18, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, ptr noundef nonnull %i.a)
  %i.ae = load i8, ptr %i.b, align 1, !tbaa !30, !range !32, !noundef !33
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ag = load i32, ptr %0, align 8, !tbaa !8
  %i.ah = and i32 %i.ag, 8
  %i.ai = icmp ne i32 %i.ah, 0
  %i.aj = fcmp oeq double %1, 0.000000e+00
  %or.cond = select i1 %i.aj, i1 %i.ai, i1 false
  br i1 %or.cond, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !16 ; 2 uses
  %i.am = add nsw i32 %i.al, 1
  store i32 %i.am, ptr %i.ak, align 8, !tbaa !16
  %i.an = load ptr, ptr %2, align 8, !tbaa !19
  %i.ao = sext i32 %i.al to i64
  %i.ap = getelementptr inbounds i8, ptr %i.an, i64 %i.ao
  store i8 45, ptr %i.ap, align 1, !tbaa !20
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g
  %i.aq = load i32, ptr %i.a, align 4, !tbaa !3   ; 3 uses
  %4 = add nsw i32 %i.aq, -1                      ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !34
  %.not = icmp sle i32 %i.as, %4
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load i32, ptr %i.at, align 8
  %5 = icmp slt i32 %4, %i.au
  %or.cond17 = select i1 %.not, i1 %5, i1 false
  %6 = load i32, ptr %i.d, align 4, !tbaa !3      ; 3 uses
  br i1 %or.cond17, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.av = sub nsw i32 %6, %i.aq
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %i.av, i32 0)
  call void @_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter27CreateDecimalRepresentationEPKciiiPNS0_13StringBuilderE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.c, i32 noundef %6, i32 noundef %i.aq, i32 noundef %.sroa.speculated, ptr noundef %2)
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  call void @_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter31CreateExponentialRepresentationEPKciiPNS0_13StringBuilderE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.c, i32 noundef %6, i32 noundef %4, ptr noundef %2)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter19HandleSpecialValuesEdPNS0_13StringBuilderE.exit

_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter19HandleSpecialValuesEdPNS0_13StringBuilderE.exit: ; preds = %.sink.split.i, %bb.f, %bb.c, %bb.m
  %.0 = phi i1 [ true, %bb.m ], [ true, %.sink.split.i ], [ false, %bb.f ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN14arrow_vendored17double_conversion23DoubleToStringConverter13DoubleToAsciiEdNS1_8DtoaModeEiPciPbPiS5_(double noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = bitcast double %0 to i64
  %.lobit = lshr i64 %i.a, 63
  %.sink = trunc nuw nsw i64 %.lobit to i8
  %.0 = tail call double @llvm.fabs.f64(double %0) ; 5 uses
  store i8 %.sink, ptr %5, align 1, !tbaa !30
  %i.b = icmp eq i32 %1, 3
  %i.c = icmp eq i32 %2, 0
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %3, align 1, !tbaa !20
  store i32 0, ptr %6, align 4, !tbaa !3
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.d = fcmp oeq double %0, 0.000000e+00
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i8 48, ptr %3, align 1, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 0, ptr %i.e, align 1, !tbaa !20
  store i32 1, ptr %6, align 4, !tbaa !3
  store i32 1, ptr %7, align 4, !tbaa !3
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  switch i32 %1, label %bb.i [
    i32 0, label %bb.f
    i32 1, label %bb.j
    i32 2, label %bb.g
    i32 3, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.f = tail call noundef zeroext i1 @_ZN14arrow_vendored17double_conversion8FastDtoaEdNS0_12FastDtoaModeEiNS0_6VectorIcEEPiS4_(double noundef %.0, i32 noundef 0, i32 noundef 0, ptr %3, i32 %4, ptr noundef %6, ptr noundef %7)
  br i1 %i.f, label %bb.k, label %_ZN14arrow_vendored17double_conversionL20DtoaToBignumDtoaModeENS0_23DoubleToStringConverter8DtoaModeE.exit

bb.g:                                             ; preds = %bb.e
  %i.g = tail call noundef zeroext i1 @_ZN14arrow_vendored17double_conversion13FastFixedDtoaEdiNS0_6VectorIcEEPiS3_(double noundef %.0, i32 noundef %2, ptr %3, i32 %4, ptr noundef %6, ptr noundef %7)
  br i1 %i.g, label %bb.k, label %_ZN14arrow_vendored17double_conversionL20DtoaToBignumDtoaModeENS0_23DoubleToStringConverter8DtoaModeE.exit

bb.h:                                             ; preds = %bb.e
  %i.h = tail call noundef zeroext i1 @_ZN14arrow_vendored17double_conversion8FastDtoaEdNS0_12FastDtoaModeEiNS0_6VectorIcEEPiS4_(double noundef %.0, i32 noundef 2, i32 noundef %2, ptr %3, i32 %4, ptr noundef %6, ptr noundef %7)
  br i1 %i.h, label %bb.k, label %_ZN14arrow_vendored17double_conversionL20DtoaToBignumDtoaModeENS0_23DoubleToStringConverter8DtoaModeE.exit

bb.i:                                             ; preds = %bb.e
  tail call void @abort() #14
  unreachable

bb.j:                                             ; preds = %bb.e
  %i.i = tail call noundef zeroext i1 @_ZN14arrow_vendored17double_conversion8FastDtoaEdNS0_12FastDtoaModeEiNS0_6VectorIcEEPiS4_(double noundef %.0, i32 noundef 1, i32 noundef 0, ptr %3, i32 %4, ptr noundef %6, ptr noundef %7)
  br i1 %i.i, label %bb.k, label %_ZN14arrow_vendored17double_conversionL20DtoaToBignumDtoaModeENS0_23DoubleToStringConverter8DtoaModeE.exit

_ZN14arrow_vendored17double_conversionL20DtoaToBignumDtoaModeENS0_23DoubleToStringConverter8DtoaModeE.exit: ; preds = %bb.j, %bb.f, %bb.h, %bb.g
  tail call void @_ZN14arrow_vendored17double_conversion10BignumDtoaEdNS0_14BignumDtoaModeEiNS0_6VectorIcEEPiS4_(double noundef %.0, i32 noundef %1, i32 noundef %2, ptr %3, i32 %4, ptr noundef %6, ptr noundef %7)
  %i.j = load i32, ptr %6, align 4, !tbaa !3
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds i8, ptr %3, i64 %i.k
  store i8 0, ptr %i.l, align 1, !tbaa !20
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %bb.h, %bb.f, %_ZN14arrow_vendored17double_conversionL20DtoaToBignumDtoaModeENS0_23DoubleToStringConverter8DtoaModeE.exit, %bb.j, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter7ToFixedEdiPNS0_13StringBuilderE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, double noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca [161 x i8], align 16              ; 8 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = bitcast double %1 to i64                 ; 2 uses
  %i.e = and i64 %i.d, 9218868437227405312
  %i.f = icmp eq i64 %i.e, 9218868437227405312
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = tail call double @llvm.fabs.f64(double %1)
  %i.h = fcmp oeq double %i.g, +inf
  br i1 %i.h, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !12   ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter19HandleSpecialValuesEdPNS0_13StringBuilderE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = fcmp olt double %1, 0.000000e+00
  br i1 %i.l, label %bb.e, label %.sink.split.i

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !16   ; 2 uses
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.m, align 8, !tbaa !16
  %i.p = load ptr, ptr %3, align 8, !tbaa !19
  %i.q = sext i32 %i.n to i64
  %i.r = getelementptr inbounds i8, ptr %i.p, i64 %i.q
  store i8 45, ptr %i.r, align 1, !tbaa !20
  %.pre.i = load ptr, ptr %i.i, align 8, !tbaa !12
  br label %.sink.split.i

bb.f:                                             ; preds = %bb.b
  %i.s = fcmp ord double %1, 0.000000e+00
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  %or.cond.i = select i1 %i.s, i1 true, i1 %i.v
  br i1 %or.cond.i, label %_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter19HandleSpecialValuesEdPNS0_13StringBuilderE.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.f, %bb.e, %bb.d
  %.sink23.i = phi ptr [ %i.j, %bb.d ], [ %.pre.i, %bb.e ], [ %i.u, %bb.f ] ; 2 uses
  %i.w = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.sink23.i) #13 ; 2 uses
  %i.x = trunc i64 %i.w to i32
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !16
  %i.aa = load ptr, ptr %3, align 8, !tbaa !19
  %i.ab = sext i32 %i.z to i64
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 %i.ab
  %sext.i8.i = shl i64 %i.w, 32
  %i.ad = ashr exact i64 %sext.i8.i, 32
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ac, ptr nonnull align 1 %.sink23.i, i64 %i.ad, i1 false)
  %i.ae = load i32, ptr %i.y, align 8, !tbaa !16
  %i.af = add nsw i32 %i.ae, %i.x
  store i32 %i.af, ptr %i.y, align 8, !tbaa !16
  br label %_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter19HandleSpecialValuesEdPNS0_13StringBuilderE.exit

bb.g:                                             ; preds = %bb.a
  %i.ag = icmp slt i32 %2, 101
  %i.ah = tail call double @llvm.fabs.f64(double %1) ; 3 uses
  %or.cond = fcmp ult double %i.ah, f0x4C63E9E4E4C2F344
  %or.cond19 = and i1 %i.ag, %or.cond
  br i1 %or.cond19, label %bb.h, label %_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter19HandleSpecialValuesEdPNS0_13StringBuilderE.exit

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.ai = fcmp oeq double %1, 0.000000e+00        ; 2 uses
  br i1 %i.ai, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i8 48, ptr %i.b, align 16, !tbaa !20
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 0, ptr %i.aj, align 1, !tbaa !20
  store i32 1, ptr %i.c, align 4, !tbaa !3
  store i32 1, ptr %i.a, align 4, !tbaa !3
  br label %_ZN14arrow_vendored17double_conversion23DoubleToStringConverter13DoubleToAsciiEdNS1_8DtoaModeEiPciPbPiS5_.exit

bb.j:                                             ; preds = %bb.h
  %i.ak = call noundef zeroext i1 @_ZN14arrow_vendored17double_conversion13FastFixedDtoaEdiNS0_6VectorIcEEPiS3_(double noundef %i.ah, i32 noundef %2, ptr nonnull %i.b, i32 161, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a)
  br i1 %i.ak, label %_ZN14arrow_vendored17double_conversion23DoubleToStringConverter13DoubleToAsciiEdNS1_8DtoaModeEiPciPbPiS5_.exit, label %_ZN14arrow_vendored17double_conversionL20DtoaToBignumDtoaModeENS0_23DoubleToStringConverter8DtoaModeE.exit.i

_ZN14arrow_vendored17double_conversionL20DtoaToBignumDtoaModeENS0_23DoubleToStringConverter8DtoaModeE.exit.i: ; preds = %bb.j
  call void @_ZN14arrow_vendored17double_conversion10BignumDtoaEdNS0_14BignumDtoaModeEiNS0_6VectorIcEEPiS4_(double noundef %i.ah, i32 noundef 2, i32 noundef %2, ptr nonnull %i.b, i32 161, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a)
  %i.al = load i32, ptr %i.c, align 4, !tbaa !3
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds i8, ptr %i.b, i64 %i.am
  store i8 0, ptr %i.an, align 1, !tbaa !20
  br label %_ZN14arrow_vendored17double_conversion23DoubleToStringConverter13DoubleToAsciiEdNS1_8DtoaModeEiPciPbPiS5_.exit

_ZN14arrow_vendored17double_conversion23DoubleToStringConverter13DoubleToAsciiEdNS1_8DtoaModeEiPciPbPiS5_.exit: ; preds = %bb.i, %bb.j, %_ZN14arrow_vendored17double_conversionL20DtoaToBignumDtoaModeENS0_23DoubleToStringConverter8DtoaModeE.exit.i
  %i.ao = icmp slt i64 %i.d, 0
  br i1 %i.ao, label %bb.k, label %bb.m

bb.k:                                             ; preds = %_ZN14arrow_vendored17double_conversion23DoubleToStringConverter13DoubleToAsciiEdNS1_8DtoaModeEiPciPbPiS5_.exit
  %i.ap = load i32, ptr %0, align 8, !tbaa !8
  %i.aq = and i32 %i.ap, 8
  %i.ar = icmp ne i32 %i.aq, 0
  %or.cond3 = select i1 %i.ai, i1 %i.ar, i1 false
  br i1 %or.cond3, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !16 ; 2 uses
  %i.au = add nsw i32 %i.at, 1
  store i32 %i.au, ptr %i.as, align 8, !tbaa !16
  %i.av = load ptr, ptr %3, align 8, !tbaa !19
  %i.aw = sext i32 %i.at to i64
  %i.ax = getelementptr inbounds i8, ptr %i.av, i64 %i.aw
  store i8 45, ptr %i.ax, align 1, !tbaa !20
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %_ZN14arrow_vendored17double_conversion23DoubleToStringConverter13DoubleToAsciiEdNS1_8DtoaModeEiPciPbPiS5_.exit
  %i.ay = load i32, ptr %i.c, align 4, !tbaa !3
  %i.az = load i32, ptr %i.a, align 4, !tbaa !3
  call void @_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter27CreateDecimalRepresentationEPKciiiPNS0_13StringBuilderE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.b, i32 noundef %i.ay, i32 noundef %i.az, i32 noundef %2, ptr noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter19HandleSpecialValuesEdPNS0_13StringBuilderE.exit

_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter19HandleSpecialValuesEdPNS0_13StringBuilderE.exit: ; preds = %.sink.split.i, %bb.f, %bb.c, %bb.g, %bb.m
  %.0 = phi i1 [ false, %bb.g ], [ true, %bb.m ], [ true, %.sink.split.i ], [ false, %bb.f ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter13ToExponentialEdiPNS0_13StringBuilderE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, double noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 9 uses
  %i.b = alloca [122 x i8], align 16              ; 14 uses
  %i.c = alloca i32, align 4                      ; 12 uses
  %i.d = bitcast double %1 to i64                 ; 2 uses
  %i.e = and i64 %i.d, 9218868437227405312
  %i.f = icmp eq i64 %i.e, 9218868437227405312
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = tail call double @llvm.fabs.f64(double %1)
  %i.h = fcmp oeq double %i.g, +inf
  br i1 %i.h, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !12   ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter19HandleSpecialValuesEdPNS0_13StringBuilderE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = fcmp olt double %1, 0.000000e+00
  br i1 %i.l, label %bb.e, label %.sink.split.i

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !16   ; 2 uses
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.m, align 8, !tbaa !16
  %i.p = load ptr, ptr %3, align 8, !tbaa !19
  %i.q = sext i32 %i.n to i64
  %i.r = getelementptr inbounds i8, ptr %i.p, i64 %i.q
  store i8 45, ptr %i.r, align 1, !tbaa !20
  %.pre.i = load ptr, ptr %i.i, align 8, !tbaa !12
  br label %.sink.split.i

bb.f:                                             ; preds = %bb.b
  %i.s = fcmp ord double %1, 0.000000e+00
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  %or.cond.i = select i1 %i.s, i1 true, i1 %i.v
  br i1 %or.cond.i, label %_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter19HandleSpecialValuesEdPNS0_13StringBuilderE.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.f, %bb.e, %bb.d
  %.sink23.i = phi ptr [ %i.j, %bb.d ], [ %.pre.i, %bb.e ], [ %i.u, %bb.f ] ; 2 uses
  %i.w = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.sink23.i) #13 ; 2 uses
  %i.x = trunc i64 %i.w to i32
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !16
  %i.aa = load ptr, ptr %3, align 8, !tbaa !19
  %i.ab = sext i32 %i.z to i64
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 %i.ab
  %sext.i8.i = shl i64 %i.w, 32
  %i.ad = ashr exact i64 %sext.i8.i, 32
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ac, ptr nonnull align 1 %.sink23.i, i64 %i.ad, i1 false)
  %i.ae = load i32, ptr %i.y, align 8, !tbaa !16
  %i.af = add nsw i32 %i.ae, %i.x
  store i32 %i.af, ptr %i.y, align 8, !tbaa !16
  br label %_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter19HandleSpecialValuesEdPNS0_13StringBuilderE.exit

bb.g:                                             ; preds = %bb.a
  %i.ag = add i32 %2, -121
  %or.cond24 = icmp ult i32 %i.ag, -122
  br i1 %or.cond24, label %_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter19HandleSpecialValuesEdPNS0_13StringBuilderE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.ah = icmp eq i32 %2, -1
  br i1 %i.ah, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %.0.i25 = tail call double @llvm.fabs.f64(double %1) ; 2 uses
  %i.ai = fcmp oeq double %1, 0.000000e+00
  br i1 %i.ai, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i8 48, ptr %i.b, align 16, !tbaa !20
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 0, ptr %i.aj, align 1, !tbaa !20
  store i32 1, ptr %i.c, align 4, !tbaa !3
  store i32 1, ptr %i.a, align 4, !tbaa !3
  br label %_ZN14arrow_vendored17double_conversion23DoubleToStringConverter13DoubleToAsciiEdNS1_8DtoaModeEiPciPbPiS5_.exit

bb.k:                                             ; preds = %bb.i
  %i.ak = call noundef zeroext i1 @_ZN14arrow_vendored17double_conversion8FastDtoaEdNS0_12FastDtoaModeEiNS0_6VectorIcEEPiS4_(double noundef %.0.i25, i32 noundef 0, i32 noundef 0, ptr nonnull %i.b, i32 122, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a)
  br i1 %i.ak, label %_ZN14arrow_vendored17double_conversion23DoubleToStringConverter13DoubleToAsciiEdNS1_8DtoaModeEiPciPbPiS5_.exit, label %_ZN14arrow_vendored17double_conversionL20DtoaToBignumDtoaModeENS0_23DoubleToStringConverter8DtoaModeE.exit.i

_ZN14arrow_vendored17double_conversionL20DtoaToBignumDtoaModeENS0_23DoubleToStringConverter8DtoaModeE.exit.i: ; preds = %bb.k
  call void @_ZN14arrow_vendored17double_conversion10BignumDtoaEdNS0_14BignumDtoaModeEiNS0_6VectorIcEEPiS4_(double noundef %.0.i25, i32 noundef 0, i32 noundef 0, ptr nonnull %i.b, i32 122, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a)
  %i.al = load i32, ptr %i.c, align 4, !tbaa !3
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds i8, ptr %i.b, i64 %i.am
  store i8 0, ptr %i.an, align 1, !tbaa !20
  br label %_ZN14arrow_vendored17double_conversion23DoubleToStringConverter13DoubleToAsciiEdNS1_8DtoaModeEiPciPbPiS5_.exit

bb.l:                                             ; preds = %bb.h
  %i.ao = add nuw nsw i32 %2, 1                   ; 4 uses
  %.0.i28 = tail call double @llvm.fabs.f64(double %1) ; 2 uses
  %i.ap = fcmp oeq double %1, 0.000000e+00
  br i1 %i.ap, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i8 48, ptr %i.b, align 16, !tbaa !20
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 0, ptr %i.aq, align 1, !tbaa !20
  store i32 1, ptr %i.a, align 4, !tbaa !3
  br label %_ZN14arrow_vendored17double_conversion23DoubleToStringConverter13DoubleToAsciiEdNS1_8DtoaModeEiPciPbPiS5_.exit31

bb.n:                                             ; preds = %bb.l
  %i.ar = call noundef zeroext i1 @_ZN14arrow_vendored17double_conversion8FastDtoaEdNS0_12FastDtoaModeEiNS0_6VectorIcEEPiS4_(double noundef %.0.i28, i32 noundef 2, i32 noundef %i.ao, ptr nonnull %i.b, i32 122, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a)
  br i1 %i.ar, label %._ZN14arrow_vendored17double_conversion23DoubleToStringConverter13DoubleToAsciiEdNS1_8DtoaModeEiPciPbPiS5_.exit31_crit_edge, label %_ZN14arrow_vendored17double_conversionL20DtoaToBignumDtoaModeENS0_23DoubleToStringConverter8DtoaModeE.exit.i30

._ZN14arrow_vendored17double_conversion23DoubleToStringConverter13DoubleToAsciiEdNS1_8DtoaModeEiPciPbPiS5_.exit31_crit_edge: ; preds = %bb.n
  %.pre = load i32, ptr %i.c, align 4, !tbaa !3
  br label %_ZN14arrow_vendored17double_conversion23DoubleToStringConverter13DoubleToAsciiEdNS1_8DtoaModeEiPciPbPiS5_.exit31

_ZN14arrow_vendored17double_conversionL20DtoaToBignumDtoaModeENS0_23DoubleToStringConverter8DtoaModeE.exit.i30: ; preds = %bb.n
  call void @_ZN14arrow_vendored17double_conversion10BignumDtoaEdNS0_14BignumDtoaModeEiNS0_6VectorIcEEPiS4_(double noundef %.0.i28, i32 noundef 3, i32 noundef %i.ao, ptr nonnull %i.b, i32 122, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a)
  %i.as = load i32, ptr %i.c, align 4, !tbaa !3   ; 2 uses
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds i8, ptr %i.b, i64 %i.at
  store i8 0, ptr %i.au, align 1, !tbaa !20
  br label %_ZN14arrow_vendored17double_conversion23DoubleToStringConverter13DoubleToAsciiEdNS1_8DtoaModeEiPciPbPiS5_.exit31

_ZN14arrow_vendored17double_conversion23DoubleToStringConverter13DoubleToAsciiEdNS1_8DtoaModeEiPciPbPiS5_.exit31: ; preds = %._ZN14arrow_vendored17double_conversion23DoubleToStringConverter13DoubleToAsciiEdNS1_8DtoaModeEiPciPbPiS5_.exit31_crit_edge, %bb.m, %_ZN14arrow_vendored17double_conversionL20DtoaToBignumDtoaModeENS0_23DoubleToStringConverter8DtoaModeE.exit.i30
  %i.av = phi i32 [ %.pre, %._ZN14arrow_vendored17double_conversion23DoubleToStringConverter13DoubleToAsciiEdNS1_8DtoaModeEiPciPbPiS5_.exit31_crit_edge ], [ 1, %bb.m ], [ %i.as, %_ZN14arrow_vendored17double_conversionL20DtoaToBignumDtoaModeENS0_23DoubleToStringConverter8DtoaModeE.exit.i30 ] ; 3 uses
  %4 = icmp slt i32 %i.av, %i.ao
  br i1 %4, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZN14arrow_vendored17double_conversion23DoubleToStringConverter13DoubleToAsciiEdNS1_8DtoaModeEiPciPbPiS5_.exit31
  %i.aw = sext i32 %i.av to i64
  %scevgep = getelementptr i8, ptr %i.b, i64 %i.aw
  %i.ax = sub i32 %2, %i.av
  %i.ay = zext i32 %i.ax to i64
  %i.az = add nuw nsw i64 %i.ay, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i8 48, i64 %i.az, i1 false), !tbaa !20
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %_ZN14arrow_vendored17double_conversion23DoubleToStringConverter13DoubleToAsciiEdNS1_8DtoaModeEiPciPbPiS5_.exit31
  store i32 %i.ao, ptr %i.c, align 4, !tbaa !3
  br label %_ZN14arrow_vendored17double_conversion23DoubleToStringConverter13DoubleToAsciiEdNS1_8DtoaModeEiPciPbPiS5_.exit

_ZN14arrow_vendored17double_conversion23DoubleToStringConverter13DoubleToAsciiEdNS1_8DtoaModeEiPciPbPiS5_.exit: ; preds = %_ZN14arrow_vendored17double_conversionL20DtoaToBignumDtoaModeENS0_23DoubleToStringConverter8DtoaModeE.exit.i, %bb.k, %bb.j, %._crit_edge
  %i.ba = icmp slt i64 %i.d, 0
  br i1 %i.ba, label %bb.o, label %bb.q

bb.o:                                             ; preds = %_ZN14arrow_vendored17double_conversion23DoubleToStringConverter13DoubleToAsciiEdNS1_8DtoaModeEiPciPbPiS5_.exit
  %i.bb = load i32, ptr %0, align 8, !tbaa !8
  %i.bc = and i32 %i.bb, 8
  %i.bd = icmp ne i32 %i.bc, 0
  %i.be = fcmp oeq double %1, 0.000000e+00
  %or.cond = select i1 %i.be, i1 %i.bd, i1 false
  br i1 %or.cond, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !16 ; 2 uses
  %i.bh = add nsw i32 %i.bg, 1
  store i32 %i.bh, ptr %i.bf, align 8, !tbaa !16
  %i.bi = load ptr, ptr %3, align 8, !tbaa !19
  %i.bj = sext i32 %i.bg to i64
  %i.bk = getelementptr inbounds i8, ptr %i.bi, i64 %i.bj
  store i8 45, ptr %i.bk, align 1, !tbaa !20
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %_ZN14arrow_vendored17double_conversion23DoubleToStringConverter13DoubleToAsciiEdNS1_8DtoaModeEiPciPbPiS5_.exit
  %i.bl = load i32, ptr %i.a, align 4, !tbaa !3
  %i.bm = add nsw i32 %i.bl, -1
  %i.bn = load i32, ptr %i.c, align 4, !tbaa !3
  call void @_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter31CreateExponentialRepresentationEPKciiPNS0_13StringBuilderE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.b, i32 noundef %i.bn, i32 noundef %i.bm, ptr noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter19HandleSpecialValuesEdPNS0_13StringBuilderE.exit

_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter19HandleSpecialValuesEdPNS0_13StringBuilderE.exit: ; preds = %.sink.split.i, %bb.f, %bb.c, %bb.g, %bb.q
  %.0 = phi i1 [ false, %bb.g ], [ true, %bb.q ], [ true, %.sink.split.i ], [ false, %bb.f ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter11ToPrecisionEdiPNS0_13StringBuilderE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, double noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca [121 x i8], align 16              ; 12 uses
  %i.c = alloca i32, align 4                      ; 11 uses
  %i.d = bitcast double %1 to i64                 ; 2 uses
  %i.e = and i64 %i.d, 9218868437227405312
  %i.f = icmp eq i64 %i.e, 9218868437227405312
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = tail call double @llvm.fabs.f64(double %1)
  %i.h = fcmp oeq double %i.g, +inf
  br i1 %i.h, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !12   ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter19HandleSpecialValuesEdPNS0_13StringBuilderE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = fcmp olt double %1, 0.000000e+00
  br i1 %i.l, label %bb.e, label %.sink.split.i

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !16   ; 2 uses
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.m, align 8, !tbaa !16
  %i.p = load ptr, ptr %3, align 8, !tbaa !19
  %i.q = sext i32 %i.n to i64
  %i.r = getelementptr inbounds i8, ptr %i.p, i64 %i.q
  store i8 45, ptr %i.r, align 1, !tbaa !20
  %.pre.i = load ptr, ptr %i.i, align 8, !tbaa !12
  br label %.sink.split.i

bb.f:                                             ; preds = %bb.b
  %i.s = fcmp ord double %1, 0.000000e+00
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  %or.cond.i = select i1 %i.s, i1 true, i1 %i.v
  br i1 %or.cond.i, label %_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter19HandleSpecialValuesEdPNS0_13StringBuilderE.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.f, %bb.e, %bb.d
  %.sink23.i = phi ptr [ %i.j, %bb.d ], [ %.pre.i, %bb.e ], [ %i.u, %bb.f ] ; 2 uses
  %i.w = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.sink23.i) #13 ; 2 uses
  %i.x = trunc i64 %i.w to i32
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !16
  %i.aa = load ptr, ptr %3, align 8, !tbaa !19
  %i.ab = sext i32 %i.z to i64
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 %i.ab
  %sext.i8.i = shl i64 %i.w, 32
  %i.ad = ashr exact i64 %sext.i8.i, 32
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ac, ptr nonnull align 1 %.sink23.i, i64 %i.ad, i1 false)
  %i.ae = load i32, ptr %i.y, align 8, !tbaa !16
  %i.af = add nsw i32 %i.ae, %i.x
  store i32 %i.af, ptr %i.y, align 8, !tbaa !16
  br label %_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter19HandleSpecialValuesEdPNS0_13StringBuilderE.exit

bb.g:                                             ; preds = %bb.a
  %i.ag = add i32 %2, -121
  %or.cond = icmp ult i32 %i.ag, -120
  br i1 %or.cond, label %_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter19HandleSpecialValuesEdPNS0_13StringBuilderE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %.0.i24 = tail call double @llvm.fabs.f64(double %1) ; 2 uses
  %i.ah = fcmp oeq double %1, 0.000000e+00        ; 2 uses
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i8 48, ptr %i.b, align 16, !tbaa !20
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 0, ptr %i.ai, align 1, !tbaa !20
  store i32 1, ptr %i.c, align 4, !tbaa !3
  store i32 1, ptr %i.a, align 4, !tbaa !3
  br label %_ZN14arrow_vendored17double_conversion23DoubleToStringConverter13DoubleToAsciiEdNS1_8DtoaModeEiPciPbPiS5_.exit

bb.j:                                             ; preds = %bb.h
  %i.aj = call noundef zeroext i1 @_ZN14arrow_vendored17double_conversion8FastDtoaEdNS0_12FastDtoaModeEiNS0_6VectorIcEEPiS4_(double noundef %.0.i24, i32 noundef 2, i32 noundef %2, ptr nonnull %i.b, i32 121, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a)
  br i1 %i.aj, label %_ZN14arrow_vendored17double_conversion23DoubleToStringConverter13DoubleToAsciiEdNS1_8DtoaModeEiPciPbPiS5_.exit, label %_ZN14arrow_vendored17double_conversionL20DtoaToBignumDtoaModeENS0_23DoubleToStringConverter8DtoaModeE.exit.i

_ZN14arrow_vendored17double_conversionL20DtoaToBignumDtoaModeENS0_23DoubleToStringConverter8DtoaModeE.exit.i: ; preds = %bb.j
  call void @_ZN14arrow_vendored17double_conversion10BignumDtoaEdNS0_14BignumDtoaModeEiNS0_6VectorIcEEPiS4_(double noundef %.0.i24, i32 noundef 3, i32 noundef %2, ptr nonnull %i.b, i32 121, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a)
  %i.ak = load i32, ptr %i.c, align 4, !tbaa !3
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds i8, ptr %i.b, i64 %i.al
  store i8 0, ptr %i.am, align 1, !tbaa !20
  br label %_ZN14arrow_vendored17double_conversion23DoubleToStringConverter13DoubleToAsciiEdNS1_8DtoaModeEiPciPbPiS5_.exit

_ZN14arrow_vendored17double_conversion23DoubleToStringConverter13DoubleToAsciiEdNS1_8DtoaModeEiPciPbPiS5_.exit: ; preds = %bb.i, %bb.j, %_ZN14arrow_vendored17double_conversionL20DtoaToBignumDtoaModeENS0_23DoubleToStringConverter8DtoaModeE.exit.i
  %i.an = icmp slt i64 %i.d, 0
  br i1 %i.an, label %bb.k, label %bb.m

bb.k:                                             ; preds = %_ZN14arrow_vendored17double_conversion23DoubleToStringConverter13DoubleToAsciiEdNS1_8DtoaModeEiPciPbPiS5_.exit
  %i.ao = load i32, ptr %0, align 8, !tbaa !8
  %i.ap = and i32 %i.ao, 8
  %i.aq = icmp ne i32 %i.ap, 0
  %or.cond3 = select i1 %i.ah, i1 %i.aq, i1 false
  br i1 %or.cond3, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !16 ; 2 uses
  %i.at = add nsw i32 %i.as, 1
  store i32 %i.at, ptr %i.ar, align 8, !tbaa !16
  %i.au = load ptr, ptr %3, align 8, !tbaa !19
  %i.av = sext i32 %i.as to i64
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 %i.av
  store i8 45, ptr %i.aw, align 1, !tbaa !20
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %_ZN14arrow_vendored17double_conversion23DoubleToStringConverter13DoubleToAsciiEdNS1_8DtoaModeEiPciPbPiS5_.exit
  %i.ax = load i32, ptr %i.a, align 4, !tbaa !3   ; 6 uses
  %i.ay = add nsw i32 %i.ax, -1
  %i.az = sub i32 1, %i.ax
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !35
  %i.bc = icmp sgt i32 %i.az, %i.bb
  %i.bd = load i32, ptr %0, align 8, !tbaa !8     ; 3 uses
  br i1 %i.bc, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.be = lshr i32 %i.bd, 2
  %.lobit = and i32 %i.be, 1
  %i.bf = sub i32 %i.ax, %2
  %i.bg = add nsw i32 %i.bf, %.lobit
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !36
  %i.bj = icmp sgt i32 %i.bg, %i.bi               ; 2 uses
  %i.bk = and i32 %i.bd, 16
  %.not = icmp eq i32 %i.bk, 0
  br i1 %.not, label %bb.q, label %bb.o

.thread:                                          ; preds = %bb.m
  %i.bl = and i32 %i.bd, 16
  %.not50 = icmp eq i32 %i.bl, 0
  br i1 %.not50, label %.thread..thread52_crit_edge, label %.thread51

.thread..thread52_crit_edge:                      ; preds = %.thread
  %.pre65 = load i32, ptr %i.c, align 4, !tbaa !3
  br label %.thread52
end_hunk_0
