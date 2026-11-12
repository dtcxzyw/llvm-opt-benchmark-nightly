Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/events?download=true
inline.NumInlined: 37
inline.NumDeleted: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.timeval = type { i64, i64 }

@.str = private unnamed_addr constant [7 x i8] c"errors\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"events: out of memory allocating %u bytes\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"cli_event_define: event id out of range\00", align 1
@.str.3 = private unnamed_addr constant [65 x i8] c"cli_event_define: can only sum ev_int, ev_time, and ev_data_fast\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"cli_event_define: ev_data_fast can only be sumed\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"cli_event_define: only ev_data can be concatenated\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"cli_event_int must be called with ev_int type\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"cli_event_time* must be called with ev_time type\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"events: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [52 x i8] c"cli_event_string must be called with ev_string type\00", align 1
@.str.10 = private unnamed_addr constant [50 x i8] c"cli_event_string must be called with ev_data type\00", align 1
@.str.11 = private unnamed_addr constant [52 x i8] c"cli_event_fastdata must be called with ev_data_fast\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"%s: ev_chain %u %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [46 x i8] c"cli_event_diff: comparing incompatible events\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"diff: %s count %u vs %u\0A\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"diff: %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [47 x i8] c"diffall: incompatible event maximums %u vs %u\0A\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"event id out of range\00", align 1
@.str.19 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"ev_string\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"ev_data\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"ev_data_fast\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"ev_data_int\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"ev_time\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"\09(%u): %s\0A\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"\09%d bytes\0A\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"\09%s\0A\00", align 1
@.str.28 = private unnamed_addr constant [26 x i8] c"\09%08x checksum, %u bytes\0A\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"\09(%u): 0x%llx\0A\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"\09(%u): %d.%06us\0A\00", align 1
@switch.table.cli_event_debug = private unnamed_addr constant [5 x ptr] [ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], align 8

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, argmem: none, target_mem: none) uwtable
define noalias noundef ptr @cli_events_new(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #12 ; 7 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i32 %0, ptr %i.b, align 8, !tbaa !14
  %i.c = zext i32 %0 to i64
  %i.d = tail call noalias ptr @calloc(i64 noundef %i.c, i64 noundef 24) #12 ; 2 uses
  store ptr %i.d, ptr %i.a, align 8, !tbaa !15
  %.not12 = icmp eq ptr %i.d, null
  br i1 %.not12, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.a) #13
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @.str, ptr %i.e, align 8, !tbaa !24
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i16 257, ptr %i.f, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0 = phi ptr [ %i.a, %bb.d ], [ null, %bb.c ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @cli_events_free(ptr noundef captures(address_is_null) %0) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !15
  tail call void @free(ptr noundef %i.a) #13
  tail call void @free(ptr noundef nonnull %0) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @cli_event_error_oom(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = zext i32 %1 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !16
  %i.d = add i64 %i.c, %i.a
  store i64 %i.d, ptr %i.b, align 8, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !17
  %i.g = add i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 4, !tbaa !17
  %.not6 = icmp eq i32 %1, 0
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.1, i32 noundef %1) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  ret void
}

declare void @cli_errmsg(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @cli_event_define(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !15
  %i.b = zext i32 %1 to i64
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.b ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i32, ptr %i.d, align 8, !tbaa !14
  %.not = icmp ult i32 %1, %i.e
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.2) #13
  %i.f = getelementptr i8, ptr %0, i64 29
  %trunc.i.i = load i8, ptr %i.f, align 1
  switch i8 %trunc.i.i, label %cli_event_error_str.exit [
    i8 0, label %bb.c
    i8 1, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @.str.2, ptr %i.g, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !19
  %i.j = add i32 %i.i, 1
  store i32 %i.j, ptr %i.h, align 8, !tbaa !19
  br label %cli_event_error_str.exit

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !19
  %i.m = shl i32 %i.l, 3
  %i.n = add i32 %i.m, 8                          ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !18
  %i.q = zext i32 %i.n to i64                     ; 2 uses
  %i.r = tail call ptr @cli_safer_realloc(ptr noundef %i.p, i64 noundef %i.q) #13 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !16
  %i.u = add i64 %i.t, %i.q
  store i64 %i.u, ptr %i.s, align 8, !tbaa !16
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !17
  %i.x = add i32 %i.w, 1
  store i32 %i.x, ptr %i.v, align 4, !tbaa !17
  %.not6.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not6.i.i.i.i, label %cli_event_error_str.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.1, i32 noundef %i.n) #13
  br label %cli_event_error_str.exit

bb.g:                                             ; preds = %bb.d
  store ptr %i.r, ptr %i.o, align 8, !tbaa !18
  %i.y = load i32, ptr %i.k, align 8, !tbaa !19
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.z
  store i64 ptrtoint (ptr @.str.2 to i64), ptr %i.aa, align 8, !tbaa !18
  %i.ab = load i32, ptr %i.k, align 8, !tbaa !19
  %i.ac = add i32 %i.ab, 1
  store i32 %i.ac, ptr %i.k, align 8, !tbaa !19
  br label %cli_event_error_str.exit

bb.h:                                             ; preds = %bb.a
  %i.ad = icmp eq i32 %4, 2                       ; 2 uses
  %i.ae = add i32 %3, -6
  %i.af = icmp ult i32 %i.ae, -3
  %or.cond5 = and i1 %i.ad, %i.af
  br i1 %or.cond5, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.3) #13
  %i.ag = getelementptr i8, ptr %0, i64 29
  %trunc.i.i36 = load i8, ptr %i.ag, align 1
  switch i8 %trunc.i.i36, label %cli_event_error_str.exit [
    i8 0, label %bb.j
    i8 1, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @.str.3, ptr %i.ah, align 8, !tbaa !18
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !19
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ai, align 8, !tbaa !19
  br label %cli_event_error_str.exit

bb.k:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !19
  %i.an = shl i32 %i.am, 3
  %i.ao = add i32 %i.an, 8                        ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !18
  %i.ar = zext i32 %i.ao to i64                   ; 2 uses
  %i.as = tail call ptr @cli_safer_realloc(ptr noundef %i.aq, i64 noundef %i.ar) #13 ; 3 uses
  %.not.i.i.i37 = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i37, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !16
  %i.av = add i64 %i.au, %i.ar
  store i64 %i.av, ptr %i.at, align 8, !tbaa !16
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !17
  %i.ay = add i32 %i.ax, 1
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !17
  %.not6.i.i.i.i38 = icmp eq i32 %i.ao, 0
  br i1 %.not6.i.i.i.i38, label %cli_event_error_str.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.1, i32 noundef %i.ao) #13
  br label %cli_event_error_str.exit

bb.n:                                             ; preds = %bb.k
  store ptr %i.as, ptr %i.ap, align 8, !tbaa !18
  %i.az = load i32, ptr %i.al, align 8, !tbaa !19
  %i.ba = zext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.ba
  store i64 ptrtoint (ptr @.str.3 to i64), ptr %i.bb, align 8, !tbaa !18
  %i.bc = load i32, ptr %i.al, align 8, !tbaa !19
  %i.bd = add i32 %i.bc, 1
  store i32 %i.bd, ptr %i.al, align 8, !tbaa !19
  br label %cli_event_error_str.exit

bb.o:                                             ; preds = %bb.h
  %i.be = icmp ne i32 %3, 3                       ; 2 uses
  %or.cond7.not = or i1 %i.be, %i.ad
  br i1 %or.cond7.not, label %bb.v, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.4) #13
  %i.bf = getelementptr i8, ptr %0, i64 29
  %trunc.i.i41 = load i8, ptr %i.bf, align 1
  switch i8 %trunc.i.i41, label %cli_event_error_str.exit [
    i8 0, label %bb.q
    i8 1, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @.str.4, ptr %i.bg, align 8, !tbaa !18
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !19
  %i.bj = add i32 %i.bi, 1
  store i32 %i.bj, ptr %i.bh, align 8, !tbaa !19
  br label %cli_event_error_str.exit

bb.r:                                             ; preds = %bb.p
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !19
  %i.bm = shl i32 %i.bl, 3
  %i.bn = add i32 %i.bm, 8                        ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !18
  %i.bq = zext i32 %i.bn to i64                   ; 2 uses
  %i.br = tail call ptr @cli_safer_realloc(ptr noundef %i.bp, i64 noundef %i.bq) #13 ; 3 uses
  %.not.i.i.i42 = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i42, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !16
  %i.bu = add i64 %i.bt, %i.bq
  store i64 %i.bu, ptr %i.bs, align 8, !tbaa !16
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !17
  %i.bx = add i32 %i.bw, 1
  store i32 %i.bx, ptr %i.bv, align 4, !tbaa !17
  %.not6.i.i.i.i43 = icmp eq i32 %i.bn, 0
  br i1 %.not6.i.i.i.i43, label %cli_event_error_str.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.1, i32 noundef %i.bn) #13
  br label %cli_event_error_str.exit

bb.u:                                             ; preds = %bb.r
  store ptr %i.br, ptr %i.bo, align 8, !tbaa !18
  %i.by = load i32, ptr %i.bk, align 8, !tbaa !19
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bz
  store i64 ptrtoint (ptr @.str.4 to i64), ptr %i.ca, align 8, !tbaa !18
  %i.cb = load i32, ptr %i.bk, align 8, !tbaa !19
  %i.cc = add i32 %i.cb, 1
  store i32 %i.cc, ptr %i.bk, align 8, !tbaa !19
  br label %cli_event_error_str.exit

bb.v:                                             ; preds = %bb.o
  %i.cd = icmp eq i32 %4, 3
  %i.ce = icmp ne i32 %3, 2
  %or.cond9 = and i1 %i.ce, %i.cd
  br i1 %or.cond9, label %bb.w, label %bb.ac

bb.w:                                             ; preds = %bb.v
  tail call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.5) #13
  %i.cf = getelementptr i8, ptr %0, i64 29
  %trunc.i.i46 = load i8, ptr %i.cf, align 1
  switch i8 %trunc.i.i46, label %cli_event_error_str.exit [
    i8 0, label %bb.x
    i8 1, label %bb.y
  ]

bb.x:                                             ; preds = %bb.w
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @.str.5, ptr %i.cg, align 8, !tbaa !18
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !19
  %i.cj = add i32 %i.ci, 1
  store i32 %i.cj, ptr %i.ch, align 8, !tbaa !19
  br label %cli_event_error_str.exit

bb.y:                                             ; preds = %bb.w
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !19
  %i.cm = shl i32 %i.cl, 3
  %i.cn = add i32 %i.cm, 8                        ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !18
  %i.cq = zext i32 %i.cn to i64                   ; 2 uses
  %i.cr = tail call ptr @cli_safer_realloc(ptr noundef %i.cp, i64 noundef %i.cq) #13 ; 3 uses
  %.not.i.i.i47 = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i47, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !16
  %i.cu = add i64 %i.ct, %i.cq
  store i64 %i.cu, ptr %i.cs, align 8, !tbaa !16
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !17
  %i.cx = add i32 %i.cw, 1
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !17
  %.not6.i.i.i.i48 = icmp eq i32 %i.cn, 0
  br i1 %.not6.i.i.i.i48, label %cli_event_error_str.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.1, i32 noundef %i.cn) #13
  br label %cli_event_error_str.exit

bb.ab:                                            ; preds = %bb.y
  store ptr %i.cr, ptr %i.co, align 8, !tbaa !18
  %i.cy = load i32, ptr %i.ck, align 8, !tbaa !19
  %i.cz = zext i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.cz
  store i64 ptrtoint (ptr @.str.5 to i64), ptr %i.da, align 8, !tbaa !18
  %i.db = load i32, ptr %i.ck, align 8, !tbaa !19
  %i.dc = add i32 %i.db, 1
  store i32 %i.dc, ptr %i.ck, align 8, !tbaa !19
  br label %cli_event_error_str.exit

