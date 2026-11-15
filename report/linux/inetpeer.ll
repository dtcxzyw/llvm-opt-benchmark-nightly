Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/inetpeer?download=true
inline.NumInlined: 40
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atomic64_t = type { i64 }
%struct.static_call_key = type { ptr, %union.anon.6 }
%union.anon.6 = type { i64 }
%struct.kmem_cache_args = type { i32, i32, i32, i32, i8, ptr, i32 }

@inet_peer_minttl = dso_local global i32 120000, section ".data..read_mostly", align 4
@inet_peer_maxttl = dso_local global i32 600000, section ".data..read_mostly", align 4
@inet_peer_threshold = dso_local global i32 0, section ".data..read_mostly", align 4
@.str = private unnamed_addr constant [10 x i8] c"inet_peer\00", align 1
@peer_cachep = internal unnamed_addr global ptr null, section ".data..ro_after_init", align 8
@jiffies = external dso_local global i64, section ".data..cacheline_aligned", align 64
@_totalram_pages = external dso_local global %struct.atomic64_t, align 8
@_cond_resched.__UNIQUE_ID_addressable___SCK__cond_resched_85 = internal global ptr @__SCK__cond_resched, section ".discard.addressable", align 8
@__SCK__cond_resched = external dso_local global %struct.static_call_key, align 8
@llvm.compiler.used = appending global [1 x ptr] [ptr @_cond_resched.__UNIQUE_ID_addressable___SCK__cond_resched_85], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write)
define dso_local void @inet_peer_base_init(ptr nofree noundef writeonly captures(none) initializes((0, 20)) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define dso_local void @inet_initpeers() local_unnamed_addr #2 section ".init.text" align 16 prefalign(16) {
bb.a:
  %0 = alloca %struct.kmem_cache_args, align 8    ; 3 uses
  %i.a = load volatile i64, ptr @_totalram_pages, align 8
  %i.b = shl i64 %i.a, 12                         ; 2 uses
  %i.c = udiv i64 %i.b, 19200
  %i.d = icmp ugt i64 %i.b, 1260748799
  %i.e = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4096)
  %i.f = trunc nuw nsw i64 %i.e to i32
  %i.g = select i1 %i.d, i32 65664, i32 %i.f
  store i32 %i.g, ptr @inet_peer_threshold, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  store i32 8, ptr %0, align 8
  %i.h = call ptr @__kmem_cache_create_args(ptr noundef @.str, i32 noundef 152, ptr noundef nonnull %0, i32 noundef 272) #8
  store ptr %i.h, ptr @peer_cachep, align 8
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @__kmem_cache_create_args(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @inet_getpeer(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [32 x ptr], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = getelementptr i8, ptr %0, i64 8          ; 8 uses
  %i.c = load volatile i32, ptr %i.b, align 4     ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !17
  %i.d = and i32 %i.c, 1
  %.not3.i = icmp eq i32 %i.d, 0
  br i1 %.not3.i, label %read_seqbegin.exit, label %.lr.ph.i, !prof !18

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  tail call void asm sideeffect "pause", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !19
  %i.e = load volatile i32, ptr %i.b, align 4     ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !17
  %i.f = and i32 %i.e, 1
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %read_seqbegin.exit, label %.lr.ph.i, !prof !20, !llvm.loop !14

read_seqbegin.exit:                               ; preds = %.lr.ph.i, %bb.a
  %.lcssa.i = phi i32 [ %i.c, %bb.a ], [ %i.e, %.lr.ph.i ] ; 2 uses
  %i.g = load volatile ptr, ptr %0, align 8       ; 2 uses
  %.not68.i = icmp eq ptr %i.g, null
  br i1 %.not68.i, label %lookup.exit.thread, label %.lr.ph.i42

.lr.ph.i42:                                       ; preds = %read_seqbegin.exit
  %i.h = getelementptr i8, ptr %1, i64 16
  %2 = getelementptr i8, ptr %1, i64 4
  %3 = getelementptr i8, ptr %1, i64 8
  %4 = getelementptr i8, ptr %1, i64 12
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %bb.d, %.lr.ph.i42
  %i.i = phi ptr [ %i.p, %bb.d ], [ %i.g, %.lr.ph.i42 ] ; 7 uses
  %5 = load i16, ptr %i.h, align 4
  %6 = icmp eq i16 %5, 2
  %i.j = getelementptr i8, ptr %i.i, i64 24
  %7 = load i32, ptr %1, align 4                  ; 2 uses
  %8 = load i32, ptr %i.j, align 4                ; 2 uses
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %inetpeer_addr_cmp.exit.us.i

10:                                               ; preds = %.lr.ph.split.us.i
  %11 = load i32, ptr %2, align 4                 ; 2 uses
  %12 = getelementptr i8, ptr %i.i, i64 28
  %13 = load i32, ptr %12, align 4                ; 2 uses
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %15, label %inetpeer_addr_cmp.exit.us.i

15:                                               ; preds = %10
  br i1 %6, label %inetpeer_addr_cmp.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %15
  %i.k = load i32, ptr %3, align 4                ; 2 uses
  %16 = getelementptr i8, ptr %i.i, i64 32
  %i.l = load i32, ptr %16, align 4               ; 2 uses
  %i.m = icmp eq i32 %i.k, %i.l
  br i1 %i.m, label %bb.c, label %inetpeer_addr_cmp.exit.us.i

bb.c:                                             ; preds = %bb.b
  %17 = load i32, ptr %4, align 4                 ; 2 uses
  %18 = getelementptr i8, ptr %i.i, i64 36
  %19 = load i32, ptr %18, align 4                ; 2 uses
  %exitcond.not.i.us.i = icmp eq i32 %17, %19
  br i1 %exitcond.not.i.us.i, label %inetpeer_addr_cmp.exit.thread.i, label %inetpeer_addr_cmp.exit.us.i

inetpeer_addr_cmp.exit.us.i:                      ; preds = %bb.c, %bb.b, %10, %.lr.ph.split.us.i
  %.lcssa162 = phi i32 [ %7, %.lr.ph.split.us.i ], [ %11, %10 ], [ %i.k, %bb.b ], [ %17, %bb.c ]
  %.lcssa160 = phi i32 [ %8, %.lr.ph.split.us.i ], [ %13, %10 ], [ %i.l, %bb.b ], [ %19, %bb.c ]
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !21
  %i.n = load volatile i32, ptr %i.b, align 8
  %.not61.us.i = icmp eq i32 %i.n, %.lcssa.i
  br i1 %.not61.us.i, label %bb.d, label %lookup.exit.thread, !prof !22

bb.d:                                             ; preds = %inetpeer_addr_cmp.exit.us.i
  %i.o = icmp ult i32 %.lcssa162, %.lcssa160
  %.135.v.us.i = select i1 %i.o, i64 16, i64 8
  %.135.us.i = getelementptr i8, ptr %i.i, i64 %.135.v.us.i
  %i.p = load volatile ptr, ptr %.135.us.i, align 8 ; 2 uses
  %.not.us.i = icmp eq ptr %i.p, null
  br i1 %.not.us.i, label %lookup.exit.thread, label %.lr.ph.split.us.i

inetpeer_addr_cmp.exit.thread.i:                  ; preds = %15, %bb.c
  %i.q = load volatile i64, ptr @jiffies, align 64
  %i.r = trunc i64 %i.q to i32                    ; 2 uses
  %i.s = getelementptr i8, ptr %i.i, i64 144      ; 2 uses
  %i.t = load volatile i32, ptr %i.s, align 8
  %.not47.i = icmp eq i32 %i.t, %i.r
  br i1 %.not47.i, label %lookup.exit, label %bb.e

bb.e:                                             ; preds = %inetpeer_addr_cmp.exit.thread.i
  store volatile i32 %i.r, ptr %i.s, align 8
  br label %lookup.exit

lookup.exit:                                      ; preds = %bb.e, %inetpeer_addr_cmp.exit.thread.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !21
  %i.u = load volatile i32, ptr %i.b, align 8
  %.not = icmp eq i32 %i.u, %.lcssa.i
  br i1 %.not, label %bb.u, label %lookup.exit.thread

lookup.exit.thread:                               ; preds = %inetpeer_addr_cmp.exit.us.i, %bb.d, %read_seqbegin.exit, %lookup.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false), !annotation !23
  %i.v = getelementptr i8, ptr %0, i64 12         ; 2 uses
  tail call void @_raw_spin_lock_bh(ptr noundef %i.v) #8
  %i.w = load i32, ptr %i.b, align 8
  %i.x = add i32 %i.w, 1
  store i32 %i.x, ptr %i.b, align 8
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !24
  %i.y = load volatile ptr, ptr %0, align 8       ; 2 uses
  %.not68.i43 = icmp eq ptr %i.y, null
  br i1 %.not68.i43, label %lookup.exit63.thread, label %.lr.ph.i44

.lr.ph.i44:                                       ; preds = %lookup.exit.thread
  %i.z = getelementptr i8, ptr %1, i64 16
  %.pre91.i = load i16, ptr %i.z, align 4
  %i.aa = icmp eq i16 %.pre91.i, 2
  %20 = load i32, ptr %1, align 4                 ; 2 uses
  %21 = getelementptr i8, ptr %1, i64 4
  %22 = getelementptr i8, ptr %1, i64 8
  %23 = getelementptr i8, ptr %1, i64 12
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %bb.j, %.lr.ph.i44
  %.067 = phi i32 [ 0, %.lr.ph.i44 ], [ %.1, %bb.j ] ; 6 uses
  %i.ab = phi ptr [ %i.y, %.lr.ph.i44 ], [ %i.ap, %bb.j ] ; 11 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 24
  %24 = load i32, ptr %i.ac, align 4              ; 2 uses
  %25 = icmp eq i32 %20, %24
  br i1 %25, label %26, label %inetpeer_addr_cmp.exit.i

26:                                               ; preds = %.lr.ph.split.i
  %27 = load i32, ptr %21, align 4                ; 2 uses
  %28 = getelementptr i8, ptr %i.ab, i64 28
  %29 = load i32, ptr %28, align 4                ; 2 uses
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %inetpeer_addr_cmp.exit.i

31:                                               ; preds = %26
  br i1 %i.aa, label %inetpeer_addr_cmp.exit.thread.i50, label %bb.f

bb.f:                                             ; preds = %31
  %32 = load i32, ptr %22, align 4                ; 2 uses
  %33 = getelementptr i8, ptr %i.ab, i64 32
  %34 = load i32, ptr %33, align 4                ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %32, %34
  br i1 %exitcond.not.i.i, label %bb.g, label %inetpeer_addr_cmp.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ad = load i32, ptr %23, align 4              ; 2 uses
  %35 = getelementptr i8, ptr %i.ab, i64 36
  %i.ae = load i32, ptr %35, align 4              ; 2 uses
  %i.af = icmp eq i32 %i.ad, %i.ae
  br i1 %i.af, label %inetpeer_addr_cmp.exit.thread.i50, label %inetpeer_addr_cmp.exit.i

inetpeer_addr_cmp.exit.i:                         ; preds = %bb.g, %bb.f, %26, %.lr.ph.split.i
  %.lcssa155 = phi i32 [ %20, %.lr.ph.split.i ], [ %27, %26 ], [ %32, %bb.f ], [ %i.ad, %bb.g ]
  %.lcssa = phi i32 [ %24, %.lr.ph.split.i ], [ %29, %26 ], [ %34, %bb.f ], [ %i.ae, %bb.g ]
  %i.ag = icmp ult i32 %.lcssa155, %.lcssa
  %i.ah = icmp ult i32 %.067, 32
  br i1 %i.ah, label %bb.i, label %bb.j

inetpeer_addr_cmp.exit.thread.i50:                ; preds = %31, %bb.g
  %i.ai = load volatile i64, ptr @jiffies, align 64
  %i.aj = trunc i64 %i.ai to i32                  ; 2 uses
  %i.ak = getelementptr i8, ptr %i.ab, i64 144    ; 2 uses
  %i.al = load volatile i32, ptr %i.ak, align 8
  %.not47.i51 = icmp eq i32 %i.al, %i.aj
  br i1 %.not47.i51, label %lookup.exit63, label %bb.h

bb.h:                                             ; preds = %inetpeer_addr_cmp.exit.thread.i50
  store volatile i32 %i.aj, ptr %i.ak, align 8
  br label %lookup.exit63

bb.i:                                             ; preds = %inetpeer_addr_cmp.exit.i
  %i.am = add nuw nsw i32 %.067, 1
  %i.an = zext nneg i32 %.067 to i64
  %i.ao = getelementptr [8 x i8], ptr %i.a, i64 %i.an
  store ptr %i.ab, ptr %i.ao, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %inetpeer_addr_cmp.exit.i
  %.1 = phi i32 [ %i.am, %bb.i ], [ %.067, %inetpeer_addr_cmp.exit.i ] ; 2 uses
  %.135.v.i = select i1 %i.ag, i64 16, i64 8      ; 2 uses
  %.135.i = getelementptr i8, ptr %i.ab, i64 %.135.v.i
  %i.ap = load volatile ptr, ptr %.135.i, align 8 ; 2 uses
  %.not.i45 = icmp eq ptr %i.ap, null
  br i1 %.not.i45, label %lookup.exit63.thread.loopexit, label %.lr.ph.split.i

lookup.exit63.thread.loopexit:                    ; preds = %bb.j
  %.135.i.le = getelementptr i8, ptr %i.ab, i64 %.135.v.i
  %i.aq = ptrtoint ptr %i.ab to i64
  br label %lookup.exit63.thread

lookup.exit63.thread:                             ; preds = %lookup.exit63.thread.loopexit, %lookup.exit.thread
  %.383 = phi i32 [ 0, %lookup.exit.thread ], [ %.1, %lookup.exit63.thread.loopexit ] ; 2 uses
  %.06881 = phi i64 [ 0, %lookup.exit.thread ], [ %i.aq, %lookup.exit63.thread.loopexit ]
  %.17080 = phi ptr [ %0, %lookup.exit.thread ], [ %.135.i.le, %lookup.exit63.thread.loopexit ]
  %i.ar = load ptr, ptr @peer_cachep, align 8
  %i.as = tail call noalias align 8 ptr @kmem_cache_alloc_noprof(ptr noundef %i.ar, i32 noundef 2080) #8 ; 14 uses
  %.not40 = icmp eq ptr %i.as, null
  br i1 %.not40, label %lookup.exit63, label %bb.k

bb.k:                                             ; preds = %lookup.exit63.thread
  %i.at = getelementptr i8, ptr %i.as, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(20) %i.at, ptr noundef align 4 dereferenceable(20) %1, i64 20, i1 false)
  %i.au = load volatile i64, ptr @jiffies, align 64
  %i.av = trunc i64 %i.au to i32
  %i.aw = getelementptr i8, ptr %i.as, i64 144
  store i32 %i.av, ptr %i.aw, align 8
  %i.ax = getelementptr i8, ptr %i.as, i64 148
  store volatile i32 1, ptr %i.ax, align 4
  %i.ay = getelementptr i8, ptr %i.as, i64 128
  store volatile i32 0, ptr %i.ay, align 8
  %i.az = getelementptr i8, ptr %i.as, i64 44
  store i32 -1, ptr %i.az, align 4
  %i.ba = getelementptr i8, ptr %i.as, i64 112
  store i32 0, ptr %i.ba, align 8
  %i.bb = getelementptr i8, ptr %i.as, i64 116
  store i32 0, ptr %i.bb, align 4
  %i.bc = load volatile i64, ptr @jiffies, align 64
  %i.bd = add i64 %i.bc, -60000
  %i.be = getelementptr i8, ptr %i.as, i64 120
  store i64 %i.bd, ptr %i.be, align 8
  store i64 %.06881, ptr %i.as, align 8
  %i.bf = getelementptr i8, ptr %i.as, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %i.bf, i8 0, i64 16, i1 false)
  store ptr %i.as, ptr %.17080, align 8
  tail call void @rb_insert_color(ptr noundef nonnull %i.as, ptr noundef %0) #8
  %i.bg = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 8
  %i.bi = add i32 %i.bh, 1
  store i32 %i.bi, ptr %i.bg, align 8
  br label %lookup.exit63

