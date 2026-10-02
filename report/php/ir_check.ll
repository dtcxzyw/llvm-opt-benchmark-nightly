Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/ir_check?download=true
inline.NumInlined: 3
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [35 x i8] c"ir_base[1].op invalid opcode (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"ir_base[%d].op invalid opcode (%d)\0A\00", align 1
@ir_op_flags = external local_unnamed_addr constant [121 x i32], align 16
@.str.2 = private unnamed_addr constant [57 x i8] c"ir_base[%d].ops[%d] reference (%d) must not be constant\0A\00", align 1
@.str.3 = private unnamed_addr constant [61 x i8] c"ir_base[%d].ops[%d] constant reference (%d) is out of range\0A\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"ir_base[%d].ops[%d] insn reference (%d) is out of range\0A\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"ir_base[%d].ops[%d] reference (%d) must be DATA\0A\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"ir_base[%d].ops[%d] invalid forward reference (%d)\0A\00", align 1
@ir_type_size = external local_unnamed_addr constant [14 x i8], align 1
@.str.7 = private unnamed_addr constant [75 x i8] c"ir_base[%d].ops[%d] (%d) type is incompatible with result type (%d != %d)\0A\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"ir_base[%d].ops[%d] -> %d, %d doesn't dominate %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [51 x i8] c"ir_base[%d].ops[%d] reference (%d) must be BB_END\0A\00", align 1
@.str.10 = private unnamed_addr constant [55 x i8] c"ir_base[%d].ops[%d] reference (%d) must not be BB_END\0A\00", align 1
@.str.11 = private unnamed_addr constant [64 x i8] c"ir_base[%d].ops[%d] reference (%d) must be MERGE or LOOP_BEGIN\0A\00", align 1
@.str.12 = private unnamed_addr constant [52 x i8] c"ir_base[%d].ops[%d] reference (%d) must be CONTROL\0A\00", align 1
@.str.13 = private unnamed_addr constant [62 x i8] c"ir_base[%d].ops[%d] reference (%d) must be BB_START or GUARD\0A\00", align 1
@.str.14 = private unnamed_addr constant [56 x i8] c"ir_base[%d].ops[%d] reference (%d) of unsupported kind\0A\00", align 1
@.str.15 = private unnamed_addr constant [44 x i8] c"ir_base[%d].ops[%d] missing reference (%d)\0A\00", align 1
@.str.16 = private unnamed_addr constant [45 x i8] c"ir_base[%d].ops[%d] is not in use list (%d)\0A\00", align 1
@.str.17 = private unnamed_addr constant [54 x i8] c"ir_base[%d] inconsistent PHI inputs_count (%d != %d)\0A\00", align 1
@.str.18 = private unnamed_addr constant [42 x i8] c"ir_base[%d].op2 must have ADDR type (%s)\0A\00", align 1
@ir_type_name = external local_unnamed_addr global [14 x ptr], align 16
@.str.19 = private unnamed_addr constant [36 x i8] c"ir_base[%d].op2 must be 'VAR' (%s)\0A\00", align 1
@ir_op_name = external local_unnamed_addr global [121 x ptr], align 16
@.str.20 = private unnamed_addr constant [43 x i8] c"ir_base[%d].type incompatible return type\0A\00", align 1
@.str.21 = private unnamed_addr constant [59 x i8] c"ir_base[%d].op PARAMs must be used only right after START\0A\00", align 1
@.str.22 = private unnamed_addr constant [43 x i8] c"ir_base[%d] is in use list of ir_base[%d]\0A\00", align 1
@.str.23 = private unnamed_addr constant [61 x i8] c"ir_base[%d].op (SWITCH) must have at least 1 successor (%d)\0A\00", align 1
@.str.24 = private unnamed_addr constant [49 x i8] c"ir_base[%d].op (IF) must have 2 successors (%d)\0A\00", align 1
@.str.25 = private unnamed_addr constant [51 x i8] c"ir_base[%d].op (%s) must not have successors (%d)\0A\00", align 1
@.str.26 = private unnamed_addr constant [48 x i8] c"ir_base[%d].op (%s) must have 1 successor (%d)\0A\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @ir_consistency_check() local_unnamed_addr #0 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @ir_check(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 14 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !41   ; 2 uses
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !42     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !43
  %.not = icmp eq i8 %i.f, 99
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i8, ptr %i.d, align 8, !tbaa !43
  %i.h = zext i8 %i.g to i32
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.c
  %i.i = phi i32 [ %i.h, %bb.c ], [ 0, %bb.a ]
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !45
  %i.k = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.j, ptr noundef nonnull @.str, i32 noundef %i.i) #8 ; 0 uses
  %.pre = load i32, ptr %i.a, align 8, !tbaa !41
  br label %bb.d

