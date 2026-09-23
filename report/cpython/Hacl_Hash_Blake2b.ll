Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/Hacl_Hash_Blake2b?download=true
inline.NumInlined: 123
inline.NumDeleted: 15
begin_hunk_0_@_Py_LibHacl_Hacl_Hash_Blake2b_malloc_with_params_and_key:bb.a
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %malloc_raw.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias dereferenceable_or_null(128) ptr @calloc(i64 noundef 16, i64 noundef 8) #17 ; 4 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noalias dereferenceable_or_null(128) ptr @calloc(i64 noundef 16, i64 noundef 8) #17 ; 17 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.thread.i, label %bb.d

.thread.i:                                        ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.d) #16
  br label %.critedge.i

.critedge.i:                                      ; preds = %.thread.i, %bb.b
  tail call void @free(ptr noundef nonnull %i.b) #16
  br label %malloc_raw.exit

bb.d:                                             ; preds = %bb.c
  %i.h = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #18 ; 9 uses
  %cond.i = icmp eq ptr %i.h, null
  br i1 %cond.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i = icmp eq i8 %.sroa.43.0.copyload, 0    ; 2 uses
  %.0185.i = select i1 %.not.i, i64 0, i64 128
  %i.i = zext i1 %1 to i8
  store i16 %i.a, ptr %i.h, align 8
  %.sroa.0109.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  store i8 %i.i, ptr %.sroa.0109.sroa.4.0..sroa_idx.i, align 2, !tbaa !16
  %.sroa.0109.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.sroa.0109.sroa.5.0..sroa_idx.i, i8 0, i64 5, i1 false)
  %.sroa.0109.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.d, ptr %.sroa.0109.sroa.6.0..sroa_idx.i, align 8, !tbaa !19
  %.sroa.0109.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.f, ptr %.sroa.0109.sroa.7.0..sroa_idx.i, align 8, !tbaa !19
  %.sroa.4110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.b, ptr %.sroa.4110.0..sroa_idx.i, align 8, !tbaa !21
  %.sroa.5111.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i64 %.0185.i, ptr %.sroa.5111.0..sroa_idx.i, align 8, !tbaa !12
  br i1 %.not.i, label %._crit_edge.i, label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.d) #16
  tail call void @free(ptr noundef nonnull %i.f) #16
  tail call void @free(ptr noundef nonnull %i.b) #16
  br label %malloc_raw.exit

bb.g:                                             ; preds = %bb.e
  %i.j = zext i8 %.sroa.43.0.copyload to i64      ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.b, ptr readonly align 1 %2, i64 %i.j, i1 false)
  %i.k = shl nuw nsw i64 %i.j, 8
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.g, %bb.e
  %.pre-phi.i = phi i64 [ %i.k, %bb.g ], [ 0, %bb.e ]
  %.sroa.0.0.copyload.i = load i8, ptr %0, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  %.sroa.5.0.copyload.i = load i8, ptr %.sroa.5.0..sroa_idx.i, align 2, !tbaa !14
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 3
  %.sroa.6.0.copyload.i = load i8, ptr %.sroa.6.0..sroa_idx.i, align 1, !tbaa !14
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.7.0.copyload.i = load i32, ptr %.sroa.7.0..sroa_idx.i, align 4, !tbaa !10
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.8.0.copyload.i = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !12
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.9.0.copyload.i = load i16, ptr %.sroa.9.0..sroa_idx.i, align 8
  %i.l = zext i16 %.sroa.9.0.copyload.i to i64
  %.sroa.1181.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.1181.0.copyload.i = load ptr, ptr %.sroa.1181.0..sroa_idx.i, align 8, !tbaa !21
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.13.0.copyload.i = load ptr, ptr %.sroa.13.0..sroa_idx.i, align 8, !tbaa !21
  %i.m = getelementptr i8, ptr %i.f, i64 32
  %i.n = getelementptr i8, ptr %i.f, i64 64
  %i.o = getelementptr i8, ptr %i.f, i64 96
  store i64 7640891576956012808, ptr %i.n, align 8, !tbaa !12
  %i.p = getelementptr i8, ptr %i.f, i64 72
  store i64 -4942790177534073029, ptr %i.p, align 8, !tbaa !12
  %i.q = getelementptr i8, ptr %i.f, i64 80
  store i64 4354685564936845355, ptr %i.q, align 8, !tbaa !12
  %i.r = getelementptr i8, ptr %i.f, i64 88
  store i64 -6534734903238641935, ptr %i.r, align 8, !tbaa !12
  store i64 5840696475078001361, ptr %i.o, align 8, !tbaa !12
  %i.s = getelementptr i8, ptr %i.f, i64 104
  store i64 -7276294671716946913, ptr %i.s, align 8, !tbaa !12
  %i.t = getelementptr i8, ptr %i.f, i64 112
  store i64 2270897969802886507, ptr %i.t, align 8, !tbaa !12
  %i.u = getelementptr i8, ptr %i.f, i64 120
  store i64 6620516959819538809, ptr %i.u, align 8, !tbaa !12
  %i.v = zext i8 %.sroa.0.0.copyload.i to i64
  %i.w = zext i8 %.sroa.5.0.copyload.i to i64
  %i.x = shl nuw nsw i64 %i.w, 16
  %i.y = zext i8 %.sroa.6.0.copyload.i to i64
  %i.z = shl nuw nsw i64 %i.y, 24
  %i.aa = zext i32 %.sroa.7.0.copyload.i to i64
  %i.ab = shl nuw i64 %i.aa, 32
  %i.ac = or disjoint i64 %.pre-phi.i, %i.v
  %i.ad = add nuw nsw i64 %i.x, %i.ac
  %i.ae = add nuw nsw i64 %i.ad, %i.z
  %i.af = add nuw nsw i64 %i.ae, %i.ab
  %i.ag = xor i64 %i.af, 7640891576956012808
  %i.ah = xor i64 %.sroa.8.0.copyload.i, -4942790177534073029
  %i.ai = xor i64 %i.l, 4354685564936845355
  %i.aj = getelementptr i8, ptr %i.f, i64 8
  %i.ak = getelementptr i8, ptr %i.f, i64 16
  %i.al = getelementptr i8, ptr %i.f, i64 24
  %i.am = load <2 x i64>, ptr %.sroa.1181.0.copyload.i, align 1
  %i.an = xor <2 x i64> %i.am, <i64 5840696475078001361, i64 -7276294671716946913>
  %i.ao = getelementptr i8, ptr %i.f, i64 48
  %i.ap = load <2 x i64>, ptr %.sroa.13.0.copyload.i, align 1
  %i.aq = xor <2 x i64> %i.ap, <i64 2270897969802886507, i64 6620516959819538809>
  store i64 %i.ag, ptr %i.f, align 8, !tbaa !12
  store i64 %i.ah, ptr %i.aj, align 8, !tbaa !12
  store i64 %i.ai, ptr %i.ak, align 8, !tbaa !12
  store i64 -6534734903238641935, ptr %i.al, align 8, !tbaa !12
  store <2 x i64> %i.an, ptr %i.m, align 8, !tbaa !12
  store <2 x i64> %i.aq, ptr %i.ao, align 8, !tbaa !12
  br label %malloc_raw.exit

