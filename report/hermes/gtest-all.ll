inline.NumInlined: 6243
inline.NumDeleted: 1690
begin_hunk_0_@_ZNK7testing8internal12UnitTestImpl16total_test_countEv:bb.a
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = lshr exact i64 %i.as, 3
  %i.au = trunc i64 %i.at to i32
  %i.av = add nsw i32 %.01213.us.i.epil.init, %i.au
  br label %_ZN7testing8internalL19SumOverTestCaseListERKSt6vectorIPNS_8TestCaseESaIS3_EEMS2_KFivE.exit

_ZN7testing8internalL19SumOverTestCaseListERKSt6vectorIPNS_8TestCaseESaIS3_EEMS2_KFivE.exit: ; preds = %.lr.ph.split.us.i.epil.preheader, %_ZN7testing8internalL19SumOverTestCaseListERKSt6vectorIPNS_8TestCaseESaIS3_EEMS2_KFivE.exit.loopexit.unr-lcssa, %bb.a
  %.012.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.ah, %_ZN7testing8internalL19SumOverTestCaseListERKSt6vectorIPNS_8TestCaseESaIS3_EEMS2_KFivE.exit.loopexit.unr-lcssa ], [ %i.av, %.lr.ph.split.us.i.epil.preheader ]
  ret i32 %.012.lcssa.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZNK7testing8TestCase16total_test_countEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(248) %0) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !237
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !238
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 3
  %i.i = trunc i64 %i.h to i32
  ret i32 %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZNK7testing8internal12UnitTestImpl17test_to_run_countEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(497) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !232  ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !233  ; 3 uses
  %.not15.i = icmp eq ptr %i.c, %i.d
  br i1 %.not15.i, label %_ZN7testing8internalL19SumOverTestCaseListERKSt6vectorIPNS_8TestCaseESaIS3_EEMS2_KFivE.exit, label %.lr.ph.split.us.i.preheader

.lr.ph.split.us.i.preheader:                      ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.preheader, %_ZNK7testing8TestCase17test_to_run_countEv.exit
  %.014.us.i = phi i64 [ %i.u, %_ZNK7testing8TestCase17test_to_run_countEv.exit ], [ 0, %.lr.ph.split.us.i.preheader ] ; 2 uses
  %.01213.us.i = phi i32 [ %i.t, %_ZNK7testing8TestCase17test_to_run_countEv.exit ], [ 0, %.lr.ph.split.us.i.preheader ]
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.014.us.i
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !214  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !223  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !223  ; 2 uses
  %.not7.i.i = icmp eq ptr %i.l, %i.n
  br i1 %.not7.i.i, label %_ZNK7testing8TestCase17test_to_run_countEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.split.us.i, %.lr.ph.i.i
  %.09.i.i = phi i32 [ %spec.select.i.i, %.lr.ph.i.i ], [ 0, %.lr.ph.split.us.i ]
  %.sroa.04.08.i.i = phi ptr [ %i.s, %.lr.ph.i.i ], [ %i.l, %.lr.ph.split.us.i ] ; 2 uses
  %i.o = load ptr, ptr %.sroa.04.08.i.i, align 8, !tbaa !224
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 128
  %i.q = load i8, ptr %i.p, align 8, !tbaa !225, !range !74, !noundef !75
  %i.r = zext nneg i8 %i.q to i32
  %spec.select.i.i = add nuw nsw i32 %.09.i.i, %i.r ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, %i.n
  br i1 %.not.i.i, label %_ZNK7testing8TestCase17test_to_run_countEv.exit, label %.lr.ph.i.i, !llvm.loop !230

_ZNK7testing8TestCase17test_to_run_countEv.exit:  ; preds = %.lr.ph.i.i, %.lr.ph.split.us.i
  %.0.lcssa.i.i = phi i32 [ 0, %.lr.ph.split.us.i ], [ %spec.select.i.i, %.lr.ph.i.i ]
  %i.t = add nsw i32 %.0.lcssa.i.i, %.01213.us.i  ; 2 uses
  %i.u = add nuw i64 %.014.us.i, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.u, %i.h
  br i1 %exitcond.not, label %_ZN7testing8internalL19SumOverTestCaseListERKSt6vectorIPNS_8TestCaseESaIS3_EEMS2_KFivE.exit, label %.lr.ph.split.us.i, !llvm.loop !234

_ZN7testing8internalL19SumOverTestCaseListERKSt6vectorIPNS_8TestCaseESaIS3_EEMS2_KFivE.exit: ; preds = %_ZNK7testing8TestCase17test_to_run_countEv.exit, %bb.a
  %.012.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.t, %_ZNK7testing8TestCase17test_to_run_countEv.exit ]
  ret i32 %.012.lcssa.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZNK7testing8TestCase17test_to_run_countEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(248) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !223  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !223  ; 2 uses
  %.not7.i = icmp eq ptr %i.b, %i.d
  br i1 %.not7.i, label %_ZN7testing8internal7CountIfISt6vectorIPNS_8TestInfoESaIS4_EEPFbPKS3_EEEiRKT_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.09.i = phi i32 [ %spec.select.i, %.lr.ph.i ], [ 0, %bb.a ]
  %.sroa.04.08.i = phi ptr [ %i.i, %.lr.ph.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.sroa.04.08.i, align 8, !tbaa !224
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  %i.g = load i8, ptr %i.f, align 8, !tbaa !225, !range !74, !noundef !75
  %i.h = zext nneg i8 %i.g to i32
  %spec.select.i = add nuw nsw i32 %.09.i, %i.h   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.i, %i.d
  br i1 %.not.i, label %_ZN7testing8internal7CountIfISt6vectorIPNS_8TestInfoESaIS4_EEPFbPKS3_EEEiRKT_T0_.exit, label %.lr.ph.i, !llvm.loop !230

_ZN7testing8internal7CountIfISt6vectorIPNS_8TestInfoESaIS4_EEPFbPKS3_EEEiRKT_T0_.exit: ; preds = %.lr.ph.i, %bb.a
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ %spec.select.i, %.lr.ph.i ]
  ret i32 %.0.lcssa.i
}

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(497) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !88   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #57 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), ptr %i.d, align 8, !tbaa !26
  store ptr %i.d, ptr %i.a, align 8, !tbaa !88
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = phi ptr [ %i.d, %bb.b ], [ %i.b, %bb.a ]
  ret ptr %i.e
}

