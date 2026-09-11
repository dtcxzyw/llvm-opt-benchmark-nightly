Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/fast_window_binarizer?download=true
inline.NumInlined: 91
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN5zxing19FastWindowBinarizer14binarizeImage0ERNS_12ErrorHandlerE:bb.a
.lr.ph.us56.i.preheader:                          ; preds = %._crit_edge.us.i
  %xtraiter156 = and i64 %wide.trip.count69.i, 1
  %.off = add nsw i32 %i.m, -6
  %i.bw = icmp ult i32 %.off, 6
  %unroll_iter160 = and i64 %wide.trip.count69.i, 536870910
  %lcmp.mod158.not = icmp eq i64 %xtraiter156, 0
  %lcmp.mod159 = trunc i32 %i.w to i1
  br label %.lr.ph.us56.i

.lr.ph.us56.i:                                    ; preds = %.lr.ph.us56.i.preheader, %._crit_edge.us57.i
  %indvars.iv79.i = phi i64 [ %indvars.iv.next80.i, %._crit_edge.us57.i ], [ 0, %.lr.ph.us56.i.preheader ] ; 3 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv79.i ; 4 uses
  store i32 0, ptr %i.bx, align 4, !tbaa !60
  %invariant.gep.i = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv79.i ; 3 uses
  br i1 %i.bw, label %.epil.preheader155, label %.lr.ph.us56.i.new

.lr.ph.us56.i.new:                                ; preds = %.lr.ph.us56.i, %.lr.ph.us56.i.new
  %indvars.iv74.i = phi i64 [ %indvars.iv.next75.i.1, %.lr.ph.us56.i.new ], [ 0, %.lr.ph.us56.i ] ; 3 uses
  %.03950.us.i = phi i32 [ %i.ce, %.lr.ph.us56.i.new ], [ 0, %.lr.ph.us56.i ]
  %niter161 = phi i64 [ %niter161.next.1, %.lr.ph.us56.i.new ], [ 0, %.lr.ph.us56.i ]
  %i.by = mul nuw nsw i64 %indvars.iv74.i, %i.au
  %gep.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %i.by
  %i.bz = load i32, ptr %gep.i, align 4, !tbaa !60
  %i.ca = add nsw i32 %i.bz, %.03950.us.i         ; 2 uses
  %indvars.iv.next75.i = or disjoint i64 %indvars.iv74.i, 1 ; 2 uses
  %i.cb = mul nuw nsw i64 %indvars.iv.next75.i, %i.au
  %gep90.i = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.cb
  store i32 %i.ca, ptr %gep90.i, align 4, !tbaa !60
  %i.cc = mul nuw nsw i64 %indvars.iv.next75.i, %i.au
  %gep.i.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %i.cc
  %i.cd = load i32, ptr %gep.i.1, align 4, !tbaa !60
  %i.ce = add nsw i32 %i.cd, %i.ca                ; 3 uses
  %indvars.iv.next75.i.1 = add nuw nsw i64 %indvars.iv74.i, 2 ; 3 uses
  %i.cf = mul nuw nsw i64 %indvars.iv.next75.i.1, %i.au
  %gep90.i.1 = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.cf
  store i32 %i.ce, ptr %gep90.i.1, align 4, !tbaa !60
  %niter161.next.1 = add nuw i64 %niter161, 2     ; 2 uses
  %niter161.ncmp.1 = icmp eq i64 %niter161.next.1, %unroll_iter160
  br i1 %niter161.ncmp.1, label %._crit_edge.us57.i.unr-lcssa, label %.lr.ph.us56.i.new, !llvm.loop !7

._crit_edge.us57.i.unr-lcssa:                     ; preds = %.lr.ph.us56.i.new
  br i1 %lcmp.mod158.not, label %._crit_edge.us57.i, label %.epil.preheader155

.epil.preheader155:                               ; preds = %._crit_edge.us57.i.unr-lcssa, %.lr.ph.us56.i
  %indvars.iv74.i.epil.init = phi i64 [ 0, %.lr.ph.us56.i ], [ %indvars.iv.next75.i.1, %._crit_edge.us57.i.unr-lcssa ] ; 2 uses
  %.03950.us.i.epil.init = phi i32 [ 0, %.lr.ph.us56.i ], [ %i.ce, %._crit_edge.us57.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod159)
  %i.cg = mul nuw nsw i64 %indvars.iv74.i.epil.init, %i.au
  %gep.i.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %i.cg
  %i.ch = load i32, ptr %gep.i.epil, align 4, !tbaa !60
  %i.ci = add nsw i32 %i.ch, %.03950.us.i.epil.init
  %indvars.iv.next75.i.epil = add nuw nsw i64 %indvars.iv74.i.epil.init, 1
  %i.cj = mul nuw nsw i64 %indvars.iv.next75.i.epil, %i.au
  %gep90.i.epil = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.cj
  store i32 %i.ci, ptr %gep90.i.epil, align 4, !tbaa !60
  br label %._crit_edge.us57.i

._crit_edge.us57.i:                               ; preds = %._crit_edge.us57.i.unr-lcssa, %.epil.preheader155
  %indvars.iv.next80.i = add nuw nsw i64 %indvars.iv79.i, 1 ; 2 uses
  %exitcond83.not.i = icmp eq i64 %indvars.iv.next80.i, %i.au
  br i1 %exitcond83.not.i, label %_ZN5zxing19FastWindowBinarizer10cumulativeEPiS1_ii.exit, label %.lr.ph.us56.i, !llvm.loop !8

