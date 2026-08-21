inline.NumInlined: 2195
inline.NumDeleted: 654
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN5Ipopt24LimMemQuasiNewtonUpdater14AugmentLMatrixERNS_8SmartPtrINS_14DenseGenMatrixEEERKNS_17MultiVectorMatrixES7_:bb.a
  store i32 %i.dn, ptr %i.dl, align 8, !tbaa !8
  %i.do = icmp eq i32 %i.dn, 0
  br i1 %i.do, label %bb.w, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit75.thread

bb.w:                                             ; preds = %bb.v
  %i.dp = load ptr, ptr %.0.i4.i62, align 8, !tbaa !10
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8
  call void %i.dr(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i62) #20, !inline_history !115
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit75.thread

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit75.thread: ; preds = %bb.v, %bb.w
  %i.ds = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 8 ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !8
  %i.du = add nsw i32 %i.dt, -1                   ; 2 uses
  store i32 %i.du, ptr %i.ds, align 8, !tbaa !8
  %i.dv = icmp eq i32 %i.du, 0
  br i1 %i.dv, label %bb.x, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit77

bb.x:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit75.thread
  %i.dw = load ptr, ptr %.0.i4.i, align 8, !tbaa !10
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8
  call void %i.dy(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i) #20, !inline_history !115
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit77

._crit_edge122:                                   ; preds = %.lr.ph121, %.preheader
  %i.dz = load i32, ptr %i.n, align 8, !tbaa !8
  %i.ea = add nsw i32 %i.dz, 1
  store i32 %i.ea, ptr %i.n, align 8, !tbaa !8
  %i.eb = load ptr, ptr %1, align 8, !tbaa !67    ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.eb, null
  br i1 %.not.i.i.i.i, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %._crit_edge122
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8 ; 2 uses
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !8
  %i.ee = add nsw i32 %i.ed, -1                   ; 2 uses
  store i32 %i.ee, ptr %i.ec, align 8, !tbaa !8
  %i.ef = icmp eq i32 %i.ee, 0
  br i1 %i.ef, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.eg = load ptr, ptr %i.eb, align 8, !tbaa !10
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8
  call void %i.ei(ptr noundef nonnull align 8 dereferenceable(104) %i.eb) #20, !inline_history !336
  br label %bb.aa

bb.aa:                                            ; preds = %._crit_edge122, %bb.y, %bb.z
  store ptr %i.l, ptr %1, align 8, !tbaa !67
  %i.ej = load i32, ptr %i.n, align 8, !tbaa !8
  %i.ek = add nsw i32 %i.ej, -1                   ; 2 uses
  store i32 %i.ek, ptr %i.n, align 8, !tbaa !8
  %i.el = icmp eq i32 %i.ek, 0
  br i1 %i.el, label %bb.ab, label %_ZN5Ipopt8SmartPtrINS_14DenseGenMatrixEED2Ev.exit

bb.ab:                                            ; preds = %bb.aa
  %i.em = load ptr, ptr %i.l, align 8, !tbaa !10
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.eo = load ptr, ptr %i.en, align 8
  call void %i.eo(ptr noundef nonnull align 8 dereferenceable(104) %i.l) #20, !inline_history !286
  br label %_ZN5Ipopt8SmartPtrINS_14DenseGenMatrixEED2Ev.exit

_ZN5Ipopt8SmartPtrINS_14DenseGenMatrixEED2Ev.exit: ; preds = %bb.ab, %bb.aa
  %i.ep = load i32, ptr %i.i, align 8, !tbaa !8
  %i.eq = add nsw i32 %i.ep, -1                   ; 2 uses
  store i32 %i.eq, ptr %i.i, align 8, !tbaa !8
  %i.er = icmp eq i32 %i.eq, 0
  br i1 %i.er, label %bb.ac, label %_ZN5Ipopt8SmartPtrINS_19DenseGenMatrixSpaceEED2Ev.exit

bb.ac:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_14DenseGenMatrixEED2Ev.exit
  %i.es = load ptr, ptr %i.g, align 8, !tbaa !10
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.eu = load ptr, ptr %i.et, align 8
  call void %i.eu(ptr noundef nonnull align 8 dereferenceable(20) %i.g) #20, !inline_history !406
  br label %_ZN5Ipopt8SmartPtrINS_19DenseGenMatrixSpaceEED2Ev.exit

_ZN5Ipopt8SmartPtrINS_19DenseGenMatrixSpaceEED2Ev.exit: ; preds = %_ZN5Ipopt8SmartPtrINS_14DenseGenMatrixEED2Ev.exit, %bb.ac
  ret void

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit77:      ; preds = %bb.k, %bb.l, %bb.x, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit75.thread
  %.pn.pn.pn = phi { ptr, i32 } [ %i.at, %bb.l ], [ %i.as, %bb.k ], [ %lpad.phi101, %bb.x ], [ %lpad.phi101, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit75.thread ] ; 2 uses
  %i.ev = load i32, ptr %i.n, align 8, !tbaa !8
  %i.ew = add nsw i32 %i.ev, -1                   ; 2 uses
  store i32 %i.ew, ptr %i.n, align 8, !tbaa !8
  %i.ex = icmp eq i32 %i.ew, 0
  br i1 %i.ex, label %bb.ad, label %.body

bb.ad:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit77
  %i.ey = load ptr, ptr %i.l, align 8, !tbaa !10
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8
  call void %i.fa(ptr noundef nonnull align 8 dereferenceable(104) %i.l) #20, !inline_history !286
  br label %.body

.body:                                            ; preds = %bb.e, %bb.j, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit77, %bb.ad
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.m, %bb.e ], [ %i.ar, %bb.j ], [ %.pn.pn.pn, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit77 ], [ %.pn.pn.pn, %bb.ad ] ; 2 uses
  %i.fb = load i32, ptr %i.i, align 8, !tbaa !8
  %i.fc = add nsw i32 %i.fb, -1                   ; 2 uses
  store i32 %i.fc, ptr %i.i, align 8, !tbaa !8
  %i.fd = icmp eq i32 %i.fc, 0
  br i1 %i.fd, label %bb.ae, label %_ZN5Ipopt8SmartPtrINS_19DenseGenMatrixSpaceEED2Ev.exit84

bb.ae:                                            ; preds = %.body
  %i.fe = load ptr, ptr %i.g, align 8, !tbaa !10
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8
  call void %i.fg(ptr noundef nonnull align 8 dereferenceable(20) %i.g) #20, !inline_history !406
  br label %_ZN5Ipopt8SmartPtrINS_19DenseGenMatrixSpaceEED2Ev.exit84

_ZN5Ipopt8SmartPtrINS_19DenseGenMatrixSpaceEED2Ev.exit84: ; preds = %bb.ae, %.body, %bb.i
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aq, %bb.i ], [ %.pn.pn.pn.pn, %.body ], [ %.pn.pn.pn.pn, %bb.ae ]
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN5Ipopt24LimMemQuasiNewtonUpdater18AugmentSdotSMatrixERNS_8SmartPtrINS_14DenseSymMatrixEEERKNS_17MultiVectorMatrixE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !70     ; 2 uses
  %.not99 = icmp eq ptr %i.b, null
  br i1 %.not99, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !438
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !439
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.041 = phi i32 [ %i.f, %bb.b ], [ 0, %bb.a ]   ; 5 uses
  %i.g = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #23 ; 8 uses
  %i.h = add nsw i32 %.041, 1                     ; 3 uses
  invoke void @_ZN5Ipopt19DenseSymMatrixSpaceC1Ei(ptr noundef nonnull align 8 dereferenceable(20) %i.g, i32 noundef %i.h)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 6 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !8
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.i, align 8, !tbaa !8
  %i.l = invoke noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #23
          to label %.noexc unwind label %bb.j     ; 11 uses

.noexc:                                           ; preds = %bb.d
  invoke void @_ZN5Ipopt14DenseSymMatrixC1EPKNS_19DenseSymMatrixSpaceE(ptr noundef nonnull align 8 dereferenceable(97) %i.l, ptr noundef nonnull align 8 dereferenceable(20) %i.g)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %.noexc
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 104) #21
  br label %.body

bb.f:                                             ; preds = %.noexc
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 8 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !8
  %i.p = add nsw i32 %i.o, 1
  store i32 %i.p, ptr %i.n, align 8, !tbaa !8
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(97) %i.l)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  store i8 1, ptr %i.q, align 8, !tbaa !440
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !441  ; 4 uses
  %i.t = load ptr, ptr %1, align 8, !tbaa !70     ; 4 uses
  %.not100 = icmp eq ptr %i.t, null
  br i1 %.not100, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(97) %i.t)
          to label %_ZN5Ipopt14DenseSymMatrix6ValuesEv.exit50 unwind label %bb.l

