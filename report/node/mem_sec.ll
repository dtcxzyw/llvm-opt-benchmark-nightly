Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/mem_sec?download=true
inline.NumInlined: 25
inline.NumDeleted: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sh_st = type { ptr, i64, ptr, i64, ptr, i64, i64, ptr, ptr, i64 }

@secure_mem_initialized = internal unnamed_addr global i1 false, align 4
@sec_malloc_lock = internal unnamed_addr global ptr null, align 8
@secure_mem_used = internal unnamed_addr global i64 0, align 8
@sh = internal unnamed_addr global %struct.sh_st zeroinitializer, align 8
@.str = private unnamed_addr constant [27 x i8] c"assertion failed: size > 0\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"../../deps/openssl/openssl/crypto/mem_sec.c\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"assertion failed: (size & (size - 1)) == 0\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"assertion failed: (minsize & (minsize - 1)) == 0\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"assertion failed: sh.freelist != NULL\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"assertion failed: sh.bittable != NULL\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"assertion failed: sh.bitmalloc != NULL\00", align 1
@.str.7 = private unnamed_addr constant [55 x i8] c"assertion failed: list >= 0 && list < sh.freelist_size\00", align 1
@.str.8 = private unnamed_addr constant [74 x i8] c"assertion failed: ((ptr - sh.arena) & ((sh.arena_size >> list) - 1)) == 0\00", align 1
@.str.9 = private unnamed_addr constant [52 x i8] c"assertion failed: bit > 0 && bit < sh.bittable_size\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"assertion failed: !TESTBIT(table, bit)\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"assertion failed: WITHIN_FREELIST(list)\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"assertion failed: WITHIN_ARENA(ptr)\00", align 1
@.str.13 = private unnamed_addr constant [65 x i8] c"assertion failed: temp->next == NULL || WITHIN_ARENA(temp->next)\00", align 1
@.str.14 = private unnamed_addr constant [54 x i8] c"assertion failed: (char **)temp->next->p_next == list\00", align 1
@.str.15 = private unnamed_addr constant [57 x i8] c"assertion failed: !sh_testbit(temp, slist, sh.bitmalloc)\00", align 1
@.str.16 = private unnamed_addr constant [45 x i8] c"assertion failed: temp != sh.freelist[slist]\00", align 1
@.str.17 = private unnamed_addr constant [45 x i8] c"assertion failed: sh.freelist[slist] == temp\00", align 1
@.str.18 = private unnamed_addr constant [83 x i8] c"assertion failed: temp - (sh.arena_size >> slist) == sh_find_my_buddy(temp, slist)\00", align 1
@.str.19 = private unnamed_addr constant [55 x i8] c"assertion failed: sh_testbit(chunk, list, sh.bittable)\00", align 1
@.str.20 = private unnamed_addr constant [38 x i8] c"assertion failed: WITHIN_ARENA(chunk)\00", align 1
@.str.21 = private unnamed_addr constant [38 x i8] c"assertion failed: TESTBIT(table, bit)\00", align 1
@.str.22 = private unnamed_addr constant [80 x i8] c"assertion failed: WITHIN_FREELIST(temp2->p_next) || WITHIN_ARENA(temp2->p_next)\00", align 1
@.str.23 = private unnamed_addr constant [53 x i8] c"assertion failed: sh_testbit(ptr, list, sh.bittable)\00", align 1
@.str.24 = private unnamed_addr constant [55 x i8] c"assertion failed: ptr == sh_find_my_buddy(buddy, list)\00", align 1
@.str.26 = private unnamed_addr constant [55 x i8] c"assertion failed: !sh_testbit(ptr, list, sh.bitmalloc)\00", align 1
@.str.27 = private unnamed_addr constant [43 x i8] c"assertion failed: sh.freelist[list] == ptr\00", align 1
@.str.28 = private unnamed_addr constant [33 x i8] c"assertion failed: (bit & 1) == 0\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 3) i32 @CRYPTO_secure_malloc_init(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.b = load i1, ptr @secure_mem_initialized, align 4
  br i1 %.b, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @CRYPTO_THREAD_lock_new() #9 ; 2 uses
  store ptr %i.a, ptr @sec_malloc_lock, align 8, !tbaa !12
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.w, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @sh, i8 0, i64 80, i1 false)
  %.not.i = icmp eq i64 %0, 0
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @OPENSSL_die(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 439) #10
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.c = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %0)
  %i.d = icmp samesign ult i64 %i.c, 2
  br i1 %i.d, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 440) #10
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.e = icmp ult i64 %1, 17
  br i1 %i.e, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.f = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %1)
  %i.g = icmp samesign ult i64 %i.f, 2
  br i1 %i.g, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 461) #10
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.g
  %.035.i = phi i64 [ 16, %bb.g ], [ %1, %bb.h ]  ; 2 uses
  store i64 %0, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 24), align 8, !tbaa !18
  store i64 %.035.i, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 48), align 8, !tbaa !19
  %i.h = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.035.i, i1 true)
  %i.i = lshr i64 %0, %i.h                        ; 2 uses
  %i.j = shl nuw nsw i64 %i.i, 1                  ; 2 uses
  store i64 %i.j, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 72), align 8, !tbaa !36
  %i.k = icmp ult i64 %i.i, 4
  br i1 %i.k, label %bb.u, label %bb.k

bb.k:                                             ; preds = %bb.j
  %2 = tail call range(i64 1, 65) i64 @llvm.ctlz.i64(i64 %i.j, i1 true)
  %3 = xor i64 %2, 63                             ; 2 uses
  store i64 %3, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 40), align 8, !tbaa !20
  %i.l = shl nuw nsw i64 %3, 3
  %i.m = tail call noalias ptr @CRYPTO_zalloc(i64 noundef %i.l, ptr noundef nonnull @.str.1, i32 noundef 478) #9 ; 2 uses
  store ptr %i.m, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 32), align 8, !tbaa !21
  %.not43.i = icmp eq ptr %i.m, null
  br i1 %.not43.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 479) #10
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.n = load i64, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 72), align 8, !tbaa !36
  %i.o = lshr i64 %i.n, 3
  %i.p = tail call noalias ptr @CRYPTO_zalloc(i64 noundef %i.o, ptr noundef nonnull @.str.1, i32 noundef 483) #9 ; 2 uses
  store ptr %i.p, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 56), align 8, !tbaa !22
  %.not44.i = icmp eq ptr %i.p, null
  br i1 %.not44.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 484) #10
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.q = load i64, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 72), align 8, !tbaa !36
  %i.r = lshr i64 %i.q, 3
  %i.s = tail call noalias ptr @CRYPTO_zalloc(i64 noundef %i.r, ptr noundef nonnull @.str.1, i32 noundef 488) #9 ; 2 uses
  store ptr %i.s, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 64), align 8, !tbaa !23
  %.not45.i = icmp eq ptr %i.s, null
  br i1 %.not45.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 489) #10
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.t = tail call i64 @sysconf(i32 noundef 30) #9 ; 2 uses
  %i.u = icmp slt i64 %i.t, 1
  %..i = select i1 %i.u, i64 4096, i64 %i.t       ; 5 uses
  %i.v = load i64, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 24), align 8, !tbaa !18
  %reass.add.i = shl i64 %..i, 1                  ; 2 uses
  %i.w = add i64 %reass.add.i, %i.v               ; 2 uses
  store i64 %i.w, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 8), align 8, !tbaa !37
  %i.x = tail call ptr @mmap64(ptr noundef null, i64 noundef %i.w, i32 noundef 3, i32 noundef 34, i32 noundef -1, i64 noundef 0) #9 ; 3 uses
  store ptr %i.x, ptr @sh, align 8, !tbaa !24
  %i.y = icmp eq ptr %i.x, inttoptr (i64 -1 to ptr)
  br i1 %i.y, label %._crit_edge.i, label %bb.r

._crit_edge.i:                                    ; preds = %bb.q
  %.pre.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 32), align 8, !tbaa !21
  br label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %..i ; 2 uses
  store ptr %i.z, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 16), align 8, !tbaa !25
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 56), align 8, !tbaa !22
  tail call fastcc void @sh_setbit(ptr noundef nonnull %i.z, i32 noundef 0, ptr noundef %i.aa)
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 32), align 8, !tbaa !21
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 16), align 8, !tbaa !25
  tail call fastcc void @sh_add_to_list(ptr noundef %i.ab, ptr noundef %i.ac)
  %i.ad = load ptr, ptr @sh, align 8, !tbaa !24
  %i.ae = tail call i32 @mprotect(ptr noundef %i.ad, i64 noundef %..i, i32 noundef 0) #9
  %i.af = icmp slt i32 %i.ae, 0
  %i.ag = load i64, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 24), align 8, !tbaa !18
  %i.ah = add i64 %reass.add.i, -1
  %i.ai = add i64 %i.ah, %i.ag
  %i.aj = sub nsw i64 0, %..i
  %i.ak = and i64 %i.ai, %i.aj
  %i.al = load ptr, ptr @sh, align 8, !tbaa !24
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ak
  %i.an = tail call i32 @mprotect(ptr noundef %i.am, i64 noundef %..i, i32 noundef 0) #9
  %i.ao = icmp slt i32 %i.an, 0
  %i.ap = select i1 %i.ao, i1 true, i1 %i.af
  %.1.i = select i1 %i.ap, i32 2, i32 1           ; 2 uses
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 16), align 8, !tbaa !25
  %i.ar = load i64, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 24), align 8, !tbaa !18
  %i.as = tail call i64 (i64, ...) @syscall(i64 noundef 325, ptr noundef %i.aq, i64 noundef %i.ar, i32 noundef 1) #9
  %i.at = icmp slt i64 %i.as, 0
  br i1 %i.at, label %bb.s, label %sh_init.exit