; Function Attrs: mustprogress nofree nounwind uwtable
define noundef i64 @_ZN7testing8internal15GetTimeInMillisEv() local_unnamed_addr #16 {
bb.a:
  %0 = alloca %struct.timeval, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #53
  %i.a = call i32 @gettimeofday(ptr noundef nonnull %0, ptr noundef null) #53 ; 0 uses
  %i.b = load i64, ptr %0, align 8, !tbaa !239
  %i.c = mul nsw i64 %i.b, 1000
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !241
  %i.f = sdiv i64 %i.e, 1000
  %i.g = add nsw i64 %i.f, %i.c
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #53
  ret i64 %i.g
}

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN7testing8internal6String13CStringEqualsEPKcS3_(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, null                     ; 2 uses
  %i.b = icmp eq ptr %1, null                     ; 2 uses
  %brmerge = or i1 %i.a, %i.b
  %.mux = and i1 %i.a, %i.b
  br i1 %brmerge, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1) #55
  %i.d = icmp eq i32 %i.c, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %.mux, %bb.a ], [ %i.d, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define hidden void @_ZN7testing8internal11SplitStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcPSt6vectorIS6_SaIS6_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 noundef signext %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::vector.33", align 16   ; 14 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #53
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.c = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 noundef signext %1, i64 noundef 0) #53 ; 2 uses
  %i.d = icmp eq i64 %i.c, -1
  br i1 %i.d, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #53
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !16, !noalias !242
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 11 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.k

