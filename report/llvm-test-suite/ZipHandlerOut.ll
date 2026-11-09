Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/ZipHandlerOut?download=true
inline.NumInlined: 234
inline.NumDeleted: 60
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN8NArchive4NZip8CHandler11UpdateItemsEP20ISequentialOutStreamjP22IArchiveUpdateCallback:bb.a
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %wide.load588 = load <4 x i32>, ptr %i.df, align 4, !tbaa !74
  %wide.load589 = load <4 x i32>, ptr %i.dg, align 4, !tbaa !74
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %index587 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store <4 x i32> %wide.load588, ptr %i.dh, align 4, !tbaa !74
  store <4 x i32> %wide.load589, ptr %i.di, align 4, !tbaa !74
  %index.next590 = add nuw i64 %index587, 8       ; 2 uses
  %i.dj = icmp eq i64 %index.next590, %n.vec585
  br i1 %i.dj, label %middle.block591, label %vector.body586, !llvm.loop !129

middle.block591:                                  ; preds = %vector.body586
  %cmp.n592 = icmp eq i64 %n.vec585, %wide.trip.count.i.i
  br i1 %cmp.n592, label %._crit_edge.thread.i.i, label %scalar.ph580.preheader

scalar.ph580.preheader:                           ; preds = %.lr.ph.i.i, %middle.block591
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec585, %middle.block591 ] ; 3 uses
  %xtraiter696 = and i64 %wide.trip.count.i.i, 3  ; 2 uses
  %lcmp.mod697.not = icmp eq i64 %xtraiter696, 0
  br i1 %lcmp.mod697.not, label %scalar.ph580.prol.loopexit, label %scalar.ph580.prol

scalar.ph580.prol:                                ; preds = %scalar.ph580.preheader, %scalar.ph580.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %scalar.ph580.prol ], [ %indvars.iv.i.i.ph, %scalar.ph580.preheader ] ; 3 uses
  %prol.iter698 = phi i64 [ %prol.iter698.next, %scalar.ph580.prol ], [ 0, %scalar.ph580.preheader ]
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i294, i64 %indvars.iv.i.i.prol
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !74
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv.i.i.prol
  store i32 %i.dl, ptr %i.dm, align 4, !tbaa !74
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter698.next = add i64 %prol.iter698, 1   ; 2 uses
  %prol.iter698.cmp.not = icmp eq i64 %prol.iter698.next, %xtraiter696
  br i1 %prol.iter698.cmp.not, label %scalar.ph580.prol.loopexit, label %scalar.ph580.prol, !llvm.loop !130

scalar.ph580.prol.loopexit:                       ; preds = %scalar.ph580.prol, %scalar.ph580.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %scalar.ph580.preheader ], [ %indvars.iv.next.i.i.prol, %scalar.ph580.prol ]
  %i.dn = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %i.do = icmp ugt i64 %i.dn, -4
  br i1 %i.do, label %._crit_edge.thread.i.i, label %scalar.ph580

._crit_edge.i.i:                                  ; preds = %.preheader.i.i
  %i.dp = icmp eq ptr %.pre.i.i294, null
  br i1 %i.dp, label %bb.m, label %._crit_edge.thread.i.i

scalar.ph580:                                     ; preds = %scalar.ph580.prol.loopexit, %scalar.ph580
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %scalar.ph580 ], [ %indvars.iv.i.i.unr, %scalar.ph580.prol.loopexit ] ; 6 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i294, i64 %indvars.iv.i.i
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !74
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv.i.i
  store i32 %i.dr, ptr %i.ds, align 4, !tbaa !74
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i294, i64 %indvars.iv.next.i.i
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !74
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv.next.i.i
  store i32 %i.du, ptr %i.dv, align 4, !tbaa !74
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i294, i64 %indvars.iv.next.i.i.1
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !74
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv.next.i.i.1
  store i32 %i.dx, ptr %i.dy, align 4, !tbaa !74
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i294, i64 %indvars.iv.next.i.i.2
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !74
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv.next.i.i.2
  store i32 %i.ea, ptr %i.eb, align 4, !tbaa !74
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.thread.i.i, label %scalar.ph580, !llvm.loop !131

._crit_edge.thread.i.i:                           ; preds = %scalar.ph580.prol.loopexit, %scalar.ph580, %middle.block591, %._crit_edge.i.i
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i294) #20
  %.pre.i = load i32, ptr %i.q, align 8, !tbaa !71
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i.i, %._crit_edge.i.i, %.noexc295
  %i.ec = phi i32 [ %.pre1.i, %.noexc295 ], [ %.pre1.i, %._crit_edge.i.i ], [ %.pre.i, %._crit_edge.thread.i.i ]
  store ptr %i.cz, ptr %7, align 8, !tbaa !72
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr inbounds [4 x i8], ptr %i.cz, i64 %i.ed
  store i32 0, ptr %i.ee, align 4, !tbaa !74
  store i32 4, ptr %i.r, align 4, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  store i16 0, ptr %8, align 8, !tbaa !76
  store i16 0, ptr %i.s, align 2, !tbaa !77
  %i.ef = load ptr, ptr %3, align 8, !tbaa !49
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 64
  %i.eh = load ptr, ptr %i.eg, align 8
  %i.ei = invoke noundef i32 %i.eh(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %.0177515, i32 noundef 9, ptr noundef nonnull %8)
          to label %bb.n unwind label %bb.p       ; 2 uses

bb.n:                                             ; preds = %bb.m
  %.not241 = icmp eq i32 %i.ei, 0
  br i1 %.not241, label %bb.r, label %bb.t

bb.o:                                             ; preds = %bb.l
  %i.ej = landingpad { ptr, i32 }
          catch ptr @_ZTI16CSystemException
          catch ptr null
  br label %_ZN11CStringBaseIwED2Ev.exit318

