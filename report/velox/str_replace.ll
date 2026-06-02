inline.NumInlined: 247
inline.NumDeleted: 103
begin_hunk_0_@_ZN4absl12lts_2024011613StrReplaceAllISt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEES7_EEEEiRKT_PNSt7__cxx1112basic_stringIcS6_SaIcEEE:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %bb.p
  %i.ay = load i64, ptr %i.i, align 8, !tbaa !17
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  %i.ba = load ptr, ptr %2, align 8, !tbaa !22    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4absl12lts_2024011616strings_internal18ViableSubstitutionESaIS3_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !31
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.ba to i64
  %i.bf = sub i64 %i.bd, %i.be
  call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef %i.bf) #13
  br label %_ZNSt6vectorIN4absl12lts_2024011616strings_internal18ViableSubstitutionESaIS3_EED2Ev.exit

_ZNSt6vectorIN4absl12lts_2024011616strings_internal18ViableSubstitutionESaIS3_EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  resume { ptr, i32 } %.pn

bb.r:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bg = phi ptr [ %i.e, %bb.a ], [ %.pr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %.0 = phi i32 [ 0, %bb.a ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %.not.i.i.i25 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i25, label %_ZNSt6vectorIN4absl12lts_2024011616strings_internal18ViableSubstitutionESaIS3_EED2Ev.exit26, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !31
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %i.bg to i64
  %i.bl = sub i64 %i.bj, %i.bk
  call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef %i.bl) #13
  br label %_ZNSt6vectorIN4absl12lts_2024011616strings_internal18ViableSubstitutionESaIS3_EED2Ev.exit26

_ZNSt6vectorIN4absl12lts_2024011616strings_internal18ViableSubstitutionESaIS3_EED2Ev.exit26: ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret i32 %.0
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !26   ; 5 uses
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 5 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !29     ; 5 uses
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
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #12
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
  br i1 %i.r, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !32

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt17__throw_bad_allocv() #12
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.g
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #14 ; 5 uses
  switch i64 %1, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.t = load i8, ptr %i.g, align 1, !tbaa !17
  store i8 %i.t, ptr %i.s, align 1, !tbaa !17
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
  %i.x = load i8, ptr %3, align 1, !tbaa !17
  store i8 %i.x, ptr %i.w, align 1, !tbaa !17
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
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !17
  store i8 %i.ac, ptr %i.z, align 1, !tbaa !17
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
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.ae) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.s, ptr %0, align 8, !tbaa !29
  store i64 %.0, ptr %i.h, align 8, !tbaa !17
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4absl12lts_2024011616strings_internal17FindSubstitutionsISt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEES8_EEEESt6vectorINS1_18ViableSubstitutionESaISC_EES8_RKT_(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.absl::lts_20240116::strings_internal::ViableSubstitution", align 8 ; 4 uses
  %.fr = freeze i64 %1                            ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !33   ; 5 uses
  %i.c = icmp ugt i64 %i.b, 230584300921369395
  br i1 %i.c, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #12
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.not100 = icmp eq i64 %i.b, 0
  br i1 %.not100, label %._crit_edge, label %_ZNSt12_Vector_baseIN4absl12lts_2024011616strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i.a

_ZNSt12_Vector_baseIN4absl12lts_2024011616strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i.a: ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = mul nuw nsw i64 %i.b, 40
  %6 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %5) #14 ; 6 uses
  store ptr %6, ptr %0, align 8, !tbaa !22
  store ptr %6, ptr %i.e, align 8, !tbaa !20
  %i.f = getelementptr inbounds nuw [40 x i8], ptr %6, i64 %i.b ; 3 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !31
  %i.g = load ptr, ptr %3, align 8, !tbaa !36     ; 2 uses
  %.idx = shl nuw nsw i64 %i.b, 5
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx
  %.not.i.i = icmp eq i64 %.fr, 0
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %.fr
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %2 to i64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %.not.i.i, label %._crit_edge, label %.lr.ph72.split

