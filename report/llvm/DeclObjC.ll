Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DeclObjC?download=true
inline.NumInlined: 3704
inline.NumDeleted: 1961
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_119SynthesizeIvarChunkELb1EE15growAndPushBackES2_:bb.a
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 16) #26
  %.val = load ptr, ptr %0, align 8, !tbaa !560
  %.val2 = load i32, ptr %i.a, align 8, !tbaa !554
  %i.f = zext i32 %.val2 to i64
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %i.f ; 2 uses
  store i64 %1, ptr %i.g, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %2, ptr %.sroa.4.0..sroa_idx, align 1
  %i.h = load i32, ptr %i.a, align 8, !tbaa !554
  %i.i = add i32 %i.h, 1
  store i32 %i.i, ptr %i.a, align 8, !tbaa !554
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZSt21__inplace_stable_sortIPN12_GLOBAL__N_119SynthesizeIvarChunkEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_(ptr noundef %0, ptr noundef %1) unnamed_addr #18 {
bb.a:
  %2 = alloca %"struct.(anonymous namespace)::SynthesizeIvarChunk", align 8 ; 4 uses
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 4                   ; 2 uses
  %i.e = icmp slt i64 %i.d, 15
  br i1 %i.e, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq ptr %0, %1
  %.016.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not17.i = icmp eq ptr %.016.i, %1
  %or.cond = select i1 %i.f, i1 true, i1 %.not17.i
  br i1 %or.cond, label %common.ret21, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.h
  %.019.i = phi ptr [ %.0.i, %bb.h ], [ %.016.i, %bb.b ] ; 7 uses
  %.pn18.i = phi ptr [ %.019.i, %bb.h ], [ %0, %bb.b ] ; 5 uses
  %.0.val.i = load i64, ptr %.019.i, align 8, !tbaa !666 ; 4 uses
  %.val.i = load i64, ptr %0, align 8, !tbaa !666
  %i.g = icmp ult i64 %.0.val.i, %.val.i
  br i1 %i.g, label %bb.c, label %bb.g

bb.c:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %.019.i, i64 16, i1 false), !tbaa.struct !636
  %i.h = ptrtoint ptr %.019.i to i64
  %i.i = sub i64 %i.h, %i.b                       ; 3 uses
  %i.j = ashr exact i64 %i.i, 4                   ; 2 uses
  %i.k = icmp sgt i64 %i.j, 1
  br i1 %i.k, label %bb.d, label %bb.e, !prof !59

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 32
  %i.m = sub nsw i64 0, %i.j
  %i.n = getelementptr inbounds [16 x i8], ptr %i.l, i64 %i.m
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.n, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.i, i1 false)
  br label %_ZSt13move_backwardIPN12_GLOBAL__N_119SynthesizeIvarChunkES2_ET0_T_S4_S3_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.o = icmp eq i64 %i.i, 16
  br i1 %i.o, label %bb.f, label %_ZSt13move_backwardIPN12_GLOBAL__N_119SynthesizeIvarChunkES2_ET0_T_S4_S3_.exit.i

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull readonly align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !636
  br label %_ZSt13move_backwardIPN12_GLOBAL__N_119SynthesizeIvarChunkES2_ET0_T_S4_S3_.exit.i

_ZSt13move_backwardIPN12_GLOBAL__N_119SynthesizeIvarChunkES2_ET0_T_S4_S3_.exit.i: ; preds = %bb.f, %bb.e, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !636
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph.i
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 24
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !635
  %.0.val13.i.i = load i64, ptr %.pn18.i, align 8, !tbaa !666
  %i.q = icmp ult i64 %.0.val.i, %.0.val13.i.i
  br i1 %i.q, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIPN12_GLOBAL__N_119SynthesizeIvarChunkEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %.015.i.i = phi ptr [ %.0.i.i, %.lr.ph.i.i ], [ %.pn18.i, %bb.g ] ; 4 uses
  %.0914.i.i = phi ptr [ %.015.i.i, %.lr.ph.i.i ], [ %.019.i, %bb.g ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0914.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.015.i.i, i64 16, i1 false), !tbaa.struct !636
  %.0.i.i = getelementptr inbounds i8, ptr %.015.i.i, i64 -16 ; 2 uses
  %.0.val.i.i = load i64, ptr %.0.i.i, align 8, !tbaa !666
  %i.r = icmp ult i64 %.0.val.i, %.0.val.i.i
  br i1 %i.r, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIPN12_GLOBAL__N_119SynthesizeIvarChunkEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i, !llvm.loop !23