bb.d:                                             ; preds = %.thread, %bb.b
  %i.l = phi i32 [ %.pre, %.thread ], [ %i.b, %bb.b ]
  %.0282 = phi i1 [ false, %.thread ], [ true, %bb.b ] ; 2 uses
  %i.m = icmp sgt i32 %i.l, 1
  br i1 %i.m, label %.lr.ph470, label %ir_arena_free.exit

.lr.ph470:                                        ; preds = %bb.d
  %i.n = load ptr, ptr %0, align 8, !tbaa !42
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.r = getelementptr i8, ptr %0, i64 128
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.w = load i8, ptr getelementptr inbounds nuw (i8, ptr @ir_type_size, i64 6), align 1
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph470, %bb.eb
  %.1283468 = phi i1 [ %.0282, %.lr.ph470 ], [ %.15, %bb.eb ] ; 2 uses
  %.0287467 = phi ptr [ %i.o, %.lr.ph470 ], [ %i.wo, %bb.eb ] ; 18 uses
  %.0292466 = phi i32 [ 1, %.lr.ph470 ], [ %i.wm, %bb.eb ] ; 44 uses
  %.sroa.0.0465 = phi ptr [ null, %.lr.ph470 ], [ %.sroa.0.4, %bb.eb ] ; 3 uses
  %.sroa.14.0464 = phi ptr [ null, %.lr.ph470 ], [ %.sroa.14.1.lcssa, %bb.eb ] ; 2 uses
  %.sroa.19.0463 = phi ptr [ null, %.lr.ph470 ], [ %.sroa.19.2, %bb.eb ] ; 3 uses
  %i.x = load i8, ptr %.0287467, align 8, !tbaa !43 ; 4 uses
  %i.y = icmp ugt i8 %i.x, 120
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.z = zext i8 %i.x to i32
  %i.aa = load ptr, ptr @stderr, align 8, !tbaa !45
  %i.ab = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aa, ptr noundef nonnull @.str.1, i32 noundef %.0292466, i32 noundef %i.z) #8 ; 0 uses
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  %i.ac = zext nneg i8 %i.x to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr @ir_op_flags, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !46 ; 8 uses
  %i.af = and i32 %i.ae, 3
  %i.ag = and i32 %i.ae, 4
  %.not.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i, label %ir_input_edges_count.exit, label %bb.h, !prof !47

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %.0287467, i64 2
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !43
  %i.aj = zext i16 %i.ai to i32
  br label %ir_input_edges_count.exit