bb.p:                                             ; preds = %bb.m
  %i.ek = landingpad { ptr, i32 }
          catch ptr @_ZTI16CSystemException
          catch ptr null
  %i.el = invoke noundef i32 @_ZN8NWindows4NCOM12CPropVariant5ClearEv(ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit unwind label %bb.q ; 0 uses

bb.q:                                             ; preds = %bb.p
  %i.em = landingpad { ptr, i32 }
          catch ptr null
  %i.en = extractvalue { ptr, i32 } %i.em, 0
  call void @__clang_call_terminate(ptr %i.en) #21
  unreachable

_ZN8NWindows4NCOM12CPropVariantD2Ev.exit:         ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %.body

bb.r:                                             ; preds = %bb.n
  %i.eo = load i16, ptr %8, align 8, !tbaa !76
  switch i16 %i.eo, label %bb.t [
    i16 0, label %.sink.split
    i16 19, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r
  %i.ep = load i32, ptr %i.t, align 8, !tbaa !59
  br label %.sink.split

.sink.split:                                      ; preds = %bb.r, %bb.s
  %.sink = phi i32 [ %i.ep, %bb.s ], [ 0, %bb.r ]
  store i32 %.sink, ptr %i.u, align 8, !tbaa !163
  br label %bb.t

bb.t:                                             ; preds = %.sink.split, %bb.r, %bb.n
  %cond9 = phi i1 [ false, %bb.r ], [ false, %bb.n ], [ true, %.sink.split ]
  %.3 = phi i32 [ -2147024809, %bb.r ], [ %i.ei, %bb.n ], [ %.0518, %.sink.split ] ; 3 uses
  %i.eq = invoke noundef i32 @_ZN8NWindows4NCOM12CPropVariant5ClearEv(ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit296 unwind label %bb.u ; 0 uses

bb.u:                                             ; preds = %bb.t
  %i.er = landingpad { ptr, i32 }
          catch ptr null
  %i.es = extractvalue { ptr, i32 } %i.er, 0
  call void @__clang_call_terminate(ptr %i.es) #21
  unreachable

_ZN8NWindows4NCOM12CPropVariantD2Ev.exit296:      ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br i1 %cond9, label %bb.v, label %bb.cr

bb.v:                                             ; preds = %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit296
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  store i16 0, ptr %9, align 8, !tbaa !76
  store i16 0, ptr %i.v, align 2, !tbaa !77
  %i.et = load ptr, ptr %3, align 8, !tbaa !49
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 64
  %i.ev = load ptr, ptr %i.eu, align 8
  %i.ew = invoke noundef i32 %i.ev(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %.0177515, i32 noundef 3, ptr noundef nonnull %9)
          to label %bb.w unwind label %bb.z       ; 2 uses

bb.w:                                             ; preds = %bb.v
  %.not243 = icmp eq i32 %i.ew, 0
  br i1 %.not243, label %bb.x, label %bb.ae

bb.x:                                             ; preds = %bb.w
  %i.ex = load i16, ptr %9, align 8, !tbaa !76
  switch i16 %i.ex, label %bb.ae [
    i16 0, label %bb.y
    i16 8, label %bb.ab
  ]

bb.y:                                             ; preds = %bb.x
  store i32 0, ptr %i.q, align 8, !tbaa !71
  %i.ey = load ptr, ptr %7, align 8, !tbaa !72
  store i32 0, ptr %i.ey, align 4, !tbaa !74
  br label %bb.ae

bb.z:                                             ; preds = %bb.ac, %bb.v
  %i.ez = landingpad { ptr, i32 }
          catch ptr @_ZTI16CSystemException
          catch ptr null
  %i.fa = invoke noundef i32 @_ZN8NWindows4NCOM12CPropVariant5ClearEv(ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit297 unwind label %bb.aa ; 0 uses

bb.aa:                                            ; preds = %bb.z
  %i.fb = landingpad { ptr, i32 }
          catch ptr null
  %i.fc = extractvalue { ptr, i32 } %i.fb, 0
  call void @__clang_call_terminate(ptr %i.fc) #21
  unreachable

_ZN8NWindows4NCOM12CPropVariantD2Ev.exit297:      ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %.body

bb.ab:                                            ; preds = %bb.x
  %i.fd = load ptr, ptr %i.w, align 8, !tbaa !59  ; 2 uses
  store i32 0, ptr %i.q, align 8, !tbaa !71
  %i.fe = load ptr, ptr %7, align 8, !tbaa !72    ; 2 uses
  store i32 0, ptr %i.fe, align 4, !tbaa !74
  %wcslen.i.i = call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.fd)
  %i.ff = trunc i64 %wcslen.i.i to i32            ; 3 uses
  %i.fg = add nsw i32 %i.ff, 1                    ; 3 uses
  %i.fh = load i32, ptr %i.r, align 4, !tbaa !70
  %i.fi = icmp eq i32 %i.fg, %i.fh
  br i1 %i.fi, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.preheader, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fj = zext nneg i32 %i.fg to i64
  %i.fk = icmp slt i32 %i.ff, -1
  %i.fl = shl nuw nsw i64 %i.fj, 2
  %i.fm = select i1 %i.fk, i64 -1, i64 %i.fl
  %i.fn = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.fm) #19
          to label %.noexc308 unwind label %bb.z  ; 10 uses

.noexc308:                                        ; preds = %bb.ac
  %i.fo = ptrtoaddr ptr %i.fn to i64
  %i.fp = load i32, ptr %i.r, align 4, !tbaa !70
  %i.fq = icmp sgt i32 %i.fp, 0
  %.pre4.i = load i32, ptr %i.q, align 8, !tbaa !71 ; 5 uses
  br i1 %i.fq, label %.preheader.i.i298, label %bb.ad

.preheader.i.i298:                                ; preds = %.noexc308
  %i.fr = icmp sgt i32 %.pre4.i, 0
  %.pre.i.i299 = load ptr, ptr %7, align 8, !tbaa !72 ; 9 uses
  br i1 %i.fr, label %.lr.ph.i.i303, label %._crit_edge.i.i300

.lr.ph.i.i303:                                    ; preds = %.preheader.i.i298
  %.pre.i.i299574 = ptrtoaddr ptr %.pre.i.i299 to i64
  %wide.trip.count.i.i304 = zext nneg i32 %.pre4.i to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %.pre4.i, 8
  %i.fs = sub i64 %.pre.i.i299574, %i.fo
  %diff.check = icmp ugt i64 %i.fs, -32
  %or.cond689 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond689, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i303
  %n.vec = and i64 %wide.trip.count.i.i304, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i299, i64 %index ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %wide.load = load <4 x i32>, ptr %i.ft, align 4, !tbaa !74
  %wide.load575 = load <4 x i32>, ptr %i.fu, align 4, !tbaa !74
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %index ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  store <4 x i32> %wide.load, ptr %i.fv, align 4, !tbaa !74
  store <4 x i32> %wide.load575, ptr %i.fw, align 4, !tbaa !74
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fx = icmp eq i64 %index.next, %n.vec
  br i1 %i.fx, label %middle.block, label %vector.body, !llvm.loop !132

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i304
  br i1 %cmp.n, label %._crit_edge.thread.i.i301, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i303, %middle.block
  %indvars.iv.i.i305.ph = phi i64 [ 0, %.lr.ph.i.i303 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter699 = and i64 %wide.trip.count.i.i304, 3 ; 2 uses
  %lcmp.mod700.not = icmp eq i64 %xtraiter699, 0
  br i1 %lcmp.mod700.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i305.prol = phi i64 [ %indvars.iv.next.i.i306.prol, %scalar.ph.prol ], [ %indvars.iv.i.i305.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter701 = phi i64 [ %prol.iter701.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i299, i64 %indvars.iv.i.i305.prol
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !74
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %indvars.iv.i.i305.prol
  store i32 %i.fz, ptr %i.ga, align 4, !tbaa !74
  %indvars.iv.next.i.i306.prol = add nuw nsw i64 %indvars.iv.i.i305.prol, 1 ; 2 uses
  %prol.iter701.next = add i64 %prol.iter701, 1   ; 2 uses
  %prol.iter701.cmp.not = icmp eq i64 %prol.iter701.next, %xtraiter699
  br i1 %prol.iter701.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !133

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i305.unr = phi i64 [ %indvars.iv.i.i305.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i306.prol, %scalar.ph.prol ]
  %i.gb = sub nsw i64 %indvars.iv.i.i305.ph, %wide.trip.count.i.i304
  %i.gc = icmp ugt i64 %i.gb, -4
  br i1 %i.gc, label %._crit_edge.thread.i.i301, label %scalar.ph

._crit_edge.i.i300:                               ; preds = %.preheader.i.i298
  %i.gd = icmp eq ptr %.pre.i.i299, null
  br i1 %i.gd, label %bb.ad, label %._crit_edge.thread.i.i301

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i305 = phi i64 [ %indvars.iv.next.i.i306.3, %scalar.ph ], [ %indvars.iv.i.i305.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i299, i64 %indvars.iv.i.i305
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !74
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %indvars.iv.i.i305
  store i32 %i.gf, ptr %i.gg, align 4, !tbaa !74
  %indvars.iv.next.i.i306 = add nuw nsw i64 %indvars.iv.i.i305, 1 ; 2 uses
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i299, i64 %indvars.iv.next.i.i306
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !74
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %indvars.iv.next.i.i306
  store i32 %i.gi, ptr %i.gj, align 4, !tbaa !74
  %indvars.iv.next.i.i306.1 = add nuw nsw i64 %indvars.iv.i.i305, 2 ; 2 uses
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i299, i64 %indvars.iv.next.i.i306.1
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !74
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %indvars.iv.next.i.i306.1
  store i32 %i.gl, ptr %i.gm, align 4, !tbaa !74
  %indvars.iv.next.i.i306.2 = add nuw nsw i64 %indvars.iv.i.i305, 3 ; 2 uses
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i299, i64 %indvars.iv.next.i.i306.2
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !74
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %indvars.iv.next.i.i306.2
  store i32 %i.go, ptr %i.gp, align 4, !tbaa !74
  %indvars.iv.next.i.i306.3 = add nuw nsw i64 %indvars.iv.i.i305, 4 ; 2 uses
  %exitcond.not.i.i307.3 = icmp eq i64 %indvars.iv.next.i.i306.3, %wide.trip.count.i.i304
  br i1 %exitcond.not.i.i307.3, label %._crit_edge.thread.i.i301, label %scalar.ph, !llvm.loop !134

._crit_edge.thread.i.i301:                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %._crit_edge.i.i300
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i299) #20
  %.pre.i302 = load i32, ptr %i.q, align 8, !tbaa !71
  br label %bb.ad

bb.ad:                                            ; preds = %._crit_edge.thread.i.i301, %._crit_edge.i.i300, %.noexc308
  %i.gq = phi i32 [ %.pre.i302, %._crit_edge.thread.i.i301 ], [ %.pre4.i, %._crit_edge.i.i300 ], [ %.pre4.i, %.noexc308 ]
  store ptr %i.fn, ptr %7, align 8, !tbaa !72
  %i.gr = sext i32 %i.gq to i64
  %i.gs = getelementptr inbounds [4 x i8], ptr %i.fn, i64 %i.gr
  store i32 0, ptr %i.gs, align 4, !tbaa !74
  store i32 %i.fg, ptr %i.r, align 4, !tbaa !70
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.preheader

_ZN11CStringBaseIwE11SetCapacityEi.exit.i.preheader: ; preds = %bb.ad, %bb.ab
  %.04.i.i.ph = phi ptr [ %i.fn, %bb.ad ], [ %i.fe, %bb.ab ]
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.preheader, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %i.gv, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %.04.i.i.ph, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.preheader ] ; 2 uses
  %.0.i.i = phi ptr [ %i.gt, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.fd, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.preheader ] ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  %i.gu = load i32, ptr %.0.i.i, align 4, !tbaa !74 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  store i32 %i.gu, ptr %.04.i.i, align 4, !tbaa !74
  %.not.i.i = icmp eq i32 %i.gu, 0
  br i1 %.not.i.i, label %_ZN11CStringBaseIwEaSEPKw.exit, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, !llvm.loop !0

_ZN11CStringBaseIwEaSEPKw.exit:                   ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  store i32 %i.ff, ptr %i.q, align 8, !tbaa !71
  br label %bb.ae

bb.ae:                                            ; preds = %_ZN11CStringBaseIwEaSEPKw.exit, %bb.y, %bb.x, %bb.w
  %cond12 = phi i1 [ false, %bb.x ], [ false, %bb.w ], [ true, %_ZN11CStringBaseIwEaSEPKw.exit ], [ true, %bb.y ]
  %.5 = phi i32 [ -2147024809, %bb.x ], [ %i.ew, %bb.w ], [ %.3, %_ZN11CStringBaseIwEaSEPKw.exit ], [ %.3, %bb.y ] ; 2 uses
  %i.gw = invoke noundef i32 @_ZN8NWindows4NCOM12CPropVariant5ClearEv(ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit309 unwind label %bb.af ; 0 uses

bb.af:                                            ; preds = %bb.ae
  %i.gx = landingpad { ptr, i32 }
          catch ptr null
  %i.gy = extractvalue { ptr, i32 } %i.gx, 0
  call void @__clang_call_terminate(ptr %i.gy) #21
  unreachable

_ZN8NWindows4NCOM12CPropVariantD2Ev.exit309:      ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br i1 %cond12, label %bb.ag, label %bb.cr

bb.ag:                                            ; preds = %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit309
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  store i16 0, ptr %10, align 8, !tbaa !76
  store i16 0, ptr %i.x, align 2, !tbaa !77
  %i.gz = load ptr, ptr %3, align 8, !tbaa !49
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 64
  %i.hb = load ptr, ptr %i.ha, align 8
  %i.hc = invoke noundef i32 %i.hb(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %.0177515, i32 noundef 6, ptr noundef nonnull %10)
          to label %bb.ah unwind label %bb.ai     ; 2 uses

bb.ah:                                            ; preds = %bb.ag
  %.not246 = icmp eq i32 %i.hc, 0
  br i1 %.not246, label %bb.ak, label %bb.am

bb.ai:                                            ; preds = %bb.ag
  %i.hd = landingpad { ptr, i32 }
          catch ptr @_ZTI16CSystemException
          catch ptr null
  %i.he = invoke noundef i32 @_ZN8NWindows4NCOM12CPropVariant5ClearEv(ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit310 unwind label %bb.aj ; 0 uses

bb.aj:                                            ; preds = %bb.ai
  %i.hf = landingpad { ptr, i32 }
          catch ptr null
  %i.hg = extractvalue { ptr, i32 } %i.hf, 0
  call void @__clang_call_terminate(ptr %i.hg) #21
  unreachable

_ZN8NWindows4NCOM12CPropVariantD2Ev.exit310:      ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br label %.body

bb.ak:                                            ; preds = %bb.ah
  %i.hh = load i16, ptr %10, align 8, !tbaa !76
  switch i16 %i.hh, label %bb.am [
    i16 0, label %.sink.split568
    i16 11, label %bb.al
  ]

bb.al:                                            ; preds = %bb.ak
  %i.hi = load i16, ptr %i.y, align 8, !tbaa !59
end_hunk_0
begin_hunk_1_@_ZN8NArchive4NZip8CHandler11UpdateItemsEP20ISequentialOutStreamjP22IArchiveUpdateCallback:bb.a
  %i.li = landingpad { ptr, i32 }
          catch ptr null
  %i.lj = extractvalue { ptr, i32 } %i.li, 0
  call void @__clang_call_terminate(ptr %i.lj) #21
  unreachable

_ZN8NWindows4NCOM12CPropVariantD2Ev.exit319:      ; preds = %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  br label %bb.dg

bb.cz:                                            ; preds = %bb.cw
  %i.lk = load i16, ptr %15, align 8, !tbaa !76
  %.not263 = icmp eq i16 %i.lk, 21
  br i1 %.not263, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.ll = load i64, ptr %i.an, align 8, !tbaa !59
  br label %bb.db

bb.db:                                            ; preds = %bb.cz, %bb.cw, %bb.da
  %cond6 = phi i1 [ false, %bb.cw ], [ true, %bb.da ], [ false, %bb.cz ]
  %.0148 = phi i64 [ undef, %bb.cw ], [ %i.ll, %bb.da ], [ undef, %bb.cz ]
  %.20 = phi i32 [ %i.lf, %bb.cw ], [ %.18, %bb.da ], [ -2147024809, %bb.cz ] ; 2 uses
  %i.lm = invoke noundef i32 @_ZN8NWindows4NCOM12CPropVariant5ClearEv(ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit320 unwind label %bb.dc ; 0 uses

bb.dc:                                            ; preds = %bb.db
  %i.ln = landingpad { ptr, i32 }
          catch ptr null
  %i.lo = extractvalue { ptr, i32 } %i.ln, 0
  call void @__clang_call_terminate(ptr %i.lo) #21
  unreachable

_ZN8NWindows4NCOM12CPropVariantD2Ev.exit320:      ; preds = %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  br i1 %cond6, label %bb.dd, label %.critedge292

bb.dd:                                            ; preds = %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit320
  store i64 %.0148, ptr %i.i, align 8, !tbaa !166
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.cu
  %.21 = phi i32 [ %.20, %bb.dd ], [ %.18, %bb.cu ]
  %i.lp = invoke noundef i32 @_ZN13CObjectVectorIN8NArchive4NZip11CUpdateItemEE3AddERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(72) %6)
          to label %.critedge292 unwind label %bb.k ; 0 uses

.critedge292:                                     ; preds = %_ZN11CStringBaseIwED2Ev.exit317, %bb.de, %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit320, %bb.d, %bb.g
  %.2180 = phi i8 [ %.0178514, %bb.d ], [ %.0178514, %bb.g ], [ %.1179, %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit320 ], [ %.1179, %bb.de ], [ %.1179, %_ZN11CStringBaseIwED2Ev.exit317 ] ; 2 uses
  %.21173 = phi i1 [ false, %bb.d ], [ false, %bb.g ], [ false, %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit320 ], [ true, %bb.de ], [ false, %_ZN11CStringBaseIwED2Ev.exit317 ]
  %.23 = phi i32 [ -2147467259, %bb.d ], [ %i.cd, %bb.g ], [ %.20, %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit320 ], [ %.21, %bb.de ], [ %.17, %_ZN11CStringBaseIwED2Ev.exit317 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.lq = load ptr, ptr %i.j, align 8, !tbaa !58  ; 2 uses
  %i.lr = icmp eq ptr %i.lq, null
  br i1 %i.lr, label %_ZN8NArchive4NZip11CUpdateItemD2Ev.exit, label %bb.df

bb.df:                                            ; preds = %.critedge292
  call void @_ZdaPv(ptr noundef nonnull %i.lq) #20
  br label %_ZN8NArchive4NZip11CUpdateItemD2Ev.exit

_ZN8NArchive4NZip11CUpdateItemD2Ev.exit:          ; preds = %.critedge292, %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br i1 %.21173, label %bb.b, label %.loopexit

bb.dg:                                            ; preds = %bb.k, %_ZN11CStringBaseIwED2Ev.exit318, %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit319
  %.pn264.pn = phi { ptr, i32 } [ %.pn257.pn.pn.pn, %_ZN11CStringBaseIwED2Ev.exit318 ], [ %i.cy, %bb.k ], [ %i.lg, %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit319 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.ls = load ptr, ptr %i.j, align 8, !tbaa !58  ; 2 uses
  %i.lt = icmp eq ptr %i.ls, null
  br i1 %i.lt, label %_ZN8NArchive4NZip11CUpdateItemD2Ev.exit321, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  call void @_ZdaPv(ptr noundef nonnull %i.ls) #20
  br label %_ZN8NArchive4NZip11CUpdateItemD2Ev.exit321

_ZN8NArchive4NZip11CUpdateItemD2Ev.exit321:       ; preds = %bb.dh, %bb.dg, %bb.e
  %.pn264.pn.pn = phi { ptr, i32 } [ %i.bz, %bb.e ], [ %.pn264.pn, %bb.dg ], [ %.pn264.pn, %bb.dh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.gm

.thread422:                                       ; preds = %bb.b, %bb.a
  %.0178.lcssa = phi i8 [ 0, %bb.a ], [ %.2180, %bb.b ]
  %.0.lcssa = phi i32 [ undef, %bb.a ], [ %.23, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  store ptr null, ptr %16, align 8, !tbaa !169
  %.not.i322 = icmp eq ptr %3, null
  br i1 %.not.i322, label %_ZN9CMyComPtrI22IArchiveUpdateCallbackEC2EPS0_.exit, label %bb.di

bb.di:                                            ; preds = %.thread422
  %i.lu = load ptr, ptr %3, align 8, !tbaa !49
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 8
  %i.lw = load ptr, ptr %i.lv, align 8
  %i.lx = invoke noundef i32 %i.lw(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZN9CMyComPtrI22IArchiveUpdateCallbackEC2EPS0_.exit unwind label %bb.dn, !inline_history !136 ; 0 uses

_ZN9CMyComPtrI22IArchiveUpdateCallbackEC2EPS0_.exit: ; preds = %.thread422, %bb.di
  %i.ly = load ptr, ptr %3, align 8, !tbaa !49
  %i.lz = load ptr, ptr %i.ly, align 8
  %i.ma = invoke noundef i32 %i.lz(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(16) @IID_ICryptoGetTextPassword2, ptr noundef nonnull %16)
          to label %_ZNK9CMyComPtrI22IArchiveUpdateCallbackE14QueryInterfaceI23ICryptoGetTextPassword2EEiRK4GUIDPPT_.exit unwind label %bb.do, !inline_history !137 ; 0 uses

_ZNK9CMyComPtrI22IArchiveUpdateCallbackE14QueryInterfaceI23ICryptoGetTextPassword2EEiRK4GUIDPPT_.exit: ; preds = %_ZN9CMyComPtrI22IArchiveUpdateCallbackEC2EPS0_.exit
  %i.mb = load ptr, ptr %3, align 8, !tbaa !49
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 16
  %i.md = load ptr, ptr %i.mc, align 8
  %i.me = invoke noundef i32 %i.md(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZN9CMyComPtrI22IArchiveUpdateCallbackED2Ev.exit unwind label %bb.dj ; 0 uses

bb.dj:                                            ; preds = %_ZNK9CMyComPtrI22IArchiveUpdateCallbackE14QueryInterfaceI23ICryptoGetTextPassword2EEiRK4GUIDPPT_.exit
  %i.mf = landingpad { ptr, i32 }
          catch ptr null
  %i.mg = extractvalue { ptr, i32 } %i.mf, 0
  call void @__clang_call_terminate(ptr %i.mg) #21
  unreachable

_ZN9CMyComPtrI22IArchiveUpdateCallbackED2Ev.exit: ; preds = %_ZNK9CMyComPtrI22IArchiveUpdateCallbackE14QueryInterfaceI23ICryptoGetTextPassword2EEiRK4GUIDPPT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18
  invoke void @_ZN8NArchive4NZip22CCompressionMethodModeC2Ev(ptr noundef nonnull align 8 dereferenceable(106) %17)
          to label %bb.dk unwind label %bb.dq

bb.dk:                                            ; preds = %_ZN9CMyComPtrI22IArchiveUpdateCallbackED2Ev.exit
  %i.mh = load ptr, ptr %16, align 8, !tbaa !169  ; 3 uses
  %.not271 = icmp eq ptr %i.mh, null
  br i1 %.not271, label %bb.es, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18
  store ptr null, ptr %18, align 8, !tbaa !171
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !49
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 40
  %i.mk = load ptr, ptr %i.mj, align 8
  %i.ml = invoke noundef i32 %i.mk(ptr noundef nonnull align 8 dereferenceable(8) %i.mh, ptr noundef nonnull %i.d, ptr noundef nonnull %18)
          to label %bb.dm unwind label %bb.dy     ; 3 uses

bb.dm:                                            ; preds = %bb.dl
  %.not272 = icmp eq i32 %i.ml, 0                 ; 2 uses
  %.24. = select i1 %.not272, i32 %.0.lcssa, i32 %i.ml
  br i1 %.not272, label %bb.dr, label %bb.eo

bb.dn:                                            ; preds = %bb.di
  %i.mm = landingpad { ptr, i32 }
          catch ptr @_ZTI16CSystemException
          catch ptr null
  br label %_ZN9CMyComPtrI22IArchiveUpdateCallbackED2Ev.exit327

bb.do:                                            ; preds = %_ZN9CMyComPtrI22IArchiveUpdateCallbackEC2EPS0_.exit
  %i.mn = landingpad { ptr, i32 }
          catch ptr @_ZTI16CSystemException
          catch ptr null
  %i.mo = load ptr, ptr %3, align 8, !tbaa !49
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 16
  %i.mq = load ptr, ptr %i.mp, align 8
  %i.mr = invoke noundef i32 %i.mq(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZN9CMyComPtrI22IArchiveUpdateCallbackED2Ev.exit327 unwind label %bb.dp ; 0 uses

bb.dp:                                            ; preds = %bb.do
  %i.ms = landingpad { ptr, i32 }
          catch ptr null
  %i.mt = extractvalue { ptr, i32 } %i.ms, 0
  call void @__clang_call_terminate(ptr %i.mt) #21
  unreachable

bb.dq:                                            ; preds = %_ZN9CMyComPtrI22IArchiveUpdateCallbackED2Ev.exit
  %i.mu = landingpad { ptr, i32 }
          catch ptr @_ZTI16CSystemException
          catch ptr null
  br label %bb.gi

bb.dr:                                            ; preds = %bb.dm
  %i.mv = load i32, ptr %i.d, align 4, !tbaa !9
  %i.mw = icmp ne i32 %i.mv, 0                    ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %17, i64 84
  %i.my = zext i1 %i.mw to i8
  store i8 %i.my, ptr %i.mx, align 4, !tbaa !102
  br i1 %i.mw, label %bb.ds, label %bb.eo

bb.ds:                                            ; preds = %bb.dr
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 245
  %i.na = load i8, ptr %i.mz, align 1, !tbaa !103, !range !94, !noundef !95
  %i.nb = trunc nuw i8 %i.na to i1
  br i1 %i.nb, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  %i.nc = getelementptr inbounds nuw i8, ptr %0, i64 246
  %i.nd = load i8, ptr %i.nc, align 2, !tbaa !104, !range !94, !noundef !95
  br label %bb.du

bb.du:                                            ; preds = %bb.ds, %bb.dt
  %.in = phi i8 [ %i.nd, %bb.dt ], [ %.0178.lcssa, %bb.ds ]
  %i.ne = getelementptr inbounds nuw i8, ptr %17, i64 104 ; 2 uses
  store i8 %.in, ptr %i.ne, align 8, !tbaa !105
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 247
  %i.ng = load i8, ptr %i.nf, align 1, !tbaa !106
  %i.nh = getelementptr inbounds nuw i8, ptr %17, i64 105
  store i8 %i.ng, ptr %i.nh, align 1, !tbaa !107
  %i.ni = load ptr, ptr %18, align 8, !tbaa !171  ; 2 uses
  %wcslen.i.i328 = call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.ni) ; 2 uses
  %i.nj = trunc i64 %wcslen.i.i328 to i32         ; 3 uses
  %i.nk = add nsw i32 %i.nj, 1                    ; 2 uses
  %i.nl = icmp eq i32 %i.nk, 0
  br i1 %i.nl, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i330, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.nm = zext nneg i32 %i.nk to i64
  %i.nn = icmp slt i32 %i.nj, -1
  %i.no = shl nuw nsw i64 %i.nm, 2
  %i.np = select i1 %i.nn, i64 -1, i64 %i.no
  %i.nq = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.np) #19
          to label %.noexc344 unwind label %bb.dy ; 2 uses

.noexc344:                                        ; preds = %bb.dv
  store i32 0, ptr %i.nq, align 4, !tbaa !74
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i330

_ZN11CStringBaseIwE11SetCapacityEi.exit.i330:     ; preds = %.noexc344, %bb.du
  %.sroa.0.0 = phi ptr [ null, %bb.du ], [ %i.nq, %.noexc344 ] ; 5 uses
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dw, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i330
  %.04.i.i331 = phi ptr [ %.sroa.0.0, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i330 ], [ %i.nt, %bb.dw ] ; 2 uses
  %.0.i.i332 = phi ptr [ %i.ni, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i330 ], [ %i.nr, %bb.dw ] ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %.0.i.i332, i64 4
  %i.ns = load i32, ptr %.0.i.i332, align 4, !tbaa !74 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %.04.i.i331, i64 4
  store i32 %i.ns, ptr %.04.i.i331, align 4, !tbaa !74
  %.not.i.i333 = icmp eq i32 %i.ns, 0
  br i1 %.not.i.i333, label %_ZN11CStringBaseIwEC2EPKw.exit, label %bb.dw, !llvm.loop !0

_ZN11CStringBaseIwEC2EPKw.exit:                   ; preds = %bb.dw
  %i.nu = icmp slt i32 %i.nj, 1
  br i1 %i.nu, label %_ZN8NArchive4NZipL13IsAsciiStringERK11CStringBaseIwE.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZN11CStringBaseIwEC2EPKw.exit
  %wide.trip.count.i = and i64 %wcslen.i.i328, 2147483647
  br label %.lr.ph.i

bb.dx:                                            ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN11CStringBaseIwED2Ev.exit345.thread431, label %.lr.ph.i, !llvm.loop !138

.lr.ph.i:                                         ; preds = %bb.dx, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.dx ] ; 2 uses
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %indvars.iv.i
  %i.nw = load i32, ptr %i.nv, align 4, !tbaa !74
  %i.nx = add i32 %i.nw, -32
  %or.cond.i = icmp ult i32 %i.nx, 96
  br i1 %or.cond.i, label %bb.dx, label %_ZN11CStringBaseIwED2Ev.exit345

_ZN8NArchive4NZipL13IsAsciiStringERK11CStringBaseIwE.exit: ; preds = %_ZN11CStringBaseIwEC2EPKw.exit
  %i.ny = icmp eq ptr %.sroa.0.0, null
  br i1 %i.ny, label %_ZN11CStringBaseIwED2Ev.exit345.thread, label %_ZN11CStringBaseIwED2Ev.exit345.thread431

_ZN11CStringBaseIwED2Ev.exit345.thread431:        ; preds = %bb.dx, %_ZN8NArchive4NZipL13IsAsciiStringERK11CStringBaseIwE.exit
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.0) #20
  br label %_ZN11CStringBaseIwED2Ev.exit345.thread

_ZN11CStringBaseIwED2Ev.exit345:                  ; preds = %.lr.ph.i
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.0) #20
  br label %bb.eo

bb.dy:                                            ; preds = %bb.dl, %bb.dv
  %i.nz = landingpad { ptr, i32 }
          catch ptr @_ZTI16CSystemException
          catch ptr null
  br label %bb.eq

_ZN11CStringBaseIwED2Ev.exit345.thread:           ; preds = %_ZN8NArchive4NZipL13IsAsciiStringERK11CStringBaseIwE.exit, %_ZN11CStringBaseIwED2Ev.exit345.thread431
  %i.oa = load i8, ptr %i.ne, align 8, !tbaa !105, !range !94, !noundef !95
  %i.ob = trunc nuw i8 %i.oa to i1
  %i.oc = getelementptr inbounds nuw i8, ptr %17, i64 96 ; 5 uses
  %i.od = load i32, ptr %i.oc, align 8
  %i.oe = icmp ugt i32 %i.od, 99
  %or.cond436 = select i1 %i.ob, i1 %i.oe, i1 false
  br i1 %or.cond436, label %bb.eo, label %bb.dz

bb.dz:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit345.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #18
  %i.of = load ptr, ptr %18, align 8, !tbaa !171  ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 3 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %20, i64 12 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %20, i8 0, i64 16, i1 false)
  %wcslen.i.i347 = call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.of)
  %i.oi = trunc i64 %wcslen.i.i347 to i32         ; 3 uses
  %i.oj = add nsw i32 %i.oi, 1                    ; 3 uses
  %i.ok = icmp ne i32 %i.oj, 0
  call void @llvm.assume(i1 %i.ok)
  %i.ol = zext nneg i32 %i.oj to i64
  %i.om = icmp slt i32 %i.oi, -1
  %i.on = shl nuw nsw i64 %i.ol, 2
  %i.oo = select i1 %i.om, i64 -1, i64 %i.on
  %i.op = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.oo) #19
          to label %.noexc363 unwind label %bb.ej ; 10 uses

.noexc363:                                        ; preds = %bb.dz
  %i.oq = ptrtoaddr ptr %i.op to i64
  %i.or = load i32, ptr %i.oh, align 4, !tbaa !70
  %i.os = icmp sgt i32 %i.or, 0
  %.pre4.i348 = load i32, ptr %i.og, align 8, !tbaa !71 ; 5 uses
  br i1 %i.os, label %.preheader.i.i353, label %bb.ea

.preheader.i.i353:                                ; preds = %.noexc363
  %i.ot = icmp sgt i32 %.pre4.i348, 0
  %.pre.i.i354 = load ptr, ptr %20, align 8, !tbaa !72 ; 9 uses
  br i1 %i.ot, label %.lr.ph.i.i358, label %._crit_edge.i.i355

.lr.ph.i.i358:                                    ; preds = %.preheader.i.i353
  %.pre.i.i354621 = ptrtoaddr ptr %.pre.i.i354 to i64
  %wide.trip.count.i.i359 = zext nneg i32 %.pre4.i348 to i64 ; 5 uses
  %min.iters.check623 = icmp ult i32 %.pre4.i348, 8
  %i.ou = sub i64 %.pre.i.i354621, %i.oq
  %diff.check625 = icmp ugt i64 %i.ou, -32
  %or.cond690 = select i1 %min.iters.check623, i1 true, i1 %diff.check625
  br i1 %or.cond690, label %scalar.ph622.preheader, label %vector.ph626

vector.ph626:                                     ; preds = %.lr.ph.i.i358
  %n.vec627 = and i64 %wide.trip.count.i.i359, 2147483640 ; 3 uses
  br label %vector.body628

vector.body628:                                   ; preds = %vector.body628, %vector.ph626
  %index629 = phi i64 [ 0, %vector.ph626 ], [ %index.next632, %vector.body628 ] ; 3 uses
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i354, i64 %index629 ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 16
  %wide.load630 = load <4 x i32>, ptr %i.ov, align 4, !tbaa !74
  %wide.load631 = load <4 x i32>, ptr %i.ow, align 4, !tbaa !74
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %i.op, i64 %index629 ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 16
  store <4 x i32> %wide.load630, ptr %i.ox, align 4, !tbaa !74
  store <4 x i32> %wide.load631, ptr %i.oy, align 4, !tbaa !74
  %index.next632 = add nuw i64 %index629, 8       ; 2 uses
  %i.oz = icmp eq i64 %index.next632, %n.vec627
  br i1 %i.oz, label %middle.block633, label %vector.body628, !llvm.loop !139

middle.block633:                                  ; preds = %vector.body628
  %cmp.n634 = icmp eq i64 %n.vec627, %wide.trip.count.i.i359
  br i1 %cmp.n634, label %._crit_edge.thread.i.i356, label %scalar.ph622.preheader

scalar.ph622.preheader:                           ; preds = %.lr.ph.i.i358, %middle.block633
  %indvars.iv.i.i360.ph = phi i64 [ 0, %.lr.ph.i.i358 ], [ %n.vec627, %middle.block633 ] ; 3 uses
  %xtraiter702 = and i64 %wide.trip.count.i.i359, 3 ; 2 uses
  %lcmp.mod703.not = icmp eq i64 %xtraiter702, 0
  br i1 %lcmp.mod703.not, label %scalar.ph622.prol.loopexit, label %scalar.ph622.prol

scalar.ph622.prol:                                ; preds = %scalar.ph622.preheader, %scalar.ph622.prol
  %indvars.iv.i.i360.prol = phi i64 [ %indvars.iv.next.i.i361.prol, %scalar.ph622.prol ], [ %indvars.iv.i.i360.ph, %scalar.ph622.preheader ] ; 3 uses
  %prol.iter704 = phi i64 [ %prol.iter704.next, %scalar.ph622.prol ], [ 0, %scalar.ph622.preheader ]
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i354, i64 %indvars.iv.i.i360.prol
  %i.pb = load i32, ptr %i.pa, align 4, !tbaa !74
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %i.op, i64 %indvars.iv.i.i360.prol
  store i32 %i.pb, ptr %i.pc, align 4, !tbaa !74
  %indvars.iv.next.i.i361.prol = add nuw nsw i64 %indvars.iv.i.i360.prol, 1 ; 2 uses
  %prol.iter704.next = add i64 %prol.iter704, 1   ; 2 uses
  %prol.iter704.cmp.not = icmp eq i64 %prol.iter704.next, %xtraiter702
  br i1 %prol.iter704.cmp.not, label %scalar.ph622.prol.loopexit, label %scalar.ph622.prol, !llvm.loop !140

scalar.ph622.prol.loopexit:                       ; preds = %scalar.ph622.prol, %scalar.ph622.preheader
  %indvars.iv.i.i360.unr = phi i64 [ %indvars.iv.i.i360.ph, %scalar.ph622.preheader ], [ %indvars.iv.next.i.i361.prol, %scalar.ph622.prol ]
  %i.pd = sub nsw i64 %indvars.iv.i.i360.ph, %wide.trip.count.i.i359
  %i.pe = icmp ugt i64 %i.pd, -4
  br i1 %i.pe, label %._crit_edge.thread.i.i356, label %scalar.ph622

._crit_edge.i.i355:                               ; preds = %.preheader.i.i353
  %i.pf = icmp eq ptr %.pre.i.i354, null
  br i1 %i.pf, label %bb.ea, label %._crit_edge.thread.i.i356

scalar.ph622:                                     ; preds = %scalar.ph622.prol.loopexit, %scalar.ph622
  %indvars.iv.i.i360 = phi i64 [ %indvars.iv.next.i.i361.3, %scalar.ph622 ], [ %indvars.iv.i.i360.unr, %scalar.ph622.prol.loopexit ] ; 6 uses
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i354, i64 %indvars.iv.i.i360
  %i.ph = load i32, ptr %i.pg, align 4, !tbaa !74
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %i.op, i64 %indvars.iv.i.i360
  store i32 %i.ph, ptr %i.pi, align 4, !tbaa !74
  %indvars.iv.next.i.i361 = add nuw nsw i64 %indvars.iv.i.i360, 1 ; 2 uses
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i354, i64 %indvars.iv.next.i.i361
  %i.pk = load i32, ptr %i.pj, align 4, !tbaa !74
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %i.op, i64 %indvars.iv.next.i.i361
  store i32 %i.pk, ptr %i.pl, align 4, !tbaa !74
  %indvars.iv.next.i.i361.1 = add nuw nsw i64 %indvars.iv.i.i360, 2 ; 2 uses
  %i.pm = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i354, i64 %indvars.iv.next.i.i361.1
  %i.pn = load i32, ptr %i.pm, align 4, !tbaa !74
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %i.op, i64 %indvars.iv.next.i.i361.1
  store i32 %i.pn, ptr %i.po, align 4, !tbaa !74
  %indvars.iv.next.i.i361.2 = add nuw nsw i64 %indvars.iv.i.i360, 3 ; 2 uses
  %i.pp = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i354, i64 %indvars.iv.next.i.i361.2
  %i.pq = load i32, ptr %i.pp, align 4, !tbaa !74
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %i.op, i64 %indvars.iv.next.i.i361.2
  store i32 %i.pq, ptr %i.pr, align 4, !tbaa !74
  %indvars.iv.next.i.i361.3 = add nuw nsw i64 %indvars.iv.i.i360, 4 ; 2 uses
  %exitcond.not.i.i362.3 = icmp eq i64 %indvars.iv.next.i.i361.3, %wide.trip.count.i.i359
  br i1 %exitcond.not.i.i362.3, label %._crit_edge.thread.i.i356, label %scalar.ph622, !llvm.loop !141

._crit_edge.thread.i.i356:                        ; preds = %scalar.ph622.prol.loopexit, %scalar.ph622, %middle.block633, %._crit_edge.i.i355
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i354) #20
  %.pre.i357 = load i32, ptr %i.og, align 8, !tbaa !71
  br label %bb.ea

bb.ea:                                            ; preds = %._crit_edge.thread.i.i356, %._crit_edge.i.i355, %.noexc363
  %i.ps = phi i32 [ %.pre.i357, %._crit_edge.thread.i.i356 ], [ %.pre4.i348, %._crit_edge.i.i355 ], [ %.pre4.i348, %.noexc363 ]
  store ptr %i.op, ptr %20, align 8, !tbaa !72
  %i.pt = sext i32 %i.ps to i64
  %i.pu = getelementptr inbounds [4 x i8], ptr %i.op, i64 %i.pt
  store i32 0, ptr %i.pu, align 4, !tbaa !74
  store i32 %i.oj, ptr %i.oh, align 4, !tbaa !70
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i349

_ZN11CStringBaseIwE11SetCapacityEi.exit.i349:     ; preds = %bb.ea, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i349
  %.04.i.i350 = phi ptr [ %i.px, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i349 ], [ %i.op, %bb.ea ] ; 2 uses
  %.0.i.i351 = phi ptr [ %i.pv, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i349 ], [ %i.of, %bb.ea ] ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %.0.i.i351, i64 4
  %i.pw = load i32, ptr %.0.i.i351, align 4, !tbaa !74 ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %.04.i.i350, i64 4
  store i32 %i.pw, ptr %.04.i.i350, align 4, !tbaa !74
  %.not.i.i352 = icmp eq i32 %i.pw, 0
  br i1 %.not.i.i352, label %bb.eb, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i349, !llvm.loop !0

bb.eb:                                            ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i349
  store i32 %i.oi, ptr %i.og, align 8, !tbaa !71
  invoke void @_Z24UnicodeStringToMultiByteRK11CStringBaseIwEj(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %19, ptr noundef nonnull align 8 dereferenceable(16) %20, i32 noundef 1)
          to label %bb.ec unwind label %bb.ek

bb.ec:                                            ; preds = %bb.eb
  %i.py = getelementptr inbounds nuw i8, ptr %17, i64 88 ; 4 uses
  store i32 0, ptr %i.oc, align 8, !tbaa !57
  %i.pz = load ptr, ptr %i.py, align 8, !tbaa !58
  store i8 0, ptr %i.pz, align 1, !tbaa !59
  %i.qa = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %i.qb = load i32, ptr %i.qa, align 8, !tbaa !57
  %i.qc = add nsw i32 %i.qb, 1                    ; 3 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %17, i64 100 ; 3 uses
  %i.qe = load i32, ptr %i.qd, align 4, !tbaa !56
  %i.qf = icmp eq i32 %i.qc, %i.qe
  br i1 %i.qf, label %._ZN11CStringBaseIcE11SetCapacityEi.exit_crit_edge.i, label %bb.ed

._ZN11CStringBaseIcE11SetCapacityEi.exit_crit_edge.i: ; preds = %bb.ec
  %.pre8.i = load ptr, ptr %i.py, align 8, !tbaa !58
  br label %_ZN11CStringBaseIcE11SetCapacityEi.exit.i

bb.ed:                                            ; preds = %bb.ec
  %i.qg = sext i32 %i.qc to i64
  %i.qh = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.qg) #19
          to label %.noexc378 unwind label %bb.el ; 11 uses

.noexc378:                                        ; preds = %bb.ed
  %i.qi = ptrtoaddr ptr %i.qh to i64
  %i.qj = load i32, ptr %i.qd, align 4, !tbaa !56
  %i.qk = icmp sgt i32 %i.qj, 0
  %.pre7.i = load i32, ptr %i.oc, align 8, !tbaa !57 ; 6 uses
  br i1 %i.qk, label %.preheader.i.i368, label %bb.ee

.preheader.i.i368:                                ; preds = %.noexc378
  %i.ql = icmp sgt i32 %.pre7.i, 0
  %.pre.i.i369 = load ptr, ptr %i.py, align 8, !tbaa !58 ; 10 uses
  br i1 %i.ql, label %iter.check655, label %._crit_edge.i.i370

iter.check655:                                    ; preds = %.preheader.i.i368
  %.pre.i.i369639 = ptrtoaddr ptr %.pre.i.i369 to i64
  %wide.trip.count.i.i374 = zext nneg i32 %.pre7.i to i64 ; 8 uses
  %min.iters.check641 = icmp ult i32 %.pre7.i, 4
  %i.qm = sub i64 %.pre.i.i369639, %i.qi
  %diff.check643 = icmp ugt i64 %i.qm, -32
  %or.cond691 = select i1 %min.iters.check641, i1 true, i1 %diff.check643
  br i1 %or.cond691, label %vec.epilog.scalar.ph657.preheader, label %vector.main.loop.iter.check644

vector.main.loop.iter.check644:                   ; preds = %iter.check655
  %min.iters.check645 = icmp ult i32 %.pre7.i, 32
  br i1 %min.iters.check645, label %vec.epilog.ph659, label %vector.ph646

vector.ph646:                                     ; preds = %vector.main.loop.iter.check644
  %i.qn = and i64 %wide.trip.count.i.i374, 28
  %n.vec647 = and i64 %wide.trip.count.i.i374, 2147483616 ; 4 uses
  br label %vector.body648

vector.body648:                                   ; preds = %vector.ph646, %vector.body648
  %index649 = phi i64 [ 0, %vector.ph646 ], [ %index.next652, %vector.body648 ] ; 3 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %.pre.i.i369, i64 %index649 ; 2 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 16
  %wide.load650 = load <16 x i8>, ptr %i.qo, align 1, !tbaa !59
  %wide.load651 = load <16 x i8>, ptr %i.qp, align 1, !tbaa !59
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qh, i64 %index649 ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 16
  store <16 x i8> %wide.load650, ptr %i.qq, align 1, !tbaa !59
  store <16 x i8> %wide.load651, ptr %i.qr, align 1, !tbaa !59
  %index.next652 = add nuw i64 %index649, 32      ; 2 uses
  %i.qs = icmp eq i64 %index.next652, %n.vec647
end_hunk_1
begin_hunk_2_@_ZN8NArchive4NZip22CCompressionMethodModeC2Ev:bb.a
  %indvars.iv.i.i12 = phi i64 [ %indvars.iv.next.i.i13, %vec.epilog.scalar.ph ], [ %indvars.iv.i.i12.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.pre.i.i6, i64 %indvars.iv.i.i12
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !59
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aa, i64 %indvars.iv.i.i12
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !59
  %indvars.iv.next.i.i13 = add nuw nsw i64 %indvars.iv.i.i12, 1 ; 2 uses
  %exitcond.not.i.i14 = icmp eq i64 %indvars.iv.next.i.i13, %wide.trip.count.i.i11
  br i1 %exitcond.not.i.i14, label %._crit_edge.thread.i.i8, label %vec.epilog.scalar.ph, !llvm.loop !202

._crit_edge.thread.i.i8:                          ; preds = %vec.epilog.scalar.ph, %middle.block27, %vec.epilog.middle.block, %._crit_edge.i.i7
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i.i6) #20
  %.pre.i9 = load i32, ptr %i.y, align 8, !tbaa !57
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread.i.i8, %._crit_edge.i.i7, %.noexc15
  %i.ar = phi i32 [ %.pre1.i4, %.noexc15 ], [ %.pre1.i4, %._crit_edge.i.i7 ], [ %.pre.i9, %._crit_edge.thread.i.i8 ]
  store ptr %i.aa, ptr %i.x, align 8, !tbaa !58
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds i8, ptr %i.aa, i64 %i.as
  store i8 0, ptr %i.at, align 1, !tbaa !59
  store i32 4, ptr %i.z, align 4, !tbaa !56
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 0, ptr %i.au, align 8, !tbaa !105
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 105
  store i8 3, ptr %i.av, align 1, !tbaa !107
  ret void

bb.d:                                             ; preds = %bb.a
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit

bb.e:                                             ; preds = %bb.b
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ay = load ptr, ptr %i.c, align 8, !tbaa !72  ; 2 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %_ZN11CStringBaseIwED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdaPv(ptr noundef nonnull %i.ay) #20
  br label %_ZN11CStringBaseIwED2Ev.exit

_ZN11CStringBaseIwED2Ev.exit:                     ; preds = %bb.f, %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.aw, %bb.d ], [ %i.ax, %bb.e ], [ %i.ax, %bb.f ]
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  resume { ptr, i32 } %.pn
}

declare noundef i32 @_ZN8NArchive4NZip6UpdateERK13CObjectVectorINS0_7CItemExEERKS1_INS0_11CUpdateItemEEP20ISequentialOutStreamPNS0_10CInArchiveEPNS0_22CCompressionMethodModeEP22IArchiveUpdateCallback(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8NArchive4NZip22CCompressionMethodModeD2Ev(ptr noundef nonnull align 8 dead_on_return(106) dereferenceable(106) %0) unnamed_addr #5 comdat align 2 !guid !204 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN11CStringBaseIcED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #20
  br label %_ZN11CStringBaseIcED2Ev.exit

_ZN11CStringBaseIcED2Ev.exit:                     ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !72   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZN11CStringBaseIwED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN11CStringBaseIcED2Ev.exit
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #20
  br label %_ZN11CStringBaseIwED2Ev.exit

_ZN11CStringBaseIwED2Ev.exit:                     ; preds = %_ZN11CStringBaseIcED2Ev.exit, %bb.c
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13CObjectVectorIN8NArchive4NZip11CUpdateItemEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !guid !205 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip11CUpdateItemEE, i64 16), ptr %0, align 8, !tbaa !49
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #21
  unreachable
}

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #7

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: uwtable
define dso_local noundef i32 @_ZThn8_N8NArchive4NZip8CHandler11UpdateItemsEP20ISequentialOutStreamjP22IArchiveUpdateCallback(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #8 align 2 !guid !206 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8
  %i.b = tail call noundef i32 @_ZN8NArchive4NZip8CHandler11UpdateItemsEP20ISequentialOutStreamjP22IArchiveUpdateCallback(ptr noundef nonnull align 8 dereferenceable(256) %i.a, ptr noundef %1, i32 noundef %2, ptr noundef %3)
  ret i32 %i.b
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN8NArchive4NZip8CHandler13SetPropertiesEPPKwPK14tagPROPVARIANTi(ptr noundef nonnull align 8 dereferenceable(256) initializes((208, 251), (252, 256)) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !guid !275 {
bb.a:
  %4 = alloca %class.CStringBase.3, align 8       ; 34 uses
  %i.a = alloca i32, align 4                      ; 7 uses
  %5 = alloca %class.CStringBase.3, align 8       ; 10 uses
  %6 = alloca %class.CStringBase.3, align 8       ; 7 uses
  %7 = alloca %class.CStringBase.3, align 8       ; 19 uses
  %8 = alloca %class.CStringBase.3, align 8       ; 7 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %9 = alloca %class.CStringBase.3, align 8       ; 10 uses
  %10 = alloca %class.CStringBase.3, align 8      ; 7 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %11 = alloca %class.CStringBase.3, align 8      ; 10 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %12 = alloca %class.CStringBase.3, align 8      ; 10 uses
  %13 = alloca %class.CStringBase.3, align 8      ; 7 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  %14 = alloca %class.CStringBase.3, align 8      ; 10 uses
  %15 = alloca %class.CStringBase.3, align 8      ; 7 uses
  %i.f = alloca i32, align 4                      ; 7 uses
  %16 = alloca %class.CStringBase.3, align 8      ; 10 uses
  %17 = alloca %class.CStringBase.3, align 8      ; 7 uses
  %i.g = alloca i32, align 4                      ; 7 uses
  %18 = alloca %class.CStringBase.3, align 8      ; 10 uses
  %19 = alloca %class.CStringBase.3, align 8      ; 7 uses
  %20 = alloca %class.CStringBase.3, align 8      ; 7 uses
  %21 = alloca %class.CStringBase.3, align 8      ; 7 uses
  %i.h = alloca i32, align 4                      ; 7 uses
  %22 = alloca %class.CStringBase.3, align 8      ; 7 uses
  %i.i = tail call noundef i32 @_ZN8NWindows7NSystem21GetNumberOfProcessorsEv() ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 252 ; 3 uses
  store i32 %i.i, ptr %i.j, align 4, !tbaa !120
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.k, i8 -1, i64 36, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 245
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 246
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 247
  store <4 x i8> <i8 0, i8 0, i8 0, i8 3>, ptr %i.l, align 4, !tbaa !59
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  store i8 0, ptr %i.p, align 8, !tbaa !93
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 249 ; 4 uses
  store i8 0, ptr %i.q, align 1, !tbaa !98
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 250 ; 4 uses
  store i8 0, ptr %i.r, align 2, !tbaa !99
  %i.s = tail call noundef i32 @_ZN8NWindows7NSystem21GetNumberOfProcessorsEv()
  store i32 %i.s, ptr %i.j, align 4, !tbaa !120
  %.not232573 = icmp sgt i32 %3, 0
  br i1 %.not232573, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 12 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.w = getelementptr inbounds nuw i8, ptr %18, i64 12 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.z = getelementptr inbounds nuw i8, ptr %16, i64 12 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.ac = getelementptr inbounds nuw i8, ptr %14, i64 12 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.af = getelementptr inbounds nuw i8, ptr %12, i64 12 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 12 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 9 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN11CStringBaseIwED2Ev.exit423.jt4
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN11CStringBaseIwED2Ev.exit423.jt4 ] ; 3 uses
  %.0146574 = phi i32 [ undef, %.lr.ph ], [ %.17163.jt4, %_ZN11CStringBaseIwED2Ev.exit423.jt4 ] ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !276 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %wcslen.i.i = call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.au)
  %i.av = trunc i64 %wcslen.i.i to i32            ; 3 uses
  %i.aw = add nsw i32 %i.av, 1                    ; 3 uses
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ay = zext nneg i32 %i.aw to i64
  %i.az = icmp slt i32 %i.av, -1
  %i.ba = shl nuw nsw i64 %i.ay, 2
  %i.bb = select i1 %i.az, i64 -1, i64 %i.ba
  %i.bc = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bb) #19 ; 10 uses
  %i.bd = ptrtoaddr ptr %i.bc to i64
  %i.be = load i32, ptr %i.u, align 4, !tbaa !70
  %i.bf = icmp sgt i32 %i.be, 0
  %.pre4.i = load i32, ptr %i.t, align 8, !tbaa !71 ; 5 uses
  br i1 %i.bf, label %.preheader.i.i, label %bb.d