lookup.exit63:                                    ; preds = %bb.h, %inetpeer_addr_cmp.exit.thread.i50, %lookup.exit63.thread, %bb.k
  %.382 = phi i32 [ %.383, %lookup.exit63.thread ], [ %.383, %bb.k ], [ %.067, %inetpeer_addr_cmp.exit.thread.i50 ], [ %.067, %bb.h ] ; 3 uses
  %.033 = phi ptr [ null, %lookup.exit63.thread ], [ %i.as, %bb.k ], [ %i.ab, %inetpeer_addr_cmp.exit.thread.i50 ], [ %i.ab, %bb.h ]
  %.not41 = icmp eq i32 %.382, 0
  br i1 %.not41, label %inet_peer_gc.exit, label %bb.l

bb.l:                                             ; preds = %lookup.exit63
  %i.bj = load volatile i32, ptr @inet_peer_threshold, align 4 ; 2 uses
  %i.bk = load volatile i32, ptr @inet_peer_maxttl, align 4 ; 2 uses
  %i.bl = load volatile i32, ptr @inet_peer_minttl, align 4
  %i.bm = getelementptr i8, ptr %0, i64 16        ; 3 uses
  %i.bn = load i32, ptr %i.bm, align 8            ; 2 uses
  %.not.i64 = icmp slt i32 %i.bn, %i.bj
  br i1 %.not.i64, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bo = sub i32 %i.bk, %i.bl
  %i.bp = sdiv i32 %i.bo, 1000
  %i.bq = mul i32 %i.bp, %i.bn
  %i.br = sdiv i32 %i.bq, %i.bj
  %.neg.i = mul i32 %i.br, -1000
  %i.bs = add i32 %.neg.i, %i.bk
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.034.i = phi i32 [ %i.bs, %bb.m ], [ 0, %bb.l ]
  br label %bb.o