bb.ac:                                            ; preds = %bb.v
  %i.dd = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.de = trunc i32 %3 to i16
  %i.df = and i16 %i.de, 255
  store ptr %2, ptr %i.c, align 8, !tbaa !20
  %i.dg = trunc i32 %4 to i16
  %i.dh = shl i16 %i.dg, 8
  %i.di = or disjoint i16 %i.dh, %i.df
  store i16 %i.di, ptr %i.dd, align 4
  br i1 %i.be, label %cli_event_error_str.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dj = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 4294967295, ptr %i.dj, align 8, !tbaa !18
  br label %cli_event_error_str.exit

cli_event_error_str.exit:                         ; preds = %bb.ab, %bb.aa, %bb.z, %bb.x, %bb.w, %bb.u, %bb.t, %bb.s, %bb.q, %bb.p, %bb.n, %bb.m, %bb.l, %bb.j, %bb.i, %bb.g, %bb.f, %bb.e, %bb.c, %bb.b, %bb.ac, %bb.ad
  %.0 = phi i32 [ 0, %bb.ac ], [ -1, %bb.g ], [ -1, %bb.n ], [ -1, %bb.u ], [ 0, %bb.ad ], [ -1, %bb.b ], [ -1, %bb.c ], [ -1, %bb.e ], [ -1, %bb.f ], [ -1, %bb.i ], [ -1, %bb.j ], [ -1, %bb.l ], [ -1, %bb.m ], [ -1, %bb.p ], [ -1, %bb.q ], [ -1, %bb.s ], [ -1, %bb.t ], [ -1, %bb.w ], [ -1, %bb.x ], [ -1, %bb.z ], [ -1, %bb.aa ], [ -1, %bb.ab ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define void @cli_event_error_str(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %event_string.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.8, ptr noundef %1) #13
  %.not.i = icmp eq ptr %1, null
  %spec.store.select.i = select i1 %.not.i, ptr @.str.19, ptr %1 ; 2 uses
  %i.a = getelementptr i8, ptr %0, i64 29
  %trunc.i = load i8, ptr %i.a, align 1
  switch i8 %trunc.i, label %event_string.exit [
    i8 0, label %bb.c
    i8 1, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %spec.store.select.i, ptr %i.b, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !19
  %i.e = add i32 %i.d, 1
  store i32 %i.e, ptr %i.c, align 8, !tbaa !19
  br label %event_string.exit

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !19
  %i.h = shl i32 %i.g, 3
  %i.i = add i32 %i.h, 8                          ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !18
  %i.l = zext i32 %i.i to i64                     ; 2 uses
  %i.m = tail call ptr @cli_safer_realloc(ptr noundef %i.k, i64 noundef %i.l) #13 ; 3 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !16
  %i.p = add i64 %i.o, %i.l
  store i64 %i.p, ptr %i.n, align 8, !tbaa !16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !17
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr %i.q, align 4, !tbaa !17
  %.not6.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not6.i.i.i, label %event_string.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.1, i32 noundef %i.i) #13
  br label %event_string.exit

bb.g:                                             ; preds = %bb.d
  %i.t = ptrtoint ptr %spec.store.select.i to i64
  store ptr %i.m, ptr %i.j, align 8, !tbaa !18
  %i.u = load i32, ptr %i.f, align 8, !tbaa !19
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.v
  store i64 %i.t, ptr %i.w, align 8, !tbaa !18
  %i.x = load i32, ptr %i.f, align 8, !tbaa !19
  %i.y = add i32 %i.x, 1
  store i32 %i.y, ptr %i.f, align 8, !tbaa !19
  br label %event_string.exit

event_string.exit:                                ; preds = %bb.g, %bb.f, %bb.e, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @cli_event_get_name(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %get_event.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !14
  %.not8.i = icmp ult i32 %1, %i.b
  br i1 %.not8.i, label %get_event.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.18) #13
  %i.c = getelementptr i8, ptr %0, i64 29
  %trunc.i.i.i = load i8, ptr %i.c, align 1
  switch i8 %trunc.i.i.i, label %get_event.exit.thread [
    i8 0, label %bb.d
    i8 1, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @.str.18, ptr %i.d, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !19
  %i.g = add i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8, !tbaa !19
  br label %get_event.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !19
  %i.j = shl i32 %i.i, 3
  %i.k = add i32 %i.j, 8                          ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !18
  %i.n = zext i32 %i.k to i64                     ; 2 uses
  %i.o = tail call ptr @cli_safer_realloc(ptr noundef %i.m, i64 noundef %i.n) #13 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !16
  %i.r = add i64 %i.q, %i.n
  store i64 %i.r, ptr %i.p, align 8, !tbaa !16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !17
  %i.u = add i32 %i.t, 1
  store i32 %i.u, ptr %i.s, align 4, !tbaa !17
  %.not6.i.i.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not6.i.i.i.i.i, label %get_event.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.1, i32 noundef %i.k) #13
  br label %get_event.exit.thread

bb.h:                                             ; preds = %bb.e
  store ptr %i.o, ptr %i.l, align 8, !tbaa !18
  %i.v = load i32, ptr %i.h, align 8, !tbaa !19
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.w
  store i64 ptrtoint (ptr @.str.18 to i64), ptr %i.x, align 8, !tbaa !18
  %i.y = load i32, ptr %i.h, align 8, !tbaa !19
  %i.z = add i32 %i.y, 1
  store i32 %i.z, ptr %i.h, align 8, !tbaa !19
  br label %get_event.exit.thread

get_event.exit:                                   ; preds = %bb.b
  %i.aa = load ptr, ptr %0, align 8, !tbaa !15    ; 2 uses
  %.not = icmp eq ptr %i.aa, null
  br i1 %.not, label %get_event.exit.thread, label %bb.i

bb.i:                                             ; preds = %get_event.exit
  %i.ab = zext i32 %1 to i64
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %i.ab
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !20
  br label %get_event.exit.thread

get_event.exit.thread:                            ; preds = %bb.h, %bb.g, %bb.f, %bb.d, %bb.c, %bb.a, %get_event.exit, %bb.i
  %.0 = phi ptr [ %i.ad, %bb.i ], [ null, %get_event.exit ], [ null, %bb.a ], [ null, %bb.c ], [ null, %bb.d ], [ null, %bb.f ], [ null, %bb.g ], [ null, %bb.h ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define void @cli_event_int(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #5 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %cli_event_error_str.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !14
  %.not8.i = icmp ult i32 %1, %i.b
  br i1 %.not8.i, label %get_event.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.18) #13
  %i.c = getelementptr i8, ptr %0, i64 29
  %trunc.i.i.i = load i8, ptr %i.c, align 1
  switch i8 %trunc.i.i.i, label %cli_event_error_str.exit [
    i8 0, label %bb.d
    i8 1, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @.str.18, ptr %i.d, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !19
  %i.g = add i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8, !tbaa !19
  br label %cli_event_error_str.exit

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !19
  %i.j = shl i32 %i.i, 3
  %i.k = add i32 %i.j, 8                          ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !18
  %i.n = zext i32 %i.k to i64                     ; 2 uses
  %i.o = tail call ptr @cli_safer_realloc(ptr noundef %i.m, i64 noundef %i.n) #13 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !16
  %i.r = add i64 %i.q, %i.n
  store i64 %i.r, ptr %i.p, align 8, !tbaa !16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !17
  %i.u = add i32 %i.t, 1
  store i32 %i.u, ptr %i.s, align 4, !tbaa !17
  %.not6.i.i.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not6.i.i.i.i.i, label %cli_event_error_str.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.1, i32 noundef %i.k) #13
  br label %cli_event_error_str.exit

bb.h:                                             ; preds = %bb.e
  store ptr %i.o, ptr %i.l, align 8, !tbaa !18
  %i.v = load i32, ptr %i.h, align 8, !tbaa !19
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.w
  store i64 ptrtoint (ptr @.str.18 to i64), ptr %i.x, align 8, !tbaa !18
  %i.y = load i32, ptr %i.h, align 8, !tbaa !19
  %i.z = add i32 %i.y, 1
  store i32 %i.z, ptr %i.h, align 8, !tbaa !19
  br label %cli_event_error_str.exit

get_event.exit:                                   ; preds = %bb.b
  %i.aa = load ptr, ptr %0, align 8, !tbaa !15    ; 2 uses
  %i.ab = zext i32 %1 to i64
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %i.ab ; 7 uses
  %.not = icmp eq ptr %i.aa, null
  br i1 %.not, label %cli_event_error_str.exit, label %bb.i

bb.i:                                             ; preds = %get_event.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 20
  %i.ae = load i16, ptr %i.ad, align 4            ; 2 uses
  %i.af = and i16 %i.ae, 255
  %.not14 = icmp eq i16 %i.af, 4
  br i1 %.not14, label %bb.p, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.6) #13
  %i.ag = getelementptr i8, ptr %0, i64 29
  %trunc.i.i = load i8, ptr %i.ag, align 1
  switch i8 %trunc.i.i, label %cli_event_error_str.exit [
    i8 0, label %bb.k
    i8 1, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @.str.6, ptr %i.ah, align 8, !tbaa !18
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !19
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ai, align 8, !tbaa !19
  br label %cli_event_error_str.exit

bb.l:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !19
  %i.an = shl i32 %i.am, 3
  %i.ao = add i32 %i.an, 8                        ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !18
  %i.ar = zext i32 %i.ao to i64                   ; 2 uses
  %i.as = tail call ptr @cli_safer_realloc(ptr noundef %i.aq, i64 noundef %i.ar) #13 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !16
  %i.av = add i64 %i.au, %i.ar
  store i64 %i.av, ptr %i.at, align 8, !tbaa !16
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !17
  %i.ay = add i32 %i.ax, 1
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !17
  %.not6.i.i.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not6.i.i.i.i, label %cli_event_error_str.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.1, i32 noundef %i.ao) #13
  br label %cli_event_error_str.exit

bb.o:                                             ; preds = %bb.l
  store ptr %i.as, ptr %i.ap, align 8, !tbaa !18
  %i.az = load i32, ptr %i.al, align 8, !tbaa !19
  %i.ba = zext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.ba
  store i64 ptrtoint (ptr @.str.6 to i64), ptr %i.bb, align 8, !tbaa !18
  %i.bc = load i32, ptr %i.al, align 8, !tbaa !19
  %i.bd = add i32 %i.bc, 1
  store i32 %i.bd, ptr %i.al, align 8, !tbaa !19
  br label %cli_event_error_str.exit

bb.p:                                             ; preds = %bb.i
  %i.be = lshr i16 %i.ae, 8
  %trunc = trunc nuw i16 %i.be to i8
  switch i8 %trunc, label %cli_event_error_str.exit [
    i8 0, label %bb.q
    i8 2, label %bb.r
    i8 1, label %bb.s
  ]

bb.q:                                             ; preds = %bb.p
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 %2, ptr %i.bf, align 8, !tbaa !18
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !19
  %i.bi = add i32 %i.bh, 1
  store i32 %i.bi, ptr %i.bg, align 8, !tbaa !19
  br label %cli_event_error_str.exit

bb.r:                                             ; preds = %bb.p
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !19
  %i.bl = add i32 %i.bk, 1
  store i32 %i.bl, ptr %i.bj, align 8, !tbaa !19
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !18
  %i.bo = add i64 %i.bn, %2
  store i64 %i.bo, ptr %i.bm, align 8, !tbaa !18
  br label %cli_event_error_str.exit

bb.s:                                             ; preds = %bb.p
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 4 uses
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !19
  %i.br = shl i32 %i.bq, 3
  %i.bs = add i32 %i.br, 8                        ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !18
  %i.bv = zext i32 %i.bs to i64                   ; 2 uses
  %i.bw = tail call ptr @cli_safer_realloc(ptr noundef %i.bu, i64 noundef %i.bv) #13 ; 3 uses
  %.not.i16 = icmp eq ptr %i.bw, null
  br i1 %.not.i16, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !16
  %i.bz = add i64 %i.by, %i.bv
  store i64 %i.bz, ptr %i.bx, align 8, !tbaa !16
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !17
  %i.cc = add i32 %i.cb, 1
  store i32 %i.cc, ptr %i.ca, align 4, !tbaa !17
  %.not6.i.i = icmp eq i32 %i.bs, 0
  br i1 %.not6.i.i, label %cli_event_error_str.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.1, i32 noundef %i.bs) #13
  br label %cli_event_error_str.exit