_ZSt25__unguarded_linear_insertIPN12_GLOBAL__N_119SynthesizeIvarChunkEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.g
  %.09.lcssa.i.i = phi ptr [ %.019.i, %bb.g ], [ %.015.i.i, %.lr.ph.i.i ] ; 2 uses
  store i64 %.0.val.i, ptr %.09.lcssa.i.i, align 8, !tbaa !69
  %.sroa.5.0..09.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i, i64 8
  store ptr %.sroa.5.0.copyload.i.i, ptr %.sroa.5.0..09.sroa_idx.i.i, align 8, !tbaa !635
  br label %bb.h

bb.h:                                             ; preds = %_ZSt25__unguarded_linear_insertIPN12_GLOBAL__N_119SynthesizeIvarChunkEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i, %_ZSt13move_backwardIPN12_GLOBAL__N_119SynthesizeIvarChunkES2_ET0_T_S4_S3_.exit.i
  %.0.i = getelementptr inbounds nuw i8, ptr %.019.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, %1
  br i1 %.not.i, label %common.ret21, label %.lr.ph.i, !llvm.loop !24

common.ret21:                                     ; preds = %bb.b, %bb.h, %bb.i
  ret void

bb.i:                                             ; preds = %bb.a
  %i.s = lshr i64 %i.d, 1                         ; 2 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.s ; 4 uses
  tail call fastcc void @_ZSt21__inplace_stable_sortIPN12_GLOBAL__N_119SynthesizeIvarChunkEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_(ptr noundef %0, ptr noundef %i.t)
  tail call fastcc void @_ZSt21__inplace_stable_sortIPN12_GLOBAL__N_119SynthesizeIvarChunkEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_(ptr noundef %i.t, ptr noundef %1)
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.a, %i.u
  %i.w = ashr exact i64 %i.v, 4
  tail call fastcc void @_ZSt22__merge_without_bufferIPN12_GLOBAL__N_119SynthesizeIvarChunkElN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_T0_S7_T1_(ptr noundef %0, ptr noundef %i.t, ptr noundef %1, i64 noundef %i.s, i64 noundef %i.w)
  br label %common.ret21
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZSt29__stable_sort_adaptive_resizeIPN12_GLOBAL__N_119SynthesizeIvarChunkES2_lN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_T1_T2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #18 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 4
  %i.e = add nsw i64 %i.d, 1
  %i.f = sdiv i64 %i.e, 2                         ; 4 uses
  %i.g = getelementptr inbounds [16 x i8], ptr %0, i64 %i.f ; 7 uses
  %i.h = icmp sgt i64 %i.f, %3
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.a, %i.i
  %i.k = ashr exact i64 %i.j, 4                   ; 2 uses
  br i1 %i.h, label %bb.b, label %common.ret

common.ret27:                                     ; preds = %bb.b, %common.ret
  ret void

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZSt29__stable_sort_adaptive_resizeIPN12_GLOBAL__N_119SynthesizeIvarChunkES2_lN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_T1_T2_(ptr noundef %0, ptr noundef %i.g, ptr noundef %2, i64 noundef %3)
  tail call fastcc void @_ZSt29__stable_sort_adaptive_resizeIPN12_GLOBAL__N_119SynthesizeIvarChunkES2_lN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_T1_T2_(ptr noundef %i.g, ptr noundef %1, ptr noundef %2, i64 noundef %3)
  tail call fastcc void @_ZSt23__merge_adaptive_resizeIPN12_GLOBAL__N_119SynthesizeIvarChunkElS2_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_T0_S7_T1_S7_T2_(ptr noundef %0, ptr noundef %i.g, ptr noundef %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 noundef %3)
  br label %common.ret27

