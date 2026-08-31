Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/AuxIndexStructures?download=true
inline.NumInlined: 296
inline.NumDeleted: 180
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm:bb.a
  store i8 %i.ad, ptr %i.aa, align 1, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

bb.p:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr align 1 %i.ac, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27: ; preds = %bb.p, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.ae = icmp eq ptr %.pre, %i.h
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.af = load i64, ptr %i.h, align 8, !tbaa !24
  %i.ag = add i64 %i.af, 1
  tail call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.ag) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28
  store ptr %i.s, ptr %0, align 8, !tbaa !25
  store i64 %.0, ptr %i.h, align 8, !tbaa !24
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #5

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #11

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5faiss17RangeSearchResultD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(48) dereferenceable(48) initializes((0, 8)) %0) unnamed_addr #1 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5faiss17RangeSearchResultE, i64 16), ptr %0, align 8, !tbaa !34
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !15   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #26
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !17   ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdaPv(ptr noundef nonnull %i.h) #26
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN5faiss10BufferListC2Em(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, i64 noundef %1) unnamed_addr #14 align 2 {
bb.a:
  store i64 %1, ptr %0, align 8, !tbaa !38
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %1, ptr %i.b, align 8, !tbaa !45
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5faiss10BufferListD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(40) dereferenceable(40) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !47   ; 4 uses
  %i.e = ptrtoint ptr %i.d to i64
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %.lcssa6 = phi ptr [ %i.d, %bb.a ], [ %i.s, %bb.f ] ; 2 uses
  %.lcssa = phi i64 [ %i.e, %bb.a ], [ %i.w, %bb.f ]
  %.not.i.i.i = icmp eq ptr %.lcssa6, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5faiss10BufferList6BufferESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !48
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = sub i64 %i.h, %.lcssa
  tail call void @_ZdlPvm(ptr noundef nonnull %.lcssa6, i64 noundef %i.i) #26
  br label %_ZNSt6vectorIN5faiss10BufferList6BufferESaIS2_EED2Ev.exit

_ZNSt6vectorIN5faiss10BufferList6BufferESaIS2_EED2Ev.exit: ; preds = %._crit_edge, %bb.b
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %i.j = phi ptr [ %i.s, %bb.f ], [ %i.d, %bb.a ] ; 2 uses
  %.07 = phi i64 [ %i.t, %bb.f ], [ 0, %bb.a ]    ; 3 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %.07
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !49   ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  tail call void @_ZdaPv(ptr noundef nonnull %i.l) #26
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !47
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %i.n = phi ptr [ %.pre, %bb.c ], [ %i.j, %.lr.ph ] ; 2 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.07
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !51   ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdaPv(ptr noundef nonnull %i.q) #26
  %.pre11 = load ptr, ptr %i.a, align 8, !tbaa !47
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.s = phi ptr [ %i.n, %bb.d ], [ %.pre11, %bb.e ] ; 3 uses
  %i.t = add nuw i64 %.07, 1                      ; 2 uses
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64                 ; 2 uses
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 4
  %i.z = icmp ult i64 %i.t, %i.y
  br i1 %i.z, label %.lr.ph, label %._crit_edge, !llvm.loop !52
}

; Function Attrs: mustprogress uwtable
define void @_ZN5faiss10BufferList3addElf(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, i64 noundef %1, float noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !45   ; 2 uses
  %i.c = load i64, ptr %0, align 8, !tbaa !38
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5faiss10BufferList13append_bufferEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %.pre = load i64, ptr %i.a, align 8, !tbaa !45
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = phi i64 [ %.pre, %bb.b ], [ %i.b, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !53   ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !49
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.e
  store i64 %1, ptr %i.j, align 8, !tbaa !18
  %i.k = getelementptr inbounds i8, ptr %i.g, i64 -8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !51
  %i.m = load i64, ptr %i.a, align 8, !tbaa !45   ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.m
  store float %2, ptr %i.n, align 4, !tbaa !54
  %i.o = add i64 %i.m, 1
  store i64 %i.o, ptr %i.a, align 8, !tbaa !45
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5faiss10BufferList13append_bufferEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !38     ; 2 uses
  %i.b = icmp ugt i64 %i.a, 2305843009213693951
  %i.c = shl i64 %i.a, 3
  %i.d = select i1 %i.b, i64 -1, i64 %i.c
  %i.e = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.d) #27 ; 2 uses
  %i.f = load i64, ptr %0, align 8, !tbaa !38     ; 2 uses
  %i.g = icmp ugt i64 %i.f, 4611686018427387903
  %i.h = shl i64 %i.f, 2
  %i.i = select i1 %i.g, i64 -1, i64 %i.h
  %i.j = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.i) #27 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !46   ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !48
  %.not.i = icmp eq ptr %i.m, %i.o
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.e, ptr %i.m, align 8, !tbaa !56
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.j, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !57
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.p, ptr %i.l, align 8, !tbaa !46
  br label %_ZNSt6vectorIN5faiss10BufferList6BufferESaIS2_EE9push_backERKS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !47   ; 4 uses
  %i.r = ptrtoint ptr %i.m to i64
  %i.s = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.t = sub i64 %i.r, %i.s                       ; 5 uses
  %i.u = icmp eq i64 %i.t, 9223372036854775792
  br i1 %i.u, label %bb.d, label %_ZNKSt6vectorIN5faiss10BufferList6BufferESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #25
  unreachable