bb.v:                                             ; preds = %bb.s
  store ptr %i.bw, ptr %i.bt, align 8, !tbaa !18
  %i.cd = load i32, ptr %i.bp, align 8, !tbaa !19
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.ce
  store i64 %2, ptr %i.cf, align 8, !tbaa !18
  %i.cg = load i32, ptr %i.bp, align 8, !tbaa !19
  %i.ch = add i32 %i.cg, 1
  store i32 %i.ch, ptr %i.bp, align 8, !tbaa !19
  br label %cli_event_error_str.exit

cli_event_error_str.exit:                         ; preds = %bb.h, %bb.g, %bb.f, %bb.d, %bb.c, %bb.a, %bb.v, %bb.u, %bb.t, %bb.o, %bb.n, %bb.m, %bb.k, %bb.j, %bb.q, %bb.r, %bb.p, %get_event.exit
  ret void
}

; Function Attrs: nounwind uwtable
define void @cli_event_time_start(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %2 = alloca %struct.timeval, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %cli_event_error_str.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !14
  %.not8.i = icmp ult i32 %1, %i.b
  br i1 %.not8.i, label %get_event.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.18) #13
  %i.c = getelementptr i8, ptr %0, i64 29
  %trunc.i.i.i = load i8, ptr %i.c, align 1
  switch i8 %trunc.i.i.i, label %cli_event_error_str.exit [
    i8 0, label %bb.d
    i8 1, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @.str.18, ptr %i.d, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !19
  %i.g = add i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8, !tbaa !19
  br label %cli_event_error_str.exit

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !19
  %i.j = shl i32 %i.i, 3
  %i.k = add i32 %i.j, 8                          ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !18
  %i.n = zext i32 %i.k to i64                     ; 2 uses
  %i.o = tail call ptr @cli_safer_realloc(ptr noundef %i.m, i64 noundef %i.n) #13 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !16
  %i.r = add i64 %i.q, %i.n
  store i64 %i.r, ptr %i.p, align 8, !tbaa !16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !17
  %i.u = add i32 %i.t, 1
  store i32 %i.u, ptr %i.s, align 4, !tbaa !17
  %.not6.i.i.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not6.i.i.i.i.i, label %cli_event_error_str.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.1, i32 noundef %i.k) #13
  br label %cli_event_error_str.exit

bb.h:                                             ; preds = %bb.e
  store ptr %i.o, ptr %i.l, align 8, !tbaa !18
  %i.v = load i32, ptr %i.h, align 8, !tbaa !19
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.w
  store i64 ptrtoint (ptr @.str.18 to i64), ptr %i.x, align 8, !tbaa !18
  %i.y = load i32, ptr %i.h, align 8, !tbaa !19
  %i.z = add i32 %i.y, 1
  store i32 %i.z, ptr %i.h, align 8, !tbaa !19
  br label %cli_event_error_str.exit

get_event.exit:                                   ; preds = %bb.b
  %i.aa = load ptr, ptr %0, align 8, !tbaa !15    ; 2 uses
  %i.ab = zext i32 %1 to i64
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %i.ab ; 3 uses
  %.not = icmp eq ptr %i.aa, null
  br i1 %.not, label %cli_event_error_str.exit, label %bb.i

bb.i:                                             ; preds = %get_event.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 20
  %i.ae = load i16, ptr %i.ad, align 4
  %i.af = and i16 %i.ae, 255
  %.not6 = icmp eq i16 %i.af, 5
  br i1 %.not6, label %bb.p, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7) #13
  %i.ag = getelementptr i8, ptr %0, i64 29
  %trunc.i.i = load i8, ptr %i.ag, align 1
  switch i8 %trunc.i.i, label %cli_event_error_str.exit [
    i8 0, label %bb.k
    i8 1, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @.str.7, ptr %i.ah, align 8, !tbaa !18
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !19
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ai, align 8, !tbaa !19
  br label %cli_event_error_str.exit

bb.l:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !19
  %i.an = shl i32 %i.am, 3
  %i.ao = add i32 %i.an, 8                        ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !18
  %i.ar = zext i32 %i.ao to i64                   ; 2 uses
  %i.as = tail call ptr @cli_safer_realloc(ptr noundef %i.aq, i64 noundef %i.ar) #13 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !16
  %i.av = add i64 %i.au, %i.ar
  store i64 %i.av, ptr %i.at, align 8, !tbaa !16
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !17
  %i.ay = add i32 %i.ax, 1
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !17
  %.not6.i.i.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not6.i.i.i.i, label %cli_event_error_str.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.1, i32 noundef %i.ao) #13
  br label %cli_event_error_str.exit

bb.o:                                             ; preds = %bb.l
  store ptr %i.as, ptr %i.ap, align 8, !tbaa !18
  %i.az = load i32, ptr %i.al, align 8, !tbaa !19
  %i.ba = zext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.ba
  store i64 ptrtoint (ptr @.str.7 to i64), ptr %i.bb, align 8, !tbaa !18
  %i.bc = load i32, ptr %i.al, align 8, !tbaa !19
  %i.bd = add i32 %i.bc, 1
  store i32 %i.bd, ptr %i.al, align 8, !tbaa !19
  br label %cli_event_error_str.exit

bb.p:                                             ; preds = %bb.i
  %i.be = call i32 @gettimeofday(ptr noundef nonnull %2, ptr noundef null) #13 ; 0 uses
  %i.bf = load i64, ptr %2, align 8, !tbaa !22
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !23
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !18
  %.neg = mul i64 %i.bf, -1000000
  %.neg11 = sub i64 %.neg, %i.bh
  %i.bk = add i64 %.neg11, %i.bj
  store i64 %i.bk, ptr %i.bi, align 8, !tbaa !18
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !19
  %i.bn = add i32 %i.bm, 1
  store i32 %i.bn, ptr %i.bl, align 8, !tbaa !19
  br label %cli_event_error_str.exit

cli_event_error_str.exit:                         ; preds = %bb.h, %bb.g, %bb.f, %bb.d, %bb.c, %bb.a, %bb.o, %bb.n, %bb.m, %bb.k, %bb.j, %get_event.exit, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define void @cli_event_time_nested_start(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %3 = alloca %struct.timeval, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %cli_event_error_str.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !14
  %.not8.i = icmp ult i32 %1, %i.b
  br i1 %.not8.i, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.18) #13
  %i.c = getelementptr i8, ptr %0, i64 29
  %trunc.i.i.i = load i8, ptr %i.c, align 1
  switch i8 %trunc.i.i.i, label %bb.j [
    i8 0, label %bb.d
    i8 1, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @.str.18, ptr %i.d, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !19
  %i.g = add i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8, !tbaa !19
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !19
  %i.j = shl i32 %i.i, 3
  %i.k = add i32 %i.j, 8                          ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !18
  %i.n = zext i32 %i.k to i64                     ; 2 uses
  %i.o = tail call ptr @cli_safer_realloc(ptr noundef %i.m, i64 noundef %i.n) #13 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !16
  %i.r = add i64 %i.q, %i.n
  store i64 %i.r, ptr %i.p, align 8, !tbaa !16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !17
  %i.u = add i32 %i.t, 1
  store i32 %i.u, ptr %i.s, align 4, !tbaa !17
  %.not6.i.i.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not6.i.i.i.i.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.1, i32 noundef %i.k) #13
  br label %bb.j

bb.h:                                             ; preds = %bb.e
  store ptr %i.o, ptr %i.l, align 8, !tbaa !18
  %i.v = load i32, ptr %i.h, align 8, !tbaa !19
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.w
  store i64 ptrtoint (ptr @.str.18 to i64), ptr %i.x, align 8, !tbaa !18
  %i.y = load i32, ptr %i.h, align 8, !tbaa !19
  %i.z = add i32 %i.y, 1
  store i32 %i.z, ptr %i.h, align 8, !tbaa !19
  br label %bb.j

bb.i:                                             ; preds = %bb.b
  %i.aa = load ptr, ptr %0, align 8, !tbaa !15
  %i.ab = zext i32 %1 to i64
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %i.ab
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.d, %bb.f, %bb.g, %bb.h, %bb.i
  %.0.i.ph = phi ptr [ null, %bb.h ], [ null, %bb.g ], [ null, %bb.f ], [ null, %bb.d ], [ null, %bb.c ], [ %i.ac, %bb.i ] ; 4 uses
  %i.ad = load i32, ptr %i.a, align 8, !tbaa !14
  %.not8.i16 = icmp ult i32 %2, %i.ad
  br i1 %.not8.i16, label %get_event.exit21, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.18) #13
  %i.ae = getelementptr i8, ptr %0, i64 29
  %trunc.i.i.i17 = load i8, ptr %i.ae, align 1
  switch i8 %trunc.i.i.i17, label %cli_event_error_str.exit [
    i8 0, label %bb.l
    i8 1, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @.str.18, ptr %i.af, align 8, !tbaa !18
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !19
  %i.ai = add i32 %i.ah, 1
  store i32 %i.ai, ptr %i.ag, align 8, !tbaa !19
  br label %cli_event_error_str.exit

bb.m:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !19
  %i.al = shl i32 %i.ak, 3
  %i.am = add i32 %i.al, 8                        ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !18
  %i.ap = zext i32 %i.am to i64                   ; 2 uses
  %i.aq = tail call ptr @cli_safer_realloc(ptr noundef %i.ao, i64 noundef %i.ap) #13 ; 3 uses
  %.not.i.i.i.i18 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i18, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !16
  %i.at = add i64 %i.as, %i.ap
  store i64 %i.at, ptr %i.ar, align 8, !tbaa !16
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !17
  %i.aw = add i32 %i.av, 1
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !17
  %.not6.i.i.i.i.i20 = icmp eq i32 %i.am, 0
  br i1 %.not6.i.i.i.i.i20, label %cli_event_error_str.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.1, i32 noundef %i.am) #13
  br label %cli_event_error_str.exit

bb.p:                                             ; preds = %bb.m
  store ptr %i.aq, ptr %i.an, align 8, !tbaa !18
  %i.ax = load i32, ptr %i.aj, align 8, !tbaa !19
  %i.ay = zext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ay
  store i64 ptrtoint (ptr @.str.18 to i64), ptr %i.az, align 8, !tbaa !18
  %i.ba = load i32, ptr %i.aj, align 8, !tbaa !19
  %i.bb = add i32 %i.ba, 1
  store i32 %i.bb, ptr %i.aj, align 8, !tbaa !19
  br label %cli_event_error_str.exit

get_event.exit21:                                 ; preds = %bb.j
  %i.bc = load ptr, ptr %0, align 8, !tbaa !15    ; 2 uses
  %i.bd = zext i32 %2 to i64
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.bc, i64 %i.bd ; 2 uses
  %i.bf = icmp ne ptr %.0.i.ph, null
  %i.bg = icmp ne ptr %i.bc, null
  %or.cond = select i1 %i.bf, i1 %i.bg, i1 false
  br i1 %or.cond, label %bb.q, label %cli_event_error_str.exit

