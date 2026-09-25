Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/dnscache?download=true
inline.NumInlined: 46
inline.NumDeleted: 10
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.curl_trc_feat = type { ptr, i32 }
%struct.dnscache_prune_data = type { %struct.curltime, i64, i64 }
%struct.curltime = type { i64, i32 }
%struct.Curl_str = type { ptr, i64 }

@Curl_trc_feat_dns = external local_unnamed_addr global %struct.curl_trc_feat, align 8
@.str = private unnamed_addr constant [46 x i8] c"cache negative name resolve for %s:%d type=%s\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Resolve address '%s' found illegal\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Could not parse CURLOPT_RESOLVE entry '%s'\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"RESOLVE %.*s:%u - old addresses discarded\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Added %.*s:%u:%s to DNS cache%s\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [17 x i8] c" (non-permanent)\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"RESOLVE *:%u using wildcard\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"Hostname in DNS cache was stale, zapped\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"cache entry does not have type=%s addresses\00", align 1
@Curl_ccalloc = external local_unnamed_addr global ptr, align 8
@.str.11 = private unnamed_addr constant [23 x i8] c"Shuffling %i addresses\00", align 1
@Curl_cmalloc = external local_unnamed_addr global ptr, align 8
@Curl_cfree = external local_unnamed_addr global ptr, align 8
@.str.12 = private unnamed_addr constant [4 x i8] c":%u\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @Curl_dnscache_prune(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.dnscache_prune_data, align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !72   ; 5 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !77
  %i.e = and i32 %i.d, 8
  %.not8.i = icmp eq i32 %i.e, 0
  br i1 %.not8.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  br label %dnscache_get.exit

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !78   ; 2 uses
  %.not9.i = icmp eq ptr %i.h, null
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 184
  %spec.select.i = select i1 %.not9.i, ptr null, ptr %i.i
  br label %dnscache_get.exit

dnscache_get.exit:                                ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %i.f, %bb.c ], [ %spec.select.i, %bb.d ] ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %i.k = load i64, ptr %i.j, align 8, !tbaa !79   ; 2 uses
  %i.l = icmp eq ptr %.0.i, null
  %i.m = icmp eq i64 %i.k, -1
  %or.cond = select i1 %i.l, i1 true, i1 %i.m
  br i1 %or.cond, label %dnscache_unlock.exit, label %bb.e

bb.e:                                             ; preds = %dnscache_get.exit
  %.not.i20 = icmp ne ptr %i.b, null
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.o = icmp eq ptr %.0.i, %i.n
  %or.cond.i = select i1 %.not.i20, i1 %i.o, i1 false
  br i1 %or.cond.i, label %bb.f, label %dnscache_lock.exit

bb.f:                                             ; preds = %bb.e
  %i.p = tail call i32 @Curl_share_lock(ptr noundef nonnull %0, i32 noundef 3, i32 noundef 2) #6 ; 0 uses
  br label %dnscache_lock.exit

dnscache_lock.exit:                               ; preds = %bb.e, %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %dnscache_lock.exit
  %.015 = phi i64 [ %i.k, %dnscache_lock.exit ], [ %.1, %bb.g ] ; 2 uses
  %i.s = call ptr @Curl_pgrs_now(ptr noundef nonnull %0) #6 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = load i32, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #6
  store i64 %.015, ptr %i.q, align 8, !tbaa !81
  store i64 %i.t, ptr %1, align 8, !tbaa !82
  store i32 %i.v, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !83
  store i64 0, ptr %i.r, align 8, !tbaa !84
  call void @Curl_hash_clean_with_criterium(ptr noundef nonnull %.0.i, ptr noundef nonnull %1, ptr noundef nonnull @dnscache_entry_is_stale) #6
  %i.w = load i64, ptr %i.r, align 8, !tbaa !84
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  %i.x = call i64 @Curl_hash_count(ptr noundef nonnull %.0.i) #6
  %i.y = icmp ult i64 %i.x, 30000                 ; 2 uses
  %i.z = sdiv i64 %i.w, 2
  %.1 = select i1 %i.y, i64 %.015, i64 %i.z       ; 2 uses
  %.not = icmp eq i64 %.1, 0
  %or.cond19 = select i1 %i.y, i1 true, i1 %.not
  br i1 %or.cond19, label %bb.h, label %bb.g, !llvm.loop !106