_ZN5Ipopt14DenseSymMatrix6ValuesEv.exit50:        ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 96
  store i8 1, ptr %i.u, align 8, !tbaa !440
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 88
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !441  ; 3 uses
  %i.x = icmp sgt i32 %.041, 0
  br i1 %i.x, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %_ZN5Ipopt14DenseSymMatrix6ValuesEv.exit50
  %i.y = zext nneg i32 %.041 to i64               ; 8 uses
  %i.z = zext nneg i32 %i.h to i64                ; 3 uses
  %i.aa = shl nuw nsw i64 %i.z, 3
  %i.ab = add nuw nsw i64 %i.aa, 8
  %i.ac = shl nuw nsw i64 %i.y, 3                 ; 3 uses
  %i.ad = shl nuw nsw i64 %i.z, 3
  %i.ae = add nuw nsw i64 %i.ac, 8
  %i.af = shl nuw nsw i64 %i.y, 3
  %i.ag = getelementptr i8, ptr %i.w, i64 %i.ac
  %i.ah = getelementptr i8, ptr %i.s, i64 %i.ac
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.loopexit159
  %indvars.iv = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next, %.loopexit159 ] ; 12 uses
  %3 = mul nuw nsw i64 %indvars.iv, %i.y
  %i.ai = mul nuw nsw i64 %indvars.iv, %i.z
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %3 ; 6 uses
  %invariant.gep.a = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.ai ; 6 uses
  %4 = sub nsw i64 %i.y, %indvars.iv              ; 3 uses
  %min.iters.check = icmp ult i64 %4, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader
  %i.aj = mul i64 %i.af, %indvars.iv
  %scevgep157 = getelementptr i8, ptr %i.ag, i64 %i.aj
  %i.ak = mul i64 %i.ae, %indvars.iv
  %scevgep156 = getelementptr i8, ptr %i.w, i64 %i.ak
  %i.al = mul i64 %i.ad, %indvars.iv
  %scevgep155 = getelementptr i8, ptr %i.ah, i64 %i.al
  %i.am = mul i64 %i.ab, %indvars.iv
  %scevgep = getelementptr i8, ptr %i.s, i64 %i.am
  %bound0 = icmp ult ptr %scevgep, %scevgep157
  %bound1 = icmp ult ptr %scevgep156, %scevgep155
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %4, -4                         ; 3 uses
  %i.an = add i64 %indvars.iv, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ao = add nuw i64 %indvars.iv, %index         ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.ao ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %wide.load = load <2 x double>, ptr %i.ap, align 8, !tbaa !284, !alias.scope !442
  %wide.load158 = load <2 x double>, ptr %i.aq, align 8, !tbaa !284, !alias.scope !442
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.a, i64 %i.ao ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store <2 x double> %wide.load, ptr %i.ar, align 8, !tbaa !284, !alias.scope !445, !noalias !442
  store <2 x double> %wide.load158, ptr %i.as, align 8, !tbaa !284, !alias.scope !445, !noalias !442
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !447

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %4, %n.vec
  br i1 %cmp.n, label %.loopexit159, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader, %middle.block
  %indvars.iv118.ph = phi i64 [ %indvars.iv, %vector.memcheck ], [ %indvars.iv, %.preheader ], [ %i.an, %middle.block ] ; 4 uses
  %i.au = sub i64 %i.y, %indvars.iv118.ph
  %xtraiter = and i64 %i.au, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv118.prol = phi i64 [ %indvars.iv.next119.prol, %scalar.ph.prol ], [ %indvars.iv118.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %gep.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv118.prol
  %i.av = load double, ptr %gep.prol, align 8, !tbaa !284
  %gep143.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.a, i64 %indvars.iv118.prol
  store double %i.av, ptr %gep143.prol, align 8, !tbaa !284
  %indvars.iv.next119.prol = add nuw nsw i64 %indvars.iv118.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !448

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv118.unr = phi i64 [ %indvars.iv118.ph, %scalar.ph.preheader ], [ %indvars.iv.next119.prol, %scalar.ph.prol ]
  %i.aw = sub i64 %indvars.iv118.ph, %i.y
  %i.ax = icmp ugt i64 %i.aw, -4
  br i1 %i.ax, label %.loopexit159, label %scalar.ph

bb.i:                                             ; preds = %bb.c
  %i.ay = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 24) #21
  br label %_ZN5Ipopt8SmartPtrINS_19DenseSymMatrixSpaceEED2Ev.exit76

bb.j:                                             ; preds = %bb.d
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %bb.f
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit70

bb.l:                                             ; preds = %bb.h
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit70

.loopexit159:                                     ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond123.not = icmp eq i64 %indvars.iv.next, %i.y
  br i1 %exitcond123.not, label %.loopexit, label %.preheader, !llvm.loop !449

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv118 = phi i64 [ %indvars.iv.next119.3, %scalar.ph ], [ %indvars.iv118.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv118
  %i.bc = load double, ptr %gep, align 8, !tbaa !284
  %gep143 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.a, i64 %indvars.iv118
  store double %i.bc, ptr %gep143, align 8, !tbaa !284
  %indvars.iv.next119 = add nuw nsw i64 %indvars.iv118, 1 ; 2 uses
  %gep.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next119
  %i.bd = load double, ptr %gep.1, align 8, !tbaa !284
  %gep143.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.a, i64 %indvars.iv.next119
  store double %i.bd, ptr %gep143.1, align 8, !tbaa !284
  %indvars.iv.next119.1 = add nuw nsw i64 %indvars.iv118, 2 ; 2 uses
  %gep.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next119.1
  %i.be = load double, ptr %gep.2, align 8, !tbaa !284
  %gep143.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.a, i64 %indvars.iv.next119.1
  store double %i.be, ptr %gep143.2, align 8, !tbaa !284
  %indvars.iv.next119.2 = add nuw nsw i64 %indvars.iv118, 3 ; 2 uses
  %gep.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next119.2
  %i.bf = load double, ptr %gep.3, align 8, !tbaa !284
  %gep143.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.a, i64 %indvars.iv.next119.2
  store double %i.bf, ptr %gep143.3, align 8, !tbaa !284
  %indvars.iv.next119.3 = add nuw nsw i64 %indvars.iv118, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next119.3, %i.y
  br i1 %exitcond.not.3, label %.loopexit159, label %scalar.ph, !llvm.loop !450

.loopexit:                                        ; preds = %.loopexit159, %_ZN5Ipopt14DenseSymMatrix6ValuesEv.exit50, %bb.g
  %.not108 = icmp slt i32 %.041, 0
  br i1 %.not108, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.bh = zext nneg i32 %.041 to i64              ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.bj = zext nneg i32 %i.h to i64               ; 2 uses
  %invariant.gep146.sink = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.bh
  br label %bb.o

._crit_edge:                                      ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit66, %.loopexit
  %i.bk = load i32, ptr %i.n, align 8, !tbaa !8
  %i.bl = add nsw i32 %i.bk, 1
  store i32 %i.bl, ptr %i.n, align 8, !tbaa !8
  %i.bm = load ptr, ptr %1, align 8, !tbaa !70    ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i, label %bb.aa, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !8
  %i.bp = add nsw i32 %i.bo, -1                   ; 2 uses
  store i32 %i.bp, ptr %i.bn, align 8, !tbaa !8
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.n, label %bb.aa

bb.n:                                             ; preds = %bb.m
  %i.br = load ptr, ptr %i.bm, align 8, !tbaa !10
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(97) %i.bm) #20, !inline_history !337
  br label %bb.aa

bb.o:                                             ; preds = %.lr.ph, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit66
  %indvars.iv124 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next125, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit66 ] ; 4 uses
  %i.bu = load ptr, ptr %i.bg, align 8, !tbaa !149, !noalias !451 ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bh
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !157, !noalias !451 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i, label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i, label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i

_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i:  ; preds = %bb.o
  %i.bx = load ptr, ptr %i.bi, align 8, !tbaa !158, !noalias !451
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bh
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !45, !noalias !451 ; 2 uses
  %.not.i.i.i51 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i51, label %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit, label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i