bb.q:                                             ; preds = %get_event.exit21
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.i.ph, i64 20
  %i.bi = load i16, ptr %i.bh, align 4
  %i.bj = and i16 %i.bi, 255
  %.not = icmp eq i16 %i.bj, 5
  br i1 %.not, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 20
  %i.bl = load i16, ptr %i.bk, align 4
  %i.bm = and i16 %i.bl, 255
  %.not14 = icmp eq i16 %i.bm, 5
  br i1 %.not14, label %bb.y, label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  tail call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7) #13
  %i.bn = getelementptr i8, ptr %0, i64 29
  %trunc.i.i = load i8, ptr %i.bn, align 1
  switch i8 %trunc.i.i, label %cli_event_error_str.exit [
    i8 0, label %bb.t
    i8 1, label %bb.u
  ]

bb.t:                                             ; preds = %bb.s
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @.str.7, ptr %i.bo, align 8, !tbaa !18
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !19
  %i.br = add i32 %i.bq, 1
  store i32 %i.br, ptr %i.bp, align 8, !tbaa !19
  br label %cli_event_error_str.exit

bb.u:                                             ; preds = %bb.s
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !19
  %i.bu = shl i32 %i.bt, 3
  %i.bv = add i32 %i.bu, 8                        ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !18
  %i.by = zext i32 %i.bv to i64                   ; 2 uses
  %i.bz = tail call ptr @cli_safer_realloc(ptr noundef %i.bx, i64 noundef %i.by) #13 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !16
  %i.cc = add i64 %i.cb, %i.by
  store i64 %i.cc, ptr %i.ca, align 8, !tbaa !16
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !17
  %i.cf = add i32 %i.ce, 1
  store i32 %i.cf, ptr %i.cd, align 4, !tbaa !17
  %.not6.i.i.i.i = icmp eq i32 %i.bv, 0
  br i1 %.not6.i.i.i.i, label %cli_event_error_str.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.1, i32 noundef %i.bv) #13
  br label %cli_event_error_str.exit

bb.x:                                             ; preds = %bb.u
  store ptr %i.bz, ptr %i.bw, align 8, !tbaa !18
  %i.cg = load i32, ptr %i.bs, align 8, !tbaa !19
  %i.ch = zext i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.ch
  store i64 ptrtoint (ptr @.str.7 to i64), ptr %i.ci, align 8, !tbaa !18
  %i.cj = load i32, ptr %i.bs, align 8, !tbaa !19
  %i.ck = add i32 %i.cj, 1
  store i32 %i.ck, ptr %i.bs, align 8, !tbaa !19
  br label %cli_event_error_str.exit

bb.y:                                             ; preds = %bb.r
  %i.cl = call i32 @gettimeofday(ptr noundef nonnull %3, ptr noundef null) #13 ; 0 uses
  %i.cm = load i64, ptr %3, align 8, !tbaa !22
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !23
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.i.ph, i64 8 ; 3 uses
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !18
  %.neg = mul i64 %i.cm, -1000000
  %.neg30 = sub i64 %.neg, %i.co
  %i.cr = add i64 %.neg30, %i.cq                  ; 2 uses
  store i64 %i.cr, ptr %i.cp, align 8, !tbaa !18
  %i.cs = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !18
  %i.cu = add i64 %i.ct, %i.cr
  store i64 %i.cu, ptr %i.cp, align 8, !tbaa !18
  %i.cv = getelementptr inbounds nuw i8, ptr %.0.i.ph, i64 16 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !19
  %i.cx = add i32 %i.cw, 1
  store i32 %i.cx, ptr %i.cv, align 8, !tbaa !19
  br label %cli_event_error_str.exit

cli_event_error_str.exit:                         ; preds = %bb.o, %bb.n, %bb.l, %bb.k, %bb.p, %bb.a, %bb.x, %bb.w, %bb.v, %bb.t, %bb.s, %get_event.exit21, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret void
}

; Function Attrs: nounwind uwtable
define void @cli_event_time_stop(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %2 = alloca %struct.timeval, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %cli_event_error_str.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !14
  %.not8.i = icmp ult i32 %1, %i.b
  br i1 %.not8.i, label %get_event.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.18) #13
  %i.c = getelementptr i8, ptr %0, i64 29
  %trunc.i.i.i = load i8, ptr %i.c, align 1
  switch i8 %trunc.i.i.i, label %cli_event_error_str.exit [
    i8 0, label %bb.d
    i8 1, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @.str.18, ptr %i.d, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !19
  %i.g = add i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8, !tbaa !19
  br label %cli_event_error_str.exit

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !19
  %i.j = shl i32 %i.i, 3
  %i.k = add i32 %i.j, 8                          ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !18
  %i.n = zext i32 %i.k to i64                     ; 2 uses
  %i.o = tail call ptr @cli_safer_realloc(ptr noundef %i.m, i64 noundef %i.n) #13 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !16
  %i.r = add i64 %i.q, %i.n
  store i64 %i.r, ptr %i.p, align 8, !tbaa !16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !17
  %i.u = add i32 %i.t, 1
  store i32 %i.u, ptr %i.s, align 4, !tbaa !17
  %.not6.i.i.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not6.i.i.i.i.i, label %cli_event_error_str.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.1, i32 noundef %i.k) #13
  br label %cli_event_error_str.exit

bb.h:                                             ; preds = %bb.e
  store ptr %i.o, ptr %i.l, align 8, !tbaa !18
  %i.v = load i32, ptr %i.h, align 8, !tbaa !19
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.w
  store i64 ptrtoint (ptr @.str.18 to i64), ptr %i.x, align 8, !tbaa !18
  %i.y = load i32, ptr %i.h, align 8, !tbaa !19
  %i.z = add i32 %i.y, 1
  store i32 %i.z, ptr %i.h, align 8, !tbaa !19
  br label %cli_event_error_str.exit

get_event.exit:                                   ; preds = %bb.b
  %i.aa = load ptr, ptr %0, align 8, !tbaa !15    ; 2 uses
  %i.ab = zext i32 %1 to i64
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %i.ab ; 2 uses
  %.not = icmp eq ptr %i.aa, null
  br i1 %.not, label %cli_event_error_str.exit, label %bb.i

bb.i:                                             ; preds = %get_event.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 20
  %i.ae = load i16, ptr %i.ad, align 4
  %i.af = and i16 %i.ae, 255
  %.not5 = icmp eq i16 %i.af, 5
  br i1 %.not5, label %bb.p, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7) #13
  %i.ag = getelementptr i8, ptr %0, i64 29
  %trunc.i.i = load i8, ptr %i.ag, align 1
  switch i8 %trunc.i.i, label %cli_event_error_str.exit [
    i8 0, label %bb.k
    i8 1, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @.str.7, ptr %i.ah, align 8, !tbaa !18
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !19
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ai, align 8, !tbaa !19
  br label %cli_event_error_str.exit

bb.l:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !19
  %i.an = shl i32 %i.am, 3
  %i.ao = add i32 %i.an, 8                        ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !18
  %i.ar = zext i32 %i.ao to i64                   ; 2 uses
  %i.as = tail call ptr @cli_safer_realloc(ptr noundef %i.aq, i64 noundef %i.ar) #13 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !16
  %i.av = add i64 %i.au, %i.ar
  store i64 %i.av, ptr %i.at, align 8, !tbaa !16
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !17
  %i.ay = add i32 %i.ax, 1
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !17
  %.not6.i.i.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not6.i.i.i.i, label %cli_event_error_str.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.1, i32 noundef %i.ao) #13
  br label %cli_event_error_str.exit

bb.o:                                             ; preds = %bb.l
  store ptr %i.as, ptr %i.ap, align 8, !tbaa !18
  %i.az = load i32, ptr %i.al, align 8, !tbaa !19
  %i.ba = zext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.ba
  store i64 ptrtoint (ptr @.str.7 to i64), ptr %i.bb, align 8, !tbaa !18
  %i.bc = load i32, ptr %i.al, align 8, !tbaa !19
  %i.bd = add i32 %i.bc, 1
  store i32 %i.bd, ptr %i.al, align 8, !tbaa !19
  br label %cli_event_error_str.exit

bb.p:                                             ; preds = %bb.i
  %i.be = call i32 @gettimeofday(ptr noundef nonnull %2, ptr noundef null) #13 ; 0 uses
  %i.bf = load i64, ptr %2, align 8, !tbaa !22
  %i.bg = mul nsw i64 %i.bf, 1000000
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !23
  %i.bj = add nsw i64 %i.bg, %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !18
  %i.bm = add i64 %i.bj, %i.bl
  store i64 %i.bm, ptr %i.bk, align 8, !tbaa !18
  br label %cli_event_error_str.exit

cli_event_error_str.exit:                         ; preds = %bb.h, %bb.g, %bb.f, %bb.d, %bb.c, %bb.a, %bb.o, %bb.n, %bb.m, %bb.k, %bb.j, %get_event.exit, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret void
}

; Function Attrs: nounwind uwtable
define void @cli_event_time_nested_stop(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %3 = alloca %struct.timeval, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %cli_event_error_str.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !14
  %.not8.i = icmp ult i32 %1, %i.b
  br i1 %.not8.i, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.18) #13
  %i.c = getelementptr i8, ptr %0, i64 29
  %trunc.i.i.i = load i8, ptr %i.c, align 1
  switch i8 %trunc.i.i.i, label %bb.j [
    i8 0, label %bb.d
    i8 1, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @.str.18, ptr %i.d, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !19
  %i.g = add i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8, !tbaa !19
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !19
  %i.j = shl i32 %i.i, 3
  %i.k = add i32 %i.j, 8                          ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !18
  %i.n = zext i32 %i.k to i64                     ; 2 uses
  %i.o = tail call ptr @cli_safer_realloc(ptr noundef %i.m, i64 noundef %i.n) #13 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !16
  %i.r = add i64 %i.q, %i.n
  store i64 %i.r, ptr %i.p, align 8, !tbaa !16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !17
  %i.u = add i32 %i.t, 1
  store i32 %i.u, ptr %i.s, align 4, !tbaa !17
  %.not6.i.i.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not6.i.i.i.i.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.1, i32 noundef %i.k) #13
  br label %bb.j

bb.h:                                             ; preds = %bb.e
  store ptr %i.o, ptr %i.l, align 8, !tbaa !18
  %i.v = load i32, ptr %i.h, align 8, !tbaa !19
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.w
  store i64 ptrtoint (ptr @.str.18 to i64), ptr %i.x, align 8, !tbaa !18
  %i.y = load i32, ptr %i.h, align 8, !tbaa !19
  %i.z = add i32 %i.y, 1
  store i32 %i.z, ptr %i.h, align 8, !tbaa !19
  br label %bb.j