malloc_raw.exit:                                  ; preds = %.critedge.i, %._crit_edge.i, %bb.f, %bb.a
  %.3.i = phi ptr [ null, %bb.a ], [ null, %.critedge.i ], [ %i.h, %._crit_edge.i ], [ null, %bb.f ]
  ret ptr %.3.i
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define hidden noundef ptr @_Py_LibHacl_Hacl_Hash_Blake2b_malloc_with_key(ptr nofree noundef readonly captures(none) %0, i8 noundef zeroext %1) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %2 = alloca %struct.Hacl_Hash_Blake2b_blake2_params_s, align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 18
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.11.0..sroa_idx, i8 0, i64 6, i1 false)
  store i8 64, ptr %2, align 8, !tbaa !14
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 %1, ptr %.sroa.4.0..sroa_idx, align 1, !tbaa !14
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 1, ptr %.sroa.5.0..sroa_idx, align 2, !tbaa !14
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 3
  store i8 1, ptr %.sroa.6.0..sroa_idx, align 1, !tbaa !14
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(14) %.sroa.7.0..sroa_idx, i8 0, i64 14, i1 false)
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !21
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.b, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !21
  %i.c = call ptr @_Py_LibHacl_Hacl_Hash_Blake2b_malloc_with_params_and_key(ptr noundef nonnull %2, i1 noundef zeroext false, ptr noundef %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret ptr %i.c
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define hidden noundef ptr @_Py_LibHacl_Hacl_Hash_Blake2b_malloc() local_unnamed_addr #7 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %0 = alloca %struct.Hacl_Hash_Blake2b_blake2_params_s, align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 18
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.11.0..sroa_idx.i, i8 0, i64 6, i1 false)
  store <4 x i8> <i8 64, i8 0, i8 1, i8 1>, ptr %0, align 8, !tbaa !14
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(14) %.sroa.7.0..sroa_idx.i, i8 0, i64 14, i1 false)
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx.i, align 8, !tbaa !21
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.b, ptr %.sroa.13.0..sroa_idx.i, align 8, !tbaa !21
  %i.c = call noundef ptr @_Py_LibHacl_Hacl_Hash_Blake2b_malloc_with_params_and_key(ptr noundef nonnull %0, i1 noundef zeroext false, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret ptr %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_Blake2b_reset_with_key_and_params(ptr nofree noundef captures(none) initializes((32, 40)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #8 {
bb.a:
  %.sroa.8121.i = alloca [13 x i8], align 1       ; 4 uses
  %.sroa.0.0.copyload.i = load i8, ptr %0, align 8, !tbaa !14 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.sroa.4.0.copyload.i = load i8, ptr %.sroa.4.0..sroa_idx.i, align 1, !tbaa !14
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %.sroa.5.0.copyload.i = load i8, ptr %.sroa.5.0..sroa_idx.i, align 2, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8121.i)
  %.sroa.6129.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %.sroa.8121.i, ptr noundef nonnull align 1 dereferenceable(13) %.sroa.6129.0..sroa_idx.i, i64 13, i1 false)
  %.sroa.7130.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.7130.0.copyload.i = load ptr, ptr %.sroa.7130.0..sroa_idx.i, align 8, !tbaa !19 ; 14 uses
  %.sroa.8131.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.8131.0.copyload.i = load ptr, ptr %.sroa.8131.0..sroa_idx.i, align 8, !tbaa !21 ; 3 uses
  %i.a = getelementptr i8, ptr %1, i64 1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !23    ; 2 uses
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %reset_raw.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = zext i8 %i.b to i64                      ; 3 uses
  %i.e = getelementptr i8, ptr %.sroa.8131.0.copyload.i, i64 %i.d
  %i.f = sub nsw i64 128, %i.d
  %i.g = and i64 %i.f, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.e, i8 0, i64 %i.g, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.8131.0.copyload.i, ptr readonly align 1 %2, i64 %i.d, i1 false)
  br label %reset_raw.exit