bb.s:                                             ; preds = %bb.r
  %i.au = tail call ptr @__errno_location() #11
  %i.av = load i32, ptr %i.au, align 4, !tbaa !38
  %i.aw = icmp eq i32 %i.av, 38
  br i1 %i.aw, label %bb.t, label %sh_init.exit

bb.t:                                             ; preds = %bb.s
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 16), align 8, !tbaa !25
  %i.ay = load i64, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 24), align 8, !tbaa !18
  %i.az = tail call i32 @mlock(ptr noundef %i.ax, i64 noundef %i.ay) #9
  %i.ba = icmp slt i32 %i.az, 0
  %spec.select46.i = select i1 %i.ba, i32 2, i32 %.1.i
  br label %sh_init.exit

bb.u:                                             ; preds = %._crit_edge.i, %bb.j
  %i.bb = phi ptr [ %.pre.i, %._crit_edge.i ], [ null, %bb.j ]
  tail call void @CRYPTO_free(ptr noundef %i.bb, ptr noundef nonnull @.str.1, i32 noundef 595) #9
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 56), align 8, !tbaa !22
  tail call void @CRYPTO_free(ptr noundef %i.bc, ptr noundef nonnull @.str.1, i32 noundef 596) #9
  %i.bd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 64), align 8, !tbaa !23
  tail call void @CRYPTO_free(ptr noundef %i.bd, ptr noundef nonnull @.str.1, i32 noundef 597) #9
  %i.be = load ptr, ptr @sh, align 8, !tbaa !24   ; 2 uses
  %i.bf = icmp ne ptr %i.be, inttoptr (i64 -1 to ptr)
  %i.bg = load i64, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 8), align 8 ; 2 uses
  %i.bh = icmp ne i64 %i.bg, 0
  %or.cond.i.i = select i1 %i.bf, i1 %i.bh, i1 false
  br i1 %or.cond.i.i, label %bb.v, label %sh_init.exit.thread

bb.v:                                             ; preds = %bb.u
  %i.bi = tail call i32 @munmap(ptr noundef %i.be, i64 noundef %i.bg) #9 ; 0 uses
  br label %sh_init.exit.thread

sh_init.exit.thread:                              ; preds = %bb.u, %bb.v
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @sh, i8 0, i64 80, i1 false)
  %i.bj = load ptr, ptr @sec_malloc_lock, align 8, !tbaa !12
  tail call void @CRYPTO_THREAD_lock_free(ptr noundef %i.bj) #9
  store ptr null, ptr @sec_malloc_lock, align 8, !tbaa !12
  br label %bb.w

sh_init.exit:                                     ; preds = %bb.r, %bb.s, %bb.t
  %.2.i = phi i32 [ %.1.i, %bb.r ], [ 2, %bb.s ], [ %spec.select46.i, %bb.t ]
  %i.bk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 16), align 8, !tbaa !25
  %i.bl = load i64, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 24), align 8, !tbaa !18
  %i.bm = tail call i32 @madvise(ptr noundef %i.bk, i64 noundef %i.bl, i32 noundef 16) #9
  %i.bn = icmp slt i32 %i.bm, 0
  %spec.select47.i = select i1 %i.bn, i32 2, i32 %.2.i
  store i1 true, ptr @secure_mem_initialized, align 4
  br label %bb.w

bb.w:                                             ; preds = %bb.a, %sh_init.exit.thread, %sh_init.exit, %bb.b
  %.04 = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ %spec.select47.i, %sh_init.exit ], [ 0, %sh_init.exit.thread ]
  ret i32 %.04
}

declare ptr @CRYPTO_THREAD_lock_new() local_unnamed_addr #1

declare void @CRYPTO_THREAD_lock_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @CRYPTO_secure_malloc_done() local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @secure_mem_used, align 8, !tbaa !26
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 32), align 8, !tbaa !21
  tail call void @CRYPTO_free(ptr noundef %i.c, ptr noundef nonnull @.str.1, i32 noundef 595) #9
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 56), align 8, !tbaa !22
  tail call void @CRYPTO_free(ptr noundef %i.d, ptr noundef nonnull @.str.1, i32 noundef 596) #9
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 64), align 8, !tbaa !23
  tail call void @CRYPTO_free(ptr noundef %i.e, ptr noundef nonnull @.str.1, i32 noundef 597) #9
  %i.f = load ptr, ptr @sh, align 8, !tbaa !24    ; 2 uses
  %i.g = icmp ne ptr %i.f, inttoptr (i64 -1 to ptr)
  %i.h = load i64, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 8), align 8 ; 2 uses
  %i.i = icmp ne i64 %i.h, 0
  %or.cond.i = select i1 %i.g, i1 %i.i, i1 false
  br i1 %or.cond.i, label %bb.c, label %sh_done.exit

bb.c:                                             ; preds = %bb.b
  %i.j = tail call i32 @munmap(ptr noundef %i.f, i64 noundef %i.h) #9 ; 0 uses
  br label %sh_done.exit

sh_done.exit:                                     ; preds = %bb.b, %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @sh, i8 0, i64 80, i1 false)
  store i1 false, ptr @secure_mem_initialized, align 4
  %i.k = load ptr, ptr @sec_malloc_lock, align 8, !tbaa !12
  tail call void @CRYPTO_THREAD_lock_free(ptr noundef %i.k) #9
  store ptr null, ptr @sec_malloc_lock, align 8, !tbaa !12
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %sh_done.exit
  %.0 = phi i32 [ 1, %sh_done.exit ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @CRYPTO_secure_malloc_initialized() local_unnamed_addr #2 {
bb.a:
  %.b = load i1, ptr @secure_mem_initialized, align 4
  %i.a = zext i1 %.b to i32
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @CRYPTO_secure_malloc(i64 noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.b = load i1, ptr @secure_mem_initialized, align 4
  br i1 %.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noalias ptr @CRYPTO_malloc(i64 noundef %0, ptr noundef %1, i32 noundef %2) #9
  br label %bb.bd

bb.c:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @sec_malloc_lock, align 8, !tbaa !12
  %i.c = tail call i32 @CRYPTO_THREAD_write_lock(ptr noundef %i.b) #9
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = load i64, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 24), align 8, !tbaa !18 ; 3 uses
  %i.e = icmp ugt i64 %0, %i.d
  br i1 %i.e, label %sh_malloc.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 40), align 8, !tbaa !20 ; 2 uses
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 48), align 8, !tbaa !19
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.055.in.i = phi i64 [ %i.f, %bb.e ], [ %.055.i, %bb.f ] ; 2 uses
  %.0.i = phi i64 [ %i.g, %bb.e ], [ %i.i, %bb.f ] ; 2 uses
  %.055.i = add nsw i64 %.055.in.i, -1            ; 7 uses
  %i.h = icmp ult i64 %.0.i, %0
  %i.i = shl i64 %.0.i, 1
  br i1 %i.h, label %bb.f, label %bb.g, !llvm.loop !39

bb.g:                                             ; preds = %bb.f
  %i.j = icmp sgt i64 %.055.in.i, 0
  br i1 %i.j, label %.lr.ph.i, label %sh_malloc.exit.thread

.lr.ph.i:                                         ; preds = %bb.g
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 32), align 8, !tbaa !21 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i
  %.05497.i = phi i64 [ %.055.i, %.lr.ph.i ], [ %i.n, %bb.i ] ; 5 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.05497.i
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !28   ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %bb.i, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.h
  %.not62.i64 = icmp eq i64 %.05497.i, %.055.i
  br i1 %.not62.i64, label %.preheader.i.preheader..preheader.i._crit_edge_crit_edge, label %.lr.ph.preheader

.preheader.i.preheader..preheader.i._crit_edge_crit_edge: ; preds = %.preheader.i.preheader
  %.pre75 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 56), align 8, !tbaa !22
  br label %.preheader.i._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader.i.preheader
  %.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 64), align 8, !tbaa !23
  br label %.lr.ph

bb.i:                                             ; preds = %bb.h
  %i.n = add nsw i64 %.05497.i, -1
  %i.o = icmp sgt i64 %.05497.i, 0
  br i1 %i.o, label %bb.h, label %sh_malloc.exit.thread, !llvm.loop !40

.preheader.i:                                     ; preds = %sh_find_my_buddy.exit.i
  %.not62.i = icmp eq i64 %i.bh, %.055.i
  br i1 %.not62.i, label %.preheader.i._crit_edge.loopexit, label %.lr.ph, !llvm.loop !41

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.preheader.i
  %i.p = phi ptr [ %i.eo, %.preheader.i ], [ %.pre, %.lr.ph.preheader ]
  %.1.i65 = phi i64 [ %i.bh, %.preheader.i ], [ %.05497.i, %.lr.ph.preheader ] ; 4 uses
  %i.q = phi ptr [ %i.dt, %.preheader.i ], [ %i.m, %.lr.ph.preheader ] ; 10 uses
  %i.r = phi i64 [ %i.dv, %.preheader.i ], [ %i.d, %.lr.ph.preheader ]
  %i.s = trunc i64 %.1.i65 to i32                 ; 2 uses
  %i.t = icmp sgt i32 %i.s, -1
  %i.u = and i64 %.1.i65, 4294967295              ; 3 uses
  %i.v = load i64, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 40), align 8
  %i.w = icmp sgt i64 %i.v, %i.u
  %or.cond.i.i = select i1 %i.t, i1 %i.w, i1 false
  br i1 %or.cond.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 359) #10
  unreachable

