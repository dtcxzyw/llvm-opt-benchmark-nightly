Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/IpLimMemQuasiNewtonUpdater?download=true
inline.NumInlined: 2195
inline.NumDeleted: 654
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN5Ipopt24LimMemQuasiNewtonUpdater12ShiftLMatrixERNS_8SmartPtrINS_14DenseGenMatrixEEERKNS_17MultiVectorMatrixES7_:bb.a
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.i4.i56, i64 8 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !8
  %i.cv = add nsw i32 %i.cu, -1                   ; 2 uses
  store i32 %i.cv, ptr %i.ct, align 8, !tbaa !8
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %bb.l, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit

bb.l:                                             ; preds = %bb.k
  %i.cx = load ptr, ptr %.0.i4.i56, align 8, !tbaa !10
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i56) #20, !inline_history !115
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit:        ; preds = %bb.l, %bb.k
  %i.da = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 8 ; 2 uses
  %i.db = load i32, ptr %i.da, align 8, !tbaa !8
  %i.dc = add nsw i32 %i.db, -1                   ; 2 uses
  store i32 %i.dc, ptr %i.da, align 8, !tbaa !8
  %i.dd = icmp eq i32 %i.dc, 0
  br i1 %i.dd, label %bb.m, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit66

bb.m:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit
  %i.de = load ptr, ptr %.0.i4.i, align 8, !tbaa !10
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load ptr, ptr %i.df, align 8
  call void %i.dg(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i) #20, !inline_history !115
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit66

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit66:      ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit, %bb.m
  %indvars.iv.next122 = add nuw nsw i64 %indvars.iv121, 1 ; 2 uses
  %exitcond125.not = icmp eq i64 %indvars.iv.next122, %wide.trip.count124
  br i1 %exitcond125.not, label %.preheader, label %bb.f, !llvm.loop !477

.thread:                                          ; preds = %.noexc62, %bb.j, %bb.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %bb.h
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.thread
  %lpad.phi88 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread ], [ %lpad.thr_comm.split-lp, %bb.n ] ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.0.i4.i56, i64 8 ; 2 uses
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !8
  %i.dj = add nsw i32 %i.di, -1                   ; 2 uses
  store i32 %i.dj, ptr %i.dh, align 8, !tbaa !8
  %i.dk = icmp eq i32 %i.dj, 0
  br i1 %i.dk, label %bb.p, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit68.thread

bb.p:                                             ; preds = %bb.o
  %i.dl = load ptr, ptr %.0.i4.i56, align 8, !tbaa !10
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8
  call void %i.dn(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i56) #20, !inline_history !115
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit68.thread

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit68.thread: ; preds = %bb.o, %bb.p
  %i.do = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 8 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !8
  %i.dq = add nsw i32 %i.dp, -1                   ; 2 uses
  store i32 %i.dq, ptr %i.do, align 8, !tbaa !8
  %i.dr = icmp eq i32 %i.dq, 0
  br i1 %i.dr, label %bb.q, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit70

bb.q:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit68.thread
  %i.ds = load ptr, ptr %.0.i4.i, align 8, !tbaa !10
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.du = load ptr, ptr %i.dt, align 8
  call void %i.du(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i) #20, !inline_history !115
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit70

._crit_edge106:                                   ; preds = %.lr.ph105, %.preheader
  %i.dv = load i32, ptr %i.k, align 8, !tbaa !8
  %i.dw = add nsw i32 %i.dv, 1
  store i32 %i.dw, ptr %i.k, align 8, !tbaa !8
  %i.dx = load ptr, ptr %1, align 8, !tbaa !67    ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.dx, null
  br i1 %.not.i.i.i.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %._crit_edge106
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8 ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !8
  %i.ea = add nsw i32 %i.dz, -1                   ; 2 uses
  store i32 %i.ea, ptr %i.dy, align 8, !tbaa !8
  %i.eb = icmp eq i32 %i.ea, 0
  br i1 %i.eb, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ec = load ptr, ptr %i.dx, align 8, !tbaa !10
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8
  call void %i.ee(ptr noundef nonnull align 8 dereferenceable(104) %i.dx) #20, !inline_history !336
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge106, %bb.r, %bb.s
  store ptr %i.i, ptr %1, align 8, !tbaa !67
  %i.ef = load i32, ptr %i.k, align 8, !tbaa !8
  %i.eg = add nsw i32 %i.ef, -1                   ; 2 uses
  store i32 %i.eg, ptr %i.k, align 8, !tbaa !8
  %i.eh = icmp eq i32 %i.eg, 0
  br i1 %i.eh, label %bb.u, label %_ZN5Ipopt8SmartPtrINS_14DenseGenMatrixEED2Ev.exit