bb.i:                                             ; preds = %bb.b
  %i.aa = load ptr, ptr %0, align 8, !tbaa !15
  %i.ab = zext i32 %1 to i64
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %i.ab
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.d, %bb.f, %bb.g, %bb.h, %bb.i
  %.0.i.ph = phi ptr [ null, %bb.h ], [ null, %bb.g ], [ null, %bb.f ], [ null, %bb.d ], [ null, %bb.c ], [ %i.ac, %bb.i ] ; 3 uses
  %i.ad = load i32, ptr %i.a, align 8, !tbaa !14
  %.not8.i15 = icmp ult i32 %2, %i.ad
  br i1 %.not8.i15, label %get_event.exit20, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.18) #13
  %i.ae = getelementptr i8, ptr %0, i64 29
  %trunc.i.i.i16 = load i8, ptr %i.ae, align 1
  switch i8 %trunc.i.i.i16, label %cli_event_error_str.exit [
    i8 0, label %bb.l
    i8 1, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @.str.18, ptr %i.af, align 8, !tbaa !18
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !19
  %i.ai = add i32 %i.ah, 1
  store i32 %i.ai, ptr %i.ag, align 8, !tbaa !19
  br label %cli_event_error_str.exit

bb.m:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !19
  %i.al = shl i32 %i.ak, 3
  %i.am = add i32 %i.al, 8                        ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !18
  %i.ap = zext i32 %i.am to i64                   ; 2 uses
  %i.aq = tail call ptr @cli_safer_realloc(ptr noundef %i.ao, i64 noundef %i.ap) #13 ; 3 uses
  %.not.i.i.i.i17 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i17, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !16
  %i.at = add i64 %i.as, %i.ap
  store i64 %i.at, ptr %i.ar, align 8, !tbaa !16
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !17
  %i.aw = add i32 %i.av, 1
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !17
  %.not6.i.i.i.i.i19 = icmp eq i32 %i.am, 0
  br i1 %.not6.i.i.i.i.i19, label %cli_event_error_str.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.1, i32 noundef %i.am) #13
  br label %cli_event_error_str.exit

bb.p:                                             ; preds = %bb.m
  store ptr %i.aq, ptr %i.an, align 8, !tbaa !18
  %i.ax = load i32, ptr %i.aj, align 8, !tbaa !19
  %i.ay = zext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ay
  store i64 ptrtoint (ptr @.str.18 to i64), ptr %i.az, align 8, !tbaa !18
  %i.ba = load i32, ptr %i.aj, align 8, !tbaa !19
  %i.bb = add i32 %i.ba, 1
  store i32 %i.bb, ptr %i.aj, align 8, !tbaa !19
  br label %cli_event_error_str.exit

get_event.exit20:                                 ; preds = %bb.j
  %i.bc = load ptr, ptr %0, align 8, !tbaa !15    ; 2 uses
  %i.bd = zext i32 %2 to i64
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.bc, i64 %i.bd ; 2 uses
  %i.bf = icmp ne ptr %.0.i.ph, null
  %i.bg = icmp ne ptr %i.bc, null
  %or.cond = select i1 %i.bf, i1 %i.bg, i1 false
  br i1 %or.cond, label %bb.q, label %cli_event_error_str.exit

bb.q:                                             ; preds = %get_event.exit20
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.i.ph, i64 20
  %i.bi = load i16, ptr %i.bh, align 4
  %i.bj = and i16 %i.bi, 255
  %.not = icmp eq i16 %i.bj, 5
  br i1 %.not, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 20
  %i.bl = load i16, ptr %i.bk, align 4
  %i.bm = and i16 %i.bl, 255
  %.not13 = icmp eq i16 %i.bm, 5
  br i1 %.not13, label %bb.y, label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  tail call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7) #13
  %i.bn = getelementptr i8, ptr %0, i64 29
  %trunc.i.i = load i8, ptr %i.bn, align 1
  switch i8 %trunc.i.i, label %cli_event_error_str.exit [
    i8 0, label %bb.t
    i8 1, label %bb.u
  ]

bb.t:                                             ; preds = %bb.s
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @.str.7, ptr %i.bo, align 8, !tbaa !18
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !19
  %i.br = add i32 %i.bq, 1
  store i32 %i.br, ptr %i.bp, align 8, !tbaa !19
  br label %cli_event_error_str.exit

bb.u:                                             ; preds = %bb.s
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !19
  %i.bu = shl i32 %i.bt, 3
  %i.bv = add i32 %i.bu, 8                        ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !18
  %i.by = zext i32 %i.bv to i64                   ; 2 uses
  %i.bz = tail call ptr @cli_safer_realloc(ptr noundef %i.bx, i64 noundef %i.by) #13 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !16
  %i.cc = add i64 %i.cb, %i.by
  store i64 %i.cc, ptr %i.ca, align 8, !tbaa !16
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !17
  %i.cf = add i32 %i.ce, 1
  store i32 %i.cf, ptr %i.cd, align 4, !tbaa !17
  %.not6.i.i.i.i = icmp eq i32 %i.bv, 0
  br i1 %.not6.i.i.i.i, label %cli_event_error_str.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.1, i32 noundef %i.bv) #13
  br label %cli_event_error_str.exit

bb.x:                                             ; preds = %bb.u
  store ptr %i.bz, ptr %i.bw, align 8, !tbaa !18
  %i.cg = load i32, ptr %i.bs, align 8, !tbaa !19
  %i.ch = zext i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.ch
  store i64 ptrtoint (ptr @.str.7 to i64), ptr %i.ci, align 8, !tbaa !18
  %i.cj = load i32, ptr %i.bs, align 8, !tbaa !19
  %i.ck = add i32 %i.cj, 1
  store i32 %i.ck, ptr %i.bs, align 8, !tbaa !19
  br label %cli_event_error_str.exit

bb.y:                                             ; preds = %bb.r
  %i.cl = call i32 @gettimeofday(ptr noundef nonnull %3, ptr noundef null) #13 ; 0 uses
  %i.cm = load i64, ptr %3, align 8, !tbaa !22
  %i.cn = mul nsw i64 %i.cm, 1000000
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !23
  %i.cq = add nsw i64 %i.cn, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %.0.i.ph, i64 8 ; 3 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !18
  %i.ct = add i64 %i.cq, %i.cs                    ; 2 uses
  store i64 %i.ct, ptr %i.cr, align 8, !tbaa !18
  %i.cu = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !18
  %i.cw = sub i64 %i.ct, %i.cv
  store i64 %i.cw, ptr %i.cr, align 8, !tbaa !18
  br label %cli_event_error_str.exit

cli_event_error_str.exit:                         ; preds = %bb.o, %bb.n, %bb.l, %bb.k, %bb.p, %bb.a, %bb.x, %bb.w, %bb.v, %bb.t, %bb.s, %get_event.exit20, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret void
}

declare void @cli_warnmsg(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define void @cli_event_string(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #5 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %cli_event_error_str.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !14
  %.not8.i = icmp ult i32 %1, %i.b
  br i1 %.not8.i, label %get_event.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.18) #13
  %i.c = getelementptr i8, ptr %0, i64 29
  %trunc.i.i.i = load i8, ptr %i.c, align 1
  switch i8 %trunc.i.i.i, label %cli_event_error_str.exit [
    i8 0, label %bb.d
    i8 1, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @.str.18, ptr %i.d, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !19
  %i.g = add i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8, !tbaa !19
  br label %cli_event_error_str.exit

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !19
  %i.j = shl i32 %i.i, 3
  %i.k = add i32 %i.j, 8                          ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !18
  %i.n = zext i32 %i.k to i64                     ; 2 uses
  %i.o = tail call ptr @cli_safer_realloc(ptr noundef %i.m, i64 noundef %i.n) #13 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !16
  %i.r = add i64 %i.q, %i.n
  store i64 %i.r, ptr %i.p, align 8, !tbaa !16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !17
  %i.u = add i32 %i.t, 1
  store i32 %i.u, ptr %i.s, align 4, !tbaa !17
  %.not6.i.i.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not6.i.i.i.i.i, label %cli_event_error_str.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.1, i32 noundef %i.k) #13
  br label %cli_event_error_str.exit

bb.h:                                             ; preds = %bb.e
  store ptr %i.o, ptr %i.l, align 8, !tbaa !18
  %i.v = load i32, ptr %i.h, align 8, !tbaa !19
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.w
  store i64 ptrtoint (ptr @.str.18 to i64), ptr %i.x, align 8, !tbaa !18
  %i.y = load i32, ptr %i.h, align 8, !tbaa !19
  %i.z = add i32 %i.y, 1
  store i32 %i.z, ptr %i.h, align 8, !tbaa !19
  br label %cli_event_error_str.exit

get_event.exit:                                   ; preds = %bb.b
  %i.aa = load ptr, ptr %0, align 8, !tbaa !15    ; 2 uses
  %i.ab = zext i32 %1 to i64
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %i.ab ; 5 uses
  %.not = icmp eq ptr %i.aa, null
  br i1 %.not, label %cli_event_error_str.exit, label %bb.i

bb.i:                                             ; preds = %get_event.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 20
  %i.ae = load i16, ptr %i.ad, align 4            ; 2 uses
  %i.af = and i16 %i.ae, 255
  %.not7 = icmp eq i16 %i.af, 1
  br i1 %.not7, label %bb.p, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #13
  %i.ag = getelementptr i8, ptr %0, i64 29
  %trunc.i.i = load i8, ptr %i.ag, align 1
  switch i8 %trunc.i.i, label %cli_event_error_str.exit [
    i8 0, label %bb.k
    i8 1, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @.str.9, ptr %i.ah, align 8, !tbaa !18
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !19
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ai, align 8, !tbaa !19
  br label %cli_event_error_str.exit

bb.l:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !19
  %i.an = shl i32 %i.am, 3
  %i.ao = add i32 %i.an, 8                        ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !18
  %i.ar = zext i32 %i.ao to i64                   ; 2 uses
  %i.as = tail call ptr @cli_safer_realloc(ptr noundef %i.aq, i64 noundef %i.ar) #13 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !16
  %i.av = add i64 %i.au, %i.ar
  store i64 %i.av, ptr %i.at, align 8, !tbaa !16
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !17
  %i.ay = add i32 %i.ax, 1
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !17
  %.not6.i.i.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not6.i.i.i.i, label %cli_event_error_str.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.1, i32 noundef %i.ao) #13
  br label %cli_event_error_str.exit

bb.o:                                             ; preds = %bb.l
  store ptr %i.as, ptr %i.ap, align 8, !tbaa !18
  %i.az = load i32, ptr %i.al, align 8, !tbaa !19
  %i.ba = zext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.ba
  store i64 ptrtoint (ptr @.str.9 to i64), ptr %i.bb, align 8, !tbaa !18
  %i.bc = load i32, ptr %i.al, align 8, !tbaa !19
  %i.bd = add i32 %i.bc, 1
  store i32 %i.bd, ptr %i.al, align 8, !tbaa !19
  br label %cli_event_error_str.exit

bb.p:                                             ; preds = %bb.i
  %3 = lshr i16 %i.ae, 8
  %4 = trunc nuw i16 %3 to i8
  %.not.i9 = icmp eq ptr %2, null
  %spec.store.select.i = select i1 %.not.i9, ptr @.str.19, ptr %2 ; 2 uses
  switch i8 %4, label %cli_event_error_str.exit [
    i8 0, label %bb.q
    i8 1, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  %i.be = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %spec.store.select.i, ptr %i.be, align 8, !tbaa !18
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !19
  %i.bh = add i32 %i.bg, 1
  store i32 %i.bh, ptr %i.bf, align 8, !tbaa !19
  br label %cli_event_error_str.exit

bb.r:                                             ; preds = %bb.p
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 4 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !19
  %i.bk = shl i32 %i.bj, 3
  %i.bl = add i32 %i.bk, 8                        ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !18
  %i.bo = zext i32 %i.bl to i64                   ; 2 uses
  %i.bp = tail call ptr @cli_safer_realloc(ptr noundef %i.bn, i64 noundef %i.bo) #13 ; 3 uses
  %.not.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !16
  %i.bs = add i64 %i.br, %i.bo
  store i64 %i.bs, ptr %i.bq, align 8, !tbaa !16
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !17
  %i.bv = add i32 %i.bu, 1
  store i32 %i.bv, ptr %i.bt, align 4, !tbaa !17
  %.not6.i.i.i = icmp eq i32 %i.bl, 0
  br i1 %.not6.i.i.i, label %cli_event_error_str.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.1, i32 noundef %i.bl) #13
  br label %cli_event_error_str.exit

bb.u:                                             ; preds = %bb.r
  %i.bw = ptrtoint ptr %spec.store.select.i to i64
  store ptr %i.bp, ptr %i.bm, align 8, !tbaa !18
  %i.bx = load i32, ptr %i.bi, align 8, !tbaa !19
  %i.by = zext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.by
  store i64 %i.bw, ptr %i.bz, align 8, !tbaa !18
  %i.ca = load i32, ptr %i.bi, align 8, !tbaa !19
  %i.cb = add i32 %i.ca, 1
  store i32 %i.cb, ptr %i.bi, align 8, !tbaa !19
  br label %cli_event_error_str.exit

cli_event_error_str.exit:                         ; preds = %bb.h, %bb.g, %bb.f, %bb.d, %bb.c, %bb.a, %bb.u, %bb.t, %bb.s, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.k, %bb.j, %get_event.exit
  ret void
}

