inline.NumInlined: 296
inline.NumDeleted: 180
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN5faiss10BufferList10copy_rangeEmmPlPf:bb.a
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
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
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
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 4 uses
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
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.j) #26
  br label %_ZNSt6vectorIN5faiss16RangeQueryResultESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN5faiss16RangeQueryResultESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorIN5faiss16RangeQueryResultESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.r, ptr %i.a, align 8, !tbaa !76
  store ptr %i.v, ptr %i.b, align 8, !tbaa !73
  %i.w = getelementptr inbounds nuw [40 x i8], ptr %i.r, i64 %i.p
  store ptr %i.w, ptr %i.d, align 8, !tbaa !74
  br label %_ZNSt6vectorIN5faiss16RangeQueryResultESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN5faiss16RangeQueryResultESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.b, %_ZNSt6vectorIN5faiss16RangeQueryResultESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.x = phi ptr [ %i.c, %bb.b ], [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorIN5faiss16RangeQueryResultESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ]
  ret ptr %i.x
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
  %.not.peel.i.i = icmp eq i64 %i.ce, 0
  br i1 %.not.peel.i.i, label %_ZN5faiss10BufferList10copy_rangeEmmPlPf.exit.i, label %.peel.next.i.i

.peel.next.i.i:                                   ; preds = %.lr.ph.i.i
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.bx
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bx
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.peel.next.i.i
  %.02231.i.i = phi i64 [ %i.ce, %.peel.next.i.i ], [ %i.cp, %bb.h ] ; 2 uses
  %.02330.in.i.i = phi i64 [ %i.bs, %.peel.next.i.i ], [ %.02330.i.i, %bb.h ]
  %.02429.i.i = phi ptr [ %i.cf, %.peel.next.i.i ], [ %i.co, %bb.h ] ; 2 uses
  %.02528.i.i = phi ptr [ %i.cg, %.peel.next.i.i ], [ %i.cn, %bb.h ] ; 2 uses
  %.02330.i.i = add i64 %.02330.in.i.i, 1         ; 2 uses
  %i.ch = load i64, ptr %0, align 8, !tbaa !38
  %i.ci = tail call i64 @llvm.umin.i64(i64 %.02231.i.i, i64 %i.ch) ; 5 uses
  %i.cj = load ptr, ptr %i.ba, align 8, !tbaa !47
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %.02330.i.i ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.ck, align 8, !tbaa !56
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !57
  %i.cl = shl i64 %i.ci, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %.02528.i.i, ptr align 8 %.sroa.0.0.copyload.i.i, i64 %i.cl, i1 false)
  %i.cm = shl i64 %i.ci, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.02429.i.i, ptr align 4 %.sroa.4.0.copyload.i.i, i64 %i.cm, i1 false)
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %.02528.i.i, i64 %i.ci
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %.02429.i.i, i64 %i.ci
  %i.cp = sub i64 %.02231.i.i, %i.ci              ; 2 uses
  %.not.i.i = icmp eq i64 %i.cp, 0
  br i1 %.not.i.i, label %_ZN5faiss10BufferList10copy_rangeEmmPlPf.exit.i, label %bb.h, !llvm.loop !58

_ZN5faiss10BufferList10copy_rangeEmmPlPf.exit.i:  ; preds = %bb.h, %.lr.ph.i.i, %bb.g
  %.pre15.i = load i64, ptr %i.bd, align 8, !tbaa !60
  %i.cq = add i64 %.pre15.i, %.01213.i
  %i.cr = add nuw i64 %.014.i, 1                  ; 2 uses
  %i.cs = load ptr, ptr %i.c, align 8, !tbaa !73
  %i.ct = load ptr, ptr %i.b, align 8, !tbaa !76  ; 2 uses
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = sub i64 %i.cu, %i.cv
  %i.cx = sdiv exact i64 %i.cw, 40
  %i.cy = icmp ult i64 %i.cr, %i.cx
  br i1 %i.cy, label %bb.g, label %_ZN5faiss24RangeSearchPartialResult11copy_resultEb.exit, !llvm.loop !87

_ZN5faiss24RangeSearchPartialResult11copy_resultEb.exit: ; preds = %_ZN5faiss10BufferList10copy_rangeEmmPlPf.exit.i, %bb.f
  ret void