_ZN5zxing19FastWindowBinarizer10cumulativeEPiS1_ii.exit: ; preds = %._crit_edge.us57.i
  %i.ck = invoke noalias noundef nonnull dereferenceable(352) ptr @_Znwm(i64 noundef 352) #13
          to label %bb.h unwind label %bb.k       ; 11 uses

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ai, i64 %indvars.iv
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !62
  %i.cn = zext i8 %i.cm to i32
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv
  store i32 %i.cn, ptr %i.co, align 4, !tbaa !60
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cp = load i32, ptr %i.i, align 4, !tbaa !32
  %i.cq = load i32, ptr %i.l, align 8, !tbaa !33
  %i.cr = mul nsw i32 %i.cq, %i.cp
  %i.cs = sext i32 %i.cr to i64
  %i.ct = icmp slt i64 %indvars.iv.next, %i.cs
  br i1 %i.ct, label %bb.g, label %.lr.ph49.i, !llvm.loop !79

bb.h:                                             ; preds = %_ZN5zxing19FastWindowBinarizer10cumulativeEPiS1_ii.exit
  %i.cu = load i32, ptr %i.i, align 4, !tbaa !32
  %i.cv = load i32, ptr %i.l, align 8, !tbaa !33
  invoke void @_ZN5zxing9BitMatrixC1EiiRNS_12ErrorHandlerE(ptr noundef nonnull align 8 dereferenceable(346) %i.ck, i32 noundef %i.cu, i32 noundef %i.cv, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 13 uses
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !25
  %i.cy = add i32 %i.cx, 1
  store i32 %i.cy, ptr %i.cw, align 8, !tbaa !25
  %i.cz = load ptr, ptr %1, align 8, !tbaa !27
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.db = load ptr, ptr %i.da, align 8
  %i.dc = invoke noundef i32 %i.db(ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %bb.i
  %.not = icmp eq i32 %i.dc, 0
  br i1 %.not, label %.lr.ph120.preheader, label %.critedge

bb.k:                                             ; preds = %_ZN5zxing19FastWindowBinarizer10cumulativeEPiS1_ii.exit
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5zxing3RefINS_9BitMatrixEED2Ev.exit91

bb.l:                                             ; preds = %bb.h
  %i.de = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ck, i64 noundef 352) #14
  br label %_ZN5zxing3RefINS_9BitMatrixEED2Ev.exit91

bb.m:                                             ; preds = %bb.i
  %i.df = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dg = load i32, ptr %i.cw, align 8, !tbaa !25
  %i.dh = add i32 %i.dg, -1                       ; 2 uses
  store i32 %i.dh, ptr %i.cw, align 8, !tbaa !25
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %bb.t, label %_ZN5zxing3RefINS_9BitMatrixEED2Ev.exit91

.lr.ph120.preheader:                              ; preds = %bb.j
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ck, i64 312
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !56
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !58 ; 6 uses
  %umax = call i32 @llvm.umax.i32(i32 %i.v, i32 1)
  %umax132 = call i32 @llvm.umax.i32(i32 %i.w, i32 1)
  br label %.lr.ph120

._crit_edge125.split:                             ; preds = %._crit_edge121.split
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.do = load i32, ptr %i.cw, align 8, !tbaa !25
  %i.dp = add i32 %i.do, 1
  store i32 %i.dp, ptr %i.cw, align 8, !tbaa !25
  %i.dq = load ptr, ptr %i.dn, align 8, !tbaa !49 ; 4 uses
  %.not5.i.i = icmp eq ptr %i.dq, null
  br i1 %.not5.i.i, label %bb.p, label %bb.n

bb.n:                                             ; preds = %._crit_edge125.split
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8 ; 3 uses
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !25
  %i.dt = add i32 %i.ds, -1                       ; 2 uses
  store i32 %i.dt, ptr %i.dr, align 8, !tbaa !25
  %i.du = icmp eq i32 %i.dt, 0
  br i1 %i.du, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 -559026175, ptr %i.dr, align 8, !tbaa !25
  %i.dv = load ptr, ptr %i.dq, align 8, !tbaa !27
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8
  call void %i.dx(ptr noundef nonnull align 8 dereferenceable(12) %i.dq) #12, !inline_history !4
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %._crit_edge125.split
  store ptr %i.ck, ptr %i.dn, align 8, !tbaa !49
  %i.dy = load i32, ptr %i.cw, align 8, !tbaa !25
  %i.dz = add i32 %i.dy, -1                       ; 2 uses
  store i32 %i.dz, ptr %i.cw, align 8, !tbaa !25
  %i.ea = icmp eq i32 %i.dz, 0
  br i1 %i.ea, label %bb.q, label %_ZN5zxing3RefINS_9BitMatrixEED2Ev.exit

bb.q:                                             ; preds = %bb.p
  store i32 -559026175, ptr %i.cw, align 8, !tbaa !25
  %i.eb = load ptr, ptr %i.ck, align 8, !tbaa !27
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8
  call void %i.ed(ptr noundef nonnull align 8 dereferenceable(12) %i.ck) #12, !inline_history !2
  br label %_ZN5zxing3RefINS_9BitMatrixEED2Ev.exit

_ZN5zxing3RefINS_9BitMatrixEED2Ev.exit:           ; preds = %bb.p, %bb.q
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5zxing8ArrayRefIcEE, i64 16), ptr %3, align 8, !tbaa !27
  %i.ee = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !50 ; 4 uses
  %.not.i89 = icmp eq ptr %i.ef, null
  br i1 %.not.i89, label %_ZN5zxing8ArrayRefIcED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZN5zxing3RefINS_9BitMatrixEED2Ev.exit
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8 ; 3 uses
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !25
  %i.ei = add i32 %i.eh, -1                       ; 2 uses
  store i32 %i.ei, ptr %i.eg, align 8, !tbaa !25
  %i.ej = icmp eq i32 %i.ei, 0
  br i1 %i.ej, label %bb.s, label %_ZN5zxing8ArrayRefIcED2Ev.exit