_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i: ; preds = %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i, %bb.o
  %.0.i3.i = phi ptr [ %i.bz, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i ], [ %i.bw, %bb.o ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 8 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !8, !noalias !451
  %i.cc = add nsw i32 %i.cb, 1
  store i32 %i.cc, ptr %i.ca, align 8, !tbaa !8, !noalias !451
  br label %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit

_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit:   ; preds = %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i
  %.0.i4.i = phi ptr [ null, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i ], [ %.0.i3.i, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i ] ; 18 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %indvars.iv124
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !157, !noalias !454 ; 2 uses
  %.not.i.i52 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i52, label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i56, label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i53

_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i56: ; preds = %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit
  %i.cf = load ptr, ptr %i.bi, align 8, !tbaa !158, !noalias !454
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv124
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !45, !noalias !454 ; 2 uses
  %.not.i.i.i57 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i57, label %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit58, label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i53

_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i53: ; preds = %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i56, %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit
  %.0.i3.i54 = phi ptr [ %i.ch, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i56 ], [ %i.ce, %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit ] ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.i3.i54, i64 8 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !8, !noalias !454
  %i.ck = add nsw i32 %i.cj, 1
  store i32 %i.ck, ptr %i.ci, align 8, !tbaa !8, !noalias !454
  br label %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit58

_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit58: ; preds = %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i53, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i56
  %.0.i4.i55 = phi ptr [ null, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i56 ], [ %.0.i3.i54, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i53 ] ; 10 uses
  %i.cl = icmp eq ptr %.0.i4.i, %.0.i4.i55
  br i1 %i.cl, label %bb.p, label %bb.r

bb.p:                                             ; preds = %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit58
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 88 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !276
  %i.co = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 48 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !116
  %.not.i.i59 = icmp eq i32 %i.cn, %i.cp
  br i1 %.not.i.i59, label %._crit_edge.i.i, label %bb.q

._crit_edge.i.i:                                  ; preds = %bb.p
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 96
  %.pre.i.i = load double, ptr %.phi.trans.insert.i.i, align 8, !tbaa !277
  br label %_ZNK5Ipopt6Vector3DotERKS0_.exit

bb.q:                                             ; preds = %bb.p
  %i.cq = load ptr, ptr %.0.i4.i, align 8, !tbaa !10
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 48
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = invoke noundef double %i.cs(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i)
          to label %.noexc60 unwind label %bb.w, !inline_history !332 ; 2 uses

.noexc60:                                         ; preds = %bb.q
  %i.cu = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 96
  store double %i.ct, ptr %i.cu, align 8, !tbaa !277
  %i.cv = load i32, ptr %i.co, align 8, !tbaa !116
  store i32 %i.cv, ptr %i.cm, align 8, !tbaa !276
  br label %_ZNK5Ipopt6Vector3DotERKS0_.exit

bb.r:                                             ; preds = %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.cw = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 64 ; 2 uses
  %i.cx = invoke noundef zeroext i1 @_ZN5Ipopt13CachedResultsIdE19GetCachedResult2DepERdPKNS_12TaggedObjectES5_(ptr noundef nonnull align 8 dereferenceable(24) %i.cw, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i, ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i55)
          to label %.noexc61 unwind label %.thread

.noexc61:                                         ; preds = %bb.r
  br i1 %i.cx, label %_ZNK5Ipopt6Vector3DotERKS0_.exit.thread, label %bb.s

bb.s:                                             ; preds = %.noexc61
  %i.cy = load ptr, ptr %.0.i4.i, align 8, !tbaa !10
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 40
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = invoke noundef double %i.da(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i, ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i55)
          to label %.noexc62 unwind label %.thread, !inline_history !332

.noexc62:                                         ; preds = %bb.s
  store double %i.db, ptr %i.a, align 8, !tbaa !284
  invoke void @_ZN5Ipopt13CachedResultsIdE19AddCachedResult2DepERKdPKNS_12TaggedObjectES6_(ptr noundef nonnull align 8 dereferenceable(24) %i.cw, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i, ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i55)
          to label %_ZNK5Ipopt6Vector3DotERKS0_.exit.thread unwind label %.thread

_ZNK5Ipopt6Vector3DotERKS0_.exit.thread:          ; preds = %.noexc61, %.noexc62
  %i.dc = load double, ptr %i.a, align 8, !tbaa !284
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.t

_ZNK5Ipopt6Vector3DotERKS0_.exit:                 ; preds = %._crit_edge.i.i, %.noexc60
  %i.dd = phi double [ %.pre.i.i, %._crit_edge.i.i ], [ %i.ct, %.noexc60 ] ; 2 uses
  %i.de = fmul double %i.dd, %i.dd
  br label %bb.t

bb.t:                                             ; preds = %_ZNK5Ipopt6Vector3DotERKS0_.exit, %_ZNK5Ipopt6Vector3DotERKS0_.exit.thread
  %.sink = phi double [ %i.de, %_ZNK5Ipopt6Vector3DotERKS0_.exit ], [ %i.dc, %_ZNK5Ipopt6Vector3DotERKS0_.exit.thread ]
  %i.df = mul nuw nsw i64 %indvars.iv124, %i.bj
  %gep147 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep146.sink, i64 %i.df
  store double %.sink, ptr %gep147, align 8, !tbaa !284
  %i.dg = getelementptr inbounds nuw i8, ptr %.0.i4.i55, i64 8 ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !8
  %i.di = add nsw i32 %i.dh, -1                   ; 2 uses
  store i32 %i.di, ptr %i.dg, align 8, !tbaa !8
  %i.dj = icmp eq i32 %i.di, 0
  br i1 %i.dj, label %bb.u, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit

bb.u:                                             ; preds = %bb.t
  %i.dk = load ptr, ptr %.0.i4.i55, align 8, !tbaa !10
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8
  call void %i.dm(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i55) #20, !inline_history !115
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit:        ; preds = %bb.u, %bb.t
  %i.dn = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 8 ; 2 uses
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !8
  %i.dp = add nsw i32 %i.do, -1                   ; 2 uses
  store i32 %i.dp, ptr %i.dn, align 8, !tbaa !8
  %i.dq = icmp eq i32 %i.dp, 0
  br i1 %i.dq, label %bb.v, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit66

bb.v:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit
  %i.dr = load ptr, ptr %.0.i4.i, align 8, !tbaa !10
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8
  call void %i.dt(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i) #20, !inline_history !115
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit66

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit66:      ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit, %bb.v
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 1 ; 2 uses
  %exitcond128.not = icmp eq i64 %indvars.iv.next125, %i.bj
  br i1 %exitcond128.not, label %._crit_edge, label %bb.o, !llvm.loop !457

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
  %i.du = getelementptr inbounds nuw i8, ptr %.0.i4.i55, i64 8 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5Ipopt24LimMemQuasiNewtonUpdater12ShiftLMatrixERNS_8SmartPtrINS_14DenseGenMatrixEEERKNS_17MultiVectorMatrixES7_:bb.a
  %i.cs = mul nuw nsw i64 %indvars.iv121, %i.at
  %gep145 = getelementptr [8 x i8], ptr %invariant.gep144.sink, i64 %i.cs
  store double %.sink, ptr %gep145, align 8, !tbaa !284
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
  %indvars.iv = phi i64 [ 0, %.preheader87.preheader ], [ %i.ae, %.loopexit ] ; 6 uses
  %i.ae = add nuw nsw i64 %indvars.iv, 1          ; 4 uses
  %3 = mul nuw nsw i64 %i.ae, %i.z
  %4 = mul nuw nsw i64 %indvars.iv, %i.z
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %3 ; 2 uses
  %invariant.gep124 = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %4 ; 2 uses
  %5 = tail call i64 @llvm.umax.i64(i64 %i.ae, i64 %wide.trip.count)
  %6 = sub nsw i64 %5, %indvars.iv                ; 3 uses
  %min.iters.check = icmp ult i64 %6, 4
  %brmerge = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader87
  %n.vec = and i64 %6, -4                         ; 3 uses
  %i.af = add i64 %indvars.iv, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = add nuw i64 %indvars.iv, %index         ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.ag ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %wide.load = load <2 x double>, ptr %i.ai, align 8, !tbaa !284
  %wide.load137 = load <2 x double>, ptr %i.aj, align 8, !tbaa !284
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep124, i64 %i.ag ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store <2 x double> %wide.load, ptr %i.ak, align 8, !tbaa !284
  store <2 x double> %wide.load137, ptr %i.al, align 8, !tbaa !284
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !481

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %6, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader87, %middle.block
  %indvars.iv104.ph = phi i64 [ %i.af, %middle.block ], [ %indvars.iv, %.preheader87 ]
  br label %scalar.ph

.preheader:                                       ; preds = %.loopexit, %_ZN5Ipopt14DenseSymMatrix6ValuesEv.exit45
  %i.an = icmp sgt i32 %i.f, 0
  br i1 %i.an, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.ap = zext nneg i32 %i.v to i64               ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.ar = zext nneg i32 %i.f to i64
  %wide.trip.count111 = zext nneg i32 %i.f to i64
  %invariant.gep128.sink = getelementptr [8 x i8], ptr %i.u, i64 %i.ap
  br label %bb.h

bb.d:                                             ; preds = %_ZNK5Ipopt14DenseSymMatrix21MakeNewDenseSymMatrixEv.exit
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit64

bb.e:                                             ; preds = %bb.c
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit64

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %exitcond.not = icmp eq i64 %i.ae, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %.preheader87, !llvm.loop !482

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv104 = phi i64 [ %indvars.iv.next105, %scalar.ph ], [ %indvars.iv104.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1 ; 3 uses
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next105
  %i.au = load double, ptr %gep, align 8, !tbaa !284
  %gep125 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep124, i64 %indvars.iv104
  store double %i.au, ptr %gep125, align 8, !tbaa !284
  %i.av = icmp samesign ult i64 %indvars.iv.next105, %i.y
  br i1 %i.av, label %scalar.ph, label %.loopexit, !llvm.loop !483

._crit_edge:                                      ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit60, %.preheader
  %i.aw = load i32, ptr %i.k, align 8, !tbaa !8
  %i.ax = add nsw i32 %i.aw, 1
  store i32 %i.ax, ptr %i.k, align 8, !tbaa !8
  %i.ay = load ptr, ptr %1, align 8, !tbaa !70    ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i.i, label %bb.t, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !8
  %i.bb = add nsw i32 %i.ba, -1                   ; 2 uses
  store i32 %i.bb, ptr %i.az, align 8, !tbaa !8
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.g, label %bb.t

bb.g:                                             ; preds = %bb.f
  %i.bd = load ptr, ptr %i.ay, align 8, !tbaa !10
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(97) %i.ay) #20, !inline_history !337
  br label %bb.t

bb.h:                                             ; preds = %.lr.ph, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit60
  %indvars.iv108 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next109, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit60 ] ; 4 uses
  %i.bg = load ptr, ptr %i.ao, align 8, !tbaa !149, !noalias !484 ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.ap
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !157, !noalias !484 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i, label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i, label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i