common.ret:                                       ; preds = %bb.a
  tail call fastcc void @_ZSt24__merge_sort_with_bufferIPN12_GLOBAL__N_119SynthesizeIvarChunkES2_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_T1_(ptr noundef %0, ptr noundef %i.g, ptr noundef %2)
  tail call fastcc void @_ZSt24__merge_sort_with_bufferIPN12_GLOBAL__N_119SynthesizeIvarChunkES2_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_T1_(ptr noundef %i.g, ptr noundef %1, ptr noundef %2)
  tail call fastcc void @_ZSt16__merge_adaptiveIPN12_GLOBAL__N_119SynthesizeIvarChunkElS2_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_T0_S7_T1_T2_(ptr noundef %0, ptr noundef %i.g, ptr noundef %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2)
  br label %common.ret27
}

; Function Attrs: nobuiltin nounwind allocsize(0)
declare noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #19

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZSt24__merge_sort_with_bufferIPN12_GLOBAL__N_119SynthesizeIvarChunkES2_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_T1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #20 {
bb.a:
  %3 = alloca %"struct.(anonymous namespace)::SynthesizeIvarChunk", align 8 ; 4 uses
  %4 = alloca %"struct.(anonymous namespace)::SynthesizeIvarChunk", align 8 ; 24 uses
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr exact i64 %i.c, 4                   ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.c
  %i.f = icmp sgt i64 %i.c, 96
  br i1 %i.f, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt16__insertion_sortIPN12_GLOBAL__N_119SynthesizeIvarChunkEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_.exit.i
  %i.g = phi i64 [ %i.bu, %_ZSt16__insertion_sortIPN12_GLOBAL__N_119SynthesizeIvarChunkEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_.exit.i ], [ %i.b, %bb.a ] ; 6 uses
  %.030.i = phi ptr [ %i.bt, %_ZSt16__insertion_sortIPN12_GLOBAL__N_119SynthesizeIvarChunkEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_.exit.i ], [ %0, %bb.a ] ; 42 uses
  %.019.i.ptr.i = getelementptr inbounds nuw i8, ptr %.030.i, i64 16 ; 6 uses
  %.0.val.i.i = load i64, ptr %.019.i.ptr.i, align 8, !tbaa !666
  %.val.i.i = load i64, ptr %.030.i, align 8, !tbaa !666 ; 2 uses
  %i.h = icmp ult i64 %.0.val.i.i, %.val.i.i
  br i1 %i.h, label %bb.b, label %_ZSt25__unguarded_linear_insertIPN12_GLOBAL__N_119SynthesizeIvarChunkEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i.i

bb.b:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %.019.i.ptr.i, i64 16, i1 false), !tbaa.struct !636
  %i.i = ptrtoint ptr %.019.i.ptr.i to i64
  %i.j = sub i64 %i.i, %i.g                       ; 3 uses
  %i.k = ashr exact i64 %i.j, 4                   ; 2 uses
  %i.l = icmp sgt i64 %i.k, 1
  br i1 %i.l, label %bb.c, label %bb.d, !prof !59

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %.030.i, i64 32
  %i.n = sub nsw i64 0, %i.k
  %i.o = getelementptr inbounds [16 x i8], ptr %i.m, i64 %i.n
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.o, ptr noundef nonnull align 8 dereferenceable(1) %.030.i, i64 %i.j, i1 false)
  br label %_ZSt13move_backwardIPN12_GLOBAL__N_119SynthesizeIvarChunkES2_ET0_T_S4_S3_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.p = icmp eq i64 %i.j, 16
  br i1 %i.p, label %bb.e, label %_ZSt13move_backwardIPN12_GLOBAL__N_119SynthesizeIvarChunkES2_ET0_T_S4_S3_.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.019.i.ptr.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %.030.i, i64 16, i1 false), !tbaa.struct !636
  br label %_ZSt13move_backwardIPN12_GLOBAL__N_119SynthesizeIvarChunkES2_ET0_T_S4_S3_.exit.i.i