bb.u:                                             ; preds = %bb.t
  %i.ei = load ptr, ptr %i.i, align 8, !tbaa !10
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8
  call void %i.ek(ptr noundef nonnull align 8 dereferenceable(104) %i.i) #20, !inline_history !286
  br label %_ZN5Ipopt8SmartPtrINS_14DenseGenMatrixEED2Ev.exit

_ZN5Ipopt8SmartPtrINS_14DenseGenMatrixEED2Ev.exit: ; preds = %bb.t, %bb.u
  ret void

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit70:      ; preds = %bb.d, %bb.e, %bb.q, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit68.thread
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.au, %bb.d ], [ %i.av, %bb.e ], [ %lpad.phi88, %bb.q ], [ %lpad.phi88, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit68.thread ] ; 2 uses
  %i.el = load i32, ptr %i.k, align 8, !tbaa !8
  %i.em = add nsw i32 %i.el, -1                   ; 2 uses
  store i32 %i.em, ptr %i.k, align 8, !tbaa !8
  %i.en = icmp eq i32 %i.em, 0
  br i1 %i.en, label %bb.v, label %common.resume

bb.v:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit70
  %i.eo = load ptr, ptr %i.i, align 8, !tbaa !10
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8
  call void %i.eq(ptr noundef nonnull align 8 dereferenceable(104) %i.i) #20, !inline_history !286
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define void @_ZN5Ipopt24LimMemQuasiNewtonUpdater16ShiftSdotSMatrixERNS_8SmartPtrINS_14DenseSymMatrixEEERKNS_17MultiVectorMatrixE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !70     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !438
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !439  ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !376, !noalias !478
  %i.i = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #23, !noalias !478 ; 11 uses
  invoke void @_ZN5Ipopt14DenseSymMatrixC1EPKNS_19DenseSymMatrixSpaceE(ptr noundef nonnull align 8 dereferenceable(97) %i.i, ptr noundef nonnull align 8 dereferenceable(20) %i.h)
          to label %_ZNK5Ipopt14DenseSymMatrix21MakeNewDenseSymMatrixEv.exit unwind label %bb.b, !noalias !478

common.resume:                                    ; preds = %bb.v, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit64, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.b ], [ %.pn.pn.pn.pn, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit64 ], [ %.pn.pn.pn.pn, %bb.v ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 104) #21, !noalias !478
  br label %common.resume

_ZNK5Ipopt14DenseSymMatrix21MakeNewDenseSymMatrixEv.exit: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 8 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !8, !noalias !478
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %i.k, align 8, !tbaa !8, !noalias !478
  %i.n = load ptr, ptr %1, align 8, !tbaa !70     ; 3 uses
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(97) %i.n)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZNK5Ipopt14DenseSymMatrix21MakeNewDenseSymMatrixEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  store i8 1, ptr %i.o, align 8, !tbaa !440
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !441  ; 2 uses
  %i.r = ptrtoaddr ptr %i.q to i64
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(97) %i.i)
          to label %_ZN5Ipopt14DenseSymMatrix6ValuesEv.exit45 unwind label %bb.e

_ZN5Ipopt14DenseSymMatrix6ValuesEv.exit45:        ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  store i8 1, ptr %i.s, align 8, !tbaa !440
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !441  ; 3 uses
  %i.v = add i32 %i.f, -1                         ; 3 uses
  %i.w = icmp sgt i32 %i.f, 1
  br i1 %i.w, label %.preheader87.preheader, label %.preheader

.preheader87.preheader:                           ; preds = %_ZN5Ipopt14DenseSymMatrix6ValuesEv.exit45
  %i.x = ptrtoaddr ptr %i.u to i64
  %i.y = zext nneg i32 %i.v to i64
  %i.z = zext nneg i32 %i.f to i64                ; 3 uses
  %wide.trip.count = zext i32 %i.v to i64         ; 2 uses
  %i.aa = shl nuw nsw i64 %i.z, 3
  %i.ab = add i64 %i.aa, %i.r
  %i.ac = sub i64 %i.x, %i.ab
  %i.ad = add i64 %i.ac, -9
  %diff.check = icmp ult i64 %i.ad, 31
  br label %.preheader87