.lr.ph72.split:                                   ; preds = %_ZNSt12_Vector_baseIN4absl12lts_2024011616strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i.a, %.critedge
  %i.m = phi ptr [ %i.bs, %.critedge ], [ %6, %_ZNSt12_Vector_baseIN4absl12lts_2024011616strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i.a ] ; 16 uses
  %.02170 = phi ptr [ %i.bv, %.critedge ], [ %i.g, %_ZNSt12_Vector_baseIN4absl12lts_2024011616strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i.a ] ; 6 uses
  %i.n = phi ptr [ %i.bu, %.critedge ], [ %i.f, %_ZNSt12_Vector_baseIN4absl12lts_2024011616strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i.a ] ; 9 uses
  %i.o = phi ptr [ %i.bt, %.critedge ], [ %6, %_ZNSt12_Vector_baseIN4absl12lts_2024011616strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i.a ] ; 16 uses
  %.sroa.0.0.copyload47 = load i64, ptr %.02170, align 8, !tbaa !15 ; 6 uses
  %.sroa.8.0..021.sroa_idx = getelementptr inbounds nuw i8, ptr %.02170, i64 8
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..021.sroa_idx, align 8, !tbaa !16 ; 4 uses
  %i.p = add i64 %.sroa.0.0.copyload47, -1
  %or.cond55.not = icmp ult i64 %i.p, %.fr
  br i1 %or.cond55.not, label %.lr.ph.i.i, label %.critedge

.lr.ph.i.i:                                       ; preds = %.lr.ph72.split
  %i.q = load i8, ptr %.sroa.8.0.copyload, align 1, !tbaa !17
  %i.r = sext i8 %i.q to i32
  %invariant.op = sub i64 1, %.sroa.0.0.copyload47
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.033.i.i = phi i64 [ %.fr, %.lr.ph.i.i ], [ %i.x, %bb.d ]
  %.02132.i.i = phi ptr [ %2, %.lr.ph.i.i ], [ %i.v, %bb.d ]
  %.reass.reass.i.reass.reass.i.reass.reass.reass = add i64 %.033.i.i, %invariant.op ; 2 uses
  %i.s = icmp eq i64 %.reass.reass.i.reass.reass.i.reass.reass.reass, 0
  br i1 %i.s, label %.critedge, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %bb.c
  %i.t = tail call ptr @memchr(ptr noundef %.02132.i.i, i32 noundef %i.r, i64 noundef %.reass.reass.i.reass.reass.i.reass.reass.reass) #11 ; 4 uses
  %.not26.i.i = icmp eq ptr %i.t, null
  br i1 %.not26.i.i, label %.critedge, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.t, ptr nonnull %.sroa.8.0.copyload, i64 %.sroa.0.0.copyload47)
  %i.u = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.u, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 1 ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.j, %i.w                       ; 2 uses
  %.not25.i.i = icmp ult i64 %i.x, %.sroa.0.0.copyload47
  br i1 %.not25.i.i, label %.critedge, label %bb.c, !llvm.loop !18

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.y = ptrtoint ptr %i.t to i64
  %i.z = sub i64 %i.y, %i.k                       ; 3 uses
  %i.aa = icmp eq i64 %i.z, -1
  br i1 %i.aa, label %.critedge, label %bb.e

bb.e:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %.02170, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.m, %i.n
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ab, align 8, !tbaa !15
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.02170, i64 24
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !16
  store i64 %.sroa.0.0.copyload47, ptr %i.m, align 8, !tbaa !15
  %.sroa.22.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %.sroa.8.0.copyload, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8, !tbaa !16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.ac, align 8, !tbaa !15
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr %.sroa.2.0.copyload.i.i, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store i64 %i.z, ptr %i.ad, align 8, !tbaa !10
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 40 ; 2 uses
  store ptr %i.ae, ptr %i.l, align 8, !tbaa !20
  br label %_ZNSt6vectorIN4absl12lts_2024011616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKSA_RmEEERS3_DpOT_.exit

bb.g:                                             ; preds = %bb.e
  %i.af = ptrtoint ptr %i.m to i64
  %i.ag = ptrtoint ptr %i.o to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 4 uses
  %i.ai = icmp eq i64 %i.ah, 9223372036854775800
  br i1 %i.ai, label %bb.h, label %_ZNKSt6vectorIN4absl12lts_2024011616strings_internal18ViableSubstitutionESaIS3_EE12_M_check_lenEmPKc.exit.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.n, ptr %i.d, align 8
  store ptr %i.o, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #12
          to label %.noexc44 unwind label %.loopexit.split-lp

.noexc44:                                         ; preds = %bb.h
  unreachable