bb.s:                                             ; preds = %bb.r
  store i32 -559026175, ptr %i.eg, align 8, !tbaa !25
  %i.ek = load ptr, ptr %i.ef, align 8, !tbaa !27
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.em = load ptr, ptr %i.el, align 8
  call void %i.em(ptr noundef nonnull align 8 dereferenceable(12) %i.ef) #12, !inline_history !3
  br label %_ZN5zxing8ArrayRefIcED2Ev.exit

_ZN5zxing8ArrayRefIcED2Ev.exit:                   ; preds = %_ZN5zxing3RefINS_9BitMatrixEED2Ev.exit, %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %bb.ag

.lr.ph120:                                        ; preds = %.lr.ph120.preheader, %._crit_edge121.split
  %.071122 = phi i32 [ 0, %.lr.ph120.preheader ], [ %i.ey, %._crit_edge121.split ] ; 4 uses
  %i.en = sub nsw i32 %.071122, %i.u
  %i.eo = call i32 @llvm.smax.i32(i32 %i.en, i32 -1)
  %i.ep = add nsw i32 %i.eo, 1                    ; 2 uses
  %i.eq = add nsw i32 %.071122, %i.u
  %i.er = call noundef i32 @llvm.smin.i32(i32 %i.w, i32 %i.eq) ; 2 uses
  %i.es = mul nsw i32 %i.er, %i.x                 ; 2 uses
  %i.et = mul nsw i32 %i.ep, %i.x                 ; 2 uses
  %i.eu = sub nsw i32 %i.er, %i.ep
  %i.ev = mul i32 %i.eu, 36
  %i.ew = mul nuw nsw i32 %.071122, 6             ; 6 uses
  %5 = or disjoint i32 %i.ew, 1
  %6 = add nuw nsw i32 %i.ew, 2
  %7 = add nuw nsw i32 %i.ew, 3
  %i.ex = add nuw nsw i32 %i.ew, 4
  %8 = add nuw nsw i32 %i.ew, 5
  br label %.lr.ph116

._crit_edge121.split:                             ; preds = %.lr.ph116
  %i.ey = add nuw nsw i32 %.071122, 1             ; 2 uses
  %exitcond133.not = icmp eq i32 %i.ey, %umax132
  br i1 %exitcond133.not, label %._crit_edge125.split, label %.lr.ph120, !llvm.loop !80

