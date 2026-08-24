Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/cs2cs?download=true
inline.NumInlined: 505
inline.NumDeleted: 252
begin_hunk_0_@_ZL15instantiate_crsPK8PJconstsRbRdS2_:bb.a
._crit_edge.i.i44:                                ; preds = %.noexc.i45, %bb.k
  %i.am = phi ptr [ %i.ak, %.noexc.i45 ], [ %i.ag, %bb.k ] ; 2 uses
  switch i64 %i.ai, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %bb.n
  ]

bb.l:                                             ; preds = %._crit_edge.i.i44
  %i.an = load i8, ptr %i.af, align 1, !tbaa !16
  store i8 %i.an, ptr %i.am, align 1, !tbaa !16
  br label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i44
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.am, ptr nonnull align 1 %i.af, i64 %i.ai, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge.i.i44, %bb.l, %bb.m
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !24  ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !13
  %i.aq = load ptr, ptr %5, align 8, !tbaa !25
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ao
  store i8 0, ptr %i.ar, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.as = call noundef i64 @_ZN5osgeo4proj8internal7ci_findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.74) #27
  %i.at = icmp ne i64 %i.as, -1
  %i.au = zext i1 %i.at to i8
  store i8 %i.au, ptr %1, align 1, !tbaa !121
  %i.av = load ptr, ptr %5, align 8, !tbaa !25    ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.ag
  br i1 %i.aw, label %.critedge40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49: ; preds = %bb.n
  %i.ax = load i64, ptr %i.ag, align 8, !tbaa !16
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #33
  br label %.critedge40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store i8 1, ptr %1, align 1, !tbaa !121
  br label %.critedge42

.critedge40:                                      ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %.critedge42

.critedge42:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, %.critedge40
  %i.az = call ptr @proj_destroy(ptr noundef %i.i) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  br label %bb.o

bb.o:                                             ; preds = %bb.d, %.critedge42
  ret ptr %.036
}

; Function Attrs: mustprogress norecurse uwtable
define internal fastcc noundef ptr @_ZL38get_geog_crs_proj_string_from_proj_crsPK8PJconstsRdRb(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %2) unnamed_addr #18 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.c = tail call i32 @proj_get_type(ptr noundef %0)
  %.not = icmp eq i32 %i.c, 15
  br i1 %.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @proj_get_source_crs(ptr noundef null, ptr noundef %0) ; 4 uses
  %i.e = tail call i32 @proj_get_type(ptr noundef %i.d)
  %i.f = add i32 %i.e, -14
  %or.cond = icmp ult i32 %i.f, -2
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @proj_destroy(ptr noundef %i.d) ; 0 uses
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.h = tail call ptr @proj_crs_get_coordinate_system(ptr noundef null, ptr noundef %i.d) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store ptr @.str.50, ptr %i.b, align 8, !tbaa !17
  %i.i = call i32 @proj_cs_get_axis_info(ptr noundef null, ptr noundef %i.h, i32 noundef 0, ptr noundef nonnull %i.b, ptr noundef null, ptr noundef null, ptr noundef nonnull %1, ptr noundef null, ptr noundef null, ptr noundef null) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !17   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.k, ptr %3, align 8, !tbaa !9
  %i.l = icmp eq ptr %i.j, null
  br i1 %i.l, label %.noexc, label %bb.e