_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i:  ; preds = %bb.h
  %i.bj = load ptr, ptr %i.aq, align 8, !tbaa !158, !noalias !484
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.ap
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !45, !noalias !484 ; 2 uses
  %.not.i.i.i46 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i46, label %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit, label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i

_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i: ; preds = %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i, %bb.h
  %.0.i3.i = phi ptr [ %i.bl, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i ], [ %i.bi, %bb.h ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 8 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !8, !noalias !484
  %i.bo = add nsw i32 %i.bn, 1
  store i32 %i.bo, ptr %i.bm, align 8, !tbaa !8, !noalias !484
  br label %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit

_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit:   ; preds = %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i
  %.0.i4.i = phi ptr [ null, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i ], [ %.0.i3.i, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i ] ; 18 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv108
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !157, !noalias !487 ; 2 uses
  %.not.i.i47 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i47, label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i51, label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i48

_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i51: ; preds = %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit
  %i.br = load ptr, ptr %i.aq, align 8, !tbaa !158, !noalias !487
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv108
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !45, !noalias !487 ; 2 uses
  %.not.i.i.i52 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i52, label %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit53, label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i48

_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i48: ; preds = %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i51, %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit
  %.0.i3.i49 = phi ptr [ %i.bt, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i51 ], [ %i.bq, %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.i3.i49, i64 8 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !8, !noalias !487
  %i.bw = add nsw i32 %i.bv, 1
  store i32 %i.bw, ptr %i.bu, align 8, !tbaa !8, !noalias !487
  br label %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit53

_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit53: ; preds = %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i48, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i51
  %.0.i4.i50 = phi ptr [ null, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i51 ], [ %.0.i3.i49, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i48 ] ; 10 uses
  %i.bx = icmp eq ptr %.0.i4.i, %.0.i4.i50
  br i1 %i.bx, label %bb.i, label %bb.k

bb.i:                                             ; preds = %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit53
  %i.by = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 88 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !276
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 48 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !116
  %.not.i.i54 = icmp eq i32 %i.bz, %i.cb
  br i1 %.not.i.i54, label %._crit_edge.i.i, label %bb.j

._crit_edge.i.i:                                  ; preds = %bb.i
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 96
  %.pre.i.i = load double, ptr %.phi.trans.insert.i.i, align 8, !tbaa !277
  br label %_ZNK5Ipopt6Vector3DotERKS0_.exit

bb.j:                                             ; preds = %bb.i
  %i.cc = load ptr, ptr %.0.i4.i, align 8, !tbaa !10
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 48
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = invoke noundef double %i.ce(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i)
          to label %.noexc unwind label %bb.p, !inline_history !332 ; 2 uses

.noexc:                                           ; preds = %bb.j
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 96
  store double %i.cf, ptr %i.cg, align 8, !tbaa !277
  %i.ch = load i32, ptr %i.ca, align 8, !tbaa !116
  store i32 %i.ch, ptr %i.by, align 8, !tbaa !276
  br label %_ZNK5Ipopt6Vector3DotERKS0_.exit

bb.k:                                             ; preds = %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 64 ; 2 uses
  %i.cj = invoke noundef zeroext i1 @_ZN5Ipopt13CachedResultsIdE19GetCachedResult2DepERdPKNS_12TaggedObjectES5_(ptr noundef nonnull align 8 dereferenceable(24) %i.ci, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i, ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i50)
          to label %.noexc55 unwind label %.thread

.noexc55:                                         ; preds = %bb.k
  br i1 %i.cj, label %_ZNK5Ipopt6Vector3DotERKS0_.exit.thread, label %bb.l

bb.l:                                             ; preds = %.noexc55
  %i.ck = load ptr, ptr %.0.i4.i, align 8, !tbaa !10
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 40
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = invoke noundef double %i.cm(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i, ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i50)
          to label %.noexc56 unwind label %.thread, !inline_history !332

.noexc56:                                         ; preds = %bb.l
  store double %i.cn, ptr %i.a, align 8, !tbaa !284
  invoke void @_ZN5Ipopt13CachedResultsIdE19AddCachedResult2DepERKdPKNS_12TaggedObjectES6_(ptr noundef nonnull align 8 dereferenceable(24) %i.ci, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i, ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i50)
          to label %_ZNK5Ipopt6Vector3DotERKS0_.exit.thread unwind label %.thread

_ZNK5Ipopt6Vector3DotERKS0_.exit.thread:          ; preds = %.noexc55, %.noexc56
  %i.co = load double, ptr %i.a, align 8, !tbaa !284
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.m

_ZNK5Ipopt6Vector3DotERKS0_.exit:                 ; preds = %._crit_edge.i.i, %.noexc
  %i.cp = phi double [ %.pre.i.i, %._crit_edge.i.i ], [ %i.cf, %.noexc ] ; 2 uses
  %i.cq = fmul double %i.cp, %i.cp
  br label %bb.m

bb.m:                                             ; preds = %_ZNK5Ipopt6Vector3DotERKS0_.exit, %_ZNK5Ipopt6Vector3DotERKS0_.exit.thread
  %.sink = phi double [ %i.cq, %_ZNK5Ipopt6Vector3DotERKS0_.exit ], [ %i.co, %_ZNK5Ipopt6Vector3DotERKS0_.exit.thread ]
  %i.cr = mul nuw nsw i64 %indvars.iv108, %i.ar
  %gep129 = getelementptr [8 x i8], ptr %invariant.gep128.sink, i64 %i.cr
  store double %.sink, ptr %gep129, align 8, !tbaa !284
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.i4.i50, i64 8 ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !8
  %i.cu = add nsw i32 %i.ct, -1                   ; 2 uses
  store i32 %i.cu, ptr %i.cs, align 8, !tbaa !8
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %bb.n, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit

bb.n:                                             ; preds = %bb.m
  %i.cw = load ptr, ptr %.0.i4.i50, align 8, !tbaa !10
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8
  call void %i.cy(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i50) #20, !inline_history !115
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit:        ; preds = %bb.n, %bb.m
  %i.cz = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 8 ; 2 uses
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !8
  %i.db = add nsw i32 %i.da, -1                   ; 2 uses
  store i32 %i.db, ptr %i.cz, align 8, !tbaa !8
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %bb.o, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit60

bb.o:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit
  %i.dd = load ptr, ptr %.0.i4.i, align 8, !tbaa !10
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.df = load ptr, ptr %i.de, align 8
  call void %i.df(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i) #20, !inline_history !115
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit60

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit60:      ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit, %bb.o
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1 ; 2 uses
  %exitcond112.not = icmp eq i64 %indvars.iv.next109, %wide.trip.count111
  br i1 %exitcond112.not, label %._crit_edge, label %bb.h, !llvm.loop !490

.thread:                                          ; preds = %.noexc56, %bb.l, %bb.k
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %bb.j
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.thread
  %lpad.phi81 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread ], [ %lpad.thr_comm.split-lp, %bb.p ] ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.0.i4.i50, i64 8 ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !8
  %i.di = add nsw i32 %i.dh, -1                   ; 2 uses
  store i32 %i.di, ptr %i.dg, align 8, !tbaa !8
  %i.dj = icmp eq i32 %i.di, 0
  br i1 %i.dj, label %bb.r, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit62.thread

bb.r:                                             ; preds = %bb.q
  %i.dk = load ptr, ptr %.0.i4.i50, align 8, !tbaa !10
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8
  call void %i.dm(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i50) #20, !inline_history !115
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit62.thread

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit62.thread: ; preds = %bb.q, %bb.r
  %i.dn = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 8 ; 2 uses
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !8
  %i.dp = add nsw i32 %i.do, -1                   ; 2 uses
  store i32 %i.dp, ptr %i.dn, align 8, !tbaa !8
  %i.dq = icmp eq i32 %i.dp, 0
  br i1 %i.dq, label %bb.s, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit64

bb.s:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit62.thread
  %i.dr = load ptr, ptr %.0.i4.i, align 8, !tbaa !10
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8
  call void %i.dt(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i) #20, !inline_history !115
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit64

bb.t:                                             ; preds = %._crit_edge, %bb.f, %bb.g
  store ptr %i.i, ptr %1, align 8, !tbaa !70
  %i.du = load i32, ptr %i.k, align 8, !tbaa !8
  %i.dv = add nsw i32 %i.du, -1                   ; 2 uses
  store i32 %i.dv, ptr %i.k, align 8, !tbaa !8
  %i.dw = icmp eq i32 %i.dv, 0
  br i1 %i.dw, label %bb.u, label %_ZN5Ipopt8SmartPtrINS_14DenseSymMatrixEED2Ev.exit

bb.u:                                             ; preds = %bb.t
  %i.dx = load ptr, ptr %i.i, align 8, !tbaa !10
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8
  call void %i.dz(ptr noundef nonnull align 8 dereferenceable(97) %i.i) #20, !inline_history !287
  br label %_ZN5Ipopt8SmartPtrINS_14DenseSymMatrixEED2Ev.exit

_ZN5Ipopt8SmartPtrINS_14DenseSymMatrixEED2Ev.exit: ; preds = %bb.t, %bb.u
  ret void

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit64:      ; preds = %bb.d, %bb.e, %bb.s, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit62.thread
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.as, %bb.d ], [ %i.at, %bb.e ], [ %lpad.phi81, %bb.s ], [ %lpad.phi81, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit62.thread ] ; 2 uses
  %i.ea = load i32, ptr %i.k, align 8, !tbaa !8
  %i.eb = add nsw i32 %i.ea, -1                   ; 2 uses
  store i32 %i.eb, ptr %i.k, align 8, !tbaa !8
  %i.ec = icmp eq i32 %i.eb, 0
  br i1 %i.ec, label %bb.v, label %common.resume