._crit_edge:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i44
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #53
  call void @llvm.experimental.noalias.scope.decl(metadata !245)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !16, !noalias !245 ; 3 uses
  %.not = icmp ult i64 %i.ay, %i.m
  br i1 %.not, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.416, ptr noundef nonnull @.str.418, i64 noundef %i.ch, i64 noundef %i.m) #56
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %._crit_edge.thread, %._crit_edge
  %i.n = phi i64 [ %i.f, %._crit_edge.thread ], [ %i.m, %._crit_edge ]
  %.014.lcssa98 = phi i64 [ 0, %._crit_edge.thread ], [ %i.ch, %._crit_edge ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 11 uses
  store ptr %i.o, ptr %4, align 8, !tbaa !14, !alias.scope !245
  %i.p = load ptr, ptr %0, align 8, !tbaa !7, !noalias !245
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %.014.lcssa98 ; 2 uses
  %i.r = sub nuw i64 %i.n, %.014.lcssa98          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #53, !noalias !245
  store i64 %i.r, ptr %i.b, align 8, !tbaa !15, !noalias !245
  %i.s = icmp ugt i64 %i.r, 15
  br i1 %i.s, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.t = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc27 unwind label %bb.i   ; 2 uses

.noexc27:                                         ; preds = %.noexc10.i.i
  store ptr %i.t, ptr %4, align 8, !tbaa !7, !alias.scope !245
  %i.u = load i64, ptr %i.b, align 8, !tbaa !15, !noalias !245
  store i64 %i.u, ptr %i.o, align 8, !tbaa !13, !alias.scope !245
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.v = phi ptr [ %i.t, %.noexc27 ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %i.r, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.w = load i8, ptr %i.q, align 1, !tbaa !13
  store i8 %i.w, ptr %i.v, align 1, !tbaa !13
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr align 1 %i.q, i64 %i.r, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i
  %i.x = load i64, ptr %i.b, align 8, !tbaa !15, !noalias !245 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i64 %i.x, ptr %i.y, align 8, !tbaa !16, !alias.scope !245
  %i.z = load ptr, ptr %4, align 8, !tbaa !7, !alias.scope !245
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  store i8 0, ptr %i.aa, align 1, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #53, !noalias !245
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !148 ; 7 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 16, !tbaa !150
  %.not.i.i = icmp eq ptr %i.ac, %i.ae
  br i1 %.not.i.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 3 uses
  store ptr %i.af, ptr %i.ac, align 8, !tbaa !14
  %i.ag = load ptr, ptr %4, align 8, !tbaa !7     ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.o
  br i1 %i.ah, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.ai = load i64, ptr %i.y, align 8, !tbaa !16  ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 16
  call void @llvm.assume(i1 %i.aj)
  %i.ak = add nuw nsw i64 %i.ai, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.af, ptr noundef nonnull align 8 dereferenceable(1) %i.o, i64 %i.ak, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  store ptr %i.ag, ptr %i.ac, align 8, !tbaa !7
  %i.al = load i64, ptr %i.o, align 8, !tbaa !13
  store i64 %i.al, ptr %i.af, align 8, !tbaa !13
  %.pre68 = load i64, ptr %i.y, align 8, !tbaa !16
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.am = phi i64 [ %.pre68, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.ai, %bb.g ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 %i.am, ptr %i.an, align 8, !tbaa !16
  store ptr %i.o, ptr %4, align 8, !tbaa !7
  store i64 0, ptr %i.y, align 8, !tbaa !16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  store ptr %i.ao, ptr %i.ab, align 8, !tbaa !148
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

bb.h:                                             ; preds = %bb.e
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.ac, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit unwind label %bb.j

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.h
  %.pre69 = load ptr, ptr %4, align 8, !tbaa !7   ; 2 uses
  %i.ap = icmp eq ptr %.pre69, %i.o
  br i1 %i.ap, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.aq = load i64, ptr %i.o, align 8, !tbaa !13
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %.pre69, i64 noundef %i.ar) #54
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

bb.i:                                             ; preds = %.noexc10.i.i, %bb.b
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

bb.j:                                             ; preds = %bb.h
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.au = load ptr, ptr %4, align 8, !tbaa !7     ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.o
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.j
  %i.aw = load i64, ptr %i.o, align 8, !tbaa !13
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29, %bb.i
  %.pn23 = phi { ptr, i32 } [ %i.as, %bb.i ], [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29 ], [ %i.at, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #53
  br label %bb.u

bb.k:                                             ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i44
  %i.ay = phi i64 [ %i.c, %.lr.ph ], [ %i.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i44 ] ; 3 uses
  %.01459 = phi i64 [ 0, %.lr.ph ], [ %i.ch, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i44 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #53
  call void @llvm.experimental.noalias.scope.decl(metadata !247)
  %i.az = load i64, ptr %i.g, align 8, !tbaa !16, !noalias !247 ; 3 uses
  %i.ba = icmp ugt i64 %.01459, %i.az
  br i1 %i.ba, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i32

bb.l:                                             ; preds = %bb.k
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.416, ptr noundef nonnull @.str.418, i64 noundef %.01459, i64 noundef %i.az) #56
          to label %.noexc35 unwind label %.loopexit.split-lp

.noexc35:                                         ; preds = %bb.l
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i32: ; preds = %bb.k
  %i.bb = sub i64 %i.ay, %.01459
  store ptr %i.h, ptr %5, align 8, !tbaa !14, !alias.scope !247
  %i.bc = load ptr, ptr %0, align 8, !tbaa !7, !noalias !247
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.01459 ; 2 uses
  %i.be = sub nuw i64 %i.az, %.01459
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.bb, i64 %i.be) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #53, !noalias !247
  store i64 %spec.select.i.i.i, ptr %i.a, align 8, !tbaa !15, !noalias !247
  %i.bf = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.bf, label %.noexc10.i.i34, label %._crit_edge.i.i.i33

.noexc10.i.i34:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i32
  %i.bg = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc36 unwind label %.loopexit ; 2 uses

.noexc36:                                         ; preds = %.noexc10.i.i34
  store ptr %i.bg, ptr %5, align 8, !tbaa !7, !alias.scope !247
  %i.bh = load i64, ptr %i.a, align 8, !tbaa !15, !noalias !247
  store i64 %i.bh, ptr %i.h, align 8, !tbaa !13, !alias.scope !247
  br label %._crit_edge.i.i.i33

._crit_edge.i.i.i33:                              ; preds = %.noexc36, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i32
  %i.bi = phi ptr [ %i.bg, %.noexc36 ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i32 ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.n [
    i64 1, label %bb.m
    i64 0, label %bb.o
  ]

bb.m:                                             ; preds = %._crit_edge.i.i.i33
  %i.bj = load i8, ptr %i.bd, align 1, !tbaa !13
  store i8 %i.bj, ptr %i.bi, align 1, !tbaa !13
  br label %bb.o

bb.n:                                             ; preds = %._crit_edge.i.i.i33
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bi, ptr align 1 %i.bd, i64 %spec.select.i.i.i, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %._crit_edge.i.i.i33
  %i.bk = load i64, ptr %i.a, align 8, !tbaa !15, !noalias !247 ; 2 uses
  store i64 %i.bk, ptr %i.i, align 8, !tbaa !16, !alias.scope !247
  %i.bl = load ptr, ptr %5, align 8, !tbaa !7, !alias.scope !247
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bk
  store i8 0, ptr %i.bm, align 1, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #53, !noalias !247
  %i.bn = load ptr, ptr %i.j, align 8, !tbaa !148 ; 7 uses
  %i.bo = load ptr, ptr %i.k, align 16, !tbaa !150
  %.not.i.i38 = icmp eq ptr %i.bn, %i.bo
  br i1 %.not.i.i38, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 3 uses
  store ptr %i.bp, ptr %i.bn, align 8, !tbaa !14
  %i.bq = load ptr, ptr %5, align 8, !tbaa !7     ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.h
  br i1 %i.br, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i39

bb.q:                                             ; preds = %bb.p
  %i.bs = load i64, ptr %i.i, align 8, !tbaa !16  ; 3 uses
  %i.bt = icmp ult i64 %i.bs, 16
  call void @llvm.assume(i1 %i.bt)
  %i.bu = add nuw nsw i64 %i.bs, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bp, ptr noundef nonnull align 8 dereferenceable(1) %i.h, i64 %i.bu, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit42.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i39: ; preds = %bb.p
  store ptr %i.bq, ptr %i.bn, align 8, !tbaa !7
  %i.bv = load i64, ptr %i.h, align 8, !tbaa !13
  store i64 %i.bv, ptr %i.bp, align 8, !tbaa !13
  %.pre = load i64, ptr %i.i, align 8, !tbaa !16
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit42.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit42.thread: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i39
  %i.bw = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i39 ], [ %i.bs, %bb.q ]
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !16
  store ptr %i.h, ptr %5, align 8, !tbaa !7
  store i64 0, ptr %i.i, align 8, !tbaa !16
  %i.by = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  store ptr %i.by, ptr %i.j, align 8, !tbaa !148
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i44

bb.r:                                             ; preds = %bb.o
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.bn, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit42 unwind label %bb.s

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit42: ; preds = %bb.r
  %.pre67 = load ptr, ptr %5, align 8, !tbaa !7   ; 2 uses
  %i.bz = icmp eq ptr %.pre67, %i.h
  br i1 %i.bz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit42
  %i.ca = load i64, ptr %i.h, align 8, !tbaa !13
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %.pre67, i64 noundef %i.cb) #54
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i44

.loopexit:                                        ; preds = %.noexc10.i.i34
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

.loopexit.split-lp:                               ; preds = %bb.l
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

bb.s:                                             ; preds = %bb.r
  %i.cc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cd = load ptr, ptr %5, align 8, !tbaa !7     ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.h
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %bb.s
  %i.cf = load i64, ptr %i.h, align 8, !tbaa !13
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cg) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48: ; preds = %bb.s, %.loopexit, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46
  %.pn = phi { ptr, i32 } [ %i.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %i.cc, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #53
  br label %bb.u

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i44: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit42, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit42.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #53
  %i.ch = add nuw i64 %i.ay, 1                    ; 4 uses
  %i.ci = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 noundef signext %1, i64 noundef %i.ch) #53 ; 2 uses
  %i.cj = icmp eq i64 %i.ci, -1
  br i1 %i.cj, label %._crit_edge, label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #53
  %i.ck = load ptr, ptr %2, align 8, !tbaa !145   ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cn = load <2 x ptr>, ptr %3, align 16, !tbaa !250
  %i.co = load ptr, ptr %i.ad, align 16, !tbaa !150
  store ptr %i.ck, ptr %3, align 16, !tbaa !145
  %i.cp = load <2 x ptr>, ptr %i.cl, align 8, !tbaa !250
  %i.cq = load ptr, ptr %i.cl, align 8, !tbaa !148 ; 2 uses
  store <2 x ptr> %i.cn, ptr %2, align 8, !tbaa !250
  store ptr %i.co, ptr %i.cm, align 8, !tbaa !150
  store <2 x ptr> %i.cp, ptr %i.ab, align 8, !tbaa !250
  %.not4.i.i.i = icmp eq ptr %i.ck, %i.cq
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.cw, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ] ; 3 uses
  %i.cr = load ptr, ptr %.05.i.i.i, align 8, !tbaa !7 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.ct = icmp eq ptr %i.cr, %i.cs
  br i1 %i.ct, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.cu = load i64, ptr %i.cs, align 8, !tbaa !13
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cv) #54
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cw, %i.cq
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !149

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %3, align 16, !tbaa !145
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.cx = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.cx, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.cy = load ptr, ptr %i.ad, align 16, !tbaa !150
  %i.cz = ptrtoint ptr %i.cy to i64
  %i.da = ptrtoint ptr %i.cx to i64
  %i.db = sub i64 %i.cz, %i.da
  call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef %i.db) #54
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #53
  ret void

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48
  %.pn23.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48 ], [ %.pn23, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31 ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #53
  resume { ptr, i32 } %.pn23.pn.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_ZN7testing8internal10AlwaysTrueEv() local_unnamed_addr #3 {
bb.a:
  ret i1 true
}

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext, i64 noundef) local_unnamed_addr #20