_ZNKSt6vectorIN4absl12lts_2024011616strings_internal18ViableSubstitutionESaIS3_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.g
  %i.aj = sdiv exact i64 %i.ah, 40                ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.aj, i64 1)
  %i.ak = add nsw i64 %.sroa.speculated.i.i, %i.aj ; 2 uses
  %i.al = icmp ult i64 %i.ak, %i.aj
  %i.am = tail call i64 @llvm.umin.i64(i64 %i.ak, i64 230584300921369395)
  %i.an = select i1 %i.al, i64 230584300921369395, i64 %i.am ; 3 uses
  %.not.i.i28 = icmp ne i64 %i.an, 0
  tail call void @llvm.assume(i1 %.not.i.i28)
  %i.ao = mul nuw nsw i64 %i.an, 40
  %i.ap = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #14
          to label %.noexc45 unwind label %.loopexit ; 5 uses

.noexc45:                                         ; preds = %_ZNKSt6vectorIN4absl12lts_2024011616strings_internal18ViableSubstitutionESaIS3_EE12_M_check_lenEmPKc.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ah ; 5 uses
  %.sroa.0.0.copyload.i.i32 = load i64, ptr %i.ab, align 8, !tbaa !15
  %.sroa.2.0..sroa_idx.i.i33 = getelementptr inbounds nuw i8, ptr %.02170, i64 24
  %.sroa.2.0.copyload.i.i34 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i33, align 8, !tbaa !16
  store i64 %.sroa.0.0.copyload47, ptr %i.aq, align 8, !tbaa !15
  %.sroa.22.0..sroa_idx.i.i.i35 = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %.sroa.8.0.copyload, ptr %.sroa.22.0..sroa_idx.i.i.i35, align 8, !tbaa !16
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store i64 %.sroa.0.0.copyload.i.i32, ptr %i.ar, align 8, !tbaa !15
  %.sroa.2.0..sroa_idx.i.i.i36 = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store ptr %.sroa.2.0.copyload.i.i34, ptr %.sroa.2.0..sroa_idx.i.i.i36, align 8, !tbaa !16
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  store i64 %i.z, ptr %i.as, align 8, !tbaa !10
  %.not10.i.i.i.i37 = icmp eq ptr %i.o, %i.m
  br i1 %.not10.i.i.i.i37, label %_ZNSt6vectorIN4absl12lts_2024011616strings_internal18ViableSubstitutionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit34.i, label %.lr.ph.i.i.i.i38

.lr.ph.i.i.i.i38:                                 ; preds = %.noexc45, %.lr.ph.i.i.i.i38
  %.012.i.i.i.i39 = phi ptr [ %i.au, %.lr.ph.i.i.i.i38 ], [ %i.ap, %.noexc45 ] ; 2 uses
  %.0911.i.i.i.i40 = phi ptr [ %i.at, %.lr.ph.i.i.i.i38 ], [ %i.o, %.noexc45 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i.i39, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i.i40, i64 40, i1 false), !tbaa.struct !23, !alias.scope !37
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i40, i64 40 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i39, i64 40 ; 2 uses
  %.not.i.i.i.i41 = icmp eq ptr %i.at, %i.m
  br i1 %.not.i.i.i.i41, label %_ZNSt6vectorIN4absl12lts_2024011616strings_internal18ViableSubstitutionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit34.i, label %.lr.ph.i.i.i.i38, !llvm.loop !41

_ZNSt6vectorIN4absl12lts_2024011616strings_internal18ViableSubstitutionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit34.i: ; preds = %.lr.ph.i.i.i.i38, %.noexc45
  %.0.lcssa.i.i.i.i = phi ptr [ %i.ap, %.noexc45 ], [ %i.au, %.lr.ph.i.i.i.i38 ]
  %i.av = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 40 ; 2 uses
  %.not.i35.i = icmp eq ptr %i.o, null
  br i1 %.not.i35.i, label %.noexc26, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN4absl12lts_2024011616strings_internal18ViableSubstitutionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit34.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.ah) #13
  br label %.noexc26

.noexc26:                                         ; preds = %bb.i, %_ZNSt6vectorIN4absl12lts_2024011616strings_internal18ViableSubstitutionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit34.i
  store ptr %i.av, ptr %i.l, align 8, !tbaa !20
  %i.aw = getelementptr inbounds nuw [40 x i8], ptr %i.ap, i64 %i.an
  br label %_ZNSt6vectorIN4absl12lts_2024011616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKSA_RmEEERS3_DpOT_.exit