bb.v:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit64
  %i.ed = load ptr, ptr %i.i, align 8, !tbaa !10
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8
  call void %i.ef(ptr noundef nonnull align 8 dereferenceable(97) %i.i) #20, !inline_history !287
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define void @_ZN5Ipopt24LimMemQuasiNewtonUpdater18AugmentSTDRSMatrixERNS_8SmartPtrINS_14DenseSymMatrixEEERKNS_17MultiVectorMatrixES7_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !70     ; 2 uses
  %.not99 = icmp eq ptr %i.b, null
  br i1 %.not99, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !438
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !439
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.041 = phi i32 [ %i.f, %bb.b ], [ 0, %bb.a ]   ; 5 uses
  %i.g = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #23 ; 8 uses
  %i.h = add nsw i32 %.041, 1                     ; 3 uses
  invoke void @_ZN5Ipopt19DenseSymMatrixSpaceC1Ei(ptr noundef nonnull align 8 dereferenceable(20) %i.g, i32 noundef %i.h)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 6 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !8
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.i, align 8, !tbaa !8
  %i.l = invoke noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #23
          to label %.noexc unwind label %bb.j     ; 11 uses

.noexc:                                           ; preds = %bb.d
  invoke void @_ZN5Ipopt14DenseSymMatrixC1EPKNS_19DenseSymMatrixSpaceE(ptr noundef nonnull align 8 dereferenceable(97) %i.l, ptr noundef nonnull align 8 dereferenceable(20) %i.g)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %.noexc
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 104) #21
  br label %.body

bb.f:                                             ; preds = %.noexc
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 8 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !8
  %i.p = add nsw i32 %i.o, 1
  store i32 %i.p, ptr %i.n, align 8, !tbaa !8
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(97) %i.l)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  store i8 1, ptr %i.q, align 8, !tbaa !440
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !441  ; 4 uses
  %i.t = load ptr, ptr %1, align 8, !tbaa !70     ; 4 uses
  %.not100 = icmp eq ptr %i.t, null
  br i1 %.not100, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(97) %i.t)
          to label %_ZN5Ipopt14DenseSymMatrix6ValuesEv.exit50 unwind label %bb.l

_ZN5Ipopt14DenseSymMatrix6ValuesEv.exit50:        ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 96
  store i8 1, ptr %i.u, align 8, !tbaa !440
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 88
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !441  ; 3 uses
  %i.x = icmp sgt i32 %.041, 0
  br i1 %i.x, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %_ZN5Ipopt14DenseSymMatrix6ValuesEv.exit50
  %i.y = zext nneg i32 %.041 to i64               ; 8 uses
  %i.z = zext nneg i32 %i.h to i64                ; 3 uses
  %i.aa = shl nuw nsw i64 %i.z, 3
  %i.ab = add nuw nsw i64 %i.aa, 8
  %i.ac = shl nuw nsw i64 %i.y, 3                 ; 3 uses
  %i.ad = shl nuw nsw i64 %i.z, 3
  %i.ae = add nuw nsw i64 %i.ac, 8
  %i.af = shl nuw nsw i64 %i.y, 3
  %i.ag = getelementptr i8, ptr %i.w, i64 %i.ac
  %i.ah = getelementptr i8, ptr %i.s, i64 %i.ac
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.loopexit159
  %indvars.iv = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next, %.loopexit159 ] ; 12 uses
  %4 = mul nuw nsw i64 %indvars.iv, %i.y
  %i.ai = mul nuw nsw i64 %indvars.iv, %i.z
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %4 ; 6 uses
  %invariant.gep.a = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.ai ; 6 uses
  %5 = sub nsw i64 %i.y, %indvars.iv              ; 3 uses
  %min.iters.check = icmp ult i64 %5, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader
  %i.aj = mul i64 %i.af, %indvars.iv
  %scevgep157 = getelementptr i8, ptr %i.ag, i64 %i.aj
  %i.ak = mul i64 %i.ae, %indvars.iv
  %scevgep156 = getelementptr i8, ptr %i.w, i64 %i.ak
  %i.al = mul i64 %i.ad, %indvars.iv
  %scevgep155 = getelementptr i8, ptr %i.ah, i64 %i.al
  %i.am = mul i64 %i.ab, %indvars.iv
  %scevgep = getelementptr i8, ptr %i.s, i64 %i.am
  %bound0 = icmp ult ptr %scevgep, %scevgep157
  %bound1 = icmp ult ptr %scevgep156, %scevgep155
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %5, -4                         ; 3 uses
  %i.an = add i64 %indvars.iv, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ao = add nuw i64 %indvars.iv, %index         ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.ao ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %wide.load = load <2 x double>, ptr %i.ap, align 8, !tbaa !284, !alias.scope !491
  %wide.load158 = load <2 x double>, ptr %i.aq, align 8, !tbaa !284, !alias.scope !491
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.a, i64 %i.ao ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store <2 x double> %wide.load, ptr %i.ar, align 8, !tbaa !284, !alias.scope !494, !noalias !491
  store <2 x double> %wide.load158, ptr %i.as, align 8, !tbaa !284, !alias.scope !494, !noalias !491
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !496

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %5, %n.vec
  br i1 %cmp.n, label %.loopexit159, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader, %middle.block
  %indvars.iv118.ph = phi i64 [ %indvars.iv, %vector.memcheck ], [ %indvars.iv, %.preheader ], [ %i.an, %middle.block ] ; 4 uses
  %i.au = sub i64 %i.y, %indvars.iv118.ph
  %xtraiter = and i64 %i.au, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv118.prol = phi i64 [ %indvars.iv.next119.prol, %scalar.ph.prol ], [ %indvars.iv118.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %gep.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv118.prol
  %i.av = load double, ptr %gep.prol, align 8, !tbaa !284
  %gep143.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.a, i64 %indvars.iv118.prol
  store double %i.av, ptr %gep143.prol, align 8, !tbaa !284
  %indvars.iv.next119.prol = add nuw nsw i64 %indvars.iv118.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !497

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv118.unr = phi i64 [ %indvars.iv118.ph, %scalar.ph.preheader ], [ %indvars.iv.next119.prol, %scalar.ph.prol ]
  %i.aw = sub i64 %indvars.iv118.ph, %i.y
  %i.ax = icmp ugt i64 %i.aw, -4
  br i1 %i.ax, label %.loopexit159, label %scalar.ph

bb.i:                                             ; preds = %bb.c
  %i.ay = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 24) #21
  br label %_ZN5Ipopt8SmartPtrINS_19DenseSymMatrixSpaceEED2Ev.exit76