_ZSt13move_backwardIPN12_GLOBAL__N_119SynthesizeIvarChunkES2_ET0_T_S4_S3_.exit.i.i: ; preds = %bb.e, %bb.d, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.030.i, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !636
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.val.i.1.pre.i = load i64, ptr %.030.i, align 8, !tbaa !666
  br label %_ZSt25__unguarded_linear_insertIPN12_GLOBAL__N_119SynthesizeIvarChunkEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i.i

_ZSt25__unguarded_linear_insertIPN12_GLOBAL__N_119SynthesizeIvarChunkEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i.i: ; preds = %.lr.ph.i, %_ZSt13move_backwardIPN12_GLOBAL__N_119SynthesizeIvarChunkES2_ET0_T_S4_S3_.exit.i.i
  %.val.i.1.i = phi i64 [ %.val.i.1.pre.i, %_ZSt13move_backwardIPN12_GLOBAL__N_119SynthesizeIvarChunkES2_ET0_T_S4_S3_.exit.i.i ], [ %.val.i.i, %.lr.ph.i ]
  %.019.i.ptr.1.i = getelementptr inbounds nuw i8, ptr %.030.i, i64 32 ; 8 uses
  %.0.val.i.1.i = load i64, ptr %.019.i.ptr.1.i, align 8, !tbaa !666 ; 4 uses
  %i.q = icmp ult i64 %.0.val.i.1.i, %.val.i.1.i
  br i1 %i.q, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZSt25__unguarded_linear_insertIPN12_GLOBAL__N_119SynthesizeIvarChunkEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i.i
  %.sroa.5.0..sroa_idx.i.i.1.i = getelementptr inbounds nuw i8, ptr %.030.i, i64 40
  %.sroa.5.0.copyload.i.i.1.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.1.i, align 8, !tbaa !635
  %.0.val13.i.i.1.i = load i64, ptr %.019.i.ptr.i, align 8, !tbaa !666
  %i.r = icmp ult i64 %.0.val.i.1.i, %.0.val13.i.i.1.i
  br i1 %i.r, label %.lr.ph.i.i.1.i, label %_ZSt25__unguarded_linear_insertIPN12_GLOBAL__N_119SynthesizeIvarChunkEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i.1.i

.lr.ph.i.i.1.i:                                   ; preds = %bb.f, %.lr.ph.i.i.1.i
  %.015.i.i.1.i = phi ptr [ %.0.i.i.1.i, %.lr.ph.i.i.1.i ], [ %.019.i.ptr.i, %bb.f ] ; 4 uses
  %.0914.i.i.1.i = phi ptr [ %.015.i.i.1.i, %.lr.ph.i.i.1.i ], [ %.019.i.ptr.1.i, %bb.f ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0914.i.i.1.i, ptr noundef nonnull align 8 dereferenceable(16) %.015.i.i.1.i, i64 16, i1 false), !tbaa.struct !636
  %.0.i.i.1.i = getelementptr inbounds i8, ptr %.015.i.i.1.i, i64 -16 ; 2 uses
  %.0.val.i.i.1.i = load i64, ptr %.0.i.i.1.i, align 8, !tbaa !666
  %i.s = icmp ult i64 %.0.val.i.1.i, %.0.val.i.i.1.i
  br i1 %i.s, label %.lr.ph.i.i.1.i, label %_ZSt25__unguarded_linear_insertIPN12_GLOBAL__N_119SynthesizeIvarChunkEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i.1.i, !llvm.loop !23