ir_input_edges_count.exit:                        ; preds = %bb.g, %bb.h
  %.0.i = phi i32 [ %i.aj, %bb.h ], [ %i.af, %bb.g ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.0287467, i64 4 ; 4 uses
  %.not316437 = icmp eq i32 %.0.i, 0
  br i1 %.not316437, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %ir_input_edges_count.exit
  %i.al = and i32 %i.ae, 4096
  %.not343 = icmp eq i32 %i.al, 0
  %i.am = and i32 %i.ae, 256
  %.not352 = icmp eq i32 %i.am, 0
  %i.an = getelementptr inbounds nuw i8, ptr %.0287467, i64 1
  %i.ao = zext nneg i32 %.0292466 to i64
  %i.ap = lshr i32 %.0292466, 6
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = and i32 %.0292466, 63
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = shl nuw i64 1, %i.as
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %.thread402
  %.2284442 = phi i1 [ %.1283468, %.lr.ph ], [ %.10, %.thread402 ] ; 6 uses
  %.0288441 = phi ptr [ %i.ak, %.lr.ph ], [ %i.ku, %.thread402 ] ; 2 uses
  %.0291440 = phi i32 [ 1, %.lr.ph ], [ %i.kt, %.thread402 ] ; 27 uses
  %.sroa.0.1439 = phi ptr [ %.sroa.0.0465, %.lr.ph ], [ %.sroa.0.2, %.thread402 ] ; 15 uses
  %.sroa.14.1438 = phi ptr [ %.sroa.14.0464, %.lr.ph ], [ %.sroa.14.2, %.thread402 ] ; 16 uses
  %i.au = load i32, ptr %.0288441, align 4, !tbaa !46 ; 25 uses
  %.not332 = icmp eq i32 %i.au, 0
  br i1 %.not332, label %bb.bd, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = icmp slt i32 %i.au, 0
  br i1 %i.av, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.aw = tail call i32 @llvm.umin.i32(i32 %.0291440, i32 3)
  %i.ax = shl nuw nsw i32 %i.aw, 2
  %i.ay = or disjoint i32 %i.ax, 16
  %i.az = lshr i32 %i.ae, %i.ay
  %i.ba = and i32 %i.az, 15
  %.not357 = icmp eq i32 %i.ba, 1
  br i1 %.not357, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = load ptr, ptr @stderr, align 8, !tbaa !45
  %i.bc = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bb, ptr noundef nonnull @.str.2, i32 noundef %.0292466, i32 noundef %.0291440, i32 noundef %i.au) #8 ; 0 uses
  br label %.thread402

bb.m:                                             ; preds = %bb.k
  %i.bd = load i32, ptr %i.u, align 8, !tbaa !48
  %.not358 = icmp slt i32 %i.au, %i.bd
  br i1 %.not358, label %.thread402, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.be = load ptr, ptr @stderr, align 8, !tbaa !45
  %i.bf = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.be, ptr noundef nonnull @.str.3, i32 noundef %.0292466, i32 noundef %.0291440, i32 noundef %i.au) #8 ; 0 uses
  br label %.thread402

bb.o:                                             ; preds = %bb.j
  %i.bg = load i32, ptr %i.a, align 8, !tbaa !41
  %.not334 = icmp slt i32 %i.au, %i.bg
  br i1 %.not334, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bh = load ptr, ptr @stderr, align 8, !tbaa !45
  %i.bi = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bh, ptr noundef nonnull @.str.4, i32 noundef %.0292466, i32 noundef %.0291440, i32 noundef %i.au) #8 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.3285 = phi i1 [ false, %bb.p ], [ %.2284442, %bb.o ] ; 8 uses
  %i.bj = load ptr, ptr %0, align 8, !tbaa !42    ; 2 uses
  %i.bk = zext nneg i32 %i.au to i64              ; 5 uses
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %i.bk ; 6 uses
  %i.bm = tail call i32 @llvm.umin.i32(i32 %.0291440, i32 3)
  %i.bn = shl nuw nsw i32 %i.bm, 2
  %i.bo = or disjoint i32 %i.bn, 16
  %i.bp = lshr i32 %i.ae, %i.bo
  %i.bq = and i32 %i.bp, 15
  switch i32 %i.bq, label %bb.bc [
    i32 1, label %bb.r
    i32 2, label %bb.an
    i32 4, label %bb.at
    i32 5, label %bb.ay
    i32 6, label %bb.ba
  ]