bb.j:                                             ; preds = %bb.d
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %bb.f
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit70

bb.l:                                             ; preds = %bb.h
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit70

.loopexit159:                                     ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond123.not = icmp eq i64 %indvars.iv.next, %i.y
  br i1 %exitcond123.not, label %.loopexit, label %.preheader, !llvm.loop !498

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv118 = phi i64 [ %indvars.iv.next119.3, %scalar.ph ], [ %indvars.iv118.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv118
  %i.bc = load double, ptr %gep, align 8, !tbaa !284
  %gep143 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.a, i64 %indvars.iv118
  store double %i.bc, ptr %gep143, align 8, !tbaa !284
  %indvars.iv.next119 = add nuw nsw i64 %indvars.iv118, 1 ; 2 uses
  %gep.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next119
  %i.bd = load double, ptr %gep.1, align 8, !tbaa !284
  %gep143.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.a, i64 %indvars.iv.next119
  store double %i.bd, ptr %gep143.1, align 8, !tbaa !284
  %indvars.iv.next119.1 = add nuw nsw i64 %indvars.iv118, 2 ; 2 uses
  %gep.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next119.1
  %i.be = load double, ptr %gep.2, align 8, !tbaa !284
  %gep143.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.a, i64 %indvars.iv.next119.1
  store double %i.be, ptr %gep143.2, align 8, !tbaa !284
  %indvars.iv.next119.2 = add nuw nsw i64 %indvars.iv118, 3 ; 2 uses
  %gep.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next119.2
  %i.bf = load double, ptr %gep.3, align 8, !tbaa !284
  %gep143.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.a, i64 %indvars.iv.next119.2
  store double %i.bf, ptr %gep143.3, align 8, !tbaa !284
  %indvars.iv.next119.3 = add nuw nsw i64 %indvars.iv118, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next119.3, %i.y
  br i1 %exitcond.not.3, label %.loopexit159, label %scalar.ph, !llvm.loop !499

.loopexit:                                        ; preds = %.loopexit159, %_ZN5Ipopt14DenseSymMatrix6ValuesEv.exit50, %bb.g
  %.not108 = icmp slt i32 %.041, 0
  br i1 %.not108, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.bh = zext nneg i32 %.041 to i64              ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.bl = zext nneg i32 %i.h to i64               ; 2 uses
  %invariant.gep146.sink = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.bh
  br label %bb.o

._crit_edge:                                      ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit66, %.loopexit
  %i.bm = load i32, ptr %i.n, align 8, !tbaa !8
  %i.bn = add nsw i32 %i.bm, 1
  store i32 %i.bn, ptr %i.n, align 8, !tbaa !8
  %i.bo = load ptr, ptr %1, align 8, !tbaa !70    ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i, label %bb.aa, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !8
  %i.br = add nsw i32 %i.bq, -1                   ; 2 uses
  store i32 %i.br, ptr %i.bp, align 8, !tbaa !8
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %bb.n, label %bb.aa

bb.n:                                             ; preds = %bb.m
  %i.bt = load ptr, ptr %i.bo, align 8, !tbaa !10
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(97) %i.bo) #20, !inline_history !337
  br label %bb.aa

bb.o:                                             ; preds = %.lr.ph, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit66
  %indvars.iv124 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next125, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit66 ] ; 4 uses
  %i.bw = load ptr, ptr %i.bg, align 8, !tbaa !149, !noalias !500
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bh
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !157, !noalias !500 ; 2 uses
  %.not.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i, label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i, label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i

_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i:  ; preds = %bb.o
  %i.bz = load ptr, ptr %i.bi, align 8, !tbaa !158, !noalias !500
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.bh
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !45, !noalias !500 ; 2 uses
  %.not.i.i.i51 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i51, label %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit, label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i

_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i: ; preds = %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i, %bb.o
  %.0.i3.i = phi ptr [ %i.cb, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i ], [ %i.by, %bb.o ] ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 8 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !8, !noalias !500
  %i.ce = add nsw i32 %i.cd, 1
  store i32 %i.ce, ptr %i.cc, align 8, !tbaa !8, !noalias !500
  br label %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit

_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit:   ; preds = %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i
  %.0.i4.i = phi ptr [ null, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i ], [ %.0.i3.i, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i ] ; 18 uses
  %i.cf = load ptr, ptr %i.bj, align 8, !tbaa !149, !noalias !503
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv124
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !157, !noalias !503 ; 2 uses
  %.not.i.i52 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i52, label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i56, label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i53

_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i56: ; preds = %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit
  %i.ci = load ptr, ptr %i.bk, align 8, !tbaa !158, !noalias !503
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv124
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !45, !noalias !503 ; 2 uses
  %.not.i.i.i57 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i57, label %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit58, label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i53

