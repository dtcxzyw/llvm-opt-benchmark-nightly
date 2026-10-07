Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coremark/original/core_main?download=true
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.RESULTS_S = type { i16, i16, i16, [4 x ptr], i32, i32, i32, ptr, %struct.MAT_PARAMS_S, i16, i16, i16, i16, i16, %struct.CORE_PORTABLE_S }
%struct.MAT_PARAMS_S = type { i32, ptr, ptr, ptr }
%struct.CORE_PORTABLE_S = type { i8 }

@.str = private unnamed_addr constant [7 x i8] c"Static\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Heap\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Stack\00", align 1
@mem_name = dso_local local_unnamed_addr global [3 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2], align 16
@default_num_contexts = external local_unnamed_addr global i32, align 4
@list_known_crc = internal unnamed_addr constant [5 x i16] [i16 -11088, i16 13120, i16 27257, i16 -6380, i16 -7231], align 2
@.str.8 = private unnamed_addr constant [47 x i8] c"[%u]ERROR! list crc 0x%04x - should be 0x%04x\0A\00", align 1
@matrix_known_crc = internal unnamed_addr constant [5 x i16] [i16 -16814, i16 4505, i16 22024, i16 8151, i16 1863], align 2
@.str.9 = private unnamed_addr constant [49 x i8] c"[%u]ERROR! matrix crc 0x%04x - should be 0x%04x\0A\00", align 1
@state_known_crc = internal unnamed_addr constant [5 x i16] [i16 24135, i16 14783, i16 -6748, i16 -29126, i16 -29308], align 2
@.str.10 = private unnamed_addr constant [48 x i8] c"[%u]ERROR! state crc 0x%04x - should be 0x%04x\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"CoreMark Size    : %lu\0A\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"Total ticks      : %lu\0A\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"Total time (secs): %f\0A\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"Iterations/Sec   : %f\0A\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"Iterations       : %lu\0A\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"Compiler version : %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [82 x i8] c"GCCUbuntu Clang 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"Compiler flags   : %s\0A\00", align 1
@.str.20 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"Memory location  : %s\0A\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"STACK\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"seedcrc          : 0x%04x\0A\00", align 1
@.str.24 = private unnamed_addr constant [28 x i8] c"[%d]crclist       : 0x%04x\0A\00", align 1
@.str.25 = private unnamed_addr constant [28 x i8] c"[%d]crcmatrix     : 0x%04x\0A\00", align 1
@.str.26 = private unnamed_addr constant [28 x i8] c"[%d]crcstate      : 0x%04x\0A\00", align 1
@.str.27 = private unnamed_addr constant [28 x i8] c"[%d]crcfinal      : 0x%04x\0A\00", align 1
@.str.29 = private unnamed_addr constant [26 x i8] c"CoreMark 1.0 : %f / %s %s\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c" / %s\00", align 1
@str = private unnamed_addr constant [43 x i8] c"2K validation run parameters for coremark.\00", align 1
@str.1 = private unnamed_addr constant [44 x i8] c"2K performance run parameters for coremark.\00", align 1
@str.2 = private unnamed_addr constant [48 x i8] c"Profile generation run parameters for coremark.\00", align 1
@str.3 = private unnamed_addr constant [43 x i8] c"6k validation run parameters for coremark.\00", align 1
@str.4 = private unnamed_addr constant [44 x i8] c"6k performance run parameters for coremark.\00", align 1
@str.5 = private unnamed_addr constant [61 x i8] c"ERROR! Must execute for at least 10 secs for a valid result!\00", align 1
@str.6 = private unnamed_addr constant [72 x i8] c"Correct operation validated. See README.md for run and reporting rules.\00", align 1
@str.7 = private unnamed_addr constant [16 x i8] c"Errors detected\00", align 1
@str.8 = private unnamed_addr constant [98 x i8] c"Cannot validate operation for these seed values, please compare with results on a known platform.\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @iterate(ptr noundef initializes((96, 104)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !17   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 9 uses
  %.not = icmp eq i32 %i.b, 0
  store i64 0, ptr %i.c, align 8
  br i1 %.not, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 98
  %i.e = tail call zeroext i16 @core_bench_list(ptr noundef nonnull %0, i16 noundef signext 1) #6
  %i.f = load i16, ptr %i.c, align 8, !tbaa !18
  %i.g = tail call zeroext i16 @crcu16(i16 noundef zeroext %i.e, i16 noundef zeroext %i.f) #6
  store i16 %i.g, ptr %i.c, align 8, !tbaa !18
  %i.h = tail call zeroext i16 @core_bench_list(ptr noundef nonnull %0, i16 noundef signext -1) #6
  %i.i = load i16, ptr %i.c, align 8, !tbaa !18
  %i.j = tail call zeroext i16 @crcu16(i16 noundef zeroext %i.h, i16 noundef zeroext %i.i) #6 ; 2 uses
  store i16 %i.j, ptr %i.c, align 8, !tbaa !18
  store i16 %i.j, ptr %i.d, align 2, !tbaa !19
  %exitcond.peel.not = icmp eq i32 %i.b, 1
  br i1 %exitcond.peel.not, label %._crit_edge, label %.lr.ph.peel.next