_ZSt25__unguarded_linear_insertIPN12_GLOBAL__N_119SynthesizeIvarChunkEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i.1.i: ; preds = %.lr.ph.i.i.1.i, %bb.f
  %.09.lcssa.i.i.1.i = phi ptr [ %.019.i.ptr.1.i, %bb.f ], [ %.015.i.i.1.i, %.lr.ph.i.i.1.i ] ; 2 uses
  store i64 %.0.val.i.1.i, ptr %.09.lcssa.i.i.1.i, align 8, !tbaa !69
  %.sroa.5.0..09.sroa_idx.i.i.1.i = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i.1.i, i64 8
  store ptr %.sroa.5.0.copyload.i.i.1.i, ptr %.sroa.5.0..09.sroa_idx.i.i.1.i, align 8, !tbaa !635
  br label %bb.k

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIPN12_GLOBAL__N_119SynthesizeIvarChunkEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %.019.i.ptr.1.i, i64 16, i1 false), !tbaa.struct !636
  %i.t = ptrtoint ptr %.019.i.ptr.1.i to i64
  %i.u = sub i64 %i.t, %i.g                       ; 3 uses
  %i.v = ashr exact i64 %i.u, 4                   ; 2 uses
  %i.w = icmp sgt i64 %i.v, 1
  br i1 %i.w, label %bb.j, label %bb.h, !prof !59

bb.h:                                             ; preds = %bb.g
  %i.x = icmp eq i64 %i.u, 16
  br i1 %i.x, label %bb.i, label %_ZSt13move_backwardIPN12_GLOBAL__N_119SynthesizeIvarChunkES2_ET0_T_S4_S3_.exit.i.1.i

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.019.i.ptr.1.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %.030.i, i64 16, i1 false), !tbaa.struct !636
  br label %_ZSt13move_backwardIPN12_GLOBAL__N_119SynthesizeIvarChunkES2_ET0_T_S4_S3_.exit.i.1.i

bb.j:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %.030.i, i64 48
  %i.z = sub nsw i64 0, %i.v
  %i.aa = getelementptr inbounds [16 x i8], ptr %i.y, i64 %i.z
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aa, ptr noundef nonnull align 8 dereferenceable(1) %.030.i, i64 %i.u, i1 false)
  br label %_ZSt13move_backwardIPN12_GLOBAL__N_119SynthesizeIvarChunkES2_ET0_T_S4_S3_.exit.i.1.i

_ZSt13move_backwardIPN12_GLOBAL__N_119SynthesizeIvarChunkES2_ET0_T_S4_S3_.exit.i.1.i: ; preds = %bb.j, %bb.i, %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.030.i, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !636
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.k

bb.k:                                             ; preds = %_ZSt13move_backwardIPN12_GLOBAL__N_119SynthesizeIvarChunkES2_ET0_T_S4_S3_.exit.i.1.i, %_ZSt25__unguarded_linear_insertIPN12_GLOBAL__N_119SynthesizeIvarChunkEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i.1.i
  %.019.i.ptr.2.i = getelementptr inbounds nuw i8, ptr %.030.i, i64 48 ; 8 uses
  %.0.val.i.2.i = load i64, ptr %.019.i.ptr.2.i, align 8, !tbaa !666 ; 4 uses
  %.val.i.2.i = load i64, ptr %.030.i, align 8, !tbaa !666
  %i.ab = icmp ult i64 %.0.val.i.2.i, %.val.i.2.i
  br i1 %i.ab, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.sroa.5.0..sroa_idx.i.i.2.i = getelementptr inbounds nuw i8, ptr %.030.i, i64 56
  %.sroa.5.0.copyload.i.i.2.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.2.i, align 8, !tbaa !635
  %.0.val13.i.i.2.i = load i64, ptr %.019.i.ptr.1.i, align 8, !tbaa !666
  %i.ac = icmp ult i64 %.0.val.i.2.i, %.0.val13.i.i.2.i
  br i1 %i.ac, label %.lr.ph.i.i.2.i, label %_ZSt25__unguarded_linear_insertIPN12_GLOBAL__N_119SynthesizeIvarChunkEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i.2.i

