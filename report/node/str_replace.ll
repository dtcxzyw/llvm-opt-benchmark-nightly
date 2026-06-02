inline.NumInlined: 239
inline.NumDeleted: 104
begin_hunk_0_@_ZN4absl13StrReplaceAllISt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEES6_EEEEiRKT_PNSt7__cxx1112basic_stringIcS5_SaIcEEE:bb.a
  %i.ap = load i64, ptr %i.j, align 8
  store i64 %i.ap, ptr %i.c, align 8
  store i64 %i.ao, ptr %i.j, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm.exit, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit43.i, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit44.i, %bb.l
  %i.aq = load ptr, ptr %3, align 8               ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.i
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit
  %i.as = load i64, ptr %i.i, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %.pr = load ptr, ptr %2, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.au = phi ptr [ %i.e, %bb.a ], [ %.pr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %.0 = phi i32 [ 0, %bb.a ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %.not.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4absl16strings_internal18ViableSubstitutionESaIS2_EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %i.au to i64
  %i.az = sub i64 %i.ax, %i.ay
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.az) #14
  br label %_ZNSt6vectorIN4absl16strings_internal18ViableSubstitutionESaIS2_EED2Ev.exit

_ZNSt6vectorIN4absl16strings_internal18ViableSubstitutionESaIS2_EED2Ev.exit: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 5 uses
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 5 uses
  %i.g = load ptr, ptr %0, align 8                ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = icmp eq ptr %i.g, %i.h                   ; 3 uses
  br i1 %i.i, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %bb.a, %bb.b
  %i.k = load i64, ptr %i.h, align 8              ; 2 uses
  %i.l = select i1 %i.i, i64 15, i64 %i.k         ; 2 uses
  %i.m = icmp slt i64 %i.f, 0
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #13
  unreachable

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.n = icmp ugt i64 %i.f, %i.l
  br i1 %i.n, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.o = shl nuw i64 %i.l, 1                      ; 2 uses
  %i.p = icmp ult i64 %i.f, %i.o
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 9223372036854775807)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.0 = phi i64 [ %spec.store.select.i, %bb.f ], [ %i.f, %bb.e ], [ %i.f, %bb.d ] ; 2 uses
  %i.q = add nuw i64 %.0, 1                       ; 2 uses
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !12

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt17__throw_bad_allocv() #13
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.g
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #15 ; 5 uses
  switch i64 %1, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.t = load i8, ptr %i.g, align 1
  store i8 %i.t, ptr %i.s, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %i.g, i64 %1, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %bb.j, %bb.i
  %i.u = icmp ne ptr %3, null
  %i.v = icmp ne i64 %4, 0
  %or.cond = and i1 %i.u, %i.v
  br i1 %or.cond, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %1 ; 2 uses
  %cond = icmp eq i64 %4, 1
  br i1 %cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.x = load i8, ptr %3, align 1
  store i8 %i.x, ptr %i.w, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26: ; preds = %bb.m, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %.not25 = icmp eq i64 %i.b, %i.c
  br i1 %.not25, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %1
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %4 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 %1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %2 ; 2 uses
  %cond29 = icmp eq i64 %i.d, 1
  br i1 %cond29, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ac = load i8, ptr %i.ab, align 1
  store i8 %i.ac, ptr %i.z, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