.preheader.i.i:                                   ; preds = %bb.c
  %i.bg = icmp sgt i32 %.pre4.i, 0
  %.pre.i.i = load ptr, ptr %4, align 8, !tbaa !72 ; 9 uses
  br i1 %i.bg, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %.pre.i.i886 = ptrtoaddr ptr %.pre.i.i to i64
  %wide.trip.count.i.i = zext nneg i32 %.pre4.i to i64 ; 5 uses
  %min.iters.check888 = icmp ult i32 %.pre4.i, 8
  %i.bh = sub i64 %.pre.i.i886, %i.bd
  %diff.check890 = icmp ugt i64 %i.bh, -32
  %or.cond901 = select i1 %min.iters.check888, i1 true, i1 %diff.check890
  br i1 %or.cond901, label %scalar.ph887.preheader, label %vector.ph891

vector.ph891:                                     ; preds = %.lr.ph.i.i
  %n.vec892 = and i64 %wide.trip.count.i.i, 2147483640 ; 3 uses
  br label %vector.body893

vector.body893:                                   ; preds = %vector.body893, %vector.ph891
  %index894 = phi i64 [ 0, %vector.ph891 ], [ %index.next897, %vector.body893 ] ; 3 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %index894 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %wide.load895 = load <4 x i32>, ptr %i.bi, align 4, !tbaa !74
  %wide.load896 = load <4 x i32>, ptr %i.bj, align 4, !tbaa !74
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %index894 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store <4 x i32> %wide.load895, ptr %i.bk, align 4, !tbaa !74
  store <4 x i32> %wide.load896, ptr %i.bl, align 4, !tbaa !74
  %index.next897 = add nuw i64 %index894, 8       ; 2 uses
  %i.bm = icmp eq i64 %index.next897, %n.vec892
  br i1 %i.bm, label %middle.block898, label %vector.body893, !llvm.loop !207

