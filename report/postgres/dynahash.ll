Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/dynahash?download=true
inline.NumInlined: 48
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@TopMemoryContext = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [9 x i8] c"dynahash\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"dynahash.c\00", align 1
@__func__.hash_create = private unnamed_addr constant [12 x i8] c"hash_create\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"failed to initialize hash table \22%s\22\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"cannot insert into frozen hashtable \22%s\22\00", align 1
@__func__.hash_search_with_hash_value = private unnamed_addr constant [28 x i8] c"hash_search_with_hash_value\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"out of shared memory\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"unrecognized hash action code: %d\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"cannot update in frozen hashtable \22%s\22\00", align 1
@__func__.hash_update_hash_key = private unnamed_addr constant [21 x i8] c"hash_update_hash_key\00", align 1
@.str.8 = private unnamed_addr constant [55 x i8] c"hash_update_hash_key argument is not in hashtable \22%s\22\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"cannot freeze shared hashtable \22%s\22\00", align 1
@__func__.hash_freeze = private unnamed_addr constant [12 x i8] c"hash_freeze\00", align 1
@.str.10 = private unnamed_addr constant [57 x i8] c"cannot freeze hashtable \22%s\22 because it has active scans\00", align 1
@num_seq_scans = internal unnamed_addr global i32 0, align 4
@.str.11 = private unnamed_addr constant [46 x i8] c"leaked hash_seq_search scan for hash table %p\00", align 1
@seq_scan_tables = internal unnamed_addr global [100 x ptr] zeroinitializer, align 16
@__func__.AtEOXact_HashTables = private unnamed_addr constant [20 x i8] c"AtEOXact_HashTables\00", align 1
@seq_scan_level = internal unnamed_addr global [100 x i32] zeroinitializer, align 16
@__func__.AtEOSubXact_HashTables = private unnamed_addr constant [23 x i8] c"AtEOSubXact_HashTables\00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"../../../../src/include/storage/spin.h\00", align 1
@__func__.SpinLockAcquire = private unnamed_addr constant [16 x i8] c"SpinLockAcquire\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"hash table \22%s\22 corrupted\00", align 1
@__func__.hash_corrupted = private unnamed_addr constant [15 x i8] c"hash_corrupted\00", align 1
@.str.14 = private unnamed_addr constant [64 x i8] c"too many active hash_seq_search scans, cannot start one on \22%s\22\00", align 1
@__func__.register_seq_scan = private unnamed_addr constant [18 x i8] c"register_seq_scan\00", align 1
@.str.15 = private unnamed_addr constant [44 x i8] c"no hash_seq_search scan for hash table \22%s\22\00", align 1
@__func__.deregister_seq_scan = private unnamed_addr constant [20 x i8] c"deregister_seq_scan\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @hash_create(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %3, 2048
  %.not = icmp eq i32 %i.a, 0                     ; 4 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @TopMemoryContext, align 8
  br label %.loopexit144

bb.c:                                             ; preds = %bb.a
  %i.c = and i32 %3, 1024
  %.not125 = icmp eq i32 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 64
  %.0122.in = select i1 %.not125, ptr @TopMemoryContext, ptr %i.d
  %.0122 = load ptr, ptr %.0122.in, align 8
  %i.e = tail call ptr @AllocSetContextCreateInternal(ptr noundef %.0122, ptr noundef nonnull @.str, i64 noundef 0, i64 noundef 8192, i64 noundef 8388608) #15
  br label %.loopexit144

.loopexit144:                                     ; preds = %bb.c, %bb.b
  %.1 = phi ptr [ %i.b, %bb.b ], [ %i.e, %bb.c ]  ; 4 uses
  %i.f = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #16
  %i.g = add i64 %i.f, 89
  %i.h = tail call ptr @MemoryContextAlloc(ptr noundef %.1, i64 noundef %i.g) #15 ; 30 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(88) %i.h, i8 0, i64 88, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 88 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 64 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8
  %i.k = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.i, ptr noundef nonnull dereferenceable(1) %0) #15 ; 0 uses
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.loopexit144
  tail call void @MemoryContextSetIdentifier(ptr noundef %.1, ptr noundef nonnull %i.i) #15
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.loopexit144
  %i.l = and i32 %3, 64
  %.not126 = icmp eq i32 %i.l, 0
  br i1 %.not126, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.n, ptr %i.o, align 8
  %4 = icmp eq ptr %i.n, @string_hash
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.p = and i32 %3, 32
  %.not127 = icmp eq i32 %i.p, 0
  br i1 %.not127, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = load i64, ptr %i.q, align 8
  %i.s = icmp eq i64 %i.r, 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  br i1 %i.s, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr @uint32_hash, ptr %i.t, align 8
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  store ptr @tag_hash, ptr %i.t, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.f
  %5 = phi i1 [ %4, %bb.f ], [ false, %bb.j ], [ false, %bb.i ] ; 3 uses
  %i.u = and i32 %3, 128
  %.not128 = icmp eq i32 %i.u, 0
  br i1 %.not128, label %bb.m, label %bb.l

.thread:                                          ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr @string_hash, ptr %i.v, align 8
  %i.w = and i32 %3, 128
  %.not128158 = icmp eq i32 %i.w, 0
  br i1 %.not128158, label %.thread159, label %bb.l

bb.l:                                             ; preds = %.thread, %bb.k
  %6 = phi i1 [ true, %.thread ], [ %5, %bb.k ]
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.y = load ptr, ptr %i.x, align 8
  br label %.thread159