bb.i:                                             ; preds = %bb.d
  %i.cz = landingpad { ptr, i32 }
          catch ptr null
  %i.da = extractvalue { ptr, i32 } %i.cz, 0
  tail call void @__clang_call_terminate(ptr %i.da) #28
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5faiss24RangeSearchPartialResult8set_limsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !73   ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !76   ; 7 uses
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 40                  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !65
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !17   ; 5 uses
  %xtraiter = and i64 %i.h, 3                     ; 3 uses
  %i.m = icmp ult i64 %i.h, 4
  br i1 %i.m, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.h, -4
  br label %bb.c

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.05.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.aq, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod6 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod6)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %.05.epil = phi i64 [ %.05.epil.init, %.epil.preheader ], [ %i.s, %bb.b ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.n = getelementptr inbounds nuw [40 x i8], ptr %i.d, i64 %.05.epil ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !60
  %i.q = load i64, ptr %i.n, align 8, !tbaa !83
  %i.r = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.q
  store i64 %i.p, ptr %i.r, align 8, !tbaa !18
  %i.s = add nuw i64 %.05.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.b, !llvm.loop !88

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.b, %bb.a
  ret void

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %.05 = phi i64 [ 0, %.lr.ph.new ], [ %i.aq, %bb.c ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.c ]
  %i.t = getelementptr inbounds nuw [40 x i8], ptr %i.d, i64 %.05 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !60
  %i.w = load i64, ptr %i.t, align 8, !tbaa !83
  %i.x = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.w
  store i64 %i.v, ptr %i.x, align 8, !tbaa !18
  %i.y = getelementptr inbounds nuw [40 x i8], ptr %i.d, i64 %.05 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !60
  %i.ac = load i64, ptr %i.z, align 8, !tbaa !83
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.ac
  store i64 %i.ab, ptr %i.ad, align 8, !tbaa !18
  %i.ae = getelementptr inbounds nuw [40 x i8], ptr %i.d, i64 %.05 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 80
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 88
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !60
  %i.ai = load i64, ptr %i.af, align 8, !tbaa !83
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.ai
  store i64 %i.ah, ptr %i.aj, align 8, !tbaa !18
  %i.ak = getelementptr inbounds nuw [40 x i8], ptr %i.d, i64 %.05 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 120
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 128
  %i.an = load i64, ptr %i.am, align 8, !tbaa !60
  %i.ao = load i64, ptr %i.al, align 8, !tbaa !83
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.ao
  store i64 %i.an, ptr %i.ap, align 8, !tbaa !18
  %i.aq = add nuw i64 %.05, 4                     ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.c, !llvm.loop !84
}

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #17

; Function Attrs: convergent nounwind
declare void @__kmpc_barrier(ptr, i32) local_unnamed_addr #18

; Function Attrs: convergent nounwind
declare i32 @__kmpc_single(ptr, i32) local_unnamed_addr #18

; Function Attrs: convergent nounwind
declare void @__kmpc_end_single(ptr, i32) local_unnamed_addr #18

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5faiss24RangeSearchPartialResult11copy_resultEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, i1 noundef zeroext %1) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !73
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !76   ; 2 uses
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.e, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %i.g = phi ptr [ %i.d, %.lr.ph ], [ %i.bg, %bb.e ]
  %.014 = phi i64 [ 0, %.lr.ph ], [ %i.be, %bb.e ] ; 2 uses
  %.01213 = phi i64 [ 0, %.lr.ph ], [ %i.bd, %bb.e ] ; 3 uses
  %i.h = getelementptr inbounds nuw [40 x i8], ptr %i.g, i64 %.014 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !60   ; 4 uses
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !65   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !9
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !17
  %i.p = load i64, ptr %i.h, align 8, !tbaa !83
  %i.q = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !18   ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.r ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !15
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.r ; 2 uses
  %.not27.i = icmp eq i64 %i.j, 0
  br i1 %.not27.i, label %_ZN5faiss10BufferList10copy_rangeEmmPlPf.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.w = load i64, ptr %0, align 8, !tbaa !38     ; 5 uses
  %i.x = udiv i64 %.01213, %i.w                   ; 3 uses
  %i.y = mul i64 %i.x, %i.w                       ; 0 uses
  %.recomposed = urem i64 %.01213, %i.w           ; 4 uses
  %i.z = add i64 %.recomposed, %i.j
  %i.aa = icmp ult i64 %i.z, %i.w
  %i.ab = sub i64 %i.w, %.recomposed
  %i.ac = select i1 %i.aa, i64 %i.j, i64 %i.ab    ; 5 uses
  %i.ad = load ptr, ptr %i.f, align 8, !tbaa !47
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %i.x ; 2 uses
  %.sroa.0.0.copyload.peel.i = load ptr, ptr %i.ae, align 8, !tbaa !56
  %.sroa.4.0..sroa_idx.peel.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.4.0.copyload.peel.i = load ptr, ptr %.sroa.4.0..sroa_idx.peel.i, align 8, !tbaa !57
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.peel.i, i64 %.recomposed
  %i.ag = shl i64 %i.ac, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.s, ptr align 8 %i.af, i64 %i.ag, i1 false)
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.sroa.4.0.copyload.peel.i, i64 %.recomposed
  %i.ai = shl i64 %i.ac, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.v, ptr align 4 %i.ah, i64 %i.ai, i1 false)
  %i.aj = sub i64 %i.j, %i.ac                     ; 2 uses
  %.not.peel.i = icmp eq i64 %i.aj, 0
  br i1 %.not.peel.i, label %_ZN5faiss10BufferList10copy_rangeEmmPlPf.exit, label %.peel.next.i