.preheader87:                                     ; preds = %.preheader87.preheader, %.loopexit
  %indvars.iv = phi i64 [ 0, %.preheader87.preheader ], [ %indvars.iv.next, %.loopexit ] ; 7 uses
  %i.ae = add nuw i64 %indvars.iv, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ae, i64 %wide.trip.count)
  %i.af = sub nsw i64 %umax, %indvars.iv          ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ag = mul nuw nsw i64 %indvars.iv.next, %i.z
  %i.ah = mul nuw nsw i64 %indvars.iv, %i.z
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.ag ; 2 uses
  %invariant.gep124 = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.ah ; 2 uses
  %min.iters.check = icmp ult i64 %i.af, 4
  %brmerge = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader87
  %n.vec = and i64 %i.af, -4                      ; 3 uses
  %i.ai = add i64 %indvars.iv, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aj = add nuw i64 %indvars.iv, %index         ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.aj ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %wide.load = load <2 x double>, ptr %i.al, align 8, !tbaa !284
  %wide.load137 = load <2 x double>, ptr %i.am, align 8, !tbaa !284
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep124, i64 %i.aj ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store <2 x double> %wide.load, ptr %i.an, align 8, !tbaa !284
  store <2 x double> %wide.load137, ptr %i.ao, align 8, !tbaa !284
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !481

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.af, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader87, %middle.block
  %indvars.iv104.ph = phi i64 [ %i.ai, %middle.block ], [ %indvars.iv, %.preheader87 ]
  br label %scalar.ph

.preheader:                                       ; preds = %.loopexit, %_ZN5Ipopt14DenseSymMatrix6ValuesEv.exit45
  %i.aq = icmp sgt i32 %i.f, 0
  br i1 %i.aq, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.as = zext nneg i32 %i.v to i64               ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.au = zext nneg i32 %i.f to i64
  %wide.trip.count111 = zext nneg i32 %i.f to i64
  %invariant.gep128.sink = getelementptr [8 x i8], ptr %i.u, i64 %i.as
  br label %bb.h

bb.d:                                             ; preds = %_ZNK5Ipopt14DenseSymMatrix21MakeNewDenseSymMatrixEv.exit
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit64

bb.e:                                             ; preds = %bb.c
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit64

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %.preheader87, !llvm.loop !482

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv104 = phi i64 [ %indvars.iv.next105, %scalar.ph ], [ %indvars.iv104.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1 ; 3 uses
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next105
  %i.ax = load double, ptr %gep, align 8, !tbaa !284
  %gep125 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep124, i64 %indvars.iv104
  store double %i.ax, ptr %gep125, align 8, !tbaa !284
  %i.ay = icmp samesign ult i64 %indvars.iv.next105, %i.y
  br i1 %i.ay, label %scalar.ph, label %.loopexit, !llvm.loop !483

._crit_edge:                                      ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit60, %.preheader
  %i.az = load i32, ptr %i.k, align 8, !tbaa !8
  %i.ba = add nsw i32 %i.az, 1
  store i32 %i.ba, ptr %i.k, align 8, !tbaa !8
  %i.bb = load ptr, ptr %1, align 8, !tbaa !70    ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i.i, label %bb.t, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !8
  %i.be = add nsw i32 %i.bd, -1                   ; 2 uses
  store i32 %i.be, ptr %i.bc, align 8, !tbaa !8
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.g, label %bb.t

bb.g:                                             ; preds = %bb.f
  %i.bg = load ptr, ptr %i.bb, align 8, !tbaa !10
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(97) %i.bb) #20, !inline_history !337
  br label %bb.t

bb.h:                                             ; preds = %.lr.ph, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit60
  %indvars.iv108 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next109, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit60 ] ; 4 uses
  %i.bj = load ptr, ptr %i.ar, align 8, !tbaa !149, !noalias !484 ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.as
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !157, !noalias !484 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i, label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i, label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i

_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i:  ; preds = %bb.h
  %i.bm = load ptr, ptr %i.at, align 8, !tbaa !158, !noalias !484
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.as
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !45, !noalias !484 ; 2 uses
  %.not.i.i.i46 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i46, label %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit, label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i

