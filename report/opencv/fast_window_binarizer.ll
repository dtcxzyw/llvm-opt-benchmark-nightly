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
  %.071122 = phi i32 [ %i.ey, %._crit_edge121.split ], [ 0, %.lr.ph120.preheader ] ; 4 uses
  %i.en = sub nsw i32 %.071122, %i.u
  %i.eo = call i32 @llvm.smax.i32(i32 %i.en, i32 -1)
  %i.ep = add nsw i32 %i.eo, 1                    ; 2 uses
  %i.eq = add nsw i32 %.071122, %i.u
  %i.er = call noundef i32 @llvm.smin.i32(i32 %i.w, i32 %i.eq) ; 2 uses
  %i.es = mul nsw i32 %i.er, %i.x                 ; 2 uses
  %i.et = mul nsw i32 %i.ep, %i.x                 ; 2 uses
  %i.eu = sub nsw i32 %i.er, %i.ep
  %i.ev = mul i32 %i.eu, 36
  %i.ew = mul nuw i32 %.071122, 6                 ; 8 uses
  %i.ex = add nuw i32 %i.ew, 6
  %5 = icmp slt i32 %i.ew, 2147483642
  br i1 %5, label %.lr.ph116.preheader, label %._crit_edge121.split

.lr.ph116.preheader:                              ; preds = %.lr.ph120
  %6 = or disjoint i32 %i.ew, 1                   ; 2 uses
  %7 = icmp slt i32 %6, %i.ex
  %8 = add nuw nsw i32 %i.ew, 2
  %9 = add nuw nsw i32 %i.ew, 3
  %10 = add nuw nsw i32 %i.ew, 4
  %11 = add nuw nsw i32 %i.ew, 5
  br label %.lr.ph116

._crit_edge121.split:                             ; preds = %._crit_edge117.split, %.lr.ph120
  %i.ey = add nuw nsw i32 %.071122, 1             ; 2 uses
  %exitcond133.not = icmp eq i32 %i.ey, %umax132
  br i1 %exitcond133.not, label %._crit_edge125.split, label %.lr.ph120, !llvm.loop !80

.lr.ph116:                                        ; preds = %.lr.ph116.preheader, %._crit_edge117.split
  %indvars.iv127 = phi i64 [ %indvars.iv.next128, %._crit_edge117.split ], [ 0, %.lr.ph116.preheader ] ; 18 uses
  %.070118 = phi i32 [ %25, %._crit_edge117.split ], [ 0, %.lr.ph116.preheader ] ; 4 uses
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
  %i.ga = mul nuw i32 %.070118, 6                 ; 2 uses
  %i.gb = icmp slt i32 %i.ga, 2147483642
  br i1 %i.gb, label %.lr.ph113.preheader, label %._crit_edge117.split

.lr.ph113.preheader:                              ; preds = %.lr.ph116
  %12 = add nuw i32 %i.ga, 6
  %indvars.iv.next130 = or disjoint i64 %indvars.iv127, 1 ; 13 uses
  %13 = trunc nuw i64 %indvars.iv.next130 to i32
  %14 = icmp sgt i32 %12, %13                     ; 6 uses
  %indvars.iv.next130.1 = add nuw nsw i64 %indvars.iv127, 2 ; 12 uses
  %indvars.iv.next130.2 = add nuw nsw i64 %indvars.iv127, 3 ; 12 uses
  %indvars.iv.next130.3 = add nuw nsw i64 %indvars.iv127, 4 ; 12 uses
  %indvars.iv.next130.4 = add nuw nsw i64 %indvars.iv127, 5 ; 12 uses
  %15 = load ptr, ptr %i.am, align 8, !tbaa !43
  %16 = load i32, ptr %i.i, align 4, !tbaa !32
  %17 = mul nsw i32 %16, %i.ew
  %18 = sext i32 %17 to i64                       ; 2 uses
  %19 = getelementptr inbounds [4 x i8], ptr %15, i64 %18 ; 6 uses
  %20 = getelementptr inbounds i8, ptr %i.dm, i64 %18 ; 6 uses
  %21 = getelementptr inbounds nuw [4 x i8], ptr %19, i64 %indvars.iv127
  %22 = load i32, ptr %21, align 4, !tbaa !60
  %23 = icmp slt i32 %22, %i.fz
  %spec.select = zext i1 %23 to i8
  %24 = getelementptr inbounds nuw i8, ptr %20, i64 %indvars.iv127
  store i8 %spec.select, ptr %24, align 1, !tbaa !62
  br i1 %14, label %181, label %._crit_edge

