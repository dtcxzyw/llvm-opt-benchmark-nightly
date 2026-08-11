inline.NumInlined: 5606
inline.NumDeleted: 2279
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 63
begin_hunk_0_@_ZN3igl10doubleareaIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE:bb.a
  %i.dj = getelementptr inbounds [8 x i8], ptr %.pre.i.i, i64 %i.di
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %i.di
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !19
  %.scalar.i.i.i.i.i.i.i.i.i.i.i.i.2 = call noundef double @llvm.sqrt.f64(double %i.dl)
  store double %.scalar.i.i.i.i.i.i.i.i.i.i.i.i.2, ptr %i.dj, align 8, !tbaa !19
  %i.dm = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 3   ; 2 uses
  %i.dn = getelementptr inbounds [8 x i8], ptr %.pre.i.i, i64 %i.dm
  %i.do = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %i.dm
  %i.dp = load double, ptr %i.do, align 8, !tbaa !19
  %.scalar.i.i.i.i.i.i.i.i.i.i.i.i.3 = call noundef double @llvm.sqrt.f64(double %i.dp)
  store double %.scalar.i.i.i.i.i.i.i.i.i.i.i.i.3, ptr %i.dn, align 8, !tbaa !19
  %i.dq = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 4   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.dq, %.pr.i.i.i.i.i.i.i49
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.3, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal14scalar_sqrt_opIdEEKNS_12ArrayWrapperINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEEE4evalEv.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !36

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i.i.i
  %.011.i.i.i.i.i.i.i.i = phi i64 [ %i.dv, %.lr.ph.i.i.i.i.i.i.i.i ], [ 0, %bb.c ] ; 3 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %.011.i.i.i.i.i.i.i.i
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %.011.i.i.i.i.i.i.i.i
  %i.dt = load <2 x double>, ptr %i.ds, align 16, !tbaa !37
  %i.du = call noundef <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.dt)
  store <2 x double> %i.du, ptr %i.dr, align 16, !tbaa !37
  %i.dv = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.dw = icmp slt i64 %i.dv, %i.ch
  br i1 %i.dw, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, !llvm.loop !38

bb.d:                                             ; preds = %thread-pre-split.i.i.i.i.i.i.i
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal14scalar_sqrt_opIdEEKNS_12ArrayWrapperINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEEE4evalEv.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i.i.i, %._crit_edge
  %i.dy = load i64, ptr %i.cf, align 8, !tbaa !15
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.dy, i64 noundef 1)
          to label %.noexc59 unwind label %bb.f

.noexc59:                                         ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal14scalar_sqrt_opIdEEKNS_12ArrayWrapperINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEEE4evalEv.exit
  %i.dz = load ptr, ptr %3, align 8, !tbaa !18    ; 8 uses
  %i.ea = ptrtoaddr ptr %i.dz to i64
  %i.eb = load i64, ptr %i.cf, align 8, !tbaa !15 ; 3 uses
  %i.ec = load i64, ptr %i.f, align 8, !tbaa !15
  %.not.i.i.i.i.i.i.i.i50 = icmp eq i64 %i.ec, %i.eb
  br i1 %.not.i.i.i.i.i.i.i.i50, label %bb.e, label %thread-pre-split.i.i.i.i.i.i.i51

thread-pre-split.i.i.i.i.i.i.i51:                 ; preds = %.noexc59
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.eb, i64 noundef 1)
          to label %.noexc60 unwind label %bb.f

.noexc60:                                         ; preds = %thread-pre-split.i.i.i.i.i.i.i51
  %.pr.i.i.i.i.i.i.i52 = load i64, ptr %i.f, align 8, !tbaa !15
  br label %bb.e

bb.e:                                             ; preds = %.noexc60, %.noexc59
  %i.ed = phi i64 [ %.pr.i.i.i.i.i.i.i52, %.noexc60 ], [ %i.eb, %.noexc59 ] ; 7 uses
  %i.ee = load ptr, ptr %2, align 8, !tbaa !18    ; 8 uses
  %i.ef = ptrtoaddr ptr %i.ee to i64
  %i.eg = sdiv i64 %i.ed, 2                       ; 2 uses
  %i.eh = shl nsw i64 %i.eg, 1                    ; 5 uses
  %i.ei = icmp sgt i64 %i.ed, 1
  br i1 %i.ei, label %.lr.ph.i.i.i.i.i.i.i.i57, label %._crit_edge.i.i.i.i.i.i.i.i53

._crit_edge.i.i.i.i.i.i.i.i53:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i57, %bb.e
  %i.ej = icmp slt i64 %i.eh, %i.ed
  br i1 %i.ej, label %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader, label %.loopexit

.lr.ph.i.i.i.i.i.i.i.i.i54.preheader:             ; preds = %._crit_edge.i.i.i.i.i.i.i.i53
  %i.ek = shl nsw i64 %i.eg, 1
  %i.el = sub i64 %i.ed, %i.ek                    ; 3 uses
  %min.iters.check86 = icmp ult i64 %i.el, 8
  %i.em = sub i64 %i.ea, %i.ef
  %diff.check84 = icmp ugt i64 %i.em, -32
  %or.cond97 = select i1 %min.iters.check86, i1 true, i1 %diff.check84
  br i1 %or.cond97, label %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader98, label %vector.ph87

vector.ph87:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader
  %n.vec88 = and i64 %i.el, -4                    ; 3 uses
  %i.en = add i64 %i.eh, %n.vec88
  br label %vector.body89

vector.body89:                                    ; preds = %vector.body89, %vector.ph87
  %index90 = phi i64 [ 0, %vector.ph87 ], [ %index.next93, %vector.body89 ] ; 2 uses
  %i.eo = add i64 %i.eh, %index90                 ; 2 uses
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.ee, i64 %i.eo ; 2 uses
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.dz, i64 %i.eo ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %wide.load91 = load <2 x double>, ptr %i.eq, align 8, !tbaa !19
  %wide.load92 = load <2 x double>, ptr %i.er, align 8, !tbaa !19
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  store <2 x double> %wide.load91, ptr %i.ep, align 8, !tbaa !19
  store <2 x double> %wide.load92, ptr %i.es, align 8, !tbaa !19
  %index.next93 = add nuw i64 %index90, 4         ; 2 uses
  %i.et = icmp eq i64 %index.next93, %n.vec88
  br i1 %i.et, label %middle.block94, label %vector.body89, !llvm.loop !39

middle.block94:                                   ; preds = %vector.body89
  %cmp.n95 = icmp eq i64 %i.el, %n.vec88
  br i1 %cmp.n95, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader98

.lr.ph.i.i.i.i.i.i.i.i.i54.preheader98:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader, %middle.block94
  %.05.i.i.i.i.i.i.i.i.i55.ph = phi i64 [ %i.eh, %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader ], [ %i.en, %middle.block94 ] ; 4 uses
  %i.eu = sub i64 %i.ed, %.05.i.i.i.i.i.i.i.i.i55.ph
  %xtraiter100 = and i64 %i.eu, 3                 ; 2 uses
  %lcmp.mod101.not = icmp eq i64 %xtraiter100, 0
  br i1 %lcmp.mod101.not, label %.lr.ph.i.i.i.i.i.i.i.i.i54.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i54.prol

.lr.ph.i.i.i.i.i.i.i.i.i54.prol:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader98, %.lr.ph.i.i.i.i.i.i.i.i.i54.prol
  %.05.i.i.i.i.i.i.i.i.i55.prol = phi i64 [ %i.ey, %.lr.ph.i.i.i.i.i.i.i.i.i54.prol ], [ %.05.i.i.i.i.i.i.i.i.i55.ph, %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader98 ] ; 3 uses
  %prol.iter102 = phi i64 [ %prol.iter102.next, %.lr.ph.i.i.i.i.i.i.i.i.i54.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader98 ]
  %i.ev = getelementptr inbounds [8 x i8], ptr %i.ee, i64 %.05.i.i.i.i.i.i.i.i.i55.prol
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.dz, i64 %.05.i.i.i.i.i.i.i.i.i55.prol
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !19
  store double %i.ex, ptr %i.ev, align 8, !tbaa !19
  %i.ey = add nsw i64 %.05.i.i.i.i.i.i.i.i.i55.prol, 1 ; 2 uses
  %prol.iter102.next = add i64 %prol.iter102, 1   ; 2 uses
  %prol.iter102.cmp.not = icmp eq i64 %prol.iter102.next, %xtraiter100
  br i1 %prol.iter102.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i54.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i54.prol, !llvm.loop !40

.lr.ph.i.i.i.i.i.i.i.i.i54.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i54.prol, %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader98
  %.05.i.i.i.i.i.i.i.i.i55.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i55.ph, %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader98 ], [ %i.ey, %.lr.ph.i.i.i.i.i.i.i.i.i54.prol ]
  %i.ez = sub i64 %.05.i.i.i.i.i.i.i.i.i55.ph, %i.ed
  %i.fa = icmp ugt i64 %i.ez, -4
  br i1 %i.fa, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i54

.lr.ph.i.i.i.i.i.i.i.i.i54:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i54.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i54
  %.05.i.i.i.i.i.i.i.i.i55 = phi i64 [ %i.fq, %.lr.ph.i.i.i.i.i.i.i.i.i54 ], [ %.05.i.i.i.i.i.i.i.i.i55.unr, %.lr.ph.i.i.i.i.i.i.i.i.i54.prol.loopexit ] ; 6 uses
  %i.fb = getelementptr inbounds [8 x i8], ptr %i.ee, i64 %.05.i.i.i.i.i.i.i.i.i55
  %i.fc = getelementptr inbounds [8 x i8], ptr %i.dz, i64 %.05.i.i.i.i.i.i.i.i.i55
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !19
  store double %i.fd, ptr %i.fb, align 8, !tbaa !19
  %i.fe = add nsw i64 %.05.i.i.i.i.i.i.i.i.i55, 1 ; 2 uses
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.ee, i64 %i.fe
  %i.fg = getelementptr inbounds [8 x i8], ptr %i.dz, i64 %i.fe
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !19
  store double %i.fh, ptr %i.ff, align 8, !tbaa !19
  %i.fi = add nsw i64 %.05.i.i.i.i.i.i.i.i.i55, 2 ; 2 uses
  %i.fj = getelementptr inbounds [8 x i8], ptr %i.ee, i64 %i.fi
  %i.fk = getelementptr inbounds [8 x i8], ptr %i.dz, i64 %i.fi
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !19
  store double %i.fl, ptr %i.fj, align 8, !tbaa !19
  %i.fm = add nsw i64 %.05.i.i.i.i.i.i.i.i.i55, 3 ; 2 uses
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.ee, i64 %i.fm
  %i.fo = getelementptr inbounds [8 x i8], ptr %i.dz, i64 %i.fm
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !19
  store double %i.fp, ptr %i.fn, align 8, !tbaa !19
  %i.fq = add nsw i64 %.05.i.i.i.i.i.i.i.i.i55, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i56.3 = icmp eq i64 %i.fq, %i.ed
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i56.3, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i54, !llvm.loop !41

.lr.ph.i.i.i.i.i.i.i.i57:                         ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i.i.i57
  %.011.i.i.i.i.i.i.i.i58 = phi i64 [ %i.fu, %.lr.ph.i.i.i.i.i.i.i.i57 ], [ 0, %bb.e ] ; 3 uses
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %.011.i.i.i.i.i.i.i.i58
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %.011.i.i.i.i.i.i.i.i58
  %i.ft = load <2 x double>, ptr %i.fs, align 16, !tbaa !37
  store <2 x double> %i.ft, ptr %i.fr, align 16, !tbaa !37
  %i.fu = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i58, 2 ; 2 uses
  %i.fv = icmp slt i64 %i.fu, %i.eh
  br i1 %i.fv, label %.lr.ph.i.i.i.i.i.i.i.i57, label %._crit_edge.i.i.i.i.i.i.i.i53, !llvm.loop !42

bb.f:                                             ; preds = %thread-pre-split.i.i.i.i.i.i.i51, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal14scalar_sqrt_opIdEEKNS_12ArrayWrapperINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEEE4evalEv.exit
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %bb.f
  %.pn = phi { ptr, i32 } [ %i.fw, %bb.f ], [ %i.dx, %bb.d ]
  %i.fx = load ptr, ptr %3, align 8, !tbaa !18
  call void @free(ptr noundef %i.fx) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %.pn

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i54.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i54, %middle.block94, %._crit_edge.i.i.i.i.i.i.i.i53
  %i.fy = load ptr, ptr %3, align 8, !tbaa !18
  call void @free(ptr noundef %i.fy) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.g

bb.g:                                             ; preds = %.loopexit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl15doublearea_quadIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Matrix.97", align 8  ; 10 uses
  %4 = alloca %"class.Eigen::Matrix.21", align 8  ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !14   ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.c = shl nsw i64 %i.b, 1                      ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.d = icmp sgt i64 %i.b, 1537228672809129301
  br i1 %i.d, label %.noexc.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !43
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i: ; preds = %bb.a
  %5 = mul nsw i64 %i.b, 6
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread, label %bb.b

_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i
  store i64 %i.c, ptr %i.f, align 8, !tbaa !14
  store i64 3, ptr %i.g, align 8, !tbaa !9
  br label %._crit_edge

bb.b:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i
  %i.h = icmp sgt i64 %i.b, 0
  br i1 %i.h, label %bb.c, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.lr.ph

bb.c:                                             ; preds = %bb.b
  %i.i = icmp samesign ugt i64 %5, 4611686018427387903
  br i1 %i.i, label %.noexc, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i

.noexc:                                           ; preds = %bb.c
  %i.j = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.j, align 8, !tbaa !43
  tail call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i: ; preds = %bb.c
  %i.k = mul i64 %i.b, 24
  %i.l = tail call noalias ptr @malloc(i64 noundef %i.k) #25 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.noexc59, label %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread105

_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread105: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i
  store ptr %i.l, ptr %3, align 8, !tbaa !21
  br label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.lr.ph

.noexc59:                                         ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i
  %i.n = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.n, align 8, !tbaa !43
  tail call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
  unreachable

_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.lr.ph: ; preds = %bb.b, %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread105
  %.sink.i108 = phi ptr [ %i.l, %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread105 ], [ null, %bb.b ] ; 24 uses
  store i64 %i.c, ptr %i.f, align 8, !tbaa !14
  store i64 3, ptr %i.g, align 8, !tbaa !9
  %i.o = load ptr, ptr %1, align 8, !tbaa !21     ; 9 uses
  %.idx = shl i64 %i.b, 3                         ; 8 uses
  %.idx93 = shl i64 %i.b, 4                       ; 9 uses
  %.idx94 = mul i64 %i.b, 12                      ; 3 uses
  %min.iters.check = icmp ult i64 %i.b, 134
  br i1 %min.iters.check, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.lr.ph
  %i.p = add i64 %i.b, -1                         ; 2 uses
  %mul.result = shl i64 %i.p, 3                   ; 6 uses
  %mul.overflow = icmp ugt i64 %i.p, 2305843009213693951
  %i.q = getelementptr i8, ptr %.sink.i108, i64 %mul.result
  %i.r = icmp ult ptr %i.q, %.sink.i108
  %scevgep = getelementptr i8, ptr %.sink.i108, i64 %.idx ; 2 uses
  %i.s = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.t = icmp ult ptr %i.s, %scevgep
  %scevgep109 = getelementptr i8, ptr %.sink.i108, i64 %.idx93 ; 2 uses
  %i.u = getelementptr i8, ptr %scevgep109, i64 %mul.result
  %i.v = icmp ult ptr %i.u, %scevgep109
  %i.w = or i1 %i.v, %mul.overflow
  %scevgep110 = getelementptr i8, ptr %.sink.i108, i64 4 ; 2 uses
  %i.x = getelementptr i8, ptr %scevgep110, i64 %mul.result
  %i.y = icmp ult ptr %i.x, %scevgep110
  %i.z = getelementptr i8, ptr %.sink.i108, i64 %.idx
  %scevgep111 = getelementptr i8, ptr %i.z, i64 4 ; 2 uses
  %i.aa = getelementptr i8, ptr %scevgep111, i64 %mul.result
  %i.ab = icmp ult ptr %i.aa, %scevgep111
  %i.ac = getelementptr i8, ptr %.sink.i108, i64 %.idx93
  %scevgep112 = getelementptr i8, ptr %i.ac, i64 4 ; 2 uses
  %i.ad = getelementptr i8, ptr %scevgep112, i64 %mul.result
  %i.ae = icmp ult ptr %i.ad, %scevgep112
  %i.af = or i1 %i.t, %i.r
  %i.ag = or i1 %i.af, %i.w
  %i.ah = or i1 %i.y, %i.ag
  %i.ai = or i1 %i.ab, %i.ah
  %i.aj = or i1 %i.ae, %i.ai
  br i1 %i.aj, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %scevgep113 = getelementptr i8, ptr %i.o, i64 %.idx94 ; 12 uses
  %scevgep114 = getelementptr i8, ptr %i.o, i64 %.idx93 ; 6 uses
  %i.ak = getelementptr i8, ptr %.sink.i108, i64 %.idx
  %scevgep115 = getelementptr i8, ptr %i.ak, i64 -4 ; 6 uses
  %scevgep116 = getelementptr i8, ptr %.sink.i108, i64 %.idx ; 15 uses
  %i.al = getelementptr i8, ptr %.sink.i108, i64 %.idx93
  %scevgep117 = getelementptr i8, ptr %i.al, i64 -4 ; 8 uses
  %scevgep118 = getelementptr i8, ptr %.sink.i108, i64 %.idx93 ; 14 uses
  %i.am = mul i64 %i.b, 24                        ; 2 uses
  %i.an = getelementptr i8, ptr %.sink.i108, i64 %i.am
  %scevgep119 = getelementptr i8, ptr %i.an, i64 -4 ; 7 uses
  %scevgep120 = getelementptr i8, ptr %.sink.i108, i64 4 ; 7 uses
  %i.ao = getelementptr i8, ptr %.sink.i108, i64 %.idx
  %scevgep121 = getelementptr i8, ptr %i.ao, i64 4 ; 7 uses
  %i.ap = getelementptr i8, ptr %.sink.i108, i64 %.idx93
  %scevgep122 = getelementptr i8, ptr %i.ap, i64 4 ; 8 uses
  %scevgep123 = getelementptr i8, ptr %.sink.i108, i64 %i.am ; 8 uses
  %scevgep124 = getelementptr i8, ptr %i.o, i64 %.idx ; 12 uses
  %i.aq = shl nuw i64 %i.b, 2
  %scevgep125 = getelementptr i8, ptr %i.o, i64 %i.aq ; 9 uses
  %bound0 = icmp ult ptr %scevgep113, %scevgep115
  %bound1 = icmp ult ptr %.sink.i108, %scevgep114
  %found.conflict = and i1 %bound0, %bound1
  %bound0126 = icmp ult ptr %scevgep113, %scevgep117
  %bound1127 = icmp ult ptr %scevgep116, %scevgep114
  %found.conflict128 = and i1 %bound0126, %bound1127
  %bound0129 = icmp ult ptr %scevgep113, %scevgep119
  %bound1130 = icmp ult ptr %scevgep118, %scevgep114
  %found.conflict131 = and i1 %bound0129, %bound1130
  %bound0133 = icmp ult ptr %scevgep113, %scevgep116
  %bound1134 = icmp ult ptr %scevgep120, %scevgep114
  %found.conflict135 = and i1 %bound0133, %bound1134
  %bound0137 = icmp ult ptr %scevgep113, %scevgep118
  %bound1138 = icmp ult ptr %scevgep121, %scevgep114
  %found.conflict139 = and i1 %bound0137, %bound1138
  %bound0141 = icmp ult ptr %scevgep113, %scevgep123
  %bound1142 = icmp ult ptr %scevgep122, %scevgep114
  %found.conflict143 = and i1 %bound0141, %bound1142
  %bound0145 = icmp ult ptr %scevgep124, %scevgep115
  %bound1146 = icmp ult ptr %.sink.i108, %scevgep113
  %found.conflict147 = and i1 %bound0145, %bound1146
  %bound0149 = icmp ult ptr %scevgep124, %scevgep117
  %bound1150 = icmp ult ptr %scevgep116, %scevgep113
  %found.conflict151 = and i1 %bound0149, %bound1150
  %bound0153 = icmp ult ptr %scevgep124, %scevgep119
  %bound1154 = icmp ult ptr %scevgep118, %scevgep113
  %found.conflict155 = and i1 %bound0153, %bound1154
  %bound0157 = icmp ult ptr %scevgep124, %scevgep116
  %bound1158 = icmp ult ptr %scevgep120, %scevgep113
  %found.conflict159 = and i1 %bound0157, %bound1158
  %bound0161 = icmp ult ptr %scevgep124, %scevgep118
  %bound1162 = icmp ult ptr %scevgep121, %scevgep113
  %found.conflict163 = and i1 %bound0161, %bound1162
  %bound0165 = icmp ult ptr %scevgep124, %scevgep123
  %bound1166 = icmp ult ptr %scevgep122, %scevgep113
  %found.conflict167 = and i1 %bound0165, %bound1166
  %bound0169 = icmp ult ptr %scevgep125, %scevgep115
  %bound1170 = icmp ult ptr %.sink.i108, %scevgep124
  %found.conflict171 = and i1 %bound0169, %bound1170
  %bound0173 = icmp ult ptr %scevgep125, %scevgep117
  %bound1174 = icmp ult ptr %scevgep116, %scevgep124
  %found.conflict175 = and i1 %bound0173, %bound1174
  %bound0177 = icmp ult ptr %scevgep125, %scevgep119
  %bound1178 = icmp ult ptr %scevgep118, %scevgep124
  %found.conflict179 = and i1 %bound0177, %bound1178
  %bound0181 = icmp ult ptr %scevgep125, %scevgep116
  %bound1182 = icmp ult ptr %scevgep120, %scevgep124
  %found.conflict183 = and i1 %bound0181, %bound1182
  %bound0185 = icmp ult ptr %scevgep125, %scevgep118
  %bound1186 = icmp ult ptr %scevgep121, %scevgep124
  %found.conflict187 = and i1 %bound0185, %bound1186
  %bound0189 = icmp ult ptr %scevgep125, %scevgep123
  %bound1190 = icmp ult ptr %scevgep122, %scevgep124
  %found.conflict191 = and i1 %bound0189, %bound1190
  %bound0193 = icmp ult ptr %i.o, %scevgep115
  %bound1194 = icmp ult ptr %.sink.i108, %scevgep125
  %found.conflict195 = and i1 %bound0193, %bound1194
  %bound0197 = icmp ult ptr %i.o, %scevgep117
  %bound1198 = icmp ult ptr %scevgep116, %scevgep125
  %found.conflict199 = and i1 %bound0197, %bound1198
  %i.ar = insertelement <4 x ptr> poison, ptr %i.o, i64 0
  %i.as = shufflevector <4 x ptr> %i.ar, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.at = insertelement <4 x ptr> poison, ptr %scevgep119, i64 0
  %i.au = insertelement <4 x ptr> %i.at, ptr %scevgep116, i64 1
  %i.av = insertelement <4 x ptr> %i.au, ptr %scevgep118, i64 2
  %i.aw = insertelement <4 x ptr> %i.av, ptr %scevgep123, i64 3 ; 2 uses
  %i.ax = icmp ult <4 x ptr> %i.as, %i.aw
  %i.ay = insertelement <4 x ptr> poison, ptr %scevgep118, i64 0
  %i.az = insertelement <4 x ptr> %i.ay, ptr %scevgep120, i64 1
  %i.ba = insertelement <4 x ptr> %i.az, ptr %scevgep121, i64 2
  %i.bb = insertelement <4 x ptr> %i.ba, ptr %scevgep122, i64 3 ; 2 uses
  %i.bc = insertelement <4 x ptr> poison, ptr %scevgep125, i64 0
  %i.bd = shufflevector <4 x ptr> %i.bc, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.be = icmp ult <4 x ptr> %i.bb, %i.bd
  %i.bf = and <4 x i1> %i.ax, %i.be
  %bound0217 = icmp ult ptr %.sink.i108, %scevgep117
  %bound1218 = icmp ult ptr %scevgep116, %scevgep115
  %found.conflict219 = and i1 %bound0217, %bound1218
  %i.bg = insertelement <4 x ptr> poison, ptr %.sink.i108, i64 0
  %i.bh = shufflevector <4 x ptr> %i.bg, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bi = icmp ult <4 x ptr> %i.bh, %i.aw
  %i.bj = insertelement <4 x ptr> poison, ptr %scevgep115, i64 0
  %i.bk = shufflevector <4 x ptr> %i.bj, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bl = icmp ult <4 x ptr> %i.bb, %i.bk
  %i.bm = and <4 x i1> %i.bi, %i.bl
  %bound0237 = icmp ult ptr %scevgep116, %scevgep119
  %bound1238 = icmp ult ptr %scevgep118, %scevgep117
  %found.conflict239 = and i1 %bound0237, %bound1238
  %bound0242 = icmp ult ptr %scevgep116, %scevgep118
  %bound1243 = icmp ult ptr %scevgep121, %scevgep117
  %found.conflict244 = and i1 %bound0242, %bound1243
  %bound0246 = icmp ult ptr %scevgep116, %scevgep123
  %bound1247 = icmp ult ptr %scevgep122, %scevgep117
  %found.conflict248 = and i1 %bound0246, %bound1247
  %bound0250 = icmp ult ptr %scevgep118, %scevgep116
  %bound1251 = icmp ult ptr %scevgep120, %scevgep119
  %found.conflict252 = and i1 %bound0250, %bound1251
  %bound0255 = icmp ult ptr %scevgep118, %scevgep123
  %bound1256 = icmp ult ptr %scevgep122, %scevgep119
  %found.conflict257 = and i1 %bound0255, %bound1256
  %bound0259 = icmp ult ptr %scevgep120, %scevgep118
  %bound1260 = icmp ult ptr %scevgep121, %scevgep116
  %found.conflict261 = and i1 %bound0259, %bound1260
  %bound0263 = icmp ult ptr %scevgep120, %scevgep123
  %bound1264 = icmp ult ptr %scevgep122, %scevgep116
  %found.conflict265 = and i1 %bound0263, %bound1264
  %bound0267 = icmp ult ptr %scevgep121, %scevgep123
  %bound1268 = icmp ult ptr %scevgep122, %scevgep118
  %found.conflict269 = and i1 %bound0267, %bound1268
  %rdx.op = or <4 x i1> %i.bf, %i.bm
  %i.bn = bitcast <4 x i1> %rdx.op to i4
  %i.bo = icmp ne i4 %i.bn, 0
  %op.rdx = or i1 %i.bo, %found.conflict
end_hunk_0
begin_hunk_1_@_ZN3igl10doubleareaIN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IfLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE:bb.a
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  store <4 x float> %wide.load97, ptr %i.fg, align 4, !tbaa !90
  store <4 x float> %wide.load98, ptr %i.fj, align 4, !tbaa !90
  %index.next99 = add nuw i64 %index96, 8         ; 2 uses
  %i.fk = icmp eq i64 %index.next99, %n.vec94
  br i1 %i.fk, label %middle.block100, label %vector.body95, !llvm.loop !102

middle.block100:                                  ; preds = %vector.body95
  %cmp.n101 = icmp eq i64 %i.fc, %n.vec94
  br i1 %cmp.n101, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEEEaSINS_5ArrayIfLin1ELi1ELi0ELin1ELi1EEEEERS2_RKNS_9EigenBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader104

.lr.ph.i.i.i.i.i.i.i.i.i54.preheader104:          ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader, %middle.block100
  %.05.i.i.i.i.i.i.i.i.i55.ph = phi i64 [ %i.ey, %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader ], [ %i.fe, %middle.block100 ] ; 4 uses
  %i.fl = sub i64 %i.eu, %.05.i.i.i.i.i.i.i.i.i55.ph
  %xtraiter106 = and i64 %i.fl, 3                 ; 2 uses
  %lcmp.mod107.not = icmp eq i64 %xtraiter106, 0
  br i1 %lcmp.mod107.not, label %.lr.ph.i.i.i.i.i.i.i.i.i54.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i54.prol

.lr.ph.i.i.i.i.i.i.i.i.i54.prol:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader104, %.lr.ph.i.i.i.i.i.i.i.i.i54.prol
  %.05.i.i.i.i.i.i.i.i.i55.prol = phi i64 [ %i.fp, %.lr.ph.i.i.i.i.i.i.i.i.i54.prol ], [ %.05.i.i.i.i.i.i.i.i.i55.ph, %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader104 ] ; 3 uses
  %prol.iter108 = phi i64 [ %prol.iter108.next, %.lr.ph.i.i.i.i.i.i.i.i.i54.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader104 ]
  %i.fm = getelementptr inbounds [4 x i8], ptr %i.ev, i64 %.05.i.i.i.i.i.i.i.i.i55.prol
  %i.fn = getelementptr inbounds [4 x i8], ptr %i.eq, i64 %.05.i.i.i.i.i.i.i.i.i55.prol
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !90
  store float %i.fo, ptr %i.fm, align 4, !tbaa !90
  %i.fp = add nsw i64 %.05.i.i.i.i.i.i.i.i.i55.prol, 1 ; 2 uses
  %prol.iter108.next = add i64 %prol.iter108, 1   ; 2 uses
  %prol.iter108.cmp.not = icmp eq i64 %prol.iter108.next, %xtraiter106
  br i1 %prol.iter108.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i54.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i54.prol, !llvm.loop !103

.lr.ph.i.i.i.i.i.i.i.i.i54.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i54.prol, %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader104
  %.05.i.i.i.i.i.i.i.i.i55.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i55.ph, %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader104 ], [ %i.fp, %.lr.ph.i.i.i.i.i.i.i.i.i54.prol ]
  %i.fq = sub i64 %.05.i.i.i.i.i.i.i.i.i55.ph, %i.eu
  %i.fr = icmp ugt i64 %i.fq, -4
  br i1 %i.fr, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEEEaSINS_5ArrayIfLin1ELi1ELi0ELin1ELi1EEEEERS2_RKNS_9EigenBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i54

.lr.ph.i.i.i.i.i.i.i.i.i54:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i54.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i54
  %.05.i.i.i.i.i.i.i.i.i55 = phi i64 [ %i.gh, %.lr.ph.i.i.i.i.i.i.i.i.i54 ], [ %.05.i.i.i.i.i.i.i.i.i55.unr, %.lr.ph.i.i.i.i.i.i.i.i.i54.prol.loopexit ] ; 6 uses
  %i.fs = getelementptr inbounds [4 x i8], ptr %i.ev, i64 %.05.i.i.i.i.i.i.i.i.i55
  %i.ft = getelementptr inbounds [4 x i8], ptr %i.eq, i64 %.05.i.i.i.i.i.i.i.i.i55
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !90
  store float %i.fu, ptr %i.fs, align 4, !tbaa !90
  %i.fv = add nsw i64 %.05.i.i.i.i.i.i.i.i.i55, 1 ; 2 uses
  %i.fw = getelementptr inbounds [4 x i8], ptr %i.ev, i64 %i.fv
  %i.fx = getelementptr inbounds [4 x i8], ptr %i.eq, i64 %i.fv
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !90
  store float %i.fy, ptr %i.fw, align 4, !tbaa !90
  %i.fz = add nsw i64 %.05.i.i.i.i.i.i.i.i.i55, 2 ; 2 uses
  %i.ga = getelementptr inbounds [4 x i8], ptr %i.ev, i64 %i.fz
  %i.gb = getelementptr inbounds [4 x i8], ptr %i.eq, i64 %i.fz
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !90
  store float %i.gc, ptr %i.ga, align 4, !tbaa !90
  %i.gd = add nsw i64 %.05.i.i.i.i.i.i.i.i.i55, 3 ; 2 uses
  %i.ge = getelementptr inbounds [4 x i8], ptr %i.ev, i64 %i.gd
  %i.gf = getelementptr inbounds [4 x i8], ptr %i.eq, i64 %i.gd
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !90
  store float %i.gg, ptr %i.ge, align 4, !tbaa !90
  %i.gh = add nsw i64 %.05.i.i.i.i.i.i.i.i.i55, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i56.3 = icmp eq i64 %i.gh, %i.eu
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i56.3, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEEEaSINS_5ArrayIfLin1ELi1ELi0ELin1ELi1EEEEERS2_RKNS_9EigenBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i54, !llvm.loop !104

.lr.ph.i.i.i.i.i.i.i.i57:                         ; preds = %bb.i, %.lr.ph.i.i.i.i.i.i.i.i57
  %.011.i.i.i.i.i.i.i.i58 = phi i64 [ %i.gl, %.lr.ph.i.i.i.i.i.i.i.i57 ], [ 0, %bb.i ] ; 3 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %.011.i.i.i.i.i.i.i.i58
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %.011.i.i.i.i.i.i.i.i58
  %i.gk = load <4 x float>, ptr %i.gj, align 16, !tbaa !37
  store <4 x float> %i.gk, ptr %i.gi, align 16, !tbaa !37
  %i.gl = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i58, 4 ; 2 uses
  %i.gm = icmp slt i64 %i.gl, %i.ey
  br i1 %i.gm, label %.lr.ph.i.i.i.i.i.i.i.i57, label %._crit_edge.i.i.i.i.i.i.i.i53, !llvm.loop !105

_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEEEaSINS_5ArrayIfLin1ELi1ELi0ELin1ELi1EEEEERS2_RKNS_9EigenBaseIT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i54.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i54, %middle.block100, %._crit_edge.i.i.i.i.i.i.i.i53
  %i.gn = load ptr, ptr %4, align 8, !tbaa !89
  call void @free(ptr noundef %i.gn) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %.loopexit

bb.j:                                             ; preds = %thread-pre-split.i.i.i.i.i.i.i51, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal14scalar_sqrt_opIfEEKNS_12ArrayWrapperINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEEEEEEE4evalEv.exit
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.h, %bb.j
  %.pn = phi { ptr, i32 } [ %i.go, %bb.j ], [ %i.eo, %bb.h ]
  %i.gp = load ptr, ptr %4, align 8, !tbaa !89
  call void @free(ptr noundef %i.gp) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.q

bb.k:                                             ; preds = %bb.c
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.h, i64 noundef 1)
          to label %.preheader71 unwind label %bb.l

.preheader71:                                     ; preds = %bb.k
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader71
  %i.gq = load ptr, ptr %1, align 8, !tbaa !21
  %i.gr = load ptr, ptr %0, align 8, !tbaa !92    ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !93 ; 3 uses
  %i.gu = load i64, ptr %i.g, align 8, !tbaa !14  ; 2 uses
  %.idx.i61 = shl i64 %i.gu, 3
  %i.gv = load ptr, ptr %2, align 8, !tbaa !89
  br label %bb.m

bb.l:                                             ; preds = %bb.o, %bb.n, %bb.k
  %i.gw = landingpad { ptr, i32 }
          cleanup
  %.pre = load ptr, ptr %3, align 8, !tbaa !106
  br label %bb.q

bb.m:                                             ; preds = %.lr.ph, %bb.m
  %.072 = phi i64 [ 0, %.lr.ph ], [ %i.ib, %bb.m ] ; 3 uses
  %sext = shl i64 %.072, 32
  %i.gx = ashr exact i64 %sext, 30
  %i.gy = getelementptr i8, ptr %i.gq, i64 %i.gx  ; 3 uses
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !25
  %i.ha = sext i32 %i.gz to i64
  %i.hb = getelementptr [4 x i8], ptr %i.gr, i64 %i.ha ; 2 uses
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !90
  %i.hd = getelementptr i8, ptr %i.gy, i64 %.idx.i61
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !25
  %i.hf = sext i32 %i.he to i64
  %i.hg = getelementptr [4 x i8], ptr %i.gr, i64 %i.hf ; 2 uses
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !90 ; 2 uses
  %i.hi = fsub float %i.hc, %i.hh
  %i.hj = getelementptr [4 x i8], ptr %i.gy, i64 %i.gu
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !25
  %i.hl = sext i32 %i.hk to i64
  %i.hm = getelementptr [4 x i8], ptr %i.gr, i64 %i.hl ; 2 uses
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !90
  %i.ho = fsub float %i.hn, %i.hh
  %i.hp = getelementptr [4 x i8], ptr %i.hb, i64 %i.gt
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !90
  %i.hr = getelementptr [4 x i8], ptr %i.hg, i64 %i.gt
  %i.hs = load float, ptr %i.hr, align 4, !tbaa !90 ; 2 uses
  %i.ht = fsub float %i.hq, %i.hs
  %i.hu = getelementptr [4 x i8], ptr %i.hm, i64 %i.gt
  %i.hv = load float, ptr %i.hu, align 4, !tbaa !90
  %i.hw = fsub float %i.hv, %i.hs
  %i.hx = fneg float %i.ho
  %i.hy = fmul float %i.ht, %i.hx
  %i.hz = tail call noundef float @llvm.fmuladd.f32(float %i.hi, float %i.hw, float %i.hy)
  %i.ia = getelementptr inbounds [4 x i8], ptr %i.gv, i64 %.072
  store float %i.hz, ptr %i.ia, align 4, !tbaa !90
  %i.ib = add nuw i64 %.072, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ib, %i.h
  br i1 %exitcond.not, label %.loopexit, label %bb.m, !llvm.loop !108

bb.n:                                             ; preds = %bb.c
  invoke void @_ZN3igl12edge_lengthsIN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IfLin1ELi3ELi0ELin1ELi3EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.o unwind label %bb.l

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN3igl10doubleareaIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEENS2_IfLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EENS6_6ScalarERNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1) %3, float noundef 0.000000e+00, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %..loopexit_crit_edge unwind label %bb.l

..loopexit_crit_edge:                             ; preds = %bb.o
  %.pre80 = load ptr, ptr %3, align 8, !tbaa !106
  br label %.loopexit

.loopexit:                                        ; preds = %bb.m, %..loopexit_crit_edge, %.preheader71, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEEEaSINS_5ArrayIfLin1ELi1ELi0ELin1ELi1EEEEERS2_RKNS_9EigenBaseIT_EE.exit
  %i.ic = phi ptr [ %.pre80, %..loopexit_crit_edge ], [ null, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEEEaSINS_5ArrayIfLin1ELi1ELi0ELin1ELi1EEEEERS2_RKNS_9EigenBaseIT_EE.exit ], [ null, %.preheader71 ], [ null, %bb.m ]
  call void @free(ptr noundef %i.ic) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.p

bb.p:                                             ; preds = %.loopexit, %bb.b
  ret void

bb.q:                                             ; preds = %bb.l, %.body, %bb.f
  %i.id = phi ptr [ %.pre, %bb.l ], [ null, %bb.f ], [ null, %.body ]
  %.pn45 = phi { ptr, i32 } [ %i.gw, %bb.l ], [ %i.cf, %bb.f ], [ %.pn, %.body ]
  call void @free(ptr noundef %i.id) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %.pn45
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl15doublearea_quadIN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IfLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Matrix.97", align 8  ; 10 uses
  %4 = alloca %"class.Eigen::Matrix.68", align 8  ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !14   ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.c = shl nsw i64 %i.b, 1                      ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.d = icmp sgt i64 %i.b, 1537228672809129301
  br i1 %i.d, label %.noexc.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !43
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i: ; preds = %bb.a
  %5 = mul nsw i64 %i.b, 6
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread, label %bb.b

_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i
  store i64 %i.c, ptr %i.f, align 8, !tbaa !14
  store i64 3, ptr %i.g, align 8, !tbaa !9
  br label %._crit_edge

bb.b:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i
  %i.h = icmp sgt i64 %i.b, 0
  br i1 %i.h, label %bb.c, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.lr.ph

bb.c:                                             ; preds = %bb.b
  %i.i = icmp samesign ugt i64 %5, 4611686018427387903
  br i1 %i.i, label %.noexc, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i

.noexc:                                           ; preds = %bb.c
  %i.j = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.j, align 8, !tbaa !43
  tail call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i: ; preds = %bb.c
  %i.k = mul i64 %i.b, 24
  %i.l = tail call noalias ptr @malloc(i64 noundef %i.k) #25 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.noexc59, label %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread105

_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread105: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i
  store ptr %i.l, ptr %3, align 8, !tbaa !21
  br label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.lr.ph

.noexc59:                                         ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i
  %i.n = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.n, align 8, !tbaa !43
  tail call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
  unreachable

_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.lr.ph: ; preds = %bb.b, %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread105
  %.sink.i108 = phi ptr [ %i.l, %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread105 ], [ null, %bb.b ] ; 24 uses
  store i64 %i.c, ptr %i.f, align 8, !tbaa !14
  store i64 3, ptr %i.g, align 8, !tbaa !9
  %i.o = load ptr, ptr %1, align 8, !tbaa !21     ; 9 uses
  %.idx = shl i64 %i.b, 3                         ; 8 uses
  %.idx93 = shl i64 %i.b, 4                       ; 9 uses
  %.idx94 = mul i64 %i.b, 12                      ; 3 uses
  %min.iters.check = icmp ult i64 %i.b, 134
  br i1 %min.iters.check, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.lr.ph
  %i.p = add i64 %i.b, -1                         ; 2 uses
  %mul.result = shl i64 %i.p, 3                   ; 6 uses
  %mul.overflow = icmp ugt i64 %i.p, 2305843009213693951
  %i.q = getelementptr i8, ptr %.sink.i108, i64 %mul.result
  %i.r = icmp ult ptr %i.q, %.sink.i108
  %scevgep = getelementptr i8, ptr %.sink.i108, i64 %.idx ; 2 uses
  %i.s = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.t = icmp ult ptr %i.s, %scevgep
  %scevgep109 = getelementptr i8, ptr %.sink.i108, i64 %.idx93 ; 2 uses
  %i.u = getelementptr i8, ptr %scevgep109, i64 %mul.result
  %i.v = icmp ult ptr %i.u, %scevgep109
  %i.w = or i1 %i.v, %mul.overflow
  %scevgep110 = getelementptr i8, ptr %.sink.i108, i64 4 ; 2 uses
  %i.x = getelementptr i8, ptr %scevgep110, i64 %mul.result
  %i.y = icmp ult ptr %i.x, %scevgep110
  %i.z = getelementptr i8, ptr %.sink.i108, i64 %.idx
  %scevgep111 = getelementptr i8, ptr %i.z, i64 4 ; 2 uses
  %i.aa = getelementptr i8, ptr %scevgep111, i64 %mul.result
  %i.ab = icmp ult ptr %i.aa, %scevgep111
  %i.ac = getelementptr i8, ptr %.sink.i108, i64 %.idx93
  %scevgep112 = getelementptr i8, ptr %i.ac, i64 4 ; 2 uses
  %i.ad = getelementptr i8, ptr %scevgep112, i64 %mul.result
  %i.ae = icmp ult ptr %i.ad, %scevgep112
  %i.af = or i1 %i.t, %i.r
  %i.ag = or i1 %i.af, %i.w
  %i.ah = or i1 %i.y, %i.ag
  %i.ai = or i1 %i.ab, %i.ah
  %i.aj = or i1 %i.ae, %i.ai
  br i1 %i.aj, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %scevgep113 = getelementptr i8, ptr %i.o, i64 %.idx94 ; 12 uses
  %scevgep114 = getelementptr i8, ptr %i.o, i64 %.idx93 ; 6 uses
  %i.ak = getelementptr i8, ptr %.sink.i108, i64 %.idx
  %scevgep115 = getelementptr i8, ptr %i.ak, i64 -4 ; 6 uses
  %scevgep116 = getelementptr i8, ptr %.sink.i108, i64 %.idx ; 15 uses
  %i.al = getelementptr i8, ptr %.sink.i108, i64 %.idx93
  %scevgep117 = getelementptr i8, ptr %i.al, i64 -4 ; 8 uses
  %scevgep118 = getelementptr i8, ptr %.sink.i108, i64 %.idx93 ; 14 uses
  %i.am = mul i64 %i.b, 24                        ; 2 uses
  %i.an = getelementptr i8, ptr %.sink.i108, i64 %i.am
  %scevgep119 = getelementptr i8, ptr %i.an, i64 -4 ; 7 uses
  %scevgep120 = getelementptr i8, ptr %.sink.i108, i64 4 ; 7 uses
  %i.ao = getelementptr i8, ptr %.sink.i108, i64 %.idx
  %scevgep121 = getelementptr i8, ptr %i.ao, i64 4 ; 7 uses
  %i.ap = getelementptr i8, ptr %.sink.i108, i64 %.idx93
  %scevgep122 = getelementptr i8, ptr %i.ap, i64 4 ; 8 uses
  %scevgep123 = getelementptr i8, ptr %.sink.i108, i64 %i.am ; 8 uses
  %scevgep124 = getelementptr i8, ptr %i.o, i64 %.idx ; 12 uses
  %i.aq = shl nuw i64 %i.b, 2
  %scevgep125 = getelementptr i8, ptr %i.o, i64 %i.aq ; 9 uses
  %bound0 = icmp ult ptr %scevgep113, %scevgep115
  %bound1 = icmp ult ptr %.sink.i108, %scevgep114
  %found.conflict = and i1 %bound0, %bound1
  %bound0126 = icmp ult ptr %scevgep113, %scevgep117
  %bound1127 = icmp ult ptr %scevgep116, %scevgep114
  %found.conflict128 = and i1 %bound0126, %bound1127
  %bound0129 = icmp ult ptr %scevgep113, %scevgep119
  %bound1130 = icmp ult ptr %scevgep118, %scevgep114
  %found.conflict131 = and i1 %bound0129, %bound1130
  %bound0133 = icmp ult ptr %scevgep113, %scevgep116
  %bound1134 = icmp ult ptr %scevgep120, %scevgep114
  %found.conflict135 = and i1 %bound0133, %bound1134
  %bound0137 = icmp ult ptr %scevgep113, %scevgep118
  %bound1138 = icmp ult ptr %scevgep121, %scevgep114
  %found.conflict139 = and i1 %bound0137, %bound1138
  %bound0141 = icmp ult ptr %scevgep113, %scevgep123
  %bound1142 = icmp ult ptr %scevgep122, %scevgep114
  %found.conflict143 = and i1 %bound0141, %bound1142
  %bound0145 = icmp ult ptr %scevgep124, %scevgep115
  %bound1146 = icmp ult ptr %.sink.i108, %scevgep113
  %found.conflict147 = and i1 %bound0145, %bound1146
  %bound0149 = icmp ult ptr %scevgep124, %scevgep117
  %bound1150 = icmp ult ptr %scevgep116, %scevgep113
  %found.conflict151 = and i1 %bound0149, %bound1150
  %bound0153 = icmp ult ptr %scevgep124, %scevgep119
  %bound1154 = icmp ult ptr %scevgep118, %scevgep113
  %found.conflict155 = and i1 %bound0153, %bound1154
  %bound0157 = icmp ult ptr %scevgep124, %scevgep116
  %bound1158 = icmp ult ptr %scevgep120, %scevgep113
  %found.conflict159 = and i1 %bound0157, %bound1158
  %bound0161 = icmp ult ptr %scevgep124, %scevgep118
  %bound1162 = icmp ult ptr %scevgep121, %scevgep113
  %found.conflict163 = and i1 %bound0161, %bound1162
  %bound0165 = icmp ult ptr %scevgep124, %scevgep123
  %bound1166 = icmp ult ptr %scevgep122, %scevgep113
  %found.conflict167 = and i1 %bound0165, %bound1166
  %bound0169 = icmp ult ptr %scevgep125, %scevgep115
  %bound1170 = icmp ult ptr %.sink.i108, %scevgep124
  %found.conflict171 = and i1 %bound0169, %bound1170
  %bound0173 = icmp ult ptr %scevgep125, %scevgep117
  %bound1174 = icmp ult ptr %scevgep116, %scevgep124
  %found.conflict175 = and i1 %bound0173, %bound1174
  %bound0177 = icmp ult ptr %scevgep125, %scevgep119
  %bound1178 = icmp ult ptr %scevgep118, %scevgep124
  %found.conflict179 = and i1 %bound0177, %bound1178
  %bound0181 = icmp ult ptr %scevgep125, %scevgep116
  %bound1182 = icmp ult ptr %scevgep120, %scevgep124
  %found.conflict183 = and i1 %bound0181, %bound1182
  %bound0185 = icmp ult ptr %scevgep125, %scevgep118
  %bound1186 = icmp ult ptr %scevgep121, %scevgep124
  %found.conflict187 = and i1 %bound0185, %bound1186
  %bound0189 = icmp ult ptr %scevgep125, %scevgep123
  %bound1190 = icmp ult ptr %scevgep122, %scevgep124
  %found.conflict191 = and i1 %bound0189, %bound1190
  %bound0193 = icmp ult ptr %i.o, %scevgep115
  %bound1194 = icmp ult ptr %.sink.i108, %scevgep125
  %found.conflict195 = and i1 %bound0193, %bound1194
  %bound0197 = icmp ult ptr %i.o, %scevgep117
  %bound1198 = icmp ult ptr %scevgep116, %scevgep125
  %found.conflict199 = and i1 %bound0197, %bound1198
  %i.ar = insertelement <4 x ptr> poison, ptr %i.o, i64 0
  %i.as = shufflevector <4 x ptr> %i.ar, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.at = insertelement <4 x ptr> poison, ptr %scevgep119, i64 0
  %i.au = insertelement <4 x ptr> %i.at, ptr %scevgep116, i64 1
  %i.av = insertelement <4 x ptr> %i.au, ptr %scevgep118, i64 2
  %i.aw = insertelement <4 x ptr> %i.av, ptr %scevgep123, i64 3 ; 2 uses
  %i.ax = icmp ult <4 x ptr> %i.as, %i.aw
  %i.ay = insertelement <4 x ptr> poison, ptr %scevgep118, i64 0
  %i.az = insertelement <4 x ptr> %i.ay, ptr %scevgep120, i64 1
  %i.ba = insertelement <4 x ptr> %i.az, ptr %scevgep121, i64 2
  %i.bb = insertelement <4 x ptr> %i.ba, ptr %scevgep122, i64 3 ; 2 uses
  %i.bc = insertelement <4 x ptr> poison, ptr %scevgep125, i64 0
  %i.bd = shufflevector <4 x ptr> %i.bc, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.be = icmp ult <4 x ptr> %i.bb, %i.bd
  %i.bf = and <4 x i1> %i.ax, %i.be
  %bound0217 = icmp ult ptr %.sink.i108, %scevgep117
  %bound1218 = icmp ult ptr %scevgep116, %scevgep115
  %found.conflict219 = and i1 %bound0217, %bound1218
  %i.bg = insertelement <4 x ptr> poison, ptr %.sink.i108, i64 0
  %i.bh = shufflevector <4 x ptr> %i.bg, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bi = icmp ult <4 x ptr> %i.bh, %i.aw
  %i.bj = insertelement <4 x ptr> poison, ptr %scevgep115, i64 0
  %i.bk = shufflevector <4 x ptr> %i.bj, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bl = icmp ult <4 x ptr> %i.bb, %i.bk
  %i.bm = and <4 x i1> %i.bi, %i.bl
  %bound0237 = icmp ult ptr %scevgep116, %scevgep119
  %bound1238 = icmp ult ptr %scevgep118, %scevgep117
  %found.conflict239 = and i1 %bound0237, %bound1238
  %bound0242 = icmp ult ptr %scevgep116, %scevgep118
  %bound1243 = icmp ult ptr %scevgep121, %scevgep117
  %found.conflict244 = and i1 %bound0242, %bound1243
  %bound0246 = icmp ult ptr %scevgep116, %scevgep123
  %bound1247 = icmp ult ptr %scevgep122, %scevgep117
  %found.conflict248 = and i1 %bound0246, %bound1247
  %bound0250 = icmp ult ptr %scevgep118, %scevgep116
  %bound1251 = icmp ult ptr %scevgep120, %scevgep119
  %found.conflict252 = and i1 %bound0250, %bound1251
  %bound0255 = icmp ult ptr %scevgep118, %scevgep123
  %bound1256 = icmp ult ptr %scevgep122, %scevgep119
  %found.conflict257 = and i1 %bound0255, %bound1256
  %bound0259 = icmp ult ptr %scevgep120, %scevgep118
  %bound1260 = icmp ult ptr %scevgep121, %scevgep116
  %found.conflict261 = and i1 %bound0259, %bound1260
  %bound0263 = icmp ult ptr %scevgep120, %scevgep123
  %bound1264 = icmp ult ptr %scevgep122, %scevgep116
  %found.conflict265 = and i1 %bound0263, %bound1264
  %bound0267 = icmp ult ptr %scevgep121, %scevgep123
  %bound1268 = icmp ult ptr %scevgep122, %scevgep118
  %found.conflict269 = and i1 %bound0267, %bound1268
  %rdx.op = or <4 x i1> %i.bf, %i.bm
  %i.bn = bitcast <4 x i1> %rdx.op to i4
  %i.bo = icmp ne i4 %i.bn, 0
  %op.rdx = or i1 %i.bo, %found.conflict
end_hunk_1
begin_hunk_2_@_ZN3igl10doubleareaIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEENS2_IfLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EENS6_6ScalarERNS1_15PlainObjectBaseIT0_EE:bb.a

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.i = load ptr, ptr %6, align 8, !tbaa !21
  call void @free(ptr noundef %i.i) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.j = load ptr, ptr %5, align 8, !tbaa !106
  call void @free(ptr noundef %i.j) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret void

bb.e:                                             ; preds = %bb.b, %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.l, %bb.f ], [ %i.k, %bb.e ]
  %i.m = load ptr, ptr %6, align 8, !tbaa !21
  call void @free(ptr noundef %i.m) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.n = load ptr, ptr %5, align 8, !tbaa !106
  call void @free(ptr noundef %i.n) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl10doubleareaIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EENS6_6ScalarERNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, double noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.anon.636, align 1            ; 4 uses
  %4 = alloca %class.anon.638, align 8            ; 4 uses
  %i.a = alloca double, align 8                   ; 2 uses
  %5 = alloca %"class.Eigen::Matrix", align 8     ; 9 uses
  %6 = alloca %"class.Eigen::Matrix.97", align 8  ; 7 uses
  %7 = alloca %class.anon.100, align 8            ; 7 uses
  store double %1, ptr %i.a, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !147
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  invoke void @_ZN3igl4sortIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_9DenseBaseIT_EEibRNS1_15PlainObjectBaseIT0_EERNSB_IT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 2, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !24
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.e, i64 noundef 1)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  store ptr %5, ptr %7, align 8, !tbaa !78
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %2, ptr %i.f, align 8, !tbaa !80
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.a, ptr %i.g, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr %7, ptr %4, align 8, !tbaa !83
  %i.h = invoke noundef zeroext i1 @_ZN3igl12parallel_forIlZNS_12parallel_forIlZNS_10doubleareaIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EENS8_6ScalarERNS3_15PlainObjectBaseIT0_EEEUliE_EEbS8_RKSE_mEUlmE_ZNS1_IlSH_EEbS8_SJ_mEUllmE_SK_EEbS8_SJ_RKT1_RKT2_m(i64 noundef %i.c, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %3, i64 noundef 1000)
          to label %bb.d unwind label %bb.f       ; 0 uses

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.i = load ptr, ptr %6, align 8, !tbaa !21
  call void @free(ptr noundef %i.i) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.j = load ptr, ptr %5, align 8, !tbaa !22
  call void @free(ptr noundef %i.j) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret void

bb.e:                                             ; preds = %bb.b, %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.l, %bb.f ], [ %i.k, %bb.e ]
  %i.m = load ptr, ptr %6, align 8, !tbaa !21
  call void @free(ptr noundef %i.m) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.n = load ptr, ptr %5, align 8, !tbaa !22
  call void @free(ptr noundef %i.n) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  resume { ptr, i32 } %.pn
}

declare void @_ZN3igl4sortIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_9DenseBaseIT_EEibRNS1_15PlainObjectBaseIT0_EERNSB_IT1_EE(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl10doubleareaIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9
  %i.c = icmp eq i64 %i.b, 4
  br i1 %i.c, label %bb.b, label %.preheader

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3igl15doublearea_quadIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br label %._crit_edge

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !14   ; 3 uses
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.e, i64 noundef 1)
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.f = load ptr, ptr %1, align 8, !tbaa !21
  %i.g = load ptr, ptr %0, align 8, !tbaa !149    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !151  ; 3 uses
  %i.j = load i64, ptr %i.d, align 8, !tbaa !14   ; 2 uses
  %.idx.i61 = shl i64 %i.j, 3
  %i.k = load ptr, ptr %2, align 8, !tbaa !18
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.070 = phi i64 [ 0, %.lr.ph ], [ %i.ap, %bb.c ] ; 3 uses
  %sext = shl i64 %.070, 32
  %i.l = ashr exact i64 %sext, 30
  %i.m = getelementptr i8, ptr %i.f, i64 %i.l     ; 3 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !25
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr [8 x i8], ptr %i.g, i64 %i.o ; 2 uses
  %i.q = load double, ptr %i.p, align 8, !tbaa !19
  %i.r = getelementptr i8, ptr %i.m, i64 %.idx.i61
  %i.s = load i32, ptr %i.r, align 4, !tbaa !25
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr [8 x i8], ptr %i.g, i64 %i.t ; 2 uses
  %i.v = load double, ptr %i.u, align 8, !tbaa !19 ; 2 uses
  %i.w = fsub double %i.q, %i.v
  %i.x = getelementptr [4 x i8], ptr %i.m, i64 %i.j
  %i.y = load i32, ptr %i.x, align 4, !tbaa !25
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr [8 x i8], ptr %i.g, i64 %i.z ; 2 uses
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !19
  %i.ac = fsub double %i.ab, %i.v
  %i.ad = getelementptr [8 x i8], ptr %i.p, i64 %i.i
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !19
  %i.af = getelementptr [8 x i8], ptr %i.u, i64 %i.i
  %i.ag = load double, ptr %i.af, align 8, !tbaa !19 ; 2 uses
  %i.ah = fsub double %i.ae, %i.ag
  %i.ai = getelementptr [8 x i8], ptr %i.aa, i64 %i.i
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !19
  %i.ak = fsub double %i.aj, %i.ag
  %i.al = fneg double %i.ac
  %i.am = fmul double %i.ah, %i.al
  %i.an = tail call noundef double @llvm.fmuladd.f64(double %i.w, double %i.ak, double %i.am)
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.k, i64 %.070
  store double %i.an, ptr %i.ao, align 8, !tbaa !19
  %i.ap = add nuw i64 %.070, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ap, %i.e
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !152

._crit_edge:                                      ; preds = %bb.c, %.preheader, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl15doublearea_quadIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Matrix.97", align 8  ; 10 uses
  %4 = alloca %"class.Eigen::Matrix.21", align 8  ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !14   ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.c = shl nsw i64 %i.b, 1                      ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.d = icmp sgt i64 %i.b, 1537228672809129301
  br i1 %i.d, label %.noexc.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !43
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i: ; preds = %bb.a
  %5 = mul nsw i64 %i.b, 6
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread, label %bb.b

_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i
  store i64 %i.c, ptr %i.f, align 8, !tbaa !14
  store i64 3, ptr %i.g, align 8, !tbaa !9
  br label %._crit_edge

bb.b:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i
  %i.h = icmp sgt i64 %i.b, 0
  br i1 %i.h, label %bb.c, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.lr.ph

bb.c:                                             ; preds = %bb.b
  %i.i = icmp samesign ugt i64 %5, 4611686018427387903
  br i1 %i.i, label %.noexc, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i

.noexc:                                           ; preds = %bb.c
  %i.j = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.j, align 8, !tbaa !43
  tail call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i: ; preds = %bb.c
  %i.k = mul i64 %i.b, 24
  %i.l = tail call noalias ptr @malloc(i64 noundef %i.k) #25 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.noexc59, label %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread105

_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread105: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i
  store ptr %i.l, ptr %3, align 8, !tbaa !21
  br label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.lr.ph

.noexc59:                                         ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i
  %i.n = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.n, align 8, !tbaa !43
  tail call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
  unreachable

_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.lr.ph: ; preds = %bb.b, %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread105
  %.sink.i108 = phi ptr [ %i.l, %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread105 ], [ null, %bb.b ] ; 24 uses
  store i64 %i.c, ptr %i.f, align 8, !tbaa !14
  store i64 3, ptr %i.g, align 8, !tbaa !9
  %i.o = load ptr, ptr %1, align 8, !tbaa !21     ; 9 uses
  %.idx = shl i64 %i.b, 3                         ; 8 uses
  %.idx93 = shl i64 %i.b, 4                       ; 9 uses
  %.idx94 = mul i64 %i.b, 12                      ; 3 uses
  %min.iters.check = icmp ult i64 %i.b, 134
  br i1 %min.iters.check, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.lr.ph
  %i.p = add i64 %i.b, -1                         ; 2 uses
  %mul.result = shl i64 %i.p, 3                   ; 6 uses
  %mul.overflow = icmp ugt i64 %i.p, 2305843009213693951
  %i.q = getelementptr i8, ptr %.sink.i108, i64 %mul.result
  %i.r = icmp ult ptr %i.q, %.sink.i108
  %scevgep = getelementptr i8, ptr %.sink.i108, i64 %.idx ; 2 uses
  %i.s = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.t = icmp ult ptr %i.s, %scevgep
  %scevgep109 = getelementptr i8, ptr %.sink.i108, i64 %.idx93 ; 2 uses
  %i.u = getelementptr i8, ptr %scevgep109, i64 %mul.result
  %i.v = icmp ult ptr %i.u, %scevgep109
  %i.w = or i1 %i.v, %mul.overflow
  %scevgep110 = getelementptr i8, ptr %.sink.i108, i64 4 ; 2 uses
  %i.x = getelementptr i8, ptr %scevgep110, i64 %mul.result
  %i.y = icmp ult ptr %i.x, %scevgep110
  %i.z = getelementptr i8, ptr %.sink.i108, i64 %.idx
  %scevgep111 = getelementptr i8, ptr %i.z, i64 4 ; 2 uses
  %i.aa = getelementptr i8, ptr %scevgep111, i64 %mul.result
  %i.ab = icmp ult ptr %i.aa, %scevgep111
  %i.ac = getelementptr i8, ptr %.sink.i108, i64 %.idx93
  %scevgep112 = getelementptr i8, ptr %i.ac, i64 4 ; 2 uses
  %i.ad = getelementptr i8, ptr %scevgep112, i64 %mul.result
  %i.ae = icmp ult ptr %i.ad, %scevgep112
  %i.af = or i1 %i.t, %i.r
  %i.ag = or i1 %i.af, %i.w
  %i.ah = or i1 %i.y, %i.ag
  %i.ai = or i1 %i.ab, %i.ah
  %i.aj = or i1 %i.ae, %i.ai
  br i1 %i.aj, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %scevgep113 = getelementptr i8, ptr %i.o, i64 %.idx94 ; 12 uses
  %scevgep114 = getelementptr i8, ptr %i.o, i64 %.idx93 ; 6 uses
  %i.ak = getelementptr i8, ptr %.sink.i108, i64 %.idx
  %scevgep115 = getelementptr i8, ptr %i.ak, i64 -4 ; 6 uses
  %scevgep116 = getelementptr i8, ptr %.sink.i108, i64 %.idx ; 15 uses
  %i.al = getelementptr i8, ptr %.sink.i108, i64 %.idx93
  %scevgep117 = getelementptr i8, ptr %i.al, i64 -4 ; 8 uses
  %scevgep118 = getelementptr i8, ptr %.sink.i108, i64 %.idx93 ; 14 uses
  %i.am = mul i64 %i.b, 24                        ; 2 uses
  %i.an = getelementptr i8, ptr %.sink.i108, i64 %i.am
  %scevgep119 = getelementptr i8, ptr %i.an, i64 -4 ; 7 uses
  %scevgep120 = getelementptr i8, ptr %.sink.i108, i64 4 ; 7 uses
  %i.ao = getelementptr i8, ptr %.sink.i108, i64 %.idx
  %scevgep121 = getelementptr i8, ptr %i.ao, i64 4 ; 7 uses
  %i.ap = getelementptr i8, ptr %.sink.i108, i64 %.idx93
  %scevgep122 = getelementptr i8, ptr %i.ap, i64 4 ; 8 uses
  %scevgep123 = getelementptr i8, ptr %.sink.i108, i64 %i.am ; 8 uses
  %scevgep124 = getelementptr i8, ptr %i.o, i64 %.idx ; 12 uses
  %i.aq = shl nuw i64 %i.b, 2
  %scevgep125 = getelementptr i8, ptr %i.o, i64 %i.aq ; 9 uses
  %bound0 = icmp ult ptr %scevgep113, %scevgep115
  %bound1 = icmp ult ptr %.sink.i108, %scevgep114
  %found.conflict = and i1 %bound0, %bound1
  %bound0126 = icmp ult ptr %scevgep113, %scevgep117
  %bound1127 = icmp ult ptr %scevgep116, %scevgep114
  %found.conflict128 = and i1 %bound0126, %bound1127
  %bound0129 = icmp ult ptr %scevgep113, %scevgep119
  %bound1130 = icmp ult ptr %scevgep118, %scevgep114
  %found.conflict131 = and i1 %bound0129, %bound1130
  %bound0133 = icmp ult ptr %scevgep113, %scevgep116
  %bound1134 = icmp ult ptr %scevgep120, %scevgep114
  %found.conflict135 = and i1 %bound0133, %bound1134
  %bound0137 = icmp ult ptr %scevgep113, %scevgep118
  %bound1138 = icmp ult ptr %scevgep121, %scevgep114
  %found.conflict139 = and i1 %bound0137, %bound1138
  %bound0141 = icmp ult ptr %scevgep113, %scevgep123
  %bound1142 = icmp ult ptr %scevgep122, %scevgep114
  %found.conflict143 = and i1 %bound0141, %bound1142
  %bound0145 = icmp ult ptr %scevgep124, %scevgep115
  %bound1146 = icmp ult ptr %.sink.i108, %scevgep113
  %found.conflict147 = and i1 %bound0145, %bound1146
  %bound0149 = icmp ult ptr %scevgep124, %scevgep117
  %bound1150 = icmp ult ptr %scevgep116, %scevgep113
  %found.conflict151 = and i1 %bound0149, %bound1150
  %bound0153 = icmp ult ptr %scevgep124, %scevgep119
  %bound1154 = icmp ult ptr %scevgep118, %scevgep113
  %found.conflict155 = and i1 %bound0153, %bound1154
  %bound0157 = icmp ult ptr %scevgep124, %scevgep116
  %bound1158 = icmp ult ptr %scevgep120, %scevgep113
  %found.conflict159 = and i1 %bound0157, %bound1158
  %bound0161 = icmp ult ptr %scevgep124, %scevgep118
  %bound1162 = icmp ult ptr %scevgep121, %scevgep113
  %found.conflict163 = and i1 %bound0161, %bound1162
  %bound0165 = icmp ult ptr %scevgep124, %scevgep123
  %bound1166 = icmp ult ptr %scevgep122, %scevgep113
  %found.conflict167 = and i1 %bound0165, %bound1166
  %bound0169 = icmp ult ptr %scevgep125, %scevgep115
  %bound1170 = icmp ult ptr %.sink.i108, %scevgep124
  %found.conflict171 = and i1 %bound0169, %bound1170
  %bound0173 = icmp ult ptr %scevgep125, %scevgep117
  %bound1174 = icmp ult ptr %scevgep116, %scevgep124
  %found.conflict175 = and i1 %bound0173, %bound1174
  %bound0177 = icmp ult ptr %scevgep125, %scevgep119
  %bound1178 = icmp ult ptr %scevgep118, %scevgep124
  %found.conflict179 = and i1 %bound0177, %bound1178
  %bound0181 = icmp ult ptr %scevgep125, %scevgep116
  %bound1182 = icmp ult ptr %scevgep120, %scevgep124
  %found.conflict183 = and i1 %bound0181, %bound1182
  %bound0185 = icmp ult ptr %scevgep125, %scevgep118
  %bound1186 = icmp ult ptr %scevgep121, %scevgep124
  %found.conflict187 = and i1 %bound0185, %bound1186
  %bound0189 = icmp ult ptr %scevgep125, %scevgep123
  %bound1190 = icmp ult ptr %scevgep122, %scevgep124
  %found.conflict191 = and i1 %bound0189, %bound1190
  %bound0193 = icmp ult ptr %i.o, %scevgep115
  %bound1194 = icmp ult ptr %.sink.i108, %scevgep125
  %found.conflict195 = and i1 %bound0193, %bound1194
  %bound0197 = icmp ult ptr %i.o, %scevgep117
  %bound1198 = icmp ult ptr %scevgep116, %scevgep125
  %found.conflict199 = and i1 %bound0197, %bound1198
  %i.ar = insertelement <4 x ptr> poison, ptr %i.o, i64 0
  %i.as = shufflevector <4 x ptr> %i.ar, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.at = insertelement <4 x ptr> poison, ptr %scevgep119, i64 0
  %i.au = insertelement <4 x ptr> %i.at, ptr %scevgep116, i64 1
  %i.av = insertelement <4 x ptr> %i.au, ptr %scevgep118, i64 2
  %i.aw = insertelement <4 x ptr> %i.av, ptr %scevgep123, i64 3 ; 2 uses
  %i.ax = icmp ult <4 x ptr> %i.as, %i.aw
  %i.ay = insertelement <4 x ptr> poison, ptr %scevgep118, i64 0
  %i.az = insertelement <4 x ptr> %i.ay, ptr %scevgep120, i64 1
  %i.ba = insertelement <4 x ptr> %i.az, ptr %scevgep121, i64 2
  %i.bb = insertelement <4 x ptr> %i.ba, ptr %scevgep122, i64 3 ; 2 uses
  %i.bc = insertelement <4 x ptr> poison, ptr %scevgep125, i64 0
  %i.bd = shufflevector <4 x ptr> %i.bc, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.be = icmp ult <4 x ptr> %i.bb, %i.bd
  %i.bf = and <4 x i1> %i.ax, %i.be
  %bound0217 = icmp ult ptr %.sink.i108, %scevgep117
  %bound1218 = icmp ult ptr %scevgep116, %scevgep115
  %found.conflict219 = and i1 %bound0217, %bound1218
  %i.bg = insertelement <4 x ptr> poison, ptr %.sink.i108, i64 0
  %i.bh = shufflevector <4 x ptr> %i.bg, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bi = icmp ult <4 x ptr> %i.bh, %i.aw
  %i.bj = insertelement <4 x ptr> poison, ptr %scevgep115, i64 0
  %i.bk = shufflevector <4 x ptr> %i.bj, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bl = icmp ult <4 x ptr> %i.bb, %i.bk
  %i.bm = and <4 x i1> %i.bi, %i.bl
  %bound0237 = icmp ult ptr %scevgep116, %scevgep119
  %bound1238 = icmp ult ptr %scevgep118, %scevgep117
  %found.conflict239 = and i1 %bound0237, %bound1238
  %bound0242 = icmp ult ptr %scevgep116, %scevgep118
  %bound1243 = icmp ult ptr %scevgep121, %scevgep117
  %found.conflict244 = and i1 %bound0242, %bound1243
  %bound0246 = icmp ult ptr %scevgep116, %scevgep123
  %bound1247 = icmp ult ptr %scevgep122, %scevgep117
  %found.conflict248 = and i1 %bound0246, %bound1247
  %bound0250 = icmp ult ptr %scevgep118, %scevgep116
  %bound1251 = icmp ult ptr %scevgep120, %scevgep119
  %found.conflict252 = and i1 %bound0250, %bound1251
  %bound0255 = icmp ult ptr %scevgep118, %scevgep123
  %bound1256 = icmp ult ptr %scevgep122, %scevgep119
  %found.conflict257 = and i1 %bound0255, %bound1256
  %bound0259 = icmp ult ptr %scevgep120, %scevgep118
  %bound1260 = icmp ult ptr %scevgep121, %scevgep116
  %found.conflict261 = and i1 %bound0259, %bound1260
  %bound0263 = icmp ult ptr %scevgep120, %scevgep123
  %bound1264 = icmp ult ptr %scevgep122, %scevgep116
  %found.conflict265 = and i1 %bound0263, %bound1264
  %bound0267 = icmp ult ptr %scevgep121, %scevgep123
  %bound1268 = icmp ult ptr %scevgep122, %scevgep118
  %found.conflict269 = and i1 %bound0267, %bound1268
  %rdx.op = or <4 x i1> %i.bf, %i.bm
  %i.bn = bitcast <4 x i1> %rdx.op to i4
  %i.bo = icmp ne i4 %i.bn, 0
  %op.rdx = or i1 %i.bo, %found.conflict
end_hunk_2
begin_hunk_3_@_ZN3igl10doubleareaIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IfLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE:bb.a
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !90
  %i.du = call noundef float @llvm.sqrt.f32(float %i.dt)
  store float %i.du, ptr %i.dr, align 4, !tbaa !90
  %i.dv = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 4   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.dv, %.pr.i.i.i.i.i.i.i49
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.3, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal14scalar_sqrt_opIfEEKNS_12ArrayWrapperINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEEEEEEE4evalEv.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !216

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i.i.i
  %.011.i.i.i.i.i.i.i.i = phi i64 [ %i.ei, %.lr.ph.i.i.i.i.i.i.i.i ], [ 0, %bb.c ] ; 3 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %.011.i.i.i.i.i.i.i.i
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %.011.i.i.i.i.i.i.i.i
  %i.dy = load <4 x float>, ptr %i.dx, align 16, !tbaa !37 ; 4 uses
  %i.dz = fmul <4 x float> %i.dy, splat (float 5.000000e-01)
  %i.ea = call <4 x i1> @llvm.is.fpclass.v4f32(<4 x float> %i.dy, /* (nan inf nsub norm) */ i32 799)
  %i.eb = call noundef <4 x float> @llvm.x86.sse.rsqrt.ps(<4 x float> %i.dy) ; 3 uses
  %i.ec = fmul <4 x float> %i.eb, %i.eb
  %i.ed = fmul <4 x float> %i.dz, %i.ec
  %i.ee = fsub <4 x float> splat (float 1.500000e+00), %i.ed
  %i.ef = fmul <4 x float> %i.eb, %i.ee
  %i.eg = fmul <4 x float> %i.dy, %i.ef
  %i.eh = select <4 x i1> %i.ea, <4 x float> %i.eg, <4 x float> zeroinitializer
  store <4 x float> %i.eh, ptr %i.dw, align 16, !tbaa !37
  %i.ei = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.ej = icmp slt i64 %i.ei, %i.ch
  br i1 %i.ej, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, !llvm.loop !101

bb.d:                                             ; preds = %thread-pre-split.i.i.i.i.i.i.i
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal14scalar_sqrt_opIfEEKNS_12ArrayWrapperINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEEEEEEE4evalEv.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i.i.i, %._crit_edge
  %i.el = load i64, ptr %i.cf, align 8, !tbaa !87
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.el, i64 noundef 1)
          to label %.noexc59 unwind label %bb.f

.noexc59:                                         ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal14scalar_sqrt_opIfEEKNS_12ArrayWrapperINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEEEEEEE4evalEv.exit
  %i.em = load ptr, ptr %3, align 8, !tbaa !89    ; 8 uses
  %i.en = ptrtoaddr ptr %i.em to i64
  %i.eo = load i64, ptr %i.cf, align 8, !tbaa !87 ; 3 uses
  %i.ep = load i64, ptr %i.f, align 8, !tbaa !87
  %.not.i.i.i.i.i.i.i.i50 = icmp eq i64 %i.ep, %i.eo
  br i1 %.not.i.i.i.i.i.i.i.i50, label %bb.e, label %thread-pre-split.i.i.i.i.i.i.i51

thread-pre-split.i.i.i.i.i.i.i51:                 ; preds = %.noexc59
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.eo, i64 noundef 1)
          to label %.noexc60 unwind label %bb.f

.noexc60:                                         ; preds = %thread-pre-split.i.i.i.i.i.i.i51
  %.pr.i.i.i.i.i.i.i52 = load i64, ptr %i.f, align 8, !tbaa !87
  br label %bb.e

bb.e:                                             ; preds = %.noexc60, %.noexc59
  %i.eq = phi i64 [ %.pr.i.i.i.i.i.i.i52, %.noexc60 ], [ %i.eo, %.noexc59 ] ; 7 uses
  %i.er = load ptr, ptr %2, align 8, !tbaa !89    ; 8 uses
  %i.es = ptrtoaddr ptr %i.er to i64
  %i.et = sdiv i64 %i.eq, 4                       ; 2 uses
  %i.eu = shl nsw i64 %i.et, 2                    ; 5 uses
  %i.ev = icmp sgt i64 %i.eq, 3
  br i1 %i.ev, label %.lr.ph.i.i.i.i.i.i.i.i57, label %._crit_edge.i.i.i.i.i.i.i.i53

._crit_edge.i.i.i.i.i.i.i.i53:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i57, %bb.e
  %i.ew = icmp slt i64 %i.eu, %i.eq
  br i1 %i.ew, label %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader, label %.loopexit

.lr.ph.i.i.i.i.i.i.i.i.i54.preheader:             ; preds = %._crit_edge.i.i.i.i.i.i.i.i53
  %i.ex = shl nsw i64 %i.et, 2
  %i.ey = sub i64 %i.eq, %i.ex                    ; 3 uses
  %min.iters.check86 = icmp ult i64 %i.ey, 8
  %i.ez = sub i64 %i.en, %i.es
  %diff.check84 = icmp ugt i64 %i.ez, -32
  %or.cond97 = select i1 %min.iters.check86, i1 true, i1 %diff.check84
  br i1 %or.cond97, label %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader98, label %vector.ph87

vector.ph87:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader
  %n.vec88 = and i64 %i.ey, -8                    ; 3 uses
  %i.fa = add i64 %i.eu, %n.vec88
  br label %vector.body89

vector.body89:                                    ; preds = %vector.body89, %vector.ph87
  %index90 = phi i64 [ 0, %vector.ph87 ], [ %index.next93, %vector.body89 ] ; 2 uses
  %i.fb = add i64 %i.eu, %index90                 ; 2 uses
  %i.fc = getelementptr inbounds [4 x i8], ptr %i.er, i64 %i.fb ; 2 uses
  %i.fd = getelementptr inbounds [4 x i8], ptr %i.em, i64 %i.fb ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %wide.load91 = load <4 x float>, ptr %i.fd, align 4, !tbaa !90
  %wide.load92 = load <4 x float>, ptr %i.fe, align 4, !tbaa !90
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  store <4 x float> %wide.load91, ptr %i.fc, align 4, !tbaa !90
  store <4 x float> %wide.load92, ptr %i.ff, align 4, !tbaa !90
  %index.next93 = add nuw i64 %index90, 8         ; 2 uses
  %i.fg = icmp eq i64 %index.next93, %n.vec88
  br i1 %i.fg, label %middle.block94, label %vector.body89, !llvm.loop !217

middle.block94:                                   ; preds = %vector.body89
  %cmp.n95 = icmp eq i64 %i.ey, %n.vec88
  br i1 %cmp.n95, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader98

.lr.ph.i.i.i.i.i.i.i.i.i54.preheader98:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader, %middle.block94
  %.05.i.i.i.i.i.i.i.i.i55.ph = phi i64 [ %i.eu, %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader ], [ %i.fa, %middle.block94 ] ; 4 uses
  %i.fh = sub i64 %i.eq, %.05.i.i.i.i.i.i.i.i.i55.ph
  %xtraiter100 = and i64 %i.fh, 3                 ; 2 uses
  %lcmp.mod101.not = icmp eq i64 %xtraiter100, 0
  br i1 %lcmp.mod101.not, label %.lr.ph.i.i.i.i.i.i.i.i.i54.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i54.prol

.lr.ph.i.i.i.i.i.i.i.i.i54.prol:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader98, %.lr.ph.i.i.i.i.i.i.i.i.i54.prol
  %.05.i.i.i.i.i.i.i.i.i55.prol = phi i64 [ %i.fl, %.lr.ph.i.i.i.i.i.i.i.i.i54.prol ], [ %.05.i.i.i.i.i.i.i.i.i55.ph, %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader98 ] ; 3 uses
  %prol.iter102 = phi i64 [ %prol.iter102.next, %.lr.ph.i.i.i.i.i.i.i.i.i54.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader98 ]
  %i.fi = getelementptr inbounds [4 x i8], ptr %i.er, i64 %.05.i.i.i.i.i.i.i.i.i55.prol
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.em, i64 %.05.i.i.i.i.i.i.i.i.i55.prol
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !90
  store float %i.fk, ptr %i.fi, align 4, !tbaa !90
  %i.fl = add nsw i64 %.05.i.i.i.i.i.i.i.i.i55.prol, 1 ; 2 uses
  %prol.iter102.next = add i64 %prol.iter102, 1   ; 2 uses
  %prol.iter102.cmp.not = icmp eq i64 %prol.iter102.next, %xtraiter100
  br i1 %prol.iter102.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i54.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i54.prol, !llvm.loop !218

.lr.ph.i.i.i.i.i.i.i.i.i54.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i54.prol, %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader98
  %.05.i.i.i.i.i.i.i.i.i55.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i55.ph, %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader98 ], [ %i.fl, %.lr.ph.i.i.i.i.i.i.i.i.i54.prol ]
  %i.fm = sub i64 %.05.i.i.i.i.i.i.i.i.i55.ph, %i.eq
  %i.fn = icmp ugt i64 %i.fm, -4
  br i1 %i.fn, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i54

.lr.ph.i.i.i.i.i.i.i.i.i54:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i54.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i54
  %.05.i.i.i.i.i.i.i.i.i55 = phi i64 [ %i.gd, %.lr.ph.i.i.i.i.i.i.i.i.i54 ], [ %.05.i.i.i.i.i.i.i.i.i55.unr, %.lr.ph.i.i.i.i.i.i.i.i.i54.prol.loopexit ] ; 6 uses
  %i.fo = getelementptr inbounds [4 x i8], ptr %i.er, i64 %.05.i.i.i.i.i.i.i.i.i55
  %i.fp = getelementptr inbounds [4 x i8], ptr %i.em, i64 %.05.i.i.i.i.i.i.i.i.i55
  %i.fq = load float, ptr %i.fp, align 4, !tbaa !90
  store float %i.fq, ptr %i.fo, align 4, !tbaa !90
  %i.fr = add nsw i64 %.05.i.i.i.i.i.i.i.i.i55, 1 ; 2 uses
  %i.fs = getelementptr inbounds [4 x i8], ptr %i.er, i64 %i.fr
  %i.ft = getelementptr inbounds [4 x i8], ptr %i.em, i64 %i.fr
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !90
  store float %i.fu, ptr %i.fs, align 4, !tbaa !90
  %i.fv = add nsw i64 %.05.i.i.i.i.i.i.i.i.i55, 2 ; 2 uses
  %i.fw = getelementptr inbounds [4 x i8], ptr %i.er, i64 %i.fv
  %i.fx = getelementptr inbounds [4 x i8], ptr %i.em, i64 %i.fv
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !90
  store float %i.fy, ptr %i.fw, align 4, !tbaa !90
  %i.fz = add nsw i64 %.05.i.i.i.i.i.i.i.i.i55, 3 ; 2 uses
  %i.ga = getelementptr inbounds [4 x i8], ptr %i.er, i64 %i.fz
  %i.gb = getelementptr inbounds [4 x i8], ptr %i.em, i64 %i.fz
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !90
  store float %i.gc, ptr %i.ga, align 4, !tbaa !90
  %i.gd = add nsw i64 %.05.i.i.i.i.i.i.i.i.i55, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i56.3 = icmp eq i64 %i.gd, %i.eq
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i56.3, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i54, !llvm.loop !219

.lr.ph.i.i.i.i.i.i.i.i57:                         ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i.i.i57
  %.011.i.i.i.i.i.i.i.i58 = phi i64 [ %i.gh, %.lr.ph.i.i.i.i.i.i.i.i57 ], [ 0, %bb.e ] ; 3 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %.011.i.i.i.i.i.i.i.i58
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %.011.i.i.i.i.i.i.i.i58
  %i.gg = load <4 x float>, ptr %i.gf, align 16, !tbaa !37
  store <4 x float> %i.gg, ptr %i.ge, align 16, !tbaa !37
  %i.gh = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i58, 4 ; 2 uses
  %i.gi = icmp slt i64 %i.gh, %i.eu
  br i1 %i.gi, label %.lr.ph.i.i.i.i.i.i.i.i57, label %._crit_edge.i.i.i.i.i.i.i.i53, !llvm.loop !105

bb.f:                                             ; preds = %thread-pre-split.i.i.i.i.i.i.i51, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal14scalar_sqrt_opIfEEKNS_12ArrayWrapperINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEEEEEEE4evalEv.exit
  %i.gj = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %bb.f
  %.pn = phi { ptr, i32 } [ %i.gj, %bb.f ], [ %i.ek, %bb.d ]
  %i.gk = load ptr, ptr %3, align 8, !tbaa !89
  call void @free(ptr noundef %i.gk) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %.pn

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i54.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i54, %middle.block94, %._crit_edge.i.i.i.i.i.i.i.i53
  %i.gl = load ptr, ptr %3, align 8, !tbaa !89
  call void @free(ptr noundef %i.gl) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.g

bb.g:                                             ; preds = %.loopexit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl15doublearea_quadIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IfLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Matrix.97", align 8  ; 10 uses
  %4 = alloca %"class.Eigen::Matrix.68", align 8  ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !14   ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.c = shl nsw i64 %i.b, 1                      ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.d = icmp sgt i64 %i.b, 1537228672809129301
  br i1 %i.d, label %.noexc.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !43
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i: ; preds = %bb.a
  %5 = mul nsw i64 %i.b, 6
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread, label %bb.b

_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i
  store i64 %i.c, ptr %i.f, align 8, !tbaa !14
  store i64 3, ptr %i.g, align 8, !tbaa !9
  br label %._crit_edge

bb.b:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i
  %i.h = icmp sgt i64 %i.b, 0
  br i1 %i.h, label %bb.c, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.lr.ph

bb.c:                                             ; preds = %bb.b
  %i.i = icmp samesign ugt i64 %5, 4611686018427387903
  br i1 %i.i, label %.noexc, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i

.noexc:                                           ; preds = %bb.c
  %i.j = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.j, align 8, !tbaa !43
  tail call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i: ; preds = %bb.c
  %i.k = mul i64 %i.b, 24
  %i.l = tail call noalias ptr @malloc(i64 noundef %i.k) #25 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.noexc59, label %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread105

_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread105: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i
  store ptr %i.l, ptr %3, align 8, !tbaa !21
  br label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.lr.ph

.noexc59:                                         ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i
  %i.n = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.n, align 8, !tbaa !43
  tail call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
  unreachable

_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.lr.ph: ; preds = %bb.b, %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread105
  %.sink.i108 = phi ptr [ %i.l, %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread105 ], [ null, %bb.b ] ; 24 uses
  store i64 %i.c, ptr %i.f, align 8, !tbaa !14
  store i64 3, ptr %i.g, align 8, !tbaa !9
  %i.o = load ptr, ptr %1, align 8, !tbaa !21     ; 9 uses
  %.idx = shl i64 %i.b, 3                         ; 8 uses
  %.idx93 = shl i64 %i.b, 4                       ; 9 uses
  %.idx94 = mul i64 %i.b, 12                      ; 3 uses
  %min.iters.check = icmp ult i64 %i.b, 134
  br i1 %min.iters.check, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.lr.ph
  %i.p = add i64 %i.b, -1                         ; 2 uses
  %mul.result = shl i64 %i.p, 3                   ; 6 uses
  %mul.overflow = icmp ugt i64 %i.p, 2305843009213693951
  %i.q = getelementptr i8, ptr %.sink.i108, i64 %mul.result
  %i.r = icmp ult ptr %i.q, %.sink.i108
  %scevgep = getelementptr i8, ptr %.sink.i108, i64 %.idx ; 2 uses
  %i.s = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.t = icmp ult ptr %i.s, %scevgep
  %scevgep109 = getelementptr i8, ptr %.sink.i108, i64 %.idx93 ; 2 uses
  %i.u = getelementptr i8, ptr %scevgep109, i64 %mul.result
  %i.v = icmp ult ptr %i.u, %scevgep109
  %i.w = or i1 %i.v, %mul.overflow
  %scevgep110 = getelementptr i8, ptr %.sink.i108, i64 4 ; 2 uses
  %i.x = getelementptr i8, ptr %scevgep110, i64 %mul.result
  %i.y = icmp ult ptr %i.x, %scevgep110
  %i.z = getelementptr i8, ptr %.sink.i108, i64 %.idx
  %scevgep111 = getelementptr i8, ptr %i.z, i64 4 ; 2 uses
  %i.aa = getelementptr i8, ptr %scevgep111, i64 %mul.result
  %i.ab = icmp ult ptr %i.aa, %scevgep111
  %i.ac = getelementptr i8, ptr %.sink.i108, i64 %.idx93
  %scevgep112 = getelementptr i8, ptr %i.ac, i64 4 ; 2 uses
  %i.ad = getelementptr i8, ptr %scevgep112, i64 %mul.result
  %i.ae = icmp ult ptr %i.ad, %scevgep112
  %i.af = or i1 %i.t, %i.r
  %i.ag = or i1 %i.af, %i.w
  %i.ah = or i1 %i.y, %i.ag
  %i.ai = or i1 %i.ab, %i.ah
  %i.aj = or i1 %i.ae, %i.ai
  br i1 %i.aj, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %scevgep113 = getelementptr i8, ptr %i.o, i64 %.idx94 ; 12 uses
  %scevgep114 = getelementptr i8, ptr %i.o, i64 %.idx93 ; 6 uses
  %i.ak = getelementptr i8, ptr %.sink.i108, i64 %.idx
  %scevgep115 = getelementptr i8, ptr %i.ak, i64 -4 ; 6 uses
  %scevgep116 = getelementptr i8, ptr %.sink.i108, i64 %.idx ; 15 uses
  %i.al = getelementptr i8, ptr %.sink.i108, i64 %.idx93
  %scevgep117 = getelementptr i8, ptr %i.al, i64 -4 ; 8 uses
  %scevgep118 = getelementptr i8, ptr %.sink.i108, i64 %.idx93 ; 14 uses
  %i.am = mul i64 %i.b, 24                        ; 2 uses
  %i.an = getelementptr i8, ptr %.sink.i108, i64 %i.am
  %scevgep119 = getelementptr i8, ptr %i.an, i64 -4 ; 7 uses
  %scevgep120 = getelementptr i8, ptr %.sink.i108, i64 4 ; 7 uses
  %i.ao = getelementptr i8, ptr %.sink.i108, i64 %.idx
  %scevgep121 = getelementptr i8, ptr %i.ao, i64 4 ; 7 uses
  %i.ap = getelementptr i8, ptr %.sink.i108, i64 %.idx93
  %scevgep122 = getelementptr i8, ptr %i.ap, i64 4 ; 8 uses
  %scevgep123 = getelementptr i8, ptr %.sink.i108, i64 %i.am ; 8 uses
  %scevgep124 = getelementptr i8, ptr %i.o, i64 %.idx ; 12 uses
  %i.aq = shl nuw i64 %i.b, 2
  %scevgep125 = getelementptr i8, ptr %i.o, i64 %i.aq ; 9 uses
  %bound0 = icmp ult ptr %scevgep113, %scevgep115
  %bound1 = icmp ult ptr %.sink.i108, %scevgep114
  %found.conflict = and i1 %bound0, %bound1
  %bound0126 = icmp ult ptr %scevgep113, %scevgep117
  %bound1127 = icmp ult ptr %scevgep116, %scevgep114
  %found.conflict128 = and i1 %bound0126, %bound1127
  %bound0129 = icmp ult ptr %scevgep113, %scevgep119
  %bound1130 = icmp ult ptr %scevgep118, %scevgep114
  %found.conflict131 = and i1 %bound0129, %bound1130
  %bound0133 = icmp ult ptr %scevgep113, %scevgep116
  %bound1134 = icmp ult ptr %scevgep120, %scevgep114
  %found.conflict135 = and i1 %bound0133, %bound1134
  %bound0137 = icmp ult ptr %scevgep113, %scevgep118
  %bound1138 = icmp ult ptr %scevgep121, %scevgep114
  %found.conflict139 = and i1 %bound0137, %bound1138
  %bound0141 = icmp ult ptr %scevgep113, %scevgep123
  %bound1142 = icmp ult ptr %scevgep122, %scevgep114
  %found.conflict143 = and i1 %bound0141, %bound1142
  %bound0145 = icmp ult ptr %scevgep124, %scevgep115
  %bound1146 = icmp ult ptr %.sink.i108, %scevgep113
  %found.conflict147 = and i1 %bound0145, %bound1146
  %bound0149 = icmp ult ptr %scevgep124, %scevgep117
  %bound1150 = icmp ult ptr %scevgep116, %scevgep113
  %found.conflict151 = and i1 %bound0149, %bound1150
  %bound0153 = icmp ult ptr %scevgep124, %scevgep119
  %bound1154 = icmp ult ptr %scevgep118, %scevgep113
  %found.conflict155 = and i1 %bound0153, %bound1154
  %bound0157 = icmp ult ptr %scevgep124, %scevgep116
  %bound1158 = icmp ult ptr %scevgep120, %scevgep113
  %found.conflict159 = and i1 %bound0157, %bound1158
  %bound0161 = icmp ult ptr %scevgep124, %scevgep118
  %bound1162 = icmp ult ptr %scevgep121, %scevgep113
  %found.conflict163 = and i1 %bound0161, %bound1162
  %bound0165 = icmp ult ptr %scevgep124, %scevgep123
  %bound1166 = icmp ult ptr %scevgep122, %scevgep113
  %found.conflict167 = and i1 %bound0165, %bound1166
  %bound0169 = icmp ult ptr %scevgep125, %scevgep115
  %bound1170 = icmp ult ptr %.sink.i108, %scevgep124
  %found.conflict171 = and i1 %bound0169, %bound1170
  %bound0173 = icmp ult ptr %scevgep125, %scevgep117
  %bound1174 = icmp ult ptr %scevgep116, %scevgep124
  %found.conflict175 = and i1 %bound0173, %bound1174
  %bound0177 = icmp ult ptr %scevgep125, %scevgep119
  %bound1178 = icmp ult ptr %scevgep118, %scevgep124
  %found.conflict179 = and i1 %bound0177, %bound1178
  %bound0181 = icmp ult ptr %scevgep125, %scevgep116
  %bound1182 = icmp ult ptr %scevgep120, %scevgep124
  %found.conflict183 = and i1 %bound0181, %bound1182
  %bound0185 = icmp ult ptr %scevgep125, %scevgep118
  %bound1186 = icmp ult ptr %scevgep121, %scevgep124
  %found.conflict187 = and i1 %bound0185, %bound1186
  %bound0189 = icmp ult ptr %scevgep125, %scevgep123
  %bound1190 = icmp ult ptr %scevgep122, %scevgep124
  %found.conflict191 = and i1 %bound0189, %bound1190
  %bound0193 = icmp ult ptr %i.o, %scevgep115
  %bound1194 = icmp ult ptr %.sink.i108, %scevgep125
  %found.conflict195 = and i1 %bound0193, %bound1194
  %bound0197 = icmp ult ptr %i.o, %scevgep117
  %bound1198 = icmp ult ptr %scevgep116, %scevgep125
  %found.conflict199 = and i1 %bound0197, %bound1198
  %i.ar = insertelement <4 x ptr> poison, ptr %i.o, i64 0
  %i.as = shufflevector <4 x ptr> %i.ar, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.at = insertelement <4 x ptr> poison, ptr %scevgep119, i64 0
  %i.au = insertelement <4 x ptr> %i.at, ptr %scevgep116, i64 1
  %i.av = insertelement <4 x ptr> %i.au, ptr %scevgep118, i64 2
  %i.aw = insertelement <4 x ptr> %i.av, ptr %scevgep123, i64 3 ; 2 uses
  %i.ax = icmp ult <4 x ptr> %i.as, %i.aw
  %i.ay = insertelement <4 x ptr> poison, ptr %scevgep118, i64 0
  %i.az = insertelement <4 x ptr> %i.ay, ptr %scevgep120, i64 1
  %i.ba = insertelement <4 x ptr> %i.az, ptr %scevgep121, i64 2
  %i.bb = insertelement <4 x ptr> %i.ba, ptr %scevgep122, i64 3 ; 2 uses
  %i.bc = insertelement <4 x ptr> poison, ptr %scevgep125, i64 0
  %i.bd = shufflevector <4 x ptr> %i.bc, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.be = icmp ult <4 x ptr> %i.bb, %i.bd
  %i.bf = and <4 x i1> %i.ax, %i.be
  %bound0217 = icmp ult ptr %.sink.i108, %scevgep117
  %bound1218 = icmp ult ptr %scevgep116, %scevgep115
  %found.conflict219 = and i1 %bound0217, %bound1218
  %i.bg = insertelement <4 x ptr> poison, ptr %.sink.i108, i64 0
  %i.bh = shufflevector <4 x ptr> %i.bg, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bi = icmp ult <4 x ptr> %i.bh, %i.aw
  %i.bj = insertelement <4 x ptr> poison, ptr %scevgep115, i64 0
  %i.bk = shufflevector <4 x ptr> %i.bj, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bl = icmp ult <4 x ptr> %i.bb, %i.bk
  %i.bm = and <4 x i1> %i.bi, %i.bl
  %bound0237 = icmp ult ptr %scevgep116, %scevgep119
  %bound1238 = icmp ult ptr %scevgep118, %scevgep117
  %found.conflict239 = and i1 %bound0237, %bound1238
  %bound0242 = icmp ult ptr %scevgep116, %scevgep118
  %bound1243 = icmp ult ptr %scevgep121, %scevgep117
  %found.conflict244 = and i1 %bound0242, %bound1243
  %bound0246 = icmp ult ptr %scevgep116, %scevgep123
  %bound1247 = icmp ult ptr %scevgep122, %scevgep117
  %found.conflict248 = and i1 %bound0246, %bound1247
  %bound0250 = icmp ult ptr %scevgep118, %scevgep116
  %bound1251 = icmp ult ptr %scevgep120, %scevgep119
  %found.conflict252 = and i1 %bound0250, %bound1251
  %bound0255 = icmp ult ptr %scevgep118, %scevgep123
  %bound1256 = icmp ult ptr %scevgep122, %scevgep119
  %found.conflict257 = and i1 %bound0255, %bound1256
  %bound0259 = icmp ult ptr %scevgep120, %scevgep118
  %bound1260 = icmp ult ptr %scevgep121, %scevgep116
  %found.conflict261 = and i1 %bound0259, %bound1260
  %bound0263 = icmp ult ptr %scevgep120, %scevgep123
  %bound1264 = icmp ult ptr %scevgep122, %scevgep116
  %found.conflict265 = and i1 %bound0263, %bound1264
  %bound0267 = icmp ult ptr %scevgep121, %scevgep123
  %bound1268 = icmp ult ptr %scevgep122, %scevgep118
  %found.conflict269 = and i1 %bound0267, %bound1268
  %rdx.op = or <4 x i1> %i.bf, %i.bm
  %i.bn = bitcast <4 x i1> %rdx.op to i4
  %i.bo = icmp ne i4 %i.bn, 0
  %op.rdx = or i1 %i.bo, %found.conflict
end_hunk_3
begin_hunk_4_@_ZN3igl10doubleareaIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IfLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE:bb.a
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !90
  %i.dr = call noundef float @llvm.sqrt.f32(float %i.dq)
  store float %i.dr, ptr %i.do, align 4, !tbaa !90
  %i.ds = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 4   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.ds, %.pr.i.i.i.i.i.i.i49
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.3, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal14scalar_sqrt_opIfEEKNS_12ArrayWrapperINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEEEEEEE4evalEv.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !283

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i.i.i
  %.011.i.i.i.i.i.i.i.i = phi i64 [ %i.ef, %.lr.ph.i.i.i.i.i.i.i.i ], [ 0, %bb.c ] ; 3 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %.011.i.i.i.i.i.i.i.i
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %.011.i.i.i.i.i.i.i.i
  %i.dv = load <4 x float>, ptr %i.du, align 16, !tbaa !37 ; 4 uses
  %i.dw = fmul <4 x float> %i.dv, splat (float 5.000000e-01)
  %i.dx = call <4 x i1> @llvm.is.fpclass.v4f32(<4 x float> %i.dv, /* (nan inf nsub norm) */ i32 799)
  %i.dy = call noundef <4 x float> @llvm.x86.sse.rsqrt.ps(<4 x float> %i.dv) ; 3 uses
  %i.dz = fmul <4 x float> %i.dy, %i.dy
  %i.ea = fmul <4 x float> %i.dw, %i.dz
  %i.eb = fsub <4 x float> splat (float 1.500000e+00), %i.ea
  %i.ec = fmul <4 x float> %i.dy, %i.eb
  %i.ed = fmul <4 x float> %i.dv, %i.ec
  %i.ee = select <4 x i1> %i.dx, <4 x float> %i.ed, <4 x float> zeroinitializer
  store <4 x float> %i.ee, ptr %i.dt, align 16, !tbaa !37
  %i.ef = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.eg = icmp slt i64 %i.ef, %i.ce
  br i1 %i.eg, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, !llvm.loop !101

bb.d:                                             ; preds = %thread-pre-split.i.i.i.i.i.i.i
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal14scalar_sqrt_opIfEEKNS_12ArrayWrapperINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEEEEEEE4evalEv.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i.i.i, %._crit_edge
  %i.ei = load i64, ptr %i.cc, align 8, !tbaa !87
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.ei, i64 noundef 1)
          to label %.noexc59 unwind label %bb.f

.noexc59:                                         ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal14scalar_sqrt_opIfEEKNS_12ArrayWrapperINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEEEEEEE4evalEv.exit
  %i.ej = load ptr, ptr %3, align 8, !tbaa !89    ; 8 uses
  %i.ek = ptrtoaddr ptr %i.ej to i64
  %i.el = load i64, ptr %i.cc, align 8, !tbaa !87 ; 3 uses
  %i.em = load i64, ptr %i.f, align 8, !tbaa !87
  %.not.i.i.i.i.i.i.i.i50 = icmp eq i64 %i.em, %i.el
  br i1 %.not.i.i.i.i.i.i.i.i50, label %bb.e, label %thread-pre-split.i.i.i.i.i.i.i51

thread-pre-split.i.i.i.i.i.i.i51:                 ; preds = %.noexc59
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.el, i64 noundef 1)
          to label %.noexc60 unwind label %bb.f

.noexc60:                                         ; preds = %thread-pre-split.i.i.i.i.i.i.i51
  %.pr.i.i.i.i.i.i.i52 = load i64, ptr %i.f, align 8, !tbaa !87
  br label %bb.e

bb.e:                                             ; preds = %.noexc60, %.noexc59
  %i.en = phi i64 [ %.pr.i.i.i.i.i.i.i52, %.noexc60 ], [ %i.el, %.noexc59 ] ; 7 uses
  %i.eo = load ptr, ptr %2, align 8, !tbaa !89    ; 8 uses
  %i.ep = ptrtoaddr ptr %i.eo to i64
  %i.eq = sdiv i64 %i.en, 4                       ; 2 uses
  %i.er = shl nsw i64 %i.eq, 2                    ; 5 uses
  %i.es = icmp sgt i64 %i.en, 3
  br i1 %i.es, label %.lr.ph.i.i.i.i.i.i.i.i57, label %._crit_edge.i.i.i.i.i.i.i.i53

._crit_edge.i.i.i.i.i.i.i.i53:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i57, %bb.e
  %i.et = icmp slt i64 %i.er, %i.en
  br i1 %i.et, label %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader, label %.loopexit

.lr.ph.i.i.i.i.i.i.i.i.i54.preheader:             ; preds = %._crit_edge.i.i.i.i.i.i.i.i53
  %i.eu = shl nsw i64 %i.eq, 2
  %i.ev = sub i64 %i.en, %i.eu                    ; 3 uses
  %min.iters.check89 = icmp ult i64 %i.ev, 8
  %i.ew = sub i64 %i.ek, %i.ep
  %diff.check87 = icmp ugt i64 %i.ew, -32
  %or.cond100 = select i1 %min.iters.check89, i1 true, i1 %diff.check87
  br i1 %or.cond100, label %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader101, label %vector.ph90

vector.ph90:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader
  %n.vec91 = and i64 %i.ev, -8                    ; 3 uses
  %i.ex = add i64 %i.er, %n.vec91
  br label %vector.body92

vector.body92:                                    ; preds = %vector.body92, %vector.ph90
  %index93 = phi i64 [ 0, %vector.ph90 ], [ %index.next96, %vector.body92 ] ; 2 uses
  %i.ey = add i64 %i.er, %index93                 ; 2 uses
  %i.ez = getelementptr inbounds [4 x i8], ptr %i.eo, i64 %i.ey ; 2 uses
  %i.fa = getelementptr inbounds [4 x i8], ptr %i.ej, i64 %i.ey ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %wide.load94 = load <4 x float>, ptr %i.fa, align 4, !tbaa !90
  %wide.load95 = load <4 x float>, ptr %i.fb, align 4, !tbaa !90
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  store <4 x float> %wide.load94, ptr %i.ez, align 4, !tbaa !90
  store <4 x float> %wide.load95, ptr %i.fc, align 4, !tbaa !90
  %index.next96 = add nuw i64 %index93, 8         ; 2 uses
  %i.fd = icmp eq i64 %index.next96, %n.vec91
  br i1 %i.fd, label %middle.block97, label %vector.body92, !llvm.loop !284

middle.block97:                                   ; preds = %vector.body92
  %cmp.n98 = icmp eq i64 %i.ev, %n.vec91
  br i1 %cmp.n98, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader101

.lr.ph.i.i.i.i.i.i.i.i.i54.preheader101:          ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader, %middle.block97
  %.05.i.i.i.i.i.i.i.i.i55.ph = phi i64 [ %i.er, %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader ], [ %i.ex, %middle.block97 ] ; 4 uses
  %i.fe = sub i64 %i.en, %.05.i.i.i.i.i.i.i.i.i55.ph
  %xtraiter103 = and i64 %i.fe, 3                 ; 2 uses
  %lcmp.mod104.not = icmp eq i64 %xtraiter103, 0
  br i1 %lcmp.mod104.not, label %.lr.ph.i.i.i.i.i.i.i.i.i54.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i54.prol

.lr.ph.i.i.i.i.i.i.i.i.i54.prol:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader101, %.lr.ph.i.i.i.i.i.i.i.i.i54.prol
  %.05.i.i.i.i.i.i.i.i.i55.prol = phi i64 [ %i.fi, %.lr.ph.i.i.i.i.i.i.i.i.i54.prol ], [ %.05.i.i.i.i.i.i.i.i.i55.ph, %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader101 ] ; 3 uses
  %prol.iter105 = phi i64 [ %prol.iter105.next, %.lr.ph.i.i.i.i.i.i.i.i.i54.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader101 ]
  %i.ff = getelementptr inbounds [4 x i8], ptr %i.eo, i64 %.05.i.i.i.i.i.i.i.i.i55.prol
  %i.fg = getelementptr inbounds [4 x i8], ptr %i.ej, i64 %.05.i.i.i.i.i.i.i.i.i55.prol
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !90
  store float %i.fh, ptr %i.ff, align 4, !tbaa !90
  %i.fi = add nsw i64 %.05.i.i.i.i.i.i.i.i.i55.prol, 1 ; 2 uses
  %prol.iter105.next = add i64 %prol.iter105, 1   ; 2 uses
  %prol.iter105.cmp.not = icmp eq i64 %prol.iter105.next, %xtraiter103
  br i1 %prol.iter105.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i54.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i54.prol, !llvm.loop !285

.lr.ph.i.i.i.i.i.i.i.i.i54.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i54.prol, %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader101
  %.05.i.i.i.i.i.i.i.i.i55.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i55.ph, %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader101 ], [ %i.fi, %.lr.ph.i.i.i.i.i.i.i.i.i54.prol ]
  %i.fj = sub i64 %.05.i.i.i.i.i.i.i.i.i55.ph, %i.en
  %i.fk = icmp ugt i64 %i.fj, -4
  br i1 %i.fk, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i54

.lr.ph.i.i.i.i.i.i.i.i.i54:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i54.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i54
  %.05.i.i.i.i.i.i.i.i.i55 = phi i64 [ %i.ga, %.lr.ph.i.i.i.i.i.i.i.i.i54 ], [ %.05.i.i.i.i.i.i.i.i.i55.unr, %.lr.ph.i.i.i.i.i.i.i.i.i54.prol.loopexit ] ; 6 uses
  %i.fl = getelementptr inbounds [4 x i8], ptr %i.eo, i64 %.05.i.i.i.i.i.i.i.i.i55
  %i.fm = getelementptr inbounds [4 x i8], ptr %i.ej, i64 %.05.i.i.i.i.i.i.i.i.i55
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !90
  store float %i.fn, ptr %i.fl, align 4, !tbaa !90
  %i.fo = add nsw i64 %.05.i.i.i.i.i.i.i.i.i55, 1 ; 2 uses
  %i.fp = getelementptr inbounds [4 x i8], ptr %i.eo, i64 %i.fo
  %i.fq = getelementptr inbounds [4 x i8], ptr %i.ej, i64 %i.fo
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !90
  store float %i.fr, ptr %i.fp, align 4, !tbaa !90
  %i.fs = add nsw i64 %.05.i.i.i.i.i.i.i.i.i55, 2 ; 2 uses
  %i.ft = getelementptr inbounds [4 x i8], ptr %i.eo, i64 %i.fs
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.ej, i64 %i.fs
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !90
  store float %i.fv, ptr %i.ft, align 4, !tbaa !90
  %i.fw = add nsw i64 %.05.i.i.i.i.i.i.i.i.i55, 3 ; 2 uses
  %i.fx = getelementptr inbounds [4 x i8], ptr %i.eo, i64 %i.fw
  %i.fy = getelementptr inbounds [4 x i8], ptr %i.ej, i64 %i.fw
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !90
  store float %i.fz, ptr %i.fx, align 4, !tbaa !90
  %i.ga = add nsw i64 %.05.i.i.i.i.i.i.i.i.i55, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i56.3 = icmp eq i64 %i.ga, %i.en
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i56.3, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i54, !llvm.loop !286

.lr.ph.i.i.i.i.i.i.i.i57:                         ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i.i.i57
  %.011.i.i.i.i.i.i.i.i58 = phi i64 [ %i.ge, %.lr.ph.i.i.i.i.i.i.i.i57 ], [ 0, %bb.e ] ; 3 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %.011.i.i.i.i.i.i.i.i58
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %.011.i.i.i.i.i.i.i.i58
  %i.gd = load <4 x float>, ptr %i.gc, align 16, !tbaa !37
  store <4 x float> %i.gd, ptr %i.gb, align 16, !tbaa !37
  %i.ge = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i58, 4 ; 2 uses
  %i.gf = icmp slt i64 %i.ge, %i.er
  br i1 %i.gf, label %.lr.ph.i.i.i.i.i.i.i.i57, label %._crit_edge.i.i.i.i.i.i.i.i53, !llvm.loop !105

bb.f:                                             ; preds = %thread-pre-split.i.i.i.i.i.i.i51, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal14scalar_sqrt_opIfEEKNS_12ArrayWrapperINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEEEEEEE4evalEv.exit
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %bb.f
  %.pn = phi { ptr, i32 } [ %i.gg, %bb.f ], [ %i.eh, %bb.d ]
  %i.gh = load ptr, ptr %3, align 8, !tbaa !89
  call void @free(ptr noundef %i.gh) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %.pn

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i54.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i54, %middle.block97, %._crit_edge.i.i.i.i.i.i.i.i53
  %i.gi = load ptr, ptr %3, align 8, !tbaa !89
  call void @free(ptr noundef %i.gi) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.g

bb.g:                                             ; preds = %.loopexit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl15doublearea_quadIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IfLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Matrix.97", align 8  ; 10 uses
  %4 = alloca %"class.Eigen::Matrix.68", align 8  ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !14   ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.c = shl nsw i64 %i.b, 1                      ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.d = icmp sgt i64 %i.b, 1537228672809129301
  br i1 %i.d, label %.noexc.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !43
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i: ; preds = %bb.a
  %5 = mul nsw i64 %i.b, 6
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread, label %bb.b

_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i
  store i64 %i.c, ptr %i.f, align 8, !tbaa !14
  store i64 3, ptr %i.g, align 8, !tbaa !9
  br label %._crit_edge

bb.b:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i
  %i.h = icmp sgt i64 %i.b, 0
  br i1 %i.h, label %bb.c, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.lr.ph

bb.c:                                             ; preds = %bb.b
  %i.i = icmp samesign ugt i64 %5, 4611686018427387903
  br i1 %i.i, label %.noexc, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i

.noexc:                                           ; preds = %bb.c
  %i.j = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.j, align 8, !tbaa !43
  tail call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i: ; preds = %bb.c
  %i.k = mul i64 %i.b, 24
  %i.l = tail call noalias ptr @malloc(i64 noundef %i.k) #25 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.noexc59, label %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread105

_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread105: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i
  store ptr %i.l, ptr %3, align 8, !tbaa !21
  br label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.lr.ph

.noexc59:                                         ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i
  %i.n = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.n, align 8, !tbaa !43
  tail call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
  unreachable

_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.lr.ph: ; preds = %bb.b, %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread105
  %.sink.i108 = phi ptr [ %i.l, %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread105 ], [ null, %bb.b ] ; 24 uses
  store i64 %i.c, ptr %i.f, align 8, !tbaa !14
  store i64 3, ptr %i.g, align 8, !tbaa !9
  %i.o = load ptr, ptr %1, align 8, !tbaa !21     ; 9 uses
  %.idx = shl i64 %i.b, 3                         ; 8 uses
  %.idx93 = shl i64 %i.b, 4                       ; 9 uses
  %.idx94 = mul i64 %i.b, 12                      ; 3 uses
  %min.iters.check = icmp ult i64 %i.b, 134
  br i1 %min.iters.check, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.lr.ph
  %i.p = add i64 %i.b, -1                         ; 2 uses
  %mul.result = shl i64 %i.p, 3                   ; 6 uses
  %mul.overflow = icmp ugt i64 %i.p, 2305843009213693951
  %i.q = getelementptr i8, ptr %.sink.i108, i64 %mul.result
  %i.r = icmp ult ptr %i.q, %.sink.i108
  %scevgep = getelementptr i8, ptr %.sink.i108, i64 %.idx ; 2 uses
  %i.s = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.t = icmp ult ptr %i.s, %scevgep
  %scevgep109 = getelementptr i8, ptr %.sink.i108, i64 %.idx93 ; 2 uses
  %i.u = getelementptr i8, ptr %scevgep109, i64 %mul.result
  %i.v = icmp ult ptr %i.u, %scevgep109
  %i.w = or i1 %i.v, %mul.overflow
  %scevgep110 = getelementptr i8, ptr %.sink.i108, i64 4 ; 2 uses
  %i.x = getelementptr i8, ptr %scevgep110, i64 %mul.result
  %i.y = icmp ult ptr %i.x, %scevgep110
  %i.z = getelementptr i8, ptr %.sink.i108, i64 %.idx
  %scevgep111 = getelementptr i8, ptr %i.z, i64 4 ; 2 uses
  %i.aa = getelementptr i8, ptr %scevgep111, i64 %mul.result
  %i.ab = icmp ult ptr %i.aa, %scevgep111
  %i.ac = getelementptr i8, ptr %.sink.i108, i64 %.idx93
  %scevgep112 = getelementptr i8, ptr %i.ac, i64 4 ; 2 uses
  %i.ad = getelementptr i8, ptr %scevgep112, i64 %mul.result
  %i.ae = icmp ult ptr %i.ad, %scevgep112
  %i.af = or i1 %i.t, %i.r
  %i.ag = or i1 %i.af, %i.w
  %i.ah = or i1 %i.y, %i.ag
  %i.ai = or i1 %i.ab, %i.ah
  %i.aj = or i1 %i.ae, %i.ai
  br i1 %i.aj, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %scevgep113 = getelementptr i8, ptr %i.o, i64 %.idx94 ; 12 uses
  %scevgep114 = getelementptr i8, ptr %i.o, i64 %.idx93 ; 6 uses
  %i.ak = getelementptr i8, ptr %.sink.i108, i64 %.idx
  %scevgep115 = getelementptr i8, ptr %i.ak, i64 -4 ; 6 uses
  %scevgep116 = getelementptr i8, ptr %.sink.i108, i64 %.idx ; 15 uses
  %i.al = getelementptr i8, ptr %.sink.i108, i64 %.idx93
  %scevgep117 = getelementptr i8, ptr %i.al, i64 -4 ; 8 uses
  %scevgep118 = getelementptr i8, ptr %.sink.i108, i64 %.idx93 ; 14 uses
  %i.am = mul i64 %i.b, 24                        ; 2 uses
  %i.an = getelementptr i8, ptr %.sink.i108, i64 %i.am
  %scevgep119 = getelementptr i8, ptr %i.an, i64 -4 ; 7 uses
  %scevgep120 = getelementptr i8, ptr %.sink.i108, i64 4 ; 7 uses
  %i.ao = getelementptr i8, ptr %.sink.i108, i64 %.idx
  %scevgep121 = getelementptr i8, ptr %i.ao, i64 4 ; 7 uses
  %i.ap = getelementptr i8, ptr %.sink.i108, i64 %.idx93
  %scevgep122 = getelementptr i8, ptr %i.ap, i64 4 ; 8 uses
  %scevgep123 = getelementptr i8, ptr %.sink.i108, i64 %i.am ; 8 uses
  %scevgep124 = getelementptr i8, ptr %i.o, i64 %.idx ; 12 uses
  %i.aq = shl nuw i64 %i.b, 2
  %scevgep125 = getelementptr i8, ptr %i.o, i64 %i.aq ; 9 uses
  %bound0 = icmp ult ptr %scevgep113, %scevgep115
  %bound1 = icmp ult ptr %.sink.i108, %scevgep114
  %found.conflict = and i1 %bound0, %bound1
  %bound0126 = icmp ult ptr %scevgep113, %scevgep117
  %bound1127 = icmp ult ptr %scevgep116, %scevgep114
  %found.conflict128 = and i1 %bound0126, %bound1127
  %bound0129 = icmp ult ptr %scevgep113, %scevgep119
  %bound1130 = icmp ult ptr %scevgep118, %scevgep114
  %found.conflict131 = and i1 %bound0129, %bound1130
  %bound0133 = icmp ult ptr %scevgep113, %scevgep116
  %bound1134 = icmp ult ptr %scevgep120, %scevgep114
  %found.conflict135 = and i1 %bound0133, %bound1134
  %bound0137 = icmp ult ptr %scevgep113, %scevgep118
  %bound1138 = icmp ult ptr %scevgep121, %scevgep114
  %found.conflict139 = and i1 %bound0137, %bound1138
  %bound0141 = icmp ult ptr %scevgep113, %scevgep123
  %bound1142 = icmp ult ptr %scevgep122, %scevgep114
  %found.conflict143 = and i1 %bound0141, %bound1142
  %bound0145 = icmp ult ptr %scevgep124, %scevgep115
  %bound1146 = icmp ult ptr %.sink.i108, %scevgep113
  %found.conflict147 = and i1 %bound0145, %bound1146
  %bound0149 = icmp ult ptr %scevgep124, %scevgep117
  %bound1150 = icmp ult ptr %scevgep116, %scevgep113
  %found.conflict151 = and i1 %bound0149, %bound1150
  %bound0153 = icmp ult ptr %scevgep124, %scevgep119
  %bound1154 = icmp ult ptr %scevgep118, %scevgep113
  %found.conflict155 = and i1 %bound0153, %bound1154
  %bound0157 = icmp ult ptr %scevgep124, %scevgep116
  %bound1158 = icmp ult ptr %scevgep120, %scevgep113
  %found.conflict159 = and i1 %bound0157, %bound1158
  %bound0161 = icmp ult ptr %scevgep124, %scevgep118
  %bound1162 = icmp ult ptr %scevgep121, %scevgep113
  %found.conflict163 = and i1 %bound0161, %bound1162
  %bound0165 = icmp ult ptr %scevgep124, %scevgep123
  %bound1166 = icmp ult ptr %scevgep122, %scevgep113
  %found.conflict167 = and i1 %bound0165, %bound1166
  %bound0169 = icmp ult ptr %scevgep125, %scevgep115
  %bound1170 = icmp ult ptr %.sink.i108, %scevgep124
  %found.conflict171 = and i1 %bound0169, %bound1170
  %bound0173 = icmp ult ptr %scevgep125, %scevgep117
  %bound1174 = icmp ult ptr %scevgep116, %scevgep124
  %found.conflict175 = and i1 %bound0173, %bound1174
  %bound0177 = icmp ult ptr %scevgep125, %scevgep119
  %bound1178 = icmp ult ptr %scevgep118, %scevgep124
  %found.conflict179 = and i1 %bound0177, %bound1178
  %bound0181 = icmp ult ptr %scevgep125, %scevgep116
  %bound1182 = icmp ult ptr %scevgep120, %scevgep124
  %found.conflict183 = and i1 %bound0181, %bound1182
  %bound0185 = icmp ult ptr %scevgep125, %scevgep118
  %bound1186 = icmp ult ptr %scevgep121, %scevgep124
  %found.conflict187 = and i1 %bound0185, %bound1186
  %bound0189 = icmp ult ptr %scevgep125, %scevgep123
  %bound1190 = icmp ult ptr %scevgep122, %scevgep124
  %found.conflict191 = and i1 %bound0189, %bound1190
  %bound0193 = icmp ult ptr %i.o, %scevgep115
  %bound1194 = icmp ult ptr %.sink.i108, %scevgep125
  %found.conflict195 = and i1 %bound0193, %bound1194
  %bound0197 = icmp ult ptr %i.o, %scevgep117
  %bound1198 = icmp ult ptr %scevgep116, %scevgep125
  %found.conflict199 = and i1 %bound0197, %bound1198
  %i.ar = insertelement <4 x ptr> poison, ptr %i.o, i64 0
  %i.as = shufflevector <4 x ptr> %i.ar, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.at = insertelement <4 x ptr> poison, ptr %scevgep119, i64 0
  %i.au = insertelement <4 x ptr> %i.at, ptr %scevgep116, i64 1
  %i.av = insertelement <4 x ptr> %i.au, ptr %scevgep118, i64 2
  %i.aw = insertelement <4 x ptr> %i.av, ptr %scevgep123, i64 3 ; 2 uses
  %i.ax = icmp ult <4 x ptr> %i.as, %i.aw
  %i.ay = insertelement <4 x ptr> poison, ptr %scevgep118, i64 0
  %i.az = insertelement <4 x ptr> %i.ay, ptr %scevgep120, i64 1
  %i.ba = insertelement <4 x ptr> %i.az, ptr %scevgep121, i64 2
  %i.bb = insertelement <4 x ptr> %i.ba, ptr %scevgep122, i64 3 ; 2 uses
  %i.bc = insertelement <4 x ptr> poison, ptr %scevgep125, i64 0
  %i.bd = shufflevector <4 x ptr> %i.bc, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.be = icmp ult <4 x ptr> %i.bb, %i.bd
  %i.bf = and <4 x i1> %i.ax, %i.be
  %bound0217 = icmp ult ptr %.sink.i108, %scevgep117
  %bound1218 = icmp ult ptr %scevgep116, %scevgep115
  %found.conflict219 = and i1 %bound0217, %bound1218
  %i.bg = insertelement <4 x ptr> poison, ptr %.sink.i108, i64 0
  %i.bh = shufflevector <4 x ptr> %i.bg, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bi = icmp ult <4 x ptr> %i.bh, %i.aw
  %i.bj = insertelement <4 x ptr> poison, ptr %scevgep115, i64 0
  %i.bk = shufflevector <4 x ptr> %i.bj, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bl = icmp ult <4 x ptr> %i.bb, %i.bk
  %i.bm = and <4 x i1> %i.bi, %i.bl
  %bound0237 = icmp ult ptr %scevgep116, %scevgep119
  %bound1238 = icmp ult ptr %scevgep118, %scevgep117
  %found.conflict239 = and i1 %bound0237, %bound1238
  %bound0242 = icmp ult ptr %scevgep116, %scevgep118
  %bound1243 = icmp ult ptr %scevgep121, %scevgep117
  %found.conflict244 = and i1 %bound0242, %bound1243
  %bound0246 = icmp ult ptr %scevgep116, %scevgep123
  %bound1247 = icmp ult ptr %scevgep122, %scevgep117
  %found.conflict248 = and i1 %bound0246, %bound1247
  %bound0250 = icmp ult ptr %scevgep118, %scevgep116
  %bound1251 = icmp ult ptr %scevgep120, %scevgep119
  %found.conflict252 = and i1 %bound0250, %bound1251
  %bound0255 = icmp ult ptr %scevgep118, %scevgep123
  %bound1256 = icmp ult ptr %scevgep122, %scevgep119
  %found.conflict257 = and i1 %bound0255, %bound1256
  %bound0259 = icmp ult ptr %scevgep120, %scevgep118
  %bound1260 = icmp ult ptr %scevgep121, %scevgep116
  %found.conflict261 = and i1 %bound0259, %bound1260
  %bound0263 = icmp ult ptr %scevgep120, %scevgep123
  %bound1264 = icmp ult ptr %scevgep122, %scevgep116
  %found.conflict265 = and i1 %bound0263, %bound1264
  %bound0267 = icmp ult ptr %scevgep121, %scevgep123
  %bound1268 = icmp ult ptr %scevgep122, %scevgep118
  %found.conflict269 = and i1 %bound0267, %bound1268
  %rdx.op = or <4 x i1> %i.bf, %i.bm
  %i.bn = bitcast <4 x i1> %rdx.op to i4
  %i.bo = icmp ne i4 %i.bn, 0
  %op.rdx = or i1 %i.bo, %found.conflict
end_hunk_4
begin_hunk_5_@_ZN3igl10doubleareaIN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE:bb.a
  store <2 x double> %wide.load98, ptr %i.ex, align 8, !tbaa !19
  %index.next99 = add nuw i64 %index96, 4         ; 2 uses
  %i.ey = icmp eq i64 %index.next99, %n.vec94
  br i1 %i.ey, label %middle.block100, label %vector.body95, !llvm.loop !328

middle.block100:                                  ; preds = %vector.body95
  %cmp.n101 = icmp eq i64 %i.eq, %n.vec94
  br i1 %cmp.n101, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEERS2_RKNS_9EigenBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader104

.lr.ph.i.i.i.i.i.i.i.i.i54.preheader104:          ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader, %middle.block100
  %.05.i.i.i.i.i.i.i.i.i55.ph = phi i64 [ %i.em, %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader ], [ %i.es, %middle.block100 ] ; 4 uses
  %i.ez = sub i64 %i.ei, %.05.i.i.i.i.i.i.i.i.i55.ph
  %xtraiter106 = and i64 %i.ez, 3                 ; 2 uses
  %lcmp.mod107.not = icmp eq i64 %xtraiter106, 0
  br i1 %lcmp.mod107.not, label %.lr.ph.i.i.i.i.i.i.i.i.i54.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i54.prol

.lr.ph.i.i.i.i.i.i.i.i.i54.prol:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader104, %.lr.ph.i.i.i.i.i.i.i.i.i54.prol
  %.05.i.i.i.i.i.i.i.i.i55.prol = phi i64 [ %i.fd, %.lr.ph.i.i.i.i.i.i.i.i.i54.prol ], [ %.05.i.i.i.i.i.i.i.i.i55.ph, %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader104 ] ; 3 uses
  %prol.iter108 = phi i64 [ %prol.iter108.next, %.lr.ph.i.i.i.i.i.i.i.i.i54.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader104 ]
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.ej, i64 %.05.i.i.i.i.i.i.i.i.i55.prol
  %i.fb = getelementptr inbounds [8 x i8], ptr %i.ee, i64 %.05.i.i.i.i.i.i.i.i.i55.prol
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !19
  store double %i.fc, ptr %i.fa, align 8, !tbaa !19
  %i.fd = add nsw i64 %.05.i.i.i.i.i.i.i.i.i55.prol, 1 ; 2 uses
  %prol.iter108.next = add i64 %prol.iter108, 1   ; 2 uses
  %prol.iter108.cmp.not = icmp eq i64 %prol.iter108.next, %xtraiter106
  br i1 %prol.iter108.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i54.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i54.prol, !llvm.loop !329

.lr.ph.i.i.i.i.i.i.i.i.i54.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i54.prol, %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader104
  %.05.i.i.i.i.i.i.i.i.i55.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i55.ph, %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader104 ], [ %i.fd, %.lr.ph.i.i.i.i.i.i.i.i.i54.prol ]
  %i.fe = sub i64 %.05.i.i.i.i.i.i.i.i.i55.ph, %i.ei
  %i.ff = icmp ugt i64 %i.fe, -4
  br i1 %i.ff, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEERS2_RKNS_9EigenBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i54

.lr.ph.i.i.i.i.i.i.i.i.i54:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i54.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i54
  %.05.i.i.i.i.i.i.i.i.i55 = phi i64 [ %i.fv, %.lr.ph.i.i.i.i.i.i.i.i.i54 ], [ %.05.i.i.i.i.i.i.i.i.i55.unr, %.lr.ph.i.i.i.i.i.i.i.i.i54.prol.loopexit ] ; 6 uses
  %i.fg = getelementptr inbounds [8 x i8], ptr %i.ej, i64 %.05.i.i.i.i.i.i.i.i.i55
  %i.fh = getelementptr inbounds [8 x i8], ptr %i.ee, i64 %.05.i.i.i.i.i.i.i.i.i55
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !19
  store double %i.fi, ptr %i.fg, align 8, !tbaa !19
  %i.fj = add nsw i64 %.05.i.i.i.i.i.i.i.i.i55, 1 ; 2 uses
  %i.fk = getelementptr inbounds [8 x i8], ptr %i.ej, i64 %i.fj
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.ee, i64 %i.fj
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !19
  store double %i.fm, ptr %i.fk, align 8, !tbaa !19
  %i.fn = add nsw i64 %.05.i.i.i.i.i.i.i.i.i55, 2 ; 2 uses
  %i.fo = getelementptr inbounds [8 x i8], ptr %i.ej, i64 %i.fn
  %i.fp = getelementptr inbounds [8 x i8], ptr %i.ee, i64 %i.fn
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !19
  store double %i.fq, ptr %i.fo, align 8, !tbaa !19
  %i.fr = add nsw i64 %.05.i.i.i.i.i.i.i.i.i55, 3 ; 2 uses
  %i.fs = getelementptr inbounds [8 x i8], ptr %i.ej, i64 %i.fr
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.ee, i64 %i.fr
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !19
  store double %i.fu, ptr %i.fs, align 8, !tbaa !19
  %i.fv = add nsw i64 %.05.i.i.i.i.i.i.i.i.i55, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i56.3 = icmp eq i64 %i.fv, %i.ei
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i56.3, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEERS2_RKNS_9EigenBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i54, !llvm.loop !330

.lr.ph.i.i.i.i.i.i.i.i57:                         ; preds = %bb.i, %.lr.ph.i.i.i.i.i.i.i.i57
  %.011.i.i.i.i.i.i.i.i58 = phi i64 [ %i.fz, %.lr.ph.i.i.i.i.i.i.i.i57 ], [ 0, %bb.i ] ; 3 uses
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %.011.i.i.i.i.i.i.i.i58
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %.011.i.i.i.i.i.i.i.i58
  %i.fy = load <2 x double>, ptr %i.fx, align 16, !tbaa !37
  store <2 x double> %i.fy, ptr %i.fw, align 16, !tbaa !37
  %i.fz = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i58, 2 ; 2 uses
  %i.ga = icmp slt i64 %i.fz, %i.em
  br i1 %i.ga, label %.lr.ph.i.i.i.i.i.i.i.i57, label %._crit_edge.i.i.i.i.i.i.i.i53, !llvm.loop !42

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEERS2_RKNS_9EigenBaseIT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i54.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i54, %middle.block100, %._crit_edge.i.i.i.i.i.i.i.i53
  %i.gb = load ptr, ptr %4, align 8, !tbaa !18
  call void @free(ptr noundef %i.gb) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %.loopexit

bb.j:                                             ; preds = %thread-pre-split.i.i.i.i.i.i.i51, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal14scalar_sqrt_opIdEEKNS_12ArrayWrapperINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEEE4evalEv.exit
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.h, %bb.j
  %.pn = phi { ptr, i32 } [ %i.gc, %bb.j ], [ %i.ec, %bb.h ]
  %i.gd = load ptr, ptr %4, align 8, !tbaa !18
  call void @free(ptr noundef %i.gd) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.q

bb.k:                                             ; preds = %bb.c
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.h, i64 noundef 1)
          to label %.preheader71 unwind label %bb.l

.preheader71:                                     ; preds = %bb.k
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader71
  %i.ge = load ptr, ptr %1, align 8, !tbaa !21
  %i.gf = load ptr, ptr %0, align 8, !tbaa !320   ; 3 uses
  %i.gg = load i64, ptr %i.d, align 8, !tbaa !319 ; 3 uses
  %i.gh = load i64, ptr %i.g, align 8, !tbaa !14  ; 2 uses
  %.idx.i61 = shl i64 %i.gh, 3
  %i.gi = load ptr, ptr %2, align 8, !tbaa !18
  br label %bb.m

bb.l:                                             ; preds = %bb.o, %bb.n, %bb.k
  %i.gj = landingpad { ptr, i32 }
          cleanup
  %.pre = load ptr, ptr %3, align 8, !tbaa !22
  br label %bb.q

bb.m:                                             ; preds = %.lr.ph, %bb.m
  %.072 = phi i64 [ 0, %.lr.ph ], [ %i.hr, %bb.m ] ; 3 uses
  %sext = shl i64 %.072, 32
  %i.gk = ashr exact i64 %sext, 30
  %i.gl = getelementptr i8, ptr %i.ge, i64 %i.gk  ; 3 uses
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !25
  %i.gn = sext i32 %i.gm to i64
  %i.go = mul nsw i64 %i.gg, %i.gn
  %i.gp = getelementptr [8 x i8], ptr %i.gf, i64 %i.go ; 2 uses
  %i.gq = load double, ptr %i.gp, align 8, !tbaa !19
  %i.gr = getelementptr i8, ptr %i.gl, i64 %.idx.i61
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !25
  %i.gt = sext i32 %i.gs to i64
  %i.gu = mul nsw i64 %i.gg, %i.gt
  %i.gv = getelementptr [8 x i8], ptr %i.gf, i64 %i.gu ; 2 uses
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !19 ; 2 uses
  %i.gx = fsub double %i.gq, %i.gw
  %i.gy = getelementptr [4 x i8], ptr %i.gl, i64 %i.gh
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !25
  %i.ha = sext i32 %i.gz to i64
  %i.hb = mul nsw i64 %i.gg, %i.ha
  %i.hc = getelementptr [8 x i8], ptr %i.gf, i64 %i.hb ; 2 uses
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !19
  %i.he = fsub double %i.hd, %i.gw
  %i.hf = getelementptr i8, ptr %i.gp, i64 8
  %i.hg = load double, ptr %i.hf, align 8, !tbaa !19
  %i.hh = getelementptr i8, ptr %i.gv, i64 8
  %i.hi = load double, ptr %i.hh, align 8, !tbaa !19 ; 2 uses
  %i.hj = fsub double %i.hg, %i.hi
  %i.hk = getelementptr i8, ptr %i.hc, i64 8
  %i.hl = load double, ptr %i.hk, align 8, !tbaa !19
  %i.hm = fsub double %i.hl, %i.hi
  %i.hn = fneg double %i.he
  %i.ho = fmul double %i.hj, %i.hn
  %i.hp = tail call noundef double @llvm.fmuladd.f64(double %i.gx, double %i.hm, double %i.ho)
  %i.hq = getelementptr inbounds [8 x i8], ptr %i.gi, i64 %.072
  store double %i.hp, ptr %i.hq, align 8, !tbaa !19
  %i.hr = add nuw i64 %.072, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.hr, %i.h
  br i1 %exitcond.not, label %.loopexit, label %bb.m, !llvm.loop !331

bb.n:                                             ; preds = %bb.c
  invoke void @_ZN3igl12edge_lengthsIN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi3ELi0ELin1ELi3EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.o unwind label %bb.l

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN3igl10doubleareaIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EENS6_6ScalarERNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1) %3, double noundef 0.000000e+00, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %..loopexit_crit_edge unwind label %bb.l

..loopexit_crit_edge:                             ; preds = %bb.o
  %.pre80 = load ptr, ptr %3, align 8, !tbaa !22
  br label %.loopexit

.loopexit:                                        ; preds = %bb.m, %..loopexit_crit_edge, %.preheader71, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEERS2_RKNS_9EigenBaseIT_EE.exit
  %i.hs = phi ptr [ %.pre80, %..loopexit_crit_edge ], [ null, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEERS2_RKNS_9EigenBaseIT_EE.exit ], [ null, %.preheader71 ], [ null, %bb.m ]
  call void @free(ptr noundef %i.hs) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.p

bb.p:                                             ; preds = %.loopexit, %bb.b
  ret void

bb.q:                                             ; preds = %bb.l, %.body, %bb.f
  %i.ht = phi ptr [ %.pre, %bb.l ], [ null, %bb.f ], [ null, %.body ]
  %.pn45 = phi { ptr, i32 } [ %i.gj, %bb.l ], [ %i.cg, %bb.f ], [ %.pn, %.body ]
  call void @free(ptr noundef %i.ht) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %.pn45
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl15doublearea_quadIN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Matrix.97", align 8  ; 10 uses
  %4 = alloca %"class.Eigen::Matrix.21", align 8  ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !14   ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.c = shl nsw i64 %i.b, 1                      ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.d = icmp sgt i64 %i.b, 1537228672809129301
  br i1 %i.d, label %.noexc.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !43
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i: ; preds = %bb.a
  %5 = mul nsw i64 %i.b, 6
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread, label %bb.b

_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i
  store i64 %i.c, ptr %i.f, align 8, !tbaa !14
  store i64 3, ptr %i.g, align 8, !tbaa !9
  br label %._crit_edge

bb.b:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i
  %i.h = icmp sgt i64 %i.b, 0
  br i1 %i.h, label %bb.c, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.lr.ph

bb.c:                                             ; preds = %bb.b
  %i.i = icmp samesign ugt i64 %5, 4611686018427387903
  br i1 %i.i, label %.noexc, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i

.noexc:                                           ; preds = %bb.c
  %i.j = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.j, align 8, !tbaa !43
  tail call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i: ; preds = %bb.c
  %i.k = mul i64 %i.b, 24
  %i.l = tail call noalias ptr @malloc(i64 noundef %i.k) #25 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.noexc59, label %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread105

_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread105: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i
  store ptr %i.l, ptr %3, align 8, !tbaa !21
  br label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.lr.ph

.noexc59:                                         ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i
  %i.n = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.n, align 8, !tbaa !43
  tail call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
  unreachable

_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.lr.ph: ; preds = %bb.b, %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread105
  %.sink.i108 = phi ptr [ %i.l, %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread105 ], [ null, %bb.b ] ; 24 uses
  store i64 %i.c, ptr %i.f, align 8, !tbaa !14
  store i64 3, ptr %i.g, align 8, !tbaa !9
  %i.o = load ptr, ptr %1, align 8, !tbaa !21     ; 9 uses
  %.idx = shl i64 %i.b, 3                         ; 8 uses
  %.idx93 = shl i64 %i.b, 4                       ; 9 uses
  %.idx94 = mul i64 %i.b, 12                      ; 3 uses
  %min.iters.check = icmp ult i64 %i.b, 134
  br i1 %min.iters.check, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.lr.ph
  %i.p = add i64 %i.b, -1                         ; 2 uses
  %mul.result = shl i64 %i.p, 3                   ; 6 uses
  %mul.overflow = icmp ugt i64 %i.p, 2305843009213693951
  %i.q = getelementptr i8, ptr %.sink.i108, i64 %mul.result
  %i.r = icmp ult ptr %i.q, %.sink.i108
  %scevgep = getelementptr i8, ptr %.sink.i108, i64 %.idx ; 2 uses
  %i.s = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.t = icmp ult ptr %i.s, %scevgep
  %scevgep109 = getelementptr i8, ptr %.sink.i108, i64 %.idx93 ; 2 uses
  %i.u = getelementptr i8, ptr %scevgep109, i64 %mul.result
  %i.v = icmp ult ptr %i.u, %scevgep109
  %i.w = or i1 %i.v, %mul.overflow
  %scevgep110 = getelementptr i8, ptr %.sink.i108, i64 4 ; 2 uses
  %i.x = getelementptr i8, ptr %scevgep110, i64 %mul.result
  %i.y = icmp ult ptr %i.x, %scevgep110
  %i.z = getelementptr i8, ptr %.sink.i108, i64 %.idx
  %scevgep111 = getelementptr i8, ptr %i.z, i64 4 ; 2 uses
  %i.aa = getelementptr i8, ptr %scevgep111, i64 %mul.result
  %i.ab = icmp ult ptr %i.aa, %scevgep111
  %i.ac = getelementptr i8, ptr %.sink.i108, i64 %.idx93
  %scevgep112 = getelementptr i8, ptr %i.ac, i64 4 ; 2 uses
  %i.ad = getelementptr i8, ptr %scevgep112, i64 %mul.result
  %i.ae = icmp ult ptr %i.ad, %scevgep112
  %i.af = or i1 %i.t, %i.r
  %i.ag = or i1 %i.af, %i.w
  %i.ah = or i1 %i.y, %i.ag
  %i.ai = or i1 %i.ab, %i.ah
  %i.aj = or i1 %i.ae, %i.ai
  br i1 %i.aj, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %scevgep113 = getelementptr i8, ptr %i.o, i64 %.idx94 ; 12 uses
  %scevgep114 = getelementptr i8, ptr %i.o, i64 %.idx93 ; 6 uses
  %i.ak = getelementptr i8, ptr %.sink.i108, i64 %.idx
  %scevgep115 = getelementptr i8, ptr %i.ak, i64 -4 ; 6 uses
  %scevgep116 = getelementptr i8, ptr %.sink.i108, i64 %.idx ; 15 uses
  %i.al = getelementptr i8, ptr %.sink.i108, i64 %.idx93
  %scevgep117 = getelementptr i8, ptr %i.al, i64 -4 ; 8 uses
  %scevgep118 = getelementptr i8, ptr %.sink.i108, i64 %.idx93 ; 14 uses
  %i.am = mul i64 %i.b, 24                        ; 2 uses
  %i.an = getelementptr i8, ptr %.sink.i108, i64 %i.am
  %scevgep119 = getelementptr i8, ptr %i.an, i64 -4 ; 7 uses
  %scevgep120 = getelementptr i8, ptr %.sink.i108, i64 4 ; 7 uses
  %i.ao = getelementptr i8, ptr %.sink.i108, i64 %.idx
  %scevgep121 = getelementptr i8, ptr %i.ao, i64 4 ; 7 uses
  %i.ap = getelementptr i8, ptr %.sink.i108, i64 %.idx93
  %scevgep122 = getelementptr i8, ptr %i.ap, i64 4 ; 8 uses
  %scevgep123 = getelementptr i8, ptr %.sink.i108, i64 %i.am ; 8 uses
  %scevgep124 = getelementptr i8, ptr %i.o, i64 %.idx ; 12 uses
  %i.aq = shl nuw i64 %i.b, 2
  %scevgep125 = getelementptr i8, ptr %i.o, i64 %i.aq ; 9 uses
  %bound0 = icmp ult ptr %scevgep113, %scevgep115
  %bound1 = icmp ult ptr %.sink.i108, %scevgep114
  %found.conflict = and i1 %bound0, %bound1
  %bound0126 = icmp ult ptr %scevgep113, %scevgep117
  %bound1127 = icmp ult ptr %scevgep116, %scevgep114
  %found.conflict128 = and i1 %bound0126, %bound1127
  %bound0129 = icmp ult ptr %scevgep113, %scevgep119
  %bound1130 = icmp ult ptr %scevgep118, %scevgep114
  %found.conflict131 = and i1 %bound0129, %bound1130
  %bound0133 = icmp ult ptr %scevgep113, %scevgep116
  %bound1134 = icmp ult ptr %scevgep120, %scevgep114
  %found.conflict135 = and i1 %bound0133, %bound1134
  %bound0137 = icmp ult ptr %scevgep113, %scevgep118
  %bound1138 = icmp ult ptr %scevgep121, %scevgep114
  %found.conflict139 = and i1 %bound0137, %bound1138
  %bound0141 = icmp ult ptr %scevgep113, %scevgep123
  %bound1142 = icmp ult ptr %scevgep122, %scevgep114
  %found.conflict143 = and i1 %bound0141, %bound1142
  %bound0145 = icmp ult ptr %scevgep124, %scevgep115
  %bound1146 = icmp ult ptr %.sink.i108, %scevgep113
  %found.conflict147 = and i1 %bound0145, %bound1146
  %bound0149 = icmp ult ptr %scevgep124, %scevgep117
  %bound1150 = icmp ult ptr %scevgep116, %scevgep113
  %found.conflict151 = and i1 %bound0149, %bound1150
  %bound0153 = icmp ult ptr %scevgep124, %scevgep119
  %bound1154 = icmp ult ptr %scevgep118, %scevgep113
  %found.conflict155 = and i1 %bound0153, %bound1154
  %bound0157 = icmp ult ptr %scevgep124, %scevgep116
  %bound1158 = icmp ult ptr %scevgep120, %scevgep113
  %found.conflict159 = and i1 %bound0157, %bound1158
  %bound0161 = icmp ult ptr %scevgep124, %scevgep118
  %bound1162 = icmp ult ptr %scevgep121, %scevgep113
  %found.conflict163 = and i1 %bound0161, %bound1162
  %bound0165 = icmp ult ptr %scevgep124, %scevgep123
  %bound1166 = icmp ult ptr %scevgep122, %scevgep113
  %found.conflict167 = and i1 %bound0165, %bound1166
  %bound0169 = icmp ult ptr %scevgep125, %scevgep115
  %bound1170 = icmp ult ptr %.sink.i108, %scevgep124
  %found.conflict171 = and i1 %bound0169, %bound1170
  %bound0173 = icmp ult ptr %scevgep125, %scevgep117
  %bound1174 = icmp ult ptr %scevgep116, %scevgep124
  %found.conflict175 = and i1 %bound0173, %bound1174
  %bound0177 = icmp ult ptr %scevgep125, %scevgep119
  %bound1178 = icmp ult ptr %scevgep118, %scevgep124
  %found.conflict179 = and i1 %bound0177, %bound1178
  %bound0181 = icmp ult ptr %scevgep125, %scevgep116
  %bound1182 = icmp ult ptr %scevgep120, %scevgep124
  %found.conflict183 = and i1 %bound0181, %bound1182
  %bound0185 = icmp ult ptr %scevgep125, %scevgep118
  %bound1186 = icmp ult ptr %scevgep121, %scevgep124
  %found.conflict187 = and i1 %bound0185, %bound1186
  %bound0189 = icmp ult ptr %scevgep125, %scevgep123
  %bound1190 = icmp ult ptr %scevgep122, %scevgep124
  %found.conflict191 = and i1 %bound0189, %bound1190
  %bound0193 = icmp ult ptr %i.o, %scevgep115
  %bound1194 = icmp ult ptr %.sink.i108, %scevgep125
  %found.conflict195 = and i1 %bound0193, %bound1194
  %bound0197 = icmp ult ptr %i.o, %scevgep117
  %bound1198 = icmp ult ptr %scevgep116, %scevgep125
  %found.conflict199 = and i1 %bound0197, %bound1198
  %i.ar = insertelement <4 x ptr> poison, ptr %i.o, i64 0
  %i.as = shufflevector <4 x ptr> %i.ar, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.at = insertelement <4 x ptr> poison, ptr %scevgep119, i64 0
  %i.au = insertelement <4 x ptr> %i.at, ptr %scevgep116, i64 1
  %i.av = insertelement <4 x ptr> %i.au, ptr %scevgep118, i64 2
  %i.aw = insertelement <4 x ptr> %i.av, ptr %scevgep123, i64 3 ; 2 uses
  %i.ax = icmp ult <4 x ptr> %i.as, %i.aw
  %i.ay = insertelement <4 x ptr> poison, ptr %scevgep118, i64 0
  %i.az = insertelement <4 x ptr> %i.ay, ptr %scevgep120, i64 1
  %i.ba = insertelement <4 x ptr> %i.az, ptr %scevgep121, i64 2
  %i.bb = insertelement <4 x ptr> %i.ba, ptr %scevgep122, i64 3 ; 2 uses
  %i.bc = insertelement <4 x ptr> poison, ptr %scevgep125, i64 0
  %i.bd = shufflevector <4 x ptr> %i.bc, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.be = icmp ult <4 x ptr> %i.bb, %i.bd
  %i.bf = and <4 x i1> %i.ax, %i.be
  %bound0217 = icmp ult ptr %.sink.i108, %scevgep117
  %bound1218 = icmp ult ptr %scevgep116, %scevgep115
  %found.conflict219 = and i1 %bound0217, %bound1218
  %i.bg = insertelement <4 x ptr> poison, ptr %.sink.i108, i64 0
  %i.bh = shufflevector <4 x ptr> %i.bg, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bi = icmp ult <4 x ptr> %i.bh, %i.aw
  %i.bj = insertelement <4 x ptr> poison, ptr %scevgep115, i64 0
  %i.bk = shufflevector <4 x ptr> %i.bj, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bl = icmp ult <4 x ptr> %i.bb, %i.bk
  %i.bm = and <4 x i1> %i.bi, %i.bl
  %bound0237 = icmp ult ptr %scevgep116, %scevgep119
  %bound1238 = icmp ult ptr %scevgep118, %scevgep117
  %found.conflict239 = and i1 %bound0237, %bound1238
  %bound0242 = icmp ult ptr %scevgep116, %scevgep118
  %bound1243 = icmp ult ptr %scevgep121, %scevgep117
  %found.conflict244 = and i1 %bound0242, %bound1243
  %bound0246 = icmp ult ptr %scevgep116, %scevgep123
  %bound1247 = icmp ult ptr %scevgep122, %scevgep117
  %found.conflict248 = and i1 %bound0246, %bound1247
  %bound0250 = icmp ult ptr %scevgep118, %scevgep116
  %bound1251 = icmp ult ptr %scevgep120, %scevgep119
  %found.conflict252 = and i1 %bound0250, %bound1251
  %bound0255 = icmp ult ptr %scevgep118, %scevgep123
  %bound1256 = icmp ult ptr %scevgep122, %scevgep119
  %found.conflict257 = and i1 %bound0255, %bound1256
  %bound0259 = icmp ult ptr %scevgep120, %scevgep118
  %bound1260 = icmp ult ptr %scevgep121, %scevgep116
  %found.conflict261 = and i1 %bound0259, %bound1260
  %bound0263 = icmp ult ptr %scevgep120, %scevgep123
  %bound1264 = icmp ult ptr %scevgep122, %scevgep116
  %found.conflict265 = and i1 %bound0263, %bound1264
  %bound0267 = icmp ult ptr %scevgep121, %scevgep123
  %bound1268 = icmp ult ptr %scevgep122, %scevgep118
  %found.conflict269 = and i1 %bound0267, %bound1268
  %rdx.op = or <4 x i1> %i.bf, %i.bm
  %i.bn = bitcast <4 x i1> %rdx.op to i4
  %i.bo = icmp ne i4 %i.bn, 0
  %op.rdx = or i1 %i.bo, %found.conflict
end_hunk_5
begin_hunk_6_@_ZN3igl10doubleareaIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEENS2_IjLin1ELin1ELi1ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE:bb.a
  %i.cx = getelementptr inbounds [8 x i8], ptr %.pre.i.i, i64 %i.cw
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.cw
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !19
  %.scalar.i.i.i.i.i.i.i.i.i.i.i.i.2 = call noundef double @llvm.sqrt.f64(double %i.cz)
  store double %.scalar.i.i.i.i.i.i.i.i.i.i.i.i.2, ptr %i.cx, align 8, !tbaa !19
  %i.da = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 3   ; 2 uses
  %i.db = getelementptr inbounds [8 x i8], ptr %.pre.i.i, i64 %i.da
  %i.dc = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.da
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !19
  %.scalar.i.i.i.i.i.i.i.i.i.i.i.i.3 = call noundef double @llvm.sqrt.f64(double %i.dd)
  store double %.scalar.i.i.i.i.i.i.i.i.i.i.i.i.3, ptr %i.db, align 8, !tbaa !19
  %i.de = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 4   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.de, %.pr.i.i.i.i.i.i.i49
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.3, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal14scalar_sqrt_opIdEEKNS_12ArrayWrapperINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEEE4evalEv.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !422

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i.i.i
  %.011.i.i.i.i.i.i.i.i = phi i64 [ %i.dj, %.lr.ph.i.i.i.i.i.i.i.i ], [ 0, %bb.c ] ; 3 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %.011.i.i.i.i.i.i.i.i
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %.011.i.i.i.i.i.i.i.i
  %i.dh = load <2 x double>, ptr %i.dg, align 16, !tbaa !37
  %i.di = call noundef <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.dh)
  store <2 x double> %i.di, ptr %i.df, align 16, !tbaa !37
  %i.dj = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.dk = icmp slt i64 %i.dj, %i.bv
  br i1 %i.dk, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, !llvm.loop !38

bb.d:                                             ; preds = %thread-pre-split.i.i.i.i.i.i.i
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal14scalar_sqrt_opIdEEKNS_12ArrayWrapperINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEEE4evalEv.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i.i.i, %._crit_edge
  %i.dm = load i64, ptr %i.bt, align 8, !tbaa !15
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.dm, i64 noundef 1)
          to label %.noexc59 unwind label %bb.f

.noexc59:                                         ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal14scalar_sqrt_opIdEEKNS_12ArrayWrapperINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEEE4evalEv.exit
  %i.dn = load ptr, ptr %3, align 8, !tbaa !18    ; 8 uses
  %i.do = ptrtoaddr ptr %i.dn to i64
  %i.dp = load i64, ptr %i.bt, align 8, !tbaa !15 ; 3 uses
  %i.dq = load i64, ptr %i.f, align 8, !tbaa !15
  %.not.i.i.i.i.i.i.i.i50 = icmp eq i64 %i.dq, %i.dp
  br i1 %.not.i.i.i.i.i.i.i.i50, label %bb.e, label %thread-pre-split.i.i.i.i.i.i.i51

thread-pre-split.i.i.i.i.i.i.i51:                 ; preds = %.noexc59
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.dp, i64 noundef 1)
          to label %.noexc60 unwind label %bb.f

.noexc60:                                         ; preds = %thread-pre-split.i.i.i.i.i.i.i51
  %.pr.i.i.i.i.i.i.i52 = load i64, ptr %i.f, align 8, !tbaa !15
  br label %bb.e

bb.e:                                             ; preds = %.noexc60, %.noexc59
  %i.dr = phi i64 [ %.pr.i.i.i.i.i.i.i52, %.noexc60 ], [ %i.dp, %.noexc59 ] ; 7 uses
  %i.ds = load ptr, ptr %2, align 8, !tbaa !18    ; 8 uses
  %i.dt = ptrtoaddr ptr %i.ds to i64
  %i.du = sdiv i64 %i.dr, 2                       ; 2 uses
  %i.dv = shl nsw i64 %i.du, 1                    ; 5 uses
  %i.dw = icmp sgt i64 %i.dr, 1
  br i1 %i.dw, label %.lr.ph.i.i.i.i.i.i.i.i57, label %._crit_edge.i.i.i.i.i.i.i.i53

._crit_edge.i.i.i.i.i.i.i.i53:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i57, %bb.e
  %i.dx = icmp slt i64 %i.dv, %i.dr
  br i1 %i.dx, label %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader, label %.loopexit

.lr.ph.i.i.i.i.i.i.i.i.i54.preheader:             ; preds = %._crit_edge.i.i.i.i.i.i.i.i53
  %i.dy = shl nsw i64 %i.du, 1
  %i.dz = sub i64 %i.dr, %i.dy                    ; 3 uses
  %min.iters.check88 = icmp ult i64 %i.dz, 8
  %i.ea = sub i64 %i.do, %i.dt
  %diff.check86 = icmp ugt i64 %i.ea, -32
  %or.cond99 = select i1 %min.iters.check88, i1 true, i1 %diff.check86
  br i1 %or.cond99, label %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader100, label %vector.ph89

vector.ph89:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader
  %n.vec90 = and i64 %i.dz, -4                    ; 3 uses
  %i.eb = add i64 %i.dv, %n.vec90
  br label %vector.body91

vector.body91:                                    ; preds = %vector.body91, %vector.ph89
  %index92 = phi i64 [ 0, %vector.ph89 ], [ %index.next95, %vector.body91 ] ; 2 uses
  %i.ec = add i64 %i.dv, %index92                 ; 2 uses
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.ds, i64 %i.ec ; 2 uses
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.dn, i64 %i.ec ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %wide.load93 = load <2 x double>, ptr %i.ee, align 8, !tbaa !19
  %wide.load94 = load <2 x double>, ptr %i.ef, align 8, !tbaa !19
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  store <2 x double> %wide.load93, ptr %i.ed, align 8, !tbaa !19
  store <2 x double> %wide.load94, ptr %i.eg, align 8, !tbaa !19
  %index.next95 = add nuw i64 %index92, 4         ; 2 uses
  %i.eh = icmp eq i64 %index.next95, %n.vec90
  br i1 %i.eh, label %middle.block96, label %vector.body91, !llvm.loop !423

middle.block96:                                   ; preds = %vector.body91
  %cmp.n97 = icmp eq i64 %i.dz, %n.vec90
  br i1 %cmp.n97, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader100

.lr.ph.i.i.i.i.i.i.i.i.i54.preheader100:          ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader, %middle.block96
  %.05.i.i.i.i.i.i.i.i.i55.ph = phi i64 [ %i.dv, %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader ], [ %i.eb, %middle.block96 ] ; 4 uses
  %i.ei = sub i64 %i.dr, %.05.i.i.i.i.i.i.i.i.i55.ph
  %xtraiter102 = and i64 %i.ei, 3                 ; 2 uses
  %lcmp.mod103.not = icmp eq i64 %xtraiter102, 0
  br i1 %lcmp.mod103.not, label %.lr.ph.i.i.i.i.i.i.i.i.i54.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i54.prol

.lr.ph.i.i.i.i.i.i.i.i.i54.prol:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader100, %.lr.ph.i.i.i.i.i.i.i.i.i54.prol
  %.05.i.i.i.i.i.i.i.i.i55.prol = phi i64 [ %i.em, %.lr.ph.i.i.i.i.i.i.i.i.i54.prol ], [ %.05.i.i.i.i.i.i.i.i.i55.ph, %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader100 ] ; 3 uses
  %prol.iter104 = phi i64 [ %prol.iter104.next, %.lr.ph.i.i.i.i.i.i.i.i.i54.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader100 ]
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.ds, i64 %.05.i.i.i.i.i.i.i.i.i55.prol
  %i.ek = getelementptr inbounds [8 x i8], ptr %i.dn, i64 %.05.i.i.i.i.i.i.i.i.i55.prol
  %i.el = load double, ptr %i.ek, align 8, !tbaa !19
  store double %i.el, ptr %i.ej, align 8, !tbaa !19
  %i.em = add nsw i64 %.05.i.i.i.i.i.i.i.i.i55.prol, 1 ; 2 uses
  %prol.iter104.next = add i64 %prol.iter104, 1   ; 2 uses
  %prol.iter104.cmp.not = icmp eq i64 %prol.iter104.next, %xtraiter102
  br i1 %prol.iter104.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i54.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i54.prol, !llvm.loop !424

.lr.ph.i.i.i.i.i.i.i.i.i54.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i54.prol, %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader100
  %.05.i.i.i.i.i.i.i.i.i55.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i55.ph, %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader100 ], [ %i.em, %.lr.ph.i.i.i.i.i.i.i.i.i54.prol ]
  %i.en = sub i64 %.05.i.i.i.i.i.i.i.i.i55.ph, %i.dr
  %i.eo = icmp ugt i64 %i.en, -4
  br i1 %i.eo, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i54

.lr.ph.i.i.i.i.i.i.i.i.i54:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i54.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i54
  %.05.i.i.i.i.i.i.i.i.i55 = phi i64 [ %i.fe, %.lr.ph.i.i.i.i.i.i.i.i.i54 ], [ %.05.i.i.i.i.i.i.i.i.i55.unr, %.lr.ph.i.i.i.i.i.i.i.i.i54.prol.loopexit ] ; 6 uses
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.ds, i64 %.05.i.i.i.i.i.i.i.i.i55
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.dn, i64 %.05.i.i.i.i.i.i.i.i.i55
  %i.er = load double, ptr %i.eq, align 8, !tbaa !19
  store double %i.er, ptr %i.ep, align 8, !tbaa !19
  %i.es = add nsw i64 %.05.i.i.i.i.i.i.i.i.i55, 1 ; 2 uses
  %i.et = getelementptr inbounds [8 x i8], ptr %i.ds, i64 %i.es
  %i.eu = getelementptr inbounds [8 x i8], ptr %i.dn, i64 %i.es
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !19
  store double %i.ev, ptr %i.et, align 8, !tbaa !19
  %i.ew = add nsw i64 %.05.i.i.i.i.i.i.i.i.i55, 2 ; 2 uses
  %i.ex = getelementptr inbounds [8 x i8], ptr %i.ds, i64 %i.ew
  %i.ey = getelementptr inbounds [8 x i8], ptr %i.dn, i64 %i.ew
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !19
  store double %i.ez, ptr %i.ex, align 8, !tbaa !19
  %i.fa = add nsw i64 %.05.i.i.i.i.i.i.i.i.i55, 3 ; 2 uses
  %i.fb = getelementptr inbounds [8 x i8], ptr %i.ds, i64 %i.fa
  %i.fc = getelementptr inbounds [8 x i8], ptr %i.dn, i64 %i.fa
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !19
  store double %i.fd, ptr %i.fb, align 8, !tbaa !19
  %i.fe = add nsw i64 %.05.i.i.i.i.i.i.i.i.i55, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i56.3 = icmp eq i64 %i.fe, %i.dr
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i56.3, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i54, !llvm.loop !425

.lr.ph.i.i.i.i.i.i.i.i57:                         ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i.i.i57
  %.011.i.i.i.i.i.i.i.i58 = phi i64 [ %i.fi, %.lr.ph.i.i.i.i.i.i.i.i57 ], [ 0, %bb.e ] ; 3 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %.011.i.i.i.i.i.i.i.i58
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %.011.i.i.i.i.i.i.i.i58
  %i.fh = load <2 x double>, ptr %i.fg, align 16, !tbaa !37
  store <2 x double> %i.fh, ptr %i.ff, align 16, !tbaa !37
  %i.fi = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i58, 2 ; 2 uses
  %i.fj = icmp slt i64 %i.fi, %i.dv
  br i1 %i.fj, label %.lr.ph.i.i.i.i.i.i.i.i57, label %._crit_edge.i.i.i.i.i.i.i.i53, !llvm.loop !42

bb.f:                                             ; preds = %thread-pre-split.i.i.i.i.i.i.i51, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal14scalar_sqrt_opIdEEKNS_12ArrayWrapperINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEEE4evalEv.exit
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %bb.f
  %.pn = phi { ptr, i32 } [ %i.fk, %bb.f ], [ %i.dl, %bb.d ]
  %i.fl = load ptr, ptr %3, align 8, !tbaa !18
  call void @free(ptr noundef %i.fl) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %.pn

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i54.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i54, %middle.block96, %._crit_edge.i.i.i.i.i.i.i.i53
  %i.fm = load ptr, ptr %3, align 8, !tbaa !18
  call void @free(ptr noundef %i.fm) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.g

bb.g:                                             ; preds = %.loopexit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl15doublearea_quadIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEENS2_IjLin1ELin1ELi1ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Matrix.97", align 8  ; 10 uses
  %4 = alloca %"class.Eigen::Matrix.21", align 8  ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !414  ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.c = shl nsw i64 %i.b, 1                      ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.d = icmp sgt i64 %i.b, 1537228672809129301
  br i1 %i.d, label %.noexc.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !43
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i: ; preds = %bb.a
  %5 = mul nsw i64 %i.b, 6
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread, label %bb.b

_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i
  store i64 %i.c, ptr %i.f, align 8, !tbaa !14
  store i64 3, ptr %i.g, align 8, !tbaa !9
  br label %._crit_edge

bb.b:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i
  %i.h = icmp sgt i64 %i.b, 0
  br i1 %i.h, label %bb.c, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit66.lr.ph

bb.c:                                             ; preds = %bb.b
  %i.i = icmp samesign ugt i64 %5, 4611686018427387903
  br i1 %i.i, label %.noexc, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i

.noexc:                                           ; preds = %bb.c
  %i.j = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.j, align 8, !tbaa !43
  tail call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i: ; preds = %bb.c
  %i.k = mul i64 %i.b, 24
  %i.l = tail call noalias ptr @malloc(i64 noundef %i.k) #25 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.noexc67, label %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread117

_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread117: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i
  store ptr %i.l, ptr %3, align 8, !tbaa !21
  br label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit66.lr.ph

.noexc67:                                         ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i
  %i.n = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.n, align 8, !tbaa !43
  tail call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
  unreachable

_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit66.lr.ph: ; preds = %bb.b, %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread117
  %.sink.i120 = phi ptr [ %i.l, %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread117 ], [ null, %bb.b ] ; 21 uses
  store i64 %i.c, ptr %i.f, align 8, !tbaa !14
  store i64 3, ptr %i.g, align 8, !tbaa !9
  %i.o = load ptr, ptr %1, align 8, !tbaa !415    ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !412  ; 2 uses
  %.idx = shl i64 %i.b, 4                         ; 8 uses
  %min.iters.check = icmp ult i64 %i.b, 86
  br i1 %min.iters.check, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit66.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit66.lr.ph
  %ident.check = icmp ne i64 %i.q, 1
  %i.r = add i64 %i.b, -1                         ; 2 uses
  %mul.result = shl i64 %i.r, 3                   ; 6 uses
  %mul.overflow = icmp ugt i64 %i.r, 2305843009213693951
  %i.s = getelementptr i8, ptr %.sink.i120, i64 %mul.result
  %i.t = icmp ult ptr %i.s, %.sink.i120
  %i.u = shl i64 %i.b, 3                          ; 2 uses
  %scevgep = getelementptr i8, ptr %.sink.i120, i64 %i.u ; 2 uses
  %i.v = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.w = icmp ult ptr %i.v, %scevgep
  %i.x = or i1 %i.w, %mul.overflow
  %scevgep121 = getelementptr i8, ptr %.sink.i120, i64 %.idx ; 2 uses
  %i.y = getelementptr i8, ptr %scevgep121, i64 %mul.result
  %i.z = icmp ult ptr %i.y, %scevgep121
  %scevgep122 = getelementptr i8, ptr %.sink.i120, i64 4 ; 2 uses
  %i.aa = getelementptr i8, ptr %scevgep122, i64 %mul.result
  %i.ab = icmp ult ptr %i.aa, %scevgep122
  %i.ac = getelementptr i8, ptr %.sink.i120, i64 %i.u
  %scevgep123 = getelementptr i8, ptr %i.ac, i64 4 ; 2 uses
  %i.ad = getelementptr i8, ptr %scevgep123, i64 %mul.result
  %i.ae = icmp ult ptr %i.ad, %scevgep123
  %i.af = getelementptr i8, ptr %.sink.i120, i64 %.idx
  %scevgep124 = getelementptr i8, ptr %i.af, i64 4 ; 2 uses
  %i.ag = getelementptr i8, ptr %scevgep124, i64 %mul.result
  %i.ah = icmp ult ptr %i.ag, %scevgep124
  %i.ai = or i1 %i.t, %ident.check
  %i.aj = or i1 %i.ai, %i.x
  %i.ak = or i1 %i.z, %i.aj
  %i.al = or i1 %i.ab, %i.ak
  %i.am = or i1 %i.ae, %i.al
  %i.an = or i1 %i.ah, %i.am
  br i1 %i.an, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit66.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.ao = shl nuw i64 %i.b, 2
  %i.ap = getelementptr i8, ptr %i.o, i64 %i.ao
  %scevgep125 = getelementptr i8, ptr %i.ap, i64 12 ; 3 uses
  %i.aq = shl i64 %i.b, 3                         ; 3 uses
  %i.ar = getelementptr i8, ptr %.sink.i120, i64 %i.aq
  %scevgep126 = getelementptr i8, ptr %i.ar, i64 -4 ; 3 uses
  %scevgep127 = getelementptr i8, ptr %.sink.i120, i64 %i.aq ; 9 uses
  %i.as = getelementptr i8, ptr %.sink.i120, i64 %.idx
  %scevgep128 = getelementptr i8, ptr %i.as, i64 -4 ; 5 uses
  %scevgep129 = getelementptr i8, ptr %.sink.i120, i64 %.idx ; 8 uses
  %i.at = mul i64 %i.b, 24                        ; 2 uses
  %i.au = getelementptr i8, ptr %.sink.i120, i64 %i.at
  %scevgep130 = getelementptr i8, ptr %i.au, i64 -4 ; 4 uses
  %scevgep131 = getelementptr i8, ptr %.sink.i120, i64 4 ; 4 uses
  %i.av = getelementptr i8, ptr %.sink.i120, i64 %i.aq
  %scevgep132 = getelementptr i8, ptr %i.av, i64 4 ; 4 uses
  %i.aw = getelementptr i8, ptr %.sink.i120, i64 %.idx
  %scevgep133 = getelementptr i8, ptr %i.aw, i64 4 ; 5 uses
  %scevgep134 = getelementptr i8, ptr %.sink.i120, i64 %i.at ; 5 uses
  %bound0 = icmp ult ptr %i.o, %scevgep126
  %bound1 = icmp ult ptr %.sink.i120, %scevgep125
  %found.conflict = and i1 %bound0, %bound1
  %bound0135 = icmp ult ptr %i.o, %scevgep128
  %bound1136 = icmp ult ptr %scevgep127, %scevgep125
  %found.conflict137 = and i1 %bound0135, %bound1136
  %i.ax = insertelement <4 x ptr> poison, ptr %i.o, i64 0
  %i.ay = shufflevector <4 x ptr> %i.ax, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.az = insertelement <4 x ptr> poison, ptr %scevgep130, i64 0
  %i.ba = insertelement <4 x ptr> %i.az, ptr %scevgep127, i64 1
  %i.bb = insertelement <4 x ptr> %i.ba, ptr %scevgep129, i64 2
  %i.bc = insertelement <4 x ptr> %i.bb, ptr %scevgep134, i64 3 ; 2 uses
  %i.bd = icmp ult <4 x ptr> %i.ay, %i.bc
  %i.be = insertelement <4 x ptr> poison, ptr %scevgep129, i64 0
  %i.bf = insertelement <4 x ptr> %i.be, ptr %scevgep131, i64 1
  %i.bg = insertelement <4 x ptr> %i.bf, ptr %scevgep132, i64 2
  %i.bh = insertelement <4 x ptr> %i.bg, ptr %scevgep133, i64 3 ; 2 uses
  %i.bi = insertelement <4 x ptr> poison, ptr %scevgep125, i64 0
  %i.bj = shufflevector <4 x ptr> %i.bi, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bk = icmp ult <4 x ptr> %i.bh, %i.bj
  %i.bl = and <4 x i1> %i.bd, %i.bk
  %bound0154 = icmp ult ptr %.sink.i120, %scevgep128
  %bound1155 = icmp ult ptr %scevgep127, %scevgep126
  %found.conflict156 = and i1 %bound0154, %bound1155
  %i.bm = insertelement <4 x ptr> poison, ptr %.sink.i120, i64 0
  %i.bn = shufflevector <4 x ptr> %i.bm, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bo = icmp ult <4 x ptr> %i.bn, %i.bc
  %i.bp = insertelement <4 x ptr> poison, ptr %scevgep126, i64 0
  %i.bq = shufflevector <4 x ptr> %i.bp, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.br = icmp ult <4 x ptr> %i.bh, %i.bq
  %i.bs = and <4 x i1> %i.bo, %i.br
  %bound0174 = icmp ult ptr %scevgep127, %scevgep130
  %bound1175 = icmp ult ptr %scevgep129, %scevgep128
  %found.conflict176 = and i1 %bound0174, %bound1175
  %bound0179 = icmp ult ptr %scevgep127, %scevgep129
  %bound1180 = icmp ult ptr %scevgep132, %scevgep128
  %found.conflict181 = and i1 %bound0179, %bound1180
  %bound0183 = icmp ult ptr %scevgep127, %scevgep134
  %bound1184 = icmp ult ptr %scevgep133, %scevgep128
  %found.conflict185 = and i1 %bound0183, %bound1184
  %bound0187 = icmp ult ptr %scevgep129, %scevgep127
  %bound1188 = icmp ult ptr %scevgep131, %scevgep130
  %found.conflict189 = and i1 %bound0187, %bound1188
  %bound0192 = icmp ult ptr %scevgep129, %scevgep134
  %bound1193 = icmp ult ptr %scevgep133, %scevgep130
  %found.conflict194 = and i1 %bound0192, %bound1193
  %bound0196 = icmp ult ptr %scevgep131, %scevgep129
  %bound1197 = icmp ult ptr %scevgep132, %scevgep127
  %found.conflict198 = and i1 %bound0196, %bound1197
  %bound0200 = icmp ult ptr %scevgep131, %scevgep134
  %bound1201 = icmp ult ptr %scevgep133, %scevgep127
  %found.conflict202 = and i1 %bound0200, %bound1201
  %bound0204 = icmp ult ptr %scevgep132, %scevgep134
  %bound1205 = icmp ult ptr %scevgep133, %scevgep129
  %found.conflict206 = and i1 %bound0204, %bound1205
  %rdx.op = or <4 x i1> %i.bl, %i.bs
  %i.bt = bitcast <4 x i1> %rdx.op to i4
  %i.bu = icmp ne i4 %i.bt, 0
  %op.rdx = or i1 %i.bu, %found.conflict
  %op.rdx239 = or i1 %found.conflict137, %found.conflict156
  %op.rdx240 = or i1 %found.conflict176, %found.conflict181
  %op.rdx241 = or i1 %found.conflict185, %found.conflict189
  %op.rdx242 = or i1 %found.conflict194, %found.conflict198
  %op.rdx243 = or i1 %found.conflict202, %found.conflict206
  %op.rdx244 = or i1 %op.rdx, %op.rdx239
  %op.rdx245 = or i1 %op.rdx240, %op.rdx241
  %op.rdx246 = or i1 %op.rdx242, %op.rdx243
  %op.rdx247 = or i1 %op.rdx244, %op.rdx245
  %op.rdx248 = or i1 %op.rdx247, %op.rdx246
  br i1 %op.rdx248, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit66.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.b, -2                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bv = shl i64 %index, 3
  %i.bw = getelementptr i8, ptr %.sink.i120, i64 %i.bv ; 3 uses
  %i.bx = getelementptr [4 x i8], ptr %i.o, i64 %index ; 5 uses
  %wide.load = load <2 x i32>, ptr %i.bx, align 4, !tbaa !25, !alias.scope !426, !noalias !429
  %i.by = getelementptr i8, ptr %i.bx, i64 4
  %wide.load208 = load <2 x i32>, ptr %i.by, align 4, !tbaa !25, !alias.scope !426, !noalias !429
  %i.bz = getelementptr [4 x i8], ptr %i.bw, i64 %i.c
  %i.ca = getelementptr i8, ptr %i.bx, i64 8
  %wide.load209 = load <2 x i32>, ptr %i.ca, align 4, !tbaa !25, !alias.scope !426, !noalias !429 ; 2 uses
  %i.cb = getelementptr i8, ptr %i.bw, i64 %.idx
  %interleaved.vec = shufflevector <2 x i32> %wide.load, <2 x i32> %wide.load209, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec, ptr %i.bw, align 4, !tbaa !25, !noalias !62
  %i.cc = getelementptr i8, ptr %i.bx, i64 12
  %wide.load210 = load <2 x i32>, ptr %i.cc, align 4, !tbaa !25, !alias.scope !426, !noalias !429
  %interleaved.vec211 = shufflevector <2 x i32> %wide.load208, <2 x i32> %wide.load210, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec211, ptr %i.bz, align 4, !tbaa !25
  %wide.load212 = load <2 x i32>, ptr %i.bx, align 4, !tbaa !25, !alias.scope !426, !noalias !429
  %interleaved.vec213 = shufflevector <2 x i32> %wide.load209, <2 x i32> %wide.load212, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec213, ptr %i.cb, align 4, !tbaa !25
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.cd = icmp eq i64 %index.next, %n.vec
  br i1 %i.cd, label %middle.block, label %vector.body, !llvm.loop !436

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit66.preheader

_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit66.preheader: ; preds = %vector.memcheck, %vector.scevcheck, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit66.lr.ph, %middle.block
  %.041108.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit66.lr.ph ], [ %n.vec, %middle.block ]
  br label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit66

_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit66: ; preds = %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit66.preheader, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit66
  %.041108 = phi i64 [ %i.cu, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit66 ], [ %.041108.ph, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit66.preheader ] ; 3 uses
  %.idx115 = shl i64 %.041108, 3
end_hunk_6
begin_hunk_7_@_ZN3igl10doubleareaIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEENS2_IjLin1ELin1ELi1ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE:bb.a
  %i.dh = getelementptr inbounds [8 x i8], ptr %.pre.i.i, i64 %i.dg
  %i.di = getelementptr inbounds [8 x i8], ptr %i.ca, i64 %i.dg
  %i.dj = load double, ptr %i.di, align 8, !tbaa !19
  %.scalar.i.i.i.i.i.i.i.i.i.i.i.i.2 = call noundef double @llvm.sqrt.f64(double %i.dj)
  store double %.scalar.i.i.i.i.i.i.i.i.i.i.i.i.2, ptr %i.dh, align 8, !tbaa !19
  %i.dk = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 3   ; 2 uses
  %i.dl = getelementptr inbounds [8 x i8], ptr %.pre.i.i, i64 %i.dk
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.ca, i64 %i.dk
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !19
  %.scalar.i.i.i.i.i.i.i.i.i.i.i.i.3 = call noundef double @llvm.sqrt.f64(double %i.dn)
  store double %.scalar.i.i.i.i.i.i.i.i.i.i.i.i.3, ptr %i.dl, align 8, !tbaa !19
  %i.do = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 4   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.do, %.pr.i.i.i.i.i.i.i49
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.3, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal14scalar_sqrt_opIdEEKNS_12ArrayWrapperINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEEE4evalEv.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !459

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i.i.i
  %.011.i.i.i.i.i.i.i.i = phi i64 [ %i.dt, %.lr.ph.i.i.i.i.i.i.i.i ], [ 0, %bb.c ] ; 3 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %.011.i.i.i.i.i.i.i.i
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %.011.i.i.i.i.i.i.i.i
  %i.dr = load <2 x double>, ptr %i.dq, align 16, !tbaa !37
  %i.ds = call noundef <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.dr)
  store <2 x double> %i.ds, ptr %i.dp, align 16, !tbaa !37
  %i.dt = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.du = icmp slt i64 %i.dt, %i.cf
  br i1 %i.du, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, !llvm.loop !38

bb.d:                                             ; preds = %thread-pre-split.i.i.i.i.i.i.i
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal14scalar_sqrt_opIdEEKNS_12ArrayWrapperINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEEE4evalEv.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i.i.i, %._crit_edge
  %i.dw = load i64, ptr %i.cd, align 8, !tbaa !15
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.dw, i64 noundef 1)
          to label %.noexc59 unwind label %bb.f

.noexc59:                                         ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal14scalar_sqrt_opIdEEKNS_12ArrayWrapperINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEEE4evalEv.exit
  %i.dx = load ptr, ptr %3, align 8, !tbaa !18    ; 8 uses
  %i.dy = ptrtoaddr ptr %i.dx to i64
  %i.dz = load i64, ptr %i.cd, align 8, !tbaa !15 ; 3 uses
  %i.ea = load i64, ptr %i.f, align 8, !tbaa !15
  %.not.i.i.i.i.i.i.i.i50 = icmp eq i64 %i.ea, %i.dz
  br i1 %.not.i.i.i.i.i.i.i.i50, label %bb.e, label %thread-pre-split.i.i.i.i.i.i.i51

thread-pre-split.i.i.i.i.i.i.i51:                 ; preds = %.noexc59
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.dz, i64 noundef 1)
          to label %.noexc60 unwind label %bb.f

.noexc60:                                         ; preds = %thread-pre-split.i.i.i.i.i.i.i51
  %.pr.i.i.i.i.i.i.i52 = load i64, ptr %i.f, align 8, !tbaa !15
  br label %bb.e

bb.e:                                             ; preds = %.noexc60, %.noexc59
  %i.eb = phi i64 [ %.pr.i.i.i.i.i.i.i52, %.noexc60 ], [ %i.dz, %.noexc59 ] ; 7 uses
  %i.ec = load ptr, ptr %2, align 8, !tbaa !18    ; 8 uses
  %i.ed = ptrtoaddr ptr %i.ec to i64
  %i.ee = sdiv i64 %i.eb, 2                       ; 2 uses
  %i.ef = shl nsw i64 %i.ee, 1                    ; 5 uses
  %i.eg = icmp sgt i64 %i.eb, 1
  br i1 %i.eg, label %.lr.ph.i.i.i.i.i.i.i.i57, label %._crit_edge.i.i.i.i.i.i.i.i53

._crit_edge.i.i.i.i.i.i.i.i53:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i57, %bb.e
  %i.eh = icmp slt i64 %i.ef, %i.eb
  br i1 %i.eh, label %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader, label %.loopexit

.lr.ph.i.i.i.i.i.i.i.i.i54.preheader:             ; preds = %._crit_edge.i.i.i.i.i.i.i.i53
  %i.ei = shl nsw i64 %i.ee, 1
  %i.ej = sub i64 %i.eb, %i.ei                    ; 3 uses
  %min.iters.check88 = icmp ult i64 %i.ej, 8
  %i.ek = sub i64 %i.dy, %i.ed
  %diff.check86 = icmp ugt i64 %i.ek, -32
  %or.cond99 = select i1 %min.iters.check88, i1 true, i1 %diff.check86
  br i1 %or.cond99, label %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader100, label %vector.ph89

vector.ph89:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader
  %n.vec90 = and i64 %i.ej, -4                    ; 3 uses
  %i.el = add i64 %i.ef, %n.vec90
  br label %vector.body91

vector.body91:                                    ; preds = %vector.body91, %vector.ph89
  %index92 = phi i64 [ 0, %vector.ph89 ], [ %index.next95, %vector.body91 ] ; 2 uses
  %i.em = add i64 %i.ef, %index92                 ; 2 uses
  %i.en = getelementptr inbounds [8 x i8], ptr %i.ec, i64 %i.em ; 2 uses
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %i.em ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %wide.load93 = load <2 x double>, ptr %i.eo, align 8, !tbaa !19
  %wide.load94 = load <2 x double>, ptr %i.ep, align 8, !tbaa !19
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  store <2 x double> %wide.load93, ptr %i.en, align 8, !tbaa !19
  store <2 x double> %wide.load94, ptr %i.eq, align 8, !tbaa !19
  %index.next95 = add nuw i64 %index92, 4         ; 2 uses
  %i.er = icmp eq i64 %index.next95, %n.vec90
  br i1 %i.er, label %middle.block96, label %vector.body91, !llvm.loop !460

middle.block96:                                   ; preds = %vector.body91
  %cmp.n97 = icmp eq i64 %i.ej, %n.vec90
  br i1 %cmp.n97, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader100

.lr.ph.i.i.i.i.i.i.i.i.i54.preheader100:          ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader, %middle.block96
  %.05.i.i.i.i.i.i.i.i.i55.ph = phi i64 [ %i.ef, %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader ], [ %i.el, %middle.block96 ] ; 4 uses
  %i.es = sub i64 %i.eb, %.05.i.i.i.i.i.i.i.i.i55.ph
  %xtraiter102 = and i64 %i.es, 3                 ; 2 uses
  %lcmp.mod103.not = icmp eq i64 %xtraiter102, 0
  br i1 %lcmp.mod103.not, label %.lr.ph.i.i.i.i.i.i.i.i.i54.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i54.prol

.lr.ph.i.i.i.i.i.i.i.i.i54.prol:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader100, %.lr.ph.i.i.i.i.i.i.i.i.i54.prol
  %.05.i.i.i.i.i.i.i.i.i55.prol = phi i64 [ %i.ew, %.lr.ph.i.i.i.i.i.i.i.i.i54.prol ], [ %.05.i.i.i.i.i.i.i.i.i55.ph, %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader100 ] ; 3 uses
  %prol.iter104 = phi i64 [ %prol.iter104.next, %.lr.ph.i.i.i.i.i.i.i.i.i54.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader100 ]
  %i.et = getelementptr inbounds [8 x i8], ptr %i.ec, i64 %.05.i.i.i.i.i.i.i.i.i55.prol
  %i.eu = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %.05.i.i.i.i.i.i.i.i.i55.prol
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !19
  store double %i.ev, ptr %i.et, align 8, !tbaa !19
  %i.ew = add nsw i64 %.05.i.i.i.i.i.i.i.i.i55.prol, 1 ; 2 uses
  %prol.iter104.next = add i64 %prol.iter104, 1   ; 2 uses
  %prol.iter104.cmp.not = icmp eq i64 %prol.iter104.next, %xtraiter102
  br i1 %prol.iter104.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i54.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i54.prol, !llvm.loop !461

.lr.ph.i.i.i.i.i.i.i.i.i54.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i54.prol, %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader100
  %.05.i.i.i.i.i.i.i.i.i55.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i55.ph, %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader100 ], [ %i.ew, %.lr.ph.i.i.i.i.i.i.i.i.i54.prol ]
  %i.ex = sub i64 %.05.i.i.i.i.i.i.i.i.i55.ph, %i.eb
  %i.ey = icmp ugt i64 %i.ex, -4
  br i1 %i.ey, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i54

.lr.ph.i.i.i.i.i.i.i.i.i54:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i54.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i54
  %.05.i.i.i.i.i.i.i.i.i55 = phi i64 [ %i.fo, %.lr.ph.i.i.i.i.i.i.i.i.i54 ], [ %.05.i.i.i.i.i.i.i.i.i55.unr, %.lr.ph.i.i.i.i.i.i.i.i.i54.prol.loopexit ] ; 6 uses
  %i.ez = getelementptr inbounds [8 x i8], ptr %i.ec, i64 %.05.i.i.i.i.i.i.i.i.i55
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %.05.i.i.i.i.i.i.i.i.i55
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !19
  store double %i.fb, ptr %i.ez, align 8, !tbaa !19
  %i.fc = add nsw i64 %.05.i.i.i.i.i.i.i.i.i55, 1 ; 2 uses
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.ec, i64 %i.fc
  %i.fe = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %i.fc
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !19
  store double %i.ff, ptr %i.fd, align 8, !tbaa !19
  %i.fg = add nsw i64 %.05.i.i.i.i.i.i.i.i.i55, 2 ; 2 uses
  %i.fh = getelementptr inbounds [8 x i8], ptr %i.ec, i64 %i.fg
  %i.fi = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %i.fg
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !19
  store double %i.fj, ptr %i.fh, align 8, !tbaa !19
  %i.fk = add nsw i64 %.05.i.i.i.i.i.i.i.i.i55, 3 ; 2 uses
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.ec, i64 %i.fk
  %i.fm = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %i.fk
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !19
  store double %i.fn, ptr %i.fl, align 8, !tbaa !19
  %i.fo = add nsw i64 %.05.i.i.i.i.i.i.i.i.i55, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i56.3 = icmp eq i64 %i.fo, %i.eb
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i56.3, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i54, !llvm.loop !462

.lr.ph.i.i.i.i.i.i.i.i57:                         ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i.i.i57
  %.011.i.i.i.i.i.i.i.i58 = phi i64 [ %i.fs, %.lr.ph.i.i.i.i.i.i.i.i57 ], [ 0, %bb.e ] ; 3 uses
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %.011.i.i.i.i.i.i.i.i58
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %.011.i.i.i.i.i.i.i.i58
  %i.fr = load <2 x double>, ptr %i.fq, align 16, !tbaa !37
  store <2 x double> %i.fr, ptr %i.fp, align 16, !tbaa !37
  %i.fs = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i58, 2 ; 2 uses
  %i.ft = icmp slt i64 %i.fs, %i.ef
  br i1 %i.ft, label %.lr.ph.i.i.i.i.i.i.i.i57, label %._crit_edge.i.i.i.i.i.i.i.i53, !llvm.loop !42

bb.f:                                             ; preds = %thread-pre-split.i.i.i.i.i.i.i51, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal14scalar_sqrt_opIdEEKNS_12ArrayWrapperINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEEE4evalEv.exit
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %bb.f
  %.pn = phi { ptr, i32 } [ %i.fu, %bb.f ], [ %i.dv, %bb.d ]
  %i.fv = load ptr, ptr %3, align 8, !tbaa !18
  call void @free(ptr noundef %i.fv) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %.pn

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i54.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i54, %middle.block96, %._crit_edge.i.i.i.i.i.i.i.i53
  %i.fw = load ptr, ptr %3, align 8, !tbaa !18
  call void @free(ptr noundef %i.fw) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.g

bb.g:                                             ; preds = %.loopexit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl15doublearea_quadIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEENS2_IjLin1ELin1ELi1ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Matrix.97", align 8  ; 10 uses
  %4 = alloca %"class.Eigen::Matrix.21", align 8  ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !414  ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.c = shl nsw i64 %i.b, 1                      ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.d = icmp sgt i64 %i.b, 1537228672809129301
  br i1 %i.d, label %.noexc.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !43
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i: ; preds = %bb.a
  %5 = mul nsw i64 %i.b, 6
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread, label %bb.b

_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i
  store i64 %i.c, ptr %i.f, align 8, !tbaa !14
  store i64 3, ptr %i.g, align 8, !tbaa !9
  br label %._crit_edge

bb.b:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i
  %i.h = icmp sgt i64 %i.b, 0
  br i1 %i.h, label %bb.c, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit66.lr.ph

bb.c:                                             ; preds = %bb.b
  %i.i = icmp samesign ugt i64 %5, 4611686018427387903
  br i1 %i.i, label %.noexc, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i

.noexc:                                           ; preds = %bb.c
  %i.j = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.j, align 8, !tbaa !43
  tail call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i: ; preds = %bb.c
  %i.k = mul i64 %i.b, 24
  %i.l = tail call noalias ptr @malloc(i64 noundef %i.k) #25 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.noexc67, label %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread117

_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread117: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i
  store ptr %i.l, ptr %3, align 8, !tbaa !21
  br label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit66.lr.ph

.noexc67:                                         ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i
  %i.n = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.n, align 8, !tbaa !43
  tail call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
  unreachable

_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit66.lr.ph: ; preds = %bb.b, %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread117
  %.sink.i120 = phi ptr [ %i.l, %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread117 ], [ null, %bb.b ] ; 21 uses
  store i64 %i.c, ptr %i.f, align 8, !tbaa !14
  store i64 3, ptr %i.g, align 8, !tbaa !9
  %i.o = load ptr, ptr %1, align 8, !tbaa !415    ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !412  ; 2 uses
  %.idx = shl i64 %i.b, 4                         ; 8 uses
  %min.iters.check = icmp ult i64 %i.b, 86
  br i1 %min.iters.check, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit66.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit66.lr.ph
  %ident.check = icmp ne i64 %i.q, 1
  %i.r = add i64 %i.b, -1                         ; 2 uses
  %mul.result = shl i64 %i.r, 3                   ; 6 uses
  %mul.overflow = icmp ugt i64 %i.r, 2305843009213693951
  %i.s = getelementptr i8, ptr %.sink.i120, i64 %mul.result
  %i.t = icmp ult ptr %i.s, %.sink.i120
  %i.u = shl i64 %i.b, 3                          ; 2 uses
  %scevgep = getelementptr i8, ptr %.sink.i120, i64 %i.u ; 2 uses
  %i.v = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.w = icmp ult ptr %i.v, %scevgep
  %i.x = or i1 %i.w, %mul.overflow
  %scevgep121 = getelementptr i8, ptr %.sink.i120, i64 %.idx ; 2 uses
  %i.y = getelementptr i8, ptr %scevgep121, i64 %mul.result
  %i.z = icmp ult ptr %i.y, %scevgep121
  %scevgep122 = getelementptr i8, ptr %.sink.i120, i64 4 ; 2 uses
  %i.aa = getelementptr i8, ptr %scevgep122, i64 %mul.result
  %i.ab = icmp ult ptr %i.aa, %scevgep122
  %i.ac = getelementptr i8, ptr %.sink.i120, i64 %i.u
  %scevgep123 = getelementptr i8, ptr %i.ac, i64 4 ; 2 uses
  %i.ad = getelementptr i8, ptr %scevgep123, i64 %mul.result
  %i.ae = icmp ult ptr %i.ad, %scevgep123
  %i.af = getelementptr i8, ptr %.sink.i120, i64 %.idx
  %scevgep124 = getelementptr i8, ptr %i.af, i64 4 ; 2 uses
  %i.ag = getelementptr i8, ptr %scevgep124, i64 %mul.result
  %i.ah = icmp ult ptr %i.ag, %scevgep124
  %i.ai = or i1 %i.t, %ident.check
  %i.aj = or i1 %i.ai, %i.x
  %i.ak = or i1 %i.z, %i.aj
  %i.al = or i1 %i.ab, %i.ak
  %i.am = or i1 %i.ae, %i.al
  %i.an = or i1 %i.ah, %i.am
  br i1 %i.an, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit66.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.ao = shl nuw i64 %i.b, 2
  %i.ap = getelementptr i8, ptr %i.o, i64 %i.ao
  %scevgep125 = getelementptr i8, ptr %i.ap, i64 12 ; 3 uses
  %i.aq = shl i64 %i.b, 3                         ; 3 uses
  %i.ar = getelementptr i8, ptr %.sink.i120, i64 %i.aq
  %scevgep126 = getelementptr i8, ptr %i.ar, i64 -4 ; 3 uses
  %scevgep127 = getelementptr i8, ptr %.sink.i120, i64 %i.aq ; 9 uses
  %i.as = getelementptr i8, ptr %.sink.i120, i64 %.idx
  %scevgep128 = getelementptr i8, ptr %i.as, i64 -4 ; 5 uses
  %scevgep129 = getelementptr i8, ptr %.sink.i120, i64 %.idx ; 8 uses
  %i.at = mul i64 %i.b, 24                        ; 2 uses
  %i.au = getelementptr i8, ptr %.sink.i120, i64 %i.at
  %scevgep130 = getelementptr i8, ptr %i.au, i64 -4 ; 4 uses
  %scevgep131 = getelementptr i8, ptr %.sink.i120, i64 4 ; 4 uses
  %i.av = getelementptr i8, ptr %.sink.i120, i64 %i.aq
  %scevgep132 = getelementptr i8, ptr %i.av, i64 4 ; 4 uses
  %i.aw = getelementptr i8, ptr %.sink.i120, i64 %.idx
  %scevgep133 = getelementptr i8, ptr %i.aw, i64 4 ; 5 uses
  %scevgep134 = getelementptr i8, ptr %.sink.i120, i64 %i.at ; 5 uses
  %bound0 = icmp ult ptr %i.o, %scevgep126
  %bound1 = icmp ult ptr %.sink.i120, %scevgep125
  %found.conflict = and i1 %bound0, %bound1
  %bound0135 = icmp ult ptr %i.o, %scevgep128
  %bound1136 = icmp ult ptr %scevgep127, %scevgep125
  %found.conflict137 = and i1 %bound0135, %bound1136
  %i.ax = insertelement <4 x ptr> poison, ptr %i.o, i64 0
  %i.ay = shufflevector <4 x ptr> %i.ax, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.az = insertelement <4 x ptr> poison, ptr %scevgep130, i64 0
  %i.ba = insertelement <4 x ptr> %i.az, ptr %scevgep127, i64 1
  %i.bb = insertelement <4 x ptr> %i.ba, ptr %scevgep129, i64 2
  %i.bc = insertelement <4 x ptr> %i.bb, ptr %scevgep134, i64 3 ; 2 uses
  %i.bd = icmp ult <4 x ptr> %i.ay, %i.bc
  %i.be = insertelement <4 x ptr> poison, ptr %scevgep129, i64 0
  %i.bf = insertelement <4 x ptr> %i.be, ptr %scevgep131, i64 1
  %i.bg = insertelement <4 x ptr> %i.bf, ptr %scevgep132, i64 2
  %i.bh = insertelement <4 x ptr> %i.bg, ptr %scevgep133, i64 3 ; 2 uses
  %i.bi = insertelement <4 x ptr> poison, ptr %scevgep125, i64 0
  %i.bj = shufflevector <4 x ptr> %i.bi, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bk = icmp ult <4 x ptr> %i.bh, %i.bj
  %i.bl = and <4 x i1> %i.bd, %i.bk
  %bound0154 = icmp ult ptr %.sink.i120, %scevgep128
  %bound1155 = icmp ult ptr %scevgep127, %scevgep126
  %found.conflict156 = and i1 %bound0154, %bound1155
  %i.bm = insertelement <4 x ptr> poison, ptr %.sink.i120, i64 0
  %i.bn = shufflevector <4 x ptr> %i.bm, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bo = icmp ult <4 x ptr> %i.bn, %i.bc
  %i.bp = insertelement <4 x ptr> poison, ptr %scevgep126, i64 0
  %i.bq = shufflevector <4 x ptr> %i.bp, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.br = icmp ult <4 x ptr> %i.bh, %i.bq
  %i.bs = and <4 x i1> %i.bo, %i.br
  %bound0174 = icmp ult ptr %scevgep127, %scevgep130
  %bound1175 = icmp ult ptr %scevgep129, %scevgep128
  %found.conflict176 = and i1 %bound0174, %bound1175
  %bound0179 = icmp ult ptr %scevgep127, %scevgep129
  %bound1180 = icmp ult ptr %scevgep132, %scevgep128
  %found.conflict181 = and i1 %bound0179, %bound1180
  %bound0183 = icmp ult ptr %scevgep127, %scevgep134
  %bound1184 = icmp ult ptr %scevgep133, %scevgep128
  %found.conflict185 = and i1 %bound0183, %bound1184
  %bound0187 = icmp ult ptr %scevgep129, %scevgep127
  %bound1188 = icmp ult ptr %scevgep131, %scevgep130
  %found.conflict189 = and i1 %bound0187, %bound1188
  %bound0192 = icmp ult ptr %scevgep129, %scevgep134
  %bound1193 = icmp ult ptr %scevgep133, %scevgep130
  %found.conflict194 = and i1 %bound0192, %bound1193
  %bound0196 = icmp ult ptr %scevgep131, %scevgep129
  %bound1197 = icmp ult ptr %scevgep132, %scevgep127
  %found.conflict198 = and i1 %bound0196, %bound1197
  %bound0200 = icmp ult ptr %scevgep131, %scevgep134
  %bound1201 = icmp ult ptr %scevgep133, %scevgep127
  %found.conflict202 = and i1 %bound0200, %bound1201
  %bound0204 = icmp ult ptr %scevgep132, %scevgep134
  %bound1205 = icmp ult ptr %scevgep133, %scevgep129
  %found.conflict206 = and i1 %bound0204, %bound1205
  %rdx.op = or <4 x i1> %i.bl, %i.bs
  %i.bt = bitcast <4 x i1> %rdx.op to i4
  %i.bu = icmp ne i4 %i.bt, 0
  %op.rdx = or i1 %i.bu, %found.conflict
  %op.rdx239 = or i1 %found.conflict137, %found.conflict156
  %op.rdx240 = or i1 %found.conflict176, %found.conflict181
  %op.rdx241 = or i1 %found.conflict185, %found.conflict189
  %op.rdx242 = or i1 %found.conflict194, %found.conflict198
  %op.rdx243 = or i1 %found.conflict202, %found.conflict206
  %op.rdx244 = or i1 %op.rdx, %op.rdx239
  %op.rdx245 = or i1 %op.rdx240, %op.rdx241
  %op.rdx246 = or i1 %op.rdx242, %op.rdx243
  %op.rdx247 = or i1 %op.rdx244, %op.rdx245
  %op.rdx248 = or i1 %op.rdx247, %op.rdx246
  br i1 %op.rdx248, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit66.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.b, -2                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bv = shl i64 %index, 3
  %i.bw = getelementptr i8, ptr %.sink.i120, i64 %i.bv ; 3 uses
  %i.bx = getelementptr [4 x i8], ptr %i.o, i64 %index ; 5 uses
  %wide.load = load <2 x i32>, ptr %i.bx, align 4, !tbaa !25, !alias.scope !463, !noalias !466
  %i.by = getelementptr i8, ptr %i.bx, i64 4
  %wide.load208 = load <2 x i32>, ptr %i.by, align 4, !tbaa !25, !alias.scope !463, !noalias !466
  %i.bz = getelementptr [4 x i8], ptr %i.bw, i64 %i.c
  %i.ca = getelementptr i8, ptr %i.bx, i64 8
  %wide.load209 = load <2 x i32>, ptr %i.ca, align 4, !tbaa !25, !alias.scope !463, !noalias !466 ; 2 uses
  %i.cb = getelementptr i8, ptr %i.bw, i64 %.idx
  %interleaved.vec = shufflevector <2 x i32> %wide.load, <2 x i32> %wide.load209, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec, ptr %i.bw, align 4, !tbaa !25, !noalias !62
  %i.cc = getelementptr i8, ptr %i.bx, i64 12
  %wide.load210 = load <2 x i32>, ptr %i.cc, align 4, !tbaa !25, !alias.scope !463, !noalias !466
  %interleaved.vec211 = shufflevector <2 x i32> %wide.load208, <2 x i32> %wide.load210, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec211, ptr %i.bz, align 4, !tbaa !25
  %wide.load212 = load <2 x i32>, ptr %i.bx, align 4, !tbaa !25, !alias.scope !463, !noalias !466
  %interleaved.vec213 = shufflevector <2 x i32> %wide.load209, <2 x i32> %wide.load212, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec213, ptr %i.cb, align 4, !tbaa !25
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.cd = icmp eq i64 %index.next, %n.vec
  br i1 %i.cd, label %middle.block, label %vector.body, !llvm.loop !473

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit66.preheader

_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit66.preheader: ; preds = %vector.memcheck, %vector.scevcheck, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit66.lr.ph, %middle.block
  %.041108.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit66.lr.ph ], [ %n.vec, %middle.block ]
  br label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit66

_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit66: ; preds = %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit66.preheader, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit66
  %.041108 = phi i64 [ %i.cu, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit66 ], [ %.041108.ph, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit66.preheader ] ; 3 uses
  %.idx115 = shl i64 %.041108, 3
end_hunk_7
begin_hunk_8_@_ZN3igl10doubleareaIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE:bb.a
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  store <2 x double> %wide.load97, ptr %i.et, align 8, !tbaa !19
  store <2 x double> %wide.load98, ptr %i.ew, align 8, !tbaa !19
  %index.next99 = add nuw i64 %index96, 4         ; 2 uses
  %i.ex = icmp eq i64 %index.next99, %n.vec94
  br i1 %i.ex, label %middle.block100, label %vector.body95, !llvm.loop !495

middle.block100:                                  ; preds = %vector.body95
  %cmp.n101 = icmp eq i64 %i.ep, %n.vec94
  br i1 %cmp.n101, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEERS2_RKNS_9EigenBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader104

.lr.ph.i.i.i.i.i.i.i.i.i54.preheader104:          ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader, %middle.block100
  %.05.i.i.i.i.i.i.i.i.i55.ph = phi i64 [ %i.el, %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader ], [ %i.er, %middle.block100 ] ; 4 uses
  %i.ey = sub i64 %i.eh, %.05.i.i.i.i.i.i.i.i.i55.ph
  %xtraiter106 = and i64 %i.ey, 3                 ; 2 uses
  %lcmp.mod107.not = icmp eq i64 %xtraiter106, 0
  br i1 %lcmp.mod107.not, label %.lr.ph.i.i.i.i.i.i.i.i.i54.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i54.prol

.lr.ph.i.i.i.i.i.i.i.i.i54.prol:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader104, %.lr.ph.i.i.i.i.i.i.i.i.i54.prol
  %.05.i.i.i.i.i.i.i.i.i55.prol = phi i64 [ %i.fc, %.lr.ph.i.i.i.i.i.i.i.i.i54.prol ], [ %.05.i.i.i.i.i.i.i.i.i55.ph, %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader104 ] ; 3 uses
  %prol.iter108 = phi i64 [ %prol.iter108.next, %.lr.ph.i.i.i.i.i.i.i.i.i54.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader104 ]
  %i.ez = getelementptr inbounds [8 x i8], ptr %i.ei, i64 %.05.i.i.i.i.i.i.i.i.i55.prol
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.ed, i64 %.05.i.i.i.i.i.i.i.i.i55.prol
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !19
  store double %i.fb, ptr %i.ez, align 8, !tbaa !19
  %i.fc = add nsw i64 %.05.i.i.i.i.i.i.i.i.i55.prol, 1 ; 2 uses
  %prol.iter108.next = add i64 %prol.iter108, 1   ; 2 uses
  %prol.iter108.cmp.not = icmp eq i64 %prol.iter108.next, %xtraiter106
  br i1 %prol.iter108.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i54.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i54.prol, !llvm.loop !496

.lr.ph.i.i.i.i.i.i.i.i.i54.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i54.prol, %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader104
  %.05.i.i.i.i.i.i.i.i.i55.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i55.ph, %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader104 ], [ %i.fc, %.lr.ph.i.i.i.i.i.i.i.i.i54.prol ]
  %i.fd = sub i64 %.05.i.i.i.i.i.i.i.i.i55.ph, %i.eh
  %i.fe = icmp ugt i64 %i.fd, -4
  br i1 %i.fe, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEERS2_RKNS_9EigenBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i54

.lr.ph.i.i.i.i.i.i.i.i.i54:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i54.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i54
  %.05.i.i.i.i.i.i.i.i.i55 = phi i64 [ %i.fu, %.lr.ph.i.i.i.i.i.i.i.i.i54 ], [ %.05.i.i.i.i.i.i.i.i.i55.unr, %.lr.ph.i.i.i.i.i.i.i.i.i54.prol.loopexit ] ; 6 uses
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.ei, i64 %.05.i.i.i.i.i.i.i.i.i55
  %i.fg = getelementptr inbounds [8 x i8], ptr %i.ed, i64 %.05.i.i.i.i.i.i.i.i.i55
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !19
  store double %i.fh, ptr %i.ff, align 8, !tbaa !19
  %i.fi = add nsw i64 %.05.i.i.i.i.i.i.i.i.i55, 1 ; 2 uses
  %i.fj = getelementptr inbounds [8 x i8], ptr %i.ei, i64 %i.fi
  %i.fk = getelementptr inbounds [8 x i8], ptr %i.ed, i64 %i.fi
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !19
  store double %i.fl, ptr %i.fj, align 8, !tbaa !19
  %i.fm = add nsw i64 %.05.i.i.i.i.i.i.i.i.i55, 2 ; 2 uses
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.ei, i64 %i.fm
  %i.fo = getelementptr inbounds [8 x i8], ptr %i.ed, i64 %i.fm
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !19
  store double %i.fp, ptr %i.fn, align 8, !tbaa !19
  %i.fq = add nsw i64 %.05.i.i.i.i.i.i.i.i.i55, 3 ; 2 uses
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.ei, i64 %i.fq
  %i.fs = getelementptr inbounds [8 x i8], ptr %i.ed, i64 %i.fq
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !19
  store double %i.ft, ptr %i.fr, align 8, !tbaa !19
  %i.fu = add nsw i64 %.05.i.i.i.i.i.i.i.i.i55, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i56.3 = icmp eq i64 %i.fu, %i.eh
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i56.3, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEERS2_RKNS_9EigenBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i54, !llvm.loop !497

.lr.ph.i.i.i.i.i.i.i.i57:                         ; preds = %bb.i, %.lr.ph.i.i.i.i.i.i.i.i57
  %.011.i.i.i.i.i.i.i.i58 = phi i64 [ %i.fy, %.lr.ph.i.i.i.i.i.i.i.i57 ], [ 0, %bb.i ] ; 3 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %.011.i.i.i.i.i.i.i.i58
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %.011.i.i.i.i.i.i.i.i58
  %i.fx = load <2 x double>, ptr %i.fw, align 16, !tbaa !37
  store <2 x double> %i.fx, ptr %i.fv, align 16, !tbaa !37
  %i.fy = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i58, 2 ; 2 uses
  %i.fz = icmp slt i64 %i.fy, %i.el
  br i1 %i.fz, label %.lr.ph.i.i.i.i.i.i.i.i57, label %._crit_edge.i.i.i.i.i.i.i.i53, !llvm.loop !42

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEERS2_RKNS_9EigenBaseIT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i54.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i54, %middle.block100, %._crit_edge.i.i.i.i.i.i.i.i53
  %i.ga = load ptr, ptr %4, align 8, !tbaa !18
  call void @free(ptr noundef %i.ga) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %.loopexit

bb.j:                                             ; preds = %thread-pre-split.i.i.i.i.i.i.i51, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal14scalar_sqrt_opIdEEKNS_12ArrayWrapperINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEEE4evalEv.exit
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.h, %bb.j
  %.pn = phi { ptr, i32 } [ %i.gb, %bb.j ], [ %i.eb, %bb.h ]
  %i.gc = load ptr, ptr %4, align 8, !tbaa !18
  call void @free(ptr noundef %i.gc) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.q

bb.k:                                             ; preds = %bb.c
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.h, i64 noundef 1)
          to label %.preheader71 unwind label %bb.l

.preheader71:                                     ; preds = %bb.k
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader71
  %i.gd = load ptr, ptr %1, align 8, !tbaa !21
  %i.ge = load ptr, ptr %0, align 8, !tbaa !368   ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !147 ; 3 uses
  %i.gh = load i64, ptr %i.g, align 8, !tbaa !14  ; 2 uses
  %.idx.i61 = shl i64 %i.gh, 3
  %i.gi = load ptr, ptr %2, align 8, !tbaa !18
  br label %bb.m

bb.l:                                             ; preds = %bb.o, %bb.n, %bb.k
  %i.gj = landingpad { ptr, i32 }
          cleanup
  %.pre = load ptr, ptr %3, align 8, !tbaa !22
  br label %bb.q

bb.m:                                             ; preds = %.lr.ph, %bb.m
  %.072 = phi i64 [ 0, %.lr.ph ], [ %i.ho, %bb.m ] ; 3 uses
  %sext = shl i64 %.072, 32
  %i.gk = ashr exact i64 %sext, 30
  %i.gl = getelementptr i8, ptr %i.gd, i64 %i.gk  ; 3 uses
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !25
  %i.gn = sext i32 %i.gm to i64
  %i.go = getelementptr [8 x i8], ptr %i.ge, i64 %i.gn ; 2 uses
  %i.gp = load double, ptr %i.go, align 8, !tbaa !19
  %i.gq = getelementptr i8, ptr %i.gl, i64 %.idx.i61
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !25
  %i.gs = sext i32 %i.gr to i64
  %i.gt = getelementptr [8 x i8], ptr %i.ge, i64 %i.gs ; 2 uses
  %i.gu = load double, ptr %i.gt, align 8, !tbaa !19 ; 2 uses
  %i.gv = fsub double %i.gp, %i.gu
  %i.gw = getelementptr [4 x i8], ptr %i.gl, i64 %i.gh
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !25
  %i.gy = sext i32 %i.gx to i64
  %i.gz = getelementptr [8 x i8], ptr %i.ge, i64 %i.gy ; 2 uses
  %i.ha = load double, ptr %i.gz, align 8, !tbaa !19
  %i.hb = fsub double %i.ha, %i.gu
  %i.hc = getelementptr [8 x i8], ptr %i.go, i64 %i.gg
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !19
  %i.he = getelementptr [8 x i8], ptr %i.gt, i64 %i.gg
  %i.hf = load double, ptr %i.he, align 8, !tbaa !19 ; 2 uses
  %i.hg = fsub double %i.hd, %i.hf
  %i.hh = getelementptr [8 x i8], ptr %i.gz, i64 %i.gg
  %i.hi = load double, ptr %i.hh, align 8, !tbaa !19
  %i.hj = fsub double %i.hi, %i.hf
  %i.hk = fneg double %i.hb
  %i.hl = fmul double %i.hg, %i.hk
  %i.hm = tail call noundef double @llvm.fmuladd.f64(double %i.gv, double %i.hj, double %i.hl)
  %i.hn = getelementptr inbounds [8 x i8], ptr %i.gi, i64 %.072
  store double %i.hm, ptr %i.hn, align 8, !tbaa !19
  %i.ho = add nuw i64 %.072, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ho, %i.h
  br i1 %exitcond.not, label %.loopexit, label %bb.m, !llvm.loop !498

bb.n:                                             ; preds = %bb.c
  invoke void @_ZN3igl12edge_lengthsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi3ELi0ELin1ELi3EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.o unwind label %bb.l

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN3igl10doubleareaIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EENS6_6ScalarERNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1) %3, double noundef 0.000000e+00, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %..loopexit_crit_edge unwind label %bb.l

..loopexit_crit_edge:                             ; preds = %bb.o
  %.pre80 = load ptr, ptr %3, align 8, !tbaa !22
  br label %.loopexit

.loopexit:                                        ; preds = %bb.m, %..loopexit_crit_edge, %.preheader71, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEERS2_RKNS_9EigenBaseIT_EE.exit
  %i.hp = phi ptr [ %.pre80, %..loopexit_crit_edge ], [ null, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEERS2_RKNS_9EigenBaseIT_EE.exit ], [ null, %.preheader71 ], [ null, %bb.m ]
  call void @free(ptr noundef %i.hp) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.p

bb.p:                                             ; preds = %.loopexit, %bb.b
  ret void

bb.q:                                             ; preds = %bb.l, %.body, %bb.f
  %i.hq = phi ptr [ %.pre, %bb.l ], [ null, %bb.f ], [ null, %.body ]
  %.pn45 = phi { ptr, i32 } [ %i.gj, %bb.l ], [ %i.cf, %bb.f ], [ %.pn, %.body ]
  call void @free(ptr noundef %i.hq) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %.pn45
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl15doublearea_quadIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Matrix.97", align 8  ; 10 uses
  %4 = alloca %"class.Eigen::Matrix.21", align 8  ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !14   ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.c = shl nsw i64 %i.b, 1                      ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.d = icmp sgt i64 %i.b, 1537228672809129301
  br i1 %i.d, label %.noexc.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !43
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i: ; preds = %bb.a
  %5 = mul nsw i64 %i.b, 6
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread, label %bb.b

_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i
  store i64 %i.c, ptr %i.f, align 8, !tbaa !14
  store i64 3, ptr %i.g, align 8, !tbaa !9
  br label %._crit_edge

bb.b:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i
  %i.h = icmp sgt i64 %i.b, 0
  br i1 %i.h, label %bb.c, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.lr.ph

bb.c:                                             ; preds = %bb.b
  %i.i = icmp samesign ugt i64 %5, 4611686018427387903
  br i1 %i.i, label %.noexc, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i

.noexc:                                           ; preds = %bb.c
  %i.j = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.j, align 8, !tbaa !43
  tail call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i: ; preds = %bb.c
  %i.k = mul i64 %i.b, 24
  %i.l = tail call noalias ptr @malloc(i64 noundef %i.k) #25 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.noexc59, label %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread105

_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread105: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i
  store ptr %i.l, ptr %3, align 8, !tbaa !21
  br label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.lr.ph

.noexc59:                                         ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i
  %i.n = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.n, align 8, !tbaa !43
  tail call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
  unreachable

_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.lr.ph: ; preds = %bb.b, %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread105
  %.sink.i108 = phi ptr [ %i.l, %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread105 ], [ null, %bb.b ] ; 24 uses
  store i64 %i.c, ptr %i.f, align 8, !tbaa !14
  store i64 3, ptr %i.g, align 8, !tbaa !9
  %i.o = load ptr, ptr %1, align 8, !tbaa !21     ; 9 uses
  %.idx = shl i64 %i.b, 3                         ; 8 uses
  %.idx93 = shl i64 %i.b, 4                       ; 9 uses
  %.idx94 = mul i64 %i.b, 12                      ; 3 uses
  %min.iters.check = icmp ult i64 %i.b, 134
  br i1 %min.iters.check, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.lr.ph
  %i.p = add i64 %i.b, -1                         ; 2 uses
  %mul.result = shl i64 %i.p, 3                   ; 6 uses
  %mul.overflow = icmp ugt i64 %i.p, 2305843009213693951
  %i.q = getelementptr i8, ptr %.sink.i108, i64 %mul.result
  %i.r = icmp ult ptr %i.q, %.sink.i108
  %scevgep = getelementptr i8, ptr %.sink.i108, i64 %.idx ; 2 uses
  %i.s = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.t = icmp ult ptr %i.s, %scevgep
  %scevgep109 = getelementptr i8, ptr %.sink.i108, i64 %.idx93 ; 2 uses
  %i.u = getelementptr i8, ptr %scevgep109, i64 %mul.result
  %i.v = icmp ult ptr %i.u, %scevgep109
  %i.w = or i1 %i.v, %mul.overflow
  %scevgep110 = getelementptr i8, ptr %.sink.i108, i64 4 ; 2 uses
  %i.x = getelementptr i8, ptr %scevgep110, i64 %mul.result
  %i.y = icmp ult ptr %i.x, %scevgep110
  %i.z = getelementptr i8, ptr %.sink.i108, i64 %.idx
  %scevgep111 = getelementptr i8, ptr %i.z, i64 4 ; 2 uses
  %i.aa = getelementptr i8, ptr %scevgep111, i64 %mul.result
  %i.ab = icmp ult ptr %i.aa, %scevgep111
  %i.ac = getelementptr i8, ptr %.sink.i108, i64 %.idx93
  %scevgep112 = getelementptr i8, ptr %i.ac, i64 4 ; 2 uses
  %i.ad = getelementptr i8, ptr %scevgep112, i64 %mul.result
  %i.ae = icmp ult ptr %i.ad, %scevgep112
  %i.af = or i1 %i.t, %i.r
  %i.ag = or i1 %i.af, %i.w
  %i.ah = or i1 %i.y, %i.ag
  %i.ai = or i1 %i.ab, %i.ah
  %i.aj = or i1 %i.ae, %i.ai
  br i1 %i.aj, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %scevgep113 = getelementptr i8, ptr %i.o, i64 %.idx94 ; 12 uses
  %scevgep114 = getelementptr i8, ptr %i.o, i64 %.idx93 ; 6 uses
  %i.ak = getelementptr i8, ptr %.sink.i108, i64 %.idx
  %scevgep115 = getelementptr i8, ptr %i.ak, i64 -4 ; 6 uses
  %scevgep116 = getelementptr i8, ptr %.sink.i108, i64 %.idx ; 15 uses
  %i.al = getelementptr i8, ptr %.sink.i108, i64 %.idx93
  %scevgep117 = getelementptr i8, ptr %i.al, i64 -4 ; 8 uses
  %scevgep118 = getelementptr i8, ptr %.sink.i108, i64 %.idx93 ; 14 uses
  %i.am = mul i64 %i.b, 24                        ; 2 uses
  %i.an = getelementptr i8, ptr %.sink.i108, i64 %i.am
  %scevgep119 = getelementptr i8, ptr %i.an, i64 -4 ; 7 uses
  %scevgep120 = getelementptr i8, ptr %.sink.i108, i64 4 ; 7 uses
  %i.ao = getelementptr i8, ptr %.sink.i108, i64 %.idx
  %scevgep121 = getelementptr i8, ptr %i.ao, i64 4 ; 7 uses
  %i.ap = getelementptr i8, ptr %.sink.i108, i64 %.idx93
  %scevgep122 = getelementptr i8, ptr %i.ap, i64 4 ; 8 uses
  %scevgep123 = getelementptr i8, ptr %.sink.i108, i64 %i.am ; 8 uses
  %scevgep124 = getelementptr i8, ptr %i.o, i64 %.idx ; 12 uses
  %i.aq = shl nuw i64 %i.b, 2
  %scevgep125 = getelementptr i8, ptr %i.o, i64 %i.aq ; 9 uses
  %bound0 = icmp ult ptr %scevgep113, %scevgep115
  %bound1 = icmp ult ptr %.sink.i108, %scevgep114
  %found.conflict = and i1 %bound0, %bound1
  %bound0126 = icmp ult ptr %scevgep113, %scevgep117
  %bound1127 = icmp ult ptr %scevgep116, %scevgep114
  %found.conflict128 = and i1 %bound0126, %bound1127
  %bound0129 = icmp ult ptr %scevgep113, %scevgep119
  %bound1130 = icmp ult ptr %scevgep118, %scevgep114
  %found.conflict131 = and i1 %bound0129, %bound1130
  %bound0133 = icmp ult ptr %scevgep113, %scevgep116
  %bound1134 = icmp ult ptr %scevgep120, %scevgep114
  %found.conflict135 = and i1 %bound0133, %bound1134
  %bound0137 = icmp ult ptr %scevgep113, %scevgep118
  %bound1138 = icmp ult ptr %scevgep121, %scevgep114
  %found.conflict139 = and i1 %bound0137, %bound1138
  %bound0141 = icmp ult ptr %scevgep113, %scevgep123
  %bound1142 = icmp ult ptr %scevgep122, %scevgep114
  %found.conflict143 = and i1 %bound0141, %bound1142
  %bound0145 = icmp ult ptr %scevgep124, %scevgep115
  %bound1146 = icmp ult ptr %.sink.i108, %scevgep113
  %found.conflict147 = and i1 %bound0145, %bound1146
  %bound0149 = icmp ult ptr %scevgep124, %scevgep117
  %bound1150 = icmp ult ptr %scevgep116, %scevgep113
  %found.conflict151 = and i1 %bound0149, %bound1150
  %bound0153 = icmp ult ptr %scevgep124, %scevgep119
  %bound1154 = icmp ult ptr %scevgep118, %scevgep113
  %found.conflict155 = and i1 %bound0153, %bound1154
  %bound0157 = icmp ult ptr %scevgep124, %scevgep116
  %bound1158 = icmp ult ptr %scevgep120, %scevgep113
  %found.conflict159 = and i1 %bound0157, %bound1158
  %bound0161 = icmp ult ptr %scevgep124, %scevgep118
  %bound1162 = icmp ult ptr %scevgep121, %scevgep113
  %found.conflict163 = and i1 %bound0161, %bound1162
  %bound0165 = icmp ult ptr %scevgep124, %scevgep123
  %bound1166 = icmp ult ptr %scevgep122, %scevgep113
  %found.conflict167 = and i1 %bound0165, %bound1166
  %bound0169 = icmp ult ptr %scevgep125, %scevgep115
  %bound1170 = icmp ult ptr %.sink.i108, %scevgep124
  %found.conflict171 = and i1 %bound0169, %bound1170
  %bound0173 = icmp ult ptr %scevgep125, %scevgep117
  %bound1174 = icmp ult ptr %scevgep116, %scevgep124
  %found.conflict175 = and i1 %bound0173, %bound1174
  %bound0177 = icmp ult ptr %scevgep125, %scevgep119
  %bound1178 = icmp ult ptr %scevgep118, %scevgep124
  %found.conflict179 = and i1 %bound0177, %bound1178
  %bound0181 = icmp ult ptr %scevgep125, %scevgep116
  %bound1182 = icmp ult ptr %scevgep120, %scevgep124
  %found.conflict183 = and i1 %bound0181, %bound1182
  %bound0185 = icmp ult ptr %scevgep125, %scevgep118
  %bound1186 = icmp ult ptr %scevgep121, %scevgep124
  %found.conflict187 = and i1 %bound0185, %bound1186
  %bound0189 = icmp ult ptr %scevgep125, %scevgep123
  %bound1190 = icmp ult ptr %scevgep122, %scevgep124
  %found.conflict191 = and i1 %bound0189, %bound1190
  %bound0193 = icmp ult ptr %i.o, %scevgep115
  %bound1194 = icmp ult ptr %.sink.i108, %scevgep125
  %found.conflict195 = and i1 %bound0193, %bound1194
  %bound0197 = icmp ult ptr %i.o, %scevgep117
  %bound1198 = icmp ult ptr %scevgep116, %scevgep125
  %found.conflict199 = and i1 %bound0197, %bound1198
  %i.ar = insertelement <4 x ptr> poison, ptr %i.o, i64 0
  %i.as = shufflevector <4 x ptr> %i.ar, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.at = insertelement <4 x ptr> poison, ptr %scevgep119, i64 0
  %i.au = insertelement <4 x ptr> %i.at, ptr %scevgep116, i64 1
  %i.av = insertelement <4 x ptr> %i.au, ptr %scevgep118, i64 2
  %i.aw = insertelement <4 x ptr> %i.av, ptr %scevgep123, i64 3 ; 2 uses
  %i.ax = icmp ult <4 x ptr> %i.as, %i.aw
  %i.ay = insertelement <4 x ptr> poison, ptr %scevgep118, i64 0
  %i.az = insertelement <4 x ptr> %i.ay, ptr %scevgep120, i64 1
  %i.ba = insertelement <4 x ptr> %i.az, ptr %scevgep121, i64 2
  %i.bb = insertelement <4 x ptr> %i.ba, ptr %scevgep122, i64 3 ; 2 uses
  %i.bc = insertelement <4 x ptr> poison, ptr %scevgep125, i64 0
  %i.bd = shufflevector <4 x ptr> %i.bc, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.be = icmp ult <4 x ptr> %i.bb, %i.bd
  %i.bf = and <4 x i1> %i.ax, %i.be
  %bound0217 = icmp ult ptr %.sink.i108, %scevgep117
  %bound1218 = icmp ult ptr %scevgep116, %scevgep115
  %found.conflict219 = and i1 %bound0217, %bound1218
  %i.bg = insertelement <4 x ptr> poison, ptr %.sink.i108, i64 0
  %i.bh = shufflevector <4 x ptr> %i.bg, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bi = icmp ult <4 x ptr> %i.bh, %i.aw
  %i.bj = insertelement <4 x ptr> poison, ptr %scevgep115, i64 0
  %i.bk = shufflevector <4 x ptr> %i.bj, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bl = icmp ult <4 x ptr> %i.bb, %i.bk
  %i.bm = and <4 x i1> %i.bi, %i.bl
  %bound0237 = icmp ult ptr %scevgep116, %scevgep119
  %bound1238 = icmp ult ptr %scevgep118, %scevgep117
  %found.conflict239 = and i1 %bound0237, %bound1238
  %bound0242 = icmp ult ptr %scevgep116, %scevgep118
  %bound1243 = icmp ult ptr %scevgep121, %scevgep117
  %found.conflict244 = and i1 %bound0242, %bound1243
  %bound0246 = icmp ult ptr %scevgep116, %scevgep123
  %bound1247 = icmp ult ptr %scevgep122, %scevgep117
  %found.conflict248 = and i1 %bound0246, %bound1247
  %bound0250 = icmp ult ptr %scevgep118, %scevgep116
  %bound1251 = icmp ult ptr %scevgep120, %scevgep119
  %found.conflict252 = and i1 %bound0250, %bound1251
  %bound0255 = icmp ult ptr %scevgep118, %scevgep123
  %bound1256 = icmp ult ptr %scevgep122, %scevgep119
  %found.conflict257 = and i1 %bound0255, %bound1256
  %bound0259 = icmp ult ptr %scevgep120, %scevgep118
  %bound1260 = icmp ult ptr %scevgep121, %scevgep116
  %found.conflict261 = and i1 %bound0259, %bound1260
  %bound0263 = icmp ult ptr %scevgep120, %scevgep123
  %bound1264 = icmp ult ptr %scevgep122, %scevgep116
  %found.conflict265 = and i1 %bound0263, %bound1264
  %bound0267 = icmp ult ptr %scevgep121, %scevgep123
  %bound1268 = icmp ult ptr %scevgep122, %scevgep118
  %found.conflict269 = and i1 %bound0267, %bound1268
  %rdx.op = or <4 x i1> %i.bf, %i.bm
  %i.bn = bitcast <4 x i1> %rdx.op to i4
  %i.bo = icmp ne i4 %i.bn, 0
  %op.rdx = or i1 %i.bo, %found.conflict
end_hunk_8
begin_hunk_9_@_ZN3igl10doubleareaIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE:bb.a
  %i.fd = getelementptr inbounds [4 x i8], ptr %i.em, i64 %i.fb ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %wide.load = load <4 x i32>, ptr %i.fd, align 4, !tbaa !25
  %wide.load81 = load <4 x i32>, ptr %i.fe, align 4, !tbaa !25
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  store <4 x i32> %wide.load, ptr %i.fc, align 4, !tbaa !25
  store <4 x i32> %wide.load81, ptr %i.ff, align 4, !tbaa !25
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fg = icmp eq i64 %index.next, %n.vec
  br i1 %i.fg, label %middle.block, label %vector.body, !llvm.loop !539

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ey, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEaSINS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEEEERS2_RKNS_9EigenBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader82

.lr.ph.i.i.i.i.i.i.i.i.i.preheader82:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.eu, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.fa, %middle.block ] ; 4 uses
  %i.fh = sub i64 %i.eq, %.05.i.i.i.i.i.i.i.i.i.ph
  %xtraiter84 = and i64 %i.fh, 3                  ; 2 uses
  %lcmp.mod85.not = icmp eq i64 %xtraiter84, 0
  br i1 %lcmp.mod85.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader82, %.lr.ph.i.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.fl, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader82 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader82 ]
  %i.fi = getelementptr inbounds [4 x i8], ptr %i.er, i64 %.05.i.i.i.i.i.i.i.i.i.prol
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.em, i64 %.05.i.i.i.i.i.i.i.i.i.prol
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !25
  store i32 %i.fk, ptr %i.fi, align 4, !tbaa !25
  %i.fl = add nsw i64 %.05.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter84
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !540

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader82
  %.05.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader82 ], [ %i.fl, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.fm = sub i64 %.05.i.i.i.i.i.i.i.i.i.ph, %i.eq
  %i.fn = icmp ugt i64 %i.fm, -4
  br i1 %i.fn, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEaSINS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEEEERS2_RKNS_9EigenBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i = phi i64 [ %i.gd, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.fo = getelementptr inbounds [4 x i8], ptr %i.er, i64 %.05.i.i.i.i.i.i.i.i.i
  %i.fp = getelementptr inbounds [4 x i8], ptr %i.em, i64 %.05.i.i.i.i.i.i.i.i.i
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !25
  store i32 %i.fq, ptr %i.fo, align 4, !tbaa !25
  %i.fr = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 1   ; 2 uses
  %i.fs = getelementptr inbounds [4 x i8], ptr %i.er, i64 %i.fr
  %i.ft = getelementptr inbounds [4 x i8], ptr %i.em, i64 %i.fr
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !25
  store i32 %i.fu, ptr %i.fs, align 4, !tbaa !25
  %i.fv = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 2   ; 2 uses
  %i.fw = getelementptr inbounds [4 x i8], ptr %i.er, i64 %i.fv
  %i.fx = getelementptr inbounds [4 x i8], ptr %i.em, i64 %i.fv
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !25
  store i32 %i.fy, ptr %i.fw, align 4, !tbaa !25
  %i.fz = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 3   ; 2 uses
  %i.ga = getelementptr inbounds [4 x i8], ptr %i.er, i64 %i.fz
  %i.gb = getelementptr inbounds [4 x i8], ptr %i.em, i64 %i.fz
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !25
  store i32 %i.gc, ptr %i.ga, align 4, !tbaa !25
  %i.gd = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 4   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.gd, %i.eq
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEaSINS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEEEERS2_RKNS_9EigenBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !541

.lr.ph.i.i.i.i.i.i.i.i53:                         ; preds = %bb.i, %.lr.ph.i.i.i.i.i.i.i.i53
  %.011.i.i.i.i.i.i.i.i = phi i64 [ %i.gh, %.lr.ph.i.i.i.i.i.i.i.i53 ], [ 0, %bb.i ] ; 3 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %.011.i.i.i.i.i.i.i.i
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %.011.i.i.i.i.i.i.i.i
  %i.gg = load <2 x i64>, ptr %i.gf, align 16, !tbaa !37
  store <2 x i64> %i.gg, ptr %i.ge, align 16, !tbaa !37
  %i.gh = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.gi = icmp slt i64 %i.gh, %i.eu
  br i1 %i.gi, label %.lr.ph.i.i.i.i.i.i.i.i53, label %._crit_edge.i.i.i.i.i.i.i.i, !llvm.loop !542

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEaSINS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEEEERS2_RKNS_9EigenBaseIT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i.i.i
  %i.gj = load ptr, ptr %4, align 8, !tbaa !533
  call void @free(ptr noundef %i.gj) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %.loopexit

bb.j:                                             ; preds = %thread-pre-split.i.i.i.i.i.i.i51, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal14scalar_sqrt_opIiEEKNS_12ArrayWrapperINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEEEE4evalEv.exit
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.h, %bb.j
  %.pn = phi { ptr, i32 } [ %i.gk, %bb.j ], [ %i.ee, %bb.h ]
  %i.gl = load ptr, ptr %4, align 8, !tbaa !533
  call void @free(ptr noundef %i.gl) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.q

bb.k:                                             ; preds = %bb.c
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.h, i64 noundef 1)
          to label %.preheader66 unwind label %bb.l

.preheader66:                                     ; preds = %bb.k
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader66
  %i.gm = load ptr, ptr %1, align 8, !tbaa !21
  %i.gn = load ptr, ptr %0, align 8, !tbaa !368   ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !147 ; 3 uses
  %i.gq = load i64, ptr %i.g, align 8, !tbaa !14  ; 2 uses
  %.idx.i56 = shl i64 %i.gq, 3
  %i.gr = load ptr, ptr %2, align 8, !tbaa !533
  br label %bb.m

bb.l:                                             ; preds = %bb.o, %bb.n, %bb.k
  %i.gs = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.m:                                             ; preds = %.lr.ph, %bb.m
  %.067 = phi i64 [ 0, %.lr.ph ], [ %i.hy, %bb.m ] ; 3 uses
  %sext = shl i64 %.067, 32
  %i.gt = ashr exact i64 %sext, 30
  %i.gu = getelementptr i8, ptr %i.gm, i64 %i.gt  ; 3 uses
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !25
  %i.gw = sext i32 %i.gv to i64
  %i.gx = getelementptr [8 x i8], ptr %i.gn, i64 %i.gw ; 2 uses
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !19
  %i.gz = getelementptr i8, ptr %i.gu, i64 %.idx.i56
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !25
  %i.hb = sext i32 %i.ha to i64
  %i.hc = getelementptr [8 x i8], ptr %i.gn, i64 %i.hb ; 2 uses
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !19 ; 2 uses
  %i.he = fsub double %i.gy, %i.hd
  %i.hf = getelementptr [4 x i8], ptr %i.gu, i64 %i.gq
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !25
  %i.hh = sext i32 %i.hg to i64
  %i.hi = getelementptr [8 x i8], ptr %i.gn, i64 %i.hh ; 2 uses
  %i.hj = load double, ptr %i.hi, align 8, !tbaa !19
  %i.hk = fsub double %i.hj, %i.hd
  %i.hl = getelementptr [8 x i8], ptr %i.gx, i64 %i.gp
  %i.hm = load double, ptr %i.hl, align 8, !tbaa !19
  %i.hn = getelementptr [8 x i8], ptr %i.hc, i64 %i.gp
  %i.ho = load double, ptr %i.hn, align 8, !tbaa !19 ; 2 uses
  %i.hp = fsub double %i.hm, %i.ho
  %i.hq = getelementptr [8 x i8], ptr %i.hi, i64 %i.gp
  %i.hr = load double, ptr %i.hq, align 8, !tbaa !19
  %i.hs = fsub double %i.hr, %i.ho
  %i.ht = fneg double %i.hk
  %i.hu = fmul double %i.hp, %i.ht
  %i.hv = tail call noundef double @llvm.fmuladd.f64(double %i.he, double %i.hs, double %i.hu)
  %i.hw = getelementptr inbounds [4 x i8], ptr %i.gr, i64 %.067
  %i.hx = fptosi double %i.hv to i32
  store i32 %i.hx, ptr %i.hw, align 4, !tbaa !25
  %i.hy = add nuw i64 %.067, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.hy, %i.h
  br i1 %exitcond.not, label %.loopexit, label %bb.m, !llvm.loop !543

bb.n:                                             ; preds = %bb.c
  invoke void @_ZN3igl12edge_lengthsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi3ELi0ELin1ELi3EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.o unwind label %bb.l

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN3igl10doubleareaIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EENS6_6ScalarERNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1) %3, double noundef 0.000000e+00, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %.loopexit unwind label %bb.l

.loopexit:                                        ; preds = %bb.m, %.preheader66, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEaSINS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEEEERS2_RKNS_9EigenBaseIT_EE.exit, %bb.o
  %i.hz = load ptr, ptr %3, align 8, !tbaa !22
  call void @free(ptr noundef %i.hz) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.p

bb.p:                                             ; preds = %.loopexit, %bb.b
  ret void

bb.q:                                             ; preds = %bb.l, %.body, %bb.f
  %.pn45 = phi { ptr, i32 } [ %i.gs, %bb.l ], [ %i.dk, %bb.f ], [ %.pn, %.body ]
  %i.ia = load ptr, ptr %3, align 8, !tbaa !22
  call void @free(ptr noundef %i.ia) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %.pn45
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl15doublearea_quadIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Matrix.97", align 8  ; 10 uses
  %4 = alloca %"class.Eigen::Matrix.342", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !14   ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.c = shl nsw i64 %i.b, 1                      ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.d = icmp sgt i64 %i.b, 1537228672809129301
  br i1 %i.d, label %.noexc.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !43
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i: ; preds = %bb.a
  %5 = mul nsw i64 %i.b, 6
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread, label %bb.b

_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i
  store i64 %i.c, ptr %i.f, align 8, !tbaa !14
  store i64 3, ptr %i.g, align 8, !tbaa !9
  br label %._crit_edge

bb.b:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i
  %i.h = icmp sgt i64 %i.b, 0
  br i1 %i.h, label %bb.c, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.lr.ph

bb.c:                                             ; preds = %bb.b
  %i.i = icmp samesign ugt i64 %5, 4611686018427387903
  br i1 %i.i, label %.noexc, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i

.noexc:                                           ; preds = %bb.c
  %i.j = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.j, align 8, !tbaa !43
  tail call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i: ; preds = %bb.c
  %i.k = mul i64 %i.b, 24
  %i.l = tail call noalias ptr @malloc(i64 noundef %i.k) #25 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.noexc59, label %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread105

_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread105: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i
  store ptr %i.l, ptr %3, align 8, !tbaa !21
  br label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.lr.ph

.noexc59:                                         ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i
  %i.n = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.n, align 8, !tbaa !43
  tail call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
  unreachable

_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.lr.ph: ; preds = %bb.b, %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread105
  %.sink.i108 = phi ptr [ %i.l, %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread105 ], [ null, %bb.b ] ; 24 uses
  store i64 %i.c, ptr %i.f, align 8, !tbaa !14
  store i64 3, ptr %i.g, align 8, !tbaa !9
  %i.o = load ptr, ptr %1, align 8, !tbaa !21     ; 9 uses
  %.idx = shl i64 %i.b, 3                         ; 8 uses
  %.idx93 = shl i64 %i.b, 4                       ; 9 uses
  %.idx94 = mul i64 %i.b, 12                      ; 3 uses
  %min.iters.check = icmp ult i64 %i.b, 134
  br i1 %min.iters.check, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.lr.ph
  %i.p = add i64 %i.b, -1                         ; 2 uses
  %mul.result = shl i64 %i.p, 3                   ; 6 uses
  %mul.overflow = icmp ugt i64 %i.p, 2305843009213693951
  %i.q = getelementptr i8, ptr %.sink.i108, i64 %mul.result
  %i.r = icmp ult ptr %i.q, %.sink.i108
  %scevgep = getelementptr i8, ptr %.sink.i108, i64 %.idx ; 2 uses
  %i.s = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.t = icmp ult ptr %i.s, %scevgep
  %scevgep109 = getelementptr i8, ptr %.sink.i108, i64 %.idx93 ; 2 uses
  %i.u = getelementptr i8, ptr %scevgep109, i64 %mul.result
  %i.v = icmp ult ptr %i.u, %scevgep109
  %i.w = or i1 %i.v, %mul.overflow
  %scevgep110 = getelementptr i8, ptr %.sink.i108, i64 4 ; 2 uses
  %i.x = getelementptr i8, ptr %scevgep110, i64 %mul.result
  %i.y = icmp ult ptr %i.x, %scevgep110
  %i.z = getelementptr i8, ptr %.sink.i108, i64 %.idx
  %scevgep111 = getelementptr i8, ptr %i.z, i64 4 ; 2 uses
  %i.aa = getelementptr i8, ptr %scevgep111, i64 %mul.result
  %i.ab = icmp ult ptr %i.aa, %scevgep111
  %i.ac = getelementptr i8, ptr %.sink.i108, i64 %.idx93
  %scevgep112 = getelementptr i8, ptr %i.ac, i64 4 ; 2 uses
  %i.ad = getelementptr i8, ptr %scevgep112, i64 %mul.result
  %i.ae = icmp ult ptr %i.ad, %scevgep112
  %i.af = or i1 %i.t, %i.r
  %i.ag = or i1 %i.af, %i.w
  %i.ah = or i1 %i.y, %i.ag
  %i.ai = or i1 %i.ab, %i.ah
  %i.aj = or i1 %i.ae, %i.ai
  br i1 %i.aj, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %scevgep113 = getelementptr i8, ptr %i.o, i64 %.idx94 ; 12 uses
  %scevgep114 = getelementptr i8, ptr %i.o, i64 %.idx93 ; 6 uses
  %i.ak = getelementptr i8, ptr %.sink.i108, i64 %.idx
  %scevgep115 = getelementptr i8, ptr %i.ak, i64 -4 ; 6 uses
  %scevgep116 = getelementptr i8, ptr %.sink.i108, i64 %.idx ; 15 uses
  %i.al = getelementptr i8, ptr %.sink.i108, i64 %.idx93
  %scevgep117 = getelementptr i8, ptr %i.al, i64 -4 ; 8 uses
  %scevgep118 = getelementptr i8, ptr %.sink.i108, i64 %.idx93 ; 14 uses
  %i.am = mul i64 %i.b, 24                        ; 2 uses
  %i.an = getelementptr i8, ptr %.sink.i108, i64 %i.am
  %scevgep119 = getelementptr i8, ptr %i.an, i64 -4 ; 7 uses
  %scevgep120 = getelementptr i8, ptr %.sink.i108, i64 4 ; 7 uses
  %i.ao = getelementptr i8, ptr %.sink.i108, i64 %.idx
  %scevgep121 = getelementptr i8, ptr %i.ao, i64 4 ; 7 uses
  %i.ap = getelementptr i8, ptr %.sink.i108, i64 %.idx93
  %scevgep122 = getelementptr i8, ptr %i.ap, i64 4 ; 8 uses
  %scevgep123 = getelementptr i8, ptr %.sink.i108, i64 %i.am ; 8 uses
  %scevgep124 = getelementptr i8, ptr %i.o, i64 %.idx ; 12 uses
  %i.aq = shl nuw i64 %i.b, 2
  %scevgep125 = getelementptr i8, ptr %i.o, i64 %i.aq ; 9 uses
  %bound0 = icmp ult ptr %scevgep113, %scevgep115
  %bound1 = icmp ult ptr %.sink.i108, %scevgep114
  %found.conflict = and i1 %bound0, %bound1
  %bound0126 = icmp ult ptr %scevgep113, %scevgep117
  %bound1127 = icmp ult ptr %scevgep116, %scevgep114
  %found.conflict128 = and i1 %bound0126, %bound1127
  %bound0129 = icmp ult ptr %scevgep113, %scevgep119
  %bound1130 = icmp ult ptr %scevgep118, %scevgep114
  %found.conflict131 = and i1 %bound0129, %bound1130
  %bound0133 = icmp ult ptr %scevgep113, %scevgep116
  %bound1134 = icmp ult ptr %scevgep120, %scevgep114
  %found.conflict135 = and i1 %bound0133, %bound1134
  %bound0137 = icmp ult ptr %scevgep113, %scevgep118
  %bound1138 = icmp ult ptr %scevgep121, %scevgep114
  %found.conflict139 = and i1 %bound0137, %bound1138
  %bound0141 = icmp ult ptr %scevgep113, %scevgep123
  %bound1142 = icmp ult ptr %scevgep122, %scevgep114
  %found.conflict143 = and i1 %bound0141, %bound1142
  %bound0145 = icmp ult ptr %scevgep124, %scevgep115
  %bound1146 = icmp ult ptr %.sink.i108, %scevgep113
  %found.conflict147 = and i1 %bound0145, %bound1146
  %bound0149 = icmp ult ptr %scevgep124, %scevgep117
  %bound1150 = icmp ult ptr %scevgep116, %scevgep113
  %found.conflict151 = and i1 %bound0149, %bound1150
  %bound0153 = icmp ult ptr %scevgep124, %scevgep119
  %bound1154 = icmp ult ptr %scevgep118, %scevgep113
  %found.conflict155 = and i1 %bound0153, %bound1154
  %bound0157 = icmp ult ptr %scevgep124, %scevgep116
  %bound1158 = icmp ult ptr %scevgep120, %scevgep113
  %found.conflict159 = and i1 %bound0157, %bound1158
  %bound0161 = icmp ult ptr %scevgep124, %scevgep118
  %bound1162 = icmp ult ptr %scevgep121, %scevgep113
  %found.conflict163 = and i1 %bound0161, %bound1162
  %bound0165 = icmp ult ptr %scevgep124, %scevgep123
  %bound1166 = icmp ult ptr %scevgep122, %scevgep113
  %found.conflict167 = and i1 %bound0165, %bound1166
  %bound0169 = icmp ult ptr %scevgep125, %scevgep115
  %bound1170 = icmp ult ptr %.sink.i108, %scevgep124
  %found.conflict171 = and i1 %bound0169, %bound1170
  %bound0173 = icmp ult ptr %scevgep125, %scevgep117
  %bound1174 = icmp ult ptr %scevgep116, %scevgep124
  %found.conflict175 = and i1 %bound0173, %bound1174
  %bound0177 = icmp ult ptr %scevgep125, %scevgep119
  %bound1178 = icmp ult ptr %scevgep118, %scevgep124
  %found.conflict179 = and i1 %bound0177, %bound1178
  %bound0181 = icmp ult ptr %scevgep125, %scevgep116
  %bound1182 = icmp ult ptr %scevgep120, %scevgep124
  %found.conflict183 = and i1 %bound0181, %bound1182
  %bound0185 = icmp ult ptr %scevgep125, %scevgep118
  %bound1186 = icmp ult ptr %scevgep121, %scevgep124
  %found.conflict187 = and i1 %bound0185, %bound1186
  %bound0189 = icmp ult ptr %scevgep125, %scevgep123
  %bound1190 = icmp ult ptr %scevgep122, %scevgep124
  %found.conflict191 = and i1 %bound0189, %bound1190
  %bound0193 = icmp ult ptr %i.o, %scevgep115
  %bound1194 = icmp ult ptr %.sink.i108, %scevgep125
  %found.conflict195 = and i1 %bound0193, %bound1194
  %bound0197 = icmp ult ptr %i.o, %scevgep117
  %bound1198 = icmp ult ptr %scevgep116, %scevgep125
  %found.conflict199 = and i1 %bound0197, %bound1198
  %i.ar = insertelement <4 x ptr> poison, ptr %i.o, i64 0
  %i.as = shufflevector <4 x ptr> %i.ar, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.at = insertelement <4 x ptr> poison, ptr %scevgep119, i64 0
  %i.au = insertelement <4 x ptr> %i.at, ptr %scevgep116, i64 1
  %i.av = insertelement <4 x ptr> %i.au, ptr %scevgep118, i64 2
  %i.aw = insertelement <4 x ptr> %i.av, ptr %scevgep123, i64 3 ; 2 uses
  %i.ax = icmp ult <4 x ptr> %i.as, %i.aw
  %i.ay = insertelement <4 x ptr> poison, ptr %scevgep118, i64 0
  %i.az = insertelement <4 x ptr> %i.ay, ptr %scevgep120, i64 1
  %i.ba = insertelement <4 x ptr> %i.az, ptr %scevgep121, i64 2
  %i.bb = insertelement <4 x ptr> %i.ba, ptr %scevgep122, i64 3 ; 2 uses
  %i.bc = insertelement <4 x ptr> poison, ptr %scevgep125, i64 0
  %i.bd = shufflevector <4 x ptr> %i.bc, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.be = icmp ult <4 x ptr> %i.bb, %i.bd
  %i.bf = and <4 x i1> %i.ax, %i.be
  %bound0217 = icmp ult ptr %.sink.i108, %scevgep117
  %bound1218 = icmp ult ptr %scevgep116, %scevgep115
  %found.conflict219 = and i1 %bound0217, %bound1218
  %i.bg = insertelement <4 x ptr> poison, ptr %.sink.i108, i64 0
  %i.bh = shufflevector <4 x ptr> %i.bg, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bi = icmp ult <4 x ptr> %i.bh, %i.aw
  %i.bj = insertelement <4 x ptr> poison, ptr %scevgep115, i64 0
  %i.bk = shufflevector <4 x ptr> %i.bj, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bl = icmp ult <4 x ptr> %i.bb, %i.bk
  %i.bm = and <4 x i1> %i.bi, %i.bl
  %bound0237 = icmp ult ptr %scevgep116, %scevgep119
  %bound1238 = icmp ult ptr %scevgep118, %scevgep117
  %found.conflict239 = and i1 %bound0237, %bound1238
  %bound0242 = icmp ult ptr %scevgep116, %scevgep118
  %bound1243 = icmp ult ptr %scevgep121, %scevgep117
  %found.conflict244 = and i1 %bound0242, %bound1243
  %bound0246 = icmp ult ptr %scevgep116, %scevgep123
  %bound1247 = icmp ult ptr %scevgep122, %scevgep117
  %found.conflict248 = and i1 %bound0246, %bound1247
  %bound0250 = icmp ult ptr %scevgep118, %scevgep116
  %bound1251 = icmp ult ptr %scevgep120, %scevgep119
  %found.conflict252 = and i1 %bound0250, %bound1251
  %bound0255 = icmp ult ptr %scevgep118, %scevgep123
  %bound1256 = icmp ult ptr %scevgep122, %scevgep119
  %found.conflict257 = and i1 %bound0255, %bound1256
  %bound0259 = icmp ult ptr %scevgep120, %scevgep118
  %bound1260 = icmp ult ptr %scevgep121, %scevgep116
  %found.conflict261 = and i1 %bound0259, %bound1260
  %bound0263 = icmp ult ptr %scevgep120, %scevgep123
  %bound1264 = icmp ult ptr %scevgep122, %scevgep116
  %found.conflict265 = and i1 %bound0263, %bound1264
  %bound0267 = icmp ult ptr %scevgep121, %scevgep123
  %bound1268 = icmp ult ptr %scevgep122, %scevgep118
  %found.conflict269 = and i1 %bound0267, %bound1268
  %rdx.op = or <4 x i1> %i.bf, %i.bm
  %i.bn = bitcast <4 x i1> %rdx.op to i4
  %i.bo = icmp ne i4 %i.bn, 0
  %op.rdx = or i1 %i.bo, %found.conflict
end_hunk_9
begin_hunk_10_@_ZN3igl10doubleareaIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES3_EEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERNS1_15PlainObjectBaseIT1_EE:bb.a
  %i.ap = fsub double %i.am, %i.ao
  %i.aq = getelementptr [8 x i8], ptr %i.ae, i64 %i.o ; 2 uses
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !19
  %i.as = fsub double %i.ar, %i.ao
  %i.at = fneg double %i.ak
  %i.au = fmul double %i.ap, %i.at
  %i.av = call noundef double @llvm.fmuladd.f64(double %i.ai, double %i.as, double %i.au) ; 2 uses
  %i.aw = call double @llvm.fmuladd.f64(double %i.av, double %i.av, double %.promoted) ; 2 uses
  store double %i.aw, ptr %i.af, align 8, !tbaa !19
  %i.ax = load double, ptr %i.al, align 8, !tbaa !19
  %i.ay = load double, ptr %i.an, align 8, !tbaa !19 ; 2 uses
  %i.az = fsub double %i.ax, %i.ay
  %i.ba = load double, ptr %i.aq, align 8, !tbaa !19
  %i.bb = fsub double %i.ba, %i.ay
  %i.bc = getelementptr [8 x i8], ptr %i.w, i64 %i.r ; 2 uses
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !19
  %i.be = getelementptr [8 x i8], ptr %i.aa, i64 %i.r ; 2 uses
  %i.bf = load double, ptr %i.be, align 8, !tbaa !19 ; 2 uses
  %i.bg = fsub double %i.bd, %i.bf
  %i.bh = getelementptr [8 x i8], ptr %i.ae, i64 %i.r ; 2 uses
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !19
  %i.bj = fsub double %i.bi, %i.bf
  %i.bk = fneg double %i.bb
  %i.bl = fmul double %i.bg, %i.bk
  %i.bm = call noundef double @llvm.fmuladd.f64(double %i.az, double %i.bj, double %i.bl) ; 2 uses
  %i.bn = call double @llvm.fmuladd.f64(double %i.bm, double %i.bm, double %i.aw) ; 2 uses
  store double %i.bn, ptr %i.af, align 8, !tbaa !19
  %i.bo = load double, ptr %i.bc, align 8, !tbaa !19
  %i.bp = load double, ptr %i.be, align 8, !tbaa !19 ; 2 uses
  %i.bq = fsub double %i.bo, %i.bp
  %i.br = load double, ptr %i.bh, align 8, !tbaa !19
  %i.bs = fsub double %i.br, %i.bp
  %i.bt = load double, ptr %i.w, align 8, !tbaa !19
  %i.bu = load double, ptr %i.aa, align 8, !tbaa !19 ; 2 uses
  %i.bv = fsub double %i.bt, %i.bu
  %i.bw = load double, ptr %i.ae, align 8, !tbaa !19
  %i.bx = fsub double %i.bw, %i.bu
  %i.by = fneg double %i.bs
  %i.bz = fmul double %i.bv, %i.by
  %i.ca = call noundef double @llvm.fmuladd.f64(double %i.bq, double %i.bx, double %i.bz) ; 2 uses
  %i.cb = call double @llvm.fmuladd.f64(double %i.ca, double %i.ca, double %i.bn)
  store double %i.cb, ptr %i.af, align 8, !tbaa !19
  %i.cc = add nuw i64 %.04154, 1                  ; 2 uses
  %exitcond58.not = icmp eq i64 %i.cc, %i.h
  br i1 %exitcond58.not, label %._crit_edge, label %.preheader, !llvm.loop !616

bb.f:                                             ; preds = %bb.d
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.o

._crit_edge:                                      ; preds = %.preheader, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.ce = ptrtoint ptr %2 to i64
  store i64 %i.ce, ptr %6, align 8, !alias.scope !617
  invoke void @_ZN5Eigen5ArrayIdLin1ELin1ELi0ELin1ELin1EEC2INS_12CwiseUnaryOpINS_8internal14scalar_sqrt_opIdEEKNS_12ArrayWrapperINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEEEERKT_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(9) %6)
          to label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal14scalar_sqrt_opIdEEKNS_12ArrayWrapperINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEEE4evalEv.exit unwind label %bb.h

_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal14scalar_sqrt_opIdEEKNS_12ArrayWrapperINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEEE4evalEv.exit: ; preds = %._crit_edge
  %i.cf = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEaSINS_5ArrayIdLin1ELin1ELi0ELin1ELin1EEEEERS2_RKNS_9EigenBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.g unwind label %bb.i       ; 0 uses

bb.g:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal14scalar_sqrt_opIdEEKNS_12ArrayWrapperINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEEE4evalEv.exit
  %i.cg = load ptr, ptr %5, align 8, !tbaa !368
  call void @free(ptr noundef %i.cg) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %.loopexit

bb.h:                                             ; preds = %._crit_edge
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal14scalar_sqrt_opIdEEKNS_12ArrayWrapperINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEEE4evalEv.exit
  %i.ci = landingpad { ptr, i32 }
          cleanup
  %i.cj = load ptr, ptr %5, align 8, !tbaa !368
  call void @free(ptr noundef %i.cj) #23
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ci, %bb.i ], [ %i.ch, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.o

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i: ; preds = %bb.c
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.h, i64 noundef %i.h, i64 noundef 1)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader unwind label %bb.k

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader
  %i.ck = load ptr, ptr %1, align 8, !tbaa !21
  %i.cl = load ptr, ptr %0, align 8, !tbaa !368   ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !147 ; 3 uses
  %i.co = load i64, ptr %i.g, align 8, !tbaa !14  ; 2 uses
  %.idx.i47 = shl i64 %i.co, 3
  %i.cp = load ptr, ptr %2, align 8, !tbaa !368
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit

bb.k:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, %bb.m, %bb.l
  %i.cq = landingpad { ptr, i32 }
          cleanup
  %.pre = load ptr, ptr %3, align 8, !tbaa !22
  br label %bb.o

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %.lr.ph, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %.052 = phi i64 [ 0, %.lr.ph ], [ %i.dv, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit ] ; 3 uses
  %sext = shl i64 %.052, 32
  %i.cr = ashr exact i64 %sext, 30
  %i.cs = getelementptr i8, ptr %i.ck, i64 %i.cr  ; 3 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !25
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr [8 x i8], ptr %i.cl, i64 %i.cu ; 2 uses
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !19
  %i.cx = getelementptr i8, ptr %i.cs, i64 %.idx.i47
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !25
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr [8 x i8], ptr %i.cl, i64 %i.cz ; 2 uses
  %i.db = load double, ptr %i.da, align 8, !tbaa !19 ; 2 uses
  %i.dc = fsub double %i.cw, %i.db
  %i.dd = getelementptr [4 x i8], ptr %i.cs, i64 %i.co
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !25
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr [8 x i8], ptr %i.cl, i64 %i.df ; 2 uses
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !19
  %i.di = fsub double %i.dh, %i.db
  %i.dj = getelementptr [8 x i8], ptr %i.cv, i64 %i.cn
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !19
  %i.dl = getelementptr [8 x i8], ptr %i.da, i64 %i.cn
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !19 ; 2 uses
  %i.dn = fsub double %i.dk, %i.dm
  %i.do = getelementptr [8 x i8], ptr %i.dg, i64 %i.cn
  %i.dp = load double, ptr %i.do, align 8, !tbaa !19
  %i.dq = fsub double %i.dp, %i.dm
  %i.dr = fneg double %i.di
  %i.ds = fmul double %i.dn, %i.dr
  %i.dt = tail call noundef double @llvm.fmuladd.f64(double %i.dc, double %i.dq, double %i.ds)
  %i.du = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %.052
  store double %i.dt, ptr %i.du, align 8, !tbaa !19
  %i.dv = add nuw i64 %.052, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.dv, %i.h
  br i1 %exitcond.not, label %.loopexit, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit, !llvm.loop !620

bb.l:                                             ; preds = %bb.c
  invoke void @_ZN3igl12edge_lengthsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi3ELi0ELin1ELi3EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.m unwind label %bb.k

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN3igl10doubleareaIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IdLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_10MatrixBaseIT_EENS6_6ScalarERNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1) %3, double noundef 0.000000e+00, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %..loopexit_crit_edge unwind label %bb.k

..loopexit_crit_edge:                             ; preds = %bb.m
  %.pre59 = load ptr, ptr %3, align 8, !tbaa !22
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit, %..loopexit_crit_edge, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader, %bb.g
  %i.dw = phi ptr [ %.pre59, %..loopexit_crit_edge ], [ null, %bb.g ], [ null, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader ], [ null, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit ]
  call void @free(ptr noundef %i.dw) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.n

bb.n:                                             ; preds = %.loopexit, %bb.b
  ret void

bb.o:                                             ; preds = %bb.k, %bb.j, %bb.f
  %i.dx = phi ptr [ %.pre, %bb.k ], [ null, %bb.f ], [ null, %bb.j ]
  %.pn45 = phi { ptr, i32 } [ %i.cq, %bb.k ], [ %i.cd, %bb.f ], [ %.pn, %bb.j ]
  call void @free(ptr noundef %i.dx) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %.pn45
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl15doublearea_quadIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES3_EEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Matrix.97", align 8  ; 10 uses
  %4 = alloca %"class.Eigen::Matrix.21", align 8  ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !14   ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.c = shl nsw i64 %i.b, 1                      ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.d = icmp sgt i64 %i.b, 1537228672809129301
  br i1 %i.d, label %.noexc.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !43
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i: ; preds = %bb.a
  %5 = mul nsw i64 %i.b, 6
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread, label %bb.b

_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i
  store i64 %i.c, ptr %i.f, align 8, !tbaa !14
  store i64 3, ptr %i.g, align 8, !tbaa !9
  br label %._crit_edge

bb.b:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i
  %i.h = icmp sgt i64 %i.b, 0
  br i1 %i.h, label %bb.c, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.lr.ph

bb.c:                                             ; preds = %bb.b
  %i.i = icmp samesign ugt i64 %5, 4611686018427387903
  br i1 %i.i, label %.noexc, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i

.noexc:                                           ; preds = %bb.c
  %i.j = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.j, align 8, !tbaa !43
  tail call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i: ; preds = %bb.c
  %i.k = mul i64 %i.b, 24
  %i.l = tail call noalias ptr @malloc(i64 noundef %i.k) #25 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.noexc59, label %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread104

_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread104: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i
  store ptr %i.l, ptr %3, align 8, !tbaa !21
  br label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.lr.ph

.noexc59:                                         ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i
  %i.n = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.n, align 8, !tbaa !43
  tail call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
  unreachable

_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.lr.ph: ; preds = %bb.b, %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread104
  %.sink.i107 = phi ptr [ %i.l, %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread104 ], [ null, %bb.b ] ; 24 uses
  store i64 %i.c, ptr %i.f, align 8, !tbaa !14
  store i64 3, ptr %i.g, align 8, !tbaa !9
  %i.o = load ptr, ptr %1, align 8, !tbaa !21     ; 9 uses
  %.idx = shl i64 %i.b, 3                         ; 8 uses
  %.idx93 = shl i64 %i.b, 4                       ; 9 uses
  %.idx94 = mul i64 %i.b, 12                      ; 3 uses
  %min.iters.check = icmp ult i64 %i.b, 134
  br i1 %min.iters.check, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.lr.ph
  %i.p = add i64 %i.b, -1                         ; 2 uses
  %mul.result = shl i64 %i.p, 3                   ; 6 uses
  %mul.overflow = icmp ugt i64 %i.p, 2305843009213693951
  %i.q = getelementptr i8, ptr %.sink.i107, i64 %mul.result
  %i.r = icmp ult ptr %i.q, %.sink.i107
  %scevgep = getelementptr i8, ptr %.sink.i107, i64 %.idx ; 2 uses
  %i.s = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.t = icmp ult ptr %i.s, %scevgep
  %scevgep108 = getelementptr i8, ptr %.sink.i107, i64 %.idx93 ; 2 uses
  %i.u = getelementptr i8, ptr %scevgep108, i64 %mul.result
  %i.v = icmp ult ptr %i.u, %scevgep108
  %i.w = or i1 %i.v, %mul.overflow
  %scevgep109 = getelementptr i8, ptr %.sink.i107, i64 4 ; 2 uses
  %i.x = getelementptr i8, ptr %scevgep109, i64 %mul.result
  %i.y = icmp ult ptr %i.x, %scevgep109
  %i.z = getelementptr i8, ptr %.sink.i107, i64 %.idx
  %scevgep110 = getelementptr i8, ptr %i.z, i64 4 ; 2 uses
  %i.aa = getelementptr i8, ptr %scevgep110, i64 %mul.result
  %i.ab = icmp ult ptr %i.aa, %scevgep110
  %i.ac = getelementptr i8, ptr %.sink.i107, i64 %.idx93
  %scevgep111 = getelementptr i8, ptr %i.ac, i64 4 ; 2 uses
  %i.ad = getelementptr i8, ptr %scevgep111, i64 %mul.result
  %i.ae = icmp ult ptr %i.ad, %scevgep111
  %i.af = or i1 %i.t, %i.r
  %i.ag = or i1 %i.af, %i.w
  %i.ah = or i1 %i.y, %i.ag
  %i.ai = or i1 %i.ab, %i.ah
  %i.aj = or i1 %i.ae, %i.ai
  br i1 %i.aj, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %scevgep112 = getelementptr i8, ptr %i.o, i64 %.idx94 ; 12 uses
  %scevgep113 = getelementptr i8, ptr %i.o, i64 %.idx93 ; 6 uses
  %i.ak = getelementptr i8, ptr %.sink.i107, i64 %.idx
  %scevgep114 = getelementptr i8, ptr %i.ak, i64 -4 ; 6 uses
  %scevgep115 = getelementptr i8, ptr %.sink.i107, i64 %.idx ; 15 uses
  %i.al = getelementptr i8, ptr %.sink.i107, i64 %.idx93
  %scevgep116 = getelementptr i8, ptr %i.al, i64 -4 ; 8 uses
  %scevgep117 = getelementptr i8, ptr %.sink.i107, i64 %.idx93 ; 14 uses
  %i.am = mul i64 %i.b, 24                        ; 2 uses
  %i.an = getelementptr i8, ptr %.sink.i107, i64 %i.am
  %scevgep118 = getelementptr i8, ptr %i.an, i64 -4 ; 7 uses
  %scevgep119 = getelementptr i8, ptr %.sink.i107, i64 4 ; 7 uses
  %i.ao = getelementptr i8, ptr %.sink.i107, i64 %.idx
  %scevgep120 = getelementptr i8, ptr %i.ao, i64 4 ; 7 uses
  %i.ap = getelementptr i8, ptr %.sink.i107, i64 %.idx93
  %scevgep121 = getelementptr i8, ptr %i.ap, i64 4 ; 8 uses
  %scevgep122 = getelementptr i8, ptr %.sink.i107, i64 %i.am ; 8 uses
  %scevgep123 = getelementptr i8, ptr %i.o, i64 %.idx ; 12 uses
  %i.aq = shl nuw i64 %i.b, 2
  %scevgep124 = getelementptr i8, ptr %i.o, i64 %i.aq ; 9 uses
  %bound0 = icmp ult ptr %scevgep112, %scevgep114
  %bound1 = icmp ult ptr %.sink.i107, %scevgep113
  %found.conflict = and i1 %bound0, %bound1
  %bound0125 = icmp ult ptr %scevgep112, %scevgep116
  %bound1126 = icmp ult ptr %scevgep115, %scevgep113
  %found.conflict127 = and i1 %bound0125, %bound1126
  %bound0128 = icmp ult ptr %scevgep112, %scevgep118
  %bound1129 = icmp ult ptr %scevgep117, %scevgep113
  %found.conflict130 = and i1 %bound0128, %bound1129
  %bound0132 = icmp ult ptr %scevgep112, %scevgep115
  %bound1133 = icmp ult ptr %scevgep119, %scevgep113
  %found.conflict134 = and i1 %bound0132, %bound1133
  %bound0136 = icmp ult ptr %scevgep112, %scevgep117
  %bound1137 = icmp ult ptr %scevgep120, %scevgep113
  %found.conflict138 = and i1 %bound0136, %bound1137
  %bound0140 = icmp ult ptr %scevgep112, %scevgep122
  %bound1141 = icmp ult ptr %scevgep121, %scevgep113
  %found.conflict142 = and i1 %bound0140, %bound1141
  %bound0144 = icmp ult ptr %scevgep123, %scevgep114
  %bound1145 = icmp ult ptr %.sink.i107, %scevgep112
  %found.conflict146 = and i1 %bound0144, %bound1145
  %bound0148 = icmp ult ptr %scevgep123, %scevgep116
  %bound1149 = icmp ult ptr %scevgep115, %scevgep112
  %found.conflict150 = and i1 %bound0148, %bound1149
  %bound0152 = icmp ult ptr %scevgep123, %scevgep118
  %bound1153 = icmp ult ptr %scevgep117, %scevgep112
  %found.conflict154 = and i1 %bound0152, %bound1153
  %bound0156 = icmp ult ptr %scevgep123, %scevgep115
  %bound1157 = icmp ult ptr %scevgep119, %scevgep112
  %found.conflict158 = and i1 %bound0156, %bound1157
  %bound0160 = icmp ult ptr %scevgep123, %scevgep117
  %bound1161 = icmp ult ptr %scevgep120, %scevgep112
  %found.conflict162 = and i1 %bound0160, %bound1161
  %bound0164 = icmp ult ptr %scevgep123, %scevgep122
  %bound1165 = icmp ult ptr %scevgep121, %scevgep112
  %found.conflict166 = and i1 %bound0164, %bound1165
  %bound0168 = icmp ult ptr %scevgep124, %scevgep114
  %bound1169 = icmp ult ptr %.sink.i107, %scevgep123
  %found.conflict170 = and i1 %bound0168, %bound1169
  %bound0172 = icmp ult ptr %scevgep124, %scevgep116
  %bound1173 = icmp ult ptr %scevgep115, %scevgep123
  %found.conflict174 = and i1 %bound0172, %bound1173
  %bound0176 = icmp ult ptr %scevgep124, %scevgep118
  %bound1177 = icmp ult ptr %scevgep117, %scevgep123
  %found.conflict178 = and i1 %bound0176, %bound1177
  %bound0180 = icmp ult ptr %scevgep124, %scevgep115
  %bound1181 = icmp ult ptr %scevgep119, %scevgep123
  %found.conflict182 = and i1 %bound0180, %bound1181
  %bound0184 = icmp ult ptr %scevgep124, %scevgep117
  %bound1185 = icmp ult ptr %scevgep120, %scevgep123
  %found.conflict186 = and i1 %bound0184, %bound1185
  %bound0188 = icmp ult ptr %scevgep124, %scevgep122
  %bound1189 = icmp ult ptr %scevgep121, %scevgep123
  %found.conflict190 = and i1 %bound0188, %bound1189
  %bound0192 = icmp ult ptr %i.o, %scevgep114
  %bound1193 = icmp ult ptr %.sink.i107, %scevgep124
  %found.conflict194 = and i1 %bound0192, %bound1193
  %bound0196 = icmp ult ptr %i.o, %scevgep116
  %bound1197 = icmp ult ptr %scevgep115, %scevgep124
  %found.conflict198 = and i1 %bound0196, %bound1197
  %i.ar = insertelement <4 x ptr> poison, ptr %i.o, i64 0
  %i.as = shufflevector <4 x ptr> %i.ar, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.at = insertelement <4 x ptr> poison, ptr %scevgep118, i64 0
  %i.au = insertelement <4 x ptr> %i.at, ptr %scevgep115, i64 1
  %i.av = insertelement <4 x ptr> %i.au, ptr %scevgep117, i64 2
  %i.aw = insertelement <4 x ptr> %i.av, ptr %scevgep122, i64 3 ; 2 uses
  %i.ax = icmp ult <4 x ptr> %i.as, %i.aw
  %i.ay = insertelement <4 x ptr> poison, ptr %scevgep117, i64 0
  %i.az = insertelement <4 x ptr> %i.ay, ptr %scevgep119, i64 1
  %i.ba = insertelement <4 x ptr> %i.az, ptr %scevgep120, i64 2
  %i.bb = insertelement <4 x ptr> %i.ba, ptr %scevgep121, i64 3 ; 2 uses
  %i.bc = insertelement <4 x ptr> poison, ptr %scevgep124, i64 0
  %i.bd = shufflevector <4 x ptr> %i.bc, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.be = icmp ult <4 x ptr> %i.bb, %i.bd
  %i.bf = and <4 x i1> %i.ax, %i.be
  %bound0216 = icmp ult ptr %.sink.i107, %scevgep116
  %bound1217 = icmp ult ptr %scevgep115, %scevgep114
  %found.conflict218 = and i1 %bound0216, %bound1217
  %i.bg = insertelement <4 x ptr> poison, ptr %.sink.i107, i64 0
  %i.bh = shufflevector <4 x ptr> %i.bg, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bi = icmp ult <4 x ptr> %i.bh, %i.aw
  %i.bj = insertelement <4 x ptr> poison, ptr %scevgep114, i64 0
  %i.bk = shufflevector <4 x ptr> %i.bj, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bl = icmp ult <4 x ptr> %i.bb, %i.bk
  %i.bm = and <4 x i1> %i.bi, %i.bl
  %bound0236 = icmp ult ptr %scevgep115, %scevgep118
  %bound1237 = icmp ult ptr %scevgep117, %scevgep116
  %found.conflict238 = and i1 %bound0236, %bound1237
  %bound0241 = icmp ult ptr %scevgep115, %scevgep117
  %bound1242 = icmp ult ptr %scevgep120, %scevgep116
  %found.conflict243 = and i1 %bound0241, %bound1242
  %bound0245 = icmp ult ptr %scevgep115, %scevgep122
  %bound1246 = icmp ult ptr %scevgep121, %scevgep116
  %found.conflict247 = and i1 %bound0245, %bound1246
  %bound0249 = icmp ult ptr %scevgep117, %scevgep115
  %bound1250 = icmp ult ptr %scevgep119, %scevgep118
  %found.conflict251 = and i1 %bound0249, %bound1250
  %bound0254 = icmp ult ptr %scevgep117, %scevgep122
  %bound1255 = icmp ult ptr %scevgep121, %scevgep118
  %found.conflict256 = and i1 %bound0254, %bound1255
  %bound0258 = icmp ult ptr %scevgep119, %scevgep117
  %bound1259 = icmp ult ptr %scevgep120, %scevgep115
  %found.conflict260 = and i1 %bound0258, %bound1259
  %bound0262 = icmp ult ptr %scevgep119, %scevgep122
  %bound1263 = icmp ult ptr %scevgep121, %scevgep115
  %found.conflict264 = and i1 %bound0262, %bound1263
  %bound0266 = icmp ult ptr %scevgep120, %scevgep122
  %bound1267 = icmp ult ptr %scevgep121, %scevgep117
  %found.conflict268 = and i1 %bound0266, %bound1267
  %rdx.op = or <4 x i1> %i.bf, %i.bm
  %i.bn = bitcast <4 x i1> %rdx.op to i4
  %i.bo = icmp ne i4 %i.bn, 0
  %op.rdx = or i1 %i.bo, %found.conflict
end_hunk_10
begin_hunk_11_@_ZN3igl10doubleareaIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE:bb.a
  %i.cw = getelementptr inbounds [8 x i8], ptr %.pre.i.i, i64 %i.cv
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.cv
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !19
  %.scalar.i.i.i.i.i.i.i.i.i.i.i.i.2 = call noundef double @llvm.sqrt.f64(double %i.cy)
  store double %.scalar.i.i.i.i.i.i.i.i.i.i.i.i.2, ptr %i.cw, align 8, !tbaa !19
  %i.cz = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 3   ; 2 uses
  %i.da = getelementptr inbounds [8 x i8], ptr %.pre.i.i, i64 %i.cz
  %i.db = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.cz
  %i.dc = load double, ptr %i.db, align 8, !tbaa !19
  %.scalar.i.i.i.i.i.i.i.i.i.i.i.i.3 = call noundef double @llvm.sqrt.f64(double %i.dc)
  store double %.scalar.i.i.i.i.i.i.i.i.i.i.i.i.3, ptr %i.da, align 8, !tbaa !19
  %i.dd = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 4   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.dd, %.pr.i.i.i.i.i.i.i49
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.3, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal14scalar_sqrt_opIdEEKNS_12ArrayWrapperINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEEE4evalEv.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !948

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i.i.i
  %.011.i.i.i.i.i.i.i.i = phi i64 [ %i.di, %.lr.ph.i.i.i.i.i.i.i.i ], [ 0, %bb.c ] ; 3 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %.011.i.i.i.i.i.i.i.i
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %.011.i.i.i.i.i.i.i.i
  %i.dg = load <2 x double>, ptr %i.df, align 16, !tbaa !37
  %i.dh = call noundef <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.dg)
  store <2 x double> %i.dh, ptr %i.de, align 16, !tbaa !37
  %i.di = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.dj = icmp slt i64 %i.di, %i.bu
  br i1 %i.dj, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, !llvm.loop !38

bb.d:                                             ; preds = %thread-pre-split.i.i.i.i.i.i.i
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal14scalar_sqrt_opIdEEKNS_12ArrayWrapperINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEEE4evalEv.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i.i.i, %._crit_edge
  %i.dl = load i64, ptr %i.bs, align 8, !tbaa !15
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.dl, i64 noundef 1)
          to label %.noexc59 unwind label %bb.f

.noexc59:                                         ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal14scalar_sqrt_opIdEEKNS_12ArrayWrapperINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEEE4evalEv.exit
  %i.dm = load ptr, ptr %3, align 8, !tbaa !18    ; 8 uses
  %i.dn = ptrtoaddr ptr %i.dm to i64
  %i.do = load i64, ptr %i.bs, align 8, !tbaa !15 ; 3 uses
  %i.dp = load i64, ptr %i.f, align 8, !tbaa !15
  %.not.i.i.i.i.i.i.i.i50 = icmp eq i64 %i.dp, %i.do
  br i1 %.not.i.i.i.i.i.i.i.i50, label %bb.e, label %thread-pre-split.i.i.i.i.i.i.i51

thread-pre-split.i.i.i.i.i.i.i51:                 ; preds = %.noexc59
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.do, i64 noundef 1)
          to label %.noexc60 unwind label %bb.f

.noexc60:                                         ; preds = %thread-pre-split.i.i.i.i.i.i.i51
  %.pr.i.i.i.i.i.i.i52 = load i64, ptr %i.f, align 8, !tbaa !15
  br label %bb.e

bb.e:                                             ; preds = %.noexc60, %.noexc59
  %i.dq = phi i64 [ %.pr.i.i.i.i.i.i.i52, %.noexc60 ], [ %i.do, %.noexc59 ] ; 7 uses
  %i.dr = load ptr, ptr %2, align 8, !tbaa !18    ; 8 uses
  %i.ds = ptrtoaddr ptr %i.dr to i64
  %i.dt = sdiv i64 %i.dq, 2                       ; 2 uses
  %i.du = shl nsw i64 %i.dt, 1                    ; 5 uses
  %i.dv = icmp sgt i64 %i.dq, 1
  br i1 %i.dv, label %.lr.ph.i.i.i.i.i.i.i.i57, label %._crit_edge.i.i.i.i.i.i.i.i53

._crit_edge.i.i.i.i.i.i.i.i53:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i57, %bb.e
  %i.dw = icmp slt i64 %i.du, %i.dq
  br i1 %i.dw, label %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader, label %.loopexit

.lr.ph.i.i.i.i.i.i.i.i.i54.preheader:             ; preds = %._crit_edge.i.i.i.i.i.i.i.i53
  %i.dx = shl nsw i64 %i.dt, 1
  %i.dy = sub i64 %i.dq, %i.dx                    ; 3 uses
  %min.iters.check89 = icmp ult i64 %i.dy, 8
  %i.dz = sub i64 %i.dn, %i.ds
  %diff.check87 = icmp ugt i64 %i.dz, -32
  %or.cond100 = select i1 %min.iters.check89, i1 true, i1 %diff.check87
  br i1 %or.cond100, label %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader101, label %vector.ph90

vector.ph90:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader
  %n.vec91 = and i64 %i.dy, -4                    ; 3 uses
  %i.ea = add i64 %i.du, %n.vec91
  br label %vector.body92

vector.body92:                                    ; preds = %vector.body92, %vector.ph90
  %index93 = phi i64 [ 0, %vector.ph90 ], [ %index.next96, %vector.body92 ] ; 2 uses
  %i.eb = add i64 %i.du, %index93                 ; 2 uses
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.dr, i64 %i.eb ; 2 uses
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %i.eb ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %wide.load94 = load <2 x double>, ptr %i.ed, align 8, !tbaa !19
  %wide.load95 = load <2 x double>, ptr %i.ee, align 8, !tbaa !19
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  store <2 x double> %wide.load94, ptr %i.ec, align 8, !tbaa !19
  store <2 x double> %wide.load95, ptr %i.ef, align 8, !tbaa !19
  %index.next96 = add nuw i64 %index93, 4         ; 2 uses
  %i.eg = icmp eq i64 %index.next96, %n.vec91
  br i1 %i.eg, label %middle.block97, label %vector.body92, !llvm.loop !949

middle.block97:                                   ; preds = %vector.body92
  %cmp.n98 = icmp eq i64 %i.dy, %n.vec91
  br i1 %cmp.n98, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader101

.lr.ph.i.i.i.i.i.i.i.i.i54.preheader101:          ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader, %middle.block97
  %.05.i.i.i.i.i.i.i.i.i55.ph = phi i64 [ %i.du, %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader ], [ %i.ea, %middle.block97 ] ; 4 uses
  %i.eh = sub i64 %i.dq, %.05.i.i.i.i.i.i.i.i.i55.ph
  %xtraiter103 = and i64 %i.eh, 3                 ; 2 uses
  %lcmp.mod104.not = icmp eq i64 %xtraiter103, 0
  br i1 %lcmp.mod104.not, label %.lr.ph.i.i.i.i.i.i.i.i.i54.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i54.prol

.lr.ph.i.i.i.i.i.i.i.i.i54.prol:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader101, %.lr.ph.i.i.i.i.i.i.i.i.i54.prol
  %.05.i.i.i.i.i.i.i.i.i55.prol = phi i64 [ %i.el, %.lr.ph.i.i.i.i.i.i.i.i.i54.prol ], [ %.05.i.i.i.i.i.i.i.i.i55.ph, %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader101 ] ; 3 uses
  %prol.iter105 = phi i64 [ %prol.iter105.next, %.lr.ph.i.i.i.i.i.i.i.i.i54.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader101 ]
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.dr, i64 %.05.i.i.i.i.i.i.i.i.i55.prol
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %.05.i.i.i.i.i.i.i.i.i55.prol
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !19
  store double %i.ek, ptr %i.ei, align 8, !tbaa !19
  %i.el = add nsw i64 %.05.i.i.i.i.i.i.i.i.i55.prol, 1 ; 2 uses
  %prol.iter105.next = add i64 %prol.iter105, 1   ; 2 uses
  %prol.iter105.cmp.not = icmp eq i64 %prol.iter105.next, %xtraiter103
  br i1 %prol.iter105.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i54.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i54.prol, !llvm.loop !950

.lr.ph.i.i.i.i.i.i.i.i.i54.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i54.prol, %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader101
  %.05.i.i.i.i.i.i.i.i.i55.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i55.ph, %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader101 ], [ %i.el, %.lr.ph.i.i.i.i.i.i.i.i.i54.prol ]
  %i.em = sub i64 %.05.i.i.i.i.i.i.i.i.i55.ph, %i.dq
  %i.en = icmp ugt i64 %i.em, -4
  br i1 %i.en, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i54

.lr.ph.i.i.i.i.i.i.i.i.i54:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i54.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i54
  %.05.i.i.i.i.i.i.i.i.i55 = phi i64 [ %i.fd, %.lr.ph.i.i.i.i.i.i.i.i.i54 ], [ %.05.i.i.i.i.i.i.i.i.i55.unr, %.lr.ph.i.i.i.i.i.i.i.i.i54.prol.loopexit ] ; 6 uses
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.dr, i64 %.05.i.i.i.i.i.i.i.i.i55
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %.05.i.i.i.i.i.i.i.i.i55
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !19
  store double %i.eq, ptr %i.eo, align 8, !tbaa !19
  %i.er = add nsw i64 %.05.i.i.i.i.i.i.i.i.i55, 1 ; 2 uses
  %i.es = getelementptr inbounds [8 x i8], ptr %i.dr, i64 %i.er
  %i.et = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %i.er
  %i.eu = load double, ptr %i.et, align 8, !tbaa !19
  store double %i.eu, ptr %i.es, align 8, !tbaa !19
  %i.ev = add nsw i64 %.05.i.i.i.i.i.i.i.i.i55, 2 ; 2 uses
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.dr, i64 %i.ev
  %i.ex = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %i.ev
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !19
  store double %i.ey, ptr %i.ew, align 8, !tbaa !19
  %i.ez = add nsw i64 %.05.i.i.i.i.i.i.i.i.i55, 3 ; 2 uses
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.dr, i64 %i.ez
  %i.fb = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %i.ez
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !19
  store double %i.fc, ptr %i.fa, align 8, !tbaa !19
  %i.fd = add nsw i64 %.05.i.i.i.i.i.i.i.i.i55, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i56.3 = icmp eq i64 %i.fd, %i.dq
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i56.3, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i54, !llvm.loop !951

.lr.ph.i.i.i.i.i.i.i.i57:                         ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i.i.i57
  %.011.i.i.i.i.i.i.i.i58 = phi i64 [ %i.fh, %.lr.ph.i.i.i.i.i.i.i.i57 ], [ 0, %bb.e ] ; 3 uses
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %.011.i.i.i.i.i.i.i.i58
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %.011.i.i.i.i.i.i.i.i58
  %i.fg = load <2 x double>, ptr %i.ff, align 16, !tbaa !37
  store <2 x double> %i.fg, ptr %i.fe, align 16, !tbaa !37
  %i.fh = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i58, 2 ; 2 uses
  %i.fi = icmp slt i64 %i.fh, %i.du
  br i1 %i.fi, label %.lr.ph.i.i.i.i.i.i.i.i57, label %._crit_edge.i.i.i.i.i.i.i.i53, !llvm.loop !42

bb.f:                                             ; preds = %thread-pre-split.i.i.i.i.i.i.i51, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal14scalar_sqrt_opIdEEKNS_12ArrayWrapperINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEEE4evalEv.exit
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %bb.f
  %.pn = phi { ptr, i32 } [ %i.fj, %bb.f ], [ %i.dk, %bb.d ]
  %i.fk = load ptr, ptr %3, align 8, !tbaa !18
  call void @free(ptr noundef %i.fk) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %.pn

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i54.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i54, %middle.block97, %._crit_edge.i.i.i.i.i.i.i.i53
  %i.fl = load ptr, ptr %3, align 8, !tbaa !18
  call void @free(ptr noundef %i.fl) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.g

bb.g:                                             ; preds = %.loopexit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl15doublearea_quadIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Matrix.97", align 8  ; 10 uses
  %4 = alloca %"class.Eigen::Matrix.21", align 8  ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !14   ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.c = shl nsw i64 %i.b, 1                      ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.d = icmp sgt i64 %i.b, 1537228672809129301
  br i1 %i.d, label %.noexc.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !43
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i: ; preds = %bb.a
  %5 = mul nsw i64 %i.b, 6
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread, label %bb.b

_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i
  store i64 %i.c, ptr %i.f, align 8, !tbaa !14
  store i64 3, ptr %i.g, align 8, !tbaa !9
  br label %._crit_edge

bb.b:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i
  %i.h = icmp sgt i64 %i.b, 0
  br i1 %i.h, label %bb.c, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.lr.ph

bb.c:                                             ; preds = %bb.b
  %i.i = icmp samesign ugt i64 %5, 4611686018427387903
  br i1 %i.i, label %.noexc, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i

.noexc:                                           ; preds = %bb.c
  %i.j = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.j, align 8, !tbaa !43
  tail call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i: ; preds = %bb.c
  %i.k = mul i64 %i.b, 24
  %i.l = tail call noalias ptr @malloc(i64 noundef %i.k) #25 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.noexc59, label %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread105

_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread105: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i
  store ptr %i.l, ptr %3, align 8, !tbaa !21
  br label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.lr.ph

.noexc59:                                         ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i
  %i.n = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.n, align 8, !tbaa !43
  tail call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
  unreachable

_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.lr.ph: ; preds = %bb.b, %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread105
  %.sink.i108 = phi ptr [ %i.l, %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread105 ], [ null, %bb.b ] ; 24 uses
  store i64 %i.c, ptr %i.f, align 8, !tbaa !14
  store i64 3, ptr %i.g, align 8, !tbaa !9
  %i.o = load ptr, ptr %1, align 8, !tbaa !21     ; 9 uses
  %.idx = shl i64 %i.b, 3                         ; 8 uses
  %.idx93 = shl i64 %i.b, 4                       ; 9 uses
  %.idx94 = mul i64 %i.b, 12                      ; 3 uses
  %min.iters.check = icmp ult i64 %i.b, 134
  br i1 %min.iters.check, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.lr.ph
  %i.p = add i64 %i.b, -1                         ; 2 uses
  %mul.result = shl i64 %i.p, 3                   ; 6 uses
  %mul.overflow = icmp ugt i64 %i.p, 2305843009213693951
  %i.q = getelementptr i8, ptr %.sink.i108, i64 %mul.result
  %i.r = icmp ult ptr %i.q, %.sink.i108
  %scevgep = getelementptr i8, ptr %.sink.i108, i64 %.idx ; 2 uses
  %i.s = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.t = icmp ult ptr %i.s, %scevgep
  %scevgep109 = getelementptr i8, ptr %.sink.i108, i64 %.idx93 ; 2 uses
  %i.u = getelementptr i8, ptr %scevgep109, i64 %mul.result
  %i.v = icmp ult ptr %i.u, %scevgep109
  %i.w = or i1 %i.v, %mul.overflow
  %scevgep110 = getelementptr i8, ptr %.sink.i108, i64 4 ; 2 uses
  %i.x = getelementptr i8, ptr %scevgep110, i64 %mul.result
  %i.y = icmp ult ptr %i.x, %scevgep110
  %i.z = getelementptr i8, ptr %.sink.i108, i64 %.idx
  %scevgep111 = getelementptr i8, ptr %i.z, i64 4 ; 2 uses
  %i.aa = getelementptr i8, ptr %scevgep111, i64 %mul.result
  %i.ab = icmp ult ptr %i.aa, %scevgep111
  %i.ac = getelementptr i8, ptr %.sink.i108, i64 %.idx93
  %scevgep112 = getelementptr i8, ptr %i.ac, i64 4 ; 2 uses
  %i.ad = getelementptr i8, ptr %scevgep112, i64 %mul.result
  %i.ae = icmp ult ptr %i.ad, %scevgep112
  %i.af = or i1 %i.t, %i.r
  %i.ag = or i1 %i.af, %i.w
  %i.ah = or i1 %i.y, %i.ag
  %i.ai = or i1 %i.ab, %i.ah
  %i.aj = or i1 %i.ae, %i.ai
  br i1 %i.aj, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %scevgep113 = getelementptr i8, ptr %i.o, i64 %.idx94 ; 12 uses
  %scevgep114 = getelementptr i8, ptr %i.o, i64 %.idx93 ; 6 uses
  %i.ak = getelementptr i8, ptr %.sink.i108, i64 %.idx
  %scevgep115 = getelementptr i8, ptr %i.ak, i64 -4 ; 6 uses
  %scevgep116 = getelementptr i8, ptr %.sink.i108, i64 %.idx ; 15 uses
  %i.al = getelementptr i8, ptr %.sink.i108, i64 %.idx93
  %scevgep117 = getelementptr i8, ptr %i.al, i64 -4 ; 8 uses
  %scevgep118 = getelementptr i8, ptr %.sink.i108, i64 %.idx93 ; 14 uses
  %i.am = mul i64 %i.b, 24                        ; 2 uses
  %i.an = getelementptr i8, ptr %.sink.i108, i64 %i.am
  %scevgep119 = getelementptr i8, ptr %i.an, i64 -4 ; 7 uses
  %scevgep120 = getelementptr i8, ptr %.sink.i108, i64 4 ; 7 uses
  %i.ao = getelementptr i8, ptr %.sink.i108, i64 %.idx
  %scevgep121 = getelementptr i8, ptr %i.ao, i64 4 ; 7 uses
  %i.ap = getelementptr i8, ptr %.sink.i108, i64 %.idx93
  %scevgep122 = getelementptr i8, ptr %i.ap, i64 4 ; 8 uses
  %scevgep123 = getelementptr i8, ptr %.sink.i108, i64 %i.am ; 8 uses
  %scevgep124 = getelementptr i8, ptr %i.o, i64 %.idx ; 12 uses
  %i.aq = shl nuw i64 %i.b, 2
  %scevgep125 = getelementptr i8, ptr %i.o, i64 %i.aq ; 9 uses
  %bound0 = icmp ult ptr %scevgep113, %scevgep115
  %bound1 = icmp ult ptr %.sink.i108, %scevgep114
  %found.conflict = and i1 %bound0, %bound1
  %bound0126 = icmp ult ptr %scevgep113, %scevgep117
  %bound1127 = icmp ult ptr %scevgep116, %scevgep114
  %found.conflict128 = and i1 %bound0126, %bound1127
  %bound0129 = icmp ult ptr %scevgep113, %scevgep119
  %bound1130 = icmp ult ptr %scevgep118, %scevgep114
  %found.conflict131 = and i1 %bound0129, %bound1130
  %bound0133 = icmp ult ptr %scevgep113, %scevgep116
  %bound1134 = icmp ult ptr %scevgep120, %scevgep114
  %found.conflict135 = and i1 %bound0133, %bound1134
  %bound0137 = icmp ult ptr %scevgep113, %scevgep118
  %bound1138 = icmp ult ptr %scevgep121, %scevgep114
  %found.conflict139 = and i1 %bound0137, %bound1138
  %bound0141 = icmp ult ptr %scevgep113, %scevgep123
  %bound1142 = icmp ult ptr %scevgep122, %scevgep114
  %found.conflict143 = and i1 %bound0141, %bound1142
  %bound0145 = icmp ult ptr %scevgep124, %scevgep115
  %bound1146 = icmp ult ptr %.sink.i108, %scevgep113
  %found.conflict147 = and i1 %bound0145, %bound1146
  %bound0149 = icmp ult ptr %scevgep124, %scevgep117
  %bound1150 = icmp ult ptr %scevgep116, %scevgep113
  %found.conflict151 = and i1 %bound0149, %bound1150
  %bound0153 = icmp ult ptr %scevgep124, %scevgep119
  %bound1154 = icmp ult ptr %scevgep118, %scevgep113
  %found.conflict155 = and i1 %bound0153, %bound1154
  %bound0157 = icmp ult ptr %scevgep124, %scevgep116
  %bound1158 = icmp ult ptr %scevgep120, %scevgep113
  %found.conflict159 = and i1 %bound0157, %bound1158
  %bound0161 = icmp ult ptr %scevgep124, %scevgep118
  %bound1162 = icmp ult ptr %scevgep121, %scevgep113
  %found.conflict163 = and i1 %bound0161, %bound1162
  %bound0165 = icmp ult ptr %scevgep124, %scevgep123
  %bound1166 = icmp ult ptr %scevgep122, %scevgep113
  %found.conflict167 = and i1 %bound0165, %bound1166
  %bound0169 = icmp ult ptr %scevgep125, %scevgep115
  %bound1170 = icmp ult ptr %.sink.i108, %scevgep124
  %found.conflict171 = and i1 %bound0169, %bound1170
  %bound0173 = icmp ult ptr %scevgep125, %scevgep117
  %bound1174 = icmp ult ptr %scevgep116, %scevgep124
  %found.conflict175 = and i1 %bound0173, %bound1174
  %bound0177 = icmp ult ptr %scevgep125, %scevgep119
  %bound1178 = icmp ult ptr %scevgep118, %scevgep124
  %found.conflict179 = and i1 %bound0177, %bound1178
  %bound0181 = icmp ult ptr %scevgep125, %scevgep116
  %bound1182 = icmp ult ptr %scevgep120, %scevgep124
  %found.conflict183 = and i1 %bound0181, %bound1182
  %bound0185 = icmp ult ptr %scevgep125, %scevgep118
  %bound1186 = icmp ult ptr %scevgep121, %scevgep124
  %found.conflict187 = and i1 %bound0185, %bound1186
  %bound0189 = icmp ult ptr %scevgep125, %scevgep123
  %bound1190 = icmp ult ptr %scevgep122, %scevgep124
  %found.conflict191 = and i1 %bound0189, %bound1190
  %bound0193 = icmp ult ptr %i.o, %scevgep115
  %bound1194 = icmp ult ptr %.sink.i108, %scevgep125
  %found.conflict195 = and i1 %bound0193, %bound1194
  %bound0197 = icmp ult ptr %i.o, %scevgep117
  %bound1198 = icmp ult ptr %scevgep116, %scevgep125
  %found.conflict199 = and i1 %bound0197, %bound1198
  %i.ar = insertelement <4 x ptr> poison, ptr %i.o, i64 0
  %i.as = shufflevector <4 x ptr> %i.ar, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.at = insertelement <4 x ptr> poison, ptr %scevgep119, i64 0
  %i.au = insertelement <4 x ptr> %i.at, ptr %scevgep116, i64 1
  %i.av = insertelement <4 x ptr> %i.au, ptr %scevgep118, i64 2
  %i.aw = insertelement <4 x ptr> %i.av, ptr %scevgep123, i64 3 ; 2 uses
  %i.ax = icmp ult <4 x ptr> %i.as, %i.aw
  %i.ay = insertelement <4 x ptr> poison, ptr %scevgep118, i64 0
  %i.az = insertelement <4 x ptr> %i.ay, ptr %scevgep120, i64 1
  %i.ba = insertelement <4 x ptr> %i.az, ptr %scevgep121, i64 2
  %i.bb = insertelement <4 x ptr> %i.ba, ptr %scevgep122, i64 3 ; 2 uses
  %i.bc = insertelement <4 x ptr> poison, ptr %scevgep125, i64 0
  %i.bd = shufflevector <4 x ptr> %i.bc, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.be = icmp ult <4 x ptr> %i.bb, %i.bd
  %i.bf = and <4 x i1> %i.ax, %i.be
  %bound0217 = icmp ult ptr %.sink.i108, %scevgep117
  %bound1218 = icmp ult ptr %scevgep116, %scevgep115
  %found.conflict219 = and i1 %bound0217, %bound1218
  %i.bg = insertelement <4 x ptr> poison, ptr %.sink.i108, i64 0
  %i.bh = shufflevector <4 x ptr> %i.bg, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bi = icmp ult <4 x ptr> %i.bh, %i.aw
  %i.bj = insertelement <4 x ptr> poison, ptr %scevgep115, i64 0
  %i.bk = shufflevector <4 x ptr> %i.bj, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bl = icmp ult <4 x ptr> %i.bb, %i.bk
  %i.bm = and <4 x i1> %i.bi, %i.bl
  %bound0237 = icmp ult ptr %scevgep116, %scevgep119
  %bound1238 = icmp ult ptr %scevgep118, %scevgep117
  %found.conflict239 = and i1 %bound0237, %bound1238
  %bound0242 = icmp ult ptr %scevgep116, %scevgep118
  %bound1243 = icmp ult ptr %scevgep121, %scevgep117
  %found.conflict244 = and i1 %bound0242, %bound1243
  %bound0246 = icmp ult ptr %scevgep116, %scevgep123
  %bound1247 = icmp ult ptr %scevgep122, %scevgep117
  %found.conflict248 = and i1 %bound0246, %bound1247
  %bound0250 = icmp ult ptr %scevgep118, %scevgep116
  %bound1251 = icmp ult ptr %scevgep120, %scevgep119
  %found.conflict252 = and i1 %bound0250, %bound1251
  %bound0255 = icmp ult ptr %scevgep118, %scevgep123
  %bound1256 = icmp ult ptr %scevgep122, %scevgep119
  %found.conflict257 = and i1 %bound0255, %bound1256
  %bound0259 = icmp ult ptr %scevgep120, %scevgep118
  %bound1260 = icmp ult ptr %scevgep121, %scevgep116
  %found.conflict261 = and i1 %bound0259, %bound1260
  %bound0263 = icmp ult ptr %scevgep120, %scevgep123
  %bound1264 = icmp ult ptr %scevgep122, %scevgep116
  %found.conflict265 = and i1 %bound0263, %bound1264
  %bound0267 = icmp ult ptr %scevgep121, %scevgep123
  %bound1268 = icmp ult ptr %scevgep122, %scevgep118
  %found.conflict269 = and i1 %bound0267, %bound1268
  %rdx.op = or <4 x i1> %i.bf, %i.bm
  %i.bn = bitcast <4 x i1> %rdx.op to i4
  %i.bo = icmp ne i4 %i.bn, 0
  %op.rdx = or i1 %i.bo, %found.conflict
end_hunk_11
begin_hunk_12_@_ZN3igl10doubleareaIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE:bb.a
  %i.dg = getelementptr inbounds [8 x i8], ptr %.pre.i.i, i64 %i.df
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.df
  %i.di = load double, ptr %i.dh, align 8, !tbaa !19
  %.scalar.i.i.i.i.i.i.i.i.i.i.i.i.2 = call noundef double @llvm.sqrt.f64(double %i.di)
  store double %.scalar.i.i.i.i.i.i.i.i.i.i.i.i.2, ptr %i.dg, align 8, !tbaa !19
  %i.dj = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 3   ; 2 uses
  %i.dk = getelementptr inbounds [8 x i8], ptr %.pre.i.i, i64 %i.dj
  %i.dl = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.dj
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !19
  %.scalar.i.i.i.i.i.i.i.i.i.i.i.i.3 = call noundef double @llvm.sqrt.f64(double %i.dm)
  store double %.scalar.i.i.i.i.i.i.i.i.i.i.i.i.3, ptr %i.dk, align 8, !tbaa !19
  %i.dn = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 4   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.dn, %.pr.i.i.i.i.i.i.i49
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.3, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal14scalar_sqrt_opIdEEKNS_12ArrayWrapperINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEEE4evalEv.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !1009

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i.i.i
  %.011.i.i.i.i.i.i.i.i = phi i64 [ %i.ds, %.lr.ph.i.i.i.i.i.i.i.i ], [ 0, %bb.c ] ; 3 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %.011.i.i.i.i.i.i.i.i
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %.011.i.i.i.i.i.i.i.i
  %i.dq = load <2 x double>, ptr %i.dp, align 16, !tbaa !37
  %i.dr = call noundef <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.dq)
  store <2 x double> %i.dr, ptr %i.do, align 16, !tbaa !37
  %i.ds = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.dt = icmp slt i64 %i.ds, %i.ce
  br i1 %i.dt, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, !llvm.loop !38

bb.d:                                             ; preds = %thread-pre-split.i.i.i.i.i.i.i
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal14scalar_sqrt_opIdEEKNS_12ArrayWrapperINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEEE4evalEv.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i.i.i, %._crit_edge
  %i.dv = load i64, ptr %i.cc, align 8, !tbaa !15
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.dv, i64 noundef 1)
          to label %.noexc59 unwind label %bb.f

.noexc59:                                         ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal14scalar_sqrt_opIdEEKNS_12ArrayWrapperINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEEE4evalEv.exit
  %i.dw = load ptr, ptr %3, align 8, !tbaa !18    ; 8 uses
  %i.dx = ptrtoaddr ptr %i.dw to i64
  %i.dy = load i64, ptr %i.cc, align 8, !tbaa !15 ; 3 uses
  %i.dz = load i64, ptr %i.f, align 8, !tbaa !15
  %.not.i.i.i.i.i.i.i.i50 = icmp eq i64 %i.dz, %i.dy
  br i1 %.not.i.i.i.i.i.i.i.i50, label %bb.e, label %thread-pre-split.i.i.i.i.i.i.i51

thread-pre-split.i.i.i.i.i.i.i51:                 ; preds = %.noexc59
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.dy, i64 noundef 1)
          to label %.noexc60 unwind label %bb.f

.noexc60:                                         ; preds = %thread-pre-split.i.i.i.i.i.i.i51
  %.pr.i.i.i.i.i.i.i52 = load i64, ptr %i.f, align 8, !tbaa !15
  br label %bb.e

bb.e:                                             ; preds = %.noexc60, %.noexc59
  %i.ea = phi i64 [ %.pr.i.i.i.i.i.i.i52, %.noexc60 ], [ %i.dy, %.noexc59 ] ; 7 uses
  %i.eb = load ptr, ptr %2, align 8, !tbaa !18    ; 8 uses
  %i.ec = ptrtoaddr ptr %i.eb to i64
  %i.ed = sdiv i64 %i.ea, 2                       ; 2 uses
  %i.ee = shl nsw i64 %i.ed, 1                    ; 5 uses
  %i.ef = icmp sgt i64 %i.ea, 1
  br i1 %i.ef, label %.lr.ph.i.i.i.i.i.i.i.i57, label %._crit_edge.i.i.i.i.i.i.i.i53

._crit_edge.i.i.i.i.i.i.i.i53:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i57, %bb.e
  %i.eg = icmp slt i64 %i.ee, %i.ea
  br i1 %i.eg, label %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader, label %.loopexit

.lr.ph.i.i.i.i.i.i.i.i.i54.preheader:             ; preds = %._crit_edge.i.i.i.i.i.i.i.i53
  %i.eh = shl nsw i64 %i.ed, 1
  %i.ei = sub i64 %i.ea, %i.eh                    ; 3 uses
  %min.iters.check89 = icmp ult i64 %i.ei, 8
  %i.ej = sub i64 %i.dx, %i.ec
  %diff.check87 = icmp ugt i64 %i.ej, -32
  %or.cond100 = select i1 %min.iters.check89, i1 true, i1 %diff.check87
  br i1 %or.cond100, label %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader101, label %vector.ph90

vector.ph90:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader
  %n.vec91 = and i64 %i.ei, -4                    ; 3 uses
  %i.ek = add i64 %i.ee, %n.vec91
  br label %vector.body92

vector.body92:                                    ; preds = %vector.body92, %vector.ph90
  %index93 = phi i64 [ 0, %vector.ph90 ], [ %index.next96, %vector.body92 ] ; 2 uses
  %i.el = add i64 %i.ee, %index93                 ; 2 uses
  %i.em = getelementptr inbounds [8 x i8], ptr %i.eb, i64 %i.el ; 2 uses
  %i.en = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %i.el ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %wide.load94 = load <2 x double>, ptr %i.en, align 8, !tbaa !19
  %wide.load95 = load <2 x double>, ptr %i.eo, align 8, !tbaa !19
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  store <2 x double> %wide.load94, ptr %i.em, align 8, !tbaa !19
  store <2 x double> %wide.load95, ptr %i.ep, align 8, !tbaa !19
  %index.next96 = add nuw i64 %index93, 4         ; 2 uses
  %i.eq = icmp eq i64 %index.next96, %n.vec91
  br i1 %i.eq, label %middle.block97, label %vector.body92, !llvm.loop !1010

middle.block97:                                   ; preds = %vector.body92
  %cmp.n98 = icmp eq i64 %i.ei, %n.vec91
  br i1 %cmp.n98, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader101

.lr.ph.i.i.i.i.i.i.i.i.i54.preheader101:          ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader, %middle.block97
  %.05.i.i.i.i.i.i.i.i.i55.ph = phi i64 [ %i.ee, %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader ], [ %i.ek, %middle.block97 ] ; 4 uses
  %i.er = sub i64 %i.ea, %.05.i.i.i.i.i.i.i.i.i55.ph
  %xtraiter103 = and i64 %i.er, 3                 ; 2 uses
  %lcmp.mod104.not = icmp eq i64 %xtraiter103, 0
  br i1 %lcmp.mod104.not, label %.lr.ph.i.i.i.i.i.i.i.i.i54.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i54.prol

.lr.ph.i.i.i.i.i.i.i.i.i54.prol:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader101, %.lr.ph.i.i.i.i.i.i.i.i.i54.prol
  %.05.i.i.i.i.i.i.i.i.i55.prol = phi i64 [ %i.ev, %.lr.ph.i.i.i.i.i.i.i.i.i54.prol ], [ %.05.i.i.i.i.i.i.i.i.i55.ph, %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader101 ] ; 3 uses
  %prol.iter105 = phi i64 [ %prol.iter105.next, %.lr.ph.i.i.i.i.i.i.i.i.i54.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader101 ]
  %i.es = getelementptr inbounds [8 x i8], ptr %i.eb, i64 %.05.i.i.i.i.i.i.i.i.i55.prol
  %i.et = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %.05.i.i.i.i.i.i.i.i.i55.prol
  %i.eu = load double, ptr %i.et, align 8, !tbaa !19
  store double %i.eu, ptr %i.es, align 8, !tbaa !19
  %i.ev = add nsw i64 %.05.i.i.i.i.i.i.i.i.i55.prol, 1 ; 2 uses
  %prol.iter105.next = add i64 %prol.iter105, 1   ; 2 uses
  %prol.iter105.cmp.not = icmp eq i64 %prol.iter105.next, %xtraiter103
  br i1 %prol.iter105.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i54.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i54.prol, !llvm.loop !1011

.lr.ph.i.i.i.i.i.i.i.i.i54.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i54.prol, %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader101
  %.05.i.i.i.i.i.i.i.i.i55.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i55.ph, %.lr.ph.i.i.i.i.i.i.i.i.i54.preheader101 ], [ %i.ev, %.lr.ph.i.i.i.i.i.i.i.i.i54.prol ]
  %i.ew = sub i64 %.05.i.i.i.i.i.i.i.i.i55.ph, %i.ea
  %i.ex = icmp ugt i64 %i.ew, -4
  br i1 %i.ex, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i54

.lr.ph.i.i.i.i.i.i.i.i.i54:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i54.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i54
  %.05.i.i.i.i.i.i.i.i.i55 = phi i64 [ %i.fn, %.lr.ph.i.i.i.i.i.i.i.i.i54 ], [ %.05.i.i.i.i.i.i.i.i.i55.unr, %.lr.ph.i.i.i.i.i.i.i.i.i54.prol.loopexit ] ; 6 uses
  %i.ey = getelementptr inbounds [8 x i8], ptr %i.eb, i64 %.05.i.i.i.i.i.i.i.i.i55
  %i.ez = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %.05.i.i.i.i.i.i.i.i.i55
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !19
  store double %i.fa, ptr %i.ey, align 8, !tbaa !19
  %i.fb = add nsw i64 %.05.i.i.i.i.i.i.i.i.i55, 1 ; 2 uses
  %i.fc = getelementptr inbounds [8 x i8], ptr %i.eb, i64 %i.fb
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %i.fb
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !19
  store double %i.fe, ptr %i.fc, align 8, !tbaa !19
  %i.ff = add nsw i64 %.05.i.i.i.i.i.i.i.i.i55, 2 ; 2 uses
  %i.fg = getelementptr inbounds [8 x i8], ptr %i.eb, i64 %i.ff
  %i.fh = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %i.ff
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !19
  store double %i.fi, ptr %i.fg, align 8, !tbaa !19
  %i.fj = add nsw i64 %.05.i.i.i.i.i.i.i.i.i55, 3 ; 2 uses
  %i.fk = getelementptr inbounds [8 x i8], ptr %i.eb, i64 %i.fj
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %i.fj
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !19
  store double %i.fm, ptr %i.fk, align 8, !tbaa !19
  %i.fn = add nsw i64 %.05.i.i.i.i.i.i.i.i.i55, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i56.3 = icmp eq i64 %i.fn, %i.ea
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i56.3, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i54, !llvm.loop !1012

.lr.ph.i.i.i.i.i.i.i.i57:                         ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i.i.i57
  %.011.i.i.i.i.i.i.i.i58 = phi i64 [ %i.fr, %.lr.ph.i.i.i.i.i.i.i.i57 ], [ 0, %bb.e ] ; 3 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %.011.i.i.i.i.i.i.i.i58
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %.011.i.i.i.i.i.i.i.i58
  %i.fq = load <2 x double>, ptr %i.fp, align 16, !tbaa !37
  store <2 x double> %i.fq, ptr %i.fo, align 16, !tbaa !37
  %i.fr = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i58, 2 ; 2 uses
  %i.fs = icmp slt i64 %i.fr, %i.ee
  br i1 %i.fs, label %.lr.ph.i.i.i.i.i.i.i.i57, label %._crit_edge.i.i.i.i.i.i.i.i53, !llvm.loop !42

bb.f:                                             ; preds = %thread-pre-split.i.i.i.i.i.i.i51, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal14scalar_sqrt_opIdEEKNS_12ArrayWrapperINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEEE4evalEv.exit
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %bb.f
  %.pn = phi { ptr, i32 } [ %i.ft, %bb.f ], [ %i.du, %bb.d ]
  %i.fu = load ptr, ptr %3, align 8, !tbaa !18
  call void @free(ptr noundef %i.fu) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %.pn

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i54.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i54, %middle.block97, %._crit_edge.i.i.i.i.i.i.i.i53
  %i.fv = load ptr, ptr %3, align 8, !tbaa !18
  call void @free(ptr noundef %i.fv) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.g

bb.g:                                             ; preds = %.loopexit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl15doublearea_quadIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Matrix.97", align 8  ; 10 uses
  %4 = alloca %"class.Eigen::Matrix.21", align 8  ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !14   ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.c = shl nsw i64 %i.b, 1                      ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.d = icmp sgt i64 %i.b, 1537228672809129301
  br i1 %i.d, label %.noexc.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !43
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i: ; preds = %bb.a
  %5 = mul nsw i64 %i.b, 6
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread, label %bb.b

_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i
  store i64 %i.c, ptr %i.f, align 8, !tbaa !14
  store i64 3, ptr %i.g, align 8, !tbaa !9
  br label %._crit_edge

bb.b:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i
  %i.h = icmp sgt i64 %i.b, 0
  br i1 %i.h, label %bb.c, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.lr.ph

bb.c:                                             ; preds = %bb.b
  %i.i = icmp samesign ugt i64 %5, 4611686018427387903
  br i1 %i.i, label %.noexc, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i

.noexc:                                           ; preds = %bb.c
  %i.j = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.j, align 8, !tbaa !43
  tail call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i: ; preds = %bb.c
  %i.k = mul i64 %i.b, 24
  %i.l = tail call noalias ptr @malloc(i64 noundef %i.k) #25 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.noexc59, label %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread105

_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread105: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i
  store ptr %i.l, ptr %3, align 8, !tbaa !21
  br label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.lr.ph

.noexc59:                                         ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i
  %i.n = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.n, align 8, !tbaa !43
  tail call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
  unreachable

_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.lr.ph: ; preds = %bb.b, %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread105
  %.sink.i108 = phi ptr [ %i.l, %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread105 ], [ null, %bb.b ] ; 24 uses
  store i64 %i.c, ptr %i.f, align 8, !tbaa !14
  store i64 3, ptr %i.g, align 8, !tbaa !9
  %i.o = load ptr, ptr %1, align 8, !tbaa !21     ; 9 uses
  %.idx = shl i64 %i.b, 3                         ; 8 uses
  %.idx93 = shl i64 %i.b, 4                       ; 9 uses
  %.idx94 = mul i64 %i.b, 12                      ; 3 uses
  %min.iters.check = icmp ult i64 %i.b, 134
  br i1 %min.iters.check, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.lr.ph
  %i.p = add i64 %i.b, -1                         ; 2 uses
  %mul.result = shl i64 %i.p, 3                   ; 6 uses
  %mul.overflow = icmp ugt i64 %i.p, 2305843009213693951
  %i.q = getelementptr i8, ptr %.sink.i108, i64 %mul.result
  %i.r = icmp ult ptr %i.q, %.sink.i108
  %scevgep = getelementptr i8, ptr %.sink.i108, i64 %.idx ; 2 uses
  %i.s = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.t = icmp ult ptr %i.s, %scevgep
  %scevgep109 = getelementptr i8, ptr %.sink.i108, i64 %.idx93 ; 2 uses
  %i.u = getelementptr i8, ptr %scevgep109, i64 %mul.result
  %i.v = icmp ult ptr %i.u, %scevgep109
  %i.w = or i1 %i.v, %mul.overflow
  %scevgep110 = getelementptr i8, ptr %.sink.i108, i64 4 ; 2 uses
  %i.x = getelementptr i8, ptr %scevgep110, i64 %mul.result
  %i.y = icmp ult ptr %i.x, %scevgep110
  %i.z = getelementptr i8, ptr %.sink.i108, i64 %.idx
  %scevgep111 = getelementptr i8, ptr %i.z, i64 4 ; 2 uses
  %i.aa = getelementptr i8, ptr %scevgep111, i64 %mul.result
  %i.ab = icmp ult ptr %i.aa, %scevgep111
  %i.ac = getelementptr i8, ptr %.sink.i108, i64 %.idx93
  %scevgep112 = getelementptr i8, ptr %i.ac, i64 4 ; 2 uses
  %i.ad = getelementptr i8, ptr %scevgep112, i64 %mul.result
  %i.ae = icmp ult ptr %i.ad, %scevgep112
  %i.af = or i1 %i.t, %i.r
  %i.ag = or i1 %i.af, %i.w
  %i.ah = or i1 %i.y, %i.ag
  %i.ai = or i1 %i.ab, %i.ah
  %i.aj = or i1 %i.ae, %i.ai
  br i1 %i.aj, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %scevgep113 = getelementptr i8, ptr %i.o, i64 %.idx94 ; 12 uses
  %scevgep114 = getelementptr i8, ptr %i.o, i64 %.idx93 ; 6 uses
  %i.ak = getelementptr i8, ptr %.sink.i108, i64 %.idx
  %scevgep115 = getelementptr i8, ptr %i.ak, i64 -4 ; 6 uses
  %scevgep116 = getelementptr i8, ptr %.sink.i108, i64 %.idx ; 15 uses
  %i.al = getelementptr i8, ptr %.sink.i108, i64 %.idx93
  %scevgep117 = getelementptr i8, ptr %i.al, i64 -4 ; 8 uses
  %scevgep118 = getelementptr i8, ptr %.sink.i108, i64 %.idx93 ; 14 uses
  %i.am = mul i64 %i.b, 24                        ; 2 uses
  %i.an = getelementptr i8, ptr %.sink.i108, i64 %i.am
  %scevgep119 = getelementptr i8, ptr %i.an, i64 -4 ; 7 uses
  %scevgep120 = getelementptr i8, ptr %.sink.i108, i64 4 ; 7 uses
  %i.ao = getelementptr i8, ptr %.sink.i108, i64 %.idx
  %scevgep121 = getelementptr i8, ptr %i.ao, i64 4 ; 7 uses
  %i.ap = getelementptr i8, ptr %.sink.i108, i64 %.idx93
  %scevgep122 = getelementptr i8, ptr %i.ap, i64 4 ; 8 uses
  %scevgep123 = getelementptr i8, ptr %.sink.i108, i64 %i.am ; 8 uses
  %scevgep124 = getelementptr i8, ptr %i.o, i64 %.idx ; 12 uses
  %i.aq = shl nuw i64 %i.b, 2
  %scevgep125 = getelementptr i8, ptr %i.o, i64 %i.aq ; 9 uses
  %bound0 = icmp ult ptr %scevgep113, %scevgep115
  %bound1 = icmp ult ptr %.sink.i108, %scevgep114
  %found.conflict = and i1 %bound0, %bound1
  %bound0126 = icmp ult ptr %scevgep113, %scevgep117
  %bound1127 = icmp ult ptr %scevgep116, %scevgep114
  %found.conflict128 = and i1 %bound0126, %bound1127
  %bound0129 = icmp ult ptr %scevgep113, %scevgep119
  %bound1130 = icmp ult ptr %scevgep118, %scevgep114
  %found.conflict131 = and i1 %bound0129, %bound1130
  %bound0133 = icmp ult ptr %scevgep113, %scevgep116
  %bound1134 = icmp ult ptr %scevgep120, %scevgep114
  %found.conflict135 = and i1 %bound0133, %bound1134
  %bound0137 = icmp ult ptr %scevgep113, %scevgep118
  %bound1138 = icmp ult ptr %scevgep121, %scevgep114
  %found.conflict139 = and i1 %bound0137, %bound1138
  %bound0141 = icmp ult ptr %scevgep113, %scevgep123
  %bound1142 = icmp ult ptr %scevgep122, %scevgep114
  %found.conflict143 = and i1 %bound0141, %bound1142
  %bound0145 = icmp ult ptr %scevgep124, %scevgep115
  %bound1146 = icmp ult ptr %.sink.i108, %scevgep113
  %found.conflict147 = and i1 %bound0145, %bound1146
  %bound0149 = icmp ult ptr %scevgep124, %scevgep117
  %bound1150 = icmp ult ptr %scevgep116, %scevgep113
  %found.conflict151 = and i1 %bound0149, %bound1150
  %bound0153 = icmp ult ptr %scevgep124, %scevgep119
  %bound1154 = icmp ult ptr %scevgep118, %scevgep113
  %found.conflict155 = and i1 %bound0153, %bound1154
  %bound0157 = icmp ult ptr %scevgep124, %scevgep116
  %bound1158 = icmp ult ptr %scevgep120, %scevgep113
  %found.conflict159 = and i1 %bound0157, %bound1158
  %bound0161 = icmp ult ptr %scevgep124, %scevgep118
  %bound1162 = icmp ult ptr %scevgep121, %scevgep113
  %found.conflict163 = and i1 %bound0161, %bound1162
  %bound0165 = icmp ult ptr %scevgep124, %scevgep123
  %bound1166 = icmp ult ptr %scevgep122, %scevgep113
  %found.conflict167 = and i1 %bound0165, %bound1166
  %bound0169 = icmp ult ptr %scevgep125, %scevgep115
  %bound1170 = icmp ult ptr %.sink.i108, %scevgep124
  %found.conflict171 = and i1 %bound0169, %bound1170
  %bound0173 = icmp ult ptr %scevgep125, %scevgep117
  %bound1174 = icmp ult ptr %scevgep116, %scevgep124
  %found.conflict175 = and i1 %bound0173, %bound1174
  %bound0177 = icmp ult ptr %scevgep125, %scevgep119
  %bound1178 = icmp ult ptr %scevgep118, %scevgep124
  %found.conflict179 = and i1 %bound0177, %bound1178
  %bound0181 = icmp ult ptr %scevgep125, %scevgep116
  %bound1182 = icmp ult ptr %scevgep120, %scevgep124
  %found.conflict183 = and i1 %bound0181, %bound1182
  %bound0185 = icmp ult ptr %scevgep125, %scevgep118
  %bound1186 = icmp ult ptr %scevgep121, %scevgep124
  %found.conflict187 = and i1 %bound0185, %bound1186
  %bound0189 = icmp ult ptr %scevgep125, %scevgep123
  %bound1190 = icmp ult ptr %scevgep122, %scevgep124
  %found.conflict191 = and i1 %bound0189, %bound1190
  %bound0193 = icmp ult ptr %i.o, %scevgep115
  %bound1194 = icmp ult ptr %.sink.i108, %scevgep125
  %found.conflict195 = and i1 %bound0193, %bound1194
  %bound0197 = icmp ult ptr %i.o, %scevgep117
  %bound1198 = icmp ult ptr %scevgep116, %scevgep125
  %found.conflict199 = and i1 %bound0197, %bound1198
  %i.ar = insertelement <4 x ptr> poison, ptr %i.o, i64 0
  %i.as = shufflevector <4 x ptr> %i.ar, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.at = insertelement <4 x ptr> poison, ptr %scevgep119, i64 0
  %i.au = insertelement <4 x ptr> %i.at, ptr %scevgep116, i64 1
  %i.av = insertelement <4 x ptr> %i.au, ptr %scevgep118, i64 2
  %i.aw = insertelement <4 x ptr> %i.av, ptr %scevgep123, i64 3 ; 2 uses
  %i.ax = icmp ult <4 x ptr> %i.as, %i.aw
  %i.ay = insertelement <4 x ptr> poison, ptr %scevgep118, i64 0
  %i.az = insertelement <4 x ptr> %i.ay, ptr %scevgep120, i64 1
  %i.ba = insertelement <4 x ptr> %i.az, ptr %scevgep121, i64 2
  %i.bb = insertelement <4 x ptr> %i.ba, ptr %scevgep122, i64 3 ; 2 uses
  %i.bc = insertelement <4 x ptr> poison, ptr %scevgep125, i64 0
  %i.bd = shufflevector <4 x ptr> %i.bc, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.be = icmp ult <4 x ptr> %i.bb, %i.bd
  %i.bf = and <4 x i1> %i.ax, %i.be
  %bound0217 = icmp ult ptr %.sink.i108, %scevgep117
  %bound1218 = icmp ult ptr %scevgep116, %scevgep115
  %found.conflict219 = and i1 %bound0217, %bound1218
  %i.bg = insertelement <4 x ptr> poison, ptr %.sink.i108, i64 0
  %i.bh = shufflevector <4 x ptr> %i.bg, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bi = icmp ult <4 x ptr> %i.bh, %i.aw
  %i.bj = insertelement <4 x ptr> poison, ptr %scevgep115, i64 0
  %i.bk = shufflevector <4 x ptr> %i.bj, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bl = icmp ult <4 x ptr> %i.bb, %i.bk
  %i.bm = and <4 x i1> %i.bi, %i.bl
  %bound0237 = icmp ult ptr %scevgep116, %scevgep119
  %bound1238 = icmp ult ptr %scevgep118, %scevgep117
  %found.conflict239 = and i1 %bound0237, %bound1238
  %bound0242 = icmp ult ptr %scevgep116, %scevgep118
  %bound1243 = icmp ult ptr %scevgep121, %scevgep117
  %found.conflict244 = and i1 %bound0242, %bound1243
  %bound0246 = icmp ult ptr %scevgep116, %scevgep123
  %bound1247 = icmp ult ptr %scevgep122, %scevgep117
  %found.conflict248 = and i1 %bound0246, %bound1247
  %bound0250 = icmp ult ptr %scevgep118, %scevgep116
  %bound1251 = icmp ult ptr %scevgep120, %scevgep119
  %found.conflict252 = and i1 %bound0250, %bound1251
  %bound0255 = icmp ult ptr %scevgep118, %scevgep123
  %bound1256 = icmp ult ptr %scevgep122, %scevgep119
  %found.conflict257 = and i1 %bound0255, %bound1256
  %bound0259 = icmp ult ptr %scevgep120, %scevgep118
  %bound1260 = icmp ult ptr %scevgep121, %scevgep116
  %found.conflict261 = and i1 %bound0259, %bound1260
  %bound0263 = icmp ult ptr %scevgep120, %scevgep123
  %bound1264 = icmp ult ptr %scevgep122, %scevgep116
  %found.conflict265 = and i1 %bound0263, %bound1264
  %bound0267 = icmp ult ptr %scevgep121, %scevgep123
  %bound1268 = icmp ult ptr %scevgep122, %scevgep118
  %found.conflict269 = and i1 %bound0267, %bound1268
  %rdx.op = or <4 x i1> %i.bf, %i.bm
  %i.bn = bitcast <4 x i1> %rdx.op to i4
  %i.bo = icmp ne i4 %i.bn, 0
  %op.rdx = or i1 %i.bo, %found.conflict
end_hunk_12