reset_raw.exit:                                   ; preds = %bb.a, %bb.b
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.9.0.copyload.i = load i16, ptr %.sroa.9.0..sroa_idx.i, align 8
  %i.h = zext i16 %.sroa.9.0.copyload.i to i64
  %.sroa.1186.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.1186.0.copyload.i = load ptr, ptr %.sroa.1186.0..sroa_idx.i, align 8, !tbaa !21
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.13.0.copyload.i = load ptr, ptr %.sroa.13.0..sroa_idx.i, align 8, !tbaa !21
  %3 = getelementptr i8, ptr %.sroa.7130.0.copyload.i, i64 32
  %i.i = getelementptr i8, ptr %.sroa.7130.0.copyload.i, i64 64
  %i.j = getelementptr i8, ptr %.sroa.7130.0.copyload.i, i64 96
  %i.k = getelementptr i8, ptr %.sroa.7130.0.copyload.i, i64 72
  %i.l = getelementptr i8, ptr %.sroa.7130.0.copyload.i, i64 80
  %i.m = getelementptr i8, ptr %.sroa.7130.0.copyload.i, i64 88
  %i.n = getelementptr i8, ptr %.sroa.7130.0.copyload.i, i64 104
  %i.o = getelementptr i8, ptr %.sroa.7130.0.copyload.i, i64 112
  %i.p = getelementptr i8, ptr %.sroa.7130.0.copyload.i, i64 120
  %4 = xor i64 %i.h, 4354685564936845355
  %i.q = load <2 x i64>, ptr %1, align 8
  store i64 7640891576956012808, ptr %i.i, align 8, !tbaa !12
  store i64 -4942790177534073029, ptr %i.k, align 8, !tbaa !12
  store i64 4354685564936845355, ptr %i.l, align 8, !tbaa !12
  store i64 -6534734903238641935, ptr %i.m, align 8, !tbaa !12
  store i64 5840696475078001361, ptr %i.j, align 8, !tbaa !12
  store i64 -7276294671716946913, ptr %i.n, align 8, !tbaa !12
  store i64 2270897969802886507, ptr %i.o, align 8, !tbaa !12
  store i64 6620516959819538809, ptr %i.p, align 8, !tbaa !12
  %i.r = xor <2 x i64> %i.q, <i64 7640891576956012808, i64 -4942790177534073029>
  %i.s = getelementptr i8, ptr %.sroa.7130.0.copyload.i, i64 16
  %5 = getelementptr i8, ptr %.sroa.7130.0.copyload.i, i64 24
  %6 = load <2 x i64>, ptr %.sroa.1186.0.copyload.i, align 1
  %7 = xor <2 x i64> %6, <i64 5840696475078001361, i64 -7276294671716946913>
  %8 = getelementptr i8, ptr %.sroa.7130.0.copyload.i, i64 48
  %9 = load <2 x i64>, ptr %.sroa.13.0.copyload.i, align 1
  %10 = xor <2 x i64> %9, <i64 2270897969802886507, i64 6620516959819538809>
  store <2 x i64> %i.r, ptr %.sroa.7130.0.copyload.i, align 8, !tbaa !12
  store i64 %4, ptr %i.s, align 8, !tbaa !12
  store i64 -6534734903238641935, ptr %5, align 8, !tbaa !12
  store <2 x i64> %7, ptr %3, align 8, !tbaa !12
  store <2 x i64> %10, ptr %8, align 8, !tbaa !12
  %.not.i = icmp eq i8 %.sroa.0.0.copyload.i, 0
  %..i = select i1 %.not.i, i64 0, i64 128
  %.sroa.9132.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sroa.0.0.copyload.i, ptr %0, align 8, !tbaa !14
  store i8 %.sroa.4.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i, align 1, !tbaa !14
  store i8 %.sroa.5.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i, align 2, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %.sroa.6129.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(13) %.sroa.8121.i, i64 13, i1 false)
  store ptr %.sroa.7130.0.copyload.i, ptr %.sroa.7130.0..sroa_idx.i, align 8, !tbaa !19
  store ptr %.sroa.8131.0.copyload.i, ptr %.sroa.8131.0..sroa_idx.i, align 8, !tbaa !21
  store i64 %..i, ptr %.sroa.9132.0..sroa_idx.i, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8121.i)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_Blake2b_reset_with_key(ptr nofree noundef captures(none) initializes((32, 40)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #8 {
bb.a:
  %.sroa.8121.i = alloca [13 x i8], align 1       ; 4 uses
  %.sroa.0.0.copyload.i = load i8, ptr %0, align 8, !tbaa !14 ; 3 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.sroa.4.0.copyload.i = load i8, ptr %.sroa.4.0..sroa_idx.i, align 1, !tbaa !14 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %.sroa.5.0.copyload.i = load i8, ptr %.sroa.5.0..sroa_idx.i, align 2, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8121.i)
  %.sroa.6129.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %.sroa.8121.i, ptr noundef nonnull align 1 dereferenceable(13) %.sroa.6129.0..sroa_idx.i, i64 13, i1 false)
  %.sroa.7130.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.7130.0.copyload.i = load ptr, ptr %.sroa.7130.0..sroa_idx.i, align 8, !tbaa !19 ; 17 uses
  %.sroa.8131.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.8131.0.copyload.i = load ptr, ptr %.sroa.8131.0..sroa_idx.i, align 8, !tbaa !21 ; 3 uses
  %i.a = icmp eq i8 %.sroa.0.0.copyload.i, 0
  br i1 %i.a, label %reset_raw.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext i8 %.sroa.0.0.copyload.i to i64     ; 4 uses
  %i.c = getelementptr i8, ptr %.sroa.8131.0.copyload.i, i64 %i.b
  %i.d = sub nsw i64 128, %i.b
  %i.e = and i64 %i.d, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.c, i8 0, i64 %i.e, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.8131.0.copyload.i, ptr readonly align 1 %1, i64 %i.b, i1 false)
  %i.f = shl nuw nsw i64 %i.b, 8
  br label %reset_raw.exit