.lr.ph.peel.next:                                 ; preds = %bb.b, %.lr.ph.peel.next
  %.019 = phi i32 [ %i.q, %.lr.ph.peel.next ], [ 1, %bb.b ]
  %i.k = tail call zeroext i16 @core_bench_list(ptr noundef nonnull %0, i16 noundef signext 1) #6
  %i.l = load i16, ptr %i.c, align 8, !tbaa !18
  %i.m = tail call zeroext i16 @crcu16(i16 noundef zeroext %i.k, i16 noundef zeroext %i.l) #6
  store i16 %i.m, ptr %i.c, align 8, !tbaa !18
  %i.n = tail call zeroext i16 @core_bench_list(ptr noundef nonnull %0, i16 noundef signext -1) #6
  %i.o = load i16, ptr %i.c, align 8, !tbaa !18
  %i.p = tail call zeroext i16 @crcu16(i16 noundef zeroext %i.n, i16 noundef zeroext %i.o) #6
  store i16 %i.p, ptr %i.c, align 8, !tbaa !18
  %i.q = add nuw i32 %.019, 1                     ; 2 uses
  %exitcond.not = icmp eq i32 %i.q, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.peel.next, !llvm.loop !21

._crit_edge:                                      ; preds = %.lr.ph.peel.next, %bb.b, %bb.a
  ret ptr null
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare zeroext i16 @core_bench_list(ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare zeroext i16 @crcu16(i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  %2 = alloca [1 x %struct.RESULTS_S], align 16   ; 31 uses
  %i.b = alloca [2000 x i8], align 16             ; 6 uses
  store i32 %0, ptr %i.a, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 106 ; 2 uses
  call void @portable_init(ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, ptr noundef %1) #6
  %i.d = call i32 @get_seed_32(i32 noundef 1) #6
  %i.e = trunc i32 %i.d to i16
  store i16 %i.e, ptr %2, align 16, !tbaa !30
  %i.f = call i32 @get_seed_32(i32 noundef 2) #6
  %i.g = trunc i32 %i.f to i16
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 5 uses
  store i16 %i.g, ptr %i.h, align 2, !tbaa !31
  %i.i = call i32 @get_seed_32(i32 noundef 3) #6
  %i.j = trunc i32 %i.i to i16
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 4 uses
  store i16 %i.j, ptr %i.k, align 4, !tbaa !32
  %i.l = call i32 @get_seed_32(i32 noundef 4) #6
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 10 uses
  store i32 %i.l, ptr %i.m, align 4, !tbaa !17
  %i.n = call i32 @get_seed_32(i32 noundef 5) #6  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 6 uses
  %i.p = icmp eq i32 %i.n, 0
  %spec.select = select i1 %i.p, i32 7, i32 %i.n  ; 8 uses
  store i32 %spec.select, ptr %i.o, align 16, !tbaa !33
  %i.q = load i16, ptr %2, align 16, !tbaa !30    ; 3 uses
  %i.r = icmp eq i16 %i.q, 0
  %i.s = load i16, ptr %i.h, align 2              ; 2 uses
  %i.t = icmp eq i16 %i.s, 0
  %or.cond = select i1 %i.r, i1 %i.t, i1 false
  %i.u = load i16, ptr %i.k, align 4              ; 2 uses
  %i.v = icmp eq i16 %i.u, 0
  %or.cond9 = select i1 %or.cond, i1 %i.v, i1 false
  br i1 %or.cond9, label %.preheader187.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.w = icmp eq i16 %i.q, 1
  %i.x = icmp eq i16 %i.s, 0
  %or.cond14 = select i1 %i.w, i1 %i.x, i1 false
  %i.y = icmp eq i16 %i.u, 0
  %or.cond19 = select i1 %or.cond14, i1 %i.y, i1 false
  br i1 %or.cond19, label %.preheader187.sink.split, label %.preheader187

.preheader187.sink.split:                         ; preds = %bb.b, %bb.a
  %.sink246 = phi i16 [ 0, %bb.a ], [ 13333, %bb.b ] ; 3 uses
  store i16 %.sink246, ptr %2, align 16, !tbaa !30
  store i16 %.sink246, ptr %i.h, align 2, !tbaa !31
  store i16 102, ptr %i.k, align 4, !tbaa !32
  br label %.preheader187

.preheader187:                                    ; preds = %.preheader187.sink.split, %bb.b
  %i.z = phi i16 [ %i.q, %bb.b ], [ %.sink246, %.preheader187.sink.split ]
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.b, ptr %i.aa, align 8, !tbaa !34
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 104
  store i16 0, ptr %i.ac, align 8, !tbaa !35
  %i.ad = and i32 %spec.select, 1
  %i.ae = lshr i32 %spec.select, 1
  %i.af = and i32 %i.ae, 1
  %spec.select173.1 = add nuw nsw i32 %i.af, %i.ad
  %i.ag = lshr i32 %spec.select, 2
  %i.ah = and i32 %i.ag, 1
  %spec.select173.2 = add nuw nsw i32 %i.ah, %spec.select173.1
  %.rhs.trunc = trunc nuw nsw i32 %spec.select173.2 to i16
  %i.ai = udiv i16 2000, %.rhs.trunc              ; 2 uses
  %.zext = zext nneg i16 %i.ai to i32             ; 3 uses
  store i32 %.zext, ptr %i.ab, align 8, !tbaa !36
  %3 = and i32 %spec.select, 1
  %.not171 = icmp eq i32 %3, 0                    ; 2 uses
  br i1 %.not171, label %bb.c, label %.preheader184

.preheader184:                                    ; preds = %.preheader187
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.b, ptr %i.aj, align 16, !tbaa !34
  br label %bb.c

bb.c:                                             ; preds = %.preheader184, %.preheader187
  %.1133 = phi i16 [ 1, %.preheader184 ], [ 0, %.preheader187 ] ; 3 uses
  %i.ak = and i32 %spec.select, 2                 ; 2 uses
  %.not171.1 = icmp eq i32 %i.ak, 0
  br i1 %.not171.1, label %bb.d, label %.preheader184.1

.preheader184.1:                                  ; preds = %bb.c
  %narrow = mul nuw nsw i16 %i.ai, %.1133
  %i.al = zext nneg i16 %narrow to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.am, ptr %i.an, align 8, !tbaa !34
  %i.ao = add nuw nsw i16 %.1133, 1
  br label %bb.d

bb.d:                                             ; preds = %.preheader184.1, %bb.c
  %.1133.1 = phi i16 [ %i.ao, %.preheader184.1 ], [ %.1133, %bb.c ]
  %i.ap = and i32 %spec.select, 4
  %.not171.2 = icmp eq i32 %i.ap, 0
  br i1 %.not171.2, label %.preheader183, label %.preheader184.2

.preheader184.2:                                  ; preds = %bb.d
  %i.aq = zext nneg i16 %.1133.1 to i32
  %i.ar = mul nuw nsw i32 %.zext, %i.aq
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.at, ptr %i.au, align 16, !tbaa !34
  br label %.preheader183

.preheader183:                                    ; preds = %.preheader184.2, %bb.d
  br i1 %.not171, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.preheader183
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aw = load ptr, ptr %i.av, align 16, !tbaa !34
  %i.ax = call ptr @core_list_init(i32 noundef %.zext, ptr noundef %i.aw, i16 noundef signext %i.z) #6
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !37
  %.pre = load i32, ptr %i.o, align 16, !tbaa !33 ; 2 uses
  %.pre228 = and i32 %.pre, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.preheader183
  %.pre-phi = phi i32 [ %.pre228, %bb.e ], [ %i.ak, %.preheader183 ]
  %i.az = phi i32 [ %.pre, %bb.e ], [ %spec.select, %.preheader183 ]
  %.not169 = icmp eq i32 %.pre-phi, 0
  br i1 %.not169, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ba = load i32, ptr %i.ab, align 8, !tbaa !36
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !34
  %i.bd = load i16, ptr %2, align 16, !tbaa !30
  %i.be = sext i16 %i.bd to i32
  %i.bf = load i16, ptr %i.h, align 2, !tbaa !31
  %i.bg = sext i16 %i.bf to i32
  %i.bh = shl nsw i32 %i.bg, 16
  %i.bi = or i32 %i.bh, %i.be
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.bk = call i32 @core_init_matrix(i32 noundef %i.ba, ptr noundef %i.bc, i32 noundef %i.bi, ptr noundef nonnull %i.bj) #6 ; 0 uses
  %.pre223 = load i32, ptr %i.o, align 16, !tbaa !33
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bl = phi i32 [ %.pre223, %bb.g ], [ %i.az, %bb.f ]
  %i.bm = and i32 %i.bl, 4
  %.not170 = icmp eq i32 %i.bm, 0
  br i1 %.not170, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bn = load i32, ptr %i.ab, align 8, !tbaa !36
  %i.bo = load i16, ptr %2, align 16, !tbaa !30
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bq = load ptr, ptr %i.bp, align 16, !tbaa !34
  call void @core_init_state(i32 noundef %i.bn, i16 noundef signext %i.bo, ptr noundef %i.bq) #6
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.br = load i32, ptr %i.m, align 4, !tbaa !17
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  store i32 1, ptr %i.m, align 4, !tbaa !17
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.l
  %i.bt = load i32, ptr %i.m, align 4, !tbaa !17
  %i.bu = mul i32 %i.bt, 10
  store i32 %i.bu, ptr %i.m, align 4, !tbaa !17
  call void @start_time() #6
  %i.bv = call ptr @iterate(ptr noundef nonnull %2) ; 0 uses
  call void @stop_time() #6
  %i.bw = call i64 @get_time() #6
  %i.bx = call double @time_in_secs(i64 noundef %i.bw) #6 ; 2 uses
  %i.by = fcmp olt double %i.bx, 1.000000e+00
  br i1 %i.by, label %bb.l, label %bb.m, !llvm.loop !23

bb.m:                                             ; preds = %bb.l
  %i.bz = fptoui double %i.bx to i32
  %spec.store.select = call i32 @llvm.umax.i32(i32 %i.bz, i32 1)
  %i.ca = udiv i32 10, %spec.store.select
  %i.cb = add nuw nsw i32 %i.ca, 1
  %i.cc = load i32, ptr %i.m, align 4, !tbaa !17
  %i.cd = mul i32 %i.cc, %i.cb
  store i32 %i.cd, ptr %i.m, align 4, !tbaa !17
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  call void @start_time() #6
  %i.ce = call ptr @iterate(ptr noundef nonnull %2) ; 0 uses
  call void @stop_time() #6
  %i.cf = call i64 @get_time() #6                 ; 6 uses
  %i.cg = load i16, ptr %2, align 16, !tbaa !30
  %i.ch = call zeroext i16 @crc16(i16 noundef signext %i.cg, i16 noundef zeroext 0) #6
  %i.ci = load i16, ptr %i.h, align 2, !tbaa !31
  %i.cj = call zeroext i16 @crc16(i16 noundef signext %i.ci, i16 noundef zeroext %i.ch) #6
  %i.ck = load i16, ptr %i.k, align 4, !tbaa !32
  %i.cl = call zeroext i16 @crc16(i16 noundef signext %i.ck, i16 noundef zeroext %i.cj) #6
  %i.cm = load i32, ptr %i.ab, align 8, !tbaa !36
  %i.cn = trunc i32 %i.cm to i16
  %i.co = call zeroext i16 @crc16(i16 noundef signext %i.cn, i16 noundef zeroext %i.cl) #6 ; 2 uses
  %i.cp = zext i16 %i.co to i32
  switch i16 %i.co, label %.thread [
    i16 -30206, label %bb.s
    i16 31493, label %bb.o
    i16 20143, label %bb.p
    i16 -5643, label %bb.q
    i16 6386, label %bb.r
  ]

bb.o:                                             ; preds = %bb.n
  br label %bb.s

bb.p:                                             ; preds = %bb.n
  br label %bb.s

bb.q:                                             ; preds = %bb.n
  br label %bb.s

bb.r:                                             ; preds = %bb.n
  br label %bb.s

bb.s:                                             ; preds = %bb.n, %bb.r, %bb.q, %bb.p, %bb.o
  %str.sink = phi ptr [ @str, %bb.r ], [ @str.1, %bb.q ], [ @str.2, %bb.p ], [ @str.3, %bb.o ], [ @str.4, %bb.n ]
  %i.cq = phi i1 [ false, %bb.r ], [ true, %bb.q ], [ false, %bb.p ], [ false, %bb.o ], [ false, %bb.n ] ; 2 uses
  %.0129 = phi i64 [ 4, %bb.r ], [ 3, %bb.q ], [ 2, %bb.p ], [ 1, %bb.o ], [ 0, %bb.n ] ; 3 uses
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) %str.sink) ; 0 uses
  %i.cr = load i32, ptr @default_num_contexts, align 4, !tbaa !29
  %.not210 = icmp eq i32 %i.cr, 0
  br i1 %.not210, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.s
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr @list_known_crc, i64 %.0129
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr @matrix_known_crc, i64 %.0129
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr @state_known_crc, i64 %.0129
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph, %bb.ac
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ac ] ; 2 uses
  %i.cv = phi i32 [ 0, %.lr.ph ], [ %i.eg, %bb.ac ] ; 3 uses
  %.1195 = phi i16 [ 0, %.lr.ph ], [ %i.ef, %bb.ac ]
  %i.cw = getelementptr inbounds nuw [112 x i8], ptr %2, i64 %indvars.iv ; 5 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 104 ; 7 uses
  store i16 0, ptr %i.cx, align 8, !tbaa !35
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 48 ; 3 uses
  %i.cz = load i32, ptr %i.cy, align 16, !tbaa !33 ; 3 uses
  %4 = and i32 %i.cz, 1
  %.not162 = icmp eq i32 %4, 0
  br i1 %.not162, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 98
  %i.db = load i16, ptr %i.da, align 2, !tbaa !19 ; 2 uses
  %i.dc = load i16, ptr %i.cs, align 2, !tbaa !38 ; 2 uses
  %.not163 = icmp eq i16 %i.db, %i.dc
  br i1 %.not163, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dd = zext i16 %i.dc to i32
  %i.de = zext i16 %i.db to i32
  %i.df = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %i.cv, i32 noundef %i.de, i32 noundef %i.dd) ; 0 uses
  %i.dg = load i16, ptr %i.cx, align 8, !tbaa !35
  %i.dh = add i16 %i.dg, 1                        ; 2 uses
  store i16 %i.dh, ptr %i.cx, align 8, !tbaa !35
  %.pre224 = load i32, ptr %i.cy, align 16, !tbaa !33
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  %i.di = phi i16 [ %i.dh, %bb.v ], [ 0, %bb.u ], [ 0, %bb.t ] ; 2 uses
  %i.dj = phi i32 [ %.pre224, %bb.v ], [ %i.cz, %bb.u ], [ %i.cz, %bb.t ] ; 3 uses
  %i.dk = and i32 %i.dj, 2
  %.not164 = icmp eq i32 %i.dk, 0
  br i1 %.not164, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cw, i64 100
  %i.dm = load i16, ptr %i.dl, align 4, !tbaa !39 ; 2 uses
  %i.dn = load i16, ptr %i.ct, align 2, !tbaa !38 ; 2 uses
  %.not165 = icmp eq i16 %i.dm, %i.dn
  br i1 %.not165, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.do = zext i16 %i.dn to i32
  %i.dp = zext i16 %i.dm to i32
  %i.dq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %i.cv, i32 noundef %i.dp, i32 noundef %i.do) ; 0 uses
  %i.dr = load i16, ptr %i.cx, align 8, !tbaa !35
  %i.ds = add i16 %i.dr, 1                        ; 2 uses
  store i16 %i.ds, ptr %i.cx, align 8, !tbaa !35
  %.pre225 = load i32, ptr %i.cy, align 16, !tbaa !33
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w
  %i.dt = phi i16 [ %i.ds, %bb.y ], [ %i.di, %bb.x ], [ %i.di, %bb.w ] ; 2 uses
  %i.du = phi i32 [ %.pre225, %bb.y ], [ %i.dj, %bb.x ], [ %i.dj, %bb.w ]
  %i.dv = and i32 %i.du, 4
  %.not166 = icmp eq i32 %i.dv, 0
  br i1 %.not166, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cw, i64 102
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !40 ; 2 uses
  %i.dy = load i16, ptr %i.cu, align 2, !tbaa !38 ; 2 uses
  %.not167 = icmp eq i16 %i.dx, %i.dy
  br i1 %.not167, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dz = zext i16 %i.dy to i32
  %i.ea = zext i16 %i.dx to i32
  %i.eb = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %i.cv, i32 noundef %i.ea, i32 noundef %i.dz) ; 0 uses
  %i.ec = load i16, ptr %i.cx, align 8, !tbaa !35
  %i.ed = add i16 %i.ec, 1                        ; 2 uses
  store i16 %i.ed, ptr %i.cx, align 8, !tbaa !35
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %i.ee = phi i16 [ %i.ed, %bb.ab ], [ %i.dt, %bb.aa ], [ %i.dt, %bb.z ]
  %i.ef = add i16 %i.ee, %.1195                   ; 2 uses
  %indvars.iv.next = add nuw i64 %indvars.iv, 1   ; 2 uses
  %i.eg = trunc nuw i64 %indvars.iv.next to i32   ; 2 uses
  %i.eh = load i32, ptr @default_num_contexts, align 4, !tbaa !29
  %i.ei = icmp ugt i32 %i.eh, %i.eg
  br i1 %i.ei, label %bb.t, label %.thread, !llvm.loop !24