middle.block898:                                  ; preds = %vector.body893
  %cmp.n899 = icmp eq i64 %n.vec892, %wide.trip.count.i.i
  br i1 %cmp.n899, label %._crit_edge.thread.i.i, label %scalar.ph887.preheader

scalar.ph887.preheader:                           ; preds = %.lr.ph.i.i, %middle.block898
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec892, %middle.block898 ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph887.prol.loopexit, label %scalar.ph887.prol

scalar.ph887.prol:                                ; preds = %scalar.ph887.preheader, %scalar.ph887.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %scalar.ph887.prol ], [ %indvars.iv.i.i.ph, %scalar.ph887.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph887.prol ], [ 0, %scalar.ph887.preheader ]
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.i.i.prol
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !74
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv.i.i.prol
  store i32 %i.bo, ptr %i.bp, align 4, !tbaa !74
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph887.prol.loopexit, label %scalar.ph887.prol, !llvm.loop !208

scalar.ph887.prol.loopexit:                       ; preds = %scalar.ph887.prol, %scalar.ph887.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %scalar.ph887.preheader ], [ %indvars.iv.next.i.i.prol, %scalar.ph887.prol ]
  %i.bq = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %i.br = icmp ugt i64 %i.bq, -4
  br i1 %i.br, label %._crit_edge.thread.i.i, label %scalar.ph887