_ZNKSt6vectorIN5faiss10BufferList6BufferESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.v = ashr exact i64 %i.t, 4                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.v, i64 1)
  %i.w = add nsw i64 %.sroa.speculated.i.i.i, %i.v ; 2 uses
  %i.x = icmp ult i64 %i.w, %i.v
  %i.y = tail call i64 @llvm.umin.i64(i64 %i.w, i64 576460752303423487)
  %i.z = select i1 %i.x, i64 576460752303423487, i64 %i.y ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.z, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.aa = shl nuw nsw i64 %i.z, 4
  %i.ab = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #27 ; 4 uses
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 %i.t ; 3 uses
  store ptr %i.e, ptr %i.ac, align 8, !tbaa !56
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %i.j, ptr %.sroa.5.0..sroa_idx2, align 8, !tbaa !57
  %i.ad = icmp sgt i64 %i.t, 0
  br i1 %i.ad, label %bb.e, label %_ZNSt6vectorIN5faiss10BufferList6BufferESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIN5faiss10BufferList6BufferESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ab, ptr align 8 %i.q, i64 %i.t, i1 false)
  br label %_ZNSt6vectorIN5faiss10BufferList6BufferESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIN5faiss10BufferList6BufferESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.e, %_ZNKSt6vectorIN5faiss10BufferList6BufferESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.not.i17.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIN5faiss10BufferList6BufferESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN5faiss10BufferList6BufferESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  %i.af = load ptr, ptr %i.n, align 8, !tbaa !48
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %i.ag, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.ah) #26
  br label %_ZNSt6vectorIN5faiss10BufferList6BufferESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN5faiss10BufferList6BufferESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIN5faiss10BufferList6BufferESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.ab, ptr %i.k, align 8, !tbaa !47
  store ptr %i.ae, ptr %i.l, align 8, !tbaa !46
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %i.z
  store ptr %i.ai, ptr %i.n, align 8, !tbaa !48
  br label %_ZNSt6vectorIN5faiss10BufferList6BufferESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN5faiss10BufferList6BufferESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.b, %_ZNSt6vectorIN5faiss10BufferList6BufferESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.aj, align 8, !tbaa !45
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5faiss10BufferList10copy_rangeEmmPlPf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #15 align 2 {
bb.a:
  %.not27 = icmp eq i64 %2, 0
  br i1 %.not27, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = load i64, ptr %0, align 8, !tbaa !38     ; 5 uses
  %i.b = udiv i64 %1, %i.a                        ; 3 uses
  %i.c = mul i64 %i.b, %i.a                       ; 0 uses
  %.recomposed = urem i64 %1, %i.a                ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = add i64 %.recomposed, %2
  %i.f = icmp ult i64 %i.e, %i.a
  %i.g = sub i64 %i.a, %.recomposed
  %i.h = select i1 %i.f, i64 %2, i64 %i.g         ; 5 uses
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !47
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.b ; 2 uses
  %.sroa.0.0.copyload.peel = load ptr, ptr %i.j, align 8, !tbaa !56
  %.sroa.4.0..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.4.0.copyload.peel = load ptr, ptr %.sroa.4.0..sroa_idx.peel, align 8, !tbaa !57
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.peel, i64 %.recomposed
  %i.l = shl i64 %i.h, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %3, ptr align 8 %i.k, i64 %i.l, i1 false)
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %.sroa.4.0.copyload.peel, i64 %.recomposed
  %i.n = shl i64 %i.h, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %4, ptr align 4 %i.m, i64 %i.n, i1 false)
  %i.o = sub i64 %2, %i.h                         ; 2 uses
  %.not.peel = icmp eq i64 %i.o, 0
  br i1 %.not.peel, label %._crit_edge, label %.peel.next