.thread:                                          ; preds = %bb.ac, %bb.s, %bb.n
  %i.ej = phi i1 [ false, %bb.n ], [ %i.cq, %bb.s ], [ %i.cq, %bb.ac ]
  %.2 = phi i16 [ -1, %bb.n ], [ 0, %bb.s ], [ %i.ef, %bb.ac ]
  %i.ek = call zeroext i8 @check_data_types() #6
  %i.el = zext i8 %i.ek to i16
  %i.em = add i16 %.2, %i.el                      ; 2 uses
  %i.en = load i32, ptr %i.ab, align 8, !tbaa !36
  %i.eo = zext i32 %i.en to i64
  %i.ep = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i64 noundef %i.eo) ; 0 uses
  %i.eq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i64 noundef %i.cf) ; 0 uses
  %i.er = call double @time_in_secs(i64 noundef %i.cf) #6
  %i.es = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, double noundef %i.er) ; 0 uses
  %i.et = call double @time_in_secs(i64 noundef %i.cf) #6
  %i.eu = fcmp ogt double %i.et, 0.000000e+00
  br i1 %i.eu, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.thread
  %i.ev = load i32, ptr @default_num_contexts, align 4, !tbaa !29
  %i.ew = load i32, ptr %i.m, align 4, !tbaa !17
  %i.ex = mul i32 %i.ew, %i.ev
  %i.ey = uitofp i32 %i.ex to double
  %i.ez = call double @time_in_secs(i64 noundef %i.cf) #6
  %i.fa = fdiv double %i.ey, %i.ez
  %i.fb = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, double noundef %i.fa) ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.thread
  %i.fc = call double @time_in_secs(i64 noundef %i.cf) #6
  %i.fd = fcmp olt double %i.fc, 1.000000e+01
  br i1 %i.fd, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %puts156 = call i32 @puts(ptr nonnull dereferenceable(1) @str.5) ; 0 uses
  %i.fe = add i16 %i.em, 1
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.3 = phi i16 [ %i.fe, %bb.af ], [ %i.em, %bb.ae ] ; 2 uses
  %i.ff = load i32, ptr @default_num_contexts, align 4, !tbaa !29
  %i.fg = zext i32 %i.ff to i64
  %i.fh = load i32, ptr %i.m, align 4, !tbaa !17
  %i.fi = zext i32 %i.fh to i64
  %i.fj = mul nuw i64 %i.fi, %i.fg
  %i.fk = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i64 noundef %i.fj) ; 0 uses
  %i.fl = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, ptr noundef nonnull @.str.18) ; 0 uses
  %i.fm = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, ptr noundef nonnull @.str.20) ; 0 uses
  %i.fn = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, ptr noundef nonnull @.str.22) ; 0 uses
  %i.fo = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, i32 noundef %i.cp) ; 0 uses
  %i.fp = load i32, ptr %i.o, align 16, !tbaa !33 ; 2 uses
  %.not = trunc i32 %i.fp to i1
  %i.fq = load i32, ptr @default_num_contexts, align 4 ; 2 uses
  %i.fr = icmp ne i32 %i.fq, 0
  %or.cond205 = select i1 %.not, i1 %i.fr, i1 false
  br i1 %or.cond205, label %.lr.ph197, label %.loopexit182