bb.k:                                             ; preds = %.lr.ph
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 16), align 8, !tbaa !25
  %i.y = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 2 uses
  %i.ab = lshr i64 %i.r, %i.u                     ; 2 uses
  %i.ac = add i64 %i.ab, -1
  %i.ad = and i64 %i.aa, %i.ac
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 360) #10
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.af = shl nuw i64 1, %i.u
  %i.ag = udiv i64 %i.aa, %i.ab
  %i.ah = add i64 %i.ag, %i.af                    ; 4 uses
  %.not.i.i = icmp ne i64 %i.ah, 0
  %i.ai = load i64, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 72), align 8
  %i.aj = icmp ult i64 %i.ah, %i.ai
  %or.cond15.i.i = select i1 %.not.i.i, i1 %i.aj, i1 false
  br i1 %or.cond15.i.i, label %sh_testbit.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 362) #10
  unreachable

sh_testbit.exit.i:                                ; preds = %bb.m
  %i.ak = lshr i64 %i.ah, 3
  %i.al = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !29
  %i.an = zext i8 %i.am to i64
  %i.ao = and i64 %i.ah, 7
  %i.ap = shl nuw nsw i64 1, %i.ao
  %i.aq = and i64 %i.ap, %i.an
  %.not65.i = icmp eq i64 %i.aq, 0
  br i1 %.not65.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %sh_testbit.exit.i
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 654) #10
  unreachable

bb.p:                                             ; preds = %sh_testbit.exit.i
  %i.ar = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 56), align 8, !tbaa !22
  tail call fastcc void @sh_clearbit(ptr noundef %i.q, i32 noundef %i.s, ptr noundef %i.ar)
  %i.as = load ptr, ptr %i.q, align 8, !tbaa !33  ; 3 uses
  %.not.i71.i = icmp eq ptr %i.as, null
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !34 ; 2 uses
  br i1 %.not.i71.i, label %._crit_edge.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %.pre.i.i, ptr %i.at, align 8, !tbaa !34
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.q, %bb.p
  store ptr %i.as, ptr %.pre.i.i, align 8, !tbaa !35
  %i.au = load ptr, ptr %i.q, align 8, !tbaa !33  ; 2 uses
  %i.av = icmp eq ptr %i.au, null
  %.pre.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 32), align 8, !tbaa !21 ; 3 uses
  br i1 %i.av, label %sh_remove_from_list.exit.i, label %bb.r

bb.r:                                             ; preds = %._crit_edge.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !34 ; 4 uses
  %.not17.i.i = icmp uge ptr %i.ax, %.pre.i
  %i.ay = load i64, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 40), align 8
  %i.az = getelementptr inbounds [8 x i8], ptr %.pre.i, i64 %i.ay
  %i.ba = icmp ult ptr %i.ax, %i.az
  %or.cond.i72.i = select i1 %.not17.i.i, i1 %i.ba, i1 false
  br i1 %or.cond.i72.i, label %sh_remove_from_list.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 16), align 8, !tbaa !25 ; 2 uses
  %.not18.i.i = icmp uge ptr %i.ax, %i.bb
  %i.bc = load i64, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 24), align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bc
  %i.be = icmp ult ptr %i.ax, %i.bd
  %or.cond23.i.i = select i1 %.not18.i.i, i1 %i.be, i1 false
  br i1 %or.cond23.i.i, label %sh_remove_from_list.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.1, i32 noundef 422) #10
  unreachable

sh_remove_from_list.exit.i:                       ; preds = %bb.s, %bb.r, %._crit_edge.i.i
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %.pre.i, i64 %.1.i65
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !28
  %.not66.i = icmp eq ptr %i.q, %i.bg
  br i1 %.not66.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %sh_remove_from_list.exit.i
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 657) #10
  unreachable

bb.v:                                             ; preds = %sh_remove_from_list.exit.i
  %i.bh = add nuw nsw i64 %.1.i65, 1              ; 10 uses
  %i.bi = trunc i64 %i.bh to i32                  ; 3 uses
  %i.bj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 64), align 8, !tbaa !23
  %i.bk = icmp sgt i32 %i.bi, -1
  %i.bl = and i64 %i.bh, 4294967295               ; 6 uses
  %i.bm = load i64, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 40), align 8
  %i.bn = icmp sgt i64 %i.bm, %i.bl
  %or.cond.i73.i = select i1 %i.bk, i1 %i.bn, i1 false
  br i1 %or.cond.i73.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 359) #10
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.bo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 16), align 8, !tbaa !25
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = sub i64 %i.y, %i.bp                     ; 2 uses
  %i.br = load i64, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 24), align 8, !tbaa !18
  %i.bs = lshr i64 %i.br, %i.bl                   ; 2 uses
  %i.bt = add i64 %i.bs, -1
  %i.bu = and i64 %i.bt, %i.bq
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 360) #10
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.bw = shl nuw i64 1, %i.bl                    ; 4 uses
  %i.bx = udiv i64 %i.bq, %i.bs
  %i.by = add i64 %i.bx, %i.bw                    ; 4 uses
  %.not.i74.i = icmp ne i64 %i.by, 0
  %i.bz = load i64, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 72), align 8
  %i.ca = icmp ult i64 %i.by, %i.bz
  %or.cond15.i75.i = select i1 %.not.i74.i, i1 %i.ca, i1 false
  br i1 %or.cond15.i75.i, label %sh_testbit.exit76.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 362) #10
  unreachable

sh_testbit.exit76.i:                              ; preds = %bb.z
  %i.cb = lshr i64 %i.by, 3
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !29
  %i.ce = zext i8 %i.cd to i64
  %i.cf = and i64 %i.by, 7
  %i.cg = shl nuw nsw i64 1, %i.cf
  %i.ch = and i64 %i.cg, %i.ce
  %.not67.i = icmp eq i64 %i.ch, 0
  br i1 %.not67.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %sh_testbit.exit76.i
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 663) #10
  unreachable

bb.ac:                                            ; preds = %sh_testbit.exit76.i
  %i.ci = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 56), align 8, !tbaa !22
  tail call fastcc void @sh_setbit(ptr noundef nonnull %i.q, i32 noundef %i.bi, ptr noundef %i.ci)
  %i.cj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 32), align 8, !tbaa !21
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.bh
  tail call fastcc void @sh_add_to_list(ptr noundef nonnull %i.ck, ptr noundef nonnull %i.q)
  %i.cl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 32), align 8, !tbaa !21
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.bh
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !28
  %i.co = icmp eq ptr %i.cn, %i.q
  br i1 %i.co, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef 666) #10
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.cp = load i64, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 24), align 8, !tbaa !18 ; 2 uses
  %i.cq = lshr i64 %i.cp, %i.bh
  %i.cr = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.cq ; 5 uses
  %i.cs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 64), align 8, !tbaa !23
  %i.ct = load i64, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 40), align 8
  %i.cu = icmp sgt i64 %i.ct, %i.bl
  br i1 %i.cu, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 359) #10
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.cv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 16), align 8, !tbaa !25
  %i.cw = ptrtoint ptr %i.cr to i64               ; 2 uses
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = sub i64 %i.cw, %i.cx                    ; 2 uses
  %i.cz = lshr i64 %i.cp, %i.bl                   ; 2 uses
  %i.da = add i64 %i.cz, -1
  %i.db = and i64 %i.cy, %i.da
  %i.dc = icmp eq i64 %i.db, 0
  br i1 %i.dc, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 360) #10
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %i.dd = udiv i64 %i.cy, %i.cz
  %i.de = add i64 %i.dd, %i.bw                    ; 4 uses
  %.not.i78.i = icmp ne i64 %i.de, 0
  %i.df = load i64, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 72), align 8
  %i.dg = icmp ult i64 %i.de, %i.df
  %or.cond15.i79.i = select i1 %.not.i78.i, i1 %i.dg, i1 false
  br i1 %or.cond15.i79.i, label %sh_testbit.exit80.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 362) #10
  unreachable

sh_testbit.exit80.i:                              ; preds = %bb.ai
  %i.dh = lshr i64 %i.de, 3
  %i.di = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !29
  %i.dk = zext i8 %i.dj to i64
  %i.dl = and i64 %i.de, 7
  %i.dm = shl nuw nsw i64 1, %i.dl
  %i.dn = and i64 %i.dm, %i.dk
  %.not68.i = icmp eq i64 %i.dn, 0
  br i1 %.not68.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %sh_testbit.exit80.i
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 670) #10
  unreachable

bb.al:                                            ; preds = %sh_testbit.exit80.i
  %i.do = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 56), align 8, !tbaa !22
  tail call fastcc void @sh_setbit(ptr noundef nonnull %i.cr, i32 noundef %i.bi, ptr noundef %i.do)
  %i.dp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 32), align 8, !tbaa !21
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.bh
  tail call fastcc void @sh_add_to_list(ptr noundef nonnull %i.dq, ptr noundef nonnull %i.cr)
  %i.dr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 32), align 8, !tbaa !21 ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.bh
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !28 ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.cr
  br i1 %i.du, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef 673) #10
  unreachable