_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i: ; preds = %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i, %bb.h
  %.0.i3.i = phi ptr [ %i.bo, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i ], [ %i.bl, %bb.h ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 8 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !8, !noalias !484
  %i.br = add nsw i32 %i.bq, 1
  store i32 %i.br, ptr %i.bp, align 8, !tbaa !8, !noalias !484
  br label %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit

_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit:   ; preds = %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i
  %.0.i4.i = phi ptr [ null, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i ], [ %.0.i3.i, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i ] ; 18 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv108
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !157, !noalias !487 ; 2 uses
  %.not.i.i47 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i47, label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i51, label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i48

_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i51: ; preds = %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit
  %i.bu = load ptr, ptr %i.at, align 8, !tbaa !158, !noalias !487
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %indvars.iv108
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !45, !noalias !487 ; 2 uses
  %.not.i.i.i52 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i52, label %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit53, label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i48

_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i48: ; preds = %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i51, %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit
  %.0.i3.i49 = phi ptr [ %i.bw, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i51 ], [ %i.bt, %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.i3.i49, i64 8 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !8, !noalias !487
  %i.bz = add nsw i32 %i.by, 1
  store i32 %i.bz, ptr %i.bx, align 8, !tbaa !8, !noalias !487
  br label %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit53

_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit53: ; preds = %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i48, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i51
  %.0.i4.i50 = phi ptr [ null, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i51 ], [ %.0.i3.i49, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i48 ] ; 10 uses
  %i.ca = icmp eq ptr %.0.i4.i, %.0.i4.i50
  br i1 %i.ca, label %bb.i, label %bb.k

bb.i:                                             ; preds = %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit53
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 88 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !276
  %i.cd = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 48 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !116
  %.not.i.i54 = icmp eq i32 %i.cc, %i.ce
  br i1 %.not.i.i54, label %._crit_edge.i.i, label %bb.j

._crit_edge.i.i:                                  ; preds = %bb.i
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 96
  %.pre.i.i = load double, ptr %.phi.trans.insert.i.i, align 8, !tbaa !277
  br label %_ZNK5Ipopt6Vector3DotERKS0_.exit

bb.j:                                             ; preds = %bb.i
  %i.cf = load ptr, ptr %.0.i4.i, align 8, !tbaa !10
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 48
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = invoke noundef double %i.ch(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i)
          to label %.noexc unwind label %bb.p, !inline_history !332 ; 2 uses

.noexc:                                           ; preds = %bb.j
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 96
  store double %i.ci, ptr %i.cj, align 8, !tbaa !277
  %i.ck = load i32, ptr %i.cd, align 8, !tbaa !116
  store i32 %i.ck, ptr %i.cb, align 8, !tbaa !276
  br label %_ZNK5Ipopt6Vector3DotERKS0_.exit

bb.k:                                             ; preds = %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 64 ; 2 uses
  %i.cm = invoke noundef zeroext i1 @_ZN5Ipopt13CachedResultsIdE19GetCachedResult2DepERdPKNS_12TaggedObjectES5_(ptr noundef nonnull align 8 dereferenceable(24) %i.cl, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i, ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i50)
          to label %.noexc55 unwind label %.thread

.noexc55:                                         ; preds = %bb.k
  br i1 %i.cm, label %_ZNK5Ipopt6Vector3DotERKS0_.exit.thread, label %bb.l

bb.l:                                             ; preds = %.noexc55
  %i.cn = load ptr, ptr %.0.i4.i, align 8, !tbaa !10
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 40
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = invoke noundef double %i.cp(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i, ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i50)
          to label %.noexc56 unwind label %.thread, !inline_history !332

.noexc56:                                         ; preds = %bb.l
  store double %i.cq, ptr %i.a, align 8, !tbaa !284
  invoke void @_ZN5Ipopt13CachedResultsIdE19AddCachedResult2DepERKdPKNS_12TaggedObjectES6_(ptr noundef nonnull align 8 dereferenceable(24) %i.cl, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i, ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i50)
          to label %_ZNK5Ipopt6Vector3DotERKS0_.exit.thread unwind label %.thread

_ZNK5Ipopt6Vector3DotERKS0_.exit.thread:          ; preds = %.noexc55, %.noexc56
  %i.cr = load double, ptr %i.a, align 8, !tbaa !284
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.m
end_hunk_0
begin_hunk_1_@_ZN5Ipopt24LimMemQuasiNewtonUpdater18AugmentSTDRSMatrixERNS_8SmartPtrINS_14DenseSymMatrixEEERKNS_17MultiVectorMatrixES7_:bb.a
  %i.dr = load ptr, ptr %i.dq, align 8
  call void %i.dr(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i55) #20, !inline_history !115
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit:        ; preds = %bb.u, %bb.t
  %i.ds = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 8 ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !8
  %i.du = add nsw i32 %i.dt, -1                   ; 2 uses
  store i32 %i.du, ptr %i.ds, align 8, !tbaa !8
  %i.dv = icmp eq i32 %i.du, 0
  br i1 %i.dv, label %bb.v, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit66

bb.v:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit
  %i.dw = load ptr, ptr %.0.i4.i, align 8, !tbaa !10
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8
  call void %i.dy(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i) #20, !inline_history !115
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit66

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit66:      ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit, %bb.v
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 1 ; 2 uses
  %exitcond128.not = icmp eq i64 %indvars.iv.next125, %i.bn
  br i1 %exitcond128.not, label %._crit_edge, label %bb.o, !llvm.loop !506

.thread:                                          ; preds = %.noexc62, %bb.s, %bb.r
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %bb.q
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.thread
  %lpad.phi93 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread ], [ %lpad.thr_comm.split-lp, %bb.w ] ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.0.i4.i55, i64 8 ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !8
  %i.eb = add nsw i32 %i.ea, -1                   ; 2 uses
  store i32 %i.eb, ptr %i.dz, align 8, !tbaa !8
  %i.ec = icmp eq i32 %i.eb, 0
  br i1 %i.ec, label %bb.y, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit68.thread

bb.y:                                             ; preds = %bb.x
  %i.ed = load ptr, ptr %.0.i4.i55, align 8, !tbaa !10
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8
  call void %i.ef(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i55) #20, !inline_history !115
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit68.thread

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit68.thread: ; preds = %bb.x, %bb.y
  %i.eg = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 8 ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !8
  %i.ei = add nsw i32 %i.eh, -1                   ; 2 uses
  store i32 %i.ei, ptr %i.eg, align 8, !tbaa !8
  %i.ej = icmp eq i32 %i.ei, 0
  br i1 %i.ej, label %bb.z, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit70

bb.z:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit68.thread
  %i.ek = load ptr, ptr %.0.i4.i, align 8, !tbaa !10
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.em = load ptr, ptr %i.el, align 8
  call void %i.em(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i) #20, !inline_history !115
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit70

bb.aa:                                            ; preds = %._crit_edge, %bb.m, %bb.n
  store ptr %i.l, ptr %1, align 8, !tbaa !70
  %i.en = load i32, ptr %i.n, align 8, !tbaa !8
  %i.eo = add nsw i32 %i.en, -1                   ; 2 uses
  store i32 %i.eo, ptr %i.n, align 8, !tbaa !8
  %i.ep = icmp eq i32 %i.eo, 0
  br i1 %i.ep, label %bb.ab, label %_ZN5Ipopt8SmartPtrINS_14DenseSymMatrixEED2Ev.exit

bb.ab:                                            ; preds = %bb.aa
  %i.eq = load ptr, ptr %i.l, align 8, !tbaa !10
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.es = load ptr, ptr %i.er, align 8
  call void %i.es(ptr noundef nonnull align 8 dereferenceable(97) %i.l) #20, !inline_history !287
  br label %_ZN5Ipopt8SmartPtrINS_14DenseSymMatrixEED2Ev.exit

_ZN5Ipopt8SmartPtrINS_14DenseSymMatrixEED2Ev.exit: ; preds = %bb.ab, %bb.aa
  %i.et = load i32, ptr %i.i, align 8, !tbaa !8
  %i.eu = add nsw i32 %i.et, -1                   ; 2 uses
  store i32 %i.eu, ptr %i.i, align 8, !tbaa !8
  %i.ev = icmp eq i32 %i.eu, 0
  br i1 %i.ev, label %bb.ac, label %_ZN5Ipopt8SmartPtrINS_19DenseSymMatrixSpaceEED2Ev.exit

bb.ac:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_14DenseSymMatrixEED2Ev.exit
  %i.ew = load ptr, ptr %i.g, align 8, !tbaa !10
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8
  call void %i.ey(ptr noundef nonnull align 8 dereferenceable(20) %i.g) #20, !inline_history !288
  br label %_ZN5Ipopt8SmartPtrINS_19DenseSymMatrixSpaceEED2Ev.exit

_ZN5Ipopt8SmartPtrINS_19DenseSymMatrixSpaceEED2Ev.exit: ; preds = %_ZN5Ipopt8SmartPtrINS_14DenseSymMatrixEED2Ev.exit, %bb.ac
  ret void

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit70:      ; preds = %bb.k, %bb.l, %bb.z, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit68.thread
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bd, %bb.l ], [ %i.bc, %bb.k ], [ %lpad.phi93, %bb.z ], [ %lpad.phi93, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit68.thread ] ; 2 uses
  %i.ez = load i32, ptr %i.n, align 8, !tbaa !8
  %i.fa = add nsw i32 %i.ez, -1                   ; 2 uses
  store i32 %i.fa, ptr %i.n, align 8, !tbaa !8
  %i.fb = icmp eq i32 %i.fa, 0
  br i1 %i.fb, label %bb.ad, label %.body