bb.o:                                             ; preds = %bb.r, %bb.n
  %.040.i = phi i32 [ 0, %bb.n ], [ %i.ce, %bb.r ] ; 2 uses
  %i.bt = sext i32 %.040.i to i64
  %i.bu = getelementptr [8 x i8], ptr %i.a, i64 %i.bt ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8            ; 2 uses
  %i.bw = load volatile i64, ptr @jiffies, align 64
  %i.bx = trunc i64 %i.bw to i32
  %i.by = getelementptr i8, ptr %i.bv, i64 144
  %i.bz = load volatile i32, ptr %i.by, align 8
  %i.ca = sub i32 %i.bx, %i.bz
  %i.cb = icmp ult i32 %i.ca, %.034.i
  br i1 %i.cb, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cc = getelementptr i8, ptr %i.bv, i64 148
  %i.cd = tail call zeroext i1 @refcount_dec_if_one(ptr noundef %i.cc) #8
  br i1 %i.cd, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  store ptr null, ptr %i.bu, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ce = add nuw i32 %.040.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ce, %.382
  br i1 %exitcond.not.i, label %.preheader.i, label %bb.o, !llvm.loop !15

.preheader.i:                                     ; preds = %bb.r, %bb.t
  %.141.i = phi i32 [ %i.cl, %bb.t ], [ 0, %bb.r ] ; 2 uses
  %i.cf = sext i32 %.141.i to i64
  %i.cg = getelementptr [8 x i8], ptr %i.a, i64 %i.cf
  %i.ch = load ptr, ptr %i.cg, align 8            ; 4 uses
  %.not39.i = icmp eq ptr %i.ch, null
  br i1 %.not39.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.preheader.i
  tail call void @rb_erase(ptr noundef nonnull %i.ch, ptr noundef %0) #8
  %i.ci = load i32, ptr %i.bm, align 8
  %i.cj = add i32 %i.ci, -1
  store i32 %i.cj, ptr %i.bm, align 8
  %i.ck = getelementptr i8, ptr %i.ch, i64 128
  tail call void @kvfree_call_rcu(ptr noundef %i.ck, ptr noundef nonnull %i.ch) #8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.preheader.i
  %i.cl = add nuw i32 %.141.i, 1                  ; 2 uses
  %exitcond42.not.i = icmp eq i32 %i.cl, %.382
  br i1 %exitcond42.not.i, label %inet_peer_gc.exit, label %.preheader.i, !llvm.loop !16