.peel.next:                                       ; preds = %.lr.ph
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.h
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.h
  br label %bb.b

bb.b:                                             ; preds = %.peel.next, %bb.b
  %.02231 = phi i64 [ %i.o, %.peel.next ], [ %i.z, %bb.b ] ; 2 uses
  %.02330.in = phi i64 [ %i.b, %.peel.next ], [ %.02330, %bb.b ]
  %.02429 = phi ptr [ %i.p, %.peel.next ], [ %i.y, %bb.b ] ; 2 uses
  %.02528 = phi ptr [ %i.q, %.peel.next ], [ %i.x, %bb.b ] ; 2 uses
  %.02330 = add i64 %.02330.in, 1                 ; 2 uses
  %i.r = load i64, ptr %0, align 8, !tbaa !38
  %i.s = tail call i64 @llvm.umin.i64(i64 %.02231, i64 %i.r) ; 5 uses
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !47
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %.02330 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.u, align 8, !tbaa !56
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !57
  %i.v = shl i64 %i.s, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %.02528, ptr align 8 %.sroa.0.0.copyload, i64 %i.v, i1 false)
  %i.w = shl i64 %i.s, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.02429, ptr align 4 %.sroa.4.0.copyload, i64 %i.w, i1 false)
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.02528, i64 %i.s
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.02429, i64 %i.s
  %i.z = sub i64 %.02231, %i.s                    ; 2 uses
  %.not = icmp eq i64 %i.z, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !58

._crit_edge:                                      ; preds = %bb.b, %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5faiss16RangeQueryResult3addEfl(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, float noundef %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !60
  %i.c = add i64 %i.b, 1
  store i64 %i.c, ptr %i.a, align 8, !tbaa !60
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !64   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !45   ; 2 uses
  %i.h = load i64, ptr %i.e, align 8, !tbaa !38
  %i.i = icmp eq i64 %i.g, %i.h
  br i1 %i.i, label %bb.b, label %_ZN5faiss10BufferList3addElf.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5faiss10BufferList13append_bufferEv(ptr noundef nonnull align 8 dereferenceable(40) %i.e)
  %.pre.i = load i64, ptr %i.f, align 8, !tbaa !45
  br label %_ZN5faiss10BufferList3addElf.exit

_ZN5faiss10BufferList3addElf.exit:                ; preds = %bb.a, %bb.b
  %i.j = phi i64 [ %.pre.i, %bb.b ], [ %i.g, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !53   ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !49
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.j
  store i64 %2, ptr %i.o, align 8, !tbaa !18
  %i.p = getelementptr inbounds i8, ptr %i.l, i64 -8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !51
  %i.r = load i64, ptr %i.f, align 8, !tbaa !45   ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.r
  store float %1, ptr %i.s, align 4, !tbaa !54
  %i.t = add i64 %i.r, 1
  store i64 %i.t, ptr %i.f, align 8, !tbaa !45
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN5faiss24RangeSearchPartialResultC2EPNS_17RangeSearchResultE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(72) initializes((0, 72)) %0, ptr noundef %1) unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !36   ; 2 uses
  store i64 %i.b, ptr %0, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.b, ptr %i.d, align 8, !tbaa !45
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %1, ptr %i.e, align 8, !tbaa !65
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(40) ptr @_ZN5faiss24RangeSearchPartialResult10new_resultEl(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !73   ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !74
  %.not.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %1, ptr %i.c, align 8, !tbaa !18
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !18
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %0, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !75
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr %i.f, ptr %i.b, align 8, !tbaa !73
  br label %_ZNSt6vectorIN5faiss16RangeQueryResultESaIS1_EE9push_backERKS1_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !76   ; 5 uses
  %i.h = ptrtoint ptr %i.c to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = sub i64 %i.h, %i.i                       ; 3 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775800
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorIN5faiss16RangeQueryResultESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #25
  unreachable

_ZNKSt6vectorIN5faiss16RangeQueryResultESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.l = sdiv exact i64 %i.j, 40                  ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.m = add nsw i64 %.sroa.speculated.i.i.i, %i.l ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.l
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 230584300921369395)
  %i.p = select i1 %i.n, i64 230584300921369395, i64 %i.o ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.q = mul nuw nsw i64 %i.p, 40
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #27 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.j ; 4 uses
  store i64 %1, ptr %i.s, align 8, !tbaa !18
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 0, ptr %.sroa.5.0..sroa_idx2, align 8, !tbaa !18
  %.sroa.6.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %0, ptr %.sroa.6.0..sroa_idx4, align 8, !tbaa !75
  %.sroa.7.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %.not10.i.i.i.i.i = icmp eq ptr %i.g, %i.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx6, i8 0, i64 16, i1 false)
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN5faiss16RangeQueryResultESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN5faiss16RangeQueryResultESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i ], [ %i.r, %_ZNKSt6vectorIN5faiss16RangeQueryResultESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i ], [ %i.g, %_ZNKSt6vectorIN5faiss16RangeQueryResultESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i.i.i, i64 40, i1 false), !tbaa.struct !77, !alias.scope !78
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 40 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.t, %i.c
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN5faiss16RangeQueryResultESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !82