.lr.ph197:                                        ; preds = %bb.ag, %.lr.ph197
  %indvars.iv215 = phi i64 [ %indvars.iv.next216, %.lr.ph197 ], [ 0, %bb.ag ] ; 2 uses
  %i.fs = phi i32 [ %i.fy, %.lr.ph197 ], [ 0, %bb.ag ]
  %i.ft = getelementptr inbounds nuw [112 x i8], ptr %2, i64 %indvars.iv215
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 98
  %i.fv = load i16, ptr %i.fu, align 2, !tbaa !19
  %i.fw = zext i16 %i.fv to i32
  %i.fx = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.fs, i32 noundef %i.fw) ; 0 uses
  %indvars.iv.next216 = add nuw i64 %indvars.iv215, 1 ; 2 uses
  %i.fy = trunc nuw i64 %indvars.iv.next216 to i32 ; 2 uses
  %i.fz = load i32, ptr @default_num_contexts, align 4, !tbaa !29 ; 2 uses
  %i.ga = icmp ugt i32 %i.fz, %i.fy
  br i1 %i.ga, label %.lr.ph197, label %.loopexit182.loopexit, !llvm.loop !25

.loopexit182.loopexit:                            ; preds = %.lr.ph197
  %.pre226 = load i32, ptr %i.o, align 16, !tbaa !33
  br label %.loopexit182