bb.m:                                             ; preds = %bb.k
  %spec.select = select i1 %5, ptr @string_compare, ptr @memcmp
  br label %.thread159

.thread159:                                       ; preds = %bb.m, %.thread, %bb.l
  %string_compare.sink = phi ptr [ %i.y, %bb.l ], [ %spec.select, %bb.m ], [ @string_compare, %.thread ]
  %i.z = phi i1 [ %6, %bb.l ], [ %5, %bb.m ], [ true, %.thread ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %string_compare.sink, ptr %i.aa, align 8
  %i.ab = and i32 %3, 256
  %.not129 = icmp eq i32 %i.ab, 0
  br i1 %.not129, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.thread159
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr %i.ad, ptr %i.ae, align 8
  br label %bb.r

bb.o:                                             ; preds = %.thread159
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  br i1 %i.z, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store ptr @strlcpy, ptr %i.af, align 8
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  store ptr @memcpy, ptr %i.af, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.n
  %i.ag = and i32 %3, 512
  %.not130 = icmp eq i32 %i.ag, 0
  br i1 %.not130, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store ptr %i.ai, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.al = load ptr, ptr %i.ak, align 8
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store ptr @DynaHashAlloc, ptr %i.am, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.an = phi ptr [ @DynaHashAlloc, %bb.t ], [ %i.ai, %bb.s ]
  %i.ao = phi ptr [ %.1, %bb.t ], [ %i.al, %bb.s ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 4 uses
  store ptr %i.ao, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 56 ; 2 uses
  br i1 %.not, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  store ptr null, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  store i8 1, ptr %i.ar, align 8
  %i.as = and i32 %3, 4096
  %.not131 = icmp eq i32 %i.as, 0
  br i1 %.not131, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  store ptr %i.au, ptr %i.h, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 840
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.aw, ptr %i.ax, align 8
  %i.ay = load ptr, ptr %i.at, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 800
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  store i64 %i.ba, ptr %i.bb, align 8
  br label %bb.au

bb.x:                                             ; preds = %bb.u
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  store ptr %.1, ptr %i.aq, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  store i8 0, ptr %i.bc, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.v, %bb.x
  %i.bd = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 3 uses
  %i.be = tail call ptr %i.an(i64 noundef 848, ptr noundef %i.ao) #15 ; 4 uses
  store ptr %i.be, ptr %i.h, align 8
  %.not132 = icmp eq ptr %i.be, null
  br i1 %.not132, label %bb.z, label %hdefault.exit

bb.z:                                             ; preds = %bb.y
  %i.bf = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.bg = tail call i32 @errcode(i32 noundef 8389) #15 ; 0 uses
  %i.bh = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.1) #15 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 535, ptr noundef nonnull @__func__.hash_create) #15
  unreachable

hdefault.exit:                                    ; preds = %bb.y
  %i.bi = getelementptr inbounds nuw i8, ptr %i.h, i64 73
  store i8 0, ptr %i.bi, align 1
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(848) %i.be, i8 0, i64 848, i1 false)
  store i64 -1, ptr %i.bj, align 8
  %i.bk = load ptr, ptr %i.h, align 8             ; 5 uses
  %i.bl = and i32 %3, 1
  %.not133 = icmp eq i32 %i.bl, 0
  br i1 %.not133, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %hdefault.exit
  %i.bm = load i64, ptr %2, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 816
  store i64 %i.bm, ptr %i.bn, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %hdefault.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bp = load i64, ptr %i.bo, align 8            ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 800
  store i64 %i.bp, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bs = load i64, ptr %i.br, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bk, i64 808
  store i64 %i.bs, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  store i64 %i.bp, ptr %i.bu, align 8
  %i.bv = load ptr, ptr %i.h, align 8             ; 42 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 816 ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8
  %.not.i = icmp eq i64 %i.bx, 0
  br i1 %.not.i, label %.loopexit.i, label %.preheader.preheader.i136

.preheader.preheader.i136:                        ; preds = %bb.ab
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !21
  store volatile i8 0, ptr %i.bv, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !21
  store volatile i8 0, ptr %i.by, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 48
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !21
  store volatile i8 0, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 72
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !21
  store volatile i8 0, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bv, i64 96
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !21
  store volatile i8 0, ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bv, i64 120
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !21
  store volatile i8 0, ptr %i.cc, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bv, i64 144
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !21
  store volatile i8 0, ptr %i.cd, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bv, i64 168
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !21
  store volatile i8 0, ptr %i.ce, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bv, i64 192
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !21
  store volatile i8 0, ptr %i.cf, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bv, i64 216
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !21
  store volatile i8 0, ptr %i.cg, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bv, i64 240
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !21
  store volatile i8 0, ptr %i.ch, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bv, i64 264
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !21
  store volatile i8 0, ptr %i.ci, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bv, i64 288
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !21
  store volatile i8 0, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bv, i64 312
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !21
  store volatile i8 0, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bv, i64 336
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !21
  store volatile i8 0, ptr %i.cl, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bv, i64 360
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !21
  store volatile i8 0, ptr %i.cm, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bv, i64 384
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !21
  store volatile i8 0, ptr %i.cn, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.bv, i64 408
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !21
  store volatile i8 0, ptr %i.co, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bv, i64 432
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !21
  store volatile i8 0, ptr %i.cp, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bv, i64 456
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !21
  store volatile i8 0, ptr %i.cq, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bv, i64 480
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !21
  store volatile i8 0, ptr %i.cr, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bv, i64 504
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !21
  store volatile i8 0, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bv, i64 528
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !21
  store volatile i8 0, ptr %i.ct, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bv, i64 552
end_hunk_0