.noexc:                                           ; preds = %bb.d
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.77) #32
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.m = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.j) #27 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.m, ptr %i.a, align 8, !tbaa !24
  %i.n = icmp ugt i64 %i.m, 15
  br i1 %i.n, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.e
  %i.o = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.o, ptr %3, align 8, !tbaa !25
  %i.p = load i64, ptr %i.a, align 8, !tbaa !24
  store i64 %i.p, ptr %i.k, align 8, !tbaa !16
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.e
  %i.q = phi ptr [ %i.o, %.noexc.i ], [ %i.k, %bb.e ] ; 2 uses
  switch i64 %i.m, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.r = load i8, ptr %i.j, align 1, !tbaa !16
  store i8 %i.r, ptr %i.q, align 1, !tbaa !16
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr nonnull align 1 %i.j, i64 %i.m, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i
  %i.s = load i64, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.s, ptr %i.t, align 8, !tbaa !13
  %i.u = load ptr, ptr %3, align 8, !tbaa !25
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.w = call noundef i64 @_ZN5osgeo4proj8internal7ci_findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.73) #27
  %i.x = icmp ne i64 %i.w, -1
  %i.y = zext i1 %i.x to i8
  store i8 %i.y, ptr %2, align 1, !tbaa !121
  %i.z = load ptr, ptr %3, align 8, !tbaa !25     ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.k
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.ab = load i64, ptr %i.k, align 8, !tbaa !16
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.ad = call ptr @proj_destroy(ptr noundef %i.h) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  ret ptr %.1
}

declare ptr @proj_destroy(ptr noundef) local_unnamed_addr #2

declare ptr @proj_crs_promote_to_3D(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress norecurse uwtable
define internal fastcc noundef zeroext i1 @_ZL7is3DCRSPK8PJconsts(ptr noundef %0) unnamed_addr #18 {
bb.a:
  %i.a = tail call i32 @proj_get_type(ptr noundef %0)
  switch i32 %i.a, label %.fold.split [
    i32 16, label %bb.c
    i32 13, label %bb.c
    i32 28, label %bb.b
    i32 15, label %bb.b
    i32 9, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.b = tail call ptr @proj_crs_get_coordinate_system(ptr noundef null, ptr noundef %0) ; 2 uses
  %i.c = tail call i32 @proj_cs_get_axis_count(ptr noundef null, ptr noundef %i.b)
  %i.d = icmp eq i32 %i.c, 3
  %i.e = tail call ptr @proj_destroy(ptr noundef %i.b) ; 0 uses
  br label %bb.c

.fold.split:                                      ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.a, %.fold.split, %bb.b
  %.0 = phi i1 [ true, %bb.a ], [ true, %bb.a ], [ %i.d, %bb.b ], [ false, %.fold.split ]
  ret i1 %.0
}

declare ptr @proj_get_id_code(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZN5osgeo4proj8metadata10Identifier16isEquivalentNameEPKcS4_(ptr noundef, ptr noundef) local_unnamed_addr #16

declare ptr @proj_get_name(ptr noundef) local_unnamed_addr #2

declare ptr @proj_coordinate_metadata_create(ptr noundef, ptr noundef, double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !146  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !130
  %.not.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !17
  store ptr %i.e, ptr %i.b, align 8, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.f, ptr %i.a, align 8, !tbaa !146
  br label %_ZNSt6vectorIPKcSaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !122    ; 4 uses
  %i.h = ptrtoint ptr %i.b to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = sub i64 %i.h, %i.i                       ; 5 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775800
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.80) #32
  unreachable

_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i: ; preds = %bb.c
  %i.l = ashr exact i64 %i.j, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.m = add nsw i64 %.sroa.speculated.i.i.i, %i.l ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.l
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 1152921504606846975)
  %i.p = select i1 %i.n, i64 1152921504606846975, i64 %i.o ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.q = shl nuw nsw i64 %i.p, 3
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #35 ; 4 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 %i.j ; 2 uses
  %i.t = load ptr, ptr %1, align 8, !tbaa !17
  store ptr %i.t, ptr %i.s, align 8, !tbaa !17
  %i.u = icmp sgt i64 %i.j, 0
  br i1 %i.u, label %bb.e, label %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.r, ptr align 8 %i.g, i64 %i.j, i1 false)
  br label %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.e, %_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.not.i17.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %2 = load ptr, ptr %i.c, align 8, !tbaa !130
  %3 = ptrtoint ptr %2 to i64
  %4 = sub i64 %3, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %4) #33
  br label %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.r, ptr %0, align 8, !tbaa !122
  store ptr %i.v, ptr %i.a, align 8, !tbaa !146
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.p
  store ptr %i.w, ptr %i.c, align 8, !tbaa !130
  br label %_ZNSt6vectorIPKcSaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit

_ZNSt6vectorIPKcSaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  ret void
}

declare void @_ZN5osgeo4proj8internal8toStringB5cxx11Edi(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, double noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #7 align 2

declare ptr @proj_create_crs_to_crs_from_pj(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @proj_area_destroy(ptr noundef) local_unnamed_addr #2

declare ptr @proj_errno_string(i32 noundef) local_unnamed_addr #2

declare i32 @proj_context_errno(ptr noundef) local_unnamed_addr #2

declare noundef double @_Z6dmstorPKcPPc(ptr noundef, ptr noundef) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) #19

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress norecurse uwtable
define internal fastcc void @_ZL7processP8_IO_FILE(ptr nofree noundef captures(none) %0) unnamed_addr #18 {
bb.a:
  %i.a = alloca [1003 x i8], align 16             ; 6 uses
  %i.b = alloca ptr, align 8                      ; 18 uses
  %i.c = alloca [40 x i8], align 16               ; 10 uses
  %1 = alloca %union.PJ_COORD, align 8            ; 6 uses
  %2 = alloca %union.PJ_COORD, align 16           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @emess_dat, i64 16), align 8, !tbaa !128
  %i.e = add nsw i32 %i.d, 1
  store i32 %i.e, ptr getelementptr inbounds nuw (i8, ptr @emess_dat, i64 16), align 8, !tbaa !128
  %i.f = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 1000, ptr noundef %0) ; 3 uses
  store ptr %i.f, ptr %i.b, align 8, !tbaa !17
  %.not5661 = icmp eq ptr %i.f, null
  br i1 %.not5661, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.al
  %i.g = phi ptr [ %i.f, %.lr.ph ], [ %i.ee, %bb.al ] ; 8 uses
  %i.h = phi i1 [ true, %.lr.ph ], [ false, %bb.al ]
  br i1 %i.h, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.i = load i8, ptr %i.g, align 1, !tbaa !16
  %i.j = icmp eq i8 %i.i, -17
  br i1 %i.j, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !16
  %i.m = icmp eq i8 %i.l, -69
  br i1 %i.m, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.o = load i8, ptr %i.n, align 1, !tbaa !16
  %i.p = icmp eq i8 %i.o, -65
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 3 ; 2 uses
  store ptr %i.q, ptr %i.b, align 8, !tbaa !17
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %i.r = phi ptr [ %i.q, %bb.f ], [ %i.g, %bb.e ], [ %i.g, %bb.d ], [ %i.g, %bb.c ], [ %i.g, %bb.b ] ; 5 uses
  %i.s = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.r, i32 noundef 10) #29
  %.not57 = icmp eq ptr %i.s, null
  br i1 %.not57, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %strlen = call i64 @strlen(ptr nonnull dereferenceable(1) %i.r)
  %endptr = getelementptr inbounds i8, ptr %i.r, i64 %strlen
  store i16 10, ptr %endptr, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %i.t = call i32 @fgetc(ptr noundef %0)
  switch i32 %i.t, label %bb.i [
    i32 -1, label %.loopexit.loopexit
    i32 10, label %.loopexit.loopexit
  ]

.loopexit.loopexit:                               ; preds = %bb.i, %bb.i
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !17
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.g
  %i.u = phi ptr [ %.pre, %.loopexit.loopexit ], [ %i.r, %bb.g ] ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !16
  %i.w = sext i8 %i.v to i32
  %i.x = load i32, ptr @_ZL3tag, align 4, !tbaa !66
  %i.y = icmp eq i32 %i.x, %i.w
  br i1 %i.y, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.loopexit
  %i.z = load ptr, ptr @stdout, align 8, !tbaa !20
  %i.aa = call i32 @fputs(ptr noundef nonnull %i.a, ptr noundef %i.z) ; 0 uses
  br label %bb.al, !llvm.loop !147