bb.r:                                             ; preds = %bb.q
  %i.br = load i8, ptr %i.bl, align 8, !tbaa !43
  %i.bs = zext i8 %i.br to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr @ir_op_flags, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !46 ; 2 uses
  %i.bv = and i32 %i.bu, 256
  %.not348 = icmp eq i32 %i.bv, 0
  br i1 %.not348, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.bw = and i32 %i.bu, 1024
  %.not349 = icmp eq i32 %i.bw, 0
  br i1 %.not349, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !43
  %i.bz = icmp eq i8 %i.by, 0
  br i1 %i.bz, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ca = load ptr, ptr @stderr, align 8, !tbaa !45
  %i.cb = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ca, ptr noundef nonnull @.str.5, i32 noundef %.0292466, i32 noundef %.0291440, i32 noundef %i.au) #8 ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u, %bb.r
  %.4286 = phi i1 [ %.3285, %bb.r ], [ false, %bb.u ], [ %.3285, %bb.t ] ; 2 uses
  %i.cc = load i32, ptr %i.p, align 4, !tbaa !49
  %i.cd = and i32 %i.cc, 32
  %.not350 = icmp eq i32 %i.cd, 0
  %.not351 = icmp slt i32 %i.au, %.0292466
  %or.cond360 = or i1 %.not351, %.not350
  br i1 %or.cond360, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ce = load i8, ptr %.0287467, align 8, !tbaa !43
  %i.cf = icmp eq i8 %i.ce, 63
  br i1 %i.cf, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cg = load ptr, ptr %0, align 8, !tbaa !42
  %i.ch = load i32, ptr %i.ak, align 4, !tbaa !43
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds [16 x i8], ptr %i.cg, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 8, !tbaa !43
  %i.cl = icmp eq i8 %i.ck, 108
  br i1 %i.cl, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.cm = load ptr, ptr @stderr, align 8, !tbaa !45
  %i.cn = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cm, ptr noundef nonnull @.str.6, i32 noundef %.0292466, i32 noundef %.0291440, i32 noundef %i.au) #8 ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.v
  %.5 = phi i1 [ %.4286, %bb.x ], [ false, %bb.y ], [ %.4286, %bb.v ] ; 10 uses
  br i1 %.not352, label %bb.aj, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.co = load i8, ptr %.0287467, align 8, !tbaa !43 ; 3 uses
  switch i8 %i.co, label %bb.aj [
    i8 60, label %bb.ab
    i8 26, label %bb.ac
    i8 27, label %bb.ac
    i8 28, label %bb.ac
    i8 29, label %bb.ac
    i8 30, label %bb.ac
    i8 31, label %bb.ac
    i8 32, label %bb.ac
    i8 41, label %bb.ac
    i8 42, label %bb.ac
    i8 43, label %bb.ac
    i8 45, label %bb.ac
    i8 46, label %bb.ac
    i8 47, label %bb.ac
    i8 48, label %bb.ac
    i8 49, label %bb.ac
    i8 50, label %bb.ac
    i8 51, label %bb.ac
    i8 52, label %bb.ac
    i8 53, label %bb.ac
    i8 54, label %bb.ac
    i8 58, label %bb.ac
    i8 59, label %bb.ac
    i8 63, label %bb.ac
    i8 64, label %bb.ac
    i8 65, label %bb.ac
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.cp = icmp eq i32 %.0291440, 1
  br i1 %i.cp, label %bb.aj, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.aa, %bb.aa, %bb.aa, %bb.aa, %bb.aa, %bb.aa, %bb.aa, %bb.aa, %bb.aa, %bb.aa, %bb.aa, %bb.aa, %bb.aa, %bb.aa, %bb.aa, %bb.aa, %bb.aa, %bb.aa, %bb.aa, %bb.aa, %bb.aa, %bb.aa, %bb.aa, %bb.aa
  %i.cq = load i8, ptr %i.an, align 1, !tbaa !43  ; 6 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !43  ; 5 uses
  %.not353 = icmp eq i8 %i.cq, %i.cs
  br i1 %.not353, label %bb.aj, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ct = icmp eq i32 %.0291440, 2
  %.off = add nsw i8 %i.co, -49
  %switch = icmp ult i8 %.off, 5
  %or.cond425 = select i1 %i.ct, i1 %switch, i1 false
  br i1 %or.cond425, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.cu = zext i8 %i.cs to i64
  %i.cv = getelementptr inbounds nuw i8, ptr @ir_type_size, i64 %i.cu
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !43
  %i.cx = zext i8 %i.cq to i64
  %i.cy = getelementptr inbounds nuw i8, ptr @ir_type_size, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !43
  %i.da = icmp ult i8 %i.cw, %i.cz
  br i1 %i.da, label %bb.aj, label %.thread398

bb.af:                                            ; preds = %bb.ad
  %i.db = icmp eq i8 %i.co, 45
  %i.dc = icmp eq i8 %i.cq, 1
  %or.cond426 = and i1 %i.db, %i.dc
  br i1 %or.cond426, label %bb.aj, label %.thread398

.thread398:                                       ; preds = %bb.ae, %bb.af
  %i.dd = icmp eq i8 %i.cq, 6
  br i1 %i.dd, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.thread398
  switch i8 %i.cs, label %.thread532 [
    i8 5, label %bb.aj
    i8 11, label %bb.aj
  ]

bb.ah:                                            ; preds = %.thread398
  %i.de = icmp eq i8 %i.cs, 6
  br i1 %i.de, label %bb.ai, label %.thread532

bb.ai:                                            ; preds = %bb.ah
  switch i8 %i.cq, label %.thread532 [
    i8 5, label %bb.aj
    i8 11, label %bb.aj
  ]

.thread532:                                       ; preds = %bb.ag, %bb.ai, %bb.ah
  %i.df = load ptr, ptr @stderr, align 8, !tbaa !45
  %i.dg = zext i8 %i.cs to i32
  %i.dh = zext i8 %i.cq to i32
  %i.di = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.df, ptr noundef nonnull @.str.7, i32 noundef %.0292466, i32 noundef %.0291440, i32 noundef %i.au, i32 noundef %i.dg, i32 noundef %i.dh) #8 ; 0 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ag, %bb.ag, %bb.af, %bb.ai, %bb.ai, %bb.aa, %bb.ab, %bb.ae, %.thread532, %bb.ac, %bb.z
  %.6 = phi i1 [ %.5, %bb.aa ], [ %.5, %bb.ab ], [ %.5, %bb.ae ], [ %.5, %bb.af ], [ %.5, %bb.ag ], [ %.5, %bb.ag ], [ %.5, %bb.ai ], [ %.5, %bb.ai ], [ false, %.thread532 ], [ %.5, %bb.ac ], [ %.5, %bb.z ] ; 5 uses
  %i.dj = load i32, ptr %i.p, align 4, !tbaa !49
  %i.dk = and i32 %i.dj, 32
  %.not354 = icmp eq i32 %i.dk, 0
  br i1 %.not354, label %bb.bj, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dl = load ptr, ptr %i.q, align 8, !tbaa !50  ; 3 uses
  %.not355 = icmp eq ptr %i.dl, null
  br i1 %.not355, label %bb.bj, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dm = load i8, ptr %.0287467, align 8, !tbaa !43
  %.not356 = icmp eq i8 %i.dm, 63
  br i1 %.not356, label %bb.bj, label %bb.am