inet_peer_gc.exit:                                ; preds = %bb.t, %lookup.exit63
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !25
  %i.cm = load i32, ptr %i.b, align 8
  %i.cn = add i32 %i.cm, 1
  store i32 %i.cn, ptr %i.b, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %i.v) #8
  br label %bb.u

bb.u:                                             ; preds = %lookup.exit, %inet_peer_gc.exit
  %.0 = phi ptr [ %.033, %inet_peer_gc.exit ], [ %i.i, %lookup.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret ptr %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc_noprof(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @inet_putpeer(ptr noundef %0) local_unnamed_addr #5 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 148        ; 3 uses
  %i.b = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.a, i32 -1, ptr elementtype(i32) %i.a) #9, !srcloc !11 ; 2 uses
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %refcount_dec_and_test.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp slt i32 %i.b, 1
  br i1 %i.d, label %bb.c, label %refcount_dec_and_test.exit.thread, !prof !12

bb.c:                                             ; preds = %bb.b
  tail call void @refcount_warn_saturate(ptr noundef %i.a, i32 noundef 3) #8
  br label %refcount_dec_and_test.exit.thread

refcount_dec_and_test.exit:                       ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !13
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %refcount_dec_and_test.exit.thread, label %bb.d

bb.d:                                             ; preds = %refcount_dec_and_test.exit
  %i.e = getelementptr i8, ptr %0, i64 128
  tail call void @kvfree_call_rcu(ptr noundef %i.e, ptr noundef nonnull %0) #8
  br label %refcount_dec_and_test.exit.thread

refcount_dec_and_test.exit.thread:                ; preds = %bb.c, %bb.b, %bb.d, %refcount_dec_and_test.exit
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, target_mem: none)
define dso_local zeroext i1 @inet_peer_xrlim_allow(ptr nofree noundef captures(address) %0, i32 noundef %1) local_unnamed_addr #6 align 16 prefalign(16) {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 112        ; 2 uses
  %i.b = load volatile i32, ptr %i.a, align 8
  %i.c = zext i32 %i.b to i64                     ; 3 uses
  %i.d = load volatile i64, ptr @jiffies, align 64 ; 3 uses
  %i.e = getelementptr i8, ptr %0, i64 120        ; 2 uses
  %i.f = load volatile i64, ptr %i.e, align 8     ; 2 uses
  %.not30 = icmp eq i64 %i.d, %i.f
  br i1 %.not30, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store volatile i64 %i.d, ptr %i.e, align 8
  %i.g = add i64 %i.d, %i.c
  %i.h = sub i64 %i.g, %i.f
  %i.i = mul i32 %1, 6
  %i.j = sext i32 %i.i to i64
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.h, i64 %i.j)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.024 = phi i64 [ %i.c, %bb.b ], [ %spec.select, %bb.c ] ; 2 uses
  %i.k = sext i32 %1 to i64                       ; 2 uses
  %.not31 = icmp uge i64 %.024, %i.k              ; 3 uses
  %i.l = select i1 %.not31, i64 %i.k, i64 0
  %spec.select33 = sub nuw i64 %.024, %i.l        ; 2 uses
  %.not32 = icmp eq i64 %spec.select33, %i.c
  br i1 %.not32, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = trunc i64 %spec.select33 to i32
  store volatile i32 %i.m, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.a
  %.0 = phi i1 [ true, %bb.a ], [ %.not31, %bb.e ], [ %.not31, %bb.d ]
  ret i1 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @inetpeer_invalidate_tree(ptr noundef %0) local_unnamed_addr #5 align 16 prefalign(16) {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %._crit_edge, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a, %.preheader.i
  %.0.i = phi ptr [ %i.b, %.preheader.i ], [ %.val, %bb.a ] ; 2 uses
  %i.a = getelementptr i8, ptr %.0.i, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not9.i = icmp eq ptr %i.b, null
  br i1 %.not9.i, label %.lr.ph, label %.preheader.i, !llvm.loop !26