.lr.ph.i.i.2.i:                                   ; preds = %bb.l, %.lr.ph.i.i.2.i
  %.015.i.i.2.i = phi ptr [ %.0.i.i.2.i, %.lr.ph.i.i.2.i ], [ %.019.i.ptr.1.i, %bb.l ] ; 4 uses
  %.0914.i.i.2.i = phi ptr [ %.015.i.i.2.i, %.lr.ph.i.i.2.i ], [ %.019.i.ptr.2.i, %bb.l ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0914.i.i.2.i, ptr noundef nonnull align 8 dereferenceable(16) %.015.i.i.2.i, i64 16, i1 false), !tbaa.struct !636
  %.0.i.i.2.i = getelementptr inbounds i8, ptr %.015.i.i.2.i, i64 -16 ; 2 uses
  %.0.val.i.i.2.i = load i64, ptr %.0.i.i.2.i, align 8, !tbaa !666
  %i.ad = icmp ult i64 %.0.val.i.2.i, %.0.val.i.i.2.i
  br i1 %i.ad, label %.lr.ph.i.i.2.i, label %_ZSt25__unguarded_linear_insertIPN12_GLOBAL__N_119SynthesizeIvarChunkEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i.2.i, !llvm.loop !23

_ZSt25__unguarded_linear_insertIPN12_GLOBAL__N_119SynthesizeIvarChunkEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i.2.i: ; preds = %.lr.ph.i.i.2.i, %bb.l
  %.09.lcssa.i.i.2.i = phi ptr [ %.019.i.ptr.2.i, %bb.l ], [ %.015.i.i.2.i, %.lr.ph.i.i.2.i ] ; 2 uses
  store i64 %.0.val.i.2.i, ptr %.09.lcssa.i.i.2.i, align 8, !tbaa !69
  %.sroa.5.0..09.sroa_idx.i.i.2.i = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i.2.i, i64 8
  store ptr %.sroa.5.0.copyload.i.i.2.i, ptr %.sroa.5.0..09.sroa_idx.i.i.2.i, align 8, !tbaa !635
  br label %bb.q

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %.019.i.ptr.2.i, i64 16, i1 false), !tbaa.struct !636
  %i.ae = ptrtoint ptr %.019.i.ptr.2.i to i64
  %i.af = sub i64 %i.ae, %i.g                     ; 3 uses
  %i.ag = ashr exact i64 %i.af, 4                 ; 2 uses
  %i.ah = icmp sgt i64 %i.ag, 1
  br i1 %i.ah, label %bb.p, label %bb.n, !prof !59

bb.n:                                             ; preds = %bb.m
  %i.ai = icmp eq i64 %i.af, 16
  br i1 %i.ai, label %bb.o, label %_ZSt13move_backwardIPN12_GLOBAL__N_119SynthesizeIvarChunkES2_ET0_T_S4_S3_.exit.i.2.i

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.019.i.ptr.2.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %.030.i, i64 16, i1 false), !tbaa.struct !636
  br label %_ZSt13move_backwardIPN12_GLOBAL__N_119SynthesizeIvarChunkES2_ET0_T_S4_S3_.exit.i.2.i

bb.p:                                             ; preds = %bb.m
  %i.aj = getelementptr inbounds nuw i8, ptr %.030.i, i64 64
  %i.ak = sub nsw i64 0, %i.ag
  %i.al = getelementptr inbounds [16 x i8], ptr %i.aj, i64 %i.ak
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.al, ptr noundef nonnull align 8 dereferenceable(1) %.030.i, i64 %i.af, i1 false)
  br label %_ZSt13move_backwardIPN12_GLOBAL__N_119SynthesizeIvarChunkES2_ET0_T_S4_S3_.exit.i.2.i

_ZSt13move_backwardIPN12_GLOBAL__N_119SynthesizeIvarChunkES2_ET0_T_S4_S3_.exit.i.2.i: ; preds = %bb.p, %bb.o, %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.030.i, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !636
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.q