.lr.ph116:                                        ; preds = %.lr.ph120, %.lr.ph116
  %indvars.iv127 = phi i64 [ 0, %.lr.ph120 ], [ %indvars.iv.next122, %.lr.ph116 ] ; 18 uses
  %.070118 = phi i32 [ 0, %.lr.ph120 ], [ %187, %.lr.ph116 ] ; 3 uses
  %i.ez = sub nsw i32 %.070118, %i.u
  %i.fa = call i32 @llvm.smax.i32(i32 %i.ez, i32 -1)
  %i.fb = add nsw i32 %i.fa, 1                    ; 3 uses
  %i.fc = add nsw i32 %.070118, %i.u
  %i.fd = call noundef i32 @llvm.smin.i32(i32 %i.v, i32 %i.fc) ; 3 uses
  %i.fe = load ptr, ptr %i.aq, align 8, !tbaa !45 ; 4 uses
  %i.ff = add nsw i32 %i.fd, %i.es
  %i.fg = sext i32 %i.ff to i64
  %i.fh = getelementptr inbounds [4 x i8], ptr %i.fe, i64 %i.fg
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !60
  %i.fj = add nuw nsw i32 %i.fb, %i.et
  %i.fk = zext nneg i32 %i.fj to i64
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %i.fk
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !60
  %i.fn = add nsw i32 %i.fd, %i.et
  %i.fo = sext i32 %i.fn to i64
  %i.fp = getelementptr inbounds [4 x i8], ptr %i.fe, i64 %i.fo
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !60
  %i.fr = add nsw i32 %i.fb, %i.es
  %i.fs = sext i32 %i.fr to i64
  %i.ft = getelementptr inbounds [4 x i8], ptr %i.fe, i64 %i.fs
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !60
  %.neg110 = add i32 %i.fm, %i.fi
  %i.fv = add i32 %i.fq, %i.fu
  %i.fw = sub i32 %.neg110, %i.fv
  %i.fx = sub nsw i32 %i.fd, %i.fb
  %i.fy = mul i32 %i.ev, %i.fx
  %i.fz = sdiv i32 %i.fw, %i.fy                   ; 36 uses
  %indvars.iv.next124.4 = add nuw nsw i64 %indvars.iv127, 5 ; 12 uses
  %indvars.iv.next124.3 = add nuw nsw i64 %indvars.iv127, 4 ; 12 uses
  %indvars.iv.next124.2 = add nuw nsw i64 %indvars.iv127, 3 ; 12 uses
  %indvars.iv.next124.1 = add nuw nsw i64 %indvars.iv127, 2 ; 12 uses
  %indvars.iv.next124 = or disjoint i64 %indvars.iv127, 1 ; 12 uses
  %9 = load ptr, ptr %i.am, align 8, !tbaa !43
  %10 = load i32, ptr %i.i, align 4, !tbaa !32
  %11 = mul nsw i32 %10, %i.ew
  %12 = sext i32 %11 to i64                       ; 2 uses
  %13 = getelementptr inbounds [4 x i8], ptr %9, i64 %12 ; 6 uses
  %14 = getelementptr inbounds i8, ptr %i.dm, i64 %12 ; 6 uses
  %15 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %indvars.iv127
  %16 = load i32, ptr %15, align 4, !tbaa !60
  %17 = icmp slt i32 %16, %i.fz
  %spec.select = zext i1 %17 to i8
  %18 = getelementptr inbounds nuw i8, ptr %14, i64 %indvars.iv127
  store i8 %spec.select, ptr %18, align 1, !tbaa !62
  %19 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %indvars.iv.next124
  %20 = load i32, ptr %19, align 4, !tbaa !60
  %21 = icmp slt i32 %20, %i.fz
  %.sink133 = zext i1 %21 to i8
  %22 = getelementptr inbounds nuw i8, ptr %14, i64 %indvars.iv.next124
  store i8 %.sink133, ptr %22, align 1, !tbaa !62
  %23 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %indvars.iv.next124.1
  %24 = load i32, ptr %23, align 4, !tbaa !60
  %25 = icmp slt i32 %24, %i.fz
  %.sink134 = zext i1 %25 to i8
  %26 = getelementptr inbounds nuw i8, ptr %14, i64 %indvars.iv.next124.1
  store i8 %.sink134, ptr %26, align 1, !tbaa !62
  %27 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %indvars.iv.next124.2
  %28 = load i32, ptr %27, align 4, !tbaa !60
  %29 = icmp slt i32 %28, %i.fz
  %.sink135 = zext i1 %29 to i8
  %30 = getelementptr inbounds nuw i8, ptr %14, i64 %indvars.iv.next124.2
  store i8 %.sink135, ptr %30, align 1, !tbaa !62
  %31 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %indvars.iv.next124.3
  %32 = load i32, ptr %31, align 4, !tbaa !60
  %33 = icmp slt i32 %32, %i.fz
  %.sink136 = zext i1 %33 to i8
  %34 = getelementptr inbounds nuw i8, ptr %14, i64 %indvars.iv.next124.3
  store i8 %.sink136, ptr %34, align 1, !tbaa !62
  %35 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %indvars.iv.next124.4
  %36 = load i32, ptr %35, align 4, !tbaa !60
  %37 = icmp slt i32 %36, %i.fz
  %.sink137 = zext i1 %37 to i8
  %38 = getelementptr inbounds nuw i8, ptr %14, i64 %indvars.iv.next124.4
  store i8 %.sink137, ptr %38, align 1, !tbaa !62
  %39 = load ptr, ptr %i.am, align 8, !tbaa !43
  %40 = load i32, ptr %i.i, align 4, !tbaa !32
  %41 = mul nsw i32 %40, %5
  %42 = sext i32 %41 to i64                       ; 2 uses
  %43 = getelementptr inbounds [4 x i8], ptr %39, i64 %42 ; 6 uses
  %44 = getelementptr inbounds i8, ptr %i.dm, i64 %42 ; 6 uses
  %45 = getelementptr inbounds nuw [4 x i8], ptr %43, i64 %indvars.iv127
  %46 = load i32, ptr %45, align 4, !tbaa !60
  %47 = icmp slt i32 %46, %i.fz
  %spec.select.1 = zext i1 %47 to i8
  %48 = getelementptr inbounds nuw i8, ptr %44, i64 %indvars.iv127
  store i8 %spec.select.1, ptr %48, align 1, !tbaa !62
  %49 = getelementptr inbounds nuw [4 x i8], ptr %43, i64 %indvars.iv.next124
  %50 = load i32, ptr %49, align 4, !tbaa !60
  %51 = icmp slt i32 %50, %i.fz
  %.sink133.1 = zext i1 %51 to i8
  %52 = getelementptr inbounds nuw i8, ptr %44, i64 %indvars.iv.next124
  store i8 %.sink133.1, ptr %52, align 1, !tbaa !62
  %53 = getelementptr inbounds nuw [4 x i8], ptr %43, i64 %indvars.iv.next124.1
  %54 = load i32, ptr %53, align 4, !tbaa !60
  %55 = icmp slt i32 %54, %i.fz
  %.sink134.1 = zext i1 %55 to i8
  %56 = getelementptr inbounds nuw i8, ptr %44, i64 %indvars.iv.next124.1
  store i8 %.sink134.1, ptr %56, align 1, !tbaa !62
  %57 = getelementptr inbounds nuw [4 x i8], ptr %43, i64 %indvars.iv.next124.2
  %58 = load i32, ptr %57, align 4, !tbaa !60
  %59 = icmp slt i32 %58, %i.fz
  %.sink135.1 = zext i1 %59 to i8
  %60 = getelementptr inbounds nuw i8, ptr %44, i64 %indvars.iv.next124.2
  store i8 %.sink135.1, ptr %60, align 1, !tbaa !62
  %61 = getelementptr inbounds nuw [4 x i8], ptr %43, i64 %indvars.iv.next124.3
  %62 = load i32, ptr %61, align 4, !tbaa !60
  %63 = icmp slt i32 %62, %i.fz
  %.sink136.1 = zext i1 %63 to i8
  %64 = getelementptr inbounds nuw i8, ptr %44, i64 %indvars.iv.next124.3
  store i8 %.sink136.1, ptr %64, align 1, !tbaa !62
  %65 = getelementptr inbounds nuw [4 x i8], ptr %43, i64 %indvars.iv.next124.4
  %66 = load i32, ptr %65, align 4, !tbaa !60
  %67 = icmp slt i32 %66, %i.fz
  %.sink137.1 = zext i1 %67 to i8
  %68 = getelementptr inbounds nuw i8, ptr %44, i64 %indvars.iv.next124.4
  store i8 %.sink137.1, ptr %68, align 1, !tbaa !62
  %69 = load ptr, ptr %i.am, align 8, !tbaa !43
  %70 = load i32, ptr %i.i, align 4, !tbaa !32
  %71 = mul nsw i32 %70, %6
  %72 = sext i32 %71 to i64                       ; 2 uses
  %73 = getelementptr inbounds [4 x i8], ptr %69, i64 %72 ; 6 uses
  %74 = getelementptr inbounds i8, ptr %i.dm, i64 %72 ; 6 uses
  %75 = getelementptr inbounds nuw [4 x i8], ptr %73, i64 %indvars.iv127
  %76 = load i32, ptr %75, align 4, !tbaa !60
  %77 = icmp slt i32 %76, %i.fz
  %spec.select.2 = zext i1 %77 to i8
  %78 = getelementptr inbounds nuw i8, ptr %74, i64 %indvars.iv127
  store i8 %spec.select.2, ptr %78, align 1, !tbaa !62
  %79 = getelementptr inbounds nuw [4 x i8], ptr %73, i64 %indvars.iv.next124
  %80 = load i32, ptr %79, align 4, !tbaa !60
  %81 = icmp slt i32 %80, %i.fz
  %.sink133.2 = zext i1 %81 to i8
  %82 = getelementptr inbounds nuw i8, ptr %74, i64 %indvars.iv.next124
  store i8 %.sink133.2, ptr %82, align 1, !tbaa !62
  %83 = getelementptr inbounds nuw [4 x i8], ptr %73, i64 %indvars.iv.next124.1
  %84 = load i32, ptr %83, align 4, !tbaa !60
  %85 = icmp slt i32 %84, %i.fz
  %.sink134.2 = zext i1 %85 to i8
  %86 = getelementptr inbounds nuw i8, ptr %74, i64 %indvars.iv.next124.1
  store i8 %.sink134.2, ptr %86, align 1, !tbaa !62
  %87 = getelementptr inbounds nuw [4 x i8], ptr %73, i64 %indvars.iv.next124.2
  %88 = load i32, ptr %87, align 4, !tbaa !60
  %89 = icmp slt i32 %88, %i.fz
  %.sink135.2 = zext i1 %89 to i8
  %90 = getelementptr inbounds nuw i8, ptr %74, i64 %indvars.iv.next124.2
  store i8 %.sink135.2, ptr %90, align 1, !tbaa !62
  %91 = getelementptr inbounds nuw [4 x i8], ptr %73, i64 %indvars.iv.next124.3
  %92 = load i32, ptr %91, align 4, !tbaa !60
  %93 = icmp slt i32 %92, %i.fz
  %.sink136.2 = zext i1 %93 to i8
  %94 = getelementptr inbounds nuw i8, ptr %74, i64 %indvars.iv.next124.3
  store i8 %.sink136.2, ptr %94, align 1, !tbaa !62
  %95 = getelementptr inbounds nuw [4 x i8], ptr %73, i64 %indvars.iv.next124.4
  %96 = load i32, ptr %95, align 4, !tbaa !60
  %97 = icmp slt i32 %96, %i.fz
  %.sink137.2 = zext i1 %97 to i8
  %98 = getelementptr inbounds nuw i8, ptr %74, i64 %indvars.iv.next124.4
  store i8 %.sink137.2, ptr %98, align 1, !tbaa !62
  %99 = load ptr, ptr %i.am, align 8, !tbaa !43
  %100 = load i32, ptr %i.i, align 4, !tbaa !32
  %101 = mul nsw i32 %100, %7
  %102 = sext i32 %101 to i64                     ; 2 uses
  %103 = getelementptr inbounds [4 x i8], ptr %99, i64 %102 ; 6 uses
  %104 = getelementptr inbounds i8, ptr %i.dm, i64 %102 ; 6 uses
  %105 = getelementptr inbounds nuw [4 x i8], ptr %103, i64 %indvars.iv127
  %106 = load i32, ptr %105, align 4, !tbaa !60
  %107 = icmp slt i32 %106, %i.fz
  %spec.select.3 = zext i1 %107 to i8
  %108 = getelementptr inbounds nuw i8, ptr %104, i64 %indvars.iv127
  store i8 %spec.select.3, ptr %108, align 1, !tbaa !62
  %109 = getelementptr inbounds nuw [4 x i8], ptr %103, i64 %indvars.iv.next124
  %110 = load i32, ptr %109, align 4, !tbaa !60
  %111 = icmp slt i32 %110, %i.fz
  %.sink133.3 = zext i1 %111 to i8
  %112 = getelementptr inbounds nuw i8, ptr %104, i64 %indvars.iv.next124
  store i8 %.sink133.3, ptr %112, align 1, !tbaa !62
  %113 = getelementptr inbounds nuw [4 x i8], ptr %103, i64 %indvars.iv.next124.1
  %114 = load i32, ptr %113, align 4, !tbaa !60
  %115 = icmp slt i32 %114, %i.fz
  %.sink134.3 = zext i1 %115 to i8
  %116 = getelementptr inbounds nuw i8, ptr %104, i64 %indvars.iv.next124.1
  store i8 %.sink134.3, ptr %116, align 1, !tbaa !62
  %117 = getelementptr inbounds nuw [4 x i8], ptr %103, i64 %indvars.iv.next124.2
  %118 = load i32, ptr %117, align 4, !tbaa !60
  %119 = icmp slt i32 %118, %i.fz
  %.sink135.3 = zext i1 %119 to i8
  %120 = getelementptr inbounds nuw i8, ptr %104, i64 %indvars.iv.next124.2
  store i8 %.sink135.3, ptr %120, align 1, !tbaa !62
  %121 = getelementptr inbounds nuw [4 x i8], ptr %103, i64 %indvars.iv.next124.3
  %122 = load i32, ptr %121, align 4, !tbaa !60
  %123 = icmp slt i32 %122, %i.fz
  %.sink136.3 = zext i1 %123 to i8
  %124 = getelementptr inbounds nuw i8, ptr %104, i64 %indvars.iv.next124.3
  store i8 %.sink136.3, ptr %124, align 1, !tbaa !62
  %125 = getelementptr inbounds nuw [4 x i8], ptr %103, i64 %indvars.iv.next124.4
  %126 = load i32, ptr %125, align 4, !tbaa !60
  %127 = icmp slt i32 %126, %i.fz
  %.sink137.3 = zext i1 %127 to i8
  %128 = getelementptr inbounds nuw i8, ptr %104, i64 %indvars.iv.next124.4
  store i8 %.sink137.3, ptr %128, align 1, !tbaa !62
  %129 = load ptr, ptr %i.am, align 8, !tbaa !43
  %130 = load i32, ptr %i.i, align 4, !tbaa !32
  %131 = mul nsw i32 %130, %i.ex
  %132 = sext i32 %131 to i64                     ; 2 uses
  %133 = getelementptr inbounds [4 x i8], ptr %129, i64 %132 ; 6 uses
  %134 = getelementptr inbounds i8, ptr %i.dm, i64 %132 ; 6 uses
  %135 = getelementptr inbounds nuw [4 x i8], ptr %133, i64 %indvars.iv127
  %136 = load i32, ptr %135, align 4, !tbaa !60
  %137 = icmp slt i32 %136, %i.fz
  %spec.select.4 = zext i1 %137 to i8
  %138 = getelementptr inbounds nuw i8, ptr %134, i64 %indvars.iv127
  store i8 %spec.select.4, ptr %138, align 1, !tbaa !62
  %139 = getelementptr inbounds nuw [4 x i8], ptr %133, i64 %indvars.iv.next124
  %140 = load i32, ptr %139, align 4, !tbaa !60
  %141 = icmp slt i32 %140, %i.fz
  %.sink133.4 = zext i1 %141 to i8
  %142 = getelementptr inbounds nuw i8, ptr %134, i64 %indvars.iv.next124
  store i8 %.sink133.4, ptr %142, align 1, !tbaa !62
  %143 = getelementptr inbounds nuw [4 x i8], ptr %133, i64 %indvars.iv.next124.1
  %144 = load i32, ptr %143, align 4, !tbaa !60
  %145 = icmp slt i32 %144, %i.fz
  %.sink134.4 = zext i1 %145 to i8
  %146 = getelementptr inbounds nuw i8, ptr %134, i64 %indvars.iv.next124.1
  store i8 %.sink134.4, ptr %146, align 1, !tbaa !62
  %147 = getelementptr inbounds nuw [4 x i8], ptr %133, i64 %indvars.iv.next124.2
  %148 = load i32, ptr %147, align 4, !tbaa !60
  %149 = icmp slt i32 %148, %i.fz
  %.sink135.4 = zext i1 %149 to i8
  %150 = getelementptr inbounds nuw i8, ptr %134, i64 %indvars.iv.next124.2
  store i8 %.sink135.4, ptr %150, align 1, !tbaa !62
  %151 = getelementptr inbounds nuw [4 x i8], ptr %133, i64 %indvars.iv.next124.3
  %152 = load i32, ptr %151, align 4, !tbaa !60
  %153 = icmp slt i32 %152, %i.fz
  %.sink136.4 = zext i1 %153 to i8
  %154 = getelementptr inbounds nuw i8, ptr %134, i64 %indvars.iv.next124.3
  store i8 %.sink136.4, ptr %154, align 1, !tbaa !62
  %155 = getelementptr inbounds nuw [4 x i8], ptr %133, i64 %indvars.iv.next124.4
  %156 = load i32, ptr %155, align 4, !tbaa !60
  %157 = icmp slt i32 %156, %i.fz
  %.sink137.4 = zext i1 %157 to i8
  %158 = getelementptr inbounds nuw i8, ptr %134, i64 %indvars.iv.next124.4
  store i8 %.sink137.4, ptr %158, align 1, !tbaa !62
  %159 = load ptr, ptr %i.am, align 8, !tbaa !43
  %160 = load i32, ptr %i.i, align 4, !tbaa !32
  %i.ga = mul nsw i32 %160, %8
  %161 = sext i32 %i.ga to i64                    ; 2 uses
  %162 = getelementptr inbounds [4 x i8], ptr %159, i64 %161 ; 6 uses
  %163 = getelementptr inbounds i8, ptr %i.dm, i64 %161 ; 6 uses
  %164 = getelementptr inbounds nuw [4 x i8], ptr %162, i64 %indvars.iv127
  %165 = load i32, ptr %164, align 4, !tbaa !60
  %166 = icmp slt i32 %165, %i.fz
  %spec.select.5 = zext i1 %166 to i8
  %167 = getelementptr inbounds nuw i8, ptr %163, i64 %indvars.iv127
  store i8 %spec.select.5, ptr %167, align 1, !tbaa !62
  %168 = getelementptr inbounds nuw [4 x i8], ptr %162, i64 %indvars.iv.next124
  %169 = load i32, ptr %168, align 4, !tbaa !60
  %170 = icmp slt i32 %169, %i.fz
  %.sink133.5 = zext i1 %170 to i8
  %171 = getelementptr inbounds nuw i8, ptr %163, i64 %indvars.iv.next124
  store i8 %.sink133.5, ptr %171, align 1, !tbaa !62
  %172 = getelementptr inbounds nuw [4 x i8], ptr %162, i64 %indvars.iv.next124.1
  %173 = load i32, ptr %172, align 4, !tbaa !60
  %174 = icmp slt i32 %173, %i.fz
  %.sink134.5 = zext i1 %174 to i8
  %175 = getelementptr inbounds nuw i8, ptr %163, i64 %indvars.iv.next124.1
  store i8 %.sink134.5, ptr %175, align 1, !tbaa !62
  %176 = getelementptr inbounds nuw [4 x i8], ptr %162, i64 %indvars.iv.next124.2
  %177 = load i32, ptr %176, align 4, !tbaa !60
  %178 = icmp slt i32 %177, %i.fz
  %.sink135.5 = zext i1 %178 to i8
  %179 = getelementptr inbounds nuw i8, ptr %163, i64 %indvars.iv.next124.2
  store i8 %.sink135.5, ptr %179, align 1, !tbaa !62
  %180 = getelementptr inbounds nuw [4 x i8], ptr %162, i64 %indvars.iv.next124.3
  %181 = load i32, ptr %180, align 4, !tbaa !60
  %182 = icmp slt i32 %181, %i.fz
  %.sink136.5 = zext i1 %182 to i8
  %183 = getelementptr inbounds nuw i8, ptr %163, i64 %indvars.iv.next124.3
  store i8 %.sink136.5, ptr %183, align 1, !tbaa !62
  %184 = getelementptr inbounds nuw [4 x i8], ptr %162, i64 %indvars.iv.next124.4
  %185 = load i32, ptr %184, align 4, !tbaa !60
  %i.gb = icmp slt i32 %185, %i.fz
  %.sink137.5 = zext i1 %i.gb to i8
  %186 = getelementptr inbounds nuw i8, ptr %163, i64 %indvars.iv.next124.4
  store i8 %.sink137.5, ptr %186, align 1, !tbaa !62
  %187 = add nuw nsw i32 %.070118, 1              ; 2 uses
  %indvars.iv.next122 = add nuw nsw i64 %indvars.iv127, 6
  %exitcond130.not = icmp eq i32 %187, %umax
  br i1 %exitcond130.not, label %._crit_edge121.split, label %.lr.ph116, !llvm.loop !81

