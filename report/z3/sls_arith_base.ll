inline.NumInlined: 7668
inline.NumDeleted: 1628
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 59
loop-unroll.NumUnrolled: 62
begin_hunk_0_@_ZN3sls10arith_baseI13checked_int64ILb1EEE17mul_value_withoutEjj:bb.a
.lr.ph.i.preheader:                               ; preds = %bb.b
  %.sroa.5.0.extract.shift = lshr i64 %i.t, 32
  %.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.5.0.extract.shift to i32
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZN13checked_int64ILb1EEmLERKS0_.exit
  %.pre.i1745 = phi i64 [ %.pre.i1744, %_ZN13checked_int64ILb1EEmLERKS0_.exit ], [ 1, %.lr.ph.i.preheader ] ; 9 uses
  %.sroa.031.0 = phi i64 [ %.sroa.037.0, %_ZN13checked_int64ILb1EEmLERKS0_.exit ], [ %.sroa.0.0.copyload.i.fr, %.lr.ph.i.preheader ] ; 13 uses
  %.06.i = phi i32 [ %i.az, %_ZN13checked_int64ILb1EEmLERKS0_.exit ], [ %.sroa.5.0.extract.trunc, %.lr.ph.i.preheader ] ; 3 uses
  %i.z = and i32 %.06.i, 1
  %.not.i = icmp eq i32 %i.z, 0
  %.pre49 = add i64 %.sroa.031.0, 2147483647      ; 2 uses
  br i1 %.not.i, label %.lr.ph.i._crit_edge, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %or.cond29.i16 = icmp ult i64 %.pre49, 4294967295
  br i1 %or.cond29.i16, label %bb.d, label %.thread.i18

bb.d:                                             ; preds = %bb.c
  %i.aa = add i64 %.pre.i1745, 2147483647
  %or.cond30.i28 = icmp ult i64 %i.aa, 4294967295
  br i1 %or.cond30.i28, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ab = mul nsw i64 %.pre.i1745, %.sroa.031.0
  br label %_ZN13checked_int64ILb1EEmLERKS0_.exit29

bb.f:                                             ; preds = %bb.d
  %i.ac = icmp eq i64 %.sroa.031.0, 0
  br i1 %i.ac, label %bb.g, label %.thread.i18

.thread.i18:                                      ; preds = %bb.f, %bb.c
  %i.ad = icmp eq i64 %.sroa.031.0, 1
  %i.ae = icmp ult i64 %.pre.i1745, 2
  %or.cond35.i19 = select i1 %i.ad, i1 true, i1 %i.ae
  br i1 %or.cond35.i19, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.thread.i18, %bb.f
  %i.af = mul nsw i64 %.pre.i1745, %.sroa.031.0
  br label %_ZN13checked_int64ILb1EEmLERKS0_.exit29