_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i53: ; preds = %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i56, %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit
  %.0.i3.i54 = phi ptr [ %i.ck, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i56 ], [ %i.ch, %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.i3.i54, i64 8 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !8, !noalias !503
  %i.cn = add nsw i32 %i.cm, 1
  store i32 %i.cn, ptr %i.cl, align 8, !tbaa !8, !noalias !503
  br label %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit58

_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit58: ; preds = %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i53, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i56
  %.0.i4.i55 = phi ptr [ null, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i56 ], [ %.0.i3.i54, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i53 ] ; 10 uses
  %i.co = icmp eq ptr %.0.i4.i, %.0.i4.i55
  br i1 %i.co, label %bb.p, label %bb.r

bb.p:                                             ; preds = %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit58
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 88 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !276
  %i.cr = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 48 ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !116
  %.not.i.i59 = icmp eq i32 %i.cq, %i.cs
  br i1 %.not.i.i59, label %._crit_edge.i.i, label %bb.q

._crit_edge.i.i:                                  ; preds = %bb.p
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 96
  %.pre.i.i = load double, ptr %.phi.trans.insert.i.i, align 8, !tbaa !277
  br label %_ZNK5Ipopt6Vector3DotERKS0_.exit

bb.q:                                             ; preds = %bb.p
  %i.ct = load ptr, ptr %.0.i4.i, align 8, !tbaa !10
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 48
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = invoke noundef double %i.cv(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i)
          to label %.noexc60 unwind label %bb.w, !inline_history !332 ; 2 uses

.noexc60:                                         ; preds = %bb.q
  %i.cx = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 96
  store double %i.cw, ptr %i.cx, align 8, !tbaa !277
  %i.cy = load i32, ptr %i.cr, align 8, !tbaa !116
  store i32 %i.cy, ptr %i.cp, align 8, !tbaa !276
  br label %_ZNK5Ipopt6Vector3DotERKS0_.exit

bb.r:                                             ; preds = %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.cz = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 64 ; 2 uses
  %i.da = invoke noundef zeroext i1 @_ZN5Ipopt13CachedResultsIdE19GetCachedResult2DepERdPKNS_12TaggedObjectES5_(ptr noundef nonnull align 8 dereferenceable(24) %i.cz, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i, ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i55)
          to label %.noexc61 unwind label %.thread

.noexc61:                                         ; preds = %bb.r
  br i1 %i.da, label %_ZNK5Ipopt6Vector3DotERKS0_.exit.thread, label %bb.s

bb.s:                                             ; preds = %.noexc61
  %i.db = load ptr, ptr %.0.i4.i, align 8, !tbaa !10
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 40
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = invoke noundef double %i.dd(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i, ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i55)
          to label %.noexc62 unwind label %.thread, !inline_history !332

.noexc62:                                         ; preds = %bb.s
  store double %i.de, ptr %i.a, align 8, !tbaa !284
  invoke void @_ZN5Ipopt13CachedResultsIdE19AddCachedResult2DepERKdPKNS_12TaggedObjectES6_(ptr noundef nonnull align 8 dereferenceable(24) %i.cz, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i, ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i55)
          to label %_ZNK5Ipopt6Vector3DotERKS0_.exit.thread unwind label %.thread

_ZNK5Ipopt6Vector3DotERKS0_.exit.thread:          ; preds = %.noexc61, %.noexc62
  %i.df = load double, ptr %i.a, align 8, !tbaa !284
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.t

_ZNK5Ipopt6Vector3DotERKS0_.exit:                 ; preds = %._crit_edge.i.i, %.noexc60
  %i.dg = phi double [ %.pre.i.i, %._crit_edge.i.i ], [ %i.cw, %.noexc60 ] ; 2 uses
  %i.dh = fmul double %i.dg, %i.dg
  br label %bb.t

bb.t:                                             ; preds = %_ZNK5Ipopt6Vector3DotERKS0_.exit, %_ZNK5Ipopt6Vector3DotERKS0_.exit.thread
  %.sink = phi double [ %i.dh, %_ZNK5Ipopt6Vector3DotERKS0_.exit ], [ %i.df, %_ZNK5Ipopt6Vector3DotERKS0_.exit.thread ]
  %i.di = mul nuw nsw i64 %indvars.iv124, %i.bl
  %gep147 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep146.sink, i64 %i.di
  store double %.sink, ptr %gep147, align 8, !tbaa !284
  %i.dj = getelementptr inbounds nuw i8, ptr %.0.i4.i55, i64 8 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !8
  %i.dl = add nsw i32 %i.dk, -1                   ; 2 uses
  store i32 %i.dl, ptr %i.dj, align 8, !tbaa !8
  %i.dm = icmp eq i32 %i.dl, 0
  br i1 %i.dm, label %bb.u, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit

bb.u:                                             ; preds = %bb.t
  %i.dn = load ptr, ptr %.0.i4.i55, align 8, !tbaa !10
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = load ptr, ptr %i.do, align 8
  call void %i.dp(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i55) #20, !inline_history !115
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit:        ; preds = %bb.u, %bb.t
  %i.dq = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 8 ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !8
  %i.ds = add nsw i32 %i.dr, -1                   ; 2 uses
  store i32 %i.ds, ptr %i.dq, align 8, !tbaa !8
  %i.dt = icmp eq i32 %i.ds, 0
  br i1 %i.dt, label %bb.v, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit66

bb.v:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit
  %i.du = load ptr, ptr %.0.i4.i, align 8, !tbaa !10
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8
  call void %i.dw(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i) #20, !inline_history !115
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit66

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit66:      ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit, %bb.v
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 1 ; 2 uses
  %exitcond128.not = icmp eq i64 %indvars.iv.next125, %i.bl
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
  %i.dx = getelementptr inbounds nuw i8, ptr %.0.i4.i55, i64 8 ; 2 uses
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !8
  %i.dz = add nsw i32 %i.dy, -1                   ; 2 uses
  store i32 %i.dz, ptr %i.dx, align 8, !tbaa !8
  %i.ea = icmp eq i32 %i.dz, 0
  br i1 %i.ea, label %bb.y, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit68.thread

bb.y:                                             ; preds = %bb.x
  %i.eb = load ptr, ptr %.0.i4.i55, align 8, !tbaa !10
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8
  call void %i.ed(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i55) #20, !inline_history !115
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit68.thread

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit68.thread: ; preds = %bb.x, %bb.y
  %i.ee = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 8 ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !8
  %i.eg = add nsw i32 %i.ef, -1                   ; 2 uses
  store i32 %i.eg, ptr %i.ee, align 8, !tbaa !8
  %i.eh = icmp eq i32 %i.eg, 0
  br i1 %i.eh, label %bb.z, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit70

bb.z:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit68.thread
  %i.ei = load ptr, ptr %.0.i4.i, align 8, !tbaa !10
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8
  call void %i.ek(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i) #20, !inline_history !115
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit70

bb.aa:                                            ; preds = %._crit_edge, %bb.m, %bb.n
  store ptr %i.l, ptr %1, align 8, !tbaa !70
  %i.el = load i32, ptr %i.n, align 8, !tbaa !8
  %i.em = add nsw i32 %i.el, -1                   ; 2 uses
  store i32 %i.em, ptr %i.n, align 8, !tbaa !8
  %i.en = icmp eq i32 %i.em, 0
  br i1 %i.en, label %bb.ab, label %_ZN5Ipopt8SmartPtrINS_14DenseSymMatrixEED2Ev.exit

bb.ab:                                            ; preds = %bb.aa
  %i.eo = load ptr, ptr %i.l, align 8, !tbaa !10
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8
  call void %i.eq(ptr noundef nonnull align 8 dereferenceable(97) %i.l) #20, !inline_history !287
  br label %_ZN5Ipopt8SmartPtrINS_14DenseSymMatrixEED2Ev.exit

_ZN5Ipopt8SmartPtrINS_14DenseSymMatrixEED2Ev.exit: ; preds = %bb.ab, %bb.aa
  %i.er = load i32, ptr %i.i, align 8, !tbaa !8
  %i.es = add nsw i32 %i.er, -1                   ; 2 uses
  store i32 %i.es, ptr %i.i, align 8, !tbaa !8
  %i.et = icmp eq i32 %i.es, 0
  br i1 %i.et, label %bb.ac, label %_ZN5Ipopt8SmartPtrINS_19DenseSymMatrixSpaceEED2Ev.exit

bb.ac:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_14DenseSymMatrixEED2Ev.exit
  %i.eu = load ptr, ptr %i.g, align 8, !tbaa !10
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8
  call void %i.ew(ptr noundef nonnull align 8 dereferenceable(20) %i.g) #20, !inline_history !288
  br label %_ZN5Ipopt8SmartPtrINS_19DenseSymMatrixSpaceEED2Ev.exit

_ZN5Ipopt8SmartPtrINS_19DenseSymMatrixSpaceEED2Ev.exit: ; preds = %_ZN5Ipopt8SmartPtrINS_14DenseSymMatrixEED2Ev.exit, %bb.ac
  ret void

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit70:      ; preds = %bb.k, %bb.l, %bb.z, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit68.thread
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bb, %bb.l ], [ %i.ba, %bb.k ], [ %lpad.phi93, %bb.z ], [ %lpad.phi93, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit68.thread ] ; 2 uses
  %i.ex = load i32, ptr %i.n, align 8, !tbaa !8
  %i.ey = add nsw i32 %i.ex, -1                   ; 2 uses
  store i32 %i.ey, ptr %i.n, align 8, !tbaa !8
  %i.ez = icmp eq i32 %i.ey, 0
  br i1 %i.ez, label %bb.ad, label %.body

bb.ad:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit70
  %i.fa = load ptr, ptr %i.l, align 8, !tbaa !10
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8
  call void %i.fc(ptr noundef nonnull align 8 dereferenceable(97) %i.l) #20, !inline_history !287
  br label %.body

.body:                                            ; preds = %bb.e, %bb.j, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit70, %bb.ad
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.m, %bb.e ], [ %i.az, %bb.j ], [ %.pn.pn.pn, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit70 ], [ %.pn.pn.pn, %bb.ad ] ; 2 uses
  %i.fd = load i32, ptr %i.i, align 8, !tbaa !8
  %i.fe = add nsw i32 %i.fd, -1                   ; 2 uses
  store i32 %i.fe, ptr %i.i, align 8, !tbaa !8
  %i.ff = icmp eq i32 %i.fe, 0
  br i1 %i.ff, label %bb.ae, label %_ZN5Ipopt8SmartPtrINS_19DenseSymMatrixSpaceEED2Ev.exit76

bb.ae:                                            ; preds = %.body
  %i.fg = load ptr, ptr %i.g, align 8, !tbaa !10
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fi = load ptr, ptr %i.fh, align 8
  call void %i.fi(ptr noundef nonnull align 8 dereferenceable(20) %i.g) #20, !inline_history !288
  br label %_ZN5Ipopt8SmartPtrINS_19DenseSymMatrixSpaceEED2Ev.exit76