; Function Attrs: mustprogress uwtable
define void @_ZN7testing7MessageC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(392) ptr @_Znwm(i64 noundef 392) #57 ; 4 uses
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !26
  %i.d = getelementptr i8, ptr %i.c, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 17, ptr %i.g, align 8, !tbaa !251
  ret void

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 392) #54
  resume { ptr, i32 } %i.h
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #0 align 2

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN7testing7MessagelsEPKw(ptr nofree noundef nonnull readonly returned align 8 captures(ret: address, provenance) dereferenceable(8) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #53
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %._crit_edge.i.i.i, label %bb.b

._crit_edge.i.i.i:                                ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !14, !alias.scope !260
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.b, ptr noundef nonnull align 1 dereferenceable(6) @.str.83, i64 6, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 6, ptr %i.c, align 8, !tbaa !16, !alias.scope !260
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 22
  store i8 0, ptr %i.d, align 2, !tbaa !13, !alias.scope !260
  br label %_ZN7testing8internal6String15ShowWideCStringB5cxx11EPKw.exit

bb.b:                                             ; preds = %bb.a
  call void @_ZN7testing8internal16WideStringToUtf8B5cxx11EPKwi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull readonly %1, i32 noundef -1)
  %.pre = load ptr, ptr %3, align 8, !tbaa !7
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre6 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !16
  br label %_ZN7testing8internal6String15ShowWideCStringB5cxx11EPKw.exit

_ZN7testing8internal6String15ShowWideCStringB5cxx11EPKw.exit: ; preds = %._crit_edge.i.i.i, %bb.b
  %i.e = phi i64 [ 6, %._crit_edge.i.i.i ], [ %.pre6, %bb.b ]
  %i.f = phi ptr [ %i.b, %._crit_edge.i.i.i ], [ %.pre, %bb.b ]
  %i.g = load ptr, ptr %0, align 8, !tbaa !20
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #53
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 1, ptr %i.i, align 8, !tbaa !23
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh14raw_os_ostreamE, i64 16), ptr %2, align 8, !tbaa !26
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.h, ptr %i.k, align 8, !tbaa !28
  %i.l = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef %i.f, i64 noundef %i.e)
          to label %bb.c unwind label %.body      ; 0 uses

.body:                                            ; preds = %_ZN7testing8internal6String15ShowWideCStringB5cxx11EPKw.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #53
  %i.n = load ptr, ptr %3, align 8, !tbaa !7      ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

bb.c:                                             ; preds = %_ZN7testing8internal6String15ShowWideCStringB5cxx11EPKw.exit
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #53
  %i.q = load ptr, ptr %3, align 8, !tbaa !7      ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.t = load i64, ptr %i.r, align 8, !tbaa !13
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #53
  ret ptr %0

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %.body
  %i.v = load i64, ptr %i.o, align 8, !tbaa !13
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.w) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #53
  resume { ptr, i32 } %i.m
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal6String15ShowWideCStringB5cxx11EPKw(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %._crit_edge.i.i, label %bb.b

._crit_edge.i.i:                                  ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !14
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.b, ptr noundef nonnull align 1 dereferenceable(6) @.str.83, i64 6, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 6, ptr %i.c, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i8 0, ptr %i.d, align 2, !tbaa !13
  br label %bb.c

end_hunk_0
begin_hunk_1_@_ZN7testing8internal12UnitTestImplD2Ev:bb.a
_ZN7testing8internal5MutexD2Ev.exit:              ; preds = %_ZNSt6vectorIPN7testing11EnvironmentESaIS2_EED2Ev.exit, %bb.r
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !7  ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.cr = icmp eq ptr %i.cp, %i.cq
  br i1 %i.cr, label %_ZN7testing8internal8FilePathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN7testing8internal5MutexD2Ev.exit
  %i.cs = load i64, ptr %i.cq, align 8, !tbaa !13
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.ct) #54
  br label %_ZN7testing8internal8FilePathD2Ev.exit

_ZN7testing8internal8FilePathD2Ev.exit:           ; preds = %_ZN7testing8internal5MutexD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7testing8internal12UnitTestImplD0Ev(ptr noundef nonnull align 8 dead_on_return(497) dereferenceable(497) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN7testing8internal12UnitTestImplD1Ev(ptr noundef nonnull align 8 dead_on_return(497) dereferenceable(497) %0) #53
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 504) #54
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN7testing8internal12UnitTestImpl32SuppressTestEventsIfInSubprocessEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(497) %0) local_unnamed_addr #34 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !929
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !211
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i8 0, ptr %i.e, align 8, !tbaa !746
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal12UnitTestImpl18ConfigureXmlOutputEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(497) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #53
  call void @_ZN7testing8internal15UnitTestOptions15GetOutputFormatB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !16
  switch i64 %i.b, label %._ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread_crit_edge [
    i64 3, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 0, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread25
  ]

._ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread_crit_edge: ; preds = %bb.a
  %.pre = load ptr, ptr %1, align 8, !tbaa !7
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !7      ; 3 uses
  %i.d = load i16, ptr %i.c, align 1
  %i.e = xor i16 %i.d, 28024
  %i.f = getelementptr i8, ptr %i.c, i64 2
  %i.g = load i8, ptr %i.f, align 1
  %i.h = zext i8 %i.g to i16
  %i.i = xor i16 %i.h, 108
  %i.j = or i16 %i.e, %i.i
  %i.k = icmp ne i16 %i.j, 0
  %i.l = zext i1 %i.k to i32
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.o = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #57
          to label %bb.b unwind label %bb.f       ; 3 uses

bb.b:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #53
  invoke void @_ZN7testing8internal15UnitTestOptions27GetAbsolutePathToOutputFileB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.thread

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %2, align 8, !tbaa !7
  invoke void @_ZN7testing8internal24XmlUnitTestResultPrinterC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef %i.p)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN7testing18TestEventListeners22SetDefaultXmlGeneratorEPNS_17TestEventListenerE(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull %i.o)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %2, align 8, !tbaa !7      ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.t = load i64, ptr %i.r, align 8, !tbaa !13
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #53
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread25