; Function Attrs: nounwind uwtable
define void @cli_event_data(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #5 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %cli_event_error_str.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !14
  %.not8.i = icmp ult i32 %1, %i.b
  br i1 %.not8.i, label %get_event.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.18) #13
  %i.c = getelementptr i8, ptr %0, i64 29
  %trunc.i.i.i = load i8, ptr %i.c, align 1
  switch i8 %trunc.i.i.i, label %cli_event_error_str.exit [
    i8 0, label %bb.d
    i8 1, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @.str.18, ptr %i.d, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !19
  %i.g = add i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8, !tbaa !19
  br label %cli_event_error_str.exit

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !19
  %i.j = shl i32 %i.i, 3
  %i.k = add i32 %i.j, 8                          ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !18
  %i.n = zext i32 %i.k to i64                     ; 2 uses
  %i.o = tail call ptr @cli_safer_realloc(ptr noundef %i.m, i64 noundef %i.n) #13 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !16
  %i.r = add i64 %i.q, %i.n
  store i64 %i.r, ptr %i.p, align 8, !tbaa !16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !17
  %i.u = add i32 %i.t, 1
  store i32 %i.u, ptr %i.s, align 4, !tbaa !17
  %.not6.i.i.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not6.i.i.i.i.i, label %cli_event_error_str.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.1, i32 noundef %i.k) #13
  br label %cli_event_error_str.exit

bb.h:                                             ; preds = %bb.e
  store ptr %i.o, ptr %i.l, align 8, !tbaa !18
  %i.v = load i32, ptr %i.h, align 8, !tbaa !19
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.w
  store i64 ptrtoint (ptr @.str.18 to i64), ptr %i.x, align 8, !tbaa !18
  %i.y = load i32, ptr %i.h, align 8, !tbaa !19
  %i.z = add i32 %i.y, 1
  store i32 %i.z, ptr %i.h, align 8, !tbaa !19
  br label %cli_event_error_str.exit

get_event.exit:                                   ; preds = %bb.b
  %i.aa = load ptr, ptr %0, align 8, !tbaa !15    ; 2 uses
  %i.ab = zext i32 %1 to i64
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %i.ab ; 5 uses
  %.not = icmp eq ptr %i.aa, null
  br i1 %.not, label %cli_event_error_str.exit, label %bb.i

bb.i:                                             ; preds = %get_event.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 20
  %i.ae = load i16, ptr %i.ad, align 4            ; 2 uses
  %i.af = and i16 %i.ae, 255
  %.not34 = icmp eq i16 %i.af, 2
  br i1 %.not34, label %bb.p, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.10) #13
  %i.ag = getelementptr i8, ptr %0, i64 29
  %trunc.i.i = load i8, ptr %i.ag, align 1
  switch i8 %trunc.i.i, label %cli_event_error_str.exit [
    i8 0, label %bb.k
    i8 1, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @.str.10, ptr %i.ah, align 8, !tbaa !18
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !19
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ai, align 8, !tbaa !19
  br label %cli_event_error_str.exit

bb.l:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !19
  %i.an = shl i32 %i.am, 3
  %i.ao = add i32 %i.an, 8                        ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !18
  %i.ar = zext i32 %i.ao to i64                   ; 2 uses
  %i.as = tail call ptr @cli_safer_realloc(ptr noundef %i.aq, i64 noundef %i.ar) #13 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !16
  %i.av = add i64 %i.au, %i.ar
  store i64 %i.av, ptr %i.at, align 8, !tbaa !16
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !17
  %i.ay = add i32 %i.ax, 1
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !17
  %.not6.i.i.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not6.i.i.i.i, label %cli_event_error_str.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.1, i32 noundef %i.ao) #13
  br label %cli_event_error_str.exit

bb.o:                                             ; preds = %bb.l
  store ptr %i.as, ptr %i.ap, align 8, !tbaa !18
  %i.az = load i32, ptr %i.al, align 8, !tbaa !19
  %i.ba = zext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.ba
  store i64 ptrtoint (ptr @.str.10 to i64), ptr %i.bb, align 8, !tbaa !18
  %i.bc = load i32, ptr %i.al, align 8, !tbaa !19
  %i.bd = add i32 %i.bc, 1
  store i32 %i.bd, ptr %i.al, align 8, !tbaa !19
  br label %cli_event_error_str.exit

bb.p:                                             ; preds = %bb.i
  %i.be = lshr i16 %i.ae, 8
  %trunc = trunc nuw i16 %i.be to i8
  switch i8 %trunc, label %cli_event_error_str.exit [
    i8 0, label %bb.q
    i8 3, label %bb.u
  ]

bb.q:                                             ; preds = %bb.p
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !18
  %i.bh = zext i32 %3 to i64                      ; 3 uses
  %i.bi = tail call ptr @cli_safer_realloc_or_free(ptr noundef %i.bg, i64 noundef %i.bh) #13 ; 3 uses
  %.not36 = icmp eq ptr %i.bi, null
  br i1 %.not36, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store ptr %i.bi, ptr %i.bf, align 8, !tbaa !18
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bi, ptr align 1 %2, i64 %i.bh, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i32 %3, ptr %i.bj, align 8, !tbaa !19
  br label %cli_event_error_str.exit

bb.s:                                             ; preds = %bb.q
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !16
  %i.bm = add i64 %i.bl, %i.bh
  store i64 %i.bm, ptr %i.bk, align 8, !tbaa !16
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !17
  %i.bp = add i32 %i.bo, 1
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !17
  %.not6.i = icmp eq i32 %3, 0
  br i1 %.not6.i, label %cli_event_error_str.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.1, i32 noundef %3) #13
  br label %cli_event_error_str.exit

bb.u:                                             ; preds = %bb.p
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !18
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 5 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !19
  %i.bu = add i32 %i.bt, %3
  %i.bv = zext i32 %i.bu to i64
  %i.bw = tail call ptr @cli_safer_realloc_or_free(ptr noundef %i.br, i64 noundef %i.bv) #13 ; 3 uses
  %.not35 = icmp eq ptr %i.bw, null
  br i1 %.not35, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store ptr %i.bw, ptr %i.bq, align 8, !tbaa !18
  %i.bx = load i32, ptr %i.bs, align 8, !tbaa !19
  %i.by = zext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.by
  %i.ca = zext i32 %3 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bz, ptr align 1 %2, i64 %i.ca, i1 false)
  %i.cb = load i32, ptr %i.bs, align 8, !tbaa !19
  %i.cc = add i32 %i.cb, %3
  store i32 %i.cc, ptr %i.bs, align 8, !tbaa !19
  br label %cli_event_error_str.exit

bb.w:                                             ; preds = %bb.u
  %i.cd = load i32, ptr %i.bs, align 8, !tbaa !19
  %i.ce = add i32 %i.cd, %3                       ; 3 uses
  %i.cf = zext i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !16
  %i.ci = add i64 %i.ch, %i.cf
  store i64 %i.ci, ptr %i.cg, align 8, !tbaa !16
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !17
  %i.cl = add i32 %i.ck, 1
  store i32 %i.cl, ptr %i.cj, align 4, !tbaa !17
  %.not6.i40 = icmp eq i32 %i.ce, 0
  br i1 %.not6.i40, label %cli_event_error_str.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.1, i32 noundef %i.ce) #13
  br label %cli_event_error_str.exit

cli_event_error_str.exit:                         ; preds = %bb.h, %bb.g, %bb.f, %bb.d, %bb.c, %bb.a, %bb.x, %bb.w, %bb.t, %bb.s, %bb.o, %bb.n, %bb.m, %bb.k, %bb.j, %bb.p, %bb.r, %bb.v, %get_event.exit
  ret void
}

declare ptr @cli_safer_realloc_or_free(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define void @cli_event_fastdata(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #5 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %cli_event_error_str.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !14
  %.not8.i = icmp ult i32 %1, %i.b
  br i1 %.not8.i, label %get_event.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.18) #13
  %i.c = getelementptr i8, ptr %0, i64 29
  %trunc.i.i.i = load i8, ptr %i.c, align 1
  switch i8 %trunc.i.i.i, label %cli_event_error_str.exit [
    i8 0, label %bb.d
    i8 1, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @.str.18, ptr %i.d, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !19
  %i.g = add i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8, !tbaa !19
  br label %cli_event_error_str.exit

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !19
  %i.j = shl i32 %i.i, 3
  %i.k = add i32 %i.j, 8                          ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !18
  %i.n = zext i32 %i.k to i64                     ; 2 uses
  %i.o = tail call ptr @cli_safer_realloc(ptr noundef %i.m, i64 noundef %i.n) #13 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !16
  %i.r = add i64 %i.q, %i.n
  store i64 %i.r, ptr %i.p, align 8, !tbaa !16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !17
  %i.u = add i32 %i.t, 1
  store i32 %i.u, ptr %i.s, align 4, !tbaa !17
  %.not6.i.i.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not6.i.i.i.i.i, label %cli_event_error_str.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.1, i32 noundef %i.k) #13
  br label %cli_event_error_str.exit

bb.h:                                             ; preds = %bb.e
  store ptr %i.o, ptr %i.l, align 8, !tbaa !18
  %i.v = load i32, ptr %i.h, align 8, !tbaa !19
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.w
  store i64 ptrtoint (ptr @.str.18 to i64), ptr %i.x, align 8, !tbaa !18
  %i.y = load i32, ptr %i.h, align 8, !tbaa !19
  %i.z = add i32 %i.y, 1
  store i32 %i.z, ptr %i.h, align 8, !tbaa !19
  br label %cli_event_error_str.exit

get_event.exit:                                   ; preds = %bb.b
  %i.aa = load ptr, ptr %0, align 8, !tbaa !15    ; 2 uses
  %i.ab = zext i32 %1 to i64
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %i.ab ; 3 uses
  %.not = icmp eq ptr %i.aa, null
  br i1 %.not, label %cli_event_error_str.exit, label %bb.i

bb.i:                                             ; preds = %get_event.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 20
  %i.ae = load i16, ptr %i.ad, align 4
  %i.af = and i16 %i.ae, 255
  %.not10 = icmp eq i16 %i.af, 3
  br i1 %.not10, label %bb.p, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.11) #13
  %i.ag = getelementptr i8, ptr %0, i64 29
  %trunc.i.i = load i8, ptr %i.ag, align 1
  switch i8 %trunc.i.i, label %cli_event_error_str.exit [
    i8 0, label %bb.k
    i8 1, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @.str.11, ptr %i.ah, align 8, !tbaa !18
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !19
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ai, align 8, !tbaa !19
  br label %cli_event_error_str.exit

bb.l:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !19
  %i.an = shl i32 %i.am, 3
  %i.ao = add i32 %i.an, 8                        ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !18
  %i.ar = zext i32 %i.ao to i64                   ; 2 uses
  %i.as = tail call ptr @cli_safer_realloc(ptr noundef %i.aq, i64 noundef %i.ar) #13 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !16
  %i.av = add i64 %i.au, %i.ar
  store i64 %i.av, ptr %i.at, align 8, !tbaa !16
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !17
  %i.ay = add i32 %i.ax, 1
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !17
  %.not6.i.i.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not6.i.i.i.i, label %cli_event_error_str.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.1, i32 noundef %i.ao) #13
  br label %cli_event_error_str.exit