bb.q:                                             ; preds = %_ZSt13move_backwardIPN12_GLOBAL__N_119SynthesizeIvarChunkES2_ET0_T_S4_S3_.exit.i.2.i, %_ZSt25__unguarded_linear_insertIPN12_GLOBAL__N_119SynthesizeIvarChunkEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i.2.i
  %.019.i.ptr.3.i = getelementptr inbounds nuw i8, ptr %.030.i, i64 64 ; 8 uses
  %.0.val.i.3.i = load i64, ptr %.019.i.ptr.3.i, align 8, !tbaa !666 ; 4 uses
  %.val.i.3.i = load i64, ptr %.030.i, align 8, !tbaa !666
  %i.am = icmp ult i64 %.0.val.i.3.i, %.val.i.3.i
  br i1 %i.am, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.sroa.5.0..sroa_idx.i.i.3.i = getelementptr inbounds nuw i8, ptr %.030.i, i64 72
  %.sroa.5.0.copyload.i.i.3.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.3.i, align 8, !tbaa !635
  %.0.val13.i.i.3.i = load i64, ptr %.019.i.ptr.2.i, align 8, !tbaa !666
  %i.an = icmp ult i64 %.0.val.i.3.i, %.0.val13.i.i.3.i
  br i1 %i.an, label %.lr.ph.i.i.3.i, label %_ZSt25__unguarded_linear_insertIPN12_GLOBAL__N_119SynthesizeIvarChunkEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i.3.i

.lr.ph.i.i.3.i:                                   ; preds = %bb.r, %.lr.ph.i.i.3.i
  %.015.i.i.3.i = phi ptr [ %.0.i.i.3.i, %.lr.ph.i.i.3.i ], [ %.019.i.ptr.2.i, %bb.r ] ; 4 uses
  %.0914.i.i.3.i = phi ptr [ %.015.i.i.3.i, %.lr.ph.i.i.3.i ], [ %.019.i.ptr.3.i, %bb.r ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0914.i.i.3.i, ptr noundef nonnull align 8 dereferenceable(16) %.015.i.i.3.i, i64 16, i1 false), !tbaa.struct !636
  %.0.i.i.3.i = getelementptr inbounds i8, ptr %.015.i.i.3.i, i64 -16 ; 2 uses
  %.0.val.i.i.3.i = load i64, ptr %.0.i.i.3.i, align 8, !tbaa !666
  %i.ao = icmp ult i64 %.0.val.i.3.i, %.0.val.i.i.3.i
  br i1 %i.ao, label %.lr.ph.i.i.3.i, label %_ZSt25__unguarded_linear_insertIPN12_GLOBAL__N_119SynthesizeIvarChunkEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i.3.i, !llvm.loop !23

_ZSt25__unguarded_linear_insertIPN12_GLOBAL__N_119SynthesizeIvarChunkEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i.3.i: ; preds = %.lr.ph.i.i.3.i, %bb.r
  %.09.lcssa.i.i.3.i = phi ptr [ %.019.i.ptr.3.i, %bb.r ], [ %.015.i.i.3.i, %.lr.ph.i.i.3.i ] ; 2 uses
  store i64 %.0.val.i.3.i, ptr %.09.lcssa.i.i.3.i, align 8, !tbaa !69
  %.sroa.5.0..09.sroa_idx.i.i.3.i = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i.3.i, i64 8
  store ptr %.sroa.5.0.copyload.i.i.3.i, ptr %.sroa.5.0..09.sroa_idx.i.i.3.i, align 8, !tbaa !635
  br label %bb.w

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %.019.i.ptr.3.i, i64 16, i1 false), !tbaa.struct !636
  %i.ap = ptrtoint ptr %.019.i.ptr.3.i to i64
  %i.aq = sub i64 %i.ap, %i.g                     ; 3 uses
  %i.ar = ashr exact i64 %i.aq, 4                 ; 2 uses
  %i.as = icmp sgt i64 %i.ar, 1
  br i1 %i.as, label %bb.v, label %bb.t, !prof !59

bb.t:                                             ; preds = %bb.s
  %i.at = icmp eq i64 %i.aq, 16
  br i1 %i.at, label %bb.u, label %_ZSt13move_backwardIPN12_GLOBAL__N_119SynthesizeIvarChunkES2_ET0_T_S4_S3_.exit.i.3.i

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.019.i.ptr.3.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %.030.i, i64 16, i1 false), !tbaa.struct !636
  br label %_ZSt13move_backwardIPN12_GLOBAL__N_119SynthesizeIvarChunkES2_ET0_T_S4_S3_.exit.i.3.i