bb.f:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.thread: ; preds = %bb.b
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #53
  br label %bb.h

bb.g:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.y = load ptr, ptr %2, align 8, !tbaa !7      ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.g
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !13
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #53
  br i1 %.0, label %bb.h, label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #53
  br i1 %.0, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %.pn24 = phi { ptr, i32 } [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.thread ], [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14 ], [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef 40) #54
  br label %bb.i

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %._ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread_crit_edge, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ad = phi ptr [ %.pre, %._ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread_crit_edge ], [ %i.c, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ]
  %i.ae = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.233, ptr noundef %i.ad) ; 0 uses
  %i.af = load ptr, ptr @stdout, align 8, !tbaa !34
  %i.ag = call i32 @fflush(ptr noundef %i.af)     ; 0 uses
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread25

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread25: ; preds = %bb.a, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ah = load ptr, ptr %1, align 8, !tbaa !7     ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread25
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !13
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #53
  ret void

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %bb.h, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %.pn24, %bb.h ], [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14 ], [ %i.v, %bb.f ], [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12 ]
  %i.am = load ptr, ptr %1, align 8, !tbaa !7     ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %bb.i
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !13
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #53
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal12UnitTestImpl24ConfigureStreamingOutputEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(497) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing28FLAGS_gtest_stream_result_toB5cxx11E, i64 8), align 8, !tbaa !16
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) @_ZN7testing28FLAGS_gtest_stream_result_toB5cxx11E, i8 noundef signext 58, i64 noundef 0) #53 ; 4 uses
  %.not = icmp eq i64 %i.e, -1
  br i1 %.not, label %bb.t, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.g = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #57 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #53
  tail call void @llvm.experimental.noalias.scope.decl(metadata !974)
  %i.h = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing28FLAGS_gtest_stream_result_toB5cxx11E, i64 8), align 8, !tbaa !16, !noalias !974
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 9 uses
  store ptr %i.i, ptr %1, align 8, !tbaa !14, !alias.scope !974
  %i.j = load ptr, ptr @_ZN7testing28FLAGS_gtest_stream_result_toB5cxx11E, align 8, !tbaa !7, !noalias !974 ; 2 uses
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #53, !noalias !974
  store i64 %spec.select.i.i.i, ptr %i.b, align 8, !tbaa !15, !noalias !974
  %i.k = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.k, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %bb.c
  %i.l = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29.thread ; 2 uses

.noexc:                                           ; preds = %.noexc10.i.i
  store ptr %i.l, ptr %1, align 8, !tbaa !7, !alias.scope !974
  %i.m = load i64, ptr %i.b, align 8, !tbaa !15, !noalias !974
  store i64 %i.m, ptr %i.i, align 8, !tbaa !13, !alias.scope !974
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %bb.c
  %i.n = phi ptr [ %i.l, %.noexc ], [ %i.i, %bb.c ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.o = load i8, ptr %i.j, align 1, !tbaa !13
  store i8 %i.o, ptr %i.n, align 1, !tbaa !13
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr align 1 %i.j, i64 %spec.select.i.i.i, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i
  %i.p = load i64, ptr %i.b, align 8, !tbaa !15, !noalias !974 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.p, ptr %i.q, align 8, !tbaa !16, !alias.scope !974
  %i.r = load ptr, ptr %1, align 8, !tbaa !7, !alias.scope !974
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #53, !noalias !974
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #53
  %i.t = add nuw i64 %i.e, 1                      ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !977)
  %i.u = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing28FLAGS_gtest_stream_result_toB5cxx11E, i64 8), align 8, !tbaa !16, !noalias !977 ; 3 uses
  %.not45 = icmp ult i64 %i.e, %i.u
  br i1 %.not45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.416, ptr noundef nonnull @.str.418, i64 noundef %i.t, i64 noundef %i.u) #56
          to label %.noexc16 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26.thread

.noexc16:                                         ; preds = %bb.g
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.v, ptr %2, align 8, !tbaa !14, !alias.scope !977
  %i.w = load ptr, ptr @_ZN7testing28FLAGS_gtest_stream_result_toB5cxx11E, align 8, !tbaa !7, !noalias !977
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.t ; 2 uses
  %i.y = sub nuw i64 %i.u, %i.t                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #53, !noalias !977
  store i64 %i.y, ptr %i.a, align 8, !tbaa !15, !noalias !977
  %i.z = icmp ugt i64 %i.y, 15
  br i1 %i.z, label %.noexc10.i.i15, label %._crit_edge.i.i.i14

.noexc10.i.i15:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.aa = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc17 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26.thread ; 2 uses

.noexc17:                                         ; preds = %.noexc10.i.i15
  store ptr %i.aa, ptr %2, align 8, !tbaa !7, !alias.scope !977
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !15, !noalias !977
  store i64 %i.ab, ptr %i.v, align 8, !tbaa !13, !alias.scope !977
  br label %._crit_edge.i.i.i14

._crit_edge.i.i.i14:                              ; preds = %.noexc17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.ac = phi ptr [ %i.aa, %.noexc17 ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %i.y, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i14
  %i.ad = load i8, ptr %i.x, align 1, !tbaa !13
  store i8 %i.ad, ptr %i.ac, align 1, !tbaa !13
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i.i14
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ac, ptr nonnull align 1 %i.x, i64 %i.y, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i.i14
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !15, !noalias !977 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !16, !alias.scope !977
  %i.ag = load ptr, ptr %2, align 8, !tbaa !7, !alias.scope !977
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ae
  store i8 0, ptr %i.ah, align 1, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #53, !noalias !977
  invoke void @_ZN7testing8internal17StreamingListenerC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.k unwind label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.ai = load ptr, ptr %i.f, align 8, !tbaa !211 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 24 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !743 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 32 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !740
  %.not.i.i.i = icmp eq ptr %i.al, %i.an
  br i1 %.not.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %i.g, ptr %i.al, align 8, !tbaa !735
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.ao, ptr %i.ak, align 8, !tbaa !743
  br label %_ZN7testing18TestEventListeners6AppendEPNS_17TestEventListenerE.exit

bb.m:                                             ; preds = %bb.k
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !738 ; 4 uses
  %i.aq = ptrtoint ptr %i.al to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar                    ; 6 uses
  %i.at = icmp eq i64 %i.as, 9223372036854775800
  br i1 %i.at, label %bb.n, label %_ZNKSt6vectorIPN7testing17TestEventListenerESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.397) #56
          to label %.noexc19 unwind label %bb.q

.noexc19:                                         ; preds = %bb.n
  unreachable