bb.p:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %i.ab, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27: ; preds = %bb.p, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ad = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.ad)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ae = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.ae) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.s, ptr %0, align 8
  store i64 %.0, ptr %i.h, align 8
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl16strings_internal17FindSubstitutionsISt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEES7_EEEESt6vectorINS0_18ViableSubstitutionESaISB_EES7_RKT_(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"struct.absl::strings_internal::ViableSubstitution", align 8 ; 4 uses
  %.fr = freeze i64 %1                            ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 5 uses
  %i.c = icmp ugt i64 %i.b, 230584300921369395
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #13
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not86 = icmp eq i64 %i.b, 0
  br i1 %.not86, label %._crit_edge, label %.lr.ph61

.lr.ph61:                                         ; preds = %bb.c
  %i.e = mul nuw nsw i64 %i.b, 40
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #15 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %0, align 8
  store ptr %i.f, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw [40 x i8], ptr %i.f, i64 %i.b ; 2 uses
  store ptr %i.h, ptr %i.d, align 8
  %i.i = load ptr, ptr %3, align 8                ; 2 uses
  %.idx = shl nuw nsw i64 %i.b, 5
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx
  %.not.i.i = icmp eq i64 %.fr, 0
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %.fr
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %2 to i64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %.not.i.i, label %._crit_edge, label %.lr.ph61.split

.lr.ph61.split:                                   ; preds = %.lr.ph61, %.critedge
  %i.o = phi ptr [ %i.bu, %.critedge ], [ %i.f, %.lr.ph61 ] ; 15 uses
  %.01659 = phi ptr [ %i.bx, %.critedge ], [ %i.i, %.lr.ph61 ] ; 6 uses
  %i.p = phi ptr [ %i.bw, %.critedge ], [ %i.h, %.lr.ph61 ] ; 7 uses
  %i.q = phi ptr [ %i.bv, %.critedge ], [ %i.f, %.lr.ph61 ] ; 11 uses
  %.sroa.0.0.copyload38 = load i64, ptr %.01659, align 8 ; 6 uses
  %.sroa.7.0..016.sroa_idx = getelementptr inbounds nuw i8, ptr %.01659, i64 8
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..016.sroa_idx, align 8 ; 4 uses
  %i.r = add i64 %.sroa.0.0.copyload38, -1
  %or.cond46.not = icmp ult i64 %i.r, %.fr
  br i1 %or.cond46.not, label %.lr.ph.i.i, label %.critedge

.lr.ph.i.i:                                       ; preds = %.lr.ph61.split
  %i.s = load i8, ptr %.sroa.7.0.copyload, align 1
  %i.t = sext i8 %i.s to i32
  %invariant.op = sub i64 1, %.sroa.0.0.copyload38
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i
  %.033.i.i = phi i64 [ %.fr, %.lr.ph.i.i ], [ %i.z, %bb.e ]
  %.02132.i.i = phi ptr [ %2, %.lr.ph.i.i ], [ %i.x, %bb.e ]
  %.reass.reass.i.reass.reass.i.reass.reass.reass = add i64 %.033.i.i, %invariant.op ; 2 uses
  %i.u = icmp eq i64 %.reass.reass.i.reass.reass.i.reass.reass.reass, 0
  br i1 %i.u, label %.critedge, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %bb.d
  %i.v = tail call ptr @memchr(ptr noundef %.02132.i.i, i32 noundef %i.t, i64 noundef %.reass.reass.i.reass.reass.i.reass.reass.reass) #12 ; 4 uses
  %.not26.i.i = icmp eq ptr %i.v, null
  br i1 %.not26.i.i, label %.critedge, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.v, ptr nonnull %.sroa.7.0.copyload, i64 %.sroa.0.0.copyload38)
  %i.w = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.w, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 1 ; 2 uses
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.l, %i.y                       ; 2 uses
  %.not25.i.i = icmp ult i64 %i.z, %.sroa.0.0.copyload38
  br i1 %.not25.i.i, label %.critedge, label %bb.d, !llvm.loop !5

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.aa = ptrtoint ptr %i.v to i64
  %i.ab = sub i64 %i.aa, %i.m                     ; 3 uses
  %i.ac = icmp eq i64 %i.ab, -1
  br i1 %i.ac, label %.critedge, label %bb.f

bb.f:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %.01659, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.o, %i.p
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ad, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.01659, i64 24
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  store i64 %.sroa.0.0.copyload38, ptr %i.o, align 8
  %.sroa.22.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %.sroa.7.0.copyload, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.ae, align 8
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %.sroa.2.0.copyload.i.i, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store i64 %i.ab, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 40 ; 2 uses
  store ptr %i.ag, ptr %i.n, align 8
  br label %_ZNSt6vectorIN4absl16strings_internal18ViableSubstitutionESaIS2_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKS9_RmEEERS2_DpOT_.exit

bb.h:                                             ; preds = %bb.f
  %i.ah = ptrtoint ptr %i.o to i64
  %i.ai = ptrtoint ptr %i.q to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 4 uses
  %i.ak = icmp eq i64 %i.aj, 9223372036854775800
  br i1 %i.ak, label %bb.i, label %_ZNKSt6vectorIN4absl16strings_internal18ViableSubstitutionESaIS2_EE12_M_check_lenEmPKc.exit.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #13
  unreachable