_ZN5Ipopt8SmartPtrINS_19DenseSymMatrixSpaceEED2Ev.exit76: ; preds = %bb.ae, %.body, %bb.i
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ay, %bb.i ], [ %.pn.pn.pn.pn, %.body ], [ %.pn.pn.pn.pn, %bb.ae ]
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
  %indvars.iv = phi i64 [ 0, %.preheader87.preheader ], [ %i.ae, %.loopexit ] ; 6 uses
  %i.ae = add nuw nsw i64 %indvars.iv, 1          ; 4 uses
  %4 = mul nuw nsw i64 %i.ae, %i.z
  %5 = mul nuw nsw i64 %indvars.iv, %i.z
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %4 ; 2 uses
  %invariant.gep124 = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %5 ; 2 uses
  %6 = tail call i64 @llvm.umax.i64(i64 %i.ae, i64 %wide.trip.count)
  %7 = sub nsw i64 %6, %indvars.iv                ; 3 uses
  %min.iters.check = icmp ult i64 %7, 4
  %brmerge = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader87
  %n.vec = and i64 %7, -4                         ; 3 uses
  %i.af = add i64 %indvars.iv, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = add nuw i64 %indvars.iv, %index         ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.ag ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %wide.load = load <2 x double>, ptr %i.ai, align 8, !tbaa !284
  %wide.load137 = load <2 x double>, ptr %i.aj, align 8, !tbaa !284
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep124, i64 %i.ag ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store <2 x double> %wide.load, ptr %i.ak, align 8, !tbaa !284
  store <2 x double> %wide.load137, ptr %i.al, align 8, !tbaa !284
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !510

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %7, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader87, %middle.block
  %indvars.iv104.ph = phi i64 [ %i.af, %middle.block ], [ %indvars.iv, %.preheader87 ]
  br label %scalar.ph

.preheader:                                       ; preds = %.loopexit, %_ZN5Ipopt14DenseSymMatrix6ValuesEv.exit45
  %i.an = icmp sgt i32 %i.f, 0
  br i1 %i.an, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.ap = zext nneg i32 %i.v to i64               ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.at = zext nneg i32 %i.f to i64
  %wide.trip.count111 = zext nneg i32 %i.f to i64
  %invariant.gep128.sink = getelementptr [8 x i8], ptr %i.u, i64 %i.ap
  br label %bb.h

bb.d:                                             ; preds = %_ZNK5Ipopt14DenseSymMatrix21MakeNewDenseSymMatrixEv.exit
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit64

bb.e:                                             ; preds = %bb.c
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit64

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %exitcond.not = icmp eq i64 %i.ae, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %.preheader87, !llvm.loop !511

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv104 = phi i64 [ %indvars.iv.next105, %scalar.ph ], [ %indvars.iv104.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1 ; 3 uses
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next105
  %i.aw = load double, ptr %gep, align 8, !tbaa !284
  %gep125 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep124, i64 %indvars.iv104
  store double %i.aw, ptr %gep125, align 8, !tbaa !284
  %i.ax = icmp samesign ult i64 %indvars.iv.next105, %i.y
  br i1 %i.ax, label %scalar.ph, label %.loopexit, !llvm.loop !512

._crit_edge:                                      ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit60, %.preheader
  %i.ay = load i32, ptr %i.k, align 8, !tbaa !8
  %i.az = add nsw i32 %i.ay, 1
  store i32 %i.az, ptr %i.k, align 8, !tbaa !8
  %i.ba = load ptr, ptr %1, align 8, !tbaa !70    ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i.i, label %bb.t, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !8
  %i.bd = add nsw i32 %i.bc, -1                   ; 2 uses
  store i32 %i.bd, ptr %i.bb, align 8, !tbaa !8
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.g, label %bb.t

bb.g:                                             ; preds = %bb.f
  %i.bf = load ptr, ptr %i.ba, align 8, !tbaa !10
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(97) %i.ba) #20, !inline_history !337
  br label %bb.t

bb.h:                                             ; preds = %.lr.ph, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit60
  %indvars.iv108 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next109, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit60 ] ; 4 uses
  %i.bi = load ptr, ptr %i.ao, align 8, !tbaa !149, !noalias !513
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.ap
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !157, !noalias !513 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i, label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i, label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i

_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i:  ; preds = %bb.h
  %i.bl = load ptr, ptr %i.aq, align 8, !tbaa !158, !noalias !513
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.ap
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !45, !noalias !513 ; 2 uses
  %.not.i.i.i46 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i46, label %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit, label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i

_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i: ; preds = %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i, %bb.h
  %.0.i3.i = phi ptr [ %i.bn, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i ], [ %i.bk, %bb.h ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 8 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !8, !noalias !513
  %i.bq = add nsw i32 %i.bp, 1
  store i32 %i.bq, ptr %i.bo, align 8, !tbaa !8, !noalias !513
  br label %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit

_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit:   ; preds = %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i
  %.0.i4.i = phi ptr [ null, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i ], [ %.0.i3.i, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i ] ; 18 uses
  %i.br = load ptr, ptr %i.ar, align 8, !tbaa !149, !noalias !516
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv108
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !157, !noalias !516 ; 2 uses
  %.not.i.i47 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i47, label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i51, label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i48

_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i51: ; preds = %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit
  %i.bu = load ptr, ptr %i.as, align 8, !tbaa !158, !noalias !516
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %indvars.iv108
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !45, !noalias !516 ; 2 uses
  %.not.i.i.i52 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i52, label %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit53, label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i48

_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i48: ; preds = %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i51, %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit
  %.0.i3.i49 = phi ptr [ %i.bw, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i51 ], [ %i.bt, %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.i3.i49, i64 8 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !8, !noalias !516
  %i.bz = add nsw i32 %i.by, 1
  store i32 %i.bz, ptr %i.bx, align 8, !tbaa !8, !noalias !516
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

_ZNK5Ipopt6Vector3DotERKS0_.exit:                 ; preds = %._crit_edge.i.i, %.noexc
  %i.cs = phi double [ %.pre.i.i, %._crit_edge.i.i ], [ %i.ci, %.noexc ] ; 2 uses
  %i.ct = fmul double %i.cs, %i.cs
  br label %bb.m

bb.m:                                             ; preds = %_ZNK5Ipopt6Vector3DotERKS0_.exit, %_ZNK5Ipopt6Vector3DotERKS0_.exit.thread
  %.sink = phi double [ %i.ct, %_ZNK5Ipopt6Vector3DotERKS0_.exit ], [ %i.cr, %_ZNK5Ipopt6Vector3DotERKS0_.exit.thread ]
  %i.cu = mul nuw nsw i64 %indvars.iv108, %i.at
  %gep129 = getelementptr [8 x i8], ptr %invariant.gep128.sink, i64 %i.cu
  store double %.sink, ptr %gep129, align 8, !tbaa !284
  %i.cv = getelementptr inbounds nuw i8, ptr %.0.i4.i50, i64 8 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !8
  %i.cx = add nsw i32 %i.cw, -1                   ; 2 uses
  store i32 %i.cx, ptr %i.cv, align 8, !tbaa !8
  %i.cy = icmp eq i32 %i.cx, 0
  br i1 %i.cy, label %bb.n, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit

bb.n:                                             ; preds = %bb.m
  %i.cz = load ptr, ptr %.0.i4.i50, align 8, !tbaa !10
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.db = load ptr, ptr %i.da, align 8
  call void %i.db(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i50) #20, !inline_history !115
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit:        ; preds = %bb.n, %bb.m
  %i.dc = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 8 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !8
  %i.de = add nsw i32 %i.dd, -1                   ; 2 uses
  store i32 %i.de, ptr %i.dc, align 8, !tbaa !8
  %i.df = icmp eq i32 %i.de, 0
  br i1 %i.df, label %bb.o, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit60

bb.o:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit
  %i.dg = load ptr, ptr %.0.i4.i, align 8, !tbaa !10
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = load ptr, ptr %i.dh, align 8
  call void %i.di(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i) #20, !inline_history !115
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit60

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit60:      ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit, %bb.o
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1 ; 2 uses
  %exitcond112.not = icmp eq i64 %indvars.iv.next109, %wide.trip.count111
  br i1 %exitcond112.not, label %._crit_edge, label %bb.h, !llvm.loop !519

.thread:                                          ; preds = %.noexc56, %bb.l, %bb.k
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %bb.j
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.thread
  %lpad.phi81 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread ], [ %lpad.thr_comm.split-lp, %bb.p ] ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.0.i4.i50, i64 8 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !8
  %i.dl = add nsw i32 %i.dk, -1                   ; 2 uses
  store i32 %i.dl, ptr %i.dj, align 8, !tbaa !8
  %i.dm = icmp eq i32 %i.dl, 0
end_hunk_1