bb.o:                                             ; preds = %bb.l
  store ptr %i.as, ptr %i.ap, align 8, !tbaa !18
  %i.az = load i32, ptr %i.al, align 8, !tbaa !19
  %i.ba = zext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.ba
  store i64 ptrtoint (ptr @.str.11 to i64), ptr %i.bb, align 8, !tbaa !18
  %i.bc = load i32, ptr %i.al, align 8, !tbaa !19
  %i.bd = add i32 %i.bc, 1
  store i32 %i.bd, ptr %i.al, align 8, !tbaa !19
  br label %cli_event_error_str.exit

bb.p:                                             ; preds = %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !18
  %i.bg = trunc i64 %i.bf to i32
  %i.bh = zext i32 %3 to i64
  %i.bi = tail call i32 @CrcUpdate(i32 noundef %i.bg, ptr noundef %2, i64 noundef %i.bh) #13
  %i.bj = zext i32 %i.bi to i64
  store i64 %i.bj, ptr %i.be, align 8, !tbaa !18
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !19
  %i.bm = add i32 %i.bl, %3
  store i32 %i.bm, ptr %i.bk, align 8, !tbaa !19
  br label %cli_event_error_str.exit

cli_event_error_str.exit:                         ; preds = %bb.h, %bb.g, %bb.f, %bb.d, %bb.c, %bb.a, %bb.o, %bb.n, %bb.m, %bb.k, %bb.j, %get_event.exit, %bb.p
  ret void
}

declare i32 @CrcUpdate(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define void @cli_event_count(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  tail call void @cli_event_int(ptr noundef %0, i32 noundef %1, i64 noundef 1)
  ret void
}

; Function Attrs: nounwind uwtable
define void @cli_event_get(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #5 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %get_event.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !14
  %.not8.i = icmp ult i32 %1, %i.b
  br i1 %.not8.i, label %get_event.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.18) #13
  %i.c = getelementptr i8, ptr %0, i64 29
  %trunc.i.i.i = load i8, ptr %i.c, align 1
  switch i8 %trunc.i.i.i, label %get_event.exit.thread [
    i8 0, label %bb.d
    i8 1, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @.str.18, ptr %i.d, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !19
  %i.g = add i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8, !tbaa !19
  br label %get_event.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !19
  %i.j = shl i32 %i.i, 3
  %i.k = add i32 %i.j, 8                          ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !18
  %i.n = zext i32 %i.k to i64                     ; 2 uses
  %i.o = tail call ptr @cli_safer_realloc(ptr noundef %i.m, i64 noundef %i.n) #13 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !16
  %i.r = add i64 %i.q, %i.n
  store i64 %i.r, ptr %i.p, align 8, !tbaa !16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !17
  %i.u = add i32 %i.t, 1
  store i32 %i.u, ptr %i.s, align 4, !tbaa !17
  %.not6.i.i.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not6.i.i.i.i.i, label %get_event.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.1, i32 noundef %i.k) #13
  br label %get_event.exit.thread

bb.h:                                             ; preds = %bb.e
  store ptr %i.o, ptr %i.l, align 8, !tbaa !18
  %i.v = load i32, ptr %i.h, align 8, !tbaa !19
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.w
  store i64 ptrtoint (ptr @.str.18 to i64), ptr %i.x, align 8, !tbaa !18
  %i.y = load i32, ptr %i.h, align 8, !tbaa !19
  %i.z = add i32 %i.y, 1
  store i32 %i.z, ptr %i.h, align 8, !tbaa !19
  br label %get_event.exit.thread

get_event.exit:                                   ; preds = %bb.b
  %i.aa = load ptr, ptr %0, align 8, !tbaa !15    ; 2 uses
  %.not = icmp eq ptr %i.aa, null
  br i1 %.not, label %get_event.exit.thread, label %bb.i

bb.i:                                             ; preds = %get_event.exit
  %i.ab = zext i32 %1 to i64
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %i.ab ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i64, ptr %i.ad, align 8
  store i64 %i.ae, ptr %2, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !19
  store i32 %i.ag, ptr %3, align 4, !tbaa !25
  br label %get_event.exit.thread

get_event.exit.thread:                            ; preds = %bb.h, %bb.g, %bb.f, %bb.d, %bb.c, %bb.a, %get_event.exit, %bb.i
  ret void
}

; Function Attrs: nounwind uwtable
define void @cli_event_debug(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %get_event.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !14
  %.not8.i = icmp ult i32 %1, %i.b
  br i1 %.not8.i, label %get_event.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.18) #13
  %i.c = getelementptr i8, ptr %0, i64 29
  %trunc.i.i.i = load i8, ptr %i.c, align 1
  switch i8 %trunc.i.i.i, label %get_event.exit.thread [
    i8 0, label %bb.d
    i8 1, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @.str.18, ptr %i.d, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !19
  %i.g = add i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8, !tbaa !19
  br label %get_event.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !19
  %i.j = shl i32 %i.i, 3
  %i.k = add i32 %i.j, 8                          ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !18
  %i.n = zext i32 %i.k to i64                     ; 2 uses
  %i.o = tail call ptr @cli_safer_realloc(ptr noundef %i.m, i64 noundef %i.n) #13 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !16
  %i.r = add i64 %i.q, %i.n
  store i64 %i.r, ptr %i.p, align 8, !tbaa !16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !17
  %i.u = add i32 %i.t, 1
  store i32 %i.u, ptr %i.s, align 4, !tbaa !17
  %.not6.i.i.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not6.i.i.i.i.i, label %get_event.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.1, i32 noundef %i.k) #13
  br label %get_event.exit.thread

bb.h:                                             ; preds = %bb.e
  store ptr %i.o, ptr %i.l, align 8, !tbaa !18
  %i.v = load i32, ptr %i.h, align 8, !tbaa !19
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.w
  store i64 ptrtoint (ptr @.str.18 to i64), ptr %i.x, align 8, !tbaa !18
  %i.y = load i32, ptr %i.h, align 8, !tbaa !19
  %i.z = add i32 %i.y, 1
  store i32 %i.z, ptr %i.h, align 8, !tbaa !19
  br label %get_event.exit.thread

get_event.exit:                                   ; preds = %bb.b
  %i.aa = load ptr, ptr %0, align 8, !tbaa !15    ; 2 uses
  %i.ab = zext i32 %1 to i64
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %i.ab ; 6 uses
  %.not = icmp eq ptr %i.aa, null
  br i1 %.not, label %get_event.exit.thread, label %bb.i

bb.i:                                             ; preds = %get_event.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 20 ; 3 uses
  %i.ae = load i16, ptr %i.ad, align 4            ; 3 uses
  %i.af = and i16 %i.ae, 255
  %trunc.i = trunc i16 %i.ae to i8
  %switch.tableidx = add i8 %trunc.i, -1          ; 2 uses
  %i.ag = icmp ult i8 %switch.tableidx, 5
  br i1 %i.ag, label %switch.lookup, label %evtype.exit

switch.lookup:                                    ; preds = %bb.i
  %i.ah = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.cli_event_debug, i64 %i.ah
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %evtype.exit

evtype.exit:                                      ; preds = %bb.i, %switch.lookup
  %.0.i22 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.19, %bb.i ] ; 2 uses
  %.mask = and i16 %i.ae, -256
  %i.ai = icmp ne i16 %.mask, 256
  %.not21 = icmp eq i16 %i.af, 2
  %or.cond = or i1 %i.ai, %.not21
  %i.aj = load ptr, ptr %i.ac, align 8, !tbaa !20 ; 2 uses
  br i1 %or.cond, label %bb.l, label %bb.j

bb.j:                                             ; preds = %evtype.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !19
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.12, ptr noundef %i.aj, i32 noundef %i.al, ptr noundef nonnull %.0.i22) #13
  %i.am = load i32, ptr %i.ak, align 8, !tbaa !19
  %.not26 = icmp eq i32 %i.am, 0
  br i1 %.not26, label %get_event.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 3 uses
  %i.ao = load i16, ptr %i.ad, align 4
  %i.ap = and i16 %i.ao, 255
  %i.aq = zext nneg i16 %i.ap to i32
  %i.ar = load ptr, ptr %i.an, align 8, !tbaa !18
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv
  %i.at = trunc nuw i64 %indvars.iv to i32
  tail call fastcc void @ev_debug(i32 noundef %i.aq, ptr noundef %i.as, i32 noundef %i.at)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.au = load i32, ptr %i.ak, align 8, !tbaa !19
  %i.av = zext i32 %i.au to i64
  %i.aw = icmp samesign ult i64 %indvars.iv.next, %i.av
  br i1 %i.aw, label %bb.k, label %get_event.exit.thread

bb.l:                                             ; preds = %evtype.exit
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.13, ptr noundef %i.aj, ptr noundef nonnull %.0.i22) #13
  %i.ax = load i16, ptr %i.ad, align 4
  %i.ay = and i16 %i.ax, 255
  %i.az = zext nneg i16 %i.ay to i32
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !19
  tail call fastcc void @ev_debug(i32 noundef %i.az, ptr noundef nonnull %i.ba, i32 noundef %i.bc)
  br label %get_event.exit.thread

get_event.exit.thread:                            ; preds = %bb.k, %bb.j, %bb.h, %bb.g, %bb.f, %bb.d, %bb.c, %bb.a, %bb.l, %get_event.exit
  ret void
}