bb.an:                                            ; preds = %bb.al
  %i.dv = load i64, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 24), align 8, !tbaa !18 ; 4 uses
  %i.dw = lshr i64 %i.dv, %i.bh
  %i.dx = sub nsw i64 0, %i.dw
  %i.dy = getelementptr inbounds i8, ptr %i.cr, i64 %i.dx
  %i.dz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 16), align 8, !tbaa !25 ; 2 uses
  %i.ea = ptrtoint ptr %i.dz to i64
  %i.eb = sub i64 %i.cw, %i.ea
  %i.ec = lshr i64 %i.dv, %i.bl                   ; 2 uses
  %i.ed = udiv i64 %i.eb, %i.ec
  %i.ee = add i64 %i.ed, %i.bw                    ; 2 uses
  %i.ef = xor i64 %i.ee, 1                        ; 2 uses
  %i.eg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 56), align 8, !tbaa !22 ; 2 uses
  %i.eh = lshr i64 %i.ee, 3                       ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.eh
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !29
  %i.ek = zext i8 %i.ej to i64
  %i.el = and i64 %i.ef, 7
  %i.em = shl nuw nsw i64 1, %i.el                ; 2 uses
  %i.en = and i64 %i.em, %i.ek
  %.not.i81.i = icmp eq i64 %i.en, 0
  br i1 %.not.i81.i, label %.critedge.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.eo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 64), align 8, !tbaa !23 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.eh
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !29
  %i.er = zext i8 %i.eq to i64
  %i.es = and i64 %i.em, %i.er
  %.not11.i.i = icmp eq i64 %i.es, 0
  br i1 %.not11.i.i, label %sh_find_my_buddy.exit.i, label %.critedge.i

sh_find_my_buddy.exit.i:                          ; preds = %bb.ao
  %i.et = add i64 %i.bw, -1
  %i.eu = and i64 %i.ef, %i.et
  %i.ev = mul i64 %i.eu, %i.ec
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.ev
  %i.ex = icmp eq ptr %i.dy, %i.ew
  br i1 %i.ex, label %.preheader.i, label %.critedge.i, !llvm.loop !41

.critedge.i:                                      ; preds = %sh_find_my_buddy.exit.i, %bb.ao, %bb.an
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 675) #10
  unreachable

.preheader.i._crit_edge.loopexit:                 ; preds = %.preheader.i
  %.pre76 = load i64, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 40), align 8
  br label %.preheader.i._crit_edge

.preheader.i._crit_edge:                          ; preds = %.preheader.i.preheader..preheader.i._crit_edge_crit_edge, %.preheader.i._crit_edge.loopexit
  %i.ey = phi i64 [ %i.f, %.preheader.i.preheader..preheader.i._crit_edge_crit_edge ], [ %.pre76, %.preheader.i._crit_edge.loopexit ]
  %i.ez = phi ptr [ %.pre75, %.preheader.i.preheader..preheader.i._crit_edge_crit_edge ], [ %i.eg, %.preheader.i._crit_edge.loopexit ]
  %.lcssa43 = phi i64 [ %i.d, %.preheader.i.preheader..preheader.i._crit_edge_crit_edge ], [ %i.dv, %.preheader.i._crit_edge.loopexit ]
  %.lcssa = phi ptr [ %i.k, %.preheader.i.preheader..preheader.i._crit_edge_crit_edge ], [ %i.dr, %.preheader.i._crit_edge.loopexit ]
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %.lcssa, i64 %.055.i
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !28 ; 10 uses
  %i.fc = trunc i64 %.055.i to i32                ; 2 uses
  %i.fd = icmp sgt i32 %i.fc, -1
  %i.fe = and i64 %.055.i, 4294967295             ; 3 uses
  %i.ff = icmp sgt i64 %i.ey, %i.fe
  %or.cond.i82.i = select i1 %i.fd, i1 %i.ff, i1 false
  br i1 %or.cond.i82.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %.preheader.i._crit_edge
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 359) #10
  unreachable

bb.aq:                                            ; preds = %.preheader.i._crit_edge
  %i.fg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 16), align 8, !tbaa !25
  %i.fh = ptrtoint ptr %i.fb to i64
  %i.fi = ptrtoint ptr %i.fg to i64
  %i.fj = sub i64 %i.fh, %i.fi                    ; 2 uses
  %i.fk = lshr i64 %.lcssa43, %i.fe               ; 2 uses
  %i.fl = add i64 %i.fk, -1
  %i.fm = and i64 %i.fj, %i.fl
  %i.fn = icmp eq i64 %i.fm, 0
  br i1 %i.fn, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 360) #10
  unreachable

bb.as:                                            ; preds = %bb.aq
  %i.fo = shl nuw i64 1, %i.fe
  %i.fp = udiv i64 %i.fj, %i.fk
  %i.fq = add i64 %i.fp, %i.fo                    ; 4 uses
  %.not.i83.i = icmp ne i64 %i.fq, 0
  %i.fr = load i64, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 72), align 8
  %i.fs = icmp ult i64 %i.fq, %i.fr
  %or.cond15.i84.i = select i1 %.not.i83.i, i1 %i.fs, i1 false
  br i1 %or.cond15.i84.i, label %sh_testbit.exit85.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 362) #10
  unreachable

sh_testbit.exit85.i:                              ; preds = %bb.as
  %i.ft = lshr i64 %i.fq, 3
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.ft
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !29
  %i.fw = zext i8 %i.fv to i64
  %i.fx = and i64 %i.fq, 7
  %i.fy = shl nuw nsw i64 1, %i.fx
  %i.fz = and i64 %i.fy, %i.fw
  %.not63.i = icmp eq i64 %i.fz, 0
  br i1 %.not63.i, label %bb.au, label %bb.av

bb.au:                                            ; preds = %sh_testbit.exit85.i
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.1, i32 noundef 680) #10
  unreachable

bb.av:                                            ; preds = %sh_testbit.exit85.i
  %i.ga = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 64), align 8, !tbaa !23
  tail call fastcc void @sh_setbit(ptr noundef %i.fb, i32 noundef %i.fc, ptr noundef %i.ga)
  %i.gb = load ptr, ptr %i.fb, align 8, !tbaa !33 ; 3 uses
  %.not.i86.i = icmp eq ptr %i.gb, null
  %.phi.trans.insert.i87.i = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %.pre.i88.i = load ptr, ptr %.phi.trans.insert.i87.i, align 8, !tbaa !34 ; 2 uses
  br i1 %.not.i86.i, label %._crit_edge.i89.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  store ptr %.pre.i88.i, ptr %i.gc, align 8, !tbaa !34
  br label %._crit_edge.i89.i

._crit_edge.i89.i:                                ; preds = %bb.aw, %bb.av
  store ptr %i.gb, ptr %.pre.i88.i, align 8, !tbaa !35
  %i.gd = load ptr, ptr %i.fb, align 8, !tbaa !33 ; 2 uses
  %i.ge = icmp eq ptr %i.gd, null
  br i1 %i.ge, label %._crit_edge.i89.sh_remove_from_list.exit94_crit_edge.i, label %bb.ax

._crit_edge.i89.sh_remove_from_list.exit94_crit_edge.i: ; preds = %._crit_edge.i89.i
  %.pre100.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 16), align 8, !tbaa !25
  %.pre102.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 24), align 8
  br label %sh_remove_from_list.exit94.i

bb.ax:                                            ; preds = %._crit_edge.i89.i
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !34 ; 4 uses
  %i.gh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 32), align 8, !tbaa !21 ; 2 uses
  %.not17.i90.i = icmp uge ptr %i.gg, %i.gh
  %i.gi = load i64, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 40), align 8
  %i.gj = getelementptr inbounds [8 x i8], ptr %i.gh, i64 %i.gi
  %i.gk = icmp ult ptr %i.gg, %i.gj
  %or.cond.i91.i = select i1 %.not17.i90.i, i1 %i.gk, i1 false
  %.pre101.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 16), align 8, !tbaa !25 ; 4 uses
  %.pre103.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 24), align 8 ; 3 uses
  br i1 %or.cond.i91.i, label %sh_remove_from_list.exit94.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %.not18.i92.i = icmp uge ptr %i.gg, %.pre101.i
  %i.gl = getelementptr inbounds nuw i8, ptr %.pre101.i, i64 %.pre103.i
  %i.gm = icmp ult ptr %i.gg, %i.gl
  %or.cond23.i93.i = select i1 %.not18.i92.i, i1 %i.gm, i1 false
  br i1 %or.cond23.i93.i, label %sh_remove_from_list.exit94.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.1, i32 noundef 422) #10
  unreachable

sh_remove_from_list.exit94.i:                     ; preds = %bb.ay, %bb.ax, %._crit_edge.i89.sh_remove_from_list.exit94_crit_edge.i
  %i.gn = phi i64 [ %.pre102.i, %._crit_edge.i89.sh_remove_from_list.exit94_crit_edge.i ], [ %.pre103.i, %bb.ax ], [ %.pre103.i, %bb.ay ]
  %i.go = phi ptr [ %.pre100.i, %._crit_edge.i89.sh_remove_from_list.exit94_crit_edge.i ], [ %.pre101.i, %bb.ax ], [ %.pre101.i, %bb.ay ] ; 2 uses
  %.not64.i = icmp uge ptr %i.fb, %i.go
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.gn
  %i.gq = icmp ult ptr %i.fb, %i.gp
  %or.cond.i = select i1 %.not64.i, i1 %i.gq, i1 false
  br i1 %or.cond.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %sh_remove_from_list.exit94.i
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.1, i32 noundef 684) #10
  unreachable

bb.bb:                                            ; preds = %sh_remove_from_list.exit94.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fb, i8 0, i64 16, i1 false)
  %i.gr = tail call fastcc i64 @sh_actual_size(ptr noundef nonnull %i.fb)
  br label %sh_malloc.exit.thread

sh_malloc.exit.thread:                            ; preds = %bb.i, %bb.g, %bb.d, %bb.bb
  %.056.i21 = phi ptr [ %i.fb, %bb.bb ], [ null, %bb.d ], [ null, %bb.g ], [ null, %bb.i ] ; 2 uses
  %i.gs = phi i64 [ %i.gr, %bb.bb ], [ 0, %bb.d ], [ 0, %bb.g ], [ 0, %bb.i ]
  %i.gt = load i64, ptr @secure_mem_used, align 8, !tbaa !26
  %i.gu = add i64 %i.gt, %i.gs
  store i64 %i.gu, ptr @secure_mem_used, align 8, !tbaa !26
  %i.gv = load ptr, ptr @sec_malloc_lock, align 8, !tbaa !12
  %i.gw = tail call i32 @CRYPTO_THREAD_unlock(ptr noundef %i.gv) #9 ; 0 uses
  %i.gx = icmp eq ptr %.056.i21, null
  br i1 %i.gx, label %.thread, label %bb.bd