._crit_edge117.split:                             ; preds = %._crit_edge.4, %160, %._crit_edge, %.lr.ph116
  %25 = add nuw nsw i32 %.070118, 1               ; 2 uses
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 6
  %exitcond.not = icmp eq i32 %25, %umax
  br i1 %exitcond.not, label %._crit_edge121.split, label %.lr.ph116, !llvm.loop !81

._crit_edge:                                      ; preds = %181, %.lr.ph113.preheader
  br i1 %7, label %.lr.ph113.1, label %._crit_edge117.split

.lr.ph113.1:                                      ; preds = %._crit_edge
  %26 = load ptr, ptr %i.am, align 8, !tbaa !43
  %27 = load i32, ptr %i.i, align 4, !tbaa !32
  %28 = mul nsw i32 %27, %6
  %29 = sext i32 %28 to i64                       ; 2 uses
  %30 = getelementptr inbounds [4 x i8], ptr %26, i64 %29 ; 6 uses
  %31 = getelementptr inbounds i8, ptr %i.dm, i64 %29 ; 6 uses
  %32 = getelementptr inbounds nuw [4 x i8], ptr %30, i64 %indvars.iv127
  %33 = load i32, ptr %32, align 4, !tbaa !60
  %34 = icmp slt i32 %33, %i.fz
  %spec.select.1 = zext i1 %34 to i8
  %35 = getelementptr inbounds nuw i8, ptr %31, i64 %indvars.iv127
  store i8 %spec.select.1, ptr %35, align 1, !tbaa !62
  br i1 %14, label %36, label %._crit_edge.1

36:                                               ; preds = %.lr.ph113.1
  %37 = getelementptr inbounds nuw [4 x i8], ptr %30, i64 %indvars.iv.next130
  %38 = load i32, ptr %37, align 4, !tbaa !60
  %39 = icmp slt i32 %38, %i.fz
  %spec.select153.1 = zext i1 %39 to i8
  %40 = getelementptr inbounds nuw i8, ptr %31, i64 %indvars.iv.next130
  store i8 %spec.select153.1, ptr %40, align 1, !tbaa !62
  %41 = getelementptr inbounds nuw [4 x i8], ptr %30, i64 %indvars.iv.next130.1
  %42 = load i32, ptr %41, align 4, !tbaa !60
  %43 = icmp slt i32 %42, %i.fz
  %.sink135.1 = zext i1 %43 to i8
  %44 = getelementptr inbounds nuw i8, ptr %31, i64 %indvars.iv.next130.1
  store i8 %.sink135.1, ptr %44, align 1, !tbaa !62
  %45 = getelementptr inbounds nuw [4 x i8], ptr %30, i64 %indvars.iv.next130.2
  %46 = load i32, ptr %45, align 4, !tbaa !60
  %47 = icmp slt i32 %46, %i.fz
  %.sink136.1 = zext i1 %47 to i8
  %48 = getelementptr inbounds nuw i8, ptr %31, i64 %indvars.iv.next130.2
  store i8 %.sink136.1, ptr %48, align 1, !tbaa !62
  %49 = getelementptr inbounds nuw [4 x i8], ptr %30, i64 %indvars.iv.next130.3
  %50 = load i32, ptr %49, align 4, !tbaa !60
  %51 = icmp slt i32 %50, %i.fz
  %.sink137.1 = zext i1 %51 to i8
  %52 = getelementptr inbounds nuw i8, ptr %31, i64 %indvars.iv.next130.3
  store i8 %.sink137.1, ptr %52, align 1, !tbaa !62
  %53 = getelementptr inbounds nuw [4 x i8], ptr %30, i64 %indvars.iv.next130.4
  %54 = load i32, ptr %53, align 4, !tbaa !60
  %55 = icmp slt i32 %54, %i.fz
  %.sink138.1 = zext i1 %55 to i8
  %56 = getelementptr inbounds nuw i8, ptr %31, i64 %indvars.iv.next130.4
  store i8 %.sink138.1, ptr %56, align 1, !tbaa !62
  br label %._crit_edge.1

