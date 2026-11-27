Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/Hacl_HMAC?download=true
inline.NumInlined: 55
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_Py_LibHacl_Hacl_HMAC_compute_md5:bb.a
  %wide.load102.1 = load <16 x i8>, ptr %i.w, align 16, !tbaa !12
  %wide.load103.1 = load <16 x i8>, ptr %i.x, align 16, !tbaa !12
  %i.y = xor <16 x i8> %wide.load102.1, %wide.load100.1
  %i.z = xor <16 x i8> %wide.load103.1, %wide.load101.1
  store <16 x i8> %i.y, ptr %i.u, align 16, !tbaa !12
  store <16 x i8> %i.z, ptr %i.v, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.d, ptr noundef nonnull align 16 dereferenceable(16) @__const._Py_LibHacl_Hacl_HMAC_compute_md5.s, i64 16, i1 false)
  %i.aa = icmp eq i32 %4, 0
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %vector.ph
  call void @_Py_LibHacl_Hacl_Hash_MD5_update_last(ptr noundef nonnull %i.d, i64 noundef 0, ptr noundef nonnull %i.b, i32 noundef 64) #4
  br label %bb.f

bb.e:                                             ; preds = %vector.ph
  %i.ab = lshr i32 %4, 6                          ; 3 uses
  %i.ac = and i32 %4, 63                          ; 2 uses
  %i.ad = icmp ne i32 %i.ab, 0
  %i.ae = icmp eq i32 %i.ac, 0
  %or.cond = and i1 %i.ad, %i.ae                  ; 2 uses
  %i.af = add nsw i32 %i.ab, -1                   ; 2 uses
  %i.ag = shl nuw i32 %i.af, 6
  %i.ah = sub i32 %4, %i.ag
  %.sroa.038.0 = select i1 %or.cond, i32 %i.af, i32 %i.ab ; 2 uses
  %.sroa.539.0 = select i1 %or.cond, i32 %i.ah, i32 %i.ac
  %i.ai = shl nuw i32 %.sroa.038.0, 6
  %i.aj = zext i32 %i.ai to i64                   ; 2 uses
  %i.ak = getelementptr i8, ptr %3, i64 %i.aj
  call void @_Py_LibHacl_Hacl_Hash_MD5_update_multi(ptr noundef nonnull %i.d, ptr noundef nonnull %i.b, i32 noundef 1) #4
  call void @_Py_LibHacl_Hacl_Hash_MD5_update_multi(ptr noundef nonnull %i.d, ptr noundef %3, i32 noundef %.sroa.038.0) #4
  %i.al = add nuw nsw i64 %i.aj, 64
  call void @_Py_LibHacl_Hacl_Hash_MD5_update_last(ptr noundef nonnull %i.d, i64 noundef %i.al, ptr noundef %i.ak, i32 noundef %.sroa.539.0) #4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @_Py_LibHacl_Hacl_Hash_MD5_finish(ptr noundef nonnull %i.d, ptr noundef nonnull %i.b) #4
  call void @_Py_LibHacl_Hacl_Hash_MD5_init(ptr noundef nonnull %i.d) #4
  call void @_Py_LibHacl_Hacl_Hash_MD5_update_multi(ptr noundef nonnull %i.d, ptr noundef nonnull %i.c, i32 noundef 1) #4
  call void @_Py_LibHacl_Hacl_Hash_MD5_update_multi(ptr noundef nonnull %i.d, ptr noundef nonnull %i.b, i32 noundef 0) #4
  call void @_Py_LibHacl_Hacl_Hash_MD5_update_last(ptr noundef nonnull %i.d, i64 noundef 64, ptr noundef nonnull %i.b, i32 noundef 16) #4
  call void @_Py_LibHacl_Hacl_Hash_MD5_finish(ptr noundef nonnull %i.d, ptr noundef %0) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @_Py_LibHacl_Hacl_Hash_MD5_hash_oneshot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_Py_LibHacl_Hacl_Hash_MD5_update_last(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_Py_LibHacl_Hacl_Hash_MD5_update_multi(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_Py_LibHacl_Hacl_Hash_MD5_finish(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_Py_LibHacl_Hacl_Hash_MD5_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden void @_Py_LibHacl_Hacl_HMAC_compute_sha1(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 !guid !16 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 13 uses
  %i.b = alloca [64 x i8], align 16               ; 13 uses
  %i.c = alloca [64 x i8], align 16               ; 9 uses
  %i.d = alloca [5 x i32], align 16               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.e = icmp ult i32 %2, 65
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = zext nneg i32 %2 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %1, i64 %i.f, i1 false)
  br label %vector.ph

bb.c:                                             ; preds = %bb.a
  call void @_Py_LibHacl_Hacl_Hash_SHA1_hash_oneshot(ptr noundef nonnull %i.a, ptr noundef %1, i32 noundef %2) #4
  br label %vector.ph

vector.ph:                                        ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.b, i8 54, i64 64, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.b, align 16, !tbaa !12
  %wide.load94 = load <16 x i8>, ptr %i.g, align 16, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %wide.load95 = load <16 x i8>, ptr %i.a, align 16, !tbaa !12
  %wide.load96 = load <16 x i8>, ptr %i.h, align 16, !tbaa !12
  %i.i = xor <16 x i8> %wide.load95, %wide.load
  %i.j = xor <16 x i8> %wide.load96, %wide.load94
  store <16 x i8> %i.i, ptr %i.b, align 16, !tbaa !12
  store <16 x i8> %i.j, ptr %i.g, align 16, !tbaa !12
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %wide.load.1 = load <16 x i8>, ptr %i.k, align 16, !tbaa !12
  %wide.load94.1 = load <16 x i8>, ptr %i.l, align 16, !tbaa !12
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %wide.load95.1 = load <16 x i8>, ptr %i.m, align 16, !tbaa !12
  %wide.load96.1 = load <16 x i8>, ptr %i.n, align 16, !tbaa !12
  %i.o = xor <16 x i8> %wide.load95.1, %wide.load.1
  %i.p = xor <16 x i8> %wide.load96.1, %wide.load94.1
  store <16 x i8> %i.o, ptr %i.k, align 16, !tbaa !12
  store <16 x i8> %i.p, ptr %i.l, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.c, i8 92, i64 64, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %wide.load100 = load <16 x i8>, ptr %i.c, align 16, !tbaa !12
  %wide.load101 = load <16 x i8>, ptr %i.q, align 16, !tbaa !12
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %wide.load102 = load <16 x i8>, ptr %i.a, align 16, !tbaa !12
  %wide.load103 = load <16 x i8>, ptr %i.r, align 16, !tbaa !12
  %i.s = xor <16 x i8> %wide.load102, %wide.load100
  %i.t = xor <16 x i8> %wide.load103, %wide.load101
  store <16 x i8> %i.s, ptr %i.c, align 16, !tbaa !12
  store <16 x i8> %i.t, ptr %i.q, align 16, !tbaa !12
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %wide.load100.1 = load <16 x i8>, ptr %i.u, align 16, !tbaa !12
  %wide.load101.1 = load <16 x i8>, ptr %i.v, align 16, !tbaa !12
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %wide.load102.1 = load <16 x i8>, ptr %i.w, align 16, !tbaa !12
  %wide.load103.1 = load <16 x i8>, ptr %i.x, align 16, !tbaa !12
  %i.y = xor <16 x i8> %wide.load102.1, %wide.load100.1
  %i.z = xor <16 x i8> %wide.load103.1, %wide.load101.1
  store <16 x i8> %i.y, ptr %i.u, align 16, !tbaa !12
  store <16 x i8> %i.z, ptr %i.v, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.d, ptr noundef nonnull align 16 dereferenceable(20) @__const._Py_LibHacl_Hacl_HMAC_compute_sha1.s, i64 20, i1 false)
  %i.aa = icmp eq i32 %4, 0
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %vector.ph
  call void @_Py_LibHacl_Hacl_Hash_SHA1_update_last(ptr noundef nonnull %i.d, i64 noundef 0, ptr noundef nonnull %i.b, i32 noundef 64) #4
  br label %bb.f

bb.e:                                             ; preds = %vector.ph
  %i.ab = lshr i32 %4, 6                          ; 3 uses
  %i.ac = and i32 %4, 63                          ; 2 uses
  %i.ad = icmp ne i32 %i.ab, 0
  %i.ae = icmp eq i32 %i.ac, 0
  %or.cond = and i1 %i.ad, %i.ae                  ; 2 uses
  %i.af = add nsw i32 %i.ab, -1                   ; 2 uses
  %i.ag = shl nuw i32 %i.af, 6
  %i.ah = sub i32 %4, %i.ag
  %.sroa.038.0 = select i1 %or.cond, i32 %i.af, i32 %i.ab ; 2 uses
  %.sroa.539.0 = select i1 %or.cond, i32 %i.ah, i32 %i.ac
  %i.ai = shl nuw i32 %.sroa.038.0, 6
  %i.aj = zext i32 %i.ai to i64                   ; 2 uses
  %i.ak = getelementptr i8, ptr %3, i64 %i.aj
  call void @_Py_LibHacl_Hacl_Hash_SHA1_update_multi(ptr noundef nonnull %i.d, ptr noundef nonnull %i.b, i32 noundef 1) #4
  call void @_Py_LibHacl_Hacl_Hash_SHA1_update_multi(ptr noundef nonnull %i.d, ptr noundef %3, i32 noundef %.sroa.038.0) #4
  %i.al = add nuw nsw i64 %i.aj, 64
  call void @_Py_LibHacl_Hacl_Hash_SHA1_update_last(ptr noundef nonnull %i.d, i64 noundef %i.al, ptr noundef %i.ak, i32 noundef %.sroa.539.0) #4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @_Py_LibHacl_Hacl_Hash_SHA1_finish(ptr noundef nonnull %i.d, ptr noundef nonnull %i.b) #4
  call void @_Py_LibHacl_Hacl_Hash_SHA1_init(ptr noundef nonnull %i.d) #4
  call void @_Py_LibHacl_Hacl_Hash_SHA1_update_multi(ptr noundef nonnull %i.d, ptr noundef nonnull %i.c, i32 noundef 1) #4
  call void @_Py_LibHacl_Hacl_Hash_SHA1_update_multi(ptr noundef nonnull %i.d, ptr noundef nonnull %i.b, i32 noundef 0) #4
  call void @_Py_LibHacl_Hacl_Hash_SHA1_update_last(ptr noundef nonnull %i.d, i64 noundef 64, ptr noundef nonnull %i.b, i32 noundef 20) #4
  call void @_Py_LibHacl_Hacl_Hash_SHA1_finish(ptr noundef nonnull %i.d, ptr noundef %0) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret void
}

declare void @_Py_LibHacl_Hacl_Hash_SHA1_hash_oneshot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_Py_LibHacl_Hacl_Hash_SHA1_update_last(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_Py_LibHacl_Hacl_Hash_SHA1_update_multi(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_Py_LibHacl_Hacl_Hash_SHA1_finish(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_Py_LibHacl_Hacl_Hash_SHA1_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden void @_Py_LibHacl_Hacl_HMAC_compute_sha2_224(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 !guid !17 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 13 uses
  %i.b = alloca [64 x i8], align 16               ; 13 uses
  %i.c = alloca [64 x i8], align 16               ; 9 uses
  %i.d = alloca [8 x i32], align 16               ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.e = icmp ult i32 %2, 65
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = zext nneg i32 %2 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %1, i64 %i.f, i1 false)
  br label %vector.ph

bb.c:                                             ; preds = %bb.a
  call void @_Py_LibHacl_Hacl_Hash_SHA2_hash_224(ptr noundef nonnull %i.a, ptr noundef %1, i32 noundef %2) #4
  br label %vector.ph

vector.ph:                                        ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.b, i8 54, i64 64, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.b, align 16, !tbaa !12
  %wide.load146 = load <16 x i8>, ptr %i.g, align 16, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %wide.load147 = load <16 x i8>, ptr %i.a, align 16, !tbaa !12
  %wide.load148 = load <16 x i8>, ptr %i.h, align 16, !tbaa !12
  %i.i = xor <16 x i8> %wide.load147, %wide.load
  %i.j = xor <16 x i8> %wide.load148, %wide.load146
  store <16 x i8> %i.i, ptr %i.b, align 16, !tbaa !12
  store <16 x i8> %i.j, ptr %i.g, align 16, !tbaa !12
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %wide.load.1 = load <16 x i8>, ptr %i.k, align 16, !tbaa !12
  %wide.load146.1 = load <16 x i8>, ptr %i.l, align 16, !tbaa !12
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %wide.load147.1 = load <16 x i8>, ptr %i.m, align 16, !tbaa !12
  %wide.load148.1 = load <16 x i8>, ptr %i.n, align 16, !tbaa !12
  %i.o = xor <16 x i8> %wide.load147.1, %wide.load.1
  %i.p = xor <16 x i8> %wide.load148.1, %wide.load146.1
  store <16 x i8> %i.o, ptr %i.k, align 16, !tbaa !12
  store <16 x i8> %i.p, ptr %i.l, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.c, i8 92, i64 64, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %wide.load152 = load <16 x i8>, ptr %i.c, align 16, !tbaa !12
  %wide.load153 = load <16 x i8>, ptr %i.q, align 16, !tbaa !12
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %wide.load154 = load <16 x i8>, ptr %i.a, align 16, !tbaa !12
  %wide.load155 = load <16 x i8>, ptr %i.r, align 16, !tbaa !12
  %i.s = xor <16 x i8> %wide.load154, %wide.load152
  %i.t = xor <16 x i8> %wide.load155, %wide.load153
  store <16 x i8> %i.s, ptr %i.c, align 16, !tbaa !12
  store <16 x i8> %i.t, ptr %i.q, align 16, !tbaa !12
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %wide.load152.1 = load <16 x i8>, ptr %i.u, align 16, !tbaa !12
  %wide.load153.1 = load <16 x i8>, ptr %i.v, align 16, !tbaa !12
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %wide.load154.1 = load <16 x i8>, ptr %i.w, align 16, !tbaa !12
  %wide.load155.1 = load <16 x i8>, ptr %i.x, align 16, !tbaa !12
  %i.y = xor <16 x i8> %wide.load154.1, %wide.load152.1
  %i.z = xor <16 x i8> %wide.load155.1, %wide.load153.1
  store <16 x i8> %i.y, ptr %i.u, align 16, !tbaa !12
  store <16 x i8> %i.z, ptr %i.v, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  store <4 x i32> <i32 -1056596264, i32 914150663, i32 812702999, i32 -150054599>, ptr %i.d, align 16, !tbaa !9
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store <4 x i32> <i32 -4191439, i32 1750603025, i32 1694076839, i32 -1090891868>, ptr %i.aa, align 16, !tbaa !9
  %i.ab = icmp eq i32 %4, 0
  br i1 %i.ab, label %bb.d, label %bb.e

bb.d:                                             ; preds = %vector.ph
  call void @_Py_LibHacl_Hacl_Hash_SHA2_sha224_update_last(i64 noundef 64, i32 noundef 64, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d) #4
  br label %bb.f

bb.e:                                             ; preds = %vector.ph
  %i.ac = lshr i32 %4, 6                          ; 3 uses
  %i.ad = and i32 %4, 63                          ; 2 uses
  %i.ae = icmp ne i32 %i.ac, 0
  %i.af = icmp eq i32 %i.ad, 0
  %or.cond = and i1 %i.ae, %i.af                  ; 2 uses
  %i.ag = add nsw i32 %i.ac, -1                   ; 2 uses
  %i.ah = shl nuw i32 %i.ag, 6
  %i.ai = sub i32 %4, %i.ah
  %.sroa.040.0 = select i1 %or.cond, i32 %i.ag, i32 %i.ac
  %.sroa.541.0 = select i1 %or.cond, i32 %i.ai, i32 %i.ad ; 2 uses
  %i.aj = shl nuw i32 %.sroa.040.0, 6             ; 2 uses
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = getelementptr i8, ptr %3, i64 %i.ak
  call void @_Py_LibHacl_Hacl_Hash_SHA2_sha224_update_nblocks(i32 noundef 64, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d) #4
  call void @_Py_LibHacl_Hacl_Hash_SHA2_sha224_update_nblocks(i32 noundef %i.aj, ptr noundef %3, ptr noundef nonnull %i.d) #4
  %i.am = add nuw nsw i64 %i.ak, 64
  %i.an = zext i32 %.sroa.541.0 to i64
  %i.ao = add nuw nsw i64 %i.am, %i.an
  call void @_Py_LibHacl_Hacl_Hash_SHA2_sha224_update_last(i64 noundef %i.ao, i32 noundef %.sroa.541.0, ptr noundef %i.al, ptr noundef nonnull %i.d) #4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @_Py_LibHacl_Hacl_Hash_SHA2_sha224_finish(ptr noundef nonnull %i.d, ptr noundef nonnull %i.b) #4
  call void @_Py_LibHacl_Hacl_Hash_SHA2_sha224_init(ptr noundef nonnull %i.d) #4
  call void @_Py_LibHacl_Hacl_Hash_SHA2_sha224_update_nblocks(i32 noundef 64, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #4
  call void @_Py_LibHacl_Hacl_Hash_SHA2_sha224_update_nblocks(i32 noundef 0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d) #4
  call void @_Py_LibHacl_Hacl_Hash_SHA2_sha224_update_last(i64 noundef 92, i32 noundef 28, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d) #4
  call void @_Py_LibHacl_Hacl_Hash_SHA2_sha224_finish(ptr noundef nonnull %i.d, ptr noundef %0) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret void
}

declare void @_Py_LibHacl_Hacl_Hash_SHA2_hash_224(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_Py_LibHacl_Hacl_Hash_SHA2_sha224_update_last(i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_Py_LibHacl_Hacl_Hash_SHA2_sha224_update_nblocks(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_Py_LibHacl_Hacl_Hash_SHA2_sha224_finish(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_Py_LibHacl_Hacl_Hash_SHA2_sha224_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden void @_Py_LibHacl_Hacl_HMAC_compute_sha2_256(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 !guid !18 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 13 uses
  %i.b = alloca [64 x i8], align 16               ; 13 uses
  %i.c = alloca [64 x i8], align 16               ; 9 uses
  %i.d = alloca [8 x i32], align 16               ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.e = icmp ult i32 %2, 65
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = zext nneg i32 %2 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %1, i64 %i.f, i1 false)
  br label %vector.ph

bb.c:                                             ; preds = %bb.a
  call void @_Py_LibHacl_Hacl_Hash_SHA2_hash_256(ptr noundef nonnull %i.a, ptr noundef %1, i32 noundef %2) #4
  br label %vector.ph

vector.ph:                                        ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.b, i8 54, i64 64, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.b, align 16, !tbaa !12
  %wide.load146 = load <16 x i8>, ptr %i.g, align 16, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %wide.load147 = load <16 x i8>, ptr %i.a, align 16, !tbaa !12
  %wide.load148 = load <16 x i8>, ptr %i.h, align 16, !tbaa !12
  %i.i = xor <16 x i8> %wide.load147, %wide.load
  %i.j = xor <16 x i8> %wide.load148, %wide.load146
  store <16 x i8> %i.i, ptr %i.b, align 16, !tbaa !12
  store <16 x i8> %i.j, ptr %i.g, align 16, !tbaa !12
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %wide.load.1 = load <16 x i8>, ptr %i.k, align 16, !tbaa !12
  %wide.load146.1 = load <16 x i8>, ptr %i.l, align 16, !tbaa !12
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %wide.load147.1 = load <16 x i8>, ptr %i.m, align 16, !tbaa !12
  %wide.load148.1 = load <16 x i8>, ptr %i.n, align 16, !tbaa !12
  %i.o = xor <16 x i8> %wide.load147.1, %wide.load.1
  %i.p = xor <16 x i8> %wide.load148.1, %wide.load146.1
  store <16 x i8> %i.o, ptr %i.k, align 16, !tbaa !12
  store <16 x i8> %i.p, ptr %i.l, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.c, i8 92, i64 64, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %wide.load152 = load <16 x i8>, ptr %i.c, align 16, !tbaa !12
  %wide.load153 = load <16 x i8>, ptr %i.q, align 16, !tbaa !12
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %wide.load154 = load <16 x i8>, ptr %i.a, align 16, !tbaa !12
  %wide.load155 = load <16 x i8>, ptr %i.r, align 16, !tbaa !12
  %i.s = xor <16 x i8> %wide.load154, %wide.load152
  %i.t = xor <16 x i8> %wide.load155, %wide.load153
  store <16 x i8> %i.s, ptr %i.c, align 16, !tbaa !12
  store <16 x i8> %i.t, ptr %i.q, align 16, !tbaa !12
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %wide.load152.1 = load <16 x i8>, ptr %i.u, align 16, !tbaa !12
  %wide.load153.1 = load <16 x i8>, ptr %i.v, align 16, !tbaa !12
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %wide.load154.1 = load <16 x i8>, ptr %i.w, align 16, !tbaa !12
  %wide.load155.1 = load <16 x i8>, ptr %i.x, align 16, !tbaa !12
  %i.y = xor <16 x i8> %wide.load154.1, %wide.load152.1
  %i.z = xor <16 x i8> %wide.load155.1, %wide.load153.1
  store <16 x i8> %i.y, ptr %i.u, align 16, !tbaa !12
  store <16 x i8> %i.z, ptr %i.v, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  store <4 x i32> <i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534>, ptr %i.d, align 16, !tbaa !9
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store <4 x i32> <i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225>, ptr %i.aa, align 16, !tbaa !9
  %i.ab = icmp eq i32 %4, 0
  br i1 %i.ab, label %bb.d, label %bb.e

bb.d:                                             ; preds = %vector.ph
  call void @_Py_LibHacl_Hacl_Hash_SHA2_sha256_update_last(i64 noundef 64, i32 noundef 64, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d) #4
  br label %bb.f

bb.e:                                             ; preds = %vector.ph
  %i.ac = lshr i32 %4, 6                          ; 3 uses
  %i.ad = and i32 %4, 63                          ; 2 uses
  %i.ae = icmp ne i32 %i.ac, 0
  %i.af = icmp eq i32 %i.ad, 0
  %or.cond = and i1 %i.ae, %i.af                  ; 2 uses
  %i.ag = add nsw i32 %i.ac, -1                   ; 2 uses
  %i.ah = shl nuw i32 %i.ag, 6
  %i.ai = sub i32 %4, %i.ah
  %.sroa.040.0 = select i1 %or.cond, i32 %i.ag, i32 %i.ac
  %.sroa.541.0 = select i1 %or.cond, i32 %i.ai, i32 %i.ad ; 2 uses
  %i.aj = shl nuw i32 %.sroa.040.0, 6             ; 2 uses
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = getelementptr i8, ptr %3, i64 %i.ak
  call void @_Py_LibHacl_Hacl_Hash_SHA2_sha256_update_nblocks(i32 noundef 64, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d) #4
  call void @_Py_LibHacl_Hacl_Hash_SHA2_sha256_update_nblocks(i32 noundef %i.aj, ptr noundef %3, ptr noundef nonnull %i.d) #4
  %i.am = add nuw nsw i64 %i.ak, 64
  %i.an = zext i32 %.sroa.541.0 to i64
  %i.ao = add nuw nsw i64 %i.am, %i.an
  call void @_Py_LibHacl_Hacl_Hash_SHA2_sha256_update_last(i64 noundef %i.ao, i32 noundef %.sroa.541.0, ptr noundef %i.al, ptr noundef nonnull %i.d) #4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @_Py_LibHacl_Hacl_Hash_SHA2_sha256_finish(ptr noundef nonnull %i.d, ptr noundef nonnull %i.b) #4
  call void @_Py_LibHacl_Hacl_Hash_SHA2_sha256_init(ptr noundef nonnull %i.d) #4
  call void @_Py_LibHacl_Hacl_Hash_SHA2_sha256_update_nblocks(i32 noundef 64, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #4
  call void @_Py_LibHacl_Hacl_Hash_SHA2_sha256_update_nblocks(i32 noundef 0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d) #4
  call void @_Py_LibHacl_Hacl_Hash_SHA2_sha256_update_last(i64 noundef 96, i32 noundef 32, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d) #4
  call void @_Py_LibHacl_Hacl_Hash_SHA2_sha256_finish(ptr noundef nonnull %i.d, ptr noundef %0) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret void
}

declare void @_Py_LibHacl_Hacl_Hash_SHA2_hash_256(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_Py_LibHacl_Hacl_Hash_SHA2_sha256_update_last(i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_Py_LibHacl_Hacl_Hash_SHA2_sha256_update_nblocks(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_Py_LibHacl_Hacl_Hash_SHA2_sha256_finish(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_Py_LibHacl_Hacl_Hash_SHA2_sha256_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden void @_Py_LibHacl_Hacl_HMAC_compute_sha2_384(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 !guid !19 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 21 uses
  %i.b = alloca [128 x i8], align 16              ; 17 uses
  %i.c = alloca [128 x i8], align 16              ; 13 uses
  %i.d = alloca [8 x i64], align 16               ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  %i.e = icmp ult i32 %2, 129
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = zext nneg i32 %2 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %1, i64 %i.f, i1 false)
  br label %vector.ph

bb.c:                                             ; preds = %bb.a
  call void @_Py_LibHacl_Hacl_Hash_SHA2_hash_384(ptr noundef nonnull %i.a, ptr noundef %1, i32 noundef %2) #4
  br label %vector.ph

vector.ph:                                        ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.b, i8 54, i64 128, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.b, align 16, !tbaa !12
  %wide.load184 = load <16 x i8>, ptr %i.g, align 16, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %wide.load185 = load <16 x i8>, ptr %i.a, align 16, !tbaa !12
  %wide.load186 = load <16 x i8>, ptr %i.h, align 16, !tbaa !12
  %i.i = xor <16 x i8> %wide.load185, %wide.load
  %i.j = xor <16 x i8> %wide.load186, %wide.load184
  store <16 x i8> %i.i, ptr %i.b, align 16, !tbaa !12
  store <16 x i8> %i.j, ptr %i.g, align 16, !tbaa !12
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %wide.load.1 = load <16 x i8>, ptr %i.k, align 16, !tbaa !12
  %wide.load184.1 = load <16 x i8>, ptr %i.l, align 16, !tbaa !12
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %wide.load185.1 = load <16 x i8>, ptr %i.m, align 16, !tbaa !12
  %wide.load186.1 = load <16 x i8>, ptr %i.n, align 16, !tbaa !12
  %i.o = xor <16 x i8> %wide.load185.1, %wide.load.1
  %i.p = xor <16 x i8> %wide.load186.1, %wide.load184.1
  store <16 x i8> %i.o, ptr %i.k, align 16, !tbaa !12
  store <16 x i8> %i.p, ptr %i.l, align 16, !tbaa !12
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  %wide.load.2 = load <16 x i8>, ptr %i.q, align 16, !tbaa !12
  %wide.load184.2 = load <16 x i8>, ptr %i.r, align 16, !tbaa !12
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %wide.load185.2 = load <16 x i8>, ptr %i.s, align 16, !tbaa !12
  %wide.load186.2 = load <16 x i8>, ptr %i.t, align 16, !tbaa !12
  %i.u = xor <16 x i8> %wide.load185.2, %wide.load.2
  %i.v = xor <16 x i8> %wide.load186.2, %wide.load184.2
  store <16 x i8> %i.u, ptr %i.q, align 16, !tbaa !12
  store <16 x i8> %i.v, ptr %i.r, align 16, !tbaa !12
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 2 uses
  %wide.load.3 = load <16 x i8>, ptr %i.w, align 16, !tbaa !12
  %wide.load184.3 = load <16 x i8>, ptr %i.x, align 16, !tbaa !12
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %wide.load185.3 = load <16 x i8>, ptr %i.y, align 16, !tbaa !12
  %wide.load186.3 = load <16 x i8>, ptr %i.z, align 16, !tbaa !12
  %i.aa = xor <16 x i8> %wide.load185.3, %wide.load.3
  %i.ab = xor <16 x i8> %wide.load186.3, %wide.load184.3
  store <16 x i8> %i.aa, ptr %i.w, align 16, !tbaa !12
  store <16 x i8> %i.ab, ptr %i.x, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.c, i8 92, i64 128, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %wide.load190 = load <16 x i8>, ptr %i.c, align 16, !tbaa !12
  %wide.load191 = load <16 x i8>, ptr %i.ac, align 16, !tbaa !12
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %wide.load192 = load <16 x i8>, ptr %i.a, align 16, !tbaa !12
  %wide.load193 = load <16 x i8>, ptr %i.ad, align 16, !tbaa !12
  %i.ae = xor <16 x i8> %wide.load192, %wide.load190
  %i.af = xor <16 x i8> %wide.load193, %wide.load191
  store <16 x i8> %i.ae, ptr %i.c, align 16, !tbaa !12
  store <16 x i8> %i.af, ptr %i.ac, align 16, !tbaa !12
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %wide.load190.1 = load <16 x i8>, ptr %i.ag, align 16, !tbaa !12
  %wide.load191.1 = load <16 x i8>, ptr %i.ah, align 16, !tbaa !12
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %wide.load192.1 = load <16 x i8>, ptr %i.ai, align 16, !tbaa !12
  %wide.load193.1 = load <16 x i8>, ptr %i.aj, align 16, !tbaa !12
  %i.ak = xor <16 x i8> %wide.load192.1, %wide.load190.1
  %i.al = xor <16 x i8> %wide.load193.1, %wide.load191.1
  store <16 x i8> %i.ak, ptr %i.ag, align 16, !tbaa !12
  store <16 x i8> %i.al, ptr %i.ah, align 16, !tbaa !12
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 80 ; 2 uses
  %wide.load190.2 = load <16 x i8>, ptr %i.am, align 16, !tbaa !12
  %wide.load191.2 = load <16 x i8>, ptr %i.an, align 16, !tbaa !12
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %wide.load192.2 = load <16 x i8>, ptr %i.ao, align 16, !tbaa !12
  %wide.load193.2 = load <16 x i8>, ptr %i.ap, align 16, !tbaa !12
  %i.aq = xor <16 x i8> %wide.load192.2, %wide.load190.2
  %i.ar = xor <16 x i8> %wide.load193.2, %wide.load191.2
  store <16 x i8> %i.aq, ptr %i.am, align 16, !tbaa !12
  store <16 x i8> %i.ar, ptr %i.an, align 16, !tbaa !12
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 112 ; 2 uses
  %wide.load190.3 = load <16 x i8>, ptr %i.as, align 16, !tbaa !12
  %wide.load191.3 = load <16 x i8>, ptr %i.at, align 16, !tbaa !12
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %wide.load192.3 = load <16 x i8>, ptr %i.au, align 16, !tbaa !12
  %wide.load193.3 = load <16 x i8>, ptr %i.av, align 16, !tbaa !12
  %i.aw = xor <16 x i8> %wide.load192.3, %wide.load190.3
  %i.ax = xor <16 x i8> %wide.load193.3, %wide.load191.3
  store <16 x i8> %i.aw, ptr %i.as, align 16, !tbaa !12
  store <16 x i8> %i.ax, ptr %i.at, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  store i64 -3766243637369397544, ptr %i.d, align 16, !tbaa !14
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 7105036623409894663, ptr %i.ay, align 8, !tbaa !14
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 -7973340178411365097, ptr %i.az, align 16, !tbaa !14
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 1526699215303891257, ptr %i.ba, align 8, !tbaa !14
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 7436329637833083697, ptr %i.bb, align 16, !tbaa !14
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 -8163818279084223215, ptr %i.bc, align 8, !tbaa !14
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i64 -2662702644619276377, ptr %i.bd, align 16, !tbaa !14
  %i.be = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i64 5167115440072839076, ptr %i.be, align 8, !tbaa !14
  %i.bf = icmp eq i32 %4, 0
  br i1 %i.bf, label %bb.d, label %bb.e

bb.d:                                             ; preds = %vector.ph
  call void @_Py_LibHacl_Hacl_Hash_SHA2_sha384_update_last(i64 128, i64 0, i32 noundef 128, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d) #4
  br label %bb.f

bb.e:                                             ; preds = %vector.ph
  %i.bg = lshr i32 %4, 7                          ; 3 uses
  %i.bh = and i32 %4, 127                         ; 2 uses
  %i.bi = icmp ne i32 %i.bg, 0
  %i.bj = icmp eq i32 %i.bh, 0
  %or.cond = and i1 %i.bi, %i.bj                  ; 2 uses
end_hunk_0