bb.am:                                            ; preds = %bb.al
  %.val = load ptr, ptr %i.r, align 8, !tbaa !51  ; 4 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.bk
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !46 ; 3 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.ao
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !46 ; 2 uses
  %i.dr = zext i32 %i.do to i64
  %i.ds = getelementptr inbounds nuw [52 x i8], ptr %.val, i64 %i.dr
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 32
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !43 ; 2 uses
  %i.dv = icmp eq i32 %i.do, %i.dq
  br i1 %i.dv, label %.split, label %.preheader.i

.preheader.i:                                     ; preds = %bb.am
  %.pn1.i = zext i32 %i.dq to i64                 ; 2 uses
  %.02.i = getelementptr inbounds nuw [52 x i8], ptr %.val, i64 %.pn1.i
  %i.dw = getelementptr inbounds nuw i8, ptr %.02.i, i64 32
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !43
  %i.dy = icmp ugt i32 %i.dx, %i.du
  br i1 %i.dy, label %.lr.ph.i, label %ir_check_domination.exit.thread

.split:                                           ; preds = %bb.am
  %1 = icmp samesign ult i32 %i.au, %.0292466
  br i1 %1, label %bb.bj, label %ir_check_domination.exit.thread

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %i.dz = phi i64 [ %.pn.i, %.lr.ph.i ], [ %.pn1.i, %.preheader.i ]
  %i.ea = getelementptr inbounds nuw [52 x i8], ptr %.val, i64 %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 28
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !43 ; 2 uses
  %.pn.i = zext i32 %i.ec to i64                  ; 2 uses
  %.0.i379 = getelementptr inbounds nuw [52 x i8], ptr %.val, i64 %.pn.i
  %i.ed = getelementptr inbounds nuw i8, ptr %.0.i379, i64 32
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !43
  %i.ef = icmp ugt i32 %i.ee, %i.du
  br i1 %i.ef, label %.lr.ph.i, label %ir_check_domination.exit, !llvm.loop !12