reset_raw.exit:                                   ; preds = %bb.a, %bb.b
  %..i = phi i64 [ 128, %bb.b ], [ 0, %bb.a ]
  %.sroa.0.1.insert.ext.pre-phi = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ]
  %.sroa.0.0.insert.ext = zext i8 %.sroa.4.0.copyload.i to i64
  %.sroa.0.1.insert.insert = or disjoint i64 %.sroa.0.1.insert.ext.pre-phi, %.sroa.0.0.insert.ext
  %i.g = getelementptr i8, ptr %.sroa.7130.0.copyload.i, i64 32
  %i.h = getelementptr i8, ptr %.sroa.7130.0.copyload.i, i64 64
  %i.i = getelementptr i8, ptr %.sroa.7130.0.copyload.i, i64 96
  store i64 7640891576956012808, ptr %i.h, align 8, !tbaa !12
  %i.j = getelementptr i8, ptr %.sroa.7130.0.copyload.i, i64 72
  store i64 -4942790177534073029, ptr %i.j, align 8, !tbaa !12
  %i.k = getelementptr i8, ptr %.sroa.7130.0.copyload.i, i64 80
  store i64 4354685564936845355, ptr %i.k, align 8, !tbaa !12
  %i.l = getelementptr i8, ptr %.sroa.7130.0.copyload.i, i64 88
  store i64 -6534734903238641935, ptr %i.l, align 8, !tbaa !12
  store i64 5840696475078001361, ptr %i.i, align 8, !tbaa !12
  %i.m = getelementptr i8, ptr %.sroa.7130.0.copyload.i, i64 104
  store i64 -7276294671716946913, ptr %i.m, align 8, !tbaa !12
  %i.n = getelementptr i8, ptr %.sroa.7130.0.copyload.i, i64 112
  store i64 2270897969802886507, ptr %i.n, align 8, !tbaa !12
  %i.o = getelementptr i8, ptr %.sroa.7130.0.copyload.i, i64 120
  store i64 6620516959819538809, ptr %i.o, align 8, !tbaa !12
  %i.p = xor i64 %.sroa.0.1.insert.insert, 7640891576939301128
  store i64 %i.p, ptr %.sroa.7130.0.copyload.i, align 8, !tbaa !12
  %i.q = getelementptr i8, ptr %.sroa.7130.0.copyload.i, i64 8
  store i64 -4942790177534073029, ptr %i.q, align 8, !tbaa !12
  %i.r = getelementptr i8, ptr %.sroa.7130.0.copyload.i, i64 16
  store i64 4354685564936845355, ptr %i.r, align 8, !tbaa !12
  %i.s = getelementptr i8, ptr %.sroa.7130.0.copyload.i, i64 24
  store i64 -6534734903238641935, ptr %i.s, align 8, !tbaa !12
  store i64 5840696475078001361, ptr %i.g, align 8, !tbaa !12
  %i.t = getelementptr i8, ptr %.sroa.7130.0.copyload.i, i64 40
  store i64 -7276294671716946913, ptr %i.t, align 8, !tbaa !12
  %i.u = getelementptr i8, ptr %.sroa.7130.0.copyload.i, i64 48
  store i64 2270897969802886507, ptr %i.u, align 8, !tbaa !12
  %i.v = getelementptr i8, ptr %.sroa.7130.0.copyload.i, i64 56
  store i64 6620516959819538809, ptr %i.v, align 8, !tbaa !12
  %.sroa.9132.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sroa.0.0.copyload.i, ptr %0, align 8, !tbaa !14
  store i8 %.sroa.4.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i, align 1, !tbaa !14
  store i8 %.sroa.5.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i, align 2, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %.sroa.6129.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(13) %.sroa.8121.i, i64 13, i1 false)
  store ptr %.sroa.7130.0.copyload.i, ptr %.sroa.7130.0..sroa_idx.i, align 8, !tbaa !19
  store ptr %.sroa.8131.0.copyload.i, ptr %.sroa.8131.0..sroa_idx.i, align 8, !tbaa !21
  store i64 %..i, ptr %.sroa.9132.0..sroa_idx.i, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8121.i)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_Blake2b_reset(ptr nofree noundef captures(none) initializes((32, 40)) %0) local_unnamed_addr #9 {