._crit_edge.i.i:                                  ; preds = %.preheader.i.i
  %i.bs = icmp eq ptr %.pre.i.i, null
  br i1 %i.bs, label %bb.d, label %._crit_edge.thread.i.i

scalar.ph887:                                     ; preds = %scalar.ph887.prol.loopexit, %scalar.ph887
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %scalar.ph887 ], [ %indvars.iv.i.i.unr, %scalar.ph887.prol.loopexit ] ; 6 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.i.i
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !74
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv.i.i
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !74
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !74
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv.next.i.i
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !74
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.1
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !74
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv.next.i.i.1
  store i32 %i.ca, ptr %i.cb, align 4, !tbaa !74
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.2
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !74
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv.next.i.i.2
  store i32 %i.cd, ptr %i.ce, align 4, !tbaa !74
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.thread.i.i, label %scalar.ph887, !llvm.loop !209

._crit_edge.thread.i.i:                           ; preds = %scalar.ph887.prol.loopexit, %scalar.ph887, %middle.block898, %._crit_edge.i.i
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i) #20
  %.pre.i = load i32, ptr %i.t, align 8, !tbaa !71
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.thread.i.i, %._crit_edge.i.i, %bb.c
  %i.cf = phi i32 [ %.pre.i, %._crit_edge.thread.i.i ], [ %.pre4.i, %._crit_edge.i.i ], [ %.pre4.i, %bb.c ]
  store ptr %i.bc, ptr %4, align 8, !tbaa !72
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.cg
  store i32 0, ptr %i.ch, align 4, !tbaa !74
  store i32 %i.aw, ptr %i.u, align 4, !tbaa !70
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %bb.d, %bb.b
  %i.ci = phi ptr [ null, %bb.b ], [ %i.bc, %bb.d ] ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %i.ci, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.cl, %bb.e ] ; 2 uses
  %.0.i.i = phi ptr [ %i.au, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.cj, %bb.e ] ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  %i.ck = load i32, ptr %.0.i.i, align 4, !tbaa !74 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  store i32 %i.ck, ptr %.04.i.i, align 4, !tbaa !74
  %.not.i.i = icmp eq i32 %i.ck, 0
  br i1 %.not.i.i, label %_ZN11CStringBaseIwEC2EPKw.exit, label %bb.e, !llvm.loop !0