bb.t:                                             ; preds = %bb.m
  store i32 -559026175, ptr %i.cw, align 8, !tbaa !25
  %i.gc = load ptr, ptr %i.ck, align 8, !tbaa !27
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.ge = load ptr, ptr %i.gd, align 8
  call void %i.ge(ptr noundef nonnull align 8 dereferenceable(12) %i.ck) #12, !inline_history !2
  br label %_ZN5zxing3RefINS_9BitMatrixEED2Ev.exit91

_ZN5zxing3RefINS_9BitMatrixEED2Ev.exit91:         ; preds = %bb.k, %bb.l, %bb.m, %bb.t
  %.pn86 = phi { ptr, i32 } [ %i.df, %bb.t ], [ %i.de, %bb.l ], [ %i.dd, %bb.k ], [ %i.df, %bb.m ]
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5zxing8ArrayRefIcEE, i64 16), ptr %3, align 8, !tbaa !27
  %i.gf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !50 ; 4 uses
  %.not.i92 = icmp eq ptr %i.gg, null
  br i1 %.not.i92, label %_ZN5zxing8ArrayRefIcED2Ev.exit93, label %bb.u

bb.u:                                             ; preds = %_ZN5zxing3RefINS_9BitMatrixEED2Ev.exit91
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 8 ; 3 uses
  %i.gi = load i32, ptr %i.gh, align 8, !tbaa !25
  %i.gj = add i32 %i.gi, -1                       ; 2 uses
  store i32 %i.gj, ptr %i.gh, align 8, !tbaa !25
  %i.gk = icmp eq i32 %i.gj, 0
  br i1 %i.gk, label %bb.v, label %_ZN5zxing8ArrayRefIcED2Ev.exit93