_ZNSt6vectorIN4absl12lts_2024011616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKSA_RmEEERS3_DpOT_.exit: ; preds = %.noexc26, %bb.f
  %i.ax = phi ptr [ %i.av, %.noexc26 ], [ %i.ae, %bb.f ] ; 4 uses
  %i.ay = phi ptr [ %i.ap, %.noexc26 ], [ %i.o, %bb.f ] ; 6 uses
  %i.az = phi ptr [ %i.aw, %.noexc26 ], [ %i.n, %bb.f ] ; 3 uses
  %i.ba = ptrtoint ptr %i.ax to i64
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = sdiv exact i64 %i.bc, 40                ; 2 uses
  %i.be = add nsw i64 %i.bd, -1                   ; 2 uses
  %.not2459 = icmp eq i64 %i.be, 0
  br i1 %.not2459, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN4absl12lts_2024011616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKSA_RmEEERS3_DpOT_.exit, %bb.j
  %i.bf = phi i64 [ %i.br, %bb.j ], [ %i.be, %_ZNSt6vectorIN4absl12lts_2024011616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKSA_RmEEERS3_DpOT_.exit ] ; 3 uses
  %.060 = phi i64 [ %i.bf, %bb.j ], [ %i.bd, %_ZNSt6vectorIN4absl12lts_2024011616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKSA_RmEEERS3_DpOT_.exit ]
  %i.bg = getelementptr [40 x i8], ptr %i.ay, i64 %.060 ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 -80    ; 3 uses
  %i.bi = getelementptr inbounds nuw [40 x i8], ptr %i.ay, i64 %i.bf ; 4 uses
  %i.bj = getelementptr i8, ptr %i.bg, i64 -48
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !10 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !10 ; 2 uses
  %.not.i27 = icmp eq i64 %i.bk, %i.bm
  %i.bn = icmp ult i64 %i.bk, %i.bm
  %i.bo = load i64, ptr %i.bh, align 8
  %i.bp = load i64, ptr %i.bi, align 8
  %i.bq = icmp ugt i64 %i.bo, %i.bp
  %.0.i = select i1 %.not.i27, i1 %i.bq, i1 %i.bn
  br i1 %.0.i, label %bb.j, label %.critedge

bb.j:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %i.bi, i64 40, i1 false), !tbaa.struct !23
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bi, ptr noundef nonnull align 8 dereferenceable(40) %i.bh, i64 40, i1 false), !tbaa.struct !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bh, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !tbaa.struct !23
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.br = add i64 %i.bf, -1                       ; 2 uses
  %.not24 = icmp eq i64 %i.br, 0
  br i1 %.not24, label %.critedge, label %.lr.ph, !llvm.loop !42

.loopexit:                                        ; preds = %_ZNKSt6vectorIN4absl12lts_2024011616strings_internal18ViableSubstitutionESaIS3_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.n, ptr %i.d, align 8
  store ptr %i.o, ptr %0, align 8
  br label %bb.k

.loopexit.split-lp:                               ; preds = %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.critedge:                                        ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %bb.d, %bb.c, %bb.j, %.lr.ph, %_ZNSt6vectorIN4absl12lts_2024011616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKSA_RmEEERS3_DpOT_.exit, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit, %.lr.ph72.split
  %i.bs = phi ptr [ %i.ax, %_ZNSt6vectorIN4absl12lts_2024011616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKSA_RmEEERS3_DpOT_.exit ], [ %i.m, %.lr.ph72.split ], [ %i.m, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit ], [ %i.ax, %bb.j ], [ %i.ax, %.lr.ph ], [ %i.m, %bb.c ], [ %i.m, %bb.d ], [ %i.m, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ]
  %i.bt = phi ptr [ %i.ay, %_ZNSt6vectorIN4absl12lts_2024011616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKSA_RmEEERS3_DpOT_.exit ], [ %i.o, %.lr.ph72.split ], [ %i.o, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit ], [ %i.ay, %bb.j ], [ %i.ay, %.lr.ph ], [ %i.o, %bb.c ], [ %i.o, %bb.d ], [ %i.o, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ] ; 2 uses
  %i.bu = phi ptr [ %i.az, %_ZNSt6vectorIN4absl12lts_2024011616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKSA_RmEEERS3_DpOT_.exit ], [ %i.n, %.lr.ph72.split ], [ %i.n, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit ], [ %i.az, %bb.j ], [ %i.az, %.lr.ph ], [ %i.n, %bb.c ], [ %i.n, %bb.d ], [ %i.n, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.02170, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.bv, %i.h
  br i1 %.not, label %._crit_edge, label %.lr.ph72.split

._crit_edge:                                      ; preds = %.critedge, %bb.b, %_ZNSt12_Vector_baseIN4absl12lts_2024011616strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i.a
  %.lcssa66 = phi ptr [ null, %bb.b ], [ %6, %_ZNSt12_Vector_baseIN4absl12lts_2024011616strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i.a ], [ %i.bt, %.critedge ]
  %.lcssa62 = phi ptr [ null, %bb.b ], [ %i.f, %_ZNSt12_Vector_baseIN4absl12lts_2024011616strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i.a ], [ %i.bu, %.critedge ]
  store ptr %.lcssa62, ptr %i.d, align 8
  store ptr %.lcssa66, ptr %0, align 8
  ret void

bb.k:                                             ; preds = %.loopexit, %.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ]
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4absl12lts_2024011616strings_internal18ViableSubstitutionESaIS3_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bw = ptrtoint ptr %i.m to i64
  %i.bx = ptrtoint ptr %i.o to i64
  %i.by = sub i64 %i.bw, %i.bx
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.by) #13
  br label %_ZNSt6vectorIN4absl12lts_2024011616strings_internal18ViableSubstitutionESaIS3_EED2Ev.exit