.peel.next.i:                                     ; preds = %.lr.ph.i
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.ac
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.ac
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.peel.next.i
  %.02231.i = phi i64 [ %i.aj, %.peel.next.i ], [ %i.au, %bb.c ] ; 2 uses
  %.02330.in.i = phi i64 [ %i.x, %.peel.next.i ], [ %.02330.i, %bb.c ]
  %.02429.i = phi ptr [ %i.ak, %.peel.next.i ], [ %i.at, %bb.c ] ; 2 uses
  %.02528.i = phi ptr [ %i.al, %.peel.next.i ], [ %i.as, %bb.c ] ; 2 uses
  %.02330.i = add i64 %.02330.in.i, 1             ; 2 uses
  %i.am = load i64, ptr %0, align 8, !tbaa !38
  %i.an = tail call i64 @llvm.umin.i64(i64 %.02231.i, i64 %i.am) ; 5 uses
  %i.ao = load ptr, ptr %i.f, align 8, !tbaa !47
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %.02330.i ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.ap, align 8, !tbaa !56
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !57
  %i.aq = shl i64 %i.an, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %.02528.i, ptr align 8 %.sroa.0.0.copyload.i, i64 %i.aq, i1 false)
  %i.ar = shl i64 %i.an, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.02429.i, ptr align 4 %.sroa.4.0.copyload.i, i64 %i.ar, i1 false)
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.02528.i, i64 %i.an
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.02429.i, i64 %i.an
  %i.au = sub i64 %.02231.i, %i.an                ; 2 uses
  %.not.i = icmp eq i64 %i.au, 0
  br i1 %.not.i, label %_ZN5faiss10BufferList10copy_rangeEmmPlPf.exit, label %bb.c, !llvm.loop !58

_ZN5faiss10BufferList10copy_rangeEmmPlPf.exit:    ; preds = %bb.c, %bb.b, %.lr.ph.i
  %.pre15 = load i64, ptr %i.i, align 8, !tbaa !60 ; 2 uses
  br i1 %1, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN5faiss10BufferList10copy_rangeEmmPlPf.exit
  %i.av = load ptr, ptr %i.e, align 8, !tbaa !65
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !17
  %i.ay = load i64, ptr %i.h, align 8, !tbaa !83
  %i.az = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.ay ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !18
  %i.bb = add i64 %i.ba, %.pre15
  store i64 %i.bb, ptr %i.az, align 8, !tbaa !18
  %.pre = load i64, ptr %i.i, align 8, !tbaa !60
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN5faiss10BufferList10copy_rangeEmmPlPf.exit
  %i.bc = phi i64 [ %.pre, %bb.d ], [ %.pre15, %_ZN5faiss10BufferList10copy_rangeEmmPlPf.exit ]
  %i.bd = add i64 %i.bc, %.01213
  %i.be = add nuw i64 %.014, 1                    ; 2 uses
  %i.bf = load ptr, ptr %i.b, align 8, !tbaa !73
  %i.bg = load ptr, ptr %i.a, align 8, !tbaa !76  ; 2 uses
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = sdiv exact i64 %i.bj, 40
  %i.bl = icmp ult i64 %i.be, %i.bk
  br i1 %i.bl, label %bb.b, label %._crit_edge, !llvm.loop !87
}

; Function Attrs: mustprogress uwtable
end_hunk_0