ir_check_domination.exit:                         ; preds = %.lr.ph.i
  %i.eg = icmp eq i32 %i.do, %i.ec
  br i1 %i.eg, label %bb.bj, label %ir_check_domination.exit.thread

ir_check_domination.exit.thread:                  ; preds = %.preheader.i, %.split, %ir_check_domination.exit
  %i.eh = load ptr, ptr @stderr, align 8, !tbaa !45
  %i.ei = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.eh, ptr noundef nonnull @.str.8, i32 noundef %.0292466, i32 noundef %.0291440, i32 noundef %i.au, i32 noundef %i.au, i32 noundef %.0292466) #8 ; 0 uses
  br label %bb.bj

bb.an:                                            ; preds = %bb.q
  %i.ej = load i8, ptr %i.bl, align 8, !tbaa !43
  %i.ek = zext i8 %i.ej to i64
  %i.el = getelementptr inbounds nuw [4 x i8], ptr @ir_op_flags, i64 %i.ek
  %i.em = load i32, ptr %i.el, align 4, !tbaa !46
  %i.en = and i32 %i.em, 8192
  %.not344 = icmp eq i32 %i.en, 0                 ; 2 uses
  br i1 %.not343, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  br i1 %.not344, label %.sink.split, label %bb.aq

bb.ap:                                            ; preds = %bb.an
  br i1 %.not344, label %bb.aq, label %.sink.split

.sink.split:                                      ; preds = %bb.ap, %bb.ao
  %.str.10.sink = phi ptr [ @.str.9, %bb.ao ], [ @.str.10, %bb.ap ]
  %i.eo = load ptr, ptr @stderr, align 8, !tbaa !45
  %i.ep = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.eo, ptr noundef nonnull %.str.10.sink, i32 noundef %.0292466, i32 noundef %.0291440, i32 noundef %i.au) #8 ; 0 uses
  br label %bb.aq

bb.aq:                                            ; preds = %.sink.split, %bb.ap, %bb.ao
  %.7 = phi i1 [ %.3285, %bb.ao ], [ %.3285, %bb.ap ], [ false, %.sink.split ] ; 2 uses
  %i.eq = load i32, ptr %i.p, align 4, !tbaa !49
  %i.er = and i32 %i.eq, 32
  %.not346 = icmp eq i32 %i.er, 0
  %.not347 = icmp slt i32 %i.au, %.0292466
  %or.cond361 = or i1 %.not347, %.not346
  br i1 %or.cond361, label %bb.bj, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.es = load i8, ptr %.0287467, align 8, !tbaa !43
  %i.et = icmp eq i8 %i.es, 108
  br i1 %i.et, label %bb.bj, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.eu = load ptr, ptr @stderr, align 8, !tbaa !45
  %i.ev = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.eu, ptr noundef nonnull @.str.6, i32 noundef %.0292466, i32 noundef %.0291440, i32 noundef %i.au) #8 ; 0 uses
  br label %bb.bj