.thread:                                          ; preds = %bb.c, %sh_malloc.exit.thread
  %.025 = phi i32 [ 111, %sh_malloc.exit.thread ], [ 524303, %bb.c ]
  %i.gy = icmp ne ptr %1, null
  %i.gz = icmp ne i32 %2, 0
  %or.cond = or i1 %i.gy, %i.gz
  br i1 %or.cond, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %.thread
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(ptr noundef %1, i32 noundef %2, ptr noundef null) #9
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef %.025, ptr noundef null) #9
  br label %bb.bd

bb.bd:                                            ; preds = %sh_malloc.exit.thread, %bb.bc, %.thread, %bb.b
  %.016 = phi ptr [ %i.a, %bb.b ], [ null, %.thread ], [ null, %bb.bc ], [ %.056.i21, %sh_malloc.exit.thread ]
  ret ptr %.016
}

declare noalias ptr @CRYPTO_malloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @CRYPTO_THREAD_write_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i64 @sh_actual_size(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 16), align 8, !tbaa !25 ; 3 uses
  %.not = icmp uge ptr %0, %i.a
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 24), align 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.b
  %i.d = icmp ult ptr %0, %i.c
  %or.cond = select i1 %.not, i1 %i.d, i1 false
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 737) #10
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 40), align 8, !tbaa !20 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.b
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = load i64, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 48), align 8, !tbaa !19 ; 2 uses
  %.0710.i = add nsw i64 %i.e, -1                 ; 2 uses
  %.not11.i = icmp ugt i64 %i.j, %i.i
  %.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 56), align 8, !tbaa !22 ; 2 uses
  br i1 %.not11.i, label %sh_getlist.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.k = udiv i64 %i.i, %i.j
  br label %bb.e

bb.d:                                             ; preds = %bb.f
  %i.l = lshr exact i64 %.012.i, 1
  %.07.i = add nsw i64 %.0713.i, -1               ; 2 uses
  %.not.i = icmp eq i64 %.012.i, 0
  br i1 %.not.i, label %sh_getlist.exit, label %bb.e, !llvm.loop !0

bb.e:                                             ; preds = %bb.d, %.lr.ph.i
  %.0713.i = phi i64 [ %.0710.i, %.lr.ph.i ], [ %.07.i, %bb.d ] ; 2 uses
  %.012.i = phi i64 [ %i.k, %.lr.ph.i ], [ %i.l, %bb.d ] ; 5 uses
  %i.m = lshr i64 %.012.i, 3
  %i.n = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !29
  %i.p = zext i8 %i.o to i64
  %i.q = and i64 %.012.i, 7
  %i.r = shl nuw nsw i64 1, %i.q
  %i.s = and i64 %i.r, %i.p
  %.not8.i = icmp eq i64 %i.s, 0
  br i1 %.not8.i, label %bb.f, label %sh_getlist.exit

bb.f:                                             ; preds = %bb.e
  %i.t = and i64 %.012.i, 1
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.d, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.1, i32 noundef 349) #10
  unreachable

sh_getlist.exit:                                  ; preds = %bb.d, %bb.e, %bb.c
  %.07.lcssa.i = phi i64 [ %.0710.i, %bb.c ], [ %.07.i, %bb.d ], [ %.0713.i, %bb.e ] ; 3 uses
  %i.v = and i64 %.07.lcssa.i, 2147483648
  %i.w = icmp eq i64 %i.v, 0
  %i.x = and i64 %.07.lcssa.i, 4294967295         ; 3 uses
  %i.y = icmp sgt i64 %i.e, %i.x
  %or.cond.i = select i1 %i.w, i1 %i.y, i1 false
  br i1 %or.cond.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %sh_getlist.exit
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 359) #10
  unreachable

bb.i:                                             ; preds = %sh_getlist.exit
  %i.z = ptrtoint ptr %0 to i64
  %i.aa = sub i64 %i.z, %i.h                      ; 2 uses
  %i.ab = lshr i64 %i.b, %i.x                     ; 2 uses
  %i.ac = add i64 %i.ab, -1
  %i.ad = and i64 %i.ac, %i.aa
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 360) #10
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.af = shl nuw i64 1, %i.x
  %i.ag = udiv i64 %i.aa, %i.ab
  %i.ah = add i64 %i.ag, %i.af                    ; 4 uses
  %.not.i13 = icmp ne i64 %i.ah, 0
  %i.ai = load i64, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 72), align 8
  %i.aj = icmp ult i64 %i.ah, %i.ai
  %or.cond15.i = select i1 %.not.i13, i1 %i.aj, i1 false
  br i1 %or.cond15.i, label %sh_testbit.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 362) #10
  unreachable

sh_testbit.exit:                                  ; preds = %bb.k
  %i.ak = lshr i64 %i.ah, 3
  %i.al = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !29
  %i.an = zext i8 %i.am to i64
  %i.ao = and i64 %i.ah, 7
  %i.ap = shl nuw nsw i64 1, %i.ao
  %i.aq = and i64 %i.ap, %i.an
  %.not10 = icmp eq i64 %i.aq, 0
  br i1 %.not10, label %bb.m, label %bb.n

bb.m:                                             ; preds = %sh_testbit.exit
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.1, i32 noundef 741) #10
  unreachable

bb.n:                                             ; preds = %sh_testbit.exit
  %i.ar = and i64 %.07.lcssa.i, 2147483647
  %i.as = lshr i64 %i.b, %i.ar
  ret i64 %i.as
}

declare i32 @CRYPTO_THREAD_unlock(ptr noundef) local_unnamed_addr #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @CRYPTO_secure_zalloc(i64 noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.b = load i1, ptr @secure_mem_initialized, align 4
  br i1 %.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noalias ptr @CRYPTO_secure_malloc(i64 noundef %0, ptr noundef %1, i32 noundef %2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noalias ptr @CRYPTO_zalloc(i64 noundef %0, ptr noundef %1, i32 noundef %2) #9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.a, %bb.b ], [ %i.b, %bb.c ]
  ret ptr %.0
}

declare noalias ptr @CRYPTO_zalloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @CRYPTO_secure_free(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.b.i = load i1, ptr @secure_mem_initialized, align 4
  br i1 %.b.i, label %CRYPTO_secure_allocated.exit, label %CRYPTO_secure_allocated.exit.thread

CRYPTO_secure_allocated.exit:                     ; preds = %bb.b
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 16), align 8, !tbaa !25 ; 2 uses
  %i.c = icmp ult ptr %0, %i.b
  %i.d = load i64, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 24), align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d
  %i.f = icmp uge ptr %0, %i.e
  %.not14 = select i1 %i.c, i1 true, i1 %i.f
  br i1 %.not14, label %CRYPTO_secure_allocated.exit.thread, label %bb.c

CRYPTO_secure_allocated.exit.thread:              ; preds = %bb.b, %CRYPTO_secure_allocated.exit
  tail call void @CRYPTO_free(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2) #9
  br label %bb.e

bb.c:                                             ; preds = %CRYPTO_secure_allocated.exit
  %i.g = load ptr, ptr @sec_malloc_lock, align 8, !tbaa !12
  %i.h = tail call i32 @CRYPTO_THREAD_write_lock(ptr noundef %i.g) #9
  %.not9 = icmp eq i32 %i.h, 0
  br i1 %.not9, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call fastcc i64 @sh_actual_size(ptr noundef nonnull %0) ; 2 uses
  tail call void @OPENSSL_cleanse(ptr noundef nonnull %0, i64 noundef %i.i) #9
  %i.j = load i64, ptr @secure_mem_used, align 8, !tbaa !26
  %i.k = sub i64 %i.j, %i.i
  store i64 %i.k, ptr @secure_mem_used, align 8, !tbaa !26
  tail call fastcc void @sh_free(ptr noundef %0)
  %i.l = load ptr, ptr @sec_malloc_lock, align 8, !tbaa !12
  %i.m = tail call i32 @CRYPTO_THREAD_unlock(ptr noundef %i.l) #9 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.a, %bb.d, %CRYPTO_secure_allocated.exit.thread
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @CRYPTO_secure_allocated(ptr nofree noundef readnone captures(address) %0) local_unnamed_addr #2 {
bb.a:
  %.b = load i1, ptr @secure_mem_initialized, align 4
  br i1 %.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 16), align 8, !tbaa !25 ; 2 uses
  %i.b = icmp uge ptr %0, %i.a
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 24), align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.c
  %i.e = icmp ult ptr %0, %i.d
  %i.f = select i1 %i.b, i1 %i.e, i1 false
  %i.g = zext i1 %i.f to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.g, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @OPENSSL_cleanse(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @sh_free(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 16), align 8, !tbaa !25 ; 3 uses
  %.not = icmp uge ptr %0, %i.a
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 24), align 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.b
  %i.d = icmp ult ptr %0, %i.c
  %or.cond = select i1 %.not, i1 %i.d, i1 false
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 699) #10
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 40), align 8, !tbaa !20 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.b
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = load i64, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 48), align 8, !tbaa !19 ; 2 uses
  %.0710.i = add nsw i64 %i.e, -1                 ; 2 uses
  %.not11.i = icmp ugt i64 %i.j, %i.i
  %.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 56), align 8, !tbaa !22 ; 2 uses
  br i1 %.not11.i, label %sh_getlist.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.k = udiv i64 %i.i, %i.j
  br label %bb.e