bb.ad:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit70
  %i.fc = load ptr, ptr %i.l, align 8, !tbaa !10
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8
  call void %i.fe(ptr noundef nonnull align 8 dereferenceable(97) %i.l) #20, !inline_history !287
  br label %.body

.body:                                            ; preds = %bb.e, %bb.j, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit70, %bb.ad
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.m, %bb.e ], [ %i.bb, %bb.j ], [ %.pn.pn.pn, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit70 ], [ %.pn.pn.pn, %bb.ad ] ; 2 uses
  %i.ff = load i32, ptr %i.i, align 8, !tbaa !8
  %i.fg = add nsw i32 %i.ff, -1                   ; 2 uses
  store i32 %i.fg, ptr %i.i, align 8, !tbaa !8
  %i.fh = icmp eq i32 %i.fg, 0
  br i1 %i.fh, label %bb.ae, label %_ZN5Ipopt8SmartPtrINS_19DenseSymMatrixSpaceEED2Ev.exit76

bb.ae:                                            ; preds = %.body
  %i.fi = load ptr, ptr %i.g, align 8, !tbaa !10
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fk = load ptr, ptr %i.fj, align 8
  call void %i.fk(ptr noundef nonnull align 8 dereferenceable(20) %i.g) #20, !inline_history !288
  br label %_ZN5Ipopt8SmartPtrINS_19DenseSymMatrixSpaceEED2Ev.exit76