._crit_edge.1:                                    ; preds = %36, %.lr.ph113.1
  %57 = load ptr, ptr %i.am, align 8, !tbaa !43
  %58 = load i32, ptr %i.i, align 4, !tbaa !32
  %59 = mul nsw i32 %58, %8
  %60 = sext i32 %59 to i64                       ; 2 uses
  %61 = getelementptr inbounds [4 x i8], ptr %57, i64 %60 ; 6 uses
  %62 = getelementptr inbounds i8, ptr %i.dm, i64 %60 ; 6 uses
  %63 = getelementptr inbounds nuw [4 x i8], ptr %61, i64 %indvars.iv127
  %64 = load i32, ptr %63, align 4, !tbaa !60
  %65 = icmp slt i32 %64, %i.fz
  %spec.select.2 = zext i1 %65 to i8
  %66 = getelementptr inbounds nuw i8, ptr %62, i64 %indvars.iv127
  store i8 %spec.select.2, ptr %66, align 1, !tbaa !62
  br i1 %14, label %67, label %._crit_edge.2

67:                                               ; preds = %._crit_edge.1
  %68 = getelementptr inbounds nuw [4 x i8], ptr %61, i64 %indvars.iv.next130
  %69 = load i32, ptr %68, align 4, !tbaa !60
  %70 = icmp slt i32 %69, %i.fz
  %spec.select153.2 = zext i1 %70 to i8
  %71 = getelementptr inbounds nuw i8, ptr %62, i64 %indvars.iv.next130
  store i8 %spec.select153.2, ptr %71, align 1, !tbaa !62
  %72 = getelementptr inbounds nuw [4 x i8], ptr %61, i64 %indvars.iv.next130.1
  %73 = load i32, ptr %72, align 4, !tbaa !60
  %74 = icmp slt i32 %73, %i.fz
  %.sink135.2 = zext i1 %74 to i8
  %75 = getelementptr inbounds nuw i8, ptr %62, i64 %indvars.iv.next130.1
  store i8 %.sink135.2, ptr %75, align 1, !tbaa !62
  %76 = getelementptr inbounds nuw [4 x i8], ptr %61, i64 %indvars.iv.next130.2
  %77 = load i32, ptr %76, align 4, !tbaa !60
  %78 = icmp slt i32 %77, %i.fz
  %.sink136.2 = zext i1 %78 to i8
  %79 = getelementptr inbounds nuw i8, ptr %62, i64 %indvars.iv.next130.2
  store i8 %.sink136.2, ptr %79, align 1, !tbaa !62
  %80 = getelementptr inbounds nuw [4 x i8], ptr %61, i64 %indvars.iv.next130.3
  %81 = load i32, ptr %80, align 4, !tbaa !60
  %82 = icmp slt i32 %81, %i.fz
  %.sink137.2 = zext i1 %82 to i8
  %83 = getelementptr inbounds nuw i8, ptr %62, i64 %indvars.iv.next130.3
  store i8 %.sink137.2, ptr %83, align 1, !tbaa !62
  %84 = getelementptr inbounds nuw [4 x i8], ptr %61, i64 %indvars.iv.next130.4
  %85 = load i32, ptr %84, align 4, !tbaa !60
  %86 = icmp slt i32 %85, %i.fz
  %.sink138.2 = zext i1 %86 to i8
  %87 = getelementptr inbounds nuw i8, ptr %62, i64 %indvars.iv.next130.4
  store i8 %.sink138.2, ptr %87, align 1, !tbaa !62
  br label %._crit_edge.2