bb.v:                                             ; preds = %bb.u
  store i32 -559026175, ptr %i.gh, align 8, !tbaa !25
  %i.gl = load ptr, ptr %i.gg, align 8, !tbaa !27
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.gn = load ptr, ptr %i.gm, align 8
  call void %i.gn(ptr noundef nonnull align 8 dereferenceable(12) %i.gg) #12, !inline_history !3
  br label %_ZN5zxing8ArrayRefIcED2Ev.exit93

_ZN5zxing8ArrayRefIcED2Ev.exit93:                 ; preds = %_ZN5zxing3RefINS_9BitMatrixEED2Ev.exit91, %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  resume { ptr, i32 } %.pn86

bb.w:                                             ; preds = %bb.d, %_ZN5zxing3RefINS_15LuminanceSourceEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @_ZN5zxing24GlobalHistogramBinarizer14getBlackMatrixERNS_12ErrorHandlerE(ptr dead_on_unwind nonnull writable sret(%"class.zxing::Ref.0") align 8 %4, ptr noundef nonnull align 8 dereferenceable(121) %0, ptr noundef nonnull align 8 dereferenceable(48) %1)
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.gp = load ptr, ptr %4, align 8, !tbaa !49    ; 5 uses
  %.not.i.i94 = icmp eq ptr %i.gp, null
  br i1 %.not.i.i94, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8 ; 2 uses
  %i.gr = load i32, ptr %i.gq, align 8, !tbaa !25
  %i.gs = add i32 %i.gr, 1
  store i32 %i.gs, ptr %i.gq, align 8, !tbaa !25
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.gt = load ptr, ptr %i.go, align 8, !tbaa !49 ; 4 uses
  %.not5.i.i95 = icmp eq ptr %i.gt, null
  br i1 %.not5.i.i95, label %_ZN5zxing3RefINS_9BitMatrixEEaSERKS2_.exit96, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 8 ; 3 uses
  %i.gv = load i32, ptr %i.gu, align 8, !tbaa !25
  %i.gw = add i32 %i.gv, -1                       ; 2 uses
  store i32 %i.gw, ptr %i.gu, align 8, !tbaa !25
  %i.gx = icmp eq i32 %i.gw, 0
  br i1 %i.gx, label %bb.aa, label %_ZN5zxing3RefINS_9BitMatrixEEaSERKS2_.exit96