_ZNSt6vectorIN5faiss16RangeQueryResultESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN5faiss16RangeQueryResultESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.r, %_ZNKSt6vectorIN5faiss16RangeQueryResultESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.u, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 40
  %.not.i23.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN5faiss16RangeQueryResultESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN5faiss16RangeQueryResultESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !74
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.y) #26
  br label %_ZNSt6vectorIN5faiss16RangeQueryResultESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN5faiss16RangeQueryResultESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorIN5faiss16RangeQueryResultESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.r, ptr %i.a, align 8, !tbaa !76
  store ptr %i.v, ptr %i.b, align 8, !tbaa !73
  %i.z = getelementptr inbounds nuw [40 x i8], ptr %i.r, i64 %i.p
  store ptr %i.z, ptr %i.d, align 8, !tbaa !74
  br label %_ZNSt6vectorIN5faiss16RangeQueryResultESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN5faiss16RangeQueryResultESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.b, %_ZNSt6vectorIN5faiss16RangeQueryResultESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.aa = phi ptr [ %i.c, %bb.b ], [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorIN5faiss16RangeQueryResultESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ]
  ret ptr %i.aa
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5faiss24RangeSearchPartialResult8finalizeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !73   ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !76   ; 7 uses
  %.not.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i, label %_ZN5faiss24RangeSearchPartialResult8set_limsEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 40                  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !65
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !17   ; 5 uses
  %xtraiter = and i64 %i.i, 3                     ; 3 uses
  %i.n = icmp ult i64 %i.i, 4
  br i1 %i.n, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.i, -4
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.new
  %.05.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.al, %bb.b ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.b ]
  %i.o = getelementptr inbounds nuw [40 x i8], ptr %i.e, i64 %.05.i ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !60
  %i.r = load i64, ptr %i.o, align 8, !tbaa !83
  %i.s = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.r
  store i64 %i.q, ptr %i.s, align 8, !tbaa !18
  %i.t = getelementptr inbounds nuw [40 x i8], ptr %i.e, i64 %.05.i ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.w = load i64, ptr %i.v, align 8, !tbaa !60
  %i.x = load i64, ptr %i.u, align 8, !tbaa !83
  %i.y = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.x
  store i64 %i.w, ptr %i.y, align 8, !tbaa !18
  %i.z = getelementptr inbounds nuw [40 x i8], ptr %i.e, i64 %.05.i ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 80
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 88
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !60
  %i.ad = load i64, ptr %i.aa, align 8, !tbaa !83
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.ad
  store i64 %i.ac, ptr %i.ae, align 8, !tbaa !18
  %i.af = getelementptr inbounds nuw [40 x i8], ptr %i.e, i64 %.05.i ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 120
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 128
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !60
  %i.aj = load i64, ptr %i.ag, align 8, !tbaa !83
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.aj
  store i64 %i.ai, ptr %i.ak, align 8, !tbaa !18
  %i.al = add nuw i64 %.05.i, 4                   ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5faiss24RangeSearchPartialResult8set_limsEv.exit.loopexit.unr-lcssa, label %bb.b, !llvm.loop !84