._crit_edge.2:                                    ; preds = %67, %._crit_edge.1
  %88 = load ptr, ptr %i.am, align 8, !tbaa !43
  %89 = load i32, ptr %i.i, align 4, !tbaa !32
  %90 = mul nsw i32 %89, %9
  %91 = sext i32 %90 to i64                       ; 2 uses
  %92 = getelementptr inbounds [4 x i8], ptr %88, i64 %91 ; 6 uses
  %93 = getelementptr inbounds i8, ptr %i.dm, i64 %91 ; 6 uses
  %94 = getelementptr inbounds nuw [4 x i8], ptr %92, i64 %indvars.iv127
  %95 = load i32, ptr %94, align 4, !tbaa !60
  %96 = icmp slt i32 %95, %i.fz
  %spec.select.3 = zext i1 %96 to i8
  %97 = getelementptr inbounds nuw i8, ptr %93, i64 %indvars.iv127
  store i8 %spec.select.3, ptr %97, align 1, !tbaa !62
  br i1 %14, label %98, label %._crit_edge.3

98:                                               ; preds = %._crit_edge.2
  %99 = getelementptr inbounds nuw [4 x i8], ptr %92, i64 %indvars.iv.next130
  %100 = load i32, ptr %99, align 4, !tbaa !60
  %101 = icmp slt i32 %100, %i.fz
  %spec.select153.3 = zext i1 %101 to i8
  %102 = getelementptr inbounds nuw i8, ptr %93, i64 %indvars.iv.next130
  store i8 %spec.select153.3, ptr %102, align 1, !tbaa !62
  %103 = getelementptr inbounds nuw [4 x i8], ptr %92, i64 %indvars.iv.next130.1
  %104 = load i32, ptr %103, align 4, !tbaa !60
  %105 = icmp slt i32 %104, %i.fz
  %.sink135.3 = zext i1 %105 to i8
  %106 = getelementptr inbounds nuw i8, ptr %93, i64 %indvars.iv.next130.1
  store i8 %.sink135.3, ptr %106, align 1, !tbaa !62
  %107 = getelementptr inbounds nuw [4 x i8], ptr %92, i64 %indvars.iv.next130.2
  %108 = load i32, ptr %107, align 4, !tbaa !60
  %109 = icmp slt i32 %108, %i.fz
  %.sink136.3 = zext i1 %109 to i8
  %110 = getelementptr inbounds nuw i8, ptr %93, i64 %indvars.iv.next130.2
  store i8 %.sink136.3, ptr %110, align 1, !tbaa !62
  %111 = getelementptr inbounds nuw [4 x i8], ptr %92, i64 %indvars.iv.next130.3
  %112 = load i32, ptr %111, align 4, !tbaa !60
  %113 = icmp slt i32 %112, %i.fz
  %.sink137.3 = zext i1 %113 to i8
  %114 = getelementptr inbounds nuw i8, ptr %93, i64 %indvars.iv.next130.3
  store i8 %.sink137.3, ptr %114, align 1, !tbaa !62
  %115 = getelementptr inbounds nuw [4 x i8], ptr %92, i64 %indvars.iv.next130.4
  %116 = load i32, ptr %115, align 4, !tbaa !60
  %117 = icmp slt i32 %116, %i.fz
  %.sink138.3 = zext i1 %117 to i8
  %118 = getelementptr inbounds nuw i8, ptr %93, i64 %indvars.iv.next130.4
  store i8 %.sink138.3, ptr %118, align 1, !tbaa !62
  br label %._crit_edge.3

._crit_edge.3:                                    ; preds = %98, %._crit_edge.2
  %119 = load ptr, ptr %i.am, align 8, !tbaa !43
  %120 = load i32, ptr %i.i, align 4, !tbaa !32
  %121 = mul nsw i32 %120, %10
  %122 = sext i32 %121 to i64                     ; 2 uses
  %123 = getelementptr inbounds [4 x i8], ptr %119, i64 %122 ; 6 uses
  %124 = getelementptr inbounds i8, ptr %i.dm, i64 %122 ; 6 uses
  %125 = getelementptr inbounds nuw [4 x i8], ptr %123, i64 %indvars.iv127
  %126 = load i32, ptr %125, align 4, !tbaa !60
  %127 = icmp slt i32 %126, %i.fz
  %spec.select.4 = zext i1 %127 to i8
  %128 = getelementptr inbounds nuw i8, ptr %124, i64 %indvars.iv127
  store i8 %spec.select.4, ptr %128, align 1, !tbaa !62
  br i1 %14, label %129, label %._crit_edge.4

