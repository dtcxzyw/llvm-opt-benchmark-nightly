Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/sls_arith_base?download=true
inline.NumInlined: 7668
inline.NumDeleted: 1628
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 57
loop-unroll.NumUnrolled: 60
begin_hunk_0_@_ZN3sls10arith_baseI13checked_int64ILb1EEE12divide_floorEjRKS2_S5_:bb.a
  %i.d = getelementptr inbounds nuw [184 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load i32, ptr %i.e, align 8, !tbaa !148
  %i.g = icmp eq i32 %i.f, 0
  %i.h = load i64, ptr %3, align 8, !tbaa !117    ; 11 uses
  br i1 %i.g, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.c, label %_ZdvILb1EE13checked_int64IXT_EERKS1_S3_.exit

bb.c:                                             ; preds = %bb.b
  %i.j = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.j, align 8, !tbaa !87
  tail call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

_ZdvILb1EE13checked_int64IXT_EERKS1_S3_.exit:     ; preds = %bb.b
  %i.k = load i64, ptr %2, align 8, !tbaa !89
  %i.l = sdiv i64 %i.k, %i.h
  br label %bb.r

bb.d:                                             ; preds = %bb.a
  %i.m = icmp sgt i64 %i.h, 0
  %i.n = load i64, ptr %2, align 8, !tbaa !117    ; 8 uses
  br i1 %i.m, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.o = icmp sgt i64 %i.n, -1
  br i1 %i.o, label %_Z3divILb1EE13checked_int64IXT_EERKS1_S3_.exit, label %bb.f

_Z3divILb1EE13checked_int64IXT_EERKS1_S3_.exit:   ; preds = %bb.e
  %i.p = udiv i64 %i.n, %i.h
  br label %bb.r

bb.f:                                             ; preds = %bb.e
  %i.q = icmp eq i64 %i.n, -9223372036854775808
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.r = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.r, align 8, !tbaa !87
  tail call void @__cxa_throw(ptr nonnull %i.r, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.s = sub i64 %i.h, %i.n                       ; 2 uses
  %i.t = icmp slt i64 %i.s, 1
  br i1 %i.t, label %bb.i, label %_ZngILb1EE13checked_int64IXT_EERKS1_.exit25

bb.i:                                             ; preds = %bb.h
  %i.u = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.u, align 8, !tbaa !87
  tail call void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

_ZngILb1EE13checked_int64IXT_EERKS1_.exit25:      ; preds = %bb.h
  %i.v = add nsw i64 %i.s, -1
  %i.w = udiv i64 %i.v, %i.h
  %i.x = sub nsw i64 0, %i.w
  br label %bb.r

.critedge:                                        ; preds = %bb.d
  %i.y = icmp sgt i64 %i.n, 0
  br i1 %i.y, label %bb.j, label %bb.n

bb.j:                                             ; preds = %.critedge
  %i.z = sub i64 %i.n, %i.h                       ; 2 uses
  %i.aa = icmp slt i64 %i.z, 1
  br i1 %i.aa, label %bb.k, label %_ZmiILb1EE13checked_int64IXT_EERKS1_S3_.exit

bb.k:                                             ; preds = %bb.j
  %i.ab = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.ab, align 8, !tbaa !87
  tail call void @__cxa_throw(ptr nonnull %i.ab, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

_ZmiILb1EE13checked_int64IXT_EERKS1_S3_.exit:     ; preds = %bb.j
  switch i64 %i.h, label %_ZngILb1EE13checked_int64IXT_EERKS1_.exit38 [
    i64 -9223372036854775808, label %bb.l
    i64 0, label %bb.m
  ]

bb.l:                                             ; preds = %_ZmiILb1EE13checked_int64IXT_EERKS1_S3_.exit
  %i.ac = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.ac, align 8, !tbaa !87
  tail call void @__cxa_throw(ptr nonnull %i.ac, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

bb.m:                                             ; preds = %_ZmiILb1EE13checked_int64IXT_EERKS1_S3_.exit
  %i.ad = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.ad, align 8, !tbaa !87
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
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.aj, align 8, !tbaa !87
  tail call void @__cxa_throw(ptr nonnull %i.aj, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

_ZngILb1EE13checked_int64IXT_EERKS1_.exit39:      ; preds = %bb.n
  switch i64 %i.h, label %_Z3divILb1EE13checked_int64IXT_EERKS1_S3_.exit46 [
    i64 -9223372036854775808, label %bb.p
    i64 0, label %bb.q
  ]

bb.p:                                             ; preds = %_ZngILb1EE13checked_int64IXT_EERKS1_.exit39
  %i.ak = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.ak, align 8, !tbaa !87
  tail call void @__cxa_throw(ptr nonnull %i.ak, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

bb.q:                                             ; preds = %_ZngILb1EE13checked_int64IXT_EERKS1_.exit39
  %i.al = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.al, align 8, !tbaa !87
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !208
  %i.c = zext i32 %1 to i64
  %i.d = getelementptr inbounds nuw [184 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load i32, ptr %i.e, align 8, !tbaa !148
  %i.g = icmp eq i32 %i.f, 0
  %i.h = load i64, ptr %3, align 8, !tbaa !117    ; 14 uses
  br i1 %i.g, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.c, label %_ZdvILb1EE13checked_int64IXT_EERKS1_S3_.exit

bb.c:                                             ; preds = %bb.b
  %i.j = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.j, align 8, !tbaa !87
  tail call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

_ZdvILb1EE13checked_int64IXT_EERKS1_S3_.exit:     ; preds = %bb.b
  %i.k = load i64, ptr %2, align 8, !tbaa !89
  %i.l = sdiv i64 %i.k, %i.h
  br label %_Z3divILb1EE13checked_int64IXT_EERKS1_S3_.exit

bb.d:                                             ; preds = %bb.a
  %i.m = icmp sgt i64 %i.h, 0
  %i.n = load i64, ptr %2, align 8, !tbaa !117    ; 10 uses
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
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.t, align 8, !tbaa !87
  tail call void @__cxa_throw(ptr nonnull %i.t, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

_ZN13checked_int64ILb1EEdVERKS0_.exit.i:          ; preds = %bb.f
  %i.u = add nsw i64 %i.p, -1
  %4 = udiv i64 %i.u, %i.h
  br label %_Z3divILb1EE13checked_int64IXT_EERKS1_S3_.exit

bb.i:                                             ; preds = %bb.e
  %i.v = icmp eq i64 %i.n, -9223372036854775808
  br i1 %i.v, label %bb.j, label %_ZN13checked_int64ILb1EEdVERKS0_.exit.i19

bb.j:                                             ; preds = %bb.i
  %i.w = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.w, align 8, !tbaa !87
  tail call void @__cxa_throw(ptr nonnull %i.w, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

_ZN13checked_int64ILb1EEdVERKS0_.exit.i19:        ; preds = %bb.i
  %.nonneg = sub i64 0, %i.n
  %i.x = udiv i64 %.nonneg, %i.h
  %.neg = sub i64 0, %i.x
  br label %_Z3divILb1EE13checked_int64IXT_EERKS1_S3_.exit

.critedge:                                        ; preds = %bb.d
  %i.y = icmp sgt i64 %i.n, 0
  br i1 %i.y, label %bb.k, label %bb.n

bb.k:                                             ; preds = %.critedge
  switch i64 %i.h, label %_Z3divILb1EE13checked_int64IXT_EERKS1_S3_.exit32 [
    i64 -9223372036854775808, label %bb.l
    i64 0, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  %i.z = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.z, align 8, !tbaa !87
  tail call void @__cxa_throw(ptr nonnull %i.z, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.aa = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.aa, align 8, !tbaa !87
  tail call void @__cxa_throw(ptr nonnull %i.aa, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

_Z3divILb1EE13checked_int64IXT_EERKS1_S3_.exit32: ; preds = %bb.k
  %i.ab = sub nsw i64 0, %i.h
  %i.ac = udiv i64 %i.n, %i.ab
  %i.ad = sub nsw i64 0, %i.ac
  br label %_Z3divILb1EE13checked_int64IXT_EERKS1_S3_.exit

bb.n:                                             ; preds = %.critedge
  %i.ae = icmp eq i64 %i.n, -9223372036854775808
  br i1 %i.ae, label %bb.o, label %_ZngILb1EE13checked_int64IXT_EERKS1_.exit34

bb.o:                                             ; preds = %bb.n
  %i.af = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.af, align 8, !tbaa !87
  tail call void @__cxa_throw(ptr nonnull %i.af, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

_ZngILb1EE13checked_int64IXT_EERKS1_.exit34:      ; preds = %bb.n
  %i.ag = add i64 %i.n, %i.h                      ; 5 uses
  %i.ah = sub i64 0, %i.ag                        ; 2 uses
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %_ZmiILb1EE13checked_int64IXT_EERKS1_S3_.exit, label %bb.p

bb.p:                                             ; preds = %_ZngILb1EE13checked_int64IXT_EERKS1_.exit34
  %i.ai = icmp ne i64 %i.h, 0
  %i.aj = icmp slt i64 %i.ah, 1
  %or.cond.i.i36 = and i1 %i.ai, %i.aj
  br i1 %or.cond.i.i36, label %bb.q, label %_ZmiILb1EE13checked_int64IXT_EERKS1_S3_.exit

bb.q:                                             ; preds = %bb.p
  %i.ak = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.ak, align 8, !tbaa !87
  tail call void @__cxa_throw(ptr nonnull %i.ak, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

_ZmiILb1EE13checked_int64IXT_EERKS1_S3_.exit:     ; preds = %_ZngILb1EE13checked_int64IXT_EERKS1_.exit34, %bb.p
  %.neg67 = add nuw i64 %i.ag, 1
  %i.al = xor i64 %i.ag, -1
  %i.am = icmp slt i64 %i.ah, 1
  %i.an = icmp slt i64 %i.ag, 0
  %or.cond = and i1 %i.am, %i.an
  br i1 %or.cond, label %bb.r, label %_ZmiILb1EE13checked_int64IXT_EERKS1_RKl.exit39

bb.r:                                             ; preds = %_ZmiILb1EE13checked_int64IXT_EERKS1_S3_.exit
  %i.ao = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.ao, align 8, !tbaa !87
  tail call void @__cxa_throw(ptr nonnull %i.ao, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

_ZmiILb1EE13checked_int64IXT_EERKS1_RKl.exit39:   ; preds = %_ZmiILb1EE13checked_int64IXT_EERKS1_S3_.exit
  %i.ap = icmp eq i64 %i.h, -9223372036854775808
  br i1 %i.ap, label %bb.s, label %_ZngILb1EE13checked_int64IXT_EERKS1_.exit40

bb.s:                                             ; preds = %_ZmiILb1EE13checked_int64IXT_EERKS1_RKl.exit39
  %i.aq = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.aq, align 8, !tbaa !87
  tail call void @__cxa_throw(ptr nonnull %i.aq, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

_ZngILb1EE13checked_int64IXT_EERKS1_.exit40:      ; preds = %_ZmiILb1EE13checked_int64IXT_EERKS1_RKl.exit39
  %i.ar = sub nsw i64 0, %i.h                     ; 2 uses
  %i.as = icmp eq i64 %i.h, 0
  br i1 %i.as, label %bb.t, label %_ZN13checked_int64ILb1EEdVERKS0_.exit.i41

bb.t:                                             ; preds = %_ZngILb1EE13checked_int64IXT_EERKS1_.exit40
  %i.at = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.at, align 8, !tbaa !87
  tail call void @__cxa_throw(ptr nonnull %i.at, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

_ZN13checked_int64ILb1EEdVERKS0_.exit.i41:        ; preds = %_ZngILb1EE13checked_int64IXT_EERKS1_.exit40
  %i.au = sdiv i64 %i.al, %i.ar                   ; 4 uses
  %i.av = icmp sgt i64 %i.ag, -1
  br i1 %i.av, label %_ZN13checked_int64ILb1EErMERKS0_.exit.i43, label %_Z3divILb1EE13checked_int64IXT_EERKS1_S3_.exit

_ZN13checked_int64ILb1EErMERKS0_.exit.i43:        ; preds = %_ZN13checked_int64ILb1EEdVERKS0_.exit.i41
  %i.aw = urem i64 %.neg67, %i.ar
  %.not.i44 = icmp eq i64 %i.aw, 0
  br i1 %.not.i44, label %_Z3divILb1EE13checked_int64IXT_EERKS1_S3_.exit, label %bb.u

bb.u:                                             ; preds = %_ZN13checked_int64ILb1EErMERKS0_.exit.i43
  %i.ax = add nsw i64 %i.au, -1
  %or.cond.i45 = icmp eq i64 %i.au, -9223372036854775808
  br i1 %or.cond.i45, label %bb.v, label %_Z3divILb1EE13checked_int64IXT_EERKS1_S3_.exit

bb.v:                                             ; preds = %bb.u
  %i.ay = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.ay, align 8, !tbaa !87
  tail call void @__cxa_throw(ptr nonnull %i.ay, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

_Z3divILb1EE13checked_int64IXT_EERKS1_S3_.exit:   ; preds = %_ZN13checked_int64ILb1EEdVERKS0_.exit.i19, %_ZN13checked_int64ILb1EEdVERKS0_.exit.i, %bb.u, %_ZN13checked_int64ILb1EErMERKS0_.exit.i43, %_ZN13checked_int64ILb1EEdVERKS0_.exit.i41, %_ZN13checked_int64ILb1EEdVERKS0_.exit.i.thread58, %_Z3divILb1EE13checked_int64IXT_EERKS1_S3_.exit32, %_ZdvILb1EE13checked_int64IXT_EERKS1_S3_.exit
  %.sroa.0.0 = phi i64 [ %i.l, %_ZdvILb1EE13checked_int64IXT_EERKS1_S3_.exit ], [ %i.au, %_ZN13checked_int64ILb1EEdVERKS0_.exit.i41 ], [ %i.ad, %_Z3divILb1EE13checked_int64IXT_EERKS1_S3_.exit32 ], [ %i.au, %_ZN13checked_int64ILb1EErMERKS0_.exit.i43 ], [ %4, %_ZN13checked_int64ILb1EEdVERKS0_.exit.i ], [ %i.ax, %bb.u ], [ %i.s, %_ZN13checked_int64ILb1EEdVERKS0_.exit.i.thread58 ], [ %.neg, %_ZN13checked_int64ILb1EEdVERKS0_.exit.i19 ]
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN3sls10arith_baseI13checked_int64ILb1EEE16save_best_valuesEv(ptr noundef nonnull align 8 dereferenceable(672) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !208  ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %._crit_edge, label %_ZN6vectorIN3sls10arith_baseI13checked_int64ILb1EEE8var_infoELb1EjE3endEv.exit

_ZN6vectorIN3sls10arith_baseI13checked_int64ILb1EEE8var_infoELb1EjE3endEv.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !129  ; 2 uses
  %i.f = zext i32 %i.e to i64
  %i.g = mul nuw nsw i64 %i.f, 184
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.g
  %.not9 = icmp eq i32 %i.e, 0
  br i1 %.not9, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a, %_ZN6vectorIN3sls10arith_baseI13checked_int64ILb1EEE8var_infoELb1EjE3endEv.exit
  tail call void @_ZN3sls10arith_baseI13checked_int64ILb1EEE11check_ineqsEv(ptr noundef nonnull align 8 dereferenceable(672) %0)
  ret void

.lr.ph:                                           ; preds = %_ZN6vectorIN3sls10arith_baseI13checked_int64ILb1EEE8var_infoELb1EjE3endEv.exit, %.lr.ph
  %.010 = phi ptr [ %i.l, %.lr.ph ], [ %i.b, %_ZN6vectorIN3sls10arith_baseI13checked_int64ILb1EEE8var_infoELb1EjE3endEv.exit ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.010, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %.010, i64 24
  %i.k = load i64, ptr %i.i, align 8, !tbaa !89
  store i64 %i.k, ptr %i.j, align 8, !tbaa !89
  %i.l = getelementptr inbounds nuw i8, ptr %.010, i64 184 ; 2 uses
  %.not = icmp eq ptr %i.l, %i.h
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN3sls10arith_baseI13checked_int64ILb1EEE11check_ineqsEv(ptr noundef nonnull align 8 dereferenceable(672) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !172, !nonnull !109, !align !110
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !202, !nonnull !109, !align !110 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !87
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef i32 %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d), !inline_history !0
  %.not21 = icmp eq i32 %i.h, 0
  br i1 %.not21, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 160
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNK3sls10arith_baseI13checked_int64ILb1EEE8get_ineqEj.exit.thread, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNK3sls10arith_baseI13checked_int64ILb1EEE8get_ineqEj.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNK3sls10arith_baseI13checked_int64ILb1EEE8get_ineqEj.exit.thread ] ; 5 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !211  ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZNK3sls10arith_baseI13checked_int64ILb1EEE8get_ineqEj.exit.thread, label %_ZNK6vectorIPN3sls10arith_baseI13checked_int64ILb1EEE4ineqELb0EjE4sizeEv.exit.i.i

_ZNK6vectorIPN3sls10arith_baseI13checked_int64ILb1EEE4ineqELb0EjE4sizeEv.exit.i.i: ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 -4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !129
  %i.n = zext i32 %i.m to i64
  %i.o = icmp samesign ult i64 %indvars.iv, %i.n
  br i1 %i.o, label %_ZNK3sls10arith_baseI13checked_int64ILb1EEE8get_ineqEj.exit, label %_ZNK3sls10arith_baseI13checked_int64ILb1EEE8get_ineqEj.exit.thread
end_hunk_0
