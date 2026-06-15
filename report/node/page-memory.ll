inline.NumInlined: 600
inline.NumDeleted: 340
begin_hunk_0_@_ZN5cppgc8internal20NormalPageMemoryPool3AddEPNS0_16PageMemoryRegionE:bb.a
  %i.q = select i1 %i.o, i64 576460752303423487, i64 %i.p ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.r = shl nuw nsw i64 %i.q, 4
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #18 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.k ; 3 uses
  store ptr %1, ptr %i.t, align 8
  %.sroa.5.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i8 0, ptr %.sroa.5.0..sroa_idx13, align 8
  %.sroa.6.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.t, i64 9
  store i8 0, ptr %.sroa.6.0..sroa_idx15, align 1
  %.not10.i.i.i.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN5cppgc8internal20NormalPageMemoryPool22PooledPageMemoryRegionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN5cppgc8internal20NormalPageMemoryPool22PooledPageMemoryRegionESaIS3_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i ], [ %i.s, %_ZNKSt6vectorIN5cppgc8internal20NormalPageMemoryPool22PooledPageMemoryRegionESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i ], [ %i.h, %_ZNKSt6vectorIN5cppgc8internal20NormalPageMemoryPool22PooledPageMemoryRegionESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !alias.scope !12
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.u, %i.c
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN5cppgc8internal20NormalPageMemoryPool22PooledPageMemoryRegionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !16

_ZNSt6vectorIN5cppgc8internal20NormalPageMemoryPool22PooledPageMemoryRegionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN5cppgc8internal20NormalPageMemoryPool22PooledPageMemoryRegionESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.s, %_ZNKSt6vectorIN5cppgc8internal20NormalPageMemoryPool22PooledPageMemoryRegionESaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.v, %.lr.ph.i.i.i.i.i ]
  %i.w = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16
  %.not.i23.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN5cppgc8internal20NormalPageMemoryPool22PooledPageMemoryRegionESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN5cppgc8internal20NormalPageMemoryPool22PooledPageMemoryRegionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.k) #19
  br label %_ZNSt6vectorIN5cppgc8internal20NormalPageMemoryPool22PooledPageMemoryRegionESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIN5cppgc8internal20NormalPageMemoryPool22PooledPageMemoryRegionESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorIN5cppgc8internal20NormalPageMemoryPool22PooledPageMemoryRegionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  store ptr %i.s, ptr %0, align 8
  store ptr %i.w, ptr %i.b, align 8
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.q
  store ptr %i.x, ptr %i.d, align 8
  br label %_ZNSt6vectorIN5cppgc8internal20NormalPageMemoryPool22PooledPageMemoryRegionESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit

_ZNSt6vectorIN5cppgc8internal20NormalPageMemoryPool22PooledPageMemoryRegionESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorIN5cppgc8internal20NormalPageMemoryPool22PooledPageMemoryRegionESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN5cppgc8internal20NormalPageMemoryPool4TakeEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %2 = alloca %"class.std::allocator.3", align 1  ; 2 uses
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %i.c, i64 -16 ; 2 uses
  %.sroa.01.0.copyload = load ptr, ptr %i.e, align 8 ; 6 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds i8, ptr %i.c, i64 -8
  %.sroa.8.0.copyload = load i8, ptr %.sroa.8.0..sroa_idx, align 8
  store ptr %i.e, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.f, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload, i64 16
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8 ; 2 uses
  %i.g = trunc i8 %.sroa.8.0.copyload to i1
  br i1 %i.g, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %.sroa.01.0.copyload, align 8, !nonnull !5, !align !6 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef %.sroa.0.0.copyload.i, i64 noundef %.sroa.2.0.copyload.i, i32 noundef 2) #16
  br i1 %i.l, label %bb.e, label %bb.d, !prof !9

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #17
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %.sroa.01.0.copyload, align 8, !nonnull !5, !align !6 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef zeroext i1 %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef %.sroa.0.0.copyload.i, i64 noundef %.sroa.2.0.copyload.i, i32 noundef 2) #16
  br i1 %i.q, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = tail call ptr @__errno_location() #20
  %i.s = load i32, ptr %i.r, align 4
  %i.t = icmp eq i32 %i.s, 12
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.u = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN5cppgc8internal19GetGlobalOOMHandlerEv() #16
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void @_ZNK5cppgc8internal23FatalOutOfMemoryHandlerclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2v814SourceLocationE(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nonnull @.constant) #17
  unreachable