129:                                              ; preds = %._crit_edge.3
  %130 = getelementptr inbounds nuw [4 x i8], ptr %123, i64 %indvars.iv.next130
  %131 = load i32, ptr %130, align 4, !tbaa !60
  %132 = icmp slt i32 %131, %i.fz
  %spec.select153.4 = zext i1 %132 to i8
  %133 = getelementptr inbounds nuw i8, ptr %124, i64 %indvars.iv.next130
  store i8 %spec.select153.4, ptr %133, align 1, !tbaa !62
  %134 = getelementptr inbounds nuw [4 x i8], ptr %123, i64 %indvars.iv.next130.1
  %135 = load i32, ptr %134, align 4, !tbaa !60
  %136 = icmp slt i32 %135, %i.fz
  %.sink135.4 = zext i1 %136 to i8
  %137 = getelementptr inbounds nuw i8, ptr %124, i64 %indvars.iv.next130.1
  store i8 %.sink135.4, ptr %137, align 1, !tbaa !62
  %138 = getelementptr inbounds nuw [4 x i8], ptr %123, i64 %indvars.iv.next130.2
  %139 = load i32, ptr %138, align 4, !tbaa !60
  %140 = icmp slt i32 %139, %i.fz
  %.sink136.4 = zext i1 %140 to i8
  %141 = getelementptr inbounds nuw i8, ptr %124, i64 %indvars.iv.next130.2
  store i8 %.sink136.4, ptr %141, align 1, !tbaa !62
  %142 = getelementptr inbounds nuw [4 x i8], ptr %123, i64 %indvars.iv.next130.3
  %143 = load i32, ptr %142, align 4, !tbaa !60
  %144 = icmp slt i32 %143, %i.fz
  %.sink137.4 = zext i1 %144 to i8
  %145 = getelementptr inbounds nuw i8, ptr %124, i64 %indvars.iv.next130.3
  store i8 %.sink137.4, ptr %145, align 1, !tbaa !62
  %146 = getelementptr inbounds nuw [4 x i8], ptr %123, i64 %indvars.iv.next130.4
  %147 = load i32, ptr %146, align 4, !tbaa !60
  %148 = icmp slt i32 %147, %i.fz
  %.sink138.4 = zext i1 %148 to i8
  %149 = getelementptr inbounds nuw i8, ptr %124, i64 %indvars.iv.next130.4
  store i8 %.sink138.4, ptr %149, align 1, !tbaa !62
  br label %._crit_edge.4

._crit_edge.4:                                    ; preds = %129, %._crit_edge.3
  %150 = load ptr, ptr %i.am, align 8, !tbaa !43
  %151 = load i32, ptr %i.i, align 4, !tbaa !32
  %152 = mul nsw i32 %151, %11
  %153 = sext i32 %152 to i64                     ; 2 uses
  %154 = getelementptr inbounds [4 x i8], ptr %150, i64 %153 ; 6 uses
  %155 = getelementptr inbounds i8, ptr %i.dm, i64 %153 ; 6 uses
  %156 = getelementptr inbounds nuw [4 x i8], ptr %154, i64 %indvars.iv127
  %157 = load i32, ptr %156, align 4, !tbaa !60
  %158 = icmp slt i32 %157, %i.fz
  %spec.select.5 = zext i1 %158 to i8
  %159 = getelementptr inbounds nuw i8, ptr %155, i64 %indvars.iv127
  store i8 %spec.select.5, ptr %159, align 1, !tbaa !62
  br i1 %14, label %160, label %._crit_edge117.split