.lr.ph:                                           ; preds = %.preheader.i, %inet_putpeer.exit
  %.012 = phi ptr [ %i.c, %inet_putpeer.exit ], [ %.0.i, %.preheader.i ] ; 5 uses
  %i.c = tail call ptr @rb_next(ptr noundef nonnull %.012) #8 ; 2 uses
  tail call void @rb_erase(ptr noundef nonnull %.012, ptr noundef %0) #8
  %i.d = getelementptr i8, ptr %.012, i64 148     ; 3 uses
  %i.e = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.d, i32 -1, ptr elementtype(i32) %i.d) #9, !srcloc !11 ; 2 uses
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = icmp slt i32 %i.e, 1
  br i1 %i.g, label %bb.c, label %inet_putpeer.exit, !prof !12

bb.c:                                             ; preds = %bb.b
  tail call void @refcount_warn_saturate(ptr noundef %i.d, i32 noundef 3) #8
  br label %inet_putpeer.exit

bb.d:                                             ; preds = %.lr.ph
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !13
  %i.h = getelementptr i8, ptr %.012, i64 128
  tail call void @kvfree_call_rcu(ptr noundef %i.h, ptr noundef nonnull %.012) #8
  br label %inet_putpeer.exit

inet_putpeer.exit:                                ; preds = %bb.b, %bb.c, %bb.d
  %i.i = tail call i32 @__SCT__cond_resched() #8  ; 0 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !27

._crit_edge:                                      ; preds = %inet_putpeer.exit, %bb.a
  %i.j = getelementptr i8, ptr %0, i64 16
  store i32 0, ptr %i.j, align 8
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @refcount_dec_if_one(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__cond_resched() local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

attributes #0 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #3 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #6 = { fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { noredzone nounwind "no-builtin-wcslen" }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4 = !{i32 1, !"Code Model", i32 2}
!5 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!6 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!7 = !{i32 1, !"override-stack-alignment", i32 8}
!8 = !{i32 4, !"SkipRaxSetup", i32 1}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{i64 2148948980, i64 2148949019, i64 2148949040, i64 2148949077, i64 2148949100, i64 2148949109}
!12 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!13 = !{i64 2151088779}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10}
!17 = !{i64 2150921834}
!18 = !{!"branch_weights", i32 1999, i32 1}
!19 = !{i64 2332438}
!20 = !{!"branch_weights", i32 1, i32 0}
!21 = !{i64 2150963367}
!22 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!23 = !{!"auto-init"}
!24 = !{i64 2150963640}
!25 = !{i64 2150963913}
!26 = distinct !{!26, !10}
!27 = distinct !{!27, !10}
end_hunk_0