bb.h:                                             ; preds = %bb.g
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !72  ; 2 uses
  %.not.i21 = icmp ne ptr %i.aa, null
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 208
  %i.ac = icmp eq ptr %.0.i, %i.ab
  %or.cond.i22 = select i1 %.not.i21, i1 %i.ac, i1 false
  br i1 %or.cond.i22, label %bb.i, label %dnscache_unlock.exit

bb.i:                                             ; preds = %bb.h
  %i.ad = call i32 @Curl_share_unlock(ptr noundef nonnull %0, i32 noundef 3) #6 ; 0 uses
  br label %dnscache_unlock.exit

dnscache_unlock.exit:                             ; preds = %bb.i, %bb.h, %dnscache_get.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @Curl_pgrs_now(ptr noundef) local_unnamed_addr #2

declare i64 @Curl_hash_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local void @Curl_dnscache_clear(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !72   ; 5 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !77
  %i.e = and i32 %i.d, 8
  %.not8.i = icmp eq i32 %i.e, 0
  br i1 %.not8.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !78   ; 2 uses
  %.not9.i = icmp eq ptr %i.h, null
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 184
  br i1 %.not9.i, label %dnscache_get.exit, label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0.i.ph = phi ptr [ %i.i, %bb.d ], [ %i.f, %bb.c ] ; 3 uses
  %.not.i7 = icmp ne ptr %i.b, null
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.k = icmp eq ptr %.0.i.ph, %i.j
  %or.cond.i = select i1 %.not.i7, i1 %i.k, i1 false
  br i1 %or.cond.i, label %bb.f, label %dnscache_lock.exit

bb.f:                                             ; preds = %bb.e
  %i.l = tail call i32 @Curl_share_lock(ptr noundef nonnull %0, i32 noundef 3, i32 noundef 2) #6 ; 0 uses
  br label %dnscache_lock.exit

dnscache_lock.exit:                               ; preds = %bb.e, %bb.f
  tail call void @Curl_hash_clean(ptr noundef nonnull %.0.i.ph) #6
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !72   ; 2 uses
  %.not.i8 = icmp ne ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 208
  %i.o = icmp eq ptr %.0.i.ph, %i.n
  %or.cond.i9 = select i1 %.not.i8, i1 %i.o, i1 false
  br i1 %or.cond.i9, label %bb.g, label %dnscache_get.exit

bb.g:                                             ; preds = %dnscache_lock.exit
  %i.p = tail call i32 @Curl_share_unlock(ptr noundef nonnull %0, i32 noundef 3) #6 ; 0 uses
  br label %dnscache_get.exit

dnscache_get.exit:                                ; preds = %bb.g, %dnscache_lock.exit, %bb.d
  ret void
}

declare void @Curl_hash_clean(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 7) i32 @Curl_dnscache_get(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2, i16 noundef zeroext %3, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [262 x i8], align 16              ; 11 uses
  %5 = alloca %struct.dnscache_prune_data, align 8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !72   ; 5 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !77
  %i.f = and i32 %i.e, 8
  %.not8.i = icmp eq i32 %i.f, 0
  br i1 %.not8.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  br label %dnscache_get.exit

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !78   ; 2 uses
  %.not9.i = icmp eq ptr %i.i, null
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 184
  %spec.select.i = select i1 %.not9.i, ptr null, ptr %i.j
  br label %dnscache_get.exit

dnscache_get.exit:                                ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %i.g, %bb.c ], [ %spec.select.i, %bb.d ] ; 6 uses
  %.not.i14 = icmp ne ptr %i.c, null
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  %i.l = icmp eq ptr %.0.i, %i.k
  %or.cond.i = select i1 %.not.i14, i1 %i.l, i1 false
  br i1 %or.cond.i, label %bb.e, label %dnscache_lock.exit

bb.e:                                             ; preds = %dnscache_get.exit
  %i.m = tail call i32 @Curl_share_lock(ptr noundef nonnull %0, i32 noundef 3, i32 noundef 2) #6 ; 0 uses
  br label %dnscache_lock.exit