_ZNKSt6vectorIPN7testing17TestEventListenerESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.m
  %i.au = ashr exact i64 %i.as, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.au, i64 1)
  %i.av = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.au ; 2 uses
  %i.aw = icmp ult i64 %i.av, %i.au
  %i.ax = call i64 @llvm.umin.i64(i64 %i.av, i64 1152921504606846975)
  %i.ay = select i1 %i.aw, i64 1152921504606846975, i64 %i.ax ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.ay, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.az = shl nuw nsw i64 %i.ay, 3
  %i.ba = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.az) #57
          to label %.noexc20 unwind label %bb.q   ; 4 uses

.noexc20:                                         ; preds = %_ZNKSt6vectorIPN7testing17TestEventListenerESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 %i.as ; 2 uses
  store ptr %i.g, ptr %i.bb, align 8, !tbaa !735
  %i.bc = icmp sgt i64 %i.as, 0
  br i1 %i.bc, label %bb.o, label %_ZNSt6vectorIPN7testing17TestEventListenerESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i

bb.o:                                             ; preds = %.noexc20
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ba, ptr align 8 %i.ap, i64 %i.as, i1 false)
  br label %_ZNSt6vectorIPN7testing17TestEventListenerESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i

_ZNSt6vectorIPN7testing17TestEventListenerESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i: ; preds = %bb.o, %.noexc20
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.not.i17.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIPN7testing17TestEventListenerESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIPN7testing17TestEventListenerESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.as) #54
  br label %_ZNSt6vectorIPN7testing17TestEventListenerESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i

_ZNSt6vectorIPN7testing17TestEventListenerESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i: ; preds = %bb.p, %_ZNSt6vectorIPN7testing17TestEventListenerESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i
  store ptr %i.ba, ptr %i.aj, align 8, !tbaa !738
  store ptr %i.bd, ptr %i.ak, align 8, !tbaa !743
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.ay
  store ptr %i.be, ptr %i.am, align 8, !tbaa !740
  br label %_ZN7testing18TestEventListeners6AppendEPNS_17TestEventListenerE.exit

_ZN7testing18TestEventListeners6AppendEPNS_17TestEventListenerE.exit: ; preds = %_ZNSt6vectorIPN7testing17TestEventListenerESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i, %bb.l
  %i.bf = load ptr, ptr %2, align 8, !tbaa !7     ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.v
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7testing18TestEventListeners6AppendEPNS_17TestEventListenerE.exit
  %i.bh = load i64, ptr %i.v, align 8, !tbaa !13
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7testing18TestEventListeners6AppendEPNS_17TestEventListenerE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #53
  %i.bj = load ptr, ptr %1, align 8, !tbaa !7     ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.i
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bl = load i64, ptr %i.i, align 8, !tbaa !13
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bm) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #53
  br label %bb.u

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29.thread: ; preds = %.noexc10.i.i
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.q:                                             ; preds = %_ZNKSt6vectorIPN7testing17TestEventListenerESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i, %bb.n, %bb.j
  %.0 = phi i1 [ false, %_ZNKSt6vectorIPN7testing17TestEventListenerESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ true, %bb.j ], [ false, %bb.n ] ; 2 uses
  %i.bo = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bp = load ptr, ptr %2, align 8, !tbaa !7     ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.v
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %bb.q
  %i.br = load i64, ptr %i.v, align 8, !tbaa !13
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #53
  %i.bt = load ptr, ptr %1, align 8, !tbaa !7     ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.i
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26.thread: ; preds = %bb.g, %.noexc10.i.i15
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #53
  %i.bw = load ptr, ptr %1, align 8, !tbaa !7     ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.i
  br i1 %i.bx, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26.thread
  %i.by = load i64, ptr %i.i, align 8, !tbaa !13
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #54
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26
  %i.ca = load i64, ptr %i.i, align 8, !tbaa !13
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.cb) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #53
  br i1 %.0, label %bb.r, label %bb.s

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26
end_hunk_1
begin_hunk_2_@_ZN7testing8internal13ExecDeathTest10AssumeRoleEv:bb.a
  %i.cjx = load ptr, ptr %105, align 8, !tbaa !1382 ; 3 uses
  %i.cjy = load ptr, ptr %i.afm, align 8, !tbaa !1382
  %.not4.i = icmp eq ptr %i.cjx, %i.cjy
  br i1 %.not4.i, label %._crit_edge.i, label %.lr.ph.i728

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i728
  %.pre.i730 = load ptr, ptr %105, align 8, !tbaa !1371
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.critedge122
  %i.cjz = phi ptr [ %.pre.i730, %._crit_edge.loopexit.i ], [ %i.cjx, %.critedge122 ] ; 3 uses
  %.not.i.i.i.i731 = icmp eq ptr %i.cjz, null
  br i1 %.not.i.i.i.i731, label %_ZN7testing8internal9ArgumentsD2Ev.exit, label %bb.qa

bb.qa:                                            ; preds = %._crit_edge.i
  %i.cka = load ptr, ptr %i.afl, align 8, !tbaa !1375
  %i.ckb = ptrtoint ptr %i.cka to i64
  %i.ckc = ptrtoint ptr %i.cjz to i64
  %i.ckd = sub i64 %i.ckb, %i.ckc
  call void @_ZdlPvm(ptr noundef nonnull %i.cjz, i64 noundef %i.ckd) #54
  br label %_ZN7testing8internal9ArgumentsD2Ev.exit

.lr.ph.i728:                                      ; preds = %.critedge122, %.lr.ph.i728
  %.sroa.01.05.i = phi ptr [ %i.ckf, %.lr.ph.i728 ], [ %i.cjx, %.critedge122 ] ; 2 uses
  %i.cke = load ptr, ptr %.sroa.01.05.i, align 8, !tbaa !392
  call void @free(ptr noundef %i.cke) #53
  %i.ckf = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i, i64 8 ; 2 uses
  %i.ckg = load ptr, ptr %i.afm, align 8, !tbaa !1382
  %.not.i729 = icmp eq ptr %i.ckf, %i.ckg
  br i1 %.not.i729, label %._crit_edge.loopexit.i, label %.lr.ph.i728, !llvm.loop !1549