_ZNKSt6vectorIN4absl16strings_internal18ViableSubstitutionESaIS2_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.h
  %i.al = sdiv exact i64 %i.aj, 40                ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.al, i64 1)
  %i.am = add nsw i64 %.sroa.speculated.i.i, %i.al ; 2 uses
  %i.an = icmp ult i64 %i.am, %i.al
  %i.ao = tail call i64 @llvm.umin.i64(i64 %i.am, i64 230584300921369395)
  %i.ap = select i1 %i.an, i64 230584300921369395, i64 %i.ao ; 3 uses
  %.not.i.i21 = icmp ne i64 %i.ap, 0
  tail call void @llvm.assume(i1 %.not.i.i21)
  %i.aq = mul nuw nsw i64 %i.ap, 40
  %i.ar = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #15 ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.aj ; 5 uses
  %.sroa.0.0.copyload.i.i25 = load i64, ptr %i.ad, align 8
  %.sroa.2.0..sroa_idx.i.i26 = getelementptr inbounds nuw i8, ptr %.01659, i64 24
  %.sroa.2.0.copyload.i.i27 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i26, align 8
  store i64 %.sroa.0.0.copyload38, ptr %i.as, align 8
  %.sroa.22.0..sroa_idx.i.i.i28 = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %.sroa.7.0.copyload, ptr %.sroa.22.0..sroa_idx.i.i.i28, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store i64 %.sroa.0.0.copyload.i.i25, ptr %i.at, align 8
  %.sroa.2.0..sroa_idx.i.i.i29 = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store ptr %.sroa.2.0.copyload.i.i27, ptr %.sroa.2.0..sroa_idx.i.i.i29, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  store i64 %i.ab, ptr %i.au, align 8
  %.not10.i.i.i.i30 = icmp eq ptr %i.q, %i.o
  br i1 %.not10.i.i.i.i30, label %_ZNSt6vectorIN4absl16strings_internal18ViableSubstitutionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit24.i, label %.lr.ph.i.i.i.i31

.lr.ph.i.i.i.i31:                                 ; preds = %_ZNKSt6vectorIN4absl16strings_internal18ViableSubstitutionESaIS2_EE12_M_check_lenEmPKc.exit.i, %.lr.ph.i.i.i.i31
  %.012.i.i.i.i32 = phi ptr [ %i.aw, %.lr.ph.i.i.i.i31 ], [ %i.ar, %_ZNKSt6vectorIN4absl16strings_internal18ViableSubstitutionESaIS2_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  %.0911.i.i.i.i33 = phi ptr [ %i.av, %.lr.ph.i.i.i.i31 ], [ %i.q, %_ZNKSt6vectorIN4absl16strings_internal18ViableSubstitutionESaIS2_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i.i32, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i.i33, i64 40, i1 false), !alias.scope !13
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i33, i64 40 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i32, i64 40 ; 2 uses
  %.not.i.i.i.i34 = icmp eq ptr %i.av, %i.o
  br i1 %.not.i.i.i.i34, label %_ZNSt6vectorIN4absl16strings_internal18ViableSubstitutionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit24.i, label %.lr.ph.i.i.i.i31, !llvm.loop !17

_ZNSt6vectorIN4absl16strings_internal18ViableSubstitutionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit24.i: ; preds = %.lr.ph.i.i.i.i31, %_ZNKSt6vectorIN4absl16strings_internal18ViableSubstitutionESaIS2_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.ar, %_ZNKSt6vectorIN4absl16strings_internal18ViableSubstitutionESaIS2_EE12_M_check_lenEmPKc.exit.i ], [ %i.aw, %.lr.ph.i.i.i.i31 ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 40 ; 2 uses
  %.not.i25.i = icmp eq ptr %i.q, null
  br i1 %.not.i25.i, label %_ZNSt6vectorIN4absl16strings_internal18ViableSubstitutionESaIS2_EE17_M_realloc_insertIJRSt17basic_string_viewIcSt11char_traitsIcEERKS9_RmEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN4absl16strings_internal18ViableSubstitutionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit24.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.aj) #14
  br label %_ZNSt6vectorIN4absl16strings_internal18ViableSubstitutionESaIS2_EE17_M_realloc_insertIJRSt17basic_string_viewIcSt11char_traitsIcEERKS9_RmEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit

_ZNSt6vectorIN4absl16strings_internal18ViableSubstitutionESaIS2_EE17_M_realloc_insertIJRSt17basic_string_viewIcSt11char_traitsIcEERKS9_RmEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit: ; preds = %_ZNSt6vectorIN4absl16strings_internal18ViableSubstitutionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit24.i, %bb.j
  store ptr %i.ar, ptr %0, align 8
  store ptr %i.ax, ptr %i.n, align 8
  %i.ay = getelementptr inbounds nuw [40 x i8], ptr %i.ar, i64 %i.ap ; 2 uses
  store ptr %i.ay, ptr %i.d, align 8
  br label %_ZNSt6vectorIN4absl16strings_internal18ViableSubstitutionESaIS2_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKS9_RmEEERS2_DpOT_.exit

_ZNSt6vectorIN4absl16strings_internal18ViableSubstitutionESaIS2_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKS9_RmEEERS2_DpOT_.exit: ; preds = %bb.g, %_ZNSt6vectorIN4absl16strings_internal18ViableSubstitutionESaIS2_EE17_M_realloc_insertIJRSt17basic_string_viewIcSt11char_traitsIcEERKS9_RmEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit
  %i.az = phi ptr [ %i.ag, %bb.g ], [ %i.ax, %_ZNSt6vectorIN4absl16strings_internal18ViableSubstitutionESaIS2_EE17_M_realloc_insertIJRSt17basic_string_viewIcSt11char_traitsIcEERKS9_RmEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit ] ; 4 uses
  %i.ba = phi ptr [ %i.q, %bb.g ], [ %i.ar, %_ZNSt6vectorIN4absl16strings_internal18ViableSubstitutionESaIS2_EE17_M_realloc_insertIJRSt17basic_string_viewIcSt11char_traitsIcEERKS9_RmEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit ] ; 6 uses
  %i.bb = phi ptr [ %i.p, %bb.g ], [ %i.ay, %_ZNSt6vectorIN4absl16strings_internal18ViableSubstitutionESaIS2_EE17_M_realloc_insertIJRSt17basic_string_viewIcSt11char_traitsIcEERKS9_RmEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit ] ; 3 uses
  %i.bc = ptrtoint ptr %i.az to i64
  %i.bd = ptrtoint ptr %i.ba to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = sdiv exact i64 %i.be, 40                ; 2 uses
  %i.bg = add nsw i64 %i.bf, -1                   ; 2 uses
  %.not1950 = icmp eq i64 %i.bg, 0
  br i1 %.not1950, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN4absl16strings_internal18ViableSubstitutionESaIS2_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKS9_RmEEERS2_DpOT_.exit, %bb.k
  %i.bh = phi i64 [ %i.bt, %bb.k ], [ %i.bg, %_ZNSt6vectorIN4absl16strings_internal18ViableSubstitutionESaIS2_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKS9_RmEEERS2_DpOT_.exit ] ; 3 uses
  %.051 = phi i64 [ %i.bh, %bb.k ], [ %i.bf, %_ZNSt6vectorIN4absl16strings_internal18ViableSubstitutionESaIS2_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKS9_RmEEERS2_DpOT_.exit ]
  %i.bi = getelementptr [40 x i8], ptr %i.ba, i64 %.051 ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 -80    ; 3 uses
  %i.bk = getelementptr inbounds nuw [40 x i8], ptr %i.ba, i64 %i.bh ; 4 uses
  %i.bl = getelementptr i8, ptr %i.bi, i64 -48
  %i.bm = load i64, ptr %i.bl, align 8            ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.bo = load i64, ptr %i.bn, align 8            ; 2 uses
  %.not.i20 = icmp eq i64 %i.bm, %i.bo
  %i.bp = icmp ult i64 %i.bm, %i.bo
  %i.bq = load i64, ptr %i.bj, align 8
  %i.br = load i64, ptr %i.bk, align 8
  %i.bs = icmp ugt i64 %i.bq, %i.br
  %.0.i = select i1 %.not.i20, i1 %i.bs, i1 %i.bp
  br i1 %.0.i, label %bb.k, label %.critedge

bb.k:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %i.bk, i64 40, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bk, ptr noundef nonnull align 8 dereferenceable(40) %i.bj, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bj, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.bt = add i64 %i.bh, -1                       ; 2 uses
  %.not19 = icmp eq i64 %i.bt, 0
  br i1 %.not19, label %.critedge, label %.lr.ph, !llvm.loop !18