_ZNSt6vectorIN4absl12lts_2024011616strings_internal18ViableSubstitutionESaIS3_EED2Ev.exit: ; preds = %bb.k, %bb.l
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit:
  %i.a = load ptr, ptr %0, align 8, !tbaa !29     ; 4 uses
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
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #12
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = shl nuw i64 %i.e, 1                      ; 2 uses
  %i.h = icmp ult i64 %1, %i.g
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 9223372036854775807)
  %.0 = select i1 %i.h, i64 %spec.store.select.i, i64 %1 ; 2 uses
  %i.i = add nuw i64 %.0, 1                       ; 2 uses
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !32

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #12
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.c
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #14 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !26   ; 2 uses
  %i.n = add i64 %i.m, 1                          ; 2 uses
  switch i64 %i.n, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  ]

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.o = load i8, ptr %i.a, align 1, !tbaa !17
  store i8 %i.o, ptr %i.k, align 1, !tbaa !17
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
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.q) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.k, ptr %0, align 8, !tbaa !29
  store i64 %.0, ptr %i.b, align 8, !tbaa !17
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

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind }
attributes #12 = { noreturn }
attributes #13 = { builtin nounwind }
attributes #14 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"p1 _ZTSN4absl12lts_2024011616strings_internal18ViableSubstitutionE", !9, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!11, !13, i64 32}
!11 = !{!"_ZTSN4absl12lts_2024011616strings_internal18ViableSubstitutionE", !12, i64 0, !12, i64 16, !13, i64 32}
!12 = !{!"_ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !13, i64 0, !14, i64 8}
!13 = !{!"long", !5, i64 0}
!14 = !{!"p1 omnipotent char", !9, i64 0}
!15 = !{!13, !13, i64 0}
!16 = !{!14, !14, i64 0}
!17 = !{!5, !5, i64 0}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!21, !8, i64 8}
!21 = !{!"_ZTSNSt12_Vector_baseIN4absl12lts_2024011616strings_internal18ViableSubstitutionESaIS3_EE17_Vector_impl_dataE", !8, i64 0, !8, i64 8, !8, i64 16}
!22 = !{!21, !8, i64 0}
!23 = !{i64 0, i64 8, !15, i64 8, i64 8, !16, i64 16, i64 8, !15, i64 24, i64 8, !16, i64 32, i64 8, !15}
!24 = distinct !{!24, !19}
!25 = distinct !{!25, !19}
!26 = !{!27, !13, i64 8}
!27 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !28, i64 0, !13, i64 8, !5, i64 16}
!28 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !14, i64 0}
!29 = !{!27, !14, i64 0}
!30 = !{!28, !14, i64 0}
!31 = !{!21, !8, i64 16}
!32 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!33 = !{!34, !13, i64 8}
!34 = !{!"_ZTSSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEES4_EE", !35, i64 0, !13, i64 8}
!35 = !{!"p1 _ZTSSt4pairISt17basic_string_viewIcSt11char_traitsIcEES3_E", !9, i64 0}
!36 = !{!34, !35, i64 0}
!37 = !{!38, !40}
!38 = distinct !{!38, !39, !"_ZSt19__relocate_object_aIN4absl12lts_2024011616strings_internal18ViableSubstitutionES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!39 = distinct !{!39, !"_ZSt19__relocate_object_aIN4absl12lts_2024011616strings_internal18ViableSubstitutionES3_SaIS3_EEvPT_PT0_RT1_"}
!40 = distinct !{!40, !39, !"_ZSt19__relocate_object_aIN4absl12lts_2024011616strings_internal18ViableSubstitutionES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!41 = distinct !{!41, !19}
!42 = distinct !{!42, !19}
end_hunk_0