_Py_LibHacl_Hacl_Hash_Blake2b_reset_with_key.exit:
  %.sroa.8121.i.i = alloca [13 x i8], align 1     ; 4 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.sroa.4.0.copyload.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i, align 1, !tbaa !14 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8121.i.i)
  %.sroa.6129.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %.sroa.8121.i.i, ptr noundef nonnull align 1 dereferenceable(13) %.sroa.6129.0..sroa_idx.i.i, i64 13, i1 false)
  %.sroa.7130.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.sroa.0.0.insert.ext.i = zext i8 %.sroa.4.0.copyload.i.i to i64
  %i.a = xor i64 %.sroa.0.0.insert.ext.i, 7640891576939301128
  %.sroa.9132.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load <2 x ptr>, ptr %.sroa.7130.0..sroa_idx.i.i, align 8, !tbaa !24
  %.sroa.7130.0.copyload.i.i = load ptr, ptr %.sroa.7130.0..sroa_idx.i.i, align 8, !tbaa !19 ; 16 uses
  %i.c = getelementptr i8, ptr %.sroa.7130.0.copyload.i.i, i64 32
  %i.d = getelementptr i8, ptr %.sroa.7130.0.copyload.i.i, i64 64
  %i.e = getelementptr i8, ptr %.sroa.7130.0.copyload.i.i, i64 96
  store i64 7640891576956012808, ptr %i.d, align 8, !tbaa !12
  %i.f = getelementptr i8, ptr %.sroa.7130.0.copyload.i.i, i64 72
  store i64 -4942790177534073029, ptr %i.f, align 8, !tbaa !12
  %i.g = getelementptr i8, ptr %.sroa.7130.0.copyload.i.i, i64 80
  store i64 4354685564936845355, ptr %i.g, align 8, !tbaa !12
  %i.h = getelementptr i8, ptr %.sroa.7130.0.copyload.i.i, i64 88
  store i64 -6534734903238641935, ptr %i.h, align 8, !tbaa !12
  store i64 5840696475078001361, ptr %i.e, align 8, !tbaa !12
  %i.i = getelementptr i8, ptr %.sroa.7130.0.copyload.i.i, i64 104
  store i64 -7276294671716946913, ptr %i.i, align 8, !tbaa !12
  %i.j = getelementptr i8, ptr %.sroa.7130.0.copyload.i.i, i64 112
  store i64 2270897969802886507, ptr %i.j, align 8, !tbaa !12
  %i.k = getelementptr i8, ptr %.sroa.7130.0.copyload.i.i, i64 120
  store i64 6620516959819538809, ptr %i.k, align 8, !tbaa !12
  store i64 %i.a, ptr %.sroa.7130.0.copyload.i.i, align 8, !tbaa !12
  %i.l = getelementptr i8, ptr %.sroa.7130.0.copyload.i.i, i64 8
  store i64 -4942790177534073029, ptr %i.l, align 8, !tbaa !12
  %i.m = getelementptr i8, ptr %.sroa.7130.0.copyload.i.i, i64 16
  store i64 4354685564936845355, ptr %i.m, align 8, !tbaa !12
  %i.n = getelementptr i8, ptr %.sroa.7130.0.copyload.i.i, i64 24
  store i64 -6534734903238641935, ptr %i.n, align 8, !tbaa !12
  store i64 5840696475078001361, ptr %i.c, align 8, !tbaa !12
  %i.o = getelementptr i8, ptr %.sroa.7130.0.copyload.i.i, i64 40
  store i64 -7276294671716946913, ptr %i.o, align 8, !tbaa !12
  %i.p = getelementptr i8, ptr %.sroa.7130.0.copyload.i.i, i64 48
  store i64 2270897969802886507, ptr %i.p, align 8, !tbaa !12
  %i.q = getelementptr i8, ptr %.sroa.7130.0.copyload.i.i, i64 56
  store i64 6620516959819538809, ptr %i.q, align 8, !tbaa !12
  store i8 0, ptr %0, align 8, !tbaa !14
  store i8 %.sroa.4.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 1, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %.sroa.6129.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(13) %.sroa.8121.i.i, i64 13, i1 false)
  store <2 x ptr> %i.b, ptr %.sroa.7130.0..sroa_idx.i.i, align 8, !tbaa !24
  store i64 0, ptr %.sroa.9132.0..sroa_idx.i.i, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8121.i.i)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden zeroext range(i8 0, 4) i8 @_Py_LibHacl_Hacl_Hash_Blake2b_update(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #10 {
bb.a:
  %.sroa.0130 = alloca %struct.Hacl_Hash_Blake2b_block_state_t_s, align 8 ; 2 uses
  %.sroa.053 = alloca %struct.Hacl_Hash_Blake2b_block_state_t_s, align 8 ; 2 uses
  %.sroa.3153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %.sroa.3153.0.copyload = load i64, ptr %.sroa.3153.0..sroa_idx, align 8, !tbaa !12 ; 8 uses
  %i.a = zext i32 %2 to i64                       ; 5 uses
  %i.b = xor i64 %.sroa.3153.0.copyload, -1
  %i.c = icmp ugt i64 %i.a, %i.b
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %.sroa.3153.0.copyload, 127      ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  %i.f = icmp ne i64 %.sroa.3153.0.copyload, 0
  %or.cond = and i1 %i.f, %i.e                    ; 3 uses
  %i.g = trunc nuw nsw i64 %i.d to i32
  %.0185 = select i1 %or.cond, i32 128, i32 %i.g  ; 2 uses
  %i.h = sub nuw nsw i32 128, %.0185              ; 3 uses
  %.not = icmp ugt i32 %2, %i.h
  %.sroa.6128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0130, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %.sroa.4143.0.copyload = load ptr, ptr %.sroa.6128.0..sroa_idx, align 8, !tbaa !21 ; 2 uses
  %. = select i1 %or.cond, i64 128, i64 %i.d
  %i.i = getelementptr i8, ptr %.sroa.4143.0.copyload, i64 %.
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %1, i64 %i.a, i1 false)
  %i.j = add i64 %.sroa.3153.0.copyload, %i.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0130, i64 24, i1 false), !tbaa.struct !25
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %i.k = icmp eq i32 %.0185, 0
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.sroa.0125.0.copyload = load i64, ptr %0, align 8
  %.sroa.4126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.4126.0.copyload = load ptr, ptr %.sroa.4126.0..sroa_idx, align 8, !tbaa !19 ; 2 uses
  %.sroa.5127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.5127.0.copyload = load ptr, ptr %.sroa.5127.0..sroa_idx, align 8, !tbaa !19 ; 2 uses
  %.sroa.6128.0.copyload = load ptr, ptr %.sroa.6128.0..sroa_idx, align 8, !tbaa !21 ; 2 uses
  %i.l = and i64 %i.a, 127                        ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  %i.n = trunc nuw nsw i64 %i.l to i32
  %.0189 = select i1 %i.m, i32 128, i32 %i.n
  %i.o = sub i32 %2, %.0189                       ; 2 uses
  %i.p = lshr i32 %i.o, 7                         ; 2 uses
  %i.q = and i32 %i.o, -128                       ; 2 uses
end_hunk_0
begin_hunk_1_@_Py_LibHacl_Hacl_Hash_Blake2b_copy:bb.a
  br i1 %i.e, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noalias dereferenceable_or_null(128) ptr @calloc(i64 noundef 16, i64 noundef 8) #17 ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.d) #16
  br label %.critedge