.critedge:                                        ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %bb.e, %bb.d, %bb.k, %.lr.ph, %_ZNSt6vectorIN4absl16strings_internal18ViableSubstitutionESaIS2_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKS9_RmEEERS2_DpOT_.exit, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit, %.lr.ph61.split
  %i.bu = phi ptr [ %i.az, %_ZNSt6vectorIN4absl16strings_internal18ViableSubstitutionESaIS2_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKS9_RmEEERS2_DpOT_.exit ], [ %i.o, %.lr.ph61.split ], [ %i.o, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit ], [ %i.az, %bb.k ], [ %i.az, %.lr.ph ], [ %i.o, %bb.d ], [ %i.o, %bb.e ], [ %i.o, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ]
  %i.bv = phi ptr [ %i.ba, %_ZNSt6vectorIN4absl16strings_internal18ViableSubstitutionESaIS2_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKS9_RmEEERS2_DpOT_.exit ], [ %i.q, %.lr.ph61.split ], [ %i.q, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit ], [ %i.ba, %bb.k ], [ %i.ba, %.lr.ph ], [ %i.q, %bb.d ], [ %i.q, %bb.e ], [ %i.q, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ]
  %i.bw = phi ptr [ %i.bb, %_ZNSt6vectorIN4absl16strings_internal18ViableSubstitutionESaIS2_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKS9_RmEEERS2_DpOT_.exit ], [ %i.p, %.lr.ph61.split ], [ %i.p, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit ], [ %i.bb, %bb.k ], [ %i.bb, %.lr.ph ], [ %i.p, %bb.d ], [ %i.p, %bb.e ], [ %i.p, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.01659, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.bx, %i.j
  br i1 %.not, label %._crit_edge, label %.lr.ph61.split

._crit_edge:                                      ; preds = %.critedge, %bb.c, %.lr.ph61
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit:
  %i.a = load ptr, ptr %0, align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = icmp eq ptr %i.a, %i.b                   ; 2 uses
  %i.d = load i64, ptr %i.b, align 8              ; 2 uses
  %i.e = select i1 %i.c, i64 15, i64 %i.d         ; 2 uses
  %.not = icmp ugt i64 %1, %i.e
  br i1 %.not, label %bb.a, label %bb.g

bb.a:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.f = icmp slt i64 %1, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #13
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = shl nuw i64 %i.e, 1                      ; 2 uses
  %i.h = icmp ult i64 %1, %i.g
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 9223372036854775807)
  %.0 = select i1 %i.h, i64 %spec.store.select.i, i64 %1 ; 2 uses
  %i.i = add nuw i64 %.0, 1                       ; 2 uses
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !12

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #13
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.c
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #15 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = add i64 %i.m, 1                          ; 2 uses
  switch i64 %i.n, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  ]

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.o = load i8, ptr %i.a, align 1
  store i8 %i.o, ptr %i.k, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr align 1 %i.a, i64 %i.n, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %bb.e, %bb.f
  br i1 %i.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.p = icmp ult i64 %i.m, 16
  tail call void @llvm.assume(i1 %i.p)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.q = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.q) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.k, ptr %0, align 8
  store i64 %.0, ptr %i.b, align 8
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }
attributes #14 = { builtin nounwind }
attributes #15 = { builtin nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = !{!10}
!10 = distinct !{!10, !11, !"_ZN4absl13StrReplaceAllISt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEES6_EEEENSt7__cxx1112basic_stringIcS5_SaIcEEES6_RKT_: argument 0"}
!11 = distinct !{!11, !"_ZN4absl13StrReplaceAllISt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEES6_EEEENSt7__cxx1112basic_stringIcS5_SaIcEEES6_RKT_"}
!12 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!13 = !{!14, !16}
!14 = distinct !{!14, !15, !"_ZSt19__relocate_object_aIN4absl16strings_internal18ViableSubstitutionES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!15 = distinct !{!15, !"_ZSt19__relocate_object_aIN4absl16strings_internal18ViableSubstitutionES2_SaIS2_EEvPT_PT0_RT1_"}
!16 = distinct !{!16, !15, !"_ZSt19__relocate_object_aIN4absl16strings_internal18ViableSubstitutionES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!17 = distinct !{!17, !6}
!18 = distinct !{!18, !6}
end_hunk_0
