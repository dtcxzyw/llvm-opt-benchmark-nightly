inline.NumInlined: 7668
inline.NumDeleted: 1628
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 59
loop-unroll.NumUnrolled: 62
begin_hunk_0_@_ZN3sls10arith_baseI13checked_int64ILb1EEE12divide_floorEjRKS2_S5_:bb.a

_ZmiILb1EE13checked_int64IXT_EERKS1_S3_.exit:     ; preds = %bb.j
  switch i64 %i.h, label %_ZngILb1EE13checked_int64IXT_EERKS1_.exit38 [
    i64 -9223372036854775808, label %bb.l
    i64 0, label %bb.m
  ]

bb.l:                                             ; preds = %_ZmiILb1EE13checked_int64IXT_EERKS1_S3_.exit
  %i.ac = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.ac, align 8, !tbaa !15
  tail call void @__cxa_throw(ptr nonnull %i.ac, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

bb.m:                                             ; preds = %_ZmiILb1EE13checked_int64IXT_EERKS1_S3_.exit
  %i.ad = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.ad, align 8, !tbaa !15
  tail call void @__cxa_throw(ptr nonnull %i.ad, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

_ZngILb1EE13checked_int64IXT_EERKS1_.exit38:      ; preds = %_ZmiILb1EE13checked_int64IXT_EERKS1_S3_.exit
  %i.ae = add nsw i64 %i.z, -1
  %i.af = sub nsw i64 0, %i.h
  %i.ag = udiv i64 %i.ae, %i.af
  %i.ah = sub nsw i64 0, %i.ag
  br label %bb.r

bb.n:                                             ; preds = %.critedge
  %i.ai = icmp eq i64 %i.n, -9223372036854775808
  br i1 %i.ai, label %bb.o, label %_ZngILb1EE13checked_int64IXT_EERKS1_.exit39

bb.o:                                             ; preds = %bb.n
  %i.aj = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.aj, align 8, !tbaa !15
  tail call void @__cxa_throw(ptr nonnull %i.aj, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

_ZngILb1EE13checked_int64IXT_EERKS1_.exit39:      ; preds = %bb.n
  switch i64 %i.h, label %_Z3divILb1EE13checked_int64IXT_EERKS1_S3_.exit46 [
    i64 -9223372036854775808, label %bb.p
    i64 0, label %bb.q
  ]

bb.p:                                             ; preds = %_ZngILb1EE13checked_int64IXT_EERKS1_.exit39
  %i.ak = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.ak, align 8, !tbaa !15
  tail call void @__cxa_throw(ptr nonnull %i.ak, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

bb.q:                                             ; preds = %_ZngILb1EE13checked_int64IXT_EERKS1_.exit39
  %i.al = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.al, align 8, !tbaa !15
  tail call void @__cxa_throw(ptr nonnull %i.al, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

_Z3divILb1EE13checked_int64IXT_EERKS1_S3_.exit46: ; preds = %_ZngILb1EE13checked_int64IXT_EERKS1_.exit39
  %i.am = sub nsw i64 0, %i.n
  %i.an = sub nsw i64 0, %i.h
  %i.ao = udiv i64 %i.am, %i.an
  br label %bb.r

bb.r:                                             ; preds = %_Z3divILb1EE13checked_int64IXT_EERKS1_S3_.exit46, %_ZngILb1EE13checked_int64IXT_EERKS1_.exit38, %_ZngILb1EE13checked_int64IXT_EERKS1_.exit25, %_Z3divILb1EE13checked_int64IXT_EERKS1_S3_.exit, %_ZdvILb1EE13checked_int64IXT_EERKS1_S3_.exit
  %.sroa.0.0 = phi i64 [ %i.p, %_Z3divILb1EE13checked_int64IXT_EERKS1_S3_.exit ], [ %i.x, %_ZngILb1EE13checked_int64IXT_EERKS1_.exit25 ], [ %i.ah, %_ZngILb1EE13checked_int64IXT_EERKS1_.exit38 ], [ %i.ao, %_Z3divILb1EE13checked_int64IXT_EERKS1_S3_.exit46 ], [ %i.l, %_ZdvILb1EE13checked_int64IXT_EERKS1_S3_.exit ]
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden i64 @_ZN3sls10arith_baseI13checked_int64ILb1EEE11divide_ceilEjRKS2_S5_(ptr noundef nonnull align 8 dereferenceable(672) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !139
  %i.c = zext i32 %1 to i64
  %i.d = getelementptr inbounds nuw [184 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load i32, ptr %i.e, align 8, !tbaa !78
  %i.g = icmp eq i32 %i.f, 0
  %i.h = load i64, ptr %3, align 8, !tbaa !45     ; 14 uses
  br i1 %i.g, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.c, label %_ZdvILb1EE13checked_int64IXT_EERKS1_S3_.exit

bb.c:                                             ; preds = %bb.b
  %i.j = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.j, align 8, !tbaa !15
  tail call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

_ZdvILb1EE13checked_int64IXT_EERKS1_S3_.exit:     ; preds = %bb.b
  %i.k = load i64, ptr %2, align 8, !tbaa !17
  %i.l = sdiv i64 %i.k, %i.h
  br label %_Z3divILb1EE13checked_int64IXT_EERKS1_S3_.exit

bb.d:                                             ; preds = %bb.a
  %i.m = icmp sgt i64 %i.h, 0
  %i.n = load i64, ptr %2, align 8, !tbaa !45     ; 10 uses
  br i1 %i.m, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.o = icmp sgt i64 %i.n, -1
  br i1 %i.o, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.p = add nuw i64 %i.n, %i.h                   ; 3 uses
  %.not69 = icmp eq i64 %i.n, 0
  br i1 %.not69, label %_ZN13checked_int64ILb1EEdVERKS0_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = icmp slt i64 %i.p, 1
  br i1 %i.q, label %bb.h, label %_ZN13checked_int64ILb1EEdVERKS0_.exit.i.thread58

_ZN13checked_int64ILb1EEdVERKS0_.exit.i.thread58: ; preds = %bb.g
  %i.r = add nsw i64 %i.p, -1
  %i.s = udiv i64 %i.r, %i.h
  br label %_Z3divILb1EE13checked_int64IXT_EERKS1_S3_.exit

bb.h:                                             ; preds = %bb.g
  %i.t = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.t, align 8, !tbaa !15
  tail call void @__cxa_throw(ptr nonnull %i.t, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

_ZN13checked_int64ILb1EEdVERKS0_.exit.i:          ; preds = %bb.f
  %i.u = add nsw i64 %i.p, -1
  %i.v = sdiv i64 %i.u, %i.h
  br label %_Z3divILb1EE13checked_int64IXT_EERKS1_S3_.exit

bb.i:                                             ; preds = %bb.e
  %i.w = icmp eq i64 %i.n, -9223372036854775808
  br i1 %i.w, label %bb.j, label %_ZN13checked_int64ILb1EEdVERKS0_.exit.i19

bb.j:                                             ; preds = %bb.i
  %i.x = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.x, align 8, !tbaa !15
  tail call void @__cxa_throw(ptr nonnull %i.x, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

_ZN13checked_int64ILb1EEdVERKS0_.exit.i19:        ; preds = %bb.i
  %.nonneg = sub i64 0, %i.n
  %i.y = udiv i64 %.nonneg, %i.h
  %.neg = sub i64 0, %i.y
  br label %_Z3divILb1EE13checked_int64IXT_EERKS1_S3_.exit

.critedge:                                        ; preds = %bb.d
  %i.z = icmp sgt i64 %i.n, 0
  br i1 %i.z, label %bb.k, label %bb.n

bb.k:                                             ; preds = %.critedge
  switch i64 %i.h, label %_Z3divILb1EE13checked_int64IXT_EERKS1_S3_.exit32 [
    i64 -9223372036854775808, label %bb.l
    i64 0, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  %i.aa = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.aa, align 8, !tbaa !15
  tail call void @__cxa_throw(ptr nonnull %i.aa, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ab = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.ab, align 8, !tbaa !15
  tail call void @__cxa_throw(ptr nonnull %i.ab, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

_Z3divILb1EE13checked_int64IXT_EERKS1_S3_.exit32: ; preds = %bb.k
  %i.ac = sub nsw i64 0, %i.h
  %i.ad = udiv i64 %i.n, %i.ac
  %i.ae = sub nsw i64 0, %i.ad
  br label %_Z3divILb1EE13checked_int64IXT_EERKS1_S3_.exit

bb.n:                                             ; preds = %.critedge
  %i.af = icmp eq i64 %i.n, -9223372036854775808
  br i1 %i.af, label %bb.o, label %_ZngILb1EE13checked_int64IXT_EERKS1_.exit34

bb.o:                                             ; preds = %bb.n
  %i.ag = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.ag, align 8, !tbaa !15
  tail call void @__cxa_throw(ptr nonnull %i.ag, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

_ZngILb1EE13checked_int64IXT_EERKS1_.exit34:      ; preds = %bb.n
  %i.ah = add i64 %i.n, %i.h                      ; 5 uses
  %i.ai = sub i64 0, %i.ah                        ; 2 uses
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %_ZmiILb1EE13checked_int64IXT_EERKS1_S3_.exit, label %bb.p

bb.p:                                             ; preds = %_ZngILb1EE13checked_int64IXT_EERKS1_.exit34
  %i.aj = icmp ne i64 %i.h, 0
  %i.ak = icmp slt i64 %i.ai, 1
  %or.cond.i.i36 = and i1 %i.aj, %i.ak
  br i1 %or.cond.i.i36, label %bb.q, label %_ZmiILb1EE13checked_int64IXT_EERKS1_S3_.exit

bb.q:                                             ; preds = %bb.p
  %i.al = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.al, align 8, !tbaa !15
  tail call void @__cxa_throw(ptr nonnull %i.al, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

_ZmiILb1EE13checked_int64IXT_EERKS1_S3_.exit:     ; preds = %_ZngILb1EE13checked_int64IXT_EERKS1_.exit34, %bb.p
  %.neg67 = add nuw i64 %i.ah, 1
  %i.am = xor i64 %i.ah, -1
  %i.an = icmp slt i64 %i.ai, 1
  %i.ao = icmp slt i64 %i.ah, 0
  %or.cond = and i1 %i.an, %i.ao
  br i1 %or.cond, label %bb.r, label %_ZmiILb1EE13checked_int64IXT_EERKS1_RKl.exit39

bb.r:                                             ; preds = %_ZmiILb1EE13checked_int64IXT_EERKS1_S3_.exit
  %i.ap = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.ap, align 8, !tbaa !15
  tail call void @__cxa_throw(ptr nonnull %i.ap, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

_ZmiILb1EE13checked_int64IXT_EERKS1_RKl.exit39:   ; preds = %_ZmiILb1EE13checked_int64IXT_EERKS1_S3_.exit
  %i.aq = icmp eq i64 %i.h, -9223372036854775808
  br i1 %i.aq, label %bb.s, label %_ZngILb1EE13checked_int64IXT_EERKS1_.exit40

bb.s:                                             ; preds = %_ZmiILb1EE13checked_int64IXT_EERKS1_RKl.exit39
  %i.ar = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.ar, align 8, !tbaa !15
  tail call void @__cxa_throw(ptr nonnull %i.ar, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

_ZngILb1EE13checked_int64IXT_EERKS1_.exit40:      ; preds = %_ZmiILb1EE13checked_int64IXT_EERKS1_RKl.exit39
  %i.as = sub nsw i64 0, %i.h                     ; 2 uses
  %i.at = icmp eq i64 %i.h, 0
  br i1 %i.at, label %bb.t, label %_ZN13checked_int64ILb1EEdVERKS0_.exit.i41

bb.t:                                             ; preds = %_ZngILb1EE13checked_int64IXT_EERKS1_.exit40
  %i.au = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.au, align 8, !tbaa !15
  tail call void @__cxa_throw(ptr nonnull %i.au, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

_ZN13checked_int64ILb1EEdVERKS0_.exit.i41:        ; preds = %_ZngILb1EE13checked_int64IXT_EERKS1_.exit40
  %i.av = sdiv i64 %i.am, %i.as                   ; 4 uses
  %i.aw = icmp sgt i64 %i.ah, -1
  br i1 %i.aw, label %_ZN13checked_int64ILb1EErMERKS0_.exit.i43, label %_Z3divILb1EE13checked_int64IXT_EERKS1_S3_.exit

_ZN13checked_int64ILb1EErMERKS0_.exit.i43:        ; preds = %_ZN13checked_int64ILb1EEdVERKS0_.exit.i41
  %i.ax = urem i64 %.neg67, %i.as
  %.not.i44 = icmp eq i64 %i.ax, 0
  br i1 %.not.i44, label %_Z3divILb1EE13checked_int64IXT_EERKS1_S3_.exit, label %bb.u

bb.u:                                             ; preds = %_ZN13checked_int64ILb1EErMERKS0_.exit.i43
  %i.ay = add nsw i64 %i.av, -1
  %or.cond.i45 = icmp eq i64 %i.av, -9223372036854775808
  br i1 %or.cond.i45, label %bb.v, label %_Z3divILb1EE13checked_int64IXT_EERKS1_S3_.exit

bb.v:                                             ; preds = %bb.u
  %i.az = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.az, align 8, !tbaa !15
  tail call void @__cxa_throw(ptr nonnull %i.az, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

_Z3divILb1EE13checked_int64IXT_EERKS1_S3_.exit:   ; preds = %_ZN13checked_int64ILb1EEdVERKS0_.exit.i19, %_ZN13checked_int64ILb1EEdVERKS0_.exit.i, %bb.u, %_ZN13checked_int64ILb1EErMERKS0_.exit.i43, %_ZN13checked_int64ILb1EEdVERKS0_.exit.i41, %_ZN13checked_int64ILb1EEdVERKS0_.exit.i.thread58, %_Z3divILb1EE13checked_int64IXT_EERKS1_S3_.exit32, %_ZdvILb1EE13checked_int64IXT_EERKS1_S3_.exit
  %.sroa.0.0 = phi i64 [ %i.l, %_ZdvILb1EE13checked_int64IXT_EERKS1_S3_.exit ], [ %i.av, %_ZN13checked_int64ILb1EEdVERKS0_.exit.i41 ], [ %i.ae, %_Z3divILb1EE13checked_int64IXT_EERKS1_S3_.exit32 ], [ %i.av, %_ZN13checked_int64ILb1EErMERKS0_.exit.i43 ], [ %i.v, %_ZN13checked_int64ILb1EEdVERKS0_.exit.i ], [ %i.ay, %bb.u ], [ %i.s, %_ZN13checked_int64ILb1EEdVERKS0_.exit.i.thread58 ], [ %.neg, %_ZN13checked_int64ILb1EEdVERKS0_.exit.i19 ]
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN3sls10arith_baseI13checked_int64ILb1EEE16save_best_valuesEv(ptr noundef nonnull align 8 dereferenceable(672) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !139  ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %._crit_edge, label %_ZN6vectorIN3sls10arith_baseI13checked_int64ILb1EEE8var_infoELb1EjE3endEv.exit

_ZN6vectorIN3sls10arith_baseI13checked_int64ILb1EEE8var_infoELb1EjE3endEv.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !58   ; 2 uses
  %i.f = zext i32 %i.e to i64
  %i.g = mul nuw nsw i64 %i.f, 184                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.g
  %.not9 = icmp eq i32 %i.e, 0
  br i1 %.not9, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN6vectorIN3sls10arith_baseI13checked_int64ILb1EEE8var_infoELb1EjE3endEv.exit
  %i.i = add nsw i64 %i.g, -184                   ; 2 uses
  %i.j = udiv i64 %i.i, 184
  %i.k = add nuw nsw i64 %i.j, 1
  %xtraiter = and i64 %i.k, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.010.prol = phi ptr [ %i.o, %.lr.ph.prol ], [ %i.b, %.lr.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.l = getelementptr inbounds nuw i8, ptr %.010.prol, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %.010.prol, i64 24
  %i.n = load i64, ptr %i.l, align 8, !tbaa !17
  store i64 %i.n, ptr %i.m, align 8, !tbaa !17
  %i.o = getelementptr inbounds nuw i8, ptr %.010.prol, i64 184 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !319

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.010.unr = phi ptr [ %i.b, %.lr.ph.preheader ], [ %i.o, %.lr.ph.prol ]
  %i.p = icmp ult i64 %i.i, 1288
  br i1 %i.p, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.a, %_ZN6vectorIN3sls10arith_baseI13checked_int64ILb1EEE8var_infoELb1EjE3endEv.exit
  tail call void @_ZN3sls10arith_baseI13checked_int64ILb1EEE11check_ineqsEv(ptr noundef nonnull align 8 dereferenceable(672) %0)
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.010 = phi ptr [ %i.ao, %.lr.ph ], [ %.010.unr, %.lr.ph.prol.loopexit ] ; 17 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.010, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %.010, i64 24
  %i.s = load i64, ptr %i.q, align 8, !tbaa !17
  store i64 %i.s, ptr %i.r, align 8, !tbaa !17
  %i.t = getelementptr inbounds nuw i8, ptr %.010, i64 200
  %i.u = getelementptr inbounds nuw i8, ptr %.010, i64 208
  %i.v = load i64, ptr %i.t, align 8, !tbaa !17
  store i64 %i.v, ptr %i.u, align 8, !tbaa !17
  %i.w = getelementptr inbounds nuw i8, ptr %.010, i64 384
  %i.x = getelementptr inbounds nuw i8, ptr %.010, i64 392
  %i.y = load i64, ptr %i.w, align 8, !tbaa !17
  store i64 %i.y, ptr %i.x, align 8, !tbaa !17
  %i.z = getelementptr inbounds nuw i8, ptr %.010, i64 568
  %i.aa = getelementptr inbounds nuw i8, ptr %.010, i64 576
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !17
  store i64 %i.ab, ptr %i.aa, align 8, !tbaa !17
  %i.ac = getelementptr inbounds nuw i8, ptr %.010, i64 752
  %i.ad = getelementptr inbounds nuw i8, ptr %.010, i64 760
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !17
  store i64 %i.ae, ptr %i.ad, align 8, !tbaa !17
  %i.af = getelementptr inbounds nuw i8, ptr %.010, i64 936
  %i.ag = getelementptr inbounds nuw i8, ptr %.010, i64 944
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !17
  store i64 %i.ah, ptr %i.ag, align 8, !tbaa !17
  %i.ai = getelementptr inbounds nuw i8, ptr %.010, i64 1120
  %i.aj = getelementptr inbounds nuw i8, ptr %.010, i64 1128
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !17
  store i64 %i.ak, ptr %i.aj, align 8, !tbaa !17
  %i.al = getelementptr inbounds nuw i8, ptr %.010, i64 1304
  %i.am = getelementptr inbounds nuw i8, ptr %.010, i64 1312
  %i.an = load i64, ptr %i.al, align 8, !tbaa !17
  store i64 %i.an, ptr %i.am, align 8, !tbaa !17
  %i.ao = getelementptr inbounds nuw i8, ptr %.010, i64 1472 ; 2 uses
  %.not.7 = icmp eq ptr %i.ao, %i.h
  br i1 %.not.7, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN3sls10arith_baseI13checked_int64ILb1EEE11check_ineqsEv(ptr noundef nonnull align 8 dereferenceable(672) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !104, !nonnull !38, !align !39
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !105, !nonnull !38, !align !39 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !15
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef i32 %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d), !inline_history !135
  %.not21 = icmp eq i32 %i.h, 0
  br i1 %.not21, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 160
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNK3sls10arith_baseI13checked_int64ILb1EEE8get_ineqEj.exit.thread, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNK3sls10arith_baseI13checked_int64ILb1EEE8get_ineqEj.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNK3sls10arith_baseI13checked_int64ILb1EEE8get_ineqEj.exit.thread ] ; 5 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !142  ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZNK3sls10arith_baseI13checked_int64ILb1EEE8get_ineqEj.exit.thread, label %_ZNK6vectorIPN3sls10arith_baseI13checked_int64ILb1EEE4ineqELb0EjE4sizeEv.exit.i.i

_ZNK6vectorIPN3sls10arith_baseI13checked_int64ILb1EEE4ineqELb0EjE4sizeEv.exit.i.i: ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 -4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !58
  %i.n = zext i32 %i.m to i64
  %i.o = icmp samesign ult i64 %indvars.iv, %i.n
  br i1 %i.o, label %_ZNK3sls10arith_baseI13checked_int64ILb1EEE8get_ineqEj.exit, label %_ZNK3sls10arith_baseI13checked_int64ILb1EEE8get_ineqEj.exit.thread

_ZNK3sls10arith_baseI13checked_int64ILb1EEE8get_ineqEj.exit: ; preds = %_ZNK6vectorIPN3sls10arith_baseI13checked_int64ILb1EEE4ineqELb0EjE4sizeEv.exit.i.i
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !145  ; 4 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %_ZNK3sls10arith_baseI13checked_int64ILb1EEE8get_ineqEj.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNK3sls10arith_baseI13checked_int64ILb1EEE8get_ineqEj.exit
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !104, !nonnull !38, !align !39
  %i.s = trunc nuw i64 %indvars.iv to i32
  %i.t = shl i32 %i.s, 1                          ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !105, !nonnull !38, !align !39 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !15
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 80
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef zeroext i1 %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.v, i32 %i.t), !inline_history !313
  %i.aa = xor i1 %i.z, true
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.ac = tail call i64 @_ZNK3sls10arith_baseI13checked_int64ILb1EEE3dttEbRKS2_RKNS3_4ineqE(ptr noundef nonnull align 8 dereferenceable(672) %0, i1 noundef zeroext %i.aa, ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull align 8 dereferenceable(49) %i.q)
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !104, !nonnull !38, !align !39
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !105, !nonnull !38, !align !39 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZSt17__rotate_adaptiveIPSt4pairIj6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjEESA_lET_SB_SB_SB_T1_SC_T0_SC_:bb.a
  %i.cf = landingpad { ptr, i32 }
          catch ptr null
  %i.cg = extractvalue { ptr, i32 } %i.cf, 0
  tail call void @__clang_call_terminate(ptr %i.cg) #26
  unreachable

_ZNSt4pairIj6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjEEaSEOS8_Qcl13_S_assignableIT_T0_EE.exit.i.i.i.i.i65: ; preds = %_ZN6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjE7destroyEv.exit.i.i.i.i.i.i.i64, %.lr.ph.i.i.i.i.i59
  %i.ch = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i62, i64 16
  %i.ci = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i61, i64 16
  %i.cj = add nsw i64 %.013.i.i.i.i.i60, -1
  %i.ck = icmp sgt i64 %.013.i.i.i.i.i60, 1
  br i1 %i.ck, label %.lr.ph.i.i.i.i.i59, label %_ZSt4moveIPSt4pairIj6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjEESA_ET0_T_SC_SB_.exit66, !llvm.loop !1509

_ZSt4moveIPSt4pairIj6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjEESA_ET0_T_SC_SB_.exit66: ; preds = %_ZNSt4pairIj6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjEEaSEOS8_Qcl13_S_assignableIT_T0_EE.exit.i.i.i.i.i65, %_ZSt4moveIPSt4pairIj6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjEESA_ET0_T_SC_SB_.exit57
  %i.cl = ptrtoint ptr %.08.lcssa.i.i.i.i.i49 to i64
  %i.cm = ptrtoint ptr %5 to i64
  %i.cn = sub i64 %i.cl, %i.cm
  %i.co = ashr exact i64 %i.cn, 4                 ; 2 uses
  %i.cp = icmp sgt i64 %i.co, 0
  br i1 %i.cp, label %.lr.ph.i.i.i.i.i68, label %_ZSt4moveIPSt4pairIj6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjEESA_ET0_T_SC_SB_.exit48

.lr.ph.i.i.i.i.i68:                               ; preds = %_ZSt4moveIPSt4pairIj6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjEESA_ET0_T_SC_SB_.exit66, %_ZNSt4pairIj6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjEEaSEOS8_Qcl13_S_assignableIT_T0_EE.exit.i.i.i.i.i74
  %.011.i.i.i.i.i69 = phi i64 [ %i.db, %_ZNSt4pairIj6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjEEaSEOS8_Qcl13_S_assignableIT_T0_EE.exit.i.i.i.i.i74 ], [ %i.co, %_ZSt4moveIPSt4pairIj6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjEESA_ET0_T_SC_SB_.exit66 ] ; 2 uses
  %.0610.i.i.i.i.i70 = phi ptr [ %i.cr, %_ZNSt4pairIj6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjEEaSEOS8_Qcl13_S_assignableIT_T0_EE.exit.i.i.i.i.i74 ], [ %2, %_ZSt4moveIPSt4pairIj6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjEESA_ET0_T_SC_SB_.exit66 ] ; 3 uses
  %.079.i.i.i.i.i71 = phi ptr [ %i.cq, %_ZNSt4pairIj6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjEEaSEOS8_Qcl13_S_assignableIT_T0_EE.exit.i.i.i.i.i74 ], [ %.08.lcssa.i.i.i.i.i49, %_ZSt4moveIPSt4pairIj6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjEESA_ET0_T_SC_SB_.exit66 ] ; 3 uses
  %i.cq = getelementptr inbounds i8, ptr %.079.i.i.i.i.i71, i64 -16 ; 2 uses
  %i.cr = getelementptr inbounds i8, ptr %.0610.i.i.i.i.i70, i64 -16 ; 3 uses
  %i.cs = load i32, ptr %i.cq, align 4, !tbaa !58
  store i32 %i.cs, ptr %i.cr, align 8, !tbaa !364
  %i.ct = getelementptr inbounds i8, ptr %.079.i.i.i.i.i71, i64 -8 ; 2 uses
  %i.cu = getelementptr inbounds i8, ptr %.0610.i.i.i.i.i70, i64 -8 ; 2 uses
  %i.cv = icmp eq ptr %.0610.i.i.i.i.i70, %.079.i.i.i.i.i71
  br i1 %i.cv, label %_ZNSt4pairIj6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjEEaSEOS8_Qcl13_S_assignableIT_T0_EE.exit.i.i.i.i.i74, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i.i.i.i68
  %i.cw = load ptr, ptr %i.cu, align 8, !tbaa !285 ; 2 uses
  %.not.i.i.i.i.i.i.i.i72 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i.i.i.i.i.i.i72, label %_ZN6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjE7destroyEv.exit.i.i.i.i.i.i.i73, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cx = getelementptr inbounds i8, ptr %i.cw, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.cx)
          to label %_ZN6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjE7destroyEv.exit.i.i.i.i.i.i.i73 unwind label %bb.x

_ZN6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjE7destroyEv.exit.i.i.i.i.i.i.i73: ; preds = %bb.w, %bb.v
  %i.cy = load ptr, ptr %i.ct, align 8, !tbaa !285
  store ptr %i.cy, ptr %i.cu, align 8, !tbaa !285
  store ptr null, ptr %i.ct, align 8, !tbaa !285
  br label %_ZNSt4pairIj6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjEEaSEOS8_Qcl13_S_assignableIT_T0_EE.exit.i.i.i.i.i74

bb.x:                                             ; preds = %bb.w
  %i.cz = landingpad { ptr, i32 }
          catch ptr null
  %i.da = extractvalue { ptr, i32 } %i.cz, 0
  tail call void @__clang_call_terminate(ptr %i.da) #26
  unreachable

_ZNSt4pairIj6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjEEaSEOS8_Qcl13_S_assignableIT_T0_EE.exit.i.i.i.i.i74: ; preds = %_ZN6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjE7destroyEv.exit.i.i.i.i.i.i.i73, %.lr.ph.i.i.i.i.i68
  %i.db = add nsw i64 %.011.i.i.i.i.i69, -1
  %i.dc = icmp sgt i64 %.011.i.i.i.i.i69, 1
  br i1 %i.dc, label %.lr.ph.i.i.i.i.i68, label %_ZSt4moveIPSt4pairIj6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjEESA_ET0_T_SC_SB_.exit48, !llvm.loop !1510

bb.y:                                             ; preds = %bb.m
  %i.dd = tail call noundef ptr @_ZNSt3_V28__rotateIPSt4pairIj6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjEEEET_SC_SC_SC_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  br label %_ZSt4moveIPSt4pairIj6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjEESA_ET0_T_SC_SB_.exit48

_ZSt4moveIPSt4pairIj6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjEESA_ET0_T_SC_SB_.exit48: ; preds = %_ZNSt4pairIj6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjEEaSEOS8_Qcl13_S_assignableIT_T0_EE.exit.i.i.i.i.i47, %_ZNSt4pairIj6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjEEaSEOS8_Qcl13_S_assignableIT_T0_EE.exit.i.i.i.i.i74, %_ZSt4moveIPSt4pairIj6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjEESA_ET0_T_SC_SB_.exit66, %_ZSt13move_backwardIPSt4pairIj6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjEESA_ET0_T_SC_SB_.exit, %bb.n, %bb.b, %bb.y
  %.0 = phi ptr [ %2, %bb.n ], [ %i.dd, %bb.y ], [ %i.cr, %_ZNSt4pairIj6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjEEaSEOS8_Qcl13_S_assignableIT_T0_EE.exit.i.i.i.i.i74 ], [ %0, %bb.b ], [ %0, %_ZSt13move_backwardIPSt4pairIj6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjEESA_ET0_T_SC_SB_.exit ], [ %2, %_ZSt4moveIPSt4pairIj6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjEESA_ET0_T_SC_SB_.exit66 ], [ %i.az, %_ZNSt4pairIj6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjEEaSEOS8_Qcl13_S_assignableIT_T0_EE.exit.i.i.i.i.i47 ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZSt13__stable_sortIPN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS4_9init_ineqEjRNS4_4ineqEEUlRKT_RKT0_E1_EEEvSC_SC_SF_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sdiv exact i64 %i.d, 24
  %i.f = add nsw i64 %i.e, 1
  %i.g = sdiv i64 %i.f, 2                         ; 3 uses
  %i.h = icmp sgt i64 %i.d, 0
  br i1 %i.h, label %.lr.ph.i.i, label %_ZNSt17_Temporary_bufferIPN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffES5_EC2ES6_l.exit

.lr.ph.i.i:                                       ; preds = %bb.b, %select.unfold.i.i
  %.010.i.i = phi i64 [ %i.m, %select.unfold.i.i ], [ %i.g, %bb.b ] ; 5 uses
  %i.i = mul nuw nsw i64 %.010.i.i, 24            ; 3 uses
  %i.j = tail call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #29 ; 8 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %select.unfold.i.i, label %bb.c

select.unfold.i.i:                                ; preds = %.lr.ph.i.i
  %i.k = icmp eq i64 %.010.i.i, 1
  %i.l = add nuw nsw i64 %.010.i.i, 1
  %i.m = lshr i64 %i.l, 1
  br i1 %i.k, label %_ZNSt17_Temporary_bufferIPN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffES5_EC2ES6_l.exit, label %.lr.ph.i.i, !llvm.loop !1522

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !366
  %.not19.i.i.i = icmp eq i64 %.010.i.i, 1
  br i1 %.not19.i.i.i, label %_ZSt29__uninitialized_construct_bufIPN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffES6_EvT_S7_T0_.exit.i, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.c
  %.01518.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.o = add nsw i64 %i.i, -48                    ; 2 uses
  %i.p = udiv i64 %i.o, 24
  %i.q = add nuw nsw i64 %i.p, 1
  %xtraiter = and i64 %i.q, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.preheader.i, %.lr.ph.i.i.i.prol
  %.01521.i.i.i.prol = phi ptr [ %.015.i.i.i.prol, %.lr.ph.i.i.i.prol ], [ %.01518.i.i.i, %.lr.ph.i.i.preheader.i ] ; 2 uses
  %.020.i.i.i.prol = phi ptr [ %i.r, %.lr.ph.i.i.i.prol ], [ %i.j, %.lr.ph.i.i.preheader.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.preheader.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.01521.i.i.i.prol, ptr noundef nonnull align 8 dereferenceable(24) %.020.i.i.i.prol, i64 24, i1 false), !tbaa.struct !366
  %i.r = getelementptr inbounds nuw i8, ptr %.020.i.i.i.prol, i64 24 ; 3 uses
  %.015.i.i.i.prol = getelementptr inbounds nuw i8, ptr %.01521.i.i.i.prol, i64 24 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !1523

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.preheader.i
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader.i ], [ %i.r, %.lr.ph.i.i.i.prol ]
  %.01521.i.i.i.unr = phi ptr [ %.01518.i.i.i, %.lr.ph.i.i.preheader.i ], [ %.015.i.i.i.prol, %.lr.ph.i.i.i.prol ]
  %.020.i.i.i.unr = phi ptr [ %i.j, %.lr.ph.i.i.preheader.i ], [ %i.r, %.lr.ph.i.i.i.prol ]
  %i.s = icmp ult i64 %i.o, 72
  br i1 %i.s, label %_ZSt29__uninitialized_construct_bufIPN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffES6_EvT_S7_T0_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.01521.i.i.i = phi ptr [ %.015.i.i.i.3, %.lr.ph.i.i.i ], [ %.01521.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 5 uses
  %.020.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i ], [ %.020.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.01521.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.020.i.i.i, i64 24, i1 false), !tbaa.struct !366
  %i.t = getelementptr inbounds nuw i8, ptr %.020.i.i.i, i64 24
  %.015.i.i.i = getelementptr inbounds nuw i8, ptr %.01521.i.i.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.015.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false), !tbaa.struct !366
  %i.u = getelementptr inbounds nuw i8, ptr %.020.i.i.i, i64 48
  %.015.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.01521.i.i.i, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.015.i.i.i.1, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false), !tbaa.struct !366
  %i.v = getelementptr inbounds nuw i8, ptr %.020.i.i.i, i64 72
  %.015.i.i.i.2 = getelementptr inbounds nuw i8, ptr %.01521.i.i.i, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.015.i.i.i.2, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !tbaa.struct !366
  %i.w = getelementptr inbounds nuw i8, ptr %.020.i.i.i, i64 96 ; 2 uses
  %.015.i.i.i.3 = getelementptr inbounds nuw i8, ptr %.01521.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.3 = icmp eq ptr %.015.i.i.i.3, %i.n
  br i1 %.not.i.i.i.3, label %_ZSt29__uninitialized_construct_bufIPN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffES6_EvT_S7_T0_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !1524

_ZSt29__uninitialized_construct_bufIPN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffES6_EvT_S7_T0_.exit.i: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %bb.c
  %.0.lcssa.i.i.i = phi ptr [ %i.j, %bb.c ], [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.w, %.lr.ph.i.i.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(20) %.0.lcssa.i.i.i, i64 20, i1 false), !tbaa.struct !366
  br label %_ZNSt17_Temporary_bufferIPN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffES5_EC2ES6_l.exit

_ZNSt17_Temporary_bufferIPN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffES5_EC2ES6_l.exit: ; preds = %select.unfold.i.i, %bb.b, %_ZSt29__uninitialized_construct_bufIPN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffES6_EvT_S7_T0_.exit.i
  %.sroa.12.0 = phi ptr [ null, %bb.b ], [ %i.j, %_ZSt29__uninitialized_construct_bufIPN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffES6_EvT_S7_T0_.exit.i ], [ null, %select.unfold.i.i ] ; 5 uses
  %.sroa.5.0 = phi i64 [ 0, %bb.b ], [ %.010.i.i, %_ZSt29__uninitialized_construct_bufIPN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffES6_EvT_S7_T0_.exit.i ], [ 0, %select.unfold.i.i ] ; 4 uses
  %i.x = icmp eq i64 %i.g, %.sroa.5.0
  br i1 %i.x, label %bb.d, label %bb.f, !prof !1410

bb.d:                                             ; preds = %_ZNSt17_Temporary_bufferIPN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffES5_EC2ES6_l.exit
  %i.y = getelementptr inbounds [24 x i8], ptr %0, i64 %i.g
  invoke void @_ZSt22__stable_sort_adaptiveIPN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffES6_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS4_9init_ineqEjRNS4_4ineqEEUlRKT_RKT0_E1_EEEvSC_SC_SC_SF_T1_(ptr noundef %0, ptr noundef %i.y, ptr noundef %1, ptr noundef %.sroa.12.0)
          to label %bb.i unwind label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.g, %bb.d
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = mul i64 %.sroa.5.0, 24
  tail call void @_ZdlPvm(ptr noundef %.sroa.12.0, i64 noundef %i.aa) #24
  resume { ptr, i32 } %i.z

bb.f:                                             ; preds = %_ZNSt17_Temporary_bufferIPN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffES5_EC2ES6_l.exit
  %i.ab = icmp eq ptr %.sroa.12.0, null
  br i1 %i.ab, label %bb.g, label %bb.h, !prof !1402

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt21__inplace_stable_sortIPN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS4_9init_ineqEjRNS4_4ineqEEUlRKT_RKT0_E1_EEEvSC_SC_SF_(ptr noundef %0, ptr noundef %1)
          to label %bb.i unwind label %bb.e

bb.h:                                             ; preds = %bb.f
  invoke void @_ZSt29__stable_sort_adaptive_resizeIPN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffES6_lN9__gnu_cxx5__ops15_Iter_comp_iterIZNS4_9init_ineqEjRNS4_4ineqEEUlRKT_RKT0_E1_EEEvSC_SC_SF_T1_T2_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %.sroa.12.0, i64 noundef %.sroa.5.0)
          to label %bb.i unwind label %bb.e

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.d
  %i.ac = mul i64 %.sroa.5.0, 24
  tail call void @_ZdlPvm(ptr noundef %.sroa.12.0, i64 noundef %i.ac) #24
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt22__stable_sort_adaptiveIPN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffES6_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS4_9init_ineqEjRNS4_4ineqEEUlRKT_RKT0_E1_EEEvSC_SC_SC_SF_T1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 4 uses
  %4 = udiv exact i64 %i.c, 24
  %i.d = getelementptr inbounds i8, ptr %3, i64 %i.c
  tail call void @_ZSt22__chunk_insertion_sortIPN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffElN9__gnu_cxx5__ops15_Iter_comp_iterIZNS4_9init_ineqEjRNS4_4ineqEEUlRKT_RKT0_E1_EEEvSC_SC_SF_T1_(ptr noundef %0, ptr noundef %1, i64 noundef 7)
  %i.e = icmp sgt i64 %i.c, 168
  br i1 %i.e, label %.lr.ph.i, label %_ZSt24__merge_sort_with_bufferIPN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffES6_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS4_9init_ineqEjRNS4_4ineqEEUlRKT_RKT0_E1_EEEvSC_SC_SF_T1_.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.023.i = phi i64 [ %i.g, %.lr.ph.i ], [ 7, %bb.a ] ; 3 uses
  tail call void @_ZSt17__merge_sort_loopIPN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffES6_lN9__gnu_cxx5__ops15_Iter_comp_iterIZNS4_9init_ineqEjRNS4_4ineqEEUlRKT_RKT0_E1_EEEvSC_SC_SF_T1_T2_(ptr noundef %0, ptr noundef %1, ptr noundef %3, i64 noundef %.023.i)
  %i.f = shl nuw nsw i64 %.023.i, 1
  tail call void @_ZSt17__merge_sort_loopIPN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffES6_lN9__gnu_cxx5__ops15_Iter_comp_iterIZNS4_9init_ineqEjRNS4_4ineqEEUlRKT_RKT0_E1_EEEvSC_SC_SF_T1_T2_(ptr noundef %3, ptr noundef nonnull %i.d, ptr noundef %0, i64 noundef %i.f)
  %i.g = shl nsw i64 %.023.i, 2                   ; 2 uses
  %i.h = icmp slt i64 %i.g, %4
  br i1 %i.h, label %.lr.ph.i, label %_ZSt24__merge_sort_with_bufferIPN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffES6_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS4_9init_ineqEjRNS4_4ineqEEUlRKT_RKT0_E1_EEEvSC_SC_SF_T1_.exit, !llvm.loop !1525

_ZSt24__merge_sort_with_bufferIPN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffES6_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS4_9init_ineqEjRNS4_4ineqEEUlRKT_RKT0_E1_EEEvSC_SC_SF_T1_.exit: ; preds = %.lr.ph.i, %bb.a
  %i.i = ptrtoint ptr %2 to i64
  %i.j = sub i64 %i.i, %i.a                       ; 4 uses
  %5 = udiv exact i64 %i.j, 24
  %i.k = getelementptr inbounds i8, ptr %3, i64 %i.j
  tail call void @_ZSt22__chunk_insertion_sortIPN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffElN9__gnu_cxx5__ops15_Iter_comp_iterIZNS4_9init_ineqEjRNS4_4ineqEEUlRKT_RKT0_E1_EEEvSC_SC_SF_T1_(ptr noundef %1, ptr noundef %2, i64 noundef 7)
  %i.l = icmp sgt i64 %i.j, 168
  br i1 %i.l, label %.lr.ph.i19, label %_ZSt24__merge_sort_with_bufferIPN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffES6_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS4_9init_ineqEjRNS4_4ineqEEUlRKT_RKT0_E1_EEEvSC_SC_SF_T1_.exit21

.lr.ph.i19:                                       ; preds = %_ZSt24__merge_sort_with_bufferIPN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffES6_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS4_9init_ineqEjRNS4_4ineqEEUlRKT_RKT0_E1_EEEvSC_SC_SF_T1_.exit, %.lr.ph.i19
  %.023.i20 = phi i64 [ %i.n, %.lr.ph.i19 ], [ 7, %_ZSt24__merge_sort_with_bufferIPN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffES6_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS4_9init_ineqEjRNS4_4ineqEEUlRKT_RKT0_E1_EEEvSC_SC_SF_T1_.exit ] ; 3 uses
  tail call void @_ZSt17__merge_sort_loopIPN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffES6_lN9__gnu_cxx5__ops15_Iter_comp_iterIZNS4_9init_ineqEjRNS4_4ineqEEUlRKT_RKT0_E1_EEEvSC_SC_SF_T1_T2_(ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %.023.i20)
  %i.m = shl nuw nsw i64 %.023.i20, 1
  tail call void @_ZSt17__merge_sort_loopIPN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffES6_lN9__gnu_cxx5__ops15_Iter_comp_iterIZNS4_9init_ineqEjRNS4_4ineqEEUlRKT_RKT0_E1_EEEvSC_SC_SF_T1_T2_(ptr noundef %3, ptr noundef nonnull %i.k, ptr noundef %1, i64 noundef %i.m)
  %i.n = shl nsw i64 %.023.i20, 2                 ; 2 uses
  %i.o = icmp slt i64 %i.n, %5
  br i1 %i.o, label %.lr.ph.i19, label %_ZSt24__merge_sort_with_bufferIPN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffES6_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS4_9init_ineqEjRNS4_4ineqEEUlRKT_RKT0_E1_EEEvSC_SC_SF_T1_.exit21, !llvm.loop !1525

_ZSt24__merge_sort_with_bufferIPN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffES6_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS4_9init_ineqEjRNS4_4ineqEEUlRKT_RKT0_E1_EEEvSC_SC_SF_T1_.exit21: ; preds = %.lr.ph.i19, %_ZSt24__merge_sort_with_bufferIPN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffES6_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS4_9init_ineqEjRNS4_4ineqEEUlRKT_RKT0_E1_EEEvSC_SC_SF_T1_.exit
  %6 = sdiv exact i64 %i.c, 24
  %7 = sdiv exact i64 %i.j, 24
  tail call void @_ZSt16__merge_adaptiveIPN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffElS6_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS4_9init_ineqEjRNS4_4ineqEEUlRKT_RKT0_E1_EEEvSC_SC_SC_SF_SF_T1_T2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %6, i64 noundef %7, ptr noundef %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt21__inplace_stable_sortIPN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS4_9init_ineqEjRNS4_4ineqEEUlRKT_RKT0_E1_EEEvSC_SC_SF_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.0.i.i = alloca <{ i32, [4 x i8], %class.checked_int64 }>, align 8 ; 4 uses
  %2 = alloca %"struct.sls::arith_base<checked_int64<true>>::nonlinear_coeff", align 8 ; 4 uses
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp slt i64 %i.c, 360
  br i1 %i.d, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq ptr %0, %1
  br i1 %i.e, label %common.ret29, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %.016.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.not17.i = icmp eq ptr %.016.i, %1
  br i1 %.not17.i, label %common.ret29, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.i, %.lr.ph.i
  %.019.i = phi ptr [ %.016.i, %.lr.ph.i ], [ %.0.i, %bb.i ] ; 7 uses
  %.pn18.i = phi ptr [ %0, %.lr.ph.i ], [ %.019.i, %bb.i ] ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 40
  %i.h = load i32, ptr %i.g, align 8, !tbaa !290  ; 4 uses
  %i.i = load i32, ptr %i.f, align 8, !tbaa !290
  %i.j = icmp ult i32 %i.h, %i.i
  br i1 %i.j, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %.019.i, i64 24, i1 false), !tbaa.struct !366
  %i.k = ptrtoint ptr %.019.i to i64
  %i.l = sub i64 %i.k, %i.b                       ; 4 uses
  %i.m = icmp sgt i64 %i.l, 24
  br i1 %i.m, label %bb.e, label %bb.f, !prof !1410

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 48
  %.neg25.i = udiv exact i64 %i.l, 24
  %.neg25.neg.i = sub nsw i64 0, %.neg25.i
  %i.o = getelementptr inbounds [24 x i8], ptr %i.n, i64 %.neg25.neg.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.o, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.l, i1 false)
  br label %_ZSt13move_backwardIPN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffES6_ET0_T_S8_S7_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.p = icmp eq i64 %i.l, 24
  br i1 %i.p, label %bb.g, label %_ZSt13move_backwardIPN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffES6_ET0_T_S8_S7_.exit.i

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.q, ptr noundef nonnull align 8 dereferenceable(20) %0, i64 20, i1 false), !tbaa.struct !366
  br label %_ZSt13move_backwardIPN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffES6_ET0_T_S8_S7_.exit.i

_ZSt13move_backwardIPN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffES6_ET0_T_S8_S7_.exit.i: ; preds = %bb.g, %bb.f, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(20) %2, i64 20, i1 false), !tbaa.struct !366
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.i

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.019.i, i64 16, i1 false), !tbaa.struct !366
  %i.r = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 16
  %i.s = load i32, ptr %i.r, align 8, !tbaa !290
  %i.t = icmp ult i32 %i.h, %i.s
  br i1 %i.t, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIPN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffEN9__gnu_cxx5__ops14_Val_comp_iterIZNS4_9init_ineqEjRNS4_4ineqEEUlRKT_RKT0_E1_EEEvSC_SF_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.h, %.lr.ph.i.i
  %.0911.i.i = phi ptr [ %.0.i.i, %.lr.ph.i.i ], [ %.019.i, %bb.h ] ; 3 uses
  %.0.i.i = getelementptr inbounds i8, ptr %.0911.i.i, i64 -24 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.0911.i.i, ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i, i64 20, i1 false), !tbaa.struct !366
  %i.u = getelementptr inbounds i8, ptr %.0911.i.i, i64 -32
  %i.v = load i32, ptr %i.u, align 8, !tbaa !290
  %i.w = icmp ult i32 %i.h, %i.v
  br i1 %i.w, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIPN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffEN9__gnu_cxx5__ops14_Val_comp_iterIZNS4_9init_ineqEjRNS4_4ineqEEUlRKT_RKT0_E1_EEEvSC_SF_.exit.i, !llvm.loop !1526

_ZSt25__unguarded_linear_insertIPN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffEN9__gnu_cxx5__ops14_Val_comp_iterIZNS4_9init_ineqEjRNS4_4ineqEEUlRKT_RKT0_E1_EEEvSC_SF_.exit.i: ; preds = %.lr.ph.i.i, %bb.h
  %.09.lcssa.i.i = phi ptr [ %.019.i, %bb.h ], [ %.0.i.i, %.lr.ph.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.lcssa.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i, i64 16, i1 false), !tbaa.struct !366
  %.sroa.4.0..09.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i, i64 16
  store i32 %i.h, ptr %.sroa.4.0..09.sroa_idx.i.i, align 8, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  br label %bb.i

bb.i:                                             ; preds = %_ZSt25__unguarded_linear_insertIPN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffEN9__gnu_cxx5__ops14_Val_comp_iterIZNS4_9init_ineqEjRNS4_4ineqEEUlRKT_RKT0_E1_EEEvSC_SF_.exit.i, %_ZSt13move_backwardIPN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffES6_ET0_T_S8_S7_.exit.i
  %.0.i = getelementptr inbounds nuw i8, ptr %.019.i, i64 24 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, %1
  br i1 %.not.i, label %common.ret29, label %bb.c, !llvm.loop !1527

common.ret29:                                     ; preds = %.preheader.i, %bb.b, %bb.i, %bb.j
  ret void

bb.j:                                             ; preds = %bb.a
  %i.x = udiv exact i64 %i.c, 24
  %i.y = lshr i64 %i.x, 1                         ; 2 uses
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.y ; 4 uses
  tail call void @_ZSt21__inplace_stable_sortIPN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS4_9init_ineqEjRNS4_4ineqEEUlRKT_RKT0_E1_EEEvSC_SC_SF_(ptr noundef %0, ptr noundef %i.z)
  tail call void @_ZSt21__inplace_stable_sortIPN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS4_9init_ineqEjRNS4_4ineqEEUlRKT_RKT0_E1_EEEvSC_SC_SF_(ptr noundef %i.z, ptr noundef %1)
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.a, %i.aa
  %i.ac = sdiv exact i64 %i.ab, 24
  tail call void @_ZSt22__merge_without_bufferIPN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffElN9__gnu_cxx5__ops15_Iter_comp_iterIZNS4_9init_ineqEjRNS4_4ineqEEUlRKT_RKT0_E1_EEEvSC_SC_SC_SF_SF_T1_(ptr noundef %0, ptr noundef %i.z, ptr noundef %1, i64 noundef %i.y, i64 noundef %i.ac)
  br label %common.ret29
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt29__stable_sort_adaptive_resizeIPN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffES6_lN9__gnu_cxx5__ops15_Iter_comp_iterIZNS4_9init_ineqEjRNS4_4ineqEEUlRKT_RKT0_E1_EEEvSC_SC_SF_T1_T2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = sdiv exact i64 %i.c, 24
  %i.e = add nsw i64 %i.d, 1
  %i.f = sdiv i64 %i.e, 2                         ; 3 uses
  %i.g = getelementptr inbounds [24 x i8], ptr %0, i64 %i.f ; 5 uses
  %i.h = icmp sgt i64 %i.f, %3
  br i1 %i.h, label %bb.b, label %common.ret

common.ret34:                                     ; preds = %bb.b, %common.ret
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt29__stable_sort_adaptive_resizeIPN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffES6_lN9__gnu_cxx5__ops15_Iter_comp_iterIZNS4_9init_ineqEjRNS4_4ineqEEUlRKT_RKT0_E1_EEEvSC_SC_SF_T1_T2_(ptr noundef %0, ptr noundef %i.g, ptr noundef %2, i64 noundef %3)
  tail call void @_ZSt29__stable_sort_adaptive_resizeIPN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffES6_lN9__gnu_cxx5__ops15_Iter_comp_iterIZNS4_9init_ineqEjRNS4_4ineqEEUlRKT_RKT0_E1_EEEvSC_SC_SF_T1_T2_(ptr noundef %i.g, ptr noundef %1, ptr noundef %2, i64 noundef %3)
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.a, %i.i
  %i.k = sdiv exact i64 %i.j, 24
  tail call void @_ZSt23__merge_adaptive_resizeIPN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffElS6_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS4_9init_ineqEjRNS4_4ineqEEUlRKT_RKT0_E1_EEEvSC_SC_SC_SF_SF_T1_SF_T2_(ptr noundef %0, ptr noundef %i.g, ptr noundef %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 noundef %3)
  br label %common.ret34

common.ret:                                       ; preds = %bb.a
  tail call void @_ZSt22__stable_sort_adaptiveIPN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffES6_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS4_9init_ineqEjRNS4_4ineqEEUlRKT_RKT0_E1_EEEvSC_SC_SC_SF_T1_(ptr noundef %0, ptr noundef %i.g, ptr noundef %1, ptr noundef %2)
  br label %common.ret34
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt16__merge_adaptiveIPN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffElS6_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS4_9init_ineqEjRNS4_4ineqEEUlRKT_RKT0_E1_EEEvSC_SC_SC_SF_SF_T1_T2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #0 comdat {
bb.a:
  %.not = icmp sgt i64 %3, %4
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 4 uses
  %i.d = icmp sgt i64 %i.c, 24
  br i1 %i.d, label %bb.c, label %bb.d, !prof !1410

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %5, ptr align 8 %0, i64 %i.c, i1 false)
  br label %_ZSt4moveIPN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffES6_ET0_T_S8_S7_.exit

bb.d:                                             ; preds = %bb.b
  %i.e = icmp eq i64 %i.c, 24
  br i1 %i.e, label %bb.e, label %_ZSt4moveIPN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffES6_ET0_T_S8_S7_.exit

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %5, ptr noundef nonnull align 8 dereferenceable(20) %0, i64 20, i1 false), !tbaa.struct !366
  br label %_ZSt4moveIPN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffES6_ET0_T_S8_S7_.exit

_ZSt4moveIPN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffES6_ET0_T_S8_S7_.exit: ; preds = %bb.c, %bb.d, %bb.e
  %i.f = getelementptr inbounds i8, ptr %5, i64 %i.c ; 2 uses
  %i.g = icmp ne ptr %1, %0                       ; 2 uses
  %i.h = icmp ne ptr %1, %2
  %i.i = and i1 %i.g, %i.h
  br i1 %i.i, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_ZSt4moveIPN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffES6_ET0_T_S8_S7_.exit, %bb.h
  %.024.i = phi ptr [ %i.q, %bb.h ], [ %0, %_ZSt4moveIPN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffES6_ET0_T_S8_S7_.exit ] ; 3 uses
  %.01823.i = phi ptr [ %.1.i, %bb.h ], [ %5, %_ZSt4moveIPN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffES6_ET0_T_S8_S7_.exit ] ; 4 uses
  %.01922.i = phi ptr [ %.120.i, %bb.h ], [ %1, %_ZSt4moveIPN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffES6_ET0_T_S8_S7_.exit ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.01922.i, i64 16
  %i.k = load i32, ptr %i.j, align 8, !tbaa !290
  %i.l = getelementptr inbounds nuw i8, ptr %.01823.i, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !290
  %i.n = icmp ult i32 %i.k, %i.m
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.024.i, ptr noundef nonnull align 8 dereferenceable(20) %.01922.i, i64 20, i1 false), !tbaa.struct !366
  %i.o = getelementptr inbounds nuw i8, ptr %.01922.i, i64 24
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.024.i, ptr noundef nonnull align 8 dereferenceable(20) %.01823.i, i64 20, i1 false), !tbaa.struct !366
  %i.p = getelementptr inbounds nuw i8, ptr %.01823.i, i64 24
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.120.i = phi ptr [ %i.o, %bb.f ], [ %.01922.i, %bb.g ] ; 2 uses
  %.1.i = phi ptr [ %.01823.i, %bb.f ], [ %i.p, %bb.g ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.024.i, i64 24 ; 2 uses
  %i.r = icmp ne ptr %.1.i, %i.f                  ; 2 uses
end_hunk_1