_ZN5Ipopt8SmartPtrINS_19DenseSymMatrixSpaceEED2Ev.exit76: ; preds = %bb.ae, %.body, %bb.i
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ba, %bb.i ], [ %.pn.pn.pn.pn, %.body ], [ %.pn.pn.pn.pn, %bb.ae ]
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN5Ipopt24LimMemQuasiNewtonUpdater16ShiftSTDRSMatrixERNS_8SmartPtrINS_14DenseSymMatrixEEERKNS_17MultiVectorMatrixES7_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !70     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !438
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !439  ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !376, !noalias !507
  %i.i = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #23, !noalias !507 ; 11 uses
  invoke void @_ZN5Ipopt14DenseSymMatrixC1EPKNS_19DenseSymMatrixSpaceE(ptr noundef nonnull align 8 dereferenceable(97) %i.i, ptr noundef nonnull align 8 dereferenceable(20) %i.h)
          to label %_ZNK5Ipopt14DenseSymMatrix21MakeNewDenseSymMatrixEv.exit unwind label %bb.b, !noalias !507

common.resume:                                    ; preds = %bb.v, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit64, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.b ], [ %.pn.pn.pn.pn, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit64 ], [ %.pn.pn.pn.pn, %bb.v ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 104) #21, !noalias !507
  br label %common.resume

_ZNK5Ipopt14DenseSymMatrix21MakeNewDenseSymMatrixEv.exit: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 8 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !8, !noalias !507
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %i.k, align 8, !tbaa !8, !noalias !507
  %i.n = load ptr, ptr %1, align 8, !tbaa !70     ; 3 uses
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(97) %i.n)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZNK5Ipopt14DenseSymMatrix21MakeNewDenseSymMatrixEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  store i8 1, ptr %i.o, align 8, !tbaa !440
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !441  ; 2 uses
  %i.r = ptrtoaddr ptr %i.q to i64
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(97) %i.i)
          to label %_ZN5Ipopt14DenseSymMatrix6ValuesEv.exit45 unwind label %bb.e

_ZN5Ipopt14DenseSymMatrix6ValuesEv.exit45:        ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  store i8 1, ptr %i.s, align 8, !tbaa !440
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !441  ; 3 uses
  %i.v = add i32 %i.f, -1                         ; 3 uses
  %i.w = icmp sgt i32 %i.f, 1
  br i1 %i.w, label %.preheader87.preheader, label %.preheader

