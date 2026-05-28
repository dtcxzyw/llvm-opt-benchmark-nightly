inline.NumInlined: 870
inline.NumDeleted: 298
begin_hunk_0_@_ZNK4YAML5RegEx9MatchOpOrINS_16StringCharSourceEEEiRKT_:bb.a
; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK4YAML5RegEx10MatchOpAndINS_16StringCharSourceEEEiRKT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !91
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !88   ; 2 uses
  %.not2022.not = icmp eq ptr %i.c, %i.d
  br i1 %.not2022.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = tail call noundef i32 @_ZNK4YAML5RegEx14MatchUncheckedINS_16StringCharSourceEEEiRKT_(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %1) ; 3 uses
  %.not.peel = icmp eq i32 %i.e, -1
  br i1 %.not.peel, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph.preheader
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !91
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !88   ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %.not20.peel = icmp ugt i64 %i.j, 32
  br i1 %.not20.peel, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.k = phi ptr [ %i.p, %bb.c ], [ %i.g, %bb.b ]
  %.01424 = phi i64 [ %i.n, %bb.c ], [ 1, %bb.b ] ; 2 uses
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %.01424
  %i.m = tail call noundef i32 @_ZNK4YAML5RegEx14MatchUncheckedINS_16StringCharSourceEEEiRKT_(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %.not = icmp eq i32 %i.m, -1
  br i1 %.not, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.n = add nuw i64 %.01424, 1                   ; 2 uses
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !91
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !88   ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 5
  %.not20 = icmp ult i64 %i.n, %i.t
  br i1 %.not20, label %.lr.ph, label %._crit_edge, !llvm.loop !231

._crit_edge:                                      ; preds = %.lr.ph, %bb.c, %.lr.ph.preheader, %bb.b, %bb.a
  %spec.select21 = phi i32 [ -1, %bb.a ], [ -1, %.lr.ph.preheader ], [ %i.e, %bb.b ], [ -1, %.lr.ph ], [ %i.e, %bb.c ]
  ret i32 %spec.select21
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK4YAML5RegEx10MatchOpNotINS_16StringCharSourceEEEiRKT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !161  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !161
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef i32 @_ZNK4YAML5RegEx14MatchUncheckedINS_16StringCharSourceEEEiRKT_(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.g = icmp sgt i32 %i.f, -1
  %. = select i1 %i.g, i32 -1, i32 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.a ], [ %., %bb.b ]
  ret i32 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK4YAML5RegEx10MatchOpSeqINS_16StringCharSourceEEEiRKT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %2 = alloca %"class.YAML::StringCharSource", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !161  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !161  ; 2 uses
  %.not2425 = icmp eq ptr %i.b, %i.d
  br i1 %.not2425, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %.01527 = phi i32 [ 0, %.lr.ph ], [ %i.am, %bb.k ] ; 3 uses
  %.sroa.021.026 = phi ptr [ %i.b, %.lr.ph ], [ %i.an, %bb.k ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !239
  %i.g = load i64, ptr %i.e, align 8, !tbaa !228, !alias.scope !244 ; 2 uses
  %i.h = trunc i64 %i.g to i32
  %i.i = add nsw i32 %.01527, %i.h
  %i.j = icmp sgt i32 %i.i, -1
  %i.k = sext i32 %.01527 to i64
  %i.l = add i64 %i.g, %i.k
  %storemerge.i = select i1 %i.j, i64 %i.l, i64 0 ; 4 uses
  store i64 %storemerge.i, ptr %i.e, align 8, !tbaa !228, !alias.scope !244
  %i.m = load i32, ptr %.sroa.021.026, align 8, !tbaa !190 ; 2 uses
  %i.n = add i32 %i.m, -3
  %switch.i.i = icmp ult i32 %i.n, -2
  %i.o = load i64, ptr %i.f, align 8
  %i.p = icmp ult i64 %storemerge.i, %i.o         ; 2 uses
  %.0.i.i = select i1 %switch.i.i, i1 true, i1 %i.p
  br i1 %.0.i.i, label %bb.c, label %_ZNK4YAML5RegEx5MatchINS_16StringCharSourceEEEiRKT_.exit.thread

bb.c:                                             ; preds = %bb.b
  switch i32 %i.m, label %_ZNK4YAML5RegEx5MatchINS_16StringCharSourceEEEiRKT_.exit.thread [
    i32 0, label %bb.d
    i32 1, label %bb.e
    i32 2, label %bb.f
    i32 3, label %bb.g
    i32 4, label %bb.h
    i32 5, label %bb.i
    i32 6, label %bb.j
  ]

bb.d:                                             ; preds = %bb.c
  %i.q = sext i1 %i.p to i32
  br label %_ZNK4YAML5RegEx5MatchINS_16StringCharSourceEEEiRKT_.exit

bb.e:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %2, align 8, !tbaa !225
  %i.s = getelementptr i8, ptr %i.r, i64 %storemerge.i
  %i.t = load i8, ptr %i.s, align 1, !tbaa !15
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.021.026, i64 4
  %i.v = load i8, ptr %i.u, align 4, !tbaa !203
  %.not.i.i = icmp eq i8 %i.t, %i.v
  br i1 %.not.i.i, label %_ZNK4YAML5RegEx5MatchINS_16StringCharSourceEEEiRKT_.exit.thread36, label %_ZNK4YAML5RegEx5MatchINS_16StringCharSourceEEEiRKT_.exit.thread

bb.f:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.021.026, i64 4
  %i.x = load i8, ptr %i.w, align 4, !tbaa !203
  %i.y = load ptr, ptr %2, align 8, !tbaa !225
  %i.z = getelementptr i8, ptr %i.y, i64 %storemerge.i
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !15   ; 2 uses
  %i.ab = icmp sgt i8 %i.x, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.021.026, i64 5
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = icmp slt i8 %i.ad, %i.aa
  %i.af = select i1 %i.ab, i1 true, i1 %i.ae
  br i1 %i.af, label %_ZNK4YAML5RegEx5MatchINS_16StringCharSourceEEEiRKT_.exit.thread, label %_ZNK4YAML5RegEx5MatchINS_16StringCharSourceEEEiRKT_.exit.thread36

bb.g:                                             ; preds = %bb.c
  %i.ag = call noundef i32 @_ZNK4YAML5RegEx9MatchOpOrINS_16StringCharSourceEEEiRKT_(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.021.026, ptr noundef nonnull align 8 dereferenceable(24) %2), !inline_history !233
  br label %_ZNK4YAML5RegEx5MatchINS_16StringCharSourceEEEiRKT_.exit

bb.h:                                             ; preds = %bb.c
  %i.ah = call noundef i32 @_ZNK4YAML5RegEx10MatchOpAndINS_16StringCharSourceEEEiRKT_(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.021.026, ptr noundef nonnull align 8 dereferenceable(24) %2), !inline_history !233
  br label %_ZNK4YAML5RegEx5MatchINS_16StringCharSourceEEEiRKT_.exit

bb.i:                                             ; preds = %bb.c
  %i.ai = call noundef i32 @_ZNK4YAML5RegEx10MatchOpNotINS_16StringCharSourceEEEiRKT_(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.021.026, ptr noundef nonnull align 8 dereferenceable(24) %2), !inline_history !233
  br label %_ZNK4YAML5RegEx5MatchINS_16StringCharSourceEEEiRKT_.exit

bb.j:                                             ; preds = %bb.c
  %i.aj = call noundef i32 @_ZNK4YAML5RegEx10MatchOpSeqINS_16StringCharSourceEEEiRKT_(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.021.026, ptr noundef nonnull align 8 dereferenceable(24) %2), !inline_history !233
  br label %_ZNK4YAML5RegEx5MatchINS_16StringCharSourceEEEiRKT_.exit

_ZNK4YAML5RegEx5MatchINS_16StringCharSourceEEEiRKT_.exit.thread: ; preds = %bb.b, %bb.e, %bb.c, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %._crit_edge

_ZNK4YAML5RegEx5MatchINS_16StringCharSourceEEEiRKT_.exit.thread36: ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.k

_ZNK4YAML5RegEx5MatchINS_16StringCharSourceEEEiRKT_.exit: ; preds = %bb.d, %bb.g, %bb.h, %bb.i, %bb.j
  %i.ak = phi i32 [ %i.ai, %bb.i ], [ %i.aj, %bb.j ], [ %i.q, %bb.d ], [ %i.ag, %bb.g ], [ %i.ah, %bb.h ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %.not = icmp eq i32 %i.ak, -1
  br i1 %.not, label %._crit_edge, label %bb.k

bb.k:                                             ; preds = %_ZNK4YAML5RegEx5MatchINS_16StringCharSourceEEEiRKT_.exit.thread36, %_ZNK4YAML5RegEx5MatchINS_16StringCharSourceEEEiRKT_.exit
  %i.al = phi i32 [ 1, %_ZNK4YAML5RegEx5MatchINS_16StringCharSourceEEEiRKT_.exit.thread36 ], [ %i.ak, %_ZNK4YAML5RegEx5MatchINS_16StringCharSourceEEEiRKT_.exit ]
  %i.am = add nsw i32 %i.al, %.01527              ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.021.026, i64 32 ; 2 uses
  %.not24 = icmp eq ptr %i.an, %i.d
  br i1 %.not24, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %_ZNK4YAML5RegEx5MatchINS_16StringCharSourceEEEiRKT_.exit, %bb.k, %_ZNK4YAML5RegEx5MatchINS_16StringCharSourceEEEiRKT_.exit.thread, %bb.a
  %spec.select = phi i32 [ 0, %bb.a ], [ -1, %_ZNK4YAML5RegEx5MatchINS_16StringCharSourceEEEiRKT_.exit.thread ], [ -1, %_ZNK4YAML5RegEx5MatchINS_16StringCharSourceEEEiRKT_.exit ], [ %i.am, %bb.k ]
  ret i32 %spec.select
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !94   ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !99     ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775776
  br i1 %i.h, label %bb.b, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #23
  unreachable

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit: ; preds = %bb.a
  %3 = ashr exact i64 %i.g, 5                     ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %3, i64 1)
  %4 = add nsw i64 %.sroa.speculated.i, %3        ; 2 uses
  %5 = icmp ult i64 %4, %3
  %6 = tail call i64 @llvm.umin.i64(i64 %4, i64 288230376151711743)
  %7 = select i1 %5, i64 288230376151711743, i64 %6 ; 3 uses
  %8 = ptrtoint ptr %1 to i64
  %9 = sub i64 %8, %i.f
  %.not.i = icmp ne i64 %7, 0
  tail call void @llvm.assume(i1 %.not.i)
  %10 = shl nuw nsw i64 %7, 5
  %11 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %10) #24 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 %9 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !13
  %i.k = load ptr, ptr %2, align 8, !tbaa !7      ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !14   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.m, ptr %i.a, align 8, !tbaa !96
  %i.n = icmp ugt i64 %i.m, 15
  br i1 %i.n, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  %i.o = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.j     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.o, ptr %i.i, align 8, !tbaa !7
  %i.p = load i64, ptr %i.a, align 8, !tbaa !96
  store i64 %i.p, ptr %i.j, align 8, !tbaa !15
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  %i.q = phi ptr [ %i.o, %.noexc ], [ %i.j, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit ] ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.r = load i8, ptr %i.k, align 1, !tbaa !15
  store i8 %i.r, ptr %i.q, align 1, !tbaa !15
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.k, i64 %i.m, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.s = load i64, ptr %i.a, align 8, !tbaa !96   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.s, ptr %i.t, align 8, !tbaa !14
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !7
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %.not10.i.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.aj, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %11, %bb.e ] ; 5 uses
  %.0911.i.i.i.i = phi ptr [ %i.ai, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.d, %bb.e ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !247)
  call void @llvm.experimental.noalias.scope.decl(metadata !250)
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.w, ptr %.012.i.i.i.i, align 8, !tbaa !13, !alias.scope !247, !noalias !250
  %i.x = load ptr, ptr %.0911.i.i.i.i, align 8, !tbaa !7, !alias.scope !250, !noalias !247 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 5 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !14, !alias.scope !250, !noalias !247 ; 3 uses
  %i.ac = icmp ult i64 %i.ab, 16
  call void @llvm.assume(i1 %i.ac)
  %i.ad = add nuw nsw i64 %i.ab, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.w, ptr noundef nonnull align 8 dereferenceable(1) %i.y, i64 %i.ad, i1 false), !alias.scope !252
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.x, ptr %.012.i.i.i.i, align 8, !tbaa !7, !alias.scope !247, !noalias !250
  %i.ae = load i64, ptr %i.y, align 8, !tbaa !15, !alias.scope !250, !noalias !247
  store i64 %i.ae, ptr %i.w, align 8, !tbaa !15, !alias.scope !247, !noalias !250
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %.pre.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !14, !alias.scope !250, !noalias !247
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.f
  %i.af = phi i64 [ %i.ab, %bb.f ], [ %.pre.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  store i64 %i.af, ptr %i.ah, align 8, !tbaa !14, !alias.scope !247, !noalias !250
  store ptr %i.y, ptr %.0911.i.i.i.i, align 8, !tbaa !7, !alias.scope !250, !noalias !247
  store i64 0, ptr %i.ag, align 8, !tbaa !14, !alias.scope !250, !noalias !247
  store i8 0, ptr %i.y, align 8, !tbaa !15, !alias.scope !250, !noalias !247
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ai, %1
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !253

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i = phi ptr [ %11, %bb.e ], [ %i.aj, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i.i26 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i.i26, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i.i27

.lr.ph.i.i.i.i27:                                 ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i33
  %.012.i.i.i.i28 = phi ptr [ %i.ay, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i33 ], [ %i.ak, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i.i29 = phi ptr [ %i.ax, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i33 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !254)
  call void @llvm.experimental.noalias.scope.decl(metadata !257)
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i28, i64 16 ; 3 uses
  store ptr %i.al, ptr %.012.i.i.i.i28, align 8, !tbaa !13, !alias.scope !254, !noalias !257
  %i.am = load ptr, ptr %.0911.i.i.i.i29, align 8, !tbaa !7, !alias.scope !257, !noalias !254 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i29, i64 16 ; 5 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30

bb.g:                                             ; preds = %.lr.ph.i.i.i.i27
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i29, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !14, !alias.scope !257, !noalias !254 ; 3 uses
  %i.ar = icmp ult i64 %i.aq, 16
  call void @llvm.assume(i1 %i.ar)
  %i.as = add nuw nsw i64 %i.aq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.al, ptr noundef nonnull align 8 dereferenceable(1) %i.an, i64 %i.as, i1 false), !alias.scope !259
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30: ; preds = %.lr.ph.i.i.i.i27
  store ptr %i.am, ptr %.012.i.i.i.i28, align 8, !tbaa !7, !alias.scope !254, !noalias !257
  %i.at = load i64, ptr %i.an, align 8, !tbaa !15, !alias.scope !257, !noalias !254
  store i64 %i.at, ptr %i.al, align 8, !tbaa !15, !alias.scope !254, !noalias !257
  %.phi.trans.insert.i.i.i.i.i31 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i29, i64 8
  %.pre.i.i.i.i.i32 = load i64, ptr %.phi.trans.insert.i.i.i.i.i31, align 8, !tbaa !14, !alias.scope !257, !noalias !254
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i33

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30, %bb.g
  %i.au = phi i64 [ %i.aq, %bb.g ], [ %.pre.i.i.i.i.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30 ]
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i29, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i28, i64 8
  store i64 %i.au, ptr %i.aw, align 8, !tbaa !14, !alias.scope !254, !noalias !257
  store ptr %i.an, ptr %.0911.i.i.i.i29, align 8, !tbaa !7, !alias.scope !257, !noalias !254
  store i64 0, ptr %i.av, align 8, !tbaa !14, !alias.scope !257, !noalias !254
  store i8 0, ptr %i.an, align 8, !tbaa !15, !alias.scope !257, !noalias !254
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i29, i64 32 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i28, i64 32 ; 2 uses
  %.not.i.i.i.i34 = icmp eq ptr %i.ax, %i.c
  br i1 %.not.i.i.i.i34, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i.i27, !llvm.loop !253

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i33, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i.i35 = phi ptr [ %i.ak, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.ay, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i33 ]
  %.not.i37 = icmp eq ptr %i.d, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36
  call void @_ZdlPv(ptr noundef nonnull %i.d) #20
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %11, ptr %0, align 8, !tbaa !99
  store ptr %.0.lcssa.i.i.i.i35, ptr %i.b, align 8, !tbaa !94
  %i.ba = getelementptr inbounds nuw [32 x i8], ptr %11, i64 %7
  store ptr %i.ba, ptr %i.az, align 8, !tbaa !95
  ret void

bb.i:                                             ; preds = %bb.j
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %.noexc.i
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  %i.be = call ptr @__cxa_begin_catch(ptr %i.bd) #21 ; 0 uses
  call void @_ZdlPv(ptr noundef nonnull %11) #20
  invoke void @__cxa_rethrow() #23
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bb

bb.l:                                             ; preds = %bb.i
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #22
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt5dequeIN4YAML5TokenESaIS1_EE16_M_push_back_auxIJRKS1_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(84) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !260  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !260
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = mul nsw i64 %i.l, 5
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !261
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !262
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = sdiv exact i64 %i.s, 88
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !263
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !261
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = sdiv exact i64 %i.aa, 88
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 104811045873349725
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !264
  %i.ag = load ptr, ptr %0, align 8, !tbaa !265
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.g, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = sub i64 %i.af, %i.aj
  %i.al = icmp ult i64 %i.ak, 2
  br i1 %i.al, label %bb.d, label %_ZNSt5dequeIN4YAML5TokenESaIS1_EE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeIN4YAML5TokenESaIS1_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !266
  br label %_ZNSt5dequeIN4YAML5TokenESaIS1_EE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeIN4YAML5TokenESaIS1_EE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %i.am = phi ptr [ %i.d, %bb.c ], [ %.pre, %bb.d ]
  %i.an = tail call noalias noundef nonnull dereferenceable(440) ptr @_Znwm(i64 noundef 440) #24
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !267
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !97
  invoke void @_ZN4YAML5TokenC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(84) %i.ap, ptr noundef nonnull align 8 dereferenceable(84) %1)
          to label %_ZNSt16allocator_traitsISaIN4YAML5TokenEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit unwind label %bb.e

_ZNSt16allocator_traitsISaIN4YAML5TokenEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit: ; preds = %_ZNSt5dequeIN4YAML5TokenESaIS1_EE22_M_reserve_map_at_backEm.exit
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !266
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  store ptr %i.ar, ptr %i.c, align 8, !tbaa !260
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !267 ; 3 uses
  store ptr %i.as, ptr %i.o, align 8, !tbaa !262
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 440
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.at, ptr %i.au, align 8, !tbaa !263
  store ptr %i.as, ptr %i.a, align 8, !tbaa !97
  ret void

bb.e:                                             ; preds = %_ZNSt5dequeIN4YAML5TokenESaIS1_EE22_M_reserve_map_at_backEm.exit
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  %i.ax = tail call ptr @__cxa_begin_catch(ptr %i.aw) #21 ; 0 uses
  %i.ay = load ptr, ptr %i.c, align 8, !tbaa !266
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !267
  tail call void @_ZdlPv(ptr noundef %i.ba) #20
  invoke void @__cxa_rethrow() #23
          to label %bb.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.bb

bb.h:                                             ; preds = %bb.f
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  tail call void @__clang_call_terminate(ptr %i.bd) #22
  unreachable

bb.i:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN4YAML5TokenC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef nonnull align 8 dereferenceable(84) %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(20) %1, i64 20, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !13
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !7    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !14   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.g, ptr %i.a, align 8, !tbaa !96
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.i, ptr %i.b, align 8, !tbaa !7
  %i.j = load i64, ptr %i.a, align 8, !tbaa !96
  store i64 %i.j, ptr %i.d, align 8, !tbaa !15
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.k = phi ptr [ %i.i, %.noexc.i ], [ %i.d, %bb.a ] ; 2 uses
  switch i64 %i.g, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %i.e, align 1, !tbaa !15
  store i8 %i.l, ptr %i.k, align 1, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.m = load i64, ptr %i.a, align 8, !tbaa !96   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.m, ptr %i.n, align 8, !tbaa !14
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !94   ; 2 uses
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !99   ; 2 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w                       ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.t, %i.u
  br i1 %.not.i.i.i.i, label %.noexc6, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.y = icmp ugt i64 %i.x, 9223372036854775776
  br i1 %i.y, label %.noexc.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, !prof !159

.noexc.i.i:                                       ; preds = %bb.d
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #23
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

end_hunk_0