bb.at:                                            ; preds = %bb.q
  %i.ew = load i32, ptr %i.p, align 4, !tbaa !49
  %i.ex = and i32 %i.ew, 32
  %.not339 = icmp eq i32 %i.ex, 0
  %.not340 = icmp slt i32 %i.au, %.0292466
  %or.cond362 = or i1 %.not340, %.not339
  br i1 %or.cond362, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ey = load ptr, ptr @stderr, align 8, !tbaa !45
  %i.ez = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ey, ptr noundef nonnull @.str.6, i32 noundef %.0292466, i32 noundef %.0291440, i32 noundef %i.au) #8 ; 0 uses
  br label %bb.bj

bb.av:                                            ; preds = %bb.at
  %i.fa = load i8, ptr %.0287467, align 8, !tbaa !43
  %i.fb = icmp eq i8 %i.fa, 63
  br i1 %i.fb, label %bb.aw, label %bb.bj

bb.aw:                                            ; preds = %bb.av
  %i.fc = load i32, ptr %i.ak, align 4, !tbaa !43
  %i.fd = sext i32 %i.fc to i64
  %i.fe = getelementptr inbounds [16 x i8], ptr %i.bj, i64 %i.fd
  %i.ff = load i8, ptr %i.fe, align 8, !tbaa !43
  %.off367 = add i8 %i.ff, -107
  %switch368 = icmp ult i8 %.off367, 2
  br i1 %switch368, label %bb.bj, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fg = load ptr, ptr @stderr, align 8, !tbaa !45
  %i.fh = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fg, ptr noundef nonnull @.str.11, i32 noundef %.0292466, i32 noundef %.0291440, i32 noundef %i.au) #8 ; 0 uses
  br label %bb.bj

bb.ay:                                            ; preds = %bb.q
  %i.fi = load i8, ptr %i.bl, align 8, !tbaa !43
  %i.fj = zext i8 %i.fi to i64
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr @ir_op_flags, i64 %i.fj
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !46
  %i.fm = and i32 %i.fl, 512
  %.not338 = icmp eq i32 %i.fm, 0
  br i1 %.not338, label %bb.az, label %bb.bj

bb.az:                                            ; preds = %bb.ay
  %i.fn = load ptr, ptr @stderr, align 8, !tbaa !45
  %i.fo = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fn, ptr noundef nonnull @.str.12, i32 noundef %.0292466, i32 noundef %.0291440, i32 noundef %i.au) #8 ; 0 uses
  br label %bb.bj

bb.ba:                                            ; preds = %bb.q
  %i.fp = load i8, ptr %i.bl, align 8, !tbaa !43  ; 2 uses
  %i.fq = zext i8 %i.fp to i64
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr @ir_op_flags, i64 %i.fq
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !46
  %.fr428 = freeze i32 %i.fs
  %i.ft = and i32 %.fr428, 4096
  %.not335 = icmp ne i32 %i.ft, 0
  %i.fu = and i8 %i.fp, -2
  %i.fv = icmp eq i8 %i.fu, 96
  %or.cond375 = or i1 %i.fv, %.not335
  br i1 %or.cond375, label %bb.bj, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fw = load ptr, ptr @stderr, align 8, !tbaa !45
  %i.fx = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fw, ptr noundef nonnull @.str.13, i32 noundef %.0292466, i32 noundef %.0291440, i32 noundef %i.au) #8 ; 0 uses
  br label %bb.bj

bb.bc:                                            ; preds = %bb.q
  %i.fy = load ptr, ptr @stderr, align 8, !tbaa !45
  %i.fz = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fy, ptr noundef nonnull @.str.14, i32 noundef %.0292466, i32 noundef %.0291440, i32 noundef %i.au) #8 ; 0 uses
  br label %bb.bj