declare void @cli_dbgmsg(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @ev_debug(i32 noundef range(i32 0, 256) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #8 {
bb.a:
  %trunc = trunc nuw i32 %0 to i8
  switch i8 %trunc, label %bb.g [
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.d
    i8 4, label %bb.e
    i8 5, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !18
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.25, i32 noundef %2, ptr noundef %i.a) #13
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !18
  %i.c = tail call ptr @cli_str2hex(ptr noundef %i.b, i32 noundef %2) #13 ; 2 uses
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.26, i32 noundef %2) #13
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.27, ptr noundef %i.c) #13
  tail call void @free(ptr noundef %i.c) #13
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.d = load i64, ptr %1, align 8, !tbaa !18
  %i.e = trunc i64 %i.d to i32
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.28, i32 noundef %i.e, i32 noundef %2) #13
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.f = load i64, ptr %1, align 8, !tbaa !18
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.29, i32 noundef %2, i64 noundef %i.f) #13
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.g = load i64, ptr %1, align 8, !tbaa !18     ; 2 uses
  %i.h = udiv i64 %i.g, 1000000
  %i.i = trunc i64 %i.h to i32
  %i.j = urem i64 %i.g, 1000000
  %i.k = trunc nuw nsw i64 %i.j to i32
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.30, i32 noundef %2, i32 noundef %i.i, i32 noundef %i.k) #13
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @cli_event_debug_all(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %.not7 = icmp eq i32 %i.b, 0
  br i1 %.not7, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.c = phi i32 [ %i.i, %bb.c ], [ %i.b, %bb.a ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 0, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %indvars.iv
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !19
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = trunc nuw i64 %indvars.iv to i32
  tail call void @cli_event_debug(ptr noundef nonnull %0, i32 noundef %i.h)
  %.pre = load i32, ptr %i.a, align 8, !tbaa !14
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.i = phi i32 [ %i.c, %.lr.ph ], [ %.pre, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.j = zext i32 %i.i to i64
  %i.k = icmp samesign ult i64 %indvars.iv.next, %i.j
  br i1 %i.k, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @cli_event_diff(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %get_event.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !14
  %.not8.i = icmp ult i32 %2, %i.b
  br i1 %.not8.i, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.18) #13
  %i.c = getelementptr i8, ptr %0, i64 29
  %trunc.i.i.i = load i8, ptr %i.c, align 1
  switch i8 %trunc.i.i.i, label %get_event.exit [
    i8 0, label %bb.d
    i8 1, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @.str.18, ptr %i.d, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !19
  %i.g = add i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8, !tbaa !19
  br label %get_event.exit

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !19
  %i.j = shl i32 %i.i, 3
  %i.k = add i32 %i.j, 8                          ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !18
  %i.n = zext i32 %i.k to i64                     ; 2 uses
  %i.o = tail call ptr @cli_safer_realloc(ptr noundef %i.m, i64 noundef %i.n) #13 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !16
  %i.r = add i64 %i.q, %i.n
  store i64 %i.r, ptr %i.p, align 8, !tbaa !16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !17
  %i.u = add i32 %i.t, 1
  store i32 %i.u, ptr %i.s, align 4, !tbaa !17
  %.not6.i.i.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not6.i.i.i.i.i, label %get_event.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.1, i32 noundef %i.k) #13
  br label %get_event.exit

bb.h:                                             ; preds = %bb.e
  store ptr %i.o, ptr %i.l, align 8, !tbaa !18
  %i.v = load i32, ptr %i.h, align 8, !tbaa !19
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.w
  store i64 ptrtoint (ptr @.str.18 to i64), ptr %i.x, align 8, !tbaa !18
  %i.y = load i32, ptr %i.h, align 8, !tbaa !19
  %i.z = add i32 %i.y, 1
  store i32 %i.z, ptr %i.h, align 8, !tbaa !19
  br label %get_event.exit

bb.i:                                             ; preds = %bb.b
  %i.aa = load ptr, ptr %0, align 8, !tbaa !15
  %i.ab = zext i32 %2 to i64
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %i.ab
  br label %get_event.exit

get_event.exit:                                   ; preds = %bb.a, %bb.c, %bb.d, %bb.f, %bb.g, %bb.h, %bb.i
  %.0.i = phi ptr [ null, %bb.a ], [ %i.ac, %bb.i ], [ null, %bb.c ], [ null, %bb.d ], [ null, %bb.f ], [ null, %bb.g ], [ null, %bb.h ] ; 7 uses
  %.not.i76 = icmp eq ptr %1, null
  br i1 %.not.i76, label %get_event.exit82.thread, label %bb.j

bb.j:                                             ; preds = %get_event.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !14
  %.not8.i77 = icmp ult i32 %2, %i.ae
  br i1 %.not8.i77, label %get_event.exit82, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.18) #13
  %i.af = getelementptr i8, ptr %1, i64 29
  %trunc.i.i.i78 = load i8, ptr %i.af, align 1
  switch i8 %trunc.i.i.i78, label %get_event.exit82.thread [
    i8 0, label %bb.l
    i8 1, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr @.str.18, ptr %i.ag, align 8, !tbaa !18
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !19
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr %i.ah, align 8, !tbaa !19
  br label %get_event.exit82.thread

bb.m:                                             ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !19
  %i.am = shl i32 %i.al, 3
  %i.an = add i32 %i.am, 8                        ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !18
  %i.aq = zext i32 %i.an to i64                   ; 2 uses
  %i.ar = tail call ptr @cli_safer_realloc(ptr noundef %i.ap, i64 noundef %i.aq) #13 ; 3 uses
  %.not.i.i.i.i79 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i79, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !16
  %i.au = add i64 %i.at, %i.aq
  store i64 %i.au, ptr %i.as, align 8, !tbaa !16
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !17
  %i.ax = add i32 %i.aw, 1
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !17
  %.not6.i.i.i.i.i81 = icmp eq i32 %i.an, 0
  br i1 %.not6.i.i.i.i.i81, label %get_event.exit82.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.1, i32 noundef %i.an) #13
  br label %get_event.exit82.thread

bb.p:                                             ; preds = %bb.m
  store ptr %i.ar, ptr %i.ao, align 8, !tbaa !18
  %i.ay = load i32, ptr %i.ak, align 8, !tbaa !19
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.az
  store i64 ptrtoint (ptr @.str.18 to i64), ptr %i.ba, align 8, !tbaa !18
  %i.bb = load i32, ptr %i.ak, align 8, !tbaa !19
  %i.bc = add i32 %i.bb, 1
  store i32 %i.bc, ptr %i.ak, align 8, !tbaa !19
  br label %get_event.exit82.thread

get_event.exit82:                                 ; preds = %bb.j
  %i.bd = load ptr, ptr %1, align 8, !tbaa !15    ; 2 uses
  %i.be = zext i32 %2 to i64
  %i.bf = getelementptr inbounds nuw [24 x i8], ptr %i.bd, i64 %i.be ; 5 uses
  %i.bg = icmp ne ptr %.0.i, null
  %i.bh = icmp ne ptr %i.bd, null
  %or.cond = select i1 %i.bg, i1 %i.bh, i1 false
  br i1 %or.cond, label %bb.q, label %get_event.exit82.thread

bb.q:                                             ; preds = %get_event.exit82
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.i, i64 20 ; 4 uses
  %i.bj = load i16, ptr %i.bi, align 4            ; 2 uses
  %i.bk = and i16 %i.bj, 255                      ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 20 ; 3 uses
  %i.bm = load i16, ptr %i.bl, align 4            ; 2 uses
  %i.bn = and i16 %i.bm, 255
  %.not = icmp eq i16 %i.bk, %i.bn
  br i1 %.not, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.bo = lshr i16 %i.bj, 8                       ; 2 uses
  %i.bp = lshr i16 %i.bm, 8
  %.not67 = icmp eq i16 %i.bo, %i.bp
  br i1 %.not67, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bq = load ptr, ptr %.0.i, align 8, !tbaa !20 ; 3 uses
  %i.br = load ptr, ptr %i.bf, align 8, !tbaa !20
  %.not68 = icmp eq ptr %i.bq, %i.br
  br i1 %.not68, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  tail call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.14) #13
  br label %get_event.exit82.thread

bb.u:                                             ; preds = %bb.s
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.i, i64 16 ; 3 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !19 ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !19 ; 2 uses
  %.not69 = icmp eq i32 %i.bt, %i.bv
  br i1 %.not69, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.15, ptr noundef %i.bq, i32 noundef %i.bt, i32 noundef %i.bv) #13
  br label %get_event.exit82.thread

bb.w:                                             ; preds = %bb.u
  %i.bw = icmp ne i16 %i.bo, 1
  %.not70 = icmp eq i16 %i.bk, 2
  %or.cond75 = or i1 %i.bw, %.not70
  br i1 %or.cond75, label %bb.ae, label %.preheader

.preheader:                                       ; preds = %bb.w
  %.not96 = icmp eq i32 %i.bt, 0
  br i1 %.not96, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph, %ev_diff.exit.thread
  %i.bz = phi i32 [ %i.bt, %.lr.ph ], [ %i.dd, %ev_diff.exit.thread ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %ev_diff.exit.thread ] ; 6 uses
  %.055.fr95 = phi i32 [ 0, %.lr.ph ], [ %i.de, %ev_diff.exit.thread ] ; 2 uses
  %i.ca = load i16, ptr %i.bi, align 4            ; 2 uses
  %i.cb = load ptr, ptr %i.bx, align 8, !tbaa !18 ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv ; 3 uses
  %i.cd = load ptr, ptr %i.by, align 8, !tbaa !18
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv ; 3 uses
  %trunc.i = trunc i16 %i.ca to i8
  switch i8 %trunc.i, label %ev_diff.exit.thread [
    i8 3, label %bb.y
    i8 4, label %bb.y
    i8 1, label %bb.z
    i8 2, label %bb.aa
  ]

bb.y:                                             ; preds = %bb.x, %bb.x
  %i.cf = load i64, ptr %i.cc, align 8, !tbaa !18
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !18
  %i.ch = icmp ne i64 %i.cf, %i.cg
  %i.ci = zext i1 %i.ch to i32
  br label %ev_diff.exit

bb.z:                                             ; preds = %bb.x
  %i.cj = load ptr, ptr %i.cc, align 8, !tbaa !18
  %i.ck = load ptr, ptr %i.ce, align 8, !tbaa !18
  %i.cl = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.cj, ptr noundef nonnull dereferenceable(1) %i.ck) #14
  br label %ev_diff.exit

bb.aa:                                            ; preds = %bb.x
  %i.cm = load ptr, ptr %i.cc, align 8, !tbaa !18
  %i.cn = load ptr, ptr %i.ce, align 8, !tbaa !18
  %i.co = zext i32 %i.bz to i64
  %i.cp = tail call i32 @memcmp(ptr noundef %i.cm, ptr noundef %i.cn, i64 noundef %i.co) #14
  br label %ev_diff.exit

ev_diff.exit:                                     ; preds = %bb.y, %bb.z, %bb.aa
  %.0.i83 = phi i32 [ %i.cp, %bb.aa ], [ %i.ci, %bb.y ], [ %i.cl, %bb.z ]
  %i.cq = freeze i32 %.0.i83                      ; 2 uses
  %.not73 = icmp eq i32 %i.cq, 0
  br i1 %.not73, label %ev_diff.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %ev_diff.exit
  %.not74 = icmp eq i32 %.055.fr95, 0
  br i1 %.not74, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cr = load ptr, ptr %.0.i, align 8, !tbaa !20
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.16, ptr noundef %i.cr) #13
  %.pre = load i16, ptr %i.bi, align 4
  %.pre98 = load ptr, ptr %i.bx, align 8, !tbaa !18
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.cs = phi ptr [ %.pre98, %bb.ac ], [ %i.cb, %bb.ab ]
  %i.ct = phi i16 [ %.pre, %bb.ac ], [ %i.ca, %bb.ab ]
  %i.cu = and i16 %i.ct, 255
  %i.cv = zext nneg i16 %i.cu to i32
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv
  %i.cx = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  tail call fastcc void @ev_debug(i32 noundef %i.cv, ptr noundef %i.cw, i32 noundef %i.cx)
  %i.cy = load i16, ptr %i.bl, align 4
  %i.cz = and i16 %i.cy, 255
  %i.da = zext nneg i16 %i.cz to i32
  %i.db = load ptr, ptr %i.by, align 8, !tbaa !18
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv
  tail call fastcc void @ev_debug(i32 noundef %i.da, ptr noundef %i.dc, i32 noundef %i.cx)
  %.pre99 = load i32, ptr %i.bs, align 8, !tbaa !19
  br label %ev_diff.exit.thread

ev_diff.exit.thread:                              ; preds = %bb.x, %bb.ad, %ev_diff.exit
  %i.dd = phi i32 [ %i.bz, %ev_diff.exit ], [ %.pre99, %bb.ad ], [ %i.bz, %bb.x ] ; 2 uses
  %.0.i8388 = phi i32 [ 0, %ev_diff.exit ], [ %i.cq, %bb.ad ], [ 0, %bb.x ]
  %i.de = add i32 %.0.i8388, %.055.fr95           ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.df = zext i32 %i.dd to i64
  %i.dg = icmp samesign ult i64 %indvars.iv.next, %i.df
  br i1 %i.dg, label %bb.x, label %._crit_edge

bb.ae:                                            ; preds = %bb.w
  %i.dh = zext nneg i16 %i.bk to i32
  %i.di = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  %i.dk = tail call fastcc i32 @ev_diff(i32 noundef %i.dh, ptr noundef nonnull %i.di, ptr noundef nonnull %i.dj, i32 noundef %i.bt)
end_hunk_0