bb.d:                                             ; preds = %bb.f
  %i.l = lshr exact i64 %.012.i, 1
  %.07.i = add nsw i64 %.0713.i, -1               ; 2 uses
  %.not.i = icmp eq i64 %.012.i, 0
  br i1 %.not.i, label %sh_getlist.exit, label %bb.e, !llvm.loop !0

bb.e:                                             ; preds = %bb.d, %.lr.ph.i
  %.0713.i = phi i64 [ %.0710.i, %.lr.ph.i ], [ %.07.i, %bb.d ] ; 2 uses
  %.012.i = phi i64 [ %i.k, %.lr.ph.i ], [ %i.l, %bb.d ] ; 5 uses
  %i.m = lshr i64 %.012.i, 3
  %i.n = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !29
  %i.p = zext i8 %i.o to i64
  %i.q = and i64 %.012.i, 7
  %i.r = shl nuw nsw i64 1, %i.q
  %i.s = and i64 %i.r, %i.p
  %.not8.i = icmp eq i64 %i.s, 0
  br i1 %.not8.i, label %bb.f, label %sh_getlist.exit

bb.f:                                             ; preds = %bb.e
  %i.t = and i64 %.012.i, 1
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.d, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.1, i32 noundef 349) #10
  unreachable

sh_getlist.exit:                                  ; preds = %bb.d, %bb.e, %bb.c
  %.07.lcssa.i = phi i64 [ %.0710.i, %bb.c ], [ %.07.i, %bb.d ], [ %.0713.i, %bb.e ] ; 4 uses
  %i.v = trunc i64 %.07.lcssa.i to i32            ; 2 uses
  %i.w = icmp sgt i32 %i.v, -1
  %i.x = and i64 %.07.lcssa.i, 4294967295         ; 3 uses
  %i.y = icmp sgt i64 %i.e, %i.x
  %or.cond.i = select i1 %i.w, i1 %i.y, i1 false
  br i1 %or.cond.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %sh_getlist.exit
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 359) #10
  unreachable

bb.i:                                             ; preds = %sh_getlist.exit
  %i.z = ptrtoint ptr %0 to i64
  %i.aa = sub i64 %i.z, %i.h                      ; 2 uses
  %i.ab = lshr i64 %i.b, %i.x                     ; 2 uses
  %i.ac = add i64 %i.ab, -1
  %i.ad = and i64 %i.ac, %i.aa
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 360) #10
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.af = shl nuw i64 1, %i.x
  %i.ag = udiv i64 %i.aa, %i.ab
  %i.ah = add i64 %i.ag, %i.af                    ; 4 uses
  %.not.i54 = icmp ne i64 %i.ah, 0
  %i.ai = load i64, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 72), align 8
  %i.aj = icmp ult i64 %i.ah, %i.ai
  %or.cond15.i = select i1 %.not.i54, i1 %i.aj, i1 false
  br i1 %or.cond15.i, label %sh_testbit.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 362) #10
  unreachable

sh_testbit.exit:                                  ; preds = %bb.k
  %i.ak = lshr i64 %i.ah, 3
  %i.al = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !29
  %i.an = zext i8 %i.am to i64
  %i.ao = and i64 %i.ah, 7
  %i.ap = shl nuw nsw i64 1, %i.ao
  %i.aq = and i64 %i.ap, %i.an
  %.not47 = icmp eq i64 %i.aq, 0
  br i1 %.not47, label %bb.m, label %bb.n

bb.m:                                             ; preds = %sh_testbit.exit
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.1, i32 noundef 704) #10
  unreachable

bb.n:                                             ; preds = %sh_testbit.exit
  %i.ar = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 64), align 8, !tbaa !23
  tail call fastcc void @sh_clearbit(ptr noundef nonnull %0, i32 noundef %i.v, ptr noundef %i.ar)
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 32), align 8, !tbaa !21
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %.07.lcssa.i
  tail call fastcc void @sh_add_to_list(ptr noundef %i.at, ptr noundef nonnull %0)
  br label %bb.o

bb.o:                                             ; preds = %bb.av, %bb.n
  %.043 = phi ptr [ %0, %bb.n ], [ %spec.select, %bb.av ] ; 9 uses
  %.0 = phi i64 [ %.07.lcssa.i, %bb.n ], [ %i.ev, %bb.av ] ; 3 uses
  %i.au = trunc i64 %.0 to i32                    ; 2 uses
  %i.av = and i64 %.0, 4294967295                 ; 5 uses
  %i.aw = shl nuw i64 1, %i.av                    ; 4 uses
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 16), align 8, !tbaa !25 ; 4 uses
  %i.ay = ptrtoint ptr %.043 to i64               ; 2 uses
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az                    ; 2 uses
  %i.bb = load i64, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 24), align 8, !tbaa !18
  %i.bc = lshr i64 %i.bb, %i.av                   ; 5 uses
  %i.bd = udiv i64 %i.ba, %i.bc
  %i.be = add i64 %i.bd, %i.aw                    ; 5 uses
  %i.bf = xor i64 %i.be, 1                        ; 2 uses
  %i.bg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 56), align 8, !tbaa !22 ; 3 uses
  %i.bh = lshr i64 %i.be, 3                       ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !29
  %i.bk = zext i8 %i.bj to i64
  %i.bl = and i64 %i.bf, 7
  %i.bm = shl nuw nsw i64 1, %i.bl                ; 2 uses
  %i.bn = and i64 %i.bm, %i.bk
  %.not.i55 = icmp eq i64 %i.bn, 0
  br i1 %.not.i55, label %sh_find_my_buddy.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 64), align 8, !tbaa !23 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bh
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !29
  %i.br = zext i8 %i.bq to i64                    ; 2 uses
  %i.bs = and i64 %i.bm, %i.br
  %.not11.i56 = icmp eq i64 %i.bs, 0
  br i1 %.not11.i56, label %sh_find_my_buddy.exit, label %sh_find_my_buddy.exit.thread

sh_find_my_buddy.exit:                            ; preds = %bb.p
  %i.bt = add i64 %i.aw, -1                       ; 2 uses
  %i.bu = and i64 %i.bf, %i.bt
  %i.bv = mul i64 %i.bu, %i.bc                    ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bv ; 7 uses
  %.not48 = icmp eq ptr %i.ax, null
  br i1 %.not48, label %sh_find_my_buddy.exit.thread, label %bb.q

bb.q:                                             ; preds = %sh_find_my_buddy.exit
  %i.bx = udiv i64 %i.bv, %i.bc
  %i.by = add i64 %i.bx, %i.aw                    ; 2 uses
  %i.bz = xor i64 %i.by, 1                        ; 2 uses
  %i.ca = lshr i64 %i.by, 3                       ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !29
  %i.cd = zext i8 %i.cc to i64
  %i.ce = and i64 %i.bz, 7
  %i.cf = shl nuw nsw i64 1, %i.ce                ; 2 uses
  %i.cg = and i64 %i.cf, %i.cd
  %.not.i57 = icmp eq i64 %i.cg, 0
  br i1 %.not.i57, label %.critedge, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.ca
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !29
  %i.cj = zext i8 %i.ci to i64
  %i.ck = and i64 %i.cf, %i.cj
  %.not11.i58 = icmp eq i64 %i.ck, 0
  br i1 %.not11.i58, label %sh_find_my_buddy.exit60, label %.critedge

sh_find_my_buddy.exit60:                          ; preds = %bb.r
  %i.cl = and i64 %i.bz, %i.bt
  %i.cm = mul i64 %i.cl, %i.bc
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.cm
  %i.co = icmp eq ptr %.043, %i.cn
  br i1 %i.co, label %bb.s, label %.critedge

.critedge:                                        ; preds = %bb.r, %bb.q, %sh_find_my_buddy.exit60
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 710) #10
  unreachable

bb.s:                                             ; preds = %sh_find_my_buddy.exit60
  %i.cp = load i64, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 40), align 8
  %i.cq = icmp sgt i64 %i.cp, %i.av
  br i1 %i.cq, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 359) #10
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.cr = add i64 %i.bc, -1
  %i.cs = and i64 %i.cr, %i.ba
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 360) #10
  unreachable

bb.w:                                             ; preds = %bb.u
  %.not.i62 = icmp ne i64 %i.be, 0
  %i.cu = load i64, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 72), align 8
  %i.cv = icmp ult i64 %i.be, %i.cu
  %or.cond15.i63 = select i1 %.not.i62, i1 %i.cv, i1 false
  br i1 %or.cond15.i63, label %sh_testbit.exit64, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 362) #10
  unreachable

sh_testbit.exit64:                                ; preds = %bb.w
  %i.cw = and i64 %i.be, 7
  %i.cx = shl nuw nsw i64 1, %i.cw
  %i.cy = and i64 %i.cx, %i.br
  %.not49 = icmp eq i64 %i.cy, 0
  br i1 %.not49, label %bb.z, label %bb.y

bb.y:                                             ; preds = %sh_testbit.exit64
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.1, i32 noundef 712) #10
  unreachable