bb.bd:                                            ; preds = %bb.i
  %i.ga = load i8, ptr %.0287467, align 8, !tbaa !43 ; 4 uses
  %i.gb = icmp eq i8 %i.ga, 115
  br i1 %i.gb, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gc = icmp eq i8 %i.ga, 116
  %i.gd = icmp eq i32 %.0291440, 2
  %or.cond = and i1 %i.gd, %i.gc
  br i1 %or.cond, label %.thread402, label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  %.old1 = icmp eq i32 %.0291440, 2
  br i1 %.old1, label %.thread402, label %.thread400

.thread400:                                       ; preds = %bb.bf
  %i.ge = icmp eq i32 %.0291440, 1
  br label %bb.bh

bb.bg:                                            ; preds = %bb.be
  %i.gf = icmp eq i8 %i.ga, 101
  %i.gg = icmp eq i32 %.0291440, 1                ; 2 uses
  %or.cond4 = and i1 %i.gg, %i.gf
  br i1 %or.cond4, label %.thread402, label %bb.bh

bb.bh:                                            ; preds = %.thread400, %bb.bg
  %i.gh = phi i1 [ %i.ge, %.thread400 ], [ %i.gg, %bb.bg ]
  %i.gi = tail call i32 @llvm.umin.i32(i32 %.0291440, i32 3)
  %i.gj = shl nuw nsw i32 %i.gi, 2
  %i.gk = or disjoint i32 %i.gj, 16
  %i.gl = lshr i32 %i.ae, %i.gk
  %i.gm = and i32 %i.gl, 15
  %i.gn = add nsw i32 %i.gm, -7
  %switch370 = icmp ult i32 %i.gn, -2
  %i.go = icmp ne i8 %i.ga, 98
  %or.cond7 = or i1 %i.go, %i.gh
  %or.cond371 = and i1 %switch370, %or.cond7
  br i1 %or.cond371, label %bb.bi, label %.thread402

bb.bi:                                            ; preds = %bb.bh
  %i.gp = load ptr, ptr @stderr, align 8, !tbaa !45
  %i.gq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gp, ptr noundef nonnull @.str.15, i32 noundef %.0292466, i32 noundef %.0291440, i32 noundef 0) #8 ; 0 uses
  br label %.thread402

bb.bj:                                            ; preds = %.split, %bb.ba, %bb.aw, %bb.ax, %bb.bb, %bb.ay, %bb.az, %bb.au, %bb.av, %bb.aq, %bb.ar, %bb.as, %bb.aj, %bb.ak, %bb.al, %ir_check_domination.exit, %ir_check_domination.exit.thread, %bb.bc
  %.9 = phi i1 [ %.6, %.split ], [ false, %bb.bb ], [ false, %bb.ax ], [ false, %bb.bc ], [ %.6, %ir_check_domination.exit ], [ false, %ir_check_domination.exit.thread ], [ %.6, %bb.al ], [ %.6, %bb.ak ], [ %.6, %bb.aj ], [ %.7, %bb.ar ], [ false, %bb.as ], [ %.3285, %bb.aw ], [ %.7, %bb.aq ], [ false, %bb.au ], [ %.3285, %bb.ba ], [ %.3285, %bb.av ], [ %.3285, %bb.ay ], [ false, %bb.az ] ; 3 uses
  %i.gr = load ptr, ptr %i.s, align 8, !tbaa !53  ; 2 uses
  %.not429 = icmp eq ptr %i.gr, null
  br i1 %.not429, label %.thread402, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %i.bk ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 4
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !55 ; 4 uses
  %i.gv = icmp sgt i32 %i.gu, 16
  br i1 %i.gv, label %bb.bl, label %bb.by

bb.bl:                                            ; preds = %bb.bk
  %.not.i381 = icmp eq ptr %.sroa.14.1438, null   ; 2 uses
  br i1 %.not.i381, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.14.1438, i64 %i.bk
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !57 ; 2 uses
  %.not47.i = icmp eq ptr %i.gx, null
  br i1 %.not47.i, label %bb.bn, label %ir_check_use_list.exit

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %.not48.i = icmp eq ptr %.sroa.0.1439, null
end_hunk_0