bb.h:                                             ; preds = %.thread.i18
  %i.ag = icmp eq i64 %.sroa.031.0, -9223372036854775808
  %i.ah = icmp eq i64 %.pre.i1745, -9223372036854775808
  %or.cond33.i20 = or i1 %i.ag, %i.ah
  br i1 %or.cond33.i20, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ai = call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.ai, align 8, !tbaa !15
  call void @__cxa_throw(ptr nonnull %i.ai, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.aj = call i64 @llvm.abs.i64(i64 %.sroa.031.0, i1 true)
  %i.ak = call i64 @llvm.abs.i64(i64 %.pre.i1745, i1 true)
  %mul.i21 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ak, i64 %i.aj) ; 2 uses
  %mul.val.i22 = extractvalue { i64, i1 } %mul.i21, 0 ; 5 uses
  %mul.ov.i23 = extractvalue { i64, i1 } %mul.i21, 1
  %i.al = icmp slt i64 %mul.val.i22, 0
  %or.cond.i24 = or i1 %mul.ov.i23, %i.al
  br i1 %or.cond.i24, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.am = call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.am, align 8, !tbaa !15
  call void @__cxa_throw(ptr nonnull %i.am, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.an = icmp slt i64 %.sroa.031.0, 0
  br i1 %i.an, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ao = icmp sgt i64 %.pre.i1745, 0
  %i.ap = sub nsw i64 0, %mul.val.i22
  %spec.select = select i1 %i.ao, i64 %i.ap, i64 %mul.val.i22
  br label %_ZN13checked_int64ILb1EEmLERKS0_.exit29

bb.n:                                             ; preds = %bb.l
  %.not.i25 = icmp ne i64 %.sroa.031.0, 0
  %i.aq = icmp slt i64 %.pre.i1745, 0
  %or.cond = select i1 %.not.i25, i1 %i.aq, i1 false
  %i.ar = sub nsw i64 0, %mul.val.i22
  %spec.select41 = select i1 %or.cond, i64 %i.ar, i64 %mul.val.i22
  br label %_ZN13checked_int64ILb1EEmLERKS0_.exit29

_ZN13checked_int64ILb1EEmLERKS0_.exit29:          ; preds = %bb.n, %bb.m, %bb.e, %bb.g
  %.sroa.035.0 = phi i64 [ %i.af, %bb.g ], [ %spec.select, %bb.m ], [ %spec.select41, %bb.n ], [ %i.ab, %bb.e ] ; 2 uses
  store i64 %.sroa.035.0, ptr %4, align 8, !tbaa !17
  %i.as = add nsw i32 %.06.i, -1
  br label %.lr.ph.i._crit_edge

.lr.ph.i._crit_edge:                              ; preds = %.lr.ph.i, %_ZN13checked_int64ILb1EEmLERKS0_.exit29
  %.pre.i1744 = phi i64 [ %.sroa.035.0, %_ZN13checked_int64ILb1EEmLERKS0_.exit29 ], [ %.pre.i1745, %.lr.ph.i ]
  %.1.i = phi i32 [ %i.as, %_ZN13checked_int64ILb1EEmLERKS0_.exit29 ], [ %.06.i, %.lr.ph.i ] ; 2 uses
  %or.cond29.i = icmp ult i64 %.pre49, 4294967295
  br i1 %or.cond29.i, label %bb.o, label %.thread.i

bb.o:                                             ; preds = %.lr.ph.i._crit_edge
  %i.at = mul i64 %.sroa.031.0, %.sroa.031.0
  br label %_ZN13checked_int64ILb1EEmLERKS0_.exit

.thread.i:                                        ; preds = %.lr.ph.i._crit_edge
  %i.au = icmp eq i64 %.sroa.031.0, -9223372036854775808
  br i1 %i.au, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.thread.i
  %i.av = call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.av, align 8, !tbaa !15
  call void @__cxa_throw(ptr nonnull %i.av, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

bb.q:                                             ; preds = %.thread.i
  %i.aw = call i64 @llvm.abs.i64(i64 %.sroa.031.0, i1 true) ; 2 uses
  %mul.i = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.aw, i64 %i.aw) ; 2 uses
  %mul.val.i = extractvalue { i64, i1 } %mul.i, 0 ; 2 uses
  %mul.ov.i = extractvalue { i64, i1 } %mul.i, 1
  %i.ax = icmp slt i64 %mul.val.i, 0
  %or.cond.i = or i1 %mul.ov.i, %i.ax
  br i1 %or.cond.i, label %bb.r, label %_ZN13checked_int64ILb1EEmLERKS0_.exit

bb.r:                                             ; preds = %bb.q
  %i.ay = call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.ay, align 8, !tbaa !15
  call void @__cxa_throw(ptr nonnull %i.ay, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

_ZN13checked_int64ILb1EEmLERKS0_.exit:            ; preds = %bb.q, %bb.o
  %.sroa.037.0 = phi i64 [ %i.at, %bb.o ], [ %mul.val.i, %bb.q ] ; 2 uses
  %i.az = lshr i32 %.1.i, 1
  %i.ba = icmp ugt i32 %.1.i, 3
  br i1 %i.ba, label %.lr.ph.i, label %_ZN3sls10arith_baseI13checked_int64ILb1EEE8power_ofES2_j.exit, !llvm.loop !168

_ZN3sls10arith_baseI13checked_int64ILb1EEE8power_ofES2_j.exit: ; preds = %_ZN13checked_int64ILb1EEmLERKS0_.exit, %bb.b
  %i.bb = phi i64 [ %.sroa.0.0.copyload.i.fr, %bb.b ], [ %.sroa.037.0, %_ZN13checked_int64ILb1EEmLERKS0_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 %i.bb, ptr %3, align 8, !tbaa !17
  %i.bc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN13checked_int64ILb1EEmLERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) ; 0 uses
  %i.bd = load i64, ptr %3, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  store i64 %i.bd, ptr %6, align 8
  %i.be = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN13checked_int64ILb1EEmLERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.s

bb.s:                                             ; preds = %_ZN3sls10arith_baseI13checked_int64ILb1EEE8power_ofES2_j.exit, %.lr.ph
  %i.bf = getelementptr inbounds nuw i8, ptr %.047, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bf, %i.r
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK3sls10arith_baseI13checked_int64ILb1EEE6is_intEj(ptr noundef nonnull align 8 dereferenceable(672) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !139
  %i.c = zext i32 %1 to i64
  %i.d = getelementptr inbounds nuw [184 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load i32, ptr %i.e, align 8, !tbaa !78
  %i.g = icmp eq i32 %i.f, 0
  ret i1 %i.g
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden i64 @_ZN3sls10arith_baseI13checked_int64ILb1EEE6divideEjRKS2_S5_(ptr noundef nonnull align 8 dereferenceable(672) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !139
  %i.c = zext i32 %1 to i64
  %i.d = getelementptr inbounds nuw [184 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load i32, ptr %i.e, align 8, !tbaa !78
  %i.g = icmp eq i32 %i.f, 0
  %i.h = load i64, ptr %3, align 8, !tbaa !45     ; 10 uses
  br i1 %i.g, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.i = icmp sgt i64 %i.h, -1
  br i1 %i.i, label %_Z3absRK13checked_int64ILb1EE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = icmp eq i64 %i.h, -9223372036854775808
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.k, align 8, !tbaa !15
  tail call void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.l = sub nsw i64 0, %i.h
  br label %_Z3absRK13checked_int64ILb1EE.exit

_Z3absRK13checked_int64ILb1EE.exit:               ; preds = %bb.b, %bb.e
  %.sroa.0.0.i.i = phi i64 [ %i.l, %bb.e ], [ %i.h, %bb.b ]
  %i.m = load i64, ptr %2, align 8, !tbaa !17     ; 2 uses
  %i.n = add i64 %i.m, %.sroa.0.0.i.i             ; 3 uses
  %i.o = icmp sgt i64 %i.m, 0
  %i.p = icmp slt i64 %i.n, 1
  %or.cond11 = select i1 %i.o, i1 %i.p, i1 false
  br i1 %or.cond11, label %bb.f, label %_ZplILb1EE13checked_int64IXT_EERKS1_S3_.exit

bb.f:                                             ; preds = %_Z3absRK13checked_int64ILb1EE.exit
  %i.q = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.q, align 8, !tbaa !15
  tail call void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

_ZplILb1EE13checked_int64IXT_EERKS1_S3_.exit:     ; preds = %_Z3absRK13checked_int64ILb1EE.exit
  %i.r = add i64 %i.n, -1                         ; 3 uses
  %or.cond = icmp eq i64 %i.n, -9223372036854775808
  br i1 %or.cond, label %bb.g, label %_ZmiILb1EE13checked_int64IXT_EERKS1_RKl.exit

bb.g:                                             ; preds = %_ZplILb1EE13checked_int64IXT_EERKS1_S3_.exit
  %i.s = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.s, align 8, !tbaa !15
  tail call void @__cxa_throw(ptr nonnull %i.s, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

_ZmiILb1EE13checked_int64IXT_EERKS1_RKl.exit:     ; preds = %_ZplILb1EE13checked_int64IXT_EERKS1_S3_.exit
  %i.t = icmp eq i64 %i.h, 0
  br i1 %i.t, label %bb.h, label %_ZN13checked_int64ILb1EEdVERKS0_.exit.i

bb.h:                                             ; preds = %_ZmiILb1EE13checked_int64IXT_EERKS1_RKl.exit
  %i.u = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.u, align 8, !tbaa !15
  tail call void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

_ZN13checked_int64ILb1EEdVERKS0_.exit.i:          ; preds = %_ZmiILb1EE13checked_int64IXT_EERKS1_RKl.exit
  %i.v = sdiv i64 %i.r, %i.h                      ; 5 uses
  %i.w = srem i64 %i.r, %i.h
  %i.x = icmp sge i64 %i.r, 0
  %.not.i = icmp eq i64 %i.w, 0
  %or.cond14 = select i1 %i.x, i1 true, i1 %.not.i
  br i1 %or.cond14, label %_Z3divILb1EE13checked_int64IXT_EERKS1_S3_.exit, label %bb.i

bb.i:                                             ; preds = %_ZN13checked_int64ILb1EEdVERKS0_.exit.i
  %i.y = icmp slt i64 %i.h, 0
  br i1 %i.y, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.z = add nuw nsw i64 %i.v, 1
  %i.aa = icmp eq i64 %i.v, 9223372036854775807
  br i1 %i.aa, label %bb.k, label %_Z3divILb1EE13checked_int64IXT_EERKS1_S3_.exit

bb.k:                                             ; preds = %bb.j
  %i.ab = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.ab, align 8, !tbaa !15
  tail call void @__cxa_throw(ptr nonnull %i.ab, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

bb.l:                                             ; preds = %bb.i
  %i.ac = add nsw i64 %i.v, -1
  %or.cond.i = icmp eq i64 %i.v, -9223372036854775808
  br i1 %or.cond.i, label %bb.m, label %_Z3divILb1EE13checked_int64IXT_EERKS1_S3_.exit

bb.m:                                             ; preds = %bb.l
  %i.ad = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.ad, align 8, !tbaa !15
  tail call void @__cxa_throw(ptr nonnull %i.ad, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

bb.n:                                             ; preds = %bb.a
  %i.ae = icmp eq i64 %i.h, 0
  br i1 %i.ae, label %bb.o, label %_ZdvILb1EE13checked_int64IXT_EERKS1_S3_.exit

bb.o:                                             ; preds = %bb.n
  %i.af = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.af, align 8, !tbaa !15
  tail call void @__cxa_throw(ptr nonnull %i.af, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

_ZdvILb1EE13checked_int64IXT_EERKS1_S3_.exit:     ; preds = %bb.n
  %i.ag = load i64, ptr %2, align 8, !tbaa !17
  %i.ah = sdiv i64 %i.ag, %i.h
  br label %_Z3divILb1EE13checked_int64IXT_EERKS1_S3_.exit

_Z3divILb1EE13checked_int64IXT_EERKS1_S3_.exit:   ; preds = %bb.l, %bb.j, %_ZN13checked_int64ILb1EEdVERKS0_.exit.i, %_ZdvILb1EE13checked_int64IXT_EERKS1_S3_.exit
  %.sroa.0.0 = phi i64 [ %i.ah, %_ZdvILb1EE13checked_int64IXT_EERKS1_S3_.exit ], [ %i.v, %_ZN13checked_int64ILb1EEdVERKS0_.exit.i ], [ %i.ac, %bb.l ], [ %i.z, %bb.j ]
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden i64 @_ZN3sls10arith_baseI13checked_int64ILb1EEE7root_ofEjS2_(ptr noundef nonnull align 8 dereferenceable(672) %0, i32 noundef %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %class.checked_int64, align 8       ; 10 uses
  %4 = alloca %class.checked_int64, align 8       ; 5 uses
  %5 = alloca %class.checked_int64, align 8       ; 10 uses
  %6 = alloca %class.checked_int64, align 8       ; 10 uses
  %7 = alloca %class.checked_int64, align 8       ; 5 uses
  %8 = alloca %class.checked_int64, align 8       ; 5 uses
  %9 = alloca %class.checked_int64, align 8       ; 5 uses
  %10 = alloca %class.checked_int64, align 8      ; 6 uses
  %11 = alloca %class.checked_int64, align 8      ; 6 uses
  %12 = alloca %class.checked_int64, align 8      ; 5 uses
  %13 = alloca %class.checked_int64, align 8      ; 4 uses
  %14 = alloca %class.checked_int64, align 8      ; 8 uses
  %i.a = icmp slt i64 %2, 2
  %i.b = icmp eq i32 %1, 1
  %or.cond = or i1 %i.b, %i.a
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext i32 %1 to i64                       ; 8 uses
  %.not = icmp samesign ugt i64 %2, %i.c
  br i1 %.not, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq i32 %1, 0
  br i1 %i.d, label %bb.d, label %_Z3divILb1EE13checked_int64IXT_EERKS1_S3_.exit

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.e, align 8, !tbaa !15
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

_Z3divILb1EE13checked_int64IXT_EERKS1_S3_.exit:   ; preds = %bb.c
  %i.f = udiv i64 %2, %i.c                        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  %i.g = add i32 %1, -1                           ; 4 uses
  %i.h = zext i32 %i.g to i64                     ; 3 uses
  store i64 %i.h, ptr %13, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  store i64 %i.f, ptr %12, align 8, !tbaa !17
  %i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN13checked_int64ILb1EEmLERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %13) ; 0 uses
  %i.j = load i64, ptr %12, align 8               ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store i64 %i.f, ptr %10, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  store i64 1, ptr %11, align 8, !tbaa !45
  %i.k = icmp ugt i32 %i.g, 1                     ; 2 uses
  br i1 %i.k, label %.lr.ph.i, label %_ZN3sls10arith_baseI13checked_int64ILb1EEE8power_ofES2_j.exit

.lr.ph.i:                                         ; preds = %_Z3divILb1EE13checked_int64IXT_EERKS1_S3_.exit, %bb.f
  %i.l = phi i64 [ %i.s, %bb.f ], [ %i.f, %_Z3divILb1EE13checked_int64IXT_EERKS1_S3_.exit ] ; 2 uses
  %.06.i = phi i32 [ %i.t, %bb.f ], [ %i.g, %_Z3divILb1EE13checked_int64IXT_EERKS1_S3_.exit ] ; 3 uses
  %i.m = and i32 %.06.i, 1
  %.not.i11 = icmp eq i32 %i.m, 0
  br i1 %.not.i11, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store i64 %i.l, ptr %9, align 8, !tbaa !17
  %i.n = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN13checked_int64ILb1EEmLERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %11) ; 0 uses
  %i.o = load i64, ptr %9, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  store i64 %i.o, ptr %11, align 8, !tbaa !17
  %i.p = add nsw i32 %.06.i, -1
  %.pre.i = load i64, ptr %10, align 8, !tbaa !17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i
  %i.q = phi i64 [ %.pre.i, %bb.e ], [ %i.l, %.lr.ph.i ]
  %.1.i = phi i32 [ %i.p, %bb.e ], [ %.06.i, %.lr.ph.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store i64 %i.q, ptr %8, align 8, !tbaa !17
  %i.r = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN13checked_int64ILb1EEmLERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %10) ; 0 uses
  %i.s = load i64, ptr %8, align 8                ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  store i64 %i.s, ptr %10, align 8, !tbaa !17
  %i.t = lshr i32 %.1.i, 1
  %i.u = icmp ugt i32 %.1.i, 3
  br i1 %i.u, label %.lr.ph.i, label %_ZN3sls10arith_baseI13checked_int64ILb1EEE8power_ofES2_j.exit, !llvm.loop !168

_ZN3sls10arith_baseI13checked_int64ILb1EEE8power_ofES2_j.exit: ; preds = %bb.f, %_Z3divILb1EE13checked_int64IXT_EERKS1_S3_.exit
  %i.v = phi i64 [ %i.f, %_Z3divILb1EE13checked_int64IXT_EERKS1_S3_.exit ], [ %i.s, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i64 %i.v, ptr %7, align 8, !tbaa !17
  %i.w = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN13checked_int64ILb1EEmLERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %11) ; 0 uses
  %i.x = load i64, ptr %7, align 8                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.g, label %_Z3divILb1EE13checked_int64IXT_EERKS1_S3_.exit17

bb.g:                                             ; preds = %_ZN3sls10arith_baseI13checked_int64ILb1EEE8power_ofES2_j.exit
  %i.z = call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.z, align 8, !tbaa !15
  call void @__cxa_throw(ptr nonnull %i.z, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

_Z3divILb1EE13checked_int64IXT_EERKS1_S3_.exit17: ; preds = %_ZN3sls10arith_baseI13checked_int64ILb1EEE8power_ofES2_j.exit
  %i.aa = sdiv i64 %2, %i.x                       ; 3 uses
  %i.ab = add i64 %i.aa, %i.j                     ; 5 uses
  %i.ac = icmp sgt i64 %i.j, 0
  br i1 %i.ac, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_Z3divILb1EE13checked_int64IXT_EERKS1_S3_.exit17
  %i.ad = icmp sgt i64 %i.aa, 0
  %i.ae = icmp slt i64 %i.ab, 1
  %or.cond.i.i = and i1 %i.ad, %i.ae
  br i1 %or.cond.i.i, label %bb.i, label %_ZN13checked_int64ILb1EEdVERKS0_.exit.i18

bb.i:                                             ; preds = %bb.h
  %i.af = call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.af, align 8, !tbaa !15
  call void @__cxa_throw(ptr nonnull %i.af, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

bb.j:                                             ; preds = %_Z3divILb1EE13checked_int64IXT_EERKS1_S3_.exit17
  %i.ag = icmp slt i64 %i.j, 0
  br i1 %i.ag, label %bb.k, label %_ZN13checked_int64ILb1EEdVERKS0_.exit.i18

bb.k:                                             ; preds = %bb.j
  %i.ah = icmp slt i64 %i.aa, 0
  %i.ai = icmp sgt i64 %i.ab, -1
  %or.cond3.i.i = and i1 %i.ah, %i.ai
  br i1 %or.cond3.i.i, label %bb.l, label %_ZN13checked_int64ILb1EEdVERKS0_.exit.i18

bb.l:                                             ; preds = %bb.k
  %i.aj = call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.aj, align 8, !tbaa !15
  call void @__cxa_throw(ptr nonnull %i.aj, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

_ZN13checked_int64ILb1EEdVERKS0_.exit.i18:        ; preds = %bb.k, %bb.j, %bb.h
  %i.ak = sdiv i64 %i.ab, %i.c                    ; 3 uses
  %i.al = srem i64 %i.ab, %i.c
  %i.am = icmp sge i64 %i.ab, 0
  %.not.i21 = icmp eq i64 %i.al, 0
  %or.cond184 = or i1 %i.am, %.not.i21
  br i1 %or.cond184, label %_Z3divILb1EE13checked_int64IXT_EERKS1_S3_.exit23, label %bb.m

bb.m:                                             ; preds = %_ZN13checked_int64ILb1EEdVERKS0_.exit.i18
  %i.an = add nsw i64 %i.ak, -1
  %or.cond.i22 = icmp eq i64 %i.ak, -9223372036854775808
  br i1 %or.cond.i22, label %bb.n, label %_Z3divILb1EE13checked_int64IXT_EERKS1_S3_.exit23

bb.n:                                             ; preds = %bb.m
end_hunk_0
begin_hunk_1_@_ZN3sls10arith_baseI13checked_int64ILb1EEE15initialize_unitEN3sat7literalE:bb.a
  %i.cc = load i64, ptr %i.bg, align 8, !tbaa !17
  store i8 0, ptr %i.bv, align 8
  %.sroa.45.0..sroa_idx.i56 = getelementptr inbounds nuw i8, ptr %i.bu, i64 144
  store i64 %i.cc, ptr %.sroa.45.0..sroa_idx.i56, align 8
  store i8 1, ptr %i.bw, align 8, !tbaa !81
  br label %_ZN3sls10arith_baseI13checked_int64ILb1EEE6add_geEjRKS2_.exit

bb.x:                                             ; preds = %bb.r
  %i.cd = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.ce = tail call i64 @_ZngILb1EE13checked_int64IXT_EERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.cd) ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !139
  %i.ch = zext i32 %.sroa.13.0.copyload to i64    ; 2 uses
  %i.ci = getelementptr inbounds nuw [184 x i8], ptr %i.cg, i64 %i.ch ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 112 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 128 ; 2 uses
  %i.cl = load i8, ptr %i.ck, align 8, !tbaa !81, !range !82, !noundef !38
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 120 ; 2 uses
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !45
  %.not.i61 = icmp slt i64 %i.co, %i.ce
  br i1 %.not.i61, label %.thread.i62, label %_ZN3sls10arith_baseI13checked_int64ILb1EEE6add_geEjRKS2_.exit63

.thread.i62:                                      ; preds = %bb.y
  store i8 0, ptr %i.cj, align 8
  store i64 %i.ce, ptr %i.cn, align 8
  br label %_ZN3sls10arith_baseI13checked_int64ILb1EEE6add_geEjRKS2_.exit63

bb.z:                                             ; preds = %bb.x
  store i8 0, ptr %i.cj, align 8
  %.sroa.45.0..sroa_idx.i60 = getelementptr inbounds nuw i8, ptr %i.ci, i64 120
  store i64 %i.ce, ptr %.sroa.45.0..sroa_idx.i60, align 8
  store i8 1, ptr %i.ck, align 8, !tbaa !81
  br label %_ZN3sls10arith_baseI13checked_int64ILb1EEE6add_geEjRKS2_.exit63

_ZN3sls10arith_baseI13checked_int64ILb1EEE6add_geEjRKS2_.exit63: ; preds = %bb.y, %.thread.i62, %bb.z
  %i.cp = tail call i64 @_ZngILb1EE13checked_int64IXT_EERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.cd) ; 3 uses
  %i.cq = load ptr, ptr %i.cf, align 8, !tbaa !139
  %i.cr = getelementptr inbounds nuw [184 x i8], ptr %i.cq, i64 %i.ch ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 136 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 152 ; 2 uses
  %i.cu = load i8, ptr %i.ct, align 8, !tbaa !81, !range !82, !noundef !38
  %i.cv = trunc nuw i8 %i.cu to i1
  br i1 %i.cv, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZN3sls10arith_baseI13checked_int64ILb1EEE6add_geEjRKS2_.exit63
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 144 ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !45
  %.not.i65 = icmp slt i64 %i.cp, %i.cx
  br i1 %.not.i65, label %.thread.i66, label %_ZN3sls10arith_baseI13checked_int64ILb1EEE6add_geEjRKS2_.exit

.thread.i66:                                      ; preds = %bb.aa
  store i8 0, ptr %i.cs, align 8
  store i64 %i.cp, ptr %i.cw, align 8
  br label %_ZN3sls10arith_baseI13checked_int64ILb1EEE6add_geEjRKS2_.exit

bb.ab:                                            ; preds = %_ZN3sls10arith_baseI13checked_int64ILb1EEE6add_geEjRKS2_.exit63
  store i8 0, ptr %i.cs, align 8
  %.sroa.45.0..sroa_idx.i64 = getelementptr inbounds nuw i8, ptr %i.cr, i64 144
  store i64 %i.cp, ptr %.sroa.45.0..sroa_idx.i64, align 8
  store i8 1, ptr %i.ct, align 8, !tbaa !81
  br label %_ZN3sls10arith_baseI13checked_int64ILb1EEE6add_geEjRKS2_.exit

bb.ac:                                            ; preds = %bb.r
  %i.cy = tail call noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv() ; 2 uses
  %i.cz = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cy, ptr noundef nonnull @.str.51, i64 noundef 11) ; 0 uses
  %i.da = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN3satlsERSoNS_7literalE(ptr noundef nonnull align 8 dereferenceable(8) %i.cy, i32 %1) ; 2 uses
  %i.db = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.da, ptr noundef nonnull @.str.15, i64 noundef 1) ; 0 uses
  %i.dc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK3sls10arith_baseI13checked_int64ILb1EEE4ineq7displayERSo(ptr noundef nonnull align 8 dereferenceable(49) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.da)
  %i.dd = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dc, ptr noundef nonnull @.str.13, i64 noundef 1) ; 0 uses
  br label %_ZN3sls10arith_baseI13checked_int64ILb1EEE6add_geEjRKS2_.exit

bb.ad:                                            ; preds = %bb.c
  %i.de = trunc i32 %1 to i1
  br i1 %i.de, label %bb.ae, label %bb.am

bb.ae:                                            ; preds = %bb.ad
  switch i64 %.sroa.093.0.copyload, label %bb.al [
    i64 -1, label %bb.af
    i64 1, label %bb.ai
  ]

bb.af:                                            ; preds = %bb.ae
  %i.df = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !139
  %i.di = zext i32 %.sroa.13.0.copyload to i64
  %i.dj = getelementptr inbounds nuw [184 x i8], ptr %i.dh, i64 %i.di ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 136 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 152 ; 2 uses
  %i.dm = load i8, ptr %i.dl, align 8, !tbaa !81, !range !82, !noundef !38
  %i.dn = trunc nuw i8 %i.dm to i1
  br i1 %i.dn, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.do = getelementptr inbounds nuw i8, ptr %i.dj, i64 144 ; 2 uses
  %i.dp = load i64, ptr %i.df, align 8, !tbaa !45 ; 2 uses
  %i.dq = load i64, ptr %i.do, align 8, !tbaa !45
  %.not.i69 = icmp slt i64 %i.dp, %i.dq
  br i1 %.not.i69, label %.thread.i70, label %_ZN3sls10arith_baseI13checked_int64ILb1EEE6add_geEjRKS2_.exit

.thread.i70:                                      ; preds = %bb.ag
  store i8 0, ptr %i.dk, align 8
  store i64 %i.dp, ptr %i.do, align 8
  br label %_ZN3sls10arith_baseI13checked_int64ILb1EEE6add_geEjRKS2_.exit

bb.ah:                                            ; preds = %bb.af
  %i.dr = load i64, ptr %i.df, align 8, !tbaa !17
  store i8 0, ptr %i.dk, align 8
  %.sroa.45.0..sroa_idx.i68 = getelementptr inbounds nuw i8, ptr %i.dj, i64 144
  store i64 %i.dr, ptr %.sroa.45.0..sroa_idx.i68, align 8
  store i8 1, ptr %i.dl, align 8, !tbaa !81
  br label %_ZN3sls10arith_baseI13checked_int64ILb1EEE6add_geEjRKS2_.exit

bb.ai:                                            ; preds = %bb.ae
  %i.ds = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.dt = tail call i64 @_ZngILb1EE13checked_int64IXT_EERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.ds) ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !139
  %i.dw = zext i32 %.sroa.13.0.copyload to i64
  %i.dx = getelementptr inbounds nuw [184 x i8], ptr %i.dv, i64 %i.dw ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 112 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 128 ; 2 uses
  %i.ea = load i8, ptr %i.dz, align 8, !tbaa !81, !range !82, !noundef !38
  %i.eb = trunc nuw i8 %i.ea to i1
  br i1 %i.eb, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dx, i64 120 ; 2 uses
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !45
  %.not.i73 = icmp slt i64 %i.ed, %i.dt
  br i1 %.not.i73, label %.thread.i74, label %_ZN3sls10arith_baseI13checked_int64ILb1EEE6add_geEjRKS2_.exit

.thread.i74:                                      ; preds = %bb.aj
  store i8 0, ptr %i.dy, align 8
  store i64 %i.dt, ptr %i.ec, align 8
  br label %_ZN3sls10arith_baseI13checked_int64ILb1EEE6add_geEjRKS2_.exit

bb.ak:                                            ; preds = %bb.ai
  store i8 0, ptr %i.dy, align 8
  %.sroa.45.0..sroa_idx.i72 = getelementptr inbounds nuw i8, ptr %i.dx, i64 120
  store i64 %i.dt, ptr %.sroa.45.0..sroa_idx.i72, align 8
  store i8 1, ptr %i.dz, align 8, !tbaa !81
  br label %_ZN3sls10arith_baseI13checked_int64ILb1EEE6add_geEjRKS2_.exit

bb.al:                                            ; preds = %bb.ae
  %i.ee = tail call noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv() ; 2 uses
  %i.ef = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ee, ptr noundef nonnull @.str.51, i64 noundef 11) ; 0 uses
  %i.eg = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN3satlsERSoNS_7literalE(ptr noundef nonnull align 8 dereferenceable(8) %i.ee, i32 %1) ; 2 uses
  %i.eh = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.eg, ptr noundef nonnull @.str.15, i64 noundef 1) ; 0 uses
  %i.ei = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK3sls10arith_baseI13checked_int64ILb1EEE4ineq7displayERSo(ptr noundef nonnull align 8 dereferenceable(49) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.eg)
  %i.ej = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ei, ptr noundef nonnull @.str.13, i64 noundef 1) ; 0 uses
  br label %_ZN3sls10arith_baseI13checked_int64ILb1EEE6add_geEjRKS2_.exit

bb.am:                                            ; preds = %bb.ad
  switch i64 %.sroa.093.0.copyload, label %bb.ap [
    i64 -1, label %bb.an
    i64 1, label %bb.ao
  ]

bb.an:                                            ; preds = %bb.am
  %i.ek = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  tail call void @_ZN3sls10arith_baseI13checked_int64ILb1EEE6add_gtEjRKS2_(ptr noundef nonnull align 8 dereferenceable(672) %0, i32 noundef %.sroa.13.0.copyload, ptr noundef nonnull align 8 dereferenceable(8) %i.ek)
  br label %_ZN3sls10arith_baseI13checked_int64ILb1EEE6add_geEjRKS2_.exit

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.el = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.em = tail call i64 @_ZngILb1EE13checked_int64IXT_EERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.el)
  store i64 %i.em, ptr %3, align 8
  call void @_ZN3sls10arith_baseI13checked_int64ILb1EEE6add_ltEjRKS2_(ptr noundef nonnull align 8 dereferenceable(672) %0, i32 noundef %.sroa.13.0.copyload, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %_ZN3sls10arith_baseI13checked_int64ILb1EEE6add_geEjRKS2_.exit

bb.ap:                                            ; preds = %bb.am
  %i.en = tail call noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv() ; 2 uses
  %i.eo = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.en, ptr noundef nonnull @.str.51, i64 noundef 11) ; 0 uses
  %i.ep = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN3satlsERSoNS_7literalE(ptr noundef nonnull align 8 dereferenceable(8) %i.en, i32 %1) ; 2 uses
  %i.eq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ep, ptr noundef nonnull @.str.15, i64 noundef 1) ; 0 uses
  %i.er = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK3sls10arith_baseI13checked_int64ILb1EEE4ineq7displayERSo(ptr noundef nonnull align 8 dereferenceable(49) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.ep)
  %i.es = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.er, ptr noundef nonnull @.str.13, i64 noundef 1) ; 0 uses
  br label %_ZN3sls10arith_baseI13checked_int64ILb1EEE6add_geEjRKS2_.exit