.critedge:                                        ; preds = %.thread, %bb.b
  tail call void @free(ptr noundef nonnull %i.b) #16
  br label %bb.g

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.f, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.772.0.copyload, i64 128, i1 false)
  %i.h = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #18 ; 7 uses
  %cond = icmp eq ptr %i.h, null
  br i1 %cond, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = zext nneg i8 %i.a to i64
  %i.j = shl nuw nsw i64 %i.i, 16
  %i.k = zext i8 %.sroa.469.0.copyload to i64
  %i.l = shl nuw nsw i64 %i.k, 8
  %i.m = or disjoint i64 %i.j, %i.l
  %i.n = zext i8 %.sroa.068.0.copyload to i64
  %i.o = or disjoint i64 %i.m, %i.n
  store i64 %i.o, ptr %i.h, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.d, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8, !tbaa !19
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.f, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8, !tbaa !19
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.b, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !21
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i64 %.sroa.9.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !12
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.d) #16
  tail call void @free(ptr noundef nonnull %i.f) #16
  tail call void @free(ptr noundef nonnull %i.b) #16
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %.critedge, %bb.f, %bb.a
  %.3 = phi ptr [ null, %bb.a ], [ null, %.critedge ], [ null, %bb.f ], [ %i.h, %bb.e ]
  ret ptr %.3
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_Blake2b_hash_with_key(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 6 uses
  %i.b = alloca [64 x i8], align 16               ; 8 uses
  %i.c = alloca [128 x i8], align 16              ; 6 uses
  %i.d = alloca [16 x i64], align 16              ; 24 uses
  %i.e = alloca [16 x i64], align 16              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.e, i8 0, i64 128, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  store i64 7640891576956012808, ptr %i.g, align 16, !tbaa !12
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store i64 -4942790177534073029, ptr %i.i, align 8, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store i64 4354685564936845355, ptr %i.j, align 16, !tbaa !12
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  store i64 -6534734903238641935, ptr %i.k, align 8, !tbaa !12
  store i64 5840696475078001361, ptr %i.h, align 16, !tbaa !12
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  store i64 -7276294671716946913, ptr %i.l, align 8, !tbaa !12
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  store i64 2270897969802886507, ptr %i.m, align 16, !tbaa !12
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  store i64 6620516959819538809, ptr %i.n, align 8, !tbaa !12
  %i.o = and i32 %1, 255
  %i.p = shl i32 %5, 8
  %i.q = and i32 %i.p, 65280
  %i.r = or disjoint i32 %i.o, %i.q
  %i.s = or disjoint i32 %i.r, 16842752
  %i.t = zext nneg i32 %i.s to i64
  %i.u = xor i64 %i.t, 7640891576956012808
  store i64 %i.u, ptr %i.d, align 16, !tbaa !12
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 -4942790177534073029, ptr %i.v, align 8, !tbaa !12
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 4354685564936845355, ptr %i.w, align 16, !tbaa !12
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 -6534734903238641935, ptr %i.x, align 8, !tbaa !12
  store i64 5840696475078001361, ptr %i.f, align 16, !tbaa !12
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 -7276294671716946913, ptr %i.y, align 8, !tbaa !12
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  store i64 2270897969802886507, ptr %i.z, align 16, !tbaa !12
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i64 6620516959819538809, ptr %i.aa, align 8, !tbaa !12
  %.not.i = icmp eq i32 %5, 0
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %i.ab = zext i32 %5 to i64                      ; 3 uses
  %i.ac = icmp ugt i32 %5, 127
  %i.ad = sub nsw i64 128, %i.ab
  %i.ae = select i1 %i.ac, i64 0, i64 %i.ad
  %i.af = getelementptr i8, ptr %i.c, i64 %i.ab
  call void @llvm.memset.p0.i64(ptr align 1 %i.af, i8 0, i64 %i.ae, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.c, ptr noundef nonnull readonly align 1 dereferenceable(1) %4, i64 %i.ab, i1 false)
  %i.ag = icmp eq i32 %3, 0                       ; 2 uses
  call fastcc void @update_block(ptr noundef nonnull %i.e, ptr noundef nonnull %i.d, i1 noundef zeroext %i.ag, i1 noundef zeroext false, i64 128, i64 0, ptr noundef nonnull %i.c)
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %i.c, i64 noundef 128) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  br i1 %i.ag, label %update.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call fastcc void @update_blocks(i32 noundef %3, ptr noundef nonnull %i.e, ptr noundef nonnull %i.d, i64 128, ptr noundef readonly %2)
  br label %update.exit

bb.d:                                             ; preds = %bb.a
  %i.ah = lshr i32 %3, 7                          ; 2 uses
  %i.ai = and i32 %3, 127                         ; 2 uses
  %i.aj = icmp eq i32 %i.ai, 0
  %i.ak = icmp ne i32 %i.ah, 0
  %or.cond.i = and i1 %i.aj, %i.ak                ; 2 uses
  %i.al = sext i1 %or.cond.i to i32
  %.023.i = add nsw i32 %i.ah, %i.al              ; 2 uses
  %.not.i.i = icmp eq i32 %.023.i, 0
  br i1 %.not.i.i, label %update_blocks.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.d
  %wide.trip.count.i.i = zext nneg i32 %.023.i to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %.lr.ph.i.i ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %i.am = shl nuw nsw i64 %indvars.iv.next.i.i, 7
  %i.an = and i64 %i.am, 4294967168
  %i.ao = shl nuw nsw i64 %indvars.iv.i.i, 7
  %i.ap = and i64 %i.ao, 4294967168
  %i.aq = getelementptr i8, ptr %2, i64 %i.ap
  call fastcc void @update_block(ptr noundef nonnull %i.e, ptr noundef nonnull %i.d, i1 noundef zeroext false, i1 noundef zeroext false, i64 %i.an, i64 0, ptr noundef readonly %i.aq)
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %update_blocks.exit, label %.lr.ph.i.i, !llvm.loop !0

update_blocks.exit:                               ; preds = %.lr.ph.i.i, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  %i.ar = zext i32 %3 to i64                      ; 2 uses
  %i.as = getelementptr i8, ptr %2, i64 %i.ar
  %i.at = zext nneg i32 %i.ai to i64
  %i.au = select i1 %or.cond.i, i64 128, i64 %i.at ; 2 uses
  %i.av = sub nsw i64 0, %i.au
  %i.aw = getelementptr i8, ptr %i.as, i64 %i.av
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr readonly align 1 %i.aw, i64 %i.au, i1 false)
  call fastcc void @update_block(ptr noundef nonnull %i.e, ptr noundef nonnull %i.d, i1 noundef zeroext true, i1 noundef zeroext false, i64 %i.ar, i64 0, ptr noundef nonnull %i.a)
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %i.a, i64 noundef 128) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %update.exit