bb.h:                                             ; preds = %bb.f
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.6) #17
  unreachable

bb.i:                                             ; preds = %bb.b, %bb.e, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %.sroa.01.0.copyload, %bb.e ], [ %.sroa.01.0.copyload, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN5cppgc8internal19GetGlobalOOMHandlerEv() local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZNK5cppgc8internal23FatalOutOfMemoryHandlerclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2v814SourceLocationE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32), ptr) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.11) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #16 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 15
  br i1 %i.d, label %bb.d, label %._crit_edge.i

bb.d:                                             ; preds = %bb.c
  %i.e = icmp slt i64 %i.c, 0
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #17
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.f = add nuw i64 %i.c, 1                      ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, !prof !17

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt17__throw_bad_allocv() #17
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %bb.f
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #18 ; 2 uses
  store ptr %i.h, ptr %0, align 8
  store i64 %i.c, ptr %i.a, align 8
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  %i.i = phi ptr [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i ], [ %i.a, %bb.c ] ; 3 uses
  switch i64 %i.c, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.exit
  ]

bb.h:                                             ; preds = %._crit_edge.i
  %i.j = load i8, ptr %1, align 1
  store i8 %i.j, ptr %i.i, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.exit

bb.i:                                             ; preds = %._crit_edge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %1, i64 %i.c, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.exit: ; preds = %._crit_edge.i, %bb.h, %bb.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.c
  store i8 0, ptr %i.l, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @_ZNK5cppgc8internal20NormalPageMemoryPool12PooledMemoryEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %.1, %bb.c ]
  ret i64 %.0.lcssa

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.012 = phi i64 [ %.1, %bb.c ], [ 0, %bb.a ]    ; 2 uses
  %.sroa.08.011 = phi ptr [ %i.j, %bb.c ], [ %i.a, %bb.a ] ; 4 uses
  %1 = getelementptr inbounds nuw i8, ptr %.sroa.08.011, i64 8
  %2 = load i8, ptr %1, align 8, !range !18, !noundef !5
  %3 = trunc nuw i8 %2 to i1
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.08.011, i64 9
  %i.f = load i8, ptr %i.e, align 1, !range !18
  %i.g = trunc nuw i8 %i.f to i1
  %or.cond = select i1 %3, i1 true, i1 %i.g
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = load ptr, ptr %.sroa.08.011, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.i = add i64 %.sroa.2.0.copyload.i, %.012
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.1 = phi i64 [ %i.i, %bb.b ], [ %.012, %.lr.ph ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.08.011, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.c
  br i1 %i.k, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN5cppgc8internal20NormalPageMemoryPool18ReleasePooledPagesERN2v813PageAllocatorE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

._crit_edge:                                      ; preds = %bb.l, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.l
  %.sroa.027.030 = phi ptr [ %i.a, %.lr.ph ], [ %i.ad, %bb.l ] ; 4 uses
  %i.f = load ptr, ptr %.sroa.027.030, align 8    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.g, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8 ; 3 uses
  %i.h = load i8, ptr %i.e, align 8, !range !18, !noundef !5
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.027.030, i64 8 ; 2 uses
  %i.k = load i8, ptr %i.j, align 8, !range !18, !noundef !5
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %1, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 112
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef zeroext i1 %i.o(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %.sroa.0.0.copyload.i, i64 noundef %.sroa.2.0.copyload.i) #16
  br i1 %i.p, label %bb.f, label %bb.e, !prof !9

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.7) #17
  unreachable

bb.f:                                             ; preds = %bb.d
  store i8 1, ptr %i.j, align 8
  br label %bb.l

bb.g:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.027.030, i64 9 ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !range !18, !noundef !5
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %1, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef i64 %i.v(ptr noundef nonnull align 8 dereferenceable(8) %1) #16, !inline_history !19
  %i.x = urem i64 %.sroa.2.0.copyload.i, %i.w
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %_ZN5cppgc8internal12_GLOBAL__N_110TryDiscardERN2v813PageAllocatorERKNS0_12MemoryRegionE.exit, label %bb.i, !prof !9

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.9) #17
  unreachable

_ZN5cppgc8internal12_GLOBAL__N_110TryDiscardERN2v813PageAllocatorERKNS0_12MemoryRegionE.exit: ; preds = %bb.h
  %i.z = load ptr, ptr %1, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 104
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call noundef zeroext i1 %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %.sroa.0.0.copyload.i, i64 noundef %.sroa.2.0.copyload.i) #16, !inline_history !19
  br i1 %i.ac, label %bb.k, label %bb.j, !prof !9