.loopexit182:                                     ; preds = %.loopexit182.loopexit, %bb.ag
  %i.gb = phi i32 [ %i.fz, %.loopexit182.loopexit ], [ %i.fq, %bb.ag ] ; 2 uses
  %i.gc = phi i32 [ %.pre226, %.loopexit182.loopexit ], [ %i.fp, %bb.ag ] ; 2 uses
  %i.gd = and i32 %i.gc, 2
  %.not157 = icmp ne i32 %i.gd, 0
  %i.ge = icmp ne i32 %i.gb, 0
  %or.cond207 = select i1 %.not157, i1 %i.ge, i1 false
  br i1 %or.cond207, label %.lr.ph199, label %.loopexit180

.lr.ph199:                                        ; preds = %.loopexit182, %.lr.ph199
  %indvars.iv217 = phi i64 [ %indvars.iv.next218, %.lr.ph199 ], [ 0, %.loopexit182 ] ; 2 uses
  %i.gf = phi i32 [ %i.gl, %.lr.ph199 ], [ 0, %.loopexit182 ]
  %i.gg = getelementptr inbounds nuw [112 x i8], ptr %2, i64 %indvars.iv217
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 100
  %i.gi = load i16, ptr %i.gh, align 4, !tbaa !39
  %i.gj = zext i16 %i.gi to i32
  %i.gk = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, i32 noundef %i.gf, i32 noundef %i.gj) ; 0 uses
  %indvars.iv.next218 = add nuw i64 %indvars.iv217, 1 ; 2 uses
  %i.gl = trunc nuw i64 %indvars.iv.next218 to i32 ; 2 uses
  %i.gm = load i32, ptr @default_num_contexts, align 4, !tbaa !29 ; 2 uses
  %i.gn = icmp ugt i32 %i.gm, %i.gl
  br i1 %i.gn, label %.lr.ph199, label %.loopexit180.loopexit, !llvm.loop !26