160:                                              ; preds = %._crit_edge.4
  %161 = getelementptr inbounds nuw [4 x i8], ptr %154, i64 %indvars.iv.next130
  %162 = load i32, ptr %161, align 4, !tbaa !60
  %163 = icmp slt i32 %162, %i.fz
  %spec.select153.5 = zext i1 %163 to i8
  %164 = getelementptr inbounds nuw i8, ptr %155, i64 %indvars.iv.next130
  store i8 %spec.select153.5, ptr %164, align 1, !tbaa !62
  %165 = getelementptr inbounds nuw [4 x i8], ptr %154, i64 %indvars.iv.next130.1
  %166 = load i32, ptr %165, align 4, !tbaa !60
  %167 = icmp slt i32 %166, %i.fz
  %.sink135.5 = zext i1 %167 to i8
  %168 = getelementptr inbounds nuw i8, ptr %155, i64 %indvars.iv.next130.1
  store i8 %.sink135.5, ptr %168, align 1, !tbaa !62
  %169 = getelementptr inbounds nuw [4 x i8], ptr %154, i64 %indvars.iv.next130.2
  %170 = load i32, ptr %169, align 4, !tbaa !60
  %171 = icmp slt i32 %170, %i.fz
  %.sink136.5 = zext i1 %171 to i8
  %172 = getelementptr inbounds nuw i8, ptr %155, i64 %indvars.iv.next130.2
  store i8 %.sink136.5, ptr %172, align 1, !tbaa !62
  %173 = getelementptr inbounds nuw [4 x i8], ptr %154, i64 %indvars.iv.next130.3
  %174 = load i32, ptr %173, align 4, !tbaa !60
  %175 = icmp slt i32 %174, %i.fz
  %.sink137.5 = zext i1 %175 to i8
  %176 = getelementptr inbounds nuw i8, ptr %155, i64 %indvars.iv.next130.3
  store i8 %.sink137.5, ptr %176, align 1, !tbaa !62
  %177 = getelementptr inbounds nuw [4 x i8], ptr %154, i64 %indvars.iv.next130.4
  %178 = load i32, ptr %177, align 4, !tbaa !60
  %179 = icmp slt i32 %178, %i.fz
  %.sink138.5 = zext i1 %179 to i8
  %180 = getelementptr inbounds nuw i8, ptr %155, i64 %indvars.iv.next130.4
  store i8 %.sink138.5, ptr %180, align 1, !tbaa !62
  br label %._crit_edge117.split

181:                                              ; preds = %.lr.ph113.preheader
  %182 = getelementptr inbounds nuw [4 x i8], ptr %19, i64 %indvars.iv.next130
  %183 = load i32, ptr %182, align 4, !tbaa !60
  %184 = icmp slt i32 %183, %i.fz
  %spec.select153 = zext i1 %184 to i8
  %185 = getelementptr inbounds nuw i8, ptr %20, i64 %indvars.iv.next130
  store i8 %spec.select153, ptr %185, align 1, !tbaa !62
  %186 = getelementptr inbounds nuw [4 x i8], ptr %19, i64 %indvars.iv.next130.1
  %187 = load i32, ptr %186, align 4, !tbaa !60
  %188 = icmp slt i32 %187, %i.fz
  %.sink135 = zext i1 %188 to i8
  %189 = getelementptr inbounds nuw i8, ptr %20, i64 %indvars.iv.next130.1
  store i8 %.sink135, ptr %189, align 1, !tbaa !62
  %190 = getelementptr inbounds nuw [4 x i8], ptr %19, i64 %indvars.iv.next130.2
  %191 = load i32, ptr %190, align 4, !tbaa !60
  %192 = icmp slt i32 %191, %i.fz
  %.sink136 = zext i1 %192 to i8
  %193 = getelementptr inbounds nuw i8, ptr %20, i64 %indvars.iv.next130.2
  store i8 %.sink136, ptr %193, align 1, !tbaa !62
  %194 = getelementptr inbounds nuw [4 x i8], ptr %19, i64 %indvars.iv.next130.3
  %195 = load i32, ptr %194, align 4, !tbaa !60
  %196 = icmp slt i32 %195, %i.fz
  %.sink137 = zext i1 %196 to i8
  %197 = getelementptr inbounds nuw i8, ptr %20, i64 %indvars.iv.next130.3
  store i8 %.sink137, ptr %197, align 1, !tbaa !62
  %198 = getelementptr inbounds nuw [4 x i8], ptr %19, i64 %indvars.iv.next130.4
  %199 = load i32, ptr %198, align 4, !tbaa !60
  %200 = icmp slt i32 %199, %i.fz
  %.sink138 = zext i1 %200 to i8
  %201 = getelementptr inbounds nuw i8, ptr %20, i64 %indvars.iv.next130.4
  store i8 %.sink138, ptr %201, align 1, !tbaa !62
  br label %._crit_edge

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