bb.z:                                             ; preds = %sh_testbit.exit64
  tail call fastcc void @sh_clearbit(ptr noundef nonnull %.043, i32 noundef %i.au, ptr noundef nonnull %i.bg)
  %i.cz = load ptr, ptr %.043, align 8, !tbaa !33 ; 3 uses
  %.not.i65 = icmp eq ptr %i.cz, null
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.043, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !34 ; 2 uses
  br i1 %.not.i65, label %._crit_edge.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store ptr %.pre.i, ptr %i.da, align 8, !tbaa !34
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.aa, %bb.z
  store ptr %i.cz, ptr %.pre.i, align 8, !tbaa !35
  %i.db = load ptr, ptr %.043, align 8, !tbaa !33 ; 2 uses
  %i.dc = icmp eq ptr %i.db, null
  %.pre86 = load i64, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 40), align 8 ; 2 uses
  br i1 %i.dc, label %sh_remove_from_list.exit, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !34 ; 4 uses
  %i.df = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 32), align 8, !tbaa !21 ; 2 uses
  %.not17.i = icmp uge ptr %i.de, %i.df
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.df, i64 %.pre86
  %i.dh = icmp ult ptr %i.de, %i.dg
  %or.cond.i66 = select i1 %.not17.i, i1 %i.dh, i1 false
  br i1 %or.cond.i66, label %sh_remove_from_list.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.di = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 16), align 8, !tbaa !25 ; 2 uses
  %.not18.i = icmp uge ptr %i.de, %i.di
  %i.dj = load i64, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 24), align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dj
  %i.dl = icmp ult ptr %i.de, %i.dk
  %or.cond23.i = select i1 %.not18.i, i1 %i.dl, i1 false
  br i1 %or.cond23.i, label %sh_remove_from_list.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.1, i32 noundef 422) #10
  unreachable

sh_remove_from_list.exit:                         ; preds = %._crit_edge.i, %bb.ab, %bb.ac
  %i.dm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 64), align 8, !tbaa !23
  %i.dn = icmp sgt i64 %.pre86, %i.av
  br i1 %i.dn, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %sh_remove_from_list.exit
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 359) #10
  unreachable

bb.af:                                            ; preds = %sh_remove_from_list.exit
  %i.do = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 16), align 8, !tbaa !25
  %i.dp = ptrtoint ptr %i.do to i64
  %i.dq = sub i64 %i.ay, %i.dp                    ; 2 uses
  %i.dr = load i64, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 24), align 8, !tbaa !18
  %i.ds = lshr i64 %i.dr, %i.av                   ; 2 uses
  %i.dt = add i64 %i.ds, -1
  %i.du = and i64 %i.dt, %i.dq
  %i.dv = icmp eq i64 %i.du, 0
  br i1 %i.dv, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 360) #10
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.dw = udiv i64 %i.dq, %i.ds
  %i.dx = add i64 %i.dw, %i.aw                    ; 4 uses
  %.not.i68 = icmp ne i64 %i.dx, 0
  %i.dy = load i64, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 72), align 8
  %i.dz = icmp ult i64 %i.dx, %i.dy
  %or.cond15.i69 = select i1 %.not.i68, i1 %i.dz, i1 false
  br i1 %or.cond15.i69, label %sh_testbit.exit70, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 362) #10
  unreachable

sh_testbit.exit70:                                ; preds = %bb.ah
  %i.ea = lshr i64 %i.dx, 3
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.ea
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !29
  %i.ed = zext i8 %i.ec to i64
  %i.ee = and i64 %i.dx, 7
  %i.ef = shl nuw nsw i64 1, %i.ee
  %i.eg = and i64 %i.ef, %i.ed
  %.not50 = icmp eq i64 %i.eg, 0
  br i1 %.not50, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %sh_testbit.exit70
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.1, i32 noundef 715) #10
  unreachable

bb.ak:                                            ; preds = %sh_testbit.exit70
  %i.eh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 56), align 8, !tbaa !22
  tail call fastcc void @sh_clearbit(ptr noundef nonnull %i.bw, i32 noundef %i.au, ptr noundef %i.eh)
  %i.ei = load ptr, ptr %i.bw, align 8, !tbaa !33 ; 3 uses
  %.not.i71 = icmp eq ptr %i.ei, null
  %.phi.trans.insert.i72 = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %.pre.i73 = load ptr, ptr %.phi.trans.insert.i72, align 8, !tbaa !34 ; 2 uses
  br i1 %.not.i71, label %._crit_edge.i74, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  store ptr %.pre.i73, ptr %i.ej, align 8, !tbaa !34
  br label %._crit_edge.i74

._crit_edge.i74:                                  ; preds = %bb.al, %bb.ak
  store ptr %i.ei, ptr %.pre.i73, align 8, !tbaa !35
  %i.ek = load ptr, ptr %i.bw, align 8, !tbaa !33 ; 2 uses
  %i.el = icmp eq ptr %i.ek, null
  %.pre87 = load i64, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 40), align 8 ; 2 uses
  br i1 %i.el, label %sh_remove_from_list.exit79, label %bb.am

bb.am:                                            ; preds = %._crit_edge.i74
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !34 ; 4 uses
  %i.eo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 32), align 8, !tbaa !21 ; 2 uses
  %.not17.i75 = icmp uge ptr %i.en, %i.eo
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.eo, i64 %.pre87
  %i.eq = icmp ult ptr %i.en, %i.ep
  %or.cond.i76 = select i1 %.not17.i75, i1 %i.eq, i1 false
  br i1 %or.cond.i76, label %sh_remove_from_list.exit79, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.er = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 16), align 8, !tbaa !25 ; 2 uses
  %.not18.i77 = icmp uge ptr %i.en, %i.er
  %i.es = load i64, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 24), align 8
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.es
  %i.eu = icmp ult ptr %i.en, %i.et
  %or.cond23.i78 = select i1 %.not18.i77, i1 %i.eu, i1 false
  br i1 %or.cond23.i78, label %sh_remove_from_list.exit79, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.1, i32 noundef 422) #10
  unreachable

sh_remove_from_list.exit79:                       ; preds = %._crit_edge.i74, %bb.am, %bb.an
  %i.ev = add i64 %.0, -1                         ; 5 uses
  %i.ew = icmp ugt ptr %.043, %i.bw               ; 2 uses
  %i.ex = select i1 %i.ew, ptr %.043, ptr %i.bw
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ex, i8 0, i64 16, i1 false)
  %spec.select = select i1 %i.ew, ptr %i.bw, ptr %.043 ; 5 uses
  %i.ey = trunc i64 %i.ev to i32                  ; 2 uses
  %i.ez = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 64), align 8, !tbaa !23
  %i.fa = icmp sgt i32 %i.ey, -1
  %i.fb = and i64 %i.ev, 4294967295               ; 3 uses
  %i.fc = icmp sgt i64 %.pre87, %i.fb
  %or.cond.i80 = select i1 %i.fa, i1 %i.fc, i1 false
  br i1 %or.cond.i80, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %sh_remove_from_list.exit79
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 359) #10
  unreachable

bb.aq:                                            ; preds = %sh_remove_from_list.exit79
  %i.fd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 16), align 8, !tbaa !25
  %i.fe = ptrtoint ptr %spec.select to i64
  %i.ff = ptrtoint ptr %i.fd to i64
  %i.fg = sub i64 %i.fe, %i.ff                    ; 2 uses
  %i.fh = load i64, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 24), align 8, !tbaa !18
  %i.fi = lshr i64 %i.fh, %i.fb                   ; 2 uses
  %i.fj = add i64 %i.fi, -1
  %i.fk = and i64 %i.fj, %i.fg
  %i.fl = icmp eq i64 %i.fk, 0
  br i1 %i.fl, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 360) #10
  unreachable

bb.as:                                            ; preds = %bb.aq
  %i.fm = shl nuw i64 1, %i.fb
  %i.fn = udiv i64 %i.fg, %i.fi
  %i.fo = add i64 %i.fn, %i.fm                    ; 4 uses
  %.not.i81 = icmp ne i64 %i.fo, 0
  %i.fp = load i64, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 72), align 8
  %i.fq = icmp ult i64 %i.fo, %i.fp
  %or.cond15.i82 = select i1 %.not.i81, i1 %i.fq, i1 false
  br i1 %or.cond15.i82, label %sh_testbit.exit83, label %bb.at

bb.at:                                            ; preds = %bb.as
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 362) #10
  unreachable

sh_testbit.exit83:                                ; preds = %bb.as
  %i.fr = lshr i64 %i.fo, 3
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.fr
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !29
  %i.fu = zext i8 %i.ft to i64
  %i.fv = and i64 %i.fo, 7
  %i.fw = shl nuw nsw i64 1, %i.fv
  %i.fx = and i64 %i.fw, %i.fu
  %.not51 = icmp eq i64 %i.fx, 0
  br i1 %.not51, label %bb.av, label %bb.au

bb.au:                                            ; preds = %sh_testbit.exit83
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.1, i32 noundef 726) #10
  unreachable

bb.av:                                            ; preds = %sh_testbit.exit83
  %i.fy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 56), align 8, !tbaa !22
  tail call fastcc void @sh_setbit(ptr noundef nonnull %spec.select, i32 noundef %i.ey, ptr noundef %i.fy)
  %i.fz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 32), align 8, !tbaa !21
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %i.ev
  tail call fastcc void @sh_add_to_list(ptr noundef %i.ga, ptr noundef nonnull %spec.select)
  %i.gb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 32), align 8, !tbaa !21
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %i.ev
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !28
  %i.ge = icmp eq ptr %i.gd, %spec.select
  br i1 %i.ge, label %bb.o, label %bb.aw, !llvm.loop !42

bb.aw:                                            ; preds = %bb.av
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.1, i32 noundef 729) #10
  unreachable

sh_find_my_buddy.exit.thread:                     ; preds = %bb.o, %bb.p, %sh_find_my_buddy.exit
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @CRYPTO_secure_clear_free(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.b.i = load i1, ptr @secure_mem_initialized, align 4
  br i1 %.b.i, label %CRYPTO_secure_allocated.exit, label %CRYPTO_secure_allocated.exit.thread

CRYPTO_secure_allocated.exit:                     ; preds = %bb.b
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 16), align 8, !tbaa !25 ; 2 uses
  %i.c = icmp ult ptr %0, %i.b
  %i.d = load i64, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 24), align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d
  %i.f = icmp uge ptr %0, %i.e
  %.not16 = select i1 %i.c, i1 true, i1 %i.f
  br i1 %.not16, label %CRYPTO_secure_allocated.exit.thread, label %bb.c