bb.aa:                                            ; preds = %bb.z
  store i32 -559026175, ptr %i.gu, align 8, !tbaa !25
  %i.gy = load ptr, ptr %i.gt, align 8, !tbaa !27
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  %i.ha = load ptr, ptr %i.gz, align 8
  call void %i.ha(ptr noundef nonnull align 8 dereferenceable(12) %i.gt) #12, !inline_history !4
  %.pre = load ptr, ptr %4, align 8, !tbaa !49
  br label %_ZN5zxing3RefINS_9BitMatrixEEaSERKS2_.exit96

_ZN5zxing3RefINS_9BitMatrixEEaSERKS2_.exit96:     ; preds = %bb.y, %bb.z, %bb.aa
  %i.hb = phi ptr [ %i.gp, %bb.y ], [ %i.gp, %bb.z ], [ %.pre, %bb.aa ] ; 4 uses
  store ptr %i.gp, ptr %i.go, align 8, !tbaa !49
  %.not.i97 = icmp eq ptr %i.hb, null
  br i1 %.not.i97, label %_ZN5zxing3RefINS_9BitMatrixEED2Ev.exit98, label %bb.ab

bb.ab:                                            ; preds = %_ZN5zxing3RefINS_9BitMatrixEEaSERKS2_.exit96
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8 ; 3 uses
  %i.hd = load i32, ptr %i.hc, align 8, !tbaa !25
  %i.he = add i32 %i.hd, -1                       ; 2 uses
  store i32 %i.he, ptr %i.hc, align 8, !tbaa !25
  %i.hf = icmp eq i32 %i.he, 0
  br i1 %i.hf, label %bb.ac, label %_ZN5zxing3RefINS_9BitMatrixEED2Ev.exit98