.preheader87.preheader:                           ; preds = %_ZN5Ipopt14DenseSymMatrix6ValuesEv.exit45
  %i.x = ptrtoaddr ptr %i.u to i64
  %i.y = zext nneg i32 %i.v to i64
  %i.z = zext nneg i32 %i.f to i64                ; 3 uses
  %wide.trip.count = zext i32 %i.v to i64         ; 2 uses
  %i.aa = shl nuw nsw i64 %i.z, 3
  %i.ab = add i64 %i.aa, %i.r
  %i.ac = sub i64 %i.x, %i.ab
  %i.ad = add i64 %i.ac, -9
  %diff.check = icmp ult i64 %i.ad, 31
  br label %.preheader87

.preheader87:                                     ; preds = %.preheader87.preheader, %.loopexit
  %indvars.iv = phi i64 [ 0, %.preheader87.preheader ], [ %indvars.iv.next, %.loopexit ] ; 7 uses
  %i.ae = add nuw i64 %indvars.iv, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ae, i64 %wide.trip.count)
  %i.af = sub nsw i64 %umax, %indvars.iv          ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ag = mul nuw nsw i64 %indvars.iv.next, %i.z
  %i.ah = mul nuw nsw i64 %indvars.iv, %i.z
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.ag ; 2 uses
  %invariant.gep124 = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.ah ; 2 uses
  %min.iters.check = icmp ult i64 %i.af, 4
  %brmerge = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader87
  %n.vec = and i64 %i.af, -4                      ; 3 uses
  %i.ai = add i64 %indvars.iv, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aj = add nuw i64 %indvars.iv, %index         ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.aj ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %wide.load = load <2 x double>, ptr %i.al, align 8, !tbaa !284
  %wide.load137 = load <2 x double>, ptr %i.am, align 8, !tbaa !284
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep124, i64 %i.aj ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store <2 x double> %wide.load, ptr %i.an, align 8, !tbaa !284
  store <2 x double> %wide.load137, ptr %i.ao, align 8, !tbaa !284
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !510

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.af, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader87, %middle.block
  %indvars.iv104.ph = phi i64 [ %i.ai, %middle.block ], [ %indvars.iv, %.preheader87 ]
  br label %scalar.ph

.preheader:                                       ; preds = %.loopexit, %_ZN5Ipopt14DenseSymMatrix6ValuesEv.exit45
  %i.aq = icmp sgt i32 %i.f, 0
  br i1 %i.aq, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.as = zext nneg i32 %i.v to i64               ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.aw = zext nneg i32 %i.f to i64
  %wide.trip.count111 = zext nneg i32 %i.f to i64
  %invariant.gep128.sink = getelementptr [8 x i8], ptr %i.u, i64 %i.as
  br label %bb.h

bb.d:                                             ; preds = %_ZNK5Ipopt14DenseSymMatrix21MakeNewDenseSymMatrixEv.exit
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit64

bb.e:                                             ; preds = %bb.c
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit64

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %.preheader87, !llvm.loop !511

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv104 = phi i64 [ %indvars.iv.next105, %scalar.ph ], [ %indvars.iv104.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1 ; 3 uses
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next105
  %i.az = load double, ptr %gep, align 8, !tbaa !284
  %gep125 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep124, i64 %indvars.iv104
  store double %i.az, ptr %gep125, align 8, !tbaa !284
  %i.ba = icmp samesign ult i64 %indvars.iv.next105, %i.y
  br i1 %i.ba, label %scalar.ph, label %.loopexit, !llvm.loop !512

._crit_edge:                                      ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit60, %.preheader
  %i.bb = load i32, ptr %i.k, align 8, !tbaa !8
  %i.bc = add nsw i32 %i.bb, 1
  store i32 %i.bc, ptr %i.k, align 8, !tbaa !8
  %i.bd = load ptr, ptr %1, align 8, !tbaa !70    ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i, label %bb.t, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !8
  %i.bg = add nsw i32 %i.bf, -1                   ; 2 uses
  store i32 %i.bg, ptr %i.be, align 8, !tbaa !8
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.g, label %bb.t

bb.g:                                             ; preds = %bb.f
  %i.bi = load ptr, ptr %i.bd, align 8, !tbaa !10
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(97) %i.bd) #20, !inline_history !337
  br label %bb.t

bb.h:                                             ; preds = %.lr.ph, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit60
  %indvars.iv108 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next109, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit60 ] ; 4 uses
  %i.bl = load ptr, ptr %i.ar, align 8, !tbaa !149, !noalias !513
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.as
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !157, !noalias !513 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i, label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i, label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i

_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i:  ; preds = %bb.h
  %i.bo = load ptr, ptr %i.at, align 8, !tbaa !158, !noalias !513
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.as
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !45, !noalias !513 ; 2 uses
  %.not.i.i.i46 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i46, label %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit, label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i