_ZN3sls10arith_baseI13checked_int64ILb1EEE6add_geEjRKS2_.exit: ; preds = %bb.b, %bb.a, %_ZNK6vectorIPN3sls10arith_baseI13checked_int64ILb1EEE4ineqELb0EjE4sizeEv.exit.i.i, %bb.c, %bb.p, %bb.f, %bb.h, %bb.g, %bb.ac, %bb.q, %bb.an, %bb.ap, %bb.ao, %bb.al, %bb.k, %.thread.i, %bb.l, %bb.n, %.thread.i51, %bb.o, %bb.v, %.thread.i58, %bb.w, %bb.aa, %.thread.i66, %bb.ab, %bb.ag, %.thread.i70, %bb.ah, %bb.aj, %.thread.i74, %bb.ak, %_ZNK6vectorISt4pairI13checked_int64ILb1EEjELb1EjE4sizeEv.exit, %_ZNK3sls10arith_baseI13checked_int64ILb1EEE8get_ineqEj.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN3sls10arith_baseI13checked_int64ILb1EEE6add_ltEjRKS2_(ptr noundef nonnull align 8 dereferenceable(672) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !139
  %i.c = zext i32 %1 to i64
  %i.d = getelementptr inbounds nuw [184 x i8], ptr %i.b, i64 %i.c ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load i32, ptr %i.e, align 8, !tbaa !78
  %i.g = icmp eq i32 %i.f, 0
  %i.h = load i64, ptr %2, align 8, !tbaa !17     ; 3 uses
  br i1 %i.g, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = add i64 %i.h, -1                         ; 3 uses
  %or.cond = icmp eq i64 %i.h, -9223372036854775808
  br i1 %or.cond, label %bb.c, label %_ZmiILb1EE13checked_int64IXT_EERKS1_RKl.exit

bb.c:                                             ; preds = %bb.b
  %i.j = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.j, align 8, !tbaa !15
  tail call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

_ZmiILb1EE13checked_int64IXT_EERKS1_RKl.exit:     ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 136 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 152 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !81, !range !82, !noundef !38
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZmiILb1EE13checked_int64IXT_EERKS1_RKl.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 144 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !45
  %.not.i = icmp slt i64 %i.i, %i.p
  br i1 %.not.i, label %.thread.i, label %_ZN3sls10arith_baseI13checked_int64ILb1EEE6add_leEjRKS2_.exit

.thread.i:                                        ; preds = %bb.d
  store i8 0, ptr %i.k, align 8
  store i64 %i.i, ptr %i.o, align 8
  br label %_ZN3sls10arith_baseI13checked_int64ILb1EEE6add_leEjRKS2_.exit

bb.e:                                             ; preds = %_ZmiILb1EE13checked_int64IXT_EERKS1_RKl.exit
  store i8 0, ptr %i.k, align 8
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  store i64 %i.i, ptr %.sroa.45.0..sroa_idx.i, align 8
  store i8 1, ptr %i.l, align 8, !tbaa !81
  br label %_ZN3sls10arith_baseI13checked_int64ILb1EEE6add_leEjRKS2_.exit

bb.f:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 152 ; 2 uses
  %i.s = load i8, ptr %i.r, align 8, !tbaa !81, !range !82, !noundef !38
  %i.t = trunc nuw i8 %i.s to i1
  store i8 1, ptr %i.q, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  store i64 %i.h, ptr %.sroa.45.0..sroa_idx, align 8
  br i1 %i.t, label %_ZN3sls10arith_baseI13checked_int64ILb1EEE6add_leEjRKS2_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i8 1, ptr %i.r, align 8, !tbaa !81
  br label %_ZN3sls10arith_baseI13checked_int64ILb1EEE6add_leEjRKS2_.exit

_ZN3sls10arith_baseI13checked_int64ILb1EEE6add_leEjRKS2_.exit: ; preds = %bb.g, %bb.f, %bb.e, %.thread.i, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN3sls10arith_baseI13checked_int64ILb1EEE6add_gtEjRKS2_(ptr noundef nonnull align 8 dereferenceable(672) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !139
  %i.c = zext i32 %1 to i64
  %i.d = getelementptr inbounds nuw [184 x i8], ptr %i.b, i64 %i.c ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load i32, ptr %i.e, align 8, !tbaa !78
  %i.g = icmp eq i32 %i.f, 0
  %i.h = load i64, ptr %2, align 8, !tbaa !17     ; 3 uses
  br i1 %i.g, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = add i64 %i.h, 1                          ; 3 uses
  %i.j = icmp eq i64 %i.h, 9223372036854775807
  br i1 %i.j, label %bb.c, label %_ZplILb1EE13checked_int64IXT_EERKS1_RKl.exit

bb.c:                                             ; preds = %bb.b
  %i.k = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.k, align 8, !tbaa !15
  tail call void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

_ZplILb1EE13checked_int64IXT_EERKS1_RKl.exit:     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 112 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 128 ; 2 uses
  %i.n = load i8, ptr %i.m, align 8, !tbaa !81, !range !82, !noundef !38
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZplILb1EE13checked_int64IXT_EERKS1_RKl.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 120 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !45
  %.not.i = icmp slt i64 %i.q, %i.i
  br i1 %.not.i, label %.thread.i, label %_ZN3sls10arith_baseI13checked_int64ILb1EEE6add_geEjRKS2_.exit

.thread.i:                                        ; preds = %bb.d
  store i8 0, ptr %i.l, align 8
  store i64 %i.i, ptr %i.p, align 8
  br label %_ZN3sls10arith_baseI13checked_int64ILb1EEE6add_geEjRKS2_.exit

bb.e:                                             ; preds = %_ZplILb1EE13checked_int64IXT_EERKS1_RKl.exit
  store i8 0, ptr %i.l, align 8
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  store i64 %i.i, ptr %.sroa.45.0..sroa_idx.i, align 8
  store i8 1, ptr %i.m, align 8, !tbaa !81
  br label %_ZN3sls10arith_baseI13checked_int64ILb1EEE6add_geEjRKS2_.exit

bb.f:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 128 ; 2 uses
  %i.t = load i8, ptr %i.s, align 8, !tbaa !81, !range !82, !noundef !38
  %i.u = trunc nuw i8 %i.t to i1
  store i8 1, ptr %i.r, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  store i64 %i.h, ptr %.sroa.45.0..sroa_idx, align 8
  br i1 %i.u, label %_ZN3sls10arith_baseI13checked_int64ILb1EEE6add_geEjRKS2_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i8 1, ptr %i.s, align 8, !tbaa !81
  br label %_ZN3sls10arith_baseI13checked_int64ILb1EEE6add_geEjRKS2_.exit

_ZN3sls10arith_baseI13checked_int64ILb1EEE6add_geEjRKS2_.exit: ; preds = %bb.g, %bb.f, %bb.e, %.thread.i, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN3sls10arith_baseI13checked_int64ILb1EEE6add_geEjRKS2_(ptr noundef nonnull align 8 dereferenceable(672) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !139
  %i.c = zext i32 %1 to i64
  %i.d = getelementptr inbounds nuw [184 x i8], ptr %i.b, i64 %i.c ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 112 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 128 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !81, !range !82, !noundef !38
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 120 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !45
  %i.k = load i64, ptr %2, align 8, !tbaa !45     ; 2 uses
  %.not = icmp slt i64 %i.j, %i.k
  br i1 %.not, label %.thread, label %_ZNSt8optionalIN3sls10arith_baseI13checked_int64ILb1EEE5boundEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit

.thread:                                          ; preds = %bb.b
  store i8 0, ptr %i.e, align 8
  store i64 %i.k, ptr %i.i, align 8
  br label %_ZNSt8optionalIN3sls10arith_baseI13checked_int64ILb1EEE5boundEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit

bb.c:                                             ; preds = %bb.a
  %i.l = load i64, ptr %2, align 8, !tbaa !17
  store i8 0, ptr %i.e, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  store i64 %i.l, ptr %.sroa.45.0..sroa_idx, align 8
  store i8 1, ptr %i.f, align 8, !tbaa !81
  br label %_ZNSt8optionalIN3sls10arith_baseI13checked_int64ILb1EEE5boundEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit

_ZNSt8optionalIN3sls10arith_baseI13checked_int64ILb1EEE5boundEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit: ; preds = %bb.c, %.thread, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN3sls10arith_baseI13checked_int64ILb1EEE6add_leEjRKS2_(ptr noundef nonnull align 8 dereferenceable(672) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !139
  %i.c = zext i32 %1 to i64
  %i.d = getelementptr inbounds nuw [184 x i8], ptr %i.b, i64 %i.c ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 136 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 152 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !81, !range !82, !noundef !38
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 144 ; 2 uses
  %i.j = load i64, ptr %2, align 8, !tbaa !45     ; 2 uses
  %i.k = load i64, ptr %i.i, align 8, !tbaa !45
  %.not = icmp slt i64 %i.j, %i.k
  br i1 %.not, label %.thread, label %_ZNSt8optionalIN3sls10arith_baseI13checked_int64ILb1EEE5boundEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit

.thread:                                          ; preds = %bb.b
  store i8 0, ptr %i.e, align 8
  store i64 %i.j, ptr %i.i, align 8
  br label %_ZNSt8optionalIN3sls10arith_baseI13checked_int64ILb1EEE5boundEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit

bb.c:                                             ; preds = %bb.a
  %i.l = load i64, ptr %2, align 8, !tbaa !17
  store i8 0, ptr %i.e, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  store i64 %i.l, ptr %.sroa.45.0..sroa_idx, align 8
  store i8 1, ptr %i.f, align 8, !tbaa !81
  br label %_ZNSt8optionalIN3sls10arith_baseI13checked_int64ILb1EEE5boundEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit

_ZNSt8optionalIN3sls10arith_baseI13checked_int64ILb1EEE5boundEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit: ; preds = %bb.c, %.thread, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN3sls10arith_baseI13checked_int64ILb1EEE26initialize_input_assertionEP4expr(ptr noundef nonnull align 8 dereferenceable(672) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.vector.16, align 8           ; 10 uses
  %3 = alloca %class.checked_int64, align 8       ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, 65535
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZNK11ast_manager5is_orEPK4expr.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !218
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !19   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZNK11ast_manager5is_orEPK4expr.exit.thread, label %_ZNK11ast_manager5is_orEPK4expr.exit

_ZNK11ast_manager5is_orEPK4expr.exit:             ; preds = %bb.b
  %i.i = load i32, ptr %i.h, align 8, !tbaa !25
  %i.j = icmp eq i32 %i.i, 0
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.l = load i32, ptr %i.k, align 4
  %i.m = icmp eq i32 %i.l, 6
  %i.n = select i1 %i.j, i1 %i.m, i1 false
  br i1 %i.n, label %bb.c, label %_ZNK11ast_manager5is_orEPK4expr.exit.thread

bb.c:                                             ; preds = %_ZNK11ast_manager5is_orEPK4expr.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  store ptr null, ptr %2, align 8, !tbaa !305
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load i32, ptr %i.p, align 8, !tbaa !223  ; 2 uses
  %i.r = zext i32 %i.q to i64
  %.idx = shl nuw nsw i64 %i.r, 3
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx
  %.not64 = icmp eq i32 %i.q, 0
  br i1 %.not64, label %_ZN6vectorI13checked_int64ILb1EELb1EjED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 216
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.p
  %.066 = phi i32 [ -1, %.lr.ph ], [ %.0.i39.sroa.speculate.load., %bb.p ] ; 2 uses
  %.03365 = phi ptr [ %i.o, %.lr.ph ], [ %i.bq, %bb.p ] ; 2 uses
  %i.u = load ptr, ptr %.03365, align 8, !tbaa !224 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store i64 0, ptr %3, align 8, !tbaa !45
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.w = load i32, ptr %i.v, align 4
  %i.x = and i32 %i.w, 65535
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.e, label %_ZN6vectorI13checked_int64ILb1EELb1EjE6appendERKS2_.exit

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !218
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !19 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i, label %_ZN6vectorI13checked_int64ILb1EELb1EjE6appendERKS2_.exit, label %_ZNK11ast_manager5is_eqEPK4expr.exit.i

_ZNK11ast_manager5is_eqEPK4expr.exit.i:           ; preds = %bb.e
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !25
  %i.ae = icmp eq i32 %i.ad, 0
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = icmp eq i32 %i.ag, 2
  %i.ai = select i1 %i.ae, i1 %i.ah, i1 false
  br i1 %i.ai, label %bb.f, label %_ZN6vectorI13checked_int64ILb1EELb1EjE6appendERKS2_.exit

bb.f:                                             ; preds = %_ZNK11ast_manager5is_eqEPK4expr.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !223
  %i.al = icmp eq i32 %i.ak, 2
  br i1 %i.al, label %bb.g, label %_ZN6vectorI13checked_int64ILb1EELb1EjE6appendERKS2_.exit

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !224
  %i.ao = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !224
  %i.aq = invoke noundef zeroext i1 @_ZN3sls10arith_baseI13checked_int64ILb1EEE6is_numEP4exprRS2_(ptr noundef nonnull align 8 dereferenceable(672) %0, ptr noundef %i.ap, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.h unwind label %bb.n

bb.h:                                             ; preds = %bb.g
  br i1 %i.aq, label %bb.i, label %_ZN6vectorI13checked_int64ILb1EELb1EjE6appendERKS2_.exit

bb.i:                                             ; preds = %bb.h
  %i.ar = load i32, ptr %i.an, align 4, !tbaa !227 ; 2 uses
  %i.as = load ptr, ptr %i.t, align 8, !tbaa !228 ; 3 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %_ZN6vectorI13checked_int64ILb1EELb1EjE6appendERKS2_.exit, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i
end_hunk_1
begin_hunk_2_@_ZN3sls10arith_baseI13checked_int64ILb1EEE10initializeEv:bb.a
  br label %_ZNK6vectorIN3sls10arith_baseI13checked_int64ILb1EEE8var_infoELb1EjE4sizeEv.exit

.lr.ph529:                                        ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit, %.lr.ph529
  %.0167528 = phi ptr [ %i.ac, %.lr.ph529 ], [ %i.m, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit ] ; 2 uses
  %i.ab = load ptr, ptr %.0167528, align 8, !tbaa !224
  tail call void @_ZN3sls10arith_baseI13checked_int64ILb1EEE26initialize_input_assertionEP4expr(ptr noundef nonnull align 8 dereferenceable(672) %0, ptr noundef %i.ab)
  %i.ac = getelementptr inbounds nuw i8, ptr %.0167528, i64 8 ; 2 uses
  %.not207 = icmp eq ptr %i.ac, %i.s
  br i1 %.not207, label %.preheader, label %.lr.ph529

_ZNK6vectorIN3sls10arith_baseI13checked_int64ILb1EEE8var_infoELb1EjE4sizeEv.exit: ; preds = %_ZNK6vectorIN3sls10arith_baseI13checked_int64ILb1EEE8var_infoELb1EjE4sizeEv.exit.lr.ph, %.critedge216
  %indvars.iv = phi i64 [ 0, %_ZNK6vectorIN3sls10arith_baseI13checked_int64ILb1EEE8var_infoELb1EjE4sizeEv.exit.lr.ph ], [ %indvars.iv.next, %.critedge216 ] ; 14 uses
  %i.ad = phi ptr [ %i.v, %_ZNK6vectorIN3sls10arith_baseI13checked_int64ILb1EEE8var_infoELb1EjE4sizeEv.exit.lr.ph ], [ %i.rv, %.critedge216 ] ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !58
  %i.ag = zext i32 %i.af to i64
  %i.ah = icmp samesign ult i64 %indvars.iv, %i.ag
  br i1 %i.ah, label %bb.b, label %.critedge443

.critedge443:                                     ; preds = %_ZNK6vectorIN3sls10arith_baseI13checked_int64ILb1EEE8var_infoELb1EjE4sizeEv.exit, %.critedge216, %.preheader
  ret void

bb.b:                                             ; preds = %_ZNK6vectorIN3sls10arith_baseI13checked_int64ILb1EEE8var_infoELb1EjE4sizeEv.exit
  %i.ai = getelementptr inbounds nuw [184 x i8], ptr %i.ad, i64 %indvars.iv ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 128
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !81, !range !82, !noundef !38
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %.critedge216, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 152
  %i.an = load i8, ptr %i.am, align 8, !tbaa !81, !range !82, !noundef !38
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %.critedge216, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !65 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 44 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !79
  %i.at = icmp eq i32 %i.as, 6
  br i1 %i.at, label %bb.e, label %_ZN3sls10arith_baseI13checked_int64ILb1EEE6add_ltEjRKS2_.exit

bb.e:                                             ; preds = %bb.d
  %i.au = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.av = load i32, ptr %i.au, align 8, !tbaa !80
  %i.aw = load ptr, ptr %i.x, align 8, !tbaa !150
  %i.ax = zext i32 %i.av to i64
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.aw, i64 %i.ax ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !17 ; 6 uses
  %i.bb = load ptr, ptr %i.ay, align 8, !tbaa !57 ; 4 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %.thread, label %_ZNK6vectorISt4pairI13checked_int64ILb1EEjELb1EjE3endEv.exit

_ZNK6vectorISt4pairI13checked_int64ILb1EEjELb1EjE3endEv.exit: ; preds = %bb.e
  %i.bd = getelementptr inbounds i8, ptr %i.bb, i64 -4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !58 ; 2 uses
  %i.bf = zext i32 %i.be to i64
  %i.bg = shl nuw nsw i64 %i.bf, 4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bg
  %.not208530 = icmp eq i32 %i.be, 0
  br i1 %.not208530, label %.thread, label %.lr.ph538

.lr.ph538:                                        ; preds = %_ZNK6vectorISt4pairI13checked_int64ILb1EEjELb1EjE3endEv.exit, %.thread372
  %.0171537 = phi i8 [ %.1172, %.thread372 ], [ 1, %_ZNK6vectorISt4pairI13checked_int64ILb1EEjELb1EjE3endEv.exit ] ; 2 uses
  %.0175536 = phi i8 [ %.2177.ph, %.thread372 ], [ 1, %_ZNK6vectorISt4pairI13checked_int64ILb1EEjELb1EjE3endEv.exit ] ; 2 uses
  %.0179535 = phi i8 [ %.1180, %.thread372 ], [ 0, %_ZNK6vectorISt4pairI13checked_int64ILb1EEjELb1EjE3endEv.exit ] ; 6 uses
  %.0189534 = phi i8 [ %.2191.ph, %.thread372 ], [ 0, %_ZNK6vectorISt4pairI13checked_int64ILb1EEjELb1EjE3endEv.exit ] ; 6 uses
  %.0193533 = phi ptr [ %i.eu, %.thread372 ], [ %i.bb, %_ZNK6vectorISt4pairI13checked_int64ILb1EEjELb1EjE3endEv.exit ] ; 8 uses
  %.sroa.0348.0532 = phi i64 [ %.sroa.0348.1, %.thread372 ], [ %i.ba, %_ZNK6vectorISt4pairI13checked_int64ILb1EEjELb1EjE3endEv.exit ] ; 10 uses
  %.sroa.0343.0531 = phi i64 [ %.sroa.0343.1.ph, %.thread372 ], [ %i.ba, %_ZNK6vectorISt4pairI13checked_int64ILb1EEjELb1EjE3endEv.exit ] ; 10 uses
  %i.bi = trunc nuw i8 %.0175536 to i1
  %i.bj = or i8 %.0171537, %.0175536
  %or.cond.not = icmp eq i8 %i.bj, 0
  br i1 %or.cond.not, label %_ZN3sls10arith_baseI13checked_int64ILb1EEE6add_ltEjRKS2_.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph538
  %i.bk = trunc nuw i8 %.0171537 to i1
  %i.bl = getelementptr inbounds nuw i8, ptr %.0193533, i64 8
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !58
  %i.bn = load ptr, ptr %i.u, align 8, !tbaa !139
  %i.bo = zext i32 %i.bm to i64
  %i.bp = getelementptr inbounds nuw [184 x i8], ptr %i.bn, i64 %i.bo ; 12 uses
  br i1 %i.bk, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.bq = load i64, ptr %.0193533, align 8, !tbaa !45 ; 2 uses
  %i.br = icmp sgt i64 %i.bq, 0
  br i1 %i.br, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 112
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 128
  %i.bu = load i8, ptr %i.bt, align 8, !tbaa !81, !range !82, !noundef !38
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bp, i64 120
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.bx = load i64, ptr %.0193533, align 8, !tbaa !17
  store i64 %i.bx, ptr %9, align 8, !tbaa !17
  %i.by = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN13checked_int64ILb1EEmLERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.bw) ; 0 uses
  %i.bz = load i64, ptr %9, align 8               ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.ca = add i64 %i.bz, %.sroa.0348.0532         ; 3 uses
  %i.cb = icmp sgt i64 %.sroa.0348.0532, 0
  br i1 %i.cb, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.cc = icmp sgt i64 %i.bz, 0
  %i.cd = icmp slt i64 %i.ca, 1
  %or.cond.i = and i1 %i.cc, %i.cd
  br i1 %or.cond.i, label %bb.k, label %_ZN13checked_int64ILb1EEpLERKS0_.exit

bb.k:                                             ; preds = %bb.j
  %i.ce = call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.ce, align 8, !tbaa !15
  call void @__cxa_throw(ptr nonnull %i.ce, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

bb.l:                                             ; preds = %bb.i
  %i.cf = icmp slt i64 %.sroa.0348.0532, 0
  br i1 %i.cf, label %bb.m, label %_ZN13checked_int64ILb1EEpLERKS0_.exit

bb.m:                                             ; preds = %bb.l
  %i.cg = icmp slt i64 %i.bz, 0
  %i.ch = icmp sgt i64 %i.ca, -1
  %or.cond3.i = and i1 %i.cg, %i.ch
  br i1 %or.cond3.i, label %bb.n, label %_ZN13checked_int64ILb1EEpLERKS0_.exit

bb.n:                                             ; preds = %bb.m
  %i.ci = call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.ci, align 8, !tbaa !15
  call void @__cxa_throw(ptr nonnull %i.ci, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

_ZN13checked_int64ILb1EEpLERKS0_.exit:            ; preds = %bb.j, %bb.l, %bb.m
  %i.cj = load i8, ptr %i.bs, align 8, !tbaa !89, !range !82, !noundef !38
  %i.ck = or i8 %i.cj, %.0179535
  br label %.critedge

bb.o:                                             ; preds = %bb.g
  %i.cl = icmp slt i64 %i.bq, 0
  br i1 %i.cl, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bp, i64 136
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bp, i64 152
  %i.co = load i8, ptr %i.cn, align 8, !tbaa !81, !range !82, !noundef !38
  %i.cp = trunc nuw i8 %i.co to i1
  br i1 %i.cp, label %bb.q, label %.critedge

bb.q:                                             ; preds = %bb.p
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bp, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.cr = load i64, ptr %.0193533, align 8, !tbaa !17
  store i64 %i.cr, ptr %8, align 8, !tbaa !17
  %i.cs = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN13checked_int64ILb1EEmLERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.cq) ; 0 uses
  %i.ct = load i64, ptr %8, align 8               ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.cu = add i64 %i.ct, %.sroa.0348.0532         ; 3 uses
  %i.cv = icmp sgt i64 %.sroa.0348.0532, 0
  br i1 %i.cv, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.cw = icmp sgt i64 %i.ct, 0
  %i.cx = icmp slt i64 %i.cu, 1
  %or.cond.i219 = and i1 %i.cw, %i.cx
  br i1 %or.cond.i219, label %bb.s, label %_ZN13checked_int64ILb1EEpLERKS0_.exit220

bb.s:                                             ; preds = %bb.r
  %i.cy = call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.cy, align 8, !tbaa !15
  call void @__cxa_throw(ptr nonnull %i.cy, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

bb.t:                                             ; preds = %bb.q
  %i.cz = icmp slt i64 %.sroa.0348.0532, 0
  br i1 %i.cz, label %bb.u, label %_ZN13checked_int64ILb1EEpLERKS0_.exit220

bb.u:                                             ; preds = %bb.t
  %i.da = icmp slt i64 %i.ct, 0
  %i.db = icmp sgt i64 %i.cu, -1
  %or.cond3.i218 = and i1 %i.da, %i.db
  br i1 %or.cond3.i218, label %bb.v, label %_ZN13checked_int64ILb1EEpLERKS0_.exit220

bb.v:                                             ; preds = %bb.u
  %i.dc = call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.dc, align 8, !tbaa !15
  call void @__cxa_throw(ptr nonnull %i.dc, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

_ZN13checked_int64ILb1EEpLERKS0_.exit220:         ; preds = %bb.r, %bb.t, %bb.u
  %i.dd = load i8, ptr %i.cm, align 8, !tbaa !89, !range !82, !noundef !38
  %i.de = or i8 %i.dd, %.0179535
  br label %.critedge

.critedge:                                        ; preds = %bb.h, %bb.o, %bb.p, %_ZN13checked_int64ILb1EEpLERKS0_.exit, %_ZN13checked_int64ILb1EEpLERKS0_.exit220, %bb.f
  %.sroa.0348.1 = phi i64 [ %i.ca, %_ZN13checked_int64ILb1EEpLERKS0_.exit ], [ %i.cu, %_ZN13checked_int64ILb1EEpLERKS0_.exit220 ], [ %.sroa.0348.0532, %bb.p ], [ %.sroa.0348.0532, %bb.f ], [ %.sroa.0348.0532, %bb.o ], [ %.sroa.0348.0532, %bb.h ] ; 5 uses
  %.1180 = phi i8 [ %i.ck, %_ZN13checked_int64ILb1EEpLERKS0_.exit ], [ %i.de, %_ZN13checked_int64ILb1EEpLERKS0_.exit220 ], [ %.0179535, %bb.p ], [ %.0179535, %bb.f ], [ %.0179535, %bb.o ], [ %.0179535, %bb.h ] ; 2 uses
  %.1172 = phi i8 [ 1, %_ZN13checked_int64ILb1EEpLERKS0_.exit ], [ 1, %_ZN13checked_int64ILb1EEpLERKS0_.exit220 ], [ 0, %bb.p ], [ 0, %bb.f ], [ 0, %bb.o ], [ 0, %bb.h ] ; 2 uses
  br i1 %i.bi, label %bb.w, label %.thread372

bb.w:                                             ; preds = %.critedge
  %i.df = load i64, ptr %.0193533, align 8, !tbaa !45 ; 2 uses
  %i.dg = icmp sgt i64 %i.df, 0
  br i1 %i.dg, label %bb.x, label %bb.ae

bb.x:                                             ; preds = %bb.w
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bp, i64 136
  %i.di = getelementptr inbounds nuw i8, ptr %i.bp, i64 152
  %i.dj = load i8, ptr %i.di, align 8, !tbaa !81, !range !82, !noundef !38
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %bb.y, label %.thread372

bb.y:                                             ; preds = %bb.x
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bp, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.dm = load i64, ptr %.0193533, align 8, !tbaa !17
  store i64 %i.dm, ptr %7, align 8, !tbaa !17
  %i.dn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN13checked_int64ILb1EEmLERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.dl) ; 0 uses
  %i.do = load i64, ptr %7, align 8               ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.dp = add i64 %i.do, %.sroa.0343.0531         ; 3 uses
  %i.dq = icmp sgt i64 %.sroa.0343.0531, 0
  br i1 %i.dq, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.dr = icmp sgt i64 %i.do, 0
  %i.ds = icmp slt i64 %i.dp, 1
  %or.cond.i222 = and i1 %i.dr, %i.ds
  br i1 %or.cond.i222, label %bb.aa, label %_ZN13checked_int64ILb1EEpLERKS0_.exit223

bb.aa:                                            ; preds = %bb.z
  %i.dt = call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.dt, align 8, !tbaa !15
  call void @__cxa_throw(ptr nonnull %i.dt, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

bb.ab:                                            ; preds = %bb.y
  %i.du = icmp slt i64 %.sroa.0343.0531, 0
  br i1 %i.du, label %bb.ac, label %_ZN13checked_int64ILb1EEpLERKS0_.exit223

bb.ac:                                            ; preds = %bb.ab
  %i.dv = icmp slt i64 %i.do, 0
  %i.dw = icmp sgt i64 %i.dp, -1
  %or.cond3.i221 = and i1 %i.dv, %i.dw
  br i1 %or.cond3.i221, label %bb.ad, label %_ZN13checked_int64ILb1EEpLERKS0_.exit223

bb.ad:                                            ; preds = %bb.ac
  %i.dx = call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.dx, align 8, !tbaa !15
  call void @__cxa_throw(ptr nonnull %i.dx, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

_ZN13checked_int64ILb1EEpLERKS0_.exit223:         ; preds = %bb.z, %bb.ab, %bb.ac
  %i.dy = load i8, ptr %i.dh, align 8, !tbaa !89, !range !82, !noundef !38
  %i.dz = or i8 %i.dy, %.0189534
  br label %.thread372

bb.ae:                                            ; preds = %bb.w
  %i.ea = icmp slt i64 %i.df, 0
  br i1 %i.ea, label %bb.af, label %.thread372

bb.af:                                            ; preds = %bb.ae
  %i.eb = getelementptr inbounds nuw i8, ptr %i.bp, i64 112
  %i.ec = getelementptr inbounds nuw i8, ptr %i.bp, i64 128
  %i.ed = load i8, ptr %i.ec, align 8, !tbaa !81, !range !82, !noundef !38
  %i.ee = trunc nuw i8 %i.ed to i1
  br i1 %i.ee, label %bb.ag, label %.thread372

bb.ag:                                            ; preds = %bb.af
  %i.ef = getelementptr inbounds nuw i8, ptr %i.bp, i64 120
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.eg = load i64, ptr %.0193533, align 8, !tbaa !17
  store i64 %i.eg, ptr %6, align 8, !tbaa !17
  %i.eh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN13checked_int64ILb1EEmLERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.ef) ; 0 uses
  %i.ei = load i64, ptr %6, align 8               ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.ej = add i64 %i.ei, %.sroa.0343.0531         ; 3 uses
  %i.ek = icmp sgt i64 %.sroa.0343.0531, 0
  br i1 %i.ek, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.el = icmp sgt i64 %i.ei, 0
  %i.em = icmp slt i64 %i.ej, 1
  %or.cond.i225 = and i1 %i.el, %i.em
  br i1 %or.cond.i225, label %bb.ai, label %_ZN13checked_int64ILb1EEpLERKS0_.exit226

bb.ai:                                            ; preds = %bb.ah
  %i.en = call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.en, align 8, !tbaa !15
  call void @__cxa_throw(ptr nonnull %i.en, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

bb.aj:                                            ; preds = %bb.ag
  %i.eo = icmp slt i64 %.sroa.0343.0531, 0
  br i1 %i.eo, label %bb.ak, label %_ZN13checked_int64ILb1EEpLERKS0_.exit226

bb.ak:                                            ; preds = %bb.aj
  %i.ep = icmp slt i64 %i.ei, 0
  %i.eq = icmp sgt i64 %i.ej, -1
  %or.cond3.i224 = and i1 %i.ep, %i.eq
  br i1 %or.cond3.i224, label %bb.al, label %_ZN13checked_int64ILb1EEpLERKS0_.exit226

bb.al:                                            ; preds = %bb.ak
  %i.er = call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.er, align 8, !tbaa !15
  call void @__cxa_throw(ptr nonnull %i.er, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

_ZN13checked_int64ILb1EEpLERKS0_.exit226:         ; preds = %bb.ah, %bb.aj, %bb.ak
  %i.es = load i8, ptr %i.eb, align 8, !tbaa !89, !range !82, !noundef !38
  %i.et = or i8 %i.es, %.0189534
  br label %.thread372

.thread372:                                       ; preds = %bb.x, %bb.ae, %.critedge, %_ZN13checked_int64ILb1EEpLERKS0_.exit226, %_ZN13checked_int64ILb1EEpLERKS0_.exit223, %bb.af
  %.sroa.0343.1.ph = phi i64 [ %.sroa.0343.0531, %bb.ae ], [ %i.dp, %_ZN13checked_int64ILb1EEpLERKS0_.exit223 ], [ %.sroa.0343.0531, %.critedge ], [ %.sroa.0343.0531, %bb.af ], [ %i.ej, %_ZN13checked_int64ILb1EEpLERKS0_.exit226 ], [ %.sroa.0343.0531, %bb.x ] ; 8 uses
  %.2191.ph = phi i8 [ %.0189534, %bb.ae ], [ %i.dz, %_ZN13checked_int64ILb1EEpLERKS0_.exit223 ], [ %.0189534, %.critedge ], [ %.0189534, %bb.af ], [ %i.et, %_ZN13checked_int64ILb1EEpLERKS0_.exit226 ], [ %.0189534, %bb.x ] ; 2 uses
  %.2177.ph = phi i8 [ 0, %bb.ae ], [ 1, %_ZN13checked_int64ILb1EEpLERKS0_.exit223 ], [ 0, %.critedge ], [ 0, %bb.af ], [ 1, %_ZN13checked_int64ILb1EEpLERKS0_.exit226 ], [ 0, %bb.x ] ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.0193533, i64 16 ; 2 uses
  %.not208 = icmp eq ptr %i.eu, %i.bh
  br i1 %.not208, label %.critedge6, label %.lr.ph538

.critedge6:                                       ; preds = %.thread372
  %i.ev = trunc nuw i8 %.1172 to i1
  %i.ew = trunc nuw i8 %.2177.ph to i1            ; 7 uses
  %i.ex = trunc nuw i8 %.2191.ph to i1            ; 7 uses
  br i1 %i.ev, label %bb.am, label %_ZN3sls10arith_baseI13checked_int64ILb1EEE6add_gtEjRKS2_.exit

bb.am:                                            ; preds = %.critedge6
  %i.ey = trunc nuw i8 %.1180 to i1
  br i1 %i.ey, label %bb.an, label %.thread

bb.an:                                            ; preds = %bb.am
  %i.ez = load ptr, ptr %i.u, align 8, !tbaa !139
  %i.fa = getelementptr inbounds nuw [184 x i8], ptr %i.ez, i64 %indvars.iv ; 8 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 40
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !78
  %i.fd = icmp eq i32 %i.fc, 0
  br i1 %i.fd, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %bb.an
  %i.fe = add i64 %.sroa.0348.1, 1                ; 3 uses
  %i.ff = icmp eq i64 %.sroa.0348.1, 9223372036854775807
  br i1 %i.ff, label %bb.ap, label %_ZplILb1EE13checked_int64IXT_EERKS1_RKl.exit.i

bb.ap:                                            ; preds = %bb.ao
  %i.fg = call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.fg, align 8, !tbaa !15
  call void @__cxa_throw(ptr nonnull %i.fg, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

_ZplILb1EE13checked_int64IXT_EERKS1_RKl.exit.i:   ; preds = %bb.ao
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fa, i64 112 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fa, i64 128 ; 2 uses
  %i.fj = load i8, ptr %i.fi, align 8, !tbaa !81, !range !82, !noundef !38
  %i.fk = trunc nuw i8 %i.fj to i1
  br i1 %i.fk, label %bb.aq, label %.split655

bb.aq:                                            ; preds = %_ZplILb1EE13checked_int64IXT_EERKS1_RKl.exit.i
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fa, i64 120 ; 2 uses
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !45
  %.not.i.i = icmp slt i64 %i.fm, %i.fe
  br i1 %.not.i.i, label %.thread.i.i, label %_ZN3sls10arith_baseI13checked_int64ILb1EEE6add_gtEjRKS2_.exit

.thread.i.i:                                      ; preds = %bb.aq
  store i8 0, ptr %i.fh, align 8
  store i64 %i.fe, ptr %i.fl, align 8
  br i1 %i.ew, label %bb.at, label %_ZN3sls10arith_baseI13checked_int64ILb1EEE6add_ltEjRKS2_.exit

.split655:                                        ; preds = %_ZplILb1EE13checked_int64IXT_EERKS1_RKl.exit.i
  store i8 0, ptr %i.fh, align 8
  %.sroa.45.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fa, i64 120
  store i64 %i.fe, ptr %.sroa.45.0..sroa_idx.i.i, align 8
  store i8 1, ptr %i.fi, align 8, !tbaa !81
  br i1 %i.ew, label %bb.at, label %_ZN3sls10arith_baseI13checked_int64ILb1EEE6add_ltEjRKS2_.exit

bb.ar:                                            ; preds = %bb.an
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fa, i64 112
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fa, i64 128 ; 2 uses
  %i.fp = load i8, ptr %i.fo, align 8, !tbaa !81, !range !82, !noundef !38
  %i.fq = trunc nuw i8 %i.fp to i1
  store i8 1, ptr %i.fn, align 8
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fa, i64 120
  store i64 %.sroa.0348.1, ptr %.sroa.45.0..sroa_idx.i, align 8
  br i1 %i.fq, label %_ZN3sls10arith_baseI13checked_int64ILb1EEE6add_gtEjRKS2_.exit, label %.split654

.split654:                                        ; preds = %bb.ar
  store i8 1, ptr %i.fo, align 8, !tbaa !81
  br i1 %i.ew, label %bb.at, label %_ZN3sls10arith_baseI13checked_int64ILb1EEE6add_ltEjRKS2_.exit

.thread:                                          ; preds = %_ZNK6vectorISt4pairI13checked_int64ILb1EEjELb1EjE3endEv.exit, %bb.e, %bb.am
  %.sroa.0343.0.lcssa636651 = phi i64 [ %.sroa.0343.1.ph, %bb.am ], [ %i.ba, %bb.e ], [ %i.ba, %_ZNK6vectorISt4pairI13checked_int64ILb1EEjELb1EjE3endEv.exit ] ; 3 uses
  %.sroa.0348.0.lcssa637650 = phi i64 [ %.sroa.0348.1, %bb.am ], [ %i.ba, %bb.e ], [ %i.ba, %_ZNK6vectorISt4pairI13checked_int64ILb1EEjELb1EjE3endEv.exit ] ; 3 uses
  %.0189.lcssa639649 = phi i1 [ %i.ex, %bb.am ], [ false, %bb.e ], [ false, %_ZNK6vectorISt4pairI13checked_int64ILb1EEjELb1EjE3endEv.exit ] ; 3 uses
  %.0175.lcssa642648 = phi i1 [ %i.ew, %bb.am ], [ true, %bb.e ], [ true, %_ZNK6vectorISt4pairI13checked_int64ILb1EEjELb1EjE3endEv.exit ] ; 3 uses
  %i.fr = load ptr, ptr %i.u, align 8, !tbaa !139
  %i.fs = getelementptr inbounds nuw [184 x i8], ptr %i.fr, i64 %indvars.iv ; 4 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 112 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 128 ; 2 uses
  %i.fv = load i8, ptr %i.fu, align 8, !tbaa !81, !range !82, !noundef !38
  %i.fw = trunc nuw i8 %i.fv to i1
  br i1 %i.fw, label %bb.as, label %.split

bb.as:                                            ; preds = %.thread
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fs, i64 120 ; 2 uses
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !45
  %.not.i = icmp slt i64 %i.fy, %.sroa.0348.0.lcssa637650
  br i1 %.not.i, label %.thread.i, label %_ZN3sls10arith_baseI13checked_int64ILb1EEE6add_gtEjRKS2_.exit

.thread.i:                                        ; preds = %bb.as
  store i8 0, ptr %i.ft, align 8
  store i64 %.sroa.0348.0.lcssa637650, ptr %i.fx, align 8
  br i1 %.0175.lcssa642648, label %bb.at, label %_ZN3sls10arith_baseI13checked_int64ILb1EEE6add_ltEjRKS2_.exit

.split:                                           ; preds = %.thread
  store i8 0, ptr %i.ft, align 8
  %.sroa.45.0..sroa_idx.i227 = getelementptr inbounds nuw i8, ptr %i.fs, i64 120
  store i64 %.sroa.0348.0.lcssa637650, ptr %.sroa.45.0..sroa_idx.i227, align 8
  store i8 1, ptr %i.fu, align 8, !tbaa !81
  br i1 %.0175.lcssa642648, label %bb.at, label %_ZN3sls10arith_baseI13checked_int64ILb1EEE6add_ltEjRKS2_.exit

_ZN3sls10arith_baseI13checked_int64ILb1EEE6add_gtEjRKS2_.exit: ; preds = %bb.as, %bb.ar, %bb.aq, %.critedge6
  %.0175.lcssa641 = phi i1 [ %i.ew, %.critedge6 ], [ %i.ew, %bb.aq ], [ %.0175.lcssa642648, %bb.as ], [ %i.ew, %bb.ar ]
  %.0189.lcssa638 = phi i1 [ %i.ex, %.critedge6 ], [ %i.ex, %bb.aq ], [ %.0189.lcssa639649, %bb.as ], [ %i.ex, %bb.ar ]
  %.sroa.0343.0.lcssa635 = phi i64 [ %.sroa.0343.1.ph, %.critedge6 ], [ %.sroa.0343.1.ph, %bb.aq ], [ %.sroa.0343.0.lcssa636651, %bb.as ], [ %.sroa.0343.1.ph, %bb.ar ]
  br i1 %.0175.lcssa641, label %bb.at, label %_ZN3sls10arith_baseI13checked_int64ILb1EEE6add_ltEjRKS2_.exit

bb.at:                                            ; preds = %.split655, %.thread.i.i, %.split654, %.thread.i, %.split, %_ZN3sls10arith_baseI13checked_int64ILb1EEE6add_gtEjRKS2_.exit
  %.sroa.0343.0.lcssa635653 = phi i64 [ %.sroa.0343.0.lcssa636651, %.split ], [ %.sroa.0343.0.lcssa635, %_ZN3sls10arith_baseI13checked_int64ILb1EEE6add_gtEjRKS2_.exit ], [ %.sroa.0343.0.lcssa636651, %.thread.i ], [ %.sroa.0343.1.ph, %.split654 ], [ %.sroa.0343.1.ph, %.thread.i.i ], [ %.sroa.0343.1.ph, %.split655 ] ; 6 uses
  %.0189.lcssa638652 = phi i1 [ %.0189.lcssa639649, %.split ], [ %.0189.lcssa638, %_ZN3sls10arith_baseI13checked_int64ILb1EEE6add_gtEjRKS2_.exit ], [ %.0189.lcssa639649, %.thread.i ], [ %i.ex, %.split654 ], [ %i.ex, %.thread.i.i ], [ %i.ex, %.split655 ]
  %i.fz = load ptr, ptr %i.u, align 8, !tbaa !139
  %i.ga = getelementptr inbounds nuw [184 x i8], ptr %i.fz, i64 %indvars.iv ; 12 uses
  br i1 %.0189.lcssa638652, label %bb.au, label %bb.bb

bb.au:                                            ; preds = %bb.at
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 40
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !78
  %i.gd = icmp eq i32 %i.gc, 0
  br i1 %i.gd, label %bb.av, label %bb.az

bb.av:                                            ; preds = %bb.au
  %i.ge = add i64 %.sroa.0343.0.lcssa635653, -1   ; 3 uses
  %or.cond.i229 = icmp eq i64 %.sroa.0343.0.lcssa635653, -9223372036854775808
  br i1 %or.cond.i229, label %bb.aw, label %_ZmiILb1EE13checked_int64IXT_EERKS1_RKl.exit.i

bb.aw:                                            ; preds = %bb.av
  %i.gf = call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.gf, align 8, !tbaa !15
  call void @__cxa_throw(ptr nonnull %i.gf, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

_ZmiILb1EE13checked_int64IXT_EERKS1_RKl.exit.i:   ; preds = %bb.av
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ga, i64 136 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ga, i64 152 ; 2 uses
  %i.gi = load i8, ptr %i.gh, align 8, !tbaa !81, !range !82, !noundef !38
  %i.gj = trunc nuw i8 %i.gi to i1
  br i1 %i.gj, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %_ZmiILb1EE13checked_int64IXT_EERKS1_RKl.exit.i
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ga, i64 144 ; 2 uses
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !45
  %.not.i.i231 = icmp slt i64 %i.ge, %i.gl
  br i1 %.not.i.i231, label %.thread.i.i232, label %_ZN3sls10arith_baseI13checked_int64ILb1EEE6add_ltEjRKS2_.exit

.thread.i.i232:                                   ; preds = %bb.ax
  store i8 0, ptr %i.gg, align 8
  store i64 %i.ge, ptr %i.gk, align 8
  br label %_ZN3sls10arith_baseI13checked_int64ILb1EEE6add_ltEjRKS2_.exit

bb.ay:                                            ; preds = %_ZmiILb1EE13checked_int64IXT_EERKS1_RKl.exit.i
  store i8 0, ptr %i.gg, align 8
  %.sroa.45.0..sroa_idx.i.i230 = getelementptr inbounds nuw i8, ptr %i.ga, i64 144
  store i64 %i.ge, ptr %.sroa.45.0..sroa_idx.i.i230, align 8
  store i8 1, ptr %i.gh, align 8, !tbaa !81
  br label %_ZN3sls10arith_baseI13checked_int64ILb1EEE6add_ltEjRKS2_.exit

bb.az:                                            ; preds = %bb.au
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ga, i64 136
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ga, i64 152 ; 2 uses
  %i.go = load i8, ptr %i.gn, align 8, !tbaa !81, !range !82, !noundef !38
  %i.gp = trunc nuw i8 %i.go to i1
  store i8 1, ptr %i.gm, align 8
  %.sroa.45.0..sroa_idx.i228 = getelementptr inbounds nuw i8, ptr %i.ga, i64 144
  store i64 %.sroa.0343.0.lcssa635653, ptr %.sroa.45.0..sroa_idx.i228, align 8
  br i1 %i.gp, label %_ZN3sls10arith_baseI13checked_int64ILb1EEE6add_ltEjRKS2_.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  store i8 1, ptr %i.gn, align 8, !tbaa !81
  br label %_ZN3sls10arith_baseI13checked_int64ILb1EEE6add_ltEjRKS2_.exit

bb.bb:                                            ; preds = %bb.at
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ga, i64 136 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ga, i64 152 ; 2 uses
  %i.gs = load i8, ptr %i.gr, align 8, !tbaa !81, !range !82, !noundef !38
  %i.gt = trunc nuw i8 %i.gs to i1
  br i1 %i.gt, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.gu = getelementptr inbounds nuw i8, ptr %i.ga, i64 144 ; 2 uses
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !45
  %.not.i234 = icmp slt i64 %.sroa.0343.0.lcssa635653, %i.gv
  br i1 %.not.i234, label %.thread.i235, label %_ZN3sls10arith_baseI13checked_int64ILb1EEE6add_ltEjRKS2_.exit

.thread.i235:                                     ; preds = %bb.bc
  store i8 0, ptr %i.gq, align 8
  store i64 %.sroa.0343.0.lcssa635653, ptr %i.gu, align 8
  br label %_ZN3sls10arith_baseI13checked_int64ILb1EEE6add_ltEjRKS2_.exit

bb.bd:                                            ; preds = %bb.bb
  store i8 0, ptr %i.gq, align 8
  %.sroa.45.0..sroa_idx.i233 = getelementptr inbounds nuw i8, ptr %i.ga, i64 144
  store i64 %.sroa.0343.0.lcssa635653, ptr %.sroa.45.0..sroa_idx.i233, align 8
  store i8 1, ptr %i.gr, align 8, !tbaa !81
  br label %_ZN3sls10arith_baseI13checked_int64ILb1EEE6add_ltEjRKS2_.exit

_ZN3sls10arith_baseI13checked_int64ILb1EEE6add_ltEjRKS2_.exit: ; preds = %.lr.ph538, %.split655, %.thread.i.i, %.split654, %.thread.i, %.split, %_ZN3sls10arith_baseI13checked_int64ILb1EEE6add_gtEjRKS2_.exit, %bb.ax, %.thread.i.i232, %bb.ay, %bb.az, %bb.ba, %bb.bc, %.thread.i235, %bb.bd, %bb.d
  %i.gw = load ptr, ptr %i.u, align 8, !tbaa !139
  %i.gx = getelementptr inbounds nuw [184 x i8], ptr %i.gw, i64 %indvars.iv ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 44
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !79
  %i.ha = icmp eq i32 %i.gz, 9
  br i1 %i.ha, label %bb.be, label %bb.co

bb.be:                                            ; preds = %_ZN3sls10arith_baseI13checked_int64ILb1EEE6add_ltEjRKS2_.exit
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gx, i64 48
  %i.hc = load i32, ptr %i.hb, align 8, !tbaa !80
  %i.hd = load ptr, ptr %i.y, align 8, !tbaa !158
  %i.he = zext i32 %i.hc to i64
  %i.hf = getelementptr inbounds nuw [16 x i8], ptr %i.hd, i64 %i.he
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  store i64 1, ptr %10, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  store i64 1, ptr %11, align 8, !tbaa !45
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 8 ; 2 uses
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !60 ; 5 uses
  %i.hi = icmp eq ptr %i.hh, null
  br i1 %i.hi, label %_ZNK6vectorISt4pairIjjELb0EjE3endEv.exit239.thread.thread, label %_ZNK6vectorISt4pairIjjELb0EjE3endEv.exit

_ZNK6vectorISt4pairIjjELb0EjE3endEv.exit:         ; preds = %bb.be
  %i.hj = getelementptr inbounds i8, ptr %i.hh, i64 -4
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !58 ; 2 uses
  %i.hl = zext i32 %i.hk to i64
  %i.hm = shl nuw nsw i64 %i.hl, 3
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.hm
  %.not209544 = icmp eq i32 %i.hk, 0
  br i1 %.not209544, label %_ZNK6vectorISt4pairIjjELb0EjE3endEv.exit239, label %.lr.ph547

.lr.ph547:                                        ; preds = %_ZNK6vectorISt4pairIjjELb0EjE3endEv.exit, %.critedge8.thread
  %.0194546 = phi i8 [ %.2196399, %.critedge8.thread ], [ 1, %_ZNK6vectorISt4pairIjjELb0EjE3endEv.exit ]
  %.0202545 = phi ptr [ %i.iu, %.critedge8.thread ], [ %i.hh, %_ZNK6vectorISt4pairIjjELb0EjE3endEv.exit ] ; 2 uses
  %i.ho = load i64, ptr %.0202545, align 4        ; 3 uses
  %.sroa.4.0.extract.shift = lshr i64 %i.ho, 32
  %.sroa.4.0.extract.trunc = trunc nuw i64 %.sroa.4.0.extract.shift to i32
  %i.hp = trunc nuw i8 %.0194546 to i1
  br i1 %i.hp, label %bb.bf, label %.critedge8.thread400

bb.bf:                                            ; preds = %.lr.ph547
  %i.hq = load ptr, ptr %i.u, align 8, !tbaa !139
  %i.hr = and i64 %i.ho, 4294967295
  %i.hs = getelementptr inbounds nuw [184 x i8], ptr %i.hq, i64 %i.hr ; 3 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 128
  %i.hu = load i8, ptr %i.ht, align 8, !tbaa !81, !range !82, !noundef !38
  %i.hv = trunc nuw i8 %i.hu to i1
  br i1 %i.hv, label %bb.bg, label %.critedge8.thread

bb.bg:                                            ; preds = %bb.bf
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hs, i64 112
  %i.hx = load i8, ptr %i.hw, align 8, !tbaa !89, !range !82, !noundef !38
  %i.hy = trunc nuw i8 %i.hx to i1
  br i1 %i.hy, label %.critedge8.thread, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hs, i64 120 ; 2 uses
  %i.ia = load i64, ptr %i.hz, align 8, !tbaa !45
  %i.ib = icmp sgt i64 %i.ia, -1
  br i1 %i.ib, label %bb.bi, label %.critedge8.thread

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  %.sroa.052.0.copyload = load i64, ptr %i.hz, align 8, !tbaa !17
  %.sroa.052.0.copyload.fr = freeze i64 %.sroa.052.0.copyload ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store i64 1, ptr %5, align 8, !tbaa !45
  %i.ic = icmp ugt i64 %i.ho, 8589934591
  br i1 %i.ic, label %.lr.ph.i, label %.critedge8

.lr.ph.i:                                         ; preds = %bb.bi, %_ZN13checked_int64ILb1EEmLERKS0_.exit
  %.sroa.0353.0 = phi i64 [ %.sroa.0357.0, %_ZN13checked_int64ILb1EEmLERKS0_.exit ], [ %.sroa.052.0.copyload.fr, %bb.bi ] ; 6 uses
  %.06.i = phi i32 [ %i.io, %_ZN13checked_int64ILb1EEmLERKS0_.exit ], [ %.sroa.4.0.extract.trunc, %bb.bi ] ; 3 uses
  %i.id = and i32 %.06.i, 1
  %.not.i237 = icmp eq i32 %i.id, 0
  br i1 %.not.i237, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i64 %.sroa.0353.0, ptr %4, align 8, !tbaa !17
  %i.ie = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN13checked_int64ILb1EEmLERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) ; 0 uses
  %i.if = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  store i64 %i.if, ptr %5, align 8, !tbaa !17
  %i.ig = add nsw i32 %.06.i, -1
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %.lr.ph.i
  %.1.i = phi i32 [ %i.ig, %bb.bj ], [ %.06.i, %.lr.ph.i ] ; 2 uses
  %i.ih = add i64 %.sroa.0353.0, 2147483647
  %or.cond29.i = icmp ult i64 %i.ih, 4294967295
  br i1 %or.cond29.i, label %bb.bl, label %.thread.i286

bb.bl:                                            ; preds = %bb.bk
  %i.ii = mul nsw i64 %.sroa.0353.0, %.sroa.0353.0
  br label %_ZN13checked_int64ILb1EEmLERKS0_.exit

.thread.i286:                                     ; preds = %bb.bk
  %i.ij = icmp eq i64 %.sroa.0353.0, -9223372036854775808
  br i1 %i.ij, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %.thread.i286
  %i.ik = call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.ik, align 8, !tbaa !15
  call void @__cxa_throw(ptr nonnull %i.ik, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

bb.bn:                                            ; preds = %.thread.i286
  %i.il = call i64 @llvm.abs.i64(i64 %.sroa.0353.0, i1 false) ; 2 uses
  %mul.i = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.il, i64 %i.il) ; 2 uses
  %mul.val.i = extractvalue { i64, i1 } %mul.i, 0 ; 2 uses
  %mul.ov.i = extractvalue { i64, i1 } %mul.i, 1
  %i.im = icmp slt i64 %mul.val.i, 0
  %or.cond.i287 = or i1 %mul.ov.i, %i.im
  br i1 %or.cond.i287, label %bb.bo, label %_ZN13checked_int64ILb1EEmLERKS0_.exit

bb.bo:                                            ; preds = %bb.bn
  %i.in = call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.in, align 8, !tbaa !15
  call void @__cxa_throw(ptr nonnull %i.in, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

_ZN13checked_int64ILb1EEmLERKS0_.exit:            ; preds = %bb.bn, %bb.bl
  %.sroa.0357.0 = phi i64 [ %i.ii, %bb.bl ], [ %mul.val.i, %bb.bn ] ; 2 uses
  %i.io = lshr i32 %.1.i, 1
  %i.ip = icmp ugt i32 %.1.i, 3
  br i1 %i.ip, label %.lr.ph.i, label %.critedge8, !llvm.loop !168

.critedge8:                                       ; preds = %_ZN13checked_int64ILb1EEmLERKS0_.exit, %bb.bi
  %i.iq = phi i64 [ %.sroa.052.0.copyload.fr, %bb.bi ], [ %.sroa.0357.0, %_ZN13checked_int64ILb1EEmLERKS0_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 %i.iq, ptr %3, align 8, !tbaa !17
  %i.ir = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN13checked_int64ILb1EEmLERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %5) ; 0 uses
  %i.is = load i64, ptr %3, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  store i64 %i.is, ptr %12, align 8
  %i.it = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN13checked_int64ILb1EEmLERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %12) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %.critedge8.thread

.critedge8.thread:                                ; preds = %.critedge8, %bb.bh, %bb.bf, %bb.bg
  %.2196399 = phi i8 [ 1, %.critedge8 ], [ 0, %bb.bg ], [ 0, %bb.bf ], [ 0, %bb.bh ] ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.0202545, i64 8 ; 2 uses
  %.not209 = icmp eq ptr %i.iu, %i.hn
  br i1 %.not209, label %.critedge8.thread400, label %.lr.ph547

end_hunk_2