_ZN5faiss24RangeSearchPartialResult8set_limsEv.exit.loopexit.unr-lcssa: ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5faiss24RangeSearchPartialResult8set_limsEv.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN5faiss24RangeSearchPartialResult8set_limsEv.exit.loopexit.unr-lcssa, %.lr.ph.i
  %.05.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.al, %_ZN5faiss24RangeSearchPartialResult8set_limsEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod8 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod8)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %.05.i.epil = phi i64 [ %.05.i.epil.init, %.epil.preheader ], [ %i.ar, %bb.c ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.am = getelementptr inbounds nuw [40 x i8], ptr %i.e, i64 %.05.i.epil ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !60
  %i.ap = load i64, ptr %i.am, align 8, !tbaa !83
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.ap
  store i64 %i.ao, ptr %i.aq, align 8, !tbaa !18
  %i.ar = add nuw i64 %.05.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5faiss24RangeSearchPartialResult8set_limsEv.exit, label %bb.c, !llvm.loop !85

_ZN5faiss24RangeSearchPartialResult8set_limsEv.exit: ; preds = %_ZN5faiss24RangeSearchPartialResult8set_limsEv.exit.loopexit.unr-lcssa, %bb.c, %bb.a
  tail call void @__kmpc_barrier(ptr nonnull @1, i32 %i.a)
  %i.as = tail call i32 @__kmpc_single(ptr nonnull @2, i32 %i.a)
  %.not = icmp eq i32 %i.as, 0
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZN5faiss24RangeSearchPartialResult8set_limsEv.exit
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !65 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !34
  %i.aw = load ptr, ptr %i.av, align 8
  invoke void %i.aw(ptr noundef nonnull align 8 dereferenceable(48) %i.au)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  tail call void @__kmpc_end_single(ptr nonnull @2, i32 %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN5faiss24RangeSearchPartialResult8set_limsEv.exit
  tail call void @__kmpc_barrier(ptr nonnull @3, i32 %i.a)
  tail call void @__kmpc_barrier(ptr nonnull @1, i32 %i.a)
  %i.ax = load ptr, ptr %i.c, align 8, !tbaa !73
  %i.ay = load ptr, ptr %i.b, align 8, !tbaa !76  ; 2 uses
  %.not.i1 = icmp eq ptr %i.ax, %i.ay
  br i1 %.not.i1, label %_ZN5faiss24RangeSearchPartialResult11copy_resultEb.exit, label %.lr.ph.i2

.lr.ph.i2:                                        ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZN5faiss10BufferList10copy_rangeEmmPlPf.exit.i, %.lr.ph.i2
  %i.bb = phi ptr [ %i.ay, %.lr.ph.i2 ], [ %i.ct, %_ZN5faiss10BufferList10copy_rangeEmmPlPf.exit.i ]
  %.014.i = phi i64 [ 0, %.lr.ph.i2 ], [ %i.cr, %_ZN5faiss10BufferList10copy_rangeEmmPlPf.exit.i ] ; 2 uses
  %.01213.i = phi i64 [ 0, %.lr.ph.i2 ], [ %i.cq, %_ZN5faiss10BufferList10copy_rangeEmmPlPf.exit.i ] ; 3 uses
  %i.bc = getelementptr inbounds nuw [40 x i8], ptr %i.bb, i64 %.014.i ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !60 ; 4 uses
  %i.bf = load ptr, ptr %i.az, align 8, !tbaa !65 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !9
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !17
  %i.bk = load i64, ptr %i.bc, align 8, !tbaa !83
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.bk
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !18 ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bm ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !15
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bm ; 2 uses
  %.not27.i.i = icmp eq i64 %i.be, 0
  br i1 %.not27.i.i, label %_ZN5faiss10BufferList10copy_rangeEmmPlPf.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g
  %i.br = load i64, ptr %0, align 8, !tbaa !38    ; 5 uses
  %i.bs = udiv i64 %.01213.i, %i.br               ; 3 uses
  %i.bt = mul i64 %i.bs, %i.br                    ; 0 uses
  %.recomposed = urem i64 %.01213.i, %i.br        ; 4 uses
  %i.bu = add i64 %.recomposed, %i.be
  %i.bv = icmp ult i64 %i.bu, %i.br
  %i.bw = sub i64 %i.br, %.recomposed
  %i.bx = select i1 %i.bv, i64 %i.be, i64 %i.bw   ; 5 uses
  %i.by = load ptr, ptr %i.ba, align 8, !tbaa !47
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.by, i64 %i.bs ; 2 uses
  %.sroa.0.0.copyload.peel.i.i = load ptr, ptr %i.bz, align 8, !tbaa !56
  %.sroa.4.0..sroa_idx.peel.i.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %.sroa.4.0.copyload.peel.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.peel.i.i, align 8, !tbaa !57
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.peel.i.i, i64 %.recomposed
  %i.cb = shl i64 %i.bx, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.bn, ptr align 8 %i.ca, i64 %i.cb, i1 false)
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.4.0.copyload.peel.i.i, i64 %.recomposed
  %i.cd = shl i64 %i.bx, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bq, ptr align 4 %i.cc, i64 %i.cd, i1 false)
  %i.ce = sub i64 %i.be, %i.bx                    ; 2 uses
end_hunk_0