.loopexit180.loopexit:                            ; preds = %.lr.ph199
  %.pre227 = load i32, ptr %i.o, align 16, !tbaa !33
  br label %.loopexit180

.loopexit180:                                     ; preds = %.loopexit180.loopexit, %.loopexit182
  %i.go = phi i32 [ %i.gm, %.loopexit180.loopexit ], [ %i.gb, %.loopexit182 ] ; 2 uses
  %i.gp = phi i32 [ %.pre227, %.loopexit180.loopexit ], [ %i.gc, %.loopexit182 ]
  %i.gq = and i32 %i.gp, 4
  %.not158 = icmp ne i32 %i.gq, 0
  %i.gr = icmp ne i32 %i.go, 0
  %or.cond209 = select i1 %.not158, i1 %i.gr, i1 false
  br i1 %or.cond209, label %.lr.ph201, label %.loopexit

.lr.ph201:                                        ; preds = %.loopexit180, %.lr.ph201
  %indvars.iv219 = phi i64 [ %indvars.iv.next220, %.lr.ph201 ], [ 0, %.loopexit180 ] ; 2 uses
  %i.gs = phi i32 [ %i.gy, %.lr.ph201 ], [ 0, %.loopexit180 ]
  %i.gt = getelementptr inbounds nuw [112 x i8], ptr %2, i64 %indvars.iv219
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 102
  %i.gv = load i16, ptr %i.gu, align 2, !tbaa !40
  %i.gw = zext i16 %i.gv to i32
  %i.gx = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, i32 noundef %i.gs, i32 noundef %i.gw) ; 0 uses
  %indvars.iv.next220 = add nuw i64 %indvars.iv219, 1 ; 2 uses
  %i.gy = trunc nuw i64 %indvars.iv.next220 to i32 ; 2 uses
  %i.gz = load i32, ptr @default_num_contexts, align 4, !tbaa !29 ; 2 uses
  %i.ha = icmp ugt i32 %i.gz, %i.gy
  br i1 %i.ha, label %.lr.ph201, label %.loopexit, !llvm.loop !27

.loopexit:                                        ; preds = %.lr.ph201, %.loopexit180
  %i.hb = phi i32 [ %i.go, %.loopexit180 ], [ %i.gz, %.lr.ph201 ]
  %.not211 = icmp eq i32 %i.hb, 0
end_hunk_0