_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i: ; preds = %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i, %bb.h
  %.0.i3.i = phi ptr [ %i.bq, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i ], [ %i.bn, %bb.h ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 8 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !8, !noalias !513
  %i.bt = add nsw i32 %i.bs, 1
  store i32 %i.bt, ptr %i.br, align 8, !tbaa !8, !noalias !513
  br label %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit

_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit:   ; preds = %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i
  %.0.i4.i = phi ptr [ null, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i ], [ %.0.i3.i, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i ] ; 18 uses
  %i.bu = load ptr, ptr %i.au, align 8, !tbaa !149, !noalias !516
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %indvars.iv108
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !157, !noalias !516 ; 2 uses
  %.not.i.i47 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i47, label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i51, label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i48

_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i51: ; preds = %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit
  %i.bx = load ptr, ptr %i.av, align 8, !tbaa !158, !noalias !516
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %indvars.iv108
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !45, !noalias !516 ; 2 uses
  %.not.i.i.i52 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i52, label %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit53, label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i48

_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i48: ; preds = %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i51, %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit
  %.0.i3.i49 = phi ptr [ %i.bz, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i51 ], [ %i.bw, %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.i3.i49, i64 8 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !8, !noalias !516
  %i.cc = add nsw i32 %i.cb, 1
  store i32 %i.cc, ptr %i.ca, align 8, !tbaa !8, !noalias !516
  br label %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit53

_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit53: ; preds = %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i48, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i51
  %.0.i4.i50 = phi ptr [ null, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i51 ], [ %.0.i3.i49, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i48 ] ; 10 uses
  %i.cd = icmp eq ptr %.0.i4.i, %.0.i4.i50
  br i1 %i.cd, label %bb.i, label %bb.k

bb.i:                                             ; preds = %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit53
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 88 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !276
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 48 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !116
  %.not.i.i54 = icmp eq i32 %i.cf, %i.ch
  br i1 %.not.i.i54, label %._crit_edge.i.i, label %bb.j

._crit_edge.i.i:                                  ; preds = %bb.i
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 96
  %.pre.i.i = load double, ptr %.phi.trans.insert.i.i, align 8, !tbaa !277
  br label %_ZNK5Ipopt6Vector3DotERKS0_.exit

bb.j:                                             ; preds = %bb.i
  %i.ci = load ptr, ptr %.0.i4.i, align 8, !tbaa !10
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 48
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = invoke noundef double %i.ck(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i)
          to label %.noexc unwind label %bb.p, !inline_history !332 ; 2 uses

.noexc:                                           ; preds = %bb.j
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 96
  store double %i.cl, ptr %i.cm, align 8, !tbaa !277
  %i.cn = load i32, ptr %i.cg, align 8, !tbaa !116
  store i32 %i.cn, ptr %i.ce, align 8, !tbaa !276
  br label %_ZNK5Ipopt6Vector3DotERKS0_.exit

bb.k:                                             ; preds = %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.co = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 64 ; 2 uses
  %i.cp = invoke noundef zeroext i1 @_ZN5Ipopt13CachedResultsIdE19GetCachedResult2DepERdPKNS_12TaggedObjectES5_(ptr noundef nonnull align 8 dereferenceable(24) %i.co, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i, ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i50)
          to label %.noexc55 unwind label %.thread

.noexc55:                                         ; preds = %bb.k
  br i1 %i.cp, label %_ZNK5Ipopt6Vector3DotERKS0_.exit.thread, label %bb.l

bb.l:                                             ; preds = %.noexc55
  %i.cq = load ptr, ptr %.0.i4.i, align 8, !tbaa !10
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 40
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = invoke noundef double %i.cs(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i, ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i50)
          to label %.noexc56 unwind label %.thread, !inline_history !332

.noexc56:                                         ; preds = %bb.l
  store double %i.ct, ptr %i.a, align 8, !tbaa !284
  invoke void @_ZN5Ipopt13CachedResultsIdE19AddCachedResult2DepERKdPKNS_12TaggedObjectES6_(ptr noundef nonnull align 8 dereferenceable(24) %i.co, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i, ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i50)
          to label %_ZNK5Ipopt6Vector3DotERKS0_.exit.thread unwind label %.thread

_ZNK5Ipopt6Vector3DotERKS0_.exit.thread:          ; preds = %.noexc55, %.noexc56
end_hunk_1