update.exit:                                      ; preds = %bb.b, %bb.c, %update_blocks.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ay = load <2 x i64>, ptr %i.d, align 16, !tbaa !12
  store <2 x i64> %i.ay, ptr %i.b, align 16
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ba = load <2 x i64>, ptr %i.w, align 16, !tbaa !12
  store <2 x i64> %i.ba, ptr %i.az, align 16
  %i.bb = load <2 x i64>, ptr %i.f, align 16, !tbaa !12
  store <2 x i64> %i.bb, ptr %i.ax, align 16
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.bd = load <2 x i64>, ptr %i.z, align 16, !tbaa !12
  store <2 x i64> %i.bd, ptr %i.bc, align 16
  %i.be = zext i32 %1 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr nonnull align 16 %i.b, i64 %i.be, i1 false)
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %i.b, i64 noundef 64) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %i.e, i64 noundef 128) #16
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %i.d, i64 noundef 128) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_Blake2b_hash_with_key_and_params(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly byval(%struct.Hacl_Hash_Blake2b_blake2_params_s) align 8 captures(none) %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 6 uses
  %i.b = alloca [64 x i8], align 16               ; 8 uses
  %i.c = alloca [128 x i8], align 16              ; 6 uses
  %i.d = alloca [16 x i64], align 16              ; 21 uses
  %i.e = alloca [16 x i64], align 16              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.e, i8 0, i64 128, i1 false)
  %5 = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  store i64 7640891576956012808, ptr %i.f, align 16, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store i64 -4942790177534073029, ptr %i.h, align 8, !tbaa !12
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store i64 4354685564936845355, ptr %i.i, align 16, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  store i64 -6534734903238641935, ptr %i.j, align 8, !tbaa !12
  store i64 5840696475078001361, ptr %i.g, align 16, !tbaa !12
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  store i64 -7276294671716946913, ptr %i.k, align 8, !tbaa !12
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  store i64 2270897969802886507, ptr %i.l, align 16, !tbaa !12
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  store i64 6620516959819538809, ptr %i.m, align 8, !tbaa !12
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !26
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !27
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.s = load i16, ptr %i.r, align 8
  %i.t = zext i16 %i.s to i64
  %6 = xor i64 %i.t, 4354685564936845355
  %i.u = load <2 x i64>, ptr %3, align 8
  %i.v = load i64, ptr %3, align 8                ; 2 uses
  %i.w = lshr i64 %i.v, 8                         ; 2 uses
  %i.x = trunc i64 %i.w to i8                     ; 2 uses
  %i.y = xor <2 x i64> %i.u, <i64 7640891576956012808, i64 -4942790177534073029>
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %8 = load <2 x i64>, ptr %i.o, align 1
  %9 = xor <2 x i64> %8, <i64 5840696475078001361, i64 -7276294671716946913>
  %10 = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  %11 = load <2 x i64>, ptr %i.q, align 1
  %12 = xor <2 x i64> %11, <i64 2270897969802886507, i64 6620516959819538809>
  store <2 x i64> %i.y, ptr %i.d, align 16, !tbaa !12
  store i64 %6, ptr %i.z, align 16, !tbaa !12
  store i64 -6534734903238641935, ptr %7, align 8, !tbaa !12
  store <2 x i64> %9, ptr %5, align 16, !tbaa !12
  store <2 x i64> %12, ptr %10, align 16, !tbaa !12
  %.not.i = icmp eq i8 %i.x, 0
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %i.aa = and i64 %i.w, 255                       ; 3 uses
  %i.ab = icmp slt i8 %i.x, 0
  %i.ac = sub nsw i64 128, %i.aa
  %i.ad = select i1 %i.ab, i64 0, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.c, i64 %i.aa
  call void @llvm.memset.p0.i64(ptr align 1 %i.ae, i8 0, i64 %i.ad, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.c, ptr noundef nonnull readonly align 1 dereferenceable(1) %4, i64 %i.aa, i1 false)
  %i.af = icmp eq i32 %2, 0                       ; 2 uses
  call fastcc void @update_block(ptr noundef nonnull %i.e, ptr noundef nonnull %i.d, i1 noundef zeroext %i.af, i1 noundef zeroext false, i64 128, i64 0, ptr noundef nonnull %i.c)
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %i.c, i64 noundef 128) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  br i1 %i.af, label %update.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call fastcc void @update_blocks(i32 noundef %2, ptr noundef nonnull %i.e, ptr noundef nonnull %i.d, i64 128, ptr noundef readonly %1)
  br label %update.exit

bb.d:                                             ; preds = %bb.a
  %i.ag = lshr i32 %2, 7                          ; 2 uses
  %i.ah = and i32 %2, 127                         ; 2 uses
  %i.ai = icmp eq i32 %i.ah, 0
  %i.aj = icmp ne i32 %i.ag, 0
  %or.cond.i = and i1 %i.ai, %i.aj                ; 2 uses
  %i.ak = sext i1 %or.cond.i to i32
  %.023.i = add nsw i32 %i.ag, %i.ak              ; 2 uses
  %.not.i.i = icmp eq i32 %.023.i, 0
  br i1 %.not.i.i, label %update_blocks.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.d
  %wide.trip.count.i.i = zext nneg i32 %.023.i to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %.lr.ph.i.i ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %i.al = shl nuw nsw i64 %indvars.iv.next.i.i, 7
  %i.am = and i64 %i.al, 4294967168
  %i.an = shl nuw nsw i64 %indvars.iv.i.i, 7
  %i.ao = and i64 %i.an, 4294967168
  %i.ap = getelementptr i8, ptr %1, i64 %i.ao
  call fastcc void @update_block(ptr noundef nonnull %i.e, ptr noundef nonnull %i.d, i1 noundef zeroext false, i1 noundef zeroext false, i64 %i.am, i64 0, ptr noundef readonly %i.ap)
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %update_blocks.exit, label %.lr.ph.i.i, !llvm.loop !0