bb.ac:                                            ; preds = %bb.ab
  store i32 -559026175, ptr %i.hc, align 8, !tbaa !25
  %i.hg = load ptr, ptr %i.hb, align 8, !tbaa !27
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  %i.hi = load ptr, ptr %i.hh, align 8
  call void %i.hi(ptr noundef nonnull align 8 dereferenceable(12) %i.hb) #12, !inline_history !2
  br label %_ZN5zxing3RefINS_9BitMatrixEED2Ev.exit98

_ZN5zxing3RefINS_9BitMatrixEED2Ev.exit98:         ; preds = %_ZN5zxing3RefINS_9BitMatrixEEaSERKS2_.exit96, %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.ag

.critedge:                                        ; preds = %bb.j
  %i.hj = load i32, ptr %i.cw, align 8, !tbaa !25
  %i.hk = add i32 %i.hj, -1                       ; 2 uses
  store i32 %i.hk, ptr %i.cw, align 8, !tbaa !25
  %i.hl = icmp eq i32 %i.hk, 0
  br i1 %i.hl, label %bb.ad, label %_ZN5zxing3RefINS_9BitMatrixEED2Ev.exit100

bb.ad:                                            ; preds = %.critedge
  store i32 -559026175, ptr %i.cw, align 8, !tbaa !25
  %i.hm = load ptr, ptr %i.ck, align 8, !tbaa !27
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %i.ho = load ptr, ptr %i.hn, align 8
  call void %i.ho(ptr noundef nonnull align 8 dereferenceable(12) %i.ck) #12, !inline_history !2
  br label %_ZN5zxing3RefINS_9BitMatrixEED2Ev.exit100

_ZN5zxing3RefINS_9BitMatrixEED2Ev.exit100:        ; preds = %.critedge, %bb.ad
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5zxing8ArrayRefIcEE, i64 16), ptr %3, align 8, !tbaa !27
  %i.hp = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !50 ; 4 uses
  %.not.i101 = icmp eq ptr %i.hq, null
  br i1 %.not.i101, label %_ZN5zxing8ArrayRefIcED2Ev.exit102, label %bb.ae

bb.ae:                                            ; preds = %_ZN5zxing3RefINS_9BitMatrixEED2Ev.exit100
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 8 ; 3 uses
  %i.hs = load i32, ptr %i.hr, align 8, !tbaa !25
  %i.ht = add i32 %i.hs, -1                       ; 2 uses
  store i32 %i.ht, ptr %i.hr, align 8, !tbaa !25
  %i.hu = icmp eq i32 %i.ht, 0
  br i1 %i.hu, label %bb.af, label %_ZN5zxing8ArrayRefIcED2Ev.exit102

bb.af:                                            ; preds = %bb.ae
  store i32 -559026175, ptr %i.hr, align 8, !tbaa !25
  %i.hv = load ptr, ptr %i.hq, align 8, !tbaa !27
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %i.hx = load ptr, ptr %i.hw, align 8
  call void %i.hx(ptr noundef nonnull align 8 dereferenceable(12) %i.hq) #12, !inline_history !3
  br label %_ZN5zxing8ArrayRefIcED2Ev.exit102

_ZN5zxing8ArrayRefIcED2Ev.exit102:                ; preds = %_ZN5zxing3RefINS_9BitMatrixEED2Ev.exit100, %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN5zxing3RefINS_9BitMatrixEED2Ev.exit98, %_ZN5zxing8ArrayRefIcED2Ev.exit, %_ZN5zxing8ArrayRefIcED2Ev.exit102
  %.179 = phi i32 [ -1, %_ZN5zxing8ArrayRefIcED2Ev.exit102 ], [ 0, %_ZN5zxing8ArrayRefIcED2Ev.exit ], [ 0, %_ZN5zxing3RefINS_9BitMatrixEED2Ev.exit98 ]
  ret i32 %.179
}

declare void @_ZN5zxing9Binarizer17getInvertedMatrixERNS_12ErrorHandlerE(ptr dead_on_unwind writable sret(%"class.zxing::Ref.0") align 8, ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5zxing8ArrayRefIcED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5zxing8ArrayRefIcEE, i64 16), ptr %0, align 8, !tbaa !27
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 4 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN5zxing8ArrayRefIcED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !25
  %i.e = add i32 %i.d, -1                         ; 2 uses
  store i32 %i.e, ptr %i.c, align 8, !tbaa !25
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %_ZN5zxing8ArrayRefIcED2Ev.exit

bb.c:                                             ; preds = %bb.b
  store i32 -559026175, ptr %i.c, align 8, !tbaa !25
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(12) %i.b) #12, !inline_history !3
  br label %_ZN5zxing8ArrayRefIcED2Ev.exit

_ZN5zxing8ArrayRefIcED2Ev.exit:                   ; preds = %bb.a, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #14
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
end_hunk_0