dnscache_lock.exit:                               ; preds = %dnscache_get.exit, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %.not.i15 = icmp eq ptr %.0.i, null
  br i1 %.not.i15, label %fetch_addr.exit.thread.thread, label %bb.f

bb.f:                                             ; preds = %dnscache_lock.exit
  %i.n = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #7
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.n, i64 255) ; 3 uses
  call void @Curl_strntolower(ptr noundef nonnull %i.a, ptr noundef nonnull %2, i64 noundef %spec.select.i.i) #6
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 %spec.select.i.i
  %i.p = zext i16 %3 to i32                       ; 2 uses
  %i.q = call i32 (ptr, i64, ptr, ...) @curl_msnprintf(ptr noundef nonnull %i.o, i64 noundef 7, ptr noundef nonnull @.str.12, i32 noundef %i.p) #6
  %i.r = sext i32 %i.q to i64
  %i.s = add nsw i64 %spec.select.i.i, %i.r       ; 2 uses
  %i.t = add nsw i64 %i.s, 1
  %i.u = call ptr @Curl_hash_pick(ptr noundef nonnull %.0.i, ptr noundef nonnull %i.a, i64 noundef %i.t) #6 ; 2 uses
  %.not53.i = icmp eq ptr %i.u, null
  br i1 %.not53.i, label %bb.g, label %.thread75.i

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 4436
  %i.w = load i32, ptr %i.v, align 4
  %i.x = and i32 %i.w, 65536
  %.not54.i = icmp eq i32 %i.x, 0
  br i1 %.not54.i, label %fetch_addr.exit.thread.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @Curl_strntolower(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.7, i64 noundef 1) #6
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.z = call i32 (ptr, i64, ptr, ...) @curl_msnprintf(ptr noundef nonnull %i.y, i64 noundef 7, ptr noundef nonnull @.str.12, i32 noundef %i.p) #6
  %i.aa = sext i32 %i.z to i64                    ; 2 uses
  %i.ab = add nsw i64 %i.aa, 1
  %i.ac = add nsw i64 %i.aa, 2
  %i.ad = call ptr @Curl_hash_pick(ptr noundef nonnull %.0.i, ptr noundef nonnull %i.a, i64 noundef %i.ac) #6 ; 2 uses
  %.not55.i = icmp eq ptr %i.ad, null
  br i1 %.not55.i, label %fetch_addr.exit.thread.thread, label %.thread75.i

.thread75.i:                                      ; preds = %bb.h, %bb.f
  %.04180.i = phi i64 [ %i.ab, %bb.h ], [ %i.s, %bb.f ]
  %.04279.i = phi ptr [ %i.ad, %bb.h ], [ %i.u, %bb.f ] ; 8 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1168 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !79
  %.not56.i = icmp eq i64 %i.af, -1
  br i1 %.not56.i, label %.thread86.i, label %bb.i

bb.i:                                             ; preds = %.thread75.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  %i.ag = call ptr @Curl_pgrs_now(ptr noundef nonnull %0) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i64 16, i1 false), !tbaa.struct !86
  %i.ah = load i64, ptr %i.ae, align 8, !tbaa !79
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !81
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 0, ptr %i.aj, align 8, !tbaa !84
  %i.ak = getelementptr inbounds nuw i8, ptr %.04279.i, i64 8 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !89
  %.not.i.i = icmp eq i64 %i.al, 0
  br i1 %.not.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %.04279.i, i64 16
  %i.an = load i32, ptr %i.am, align 8, !tbaa !90
  %.not17.i.i = icmp eq i32 %i.an, 0
  br i1 %.not17.i.i, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ao = call i64 @curlx_ptimediff_ms(ptr noundef nonnull %5, ptr noundef nonnull %i.ak) #6
  %i.ap = load ptr, ptr %.04279.i, align 8, !tbaa !91
  %.not18.i.i = icmp eq ptr %i.ap, null
  %i.aq = zext i1 %.not18.i.i to i64
  %spec.select.i71.i = shl nsw i64 %i.ao, %i.aq
  %i.ar = load i64, ptr %i.ai, align 8, !tbaa !81
  %.not19.i.i = icmp slt i64 %spec.select.i71.i, %i.ar
end_hunk_0