update_blocks.exit:                               ; preds = %.lr.ph.i.i, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  %i.aq = zext i32 %2 to i64                      ; 2 uses
  %i.ar = getelementptr i8, ptr %1, i64 %i.aq
  %i.as = zext nneg i32 %i.ah to i64
  %i.at = select i1 %or.cond.i, i64 128, i64 %i.as ; 2 uses
  %i.au = sub nsw i64 0, %i.at
  %i.av = getelementptr i8, ptr %i.ar, i64 %i.au
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr readonly align 1 %i.av, i64 %i.at, i1 false)
  call fastcc void @update_block(ptr noundef nonnull %i.e, ptr noundef nonnull %i.d, i1 noundef zeroext true, i1 noundef zeroext false, i64 %i.aq, i64 0, ptr noundef nonnull %i.a)
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %i.a, i64 noundef 128) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %update.exit

update.exit:                                      ; preds = %bb.b, %bb.c, %update_blocks.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ax = load <2 x i64>, ptr %i.d, align 16, !tbaa !12
  store <2 x i64> %i.ax, ptr %i.b, align 16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.az = load <2 x i64>, ptr %i.z, align 16, !tbaa !12
  store <2 x i64> %i.az, ptr %i.ay, align 16
  %i.ba = load <2 x i64>, ptr %5, align 16, !tbaa !12
  store <2 x i64> %i.ba, ptr %i.aw, align 16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.bc = load <2 x i64>, ptr %10, align 16, !tbaa !12
  store <2 x i64> %i.bc, ptr %i.bb, align 16
  %i.bd = and i64 %i.v, 255
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr nonnull align 16 %i.b, i64 %i.bd, i1 false)
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %i.b, i64 noundef 64) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %i.e, i64 noundef 128) #16
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %i.d, i64 noundef 128) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @update_blocks(i32 noundef %0, ptr nofree noundef nonnull captures(none) initializes((0, 128)) %1, ptr nofree noundef nonnull captures(none) %2, i64 %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #5 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 6 uses
  %i.b = lshr i32 %0, 7                           ; 2 uses
  %i.c = and i32 %0, 127                          ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  %i.e = icmp ne i32 %i.b, 0
  %or.cond = and i1 %i.d, %i.e                    ; 2 uses
  %i.f = sext i1 %or.cond to i32
  %.023 = add nsw i32 %i.b, %i.f                  ; 2 uses
  %.not.i = icmp eq i32 %.023, 0
  br i1 %.not.i, label %_Py_LibHacl_Hacl_Hash_Blake2b_update_multi.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %.023 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.g = shl nuw nsw i64 %indvars.iv.next.i, 7
  %i.h = and i64 %i.g, 4294967168
  %i.i = add i64 %i.h, %3                         ; 2 uses
  %i.j = xor i64 %i.i, -1
  %i.k = and i64 %3, %i.j
  %i.l = lshr i64 %i.k, 63
  %i.m = shl nuw nsw i64 %indvars.iv.i, 7
  %i.n = and i64 %i.m, 4294967168
  %i.o = getelementptr i8, ptr %4, i64 %i.n
  tail call fastcc void @update_block(ptr noundef nonnull %1, ptr noundef nonnull %2, i1 noundef zeroext false, i1 noundef zeroext false, i64 %i.i, i64 %i.l, ptr noundef readonly %i.o)
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_Py_LibHacl_Hacl_Hash_Blake2b_update_multi.exit, label %.lr.ph.i, !llvm.loop !0

_Py_LibHacl_Hacl_Hash_Blake2b_update_multi.exit:  ; preds = %.lr.ph.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  %i.p = zext i32 %0 to i64                       ; 2 uses
  %i.q = getelementptr i8, ptr %4, i64 %i.p
  %i.r = zext nneg i32 %i.c to i64
  %i.s = select i1 %or.cond, i64 128, i64 %i.r    ; 2 uses
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr i8, ptr %i.q, i64 %i.t
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr readonly align 1 %i.u, i64 %i.s, i1 false)
  %i.v = add i64 %3, %i.p                         ; 2 uses
  %i.w = xor i64 %i.v, -1
  %i.x = and i64 %3, %i.w
  %i.y = lshr i64 %i.x, 63
  call fastcc void @update_block(ptr noundef nonnull %1, ptr noundef nonnull %2, i1 noundef zeroext true, i1 noundef zeroext false, i64 %i.v, i64 %i.y, ptr noundef nonnull %i.a)
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %i.a, i64 noundef 128) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #15

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind }
attributes #17 = { nounwind allocsize(0,1) }
attributes #18 = { nounwind allocsize(0) }

!llvm.module.flags = !{!1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !13}
!1 = !{i32 7, !"Dwarf Version", i32 5}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"long", !8, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!8, !8, i64 0}
!15 = !{!"_Bool", !8, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"any pointer", !8, i64 0}
!18 = !{!"p1 long", !17, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"p1 omnipotent char", !17, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!"Hacl_Hash_Blake2b_blake2_params_s", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !9, i64 4, !11, i64 8, !8, i64 16, !8, i64 17, !20, i64 24, !20, i64 32}
!23 = !{!22, !8, i64 1}
!24 = !{!17, !17, i64 0}
!25 = !{i64 0, i64 1, !14, i64 1, i64 1, !14, i64 2, i64 1, !16, i64 8, i64 8, !19, i64 16, i64 8, !19, i64 24, i64 8, !21, i64 32, i64 8, !12}
!26 = !{!22, !20, i64 24}
!27 = !{!22, !20, i64 32}
end_hunk_1
