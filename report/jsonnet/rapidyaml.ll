Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jsonnet/original/rapidyaml?download=true
inline.NumInlined: 4426
inline.NumDeleted: 407
loop-unroll.NumCompletelyUnrolled: 307
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 323
begin_hunk_0_@_ZN2c46detail11aalloc_implEmm:bb.a
  unreachable

.thread:                                          ; preds = %bb.b, %bb.c
  %.01522 = phi i64 [ %1, %bb.c ], [ 8, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  %i.e = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef %.01522, i64 noundef %0) #59
  switch i32 %i.e, label %bb.g [
    i32 0, label %bb.f
    i32 12, label %bb.e
  ], !prof !368

bb.e:                                             ; preds = %.thread
  tail call void (ptr, i32, ptr, ...) @_ZN2c412handle_errorENS_6srclocEPKcz(ptr nonnull @.str.1, i32 20043, ptr noundef nonnull @.str.7, i64 noundef %0, i64 noundef %0) #58
  unreachable

bb.f:                                             ; preds = %.thread
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !74
  br label %bb.g

bb.g:                                             ; preds = %.thread, %bb.f
  %.0 = phi ptr [ %i.f, %bb.f ], [ null, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  ret ptr %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noundef i32 @posix_memalign(ptr noundef writeonly captures(none), i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN2c46detail13arealloc_implEPvmmm(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) #1 {
bb.a:
  %i.a = load ptr, ptr @_ZN2c46detail8s_aallocE, align 8, !tbaa !74
  %i.b = tail call noundef ptr %i.a(i64 noundef %2, i64 noundef %3), !inline_history !369 ; 5 uses
  %i.c = tail call i64 @llvm.umin.i64(i64 %2, i64 %1) ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 %2
  %i.e = icmp ugt ptr %i.d, %0
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.g = icmp ult ptr %i.b, %i.f
  %i.h = select i1 %i.e, i1 %i.g, i1 false
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.b, ptr align 1 %0, i64 %i.c, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.b, ptr align 1 %0, i64 %i.c, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = load ptr, ptr @_ZN2c46detail7s_afreeE, align 8, !tbaa !74
  tail call void %i.i(ptr noundef %0), !inline_history !370
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN2c46aallocEmm(i64 noundef %0, i64 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr @_ZN2c46detail8s_aallocE, align 8, !tbaa !74
  %i.b = tail call noundef ptr %i.a(i64 noundef %0, i64 noundef %1)
  ret ptr %i.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN2c45afreeEPv(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr @_ZN2c46detail7s_afreeE, align 8, !tbaa !74
  tail call void %i.a(ptr noundef %0)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZN2c410get_aallocEv() local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr @_ZN2c46detail8s_aallocE, align 8, !tbaa !74
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN2c410set_aallocEPFPvmmE(ptr noundef %0) local_unnamed_addr #9 {
bb.a:
  store ptr %0, ptr @_ZN2c46detail8s_aallocE, align 8, !tbaa !74
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZN2c49get_afreeEv() local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr @_ZN2c46detail7s_afreeE, align 8, !tbaa !74
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN2c49set_afreeEPFvPvE(ptr noundef %0) local_unnamed_addr #9 {
bb.a:
  store ptr %0, ptr @_ZN2c46detail7s_afreeE, align 8, !tbaa !74
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZN2c412get_areallocEv() local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr @_ZN2c46detail10s_areallocE, align 8, !tbaa !74
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN2c412set_areallocEPFPvS0_mmmE(ptr noundef %0) local_unnamed_addr #9 {
bb.a:
  store ptr %0, ptr @_ZN2c46detail10s_areallocE, align 8, !tbaa !74
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN2c48areallocEPvmmm(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr @_ZN2c46detail10s_areallocE, align 8, !tbaa !74
  %i.b = tail call noundef ptr %i.a(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3)
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN2c46detail26_MemoryResourceSingleChunk7releaseEv(ptr noundef nonnull align 8 dereferenceable(49) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !80   ; 2 uses
  %.not = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i8, ptr %i.c, align 8, !range !81
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond = select i1 %.not, i1 %i.e, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !82
  %i.h = load ptr, ptr %0, align 8, !tbaa !84
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, i64 noundef %i.g, i64 noundef 16), !inline_history !0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.a, i8 0, i64 25, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN2c46detail26_MemoryResourceSingleChunk7acquireEm(ptr noundef nonnull align 8 dereferenceable(49) initializes((40, 49)) %0, i64 noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i64 0, ptr %i.a, align 8, !tbaa !85
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 1, ptr %i.b, align 8, !tbaa !86
  %i.c = load ptr, ptr %0, align 8, !tbaa !84
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef 16, ptr noundef null), !inline_history !1 ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.b, label %_ZN2c414MemoryResource8allocateEmmPv.exit, !prof !72

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @_ZN2c412handle_errorENS_6srclocEPKcz(ptr nonnull @.str.1, i32 3493, ptr noundef nonnull @.str.222, i64 noundef %1) #58
  unreachable

_ZN2c414MemoryResource8allocateEmmPv.exit:        ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.f, ptr %i.g, align 8, !tbaa !80
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %1, ptr %i.h, align 8, !tbaa !82
  store i64 0, ptr %i.a, align 8, !tbaa !85
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN2c46detail26_MemoryResourceSingleChunk7acquireEPvm(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(49) initializes((24, 49)) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 0, ptr %i.b, align 8, !tbaa !86
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.c, align 8, !tbaa !80
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %2, ptr %i.d, align 8, !tbaa !82
  store i64 0, ptr %i.a, align 8, !tbaa !85
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN2c420MemoryResourceLinear11do_allocateEmmPv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(49) %0, i64 noundef %1, i64 noundef %2, ptr nofree readnone captures(none) %3) unnamed_addr #1 align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !85   ; 3 uses
  %i.d = add i64 %i.c, %1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !82   ; 3 uses
  %i.g = icmp ugt i64 %i.d, %i.f
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @_ZN2c412handle_errorENS_6srclocEPKcz(ptr nonnull @.str.1, i32 20189, ptr noundef nonnull @.str.8) #58
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = sub i64 %i.f, %i.c                       ; 3 uses
  %i.i = icmp ult i64 %i.h, %1
  br i1 %i.i, label %_ZSt5alignmmRPvRm.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !80
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.c
  %i.m = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.n = add i64 %2, -1
  %i.o = add i64 %i.n, %i.m
  %i.p = sub i64 0, %2
  %i.q = and i64 %i.o, %i.p                       ; 3 uses
  %i.r = sub i64 %i.q, %i.m                       ; 2 uses
  %i.s = sub nuw i64 %i.h, %1
  %i.t = icmp ugt i64 %i.r, %i.s
  %.not = icmp eq i64 %i.q, 0
  %or.cond = or i1 %.not, %i.t
  br i1 %or.cond, label %_ZSt5alignmmRPvRm.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = inttoptr i64 %i.q to ptr
  %4 = add i64 %i.f, %1
  %5 = sub i64 %4, %i.h
  %i.v = add i64 %5, %i.r
  store i64 %i.v, ptr %i.b, align 8, !tbaa !85
  br label %bb.g

_ZSt5alignmmRPvRm.exit.thread:                    ; preds = %bb.e, %bb.d
  tail call void (ptr, i32, ptr, ...) @_ZN2c412handle_errorENS_6srclocEPKcz(ptr nonnull @.str.1, i32 20203, ptr noundef nonnull @.str.9) #58
  unreachable

bb.g:                                             ; preds = %bb.a, %bb.f
  %.0 = phi ptr [ %i.u, %bb.f ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN2c420MemoryResourceLinear13do_deallocateEPvmm(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, i64 %2, i64 %3) unnamed_addr #0 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN2c420MemoryResourceLinear13do_reallocateEPvmmm(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) unnamed_addr #1 align 2 {
bb.a:
  %i.a = icmp eq i64 %3, %2
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !80   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !85   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.h = icmp ne ptr %i.f, %i.g                   ; 2 uses
  %i.i = icmp ult i64 %3, %2
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  br i1 %i.h, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.neg = sub i64 %3, %2
  %i.j = add i64 %.neg, %i.e
  store i64 %i.j, ptr %i.d, align 8, !tbaa !85
  br label %bb.h

bb.e:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %3
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.m
  %.not = icmp ugt ptr %i.k, %i.n
  %or.cond = select i1 %i.h, i1 true, i1 %.not
  br i1 %or.cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = sub i64 %3, %2
  %i.p = add i64 %i.o, %i.e
  store i64 %i.p, ptr %i.d, align 8, !tbaa !85
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %0, align 8, !tbaa !84
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef ptr %i.s(ptr noundef nonnull align 8 dereferenceable(49) %0, i64 noundef %3, i64 noundef %4, ptr noundef %1)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d, %bb.c, %bb.a
  %.1 = phi ptr [ %1, %bb.a ], [ %i.t, %bb.g ], [ %1, %bb.f ], [ %1, %bb.d ], [ %1, %bb.c ]
  ret ptr %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef range(i64 0, 5) i64 @_ZN2c417decode_code_pointEPhmj(ptr noalias nofree noundef writeonly captures(none) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 {
bb.a:
  %i.a = icmp ult i32 %2, 128
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = trunc nuw nsw i32 %2 to i8
  store i8 %i.b, ptr %0, align 1, !tbaa !87
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ult i32 %2, 2048
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = lshr i32 %2, 6
  %i.e = trunc nuw nsw i32 %i.d to i8
  %i.f = or disjoint i8 %i.e, -64
  store i8 %i.f, ptr %0, align 1, !tbaa !87
  %i.g = trunc i32 %2 to i8
  %i.h = and i8 %i.g, 63
  %i.i = or disjoint i8 %i.h, -128
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.i, ptr %i.j, align 1, !tbaa !87
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.k = icmp ult i32 %2, 65536
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = lshr i32 %2, 12
  %i.m = trunc nuw nsw i32 %i.l to i8
  %i.n = or disjoint i8 %i.m, -32
  store i8 %i.n, ptr %0, align 1, !tbaa !87
  %i.o = lshr i32 %2, 6
  %i.p = trunc i32 %i.o to i8
  %i.q = and i8 %i.p, 63
  %i.r = or disjoint i8 %i.q, -128
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.r, ptr %i.s, align 1, !tbaa !87
  %i.t = trunc i32 %2 to i8
  %i.u = and i8 %i.t, 63
  %i.v = or disjoint i8 %i.u, -128
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.v, ptr %i.w, align 1, !tbaa !87
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.x = icmp ult i32 %2, 1114112
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = lshr i32 %2, 18
  %i.z = trunc nuw nsw i32 %i.y to i8
  %i.aa = lshr i32 %2, 12
  %i.ab = trunc i32 %i.aa to i8
  %i.ac = lshr i32 %2, 6
  %i.ad = trunc i32 %i.ac to i8
  %i.ae = trunc i32 %2 to i8
  %i.af = insertelement <4 x i8> poison, i8 %i.z, i64 0
  %i.ag = insertelement <4 x i8> %i.af, i8 %i.ab, i64 1
  %i.ah = insertelement <4 x i8> %i.ag, i8 %i.ad, i64 2
  %i.ai = insertelement <4 x i8> %i.ah, i8 %i.ae, i64 3
  %i.aj = and <4 x i8> %i.ai, <i8 -1, i8 63, i8 63, i8 63>
  %i.ak = or disjoint <4 x i8> %i.aj, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.ak, ptr %0, align 1, !tbaa !87
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f, %bb.d, %bb.b
  %.0 = phi i64 [ 1, %bb.b ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.h ], [ 0, %bb.g ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local { ptr, i64 } @_ZN2c417decode_code_pointENS_15basic_substringIcEENS0_IKcEE(ptr %0, i64 %1, ptr nofree readonly captures(address) %2, i64 %3) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %.not.i17 = icmp samesign eq i64 %3, 0
  br i1 %.not.i17, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.critedge.i
  %.032.i19 = phi ptr [ %i.j, %.critedge.i ], [ %2, %bb.a ] ; 2 uses
  %.018 = phi i32 [ %i.i, %.critedge.i ], [ 0, %bb.a ]
  %i.b = load i8, ptr %.032.i19, align 1, !tbaa !87, !noalias !375 ; 4 uses
  %i.c = sext i8 %i.b to i32
  %i.d = add i8 %i.b, -48
  %or.cond.i = icmp ult i8 %i.d, 10
  br i1 %or.cond.i, label %.critedge.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.e = add i8 %i.b, -97
  %or.cond6.i = icmp ult i8 %i.e, 6
  br i1 %or.cond6.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = add i8 %i.b, -65
  %or.cond9.i = icmp ult i8 %i.f, 6
  br i1 %or.cond9.i, label %.critedge.i, label %_ZN2c48read_hexIjEEbNS_15basic_substringIKcEEPT_.exit

.critedge.i:                                      ; preds = %bb.c, %bb.b, %.lr.ph
  %.sink = phi i32 [ -87, %bb.b ], [ -48, %.lr.ph ], [ -55, %bb.c ]
  %i.g = add nsw i32 %.sink, %i.c
  %i.h = shl i32 %.018, 4
  %i.i = add nuw i32 %i.g, %i.h                   ; 15 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.032.i19, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.j, %i.a
  br i1 %.not.i, label %._crit_edge, label %.lr.ph

_ZN2c48read_hexIjEEbNS_15basic_substringIKcEEPT_.exit: ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @_ZN2c412handle_errorENS_6srclocEPKcz(ptr nonnull @.str.1, i32 20403, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.10) #58
  unreachable

._crit_edge:                                      ; preds = %.critedge.i
  %i.k = icmp ult i32 %i.i, 128
  br i1 %i.k, label %._crit_edge.thread, label %bb.d

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.0.lcssa21 = phi i32 [ %i.i, %._crit_edge ], [ 0, %bb.a ]
  %i.l = trunc nuw nsw i32 %.0.lcssa21 to i8
  store i8 %i.l, ptr %0, align 1, !tbaa !87, !alias.scope !376
  br label %_ZN2c417decode_code_pointEPhmj.exit

bb.d:                                             ; preds = %._crit_edge
  %i.m = icmp ult i32 %i.i, 2048
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
end_hunk_0