bb.k:                                             ; preds = %.loopexit
  %.b52 = load i1, ptr @_ZL9reversein, align 4    ; 2 uses
  %i.ab = load ptr, ptr @_ZL8informat, align 8, !tbaa !58
  %i.ac = call noundef double %i.ab(ptr noundef nonnull %i.u, ptr noundef nonnull %i.b) ; 2 uses
  %i.ad = load ptr, ptr @_ZL8informat, align 8, !tbaa !58
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.af = call noundef double %i.ad(ptr noundef %i.ae, ptr noundef nonnull %i.b) ; 2 uses
  %. = select i1 %.b52, double %i.af, double %i.ac
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.ah = call double @strtod(ptr noundef %i.ag, ptr noundef nonnull %i.b) #27 ; 2 uses
  %i.ai = load ptr, ptr %i.b, align 8, !tbaa !17  ; 7 uses
  %i.aj = call double @strtod(ptr noundef %i.ai, ptr noundef nonnull %i.b) #27
  %i.ak = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.al = icmp eq ptr %i.ak, %i.ai
  %spec.store.select = select i1 %i.al, double +inf, double %i.aj
  store ptr %i.ai, ptr %i.b, align 8, !tbaa !17
  %.72 = select i1 %.b52, double %i.ac, double %i.af ; 2 uses
  %i.am = fcmp oeq double %.72, +inf
  %.sroa.022.1 = select i1 %i.am, double +inf, double %. ; 2 uses
  %i.an = load i8, ptr %i.ai, align 1, !tbaa !16
  %i.ao = icmp eq i8 %i.an, 0
  %i.ap = icmp ugt ptr %i.ai, %i.a
  %or.cond = and i1 %i.ap, %i.ao
  br i1 %or.cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aq = getelementptr inbounds i8, ptr %i.ai, i64 -1 ; 2 uses
  store ptr %i.aq, ptr %i.b, align 8, !tbaa !17
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ar = phi ptr [ %i.aq, %bb.l ], [ %i.ai, %bb.k ] ; 2 uses
  %.b = load i1, ptr @_ZL6echoin, align 4
  br i1 %.b, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !16
  store i8 0, ptr %i.ar, align 1, !tbaa !16
  %i.at = load ptr, ptr @stdout, align 8, !tbaa !20
  %i.au = call i32 @fputs(ptr noundef nonnull %i.r, ptr noundef %i.at) ; 0 uses
  %i.av = load ptr, ptr %i.b, align 8, !tbaa !17
  store i8 %i.as, ptr %i.av, align 1, !tbaa !16
  %i.aw = load ptr, ptr @stdout, align 8, !tbaa !20
  %i.ax = call noundef i32 @putc(i32 noundef 9, ptr noundef %i.aw), !inline_history !77 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ay = fcmp une double %.sroa.022.1, +inf
  br i1 %i.ay, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.az = load i8, ptr @_ZL12srcIsLongLat, align 1, !tbaa !121, !range !119, !noundef !120
  %i.ba = trunc nuw i8 %i.az to i1
  %i.bb = insertelement <2 x double> poison, double %.sroa.022.1, i64 0
  %i.bc = insertelement <2 x double> %i.bb, double %.72, i64 1 ; 3 uses
  br i1 %i.ba, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.bd = load double, ptr @_ZL12srcToRadians, align 8, !tbaa !126 ; 2 uses
  %i.be = fadd double %i.bd, f0xBF91DF46A2529D39
  %i.bf = call double @llvm.fabs.f64(double %i.be)
  %i.bg = fcmp olt double %i.bf, 1.000000e-10
  br i1 %i.bg, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bh = insertelement <2 x double> poison, double %i.bd, i64 0
  %i.bi = shufflevector <2 x double> %i.bh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bj = fdiv <2 x double> %i.bc, %i.bi
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.q, %bb.r
  %i.bk = phi <2 x double> [ %i.bj, %bb.r ], [ %i.bc, %bb.q ], [ %i.bc, %bb.p ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  %i.bl = load ptr, ptr @_ZL14transformation, align 8, !tbaa !124
  store <2 x double> %i.bk, ptr %2, align 16
  store double %i.ah, ptr %.sroa.8.0..sroa_idx, align 16
  store double %spec.store.select, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !16
end_hunk_0