bb.j:                                             ; preds = %_ZN5cppgc8internal12_GLOBAL__N_110TryDiscardERN2v813PageAllocatorERKNS0_12MemoryRegionE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.8) #17
  unreachable

bb.k:                                             ; preds = %_ZN5cppgc8internal12_GLOBAL__N_110TryDiscardERN2v813PageAllocatorERKNS0_12MemoryRegionE.exit
  store i8 1, ptr %i.q, align 1
  br label %bb.l

bb.l:                                             ; preds = %bb.f, %bb.k, %bb.g, %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.027.030, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.c
  br i1 %i.ae, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN5cppgc8internal11PageBackendC2ERN2v813PageAllocatorES4_(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN2v84base5MutexC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i8 0, i64 25, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  store i32 0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr null, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.d, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %i.j, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 1, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %i.p, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 1, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 200
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  ret void
}

declare void @_ZN2v84base5MutexC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN5cppgc8internal11PageBackendD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIPN5cppgc8internal16PageMemoryRegionESt4pairIKS3_St10unique_ptrIS2_St14default_deleteIS2_EEESaISA_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPN5cppgc8internal16PageMemoryRegionESt10unique_ptrIS5_St14default_deleteIS5_EEELb0EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.d, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPN5cppgc8internal16PageMemoryRegionESt10unique_ptrIS5_St14default_deleteIS5_EEELb0EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i ], [ %i.c, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.06.i.i.i.i, align 8      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8              ; 5 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPN5cppgc8internal16PageMemoryRegionESt10unique_ptrIS5_St14default_deleteIS5_EEELb0EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN5cppgc8internal16PageMemoryRegionEEclEPS2_.exit.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN5cppgc8internal16PageMemoryRegionEEclEPS2_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !5, !align !6 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.h, align 8
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8
  %i.i = load ptr, ptr %i.g, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i.i) #16, !inline_history !20 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 24) #19
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPN5cppgc8internal16PageMemoryRegionESt10unique_ptrIS5_St14default_deleteIS5_EEELb0EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPN5cppgc8internal16PageMemoryRegionESt10unique_ptrIS5_St14default_deleteIS5_EEELb0EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN5cppgc8internal16PageMemoryRegionEEclEPS2_.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 24) #19
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableIPN5cppgc8internal16PageMemoryRegionESt4pairIKS3_St10unique_ptrIS2_St14default_deleteIS2_EEESaISA_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !21

_ZNSt10_HashtableIPN5cppgc8internal16PageMemoryRegionESt4pairIKS3_St10unique_ptrIS2_St14default_deleteIS2_EEESaISA_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPN5cppgc8internal16PageMemoryRegionESt10unique_ptrIS5_St14default_deleteIS5_EEELb0EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i, %bb.a
  %i.m = load ptr, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8
  %i.p = shl i64 %i.o, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.m, i8 0, i64 %i.p, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.q = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt13unordered_mapIPN5cppgc8internal16PageMemoryRegionESt10unique_ptrIS2_St14default_deleteIS2_EESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S7_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableIPN5cppgc8internal16PageMemoryRegionESt4pairIKS3_St10unique_ptrIS2_St14default_deleteIS2_EEESaISA_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i
  %i.t = load i64, ptr %i.n, align 8
  %i.u = shl i64 %i.t, 3
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #19
  br label %_ZNSt13unordered_mapIPN5cppgc8internal16PageMemoryRegionESt10unique_ptrIS2_St14default_deleteIS2_EESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S7_EEED2Ev.exit

_ZNSt13unordered_mapIPN5cppgc8internal16PageMemoryRegionESt10unique_ptrIS2_St14default_deleteIS2_EESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S7_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableIPN5cppgc8internal16PageMemoryRegionESt4pairIKS3_St10unique_ptrIS2_St14default_deleteIS2_EEESaISA_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %.not5.i.i.i.i1 = icmp eq ptr %i.x, null
  br i1 %.not5.i.i.i.i1, label %_ZNSt10_HashtableIPN5cppgc8internal16PageMemoryRegionESt4pairIKS3_St10unique_ptrIS2_St14default_deleteIS2_EEESaISA_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i11, label %.lr.ph.i.i.i.i2

end_hunk_0