_ZN7testing8internal9ArgumentsD2Ev.exit:          ; preds = %._crit_edge.i, %bb.qa
  call void @llvm.lifetime.end.p0(ptr nonnull %105) #53
  %i.ckh = load ptr, ptr %91, align 8, !tbaa !7   ; 2 uses
  %i.cki = getelementptr inbounds nuw i8, ptr %91, i64 16 ; 2 uses
  %i.ckj = icmp eq ptr %i.ckh, %i.cki
  br i1 %i.ckj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit734, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i732

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i732: ; preds = %_ZN7testing8internal9ArgumentsD2Ev.exit
  %i.ckk = load i64, ptr %i.cki, align 8, !tbaa !13
  %i.ckl = add i64 %i.ckk, 1
  call void @_ZdlPvm(ptr noundef %i.ckh, i64 noundef %i.ckl) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit734

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit734: ; preds = %_ZN7testing8internal9ArgumentsD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i732
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #53
  %i.ckm = load ptr, ptr %84, align 8, !tbaa !7   ; 2 uses
  %i.ckn = icmp eq ptr %i.ckm, %i.qv
  br i1 %i.ckn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit737, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i735

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i735: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit734
  %i.cko = load i64, ptr %i.qv, align 8, !tbaa !13
  %i.ckp = add i64 %i.cko, 1
  call void @_ZdlPvm(ptr noundef %i.ckm, i64 noundef %i.ckp) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit737

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit737: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit734, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i735
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #53
  br label %bb.qd

.body551:                                         ; preds = %bb.pp, %bb.nk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit727, %bb.pq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit703, %bb.pn, %.body528
  %.pn115.pn = phi { ptr, i32 } [ %.pn101, %.body528 ], [ %i.chu, %bb.pn ], [ %i.chv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit703 ], [ %i.cib, %bb.pq ], [ %.pn105.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit727 ], [ %i.cia, %bb.pp ], [ %.pn116.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.nk ]
  call void @_ZN7testing8internal9ArgumentsD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %105) #53
  br label %bb.qb

bb.qb:                                            ; preds = %.body551, %bb.pk
  %.pn115.pn.pn = phi { ptr, i32 } [ %.pn115.pn, %.body551 ], [ %i.chr, %bb.pk ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %105) #53
  %i.ckq = load ptr, ptr %91, align 8, !tbaa !7   ; 2 uses
  %i.ckr = getelementptr inbounds nuw i8, ptr %91, i64 16 ; 2 uses
  %i.cks = icmp eq ptr %i.ckq, %i.ckr
  br i1 %i.cks, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit740, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i738

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i738: ; preds = %bb.qb
  %i.ckt = load i64, ptr %i.ckr, align 8, !tbaa !13
  %i.cku = add i64 %i.ckt, 1
  call void @_ZdlPvm(ptr noundef %i.ckq, i64 noundef %i.cku) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit740

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit740: ; preds = %bb.qb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i738, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit700
  %.pn115.pn.pn.pn = phi { ptr, i32 } [ %.pn87.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit700 ], [ %.pn115.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i738 ], [ %.pn115.pn.pn, %bb.qb ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #53
  %i.ckv = load ptr, ptr %84, align 8, !tbaa !7   ; 2 uses
  %i.ckw = icmp eq ptr %i.ckv, %i.qv
  br i1 %i.ckw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit743, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i741

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i741: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit740
  %i.ckx = load i64, ptr %i.qv, align 8, !tbaa !13
  %i.cky = add i64 %i.ckx, 1
  call void @_ZdlPvm(ptr noundef %i.ckv, i64 noundef %i.cky) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit743

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit743: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit740, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i741, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit661
  %.pn115.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn80.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit661 ], [ %.pn115.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i741 ], [ %.pn115.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit740 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #53
  br label %bb.qc

bb.qc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit743, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192
  %.pn115.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn115.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit743 ], [ %.pn72.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293 ], [ %.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #53
  br label %common.resume

bb.qd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit737, %bb.f
  %.0 = phi i32 [ 1, %bb.f ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit737 ]
  ret i32 %.0
}

declare i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #26

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal9ArgumentsD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1382   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1382
  %.not4 = icmp eq ptr %i.a, %i.c
  br i1 %.not4, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load ptr, ptr %0, align 8, !tbaa !1371
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.d = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPcSaIS0_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1375
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #54
  br label %_ZNSt6vectorIPcSaIS0_EED2Ev.exit

_ZNSt6vectorIPcSaIS0_EED2Ev.exit:                 ; preds = %._crit_edge, %bb.b
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.01.05 = phi ptr [ %i.k, %.lr.ph ], [ %i.a, %bb.a ] ; 2 uses
  %i.j = load ptr, ptr %.sroa.01.05, align 8, !tbaa !392
  tail call void @free(ptr noundef %i.j) #53
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.01.05, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !1382
  %.not = icmp eq ptr %i.k, %i.l
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !1549
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN7testing8internal23DefaultDeathTestFactory6CreateEPKcPKNS0_2REES3_iPPNS0_9DeathTestE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr nofree noundef writeonly captures(none) %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %7 = alloca %"class.testing::Message", align 8  ; 8 uses
  %8 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %9 = alloca %"class.testing::Message", align 8  ; 8 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !46

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !176
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !176

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #53, !inline_history !176 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !176
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

common.resume:                                    ; preds = %bb.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, %bb.aq, %bb.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZN7testing7MessageD2Ev.exit3.i, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.e ], [ %eh.lpad-body.i, %_ZN7testing7MessageD2Ev.exit3.i ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126 ], [ %i.iv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %.pn31.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97 ], [ %i.hy, %bb.aq ], [ %i.ij, %bb.ar ], [ %i.iv, %bb.at ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !176
  br label %common.resume

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !48 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 464
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !929  ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 272
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !210
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 248 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !592  ; 2 uses
  %i.m = add nsw i32 %i.l, 1                      ; 3 uses
  store i32 %i.m, ptr %i.k, align 8, !tbaa !592
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.ap, label %bb.f

bb.f:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 36 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !1550 ; 2 uses
  %.not132 = icmp slt i32 %i.l, %i.o
  br i1 %.not132, label %bb.an, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #53
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #53
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #53
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #53
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #53
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #53, !noalias !1551
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9), !noalias !1551
  %i.p = load ptr, ptr %9, align 8, !tbaa !20, !noalias !1551
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #53, !noalias !1551
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i32 1, ptr %i.r, align 8, !tbaa !23, !noalias !1551
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i8 0, i64 24, i1 false), !noalias !1551
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh14raw_os_ostreamE, i64 16), ptr %8, align 8, !tbaa !26, !noalias !1551
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 40
  store ptr %i.q, ptr %i.t, align 8, !tbaa !28, !noalias !1551
  %i.u = sext i32 %i.m to i64
  %i.v = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(36) %8, i64 noundef %i.u)
          to label %bb.i unwind label %bb.h, !noalias !1551 ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %8) #53, !noalias !1551
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #53, !noalias !1551
  br label %.body.i