_ZN11CStringBaseIwEC2EPKw.exit:                   ; preds = %bb.e
  store i32 %i.av, ptr %i.t, align 8, !tbaa !71
  %i.cm = invoke noundef ptr @_Z13MyStringUpperPw(ptr noundef %i.ci)
          to label %_ZN11CStringBaseIwE9MakeUpperEv.exit unwind label %bb.ga ; 0 uses

_ZN11CStringBaseIwE9MakeUpperEv.exit:             ; preds = %_ZN11CStringBaseIwEC2EPKw.exit
  %i.cn = load i32, ptr %i.t, align 8, !tbaa !71  ; 8 uses
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %.loopexit668, label %bb.f

bb.f:                                             ; preds = %_ZN11CStringBaseIwE9MakeUpperEv.exit
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv ; 17 uses
  %i.cq = load ptr, ptr %4, align 8, !tbaa !72    ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !74
  %i.cs = icmp eq i32 %i.cr, 88
  br i1 %i.cs, label %bb.g, label %bb.p

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 9, ptr %i.a, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.ct = add i32 %i.cn, -1                       ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !277)
  store i64 0, ptr %i.as, align 8, !alias.scope !277
  %i.cu = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #19
          to label %.noexc427 unwind label %bb.k  ; 5 uses

.noexc427:                                        ; preds = %bb.g
  store ptr %i.cu, ptr %5, align 8, !tbaa !72, !alias.scope !277
  store i32 0, ptr %i.cu, align 4, !tbaa !74, !noalias !277
  store i32 4, ptr %i.ar, align 4, !tbaa !70, !alias.scope !277
  %i.cv = icmp eq i32 %i.cn, 4
  br i1 %i.cv, label %.lr.ph.i, label %bb.h

bb.h:                                             ; preds = %.noexc427
  %i.cw = zext nneg i32 %i.cn to i64
  %i.cx = icmp slt i32 %i.cn, 0
  %i.cy = shl nuw nsw i64 %i.cw, 2
  %i.cz = select i1 %i.cx, i64 -1, i64 %i.cy
  %i.da = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.cz) #19
          to label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i425 unwind label %_ZN11CStringBaseIwED2Ev.exit.i, !noalias !277 ; 4 uses

_ZN11CStringBaseIwE11SetCapacityEi.exit.i425:     ; preds = %bb.h
  call void @_ZdaPv(ptr noundef nonnull %i.cu) #20, !noalias !277
  store ptr %i.da, ptr %5, align 8, !tbaa !72, !alias.scope !277
  store i32 0, ptr %i.da, align 4, !tbaa !74, !noalias !277
  store i32 %i.cn, ptr %i.ar, align 4, !tbaa !70, !alias.scope !277
  %i.db = icmp sgt i32 %i.cn, 1
  br i1 %i.db, label %.lr.ph.i, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.._crit_edge_crit_edge.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.._crit_edge_crit_edge.i: ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i425
  %.pre.i426 = sext i32 %i.ct to i64
  br label %.loopexit

.lr.ph.i:                                         ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i425, %.noexc427
  %i.dc = phi ptr [ %i.da, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i425 ], [ %i.cu, %.noexc427 ] ; 10 uses
  %i.dd = load ptr, ptr %4, align 8, !tbaa !72, !noalias !277 ; 2 uses
  %i.de = zext i32 %i.ct to i64                   ; 8 uses
  %invariant.gep.i = getelementptr i8, ptr %i.dd, i64 4 ; 6 uses
  %min.iters.check = icmp ult i32 %i.cn, 9
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.df = ptrtoaddr ptr %i.dd to i64
  %i.dg = ptrtoaddr ptr %i.dc to i64
  %i.dh = sub i64 %i.dg, %i.df
  %i.di = add i64 %i.dh, -5
  %diff.check = icmp ult i64 %i.di, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.de, 2147483640              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dj = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %index ; 2 uses
  %i.dk = getelementptr i8, ptr %i.dj, i64 16
  %wide.load = load <4 x i32>, ptr %i.dj, align 4, !tbaa !74, !noalias !277
  %wide.load732 = load <4 x i32>, ptr %i.dk, align 4, !tbaa !74, !noalias !277
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %index ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  store <4 x i32> %wide.load, ptr %i.dl, align 4, !tbaa !74, !noalias !277
  store <4 x i32> %wide.load732, ptr %i.dm, align 4, !tbaa !74, !noalias !277
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dn = icmp eq i64 %index.next, %n.vec
  br i1 %i.dn, label %middle.block, label %vector.body, !llvm.loop !212

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.de
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter961 = and i64 %i.de, 3                 ; 2 uses
  %lcmp.mod962.not = icmp eq i64 %xtraiter961, 0
  br i1 %lcmp.mod962.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter963 = phi i64 [ %prol.iter963.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %gep.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i.prol
  %i.do = load i32, ptr %gep.i.prol, align 4, !tbaa !74, !noalias !277
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.i.prol
  store i32 %i.do, ptr %i.dp, align 4, !tbaa !74, !noalias !277
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter963.next = add i64 %prol.iter963, 1   ; 2 uses
  %prol.iter963.cmp.not = icmp eq i64 %prol.iter963.next, %xtraiter961
  br i1 %prol.iter963.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !213

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph.prol ]
  %i.dq = sub nsw i64 %indvars.iv.i.ph, %i.de
  %i.dr = icmp ugt i64 %i.dq, -4
  br i1 %i.dr, label %.loopexit, label %scalar.ph