CRYPTO_secure_allocated.exit.thread:              ; preds = %bb.b, %CRYPTO_secure_allocated.exit
  tail call void @OPENSSL_cleanse(ptr noundef nonnull %0, i64 noundef %1) #9
  tail call void @CRYPTO_free(ptr noundef nonnull %0, ptr noundef %2, i32 noundef %3) #9
  br label %bb.e

bb.c:                                             ; preds = %CRYPTO_secure_allocated.exit
  %i.g = load ptr, ptr @sec_malloc_lock, align 8, !tbaa !12
  %i.h = tail call i32 @CRYPTO_THREAD_write_lock(ptr noundef %i.g) #9
  %.not11 = icmp eq i32 %i.h, 0
  br i1 %.not11, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call fastcc i64 @sh_actual_size(ptr noundef nonnull %0) ; 2 uses
  tail call void @OPENSSL_cleanse(ptr noundef nonnull %0, i64 noundef %i.i) #9
  %i.j = load i64, ptr @secure_mem_used, align 8, !tbaa !26
  %i.k = sub i64 %i.j, %i.i
  store i64 %i.k, ptr @secure_mem_used, align 8, !tbaa !26
  tail call fastcc void @sh_free(ptr noundef %0)
  %i.l = load ptr, ptr @sec_malloc_lock, align 8, !tbaa !12
  %i.m = tail call i32 @CRYPTO_THREAD_unlock(ptr noundef %i.l) #9 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.a, %bb.d, %CRYPTO_secure_allocated.exit.thread
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i64 @CRYPTO_secure_used() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @sec_malloc_lock, align 8, !tbaa !12
  %i.b = tail call i32 @CRYPTO_THREAD_read_lock(ptr noundef %i.a) #9
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr @secure_mem_used, align 8, !tbaa !26
  %i.d = load ptr, ptr @sec_malloc_lock, align 8, !tbaa !12
  %i.e = tail call i32 @CRYPTO_THREAD_unlock(ptr noundef %i.d) #9 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.c, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0
}

declare i32 @CRYPTO_THREAD_read_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i64 @CRYPTO_secure_actual_size(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @sec_malloc_lock, align 8, !tbaa !12
  %i.b = tail call i32 @CRYPTO_THREAD_write_lock(ptr noundef %i.a) #9
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc i64 @sh_actual_size(ptr noundef %0)
  %i.d = load ptr, ptr @sec_malloc_lock, align 8, !tbaa !12
  %i.e = tail call i32 @CRYPTO_THREAD_unlock(ptr noundef %i.d) #9 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.c, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: noreturn
declare void @OPENSSL_die(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i64 @sysconf(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare ptr @mmap64(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @sh_setbit(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %1, -1
  %i.b = zext nneg i32 %1 to i64                  ; 3 uses
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 40), align 8
  %i.d = icmp sgt i64 %i.c, %i.b
  %or.cond = select i1 %i.a, i1 %i.d, i1 false
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 382) #10
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 16), align 8, !tbaa !25
  %i.f = ptrtoint ptr %0 to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 2 uses
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 24), align 8, !tbaa !18
  %i.j = lshr i64 %i.i, %i.b                      ; 2 uses
  %i.k = add i64 %i.j, -1
  %i.l = and i64 %i.k, %i.h
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 383) #10
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = shl nuw i64 1, %i.b
  %i.o = udiv i64 %i.h, %i.j
  %i.p = add i64 %i.o, %i.n                       ; 4 uses
  %.not = icmp ne i64 %i.p, 0
  %i.q = load i64, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 72), align 8
  %i.r = icmp ult i64 %i.p, %i.q
  %or.cond19 = select i1 %.not, i1 %i.r, i1 false
  br i1 %or.cond19, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 385) #10
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.s = lshr i64 %i.p, 3
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.s ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !29    ; 2 uses
  %i.v = zext i8 %i.u to i64
  %i.w = and i64 %i.p, 7
  %i.x = shl nuw nsw i64 1, %i.w                  ; 2 uses
  %i.y = and i64 %i.x, %i.v
  %.not15 = icmp eq i64 %i.y, 0
  br i1 %.not15, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 386) #10
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.z = trunc nuw i64 %i.x to i8
  %i.aa = or i8 %i.u, %i.z
  store i8 %i.aa, ptr %i.t, align 1, !tbaa !29
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sh_add_to_list(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 32), align 8, !tbaa !21 ; 2 uses
  %.not = icmp uge ptr %0, %i.a
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 40), align 8
  %i.c = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.b
  %i.d = icmp ult ptr %0, %i.c
  %or.cond = select i1 %.not, i1 %i.d, i1 false
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 394) #10
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 16), align 8, !tbaa !25 ; 3 uses
  %.not25 = icmp uge ptr %1, %i.e
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 24), align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f ; 2 uses
  %i.h = icmp ult ptr %1, %i.g
  %or.cond32 = select i1 %.not25, i1 %i.h, i1 false
  br i1 %or.cond32, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 395) #10
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %0, align 8, !tbaa !35     ; 5 uses
  store ptr %i.i, ptr %1, align 8, !tbaa !33
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %0, ptr %i.k, align 8, !tbaa !34
  br label %bb.k

bb.f:                                             ; preds = %bb.e
  %.not26 = icmp uge ptr %i.i, %i.e
  %i.l = icmp ult ptr %i.i, %i.g
  %or.cond35 = select i1 %.not26, i1 %i.l, i1 false
  br i1 %or.cond35, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 399) #10
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %0, ptr %i.m, align 8, !tbaa !34
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !34
  %i.p = icmp eq ptr %i.o, %0
  br i1 %i.p, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 403) #10
  unreachable

bb.j:                                             ; preds = %bb.h
  store ptr %1, ptr %i.n, align 8, !tbaa !34
  br label %bb.k

bb.k:                                             ; preds = %.thread, %bb.j
  store ptr %1, ptr %0, align 8, !tbaa !28
  ret void
}

; Function Attrs: nounwind
declare i32 @mprotect(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i64 @syscall(i64 noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @mlock(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @madvise(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @munmap(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @sh_clearbit(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %1, -1
  %i.b = zext nneg i32 %1 to i64                  ; 3 uses
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 40), align 8
  %i.d = icmp sgt i64 %i.c, %i.b
  %or.cond = select i1 %i.a, i1 %i.d, i1 false
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 370) #10
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 16), align 8, !tbaa !25
  %i.f = ptrtoint ptr %0 to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 2 uses
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 24), align 8, !tbaa !18
  %i.j = lshr i64 %i.i, %i.b                      ; 2 uses
  %i.k = add i64 %i.j, -1
  %i.l = and i64 %i.k, %i.h
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 371) #10
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = shl nuw i64 1, %i.b
  %i.o = udiv i64 %i.h, %i.j
  %i.p = add i64 %i.o, %i.n                       ; 4 uses
  %.not = icmp ne i64 %i.p, 0
  %i.q = load i64, ptr getelementptr inbounds nuw (i8, ptr @sh, i64 72), align 8
  %i.r = icmp ult i64 %i.p, %i.q
  %or.cond19 = select i1 %.not, i1 %i.r, i1 false
  br i1 %or.cond19, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 373) #10
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.s = lshr i64 %i.p, 3
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.s ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !29    ; 2 uses
  %i.v = zext i8 %i.u to i64
  %i.w = and i64 %i.p, 7
  %i.x = shl nuw nsw i64 1, %i.w                  ; 2 uses
  %i.y = and i64 %i.x, %i.v
  %.not15 = icmp eq i64 %i.y, 0
  br i1 %.not15, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1, i32 noundef 374) #10
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.z = trunc nuw i64 %i.x to i8
  %i.aa = xor i8 %i.z, -1
  %i.ab = and i8 %i.u, %i.aa
  store i8 %i.ab, ptr %i.t, align 1, !tbaa !29
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #8

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !27}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"p1 omnipotent char", !11, i64 0}
!14 = !{!"long", !7, i64 0}
!15 = !{!"any p2 pointer", !11, i64 0}
!16 = !{!"p2 omnipotent char", !15, i64 0}
!17 = !{!"sh_st", !13, i64 0, !14, i64 8, !13, i64 16, !14, i64 24, !16, i64 32, !14, i64 40, !14, i64 48, !13, i64 56, !13, i64 64, !14, i64 72}
!18 = !{!17, !14, i64 24}
!19 = !{!17, !14, i64 48}
!20 = !{!17, !14, i64 40}
!21 = !{!17, !16, i64 32}
!22 = !{!17, !13, i64 56}
!23 = !{!17, !13, i64 64}
!24 = !{!17, !13, i64 0}
!25 = !{!17, !13, i64 16}
!26 = !{!14, !14, i64 0}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!13, !13, i64 0}
!29 = !{!7, !7, i64 0}
!30 = !{!"p1 _ZTS10sh_list_st", !11, i64 0}
!31 = !{!"p2 _ZTS10sh_list_st", !15, i64 0}
!32 = !{!"sh_list_st", !30, i64 0, !31, i64 8}
!33 = !{!32, !30, i64 0}
!34 = !{!32, !31, i64 8}
!35 = !{!30, !30, i64 0}
!36 = !{!17, !14, i64 72}
!37 = !{!17, !14, i64 8}
!38 = !{!8, !8, i64 0}
!39 = distinct !{!39, !27}
!40 = distinct !{!40, !27}
!41 = distinct !{!41, !27}
!42 = distinct !{!42, !27}
end_hunk_0