bb.i:                                             ; preds = %bb.g
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %8) #53, !noalias !1551
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #53, !noalias !1551
  %i.x = load ptr, ptr %9, align 8, !tbaa !20, !noalias !1554
  invoke void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef %i.x)
          to label %_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i unwind label %bb.k

_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i:   ; preds = %bb.i
  %i.y = load ptr, ptr %9, align 8, !tbaa !20, !noalias !1551 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i, label %_ZN7testing8internal18StreamableToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit, label %bb.j

bb.j:                                             ; preds = %_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !26
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(128) %i.y) #53, !inline_history !654
  br label %_ZN7testing8internal18StreamableToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit

bb.k:                                             ; preds = %bb.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.k, %bb.h
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ac, %bb.k ], [ %i.w, %bb.h ]
  %i.ad = load ptr, ptr %9, align 8, !tbaa !20, !noalias !1551 ; 3 uses
  %.not.i.i.i2.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i2.i, label %_ZN7testing7MessageD2Ev.exit3.i, label %bb.l

bb.l:                                             ; preds = %.body.i
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !26
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(128) %i.ad) #53, !inline_history !654
  br label %_ZN7testing7MessageD2Ev.exit3.i

_ZN7testing7MessageD2Ev.exit3.i:                  ; preds = %bb.l, %.body.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #53, !noalias !1551
  br label %common.resume

_ZN7testing8internal18StreamableToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit: ; preds = %_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #53, !noalias !1551
  %i.ah = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %14, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.289, i64 noundef 18)
          to label %.noexc unwind label %bb.ah    ; 6 uses

.noexc:                                           ; preds = %_ZN7testing8internal18StreamableToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 7 uses
  store ptr %i.ai, ptr %13, align 8, !tbaa !14, !alias.scope !1557
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !7  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 5 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.m:                                             ; preds = %.noexc
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !16 ; 3 uses
  %i.ao = icmp ult i64 %i.an, 16
  call void @llvm.assume(i1 %i.ao)
  %i.ap = add nuw nsw i64 %i.an, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ai, ptr noundef nonnull align 8 dereferenceable(1) %i.ak, i64 %i.ap, i1 false)
  br label %bb.n

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc
  store ptr %i.aj, ptr %13, align 8, !tbaa !7, !alias.scope !1557
  %i.aq = load i64, ptr %i.ak, align 8, !tbaa !13
  store i64 %i.aq, ptr %i.ai, align 8, !tbaa !13, !alias.scope !1557
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !16
  br label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.m
  %i.ar = phi i64 [ %i.an, %bb.m ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store i64 %i.ar, ptr %i.at, align 8, !tbaa !16, !alias.scope !1557
  store ptr %i.ak, ptr %i.ah, align 8, !tbaa !7
  store i64 0, ptr %i.as, align 8, !tbaa !16
  store i8 0, ptr %i.ak, align 8, !tbaa !13
  call void @llvm.experimental.noalias.scope.decl(metadata !1560)
  %i.au = load i64, ptr %i.at, align 8, !tbaa !16, !noalias !1560
  %i.av = add i64 %i.au, -4611686018427387867
  %i.aw = icmp ult i64 %i.av, 37
  br i1 %i.aw, label %bb.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.417) #56
          to label %.noexc41 unwind label %bb.ai

.noexc41:                                         ; preds = %bb.o
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.n
  %i.ax = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.290, i64 noundef 37)
          to label %.noexc42 unwind label %bb.ai  ; 6 uses

.noexc42:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.ay = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 9 uses
  store ptr %i.ay, ptr %12, align 8, !tbaa !14, !alias.scope !1560
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !7  ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 5 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

bb.p:                                             ; preds = %.noexc42
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !16 ; 3 uses
  %i.be = icmp ult i64 %i.bd, 16
  call void @llvm.assume(i1 %i.be)
  %i.bf = add nuw nsw i64 %i.bd, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ay, ptr noundef nonnull align 8 dereferenceable(1) %i.ba, i64 %i.bf, i1 false)
  br label %bb.q

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %.noexc42
  store ptr %i.az, ptr %12, align 8, !tbaa !7, !alias.scope !1560
  %i.bg = load i64, ptr %i.ba, align 8, !tbaa !13
  store i64 %i.bg, ptr %i.ay, align 8, !tbaa !13, !alias.scope !1560
  %.phi.trans.insert.i39 = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.pre.i40 = load i64, ptr %.phi.trans.insert.i39, align 8, !tbaa !16
  br label %bb.q

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38, %bb.p
  %i.bh = phi i64 [ %i.bd, %bb.p ], [ %.pre.i40, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38 ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store i64 %i.bh, ptr %i.bj, align 8, !tbaa !16, !alias.scope !1560
  store ptr %i.ba, ptr %i.ax, align 8, !tbaa !7
  store i64 0, ptr %i.bi, align 8, !tbaa !16
  store i8 0, ptr %i.ba, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #53
  %i.bk = load i32, ptr %i.n, align 4, !tbaa !1550
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #53, !noalias !1563
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %.noexc49 unwind label %bb.aj

.noexc49:                                         ; preds = %bb.q
  %i.bl = load ptr, ptr %7, align 8, !tbaa !20, !noalias !1563
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #53, !noalias !1563
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i32 1, ptr %i.bn, align 8, !tbaa !23, !noalias !1563
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i8 0, i64 24, i1 false), !noalias !1563
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh14raw_os_ostreamE, i64 16), ptr %6, align 8, !tbaa !26, !noalias !1563
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.bm, ptr %i.bp, align 8, !tbaa !28, !noalias !1563
  %i.bq = sext i32 %i.bk to i64
  %i.br = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(36) %6, i64 noundef %i.bq)
          to label %bb.s unwind label %bb.r, !noalias !1563 ; 0 uses

bb.r:                                             ; preds = %.noexc49
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %6) #53, !noalias !1563
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #53, !noalias !1563
  br label %.body.i43

bb.s:                                             ; preds = %.noexc49
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %6) #53, !noalias !1563
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #53, !noalias !1563
  %i.bt = load ptr, ptr %7, align 8, !tbaa !20, !noalias !1566
  invoke void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef %i.bt)
          to label %_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i47 unwind label %bb.u

_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i47: ; preds = %bb.s
  %i.bu = load ptr, ptr %7, align 8, !tbaa !20, !noalias !1563 ; 3 uses
  %.not.i.i.i.i48 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i.i48, label %bb.w, label %bb.t

bb.t:                                             ; preds = %_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i47
end_hunk_2