bb.v:                                             ; preds = %bb.s
  %i.au = getelementptr inbounds nuw i8, ptr %.030.i, i64 80
  %i.av = sub nsw i64 0, %i.ar
  %i.aw = getelementptr inbounds [16 x i8], ptr %i.au, i64 %i.av
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aw, ptr noundef nonnull align 8 dereferenceable(1) %.030.i, i64 %i.aq, i1 false)
  br label %_ZSt13move_backwardIPN12_GLOBAL__N_119SynthesizeIvarChunkES2_ET0_T_S4_S3_.exit.i.3.i

_ZSt13move_backwardIPN12_GLOBAL__N_119SynthesizeIvarChunkES2_ET0_T_S4_S3_.exit.i.3.i: ; preds = %bb.v, %bb.u, %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.030.i, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !636
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.w

bb.w:                                             ; preds = %_ZSt13move_backwardIPN12_GLOBAL__N_119SynthesizeIvarChunkES2_ET0_T_S4_S3_.exit.i.3.i, %_ZSt25__unguarded_linear_insertIPN12_GLOBAL__N_119SynthesizeIvarChunkEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i.3.i
  %.019.i.ptr.4.i = getelementptr inbounds nuw i8, ptr %.030.i, i64 80 ; 8 uses
  %.0.val.i.4.i = load i64, ptr %.019.i.ptr.4.i, align 8, !tbaa !666 ; 4 uses
  %.val.i.4.i = load i64, ptr %.030.i, align 8, !tbaa !666
  %i.ax = icmp ult i64 %.0.val.i.4.i, %.val.i.4.i
  br i1 %i.ax, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.5.0..sroa_idx.i.i.4.i = getelementptr inbounds nuw i8, ptr %.030.i, i64 88
  %.sroa.5.0.copyload.i.i.4.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.4.i, align 8, !tbaa !635
  %.0.val13.i.i.4.i = load i64, ptr %.019.i.ptr.3.i, align 8, !tbaa !666
  %i.ay = icmp ult i64 %.0.val.i.4.i, %.0.val13.i.i.4.i
  br i1 %i.ay, label %.lr.ph.i.i.4.i, label %_ZSt25__unguarded_linear_insertIPN12_GLOBAL__N_119SynthesizeIvarChunkEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i.4.i

.lr.ph.i.i.4.i:                                   ; preds = %bb.x, %.lr.ph.i.i.4.i
  %.015.i.i.4.i = phi ptr [ %.0.i.i.4.i, %.lr.ph.i.i.4.i ], [ %.019.i.ptr.3.i, %bb.x ] ; 4 uses
  %.0914.i.i.4.i = phi ptr [ %.015.i.i.4.i, %.lr.ph.i.i.4.i ], [ %.019.i.ptr.4.i, %bb.x ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0914.i.i.4.i, ptr noundef nonnull align 8 dereferenceable(16) %.015.i.i.4.i, i64 16, i1 false), !tbaa.struct !636
  %.0.i.i.4.i = getelementptr inbounds i8, ptr %.015.i.i.4.i, i64 -16 ; 2 uses
  %.0.val.i.i.4.i = load i64, ptr %.0.i.i.4.i, align 8, !tbaa !666
  %i.az = icmp ult i64 %.0.val.i.4.i, %.0.val.i.i.4.i
  br i1 %i.az, label %.lr.ph.i.i.4.i, label %_ZSt25__unguarded_linear_insertIPN12_GLOBAL__N_119SynthesizeIvarChunkEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i.4.i, !llvm.loop !23

_ZSt25__unguarded_linear_insertIPN12_GLOBAL__N_119SynthesizeIvarChunkEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i.4.i: ; preds = %.lr.ph.i.i.4.i, %bb.x
end_hunk_0