_ZN11CStringBaseIwED2Ev.exit.i:                   ; preds = %bb.h
  %i.ds = landingpad { ptr, i32 }
          cleanup
  call void @_ZdaPv(ptr noundef nonnull %i.cu) #20, !noalias !277
  br label %.body

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %scalar.ph ], [ %indvars.iv.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  %i.dt = load i32, ptr %gep.i, align 4, !tbaa !74, !noalias !277
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.i
  store i32 %i.dt, ptr %i.du, align 4, !tbaa !74, !noalias !277
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %gep.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i
  %i.dv = load i32, ptr %gep.i.1, align 4, !tbaa !74, !noalias !277
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.next.i
  store i32 %i.dv, ptr %i.dw, align 4, !tbaa !74, !noalias !277
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %gep.i.2 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.1
  %i.dx = load i32, ptr %gep.i.2, align 4, !tbaa !74, !noalias !277
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.next.i.1
  store i32 %i.dx, ptr %i.dy, align 4, !tbaa !74, !noalias !277
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %gep.i.3 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.2
  %i.dz = load i32, ptr %gep.i.3, align 4, !tbaa !74, !noalias !277
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.next.i.2
  store i32 %i.dz, ptr %i.ea, align 4, !tbaa !74, !noalias !277
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond605.not.3 = icmp eq i64 %indvars.iv.next.i.3, %i.de
  br i1 %exitcond605.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !214

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZN11CStringBaseIwE11SetCapacityEi.exit.._crit_edge_crit_edge.i
  %i.eb = phi ptr [ %i.da, %_ZN11CStringBaseIwE11SetCapacityEi.exit.._crit_edge_crit_edge.i ], [ %i.dc, %middle.block ], [ %i.dc, %scalar.ph ], [ %i.dc, %scalar.ph.prol.loopexit ]
  %.pre-phi.i = phi i64 [ %.pre.i426, %_ZN11CStringBaseIwE11SetCapacityEi.exit.._crit_edge_crit_edge.i ], [ %i.de, %middle.block ], [ %i.de, %scalar.ph ], [ %i.de, %scalar.ph.prol.loopexit ]
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.eb, i64 %.pre-phi.i
  store i32 0, ptr %i.ec, align 4, !tbaa !74, !noalias !277
  store i32 %i.ct, ptr %i.as, align 8, !tbaa !71, !alias.scope !277
  %i.ed = invoke noundef i32 @_Z14ParsePropValueRK11CStringBaseIwERK14tagPROPVARIANTRj(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.cp, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.i unwind label %bb.l       ; 2 uses

bb.i:                                             ; preds = %.loopexit
  %i.ee = load ptr, ptr %5, align 8, !tbaa !72    ; 2 uses
  %i.ef = icmp eq ptr %i.ee, null
  br i1 %i.ef, label %_ZN11CStringBaseIwED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZdaPv(ptr noundef nonnull %i.ee) #20
  br label %_ZN11CStringBaseIwED2Ev.exit

_ZN11CStringBaseIwED2Ev.exit:                     ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %.not231 = icmp eq i32 %i.ed, 0
  br i1 %.not231, label %bb.o, label %bb.n

bb.k:                                             ; preds = %bb.g
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.l:                                             ; preds = %.loopexit
  %i.eh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ei = load ptr, ptr %5, align 8, !tbaa !72    ; 2 uses
  %i.ej = icmp eq ptr %i.ei, null
  br i1 %i.ej, label %.body, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZdaPv(ptr noundef nonnull %i.ei) #20
  br label %.body

.body:                                            ; preds = %bb.m, %bb.l, %bb.k, %_ZN11CStringBaseIwED2Ev.exit.i
  %.pn227 = phi { ptr, i32 } [ %i.ds, %_ZN11CStringBaseIwED2Ev.exit.i ], [ %i.eg, %bb.k ], [ %i.eh, %bb.l ], [ %i.eh, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %_ZN11CStringBaseIwED2Ev.exit278

bb.n:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %.loopexit668

bb.o:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit
  %i.ek = load i32, ptr %i.a, align 4, !tbaa !9
  store i32 %i.ek, ptr %i.k, align 8, !tbaa !108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.gd

bb.p:                                             ; preds = %bb.f
  %i.el = invoke noundef i32 @_Z15MyStringComparePKwS0_(ptr noundef nonnull %i.cq, ptr noundef nonnull @.str)
          to label %bb.q unwind label %bb.ga

bb.q:                                             ; preds = %bb.p
  %i.em = icmp eq i32 %i.el, 0
  br i1 %i.em, label %bb.r, label %bb.am

bb.r:                                             ; preds = %bb.q
  %i.en = load i16, ptr %i.cp, align 8, !tbaa !76
  switch i16 %i.en, label %.loopexit668 [
    i16 8, label %bb.s
    i16 19, label %bb.ak
  ]

bb.s:                                             ; preds = %bb.r
  %i.eo = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !59 ; 2 uses
  %wcslen.i.i257 = call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.ep)
  %i.eq = trunc i64 %wcslen.i.i257 to i32         ; 2 uses
  %i.er = add nsw i32 %i.eq, 1                    ; 2 uses
  %i.es = icmp eq i32 %i.er, 0
  br i1 %i.es, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i259, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.et = zext nneg i32 %i.er to i64
  %i.eu = icmp slt i32 %i.eq, -1
  %i.ev = shl nuw nsw i64 %i.et, 2
  %i.ew = select i1 %i.eu, i64 -1, i64 %i.ev
  %i.ex = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ew) #19
          to label %.noexc unwind label %bb.ga    ; 2 uses

.noexc:                                           ; preds = %bb.t
  store i32 0, ptr %i.ex, align 4, !tbaa !74
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i259

_ZN11CStringBaseIwE11SetCapacityEi.exit.i259:     ; preds = %.noexc, %bb.s
  %.sroa.0540.0 = phi ptr [ null, %bb.s ], [ %i.ex, %.noexc ] ; 12 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i259
  %.04.i.i260 = phi ptr [ %.sroa.0540.0, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i259 ], [ %i.fa, %bb.u ] ; 2 uses
  %.0.i.i261 = phi ptr [ %i.ep, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i259 ], [ %i.ey, %bb.u ] ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.0.i.i261, i64 4
  %i.ez = load i32, ptr %.0.i.i261, align 4, !tbaa !74 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.04.i.i260, i64 4
  store i32 %i.ez, ptr %.04.i.i260, align 4, !tbaa !74
  %.not.i.i262 = icmp eq i32 %i.ez, 0
  br i1 %.not.i.i262, label %_ZN11CStringBaseIwEC2EPKw.exit273, label %bb.u, !llvm.loop !0

_ZN11CStringBaseIwEC2EPKw.exit273:                ; preds = %bb.u
  %i.fb = invoke noundef ptr @_Z13MyStringUpperPw(ptr noundef %.sroa.0540.0)
          to label %_ZN11CStringBaseIwE9MakeUpperEv.exit275 unwind label %bb.w ; 0 uses

_ZN11CStringBaseIwE9MakeUpperEv.exit275:          ; preds = %_ZN11CStringBaseIwEC2EPKw.exit273
  %i.fc = invoke noundef i32 @_Z15MyStringComparePKwS0_(ptr noundef %.sroa.0540.0, ptr noundef nonnull @.str.1)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %_ZN11CStringBaseIwE9MakeUpperEv.exit275
  %i.fd = icmp eq i32 %i.fc, 0
  br i1 %i.fd, label %.sink.split, label %bb.y

bb.w:                                             ; preds = %bb.ag, %bb.ae, %bb.ac, %bb.aa, %bb.y, %_ZN11CStringBaseIwE9MakeUpperEv.exit275, %_ZN11CStringBaseIwEC2EPKw.exit273
  %i.fe = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ff = icmp eq ptr %.sroa.0540.0, null
  br i1 %i.ff, label %_ZN11CStringBaseIwED2Ev.exit278, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0540.0) #20
  br label %_ZN11CStringBaseIwED2Ev.exit278

bb.y:                                             ; preds = %bb.v
  %i.fg = invoke noundef i32 @_Z15MyStringComparePKwS0_(ptr noundef %.sroa.0540.0, ptr noundef nonnull @.str.2)
          to label %bb.z unwind label %bb.w

bb.z:                                             ; preds = %bb.y
  %i.fh = icmp eq i32 %i.fg, 0
  br i1 %i.fh, label %.sink.split, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fi = invoke noundef i32 @_Z15MyStringComparePKwS0_(ptr noundef %.sroa.0540.0, ptr noundef nonnull @.str.3)
          to label %bb.ab unwind label %bb.w

bb.ab:                                            ; preds = %bb.aa
  %i.fj = icmp eq i32 %i.fi, 0
  br i1 %i.fj, label %.sink.split, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fk = invoke noundef i32 @_Z15MyStringComparePKwS0_(ptr noundef %.sroa.0540.0, ptr noundef nonnull @.str.4)
          to label %bb.ad unwind label %bb.w

bb.ad:                                            ; preds = %bb.ac
  %i.fl = icmp eq i32 %i.fk, 0
  br i1 %i.fl, label %.sink.split, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fm = invoke noundef i32 @_Z15MyStringComparePKwS0_(ptr noundef %.sroa.0540.0, ptr noundef nonnull @.str.5)
          to label %bb.af unwind label %bb.w

bb.af:                                            ; preds = %bb.ae
  %i.fn = icmp eq i32 %i.fm, 0
  br i1 %i.fn, label %.sink.split, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fo = invoke noundef i32 @_Z15MyStringComparePKwS0_(ptr noundef %.sroa.0540.0, ptr noundef nonnull @.str.6)
          to label %bb.ah unwind label %bb.w

bb.ah:                                            ; preds = %bb.ag
  %i.fp = icmp eq i32 %i.fo, 0
  br i1 %i.fp, label %.sink.split, label %bb.ai

.sink.split:                                      ; preds = %bb.ah, %bb.af, %bb.ad, %bb.ab, %bb.z, %bb.v
  %.sink = phi i32 [ 0, %bb.v ], [ 8, %bb.z ], [ 12, %bb.ad ], [ 14, %bb.af ], [ 9, %bb.ab ], [ 98, %bb.ah ]
  store i32 %.sink, ptr %i.aq, align 4, !tbaa !109
  br label %bb.ai

bb.ai:                                            ; preds = %.sink.split, %bb.ah
  %.2148 = phi i32 [ -2147024809, %bb.ah ], [ %.0146574, %.sink.split ] ; 2 uses
  %cond20 = phi i1 [ false, %bb.ah ], [ true, %.sink.split ]
  %i.fq = icmp eq ptr %.sroa.0540.0, null
  br i1 %i.fq, label %_ZN11CStringBaseIwED2Ev.exit289, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0540.0) #20
  br label %_ZN11CStringBaseIwED2Ev.exit289

_ZN11CStringBaseIwED2Ev.exit289:                  ; preds = %bb.ai, %bb.aj
  br i1 %cond20, label %bb.gd, label %.loopexit668

bb.ak:                                            ; preds = %bb.r
  %i.fr = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.fs = load i32, ptr %i.fr, align 8, !tbaa !59 ; 2 uses
  switch i32 %i.fs, label %.loopexit668 [
    i32 0, label %bb.al
    i32 8, label %bb.al
    i32 9, label %bb.al
    i32 12, label %bb.al
    i32 14, label %bb.al
  ]

bb.al:                                            ; preds = %bb.ak, %bb.ak, %bb.ak, %bb.ak, %bb.ak
  store i32 %i.fs, ptr %i.aq, align 4, !tbaa !109
  br label %bb.gd

bb.am:                                            ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  invoke void @_ZNK11CStringBaseIwE3MidEii(ptr dead_on_unwind nonnull writable sret(%class.CStringBase.3) align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef 0, i32 noundef 2)
          to label %_ZNK11CStringBaseIwE4LeftEi.exit unwind label %bb.bc

_ZNK11CStringBaseIwE4LeftEi.exit:                 ; preds = %bb.am
  %i.ft = load ptr, ptr %6, align 8, !tbaa !72
  %i.fu = invoke noundef i32 @_Z15MyStringComparePKwS0_(ptr noundef %i.ft, ptr noundef nonnull @.str.7)
          to label %bb.an unwind label %bb.bd

bb.an:                                            ; preds = %_ZNK11CStringBaseIwE4LeftEi.exit
  %i.fv = icmp eq i32 %i.fu, 0
  %i.fw = load ptr, ptr %6, align 8, !tbaa !72    ; 2 uses
  %i.fx = icmp eq ptr %i.fw, null
  br i1 %i.fx, label %_ZN11CStringBaseIwED2Ev.exit293, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @_ZdaPv(ptr noundef nonnull %i.fw) #20
  br label %_ZN11CStringBaseIwED2Ev.exit293

_ZN11CStringBaseIwED2Ev.exit293:                  ; preds = %bb.an, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br i1 %i.fv, label %bb.ap, label %bb.bu

bb.ap:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit293
  %i.fy = load i16, ptr %i.cp, align 8, !tbaa !76
  %i.fz = icmp eq i16 %i.fy, 8
  br i1 %i.fz, label %bb.aq, label %.loopexit668

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.ga = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !59 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %wcslen.i.i294 = call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.gb)
  %i.gc = trunc i64 %wcslen.i.i294 to i32         ; 3 uses
  %i.gd = add nsw i32 %i.gc, 1                    ; 3 uses
  %i.ge = icmp eq i32 %i.gd, 0
  br i1 %i.ge, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i296, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gf = zext nneg i32 %i.gd to i64
  %i.gg = icmp slt i32 %i.gc, -1
  %i.gh = shl nuw nsw i64 %i.gf, 2
  %i.gi = select i1 %i.gg, i64 -1, i64 %i.gh
  %i.gj = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.gi) #19
          to label %.noexc310 unwind label %bb.bf ; 10 uses

.noexc310:                                        ; preds = %bb.ar
  %i.gk = ptrtoaddr ptr %i.gj to i64
  %i.gl = load i32, ptr %i.ap, align 4, !tbaa !70
  %i.gm = icmp sgt i32 %i.gl, 0
  %.pre4.i295 = load i32, ptr %i.ao, align 8, !tbaa !71 ; 5 uses
  br i1 %i.gm, label %.preheader.i.i300, label %bb.as

.preheader.i.i300:                                ; preds = %.noexc310
  %i.gn = icmp sgt i32 %.pre4.i295, 0
  %.pre.i.i301 = load ptr, ptr %7, align 8, !tbaa !72 ; 9 uses
  br i1 %i.gn, label %.lr.ph.i.i305, label %._crit_edge.i.i302

.lr.ph.i.i305:                                    ; preds = %.preheader.i.i300
  %.pre.i.i301772 = ptrtoaddr ptr %.pre.i.i301 to i64
  %wide.trip.count.i.i306 = zext nneg i32 %.pre4.i295 to i64 ; 5 uses
  %min.iters.check774 = icmp ult i32 %.pre4.i295, 8
  %i.go = sub i64 %.pre.i.i301772, %i.gk
  %diff.check776 = icmp ugt i64 %i.go, -32
  %or.cond902 = select i1 %min.iters.check774, i1 true, i1 %diff.check776
  br i1 %or.cond902, label %scalar.ph773.preheader, label %vector.ph777

vector.ph777:                                     ; preds = %.lr.ph.i.i305
  %n.vec778 = and i64 %wide.trip.count.i.i306, 2147483640 ; 3 uses
  br label %vector.body779

vector.body779:                                   ; preds = %vector.body779, %vector.ph777
  %index780 = phi i64 [ 0, %vector.ph777 ], [ %index.next783, %vector.body779 ] ; 3 uses
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i301, i64 %index780 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  %wide.load781 = load <4 x i32>, ptr %i.gp, align 4, !tbaa !74
  %wide.load782 = load <4 x i32>, ptr %i.gq, align 4, !tbaa !74
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %index780 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  store <4 x i32> %wide.load781, ptr %i.gr, align 4, !tbaa !74
  store <4 x i32> %wide.load782, ptr %i.gs, align 4, !tbaa !74
  %index.next783 = add nuw i64 %index780, 8       ; 2 uses
  %i.gt = icmp eq i64 %index.next783, %n.vec778
  br i1 %i.gt, label %middle.block784, label %vector.body779, !llvm.loop !215

middle.block784:                                  ; preds = %vector.body779
  %cmp.n785 = icmp eq i64 %n.vec778, %wide.trip.count.i.i306
  br i1 %cmp.n785, label %._crit_edge.thread.i.i303, label %scalar.ph773.preheader

scalar.ph773.preheader:                           ; preds = %.lr.ph.i.i305, %middle.block784
  %indvars.iv.i.i307.ph = phi i64 [ 0, %.lr.ph.i.i305 ], [ %n.vec778, %middle.block784 ] ; 3 uses
  %xtraiter952 = and i64 %wide.trip.count.i.i306, 3 ; 2 uses
  %lcmp.mod953.not = icmp eq i64 %xtraiter952, 0
  br i1 %lcmp.mod953.not, label %scalar.ph773.prol.loopexit, label %scalar.ph773.prol

scalar.ph773.prol:                                ; preds = %scalar.ph773.preheader, %scalar.ph773.prol
  %indvars.iv.i.i307.prol = phi i64 [ %indvars.iv.next.i.i308.prol, %scalar.ph773.prol ], [ %indvars.iv.i.i307.ph, %scalar.ph773.preheader ] ; 3 uses
  %prol.iter954 = phi i64 [ %prol.iter954.next, %scalar.ph773.prol ], [ 0, %scalar.ph773.preheader ]
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i301, i64 %indvars.iv.i.i307.prol
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !74
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %indvars.iv.i.i307.prol
  store i32 %i.gv, ptr %i.gw, align 4, !tbaa !74
  %indvars.iv.next.i.i308.prol = add nuw nsw i64 %indvars.iv.i.i307.prol, 1 ; 2 uses
  %prol.iter954.next = add i64 %prol.iter954, 1   ; 2 uses
  %prol.iter954.cmp.not = icmp eq i64 %prol.iter954.next, %xtraiter952
  br i1 %prol.iter954.cmp.not, label %scalar.ph773.prol.loopexit, label %scalar.ph773.prol, !llvm.loop !216

scalar.ph773.prol.loopexit:                       ; preds = %scalar.ph773.prol, %scalar.ph773.preheader
  %indvars.iv.i.i307.unr = phi i64 [ %indvars.iv.i.i307.ph, %scalar.ph773.preheader ], [ %indvars.iv.next.i.i308.prol, %scalar.ph773.prol ]
  %i.gx = sub nsw i64 %indvars.iv.i.i307.ph, %wide.trip.count.i.i306
  %i.gy = icmp ugt i64 %i.gx, -4
  br i1 %i.gy, label %._crit_edge.thread.i.i303, label %scalar.ph773

._crit_edge.i.i302:                               ; preds = %.preheader.i.i300
  %i.gz = icmp eq ptr %.pre.i.i301, null
  br i1 %i.gz, label %bb.as, label %._crit_edge.thread.i.i303

scalar.ph773:                                     ; preds = %scalar.ph773.prol.loopexit, %scalar.ph773
  %indvars.iv.i.i307 = phi i64 [ %indvars.iv.next.i.i308.3, %scalar.ph773 ], [ %indvars.iv.i.i307.unr, %scalar.ph773.prol.loopexit ] ; 6 uses
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i301, i64 %indvars.iv.i.i307
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !74
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %indvars.iv.i.i307
  store i32 %i.hb, ptr %i.hc, align 4, !tbaa !74
  %indvars.iv.next.i.i308 = add nuw nsw i64 %indvars.iv.i.i307, 1 ; 2 uses
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i301, i64 %indvars.iv.next.i.i308
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !74
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %indvars.iv.next.i.i308
  store i32 %i.he, ptr %i.hf, align 4, !tbaa !74
  %indvars.iv.next.i.i308.1 = add nuw nsw i64 %indvars.iv.i.i307, 2 ; 2 uses
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i301, i64 %indvars.iv.next.i.i308.1
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !74
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %indvars.iv.next.i.i308.1
  store i32 %i.hh, ptr %i.hi, align 4, !tbaa !74
  %indvars.iv.next.i.i308.2 = add nuw nsw i64 %indvars.iv.i.i307, 3 ; 2 uses
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i301, i64 %indvars.iv.next.i.i308.2
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !74
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %indvars.iv.next.i.i308.2
  store i32 %i.hk, ptr %i.hl, align 4, !tbaa !74
  %indvars.iv.next.i.i308.3 = add nuw nsw i64 %indvars.iv.i.i307, 4 ; 2 uses
  %exitcond.not.i.i309.3 = icmp eq i64 %indvars.iv.next.i.i308.3, %wide.trip.count.i.i306
  br i1 %exitcond.not.i.i309.3, label %._crit_edge.thread.i.i303, label %scalar.ph773, !llvm.loop !217

._crit_edge.thread.i.i303:                        ; preds = %scalar.ph773.prol.loopexit, %scalar.ph773, %middle.block784, %._crit_edge.i.i302
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i301) #20
  %.pre.i304 = load i32, ptr %i.ao, align 8, !tbaa !71
  br label %bb.as

bb.as:                                            ; preds = %._crit_edge.thread.i.i303, %._crit_edge.i.i302, %.noexc310
  %i.hm = phi i32 [ %.pre.i304, %._crit_edge.thread.i.i303 ], [ %.pre4.i295, %._crit_edge.i.i302 ], [ %.pre4.i295, %.noexc310 ]
  store ptr %i.gj, ptr %7, align 8, !tbaa !72
  %i.hn = sext i32 %i.hm to i64
  %i.ho = getelementptr inbounds [4 x i8], ptr %i.gj, i64 %i.hn
  store i32 0, ptr %i.ho, align 4, !tbaa !74
  store i32 %i.gd, ptr %i.ap, align 4, !tbaa !70
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i296

_ZN11CStringBaseIwE11SetCapacityEi.exit.i296:     ; preds = %bb.as, %bb.aq
  %i.hp = phi ptr [ null, %bb.aq ], [ %i.gj, %bb.as ] ; 2 uses
  br label %bb.at

bb.at:                                            ; preds = %bb.at, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i296
  %.04.i.i297 = phi ptr [ %i.hp, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i296 ], [ %i.hs, %bb.at ] ; 2 uses
  %.0.i.i298 = phi ptr [ %i.gb, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i296 ], [ %i.hq, %bb.at ] ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.0.i.i298, i64 4
  %i.hr = load i32, ptr %.0.i.i298, align 4, !tbaa !74 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.04.i.i297, i64 4
  store i32 %i.hr, ptr %.04.i.i297, align 4, !tbaa !74
  %.not.i.i299 = icmp eq i32 %i.hr, 0
  br i1 %.not.i.i299, label %bb.au, label %bb.at, !llvm.loop !0

bb.au:                                            ; preds = %bb.at
  store i32 %i.gc, ptr %i.ao, align 8, !tbaa !71
  %i.ht = invoke noundef ptr @_Z13MyStringUpperPw(ptr noundef %i.hp)
          to label %_ZN11CStringBaseIwE9MakeUpperEv.exit313 unwind label %bb.bj ; 0 uses

_ZN11CStringBaseIwE9MakeUpperEv.exit313:          ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  invoke void @_ZNK11CStringBaseIwE3MidEii(ptr dead_on_unwind nonnull writable sret(%class.CStringBase.3) align 8 %8, ptr noundef nonnull align 8 dereferenceable(16) %7, i32 noundef 0, i32 noundef 3)
          to label %_ZNK11CStringBaseIwE4LeftEi.exit315 unwind label %bb.bg

_ZNK11CStringBaseIwE4LeftEi.exit315:              ; preds = %_ZN11CStringBaseIwE9MakeUpperEv.exit313
  %i.hu = load ptr, ptr %8, align 8, !tbaa !72
  %i.hv = invoke noundef i32 @_Z15MyStringComparePKwS0_(ptr noundef %i.hu, ptr noundef nonnull @.str.8)
          to label %bb.av unwind label %bb.bh

bb.av:                                            ; preds = %_ZNK11CStringBaseIwE4LeftEi.exit315
  %i.hw = icmp eq i32 %i.hv, 0
  %i.hx = load ptr, ptr %8, align 8, !tbaa !72    ; 2 uses
  %i.hy = icmp eq ptr %i.hx, null
  br i1 %i.hy, label %_ZN11CStringBaseIwED2Ev.exit318, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @_ZdaPv(ptr noundef nonnull %i.hx) #20
  br label %_ZN11CStringBaseIwED2Ev.exit318

_ZN11CStringBaseIwED2Ev.exit318:                  ; preds = %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br i1 %i.hw, label %bb.ax, label %bb.bp

bb.ax:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit318
  %i.hz = load i32, ptr %i.ao, align 8, !tbaa !71, !noalias !278 ; 5 uses
  %i.ia = add i32 %i.hz, -3                       ; 4 uses
  %i.ib = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #19
          to label %.noexc439 unwind label %bb.bj ; 4 uses

.noexc439:                                        ; preds = %bb.ax
  store i32 0, ptr %i.ib, align 4, !tbaa !74, !noalias !279
  %i.ic = add nsw i32 %i.hz, -2                   ; 5 uses
  %i.id = icmp eq i32 %i.ic, 4
  br i1 %i.id, label %.lr.ph.i434, label %bb.ay

bb.ay:                                            ; preds = %.noexc439
  %i.ie = zext i32 %i.ic to i64
  %i.if = icmp slt i32 %i.hz, 2
  %i.ig = shl nuw nsw i64 %i.ie, 2
  %i.ih = select i1 %i.if, i64 -1, i64 %i.ig
  %i.ii = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ih) #19
          to label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i430 unwind label %_ZN11CStringBaseIwED2Ev.exit.i429, !noalias !279 ; 3 uses

_ZN11CStringBaseIwE11SetCapacityEi.exit.i430:     ; preds = %bb.ay
  call void @_ZdaPv(ptr noundef nonnull %i.ib) #20, !noalias !279
  store i32 0, ptr %i.ii, align 4, !tbaa !74, !noalias !279
  %i.ij = icmp sgt i32 %i.hz, 3
  br i1 %i.ij, label %.lr.ph.i434, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.._crit_edge_crit_edge.i431

_ZN11CStringBaseIwE11SetCapacityEi.exit.._crit_edge_crit_edge.i431: ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i430
  %.pre.i432 = sext i32 %i.ia to i64
  %.pre = load ptr, ptr %7, align 8, !tbaa !72
  br label %.loopexit551

.lr.ph.i434:                                      ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i430, %.noexc439
  %.sroa.0.0 = phi ptr [ %i.ib, %.noexc439 ], [ %i.ii, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i430 ] ; 10 uses
  %i.ik = load ptr, ptr %7, align 8, !tbaa !72, !noalias !279 ; 5 uses
end_hunk_2
