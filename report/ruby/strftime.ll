Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/strftime?download=true
inline.NumInlined: 250
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }

@rb_strftime_with_timespec.days_l = internal constant [7 x [10 x i8]] [[10 x i8] c"Sunday\00\00\00\00", [10 x i8] c"Monday\00\00\00\00", [10 x i8] c"Tuesday\00\00\00", [10 x i8] c"Wednesday\00", [10 x i8] c"Thursday\00\00", [10 x i8] c"Friday\00\00\00\00", [10 x i8] c"Saturday\00\00"], align 16
@rb_strftime_with_timespec.months_l = internal constant [12 x [10 x i8]] [[10 x i8] c"January\00\00\00", [10 x i8] c"February\00\00", [10 x i8] c"March\00\00\00\00\00", [10 x i8] c"April\00\00\00\00\00", [10 x i8] c"May\00\00\00\00\00\00\00", [10 x i8] c"June\00\00\00\00\00\00", [10 x i8] c"July\00\00\00\00\00\00", [10 x i8] c"August\00\00\00\00", [10 x i8] c"September\00", [10 x i8] c"October\00\00\00", [10 x i8] c"November\00\00", [10 x i8] c"December\00\00"], align 16
@rb_strftime_with_timespec.ampm = internal constant [2 x [3 x i8]] [[3 x i8] c"AM\00", [3 x i8] c"PM\00"], align 1
@.str = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"%a %b %e %H:%M:%S %Y\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%*d\00%0*d\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"%*ld\00%0*ld\00", align 1
@rb_strftime_with_timespec.rbimpl_id = internal unnamed_addr global i64 0, align 8
@.str.4 = private unnamed_addr constant [4 x i8] c"div\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"%m/%d/%y\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"%H:%M:%S\00", align 1
@rb_strftime_with_timespec.rbimpl_id.7 = internal unnamed_addr global i64 0, align 8
@.str.8 = private unnamed_addr constant [6 x i8] c"round\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%+*ld\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"%+.*ld\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"%02d\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"UTC\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"%I:%M:%S %p\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"%H:%M\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"%e-%^b-%4Y\00", align 1
@rb_strftime_with_timespec.rbimpl_id.16 = internal unnamed_addr global i64 0, align 8
@.str.17 = private unnamed_addr constant [7 x i8] c"cCxXyY\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"deHkIlmMSuUVwWy\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"%09ld\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"%0*ld\00", align 1
@rb_strftime_with_timespec.rbimpl_id.21 = internal unnamed_addr global i64 0, align 8
@.str.22 = private unnamed_addr constant [5 x i8] c"%0*d\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"%Y-%m-%d\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define hidden noundef i64 @rb_strftime(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @rb_enc_str_new_static(ptr noundef null, i64 noundef 0, ptr noundef %2) #11 ; 2 uses
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !14
  %i.d = and i64 %i.c, -3145729
  store i64 %i.d, ptr %i.b, align 8, !tbaa !14
  %i.e = shl i64 %1, 20                           ; 3 uses
  %i.f = icmp ult i64 %i.e, %1
  %i.g = icmp eq i64 %i.e, 0
  %spec.store.select.i = select i1 %i.g, i64 1024, i64 %i.e
  %.0.i = select i1 %i.f, i64 %1, i64 %spec.store.select.i
  %i.h = tail call fastcc i64 @rb_strftime_with_timespec(i64 noundef %i.a, ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, ptr noundef null, i32 noundef %6, i64 noundef %.0.i)
  ret i64 %i.h
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i64 @rb_enc_str_new_static(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef i64 @rb_strftime_with_timespec(i64 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef %7, i32 noundef %8, i64 noundef %9) unnamed_addr #0 {
bb.a:
  %10 = alloca %struct.tm, align 8                ; 13 uses
  %11 = alloca %struct.tm, align 8                ; 13 uses
  %i.a = alloca ptr, align 8                      ; 116 uses
  %i.b = alloca ptr, align 8                      ; 143 uses
  %i.c = alloca [100 x i8], align 16              ; 4 uses
  %i.d = alloca [2 x i64], align 16               ; 5 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = inttoptr i64 %0 to ptr                   ; 78 uses
  %i.i = getelementptr i8, ptr %i.h, i64 16       ; 36 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !89
  %i.k = load i64, ptr %i.h, align 8, !tbaa !14
  %i.l = and i64 %i.k, 8192
  %.not.i = icmp eq i64 %i.l, 0
  %i.m = getelementptr i8, ptr %i.h, i64 24       ; 152 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !15
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.a, %bb.b
  %i.o = phi ptr [ %i.n, %bb.b ], [ %i.m, %bb.a ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store ptr %i.o, ptr %i.a, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.p = tail call i64 @rb_str_capacity(i64 noundef %0) #12
  %i.q = getelementptr i8, ptr %i.o, i64 %i.p
  store ptr %i.q, ptr %i.b, align 8, !tbaa !18
  %i.r = getelementptr i8, ptr %1, i64 %2         ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.s = icmp eq ptr %1, null
  %i.t = icmp eq i64 %2, 0
  %or.cond = or i1 %i.s, %i.t
  %i.u = icmp eq ptr %5, null
  %or.cond3 = or i1 %or.cond, %i.u
  br i1 %or.cond3, label %.loopexit2998, label %bb.c

bb.c:                                             ; preds = %RSTRING_PTR.exit
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = tail call nonnull ptr @rb_usascii_encoding() #11
  %i.w = icmp eq ptr %3, %i.v
  br i1 %i.w, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = tail call nonnull ptr @rb_ascii8bit_encoding() #11
  %i.y = icmp eq ptr %3, %i.x
  br i1 %i.y, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = tail call ptr @rb_locale_encoding() #11
  %i.aa = icmp eq ptr %3, %i.z
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.c
  %.01901 = phi ptr [ null, %bb.g ], [ %3, %bb.f ], [ null, %bb.c ] ; 61 uses
  %i.ab = getelementptr i8, ptr %i.o, i64 %i.j    ; 2 uses
  %i.ac = icmp ult ptr %1, %i.r
  br i1 %i.ac, label %.lr.ph3350, label %ruby_nonempty_memcpy.exit._crit_edge

.lr.ph3350:                                       ; preds = %bb.h
  %i.ad = ptrtoint ptr %i.r to i64                ; 2 uses
  %.not2115 = icmp eq ptr %7, null                ; 2 uses
  %i.ae = getelementptr i8, ptr %7, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ag = getelementptr i8, ptr %5, i64 32        ; 21 uses
  %.sroa.4.0..sroa_idx.i.i2763 = getelementptr inbounds nuw i8, ptr %10, i64 4
  %.sroa.5.0..sroa_idx.i.i2764 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.sroa.6.0..sroa_idx.i.i2765 = getelementptr inbounds nuw i8, ptr %10, i64 12
  %.sroa.7.0..sroa_idx.i.i2766 = getelementptr inbounds nuw i8, ptr %10, i64 16
  %.sroa.8.0..sroa_idx.i.i2767 = getelementptr inbounds nuw i8, ptr %10, i64 20
  %.sroa.9.0..sroa_idx.i.i2768 = getelementptr inbounds nuw i8, ptr %10, i64 24
  %.sroa.10.0..sroa_idx.i.i2769 = getelementptr inbounds nuw i8, ptr %10, i64 28
  %.sroa.11.0..sroa_idx.i.i2770 = getelementptr inbounds nuw i8, ptr %10, i64 32
  %.sroa.121.0..sroa_idx.i.i2771 = getelementptr inbounds nuw i8, ptr %10, i64 40
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %11, i64 4
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %11, i64 12
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %11, i64 16
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %11, i64 20
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %11, i64 24
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %11, i64 28
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %11, i64 32
  %.sroa.121.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %11, i64 40
  %.not2200 = icmp eq i32 %8, 0                   ; 2 uses
  %i.ah = getelementptr i8, ptr %5, i64 24
  %.not2201 = icmp eq ptr %.01901, null
  %i.ai = getelementptr i8, ptr %5, i64 16
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph3350, %case_conv.exit2868
  %.018993348 = phi ptr [ %1, %.lr.ph3350 ], [ %i.feq, %case_conv.exit2868 ] ; 4 uses
  %.019023347 = phi ptr [ %i.ab, %.lr.ph3350 ], [ %.37, %case_conv.exit2868 ] ; 4 uses
  %.019103345 = phi i64 [ 4, %.lr.ph3350 ], [ %.31913, %case_conv.exit2868 ] ; 66 uses
  %i.aj = ptrtoint ptr %.018993348 to i64         ; 2 uses
  %i.ak = sub i64 %i.ad, %i.aj
  %i.al = call ptr @memchr(ptr noundef %.018993348, i32 noundef 37, i64 noundef %i.ak) #12 ; 2 uses
  %.not2103 = icmp eq ptr %i.al, null
  %spec.select = select i1 %.not2103, ptr %i.r, ptr %i.al ; 6 uses
  %i.am = load ptr, ptr %i.b, align 8, !tbaa !18  ; 2 uses
  %.not2104 = icmp ult ptr %.019023347, %i.am
  %i.an = ptrtoint ptr %spec.select to i64        ; 2 uses
  %i.ao = sub i64 %i.an, %i.aj                    ; 4 uses
  br i1 %.not2104, label %bb.j, label %._crit_edge3682

._crit_edge3682:                                  ; preds = %bb.i
  %.pre3810 = ptrtoint ptr %.019023347 to i64
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ap = ptrtoint ptr %i.am to i64
  %i.aq = ptrtoint ptr %.019023347 to i64         ; 2 uses
  %i.ar = xor i64 %i.aq, -1
  %i.as = add i64 %i.ap, %i.ar
  %.not2105 = icmp slt i64 %i.ao, %i.as
  br i1 %.not2105, label %buffer_size_check.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge3682, %bb.j
  %.pre-phi3811 = phi i64 [ %.pre3810, %._crit_edge3682 ], [ %i.aq, %bb.j ]
  %i.at = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = sub i64 %.pre-phi3811, %i.au            ; 5 uses
  %i.aw = shl i64 %i.ao, 1
  %i.ax = add i64 %i.av, %i.aw
  %i.ay = call i64 @rb_str_capacity(i64 noundef %0) #12
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %.0.i = phi i64 [ %i.ay, %bb.k ], [ %i.ba, %bb.l ] ; 6 uses
  %i.az = icmp ult i64 %.0.i, %i.ax
  %i.ba = shl i64 %.0.i, 1
  br i1 %i.az, label %bb.l, label %bb.m, !llvm.loop !0

bb.m:                                             ; preds = %bb.l
  %i.bb = icmp ult i64 %.0.i, %i.av
  %i.bc = icmp ugt i64 %.0.i, %9
  %or.cond.i = or i1 %i.bb, %i.bc
  br i1 %or.cond.i, label %resize_buffer.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.av) #11
  %i.bd = sub nuw i64 %.0.i, %i.av
  call void @rb_str_modify_expand(i64 noundef %0, i64 noundef %i.bd) #11
  %i.be = load i64, ptr %i.h, align 8, !tbaa !14
  %i.bf = and i64 %i.be, 8192
  %.not.i.i = icmp eq i64 %i.bf, 0
  br i1 %.not.i.i, label %resize_buffer.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bg = load ptr, ptr %i.m, align 8, !tbaa !15
  br label %resize_buffer.exit

resize_buffer.exit:                               ; preds = %bb.n, %bb.o
  %i.bh = phi ptr [ %i.bg, %bb.o ], [ %i.m, %bb.n ] ; 3 uses
  %i.bi = getelementptr i8, ptr %i.bh, i64 %.0.i
  store ptr %i.bi, ptr %i.b, align 8, !tbaa !18
  store ptr %i.bh, ptr %i.a, align 8, !tbaa !18
  %i.bj = getelementptr i8, ptr %i.bh, i64 %i.av  ; 2 uses
  %.not.i2344 = icmp eq ptr %i.bj, null
  br i1 %.not.i2344, label %resize_buffer.exit.thread, label %buffer_size_check.exit

resize_buffer.exit.thread:                        ; preds = %bb.m, %resize_buffer.exit
  %i.bk = call i64 @rb_enc_str_new(ptr noundef %1, i64 noundef range(i64 1, 0) %2, ptr noundef %.01901) #11
  call void @rb_syserr_fail_str(i32 noundef 34, i64 noundef %i.bk) #13
  unreachable

buffer_size_check.exit:                           ; preds = %resize_buffer.exit, %bb.j
  %.11903 = phi ptr [ %i.bj, %resize_buffer.exit ], [ %.019023347, %bb.j ] ; 2 uses
  %.not.i2345 = icmp eq ptr %spec.select, %.018993348
  br i1 %.not.i2345, label %ruby_nonempty_memcpy.exit, label %bb.p

bb.p:                                             ; preds = %buffer_size_check.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %.11903, ptr noundef nonnull readonly align 1 %.018993348, i64 noundef range(i64 1, 0) %i.ao, i1 noundef false) #11
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %buffer_size_check.exit, %bb.p
  %i.bl = getelementptr i8, ptr %.11903, i64 %i.ao ; 142 uses
  %i.bm = icmp eq ptr %spec.select, %i.r
  br i1 %i.bm, label %ruby_nonempty_memcpy.exit._crit_edge.thread, label %.preheader2995

.preheader2995:                                   ; preds = %ruby_nonempty_memcpy.exit
  %i.bn = getelementptr i8, ptr %spec.select, i64 1 ; 3 uses
  %.not21063303 = icmp ult ptr %i.bn, %i.r
  br i1 %.not21063303, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader2995, %.backedge
  %i.bo = phi ptr [ %i.euc, %.backedge ], [ %i.bn, %.preheader2995 ] ; 100 uses
  %.119003308 = phi ptr [ %.11900.be, %.backedge ], [ %spec.select, %.preheader2995 ] ; 4 uses
  %.019153307 = phi i8 [ %.01915.be, %.backedge ], [ 0, %.preheader2995 ] ; 105 uses
  %.019183306 = phi i32 [ %.01918.be, %.backedge ], [ 0, %.preheader2995 ] ; 11 uses
  %.019203305 = phi i32 [ %.01920.be, %.backedge ], [ 0, %.preheader2995 ] ; 64 uses
  %.019283304 = phi i32 [ %.01928.be, %.backedge ], [ -1, %.preheader2995 ] ; 103 uses
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !15  ; 3 uses
  switch i8 %i.bp, label %.loopexit [
    i8 37, label %bb.q
    i8 97, label %bb.ab
end_hunk_0
begin_hunk_1_@rb_strftime_with_timespec:bb.a
  %i.bs = icmp eq i32 %i.br, 0
  %i.bt = icmp sgt i32 %.019283304, 1
  %or.cond5 = select i1 %i.bs, i1 %i.bt, i1 false
  %i.bu = load ptr, ptr %i.b, align 8, !tbaa !18  ; 4 uses
  br i1 %or.cond5, label %bb.r, label %bb.y

bb.r:                                             ; preds = %bb.q
  %.not2310 = icmp ult ptr %i.bl, %i.bu
  br i1 %.not2310, label %bb.s, label %._crit_edge3720.a

._crit_edge3720.a:                                ; preds = %bb.r
  %.pre3726 = ptrtoint ptr %i.bl to i64
  br label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bv = zext nneg i32 %.019283304 to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = ptrtoint ptr %i.bl to i64               ; 2 uses
  %i.by = xor i64 %i.bx, -1
  %i.bz = add i64 %i.bw, %i.by
  %.not2311 = icmp sgt i64 %i.bz, %i.bv
  br i1 %.not2311, label %buffer_size_check.exit2354, label %bb.t

bb.t:                                             ; preds = %._crit_edge3720.a, %bb.s
  %.pre-phi3727 = phi i64 [ %.pre3726, %._crit_edge3720.a ], [ %i.bx, %bb.s ]
  %i.ca = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = sub i64 %.pre-phi3727, %i.cb            ; 5 uses
  %i.cd = shl nuw i32 %.019283304, 1
  %i.ce = zext i32 %i.cd to i64
  %i.cf = add i64 %i.cc, %i.ce
  %i.cg = call i64 @rb_str_capacity(i64 noundef %0) #12
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %bb.t
  %.0.i2347 = phi i64 [ %i.cg, %bb.t ], [ %i.ci, %bb.u ] ; 6 uses
  %i.ch = icmp ult i64 %.0.i2347, %i.cf
  %i.ci = shl i64 %.0.i2347, 1
  br i1 %i.ch, label %bb.u, label %bb.v, !llvm.loop !0

bb.v:                                             ; preds = %bb.u
  %i.cj = icmp ult i64 %.0.i2347, %i.cc
  %i.ck = icmp ugt i64 %.0.i2347, %9
  %or.cond.i2348 = or i1 %i.cj, %i.ck
  br i1 %or.cond.i2348, label %resize_buffer.exit2352.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.cc) #11
  %i.cl = sub nuw i64 %.0.i2347, %i.cc
  call void @rb_str_modify_expand(i64 noundef %0, i64 noundef %i.cl) #11
  %i.cm = load i64, ptr %i.h, align 8, !tbaa !14
  %i.cn = and i64 %i.cm, 8192
  %.not.i.i2349 = icmp eq i64 %i.cn, 0
  br i1 %.not.i.i2349, label %resize_buffer.exit2352, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.co = load ptr, ptr %i.m, align 8, !tbaa !15
  br label %resize_buffer.exit2352

resize_buffer.exit2352:                           ; preds = %bb.w, %bb.x
  %i.cp = phi ptr [ %i.co, %bb.x ], [ %i.m, %bb.w ] ; 3 uses
  %i.cq = getelementptr i8, ptr %i.cp, i64 %.0.i2347
  store ptr %i.cq, ptr %i.b, align 8, !tbaa !18
  store ptr %i.cp, ptr %i.a, align 8, !tbaa !18
  %i.cr = getelementptr i8, ptr %i.cp, i64 %i.cc  ; 2 uses
  %.not.i2353 = icmp eq ptr %i.cr, null
  br i1 %.not.i2353, label %resize_buffer.exit2352.thread, label %buffer_size_check.exit2354

resize_buffer.exit2352.thread:                    ; preds = %bb.v, %resize_buffer.exit2352
  %i.cs = call i64 @rb_enc_str_new(ptr noundef %1, i64 noundef range(i64 1, 0) %2, ptr noundef %.01901) #11
  call void @rb_syserr_fail_str(i32 noundef 34, i64 noundef %i.cs) #13
  unreachable

buffer_size_check.exit2354:                       ; preds = %resize_buffer.exit2352, %bb.s
  %.21904 = phi ptr [ %i.bl, %bb.s ], [ %i.cr, %resize_buffer.exit2352 ] ; 2 uses
  %.not2312 = icmp eq i8 %.019153307, 0
  %narrow2313 = select i1 %.not2312, i8 32, i8 %.019153307
  %i.ct = add nsw i32 %.019283304, -1
  %i.cu = zext nneg i32 %i.ct to i64              ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %.21904, i8 noundef %narrow2313, i64 noundef %i.cu, i1 noundef false) #11
  %i.cv = getelementptr i8, ptr %.21904, i64 %i.cu
  br label %bb.aa

bb.y:                                             ; preds = %bb.q
  %.not2309 = icmp uge ptr %i.bl, %i.bu
  %i.cw = ptrtoint ptr %i.bu to i64
  %i.cx = ptrtoint ptr %i.bl to i64
  %i.cy = sub i64 %i.cx, %i.cw
  %i.cz = icmp sgt i64 %i.cy, -3
  %or.cond2326 = or i1 %.not2309, %i.cz
  br i1 %or.cond2326, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.da = call fastcc ptr @resize_buffer(i64 noundef %0, ptr noundef %i.bl, ptr noundef %i.a, ptr noundef %i.b, i64 noundef 1, i64 noundef %9) ; 2 uses
  call fastcc void @buffer_size_check(ptr noundef %i.da, ptr noundef nonnull %i.r, i64 noundef %2, ptr noundef %.01901)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z, %buffer_size_check.exit2354
  %.31905 = phi ptr [ %i.cv, %buffer_size_check.exit2354 ], [ %i.da, %bb.z ], [ %i.bl, %bb.y ] ; 2 uses
  %i.db = getelementptr i8, ptr %.31905, i64 1
  store i8 37, ptr %.31905, align 1, !tbaa !15
  br label %case_conv.exit2868

bb.ab:                                            ; preds = %.lr.ph
  %i.dc = and i32 %.019203305, 2
  %.not2308 = icmp eq i32 %i.dc, 0
  %i.dd = and i32 %.019203305, -15
  %i.de = or disjoint i32 %i.dd, 8
  %.11921 = select i1 %.not2308, i32 %.019203305, i32 %i.de ; 2 uses
  %i.df = load i64, ptr %i.ag, align 8            ; 2 uses
  %i.dg = and i64 %i.df, 1924145348608
  %i.dh = icmp eq i64 %i.dg, 1924145348608
  br i1 %i.dh, label %.critedge.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.di = lshr i64 %i.df, 38
  %i.dj = and i64 %i.di, 7
  %i.dk = getelementptr [10 x i8], ptr @rb_strftime_with_timespec.days_l, i64 %i.dj
  br label %.critedge.thread

bb.ad:                                            ; preds = %.lr.ph
  %i.dl = and i32 %.019203305, 2
  %.not2307 = icmp eq i32 %i.dl, 0
  %i.dm = and i32 %.019203305, -15
  %i.dn = or disjoint i32 %i.dm, 8
  %.21922 = select i1 %.not2307, i32 %.019203305, i32 %i.dn ; 2 uses
  %i.do = load i64, ptr %i.ag, align 8            ; 2 uses
  %i.dp = and i64 %i.do, 1924145348608
  %i.dq = icmp eq i64 %i.dp, 1924145348608
  br i1 %i.dq, label %.critedge.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dr = lshr i64 %i.do, 38
  %i.ds = and i64 %i.dr, 7
  %i.dt = getelementptr [10 x i8], ptr @rb_strftime_with_timespec.days_l, i64 %i.ds ; 2 uses
  %i.du = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dt) #12
  br label %.critedge

bb.af:                                            ; preds = %.lr.ph, %.lr.ph
  %i.dv = and i32 %.019203305, 2
  %.not2306 = icmp eq i32 %i.dv, 0
  %i.dw = and i32 %.019203305, -15
  %i.dx = or disjoint i32 %i.dw, 8
  %.31923 = select i1 %.not2306, i32 %.019203305, i32 %i.dx ; 2 uses
  %i.dy = load i64, ptr %i.ag, align 8
  %i.dz = trunc i64 %i.dy to i32
  %i.ea = lshr i32 %i.dz, 9
  %i.eb = and i32 %i.ea, 15                       ; 2 uses
  %i.ec = add nsw i32 %i.eb, -13
  %or.cond2327 = icmp ult i32 %i.ec, -12
  br i1 %or.cond2327, label %.critedge.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ed = zext nneg i32 %i.eb to i64
  %i.ee = getelementptr [10 x i8], ptr @rb_strftime_with_timespec.months_l, i64 %i.ed
  %i.ef = getelementptr i8, ptr %i.ee, i64 -10
  br label %.critedge.thread

bb.ah:                                            ; preds = %.lr.ph
  %i.eg = and i32 %.019203305, 2
  %.not2305 = icmp eq i32 %i.eg, 0
  %i.eh = and i32 %.019203305, -15
  %i.ei = or disjoint i32 %i.eh, 8
  %.41924 = select i1 %.not2305, i32 %.019203305, i32 %i.ei ; 2 uses
  %i.ej = load i64, ptr %i.ag, align 8
  %i.ek = trunc i64 %i.ej to i32
  %i.el = lshr i32 %i.ek, 9
  %i.em = and i32 %i.el, 15                       ; 2 uses
  %i.en = add nsw i32 %i.em, -13
  %or.cond2328 = icmp ult i32 %i.en, -12
  br i1 %or.cond2328, label %.critedge.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.eo = zext nneg i32 %i.em to i64
  %i.ep = getelementptr [10 x i8], ptr @rb_strftime_with_timespec.months_l, i64 %i.eo
  %i.eq = getelementptr i8, ptr %i.ep, i64 -10    ; 2 uses
  %i.er = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.eq) #12
  br label %.critedge

bb.aj:                                            ; preds = %.lr.ph
  %i.es = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.et = ptrtoint ptr %i.bl to i64
  %i.eu = ptrtoint ptr %i.es to i64
  %i.ev = sub i64 %i.et, %i.eu                    ; 3 uses
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.ev) #11
  %i.ew = call fastcc i64 @rb_strftime_with_timespec(i64 noundef %0, ptr noundef nonnull @.str.1, i64 noundef 20, ptr noundef %.01901, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef %7, i32 noundef %8, i64 noundef %9)
  %.not2300 = icmp eq i64 %i.ew, 0
  br i1 %.not2300, label %.loopexit2998, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ex = load i64, ptr %i.h, align 8, !tbaa !14
  %i.ey = and i64 %i.ex, 8192
  %.not.i2355 = icmp eq i64 %i.ey, 0
  br i1 %.not.i2355, label %RSTRING_PTR.exit2356, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ez = load ptr, ptr %i.m, align 8, !tbaa !15
  br label %RSTRING_PTR.exit2356

RSTRING_PTR.exit2356:                             ; preds = %bb.ak, %bb.al
  %i.fa = phi ptr [ %i.ez, %bb.al ], [ %i.m, %bb.ak ] ; 5 uses
  %i.fb = load i64, ptr %i.i, align 8, !tbaa !89  ; 2 uses
  %i.fc = sub i64 %i.fb, %i.ev                    ; 25 uses
  store ptr %i.fa, ptr %i.a, align 8, !tbaa !18
  %i.fd = call i64 @rb_str_capacity(i64 noundef %0) #12
  %i.fe = getelementptr i8, ptr %i.fa, i64 %i.fd
  store ptr %i.fe, ptr %i.b, align 8, !tbaa !18
  %i.ff = icmp sgt i64 %i.fc, 0
  br i1 %i.ff, label %bb.am, label %case_conv.exit

bb.am:                                            ; preds = %RSTRING_PTR.exit2356
  %i.fg = getelementptr i8, ptr %i.fa, i64 %i.ev  ; 46 uses
  %i.fh = and i32 %.019203305, 12
  switch i32 %i.fh, label %case_conv.exit [
    i32 8, label %iter.check5004
    i32 4, label %iter.check5091
  ]

iter.check5091:                                   ; preds = %bb.am
  %min.iters.check5030 = icmp ult i64 %i.fc, 4
  br i1 %min.iters.check5030, label %.preheader20.i.preheader, label %vector.main.loop.iter.check5031

vector.main.loop.iter.check5031:                  ; preds = %iter.check5091
  %min.iters.check5032 = icmp ult i64 %i.fc, 16
  br i1 %min.iters.check5032, label %vec.epilog.ph5095, label %vector.ph5033

vector.ph5033:                                    ; preds = %vector.main.loop.iter.check5031
  %i.fi = and i64 %i.fc, 12
  %n.vec5034 = and i64 %i.fc, 9223372036854775792 ; 4 uses
  %i.fj = and i64 %i.fc, 15
  %i.fk = getelementptr i8, ptr %i.fg, i64 %n.vec5034
  br label %vector.body5035

vector.body5035:                                  ; preds = %vector.ph5033, %pred.store.continue5085
  %index5036 = phi i64 [ 0, %vector.ph5033 ], [ %index.next5086, %pred.store.continue5085 ] ; 17 uses
  %next.gep5037.a = getelementptr i8, ptr %i.fg, i64 %index5036 ; 2 uses
  %i.fl = getelementptr i8, ptr %i.fg, i64 %index5036
  %next.gep5038.a = getelementptr i8, ptr %i.fl, i64 1
  %i.fm = getelementptr i8, ptr %i.fg, i64 %index5036
  %next.gep5039.a = getelementptr i8, ptr %i.fm, i64 2
  %i.fn = getelementptr i8, ptr %i.fg, i64 %index5036
  %next.gep5040.a = getelementptr i8, ptr %i.fn, i64 3
  %i.fo = getelementptr i8, ptr %i.fg, i64 %index5036
  %next.gep5041.a = getelementptr i8, ptr %i.fo, i64 4
  %i.fp = getelementptr i8, ptr %i.fg, i64 %index5036
  %next.gep5042.a = getelementptr i8, ptr %i.fp, i64 5
  %i.fq = getelementptr i8, ptr %i.fg, i64 %index5036
  %next.gep5043.a = getelementptr i8, ptr %i.fq, i64 6
  %i.fr = getelementptr i8, ptr %i.fg, i64 %index5036
  %next.gep5044.a = getelementptr i8, ptr %i.fr, i64 7
  %i.fs = getelementptr i8, ptr %i.fg, i64 %index5036
  %next.gep5045.a = getelementptr i8, ptr %i.fs, i64 8
  %i.ft = getelementptr i8, ptr %i.fg, i64 %index5036
  %next.gep5046.a = getelementptr i8, ptr %i.ft, i64 9
  %i.fu = getelementptr i8, ptr %i.fg, i64 %index5036
  %next.gep5047.a = getelementptr i8, ptr %i.fu, i64 10
  %i.fv = getelementptr i8, ptr %i.fg, i64 %index5036
  %next.gep5048 = getelementptr i8, ptr %i.fv, i64 11
  %i.fw = getelementptr i8, ptr %i.fg, i64 %index5036
  %next.gep5049 = getelementptr i8, ptr %i.fw, i64 12
  %i.fx = getelementptr i8, ptr %i.fg, i64 %index5036
  %next.gep5050 = getelementptr i8, ptr %i.fx, i64 13
  %i.fy = getelementptr i8, ptr %i.fg, i64 %index5036
  %next.gep5051 = getelementptr i8, ptr %i.fy, i64 14
  %i.fz = getelementptr i8, ptr %i.fg, i64 %index5036
  %next.gep5052 = getelementptr i8, ptr %i.fz, i64 15
  %wide.load5053 = load <16 x i8>, ptr %next.gep5037.a, align 1, !tbaa !15 ; 17 uses
  %i.ga = sext <16 x i8> %wide.load5053 to <16 x i32>
  %i.gb = add nsw <16 x i32> %i.ga, splat (i32 -65)
  %i.gc = icmp ult <16 x i32> %i.gb, splat (i32 26) ; 16 uses
  %i.gd = extractelement <16 x i1> %i.gc, i64 0
  br i1 %i.gd, label %pred.store.if5054, label %pred.store.continue5055

pred.store.if5054:                                ; preds = %vector.body5035
  %i.ge = extractelement <16 x i8> %wide.load5053, i64 0
  %i.gf = or i8 %i.ge, 32
  store i8 %i.gf, ptr %next.gep5037.a, align 1, !tbaa !15
  br label %pred.store.continue5055

pred.store.continue5055:                          ; preds = %pred.store.if5054, %vector.body5035
  %i.gg = extractelement <16 x i1> %i.gc, i64 1
  br i1 %i.gg, label %pred.store.if5056, label %pred.store.continue5057

pred.store.if5056:                                ; preds = %pred.store.continue5055
  %i.gh = extractelement <16 x i8> %wide.load5053, i64 1
  %i.gi = or i8 %i.gh, 32
  store i8 %i.gi, ptr %next.gep5038.a, align 1, !tbaa !15
  br label %pred.store.continue5057

pred.store.continue5057:                          ; preds = %pred.store.if5056, %pred.store.continue5055
  %i.gj = extractelement <16 x i1> %i.gc, i64 2
  br i1 %i.gj, label %pred.store.if5058, label %pred.store.continue5059

pred.store.if5058:                                ; preds = %pred.store.continue5057
  %i.gk = extractelement <16 x i8> %wide.load5053, i64 2
  %i.gl = or i8 %i.gk, 32
  store i8 %i.gl, ptr %next.gep5039.a, align 1, !tbaa !15
  br label %pred.store.continue5059

pred.store.continue5059:                          ; preds = %pred.store.if5058, %pred.store.continue5057
  %i.gm = extractelement <16 x i1> %i.gc, i64 3
  br i1 %i.gm, label %pred.store.if5060, label %pred.store.continue5061

pred.store.if5060:                                ; preds = %pred.store.continue5059
  %i.gn = extractelement <16 x i8> %wide.load5053, i64 3
  %i.go = or i8 %i.gn, 32
  store i8 %i.go, ptr %next.gep5040.a, align 1, !tbaa !15
  br label %pred.store.continue5061

pred.store.continue5061:                          ; preds = %pred.store.if5060, %pred.store.continue5059
  %i.gp = extractelement <16 x i1> %i.gc, i64 4
  br i1 %i.gp, label %pred.store.if5062, label %pred.store.continue5063

pred.store.if5062:                                ; preds = %pred.store.continue5061
  %i.gq = extractelement <16 x i8> %wide.load5053, i64 4
  %i.gr = or i8 %i.gq, 32
  store i8 %i.gr, ptr %next.gep5041.a, align 1, !tbaa !15
  br label %pred.store.continue5063

pred.store.continue5063:                          ; preds = %pred.store.if5062, %pred.store.continue5061
  %i.gs = extractelement <16 x i1> %i.gc, i64 5
  br i1 %i.gs, label %pred.store.if5064, label %pred.store.continue5065

pred.store.if5064:                                ; preds = %pred.store.continue5063
  %i.gt = extractelement <16 x i8> %wide.load5053, i64 5
  %i.gu = or i8 %i.gt, 32
  store i8 %i.gu, ptr %next.gep5042.a, align 1, !tbaa !15
  br label %pred.store.continue5065

pred.store.continue5065:                          ; preds = %pred.store.if5064, %pred.store.continue5063
  %i.gv = extractelement <16 x i1> %i.gc, i64 6
  br i1 %i.gv, label %pred.store.if5066, label %pred.store.continue5067

pred.store.if5066:                                ; preds = %pred.store.continue5065
  %i.gw = extractelement <16 x i8> %wide.load5053, i64 6
  %i.gx = or i8 %i.gw, 32
  store i8 %i.gx, ptr %next.gep5043.a, align 1, !tbaa !15
  br label %pred.store.continue5067

pred.store.continue5067:                          ; preds = %pred.store.if5066, %pred.store.continue5065
  %i.gy = extractelement <16 x i1> %i.gc, i64 7
  br i1 %i.gy, label %pred.store.if5068, label %pred.store.continue5069

pred.store.if5068:                                ; preds = %pred.store.continue5067
  %i.gz = extractelement <16 x i8> %wide.load5053, i64 7
  %i.ha = or i8 %i.gz, 32
  store i8 %i.ha, ptr %next.gep5044.a, align 1, !tbaa !15
  br label %pred.store.continue5069

pred.store.continue5069:                          ; preds = %pred.store.if5068, %pred.store.continue5067
  %i.hb = extractelement <16 x i1> %i.gc, i64 8
  br i1 %i.hb, label %pred.store.if5070, label %pred.store.continue5071

pred.store.if5070:                                ; preds = %pred.store.continue5069
  %i.hc = extractelement <16 x i8> %wide.load5053, i64 8
  %i.hd = or i8 %i.hc, 32
  store i8 %i.hd, ptr %next.gep5045.a, align 1, !tbaa !15
  br label %pred.store.continue5071

pred.store.continue5071:                          ; preds = %pred.store.if5070, %pred.store.continue5069
  %i.he = extractelement <16 x i1> %i.gc, i64 9
  br i1 %i.he, label %pred.store.if5072, label %pred.store.continue5073

pred.store.if5072:                                ; preds = %pred.store.continue5071
  %i.hf = extractelement <16 x i8> %wide.load5053, i64 9
  %i.hg = or i8 %i.hf, 32
  store i8 %i.hg, ptr %next.gep5046.a, align 1, !tbaa !15
  br label %pred.store.continue5073

pred.store.continue5073:                          ; preds = %pred.store.if5072, %pred.store.continue5071
  %i.hh = extractelement <16 x i1> %i.gc, i64 10
  br i1 %i.hh, label %pred.store.if5074, label %pred.store.continue5075

pred.store.if5074:                                ; preds = %pred.store.continue5073
  %i.hi = extractelement <16 x i8> %wide.load5053, i64 10
  %i.hj = or i8 %i.hi, 32
  store i8 %i.hj, ptr %next.gep5047.a, align 1, !tbaa !15
  br label %pred.store.continue5075

pred.store.continue5075:                          ; preds = %pred.store.if5074, %pred.store.continue5073
  %i.hk = extractelement <16 x i1> %i.gc, i64 11
  br i1 %i.hk, label %pred.store.if5076, label %pred.store.continue5077

pred.store.if5076:                                ; preds = %pred.store.continue5075
  %i.hl = extractelement <16 x i8> %wide.load5053, i64 11
  %i.hm = or i8 %i.hl, 32
  store i8 %i.hm, ptr %next.gep5048, align 1, !tbaa !15
  br label %pred.store.continue5077

pred.store.continue5077:                          ; preds = %pred.store.if5076, %pred.store.continue5075
  %i.hn = extractelement <16 x i1> %i.gc, i64 12
  br i1 %i.hn, label %pred.store.if5078, label %pred.store.continue5079

pred.store.if5078:                                ; preds = %pred.store.continue5077
  %i.ho = extractelement <16 x i8> %wide.load5053, i64 12
  %i.hp = or i8 %i.ho, 32
  store i8 %i.hp, ptr %next.gep5049, align 1, !tbaa !15
  br label %pred.store.continue5079

pred.store.continue5079:                          ; preds = %pred.store.if5078, %pred.store.continue5077
  %i.hq = extractelement <16 x i1> %i.gc, i64 13
end_hunk_1
begin_hunk_2_@rb_strftime_with_timespec:bb.a
  %i.kx = extractelement <16 x i1> %i.jp, i64 11
  br i1 %i.kx, label %pred.store.if4989, label %pred.store.continue4990

pred.store.if4989:                                ; preds = %pred.store.continue4988
  %i.ky = extractelement <16 x i8> %wide.load4966, i64 11
  %i.kz = and i8 %i.ky, 95
  store i8 %i.kz, ptr %next.gep4961, align 1, !tbaa !15
  br label %pred.store.continue4990

pred.store.continue4990:                          ; preds = %pred.store.if4989, %pred.store.continue4988
  %i.la = extractelement <16 x i1> %i.jp, i64 12
  br i1 %i.la, label %pred.store.if4991, label %pred.store.continue4992

pred.store.if4991:                                ; preds = %pred.store.continue4990
  %i.lb = extractelement <16 x i8> %wide.load4966, i64 12
  %i.lc = and i8 %i.lb, 95
  store i8 %i.lc, ptr %next.gep4962, align 1, !tbaa !15
  br label %pred.store.continue4992

pred.store.continue4992:                          ; preds = %pred.store.if4991, %pred.store.continue4990
  %i.ld = extractelement <16 x i1> %i.jp, i64 13
  br i1 %i.ld, label %pred.store.if4993, label %pred.store.continue4994

pred.store.if4993:                                ; preds = %pred.store.continue4992
  %i.le = extractelement <16 x i8> %wide.load4966, i64 13
  %i.lf = and i8 %i.le, 95
  store i8 %i.lf, ptr %next.gep4963, align 1, !tbaa !15
  br label %pred.store.continue4994

pred.store.continue4994:                          ; preds = %pred.store.if4993, %pred.store.continue4992
  %i.lg = extractelement <16 x i1> %i.jp, i64 14
  br i1 %i.lg, label %pred.store.if4995, label %pred.store.continue4996

pred.store.if4995:                                ; preds = %pred.store.continue4994
  %i.lh = extractelement <16 x i8> %wide.load4966, i64 14
  %i.li = and i8 %i.lh, 95
  store i8 %i.li, ptr %next.gep4964, align 1, !tbaa !15
  br label %pred.store.continue4996

pred.store.continue4996:                          ; preds = %pred.store.if4995, %pred.store.continue4994
  %i.lj = extractelement <16 x i1> %i.jp, i64 15
  br i1 %i.lj, label %pred.store.if4997, label %pred.store.continue4998

pred.store.if4997:                                ; preds = %pred.store.continue4996
  %i.lk = extractelement <16 x i8> %wide.load4966, i64 15
  %i.ll = and i8 %i.lk, 95
  store i8 %i.ll, ptr %next.gep4965, align 1, !tbaa !15
  br label %pred.store.continue4998

pred.store.continue4998:                          ; preds = %pred.store.if4997, %pred.store.continue4996
  %index.next4999 = add nuw i64 %index4949, 16    ; 2 uses
  %i.lm = icmp eq i64 %index.next4999, %n.vec4947
  br i1 %i.lm, label %middle.block5000, label %vector.body4948, !llvm.loop !23

middle.block5000:                                 ; preds = %pred.store.continue4998
  %cmp.n5001 = icmp eq i64 %i.fc, %n.vec4947
  br i1 %cmp.n5001, label %case_conv.exit, label %vec.epilog.iter.check5006

vec.epilog.iter.check5006:                        ; preds = %middle.block5000
  %min.epilog.iters.check5007 = icmp eq i64 %i.iv, 0
  br i1 %min.epilog.iters.check5007, label %.preheader.i.preheader, label %vec.epilog.ph5008, !prof !92

vec.epilog.ph5008:                                ; preds = %vector.main.loop.iter.check4944, %vec.epilog.iter.check5006
  %vec.epilog.resume.val5002 = phi i64 [ %n.vec4947, %vec.epilog.iter.check5006 ], [ 0, %vector.main.loop.iter.check4944 ]
  %n.vec5009 = and i64 %i.fc, 9223372036854775804 ; 3 uses
  %i.ln = and i64 %i.fc, 3
  %i.lo = getelementptr i8, ptr %i.fg, i64 %n.vec5009
  br label %vec.epilog.vector.body5010

vec.epilog.vector.body5010:                       ; preds = %pred.store.continue5024, %vec.epilog.ph5008
  %index5011 = phi i64 [ %vec.epilog.resume.val5002, %vec.epilog.ph5008 ], [ %index.next5025, %pred.store.continue5024 ] ; 5 uses
  %next.gep5012 = getelementptr i8, ptr %i.fg, i64 %index5011 ; 2 uses
  %i.lp = getelementptr i8, ptr %i.fg, i64 %index5011
  %next.gep5013 = getelementptr i8, ptr %i.lp, i64 1
  %i.lq = getelementptr i8, ptr %i.fg, i64 %index5011
  %next.gep5014 = getelementptr i8, ptr %i.lq, i64 2
  %i.lr = getelementptr i8, ptr %i.fg, i64 %index5011
  %next.gep5015 = getelementptr i8, ptr %i.lr, i64 3
  %wide.load5016 = load <4 x i8>, ptr %next.gep5012, align 1, !tbaa !15 ; 5 uses
  %i.ls = sext <4 x i8> %wide.load5016 to <4 x i32>
  %i.lt = add nsw <4 x i32> %i.ls, splat (i32 -97)
  %i.lu = icmp ult <4 x i32> %i.lt, splat (i32 26) ; 4 uses
  %i.lv = extractelement <4 x i1> %i.lu, i64 0
  br i1 %i.lv, label %pred.store.if5017, label %pred.store.continue5018

pred.store.if5017:                                ; preds = %vec.epilog.vector.body5010
  %i.lw = extractelement <4 x i8> %wide.load5016, i64 0
  %i.lx = and i8 %i.lw, 95
  store i8 %i.lx, ptr %next.gep5012, align 1, !tbaa !15
  br label %pred.store.continue5018

pred.store.continue5018:                          ; preds = %pred.store.if5017, %vec.epilog.vector.body5010
  %i.ly = extractelement <4 x i1> %i.lu, i64 1
  br i1 %i.ly, label %pred.store.if5019, label %pred.store.continue5020

pred.store.if5019:                                ; preds = %pred.store.continue5018
  %i.lz = extractelement <4 x i8> %wide.load5016, i64 1
  %i.ma = and i8 %i.lz, 95
  store i8 %i.ma, ptr %next.gep5013, align 1, !tbaa !15
  br label %pred.store.continue5020

pred.store.continue5020:                          ; preds = %pred.store.if5019, %pred.store.continue5018
  %i.mb = extractelement <4 x i1> %i.lu, i64 2
  br i1 %i.mb, label %pred.store.if5021, label %pred.store.continue5022

pred.store.if5021:                                ; preds = %pred.store.continue5020
  %i.mc = extractelement <4 x i8> %wide.load5016, i64 2
  %i.md = and i8 %i.mc, 95
  store i8 %i.md, ptr %next.gep5014, align 1, !tbaa !15
  br label %pred.store.continue5022

pred.store.continue5022:                          ; preds = %pred.store.if5021, %pred.store.continue5020
  %i.me = extractelement <4 x i1> %i.lu, i64 3
  br i1 %i.me, label %pred.store.if5023, label %pred.store.continue5024

pred.store.if5023:                                ; preds = %pred.store.continue5022
  %i.mf = extractelement <4 x i8> %wide.load5016, i64 3
  %i.mg = and i8 %i.mf, 95
  store i8 %i.mg, ptr %next.gep5015, align 1, !tbaa !15
  br label %pred.store.continue5024

pred.store.continue5024:                          ; preds = %pred.store.if5023, %pred.store.continue5022
  %index.next5025 = add nuw i64 %index5011, 4     ; 2 uses
  %i.mh = icmp eq i64 %index.next5025, %n.vec5009
  br i1 %i.mh, label %vec.epilog.middle.block5026, label %vec.epilog.vector.body5010, !llvm.loop !24

vec.epilog.middle.block5026:                      ; preds = %pred.store.continue5024
  %cmp.n5027 = icmp eq i64 %i.fc, %n.vec5009
  br i1 %cmp.n5027, label %case_conv.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %iter.check5004, %vec.epilog.iter.check5006, %vec.epilog.middle.block5026
  %.013.i.ph = phi i64 [ %i.fc, %iter.check5004 ], [ %i.iw, %vec.epilog.iter.check5006 ], [ %i.ln, %vec.epilog.middle.block5026 ]
  %.0.i2357.ph = phi ptr [ %i.fg, %iter.check5004 ], [ %i.ix, %vec.epilog.iter.check5006 ], [ %i.lo, %vec.epilog.middle.block5026 ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %bb.ao
  %.013.i = phi i64 [ %i.mo, %bb.ao ], [ %.013.i.ph, %.preheader.i.preheader ]
  %.0.i2357 = phi ptr [ %i.mn, %bb.ao ], [ %.0.i2357.ph, %.preheader.i.preheader ] ; 3 uses
  %i.mi = load i8, ptr %.0.i2357, align 1, !tbaa !15 ; 2 uses
  %i.mj = sext i8 %i.mi to i32
  %i.mk = add nsw i32 %i.mj, -123
  %i.ml = icmp ult i32 %i.mk, -26
  br i1 %i.ml, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.preheader.i
  %i.mm = and i8 %i.mi, 95
  store i8 %i.mm, ptr %.0.i2357, align 1, !tbaa !15
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.preheader.i
  %i.mn = getelementptr i8, ptr %.0.i2357, i64 1
  %i.mo = add nsw i64 %.013.i, -1                 ; 2 uses
  %.not19.i = icmp eq i64 %i.mo, 0
  br i1 %.not19.i, label %case_conv.exit, label %.preheader.i, !llvm.loop !25

.preheader20.i:                                   ; preds = %.preheader20.i.preheader, %bb.aq
  %.114.i = phi i64 [ %i.mv, %bb.aq ], [ %.114.i.ph, %.preheader20.i.preheader ]
  %.1.i = phi ptr [ %i.mu, %bb.aq ], [ %.1.i.ph, %.preheader20.i.preheader ] ; 3 uses
  %i.mp = load i8, ptr %.1.i, align 1, !tbaa !15  ; 2 uses
  %i.mq = sext i8 %i.mp to i32
  %i.mr = add nsw i32 %i.mq, -91
  %i.ms = icmp ult i32 %i.mr, -26
  br i1 %i.ms, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %.preheader20.i
  %i.mt = or i8 %i.mp, 32
  store i8 %i.mt, ptr %.1.i, align 1, !tbaa !15
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %.preheader20.i
  %i.mu = getelementptr i8, ptr %.1.i, i64 1
  %i.mv = add nsw i64 %.114.i, -1                 ; 2 uses
  %.not17.i = icmp eq i64 %i.mv, 0
  br i1 %.not17.i, label %case_conv.exit, label %.preheader20.i, !llvm.loop !26

case_conv.exit:                                   ; preds = %bb.aq, %bb.ao, %middle.block5087, %vec.epilog.middle.block5113, %middle.block5000, %vec.epilog.middle.block5026, %bb.am, %RSTRING_PTR.exit2356
  %i.mw = sext i32 %.019283304 to i64             ; 5 uses
  %i.mx = icmp slt i64 %i.fc, %i.mw
  %i.my = getelementptr i8, ptr %i.fa, i64 %i.fb  ; 5 uses
  br i1 %i.mx, label %bb.ar, label %case_conv.exit2868

bb.ar:                                            ; preds = %case_conv.exit
  %i.mz = load ptr, ptr %i.b, align 8, !tbaa !18  ; 2 uses
  %.not2301 = icmp ult ptr %i.my, %i.mz
  br i1 %.not2301, label %bb.as, label %._crit_edge3719

._crit_edge3719:                                  ; preds = %bb.ar
  %.pre3728 = ptrtoint ptr %i.my to i64
  br label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.na = ptrtoint ptr %i.mz to i64
  %i.nb = ptrtoint ptr %i.my to i64               ; 2 uses
  %i.nc = xor i64 %i.nb, -1
  %i.nd = add i64 %i.na, %i.nc
  %.not2302 = icmp sgt i64 %i.nd, %i.mw
  br i1 %.not2302, label %buffer_size_check.exit2365, label %bb.at

bb.at:                                            ; preds = %._crit_edge3719, %bb.as
  %.pre-phi3729 = phi i64 [ %.pre3728, %._crit_edge3719 ], [ %i.nb, %bb.as ]
  %i.ne = ptrtoint ptr %i.fa to i64
  %i.nf = sub i64 %.pre-phi3729, %i.ne            ; 5 uses
  %i.ng = shl nsw i64 %i.mw, 1
  %i.nh = add i64 %i.nf, %i.ng
  %i.ni = call i64 @rb_str_capacity(i64 noundef %0) #12
  br label %bb.au

bb.au:                                            ; preds = %bb.au, %bb.at
  %.0.i2358 = phi i64 [ %i.ni, %bb.at ], [ %i.nk, %bb.au ] ; 6 uses
  %i.nj = icmp ult i64 %.0.i2358, %i.nh
  %i.nk = shl i64 %.0.i2358, 1
  br i1 %i.nj, label %bb.au, label %bb.av, !llvm.loop !0

bb.av:                                            ; preds = %bb.au
  %i.nl = icmp ult i64 %.0.i2358, %i.nf
  %i.nm = icmp ugt i64 %.0.i2358, %9
  %or.cond.i2359 = or i1 %i.nl, %i.nm
  br i1 %or.cond.i2359, label %resize_buffer.exit2363.thread, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.nf) #11
  %i.nn = sub nuw i64 %.0.i2358, %i.nf
  call void @rb_str_modify_expand(i64 noundef %0, i64 noundef %i.nn) #11
  %i.no = load i64, ptr %i.h, align 8, !tbaa !14
  %i.np = and i64 %i.no, 8192
  %.not.i.i2360 = icmp eq i64 %i.np, 0
  br i1 %.not.i.i2360, label %resize_buffer.exit2363, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.nq = load ptr, ptr %i.m, align 8, !tbaa !15
  br label %resize_buffer.exit2363

resize_buffer.exit2363:                           ; preds = %bb.aw, %bb.ax
  %i.nr = phi ptr [ %i.nq, %bb.ax ], [ %i.m, %bb.aw ] ; 3 uses
  %i.ns = getelementptr i8, ptr %i.nr, i64 %.0.i2358
  store ptr %i.ns, ptr %i.b, align 8, !tbaa !18
  store ptr %i.nr, ptr %i.a, align 8, !tbaa !18
  %i.nt = getelementptr i8, ptr %i.nr, i64 %i.nf  ; 2 uses
  %.not.i2364 = icmp eq ptr %i.nt, null
  br i1 %.not.i2364, label %resize_buffer.exit2363.thread, label %buffer_size_check.exit2365

resize_buffer.exit2363.thread:                    ; preds = %bb.av, %resize_buffer.exit2363
  %i.nu = call i64 @rb_enc_str_new(ptr noundef %1, i64 noundef range(i64 1, 0) %2, ptr noundef %.01901) #11
  call void @rb_syserr_fail_str(i32 noundef 34, i64 noundef %i.nu) #13
  unreachable

buffer_size_check.exit2365:                       ; preds = %resize_buffer.exit2363, %bb.as
  %.41906 = phi ptr [ %i.my, %bb.as ], [ %i.nt, %resize_buffer.exit2363 ]
  %i.nv = sub i64 0, %i.fc                        ; 2 uses
  %i.nw = getelementptr i8, ptr %.41906, i64 %i.nv ; 3 uses
  %i.nx = getelementptr i8, ptr %i.nw, i64 %i.mw  ; 2 uses
  %i.ny = getelementptr i8, ptr %i.nx, i64 %i.nv
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.ny, ptr noundef nonnull align 1 %i.nw, i64 noundef range(i64 -9223372036854775808, 2147483647) %i.fc, i1 noundef false) #11
  %.not2303 = icmp eq i8 %.019153307, 0
  %narrow2304 = select i1 %.not2303, i8 32, i8 %.019153307
  %i.nz = sub i64 %i.mw, %i.fc
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.nw, i8 noundef %narrow2304, i64 noundef %i.nz, i1 noundef false) #11
  br label %case_conv.exit2868

bb.ay:                                            ; preds = %.lr.ph
  %i.oa = load i64, ptr %i.ag, align 8
  %i.ob = trunc i64 %i.oa to i32
  %i.oc = lshr i32 %i.ob, 13
  %i.od = and i32 %i.oc, 31
  %i.oe = call range(i32 0, 512) i32 @llvm.umax.i32(i32 range(i32 0, 512) %i.od, i32 1)
  %i.of = and i32 %.019203305, 1
  %.not2296 = icmp eq i32 %i.of, 0
  %i.og = icmp slt i32 %.019283304, 1
  %i.oh = select i1 %i.og, i32 2, i32 %.019283304
  %i.oi = select i1 %.not2296, i32 %i.oh, i32 1   ; 2 uses
  %i.oj = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ok = ptrtoint ptr %i.bl to i64               ; 2 uses
  %i.ol = ptrtoint ptr %i.oj to i64
  %i.om = sub i64 %i.ok, %i.ol                    ; 6 uses
  %i.on = load ptr, ptr %i.b, align 8, !tbaa !18  ; 2 uses
  %.not2297 = icmp ult ptr %i.bl, %i.on
  %i.oo = sext i32 %i.oi to i64                   ; 2 uses
  br i1 %.not2297, label %bb.az, label %._crit_edge3718

bb.az:                                            ; preds = %bb.ay
  %i.op = ptrtoint ptr %i.on to i64
  %i.oq = xor i64 %i.ok, -1
  %i.or = add i64 %i.op, %i.oq
  %.not2298 = icmp sgt i64 %i.or, %i.oo
  br i1 %.not2298, label %buffer_size_check.exit2373, label %._crit_edge3718

._crit_edge3718:                                  ; preds = %bb.ay, %bb.az
  %i.os = shl nsw i64 %i.oo, 1
  %i.ot = add i64 %i.om, %i.os
  %i.ou = call i64 @rb_str_capacity(i64 noundef %0) #12
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ba, %._crit_edge3718
  %.0.i2366 = phi i64 [ %i.ou, %._crit_edge3718 ], [ %i.ow, %bb.ba ] ; 6 uses
  %i.ov = icmp ult i64 %.0.i2366, %i.ot
  %i.ow = shl i64 %.0.i2366, 1
  br i1 %i.ov, label %bb.ba, label %bb.bb, !llvm.loop !0

bb.bb:                                            ; preds = %bb.ba
  %i.ox = icmp ult i64 %.0.i2366, %i.om
  %i.oy = icmp ugt i64 %.0.i2366, %9
  %or.cond.i2367 = or i1 %i.ox, %i.oy
  br i1 %or.cond.i2367, label %resize_buffer.exit2371.thread, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.om) #11
  %i.oz = sub nuw i64 %.0.i2366, %i.om
  call void @rb_str_modify_expand(i64 noundef %0, i64 noundef %i.oz) #11
  %i.pa = load i64, ptr %i.h, align 8, !tbaa !14
  %i.pb = and i64 %i.pa, 8192
  %.not.i.i2368 = icmp eq i64 %i.pb, 0
  br i1 %.not.i.i2368, label %resize_buffer.exit2371, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.pc = load ptr, ptr %i.m, align 8, !tbaa !15
  br label %resize_buffer.exit2371

resize_buffer.exit2371:                           ; preds = %bb.bc, %bb.bd
  %i.pd = phi ptr [ %i.pc, %bb.bd ], [ %i.m, %bb.bc ] ; 2 uses
  %i.pe = getelementptr i8, ptr %i.pd, i64 %.0.i2366
  store ptr %i.pe, ptr %i.b, align 8, !tbaa !18
  %i.pf = getelementptr i8, ptr %i.pd, i64 %i.om
  %.not.i2372 = icmp eq ptr %i.pf, null
  br i1 %.not.i2372, label %resize_buffer.exit2371.thread, label %buffer_size_check.exit2373

resize_buffer.exit2371.thread:                    ; preds = %bb.bb, %resize_buffer.exit2371
  %i.pg = call i64 @rb_enc_str_new(ptr noundef %1, i64 noundef range(i64 1, 0) %2, ptr noundef %.01901) #11
  call void @rb_syserr_fail_str(i32 noundef 34, i64 noundef %i.pg) #13
  unreachable

buffer_size_check.exit2373:                       ; preds = %resize_buffer.exit2371, %bb.az
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.om) #11
  %i.ph = icmp eq i8 %.019153307, 48
  %.not2299 = icmp eq i8 %.019153307, 0
  %i.pi = or i1 %i.ph, %.not2299
  %i.pj = select i1 %i.pi, i64 4, i64 0
  %i.pk = getelementptr i8, ptr @.str.2, i64 %i.pj
  %i.pl = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %0, ptr noundef %i.pk, i32 noundef %i.oi, i32 noundef %i.oe) #11 ; 0 uses
  %i.pm = load i64, ptr %i.h, align 8, !tbaa !14
  %i.pn = and i64 %i.pm, 8192
  %.not.i2374 = icmp eq i64 %i.pn, 0
  br i1 %.not.i2374, label %RSTRING_PTR.exit2375, label %bb.be

bb.be:                                            ; preds = %buffer_size_check.exit2373
  %i.po = load ptr, ptr %i.m, align 8, !tbaa !15
  br label %RSTRING_PTR.exit2375

RSTRING_PTR.exit2375:                             ; preds = %buffer_size_check.exit2373, %bb.be
  %i.pp = phi ptr [ %i.po, %bb.be ], [ %i.m, %buffer_size_check.exit2373 ] ; 3 uses
  %i.pq = load i64, ptr %i.i, align 8, !tbaa !89
  store ptr %i.pp, ptr %i.a, align 8, !tbaa !18
  %i.pr = call i64 @rb_str_capacity(i64 noundef %0) #12
  %i.ps = getelementptr i8, ptr %i.pp, i64 %i.pr
  store ptr %i.ps, ptr %i.b, align 8, !tbaa !18
  %i.pt = getelementptr i8, ptr %i.pp, i64 %i.pq
  br label %case_conv.exit2868

bb.bf:                                            ; preds = %.lr.ph
  %i.pu = load i64, ptr %i.ag, align 8
  %i.pv = trunc i64 %i.pu to i32
  %i.pw = lshr i32 %i.pv, 18
  %i.px = and i32 %i.pw, 31
  %i.py = call range(i32 0, 367) i32 @llvm.umin.i32(i32 range(i32 0, 512) %i.px, i32 23)
  %i.pz = and i32 %.019203305, 1
  %.not2292 = icmp eq i32 %i.pz, 0
  %i.qa = icmp slt i32 %.019283304, 1
  %i.qb = select i1 %i.qa, i32 2, i32 %.019283304
  %i.qc = select i1 %.not2292, i32 %i.qb, i32 1   ; 2 uses
  %i.qd = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.qe = ptrtoint ptr %i.bl to i64               ; 2 uses
  %i.qf = ptrtoint ptr %i.qd to i64
  %i.qg = sub i64 %i.qe, %i.qf                    ; 6 uses
  %i.qh = load ptr, ptr %i.b, align 8, !tbaa !18  ; 2 uses
  %.not2293 = icmp ult ptr %i.bl, %i.qh
  %i.qi = sext i32 %i.qc to i64                   ; 2 uses
  br i1 %.not2293, label %bb.bg, label %._crit_edge3717

bb.bg:                                            ; preds = %bb.bf
  %i.qj = ptrtoint ptr %i.qh to i64
  %i.qk = xor i64 %i.qe, -1
  %i.ql = add i64 %i.qj, %i.qk
  %.not2294 = icmp sgt i64 %i.ql, %i.qi
  br i1 %.not2294, label %buffer_size_check.exit2383, label %._crit_edge3717

._crit_edge3717:                                  ; preds = %bb.bf, %bb.bg
  %i.qm = shl nsw i64 %i.qi, 1
  %i.qn = add i64 %i.qg, %i.qm
  %i.qo = call i64 @rb_str_capacity(i64 noundef %0) #12
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bh, %._crit_edge3717
  %.0.i2376 = phi i64 [ %i.qo, %._crit_edge3717 ], [ %i.qq, %bb.bh ] ; 6 uses
  %i.qp = icmp ult i64 %.0.i2376, %i.qn
  %i.qq = shl i64 %.0.i2376, 1
  br i1 %i.qp, label %bb.bh, label %bb.bi, !llvm.loop !0

bb.bi:                                            ; preds = %bb.bh
  %i.qr = icmp ult i64 %.0.i2376, %i.qg
  %i.qs = icmp ugt i64 %.0.i2376, %9
  %or.cond.i2377 = or i1 %i.qr, %i.qs
  br i1 %or.cond.i2377, label %resize_buffer.exit2381.thread, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.qg) #11
  %i.qt = sub nuw i64 %.0.i2376, %i.qg
  call void @rb_str_modify_expand(i64 noundef %0, i64 noundef %i.qt) #11
  %i.qu = load i64, ptr %i.h, align 8, !tbaa !14
  %i.qv = and i64 %i.qu, 8192
  %.not.i.i2378 = icmp eq i64 %i.qv, 0
  br i1 %.not.i.i2378, label %resize_buffer.exit2381, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.qw = load ptr, ptr %i.m, align 8, !tbaa !15
  br label %resize_buffer.exit2381

resize_buffer.exit2381:                           ; preds = %bb.bj, %bb.bk
  %i.qx = phi ptr [ %i.qw, %bb.bk ], [ %i.m, %bb.bj ] ; 2 uses
  %i.qy = getelementptr i8, ptr %i.qx, i64 %.0.i2376
  store ptr %i.qy, ptr %i.b, align 8, !tbaa !18
  %i.qz = getelementptr i8, ptr %i.qx, i64 %i.qg
  %.not.i2382 = icmp eq ptr %i.qz, null
  br i1 %.not.i2382, label %resize_buffer.exit2381.thread, label %buffer_size_check.exit2383

resize_buffer.exit2381.thread:                    ; preds = %bb.bi, %resize_buffer.exit2381
  %i.ra = call i64 @rb_enc_str_new(ptr noundef %1, i64 noundef range(i64 1, 0) %2, ptr noundef %.01901) #11
  call void @rb_syserr_fail_str(i32 noundef 34, i64 noundef %i.ra) #13
  unreachable

buffer_size_check.exit2383:                       ; preds = %resize_buffer.exit2381, %bb.bg
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.qg) #11
  %i.rb = icmp eq i8 %.019153307, 48
  %.not2295 = icmp eq i8 %.019153307, 0
  %i.rc = or i1 %i.rb, %.not2295
  %i.rd = select i1 %i.rc, i64 4, i64 0
  %i.re = getelementptr i8, ptr @.str.2, i64 %i.rd
  %i.rf = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %0, ptr noundef %i.re, i32 noundef %i.qc, i32 noundef %i.py) #11 ; 0 uses
  %i.rg = load i64, ptr %i.h, align 8, !tbaa !14
  %i.rh = and i64 %i.rg, 8192
  %.not.i2384 = icmp eq i64 %i.rh, 0
  br i1 %.not.i2384, label %RSTRING_PTR.exit2385, label %bb.bl

bb.bl:                                            ; preds = %buffer_size_check.exit2383
  %i.ri = load ptr, ptr %i.m, align 8, !tbaa !15
  br label %RSTRING_PTR.exit2385

RSTRING_PTR.exit2385:                             ; preds = %buffer_size_check.exit2383, %bb.bl
  %i.rj = phi ptr [ %i.ri, %bb.bl ], [ %i.m, %buffer_size_check.exit2383 ] ; 3 uses
  %i.rk = load i64, ptr %i.i, align 8, !tbaa !89
  store ptr %i.rj, ptr %i.a, align 8, !tbaa !18
  %i.rl = call i64 @rb_str_capacity(i64 noundef %0) #12
  %i.rm = getelementptr i8, ptr %i.rj, i64 %i.rl
  store ptr %i.rm, ptr %i.b, align 8, !tbaa !18
  %i.rn = getelementptr i8, ptr %i.rj, i64 %i.rk
  br label %case_conv.exit2868

bb.bm:                                            ; preds = %.lr.ph
  %i.ro = load i64, ptr %i.ag, align 8
  %i.rp = trunc i64 %i.ro to i32
  %i.rq = lshr i32 %i.rp, 18
  %i.rr = and i32 %i.rq, 31                       ; 3 uses
  %i.rs = call range(i32 0, 367) i32 @llvm.umin.i32(i32 range(i32 0, 512) %i.rr, i32 23) ; 2 uses
  %i.rt = icmp eq i32 %i.rr, 0
  %i.ru = icmp samesign ugt i32 %i.rr, 12
  %i.rv = add nsw i32 %i.rs, -12
  %spec.select2329 = select i1 %i.ru, i32 %i.rv, i32 %i.rs
  %.01934 = select i1 %i.rt, i32 12, i32 %spec.select2329
  %i.rw = and i32 %.019203305, 1
  %.not2288 = icmp eq i32 %i.rw, 0
  %i.rx = icmp slt i32 %.019283304, 1
  %i.ry = select i1 %i.rx, i32 2, i32 %.019283304
  %i.rz = select i1 %.not2288, i32 %i.ry, i32 1   ; 2 uses
  %i.sa = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.sb = ptrtoint ptr %i.bl to i64               ; 2 uses
  %i.sc = ptrtoint ptr %i.sa to i64
  %i.sd = sub i64 %i.sb, %i.sc                    ; 6 uses
  %i.se = load ptr, ptr %i.b, align 8, !tbaa !18  ; 2 uses
  %.not2289 = icmp ult ptr %i.bl, %i.se
  %i.sf = sext i32 %i.rz to i64                   ; 2 uses
  br i1 %.not2289, label %bb.bn, label %._crit_edge3716

bb.bn:                                            ; preds = %bb.bm
  %i.sg = ptrtoint ptr %i.se to i64
  %i.sh = xor i64 %i.sb, -1
  %i.si = add i64 %i.sg, %i.sh
  %.not2290 = icmp sgt i64 %i.si, %i.sf
  br i1 %.not2290, label %buffer_size_check.exit2393, label %._crit_edge3716

._crit_edge3716:                                  ; preds = %bb.bm, %bb.bn
  %i.sj = shl nsw i64 %i.sf, 1
  %i.sk = add i64 %i.sd, %i.sj
  %i.sl = call i64 @rb_str_capacity(i64 noundef %0) #12
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bo, %._crit_edge3716
  %.0.i2386 = phi i64 [ %i.sl, %._crit_edge3716 ], [ %i.sn, %bb.bo ] ; 6 uses
  %i.sm = icmp ult i64 %.0.i2386, %i.sk
  %i.sn = shl i64 %.0.i2386, 1
  br i1 %i.sm, label %bb.bo, label %bb.bp, !llvm.loop !0

bb.bp:                                            ; preds = %bb.bo
  %i.so = icmp ult i64 %.0.i2386, %i.sd
  %i.sp = icmp ugt i64 %.0.i2386, %9
  %or.cond.i2387 = or i1 %i.so, %i.sp
  br i1 %or.cond.i2387, label %resize_buffer.exit2391.thread, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.sd) #11
  %i.sq = sub nuw i64 %.0.i2386, %i.sd
  call void @rb_str_modify_expand(i64 noundef %0, i64 noundef %i.sq) #11
  %i.sr = load i64, ptr %i.h, align 8, !tbaa !14
  %i.ss = and i64 %i.sr, 8192
  %.not.i.i2388 = icmp eq i64 %i.ss, 0
  br i1 %.not.i.i2388, label %resize_buffer.exit2391, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.st = load ptr, ptr %i.m, align 8, !tbaa !15
  br label %resize_buffer.exit2391

resize_buffer.exit2391:                           ; preds = %bb.bq, %bb.br
  %i.su = phi ptr [ %i.st, %bb.br ], [ %i.m, %bb.bq ] ; 2 uses
  %i.sv = getelementptr i8, ptr %i.su, i64 %.0.i2386
  store ptr %i.sv, ptr %i.b, align 8, !tbaa !18
  %i.sw = getelementptr i8, ptr %i.su, i64 %i.sd
  %.not.i2392 = icmp eq ptr %i.sw, null
  br i1 %.not.i2392, label %resize_buffer.exit2391.thread, label %buffer_size_check.exit2393

resize_buffer.exit2391.thread:                    ; preds = %bb.bp, %resize_buffer.exit2391
  %i.sx = call i64 @rb_enc_str_new(ptr noundef %1, i64 noundef range(i64 1, 0) %2, ptr noundef %.01901) #11
  call void @rb_syserr_fail_str(i32 noundef 34, i64 noundef %i.sx) #13
  unreachable

buffer_size_check.exit2393:                       ; preds = %resize_buffer.exit2391, %bb.bn
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.sd) #11
  %i.sy = icmp eq i8 %.019153307, 48
  %.not2291 = icmp eq i8 %.019153307, 0
  %i.sz = or i1 %i.sy, %.not2291
  %i.ta = select i1 %i.sz, i64 4, i64 0
  %i.tb = getelementptr i8, ptr @.str.2, i64 %i.ta
  %i.tc = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %0, ptr noundef %i.tb, i32 noundef %i.rz, i32 noundef %.01934) #11 ; 0 uses
  %i.td = load i64, ptr %i.h, align 8, !tbaa !14
  %i.te = and i64 %i.td, 8192
  %.not.i2394 = icmp eq i64 %i.te, 0
  br i1 %.not.i2394, label %RSTRING_PTR.exit2395, label %bb.bs

bb.bs:                                            ; preds = %buffer_size_check.exit2393
  %i.tf = load ptr, ptr %i.m, align 8, !tbaa !15
  br label %RSTRING_PTR.exit2395

RSTRING_PTR.exit2395:                             ; preds = %buffer_size_check.exit2393, %bb.bs
  %i.tg = phi ptr [ %i.tf, %bb.bs ], [ %i.m, %buffer_size_check.exit2393 ] ; 3 uses
  %i.th = load i64, ptr %i.i, align 8, !tbaa !89
  store ptr %i.tg, ptr %i.a, align 8, !tbaa !18
  %i.ti = call i64 @rb_str_capacity(i64 noundef %0) #12
  %i.tj = getelementptr i8, ptr %i.tg, i64 %i.ti
  store ptr %i.tj, ptr %i.b, align 8, !tbaa !18
  %i.tk = getelementptr i8, ptr %i.tg, i64 %i.th
  br label %case_conv.exit2868

bb.bt:                                            ; preds = %.lr.ph
  %i.tl = load i64, ptr %i.ag, align 8
  %i.tm = trunc i64 %i.tl to i32
  %i.tn = and i32 %i.tm, 511
  %i.to = call i32 @llvm.umax.i32(i32 %i.tn, i32 1)
  %i.tp = call i32 @llvm.umin.i32(i32 %i.to, i32 366)
  %i.tq = and i32 %.019203305, 1
  %.not2284 = icmp eq i32 %i.tq, 0
  %i.tr = icmp slt i32 %.019283304, 1
  %i.ts = select i1 %i.tr, i32 3, i32 %.019283304
  %i.tt = select i1 %.not2284, i32 %i.ts, i32 1   ; 2 uses
  %i.tu = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.tv = ptrtoint ptr %i.bl to i64               ; 2 uses
  %i.tw = ptrtoint ptr %i.tu to i64
  %i.tx = sub i64 %i.tv, %i.tw                    ; 6 uses
  %i.ty = load ptr, ptr %i.b, align 8, !tbaa !18  ; 2 uses
  %.not2285 = icmp ult ptr %i.bl, %i.ty
  %i.tz = sext i32 %i.tt to i64                   ; 2 uses
  br i1 %.not2285, label %bb.bu, label %._crit_edge3715

bb.bu:                                            ; preds = %bb.bt
  %i.ua = ptrtoint ptr %i.ty to i64
  %i.ub = xor i64 %i.tv, -1
  %i.uc = add i64 %i.ua, %i.ub
  %.not2286 = icmp sgt i64 %i.uc, %i.tz
  br i1 %.not2286, label %buffer_size_check.exit2403, label %._crit_edge3715

._crit_edge3715:                                  ; preds = %bb.bt, %bb.bu
  %i.ud = shl nsw i64 %i.tz, 1
  %i.ue = add i64 %i.tx, %i.ud
  %i.uf = call i64 @rb_str_capacity(i64 noundef %0) #12
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bv, %._crit_edge3715
  %.0.i2396 = phi i64 [ %i.uf, %._crit_edge3715 ], [ %i.uh, %bb.bv ] ; 6 uses
  %i.ug = icmp ult i64 %.0.i2396, %i.ue
  %i.uh = shl i64 %.0.i2396, 1
  br i1 %i.ug, label %bb.bv, label %bb.bw, !llvm.loop !0

bb.bw:                                            ; preds = %bb.bv
  %i.ui = icmp ult i64 %.0.i2396, %i.tx
  %i.uj = icmp ugt i64 %.0.i2396, %9
  %or.cond.i2397 = or i1 %i.ui, %i.uj
  br i1 %or.cond.i2397, label %resize_buffer.exit2401.thread, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.tx) #11
  %i.uk = sub nuw i64 %.0.i2396, %i.tx
  call void @rb_str_modify_expand(i64 noundef %0, i64 noundef %i.uk) #11
  %i.ul = load i64, ptr %i.h, align 8, !tbaa !14
  %i.um = and i64 %i.ul, 8192
  %.not.i.i2398 = icmp eq i64 %i.um, 0
  br i1 %.not.i.i2398, label %resize_buffer.exit2401, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.un = load ptr, ptr %i.m, align 8, !tbaa !15
  br label %resize_buffer.exit2401

resize_buffer.exit2401:                           ; preds = %bb.bx, %bb.by
  %i.uo = phi ptr [ %i.un, %bb.by ], [ %i.m, %bb.bx ] ; 2 uses
  %i.up = getelementptr i8, ptr %i.uo, i64 %.0.i2396
  store ptr %i.up, ptr %i.b, align 8, !tbaa !18
  %i.uq = getelementptr i8, ptr %i.uo, i64 %i.tx
  %.not.i2402 = icmp eq ptr %i.uq, null
  br i1 %.not.i2402, label %resize_buffer.exit2401.thread, label %buffer_size_check.exit2403

resize_buffer.exit2401.thread:                    ; preds = %bb.bw, %resize_buffer.exit2401
  %i.ur = call i64 @rb_enc_str_new(ptr noundef %1, i64 noundef range(i64 1, 0) %2, ptr noundef %.01901) #11
  call void @rb_syserr_fail_str(i32 noundef 34, i64 noundef %i.ur) #13
  unreachable

buffer_size_check.exit2403:                       ; preds = %resize_buffer.exit2401, %bb.bu
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.tx) #11
  %i.us = icmp eq i8 %.019153307, 48
  %.not2287 = icmp eq i8 %.019153307, 0
  %i.ut = or i1 %i.us, %.not2287
  %i.uu = select i1 %i.ut, i64 4, i64 0
  %i.uv = getelementptr i8, ptr @.str.2, i64 %i.uu
  %i.uw = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %0, ptr noundef %i.uv, i32 noundef %i.tt, i32 noundef %i.tp) #11 ; 0 uses
  %i.ux = load i64, ptr %i.h, align 8, !tbaa !14
  %i.uy = and i64 %i.ux, 8192
  %.not.i2404 = icmp eq i64 %i.uy, 0
  br i1 %.not.i2404, label %RSTRING_PTR.exit2405, label %bb.bz

bb.bz:                                            ; preds = %buffer_size_check.exit2403
  %i.uz = load ptr, ptr %i.m, align 8, !tbaa !15
  br label %RSTRING_PTR.exit2405

RSTRING_PTR.exit2405:                             ; preds = %buffer_size_check.exit2403, %bb.bz
  %i.va = phi ptr [ %i.uz, %bb.bz ], [ %i.m, %buffer_size_check.exit2403 ] ; 3 uses
  %i.vb = load i64, ptr %i.i, align 8, !tbaa !89
  store ptr %i.va, ptr %i.a, align 8, !tbaa !18
  %i.vc = call i64 @rb_str_capacity(i64 noundef %0) #12
  %i.vd = getelementptr i8, ptr %i.va, i64 %i.vc
  store ptr %i.vd, ptr %i.b, align 8, !tbaa !18
  %i.ve = getelementptr i8, ptr %i.va, i64 %i.vb
  br label %case_conv.exit2868

bb.ca:                                            ; preds = %.lr.ph
  %i.vf = load i64, ptr %i.ag, align 8
  %i.vg = trunc i64 %i.vf to i32
  %i.vh = lshr i32 %i.vg, 9
  %i.vi = and i32 %i.vh, 15
  %i.vj = call i32 @llvm.umax.i32(i32 %i.vi, i32 1)
  %i.vk = call i32 @llvm.umin.i32(i32 %i.vj, i32 12)
  %i.vl = and i32 %.019203305, 1
  %.not2280 = icmp eq i32 %i.vl, 0
  %i.vm = icmp slt i32 %.019283304, 1
  %i.vn = select i1 %i.vm, i32 2, i32 %.019283304
  %i.vo = select i1 %.not2280, i32 %i.vn, i32 1   ; 2 uses
  %i.vp = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.vq = ptrtoint ptr %i.bl to i64               ; 2 uses
  %i.vr = ptrtoint ptr %i.vp to i64
  %i.vs = sub i64 %i.vq, %i.vr                    ; 6 uses
  %i.vt = load ptr, ptr %i.b, align 8, !tbaa !18  ; 2 uses
  %.not2281 = icmp ult ptr %i.bl, %i.vt
  %i.vu = sext i32 %i.vo to i64                   ; 2 uses
  br i1 %.not2281, label %bb.cb, label %._crit_edge3714

bb.cb:                                            ; preds = %bb.ca
  %i.vv = ptrtoint ptr %i.vt to i64
  %i.vw = xor i64 %i.vq, -1
  %i.vx = add i64 %i.vv, %i.vw
  %.not2282 = icmp sgt i64 %i.vx, %i.vu
  br i1 %.not2282, label %buffer_size_check.exit2413, label %._crit_edge3714

._crit_edge3714:                                  ; preds = %bb.ca, %bb.cb
  %i.vy = shl nsw i64 %i.vu, 1
  %i.vz = add i64 %i.vs, %i.vy
  %i.wa = call i64 @rb_str_capacity(i64 noundef %0) #12
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cc, %._crit_edge3714
  %.0.i2406 = phi i64 [ %i.wa, %._crit_edge3714 ], [ %i.wc, %bb.cc ] ; 6 uses
  %i.wb = icmp ult i64 %.0.i2406, %i.vz
  %i.wc = shl i64 %.0.i2406, 1
  br i1 %i.wb, label %bb.cc, label %bb.cd, !llvm.loop !0

bb.cd:                                            ; preds = %bb.cc
  %i.wd = icmp ult i64 %.0.i2406, %i.vs
  %i.we = icmp ugt i64 %.0.i2406, %9
  %or.cond.i2407 = or i1 %i.wd, %i.we
  br i1 %or.cond.i2407, label %resize_buffer.exit2411.thread, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.vs) #11
  %i.wf = sub nuw i64 %.0.i2406, %i.vs
  call void @rb_str_modify_expand(i64 noundef %0, i64 noundef %i.wf) #11
  %i.wg = load i64, ptr %i.h, align 8, !tbaa !14
  %i.wh = and i64 %i.wg, 8192
  %.not.i.i2408 = icmp eq i64 %i.wh, 0
  br i1 %.not.i.i2408, label %resize_buffer.exit2411, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.wi = load ptr, ptr %i.m, align 8, !tbaa !15
  br label %resize_buffer.exit2411

resize_buffer.exit2411:                           ; preds = %bb.ce, %bb.cf
  %i.wj = phi ptr [ %i.wi, %bb.cf ], [ %i.m, %bb.ce ] ; 2 uses
  %i.wk = getelementptr i8, ptr %i.wj, i64 %.0.i2406
  store ptr %i.wk, ptr %i.b, align 8, !tbaa !18
  %i.wl = getelementptr i8, ptr %i.wj, i64 %i.vs
  %.not.i2412 = icmp eq ptr %i.wl, null
  br i1 %.not.i2412, label %resize_buffer.exit2411.thread, label %buffer_size_check.exit2413

resize_buffer.exit2411.thread:                    ; preds = %bb.cd, %resize_buffer.exit2411
  %i.wm = call i64 @rb_enc_str_new(ptr noundef %1, i64 noundef range(i64 1, 0) %2, ptr noundef %.01901) #11
  call void @rb_syserr_fail_str(i32 noundef 34, i64 noundef %i.wm) #13
  unreachable

buffer_size_check.exit2413:                       ; preds = %resize_buffer.exit2411, %bb.cb
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.vs) #11
  %i.wn = icmp eq i8 %.019153307, 48
  %.not2283 = icmp eq i8 %.019153307, 0
  %i.wo = or i1 %i.wn, %.not2283
  %i.wp = select i1 %i.wo, i64 4, i64 0
  %i.wq = getelementptr i8, ptr @.str.2, i64 %i.wp
  %i.wr = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %0, ptr noundef %i.wq, i32 noundef %i.vo, i32 noundef %i.vk) #11 ; 0 uses
  %i.ws = load i64, ptr %i.h, align 8, !tbaa !14
  %i.wt = and i64 %i.ws, 8192
  %.not.i2414 = icmp eq i64 %i.wt, 0
  br i1 %.not.i2414, label %RSTRING_PTR.exit2415, label %bb.cg

bb.cg:                                            ; preds = %buffer_size_check.exit2413
  %i.wu = load ptr, ptr %i.m, align 8, !tbaa !15
  br label %RSTRING_PTR.exit2415

RSTRING_PTR.exit2415:                             ; preds = %buffer_size_check.exit2413, %bb.cg
  %i.wv = phi ptr [ %i.wu, %bb.cg ], [ %i.m, %buffer_size_check.exit2413 ] ; 3 uses
  %i.ww = load i64, ptr %i.i, align 8, !tbaa !89
  store ptr %i.wv, ptr %i.a, align 8, !tbaa !18
  %i.wx = call i64 @rb_str_capacity(i64 noundef %0) #12
  %i.wy = getelementptr i8, ptr %i.wv, i64 %i.wx
  store ptr %i.wy, ptr %i.b, align 8, !tbaa !18
  %i.wz = getelementptr i8, ptr %i.wv, i64 %i.ww
  br label %case_conv.exit2868

bb.ch:                                            ; preds = %.lr.ph
  %i.xa = load i64, ptr %i.ag, align 8
  %i.xb = trunc i64 %i.xa to i32
  %i.xc = lshr i32 %i.xb, 23
  %i.xd = and i32 %i.xc, 63
  %i.xe = call range(i32 0, 367) i32 @llvm.umin.i32(i32 range(i32 0, 512) %i.xd, i32 59)
  %i.xf = and i32 %.019203305, 1
  %.not2276 = icmp eq i32 %i.xf, 0
  %i.xg = icmp slt i32 %.019283304, 1
  %i.xh = select i1 %i.xg, i32 2, i32 %.019283304
  %i.xi = select i1 %.not2276, i32 %i.xh, i32 1   ; 2 uses
  %i.xj = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.xk = ptrtoint ptr %i.bl to i64               ; 2 uses
  %i.xl = ptrtoint ptr %i.xj to i64
  %i.xm = sub i64 %i.xk, %i.xl                    ; 6 uses
  %i.xn = load ptr, ptr %i.b, align 8, !tbaa !18  ; 2 uses
  %.not2277 = icmp ult ptr %i.bl, %i.xn
  %i.xo = sext i32 %i.xi to i64                   ; 2 uses
  br i1 %.not2277, label %bb.ci, label %._crit_edge3713

bb.ci:                                            ; preds = %bb.ch
  %i.xp = ptrtoint ptr %i.xn to i64
  %i.xq = xor i64 %i.xk, -1
  %i.xr = add i64 %i.xp, %i.xq
  %.not2278 = icmp sgt i64 %i.xr, %i.xo
  br i1 %.not2278, label %buffer_size_check.exit2423, label %._crit_edge3713

._crit_edge3713:                                  ; preds = %bb.ch, %bb.ci
  %i.xs = shl nsw i64 %i.xo, 1
  %i.xt = add i64 %i.xm, %i.xs
  %i.xu = call i64 @rb_str_capacity(i64 noundef %0) #12
  br label %bb.cj

bb.cj:                                            ; preds = %bb.cj, %._crit_edge3713
  %.0.i2416 = phi i64 [ %i.xu, %._crit_edge3713 ], [ %i.xw, %bb.cj ] ; 6 uses
  %i.xv = icmp ult i64 %.0.i2416, %i.xt
  %i.xw = shl i64 %.0.i2416, 1
  br i1 %i.xv, label %bb.cj, label %bb.ck, !llvm.loop !0

bb.ck:                                            ; preds = %bb.cj
  %i.xx = icmp ult i64 %.0.i2416, %i.xm
  %i.xy = icmp ugt i64 %.0.i2416, %9
  %or.cond.i2417 = or i1 %i.xx, %i.xy
  br i1 %or.cond.i2417, label %resize_buffer.exit2421.thread, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.xm) #11
  %i.xz = sub nuw i64 %.0.i2416, %i.xm
  call void @rb_str_modify_expand(i64 noundef %0, i64 noundef %i.xz) #11
  %i.ya = load i64, ptr %i.h, align 8, !tbaa !14
  %i.yb = and i64 %i.ya, 8192
  %.not.i.i2418 = icmp eq i64 %i.yb, 0
  br i1 %.not.i.i2418, label %resize_buffer.exit2421, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.yc = load ptr, ptr %i.m, align 8, !tbaa !15
  br label %resize_buffer.exit2421

resize_buffer.exit2421:                           ; preds = %bb.cl, %bb.cm
  %i.yd = phi ptr [ %i.yc, %bb.cm ], [ %i.m, %bb.cl ] ; 2 uses
  %i.ye = getelementptr i8, ptr %i.yd, i64 %.0.i2416
  store ptr %i.ye, ptr %i.b, align 8, !tbaa !18
  %i.yf = getelementptr i8, ptr %i.yd, i64 %i.xm
  %.not.i2422 = icmp eq ptr %i.yf, null
  br i1 %.not.i2422, label %resize_buffer.exit2421.thread, label %buffer_size_check.exit2423

resize_buffer.exit2421.thread:                    ; preds = %bb.ck, %resize_buffer.exit2421
  %i.yg = call i64 @rb_enc_str_new(ptr noundef %1, i64 noundef range(i64 1, 0) %2, ptr noundef %.01901) #11
  call void @rb_syserr_fail_str(i32 noundef 34, i64 noundef %i.yg) #13
  unreachable

buffer_size_check.exit2423:                       ; preds = %resize_buffer.exit2421, %bb.ci
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.xm) #11
  %i.yh = icmp eq i8 %.019153307, 48
  %.not2279 = icmp eq i8 %.019153307, 0
  %i.yi = or i1 %i.yh, %.not2279
  %i.yj = select i1 %i.yi, i64 4, i64 0
  %i.yk = getelementptr i8, ptr @.str.2, i64 %i.yj
  %i.yl = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %0, ptr noundef %i.yk, i32 noundef %i.xi, i32 noundef %i.xe) #11 ; 0 uses
  %i.ym = load i64, ptr %i.h, align 8, !tbaa !14
  %i.yn = and i64 %i.ym, 8192
  %.not.i2424 = icmp eq i64 %i.yn, 0
  br i1 %.not.i2424, label %RSTRING_PTR.exit2425, label %bb.cn

bb.cn:                                            ; preds = %buffer_size_check.exit2423
  %i.yo = load ptr, ptr %i.m, align 8, !tbaa !15
  br label %RSTRING_PTR.exit2425

RSTRING_PTR.exit2425:                             ; preds = %buffer_size_check.exit2423, %bb.cn
  %i.yp = phi ptr [ %i.yo, %bb.cn ], [ %i.m, %buffer_size_check.exit2423 ] ; 3 uses
  %i.yq = load i64, ptr %i.i, align 8, !tbaa !89
  store ptr %i.yp, ptr %i.a, align 8, !tbaa !18
  %i.yr = call i64 @rb_str_capacity(i64 noundef %0) #12
  %i.ys = getelementptr i8, ptr %i.yp, i64 %i.yr
  store ptr %i.ys, ptr %i.b, align 8, !tbaa !18
  %i.yt = getelementptr i8, ptr %i.yp, i64 %i.yq
  br label %case_conv.exit2868

bb.co:                                            ; preds = %.lr.ph, %.lr.ph
  %i.yu = icmp ne i8 %i.bp, 112
  %i.yv = and i32 %.019203305, 2
  %.not2274 = icmp eq i32 %i.yv, 0
  %or.cond2330 = select i1 %i.yu, i1 true, i1 %.not2274
  br i1 %or.cond2330, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.yw = icmp eq i8 %i.bp, 80
  %i.yx = and i32 %.019203305, 10
  %.not2275 = icmp eq i32 %i.yx, 0
  %or.cond2331 = select i1 %i.yw, i1 %.not2275, i1 false
  br i1 %or.cond2331, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %i.yy = and i32 %.019203305, -15
  %i.yz = or disjoint i32 %i.yy, 4
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %.51925 = phi i32 [ %i.yz, %bb.cq ], [ %.019203305, %bb.cp ]
  %i.za = load i64, ptr %i.ag, align 8
  %i.zb = and i64 %i.za, 7340032
  %i.zc = icmp samesign ult i64 %i.zb, 3145728
  %rb_strftime_with_timespec.ampm. = select i1 %i.zc, ptr @rb_strftime_with_timespec.ampm, ptr getelementptr inbounds nuw (i8, ptr @rb_strftime_with_timespec.ampm, i64 3)
  br label %.critedge.thread

bb.cs:                                            ; preds = %.lr.ph
  br i1 %.not2115, label %bb.db, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.zd = load i64, ptr %7, align 8, !tbaa !94
  %i.ze = and i32 %.019203305, 1
  %.not2270 = icmp eq i32 %i.ze, 0
  %i.zf = call i32 @llvm.smax.i32(i32 %.019283304, i32 1)
  %i.zg = select i1 %.not2270, i32 %i.zf, i32 1   ; 3 uses
  %i.zh = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.zi = ptrtoint ptr %i.bl to i64               ; 2 uses
  %i.zj = ptrtoint ptr %i.zh to i64
  %i.zk = sub i64 %i.zi, %i.zj                    ; 6 uses
  %i.zl = load ptr, ptr %i.b, align 8, !tbaa !18  ; 2 uses
  %.not2271 = icmp ult ptr %i.bl, %i.zl
  br i1 %.not2271, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.zm = zext nneg i32 %i.zg to i64
  %i.zn = ptrtoint ptr %i.zl to i64
  %i.zo = xor i64 %i.zi, -1
  %i.zp = add i64 %i.zn, %i.zo
  %.not2272 = icmp sgt i64 %i.zp, %i.zm
  br i1 %.not2272, label %buffer_size_check.exit2433, label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %i.zq = shl nuw i32 %i.zg, 1
  %i.zr = zext i32 %i.zq to i64
  %i.zs = add i64 %i.zk, %i.zr
  %i.zt = call i64 @rb_str_capacity(i64 noundef %0) #12
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cw, %bb.cv
  %.0.i2426 = phi i64 [ %i.zt, %bb.cv ], [ %i.zv, %bb.cw ] ; 6 uses
  %i.zu = icmp ult i64 %.0.i2426, %i.zs
  %i.zv = shl i64 %.0.i2426, 1
  br i1 %i.zu, label %bb.cw, label %bb.cx, !llvm.loop !0

bb.cx:                                            ; preds = %bb.cw
  %i.zw = icmp ult i64 %.0.i2426, %i.zk
  %i.zx = icmp ugt i64 %.0.i2426, %9
  %or.cond.i2427 = or i1 %i.zw, %i.zx
  br i1 %or.cond.i2427, label %resize_buffer.exit2431.thread, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.zk) #11
  %i.zy = sub nuw i64 %.0.i2426, %i.zk
  call void @rb_str_modify_expand(i64 noundef %0, i64 noundef %i.zy) #11
  %i.zz = load i64, ptr %i.h, align 8, !tbaa !14
  %i.aaa = and i64 %i.zz, 8192
  %.not.i.i2428 = icmp eq i64 %i.aaa, 0
  br i1 %.not.i.i2428, label %resize_buffer.exit2431, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.aab = load ptr, ptr %i.m, align 8, !tbaa !15
  br label %resize_buffer.exit2431

resize_buffer.exit2431:                           ; preds = %bb.cy, %bb.cz
  %i.aac = phi ptr [ %i.aab, %bb.cz ], [ %i.m, %bb.cy ] ; 2 uses
  %i.aad = getelementptr i8, ptr %i.aac, i64 %.0.i2426
  store ptr %i.aad, ptr %i.b, align 8, !tbaa !18
  %i.aae = getelementptr i8, ptr %i.aac, i64 %i.zk
  %.not.i2432 = icmp eq ptr %i.aae, null
  br i1 %.not.i2432, label %resize_buffer.exit2431.thread, label %buffer_size_check.exit2433

resize_buffer.exit2431.thread:                    ; preds = %bb.cx, %resize_buffer.exit2431
  %i.aaf = call i64 @rb_enc_str_new(ptr noundef %1, i64 noundef range(i64 1, 0) %2, ptr noundef %.01901) #11
  call void @rb_syserr_fail_str(i32 noundef 34, i64 noundef %i.aaf) #13
  unreachable

buffer_size_check.exit2433:                       ; preds = %resize_buffer.exit2431, %bb.cu
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.zk) #11
  %i.aag = icmp eq i8 %.019153307, 48
  %.not2273 = icmp eq i8 %.019153307, 0
  %i.aah = or i1 %i.aag, %.not2273
  %i.aai = select i1 %i.aah, i64 5, i64 0
  %i.aaj = getelementptr i8, ptr @.str.3, i64 %i.aai
  %i.aak = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %0, ptr noundef %i.aaj, i32 noundef %i.zg, i64 noundef %i.zd) #11 ; 0 uses
  %i.aal = load i64, ptr %i.h, align 8, !tbaa !14
  %i.aam = and i64 %i.aal, 8192
  %.not.i2434 = icmp eq i64 %i.aam, 0
  br i1 %.not.i2434, label %RSTRING_PTR.exit2435, label %bb.da

bb.da:                                            ; preds = %buffer_size_check.exit2433
  %i.aan = load ptr, ptr %i.m, align 8, !tbaa !15
  br label %RSTRING_PTR.exit2435

RSTRING_PTR.exit2435:                             ; preds = %buffer_size_check.exit2433, %bb.da
  %i.aao = phi ptr [ %i.aan, %bb.da ], [ %i.m, %buffer_size_check.exit2433 ] ; 3 uses
  %i.aap = load i64, ptr %i.i, align 8, !tbaa !89
  store ptr %i.aao, ptr %i.a, align 8, !tbaa !18
  %i.aaq = call i64 @rb_str_capacity(i64 noundef %0) #12
  %i.aar = getelementptr i8, ptr %i.aao, i64 %i.aaq
  store ptr %i.aar, ptr %i.b, align 8, !tbaa !18
  %i.aas = getelementptr i8, ptr %i.aao, i64 %i.aap
  br label %case_conv.exit2868

bb.db:                                            ; preds = %bb.cs
  %.pr.i = load i64, ptr @rb_strftime_with_timespec.rbimpl_id, align 8, !tbaa !20 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %bb.db, %.lr.ph.i
  %i.aat = call i64 @rb_intern2(ptr noundef nonnull @.str.4, i64 noundef 3) #11 ; 3 uses
  store i64 %i.aat, ptr @rb_strftime_with_timespec.rbimpl_id, align 8, !tbaa !20
  %.not.i2436 = icmp eq i64 %i.aat, 0
  br i1 %.not.i2436, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !27

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %bb.db
  %.lcssa.i = phi i64 [ %.pr.i, %bb.db ], [ %i.aat, %.lr.ph.i ]
  %i.aau = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %6, i64 noundef %.lcssa.i, i32 noundef 1, i64 noundef 3) #11 ; 3 uses
  %i.aav = trunc i64 %i.aau to i1
  %i.aaw = and i32 %.019203305, 1
  %.not2266 = icmp eq i32 %i.aaw, 0               ; 2 uses
  br i1 %i.aav, label %bb.dc, label %bb.dg

bb.dc:                                            ; preds = %rbimpl_intern_const.exit
  %i.aax = call i32 @llvm.smax.i32(i32 %.019283304, i32 1)
  %i.aay = select i1 %.not2266, i32 %i.aax, i32 1 ; 2 uses
  %i.aaz = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.aba = ptrtoint ptr %i.bl to i64              ; 2 uses
  %i.abb = ptrtoint ptr %i.aaz to i64
  %i.abc = sub i64 %i.aba, %i.abb
  %i.abd = load ptr, ptr %i.b, align 8, !tbaa !18 ; 2 uses
  %.not2267 = icmp ult ptr %i.bl, %i.abd
  %i.abe = zext nneg i32 %i.aay to i64            ; 2 uses
  br i1 %.not2267, label %bb.dd, label %._crit_edge3712

bb.dd:                                            ; preds = %bb.dc
  %i.abf = ptrtoint ptr %i.abd to i64
  %i.abg = xor i64 %i.aba, -1
  %i.abh = add i64 %i.abf, %i.abg
  %.not2268 = icmp sgt i64 %i.abh, %i.abe
  br i1 %.not2268, label %bb.de, label %._crit_edge3712

._crit_edge3712:                                  ; preds = %bb.dc, %bb.dd
  %i.abi = call fastcc ptr @resize_buffer(i64 noundef %0, ptr noundef %i.bl, ptr noundef %i.a, ptr noundef %i.b, i64 noundef %i.abe, i64 noundef %9)
  call fastcc void @buffer_size_check(ptr noundef %i.abi, ptr noundef nonnull %i.r, i64 noundef %2, ptr noundef %.01901)
  br label %bb.de

bb.de:                                            ; preds = %._crit_edge3712, %bb.dd
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.abc) #11
  %i.abj = icmp eq i8 %.019153307, 48
  %.not2269 = icmp eq i8 %.019153307, 0
  %i.abk = or i1 %i.abj, %.not2269
  %i.abl = select i1 %i.abk, i64 5, i64 0
  %i.abm = getelementptr i8, ptr @.str.3, i64 %i.abl
  %i.abn = ashr i64 %i.aau, 1
  %i.abo = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %0, ptr noundef %i.abm, i32 noundef %i.aay, i64 noundef %i.abn) #11 ; 0 uses
  %i.abp = load i64, ptr %i.h, align 8, !tbaa !14
  %i.abq = and i64 %i.abp, 8192
  %.not.i2437 = icmp eq i64 %i.abq, 0
  br i1 %.not.i2437, label %RSTRING_PTR.exit2438, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.abr = load ptr, ptr %i.m, align 8, !tbaa !15
  br label %RSTRING_PTR.exit2438

RSTRING_PTR.exit2438:                             ; preds = %bb.de, %bb.df
  %i.abs = phi ptr [ %i.abr, %bb.df ], [ %i.m, %bb.de ] ; 3 uses
  %i.abt = load i64, ptr %i.i, align 8, !tbaa !89
  store ptr %i.abs, ptr %i.a, align 8, !tbaa !18
  %i.abu = call i64 @rb_str_capacity(i64 noundef %0) #12
  %i.abv = getelementptr i8, ptr %i.abs, i64 %i.abu
  store ptr %i.abv, ptr %i.b, align 8, !tbaa !18
  %i.abw = getelementptr i8, ptr %i.abs, i64 %i.abt
  br label %case_conv.exit2868

bb.dg:                                            ; preds = %rbimpl_intern_const.exit
  %.not2261 = icmp eq i8 %.019153307, 0
  %spec.store.select = select i1 %.not2261, i8 48, i8 %.019153307
  %i.abx = call fastcc i64 @format_value(i64 noundef %i.aau) ; 2 uses
  %i.aby = inttoptr i64 %i.abx to ptr
  %i.abz = getelementptr i8, ptr %i.aby, i64 16
  %i.aca = load i64, ptr %i.abz, align 8, !tbaa !89 ; 4 uses
  br i1 %.not2266, label %bb.dh, label %bb.dm

bb.dh:                                            ; preds = %bb.dg
  %i.acb = call i32 @llvm.smax.i32(i32 %.019283304, i32 1)
  %i.acc = zext nneg i32 %i.acb to i64            ; 4 uses
  %i.acd = icmp slt i64 %i.aca, %i.acc
  br i1 %i.acd, label %bb.di, label %bb.dm

bb.di:                                            ; preds = %bb.dh
  %i.ace = load ptr, ptr %i.b, align 8, !tbaa !18 ; 2 uses
  %.not2262 = icmp ult ptr %i.bl, %i.ace
  br i1 %.not2262, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.acf = ptrtoint ptr %i.ace to i64
  %i.acg = ptrtoint ptr %i.bl to i64
  %i.ach = xor i64 %i.acg, -1
  %i.aci = add i64 %i.acf, %i.ach
  %.not2263 = icmp sgt i64 %i.aci, %i.acc
  br i1 %.not2263, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %i.acj = call fastcc ptr @resize_buffer(i64 noundef %0, ptr noundef %i.bl, ptr noundef %i.a, ptr noundef %i.b, i64 noundef %i.acc, i64 noundef %9) ; 2 uses
  call fastcc void @buffer_size_check(ptr noundef %i.acj, ptr noundef nonnull %i.r, i64 noundef %2, ptr noundef %.01901)
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  %.51907 = phi ptr [ %i.acj, %bb.dk ], [ %i.bl, %bb.dj ] ; 2 uses
  %i.ack = sub i64 %i.acc, %i.aca                 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %.51907, i8 noundef %spec.store.select, i64 noundef %i.ack, i1 noundef false) #11
  %i.acl = getelementptr i8, ptr %.51907, i64 %i.ack
  br label %bb.dp

bb.dm:                                            ; preds = %bb.dg, %bb.dh
  %i.acm = load ptr, ptr %i.b, align 8, !tbaa !18 ; 2 uses
  %.not2264 = icmp ult ptr %i.bl, %i.acm
  br i1 %.not2264, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  %i.acn = ptrtoint ptr %i.acm to i64
  %i.aco = ptrtoint ptr %i.bl to i64
  %i.acp = xor i64 %i.aco, -1
  %i.acq = add i64 %i.acn, %i.acp
  %.not2265 = icmp slt i64 %i.aca, %i.acq
  br i1 %.not2265, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %i.acr = call fastcc ptr @resize_buffer(i64 noundef %0, ptr noundef %i.bl, ptr noundef %i.a, ptr noundef %i.b, i64 noundef %i.aca, i64 noundef %9) ; 2 uses
  call fastcc void @buffer_size_check(ptr noundef %i.acr, ptr noundef nonnull %i.r, i64 noundef %2, ptr noundef %.01901)
  br label %bb.dp

bb.dp:                                            ; preds = %bb.dn, %bb.do, %bb.dl
  %.61908 = phi ptr [ %i.acr, %bb.do ], [ %i.bl, %bb.dn ], [ %i.acl, %bb.dl ]
  %i.acs = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.act = ptrtoint ptr %.61908 to i64
  %i.acu = ptrtoint ptr %i.acs to i64
  %i.acv = sub i64 %i.act, %i.acu
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.acv) #11
  %i.acw = call i64 @rb_str_append(i64 noundef %0, i64 noundef %i.abx) #11 ; 0 uses
  %i.acx = load i64, ptr %i.h, align 8, !tbaa !14
  %i.acy = and i64 %i.acx, 8192
  %.not.i2439 = icmp eq i64 %i.acy, 0
  br i1 %.not.i2439, label %RSTRING_PTR.exit2440, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.acz = load ptr, ptr %i.m, align 8, !tbaa !15
  br label %RSTRING_PTR.exit2440

RSTRING_PTR.exit2440:                             ; preds = %bb.dp, %bb.dq
  %i.ada = phi ptr [ %i.acz, %bb.dq ], [ %i.m, %bb.dp ] ; 3 uses
  %i.adb = load i64, ptr %i.i, align 8, !tbaa !89
  store ptr %i.ada, ptr %i.a, align 8, !tbaa !18
  %i.adc = call i64 @rb_str_capacity(i64 noundef %0) #12
  %i.add = getelementptr i8, ptr %i.ada, i64 %i.adc
  store ptr %i.add, ptr %i.b, align 8, !tbaa !18
  %i.ade = getelementptr i8, ptr %i.ada, i64 %i.adb
  br label %case_conv.exit2868

bb.dr:                                            ; preds = %.lr.ph
  %i.adf = load i64, ptr %i.ag, align 8
  %i.adg = lshr i64 %i.adf, 32
  %i.adh = trunc nuw i64 %i.adg to i32
  %i.adi = and i32 %i.adh, 63
  %i.adj = call range(i32 0, 367) i32 @llvm.umin.i32(i32 range(i32 0, 512) %i.adi, i32 60)
  %i.adk = and i32 %.019203305, 1
  %.not2255 = icmp eq i32 %i.adk, 0
  %i.adl = icmp slt i32 %.019283304, 1
  %i.adm = select i1 %i.adl, i32 2, i32 %.019283304
  %i.adn = select i1 %.not2255, i32 %i.adm, i32 1 ; 2 uses
  %i.ado = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.adp = ptrtoint ptr %i.bl to i64              ; 2 uses
  %i.adq = ptrtoint ptr %i.ado to i64
  %i.adr = sub i64 %i.adp, %i.adq                 ; 6 uses
  %i.ads = load ptr, ptr %i.b, align 8, !tbaa !18 ; 2 uses
  %.not2256 = icmp ult ptr %i.bl, %i.ads
  %i.adt = sext i32 %i.adn to i64                 ; 2 uses
  br i1 %.not2256, label %bb.ds, label %._crit_edge3711

bb.ds:                                            ; preds = %bb.dr
  %i.adu = ptrtoint ptr %i.ads to i64
  %i.adv = xor i64 %i.adp, -1
  %i.adw = add i64 %i.adu, %i.adv
  %.not2257 = icmp sgt i64 %i.adw, %i.adt
  br i1 %.not2257, label %buffer_size_check.exit2448, label %._crit_edge3711

._crit_edge3711:                                  ; preds = %bb.dr, %bb.ds
  %i.adx = shl nsw i64 %i.adt, 1
  %i.ady = add i64 %i.adr, %i.adx
  %i.adz = call i64 @rb_str_capacity(i64 noundef %0) #12
  br label %bb.dt

bb.dt:                                            ; preds = %bb.dt, %._crit_edge3711
  %.0.i2441 = phi i64 [ %i.adz, %._crit_edge3711 ], [ %i.aeb, %bb.dt ] ; 6 uses
  %i.aea = icmp ult i64 %.0.i2441, %i.ady
  %i.aeb = shl i64 %.0.i2441, 1
  br i1 %i.aea, label %bb.dt, label %bb.du, !llvm.loop !0

bb.du:                                            ; preds = %bb.dt
  %i.aec = icmp ult i64 %.0.i2441, %i.adr
  %i.aed = icmp ugt i64 %.0.i2441, %9
  %or.cond.i2442 = or i1 %i.aec, %i.aed
  br i1 %or.cond.i2442, label %resize_buffer.exit2446.thread, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.adr) #11
  %i.aee = sub nuw i64 %.0.i2441, %i.adr
  call void @rb_str_modify_expand(i64 noundef %0, i64 noundef %i.aee) #11
  %i.aef = load i64, ptr %i.h, align 8, !tbaa !14
  %i.aeg = and i64 %i.aef, 8192
  %.not.i.i2443 = icmp eq i64 %i.aeg, 0
  br i1 %.not.i.i2443, label %resize_buffer.exit2446, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.aeh = load ptr, ptr %i.m, align 8, !tbaa !15
  br label %resize_buffer.exit2446

resize_buffer.exit2446:                           ; preds = %bb.dv, %bb.dw
  %i.aei = phi ptr [ %i.aeh, %bb.dw ], [ %i.m, %bb.dv ] ; 2 uses
  %i.aej = getelementptr i8, ptr %i.aei, i64 %.0.i2441
  store ptr %i.aej, ptr %i.b, align 8, !tbaa !18
  %i.aek = getelementptr i8, ptr %i.aei, i64 %i.adr
  %.not.i2447 = icmp eq ptr %i.aek, null
  br i1 %.not.i2447, label %resize_buffer.exit2446.thread, label %buffer_size_check.exit2448

resize_buffer.exit2446.thread:                    ; preds = %bb.du, %resize_buffer.exit2446
  %i.ael = call i64 @rb_enc_str_new(ptr noundef %1, i64 noundef range(i64 1, 0) %2, ptr noundef %.01901) #11
  call void @rb_syserr_fail_str(i32 noundef 34, i64 noundef %i.ael) #13
  unreachable

buffer_size_check.exit2448:                       ; preds = %resize_buffer.exit2446, %bb.ds
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.adr) #11
  %i.aem = icmp eq i8 %.019153307, 48
  %.not2258 = icmp eq i8 %.019153307, 0
  %i.aen = or i1 %i.aem, %.not2258
  %i.aeo = select i1 %i.aen, i64 4, i64 0
  %i.aep = getelementptr i8, ptr @.str.2, i64 %i.aeo
  %i.aeq = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %0, ptr noundef %i.aep, i32 noundef %i.adn, i32 noundef %i.adj) #11 ; 0 uses
  %i.aer = load i64, ptr %i.h, align 8, !tbaa !14
  %i.aes = and i64 %i.aer, 8192
  %.not.i2449 = icmp eq i64 %i.aes, 0
  br i1 %.not.i2449, label %RSTRING_PTR.exit2450, label %bb.dx

bb.dx:                                            ; preds = %buffer_size_check.exit2448
  %i.aet = load ptr, ptr %i.m, align 8, !tbaa !15
  br label %RSTRING_PTR.exit2450

RSTRING_PTR.exit2450:                             ; preds = %buffer_size_check.exit2448, %bb.dx
  %i.aeu = phi ptr [ %i.aet, %bb.dx ], [ %i.m, %buffer_size_check.exit2448 ] ; 3 uses
  %i.aev = load i64, ptr %i.i, align 8, !tbaa !89
  store ptr %i.aeu, ptr %i.a, align 8, !tbaa !18
  %i.aew = call i64 @rb_str_capacity(i64 noundef %0) #12
  %i.aex = getelementptr i8, ptr %i.aeu, i64 %i.aew
  store ptr %i.aex, ptr %i.b, align 8, !tbaa !18
  %i.aey = getelementptr i8, ptr %i.aeu, i64 %i.aev
  br label %case_conv.exit2868

bb.dy:                                            ; preds = %.lr.ph
  %i.aez = and i32 %.019203305, 1
  %.not2251 = icmp eq i32 %i.aez, 0
  %i.afa = icmp slt i32 %.019283304, 1
  %i.afb = select i1 %i.afa, i32 2, i32 %.019283304
  %i.afc = select i1 %.not2251, i32 %i.afb, i32 1 ; 2 uses
  %i.afd = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.afe = ptrtoint ptr %i.bl to i64              ; 2 uses
  %i.aff = ptrtoint ptr %i.afd to i64
  %i.afg = sub i64 %i.afe, %i.aff                 ; 6 uses
  %i.afh = load ptr, ptr %i.b, align 8, !tbaa !18 ; 2 uses
  %.not2252 = icmp ult ptr %i.bl, %i.afh
  %i.afi = sext i32 %i.afc to i64                 ; 2 uses
  br i1 %.not2252, label %bb.dz, label %._crit_edge3710

bb.dz:                                            ; preds = %bb.dy
  %i.afj = ptrtoint ptr %i.afh to i64
  %i.afk = xor i64 %i.afe, -1
  %i.afl = add i64 %i.afj, %i.afk
  %.not2253 = icmp sgt i64 %i.afl, %i.afi
  br i1 %.not2253, label %buffer_size_check.exit2458, label %._crit_edge3710

._crit_edge3710:                                  ; preds = %bb.dy, %bb.dz
  %i.afm = shl nsw i64 %i.afi, 1
  %i.afn = add i64 %i.afg, %i.afm
  %i.afo = call i64 @rb_str_capacity(i64 noundef %0) #12
  br label %bb.ea

bb.ea:                                            ; preds = %bb.ea, %._crit_edge3710
  %.0.i2451 = phi i64 [ %i.afo, %._crit_edge3710 ], [ %i.afq, %bb.ea ] ; 6 uses
  %i.afp = icmp ult i64 %.0.i2451, %i.afn
  %i.afq = shl i64 %.0.i2451, 1
  br i1 %i.afp, label %bb.ea, label %bb.eb, !llvm.loop !0

bb.eb:                                            ; preds = %bb.ea
  %i.afr = icmp ult i64 %.0.i2451, %i.afg
  %i.afs = icmp ugt i64 %.0.i2451, %9
  %or.cond.i2452 = or i1 %i.afr, %i.afs
  br i1 %or.cond.i2452, label %resize_buffer.exit2456.thread, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.afg) #11
  %i.aft = sub nuw i64 %.0.i2451, %i.afg
  call void @rb_str_modify_expand(i64 noundef %0, i64 noundef %i.aft) #11
  %i.afu = load i64, ptr %i.h, align 8, !tbaa !14
  %i.afv = and i64 %i.afu, 8192
  %.not.i.i2453 = icmp eq i64 %i.afv, 0
  br i1 %.not.i.i2453, label %resize_buffer.exit2456, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.afw = load ptr, ptr %i.m, align 8, !tbaa !15
  br label %resize_buffer.exit2456

resize_buffer.exit2456:                           ; preds = %bb.ec, %bb.ed
  %i.afx = phi ptr [ %i.afw, %bb.ed ], [ %i.m, %bb.ec ] ; 2 uses
  %i.afy = getelementptr i8, ptr %i.afx, i64 %.0.i2451
  store ptr %i.afy, ptr %i.b, align 8, !tbaa !18
  %i.afz = getelementptr i8, ptr %i.afx, i64 %i.afg
  %.not.i2457 = icmp eq ptr %i.afz, null
  br i1 %.not.i2457, label %resize_buffer.exit2456.thread, label %buffer_size_check.exit2458

resize_buffer.exit2456.thread:                    ; preds = %bb.eb, %resize_buffer.exit2456
  %i.aga = call i64 @rb_enc_str_new(ptr noundef %1, i64 noundef range(i64 1, 0) %2, ptr noundef %.01901) #11
  call void @rb_syserr_fail_str(i32 noundef 34, i64 noundef %i.aga) #13
  unreachable

buffer_size_check.exit2458:                       ; preds = %resize_buffer.exit2456, %bb.dz
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.afg) #11
  %i.agb = icmp eq i8 %.019153307, 48
  %.not2254 = icmp eq i8 %.019153307, 0
  %i.agc = or i1 %i.agb, %.not2254
  %i.agd = select i1 %i.agc, i64 4, i64 0
  %i.age = getelementptr i8, ptr @.str.2, i64 %i.agd
  %i.agf = load i64, ptr %5, align 8, !tbaa !96
  %i.agg = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.agf, i64 noundef 37, i32 noundef 1, i64 noundef 801) #11
  %i.agh = call i64 @rb_fix2int(i64 noundef %i.agg) #11 ; 0 uses
  %i.agi = load i64, ptr %i.ag, align 8           ; 2 uses
  %i.agj = trunc i64 %i.agi to i16
  %i.agk = lshr i64 %i.agi, 38
  %i.agl = trunc i64 %i.agk to i16
  %i.agm = and i16 %i.agl, 7
  %i.agn = and i16 %i.agj, 511
  %i.ago = add nuw nsw i16 %i.agn, 6
  %.lhs.trunc.i = sub nsw i16 %i.ago, %i.agm
  %i.agp = sdiv i16 %.lhs.trunc.i, 7
  %.sext.i = zext nneg i16 %i.agp to i32
  %i.agq = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %0, ptr noundef %i.age, i32 noundef %i.afc, i32 noundef %.sext.i) #11 ; 0 uses
  %i.agr = load i64, ptr %i.h, align 8, !tbaa !14
  %i.ags = and i64 %i.agr, 8192
  %.not.i2459 = icmp eq i64 %i.ags, 0
  br i1 %.not.i2459, label %RSTRING_PTR.exit2460, label %bb.ee

bb.ee:                                            ; preds = %buffer_size_check.exit2458
  %i.agt = load ptr, ptr %i.m, align 8, !tbaa !15
  br label %RSTRING_PTR.exit2460

RSTRING_PTR.exit2460:                             ; preds = %buffer_size_check.exit2458, %bb.ee
  %i.agu = phi ptr [ %i.agt, %bb.ee ], [ %i.m, %buffer_size_check.exit2458 ] ; 3 uses
  %i.agv = load i64, ptr %i.i, align 8, !tbaa !89
  store ptr %i.agu, ptr %i.a, align 8, !tbaa !18
  %i.agw = call i64 @rb_str_capacity(i64 noundef %0) #12
  %i.agx = getelementptr i8, ptr %i.agu, i64 %i.agw
  store ptr %i.agx, ptr %i.b, align 8, !tbaa !18
  %i.agy = getelementptr i8, ptr %i.agu, i64 %i.agv
  br label %case_conv.exit2868

bb.ef:                                            ; preds = %.lr.ph
  %i.agz = load i64, ptr %i.ag, align 8
  %i.aha = lshr i64 %i.agz, 38
  %i.ahb = trunc nuw nsw i64 %i.aha to i32
  %i.ahc = and i32 %i.ahb, 7
  %i.ahd = call range(i32 0, 367) i32 @llvm.umin.i32(i32 range(i32 0, 512) %i.ahc, i32 6)
  %i.ahe = and i32 %.019203305, 1
  %.not2247 = icmp eq i32 %i.ahe, 0
  %i.ahf = call i32 @llvm.smax.i32(i32 %.019283304, i32 1)
  %i.ahg = select i1 %.not2247, i32 %i.ahf, i32 1 ; 3 uses
  %i.ahh = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ahi = ptrtoint ptr %i.bl to i64              ; 2 uses
  %i.ahj = ptrtoint ptr %i.ahh to i64
  %i.ahk = sub i64 %i.ahi, %i.ahj                 ; 6 uses
  %i.ahl = load ptr, ptr %i.b, align 8, !tbaa !18 ; 2 uses
  %.not2248 = icmp ult ptr %i.bl, %i.ahl
  br i1 %.not2248, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  %i.ahm = zext nneg i32 %i.ahg to i64
  %i.ahn = ptrtoint ptr %i.ahl to i64
  %i.aho = xor i64 %i.ahi, -1
  %i.ahp = add i64 %i.ahn, %i.aho
  %.not2249 = icmp sgt i64 %i.ahp, %i.ahm
  br i1 %.not2249, label %buffer_size_check.exit2468, label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  %i.ahq = shl nuw i32 %i.ahg, 1
  %i.ahr = zext i32 %i.ahq to i64
  %i.ahs = add i64 %i.ahk, %i.ahr
  %i.aht = call i64 @rb_str_capacity(i64 noundef %0) #12
  br label %bb.ei

bb.ei:                                            ; preds = %bb.ei, %bb.eh
  %.0.i2461 = phi i64 [ %i.aht, %bb.eh ], [ %i.ahv, %bb.ei ] ; 6 uses
  %i.ahu = icmp ult i64 %.0.i2461, %i.ahs
  %i.ahv = shl i64 %.0.i2461, 1
  br i1 %i.ahu, label %bb.ei, label %bb.ej, !llvm.loop !0

bb.ej:                                            ; preds = %bb.ei
  %i.ahw = icmp ult i64 %.0.i2461, %i.ahk
  %i.ahx = icmp ugt i64 %.0.i2461, %9
  %or.cond.i2462 = or i1 %i.ahw, %i.ahx
  br i1 %or.cond.i2462, label %resize_buffer.exit2466.thread, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.ahk) #11
  %i.ahy = sub nuw i64 %.0.i2461, %i.ahk
  call void @rb_str_modify_expand(i64 noundef %0, i64 noundef %i.ahy) #11
  %i.ahz = load i64, ptr %i.h, align 8, !tbaa !14
  %i.aia = and i64 %i.ahz, 8192
  %.not.i.i2463 = icmp eq i64 %i.aia, 0
  br i1 %.not.i.i2463, label %resize_buffer.exit2466, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.aib = load ptr, ptr %i.m, align 8, !tbaa !15
  br label %resize_buffer.exit2466

resize_buffer.exit2466:                           ; preds = %bb.ek, %bb.el
  %i.aic = phi ptr [ %i.aib, %bb.el ], [ %i.m, %bb.ek ] ; 2 uses
  %i.aid = getelementptr i8, ptr %i.aic, i64 %.0.i2461
  store ptr %i.aid, ptr %i.b, align 8, !tbaa !18
  %i.aie = getelementptr i8, ptr %i.aic, i64 %i.ahk
  %.not.i2467 = icmp eq ptr %i.aie, null
  br i1 %.not.i2467, label %resize_buffer.exit2466.thread, label %buffer_size_check.exit2468

resize_buffer.exit2466.thread:                    ; preds = %bb.ej, %resize_buffer.exit2466
  %i.aif = call i64 @rb_enc_str_new(ptr noundef %1, i64 noundef range(i64 1, 0) %2, ptr noundef %.01901) #11
  call void @rb_syserr_fail_str(i32 noundef 34, i64 noundef %i.aif) #13
  unreachable

buffer_size_check.exit2468:                       ; preds = %resize_buffer.exit2466, %bb.eg
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.ahk) #11
  %i.aig = icmp eq i8 %.019153307, 48
  %.not2250 = icmp eq i8 %.019153307, 0
  %i.aih = or i1 %i.aig, %.not2250
  %i.aii = select i1 %i.aih, i64 4, i64 0
  %i.aij = getelementptr i8, ptr @.str.2, i64 %i.aii
  %i.aik = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %0, ptr noundef %i.aij, i32 noundef %i.ahg, i32 noundef %i.ahd) #11 ; 0 uses
  %i.ail = load i64, ptr %i.h, align 8, !tbaa !14
  %i.aim = and i64 %i.ail, 8192
  %.not.i2469 = icmp eq i64 %i.aim, 0
  br i1 %.not.i2469, label %RSTRING_PTR.exit2470, label %bb.em

bb.em:                                            ; preds = %buffer_size_check.exit2468
  %i.ain = load ptr, ptr %i.m, align 8, !tbaa !15
  br label %RSTRING_PTR.exit2470

RSTRING_PTR.exit2470:                             ; preds = %buffer_size_check.exit2468, %bb.em
  %i.aio = phi ptr [ %i.ain, %bb.em ], [ %i.m, %buffer_size_check.exit2468 ] ; 3 uses
  %i.aip = load i64, ptr %i.i, align 8, !tbaa !89
  store ptr %i.aio, ptr %i.a, align 8, !tbaa !18
  %i.aiq = call i64 @rb_str_capacity(i64 noundef %0) #12
  %i.air = getelementptr i8, ptr %i.aio, i64 %i.aiq
  store ptr %i.air, ptr %i.b, align 8, !tbaa !18
  %i.ais = getelementptr i8, ptr %i.aio, i64 %i.aip
  br label %case_conv.exit2868

bb.en:                                            ; preds = %.lr.ph
  %i.ait = and i32 %.019203305, 1
  %.not2243 = icmp eq i32 %i.ait, 0
  %i.aiu = icmp slt i32 %.019283304, 1
  %i.aiv = select i1 %i.aiu, i32 2, i32 %.019283304
  %i.aiw = select i1 %.not2243, i32 %i.aiv, i32 1 ; 2 uses
  %i.aix = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.aiy = ptrtoint ptr %i.bl to i64              ; 2 uses
  %i.aiz = ptrtoint ptr %i.aix to i64
  %i.aja = sub i64 %i.aiy, %i.aiz                 ; 6 uses
  %i.ajb = load ptr, ptr %i.b, align 8, !tbaa !18 ; 2 uses
  %.not2244 = icmp ult ptr %i.bl, %i.ajb
  %i.ajc = sext i32 %i.aiw to i64                 ; 2 uses
  br i1 %.not2244, label %bb.eo, label %._crit_edge3709

bb.eo:                                            ; preds = %bb.en
  %i.ajd = ptrtoint ptr %i.ajb to i64
  %i.aje = xor i64 %i.aiy, -1
  %i.ajf = add i64 %i.ajd, %i.aje
  %.not2245 = icmp sgt i64 %i.ajf, %i.ajc
  br i1 %.not2245, label %buffer_size_check.exit2478, label %._crit_edge3709

._crit_edge3709:                                  ; preds = %bb.en, %bb.eo
  %i.ajg = shl nsw i64 %i.ajc, 1
  %i.ajh = add i64 %i.aja, %i.ajg
  %i.aji = call i64 @rb_str_capacity(i64 noundef %0) #12
  br label %bb.ep

bb.ep:                                            ; preds = %bb.ep, %._crit_edge3709
  %.0.i2471 = phi i64 [ %i.aji, %._crit_edge3709 ], [ %i.ajk, %bb.ep ] ; 6 uses
  %i.ajj = icmp ult i64 %.0.i2471, %i.ajh
  %i.ajk = shl i64 %.0.i2471, 1
  br i1 %i.ajj, label %bb.ep, label %bb.eq, !llvm.loop !0

bb.eq:                                            ; preds = %bb.ep
  %i.ajl = icmp ult i64 %.0.i2471, %i.aja
  %i.ajm = icmp ugt i64 %.0.i2471, %9
  %or.cond.i2472 = or i1 %i.ajl, %i.ajm
  br i1 %or.cond.i2472, label %resize_buffer.exit2476.thread, label %bb.er

bb.er:                                            ; preds = %bb.eq
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.aja) #11
  %i.ajn = sub nuw i64 %.0.i2471, %i.aja
  call void @rb_str_modify_expand(i64 noundef %0, i64 noundef %i.ajn) #11
  %i.ajo = load i64, ptr %i.h, align 8, !tbaa !14
  %i.ajp = and i64 %i.ajo, 8192
  %.not.i.i2473 = icmp eq i64 %i.ajp, 0
  br i1 %.not.i.i2473, label %resize_buffer.exit2476, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.ajq = load ptr, ptr %i.m, align 8, !tbaa !15
  br label %resize_buffer.exit2476

resize_buffer.exit2476:                           ; preds = %bb.er, %bb.es
  %i.ajr = phi ptr [ %i.ajq, %bb.es ], [ %i.m, %bb.er ] ; 2 uses
  %i.ajs = getelementptr i8, ptr %i.ajr, i64 %.0.i2471
  store ptr %i.ajs, ptr %i.b, align 8, !tbaa !18
  %i.ajt = getelementptr i8, ptr %i.ajr, i64 %i.aja
  %.not.i2477 = icmp eq ptr %i.ajt, null
  br i1 %.not.i2477, label %resize_buffer.exit2476.thread, label %buffer_size_check.exit2478

resize_buffer.exit2476.thread:                    ; preds = %bb.eq, %resize_buffer.exit2476
  %i.aju = call i64 @rb_enc_str_new(ptr noundef %1, i64 noundef range(i64 1, 0) %2, ptr noundef %.01901) #11
  call void @rb_syserr_fail_str(i32 noundef 34, i64 noundef %i.aju) #13
  unreachable

buffer_size_check.exit2478:                       ; preds = %resize_buffer.exit2476, %bb.eo
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.aja) #11
  %i.ajv = icmp eq i8 %.019153307, 48
  %.not2246 = icmp eq i8 %.019153307, 0
  %i.ajw = or i1 %i.ajv, %.not2246
  %i.ajx = select i1 %i.ajw, i64 4, i64 0
  %i.ajy = getelementptr i8, ptr @.str.2, i64 %i.ajx
  %i.ajz = load i64, ptr %5, align 8, !tbaa !96
  %i.aka = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.ajz, i64 noundef 37, i32 noundef 1, i64 noundef 801) #11
  %i.akb = call i64 @rb_fix2int(i64 noundef %i.aka) #11 ; 0 uses
  %i.akc = load i64, ptr %i.ag, align 8           ; 2 uses
  %i.akd = trunc i64 %i.akc to i32
  %i.ake = lshr i64 %i.akc, 38
  %i.akf = trunc nuw nsw i64 %i.ake to i32
  %i.akg = and i32 %i.akf, 7                      ; 2 uses
  %i.akh = and i32 %i.akd, 511
  %i.aki = icmp eq i32 %i.akg, 0
  %.neg3357 = sub nsw i32 1, %i.akg
  %spec.select.i.i2479.neg3358 = select i1 %i.aki, i32 65530, i32 %.neg3357
  %i.akj = add nuw nsw i32 %i.akh, 6
  %i.akk = add nsw i32 %i.akj, %spec.select.i.i2479.neg3358
  %.lhs.trunc.i2480 = trunc i32 %i.akk to i16
  %i.akl = sdiv i16 %.lhs.trunc.i2480, 7
  %.sext.i2481 = sext i16 %i.akl to i32
  %i.akm = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %0, ptr noundef %i.ajy, i32 noundef %i.aiw, i32 noundef %.sext.i2481) #11 ; 0 uses
  %i.akn = load i64, ptr %i.h, align 8, !tbaa !14
  %i.ako = and i64 %i.akn, 8192
  %.not.i2482 = icmp eq i64 %i.ako, 0
  br i1 %.not.i2482, label %RSTRING_PTR.exit2483, label %bb.et

bb.et:                                            ; preds = %buffer_size_check.exit2478
  %i.akp = load ptr, ptr %i.m, align 8, !tbaa !15
  br label %RSTRING_PTR.exit2483

RSTRING_PTR.exit2483:                             ; preds = %buffer_size_check.exit2478, %bb.et
  %i.akq = phi ptr [ %i.akp, %bb.et ], [ %i.m, %buffer_size_check.exit2478 ] ; 3 uses
  %i.akr = load i64, ptr %i.i, align 8, !tbaa !89
  store ptr %i.akq, ptr %i.a, align 8, !tbaa !18
  %i.aks = call i64 @rb_str_capacity(i64 noundef %0) #12
  %i.akt = getelementptr i8, ptr %i.akq, i64 %i.aks
  store ptr %i.akt, ptr %i.b, align 8, !tbaa !18
  %i.aku = getelementptr i8, ptr %i.akq, i64 %i.akr
  br label %case_conv.exit2868

bb.eu:                                            ; preds = %.lr.ph
  %i.akv = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.akw = ptrtoint ptr %i.bl to i64
  %i.akx = ptrtoint ptr %i.akv to i64
  %i.aky = sub i64 %i.akw, %i.akx                 ; 3 uses
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.aky) #11
  %i.akz = call fastcc i64 @rb_strftime_with_timespec(i64 noundef %0, ptr noundef nonnull @.str.5, i64 noundef 8, ptr noundef %.01901, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef %7, i32 noundef %8, i64 noundef %9)
  %.not2238 = icmp eq i64 %i.akz, 0
  br i1 %.not2238, label %.loopexit2998, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.ala = load i64, ptr %i.h, align 8, !tbaa !14
  %i.alb = and i64 %i.ala, 8192
  %.not.i2484 = icmp eq i64 %i.alb, 0
  br i1 %.not.i2484, label %RSTRING_PTR.exit2485, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.alc = load ptr, ptr %i.m, align 8, !tbaa !15
  br label %RSTRING_PTR.exit2485

RSTRING_PTR.exit2485:                             ; preds = %bb.ev, %bb.ew
  %i.ald = phi ptr [ %i.alc, %bb.ew ], [ %i.m, %bb.ev ] ; 5 uses
  %i.ale = load i64, ptr %i.i, align 8, !tbaa !89 ; 2 uses
  %i.alf = sub i64 %i.ale, %i.aky                 ; 25 uses
  store ptr %i.ald, ptr %i.a, align 8, !tbaa !18
  %i.alg = call i64 @rb_str_capacity(i64 noundef %0) #12
  %i.alh = getelementptr i8, ptr %i.ald, i64 %i.alg
  store ptr %i.alh, ptr %i.b, align 8, !tbaa !18
  %i.ali = icmp sgt i64 %i.alf, 0
  br i1 %i.ali, label %bb.ex, label %case_conv.exit2495

bb.ex:                                            ; preds = %RSTRING_PTR.exit2485
  %i.alj = getelementptr i8, ptr %i.ald, i64 %i.aky ; 46 uses
  %i.alk = and i32 %.019203305, 12
  switch i32 %i.alk, label %case_conv.exit2495 [
    i32 8, label %iter.check5178
    i32 4, label %iter.check5265
  ]

iter.check5265:                                   ; preds = %bb.ex
  %min.iters.check5204 = icmp ult i64 %i.alf, 4
  br i1 %min.iters.check5204, label %.preheader20.i2486.preheader, label %vector.main.loop.iter.check5205

vector.main.loop.iter.check5205:                  ; preds = %iter.check5265
  %min.iters.check5206 = icmp ult i64 %i.alf, 16
  br i1 %min.iters.check5206, label %vec.epilog.ph5269, label %vector.ph5207

vector.ph5207:                                    ; preds = %vector.main.loop.iter.check5205
  %i.all = and i64 %i.alf, 12
  %n.vec5208 = and i64 %i.alf, 9223372036854775792 ; 4 uses
  %i.alm = and i64 %i.alf, 15
  %i.aln = getelementptr i8, ptr %i.alj, i64 %n.vec5208
  br label %vector.body5209

vector.body5209:                                  ; preds = %vector.ph5207, %pred.store.continue5259
  %index5210 = phi i64 [ 0, %vector.ph5207 ], [ %index.next5260, %pred.store.continue5259 ] ; 17 uses
  %next.gep5211.a = getelementptr i8, ptr %i.alj, i64 %index5210 ; 2 uses
  %i.alo = getelementptr i8, ptr %i.alj, i64 %index5210
  %next.gep5212.a = getelementptr i8, ptr %i.alo, i64 1
  %i.alp = getelementptr i8, ptr %i.alj, i64 %index5210
  %next.gep5213.a = getelementptr i8, ptr %i.alp, i64 2
  %i.alq = getelementptr i8, ptr %i.alj, i64 %index5210
  %next.gep5214.a = getelementptr i8, ptr %i.alq, i64 3
  %i.alr = getelementptr i8, ptr %i.alj, i64 %index5210
  %next.gep5215.a = getelementptr i8, ptr %i.alr, i64 4
  %i.als = getelementptr i8, ptr %i.alj, i64 %index5210
  %next.gep5216.a = getelementptr i8, ptr %i.als, i64 5
  %i.alt = getelementptr i8, ptr %i.alj, i64 %index5210
  %next.gep5217.a = getelementptr i8, ptr %i.alt, i64 6
  %i.alu = getelementptr i8, ptr %i.alj, i64 %index5210
  %next.gep5218.a = getelementptr i8, ptr %i.alu, i64 7
  %i.alv = getelementptr i8, ptr %i.alj, i64 %index5210
  %next.gep5219.a = getelementptr i8, ptr %i.alv, i64 8
  %i.alw = getelementptr i8, ptr %i.alj, i64 %index5210
  %next.gep5220.a = getelementptr i8, ptr %i.alw, i64 9
  %i.alx = getelementptr i8, ptr %i.alj, i64 %index5210
  %next.gep5221.a = getelementptr i8, ptr %i.alx, i64 10
  %i.aly = getelementptr i8, ptr %i.alj, i64 %index5210
  %next.gep5222 = getelementptr i8, ptr %i.aly, i64 11
  %i.alz = getelementptr i8, ptr %i.alj, i64 %index5210
  %next.gep5223 = getelementptr i8, ptr %i.alz, i64 12
  %i.ama = getelementptr i8, ptr %i.alj, i64 %index5210
  %next.gep5224 = getelementptr i8, ptr %i.ama, i64 13
  %i.amb = getelementptr i8, ptr %i.alj, i64 %index5210
  %next.gep5225 = getelementptr i8, ptr %i.amb, i64 14
  %i.amc = getelementptr i8, ptr %i.alj, i64 %index5210
  %next.gep5226 = getelementptr i8, ptr %i.amc, i64 15
  %wide.load5227 = load <16 x i8>, ptr %next.gep5211.a, align 1, !tbaa !15 ; 17 uses
  %i.amd = sext <16 x i8> %wide.load5227 to <16 x i32>
  %i.ame = add nsw <16 x i32> %i.amd, splat (i32 -65)
  %i.amf = icmp ult <16 x i32> %i.ame, splat (i32 26) ; 16 uses
  %i.amg = extractelement <16 x i1> %i.amf, i64 0
  br i1 %i.amg, label %pred.store.if5228, label %pred.store.continue5229

pred.store.if5228:                                ; preds = %vector.body5209
  %i.amh = extractelement <16 x i8> %wide.load5227, i64 0
  %i.ami = or i8 %i.amh, 32
  store i8 %i.ami, ptr %next.gep5211.a, align 1, !tbaa !15
  br label %pred.store.continue5229

pred.store.continue5229:                          ; preds = %pred.store.if5228, %vector.body5209
  %i.amj = extractelement <16 x i1> %i.amf, i64 1
  br i1 %i.amj, label %pred.store.if5230, label %pred.store.continue5231

pred.store.if5230:                                ; preds = %pred.store.continue5229
  %i.amk = extractelement <16 x i8> %wide.load5227, i64 1
  %i.aml = or i8 %i.amk, 32
  store i8 %i.aml, ptr %next.gep5212.a, align 1, !tbaa !15
  br label %pred.store.continue5231

pred.store.continue5231:                          ; preds = %pred.store.if5230, %pred.store.continue5229
  %i.amm = extractelement <16 x i1> %i.amf, i64 2
  br i1 %i.amm, label %pred.store.if5232, label %pred.store.continue5233

pred.store.if5232:                                ; preds = %pred.store.continue5231
  %i.amn = extractelement <16 x i8> %wide.load5227, i64 2
  %i.amo = or i8 %i.amn, 32
  store i8 %i.amo, ptr %next.gep5213.a, align 1, !tbaa !15
  br label %pred.store.continue5233

pred.store.continue5233:                          ; preds = %pred.store.if5232, %pred.store.continue5231
  %i.amp = extractelement <16 x i1> %i.amf, i64 3
  br i1 %i.amp, label %pred.store.if5234, label %pred.store.continue5235

pred.store.if5234:                                ; preds = %pred.store.continue5233
  %i.amq = extractelement <16 x i8> %wide.load5227, i64 3
  %i.amr = or i8 %i.amq, 32
  store i8 %i.amr, ptr %next.gep5214.a, align 1, !tbaa !15
  br label %pred.store.continue5235

pred.store.continue5235:                          ; preds = %pred.store.if5234, %pred.store.continue5233
  %i.ams = extractelement <16 x i1> %i.amf, i64 4
  br i1 %i.ams, label %pred.store.if5236, label %pred.store.continue5237

pred.store.if5236:                                ; preds = %pred.store.continue5235
  %i.amt = extractelement <16 x i8> %wide.load5227, i64 4
  %i.amu = or i8 %i.amt, 32
  store i8 %i.amu, ptr %next.gep5215.a, align 1, !tbaa !15
  br label %pred.store.continue5237

pred.store.continue5237:                          ; preds = %pred.store.if5236, %pred.store.continue5235
  %i.amv = extractelement <16 x i1> %i.amf, i64 5
  br i1 %i.amv, label %pred.store.if5238, label %pred.store.continue5239

pred.store.if5238:                                ; preds = %pred.store.continue5237
  %i.amw = extractelement <16 x i8> %wide.load5227, i64 5
  %i.amx = or i8 %i.amw, 32
  store i8 %i.amx, ptr %next.gep5216.a, align 1, !tbaa !15
  br label %pred.store.continue5239

pred.store.continue5239:                          ; preds = %pred.store.if5238, %pred.store.continue5237
  %i.amy = extractelement <16 x i1> %i.amf, i64 6
  br i1 %i.amy, label %pred.store.if5240, label %pred.store.continue5241

pred.store.if5240:                                ; preds = %pred.store.continue5239
  %i.amz = extractelement <16 x i8> %wide.load5227, i64 6
  %i.ana = or i8 %i.amz, 32
  store i8 %i.ana, ptr %next.gep5217.a, align 1, !tbaa !15
  br label %pred.store.continue5241

pred.store.continue5241:                          ; preds = %pred.store.if5240, %pred.store.continue5239
  %i.anb = extractelement <16 x i1> %i.amf, i64 7
  br i1 %i.anb, label %pred.store.if5242, label %pred.store.continue5243

pred.store.if5242:                                ; preds = %pred.store.continue5241
  %i.anc = extractelement <16 x i8> %wide.load5227, i64 7
  %i.and = or i8 %i.anc, 32
  store i8 %i.and, ptr %next.gep5218.a, align 1, !tbaa !15
  br label %pred.store.continue5243

pred.store.continue5243:                          ; preds = %pred.store.if5242, %pred.store.continue5241
  %i.ane = extractelement <16 x i1> %i.amf, i64 8
  br i1 %i.ane, label %pred.store.if5244, label %pred.store.continue5245

pred.store.if5244:                                ; preds = %pred.store.continue5243
  %i.anf = extractelement <16 x i8> %wide.load5227, i64 8
  %i.ang = or i8 %i.anf, 32
  store i8 %i.ang, ptr %next.gep5219.a, align 1, !tbaa !15
  br label %pred.store.continue5245

pred.store.continue5245:                          ; preds = %pred.store.if5244, %pred.store.continue5243
  %i.anh = extractelement <16 x i1> %i.amf, i64 9
  br i1 %i.anh, label %pred.store.if5246, label %pred.store.continue5247

pred.store.if5246:                                ; preds = %pred.store.continue5245
  %i.ani = extractelement <16 x i8> %wide.load5227, i64 9
  %i.anj = or i8 %i.ani, 32
  store i8 %i.anj, ptr %next.gep5220.a, align 1, !tbaa !15
  br label %pred.store.continue5247

pred.store.continue5247:                          ; preds = %pred.store.if5246, %pred.store.continue5245
  %i.ank = extractelement <16 x i1> %i.amf, i64 10
  br i1 %i.ank, label %pred.store.if5248, label %pred.store.continue5249

pred.store.if5248:                                ; preds = %pred.store.continue5247
  %i.anl = extractelement <16 x i8> %wide.load5227, i64 10
  %i.anm = or i8 %i.anl, 32
  store i8 %i.anm, ptr %next.gep5221.a, align 1, !tbaa !15
  br label %pred.store.continue5249

pred.store.continue5249:                          ; preds = %pred.store.if5248, %pred.store.continue5247
  %i.ann = extractelement <16 x i1> %i.amf, i64 11
  br i1 %i.ann, label %pred.store.if5250, label %pred.store.continue5251

pred.store.if5250:                                ; preds = %pred.store.continue5249
  %i.ano = extractelement <16 x i8> %wide.load5227, i64 11
  %i.anp = or i8 %i.ano, 32
  store i8 %i.anp, ptr %next.gep5222, align 1, !tbaa !15
  br label %pred.store.continue5251

pred.store.continue5251:                          ; preds = %pred.store.if5250, %pred.store.continue5249
  %i.anq = extractelement <16 x i1> %i.amf, i64 12
  br i1 %i.anq, label %pred.store.if5252, label %pred.store.continue5253

pred.store.if5252:                                ; preds = %pred.store.continue5251
  %i.anr = extractelement <16 x i8> %wide.load5227, i64 12
  %i.ans = or i8 %i.anr, 32
  store i8 %i.ans, ptr %next.gep5223, align 1, !tbaa !15
  br label %pred.store.continue5253

pred.store.continue5253:                          ; preds = %pred.store.if5252, %pred.store.continue5251
  %i.ant = extractelement <16 x i1> %i.amf, i64 13
end_hunk_2
begin_hunk_3_@rb_strftime_with_timespec:bb.a
  %i.ara = extractelement <16 x i1> %i.aps, i64 11
  br i1 %i.ara, label %pred.store.if5163, label %pred.store.continue5164

pred.store.if5163:                                ; preds = %pred.store.continue5162
  %i.arb = extractelement <16 x i8> %wide.load5140, i64 11
  %i.arc = and i8 %i.arb, 95
  store i8 %i.arc, ptr %next.gep5135, align 1, !tbaa !15
  br label %pred.store.continue5164

pred.store.continue5164:                          ; preds = %pred.store.if5163, %pred.store.continue5162
  %i.ard = extractelement <16 x i1> %i.aps, i64 12
  br i1 %i.ard, label %pred.store.if5165, label %pred.store.continue5166

pred.store.if5165:                                ; preds = %pred.store.continue5164
  %i.are = extractelement <16 x i8> %wide.load5140, i64 12
  %i.arf = and i8 %i.are, 95
  store i8 %i.arf, ptr %next.gep5136, align 1, !tbaa !15
  br label %pred.store.continue5166

pred.store.continue5166:                          ; preds = %pred.store.if5165, %pred.store.continue5164
  %i.arg = extractelement <16 x i1> %i.aps, i64 13
  br i1 %i.arg, label %pred.store.if5167, label %pred.store.continue5168

pred.store.if5167:                                ; preds = %pred.store.continue5166
  %i.arh = extractelement <16 x i8> %wide.load5140, i64 13
  %i.ari = and i8 %i.arh, 95
  store i8 %i.ari, ptr %next.gep5137, align 1, !tbaa !15
  br label %pred.store.continue5168

pred.store.continue5168:                          ; preds = %pred.store.if5167, %pred.store.continue5166
  %i.arj = extractelement <16 x i1> %i.aps, i64 14
  br i1 %i.arj, label %pred.store.if5169, label %pred.store.continue5170

pred.store.if5169:                                ; preds = %pred.store.continue5168
  %i.ark = extractelement <16 x i8> %wide.load5140, i64 14
  %i.arl = and i8 %i.ark, 95
  store i8 %i.arl, ptr %next.gep5138, align 1, !tbaa !15
  br label %pred.store.continue5170

pred.store.continue5170:                          ; preds = %pred.store.if5169, %pred.store.continue5168
  %i.arm = extractelement <16 x i1> %i.aps, i64 15
  br i1 %i.arm, label %pred.store.if5171, label %pred.store.continue5172

pred.store.if5171:                                ; preds = %pred.store.continue5170
  %i.arn = extractelement <16 x i8> %wide.load5140, i64 15
  %i.aro = and i8 %i.arn, 95
  store i8 %i.aro, ptr %next.gep5139, align 1, !tbaa !15
  br label %pred.store.continue5172

pred.store.continue5172:                          ; preds = %pred.store.if5171, %pred.store.continue5170
  %index.next5173 = add nuw i64 %index5123, 16    ; 2 uses
  %i.arp = icmp eq i64 %index.next5173, %n.vec5121
  br i1 %i.arp, label %middle.block5174, label %vector.body5122, !llvm.loop !30

middle.block5174:                                 ; preds = %pred.store.continue5172
  %cmp.n5175 = icmp eq i64 %i.alf, %n.vec5121
  br i1 %cmp.n5175, label %case_conv.exit2495, label %vec.epilog.iter.check5180

vec.epilog.iter.check5180:                        ; preds = %middle.block5174
  %min.epilog.iters.check5181 = icmp eq i64 %i.aoy, 0
  br i1 %min.epilog.iters.check5181, label %.preheader.i2491.preheader, label %vec.epilog.ph5182, !prof !92

vec.epilog.ph5182:                                ; preds = %vector.main.loop.iter.check5118, %vec.epilog.iter.check5180
  %vec.epilog.resume.val5176 = phi i64 [ %n.vec5121, %vec.epilog.iter.check5180 ], [ 0, %vector.main.loop.iter.check5118 ]
  %n.vec5183 = and i64 %i.alf, 9223372036854775804 ; 3 uses
  %i.arq = and i64 %i.alf, 3
  %i.arr = getelementptr i8, ptr %i.alj, i64 %n.vec5183
  br label %vec.epilog.vector.body5184

vec.epilog.vector.body5184:                       ; preds = %pred.store.continue5198, %vec.epilog.ph5182
  %index5185 = phi i64 [ %vec.epilog.resume.val5176, %vec.epilog.ph5182 ], [ %index.next5199, %pred.store.continue5198 ] ; 5 uses
  %next.gep5186 = getelementptr i8, ptr %i.alj, i64 %index5185 ; 2 uses
  %i.ars = getelementptr i8, ptr %i.alj, i64 %index5185
  %next.gep5187 = getelementptr i8, ptr %i.ars, i64 1
  %i.art = getelementptr i8, ptr %i.alj, i64 %index5185
  %next.gep5188 = getelementptr i8, ptr %i.art, i64 2
  %i.aru = getelementptr i8, ptr %i.alj, i64 %index5185
  %next.gep5189 = getelementptr i8, ptr %i.aru, i64 3
  %wide.load5190 = load <4 x i8>, ptr %next.gep5186, align 1, !tbaa !15 ; 5 uses
  %i.arv = sext <4 x i8> %wide.load5190 to <4 x i32>
  %i.arw = add nsw <4 x i32> %i.arv, splat (i32 -97)
  %i.arx = icmp ult <4 x i32> %i.arw, splat (i32 26) ; 4 uses
  %i.ary = extractelement <4 x i1> %i.arx, i64 0
  br i1 %i.ary, label %pred.store.if5191, label %pred.store.continue5192

pred.store.if5191:                                ; preds = %vec.epilog.vector.body5184
  %i.arz = extractelement <4 x i8> %wide.load5190, i64 0
  %i.asa = and i8 %i.arz, 95
  store i8 %i.asa, ptr %next.gep5186, align 1, !tbaa !15
  br label %pred.store.continue5192

pred.store.continue5192:                          ; preds = %pred.store.if5191, %vec.epilog.vector.body5184
  %i.asb = extractelement <4 x i1> %i.arx, i64 1
  br i1 %i.asb, label %pred.store.if5193, label %pred.store.continue5194

pred.store.if5193:                                ; preds = %pred.store.continue5192
  %i.asc = extractelement <4 x i8> %wide.load5190, i64 1
  %i.asd = and i8 %i.asc, 95
  store i8 %i.asd, ptr %next.gep5187, align 1, !tbaa !15
  br label %pred.store.continue5194

pred.store.continue5194:                          ; preds = %pred.store.if5193, %pred.store.continue5192
  %i.ase = extractelement <4 x i1> %i.arx, i64 2
  br i1 %i.ase, label %pred.store.if5195, label %pred.store.continue5196

pred.store.if5195:                                ; preds = %pred.store.continue5194
  %i.asf = extractelement <4 x i8> %wide.load5190, i64 2
  %i.asg = and i8 %i.asf, 95
  store i8 %i.asg, ptr %next.gep5188, align 1, !tbaa !15
  br label %pred.store.continue5196

pred.store.continue5196:                          ; preds = %pred.store.if5195, %pred.store.continue5194
  %i.ash = extractelement <4 x i1> %i.arx, i64 3
  br i1 %i.ash, label %pred.store.if5197, label %pred.store.continue5198

pred.store.if5197:                                ; preds = %pred.store.continue5196
  %i.asi = extractelement <4 x i8> %wide.load5190, i64 3
  %i.asj = and i8 %i.asi, 95
  store i8 %i.asj, ptr %next.gep5189, align 1, !tbaa !15
  br label %pred.store.continue5198

pred.store.continue5198:                          ; preds = %pred.store.if5197, %pred.store.continue5196
  %index.next5199 = add nuw i64 %index5185, 4     ; 2 uses
  %i.ask = icmp eq i64 %index.next5199, %n.vec5183
  br i1 %i.ask, label %vec.epilog.middle.block5200, label %vec.epilog.vector.body5184, !llvm.loop !31

vec.epilog.middle.block5200:                      ; preds = %pred.store.continue5198
  %cmp.n5201 = icmp eq i64 %i.alf, %n.vec5183
  br i1 %cmp.n5201, label %case_conv.exit2495, label %.preheader.i2491.preheader

.preheader.i2491.preheader:                       ; preds = %iter.check5178, %vec.epilog.iter.check5180, %vec.epilog.middle.block5200
  %.013.i2492.ph = phi i64 [ %i.alf, %iter.check5178 ], [ %i.aoz, %vec.epilog.iter.check5180 ], [ %i.arq, %vec.epilog.middle.block5200 ]
  %.0.i2493.ph = phi ptr [ %i.alj, %iter.check5178 ], [ %i.apa, %vec.epilog.iter.check5180 ], [ %i.arr, %vec.epilog.middle.block5200 ]
  br label %.preheader.i2491

.preheader.i2491:                                 ; preds = %.preheader.i2491.preheader, %bb.ez
  %.013.i2492 = phi i64 [ %i.asr, %bb.ez ], [ %.013.i2492.ph, %.preheader.i2491.preheader ]
  %.0.i2493 = phi ptr [ %i.asq, %bb.ez ], [ %.0.i2493.ph, %.preheader.i2491.preheader ] ; 3 uses
  %i.asl = load i8, ptr %.0.i2493, align 1, !tbaa !15 ; 2 uses
  %i.asm = sext i8 %i.asl to i32
  %i.asn = add nsw i32 %i.asm, -123
  %i.aso = icmp ult i32 %i.asn, -26
  br i1 %i.aso, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %.preheader.i2491
  %i.asp = and i8 %i.asl, 95
  store i8 %i.asp, ptr %.0.i2493, align 1, !tbaa !15
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %.preheader.i2491
  %i.asq = getelementptr i8, ptr %.0.i2493, i64 1
  %i.asr = add nsw i64 %.013.i2492, -1            ; 2 uses
  %.not19.i2494 = icmp eq i64 %i.asr, 0
  br i1 %.not19.i2494, label %case_conv.exit2495, label %.preheader.i2491, !llvm.loop !32

.preheader20.i2486:                               ; preds = %.preheader20.i2486.preheader, %bb.fb
  %.114.i2487 = phi i64 [ %i.asy, %bb.fb ], [ %.114.i2487.ph, %.preheader20.i2486.preheader ]
  %.1.i2488 = phi ptr [ %i.asx, %bb.fb ], [ %.1.i2488.ph, %.preheader20.i2486.preheader ] ; 3 uses
  %i.ass = load i8, ptr %.1.i2488, align 1, !tbaa !15 ; 2 uses
  %i.ast = sext i8 %i.ass to i32
  %i.asu = add nsw i32 %i.ast, -91
  %i.asv = icmp ult i32 %i.asu, -26
  br i1 %i.asv, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %.preheader20.i2486
  %i.asw = or i8 %i.ass, 32
  store i8 %i.asw, ptr %.1.i2488, align 1, !tbaa !15
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fa, %.preheader20.i2486
  %i.asx = getelementptr i8, ptr %.1.i2488, i64 1
  %i.asy = add nsw i64 %.114.i2487, -1            ; 2 uses
  %.not17.i2489 = icmp eq i64 %i.asy, 0
  br i1 %.not17.i2489, label %case_conv.exit2495, label %.preheader20.i2486, !llvm.loop !33

case_conv.exit2495:                               ; preds = %bb.fb, %bb.ez, %middle.block5261, %vec.epilog.middle.block5287, %middle.block5174, %vec.epilog.middle.block5200, %bb.ex, %RSTRING_PTR.exit2485
  %i.asz = sext i32 %.019283304 to i64            ; 5 uses
  %i.ata = icmp slt i64 %i.alf, %i.asz
  %i.atb = getelementptr i8, ptr %i.ald, i64 %i.ale ; 5 uses
  br i1 %i.ata, label %bb.fc, label %case_conv.exit2868

bb.fc:                                            ; preds = %case_conv.exit2495
  %i.atc = load ptr, ptr %i.b, align 8, !tbaa !18 ; 2 uses
  %.not2239 = icmp ult ptr %i.atb, %i.atc
  br i1 %.not2239, label %bb.fd, label %._crit_edge3708

._crit_edge3708:                                  ; preds = %bb.fc
  %.pre3750 = ptrtoint ptr %i.atb to i64
  br label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  %i.atd = ptrtoint ptr %i.atc to i64
  %i.ate = ptrtoint ptr %i.atb to i64             ; 2 uses
  %i.atf = xor i64 %i.ate, -1
  %i.atg = add i64 %i.atd, %i.atf
  %.not2240 = icmp sgt i64 %i.atg, %i.asz
  br i1 %.not2240, label %buffer_size_check.exit2503, label %bb.fe

bb.fe:                                            ; preds = %._crit_edge3708, %bb.fd
  %.pre-phi3751 = phi i64 [ %.pre3750, %._crit_edge3708 ], [ %i.ate, %bb.fd ]
  %i.ath = ptrtoint ptr %i.ald to i64
  %i.ati = sub i64 %.pre-phi3751, %i.ath          ; 5 uses
  %i.atj = shl nsw i64 %i.asz, 1
  %i.atk = add i64 %i.ati, %i.atj
  %i.atl = call i64 @rb_str_capacity(i64 noundef %0) #12
  br label %bb.ff

bb.ff:                                            ; preds = %bb.ff, %bb.fe
  %.0.i2496 = phi i64 [ %i.atl, %bb.fe ], [ %i.atn, %bb.ff ] ; 6 uses
  %i.atm = icmp ult i64 %.0.i2496, %i.atk
  %i.atn = shl i64 %.0.i2496, 1
  br i1 %i.atm, label %bb.ff, label %bb.fg, !llvm.loop !0

bb.fg:                                            ; preds = %bb.ff
  %i.ato = icmp ult i64 %.0.i2496, %i.ati
  %i.atp = icmp ugt i64 %.0.i2496, %9
  %or.cond.i2497 = or i1 %i.ato, %i.atp
  br i1 %or.cond.i2497, label %resize_buffer.exit2501.thread, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.ati) #11
  %i.atq = sub nuw i64 %.0.i2496, %i.ati
  call void @rb_str_modify_expand(i64 noundef %0, i64 noundef %i.atq) #11
  %i.atr = load i64, ptr %i.h, align 8, !tbaa !14
  %i.ats = and i64 %i.atr, 8192
  %.not.i.i2498 = icmp eq i64 %i.ats, 0
  br i1 %.not.i.i2498, label %resize_buffer.exit2501, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.att = load ptr, ptr %i.m, align 8, !tbaa !15
  br label %resize_buffer.exit2501

resize_buffer.exit2501:                           ; preds = %bb.fh, %bb.fi
  %i.atu = phi ptr [ %i.att, %bb.fi ], [ %i.m, %bb.fh ] ; 3 uses
  %i.atv = getelementptr i8, ptr %i.atu, i64 %.0.i2496
  store ptr %i.atv, ptr %i.b, align 8, !tbaa !18
  store ptr %i.atu, ptr %i.a, align 8, !tbaa !18
  %i.atw = getelementptr i8, ptr %i.atu, i64 %i.ati ; 2 uses
  %.not.i2502 = icmp eq ptr %i.atw, null
  br i1 %.not.i2502, label %resize_buffer.exit2501.thread, label %buffer_size_check.exit2503

resize_buffer.exit2501.thread:                    ; preds = %bb.fg, %resize_buffer.exit2501
  %i.atx = call i64 @rb_enc_str_new(ptr noundef %1, i64 noundef range(i64 1, 0) %2, ptr noundef %.01901) #11
  call void @rb_syserr_fail_str(i32 noundef 34, i64 noundef %i.atx) #13
  unreachable

buffer_size_check.exit2503:                       ; preds = %resize_buffer.exit2501, %bb.fd
  %.8 = phi ptr [ %i.atb, %bb.fd ], [ %i.atw, %resize_buffer.exit2501 ]
  %i.aty = sub i64 0, %i.alf                      ; 2 uses
  %i.atz = getelementptr i8, ptr %.8, i64 %i.aty  ; 3 uses
  %i.aua = getelementptr i8, ptr %i.atz, i64 %i.asz ; 2 uses
  %i.aub = getelementptr i8, ptr %i.aua, i64 %i.aty
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.aub, ptr noundef nonnull align 1 %i.atz, i64 noundef range(i64 -9223372036854775808, 2147483647) %i.alf, i1 noundef false) #11
  %.not2241 = icmp eq i8 %.019153307, 0
  %narrow2242 = select i1 %.not2241, i8 32, i8 %.019153307
  %i.auc = sub i64 %i.asz, %i.alf
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.atz, i8 noundef %narrow2242, i64 noundef %i.auc, i1 noundef false) #11
  br label %case_conv.exit2868

bb.fj:                                            ; preds = %.lr.ph
  %i.aud = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.aue = ptrtoint ptr %i.bl to i64
  %i.auf = ptrtoint ptr %i.aud to i64
  %i.aug = sub i64 %i.aue, %i.auf                 ; 3 uses
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.aug) #11
  %i.auh = call fastcc i64 @rb_strftime_with_timespec(i64 noundef %0, ptr noundef nonnull @.str.6, i64 noundef 8, ptr noundef %.01901, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef %7, i32 noundef %8, i64 noundef %9)
  %.not2233 = icmp eq i64 %i.auh, 0
  br i1 %.not2233, label %.loopexit2998, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.aui = load i64, ptr %i.h, align 8, !tbaa !14
  %i.auj = and i64 %i.aui, 8192
  %.not.i2504 = icmp eq i64 %i.auj, 0
  br i1 %.not.i2504, label %RSTRING_PTR.exit2505, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.auk = load ptr, ptr %i.m, align 8, !tbaa !15
  br label %RSTRING_PTR.exit2505

RSTRING_PTR.exit2505:                             ; preds = %bb.fk, %bb.fl
  %i.aul = phi ptr [ %i.auk, %bb.fl ], [ %i.m, %bb.fk ] ; 5 uses
  %i.aum = load i64, ptr %i.i, align 8, !tbaa !89 ; 2 uses
  %i.aun = sub i64 %i.aum, %i.aug                 ; 25 uses
  store ptr %i.aul, ptr %i.a, align 8, !tbaa !18
  %i.auo = call i64 @rb_str_capacity(i64 noundef %0) #12
  %i.aup = getelementptr i8, ptr %i.aul, i64 %i.auo
  store ptr %i.aup, ptr %i.b, align 8, !tbaa !18
  %i.auq = icmp sgt i64 %i.aun, 0
  br i1 %i.auq, label %bb.fm, label %case_conv.exit2515

bb.fm:                                            ; preds = %RSTRING_PTR.exit2505
  %i.aur = getelementptr i8, ptr %i.aul, i64 %i.aug ; 46 uses
  %i.aus = and i32 %.019203305, 12
  switch i32 %i.aus, label %case_conv.exit2515 [
    i32 8, label %iter.check5352
    i32 4, label %iter.check5439
  ]

iter.check5439:                                   ; preds = %bb.fm
  %min.iters.check5378 = icmp ult i64 %i.aun, 4
  br i1 %min.iters.check5378, label %.preheader20.i2506.preheader, label %vector.main.loop.iter.check5379

vector.main.loop.iter.check5379:                  ; preds = %iter.check5439
  %min.iters.check5380 = icmp ult i64 %i.aun, 16
  br i1 %min.iters.check5380, label %vec.epilog.ph5443, label %vector.ph5381

vector.ph5381:                                    ; preds = %vector.main.loop.iter.check5379
  %i.aut = and i64 %i.aun, 12
  %n.vec5382 = and i64 %i.aun, 9223372036854775792 ; 4 uses
  %i.auu = and i64 %i.aun, 15
  %i.auv = getelementptr i8, ptr %i.aur, i64 %n.vec5382
  br label %vector.body5383

vector.body5383:                                  ; preds = %vector.ph5381, %pred.store.continue5433
  %index5384 = phi i64 [ 0, %vector.ph5381 ], [ %index.next5434, %pred.store.continue5433 ] ; 17 uses
  %next.gep5385.a = getelementptr i8, ptr %i.aur, i64 %index5384 ; 2 uses
  %i.auw = getelementptr i8, ptr %i.aur, i64 %index5384
  %next.gep5386.a = getelementptr i8, ptr %i.auw, i64 1
  %i.aux = getelementptr i8, ptr %i.aur, i64 %index5384
  %next.gep5387.a = getelementptr i8, ptr %i.aux, i64 2
  %i.auy = getelementptr i8, ptr %i.aur, i64 %index5384
  %next.gep5388.a = getelementptr i8, ptr %i.auy, i64 3
  %i.auz = getelementptr i8, ptr %i.aur, i64 %index5384
  %next.gep5389.a = getelementptr i8, ptr %i.auz, i64 4
  %i.ava = getelementptr i8, ptr %i.aur, i64 %index5384
  %next.gep5390.a = getelementptr i8, ptr %i.ava, i64 5
  %i.avb = getelementptr i8, ptr %i.aur, i64 %index5384
  %next.gep5391.a = getelementptr i8, ptr %i.avb, i64 6
  %i.avc = getelementptr i8, ptr %i.aur, i64 %index5384
  %next.gep5392.a = getelementptr i8, ptr %i.avc, i64 7
  %i.avd = getelementptr i8, ptr %i.aur, i64 %index5384
  %next.gep5393.a = getelementptr i8, ptr %i.avd, i64 8
  %i.ave = getelementptr i8, ptr %i.aur, i64 %index5384
  %next.gep5394.a = getelementptr i8, ptr %i.ave, i64 9
  %i.avf = getelementptr i8, ptr %i.aur, i64 %index5384
  %next.gep5395.a = getelementptr i8, ptr %i.avf, i64 10
  %i.avg = getelementptr i8, ptr %i.aur, i64 %index5384
  %next.gep5396 = getelementptr i8, ptr %i.avg, i64 11
  %i.avh = getelementptr i8, ptr %i.aur, i64 %index5384
  %next.gep5397 = getelementptr i8, ptr %i.avh, i64 12
  %i.avi = getelementptr i8, ptr %i.aur, i64 %index5384
  %next.gep5398 = getelementptr i8, ptr %i.avi, i64 13
  %i.avj = getelementptr i8, ptr %i.aur, i64 %index5384
  %next.gep5399 = getelementptr i8, ptr %i.avj, i64 14
  %i.avk = getelementptr i8, ptr %i.aur, i64 %index5384
  %next.gep5400 = getelementptr i8, ptr %i.avk, i64 15
  %wide.load5401 = load <16 x i8>, ptr %next.gep5385.a, align 1, !tbaa !15 ; 17 uses
  %i.avl = sext <16 x i8> %wide.load5401 to <16 x i32>
  %i.avm = add nsw <16 x i32> %i.avl, splat (i32 -65)
  %i.avn = icmp ult <16 x i32> %i.avm, splat (i32 26) ; 16 uses
  %i.avo = extractelement <16 x i1> %i.avn, i64 0
  br i1 %i.avo, label %pred.store.if5402, label %pred.store.continue5403

pred.store.if5402:                                ; preds = %vector.body5383
  %i.avp = extractelement <16 x i8> %wide.load5401, i64 0
  %i.avq = or i8 %i.avp, 32
  store i8 %i.avq, ptr %next.gep5385.a, align 1, !tbaa !15
  br label %pred.store.continue5403

pred.store.continue5403:                          ; preds = %pred.store.if5402, %vector.body5383
  %i.avr = extractelement <16 x i1> %i.avn, i64 1
  br i1 %i.avr, label %pred.store.if5404, label %pred.store.continue5405

pred.store.if5404:                                ; preds = %pred.store.continue5403
  %i.avs = extractelement <16 x i8> %wide.load5401, i64 1
  %i.avt = or i8 %i.avs, 32
  store i8 %i.avt, ptr %next.gep5386.a, align 1, !tbaa !15
  br label %pred.store.continue5405

pred.store.continue5405:                          ; preds = %pred.store.if5404, %pred.store.continue5403
  %i.avu = extractelement <16 x i1> %i.avn, i64 2
  br i1 %i.avu, label %pred.store.if5406, label %pred.store.continue5407

pred.store.if5406:                                ; preds = %pred.store.continue5405
  %i.avv = extractelement <16 x i8> %wide.load5401, i64 2
  %i.avw = or i8 %i.avv, 32
  store i8 %i.avw, ptr %next.gep5387.a, align 1, !tbaa !15
  br label %pred.store.continue5407

pred.store.continue5407:                          ; preds = %pred.store.if5406, %pred.store.continue5405
  %i.avx = extractelement <16 x i1> %i.avn, i64 3
  br i1 %i.avx, label %pred.store.if5408, label %pred.store.continue5409

pred.store.if5408:                                ; preds = %pred.store.continue5407
  %i.avy = extractelement <16 x i8> %wide.load5401, i64 3
  %i.avz = or i8 %i.avy, 32
  store i8 %i.avz, ptr %next.gep5388.a, align 1, !tbaa !15
  br label %pred.store.continue5409

pred.store.continue5409:                          ; preds = %pred.store.if5408, %pred.store.continue5407
  %i.awa = extractelement <16 x i1> %i.avn, i64 4
  br i1 %i.awa, label %pred.store.if5410, label %pred.store.continue5411

pred.store.if5410:                                ; preds = %pred.store.continue5409
  %i.awb = extractelement <16 x i8> %wide.load5401, i64 4
  %i.awc = or i8 %i.awb, 32
  store i8 %i.awc, ptr %next.gep5389.a, align 1, !tbaa !15
  br label %pred.store.continue5411

pred.store.continue5411:                          ; preds = %pred.store.if5410, %pred.store.continue5409
  %i.awd = extractelement <16 x i1> %i.avn, i64 5
  br i1 %i.awd, label %pred.store.if5412, label %pred.store.continue5413

pred.store.if5412:                                ; preds = %pred.store.continue5411
  %i.awe = extractelement <16 x i8> %wide.load5401, i64 5
  %i.awf = or i8 %i.awe, 32
  store i8 %i.awf, ptr %next.gep5390.a, align 1, !tbaa !15
  br label %pred.store.continue5413

pred.store.continue5413:                          ; preds = %pred.store.if5412, %pred.store.continue5411
  %i.awg = extractelement <16 x i1> %i.avn, i64 6
  br i1 %i.awg, label %pred.store.if5414, label %pred.store.continue5415

pred.store.if5414:                                ; preds = %pred.store.continue5413
  %i.awh = extractelement <16 x i8> %wide.load5401, i64 6
  %i.awi = or i8 %i.awh, 32
  store i8 %i.awi, ptr %next.gep5391.a, align 1, !tbaa !15
  br label %pred.store.continue5415

pred.store.continue5415:                          ; preds = %pred.store.if5414, %pred.store.continue5413
  %i.awj = extractelement <16 x i1> %i.avn, i64 7
  br i1 %i.awj, label %pred.store.if5416, label %pred.store.continue5417

pred.store.if5416:                                ; preds = %pred.store.continue5415
  %i.awk = extractelement <16 x i8> %wide.load5401, i64 7
  %i.awl = or i8 %i.awk, 32
  store i8 %i.awl, ptr %next.gep5392.a, align 1, !tbaa !15
  br label %pred.store.continue5417

pred.store.continue5417:                          ; preds = %pred.store.if5416, %pred.store.continue5415
  %i.awm = extractelement <16 x i1> %i.avn, i64 8
  br i1 %i.awm, label %pred.store.if5418, label %pred.store.continue5419

pred.store.if5418:                                ; preds = %pred.store.continue5417
  %i.awn = extractelement <16 x i8> %wide.load5401, i64 8
  %i.awo = or i8 %i.awn, 32
  store i8 %i.awo, ptr %next.gep5393.a, align 1, !tbaa !15
  br label %pred.store.continue5419

pred.store.continue5419:                          ; preds = %pred.store.if5418, %pred.store.continue5417
  %i.awp = extractelement <16 x i1> %i.avn, i64 9
  br i1 %i.awp, label %pred.store.if5420, label %pred.store.continue5421

pred.store.if5420:                                ; preds = %pred.store.continue5419
  %i.awq = extractelement <16 x i8> %wide.load5401, i64 9
  %i.awr = or i8 %i.awq, 32
  store i8 %i.awr, ptr %next.gep5394.a, align 1, !tbaa !15
  br label %pred.store.continue5421

pred.store.continue5421:                          ; preds = %pred.store.if5420, %pred.store.continue5419
  %i.aws = extractelement <16 x i1> %i.avn, i64 10
  br i1 %i.aws, label %pred.store.if5422, label %pred.store.continue5423

pred.store.if5422:                                ; preds = %pred.store.continue5421
  %i.awt = extractelement <16 x i8> %wide.load5401, i64 10
  %i.awu = or i8 %i.awt, 32
  store i8 %i.awu, ptr %next.gep5395.a, align 1, !tbaa !15
  br label %pred.store.continue5423

pred.store.continue5423:                          ; preds = %pred.store.if5422, %pred.store.continue5421
  %i.awv = extractelement <16 x i1> %i.avn, i64 11
  br i1 %i.awv, label %pred.store.if5424, label %pred.store.continue5425

pred.store.if5424:                                ; preds = %pred.store.continue5423
  %i.aww = extractelement <16 x i8> %wide.load5401, i64 11
  %i.awx = or i8 %i.aww, 32
  store i8 %i.awx, ptr %next.gep5396, align 1, !tbaa !15
  br label %pred.store.continue5425

pred.store.continue5425:                          ; preds = %pred.store.if5424, %pred.store.continue5423
  %i.awy = extractelement <16 x i1> %i.avn, i64 12
  br i1 %i.awy, label %pred.store.if5426, label %pred.store.continue5427

pred.store.if5426:                                ; preds = %pred.store.continue5425
  %i.awz = extractelement <16 x i8> %wide.load5401, i64 12
  %i.axa = or i8 %i.awz, 32
  store i8 %i.axa, ptr %next.gep5397, align 1, !tbaa !15
  br label %pred.store.continue5427

pred.store.continue5427:                          ; preds = %pred.store.if5426, %pred.store.continue5425
  %i.axb = extractelement <16 x i1> %i.avn, i64 13
end_hunk_3
begin_hunk_4_@rb_strftime_with_timespec:bb.a
  %i.bai = extractelement <16 x i1> %i.aza, i64 11
  br i1 %i.bai, label %pred.store.if5337, label %pred.store.continue5338

pred.store.if5337:                                ; preds = %pred.store.continue5336
  %i.baj = extractelement <16 x i8> %wide.load5314, i64 11
  %i.bak = and i8 %i.baj, 95
  store i8 %i.bak, ptr %next.gep5309, align 1, !tbaa !15
  br label %pred.store.continue5338

pred.store.continue5338:                          ; preds = %pred.store.if5337, %pred.store.continue5336
  %i.bal = extractelement <16 x i1> %i.aza, i64 12
  br i1 %i.bal, label %pred.store.if5339, label %pred.store.continue5340

pred.store.if5339:                                ; preds = %pred.store.continue5338
  %i.bam = extractelement <16 x i8> %wide.load5314, i64 12
  %i.ban = and i8 %i.bam, 95
  store i8 %i.ban, ptr %next.gep5310, align 1, !tbaa !15
  br label %pred.store.continue5340

pred.store.continue5340:                          ; preds = %pred.store.if5339, %pred.store.continue5338
  %i.bao = extractelement <16 x i1> %i.aza, i64 13
  br i1 %i.bao, label %pred.store.if5341, label %pred.store.continue5342

pred.store.if5341:                                ; preds = %pred.store.continue5340
  %i.bap = extractelement <16 x i8> %wide.load5314, i64 13
  %i.baq = and i8 %i.bap, 95
  store i8 %i.baq, ptr %next.gep5311, align 1, !tbaa !15
  br label %pred.store.continue5342

pred.store.continue5342:                          ; preds = %pred.store.if5341, %pred.store.continue5340
  %i.bar = extractelement <16 x i1> %i.aza, i64 14
  br i1 %i.bar, label %pred.store.if5343, label %pred.store.continue5344

pred.store.if5343:                                ; preds = %pred.store.continue5342
  %i.bas = extractelement <16 x i8> %wide.load5314, i64 14
  %i.bat = and i8 %i.bas, 95
  store i8 %i.bat, ptr %next.gep5312, align 1, !tbaa !15
  br label %pred.store.continue5344

pred.store.continue5344:                          ; preds = %pred.store.if5343, %pred.store.continue5342
  %i.bau = extractelement <16 x i1> %i.aza, i64 15
  br i1 %i.bau, label %pred.store.if5345, label %pred.store.continue5346

pred.store.if5345:                                ; preds = %pred.store.continue5344
  %i.bav = extractelement <16 x i8> %wide.load5314, i64 15
  %i.baw = and i8 %i.bav, 95
  store i8 %i.baw, ptr %next.gep5313, align 1, !tbaa !15
  br label %pred.store.continue5346

pred.store.continue5346:                          ; preds = %pred.store.if5345, %pred.store.continue5344
  %index.next5347 = add nuw i64 %index5297, 16    ; 2 uses
  %i.bax = icmp eq i64 %index.next5347, %n.vec5295
  br i1 %i.bax, label %middle.block5348, label %vector.body5296, !llvm.loop !36

middle.block5348:                                 ; preds = %pred.store.continue5346
  %cmp.n5349 = icmp eq i64 %i.aun, %n.vec5295
  br i1 %cmp.n5349, label %case_conv.exit2515, label %vec.epilog.iter.check5354

vec.epilog.iter.check5354:                        ; preds = %middle.block5348
  %min.epilog.iters.check5355 = icmp eq i64 %i.ayg, 0
  br i1 %min.epilog.iters.check5355, label %.preheader.i2511.preheader, label %vec.epilog.ph5356, !prof !92

vec.epilog.ph5356:                                ; preds = %vector.main.loop.iter.check5292, %vec.epilog.iter.check5354
  %vec.epilog.resume.val5350 = phi i64 [ %n.vec5295, %vec.epilog.iter.check5354 ], [ 0, %vector.main.loop.iter.check5292 ]
  %n.vec5357 = and i64 %i.aun, 9223372036854775804 ; 3 uses
  %i.bay = and i64 %i.aun, 3
  %i.baz = getelementptr i8, ptr %i.aur, i64 %n.vec5357
  br label %vec.epilog.vector.body5358

vec.epilog.vector.body5358:                       ; preds = %pred.store.continue5372, %vec.epilog.ph5356
  %index5359 = phi i64 [ %vec.epilog.resume.val5350, %vec.epilog.ph5356 ], [ %index.next5373, %pred.store.continue5372 ] ; 5 uses
  %next.gep5360 = getelementptr i8, ptr %i.aur, i64 %index5359 ; 2 uses
  %i.bba = getelementptr i8, ptr %i.aur, i64 %index5359
  %next.gep5361 = getelementptr i8, ptr %i.bba, i64 1
  %i.bbb = getelementptr i8, ptr %i.aur, i64 %index5359
  %next.gep5362 = getelementptr i8, ptr %i.bbb, i64 2
  %i.bbc = getelementptr i8, ptr %i.aur, i64 %index5359
  %next.gep5363 = getelementptr i8, ptr %i.bbc, i64 3
  %wide.load5364 = load <4 x i8>, ptr %next.gep5360, align 1, !tbaa !15 ; 5 uses
  %i.bbd = sext <4 x i8> %wide.load5364 to <4 x i32>
  %i.bbe = add nsw <4 x i32> %i.bbd, splat (i32 -97)
  %i.bbf = icmp ult <4 x i32> %i.bbe, splat (i32 26) ; 4 uses
  %i.bbg = extractelement <4 x i1> %i.bbf, i64 0
  br i1 %i.bbg, label %pred.store.if5365, label %pred.store.continue5366

pred.store.if5365:                                ; preds = %vec.epilog.vector.body5358
  %i.bbh = extractelement <4 x i8> %wide.load5364, i64 0
  %i.bbi = and i8 %i.bbh, 95
  store i8 %i.bbi, ptr %next.gep5360, align 1, !tbaa !15
  br label %pred.store.continue5366

pred.store.continue5366:                          ; preds = %pred.store.if5365, %vec.epilog.vector.body5358
  %i.bbj = extractelement <4 x i1> %i.bbf, i64 1
  br i1 %i.bbj, label %pred.store.if5367, label %pred.store.continue5368

pred.store.if5367:                                ; preds = %pred.store.continue5366
  %i.bbk = extractelement <4 x i8> %wide.load5364, i64 1
  %i.bbl = and i8 %i.bbk, 95
  store i8 %i.bbl, ptr %next.gep5361, align 1, !tbaa !15
  br label %pred.store.continue5368

pred.store.continue5368:                          ; preds = %pred.store.if5367, %pred.store.continue5366
  %i.bbm = extractelement <4 x i1> %i.bbf, i64 2
  br i1 %i.bbm, label %pred.store.if5369, label %pred.store.continue5370

pred.store.if5369:                                ; preds = %pred.store.continue5368
  %i.bbn = extractelement <4 x i8> %wide.load5364, i64 2
  %i.bbo = and i8 %i.bbn, 95
  store i8 %i.bbo, ptr %next.gep5362, align 1, !tbaa !15
  br label %pred.store.continue5370

pred.store.continue5370:                          ; preds = %pred.store.if5369, %pred.store.continue5368
  %i.bbp = extractelement <4 x i1> %i.bbf, i64 3
  br i1 %i.bbp, label %pred.store.if5371, label %pred.store.continue5372

pred.store.if5371:                                ; preds = %pred.store.continue5370
  %i.bbq = extractelement <4 x i8> %wide.load5364, i64 3
  %i.bbr = and i8 %i.bbq, 95
  store i8 %i.bbr, ptr %next.gep5363, align 1, !tbaa !15
  br label %pred.store.continue5372

pred.store.continue5372:                          ; preds = %pred.store.if5371, %pred.store.continue5370
  %index.next5373 = add nuw i64 %index5359, 4     ; 2 uses
  %i.bbs = icmp eq i64 %index.next5373, %n.vec5357
  br i1 %i.bbs, label %vec.epilog.middle.block5374, label %vec.epilog.vector.body5358, !llvm.loop !37

vec.epilog.middle.block5374:                      ; preds = %pred.store.continue5372
  %cmp.n5375 = icmp eq i64 %i.aun, %n.vec5357
  br i1 %cmp.n5375, label %case_conv.exit2515, label %.preheader.i2511.preheader

.preheader.i2511.preheader:                       ; preds = %iter.check5352, %vec.epilog.iter.check5354, %vec.epilog.middle.block5374
  %.013.i2512.ph = phi i64 [ %i.aun, %iter.check5352 ], [ %i.ayh, %vec.epilog.iter.check5354 ], [ %i.bay, %vec.epilog.middle.block5374 ]
  %.0.i2513.ph = phi ptr [ %i.aur, %iter.check5352 ], [ %i.ayi, %vec.epilog.iter.check5354 ], [ %i.baz, %vec.epilog.middle.block5374 ]
  br label %.preheader.i2511

.preheader.i2511:                                 ; preds = %.preheader.i2511.preheader, %bb.fo
  %.013.i2512 = phi i64 [ %i.bbz, %bb.fo ], [ %.013.i2512.ph, %.preheader.i2511.preheader ]
  %.0.i2513 = phi ptr [ %i.bby, %bb.fo ], [ %.0.i2513.ph, %.preheader.i2511.preheader ] ; 3 uses
  %i.bbt = load i8, ptr %.0.i2513, align 1, !tbaa !15 ; 2 uses
  %i.bbu = sext i8 %i.bbt to i32
  %i.bbv = add nsw i32 %i.bbu, -123
  %i.bbw = icmp ult i32 %i.bbv, -26
  br i1 %i.bbw, label %bb.fo, label %bb.fn

bb.fn:                                            ; preds = %.preheader.i2511
  %i.bbx = and i8 %i.bbt, 95
  store i8 %i.bbx, ptr %.0.i2513, align 1, !tbaa !15
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fn, %.preheader.i2511
  %i.bby = getelementptr i8, ptr %.0.i2513, i64 1
  %i.bbz = add nsw i64 %.013.i2512, -1            ; 2 uses
  %.not19.i2514 = icmp eq i64 %i.bbz, 0
  br i1 %.not19.i2514, label %case_conv.exit2515, label %.preheader.i2511, !llvm.loop !38

.preheader20.i2506:                               ; preds = %.preheader20.i2506.preheader, %bb.fq
  %.114.i2507 = phi i64 [ %i.bcg, %bb.fq ], [ %.114.i2507.ph, %.preheader20.i2506.preheader ]
  %.1.i2508 = phi ptr [ %i.bcf, %bb.fq ], [ %.1.i2508.ph, %.preheader20.i2506.preheader ] ; 3 uses
  %i.bca = load i8, ptr %.1.i2508, align 1, !tbaa !15 ; 2 uses
  %i.bcb = sext i8 %i.bca to i32
  %i.bcc = add nsw i32 %i.bcb, -91
  %i.bcd = icmp ult i32 %i.bcc, -26
  br i1 %i.bcd, label %bb.fq, label %bb.fp

bb.fp:                                            ; preds = %.preheader20.i2506
  %i.bce = or i8 %i.bca, 32
  store i8 %i.bce, ptr %.1.i2508, align 1, !tbaa !15
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %.preheader20.i2506
  %i.bcf = getelementptr i8, ptr %.1.i2508, i64 1
  %i.bcg = add nsw i64 %.114.i2507, -1            ; 2 uses
  %.not17.i2509 = icmp eq i64 %i.bcg, 0
  br i1 %.not17.i2509, label %case_conv.exit2515, label %.preheader20.i2506, !llvm.loop !39

case_conv.exit2515:                               ; preds = %bb.fq, %bb.fo, %middle.block5435, %vec.epilog.middle.block5461, %middle.block5348, %vec.epilog.middle.block5374, %bb.fm, %RSTRING_PTR.exit2505
  %i.bch = sext i32 %.019283304 to i64            ; 5 uses
  %i.bci = icmp slt i64 %i.aun, %i.bch
  %i.bcj = getelementptr i8, ptr %i.aul, i64 %i.aum ; 5 uses
  br i1 %i.bci, label %bb.fr, label %case_conv.exit2868

bb.fr:                                            ; preds = %case_conv.exit2515
  %i.bck = load ptr, ptr %i.b, align 8, !tbaa !18 ; 2 uses
  %.not2234 = icmp ult ptr %i.bcj, %i.bck
  br i1 %.not2234, label %bb.fs, label %._crit_edge3707

._crit_edge3707:                                  ; preds = %bb.fr
  %.pre3752 = ptrtoint ptr %i.bcj to i64
  br label %bb.ft

bb.fs:                                            ; preds = %bb.fr
  %i.bcl = ptrtoint ptr %i.bck to i64
  %i.bcm = ptrtoint ptr %i.bcj to i64             ; 2 uses
  %i.bcn = xor i64 %i.bcm, -1
  %i.bco = add i64 %i.bcl, %i.bcn
  %.not2235 = icmp sgt i64 %i.bco, %i.bch
  br i1 %.not2235, label %buffer_size_check.exit2523, label %bb.ft

bb.ft:                                            ; preds = %._crit_edge3707, %bb.fs
  %.pre-phi3753 = phi i64 [ %.pre3752, %._crit_edge3707 ], [ %i.bcm, %bb.fs ]
  %i.bcp = ptrtoint ptr %i.aul to i64
  %i.bcq = sub i64 %.pre-phi3753, %i.bcp          ; 5 uses
  %i.bcr = shl nsw i64 %i.bch, 1
  %i.bcs = add i64 %i.bcq, %i.bcr
  %i.bct = call i64 @rb_str_capacity(i64 noundef %0) #12
  br label %bb.fu

bb.fu:                                            ; preds = %bb.fu, %bb.ft
  %.0.i2516 = phi i64 [ %i.bct, %bb.ft ], [ %i.bcv, %bb.fu ] ; 6 uses
  %i.bcu = icmp ult i64 %.0.i2516, %i.bcs
  %i.bcv = shl i64 %.0.i2516, 1
  br i1 %i.bcu, label %bb.fu, label %bb.fv, !llvm.loop !0

bb.fv:                                            ; preds = %bb.fu
  %i.bcw = icmp ult i64 %.0.i2516, %i.bcq
  %i.bcx = icmp ugt i64 %.0.i2516, %9
  %or.cond.i2517 = or i1 %i.bcw, %i.bcx
  br i1 %or.cond.i2517, label %resize_buffer.exit2521.thread, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.bcq) #11
  %i.bcy = sub nuw i64 %.0.i2516, %i.bcq
  call void @rb_str_modify_expand(i64 noundef %0, i64 noundef %i.bcy) #11
  %i.bcz = load i64, ptr %i.h, align 8, !tbaa !14
  %i.bda = and i64 %i.bcz, 8192
  %.not.i.i2518 = icmp eq i64 %i.bda, 0
  br i1 %.not.i.i2518, label %resize_buffer.exit2521, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.bdb = load ptr, ptr %i.m, align 8, !tbaa !15
  br label %resize_buffer.exit2521

resize_buffer.exit2521:                           ; preds = %bb.fw, %bb.fx
  %i.bdc = phi ptr [ %i.bdb, %bb.fx ], [ %i.m, %bb.fw ] ; 3 uses
  %i.bdd = getelementptr i8, ptr %i.bdc, i64 %.0.i2516
  store ptr %i.bdd, ptr %i.b, align 8, !tbaa !18
  store ptr %i.bdc, ptr %i.a, align 8, !tbaa !18
  %i.bde = getelementptr i8, ptr %i.bdc, i64 %i.bcq ; 2 uses
  %.not.i2522 = icmp eq ptr %i.bde, null
  br i1 %.not.i2522, label %resize_buffer.exit2521.thread, label %buffer_size_check.exit2523

resize_buffer.exit2521.thread:                    ; preds = %bb.fv, %resize_buffer.exit2521
  %i.bdf = call i64 @rb_enc_str_new(ptr noundef %1, i64 noundef range(i64 1, 0) %2, ptr noundef %.01901) #11
  call void @rb_syserr_fail_str(i32 noundef 34, i64 noundef %i.bdf) #13
  unreachable

buffer_size_check.exit2523:                       ; preds = %resize_buffer.exit2521, %bb.fs
  %.9 = phi ptr [ %i.bcj, %bb.fs ], [ %i.bde, %resize_buffer.exit2521 ]
  %i.bdg = sub i64 0, %i.aun                      ; 2 uses
  %i.bdh = getelementptr i8, ptr %.9, i64 %i.bdg  ; 3 uses
  %i.bdi = getelementptr i8, ptr %i.bdh, i64 %i.bch ; 2 uses
  %i.bdj = getelementptr i8, ptr %i.bdi, i64 %i.bdg
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.bdj, ptr noundef nonnull align 1 %i.bdh, i64 noundef range(i64 -9223372036854775808, 2147483647) %i.aun, i1 noundef false) #11
  %.not2236 = icmp eq i8 %.019153307, 0
  %narrow2237 = select i1 %.not2236, i8 32, i8 %.019153307
  %i.bdk = sub i64 %i.bch, %i.aun
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.bdh, i8 noundef %narrow2237, i64 noundef %i.bdk, i1 noundef false) #11
  br label %case_conv.exit2868

bb.fy:                                            ; preds = %.lr.ph
  %i.bdl = load i64, ptr %5, align 8, !tbaa !96
  %i.bdm = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.bdl, i64 noundef 37, i32 noundef 1, i64 noundef 201) #11 ; 3 uses
  %i.bdn = trunc i64 %i.bdm to i1
  br i1 %i.bdn, label %bb.fz, label %bb.ga

bb.fz:                                            ; preds = %bb.fy
  %i.bdo = call i64 @rb_fix2int(i64 noundef %i.bdm) #11
  br label %rb_num2int_inline.exit

bb.ga:                                            ; preds = %bb.fy
  %i.bdp = call i64 @rb_num2int(i64 noundef %i.bdm) #11
  br label %rb_num2int_inline.exit

rb_num2int_inline.exit:                           ; preds = %bb.fz, %bb.ga
  %.0.i2524 = phi i64 [ %i.bdo, %bb.fz ], [ %i.bdp, %bb.ga ]
  %i.bdq = trunc i64 %.0.i2524 to i32
  %i.bdr = and i32 %.019203305, 1
  %.not2229 = icmp eq i32 %i.bdr, 0
  %i.bds = icmp slt i32 %.019283304, 1
  %i.bdt = select i1 %i.bds, i32 2, i32 %.019283304
  %i.bdu = select i1 %.not2229, i32 %i.bdt, i32 1 ; 2 uses
  %i.bdv = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bdw = ptrtoint ptr %i.bl to i64              ; 2 uses
  %i.bdx = ptrtoint ptr %i.bdv to i64
  %i.bdy = sub i64 %i.bdw, %i.bdx                 ; 6 uses
  %i.bdz = load ptr, ptr %i.b, align 8, !tbaa !18 ; 2 uses
  %.not2230 = icmp ult ptr %i.bl, %i.bdz
  %i.bea = sext i32 %i.bdu to i64                 ; 2 uses
  br i1 %.not2230, label %bb.gb, label %rb_num2int_inline.exit._crit_edge

bb.gb:                                            ; preds = %rb_num2int_inline.exit
  %i.beb = ptrtoint ptr %i.bdz to i64
  %i.bec = xor i64 %i.bdw, -1
  %i.bed = add i64 %i.beb, %i.bec
  %.not2231 = icmp sgt i64 %i.bed, %i.bea
  br i1 %.not2231, label %buffer_size_check.exit2532, label %rb_num2int_inline.exit._crit_edge

rb_num2int_inline.exit._crit_edge:                ; preds = %rb_num2int_inline.exit, %bb.gb
  %i.bee = shl nsw i64 %i.bea, 1
  %i.bef = add i64 %i.bdy, %i.bee
  %i.beg = call i64 @rb_str_capacity(i64 noundef %0) #12
  br label %bb.gc

bb.gc:                                            ; preds = %bb.gc, %rb_num2int_inline.exit._crit_edge
  %.0.i2525 = phi i64 [ %i.beg, %rb_num2int_inline.exit._crit_edge ], [ %i.bei, %bb.gc ] ; 6 uses
  %i.beh = icmp ult i64 %.0.i2525, %i.bef
  %i.bei = shl i64 %.0.i2525, 1
  br i1 %i.beh, label %bb.gc, label %bb.gd, !llvm.loop !0

bb.gd:                                            ; preds = %bb.gc
  %i.bej = icmp ult i64 %.0.i2525, %i.bdy
  %i.bek = icmp ugt i64 %.0.i2525, %9
  %or.cond.i2526 = or i1 %i.bej, %i.bek
  br i1 %or.cond.i2526, label %resize_buffer.exit2530.thread, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.bdy) #11
  %i.bel = sub nuw i64 %.0.i2525, %i.bdy
  call void @rb_str_modify_expand(i64 noundef %0, i64 noundef %i.bel) #11
  %i.bem = load i64, ptr %i.h, align 8, !tbaa !14
  %i.ben = and i64 %i.bem, 8192
  %.not.i.i2527 = icmp eq i64 %i.ben, 0
  br i1 %.not.i.i2527, label %resize_buffer.exit2530, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.beo = load ptr, ptr %i.m, align 8, !tbaa !15
  br label %resize_buffer.exit2530

resize_buffer.exit2530:                           ; preds = %bb.ge, %bb.gf
  %i.bep = phi ptr [ %i.beo, %bb.gf ], [ %i.m, %bb.ge ] ; 2 uses
  %i.beq = getelementptr i8, ptr %i.bep, i64 %.0.i2525
  store ptr %i.beq, ptr %i.b, align 8, !tbaa !18
  %i.ber = getelementptr i8, ptr %i.bep, i64 %i.bdy
  %.not.i2531 = icmp eq ptr %i.ber, null
  br i1 %.not.i2531, label %resize_buffer.exit2530.thread, label %buffer_size_check.exit2532

resize_buffer.exit2530.thread:                    ; preds = %bb.gd, %resize_buffer.exit2530
  %i.bes = call i64 @rb_enc_str_new(ptr noundef %1, i64 noundef range(i64 1, 0) %2, ptr noundef %.01901) #11
  call void @rb_syserr_fail_str(i32 noundef 34, i64 noundef %i.bes) #13
  unreachable

buffer_size_check.exit2532:                       ; preds = %resize_buffer.exit2530, %bb.gb
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.bdy) #11
  %i.bet = icmp eq i8 %.019153307, 48
  %.not2232 = icmp eq i8 %.019153307, 0
  %i.beu = or i1 %i.bet, %.not2232
  %i.bev = select i1 %i.beu, i64 4, i64 0
  %i.bew = getelementptr i8, ptr @.str.2, i64 %i.bev
  %i.bex = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %0, ptr noundef %i.bew, i32 noundef %i.bdu, i32 noundef %i.bdq) #11 ; 0 uses
  %i.bey = load i64, ptr %i.h, align 8, !tbaa !14
  %i.bez = and i64 %i.bey, 8192
  %.not.i2533 = icmp eq i64 %i.bez, 0
  br i1 %.not.i2533, label %RSTRING_PTR.exit2534, label %bb.gg

bb.gg:                                            ; preds = %buffer_size_check.exit2532
  %i.bfa = load ptr, ptr %i.m, align 8, !tbaa !15
  br label %RSTRING_PTR.exit2534

RSTRING_PTR.exit2534:                             ; preds = %buffer_size_check.exit2532, %bb.gg
  %i.bfb = phi ptr [ %i.bfa, %bb.gg ], [ %i.m, %buffer_size_check.exit2532 ] ; 3 uses
  %i.bfc = load i64, ptr %i.i, align 8, !tbaa !89
  store ptr %i.bfb, ptr %i.a, align 8, !tbaa !18
  %i.bfd = call i64 @rb_str_capacity(i64 noundef %0) #12
  %i.bfe = getelementptr i8, ptr %i.bfb, i64 %i.bfd
  store ptr %i.bfe, ptr %i.b, align 8, !tbaa !18
  %i.bff = getelementptr i8, ptr %i.bfb, i64 %i.bfc
  br label %case_conv.exit2868

bb.gh:                                            ; preds = %.lr.ph
  %i.bfg = load i64, ptr %5, align 8, !tbaa !96   ; 7 uses
  %i.bfh = trunc i64 %i.bfg to i1
  br i1 %i.bfh, label %bb.gi, label %bb.gp

bb.gi:                                            ; preds = %bb.gh
  %i.bfi = ashr i64 %i.bfg, 1                     ; 2 uses
  %i.bfj = and i32 %.019203305, 1
  %.not2225 = icmp eq i32 %i.bfj, 0
  %i.bfk = icmp slt i32 %.019283304, 1
  %i.bfl = icmp sgt i64 %i.bfi, -1
  %i.bfm = select i1 %i.bfl, i32 4, i32 5
  %i.bfn = select i1 %i.bfk, i32 %i.bfm, i32 %.019283304
  %i.bfo = select i1 %.not2225, i32 %i.bfn, i32 1 ; 2 uses
  %i.bfp = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bfq = ptrtoint ptr %i.bl to i64              ; 2 uses
  %i.bfr = ptrtoint ptr %i.bfp to i64
  %i.bfs = sub i64 %i.bfq, %i.bfr                 ; 6 uses
  %i.bft = load ptr, ptr %i.b, align 8, !tbaa !18 ; 2 uses
  %.not2226 = icmp ult ptr %i.bl, %i.bft
  %i.bfu = sext i32 %i.bfo to i64                 ; 2 uses
  br i1 %.not2226, label %bb.gj, label %._crit_edge3706

bb.gj:                                            ; preds = %bb.gi
  %i.bfv = ptrtoint ptr %i.bft to i64
  %i.bfw = xor i64 %i.bfq, -1
  %i.bfx = add i64 %i.bfv, %i.bfw
  %.not2227 = icmp sgt i64 %i.bfx, %i.bfu
  br i1 %.not2227, label %buffer_size_check.exit2542, label %._crit_edge3706

._crit_edge3706:                                  ; preds = %bb.gi, %bb.gj
  %i.bfy = shl nsw i64 %i.bfu, 1
  %i.bfz = add i64 %i.bfs, %i.bfy
  %i.bga = call i64 @rb_str_capacity(i64 noundef %0) #12
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gk, %._crit_edge3706
  %.0.i2535 = phi i64 [ %i.bga, %._crit_edge3706 ], [ %i.bgc, %bb.gk ] ; 6 uses
  %i.bgb = icmp ult i64 %.0.i2535, %i.bfz
  %i.bgc = shl i64 %.0.i2535, 1
  br i1 %i.bgb, label %bb.gk, label %bb.gl, !llvm.loop !0

bb.gl:                                            ; preds = %bb.gk
  %i.bgd = icmp ult i64 %.0.i2535, %i.bfs
  %i.bge = icmp ugt i64 %.0.i2535, %9
  %or.cond.i2536 = or i1 %i.bgd, %i.bge
  br i1 %or.cond.i2536, label %resize_buffer.exit2540.thread, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.bfs) #11
  %i.bgf = sub nuw i64 %.0.i2535, %i.bfs
  call void @rb_str_modify_expand(i64 noundef %0, i64 noundef %i.bgf) #11
  %i.bgg = load i64, ptr %i.h, align 8, !tbaa !14
  %i.bgh = and i64 %i.bgg, 8192
  %.not.i.i2537 = icmp eq i64 %i.bgh, 0
  br i1 %.not.i.i2537, label %resize_buffer.exit2540, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.bgi = load ptr, ptr %i.m, align 8, !tbaa !15
  br label %resize_buffer.exit2540

resize_buffer.exit2540:                           ; preds = %bb.gm, %bb.gn
  %i.bgj = phi ptr [ %i.bgi, %bb.gn ], [ %i.m, %bb.gm ] ; 2 uses
  %i.bgk = getelementptr i8, ptr %i.bgj, i64 %.0.i2535
  store ptr %i.bgk, ptr %i.b, align 8, !tbaa !18
  %i.bgl = getelementptr i8, ptr %i.bgj, i64 %i.bfs
  %.not.i2541 = icmp eq ptr %i.bgl, null
  br i1 %.not.i2541, label %resize_buffer.exit2540.thread, label %buffer_size_check.exit2542

resize_buffer.exit2540.thread:                    ; preds = %bb.gl, %resize_buffer.exit2540
  %i.bgm = call i64 @rb_enc_str_new(ptr noundef %1, i64 noundef range(i64 1, 0) %2, ptr noundef %.01901) #11
  call void @rb_syserr_fail_str(i32 noundef 34, i64 noundef %i.bgm) #13
  unreachable

buffer_size_check.exit2542:                       ; preds = %resize_buffer.exit2540, %bb.gj
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.bfs) #11
  %i.bgn = icmp eq i8 %.019153307, 48
  %.not2228 = icmp eq i8 %.019153307, 0
  %i.bgo = or i1 %i.bgn, %.not2228
  %i.bgp = select i1 %i.bgo, i64 5, i64 0
  %i.bgq = getelementptr i8, ptr @.str.3, i64 %i.bgp
  %i.bgr = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %0, ptr noundef %i.bgq, i32 noundef %i.bfo, i64 noundef %i.bfi) #11 ; 0 uses
  %i.bgs = load i64, ptr %i.h, align 8, !tbaa !14
  %i.bgt = and i64 %i.bgs, 8192
  %.not.i2543 = icmp eq i64 %i.bgt, 0
  br i1 %.not.i2543, label %RSTRING_PTR.exit2544, label %bb.go

bb.go:                                            ; preds = %buffer_size_check.exit2542
  %i.bgu = load ptr, ptr %i.m, align 8, !tbaa !15
  br label %RSTRING_PTR.exit2544

RSTRING_PTR.exit2544:                             ; preds = %buffer_size_check.exit2542, %bb.go
  %i.bgv = phi ptr [ %i.bgu, %bb.go ], [ %i.m, %buffer_size_check.exit2542 ] ; 3 uses
  %i.bgw = load i64, ptr %i.i, align 8, !tbaa !89
  store ptr %i.bgv, ptr %i.a, align 8, !tbaa !18
  %i.bgx = call i64 @rb_str_capacity(i64 noundef %0) #12
  %i.bgy = getelementptr i8, ptr %i.bgv, i64 %i.bgx
  store ptr %i.bgy, ptr %i.b, align 8, !tbaa !18
  %i.bgz = getelementptr i8, ptr %i.bgv, i64 %i.bgw
  br label %case_conv.exit2868

bb.gp:                                            ; preds = %bb.gh
  %i.bha = and i32 %.019203305, 1
  %.not2219 = icmp eq i32 %i.bha, 0
  %.not2220 = icmp eq i8 %.019153307, 0
  %spec.store.select20 = select i1 %.not2220, i8 48, i8 %.019153307
  %i.bhb = icmp eq i64 %i.bfg, 0
  %i.bhc = and i64 %i.bfg, 6
  %i.bhd = icmp ne i64 %i.bhc, 0
  %i.bhe = or i1 %i.bhb, %i.bhd
  br i1 %i.bhe, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.gp
  %i.bhf = inttoptr i64 %i.bfg to ptr
  %i.bhg = load i64, ptr %i.bhf, align 8, !tbaa !14
  %i.bhh = and i64 %i.bhg, 31
  %i.bhi = icmp eq i64 %i.bhh, 10
  br i1 %i.bhi, label %format_value.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.gp
  %i.bhj = call i64 @rb_Integer(i64 noundef %i.bfg) #11
  br label %format_value.exit

format_value.exit:                                ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i
  %.0.i2545 = phi i64 [ %i.bfg, %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %i.bhj, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i ]
  %i.bhk = call i64 @rb_big2str(i64 noundef %.0.i2545, i32 noundef 10) #11 ; 2 uses
  %i.bhl = inttoptr i64 %i.bhk to ptr
  %i.bhm = getelementptr i8, ptr %i.bhl, i64 16
  %i.bhn = load i64, ptr %i.bhm, align 8, !tbaa !89 ; 4 uses
  br i1 %.not2219, label %bb.gq, label %bb.gv

bb.gq:                                            ; preds = %format_value.exit
  %i.bho = icmp slt i32 %.019283304, 1
  %i.bhp = select i1 %i.bho, i32 4, i32 %.019283304
  %i.bhq = sext i32 %i.bhp to i64                 ; 4 uses
  %i.bhr = icmp slt i64 %i.bhn, %i.bhq
  br i1 %i.bhr, label %bb.gr, label %bb.gv

bb.gr:                                            ; preds = %bb.gq
  %i.bhs = load ptr, ptr %i.b, align 8, !tbaa !18 ; 2 uses
  %.not2221 = icmp ult ptr %i.bl, %i.bhs
  br i1 %.not2221, label %bb.gs, label %bb.gt

bb.gs:                                            ; preds = %bb.gr
  %i.bht = ptrtoint ptr %i.bhs to i64
  %i.bhu = ptrtoint ptr %i.bl to i64
  %i.bhv = xor i64 %i.bhu, -1
  %i.bhw = add i64 %i.bht, %i.bhv
  %.not2222 = icmp sgt i64 %i.bhw, %i.bhq
  br i1 %.not2222, label %bb.gu, label %bb.gt

bb.gt:                                            ; preds = %bb.gs, %bb.gr
  %i.bhx = call fastcc ptr @resize_buffer(i64 noundef %0, ptr noundef %i.bl, ptr noundef %i.a, ptr noundef %i.b, i64 noundef %i.bhq, i64 noundef %9) ; 2 uses
  call fastcc void @buffer_size_check(ptr noundef %i.bhx, ptr noundef nonnull %i.r, i64 noundef %2, ptr noundef %.01901)
  br label %bb.gu

bb.gu:                                            ; preds = %bb.gt, %bb.gs
  %.10 = phi ptr [ %i.bhx, %bb.gt ], [ %i.bl, %bb.gs ] ; 2 uses
  %i.bhy = sub i64 %i.bhq, %i.bhn                 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %.10, i8 noundef %spec.store.select20, i64 noundef %i.bhy, i1 noundef false) #11
  %i.bhz = getelementptr i8, ptr %.10, i64 %i.bhy
  br label %buffer_size_check.exit2553

bb.gv:                                            ; preds = %format_value.exit, %bb.gq
  %i.bia = load ptr, ptr %i.b, align 8, !tbaa !18 ; 2 uses
  %.not2223 = icmp ult ptr %i.bl, %i.bia
  br i1 %.not2223, label %bb.gw, label %._crit_edge3705

._crit_edge3705:                                  ; preds = %bb.gv
  %.pre3758 = ptrtoint ptr %i.bl to i64
  br label %bb.gx

bb.gw:                                            ; preds = %bb.gv
  %i.bib = ptrtoint ptr %i.bia to i64
  %i.bic = ptrtoint ptr %i.bl to i64              ; 2 uses
  %i.bid = xor i64 %i.bic, -1
  %i.bie = add i64 %i.bib, %i.bid
  %.not2224 = icmp slt i64 %i.bhn, %i.bie
  br i1 %.not2224, label %buffer_size_check.exit2553, label %bb.gx

bb.gx:                                            ; preds = %._crit_edge3705, %bb.gw
  %.pre-phi3759 = phi i64 [ %.pre3758, %._crit_edge3705 ], [ %i.bic, %bb.gw ]
  %i.bif = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.big = ptrtoint ptr %i.bif to i64
  %i.bih = sub i64 %.pre-phi3759, %i.big          ; 5 uses
  %i.bii = shl i64 %i.bhn, 1
  %i.bij = add i64 %i.bih, %i.bii
  %i.bik = call i64 @rb_str_capacity(i64 noundef %0) #12
  br label %bb.gy

bb.gy:                                            ; preds = %bb.gy, %bb.gx
  %.0.i2546 = phi i64 [ %i.bik, %bb.gx ], [ %i.bim, %bb.gy ] ; 6 uses
  %i.bil = icmp ult i64 %.0.i2546, %i.bij
  %i.bim = shl i64 %.0.i2546, 1
  br i1 %i.bil, label %bb.gy, label %bb.gz, !llvm.loop !0

bb.gz:                                            ; preds = %bb.gy
  %i.bin = icmp ult i64 %.0.i2546, %i.bih
  %i.bio = icmp ugt i64 %.0.i2546, %9
  %or.cond.i2547 = or i1 %i.bin, %i.bio
  br i1 %or.cond.i2547, label %resize_buffer.exit2551.thread, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.bih) #11
  %i.bip = sub nuw i64 %.0.i2546, %i.bih
  call void @rb_str_modify_expand(i64 noundef %0, i64 noundef %i.bip) #11
  %i.biq = load i64, ptr %i.h, align 8, !tbaa !14
  %i.bir = and i64 %i.biq, 8192
  %.not.i.i2548 = icmp eq i64 %i.bir, 0
  br i1 %.not.i.i2548, label %resize_buffer.exit2551, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.bis = load ptr, ptr %i.m, align 8, !tbaa !15
  br label %resize_buffer.exit2551

resize_buffer.exit2551:                           ; preds = %bb.ha, %bb.hb
  %i.bit = phi ptr [ %i.bis, %bb.hb ], [ %i.m, %bb.ha ] ; 3 uses
  %i.biu = getelementptr i8, ptr %i.bit, i64 %.0.i2546
  store ptr %i.biu, ptr %i.b, align 8, !tbaa !18
  store ptr %i.bit, ptr %i.a, align 8, !tbaa !18
  %i.biv = getelementptr i8, ptr %i.bit, i64 %i.bih ; 2 uses
  %.not.i2552 = icmp eq ptr %i.biv, null
  br i1 %.not.i2552, label %resize_buffer.exit2551.thread, label %buffer_size_check.exit2553

resize_buffer.exit2551.thread:                    ; preds = %bb.gz, %resize_buffer.exit2551
  %i.biw = call i64 @rb_enc_str_new(ptr noundef %1, i64 noundef range(i64 1, 0) %2, ptr noundef %.01901) #11
  call void @rb_syserr_fail_str(i32 noundef 34, i64 noundef %i.biw) #13
  unreachable

buffer_size_check.exit2553:                       ; preds = %resize_buffer.exit2551, %bb.gw, %bb.gu
  %.11 = phi ptr [ %i.bhz, %bb.gu ], [ %i.bl, %bb.gw ], [ %i.biv, %resize_buffer.exit2551 ]
  %i.bix = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.biy = ptrtoint ptr %.11 to i64
  %i.biz = ptrtoint ptr %i.bix to i64
  %i.bja = sub i64 %i.biy, %i.biz
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.bja) #11
  %i.bjb = call i64 @rb_str_append(i64 noundef %0, i64 noundef %i.bhk) #11 ; 0 uses
  %i.bjc = load i64, ptr %i.h, align 8, !tbaa !14
  %i.bjd = and i64 %i.bjc, 8192
  %.not.i2554 = icmp eq i64 %i.bjd, 0
  br i1 %.not.i2554, label %RSTRING_PTR.exit2555, label %bb.hc

bb.hc:                                            ; preds = %buffer_size_check.exit2553
  %i.bje = load ptr, ptr %i.m, align 8, !tbaa !15
  br label %RSTRING_PTR.exit2555

RSTRING_PTR.exit2555:                             ; preds = %buffer_size_check.exit2553, %bb.hc
  %i.bjf = phi ptr [ %i.bje, %bb.hc ], [ %i.m, %buffer_size_check.exit2553 ] ; 3 uses
  %i.bjg = load i64, ptr %i.i, align 8, !tbaa !89
  store ptr %i.bjf, ptr %i.a, align 8, !tbaa !18
  %i.bjh = call i64 @rb_str_capacity(i64 noundef %0) #12
  %i.bji = getelementptr i8, ptr %i.bjf, i64 %i.bjh
  store ptr %i.bji, ptr %i.b, align 8, !tbaa !18
  %i.bjj = getelementptr i8, ptr %i.bjf, i64 %i.bjg
  br label %case_conv.exit2868

bb.hd:                                            ; preds = %.lr.ph
  br i1 %.not2200, label %bb.he, label %bb.hh

bb.he:                                            ; preds = %bb.hd
  %i.bjk = load i64, ptr %i.ai, align 8, !tbaa !97
  %.pr.i2556 = load i64, ptr @rb_strftime_with_timespec.rbimpl_id.7, align 8, !tbaa !20 ; 2 uses
  %.not4.i2557 = icmp eq i64 %.pr.i2556, 0
  br i1 %.not4.i2557, label %.lr.ph.i2559, label %rbimpl_intern_const.exit2561

end_hunk_4
begin_hunk_5_@rb_strftime_with_timespec:bb.a
  %i.bpr = zext i32 %i.bpq to i64
  %i.bps = add i64 %i.bpp, %i.bpr
  %i.bpt = call i64 @rb_str_capacity(i64 noundef %0) #12
  br label %bb.jb

bb.jb:                                            ; preds = %bb.jb, %bb.ja
  %.0.i2567 = phi i64 [ %i.bpt, %bb.ja ], [ %i.bpv, %bb.jb ] ; 6 uses
  %i.bpu = icmp ult i64 %.0.i2567, %i.bps
  %i.bpv = shl i64 %.0.i2567, 1
  br i1 %i.bpu, label %bb.jb, label %bb.jc, !llvm.loop !0

bb.jc:                                            ; preds = %bb.jb
  %i.bpw = icmp ult i64 %.0.i2567, %i.bpp
  %i.bpx = icmp ugt i64 %.0.i2567, %9
  %or.cond.i2568 = or i1 %i.bpw, %i.bpx
  br i1 %or.cond.i2568, label %resize_buffer.exit2572.thread, label %bb.jd

bb.jd:                                            ; preds = %bb.jc
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.bpp) #11
  %i.bpy = sub nuw i64 %.0.i2567, %i.bpp
  call void @rb_str_modify_expand(i64 noundef %0, i64 noundef %i.bpy) #11
  %i.bpz = load i64, ptr %i.h, align 8, !tbaa !14
  %i.bqa = and i64 %i.bpz, 8192
  %.not.i.i2569 = icmp eq i64 %i.bqa, 0
  br i1 %.not.i.i2569, label %resize_buffer.exit2572, label %bb.je

bb.je:                                            ; preds = %bb.jd
  %i.bqb = load ptr, ptr %i.m, align 8, !tbaa !15
  br label %resize_buffer.exit2572

resize_buffer.exit2572:                           ; preds = %bb.jd, %bb.je
  %i.bqc = phi ptr [ %i.bqb, %bb.je ], [ %i.m, %bb.jd ] ; 3 uses
  %i.bqd = getelementptr i8, ptr %i.bqc, i64 %.0.i2567
  store ptr %i.bqd, ptr %i.b, align 8, !tbaa !18
  store ptr %i.bqc, ptr %i.a, align 8, !tbaa !18
  %i.bqe = getelementptr i8, ptr %i.bqc, i64 %i.bpp ; 2 uses
  %.not.i2573 = icmp eq ptr %i.bqe, null
  br i1 %.not.i2573, label %resize_buffer.exit2572.thread, label %buffer_size_check.exit2574

resize_buffer.exit2572.thread:                    ; preds = %bb.jc, %resize_buffer.exit2572
  %i.bqf = call i64 @rb_enc_str_new(ptr noundef %1, i64 noundef range(i64 1, 0) %2, ptr noundef %.01901) #11
  call void @rb_syserr_fail_str(i32 noundef 34, i64 noundef %i.bqf) #13
  unreachable

buffer_size_check.exit2574:                       ; preds = %resize_buffer.exit2572, %bb.iz
  %.15 = phi ptr [ %i.bl, %bb.iz ], [ %i.bqe, %resize_buffer.exit2572 ] ; 2 uses
  %.not2197 = icmp eq i8 %.019153307, 0
  %narrow2198 = select i1 %.not2197, i8 32, i8 %.019153307
  %i.bqg = add nsw i32 %.019283304, -1
  %i.bqh = zext nneg i32 %i.bqg to i64            ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %.15, i8 noundef %narrow2198, i64 noundef %i.bqh, i1 noundef false) #11
  %i.bqi = getelementptr i8, ptr %.15, i64 %i.bqh
  br label %bb.jh

bb.jf:                                            ; preds = %bb.ix
  %.not2194 = icmp uge ptr %i.bl, %i.bph
  %i.bqj = ptrtoint ptr %i.bph to i64
  %i.bqk = ptrtoint ptr %i.bl to i64
  %i.bql = sub i64 %i.bqk, %i.bqj
  %i.bqm = icmp sgt i64 %i.bql, -3
  %or.cond2336 = or i1 %.not2194, %i.bqm
  br i1 %or.cond2336, label %bb.jg, label %bb.jh

bb.jg:                                            ; preds = %bb.jf
  %i.bqn = call fastcc ptr @resize_buffer(i64 noundef %0, ptr noundef %i.bl, ptr noundef %i.a, ptr noundef %i.b, i64 noundef 1, i64 noundef %9) ; 2 uses
  call fastcc void @buffer_size_check(ptr noundef %i.bqn, ptr noundef nonnull %i.r, i64 noundef %2, ptr noundef %.01901)
  br label %bb.jh

bb.jh:                                            ; preds = %bb.jf, %bb.jg, %buffer_size_check.exit2574
  %.16 = phi ptr [ %i.bqi, %buffer_size_check.exit2574 ], [ %i.bqn, %bb.jg ], [ %i.bl, %bb.jf ] ; 2 uses
  %i.bqo = getelementptr i8, ptr %.16, i64 1
  store i8 10, ptr %.16, align 1, !tbaa !15
  br label %case_conv.exit2868

bb.ji:                                            ; preds = %.lr.ph
  %i.bqp = and i32 %.019203305, 1
  %i.bqq = icmp eq i32 %i.bqp, 0
  %i.bqr = icmp sgt i32 %.019283304, 1
  %or.cond30 = select i1 %i.bqq, i1 %i.bqr, i1 false
  %i.bqs = load ptr, ptr %i.b, align 8, !tbaa !18 ; 4 uses
  br i1 %or.cond30, label %bb.jj, label %bb.jq

bb.jj:                                            ; preds = %bb.ji
  %.not2190 = icmp ult ptr %i.bl, %i.bqs
  br i1 %.not2190, label %bb.jk, label %._crit_edge3699

._crit_edge3699:                                  ; preds = %bb.jj
  %.pre3770 = ptrtoint ptr %i.bl to i64
  br label %bb.jl

bb.jk:                                            ; preds = %bb.jj
  %i.bqt = zext nneg i32 %.019283304 to i64
  %i.bqu = ptrtoint ptr %i.bqs to i64
  %i.bqv = ptrtoint ptr %i.bl to i64              ; 2 uses
  %i.bqw = xor i64 %i.bqv, -1
  %i.bqx = add i64 %i.bqu, %i.bqw
  %.not2191 = icmp sgt i64 %i.bqx, %i.bqt
  br i1 %.not2191, label %buffer_size_check.exit2582, label %bb.jl

bb.jl:                                            ; preds = %._crit_edge3699, %bb.jk
  %.pre-phi3771 = phi i64 [ %.pre3770, %._crit_edge3699 ], [ %i.bqv, %bb.jk ]
  %i.bqy = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bqz = ptrtoint ptr %i.bqy to i64
  %i.bra = sub i64 %.pre-phi3771, %i.bqz          ; 5 uses
  %i.brb = shl nuw i32 %.019283304, 1
  %i.brc = zext i32 %i.brb to i64
  %i.brd = add i64 %i.bra, %i.brc
  %i.bre = call i64 @rb_str_capacity(i64 noundef %0) #12
  br label %bb.jm

bb.jm:                                            ; preds = %bb.jm, %bb.jl
  %.0.i2575 = phi i64 [ %i.bre, %bb.jl ], [ %i.brg, %bb.jm ] ; 6 uses
  %i.brf = icmp ult i64 %.0.i2575, %i.brd
  %i.brg = shl i64 %.0.i2575, 1
  br i1 %i.brf, label %bb.jm, label %bb.jn, !llvm.loop !0

bb.jn:                                            ; preds = %bb.jm
  %i.brh = icmp ult i64 %.0.i2575, %i.bra
  %i.bri = icmp ugt i64 %.0.i2575, %9
  %or.cond.i2576 = or i1 %i.brh, %i.bri
  br i1 %or.cond.i2576, label %resize_buffer.exit2580.thread, label %bb.jo

bb.jo:                                            ; preds = %bb.jn
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.bra) #11
  %i.brj = sub nuw i64 %.0.i2575, %i.bra
  call void @rb_str_modify_expand(i64 noundef %0, i64 noundef %i.brj) #11
  %i.brk = load i64, ptr %i.h, align 8, !tbaa !14
  %i.brl = and i64 %i.brk, 8192
  %.not.i.i2577 = icmp eq i64 %i.brl, 0
  br i1 %.not.i.i2577, label %resize_buffer.exit2580, label %bb.jp

bb.jp:                                            ; preds = %bb.jo
  %i.brm = load ptr, ptr %i.m, align 8, !tbaa !15
  br label %resize_buffer.exit2580

resize_buffer.exit2580:                           ; preds = %bb.jo, %bb.jp
  %i.brn = phi ptr [ %i.brm, %bb.jp ], [ %i.m, %bb.jo ] ; 3 uses
  %i.bro = getelementptr i8, ptr %i.brn, i64 %.0.i2575
  store ptr %i.bro, ptr %i.b, align 8, !tbaa !18
  store ptr %i.brn, ptr %i.a, align 8, !tbaa !18
  %i.brp = getelementptr i8, ptr %i.brn, i64 %i.bra ; 2 uses
  %.not.i2581 = icmp eq ptr %i.brp, null
  br i1 %.not.i2581, label %resize_buffer.exit2580.thread, label %buffer_size_check.exit2582

resize_buffer.exit2580.thread:                    ; preds = %bb.jn, %resize_buffer.exit2580
  %i.brq = call i64 @rb_enc_str_new(ptr noundef %1, i64 noundef range(i64 1, 0) %2, ptr noundef %.01901) #11
  call void @rb_syserr_fail_str(i32 noundef 34, i64 noundef %i.brq) #13
  unreachable

buffer_size_check.exit2582:                       ; preds = %resize_buffer.exit2580, %bb.jk
  %.17 = phi ptr [ %i.bl, %bb.jk ], [ %i.brp, %resize_buffer.exit2580 ] ; 2 uses
  %.not2192 = icmp eq i8 %.019153307, 0
  %narrow2193 = select i1 %.not2192, i8 32, i8 %.019153307
  %i.brr = add nsw i32 %.019283304, -1
  %i.brs = zext nneg i32 %i.brr to i64            ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %.17, i8 noundef %narrow2193, i64 noundef %i.brs, i1 noundef false) #11
  %i.brt = getelementptr i8, ptr %.17, i64 %i.brs
  br label %bb.js

bb.jq:                                            ; preds = %bb.ji
  %.not2189 = icmp uge ptr %i.bl, %i.bqs
  %i.bru = ptrtoint ptr %i.bqs to i64
  %i.brv = ptrtoint ptr %i.bl to i64
  %i.brw = sub i64 %i.brv, %i.bru
  %i.brx = icmp sgt i64 %i.brw, -3
  %or.cond2340 = or i1 %.not2189, %i.brx
  br i1 %or.cond2340, label %bb.jr, label %bb.js

bb.jr:                                            ; preds = %bb.jq
  %i.bry = call fastcc ptr @resize_buffer(i64 noundef %0, ptr noundef %i.bl, ptr noundef %i.a, ptr noundef %i.b, i64 noundef 1, i64 noundef %9) ; 2 uses
  call fastcc void @buffer_size_check(ptr noundef %i.bry, ptr noundef nonnull %i.r, i64 noundef %2, ptr noundef %.01901)
  br label %bb.js

bb.js:                                            ; preds = %bb.jq, %bb.jr, %buffer_size_check.exit2582
  %.18 = phi ptr [ %i.brt, %buffer_size_check.exit2582 ], [ %i.bry, %bb.jr ], [ %i.bl, %bb.jq ] ; 2 uses
  %i.brz = getelementptr i8, ptr %.18, i64 1
  store i8 9, ptr %.18, align 1, !tbaa !15
  br label %case_conv.exit2868

bb.jt:                                            ; preds = %.lr.ph
  %i.bsa = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bsb = ptrtoint ptr %i.bl to i64
  %i.bsc = ptrtoint ptr %i.bsa to i64
  %i.bsd = sub i64 %i.bsb, %i.bsc                 ; 3 uses
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.bsd) #11
  %i.bse = call fastcc i64 @rb_strftime_with_timespec(i64 noundef %0, ptr noundef nonnull @.str.5, i64 noundef 8, ptr noundef %.01901, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef %7, i32 noundef %8, i64 noundef %9)
  %.not2184 = icmp eq i64 %i.bse, 0
  br i1 %.not2184, label %.loopexit2998, label %bb.ju

bb.ju:                                            ; preds = %bb.jt
  %i.bsf = load i64, ptr %i.h, align 8, !tbaa !14
  %i.bsg = and i64 %i.bsf, 8192
  %.not.i2583 = icmp eq i64 %i.bsg, 0
  br i1 %.not.i2583, label %RSTRING_PTR.exit2584, label %bb.jv

bb.jv:                                            ; preds = %bb.ju
  %i.bsh = load ptr, ptr %i.m, align 8, !tbaa !15
  br label %RSTRING_PTR.exit2584

RSTRING_PTR.exit2584:                             ; preds = %bb.ju, %bb.jv
  %i.bsi = phi ptr [ %i.bsh, %bb.jv ], [ %i.m, %bb.ju ] ; 5 uses
  %i.bsj = load i64, ptr %i.i, align 8, !tbaa !89 ; 2 uses
  %i.bsk = sub i64 %i.bsj, %i.bsd                 ; 25 uses
  store ptr %i.bsi, ptr %i.a, align 8, !tbaa !18
  %i.bsl = call i64 @rb_str_capacity(i64 noundef %0) #12
  %i.bsm = getelementptr i8, ptr %i.bsi, i64 %i.bsl
  store ptr %i.bsm, ptr %i.b, align 8, !tbaa !18
  %i.bsn = icmp sgt i64 %i.bsk, 0
  br i1 %i.bsn, label %bb.jw, label %case_conv.exit2594

bb.jw:                                            ; preds = %RSTRING_PTR.exit2584
  %i.bso = getelementptr i8, ptr %i.bsi, i64 %i.bsd ; 46 uses
  %i.bsp = and i32 %.019203305, 12
  switch i32 %i.bsp, label %case_conv.exit2594 [
    i32 8, label %iter.check5526
    i32 4, label %iter.check5613
  ]

iter.check5613:                                   ; preds = %bb.jw
  %min.iters.check5552 = icmp ult i64 %i.bsk, 4
  br i1 %min.iters.check5552, label %.preheader20.i2585.preheader, label %vector.main.loop.iter.check5553

vector.main.loop.iter.check5553:                  ; preds = %iter.check5613
  %min.iters.check5554 = icmp ult i64 %i.bsk, 16
  br i1 %min.iters.check5554, label %vec.epilog.ph5617, label %vector.ph5555

vector.ph5555:                                    ; preds = %vector.main.loop.iter.check5553
  %i.bsq = and i64 %i.bsk, 12
  %n.vec5556 = and i64 %i.bsk, 9223372036854775792 ; 4 uses
  %i.bsr = and i64 %i.bsk, 15
  %i.bss = getelementptr i8, ptr %i.bso, i64 %n.vec5556
  br label %vector.body5557

vector.body5557:                                  ; preds = %vector.ph5555, %pred.store.continue5607
  %index5558 = phi i64 [ 0, %vector.ph5555 ], [ %index.next5608, %pred.store.continue5607 ] ; 17 uses
  %next.gep5559.a = getelementptr i8, ptr %i.bso, i64 %index5558 ; 2 uses
  %i.bst = getelementptr i8, ptr %i.bso, i64 %index5558
  %next.gep5560.a = getelementptr i8, ptr %i.bst, i64 1
  %i.bsu = getelementptr i8, ptr %i.bso, i64 %index5558
  %next.gep5561.a = getelementptr i8, ptr %i.bsu, i64 2
  %i.bsv = getelementptr i8, ptr %i.bso, i64 %index5558
  %next.gep5562.a = getelementptr i8, ptr %i.bsv, i64 3
  %i.bsw = getelementptr i8, ptr %i.bso, i64 %index5558
  %next.gep5563.a = getelementptr i8, ptr %i.bsw, i64 4
  %i.bsx = getelementptr i8, ptr %i.bso, i64 %index5558
  %next.gep5564.a = getelementptr i8, ptr %i.bsx, i64 5
  %i.bsy = getelementptr i8, ptr %i.bso, i64 %index5558
  %next.gep5565.a = getelementptr i8, ptr %i.bsy, i64 6
  %i.bsz = getelementptr i8, ptr %i.bso, i64 %index5558
  %next.gep5566.a = getelementptr i8, ptr %i.bsz, i64 7
  %i.bta = getelementptr i8, ptr %i.bso, i64 %index5558
  %next.gep5567.a = getelementptr i8, ptr %i.bta, i64 8
  %i.btb = getelementptr i8, ptr %i.bso, i64 %index5558
  %next.gep5568.a = getelementptr i8, ptr %i.btb, i64 9
  %i.btc = getelementptr i8, ptr %i.bso, i64 %index5558
  %next.gep5569.a = getelementptr i8, ptr %i.btc, i64 10
  %i.btd = getelementptr i8, ptr %i.bso, i64 %index5558
  %next.gep5570 = getelementptr i8, ptr %i.btd, i64 11
  %i.bte = getelementptr i8, ptr %i.bso, i64 %index5558
  %next.gep5571 = getelementptr i8, ptr %i.bte, i64 12
  %i.btf = getelementptr i8, ptr %i.bso, i64 %index5558
  %next.gep5572 = getelementptr i8, ptr %i.btf, i64 13
  %i.btg = getelementptr i8, ptr %i.bso, i64 %index5558
  %next.gep5573 = getelementptr i8, ptr %i.btg, i64 14
  %i.bth = getelementptr i8, ptr %i.bso, i64 %index5558
  %next.gep5574 = getelementptr i8, ptr %i.bth, i64 15
  %wide.load5575 = load <16 x i8>, ptr %next.gep5559.a, align 1, !tbaa !15 ; 17 uses
  %i.bti = sext <16 x i8> %wide.load5575 to <16 x i32>
  %i.btj = add nsw <16 x i32> %i.bti, splat (i32 -65)
  %i.btk = icmp ult <16 x i32> %i.btj, splat (i32 26) ; 16 uses
  %i.btl = extractelement <16 x i1> %i.btk, i64 0
  br i1 %i.btl, label %pred.store.if5576, label %pred.store.continue5577

pred.store.if5576:                                ; preds = %vector.body5557
  %i.btm = extractelement <16 x i8> %wide.load5575, i64 0
  %i.btn = or i8 %i.btm, 32
  store i8 %i.btn, ptr %next.gep5559.a, align 1, !tbaa !15
  br label %pred.store.continue5577

pred.store.continue5577:                          ; preds = %pred.store.if5576, %vector.body5557
  %i.bto = extractelement <16 x i1> %i.btk, i64 1
  br i1 %i.bto, label %pred.store.if5578, label %pred.store.continue5579

pred.store.if5578:                                ; preds = %pred.store.continue5577
  %i.btp = extractelement <16 x i8> %wide.load5575, i64 1
  %i.btq = or i8 %i.btp, 32
  store i8 %i.btq, ptr %next.gep5560.a, align 1, !tbaa !15
  br label %pred.store.continue5579

pred.store.continue5579:                          ; preds = %pred.store.if5578, %pred.store.continue5577
  %i.btr = extractelement <16 x i1> %i.btk, i64 2
  br i1 %i.btr, label %pred.store.if5580, label %pred.store.continue5581

pred.store.if5580:                                ; preds = %pred.store.continue5579
  %i.bts = extractelement <16 x i8> %wide.load5575, i64 2
  %i.btt = or i8 %i.bts, 32
  store i8 %i.btt, ptr %next.gep5561.a, align 1, !tbaa !15
  br label %pred.store.continue5581

pred.store.continue5581:                          ; preds = %pred.store.if5580, %pred.store.continue5579
  %i.btu = extractelement <16 x i1> %i.btk, i64 3
  br i1 %i.btu, label %pred.store.if5582, label %pred.store.continue5583

pred.store.if5582:                                ; preds = %pred.store.continue5581
  %i.btv = extractelement <16 x i8> %wide.load5575, i64 3
  %i.btw = or i8 %i.btv, 32
  store i8 %i.btw, ptr %next.gep5562.a, align 1, !tbaa !15
  br label %pred.store.continue5583

pred.store.continue5583:                          ; preds = %pred.store.if5582, %pred.store.continue5581
  %i.btx = extractelement <16 x i1> %i.btk, i64 4
  br i1 %i.btx, label %pred.store.if5584, label %pred.store.continue5585

pred.store.if5584:                                ; preds = %pred.store.continue5583
  %i.bty = extractelement <16 x i8> %wide.load5575, i64 4
  %i.btz = or i8 %i.bty, 32
  store i8 %i.btz, ptr %next.gep5563.a, align 1, !tbaa !15
  br label %pred.store.continue5585

pred.store.continue5585:                          ; preds = %pred.store.if5584, %pred.store.continue5583
  %i.bua = extractelement <16 x i1> %i.btk, i64 5
  br i1 %i.bua, label %pred.store.if5586, label %pred.store.continue5587

pred.store.if5586:                                ; preds = %pred.store.continue5585
  %i.bub = extractelement <16 x i8> %wide.load5575, i64 5
  %i.buc = or i8 %i.bub, 32
  store i8 %i.buc, ptr %next.gep5564.a, align 1, !tbaa !15
  br label %pred.store.continue5587

pred.store.continue5587:                          ; preds = %pred.store.if5586, %pred.store.continue5585
  %i.bud = extractelement <16 x i1> %i.btk, i64 6
  br i1 %i.bud, label %pred.store.if5588, label %pred.store.continue5589

pred.store.if5588:                                ; preds = %pred.store.continue5587
  %i.bue = extractelement <16 x i8> %wide.load5575, i64 6
  %i.buf = or i8 %i.bue, 32
  store i8 %i.buf, ptr %next.gep5565.a, align 1, !tbaa !15
  br label %pred.store.continue5589

pred.store.continue5589:                          ; preds = %pred.store.if5588, %pred.store.continue5587
  %i.bug = extractelement <16 x i1> %i.btk, i64 7
  br i1 %i.bug, label %pred.store.if5590, label %pred.store.continue5591

pred.store.if5590:                                ; preds = %pred.store.continue5589
  %i.buh = extractelement <16 x i8> %wide.load5575, i64 7
  %i.bui = or i8 %i.buh, 32
  store i8 %i.bui, ptr %next.gep5566.a, align 1, !tbaa !15
  br label %pred.store.continue5591

pred.store.continue5591:                          ; preds = %pred.store.if5590, %pred.store.continue5589
  %i.buj = extractelement <16 x i1> %i.btk, i64 8
  br i1 %i.buj, label %pred.store.if5592, label %pred.store.continue5593

pred.store.if5592:                                ; preds = %pred.store.continue5591
  %i.buk = extractelement <16 x i8> %wide.load5575, i64 8
  %i.bul = or i8 %i.buk, 32
  store i8 %i.bul, ptr %next.gep5567.a, align 1, !tbaa !15
  br label %pred.store.continue5593

pred.store.continue5593:                          ; preds = %pred.store.if5592, %pred.store.continue5591
  %i.bum = extractelement <16 x i1> %i.btk, i64 9
  br i1 %i.bum, label %pred.store.if5594, label %pred.store.continue5595

pred.store.if5594:                                ; preds = %pred.store.continue5593
  %i.bun = extractelement <16 x i8> %wide.load5575, i64 9
  %i.buo = or i8 %i.bun, 32
  store i8 %i.buo, ptr %next.gep5568.a, align 1, !tbaa !15
  br label %pred.store.continue5595

pred.store.continue5595:                          ; preds = %pred.store.if5594, %pred.store.continue5593
  %i.bup = extractelement <16 x i1> %i.btk, i64 10
  br i1 %i.bup, label %pred.store.if5596, label %pred.store.continue5597

pred.store.if5596:                                ; preds = %pred.store.continue5595
  %i.buq = extractelement <16 x i8> %wide.load5575, i64 10
  %i.bur = or i8 %i.buq, 32
  store i8 %i.bur, ptr %next.gep5569.a, align 1, !tbaa !15
  br label %pred.store.continue5597

pred.store.continue5597:                          ; preds = %pred.store.if5596, %pred.store.continue5595
  %i.bus = extractelement <16 x i1> %i.btk, i64 11
  br i1 %i.bus, label %pred.store.if5598, label %pred.store.continue5599

pred.store.if5598:                                ; preds = %pred.store.continue5597
  %i.but = extractelement <16 x i8> %wide.load5575, i64 11
  %i.buu = or i8 %i.but, 32
  store i8 %i.buu, ptr %next.gep5570, align 1, !tbaa !15
  br label %pred.store.continue5599

pred.store.continue5599:                          ; preds = %pred.store.if5598, %pred.store.continue5597
  %i.buv = extractelement <16 x i1> %i.btk, i64 12
  br i1 %i.buv, label %pred.store.if5600, label %pred.store.continue5601

pred.store.if5600:                                ; preds = %pred.store.continue5599
  %i.buw = extractelement <16 x i8> %wide.load5575, i64 12
  %i.bux = or i8 %i.buw, 32
  store i8 %i.bux, ptr %next.gep5571, align 1, !tbaa !15
  br label %pred.store.continue5601

pred.store.continue5601:                          ; preds = %pred.store.if5600, %pred.store.continue5599
  %i.buy = extractelement <16 x i1> %i.btk, i64 13
end_hunk_5
begin_hunk_6_@rb_strftime_with_timespec:bb.a
  %i.byf = extractelement <16 x i1> %i.bwx, i64 11
  br i1 %i.byf, label %pred.store.if5511, label %pred.store.continue5512

pred.store.if5511:                                ; preds = %pred.store.continue5510
  %i.byg = extractelement <16 x i8> %wide.load5488, i64 11
  %i.byh = and i8 %i.byg, 95
  store i8 %i.byh, ptr %next.gep5483, align 1, !tbaa !15
  br label %pred.store.continue5512

pred.store.continue5512:                          ; preds = %pred.store.if5511, %pred.store.continue5510
  %i.byi = extractelement <16 x i1> %i.bwx, i64 12
  br i1 %i.byi, label %pred.store.if5513, label %pred.store.continue5514

pred.store.if5513:                                ; preds = %pred.store.continue5512
  %i.byj = extractelement <16 x i8> %wide.load5488, i64 12
  %i.byk = and i8 %i.byj, 95
  store i8 %i.byk, ptr %next.gep5484, align 1, !tbaa !15
  br label %pred.store.continue5514

pred.store.continue5514:                          ; preds = %pred.store.if5513, %pred.store.continue5512
  %i.byl = extractelement <16 x i1> %i.bwx, i64 13
  br i1 %i.byl, label %pred.store.if5515, label %pred.store.continue5516

pred.store.if5515:                                ; preds = %pred.store.continue5514
  %i.bym = extractelement <16 x i8> %wide.load5488, i64 13
  %i.byn = and i8 %i.bym, 95
  store i8 %i.byn, ptr %next.gep5485, align 1, !tbaa !15
  br label %pred.store.continue5516

pred.store.continue5516:                          ; preds = %pred.store.if5515, %pred.store.continue5514
  %i.byo = extractelement <16 x i1> %i.bwx, i64 14
  br i1 %i.byo, label %pred.store.if5517, label %pred.store.continue5518

pred.store.if5517:                                ; preds = %pred.store.continue5516
  %i.byp = extractelement <16 x i8> %wide.load5488, i64 14
  %i.byq = and i8 %i.byp, 95
  store i8 %i.byq, ptr %next.gep5486, align 1, !tbaa !15
  br label %pred.store.continue5518

pred.store.continue5518:                          ; preds = %pred.store.if5517, %pred.store.continue5516
  %i.byr = extractelement <16 x i1> %i.bwx, i64 15
  br i1 %i.byr, label %pred.store.if5519, label %pred.store.continue5520

pred.store.if5519:                                ; preds = %pred.store.continue5518
  %i.bys = extractelement <16 x i8> %wide.load5488, i64 15
  %i.byt = and i8 %i.bys, 95
  store i8 %i.byt, ptr %next.gep5487, align 1, !tbaa !15
  br label %pred.store.continue5520

pred.store.continue5520:                          ; preds = %pred.store.if5519, %pred.store.continue5518
  %index.next5521 = add nuw i64 %index5471, 16    ; 2 uses
  %i.byu = icmp eq i64 %index.next5521, %n.vec5469
  br i1 %i.byu, label %middle.block5522, label %vector.body5470, !llvm.loop !43

middle.block5522:                                 ; preds = %pred.store.continue5520
  %cmp.n5523 = icmp eq i64 %i.bsk, %n.vec5469
  br i1 %cmp.n5523, label %case_conv.exit2594, label %vec.epilog.iter.check5528

vec.epilog.iter.check5528:                        ; preds = %middle.block5522
  %min.epilog.iters.check5529 = icmp eq i64 %i.bwd, 0
  br i1 %min.epilog.iters.check5529, label %.preheader.i2590.preheader, label %vec.epilog.ph5530, !prof !92

vec.epilog.ph5530:                                ; preds = %vector.main.loop.iter.check5466, %vec.epilog.iter.check5528
  %vec.epilog.resume.val5524 = phi i64 [ %n.vec5469, %vec.epilog.iter.check5528 ], [ 0, %vector.main.loop.iter.check5466 ]
  %n.vec5531 = and i64 %i.bsk, 9223372036854775804 ; 3 uses
  %i.byv = and i64 %i.bsk, 3
  %i.byw = getelementptr i8, ptr %i.bso, i64 %n.vec5531
  br label %vec.epilog.vector.body5532

vec.epilog.vector.body5532:                       ; preds = %pred.store.continue5546, %vec.epilog.ph5530
  %index5533 = phi i64 [ %vec.epilog.resume.val5524, %vec.epilog.ph5530 ], [ %index.next5547, %pred.store.continue5546 ] ; 5 uses
  %next.gep5534 = getelementptr i8, ptr %i.bso, i64 %index5533 ; 2 uses
  %i.byx = getelementptr i8, ptr %i.bso, i64 %index5533
  %next.gep5535 = getelementptr i8, ptr %i.byx, i64 1
  %i.byy = getelementptr i8, ptr %i.bso, i64 %index5533
  %next.gep5536 = getelementptr i8, ptr %i.byy, i64 2
  %i.byz = getelementptr i8, ptr %i.bso, i64 %index5533
  %next.gep5537 = getelementptr i8, ptr %i.byz, i64 3
  %wide.load5538 = load <4 x i8>, ptr %next.gep5534, align 1, !tbaa !15 ; 5 uses
  %i.bza = sext <4 x i8> %wide.load5538 to <4 x i32>
  %i.bzb = add nsw <4 x i32> %i.bza, splat (i32 -97)
  %i.bzc = icmp ult <4 x i32> %i.bzb, splat (i32 26) ; 4 uses
  %i.bzd = extractelement <4 x i1> %i.bzc, i64 0
  br i1 %i.bzd, label %pred.store.if5539, label %pred.store.continue5540

pred.store.if5539:                                ; preds = %vec.epilog.vector.body5532
  %i.bze = extractelement <4 x i8> %wide.load5538, i64 0
  %i.bzf = and i8 %i.bze, 95
  store i8 %i.bzf, ptr %next.gep5534, align 1, !tbaa !15
  br label %pred.store.continue5540

pred.store.continue5540:                          ; preds = %pred.store.if5539, %vec.epilog.vector.body5532
  %i.bzg = extractelement <4 x i1> %i.bzc, i64 1
  br i1 %i.bzg, label %pred.store.if5541, label %pred.store.continue5542

pred.store.if5541:                                ; preds = %pred.store.continue5540
  %i.bzh = extractelement <4 x i8> %wide.load5538, i64 1
  %i.bzi = and i8 %i.bzh, 95
  store i8 %i.bzi, ptr %next.gep5535, align 1, !tbaa !15
  br label %pred.store.continue5542

pred.store.continue5542:                          ; preds = %pred.store.if5541, %pred.store.continue5540
  %i.bzj = extractelement <4 x i1> %i.bzc, i64 2
  br i1 %i.bzj, label %pred.store.if5543, label %pred.store.continue5544

pred.store.if5543:                                ; preds = %pred.store.continue5542
  %i.bzk = extractelement <4 x i8> %wide.load5538, i64 2
  %i.bzl = and i8 %i.bzk, 95
  store i8 %i.bzl, ptr %next.gep5536, align 1, !tbaa !15
  br label %pred.store.continue5544

pred.store.continue5544:                          ; preds = %pred.store.if5543, %pred.store.continue5542
  %i.bzm = extractelement <4 x i1> %i.bzc, i64 3
  br i1 %i.bzm, label %pred.store.if5545, label %pred.store.continue5546

pred.store.if5545:                                ; preds = %pred.store.continue5544
  %i.bzn = extractelement <4 x i8> %wide.load5538, i64 3
  %i.bzo = and i8 %i.bzn, 95
  store i8 %i.bzo, ptr %next.gep5537, align 1, !tbaa !15
  br label %pred.store.continue5546

pred.store.continue5546:                          ; preds = %pred.store.if5545, %pred.store.continue5544
  %index.next5547 = add nuw i64 %index5533, 4     ; 2 uses
  %i.bzp = icmp eq i64 %index.next5547, %n.vec5531
  br i1 %i.bzp, label %vec.epilog.middle.block5548, label %vec.epilog.vector.body5532, !llvm.loop !44

vec.epilog.middle.block5548:                      ; preds = %pred.store.continue5546
  %cmp.n5549 = icmp eq i64 %i.bsk, %n.vec5531
  br i1 %cmp.n5549, label %case_conv.exit2594, label %.preheader.i2590.preheader

.preheader.i2590.preheader:                       ; preds = %iter.check5526, %vec.epilog.iter.check5528, %vec.epilog.middle.block5548
  %.013.i2591.ph = phi i64 [ %i.bsk, %iter.check5526 ], [ %i.bwe, %vec.epilog.iter.check5528 ], [ %i.byv, %vec.epilog.middle.block5548 ]
  %.0.i2592.ph = phi ptr [ %i.bso, %iter.check5526 ], [ %i.bwf, %vec.epilog.iter.check5528 ], [ %i.byw, %vec.epilog.middle.block5548 ]
  br label %.preheader.i2590

.preheader.i2590:                                 ; preds = %.preheader.i2590.preheader, %bb.jy
  %.013.i2591 = phi i64 [ %i.bzw, %bb.jy ], [ %.013.i2591.ph, %.preheader.i2590.preheader ]
  %.0.i2592 = phi ptr [ %i.bzv, %bb.jy ], [ %.0.i2592.ph, %.preheader.i2590.preheader ] ; 3 uses
  %i.bzq = load i8, ptr %.0.i2592, align 1, !tbaa !15 ; 2 uses
  %i.bzr = sext i8 %i.bzq to i32
  %i.bzs = add nsw i32 %i.bzr, -123
  %i.bzt = icmp ult i32 %i.bzs, -26
  br i1 %i.bzt, label %bb.jy, label %bb.jx

bb.jx:                                            ; preds = %.preheader.i2590
  %i.bzu = and i8 %i.bzq, 95
  store i8 %i.bzu, ptr %.0.i2592, align 1, !tbaa !15
  br label %bb.jy

bb.jy:                                            ; preds = %bb.jx, %.preheader.i2590
  %i.bzv = getelementptr i8, ptr %.0.i2592, i64 1
  %i.bzw = add nsw i64 %.013.i2591, -1            ; 2 uses
  %.not19.i2593 = icmp eq i64 %i.bzw, 0
  br i1 %.not19.i2593, label %case_conv.exit2594, label %.preheader.i2590, !llvm.loop !45

.preheader20.i2585:                               ; preds = %.preheader20.i2585.preheader, %bb.ka
  %.114.i2586 = phi i64 [ %i.cad, %bb.ka ], [ %.114.i2586.ph, %.preheader20.i2585.preheader ]
  %.1.i2587 = phi ptr [ %i.cac, %bb.ka ], [ %.1.i2587.ph, %.preheader20.i2585.preheader ] ; 3 uses
  %i.bzx = load i8, ptr %.1.i2587, align 1, !tbaa !15 ; 2 uses
  %i.bzy = sext i8 %i.bzx to i32
  %i.bzz = add nsw i32 %i.bzy, -91
  %i.caa = icmp ult i32 %i.bzz, -26
  br i1 %i.caa, label %bb.ka, label %bb.jz

bb.jz:                                            ; preds = %.preheader20.i2585
  %i.cab = or i8 %i.bzx, 32
  store i8 %i.cab, ptr %.1.i2587, align 1, !tbaa !15
  br label %bb.ka

bb.ka:                                            ; preds = %bb.jz, %.preheader20.i2585
  %i.cac = getelementptr i8, ptr %.1.i2587, i64 1
  %i.cad = add nsw i64 %.114.i2586, -1            ; 2 uses
  %.not17.i2588 = icmp eq i64 %i.cad, 0
  br i1 %.not17.i2588, label %case_conv.exit2594, label %.preheader20.i2585, !llvm.loop !46

case_conv.exit2594:                               ; preds = %bb.ka, %bb.jy, %middle.block5609, %vec.epilog.middle.block5635, %middle.block5522, %vec.epilog.middle.block5548, %bb.jw, %RSTRING_PTR.exit2584
  %i.cae = sext i32 %.019283304 to i64            ; 5 uses
  %i.caf = icmp slt i64 %i.bsk, %i.cae
  %i.cag = getelementptr i8, ptr %i.bsi, i64 %i.bsj ; 5 uses
  br i1 %i.caf, label %bb.kb, label %case_conv.exit2868

bb.kb:                                            ; preds = %case_conv.exit2594
  %i.cah = load ptr, ptr %i.b, align 8, !tbaa !18 ; 2 uses
  %.not2185 = icmp ult ptr %i.cag, %i.cah
  br i1 %.not2185, label %bb.kc, label %._crit_edge3698

._crit_edge3698:                                  ; preds = %bb.kb
  %.pre3772 = ptrtoint ptr %i.cag to i64
  br label %bb.kd

bb.kc:                                            ; preds = %bb.kb
  %i.cai = ptrtoint ptr %i.cah to i64
  %i.caj = ptrtoint ptr %i.cag to i64             ; 2 uses
  %i.cak = xor i64 %i.caj, -1
  %i.cal = add i64 %i.cai, %i.cak
  %.not2186 = icmp sgt i64 %i.cal, %i.cae
  br i1 %.not2186, label %buffer_size_check.exit2602, label %bb.kd

bb.kd:                                            ; preds = %._crit_edge3698, %bb.kc
  %.pre-phi3773 = phi i64 [ %.pre3772, %._crit_edge3698 ], [ %i.caj, %bb.kc ]
  %i.cam = ptrtoint ptr %i.bsi to i64
  %i.can = sub i64 %.pre-phi3773, %i.cam          ; 5 uses
  %i.cao = shl nsw i64 %i.cae, 1
  %i.cap = add i64 %i.can, %i.cao
  %i.caq = call i64 @rb_str_capacity(i64 noundef %0) #12
  br label %bb.ke

bb.ke:                                            ; preds = %bb.ke, %bb.kd
  %.0.i2595 = phi i64 [ %i.caq, %bb.kd ], [ %i.cas, %bb.ke ] ; 6 uses
  %i.car = icmp ult i64 %.0.i2595, %i.cap
  %i.cas = shl i64 %.0.i2595, 1
  br i1 %i.car, label %bb.ke, label %bb.kf, !llvm.loop !0

bb.kf:                                            ; preds = %bb.ke
  %i.cat = icmp ult i64 %.0.i2595, %i.can
  %i.cau = icmp ugt i64 %.0.i2595, %9
  %or.cond.i2596 = or i1 %i.cat, %i.cau
  br i1 %or.cond.i2596, label %resize_buffer.exit2600.thread, label %bb.kg

bb.kg:                                            ; preds = %bb.kf
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.can) #11
  %i.cav = sub nuw i64 %.0.i2595, %i.can
  call void @rb_str_modify_expand(i64 noundef %0, i64 noundef %i.cav) #11
  %i.caw = load i64, ptr %i.h, align 8, !tbaa !14
  %i.cax = and i64 %i.caw, 8192
  %.not.i.i2597 = icmp eq i64 %i.cax, 0
  br i1 %.not.i.i2597, label %resize_buffer.exit2600, label %bb.kh

bb.kh:                                            ; preds = %bb.kg
  %i.cay = load ptr, ptr %i.m, align 8, !tbaa !15
  br label %resize_buffer.exit2600

resize_buffer.exit2600:                           ; preds = %bb.kg, %bb.kh
  %i.caz = phi ptr [ %i.cay, %bb.kh ], [ %i.m, %bb.kg ] ; 3 uses
  %i.cba = getelementptr i8, ptr %i.caz, i64 %.0.i2595
  store ptr %i.cba, ptr %i.b, align 8, !tbaa !18
  store ptr %i.caz, ptr %i.a, align 8, !tbaa !18
  %i.cbb = getelementptr i8, ptr %i.caz, i64 %i.can ; 2 uses
  %.not.i2601 = icmp eq ptr %i.cbb, null
  br i1 %.not.i2601, label %resize_buffer.exit2600.thread, label %buffer_size_check.exit2602

resize_buffer.exit2600.thread:                    ; preds = %bb.kf, %resize_buffer.exit2600
  %i.cbc = call i64 @rb_enc_str_new(ptr noundef %1, i64 noundef range(i64 1, 0) %2, ptr noundef %.01901) #11
  call void @rb_syserr_fail_str(i32 noundef 34, i64 noundef %i.cbc) #13
  unreachable

buffer_size_check.exit2602:                       ; preds = %resize_buffer.exit2600, %bb.kc
  %.19 = phi ptr [ %i.cag, %bb.kc ], [ %i.cbb, %resize_buffer.exit2600 ]
  %i.cbd = sub i64 0, %i.bsk                      ; 2 uses
  %i.cbe = getelementptr i8, ptr %.19, i64 %i.cbd ; 3 uses
  %i.cbf = getelementptr i8, ptr %i.cbe, i64 %i.cae ; 2 uses
  %i.cbg = getelementptr i8, ptr %i.cbf, i64 %i.cbd
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.cbg, ptr noundef nonnull align 1 %i.cbe, i64 noundef range(i64 -9223372036854775808, 2147483647) %i.bsk, i1 noundef false) #11
  %.not2187 = icmp eq i8 %.019153307, 0
  %narrow2188 = select i1 %.not2187, i8 32, i8 %.019153307
  %i.cbh = sub i64 %i.cae, %i.bsk
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.cbe, i8 noundef %narrow2188, i64 noundef %i.cbh, i1 noundef false) #11
  br label %case_conv.exit2868

bb.ki:                                            ; preds = %.lr.ph
  %i.cbi = and i32 %.019203305, 1
  %.not2181 = icmp eq i32 %i.cbi, 0
  %i.cbj = icmp slt i32 %.019283304, 1
  %i.cbk = select i1 %i.cbj, i32 2, i32 %.019283304
  %i.cbl = select i1 %.not2181, i32 %i.cbk, i32 1 ; 2 uses
  %i.cbm = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.cbn = ptrtoint ptr %i.bl to i64              ; 2 uses
  %i.cbo = ptrtoint ptr %i.cbm to i64
  %i.cbp = sub i64 %i.cbn, %i.cbo                 ; 6 uses
  %i.cbq = load ptr, ptr %i.b, align 8, !tbaa !18 ; 2 uses
  %.not2182 = icmp ult ptr %i.bl, %i.cbq
  %i.cbr = sext i32 %i.cbl to i64                 ; 2 uses
  br i1 %.not2182, label %bb.kj, label %._crit_edge3697

bb.kj:                                            ; preds = %bb.ki
  %i.cbs = ptrtoint ptr %i.cbq to i64
  %i.cbt = xor i64 %i.cbn, -1
  %i.cbu = add i64 %i.cbs, %i.cbt
  %.not2183 = icmp sgt i64 %i.cbu, %i.cbr
  br i1 %.not2183, label %buffer_size_check.exit2610, label %._crit_edge3697

._crit_edge3697:                                  ; preds = %bb.ki, %bb.kj
  %i.cbv = shl nsw i64 %i.cbr, 1
  %i.cbw = add i64 %i.cbp, %i.cbv
  %i.cbx = call i64 @rb_str_capacity(i64 noundef %0) #12
  br label %bb.kk

bb.kk:                                            ; preds = %bb.kk, %._crit_edge3697
  %.0.i2603 = phi i64 [ %i.cbx, %._crit_edge3697 ], [ %i.cbz, %bb.kk ] ; 6 uses
  %i.cby = icmp ult i64 %.0.i2603, %i.cbw
  %i.cbz = shl i64 %.0.i2603, 1
  br i1 %i.cby, label %bb.kk, label %bb.kl, !llvm.loop !0

bb.kl:                                            ; preds = %bb.kk
  %i.cca = icmp ult i64 %.0.i2603, %i.cbp
  %i.ccb = icmp ugt i64 %.0.i2603, %9
  %or.cond.i2604 = or i1 %i.cca, %i.ccb
  br i1 %or.cond.i2604, label %resize_buffer.exit2608.thread, label %bb.km

bb.km:                                            ; preds = %bb.kl
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.cbp) #11
  %i.ccc = sub nuw i64 %.0.i2603, %i.cbp
  call void @rb_str_modify_expand(i64 noundef %0, i64 noundef %i.ccc) #11
  %i.ccd = load i64, ptr %i.h, align 8, !tbaa !14
  %i.cce = and i64 %i.ccd, 8192
  %.not.i.i2605 = icmp eq i64 %i.cce, 0
  br i1 %.not.i.i2605, label %resize_buffer.exit2608, label %bb.kn

bb.kn:                                            ; preds = %bb.km
  %i.ccf = load ptr, ptr %i.m, align 8, !tbaa !15
  br label %resize_buffer.exit2608

resize_buffer.exit2608:                           ; preds = %bb.km, %bb.kn
  %i.ccg = phi ptr [ %i.ccf, %bb.kn ], [ %i.m, %bb.km ] ; 2 uses
  %i.cch = getelementptr i8, ptr %i.ccg, i64 %.0.i2603
  store ptr %i.cch, ptr %i.b, align 8, !tbaa !18
  %i.cci = getelementptr i8, ptr %i.ccg, i64 %i.cbp
  %.not.i2609 = icmp eq ptr %i.cci, null
  br i1 %.not.i2609, label %resize_buffer.exit2608.thread, label %buffer_size_check.exit2610

resize_buffer.exit2608.thread:                    ; preds = %bb.kl, %resize_buffer.exit2608
  %i.ccj = call i64 @rb_enc_str_new(ptr noundef %1, i64 noundef range(i64 1, 0) %2, ptr noundef %.01901) #11
  call void @rb_syserr_fail_str(i32 noundef 34, i64 noundef %i.ccj) #13
  unreachable

buffer_size_check.exit2610:                       ; preds = %resize_buffer.exit2608, %bb.kj
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.cbp) #11
  %i.cck = icmp eq i8 %.019153307, 48
  %i.ccl = select i1 %i.cck, i64 4, i64 0
  %i.ccm = getelementptr i8, ptr @.str.2, i64 %i.ccl
  %i.ccn = load i64, ptr %i.ag, align 8
  %i.cco = trunc i64 %i.ccn to i32
  %i.ccp = lshr i32 %i.cco, 13
  %i.ccq = and i32 %i.ccp, 31
  %i.ccr = call range(i32 0, 512) i32 @llvm.umax.i32(i32 range(i32 0, 512) %i.ccq, i32 1)
  %i.ccs = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %0, ptr noundef %i.ccm, i32 noundef %i.cbl, i32 noundef %i.ccr) #11 ; 0 uses
  %i.cct = load i64, ptr %i.h, align 8, !tbaa !14
  %i.ccu = and i64 %i.cct, 8192
  %.not.i2611 = icmp eq i64 %i.ccu, 0
  br i1 %.not.i2611, label %RSTRING_PTR.exit2612, label %bb.ko

bb.ko:                                            ; preds = %buffer_size_check.exit2610
  %i.ccv = load ptr, ptr %i.m, align 8, !tbaa !15
  br label %RSTRING_PTR.exit2612

RSTRING_PTR.exit2612:                             ; preds = %buffer_size_check.exit2610, %bb.ko
  %i.ccw = phi ptr [ %i.ccv, %bb.ko ], [ %i.m, %buffer_size_check.exit2610 ] ; 3 uses
  %i.ccx = load i64, ptr %i.i, align 8, !tbaa !89
  store ptr %i.ccw, ptr %i.a, align 8, !tbaa !18
  %i.ccy = call i64 @rb_str_capacity(i64 noundef %0) #12
  %i.ccz = getelementptr i8, ptr %i.ccw, i64 %i.ccy
  store ptr %i.ccz, ptr %i.b, align 8, !tbaa !18
  %i.cda = getelementptr i8, ptr %i.ccw, i64 %i.ccx
  br label %case_conv.exit2868

bb.kp:                                            ; preds = %.lr.ph
  %i.cdb = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.cdc = ptrtoint ptr %i.bl to i64
  %i.cdd = ptrtoint ptr %i.cdb to i64
  %i.cde = sub i64 %i.cdc, %i.cdd                 ; 3 uses
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.cde) #11
  %i.cdf = call fastcc i64 @rb_strftime_with_timespec(i64 noundef %0, ptr noundef nonnull @.str.13, i64 noundef 11, ptr noundef %.01901, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef %7, i32 noundef %8, i64 noundef %9)
  %.not2176 = icmp eq i64 %i.cdf, 0
  br i1 %.not2176, label %.loopexit2998, label %bb.kq

bb.kq:                                            ; preds = %bb.kp
  %i.cdg = load i64, ptr %i.h, align 8, !tbaa !14
  %i.cdh = and i64 %i.cdg, 8192
  %.not.i2613 = icmp eq i64 %i.cdh, 0
  br i1 %.not.i2613, label %RSTRING_PTR.exit2614, label %bb.kr

bb.kr:                                            ; preds = %bb.kq
  %i.cdi = load ptr, ptr %i.m, align 8, !tbaa !15
  br label %RSTRING_PTR.exit2614

RSTRING_PTR.exit2614:                             ; preds = %bb.kq, %bb.kr
  %i.cdj = phi ptr [ %i.cdi, %bb.kr ], [ %i.m, %bb.kq ] ; 5 uses
  %i.cdk = load i64, ptr %i.i, align 8, !tbaa !89 ; 2 uses
  %i.cdl = sub i64 %i.cdk, %i.cde                 ; 25 uses
  store ptr %i.cdj, ptr %i.a, align 8, !tbaa !18
  %i.cdm = call i64 @rb_str_capacity(i64 noundef %0) #12
  %i.cdn = getelementptr i8, ptr %i.cdj, i64 %i.cdm
  store ptr %i.cdn, ptr %i.b, align 8, !tbaa !18
  %i.cdo = icmp sgt i64 %i.cdl, 0
  br i1 %i.cdo, label %bb.ks, label %case_conv.exit2624

bb.ks:                                            ; preds = %RSTRING_PTR.exit2614
  %i.cdp = getelementptr i8, ptr %i.cdj, i64 %i.cde ; 46 uses
  %i.cdq = and i32 %.019203305, 12
  switch i32 %i.cdq, label %case_conv.exit2624 [
    i32 8, label %iter.check5700
    i32 4, label %iter.check5787
  ]

iter.check5787:                                   ; preds = %bb.ks
  %min.iters.check5726 = icmp ult i64 %i.cdl, 4
  br i1 %min.iters.check5726, label %.preheader20.i2615.preheader, label %vector.main.loop.iter.check5727

vector.main.loop.iter.check5727:                  ; preds = %iter.check5787
  %min.iters.check5728 = icmp ult i64 %i.cdl, 16
  br i1 %min.iters.check5728, label %vec.epilog.ph5791, label %vector.ph5729

vector.ph5729:                                    ; preds = %vector.main.loop.iter.check5727
  %i.cdr = and i64 %i.cdl, 12
  %n.vec5730 = and i64 %i.cdl, 9223372036854775792 ; 4 uses
  %i.cds = and i64 %i.cdl, 15
  %i.cdt = getelementptr i8, ptr %i.cdp, i64 %n.vec5730
  br label %vector.body5731

vector.body5731:                                  ; preds = %vector.ph5729, %pred.store.continue5781
  %index5732 = phi i64 [ 0, %vector.ph5729 ], [ %index.next5782, %pred.store.continue5781 ] ; 17 uses
  %next.gep5733.a = getelementptr i8, ptr %i.cdp, i64 %index5732 ; 2 uses
  %i.cdu = getelementptr i8, ptr %i.cdp, i64 %index5732
  %next.gep5734.a = getelementptr i8, ptr %i.cdu, i64 1
  %i.cdv = getelementptr i8, ptr %i.cdp, i64 %index5732
  %next.gep5735.a = getelementptr i8, ptr %i.cdv, i64 2
  %i.cdw = getelementptr i8, ptr %i.cdp, i64 %index5732
  %next.gep5736.a = getelementptr i8, ptr %i.cdw, i64 3
  %i.cdx = getelementptr i8, ptr %i.cdp, i64 %index5732
  %next.gep5737.a = getelementptr i8, ptr %i.cdx, i64 4
  %i.cdy = getelementptr i8, ptr %i.cdp, i64 %index5732
  %next.gep5738.a = getelementptr i8, ptr %i.cdy, i64 5
  %i.cdz = getelementptr i8, ptr %i.cdp, i64 %index5732
  %next.gep5739.a = getelementptr i8, ptr %i.cdz, i64 6
  %i.cea = getelementptr i8, ptr %i.cdp, i64 %index5732
  %next.gep5740.a = getelementptr i8, ptr %i.cea, i64 7
  %i.ceb = getelementptr i8, ptr %i.cdp, i64 %index5732
  %next.gep5741.a = getelementptr i8, ptr %i.ceb, i64 8
  %i.cec = getelementptr i8, ptr %i.cdp, i64 %index5732
  %next.gep5742.a = getelementptr i8, ptr %i.cec, i64 9
  %i.ced = getelementptr i8, ptr %i.cdp, i64 %index5732
  %next.gep5743.a = getelementptr i8, ptr %i.ced, i64 10
  %i.cee = getelementptr i8, ptr %i.cdp, i64 %index5732
  %next.gep5744 = getelementptr i8, ptr %i.cee, i64 11
  %i.cef = getelementptr i8, ptr %i.cdp, i64 %index5732
  %next.gep5745 = getelementptr i8, ptr %i.cef, i64 12
  %i.ceg = getelementptr i8, ptr %i.cdp, i64 %index5732
  %next.gep5746 = getelementptr i8, ptr %i.ceg, i64 13
  %i.ceh = getelementptr i8, ptr %i.cdp, i64 %index5732
  %next.gep5747 = getelementptr i8, ptr %i.ceh, i64 14
  %i.cei = getelementptr i8, ptr %i.cdp, i64 %index5732
  %next.gep5748 = getelementptr i8, ptr %i.cei, i64 15
  %wide.load5749 = load <16 x i8>, ptr %next.gep5733.a, align 1, !tbaa !15 ; 17 uses
  %i.cej = sext <16 x i8> %wide.load5749 to <16 x i32>
  %i.cek = add nsw <16 x i32> %i.cej, splat (i32 -65)
  %i.cel = icmp ult <16 x i32> %i.cek, splat (i32 26) ; 16 uses
  %i.cem = extractelement <16 x i1> %i.cel, i64 0
  br i1 %i.cem, label %pred.store.if5750, label %pred.store.continue5751

pred.store.if5750:                                ; preds = %vector.body5731
  %i.cen = extractelement <16 x i8> %wide.load5749, i64 0
  %i.ceo = or i8 %i.cen, 32
  store i8 %i.ceo, ptr %next.gep5733.a, align 1, !tbaa !15
  br label %pred.store.continue5751

pred.store.continue5751:                          ; preds = %pred.store.if5750, %vector.body5731
  %i.cep = extractelement <16 x i1> %i.cel, i64 1
  br i1 %i.cep, label %pred.store.if5752, label %pred.store.continue5753

pred.store.if5752:                                ; preds = %pred.store.continue5751
  %i.ceq = extractelement <16 x i8> %wide.load5749, i64 1
  %i.cer = or i8 %i.ceq, 32
  store i8 %i.cer, ptr %next.gep5734.a, align 1, !tbaa !15
  br label %pred.store.continue5753

pred.store.continue5753:                          ; preds = %pred.store.if5752, %pred.store.continue5751
  %i.ces = extractelement <16 x i1> %i.cel, i64 2
  br i1 %i.ces, label %pred.store.if5754, label %pred.store.continue5755

pred.store.if5754:                                ; preds = %pred.store.continue5753
  %i.cet = extractelement <16 x i8> %wide.load5749, i64 2
  %i.ceu = or i8 %i.cet, 32
  store i8 %i.ceu, ptr %next.gep5735.a, align 1, !tbaa !15
  br label %pred.store.continue5755

pred.store.continue5755:                          ; preds = %pred.store.if5754, %pred.store.continue5753
  %i.cev = extractelement <16 x i1> %i.cel, i64 3
  br i1 %i.cev, label %pred.store.if5756, label %pred.store.continue5757

pred.store.if5756:                                ; preds = %pred.store.continue5755
  %i.cew = extractelement <16 x i8> %wide.load5749, i64 3
  %i.cex = or i8 %i.cew, 32
  store i8 %i.cex, ptr %next.gep5736.a, align 1, !tbaa !15
  br label %pred.store.continue5757

pred.store.continue5757:                          ; preds = %pred.store.if5756, %pred.store.continue5755
  %i.cey = extractelement <16 x i1> %i.cel, i64 4
  br i1 %i.cey, label %pred.store.if5758, label %pred.store.continue5759

pred.store.if5758:                                ; preds = %pred.store.continue5757
  %i.cez = extractelement <16 x i8> %wide.load5749, i64 4
  %i.cfa = or i8 %i.cez, 32
  store i8 %i.cfa, ptr %next.gep5737.a, align 1, !tbaa !15
  br label %pred.store.continue5759

pred.store.continue5759:                          ; preds = %pred.store.if5758, %pred.store.continue5757
  %i.cfb = extractelement <16 x i1> %i.cel, i64 5
  br i1 %i.cfb, label %pred.store.if5760, label %pred.store.continue5761

pred.store.if5760:                                ; preds = %pred.store.continue5759
  %i.cfc = extractelement <16 x i8> %wide.load5749, i64 5
  %i.cfd = or i8 %i.cfc, 32
  store i8 %i.cfd, ptr %next.gep5738.a, align 1, !tbaa !15
  br label %pred.store.continue5761

pred.store.continue5761:                          ; preds = %pred.store.if5760, %pred.store.continue5759
  %i.cfe = extractelement <16 x i1> %i.cel, i64 6
  br i1 %i.cfe, label %pred.store.if5762, label %pred.store.continue5763

pred.store.if5762:                                ; preds = %pred.store.continue5761
  %i.cff = extractelement <16 x i8> %wide.load5749, i64 6
  %i.cfg = or i8 %i.cff, 32
  store i8 %i.cfg, ptr %next.gep5739.a, align 1, !tbaa !15
  br label %pred.store.continue5763

pred.store.continue5763:                          ; preds = %pred.store.if5762, %pred.store.continue5761
  %i.cfh = extractelement <16 x i1> %i.cel, i64 7
  br i1 %i.cfh, label %pred.store.if5764, label %pred.store.continue5765

pred.store.if5764:                                ; preds = %pred.store.continue5763
  %i.cfi = extractelement <16 x i8> %wide.load5749, i64 7
  %i.cfj = or i8 %i.cfi, 32
  store i8 %i.cfj, ptr %next.gep5740.a, align 1, !tbaa !15
  br label %pred.store.continue5765

pred.store.continue5765:                          ; preds = %pred.store.if5764, %pred.store.continue5763
  %i.cfk = extractelement <16 x i1> %i.cel, i64 8
  br i1 %i.cfk, label %pred.store.if5766, label %pred.store.continue5767

pred.store.if5766:                                ; preds = %pred.store.continue5765
  %i.cfl = extractelement <16 x i8> %wide.load5749, i64 8
  %i.cfm = or i8 %i.cfl, 32
  store i8 %i.cfm, ptr %next.gep5741.a, align 1, !tbaa !15
  br label %pred.store.continue5767

pred.store.continue5767:                          ; preds = %pred.store.if5766, %pred.store.continue5765
  %i.cfn = extractelement <16 x i1> %i.cel, i64 9
  br i1 %i.cfn, label %pred.store.if5768, label %pred.store.continue5769

pred.store.if5768:                                ; preds = %pred.store.continue5767
  %i.cfo = extractelement <16 x i8> %wide.load5749, i64 9
  %i.cfp = or i8 %i.cfo, 32
  store i8 %i.cfp, ptr %next.gep5742.a, align 1, !tbaa !15
  br label %pred.store.continue5769

pred.store.continue5769:                          ; preds = %pred.store.if5768, %pred.store.continue5767
  %i.cfq = extractelement <16 x i1> %i.cel, i64 10
  br i1 %i.cfq, label %pred.store.if5770, label %pred.store.continue5771

pred.store.if5770:                                ; preds = %pred.store.continue5769
  %i.cfr = extractelement <16 x i8> %wide.load5749, i64 10
  %i.cfs = or i8 %i.cfr, 32
  store i8 %i.cfs, ptr %next.gep5743.a, align 1, !tbaa !15
  br label %pred.store.continue5771

pred.store.continue5771:                          ; preds = %pred.store.if5770, %pred.store.continue5769
  %i.cft = extractelement <16 x i1> %i.cel, i64 11
  br i1 %i.cft, label %pred.store.if5772, label %pred.store.continue5773

pred.store.if5772:                                ; preds = %pred.store.continue5771
  %i.cfu = extractelement <16 x i8> %wide.load5749, i64 11
  %i.cfv = or i8 %i.cfu, 32
  store i8 %i.cfv, ptr %next.gep5744, align 1, !tbaa !15
  br label %pred.store.continue5773

pred.store.continue5773:                          ; preds = %pred.store.if5772, %pred.store.continue5771
  %i.cfw = extractelement <16 x i1> %i.cel, i64 12
  br i1 %i.cfw, label %pred.store.if5774, label %pred.store.continue5775

pred.store.if5774:                                ; preds = %pred.store.continue5773
  %i.cfx = extractelement <16 x i8> %wide.load5749, i64 12
  %i.cfy = or i8 %i.cfx, 32
  store i8 %i.cfy, ptr %next.gep5745, align 1, !tbaa !15
  br label %pred.store.continue5775

pred.store.continue5775:                          ; preds = %pred.store.if5774, %pred.store.continue5773
  %i.cfz = extractelement <16 x i1> %i.cel, i64 13
end_hunk_6
begin_hunk_7_@rb_strftime_with_timespec:bb.a
  %i.cjg = extractelement <16 x i1> %i.chy, i64 11
  br i1 %i.cjg, label %pred.store.if5685, label %pred.store.continue5686

pred.store.if5685:                                ; preds = %pred.store.continue5684
  %i.cjh = extractelement <16 x i8> %wide.load5662, i64 11
  %i.cji = and i8 %i.cjh, 95
  store i8 %i.cji, ptr %next.gep5657, align 1, !tbaa !15
  br label %pred.store.continue5686

pred.store.continue5686:                          ; preds = %pred.store.if5685, %pred.store.continue5684
  %i.cjj = extractelement <16 x i1> %i.chy, i64 12
  br i1 %i.cjj, label %pred.store.if5687, label %pred.store.continue5688

pred.store.if5687:                                ; preds = %pred.store.continue5686
  %i.cjk = extractelement <16 x i8> %wide.load5662, i64 12
  %i.cjl = and i8 %i.cjk, 95
  store i8 %i.cjl, ptr %next.gep5658, align 1, !tbaa !15
  br label %pred.store.continue5688

pred.store.continue5688:                          ; preds = %pred.store.if5687, %pred.store.continue5686
  %i.cjm = extractelement <16 x i1> %i.chy, i64 13
  br i1 %i.cjm, label %pred.store.if5689, label %pred.store.continue5690

pred.store.if5689:                                ; preds = %pred.store.continue5688
  %i.cjn = extractelement <16 x i8> %wide.load5662, i64 13
  %i.cjo = and i8 %i.cjn, 95
  store i8 %i.cjo, ptr %next.gep5659, align 1, !tbaa !15
  br label %pred.store.continue5690

pred.store.continue5690:                          ; preds = %pred.store.if5689, %pred.store.continue5688
  %i.cjp = extractelement <16 x i1> %i.chy, i64 14
  br i1 %i.cjp, label %pred.store.if5691, label %pred.store.continue5692

pred.store.if5691:                                ; preds = %pred.store.continue5690
  %i.cjq = extractelement <16 x i8> %wide.load5662, i64 14
  %i.cjr = and i8 %i.cjq, 95
  store i8 %i.cjr, ptr %next.gep5660, align 1, !tbaa !15
  br label %pred.store.continue5692

pred.store.continue5692:                          ; preds = %pred.store.if5691, %pred.store.continue5690
  %i.cjs = extractelement <16 x i1> %i.chy, i64 15
  br i1 %i.cjs, label %pred.store.if5693, label %pred.store.continue5694

pred.store.if5693:                                ; preds = %pred.store.continue5692
  %i.cjt = extractelement <16 x i8> %wide.load5662, i64 15
  %i.cju = and i8 %i.cjt, 95
  store i8 %i.cju, ptr %next.gep5661, align 1, !tbaa !15
  br label %pred.store.continue5694

pred.store.continue5694:                          ; preds = %pred.store.if5693, %pred.store.continue5692
  %index.next5695 = add nuw i64 %index5645, 16    ; 2 uses
  %i.cjv = icmp eq i64 %index.next5695, %n.vec5643
  br i1 %i.cjv, label %middle.block5696, label %vector.body5644, !llvm.loop !49

middle.block5696:                                 ; preds = %pred.store.continue5694
  %cmp.n5697 = icmp eq i64 %i.cdl, %n.vec5643
  br i1 %cmp.n5697, label %case_conv.exit2624, label %vec.epilog.iter.check5702

vec.epilog.iter.check5702:                        ; preds = %middle.block5696
  %min.epilog.iters.check5703 = icmp eq i64 %i.che, 0
  br i1 %min.epilog.iters.check5703, label %.preheader.i2620.preheader, label %vec.epilog.ph5704, !prof !92

vec.epilog.ph5704:                                ; preds = %vector.main.loop.iter.check5640, %vec.epilog.iter.check5702
  %vec.epilog.resume.val5698 = phi i64 [ %n.vec5643, %vec.epilog.iter.check5702 ], [ 0, %vector.main.loop.iter.check5640 ]
  %n.vec5705 = and i64 %i.cdl, 9223372036854775804 ; 3 uses
  %i.cjw = and i64 %i.cdl, 3
  %i.cjx = getelementptr i8, ptr %i.cdp, i64 %n.vec5705
  br label %vec.epilog.vector.body5706

vec.epilog.vector.body5706:                       ; preds = %pred.store.continue5720, %vec.epilog.ph5704
  %index5707 = phi i64 [ %vec.epilog.resume.val5698, %vec.epilog.ph5704 ], [ %index.next5721, %pred.store.continue5720 ] ; 5 uses
  %next.gep5708 = getelementptr i8, ptr %i.cdp, i64 %index5707 ; 2 uses
  %i.cjy = getelementptr i8, ptr %i.cdp, i64 %index5707
  %next.gep5709 = getelementptr i8, ptr %i.cjy, i64 1
  %i.cjz = getelementptr i8, ptr %i.cdp, i64 %index5707
  %next.gep5710 = getelementptr i8, ptr %i.cjz, i64 2
  %i.cka = getelementptr i8, ptr %i.cdp, i64 %index5707
  %next.gep5711 = getelementptr i8, ptr %i.cka, i64 3
  %wide.load5712 = load <4 x i8>, ptr %next.gep5708, align 1, !tbaa !15 ; 5 uses
  %i.ckb = sext <4 x i8> %wide.load5712 to <4 x i32>
  %i.ckc = add nsw <4 x i32> %i.ckb, splat (i32 -97)
  %i.ckd = icmp ult <4 x i32> %i.ckc, splat (i32 26) ; 4 uses
  %i.cke = extractelement <4 x i1> %i.ckd, i64 0
  br i1 %i.cke, label %pred.store.if5713, label %pred.store.continue5714

pred.store.if5713:                                ; preds = %vec.epilog.vector.body5706
  %i.ckf = extractelement <4 x i8> %wide.load5712, i64 0
  %i.ckg = and i8 %i.ckf, 95
  store i8 %i.ckg, ptr %next.gep5708, align 1, !tbaa !15
  br label %pred.store.continue5714

pred.store.continue5714:                          ; preds = %pred.store.if5713, %vec.epilog.vector.body5706
  %i.ckh = extractelement <4 x i1> %i.ckd, i64 1
  br i1 %i.ckh, label %pred.store.if5715, label %pred.store.continue5716

pred.store.if5715:                                ; preds = %pred.store.continue5714
  %i.cki = extractelement <4 x i8> %wide.load5712, i64 1
  %i.ckj = and i8 %i.cki, 95
  store i8 %i.ckj, ptr %next.gep5709, align 1, !tbaa !15
  br label %pred.store.continue5716

pred.store.continue5716:                          ; preds = %pred.store.if5715, %pred.store.continue5714
  %i.ckk = extractelement <4 x i1> %i.ckd, i64 2
  br i1 %i.ckk, label %pred.store.if5717, label %pred.store.continue5718

pred.store.if5717:                                ; preds = %pred.store.continue5716
  %i.ckl = extractelement <4 x i8> %wide.load5712, i64 2
  %i.ckm = and i8 %i.ckl, 95
  store i8 %i.ckm, ptr %next.gep5710, align 1, !tbaa !15
  br label %pred.store.continue5718

pred.store.continue5718:                          ; preds = %pred.store.if5717, %pred.store.continue5716
  %i.ckn = extractelement <4 x i1> %i.ckd, i64 3
  br i1 %i.ckn, label %pred.store.if5719, label %pred.store.continue5720

pred.store.if5719:                                ; preds = %pred.store.continue5718
  %i.cko = extractelement <4 x i8> %wide.load5712, i64 3
  %i.ckp = and i8 %i.cko, 95
  store i8 %i.ckp, ptr %next.gep5711, align 1, !tbaa !15
  br label %pred.store.continue5720

pred.store.continue5720:                          ; preds = %pred.store.if5719, %pred.store.continue5718
  %index.next5721 = add nuw i64 %index5707, 4     ; 2 uses
  %i.ckq = icmp eq i64 %index.next5721, %n.vec5705
  br i1 %i.ckq, label %vec.epilog.middle.block5722, label %vec.epilog.vector.body5706, !llvm.loop !50

vec.epilog.middle.block5722:                      ; preds = %pred.store.continue5720
  %cmp.n5723 = icmp eq i64 %i.cdl, %n.vec5705
  br i1 %cmp.n5723, label %case_conv.exit2624, label %.preheader.i2620.preheader

.preheader.i2620.preheader:                       ; preds = %iter.check5700, %vec.epilog.iter.check5702, %vec.epilog.middle.block5722
  %.013.i2621.ph = phi i64 [ %i.cdl, %iter.check5700 ], [ %i.chf, %vec.epilog.iter.check5702 ], [ %i.cjw, %vec.epilog.middle.block5722 ]
  %.0.i2622.ph = phi ptr [ %i.cdp, %iter.check5700 ], [ %i.chg, %vec.epilog.iter.check5702 ], [ %i.cjx, %vec.epilog.middle.block5722 ]
  br label %.preheader.i2620

.preheader.i2620:                                 ; preds = %.preheader.i2620.preheader, %bb.ku
  %.013.i2621 = phi i64 [ %i.ckx, %bb.ku ], [ %.013.i2621.ph, %.preheader.i2620.preheader ]
  %.0.i2622 = phi ptr [ %i.ckw, %bb.ku ], [ %.0.i2622.ph, %.preheader.i2620.preheader ] ; 3 uses
  %i.ckr = load i8, ptr %.0.i2622, align 1, !tbaa !15 ; 2 uses
  %i.cks = sext i8 %i.ckr to i32
  %i.ckt = add nsw i32 %i.cks, -123
  %i.cku = icmp ult i32 %i.ckt, -26
  br i1 %i.cku, label %bb.ku, label %bb.kt

bb.kt:                                            ; preds = %.preheader.i2620
  %i.ckv = and i8 %i.ckr, 95
  store i8 %i.ckv, ptr %.0.i2622, align 1, !tbaa !15
  br label %bb.ku

bb.ku:                                            ; preds = %bb.kt, %.preheader.i2620
  %i.ckw = getelementptr i8, ptr %.0.i2622, i64 1
  %i.ckx = add nsw i64 %.013.i2621, -1            ; 2 uses
  %.not19.i2623 = icmp eq i64 %i.ckx, 0
  br i1 %.not19.i2623, label %case_conv.exit2624, label %.preheader.i2620, !llvm.loop !51

.preheader20.i2615:                               ; preds = %.preheader20.i2615.preheader, %bb.kw
  %.114.i2616 = phi i64 [ %i.cle, %bb.kw ], [ %.114.i2616.ph, %.preheader20.i2615.preheader ]
  %.1.i2617 = phi ptr [ %i.cld, %bb.kw ], [ %.1.i2617.ph, %.preheader20.i2615.preheader ] ; 3 uses
  %i.cky = load i8, ptr %.1.i2617, align 1, !tbaa !15 ; 2 uses
  %i.ckz = sext i8 %i.cky to i32
  %i.cla = add nsw i32 %i.ckz, -91
  %i.clb = icmp ult i32 %i.cla, -26
  br i1 %i.clb, label %bb.kw, label %bb.kv

bb.kv:                                            ; preds = %.preheader20.i2615
  %i.clc = or i8 %i.cky, 32
  store i8 %i.clc, ptr %.1.i2617, align 1, !tbaa !15
  br label %bb.kw

bb.kw:                                            ; preds = %bb.kv, %.preheader20.i2615
  %i.cld = getelementptr i8, ptr %.1.i2617, i64 1
  %i.cle = add nsw i64 %.114.i2616, -1            ; 2 uses
  %.not17.i2618 = icmp eq i64 %i.cle, 0
  br i1 %.not17.i2618, label %case_conv.exit2624, label %.preheader20.i2615, !llvm.loop !52

case_conv.exit2624:                               ; preds = %bb.kw, %bb.ku, %middle.block5783, %vec.epilog.middle.block5809, %middle.block5696, %vec.epilog.middle.block5722, %bb.ks, %RSTRING_PTR.exit2614
  %i.clf = sext i32 %.019283304 to i64            ; 5 uses
  %i.clg = icmp slt i64 %i.cdl, %i.clf
  %i.clh = getelementptr i8, ptr %i.cdj, i64 %i.cdk ; 5 uses
  br i1 %i.clg, label %bb.kx, label %case_conv.exit2868

bb.kx:                                            ; preds = %case_conv.exit2624
  %i.cli = load ptr, ptr %i.b, align 8, !tbaa !18 ; 2 uses
  %.not2177 = icmp ult ptr %i.clh, %i.cli
  br i1 %.not2177, label %bb.ky, label %._crit_edge3696

._crit_edge3696:                                  ; preds = %bb.kx
  %.pre3776 = ptrtoint ptr %i.clh to i64
  br label %bb.kz

bb.ky:                                            ; preds = %bb.kx
  %i.clj = ptrtoint ptr %i.cli to i64
  %i.clk = ptrtoint ptr %i.clh to i64             ; 2 uses
  %i.cll = xor i64 %i.clk, -1
  %i.clm = add i64 %i.clj, %i.cll
  %.not2178 = icmp sgt i64 %i.clm, %i.clf
  br i1 %.not2178, label %buffer_size_check.exit2632, label %bb.kz

bb.kz:                                            ; preds = %._crit_edge3696, %bb.ky
  %.pre-phi3777 = phi i64 [ %.pre3776, %._crit_edge3696 ], [ %i.clk, %bb.ky ]
  %i.cln = ptrtoint ptr %i.cdj to i64
  %i.clo = sub i64 %.pre-phi3777, %i.cln          ; 5 uses
  %i.clp = shl nsw i64 %i.clf, 1
  %i.clq = add i64 %i.clo, %i.clp
  %i.clr = call i64 @rb_str_capacity(i64 noundef %0) #12
  br label %bb.la

bb.la:                                            ; preds = %bb.la, %bb.kz
  %.0.i2625 = phi i64 [ %i.clr, %bb.kz ], [ %i.clt, %bb.la ] ; 6 uses
  %i.cls = icmp ult i64 %.0.i2625, %i.clq
  %i.clt = shl i64 %.0.i2625, 1
  br i1 %i.cls, label %bb.la, label %bb.lb, !llvm.loop !0

bb.lb:                                            ; preds = %bb.la
  %i.clu = icmp ult i64 %.0.i2625, %i.clo
  %i.clv = icmp ugt i64 %.0.i2625, %9
  %or.cond.i2626 = or i1 %i.clu, %i.clv
  br i1 %or.cond.i2626, label %resize_buffer.exit2630.thread, label %bb.lc

bb.lc:                                            ; preds = %bb.lb
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.clo) #11
  %i.clw = sub nuw i64 %.0.i2625, %i.clo
  call void @rb_str_modify_expand(i64 noundef %0, i64 noundef %i.clw) #11
  %i.clx = load i64, ptr %i.h, align 8, !tbaa !14
  %i.cly = and i64 %i.clx, 8192
  %.not.i.i2627 = icmp eq i64 %i.cly, 0
  br i1 %.not.i.i2627, label %resize_buffer.exit2630, label %bb.ld

bb.ld:                                            ; preds = %bb.lc
  %i.clz = load ptr, ptr %i.m, align 8, !tbaa !15
  br label %resize_buffer.exit2630

resize_buffer.exit2630:                           ; preds = %bb.lc, %bb.ld
  %i.cma = phi ptr [ %i.clz, %bb.ld ], [ %i.m, %bb.lc ] ; 3 uses
  %i.cmb = getelementptr i8, ptr %i.cma, i64 %.0.i2625
  store ptr %i.cmb, ptr %i.b, align 8, !tbaa !18
  store ptr %i.cma, ptr %i.a, align 8, !tbaa !18
  %i.cmc = getelementptr i8, ptr %i.cma, i64 %i.clo ; 2 uses
  %.not.i2631 = icmp eq ptr %i.cmc, null
  br i1 %.not.i2631, label %resize_buffer.exit2630.thread, label %buffer_size_check.exit2632

resize_buffer.exit2630.thread:                    ; preds = %bb.lb, %resize_buffer.exit2630
  %i.cmd = call i64 @rb_enc_str_new(ptr noundef %1, i64 noundef range(i64 1, 0) %2, ptr noundef %.01901) #11
  call void @rb_syserr_fail_str(i32 noundef 34, i64 noundef %i.cmd) #13
  unreachable

buffer_size_check.exit2632:                       ; preds = %resize_buffer.exit2630, %bb.ky
  %.20 = phi ptr [ %i.clh, %bb.ky ], [ %i.cmc, %resize_buffer.exit2630 ]
  %i.cme = sub i64 0, %i.cdl                      ; 2 uses
  %i.cmf = getelementptr i8, ptr %.20, i64 %i.cme ; 3 uses
  %i.cmg = getelementptr i8, ptr %i.cmf, i64 %i.clf ; 2 uses
  %i.cmh = getelementptr i8, ptr %i.cmg, i64 %i.cme
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.cmh, ptr noundef nonnull align 1 %i.cmf, i64 noundef range(i64 -9223372036854775808, 2147483647) %i.cdl, i1 noundef false) #11
  %.not2179 = icmp eq i8 %.019153307, 0
  %narrow2180 = select i1 %.not2179, i8 32, i8 %.019153307
  %i.cmi = sub i64 %i.clf, %i.cdl
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.cmf, i8 noundef %narrow2180, i64 noundef %i.cmi, i1 noundef false) #11
  br label %case_conv.exit2868

bb.le:                                            ; preds = %.lr.ph
  %i.cmj = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.cmk = ptrtoint ptr %i.bl to i64
  %i.cml = ptrtoint ptr %i.cmj to i64
  %i.cmm = sub i64 %i.cmk, %i.cml                 ; 3 uses
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.cmm) #11
  %i.cmn = call fastcc i64 @rb_strftime_with_timespec(i64 noundef %0, ptr noundef nonnull @.str.14, i64 noundef 5, ptr noundef %.01901, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef %7, i32 noundef %8, i64 noundef %9)
  %.not2171 = icmp eq i64 %i.cmn, 0
  br i1 %.not2171, label %.loopexit2998, label %bb.lf

bb.lf:                                            ; preds = %bb.le
  %i.cmo = load i64, ptr %i.h, align 8, !tbaa !14
  %i.cmp = and i64 %i.cmo, 8192
  %.not.i2633 = icmp eq i64 %i.cmp, 0
  br i1 %.not.i2633, label %RSTRING_PTR.exit2634, label %bb.lg

bb.lg:                                            ; preds = %bb.lf
  %i.cmq = load ptr, ptr %i.m, align 8, !tbaa !15
  br label %RSTRING_PTR.exit2634

RSTRING_PTR.exit2634:                             ; preds = %bb.lf, %bb.lg
  %i.cmr = phi ptr [ %i.cmq, %bb.lg ], [ %i.m, %bb.lf ] ; 4 uses
  %i.cms = load i64, ptr %i.i, align 8, !tbaa !89 ; 2 uses
  %i.cmt = sub i64 %i.cms, %i.cmm                 ; 25 uses
  store ptr %i.cmr, ptr %i.a, align 8, !tbaa !18
  %i.cmu = call i64 @rb_str_capacity(i64 noundef %0) #12
  %i.cmv = getelementptr i8, ptr %i.cmr, i64 %i.cmu
  store ptr %i.cmv, ptr %i.b, align 8, !tbaa !18
  %i.cmw = icmp sgt i64 %i.cmt, 0
  br i1 %i.cmw, label %bb.lh, label %case_conv.exit2644

bb.lh:                                            ; preds = %RSTRING_PTR.exit2634
  %i.cmx = getelementptr i8, ptr %i.cmr, i64 %i.cmm ; 46 uses
  %i.cmy = and i32 %.019203305, 12
  switch i32 %i.cmy, label %case_conv.exit2644 [
    i32 8, label %iter.check5874
    i32 4, label %iter.check5961
  ]

iter.check5961:                                   ; preds = %bb.lh
  %min.iters.check5900 = icmp ult i64 %i.cmt, 4
  br i1 %min.iters.check5900, label %.preheader20.i2635.preheader, label %vector.main.loop.iter.check5901

vector.main.loop.iter.check5901:                  ; preds = %iter.check5961
  %min.iters.check5902 = icmp ult i64 %i.cmt, 16
  br i1 %min.iters.check5902, label %vec.epilog.ph5965, label %vector.ph5903

vector.ph5903:                                    ; preds = %vector.main.loop.iter.check5901
  %i.cmz = and i64 %i.cmt, 12
  %n.vec5904 = and i64 %i.cmt, 9223372036854775792 ; 4 uses
  %i.cna = and i64 %i.cmt, 15
  %i.cnb = getelementptr i8, ptr %i.cmx, i64 %n.vec5904
  br label %vector.body5905

vector.body5905:                                  ; preds = %vector.ph5903, %pred.store.continue5955
  %index5906 = phi i64 [ 0, %vector.ph5903 ], [ %index.next5956, %pred.store.continue5955 ] ; 17 uses
  %next.gep5907.a = getelementptr i8, ptr %i.cmx, i64 %index5906 ; 2 uses
  %i.cnc = getelementptr i8, ptr %i.cmx, i64 %index5906
  %next.gep5908.a = getelementptr i8, ptr %i.cnc, i64 1
  %i.cnd = getelementptr i8, ptr %i.cmx, i64 %index5906
  %next.gep5909.a = getelementptr i8, ptr %i.cnd, i64 2
  %i.cne = getelementptr i8, ptr %i.cmx, i64 %index5906
  %next.gep5910.a = getelementptr i8, ptr %i.cne, i64 3
  %i.cnf = getelementptr i8, ptr %i.cmx, i64 %index5906
  %next.gep5911.a = getelementptr i8, ptr %i.cnf, i64 4
  %i.cng = getelementptr i8, ptr %i.cmx, i64 %index5906
  %next.gep5912.a = getelementptr i8, ptr %i.cng, i64 5
  %i.cnh = getelementptr i8, ptr %i.cmx, i64 %index5906
  %next.gep5913.a = getelementptr i8, ptr %i.cnh, i64 6
  %i.cni = getelementptr i8, ptr %i.cmx, i64 %index5906
  %next.gep5914.a = getelementptr i8, ptr %i.cni, i64 7
  %i.cnj = getelementptr i8, ptr %i.cmx, i64 %index5906
  %next.gep5915.a = getelementptr i8, ptr %i.cnj, i64 8
  %i.cnk = getelementptr i8, ptr %i.cmx, i64 %index5906
  %next.gep5916.a = getelementptr i8, ptr %i.cnk, i64 9
  %i.cnl = getelementptr i8, ptr %i.cmx, i64 %index5906
  %next.gep5917.a = getelementptr i8, ptr %i.cnl, i64 10
  %i.cnm = getelementptr i8, ptr %i.cmx, i64 %index5906
  %next.gep5918 = getelementptr i8, ptr %i.cnm, i64 11
  %i.cnn = getelementptr i8, ptr %i.cmx, i64 %index5906
  %next.gep5919 = getelementptr i8, ptr %i.cnn, i64 12
  %i.cno = getelementptr i8, ptr %i.cmx, i64 %index5906
  %next.gep5920 = getelementptr i8, ptr %i.cno, i64 13
  %i.cnp = getelementptr i8, ptr %i.cmx, i64 %index5906
  %next.gep5921 = getelementptr i8, ptr %i.cnp, i64 14
  %i.cnq = getelementptr i8, ptr %i.cmx, i64 %index5906
  %next.gep5922 = getelementptr i8, ptr %i.cnq, i64 15
  %wide.load5923 = load <16 x i8>, ptr %next.gep5907.a, align 1, !tbaa !15 ; 17 uses
  %i.cnr = sext <16 x i8> %wide.load5923 to <16 x i32>
  %i.cns = add nsw <16 x i32> %i.cnr, splat (i32 -65)
  %i.cnt = icmp ult <16 x i32> %i.cns, splat (i32 26) ; 16 uses
  %i.cnu = extractelement <16 x i1> %i.cnt, i64 0
  br i1 %i.cnu, label %pred.store.if5924, label %pred.store.continue5925

pred.store.if5924:                                ; preds = %vector.body5905
  %i.cnv = extractelement <16 x i8> %wide.load5923, i64 0
  %i.cnw = or i8 %i.cnv, 32
  store i8 %i.cnw, ptr %next.gep5907.a, align 1, !tbaa !15
  br label %pred.store.continue5925

pred.store.continue5925:                          ; preds = %pred.store.if5924, %vector.body5905
  %i.cnx = extractelement <16 x i1> %i.cnt, i64 1
  br i1 %i.cnx, label %pred.store.if5926, label %pred.store.continue5927

pred.store.if5926:                                ; preds = %pred.store.continue5925
  %i.cny = extractelement <16 x i8> %wide.load5923, i64 1
  %i.cnz = or i8 %i.cny, 32
  store i8 %i.cnz, ptr %next.gep5908.a, align 1, !tbaa !15
  br label %pred.store.continue5927

pred.store.continue5927:                          ; preds = %pred.store.if5926, %pred.store.continue5925
  %i.coa = extractelement <16 x i1> %i.cnt, i64 2
  br i1 %i.coa, label %pred.store.if5928, label %pred.store.continue5929

pred.store.if5928:                                ; preds = %pred.store.continue5927
  %i.cob = extractelement <16 x i8> %wide.load5923, i64 2
  %i.coc = or i8 %i.cob, 32
  store i8 %i.coc, ptr %next.gep5909.a, align 1, !tbaa !15
  br label %pred.store.continue5929

pred.store.continue5929:                          ; preds = %pred.store.if5928, %pred.store.continue5927
  %i.cod = extractelement <16 x i1> %i.cnt, i64 3
  br i1 %i.cod, label %pred.store.if5930, label %pred.store.continue5931

pred.store.if5930:                                ; preds = %pred.store.continue5929
  %i.coe = extractelement <16 x i8> %wide.load5923, i64 3
  %i.cof = or i8 %i.coe, 32
  store i8 %i.cof, ptr %next.gep5910.a, align 1, !tbaa !15
  br label %pred.store.continue5931

pred.store.continue5931:                          ; preds = %pred.store.if5930, %pred.store.continue5929
  %i.cog = extractelement <16 x i1> %i.cnt, i64 4
  br i1 %i.cog, label %pred.store.if5932, label %pred.store.continue5933

pred.store.if5932:                                ; preds = %pred.store.continue5931
  %i.coh = extractelement <16 x i8> %wide.load5923, i64 4
  %i.coi = or i8 %i.coh, 32
  store i8 %i.coi, ptr %next.gep5911.a, align 1, !tbaa !15
  br label %pred.store.continue5933

pred.store.continue5933:                          ; preds = %pred.store.if5932, %pred.store.continue5931
  %i.coj = extractelement <16 x i1> %i.cnt, i64 5
end_hunk_7
begin_hunk_8_@rb_strftime_with_timespec:bb.a
  br label %pred.store.continue6068

pred.store.continue6068:                          ; preds = %pred.store.if6067, %pred.store.continue6066
  %index.next6069 = add nuw i64 %index6055, 4     ; 2 uses
  %i.ddh = icmp eq i64 %index.next6069, %n.vec6053
  br i1 %i.ddh, label %vec.epilog.middle.block6070, label %vec.epilog.vector.body6054, !llvm.loop !62

vec.epilog.middle.block6070:                      ; preds = %pred.store.continue6068
  %cmp.n6071 = icmp eq i64 %i.cwc, %n.vec6053
  br i1 %cmp.n6071, label %case_conv.exit2664, label %.preheader.i2660.preheader

.preheader.i2660.preheader:                       ; preds = %iter.check6048, %vec.epilog.iter.check6050, %vec.epilog.middle.block6070
  %.013.i2661.ph = phi i64 [ %i.cwc, %iter.check6048 ], [ %i.czw, %vec.epilog.iter.check6050 ], [ %i.dcn, %vec.epilog.middle.block6070 ]
  %.0.i2662.ph = phi ptr [ %i.cwg, %iter.check6048 ], [ %i.czx, %vec.epilog.iter.check6050 ], [ %i.dco, %vec.epilog.middle.block6070 ]
  br label %.preheader.i2660

.preheader.i2660:                                 ; preds = %.preheader.i2660.preheader, %bb.ly
  %.013.i2661 = phi i64 [ %i.ddo, %bb.ly ], [ %.013.i2661.ph, %.preheader.i2660.preheader ]
  %.0.i2662 = phi ptr [ %i.ddn, %bb.ly ], [ %.0.i2662.ph, %.preheader.i2660.preheader ] ; 3 uses
  %i.ddi = load i8, ptr %.0.i2662, align 1, !tbaa !15 ; 2 uses
  %i.ddj = sext i8 %i.ddi to i32
  %i.ddk = add nsw i32 %i.ddj, -123
  %i.ddl = icmp ult i32 %i.ddk, -26
  br i1 %i.ddl, label %bb.ly, label %bb.lx

bb.lx:                                            ; preds = %.preheader.i2660
  %i.ddm = and i8 %i.ddi, 95
  store i8 %i.ddm, ptr %.0.i2662, align 1, !tbaa !15
  br label %bb.ly

bb.ly:                                            ; preds = %bb.lx, %.preheader.i2660
  %i.ddn = getelementptr i8, ptr %.0.i2662, i64 1
  %i.ddo = add nsw i64 %.013.i2661, -1            ; 2 uses
  %.not19.i2663 = icmp eq i64 %i.ddo, 0
  br i1 %.not19.i2663, label %case_conv.exit2664, label %.preheader.i2660, !llvm.loop !63

.preheader20.i2655:                               ; preds = %.preheader20.i2655.preheader, %bb.ma
  %.114.i2656 = phi i64 [ %i.ddv, %bb.ma ], [ %.114.i2656.ph, %.preheader20.i2655.preheader ]
  %.1.i2657 = phi ptr [ %i.ddu, %bb.ma ], [ %.1.i2657.ph, %.preheader20.i2655.preheader ] ; 3 uses
  %i.ddp = load i8, ptr %.1.i2657, align 1, !tbaa !15 ; 2 uses
  %i.ddq = sext i8 %i.ddp to i32
  %i.ddr = add nsw i32 %i.ddq, -91
  %i.dds = icmp ult i32 %i.ddr, -26
  br i1 %i.dds, label %bb.ma, label %bb.lz

bb.lz:                                            ; preds = %.preheader20.i2655
  %i.ddt = or i8 %i.ddp, 32
  store i8 %i.ddt, ptr %.1.i2657, align 1, !tbaa !15
  br label %bb.ma

bb.ma:                                            ; preds = %bb.lz, %.preheader20.i2655
  %i.ddu = getelementptr i8, ptr %.1.i2657, i64 1
  %i.ddv = add nsw i64 %.114.i2656, -1            ; 2 uses
  %.not17.i2658 = icmp eq i64 %i.ddv, 0
  br i1 %.not17.i2658, label %case_conv.exit2664, label %.preheader20.i2655, !llvm.loop !64

case_conv.exit2664:                               ; preds = %bb.ma, %bb.ly, %middle.block6131, %vec.epilog.middle.block6157, %middle.block6044, %vec.epilog.middle.block6070, %bb.lw, %RSTRING_PTR.exit2654
  %i.ddw = sext i32 %.019283304 to i64            ; 5 uses
  %i.ddx = icmp slt i64 %i.cwc, %i.ddw
  %i.ddy = getelementptr i8, ptr %i.cwa, i64 %i.cwb ; 5 uses
  br i1 %i.ddx, label %bb.mb, label %case_conv.exit2868

bb.mb:                                            ; preds = %case_conv.exit2664
  %i.ddz = load ptr, ptr %i.b, align 8, !tbaa !18 ; 2 uses
  %.not2167 = icmp ult ptr %i.ddy, %i.ddz
  br i1 %.not2167, label %bb.mc, label %._crit_edge3694

._crit_edge3694:                                  ; preds = %bb.mb
  %.pre3780 = ptrtoint ptr %i.ddy to i64
  br label %bb.md

bb.mc:                                            ; preds = %bb.mb
  %i.dea = ptrtoint ptr %i.ddz to i64
  %i.deb = ptrtoint ptr %i.ddy to i64             ; 2 uses
  %i.dec = xor i64 %i.deb, -1
  %i.ded = add i64 %i.dea, %i.dec
  %.not2168 = icmp sgt i64 %i.ded, %i.ddw
  br i1 %.not2168, label %buffer_size_check.exit2672, label %bb.md

bb.md:                                            ; preds = %._crit_edge3694, %bb.mc
  %.pre-phi3781 = phi i64 [ %.pre3780, %._crit_edge3694 ], [ %i.deb, %bb.mc ]
  %i.dee = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.def = ptrtoint ptr %i.dee to i64
  %i.deg = sub i64 %.pre-phi3781, %i.def          ; 5 uses
  %i.deh = shl nsw i64 %i.ddw, 1
  %i.dei = add i64 %i.deg, %i.deh
  %i.dej = call i64 @rb_str_capacity(i64 noundef %0) #12
  br label %bb.me

bb.me:                                            ; preds = %bb.me, %bb.md
  %.0.i2665 = phi i64 [ %i.dej, %bb.md ], [ %i.del, %bb.me ] ; 6 uses
  %i.dek = icmp ult i64 %.0.i2665, %i.dei
  %i.del = shl i64 %.0.i2665, 1
  br i1 %i.dek, label %bb.me, label %bb.mf, !llvm.loop !0

bb.mf:                                            ; preds = %bb.me
  %i.dem = icmp ult i64 %.0.i2665, %i.deg
  %i.den = icmp ugt i64 %.0.i2665, %9
  %or.cond.i2666 = or i1 %i.dem, %i.den
  br i1 %or.cond.i2666, label %resize_buffer.exit2670.thread, label %bb.mg

bb.mg:                                            ; preds = %bb.mf
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.deg) #11
  %i.deo = sub nuw i64 %.0.i2665, %i.deg
  call void @rb_str_modify_expand(i64 noundef %0, i64 noundef %i.deo) #11
  %i.dep = load i64, ptr %i.h, align 8, !tbaa !14
  %i.deq = and i64 %i.dep, 8192
  %.not.i.i2667 = icmp eq i64 %i.deq, 0
  br i1 %.not.i.i2667, label %resize_buffer.exit2670, label %bb.mh

bb.mh:                                            ; preds = %bb.mg
  %i.der = load ptr, ptr %i.m, align 8, !tbaa !15
  br label %resize_buffer.exit2670

resize_buffer.exit2670:                           ; preds = %bb.mg, %bb.mh
  %i.des = phi ptr [ %i.der, %bb.mh ], [ %i.m, %bb.mg ] ; 3 uses
  %i.det = getelementptr i8, ptr %i.des, i64 %.0.i2665
  store ptr %i.det, ptr %i.b, align 8, !tbaa !18
  store ptr %i.des, ptr %i.a, align 8, !tbaa !18
  %i.deu = getelementptr i8, ptr %i.des, i64 %i.deg ; 2 uses
  %.not.i2671 = icmp eq ptr %i.deu, null
  br i1 %.not.i2671, label %resize_buffer.exit2670.thread, label %buffer_size_check.exit2672

resize_buffer.exit2670.thread:                    ; preds = %bb.mf, %resize_buffer.exit2670
  %i.dev = call i64 @rb_enc_str_new(ptr noundef %1, i64 noundef range(i64 1, 0) %2, ptr noundef %.01901) #11
  call void @rb_syserr_fail_str(i32 noundef 34, i64 noundef %i.dev) #13
  unreachable

buffer_size_check.exit2672:                       ; preds = %resize_buffer.exit2670, %bb.mc
  %.22 = phi ptr [ %i.ddy, %bb.mc ], [ %i.deu, %resize_buffer.exit2670 ]
  %i.dew = sub i64 0, %i.cwc                      ; 2 uses
  %i.dex = getelementptr i8, ptr %.22, i64 %i.dew ; 3 uses
  %i.dey = getelementptr i8, ptr %i.dex, i64 %i.ddw ; 2 uses
  %i.dez = getelementptr i8, ptr %i.dey, i64 %i.dew
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.dez, ptr noundef nonnull align 1 %i.dex, i64 noundef range(i64 -9223372036854775808, 2147483647) %i.cwc, i1 noundef false) #11
  %.not2169 = icmp eq i8 %.019153307, 0
  %narrow2170 = select i1 %.not2169, i8 32, i8 %.019153307
  %i.dfa = sub i64 %i.ddw, %i.cwc
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.dex, i8 noundef %narrow2170, i64 noundef %i.dfa, i1 noundef false) #11
  br label %case_conv.exit2868

bb.mi:                                            ; preds = %.lr.ph
  %i.dfb = load i64, ptr %i.ag, align 8
  %i.dfc = trunc i64 %i.dfb to i32
  %i.dfd = lshr i32 %i.dfc, 18
  %i.dfe = and i32 %i.dfd, 31
  %i.dff = call range(i32 0, 367) i32 @llvm.umin.i32(i32 range(i32 0, 512) %i.dfe, i32 23)
  %i.dfg = and i32 %.019203305, 1
  %.not2163 = icmp eq i32 %i.dfg, 0
  %i.dfh = icmp slt i32 %.019283304, 1
  %i.dfi = select i1 %i.dfh, i32 2, i32 %.019283304
  %i.dfj = select i1 %.not2163, i32 %i.dfi, i32 1 ; 2 uses
  %i.dfk = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.dfl = ptrtoint ptr %i.bl to i64              ; 2 uses
  %i.dfm = ptrtoint ptr %i.dfk to i64
  %i.dfn = sub i64 %i.dfl, %i.dfm                 ; 6 uses
  %i.dfo = load ptr, ptr %i.b, align 8, !tbaa !18 ; 2 uses
  %.not2164 = icmp ult ptr %i.bl, %i.dfo
  %i.dfp = sext i32 %i.dfj to i64                 ; 2 uses
  br i1 %.not2164, label %bb.mj, label %._crit_edge3693

bb.mj:                                            ; preds = %bb.mi
  %i.dfq = ptrtoint ptr %i.dfo to i64
  %i.dfr = xor i64 %i.dfl, -1
  %i.dfs = add i64 %i.dfq, %i.dfr
  %.not2165 = icmp sgt i64 %i.dfs, %i.dfp
  br i1 %.not2165, label %buffer_size_check.exit2680, label %._crit_edge3693

._crit_edge3693:                                  ; preds = %bb.mi, %bb.mj
  %i.dft = shl nsw i64 %i.dfp, 1
  %i.dfu = add i64 %i.dfn, %i.dft
  %i.dfv = call i64 @rb_str_capacity(i64 noundef %0) #12
  br label %bb.mk

bb.mk:                                            ; preds = %bb.mk, %._crit_edge3693
  %.0.i2673 = phi i64 [ %i.dfv, %._crit_edge3693 ], [ %i.dfx, %bb.mk ] ; 6 uses
  %i.dfw = icmp ult i64 %.0.i2673, %i.dfu
  %i.dfx = shl i64 %.0.i2673, 1
  br i1 %i.dfw, label %bb.mk, label %bb.ml, !llvm.loop !0

bb.ml:                                            ; preds = %bb.mk
  %i.dfy = icmp ult i64 %.0.i2673, %i.dfn
  %i.dfz = icmp ugt i64 %.0.i2673, %9
  %or.cond.i2674 = or i1 %i.dfy, %i.dfz
  br i1 %or.cond.i2674, label %resize_buffer.exit2678.thread, label %bb.mm

bb.mm:                                            ; preds = %bb.ml
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.dfn) #11
  %i.dga = sub nuw i64 %.0.i2673, %i.dfn
  call void @rb_str_modify_expand(i64 noundef %0, i64 noundef %i.dga) #11
  %i.dgb = load i64, ptr %i.h, align 8, !tbaa !14
  %i.dgc = and i64 %i.dgb, 8192
  %.not.i.i2675 = icmp eq i64 %i.dgc, 0
  br i1 %.not.i.i2675, label %resize_buffer.exit2678, label %bb.mn

bb.mn:                                            ; preds = %bb.mm
  %i.dgd = load ptr, ptr %i.m, align 8, !tbaa !15
  br label %resize_buffer.exit2678

resize_buffer.exit2678:                           ; preds = %bb.mm, %bb.mn
  %i.dge = phi ptr [ %i.dgd, %bb.mn ], [ %i.m, %bb.mm ] ; 2 uses
  %i.dgf = getelementptr i8, ptr %i.dge, i64 %.0.i2673
  store ptr %i.dgf, ptr %i.b, align 8, !tbaa !18
  %i.dgg = getelementptr i8, ptr %i.dge, i64 %i.dfn
  %.not.i2679 = icmp eq ptr %i.dgg, null
  br i1 %.not.i2679, label %resize_buffer.exit2678.thread, label %buffer_size_check.exit2680

resize_buffer.exit2678.thread:                    ; preds = %bb.ml, %resize_buffer.exit2678
  %i.dgh = call i64 @rb_enc_str_new(ptr noundef %1, i64 noundef range(i64 1, 0) %2, ptr noundef %.01901) #11
  call void @rb_syserr_fail_str(i32 noundef 34, i64 noundef %i.dgh) #13
  unreachable

buffer_size_check.exit2680:                       ; preds = %resize_buffer.exit2678, %bb.mj
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.dfn) #11
  %i.dgi = icmp eq i8 %.019153307, 48
  %i.dgj = select i1 %i.dgi, i64 4, i64 0
  %i.dgk = getelementptr i8, ptr @.str.2, i64 %i.dgj
  %i.dgl = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %0, ptr noundef %i.dgk, i32 noundef %i.dfj, i32 noundef %i.dff) #11 ; 0 uses
  %i.dgm = load i64, ptr %i.h, align 8, !tbaa !14
  %i.dgn = and i64 %i.dgm, 8192
  %.not.i2681 = icmp eq i64 %i.dgn, 0
  br i1 %.not.i2681, label %RSTRING_PTR.exit2682, label %bb.mo

bb.mo:                                            ; preds = %buffer_size_check.exit2680
  %i.dgo = load ptr, ptr %i.m, align 8, !tbaa !15
  br label %RSTRING_PTR.exit2682

RSTRING_PTR.exit2682:                             ; preds = %buffer_size_check.exit2680, %bb.mo
  %i.dgp = phi ptr [ %i.dgo, %bb.mo ], [ %i.m, %buffer_size_check.exit2680 ] ; 3 uses
  %i.dgq = load i64, ptr %i.i, align 8, !tbaa !89
  store ptr %i.dgp, ptr %i.a, align 8, !tbaa !18
  %i.dgr = call i64 @rb_str_capacity(i64 noundef %0) #12
  %i.dgs = getelementptr i8, ptr %i.dgp, i64 %i.dgr
  store ptr %i.dgs, ptr %i.b, align 8, !tbaa !18
  %i.dgt = getelementptr i8, ptr %i.dgp, i64 %i.dgq
  br label %case_conv.exit2868

bb.mp:                                            ; preds = %.lr.ph
  %i.dgu = load i64, ptr %i.ag, align 8
  %i.dgv = trunc i64 %i.dgu to i32
  %i.dgw = lshr i32 %i.dgv, 18
  %i.dgx = and i32 %i.dgw, 31                     ; 3 uses
  %i.dgy = call range(i32 0, 367) i32 @llvm.umin.i32(i32 range(i32 0, 512) %i.dgx, i32 23) ; 2 uses
  %i.dgz = icmp eq i32 %i.dgx, 0
  %i.dha = icmp samesign ugt i32 %i.dgx, 12
  %i.dhb = add nsw i32 %i.dgy, -12
  %spec.select2341 = select i1 %i.dha, i32 %i.dhb, i32 %i.dgy
  %.21936 = select i1 %i.dgz, i32 12, i32 %spec.select2341
  %i.dhc = and i32 %.019203305, 1
  %.not2160 = icmp eq i32 %i.dhc, 0
  %i.dhd = icmp slt i32 %.019283304, 1
  %i.dhe = select i1 %i.dhd, i32 2, i32 %.019283304
  %i.dhf = select i1 %.not2160, i32 %i.dhe, i32 1 ; 2 uses
  %i.dhg = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.dhh = ptrtoint ptr %i.bl to i64              ; 2 uses
  %i.dhi = ptrtoint ptr %i.dhg to i64
  %i.dhj = sub i64 %i.dhh, %i.dhi                 ; 6 uses
  %i.dhk = load ptr, ptr %i.b, align 8, !tbaa !18 ; 2 uses
  %.not2161 = icmp ult ptr %i.bl, %i.dhk
  %i.dhl = sext i32 %i.dhf to i64                 ; 2 uses
  br i1 %.not2161, label %bb.mq, label %._crit_edge3692

bb.mq:                                            ; preds = %bb.mp
  %i.dhm = ptrtoint ptr %i.dhk to i64
  %i.dhn = xor i64 %i.dhh, -1
  %i.dho = add i64 %i.dhm, %i.dhn
  %.not2162 = icmp sgt i64 %i.dho, %i.dhl
  br i1 %.not2162, label %buffer_size_check.exit2690, label %._crit_edge3692

._crit_edge3692:                                  ; preds = %bb.mp, %bb.mq
  %i.dhp = shl nsw i64 %i.dhl, 1
  %i.dhq = add i64 %i.dhj, %i.dhp
  %i.dhr = call i64 @rb_str_capacity(i64 noundef %0) #12
  br label %bb.mr

bb.mr:                                            ; preds = %bb.mr, %._crit_edge3692
  %.0.i2683 = phi i64 [ %i.dhr, %._crit_edge3692 ], [ %i.dht, %bb.mr ] ; 6 uses
  %i.dhs = icmp ult i64 %.0.i2683, %i.dhq
  %i.dht = shl i64 %.0.i2683, 1
  br i1 %i.dhs, label %bb.mr, label %bb.ms, !llvm.loop !0

bb.ms:                                            ; preds = %bb.mr
  %i.dhu = icmp ult i64 %.0.i2683, %i.dhj
  %i.dhv = icmp ugt i64 %.0.i2683, %9
  %or.cond.i2684 = or i1 %i.dhu, %i.dhv
  br i1 %or.cond.i2684, label %resize_buffer.exit2688.thread, label %bb.mt

bb.mt:                                            ; preds = %bb.ms
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.dhj) #11
  %i.dhw = sub nuw i64 %.0.i2683, %i.dhj
  call void @rb_str_modify_expand(i64 noundef %0, i64 noundef %i.dhw) #11
  %i.dhx = load i64, ptr %i.h, align 8, !tbaa !14
  %i.dhy = and i64 %i.dhx, 8192
  %.not.i.i2685 = icmp eq i64 %i.dhy, 0
  br i1 %.not.i.i2685, label %resize_buffer.exit2688, label %bb.mu

bb.mu:                                            ; preds = %bb.mt
  %i.dhz = load ptr, ptr %i.m, align 8, !tbaa !15
  br label %resize_buffer.exit2688

resize_buffer.exit2688:                           ; preds = %bb.mt, %bb.mu
  %i.dia = phi ptr [ %i.dhz, %bb.mu ], [ %i.m, %bb.mt ] ; 2 uses
  %i.dib = getelementptr i8, ptr %i.dia, i64 %.0.i2683
  store ptr %i.dib, ptr %i.b, align 8, !tbaa !18
  %i.dic = getelementptr i8, ptr %i.dia, i64 %i.dhj
  %.not.i2689 = icmp eq ptr %i.dic, null
  br i1 %.not.i2689, label %resize_buffer.exit2688.thread, label %buffer_size_check.exit2690

resize_buffer.exit2688.thread:                    ; preds = %bb.ms, %resize_buffer.exit2688
  %i.did = call i64 @rb_enc_str_new(ptr noundef %1, i64 noundef range(i64 1, 0) %2, ptr noundef %.01901) #11
  call void @rb_syserr_fail_str(i32 noundef 34, i64 noundef %i.did) #13
  unreachable

buffer_size_check.exit2690:                       ; preds = %resize_buffer.exit2688, %bb.mq
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.dhj) #11
  %i.die = icmp eq i8 %.019153307, 48
  %i.dif = select i1 %i.die, i64 4, i64 0
  %i.dig = getelementptr i8, ptr @.str.2, i64 %i.dif
  %i.dih = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %0, ptr noundef %i.dig, i32 noundef %i.dhf, i32 noundef %.21936) #11 ; 0 uses
  %i.dii = load i64, ptr %i.h, align 8, !tbaa !14
  %i.dij = and i64 %i.dii, 8192
  %.not.i2691 = icmp eq i64 %i.dij, 0
  br i1 %.not.i2691, label %RSTRING_PTR.exit2692, label %bb.mv

bb.mv:                                            ; preds = %buffer_size_check.exit2690
  %i.dik = load ptr, ptr %i.m, align 8, !tbaa !15
  br label %RSTRING_PTR.exit2692

RSTRING_PTR.exit2692:                             ; preds = %buffer_size_check.exit2690, %bb.mv
  %i.dil = phi ptr [ %i.dik, %bb.mv ], [ %i.m, %buffer_size_check.exit2690 ] ; 3 uses
  %i.dim = load i64, ptr %i.i, align 8, !tbaa !89
  store ptr %i.dil, ptr %i.a, align 8, !tbaa !18
  %i.din = call i64 @rb_str_capacity(i64 noundef %0) #12
  %i.dio = getelementptr i8, ptr %i.dil, i64 %i.din
  store ptr %i.dio, ptr %i.b, align 8, !tbaa !18
  %i.dip = getelementptr i8, ptr %i.dil, i64 %i.dim
  br label %case_conv.exit2868

bb.mw:                                            ; preds = %.lr.ph
  %i.diq = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.dir = ptrtoint ptr %i.bl to i64
  %i.dis = ptrtoint ptr %i.diq to i64
  %i.dit = sub i64 %i.dir, %i.dis                 ; 3 uses
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.dit) #11
  %i.diu = call fastcc i64 @rb_strftime_with_timespec(i64 noundef %0, ptr noundef nonnull @.str.15, i64 noundef 10, ptr noundef %.01901, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef %7, i32 noundef %8, i64 noundef %9)
  %.not2155 = icmp eq i64 %i.diu, 0
  br i1 %.not2155, label %.loopexit2998, label %bb.mx

bb.mx:                                            ; preds = %bb.mw
  %i.div = load i64, ptr %i.h, align 8, !tbaa !14
  %i.diw = and i64 %i.div, 8192
  %.not.i2693 = icmp eq i64 %i.diw, 0
  br i1 %.not.i2693, label %RSTRING_PTR.exit2694, label %bb.my

bb.my:                                            ; preds = %bb.mx
  %i.dix = load ptr, ptr %i.m, align 8, !tbaa !15
  br label %RSTRING_PTR.exit2694

RSTRING_PTR.exit2694:                             ; preds = %bb.mx, %bb.my
  %i.diy = phi ptr [ %i.dix, %bb.my ], [ %i.m, %bb.mx ] ; 5 uses
  %i.diz = load i64, ptr %i.i, align 8, !tbaa !89 ; 2 uses
  %i.dja = sub i64 %i.diz, %i.dit                 ; 25 uses
  store ptr %i.diy, ptr %i.a, align 8, !tbaa !18
  %i.djb = call i64 @rb_str_capacity(i64 noundef %0) #12
  %i.djc = getelementptr i8, ptr %i.diy, i64 %i.djb
  store ptr %i.djc, ptr %i.b, align 8, !tbaa !18
  %i.djd = icmp sgt i64 %i.dja, 0
  br i1 %i.djd, label %bb.mz, label %case_conv.exit2704

bb.mz:                                            ; preds = %RSTRING_PTR.exit2694
  %i.dje = getelementptr i8, ptr %i.diy, i64 %i.dit ; 46 uses
  %i.djf = and i32 %.019203305, 12
  switch i32 %i.djf, label %case_conv.exit2704 [
    i32 8, label %iter.check6222
    i32 4, label %iter.check6309
  ]

iter.check6309:                                   ; preds = %bb.mz
  %min.iters.check6248 = icmp ult i64 %i.dja, 4
  br i1 %min.iters.check6248, label %.preheader20.i2695.preheader, label %vector.main.loop.iter.check6249

vector.main.loop.iter.check6249:                  ; preds = %iter.check6309
  %min.iters.check6250 = icmp ult i64 %i.dja, 16
  br i1 %min.iters.check6250, label %vec.epilog.ph6313, label %vector.ph6251

vector.ph6251:                                    ; preds = %vector.main.loop.iter.check6249
  %i.djg = and i64 %i.dja, 12
  %n.vec6252 = and i64 %i.dja, 9223372036854775792 ; 4 uses
  %i.djh = and i64 %i.dja, 15
  %i.dji = getelementptr i8, ptr %i.dje, i64 %n.vec6252
  br label %vector.body6253

vector.body6253:                                  ; preds = %vector.ph6251, %pred.store.continue6303
  %index6254 = phi i64 [ 0, %vector.ph6251 ], [ %index.next6304, %pred.store.continue6303 ] ; 17 uses
  %next.gep6255.a = getelementptr i8, ptr %i.dje, i64 %index6254 ; 2 uses
  %i.djj = getelementptr i8, ptr %i.dje, i64 %index6254
  %next.gep6256.a = getelementptr i8, ptr %i.djj, i64 1
  %i.djk = getelementptr i8, ptr %i.dje, i64 %index6254
  %next.gep6257.a = getelementptr i8, ptr %i.djk, i64 2
  %i.djl = getelementptr i8, ptr %i.dje, i64 %index6254
  %next.gep6258.a = getelementptr i8, ptr %i.djl, i64 3
  %i.djm = getelementptr i8, ptr %i.dje, i64 %index6254
  %next.gep6259.a = getelementptr i8, ptr %i.djm, i64 4
  %i.djn = getelementptr i8, ptr %i.dje, i64 %index6254
  %next.gep6260.a = getelementptr i8, ptr %i.djn, i64 5
  %i.djo = getelementptr i8, ptr %i.dje, i64 %index6254
  %next.gep6261.a = getelementptr i8, ptr %i.djo, i64 6
  %i.djp = getelementptr i8, ptr %i.dje, i64 %index6254
  %next.gep6262.a = getelementptr i8, ptr %i.djp, i64 7
  %i.djq = getelementptr i8, ptr %i.dje, i64 %index6254
  %next.gep6263.a = getelementptr i8, ptr %i.djq, i64 8
  %i.djr = getelementptr i8, ptr %i.dje, i64 %index6254
  %next.gep6264.a = getelementptr i8, ptr %i.djr, i64 9
  %i.djs = getelementptr i8, ptr %i.dje, i64 %index6254
  %next.gep6265.a = getelementptr i8, ptr %i.djs, i64 10
  %i.djt = getelementptr i8, ptr %i.dje, i64 %index6254
  %next.gep6266 = getelementptr i8, ptr %i.djt, i64 11
  %i.dju = getelementptr i8, ptr %i.dje, i64 %index6254
  %next.gep6267 = getelementptr i8, ptr %i.dju, i64 12
  %i.djv = getelementptr i8, ptr %i.dje, i64 %index6254
  %next.gep6268 = getelementptr i8, ptr %i.djv, i64 13
  %i.djw = getelementptr i8, ptr %i.dje, i64 %index6254
  %next.gep6269 = getelementptr i8, ptr %i.djw, i64 14
  %i.djx = getelementptr i8, ptr %i.dje, i64 %index6254
  %next.gep6270 = getelementptr i8, ptr %i.djx, i64 15
  %wide.load6271 = load <16 x i8>, ptr %next.gep6255.a, align 1, !tbaa !15 ; 17 uses
  %i.djy = sext <16 x i8> %wide.load6271 to <16 x i32>
  %i.djz = add nsw <16 x i32> %i.djy, splat (i32 -65)
  %i.dka = icmp ult <16 x i32> %i.djz, splat (i32 26) ; 16 uses
  %i.dkb = extractelement <16 x i1> %i.dka, i64 0
  br i1 %i.dkb, label %pred.store.if6272, label %pred.store.continue6273

pred.store.if6272:                                ; preds = %vector.body6253
  %i.dkc = extractelement <16 x i8> %wide.load6271, i64 0
  %i.dkd = or i8 %i.dkc, 32
  store i8 %i.dkd, ptr %next.gep6255.a, align 1, !tbaa !15
  br label %pred.store.continue6273

pred.store.continue6273:                          ; preds = %pred.store.if6272, %vector.body6253
  %i.dke = extractelement <16 x i1> %i.dka, i64 1
  br i1 %i.dke, label %pred.store.if6274, label %pred.store.continue6275

pred.store.if6274:                                ; preds = %pred.store.continue6273
  %i.dkf = extractelement <16 x i8> %wide.load6271, i64 1
  %i.dkg = or i8 %i.dkf, 32
  store i8 %i.dkg, ptr %next.gep6256.a, align 1, !tbaa !15
  br label %pred.store.continue6275

pred.store.continue6275:                          ; preds = %pred.store.if6274, %pred.store.continue6273
  %i.dkh = extractelement <16 x i1> %i.dka, i64 2
  br i1 %i.dkh, label %pred.store.if6276, label %pred.store.continue6277

pred.store.if6276:                                ; preds = %pred.store.continue6275
  %i.dki = extractelement <16 x i8> %wide.load6271, i64 2
  %i.dkj = or i8 %i.dki, 32
  store i8 %i.dkj, ptr %next.gep6257.a, align 1, !tbaa !15
  br label %pred.store.continue6277

pred.store.continue6277:                          ; preds = %pred.store.if6276, %pred.store.continue6275
  %i.dkk = extractelement <16 x i1> %i.dka, i64 3
  br i1 %i.dkk, label %pred.store.if6278, label %pred.store.continue6279

pred.store.if6278:                                ; preds = %pred.store.continue6277
  %i.dkl = extractelement <16 x i8> %wide.load6271, i64 3
  %i.dkm = or i8 %i.dkl, 32
  store i8 %i.dkm, ptr %next.gep6258.a, align 1, !tbaa !15
  br label %pred.store.continue6279

pred.store.continue6279:                          ; preds = %pred.store.if6278, %pred.store.continue6277
  %i.dkn = extractelement <16 x i1> %i.dka, i64 4
  br i1 %i.dkn, label %pred.store.if6280, label %pred.store.continue6281

pred.store.if6280:                                ; preds = %pred.store.continue6279
  %i.dko = extractelement <16 x i8> %wide.load6271, i64 4
  %i.dkp = or i8 %i.dko, 32
  store i8 %i.dkp, ptr %next.gep6259.a, align 1, !tbaa !15
  br label %pred.store.continue6281

pred.store.continue6281:                          ; preds = %pred.store.if6280, %pred.store.continue6279
  %i.dkq = extractelement <16 x i1> %i.dka, i64 5
  br i1 %i.dkq, label %pred.store.if6282, label %pred.store.continue6283

pred.store.if6282:                                ; preds = %pred.store.continue6281
  %i.dkr = extractelement <16 x i8> %wide.load6271, i64 5
  %i.dks = or i8 %i.dkr, 32
  store i8 %i.dks, ptr %next.gep6260.a, align 1, !tbaa !15
  br label %pred.store.continue6283

pred.store.continue6283:                          ; preds = %pred.store.if6282, %pred.store.continue6281
  %i.dkt = extractelement <16 x i1> %i.dka, i64 6
  br i1 %i.dkt, label %pred.store.if6284, label %pred.store.continue6285

pred.store.if6284:                                ; preds = %pred.store.continue6283
  %i.dku = extractelement <16 x i8> %wide.load6271, i64 6
  %i.dkv = or i8 %i.dku, 32
  store i8 %i.dkv, ptr %next.gep6261.a, align 1, !tbaa !15
  br label %pred.store.continue6285

pred.store.continue6285:                          ; preds = %pred.store.if6284, %pred.store.continue6283
  %i.dkw = extractelement <16 x i1> %i.dka, i64 7
  br i1 %i.dkw, label %pred.store.if6286, label %pred.store.continue6287

pred.store.if6286:                                ; preds = %pred.store.continue6285
  %i.dkx = extractelement <16 x i8> %wide.load6271, i64 7
  %i.dky = or i8 %i.dkx, 32
  store i8 %i.dky, ptr %next.gep6262.a, align 1, !tbaa !15
  br label %pred.store.continue6287

pred.store.continue6287:                          ; preds = %pred.store.if6286, %pred.store.continue6285
  %i.dkz = extractelement <16 x i1> %i.dka, i64 8
  br i1 %i.dkz, label %pred.store.if6288, label %pred.store.continue6289

pred.store.if6288:                                ; preds = %pred.store.continue6287
  %i.dla = extractelement <16 x i8> %wide.load6271, i64 8
  %i.dlb = or i8 %i.dla, 32
  store i8 %i.dlb, ptr %next.gep6263.a, align 1, !tbaa !15
  br label %pred.store.continue6289

pred.store.continue6289:                          ; preds = %pred.store.if6288, %pred.store.continue6287
  %i.dlc = extractelement <16 x i1> %i.dka, i64 9
  br i1 %i.dlc, label %pred.store.if6290, label %pred.store.continue6291

pred.store.if6290:                                ; preds = %pred.store.continue6289
  %i.dld = extractelement <16 x i8> %wide.load6271, i64 9
  %i.dle = or i8 %i.dld, 32
  store i8 %i.dle, ptr %next.gep6264.a, align 1, !tbaa !15
  br label %pred.store.continue6291

pred.store.continue6291:                          ; preds = %pred.store.if6290, %pred.store.continue6289
  %i.dlf = extractelement <16 x i1> %i.dka, i64 10
  br i1 %i.dlf, label %pred.store.if6292, label %pred.store.continue6293

pred.store.if6292:                                ; preds = %pred.store.continue6291
  %i.dlg = extractelement <16 x i8> %wide.load6271, i64 10
  %i.dlh = or i8 %i.dlg, 32
  store i8 %i.dlh, ptr %next.gep6265.a, align 1, !tbaa !15
  br label %pred.store.continue6293

pred.store.continue6293:                          ; preds = %pred.store.if6292, %pred.store.continue6291
  %i.dli = extractelement <16 x i1> %i.dka, i64 11
  br i1 %i.dli, label %pred.store.if6294, label %pred.store.continue6295

pred.store.if6294:                                ; preds = %pred.store.continue6293
  %i.dlj = extractelement <16 x i8> %wide.load6271, i64 11
  %i.dlk = or i8 %i.dlj, 32
  store i8 %i.dlk, ptr %next.gep6266, align 1, !tbaa !15
  br label %pred.store.continue6295

pred.store.continue6295:                          ; preds = %pred.store.if6294, %pred.store.continue6293
  %i.dll = extractelement <16 x i1> %i.dka, i64 12
  br i1 %i.dll, label %pred.store.if6296, label %pred.store.continue6297

pred.store.if6296:                                ; preds = %pred.store.continue6295
  %i.dlm = extractelement <16 x i8> %wide.load6271, i64 12
  %i.dln = or i8 %i.dlm, 32
  store i8 %i.dln, ptr %next.gep6267, align 1, !tbaa !15
  br label %pred.store.continue6297

pred.store.continue6297:                          ; preds = %pred.store.if6296, %pred.store.continue6295
  %i.dlo = extractelement <16 x i1> %i.dka, i64 13
end_hunk_8
begin_hunk_9_@rb_strftime_with_timespec:bb.a
  %i.dov = extractelement <16 x i1> %i.dnn, i64 11
  br i1 %i.dov, label %pred.store.if6207, label %pred.store.continue6208

pred.store.if6207:                                ; preds = %pred.store.continue6206
  %i.dow = extractelement <16 x i8> %wide.load6184, i64 11
  %i.dox = and i8 %i.dow, 95
  store i8 %i.dox, ptr %next.gep6179, align 1, !tbaa !15
  br label %pred.store.continue6208

pred.store.continue6208:                          ; preds = %pred.store.if6207, %pred.store.continue6206
  %i.doy = extractelement <16 x i1> %i.dnn, i64 12
  br i1 %i.doy, label %pred.store.if6209, label %pred.store.continue6210

pred.store.if6209:                                ; preds = %pred.store.continue6208
  %i.doz = extractelement <16 x i8> %wide.load6184, i64 12
  %i.dpa = and i8 %i.doz, 95
  store i8 %i.dpa, ptr %next.gep6180, align 1, !tbaa !15
  br label %pred.store.continue6210

pred.store.continue6210:                          ; preds = %pred.store.if6209, %pred.store.continue6208
  %i.dpb = extractelement <16 x i1> %i.dnn, i64 13
  br i1 %i.dpb, label %pred.store.if6211, label %pred.store.continue6212

pred.store.if6211:                                ; preds = %pred.store.continue6210
  %i.dpc = extractelement <16 x i8> %wide.load6184, i64 13
  %i.dpd = and i8 %i.dpc, 95
  store i8 %i.dpd, ptr %next.gep6181, align 1, !tbaa !15
  br label %pred.store.continue6212

pred.store.continue6212:                          ; preds = %pred.store.if6211, %pred.store.continue6210
  %i.dpe = extractelement <16 x i1> %i.dnn, i64 14
  br i1 %i.dpe, label %pred.store.if6213, label %pred.store.continue6214

pred.store.if6213:                                ; preds = %pred.store.continue6212
  %i.dpf = extractelement <16 x i8> %wide.load6184, i64 14
  %i.dpg = and i8 %i.dpf, 95
  store i8 %i.dpg, ptr %next.gep6182, align 1, !tbaa !15
  br label %pred.store.continue6214

pred.store.continue6214:                          ; preds = %pred.store.if6213, %pred.store.continue6212
  %i.dph = extractelement <16 x i1> %i.dnn, i64 15
  br i1 %i.dph, label %pred.store.if6215, label %pred.store.continue6216

pred.store.if6215:                                ; preds = %pred.store.continue6214
  %i.dpi = extractelement <16 x i8> %wide.load6184, i64 15
  %i.dpj = and i8 %i.dpi, 95
  store i8 %i.dpj, ptr %next.gep6183, align 1, !tbaa !15
  br label %pred.store.continue6216

pred.store.continue6216:                          ; preds = %pred.store.if6215, %pred.store.continue6214
  %index.next6217 = add nuw i64 %index6167, 16    ; 2 uses
  %i.dpk = icmp eq i64 %index.next6217, %n.vec6165
  br i1 %i.dpk, label %middle.block6218, label %vector.body6166, !llvm.loop !67

middle.block6218:                                 ; preds = %pred.store.continue6216
  %cmp.n6219 = icmp eq i64 %i.dja, %n.vec6165
  br i1 %cmp.n6219, label %case_conv.exit2704, label %vec.epilog.iter.check6224

vec.epilog.iter.check6224:                        ; preds = %middle.block6218
  %min.epilog.iters.check6225 = icmp eq i64 %i.dmt, 0
  br i1 %min.epilog.iters.check6225, label %.preheader.i2700.preheader, label %vec.epilog.ph6226, !prof !92

vec.epilog.ph6226:                                ; preds = %vector.main.loop.iter.check6162, %vec.epilog.iter.check6224
  %vec.epilog.resume.val6220 = phi i64 [ %n.vec6165, %vec.epilog.iter.check6224 ], [ 0, %vector.main.loop.iter.check6162 ]
  %n.vec6227 = and i64 %i.dja, 9223372036854775804 ; 3 uses
  %i.dpl = and i64 %i.dja, 3
  %i.dpm = getelementptr i8, ptr %i.dje, i64 %n.vec6227
  br label %vec.epilog.vector.body6228

vec.epilog.vector.body6228:                       ; preds = %pred.store.continue6242, %vec.epilog.ph6226
  %index6229 = phi i64 [ %vec.epilog.resume.val6220, %vec.epilog.ph6226 ], [ %index.next6243, %pred.store.continue6242 ] ; 5 uses
  %next.gep6230 = getelementptr i8, ptr %i.dje, i64 %index6229 ; 2 uses
  %i.dpn = getelementptr i8, ptr %i.dje, i64 %index6229
  %next.gep6231 = getelementptr i8, ptr %i.dpn, i64 1
  %i.dpo = getelementptr i8, ptr %i.dje, i64 %index6229
  %next.gep6232 = getelementptr i8, ptr %i.dpo, i64 2
  %i.dpp = getelementptr i8, ptr %i.dje, i64 %index6229
  %next.gep6233 = getelementptr i8, ptr %i.dpp, i64 3
  %wide.load6234 = load <4 x i8>, ptr %next.gep6230, align 1, !tbaa !15 ; 5 uses
  %i.dpq = sext <4 x i8> %wide.load6234 to <4 x i32>
  %i.dpr = add nsw <4 x i32> %i.dpq, splat (i32 -97)
  %i.dps = icmp ult <4 x i32> %i.dpr, splat (i32 26) ; 4 uses
  %i.dpt = extractelement <4 x i1> %i.dps, i64 0
  br i1 %i.dpt, label %pred.store.if6235, label %pred.store.continue6236

pred.store.if6235:                                ; preds = %vec.epilog.vector.body6228
  %i.dpu = extractelement <4 x i8> %wide.load6234, i64 0
  %i.dpv = and i8 %i.dpu, 95
  store i8 %i.dpv, ptr %next.gep6230, align 1, !tbaa !15
  br label %pred.store.continue6236

pred.store.continue6236:                          ; preds = %pred.store.if6235, %vec.epilog.vector.body6228
  %i.dpw = extractelement <4 x i1> %i.dps, i64 1
  br i1 %i.dpw, label %pred.store.if6237, label %pred.store.continue6238

pred.store.if6237:                                ; preds = %pred.store.continue6236
  %i.dpx = extractelement <4 x i8> %wide.load6234, i64 1
  %i.dpy = and i8 %i.dpx, 95
  store i8 %i.dpy, ptr %next.gep6231, align 1, !tbaa !15
  br label %pred.store.continue6238

pred.store.continue6238:                          ; preds = %pred.store.if6237, %pred.store.continue6236
  %i.dpz = extractelement <4 x i1> %i.dps, i64 2
  br i1 %i.dpz, label %pred.store.if6239, label %pred.store.continue6240

pred.store.if6239:                                ; preds = %pred.store.continue6238
  %i.dqa = extractelement <4 x i8> %wide.load6234, i64 2
  %i.dqb = and i8 %i.dqa, 95
  store i8 %i.dqb, ptr %next.gep6232, align 1, !tbaa !15
  br label %pred.store.continue6240

pred.store.continue6240:                          ; preds = %pred.store.if6239, %pred.store.continue6238
  %i.dqc = extractelement <4 x i1> %i.dps, i64 3
  br i1 %i.dqc, label %pred.store.if6241, label %pred.store.continue6242

pred.store.if6241:                                ; preds = %pred.store.continue6240
  %i.dqd = extractelement <4 x i8> %wide.load6234, i64 3
  %i.dqe = and i8 %i.dqd, 95
  store i8 %i.dqe, ptr %next.gep6233, align 1, !tbaa !15
  br label %pred.store.continue6242

pred.store.continue6242:                          ; preds = %pred.store.if6241, %pred.store.continue6240
  %index.next6243 = add nuw i64 %index6229, 4     ; 2 uses
  %i.dqf = icmp eq i64 %index.next6243, %n.vec6227
  br i1 %i.dqf, label %vec.epilog.middle.block6244, label %vec.epilog.vector.body6228, !llvm.loop !68

vec.epilog.middle.block6244:                      ; preds = %pred.store.continue6242
  %cmp.n6245 = icmp eq i64 %i.dja, %n.vec6227
  br i1 %cmp.n6245, label %case_conv.exit2704, label %.preheader.i2700.preheader

.preheader.i2700.preheader:                       ; preds = %iter.check6222, %vec.epilog.iter.check6224, %vec.epilog.middle.block6244
  %.013.i2701.ph = phi i64 [ %i.dja, %iter.check6222 ], [ %i.dmu, %vec.epilog.iter.check6224 ], [ %i.dpl, %vec.epilog.middle.block6244 ]
  %.0.i2702.ph = phi ptr [ %i.dje, %iter.check6222 ], [ %i.dmv, %vec.epilog.iter.check6224 ], [ %i.dpm, %vec.epilog.middle.block6244 ]
  br label %.preheader.i2700

.preheader.i2700:                                 ; preds = %.preheader.i2700.preheader, %bb.nb
  %.013.i2701 = phi i64 [ %i.dqm, %bb.nb ], [ %.013.i2701.ph, %.preheader.i2700.preheader ]
  %.0.i2702 = phi ptr [ %i.dql, %bb.nb ], [ %.0.i2702.ph, %.preheader.i2700.preheader ] ; 3 uses
  %i.dqg = load i8, ptr %.0.i2702, align 1, !tbaa !15 ; 2 uses
  %i.dqh = sext i8 %i.dqg to i32
  %i.dqi = add nsw i32 %i.dqh, -123
  %i.dqj = icmp ult i32 %i.dqi, -26
  br i1 %i.dqj, label %bb.nb, label %bb.na

bb.na:                                            ; preds = %.preheader.i2700
  %i.dqk = and i8 %i.dqg, 95
  store i8 %i.dqk, ptr %.0.i2702, align 1, !tbaa !15
  br label %bb.nb

bb.nb:                                            ; preds = %bb.na, %.preheader.i2700
  %i.dql = getelementptr i8, ptr %.0.i2702, i64 1
  %i.dqm = add nsw i64 %.013.i2701, -1            ; 2 uses
  %.not19.i2703 = icmp eq i64 %i.dqm, 0
  br i1 %.not19.i2703, label %case_conv.exit2704, label %.preheader.i2700, !llvm.loop !69

.preheader20.i2695:                               ; preds = %.preheader20.i2695.preheader, %bb.nd
  %.114.i2696 = phi i64 [ %i.dqt, %bb.nd ], [ %.114.i2696.ph, %.preheader20.i2695.preheader ]
  %.1.i2697 = phi ptr [ %i.dqs, %bb.nd ], [ %.1.i2697.ph, %.preheader20.i2695.preheader ] ; 3 uses
  %i.dqn = load i8, ptr %.1.i2697, align 1, !tbaa !15 ; 2 uses
  %i.dqo = sext i8 %i.dqn to i32
  %i.dqp = add nsw i32 %i.dqo, -91
  %i.dqq = icmp ult i32 %i.dqp, -26
  br i1 %i.dqq, label %bb.nd, label %bb.nc

bb.nc:                                            ; preds = %.preheader20.i2695
  %i.dqr = or i8 %i.dqn, 32
  store i8 %i.dqr, ptr %.1.i2697, align 1, !tbaa !15
  br label %bb.nd

bb.nd:                                            ; preds = %bb.nc, %.preheader20.i2695
  %i.dqs = getelementptr i8, ptr %.1.i2697, i64 1
  %i.dqt = add nsw i64 %.114.i2696, -1            ; 2 uses
  %.not17.i2698 = icmp eq i64 %i.dqt, 0
  br i1 %.not17.i2698, label %case_conv.exit2704, label %.preheader20.i2695, !llvm.loop !70

case_conv.exit2704:                               ; preds = %bb.nd, %bb.nb, %middle.block6305, %vec.epilog.middle.block6331, %middle.block6218, %vec.epilog.middle.block6244, %bb.mz, %RSTRING_PTR.exit2694
  %i.dqu = sext i32 %.019283304 to i64            ; 5 uses
  %i.dqv = icmp slt i64 %i.dja, %i.dqu
  %i.dqw = getelementptr i8, ptr %i.diy, i64 %i.diz ; 5 uses
  br i1 %i.dqv, label %bb.ne, label %case_conv.exit2868

bb.ne:                                            ; preds = %case_conv.exit2704
  %i.dqx = load ptr, ptr %i.b, align 8, !tbaa !18 ; 2 uses
  %.not2156 = icmp ult ptr %i.dqw, %i.dqx
  br i1 %.not2156, label %bb.nf, label %._crit_edge3691

._crit_edge3691:                                  ; preds = %bb.ne
  %.pre3786 = ptrtoint ptr %i.dqw to i64
  br label %bb.ng

bb.nf:                                            ; preds = %bb.ne
  %i.dqy = ptrtoint ptr %i.dqx to i64
  %i.dqz = ptrtoint ptr %i.dqw to i64             ; 2 uses
  %i.dra = xor i64 %i.dqz, -1
  %i.drb = add i64 %i.dqy, %i.dra
  %.not2157 = icmp sgt i64 %i.drb, %i.dqu
  br i1 %.not2157, label %buffer_size_check.exit2712, label %bb.ng

bb.ng:                                            ; preds = %._crit_edge3691, %bb.nf
  %.pre-phi3787 = phi i64 [ %.pre3786, %._crit_edge3691 ], [ %i.dqz, %bb.nf ]
  %i.drc = ptrtoint ptr %i.diy to i64
  %i.drd = sub i64 %.pre-phi3787, %i.drc          ; 5 uses
  %i.dre = shl nsw i64 %i.dqu, 1
  %i.drf = add i64 %i.drd, %i.dre
  %i.drg = call i64 @rb_str_capacity(i64 noundef %0) #12
  br label %bb.nh

bb.nh:                                            ; preds = %bb.nh, %bb.ng
  %.0.i2705 = phi i64 [ %i.drg, %bb.ng ], [ %i.dri, %bb.nh ] ; 6 uses
  %i.drh = icmp ult i64 %.0.i2705, %i.drf
  %i.dri = shl i64 %.0.i2705, 1
  br i1 %i.drh, label %bb.nh, label %bb.ni, !llvm.loop !0

bb.ni:                                            ; preds = %bb.nh
  %i.drj = icmp ult i64 %.0.i2705, %i.drd
  %i.drk = icmp ugt i64 %.0.i2705, %9
  %or.cond.i2706 = or i1 %i.drj, %i.drk
  br i1 %or.cond.i2706, label %resize_buffer.exit2710.thread, label %bb.nj

bb.nj:                                            ; preds = %bb.ni
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.drd) #11
  %i.drl = sub nuw i64 %.0.i2705, %i.drd
  call void @rb_str_modify_expand(i64 noundef %0, i64 noundef %i.drl) #11
  %i.drm = load i64, ptr %i.h, align 8, !tbaa !14
  %i.drn = and i64 %i.drm, 8192
  %.not.i.i2707 = icmp eq i64 %i.drn, 0
  br i1 %.not.i.i2707, label %resize_buffer.exit2710, label %bb.nk

bb.nk:                                            ; preds = %bb.nj
  %i.dro = load ptr, ptr %i.m, align 8, !tbaa !15
  br label %resize_buffer.exit2710

resize_buffer.exit2710:                           ; preds = %bb.nj, %bb.nk
  %i.drp = phi ptr [ %i.dro, %bb.nk ], [ %i.m, %bb.nj ] ; 3 uses
  %i.drq = getelementptr i8, ptr %i.drp, i64 %.0.i2705
  store ptr %i.drq, ptr %i.b, align 8, !tbaa !18
  store ptr %i.drp, ptr %i.a, align 8, !tbaa !18
  %i.drr = getelementptr i8, ptr %i.drp, i64 %i.drd ; 2 uses
  %.not.i2711 = icmp eq ptr %i.drr, null
  br i1 %.not.i2711, label %resize_buffer.exit2710.thread, label %buffer_size_check.exit2712

resize_buffer.exit2710.thread:                    ; preds = %bb.ni, %resize_buffer.exit2710
  %i.drs = call i64 @rb_enc_str_new(ptr noundef %1, i64 noundef range(i64 1, 0) %2, ptr noundef %.01901) #11
  call void @rb_syserr_fail_str(i32 noundef 34, i64 noundef %i.drs) #13
  unreachable

buffer_size_check.exit2712:                       ; preds = %resize_buffer.exit2710, %bb.nf
  %.23 = phi ptr [ %i.dqw, %bb.nf ], [ %i.drr, %resize_buffer.exit2710 ]
  %i.drt = sub i64 0, %i.dja                      ; 2 uses
  %i.dru = getelementptr i8, ptr %.23, i64 %i.drt ; 3 uses
  %i.drv = getelementptr i8, ptr %i.dru, i64 %i.dqu ; 2 uses
  %i.drw = getelementptr i8, ptr %i.drv, i64 %i.drt
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.drw, ptr noundef nonnull align 1 %i.dru, i64 noundef range(i64 -9223372036854775808, 2147483647) %i.dja, i1 noundef false) #11
  %.not2158 = icmp eq i8 %.019153307, 0
  %narrow2159 = select i1 %.not2158, i8 32, i8 %.019153307
  %i.drx = sub i64 %i.dqu, %i.dja
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.dru, i8 noundef %narrow2159, i64 noundef %i.drx, i1 noundef false) #11
  br label %case_conv.exit2868

bb.nl:                                            ; preds = %.lr.ph
  %i.dry = load i64, ptr %5, align 8, !tbaa !96
  %.pr.i2713 = load i64, ptr @rb_strftime_with_timespec.rbimpl_id.16, align 8, !tbaa !20 ; 2 uses
  %.not4.i2714 = icmp eq i64 %.pr.i2713, 0
  br i1 %.not4.i2714, label %.lr.ph.i2716, label %rbimpl_intern_const.exit2718

.lr.ph.i2716:                                     ; preds = %bb.nl, %.lr.ph.i2716
  %i.drz = call i64 @rb_intern2(ptr noundef nonnull @.str.4, i64 noundef 3) #11 ; 3 uses
  store i64 %i.drz, ptr @rb_strftime_with_timespec.rbimpl_id.16, align 8, !tbaa !20
  %.not.i2717 = icmp eq i64 %i.drz, 0
  br i1 %.not.i2717, label %.lr.ph.i2716, label %rbimpl_intern_const.exit2718, !llvm.loop !27

rbimpl_intern_const.exit2718:                     ; preds = %.lr.ph.i2716, %bb.nl
  %.lcssa.i2715 = phi i64 [ %.pr.i2713, %bb.nl ], [ %i.drz, %.lr.ph.i2716 ]
  %i.dsa = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.dry, i64 noundef %.lcssa.i2715, i32 noundef 1, i64 noundef 201) #11 ; 7 uses
  %i.dsb = trunc i64 %i.dsa to i1
  %i.dsc = and i32 %.019203305, 1
  %.not2151 = icmp eq i32 %i.dsc, 0               ; 2 uses
  br i1 %i.dsb, label %bb.nm, label %bb.nt

bb.nm:                                            ; preds = %rbimpl_intern_const.exit2718
  %i.dsd = icmp slt i32 %.019283304, 1
  %i.dse = select i1 %i.dsd, i32 2, i32 %.019283304
  %i.dsf = select i1 %.not2151, i32 %i.dse, i32 1 ; 2 uses
  %i.dsg = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.dsh = ptrtoint ptr %i.bl to i64              ; 2 uses
  %i.dsi = ptrtoint ptr %i.dsg to i64
  %i.dsj = sub i64 %i.dsh, %i.dsi                 ; 6 uses
  %i.dsk = load ptr, ptr %i.b, align 8, !tbaa !18 ; 2 uses
  %.not2152 = icmp ult ptr %i.bl, %i.dsk
  %i.dsl = sext i32 %i.dsf to i64                 ; 2 uses
  br i1 %.not2152, label %bb.nn, label %._crit_edge3690

bb.nn:                                            ; preds = %bb.nm
  %i.dsm = ptrtoint ptr %i.dsk to i64
  %i.dsn = xor i64 %i.dsh, -1
  %i.dso = add i64 %i.dsm, %i.dsn
  %.not2153 = icmp sgt i64 %i.dso, %i.dsl
  br i1 %.not2153, label %buffer_size_check.exit2726, label %._crit_edge3690

._crit_edge3690:                                  ; preds = %bb.nm, %bb.nn
  %i.dsp = shl nsw i64 %i.dsl, 1
  %i.dsq = add i64 %i.dsj, %i.dsp
  %i.dsr = call i64 @rb_str_capacity(i64 noundef %0) #12
  br label %bb.no

bb.no:                                            ; preds = %bb.no, %._crit_edge3690
  %.0.i2719 = phi i64 [ %i.dsr, %._crit_edge3690 ], [ %i.dst, %bb.no ] ; 6 uses
  %i.dss = icmp ult i64 %.0.i2719, %i.dsq
  %i.dst = shl i64 %.0.i2719, 1
  br i1 %i.dss, label %bb.no, label %bb.np, !llvm.loop !0

bb.np:                                            ; preds = %bb.no
  %i.dsu = icmp ult i64 %.0.i2719, %i.dsj
  %i.dsv = icmp ugt i64 %.0.i2719, %9
  %or.cond.i2720 = or i1 %i.dsu, %i.dsv
  br i1 %or.cond.i2720, label %resize_buffer.exit2724.thread, label %bb.nq

bb.nq:                                            ; preds = %bb.np
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.dsj) #11
  %i.dsw = sub nuw i64 %.0.i2719, %i.dsj
  call void @rb_str_modify_expand(i64 noundef %0, i64 noundef %i.dsw) #11
  %i.dsx = load i64, ptr %i.h, align 8, !tbaa !14
  %i.dsy = and i64 %i.dsx, 8192
  %.not.i.i2721 = icmp eq i64 %i.dsy, 0
  br i1 %.not.i.i2721, label %resize_buffer.exit2724, label %bb.nr

bb.nr:                                            ; preds = %bb.nq
  %i.dsz = load ptr, ptr %i.m, align 8, !tbaa !15
  br label %resize_buffer.exit2724

resize_buffer.exit2724:                           ; preds = %bb.nq, %bb.nr
  %i.dta = phi ptr [ %i.dsz, %bb.nr ], [ %i.m, %bb.nq ] ; 2 uses
  %i.dtb = getelementptr i8, ptr %i.dta, i64 %.0.i2719
  store ptr %i.dtb, ptr %i.b, align 8, !tbaa !18
  %i.dtc = getelementptr i8, ptr %i.dta, i64 %i.dsj
  %.not.i2725 = icmp eq ptr %i.dtc, null
  br i1 %.not.i2725, label %resize_buffer.exit2724.thread, label %buffer_size_check.exit2726

resize_buffer.exit2724.thread:                    ; preds = %bb.np, %resize_buffer.exit2724
  %i.dtd = call i64 @rb_enc_str_new(ptr noundef %1, i64 noundef range(i64 1, 0) %2, ptr noundef %.01901) #11
  call void @rb_syserr_fail_str(i32 noundef 34, i64 noundef %i.dtd) #13
  unreachable

buffer_size_check.exit2726:                       ; preds = %resize_buffer.exit2724, %bb.nn
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.dsj) #11
  %i.dte = icmp eq i8 %.019153307, 48
  %.not2154 = icmp eq i8 %.019153307, 0
  %i.dtf = or i1 %i.dte, %.not2154
  %i.dtg = select i1 %i.dtf, i64 5, i64 0
  %i.dth = getelementptr i8, ptr @.str.3, i64 %i.dtg
  %i.dti = ashr i64 %i.dsa, 1
  %i.dtj = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %0, ptr noundef %i.dth, i32 noundef %i.dsf, i64 noundef %i.dti) #11 ; 0 uses
  %i.dtk = load i64, ptr %i.h, align 8, !tbaa !14
  %i.dtl = and i64 %i.dtk, 8192
  %.not.i2727 = icmp eq i64 %i.dtl, 0
  br i1 %.not.i2727, label %RSTRING_PTR.exit2728, label %bb.ns

bb.ns:                                            ; preds = %buffer_size_check.exit2726
  %i.dtm = load ptr, ptr %i.m, align 8, !tbaa !15
  br label %RSTRING_PTR.exit2728

RSTRING_PTR.exit2728:                             ; preds = %buffer_size_check.exit2726, %bb.ns
  %i.dtn = phi ptr [ %i.dtm, %bb.ns ], [ %i.m, %buffer_size_check.exit2726 ] ; 3 uses
  %i.dto = load i64, ptr %i.i, align 8, !tbaa !89
  store ptr %i.dtn, ptr %i.a, align 8, !tbaa !18
  %i.dtp = call i64 @rb_str_capacity(i64 noundef %0) #12
  %i.dtq = getelementptr i8, ptr %i.dtn, i64 %i.dtp
  store ptr %i.dtq, ptr %i.b, align 8, !tbaa !18
  %i.dtr = getelementptr i8, ptr %i.dtn, i64 %i.dto
  br label %case_conv.exit2868

bb.nt:                                            ; preds = %rbimpl_intern_const.exit2718
  %.not2146 = icmp eq i8 %.019153307, 0
  %spec.store.select32 = select i1 %.not2146, i8 48, i8 %.019153307
  %i.dts = icmp eq i64 %i.dsa, 0
  %i.dtt = and i64 %i.dsa, 6
  %i.dtu = icmp ne i64 %i.dtt, 0
  %i.dtv = or i1 %i.dts, %i.dtu
  br i1 %i.dtv, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i2730, label %rbimpl_RB_TYPE_P_fastpath.exit.i2729

rbimpl_RB_TYPE_P_fastpath.exit.i2729:             ; preds = %bb.nt
  %i.dtw = inttoptr i64 %i.dsa to ptr
  %i.dtx = load i64, ptr %i.dtw, align 8, !tbaa !14
  %i.dty = and i64 %i.dtx, 31
  %i.dtz = icmp eq i64 %i.dty, 10
  br i1 %i.dtz, label %format_value.exit2732, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i2730

rbimpl_RB_TYPE_P_fastpath.exit.thread.i2730:      ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i2729, %bb.nt
  %i.dua = call i64 @rb_Integer(i64 noundef %i.dsa) #11
  br label %format_value.exit2732

format_value.exit2732:                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i2729, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i2730
  %.0.i2731 = phi i64 [ %i.dsa, %rbimpl_RB_TYPE_P_fastpath.exit.i2729 ], [ %i.dua, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i2730 ]
  %i.dub = call i64 @rb_big2str(i64 noundef %.0.i2731, i32 noundef 10) #11 ; 2 uses
  %i.duc = inttoptr i64 %i.dub to ptr
  %i.dud = getelementptr i8, ptr %i.duc, i64 16
  %i.due = load i64, ptr %i.dud, align 8, !tbaa !89 ; 4 uses
  br i1 %.not2151, label %bb.nu, label %bb.nz

bb.nu:                                            ; preds = %format_value.exit2732
  %i.duf = icmp slt i32 %.019283304, 1
  %i.dug = select i1 %i.duf, i32 2, i32 %.019283304
  %i.duh = sext i32 %i.dug to i64                 ; 4 uses
  %i.dui = icmp slt i64 %i.due, %i.duh
  br i1 %i.dui, label %bb.nv, label %bb.nz

bb.nv:                                            ; preds = %bb.nu
  %i.duj = load ptr, ptr %i.b, align 8, !tbaa !18 ; 2 uses
  %.not2147 = icmp ult ptr %i.bl, %i.duj
  br i1 %.not2147, label %bb.nw, label %bb.nx

bb.nw:                                            ; preds = %bb.nv
  %i.duk = ptrtoint ptr %i.duj to i64
  %i.dul = ptrtoint ptr %i.bl to i64
  %i.dum = xor i64 %i.dul, -1
  %i.dun = add i64 %i.duk, %i.dum
  %.not2148 = icmp sgt i64 %i.dun, %i.duh
  br i1 %.not2148, label %bb.ny, label %bb.nx

bb.nx:                                            ; preds = %bb.nw, %bb.nv
  %i.duo = call fastcc ptr @resize_buffer(i64 noundef %0, ptr noundef %i.bl, ptr noundef %i.a, ptr noundef %i.b, i64 noundef %i.duh, i64 noundef %9) ; 2 uses
  call fastcc void @buffer_size_check(ptr noundef %i.duo, ptr noundef nonnull %i.r, i64 noundef %2, ptr noundef %.01901)
  br label %bb.ny

bb.ny:                                            ; preds = %bb.nx, %bb.nw
  %.24 = phi ptr [ %i.duo, %bb.nx ], [ %i.bl, %bb.nw ] ; 2 uses
  %i.dup = sub i64 %i.duh, %i.due                 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %.24, i8 noundef %spec.store.select32, i64 noundef %i.dup, i1 noundef false) #11
  %i.duq = getelementptr i8, ptr %.24, i64 %i.dup
  br label %buffer_size_check.exit2740

bb.nz:                                            ; preds = %format_value.exit2732, %bb.nu
  %i.dur = load ptr, ptr %i.b, align 8, !tbaa !18 ; 2 uses
  %.not2149 = icmp ult ptr %i.bl, %i.dur
  br i1 %.not2149, label %bb.oa, label %._crit_edge3689

._crit_edge3689:                                  ; preds = %bb.nz
  %.pre3790 = ptrtoint ptr %i.bl to i64
  br label %bb.ob

bb.oa:                                            ; preds = %bb.nz
  %i.dus = ptrtoint ptr %i.dur to i64
  %i.dut = ptrtoint ptr %i.bl to i64              ; 2 uses
  %i.duu = xor i64 %i.dut, -1
  %i.duv = add i64 %i.dus, %i.duu
  %.not2150 = icmp slt i64 %i.due, %i.duv
  br i1 %.not2150, label %buffer_size_check.exit2740, label %bb.ob

bb.ob:                                            ; preds = %._crit_edge3689, %bb.oa
  %.pre-phi3791 = phi i64 [ %.pre3790, %._crit_edge3689 ], [ %i.dut, %bb.oa ]
  %i.duw = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.dux = ptrtoint ptr %i.duw to i64
  %i.duy = sub i64 %.pre-phi3791, %i.dux          ; 5 uses
  %i.duz = shl i64 %i.due, 1
  %i.dva = add i64 %i.duy, %i.duz
  %i.dvb = call i64 @rb_str_capacity(i64 noundef %0) #12
  br label %bb.oc

bb.oc:                                            ; preds = %bb.oc, %bb.ob
  %.0.i2733 = phi i64 [ %i.dvb, %bb.ob ], [ %i.dvd, %bb.oc ] ; 6 uses
  %i.dvc = icmp ult i64 %.0.i2733, %i.dva
  %i.dvd = shl i64 %.0.i2733, 1
  br i1 %i.dvc, label %bb.oc, label %bb.od, !llvm.loop !0

bb.od:                                            ; preds = %bb.oc
  %i.dve = icmp ult i64 %.0.i2733, %i.duy
  %i.dvf = icmp ugt i64 %.0.i2733, %9
  %or.cond.i2734 = or i1 %i.dve, %i.dvf
  br i1 %or.cond.i2734, label %resize_buffer.exit2738.thread, label %bb.oe

bb.oe:                                            ; preds = %bb.od
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.duy) #11
  %i.dvg = sub nuw i64 %.0.i2733, %i.duy
  call void @rb_str_modify_expand(i64 noundef %0, i64 noundef %i.dvg) #11
  %i.dvh = load i64, ptr %i.h, align 8, !tbaa !14
  %i.dvi = and i64 %i.dvh, 8192
  %.not.i.i2735 = icmp eq i64 %i.dvi, 0
  br i1 %.not.i.i2735, label %resize_buffer.exit2738, label %bb.of

bb.of:                                            ; preds = %bb.oe
  %i.dvj = load ptr, ptr %i.m, align 8, !tbaa !15
  br label %resize_buffer.exit2738

resize_buffer.exit2738:                           ; preds = %bb.oe, %bb.of
  %i.dvk = phi ptr [ %i.dvj, %bb.of ], [ %i.m, %bb.oe ] ; 3 uses
  %i.dvl = getelementptr i8, ptr %i.dvk, i64 %.0.i2733
  store ptr %i.dvl, ptr %i.b, align 8, !tbaa !18
  store ptr %i.dvk, ptr %i.a, align 8, !tbaa !18
  %i.dvm = getelementptr i8, ptr %i.dvk, i64 %i.duy ; 2 uses
  %.not.i2739 = icmp eq ptr %i.dvm, null
  br i1 %.not.i2739, label %resize_buffer.exit2738.thread, label %buffer_size_check.exit2740

resize_buffer.exit2738.thread:                    ; preds = %bb.od, %resize_buffer.exit2738
  %i.dvn = call i64 @rb_enc_str_new(ptr noundef %1, i64 noundef range(i64 1, 0) %2, ptr noundef %.01901) #11
  call void @rb_syserr_fail_str(i32 noundef 34, i64 noundef %i.dvn) #13
  unreachable

buffer_size_check.exit2740:                       ; preds = %resize_buffer.exit2738, %bb.oa, %bb.ny
  %.25 = phi ptr [ %i.duq, %bb.ny ], [ %i.bl, %bb.oa ], [ %i.dvm, %resize_buffer.exit2738 ]
  %i.dvo = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.dvp = ptrtoint ptr %.25 to i64
  %i.dvq = ptrtoint ptr %i.dvo to i64
  %i.dvr = sub i64 %i.dvp, %i.dvq
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.dvr) #11
  %i.dvs = call i64 @rb_str_append(i64 noundef %0, i64 noundef %i.dub) #11 ; 0 uses
  %i.dvt = load i64, ptr %i.h, align 8, !tbaa !14
  %i.dvu = and i64 %i.dvt, 8192
  %.not.i2741 = icmp eq i64 %i.dvu, 0
  br i1 %.not.i2741, label %RSTRING_PTR.exit2742, label %bb.og

bb.og:                                            ; preds = %buffer_size_check.exit2740
  %i.dvv = load ptr, ptr %i.m, align 8, !tbaa !15
  br label %RSTRING_PTR.exit2742

RSTRING_PTR.exit2742:                             ; preds = %buffer_size_check.exit2740, %bb.og
  %i.dvw = phi ptr [ %i.dvv, %bb.og ], [ %i.m, %buffer_size_check.exit2740 ] ; 3 uses
  %i.dvx = load i64, ptr %i.i, align 8, !tbaa !89
  store ptr %i.dvw, ptr %i.a, align 8, !tbaa !18
  %i.dvy = call i64 @rb_str_capacity(i64 noundef %0) #12
  %i.dvz = getelementptr i8, ptr %i.dvw, i64 %i.dvy
  store ptr %i.dvz, ptr %i.b, align 8, !tbaa !18
  %i.dwa = getelementptr i8, ptr %i.dvw, i64 %i.dvx
  br label %case_conv.exit2868

bb.oh:                                            ; preds = %.lr.ph
  %i.dwb = getelementptr i8, ptr %.119003308, i64 2
  %i.dwc = load i8, ptr %i.dwb, align 1, !tbaa !15 ; 2 uses
  %.not2142 = icmp eq i8 %i.dwc, 0
  br i1 %.not2142, label %.loopexit, label %bb.oi

bb.oi:                                            ; preds = %bb.oh
  %i.dwd = sext i8 %i.dwc to i32
  %memchr2143 = call ptr @memchr(ptr nonnull dereferenceable(1) @.str.17, i32 %i.dwd, i64 7)
  %.not2144 = icmp eq ptr %memchr2143, null
end_hunk_9
begin_hunk_10_@rb_strftime_with_timespec:bb.a
bb.oj:                                            ; preds = %.lr.ph
  %i.dwe = getelementptr i8, ptr %.119003308, i64 2
  %i.dwf = load i8, ptr %i.dwe, align 1, !tbaa !15 ; 2 uses
  %.not2140 = icmp eq i8 %i.dwf, 0
  br i1 %.not2140, label %.loopexit, label %bb.ok

bb.ok:                                            ; preds = %bb.oj
  %i.dwg = sext i8 %i.dwf to i32
  %memchr = call ptr @memchr(ptr nonnull dereferenceable(1) @.str.18, i32 %i.dwg, i64 16)
  %.not2141 = icmp eq ptr %memchr, null
  br i1 %.not2141, label %.loopexit, label %.backedge

bb.ol:                                            ; preds = %.lr.ph
  %i.dwh = and i32 %.019203305, 1
  %.not2136 = icmp eq i32 %i.dwh, 0
  %i.dwi = icmp slt i32 %.019283304, 1
  %i.dwj = select i1 %i.dwi, i32 2, i32 %.019283304
  %i.dwk = select i1 %.not2136, i32 %i.dwj, i32 1 ; 2 uses
  %i.dwl = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.dwm = ptrtoint ptr %i.bl to i64              ; 2 uses
  %i.dwn = ptrtoint ptr %i.dwl to i64
  %i.dwo = sub i64 %i.dwm, %i.dwn                 ; 6 uses
  %i.dwp = load ptr, ptr %i.b, align 8, !tbaa !18 ; 2 uses
  %.not2137 = icmp ult ptr %i.bl, %i.dwp
  %i.dwq = sext i32 %i.dwk to i64                 ; 2 uses
  br i1 %.not2137, label %bb.om, label %._crit_edge3688

bb.om:                                            ; preds = %bb.ol
  %i.dwr = ptrtoint ptr %i.dwp to i64
  %i.dws = xor i64 %i.dwm, -1
  %i.dwt = add i64 %i.dwr, %i.dws
  %.not2138 = icmp sgt i64 %i.dwt, %i.dwq
  br i1 %.not2138, label %buffer_size_check.exit2750, label %._crit_edge3688

._crit_edge3688:                                  ; preds = %bb.ol, %bb.om
  %i.dwu = shl nsw i64 %i.dwq, 1
  %i.dwv = add i64 %i.dwo, %i.dwu
  %i.dww = call i64 @rb_str_capacity(i64 noundef %0) #12
  br label %bb.on

bb.on:                                            ; preds = %bb.on, %._crit_edge3688
  %.0.i2743 = phi i64 [ %i.dww, %._crit_edge3688 ], [ %i.dwy, %bb.on ] ; 6 uses
  %i.dwx = icmp ult i64 %.0.i2743, %i.dwv
  %i.dwy = shl i64 %.0.i2743, 1
  br i1 %i.dwx, label %bb.on, label %bb.oo, !llvm.loop !0

bb.oo:                                            ; preds = %bb.on
  %i.dwz = icmp ult i64 %.0.i2743, %i.dwo
  %i.dxa = icmp ugt i64 %.0.i2743, %9
  %or.cond.i2744 = or i1 %i.dwz, %i.dxa
  br i1 %or.cond.i2744, label %resize_buffer.exit2748.thread, label %bb.op

bb.op:                                            ; preds = %bb.oo
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.dwo) #11
  %i.dxb = sub nuw i64 %.0.i2743, %i.dwo
  call void @rb_str_modify_expand(i64 noundef %0, i64 noundef %i.dxb) #11
  %i.dxc = load i64, ptr %i.h, align 8, !tbaa !14
  %i.dxd = and i64 %i.dxc, 8192
  %.not.i.i2745 = icmp eq i64 %i.dxd, 0
  br i1 %.not.i.i2745, label %resize_buffer.exit2748, label %bb.oq

bb.oq:                                            ; preds = %bb.op
  %i.dxe = load ptr, ptr %i.m, align 8, !tbaa !15
  br label %resize_buffer.exit2748

resize_buffer.exit2748:                           ; preds = %bb.op, %bb.oq
  %i.dxf = phi ptr [ %i.dxe, %bb.oq ], [ %i.m, %bb.op ] ; 3 uses
  %i.dxg = getelementptr i8, ptr %i.dxf, i64 %.0.i2743
  store ptr %i.dxg, ptr %i.b, align 8, !tbaa !18
  store ptr %i.dxf, ptr %i.a, align 8, !tbaa !18
  %i.dxh = getelementptr i8, ptr %i.dxf, i64 %i.dwo
  %.not.i2749 = icmp eq ptr %i.dxh, null
  br i1 %.not.i2749, label %resize_buffer.exit2748.thread, label %buffer_size_check.exit2750

resize_buffer.exit2748.thread:                    ; preds = %bb.oo, %resize_buffer.exit2748
  %i.dxi = call i64 @rb_enc_str_new(ptr noundef %1, i64 noundef range(i64 1, 0) %2, ptr noundef %.01901) #11
  call void @rb_syserr_fail_str(i32 noundef 34, i64 noundef %i.dxi) #13
  unreachable

buffer_size_check.exit2750:                       ; preds = %resize_buffer.exit2748, %bb.om
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.dwo) #11
  %i.dxj = icmp eq i8 %.019153307, 48
  %.not2139 = icmp eq i8 %.019153307, 0
  %i.dxk = or i1 %i.dxj, %.not2139
  %i.dxl = select i1 %i.dxk, i64 4, i64 0
  %i.dxm = getelementptr i8, ptr @.str.2, i64 %i.dxl
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  %i.dxn = load i64, ptr %5, align 8, !tbaa !96
  %i.dxo = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.dxn, i64 noundef 37, i32 noundef 1, i64 noundef 801) #11
  %i.dxp = call i64 @rb_fix2int(i64 noundef %i.dxo) #11
  %i.dxq = trunc i64 %i.dxp to i32
  %i.dxr = add i32 %i.dxq, 100
  %i.dxs = load i64, ptr %i.ag, align 8           ; 4 uses
  %i.dxt = trunc i64 %i.dxs to i32                ; 5 uses
  %i.dxu = lshr i32 %i.dxt, 9
  %i.dxv = and i32 %i.dxu, 15
  %i.dxw = add nsw i32 %i.dxv, -1
  %i.dxx = lshr i32 %i.dxt, 13
  %i.dxy = and i32 %i.dxx, 31
  %i.dxz = lshr i32 %i.dxt, 18
  %i.dya = and i32 %i.dxz, 31
  %i.dyb = lshr i32 %i.dxt, 23
  %i.dyc = and i32 %i.dyb, 63
  %i.dyd = lshr i64 %i.dxs, 32
  %i.dye = trunc nuw i64 %i.dyd to i32
  %i.dyf = and i32 %i.dye, 63
  %i.dyg = lshr i64 %i.dxs, 38
  %i.dyh = trunc nuw nsw i64 %i.dyg to i32
  %i.dyi = and i32 %i.dyh, 7
  %i.dyj = and i32 %i.dxt, 511
  %i.dyk = add nsw i32 %i.dyj, -1
  %i.dyl = lshr i64 %i.dxs, 41
  %i.dym = trunc nuw nsw i64 %i.dyl to i32
  %i.dyn = and i32 %i.dym, 3
  store i32 %i.dyf, ptr %11, align 8, !tbaa !11
  store i32 %i.dyc, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !tbaa !11
  store i32 %i.dya, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !11
  store i32 %i.dxy, ptr %.sroa.6.0..sroa_idx.i.i, align 4, !tbaa !11
  store i32 %i.dxw, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !tbaa !11
  store i32 %i.dxr, ptr %.sroa.8.0..sroa_idx.i.i, align 4, !tbaa !11
  store i32 %i.dyi, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !tbaa !11
  store i32 %i.dyk, ptr %.sroa.10.0..sroa_idx.i.i, align 4, !tbaa !11
  store i32 %i.dyn, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !tbaa !11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.121.0..sroa_idx.i.i, i8 0, i64 16, i1 false)
  %i.dyo = call fastcc range(i32 0, 306783380) i32 @iso8601wknum(ptr noundef %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  %i.dyp = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %0, ptr noundef %i.dxm, i32 noundef %i.dwk, i32 noundef %i.dyo) #11 ; 0 uses
  %i.dyq = load i64, ptr %i.h, align 8, !tbaa !14
  %i.dyr = and i64 %i.dyq, 8192
  %.not.i2751 = icmp eq i64 %i.dyr, 0
  br i1 %.not.i2751, label %RSTRING_PTR.exit2752, label %bb.or

bb.or:                                            ; preds = %buffer_size_check.exit2750
  %i.dys = load ptr, ptr %i.m, align 8, !tbaa !15
  br label %RSTRING_PTR.exit2752

RSTRING_PTR.exit2752:                             ; preds = %buffer_size_check.exit2750, %bb.or
  %i.dyt = phi ptr [ %i.dys, %bb.or ], [ %i.m, %buffer_size_check.exit2750 ] ; 3 uses
  %i.dyu = load i64, ptr %i.i, align 8, !tbaa !89
  store ptr %i.dyt, ptr %i.a, align 8, !tbaa !18
  %i.dyv = call i64 @rb_str_capacity(i64 noundef %0) #12
  %i.dyw = getelementptr i8, ptr %i.dyt, i64 %i.dyv
  store ptr %i.dyw, ptr %i.b, align 8, !tbaa !18
  %i.dyx = getelementptr i8, ptr %i.dyt, i64 %i.dyu
  br label %case_conv.exit2868

bb.os:                                            ; preds = %.lr.ph
  %i.dyy = and i32 %.019203305, 1
  %.not2132 = icmp eq i32 %i.dyy, 0
  %i.dyz = call i32 @llvm.smax.i32(i32 %.019283304, i32 1)
  %i.dza = select i1 %.not2132, i32 %i.dyz, i32 1 ; 3 uses
  %i.dzb = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.dzc = ptrtoint ptr %i.bl to i64              ; 2 uses
  %i.dzd = ptrtoint ptr %i.dzb to i64
  %i.dze = sub i64 %i.dzc, %i.dzd                 ; 6 uses
  %i.dzf = load ptr, ptr %i.b, align 8, !tbaa !18 ; 2 uses
  %.not2133 = icmp ult ptr %i.bl, %i.dzf
  br i1 %.not2133, label %bb.ot, label %bb.ou

bb.ot:                                            ; preds = %bb.os
  %i.dzg = zext nneg i32 %i.dza to i64
  %i.dzh = ptrtoint ptr %i.dzf to i64
  %i.dzi = xor i64 %i.dzc, -1
  %i.dzj = add i64 %i.dzh, %i.dzi
  %.not2134 = icmp sgt i64 %i.dzj, %i.dzg
  br i1 %.not2134, label %buffer_size_check.exit2760, label %bb.ou

bb.ou:                                            ; preds = %bb.ot, %bb.os
  %i.dzk = shl nuw i32 %i.dza, 1
  %i.dzl = zext i32 %i.dzk to i64
  %i.dzm = add i64 %i.dze, %i.dzl
  %i.dzn = call i64 @rb_str_capacity(i64 noundef %0) #12
  br label %bb.ov

bb.ov:                                            ; preds = %bb.ov, %bb.ou
  %.0.i2753 = phi i64 [ %i.dzn, %bb.ou ], [ %i.dzp, %bb.ov ] ; 6 uses
  %i.dzo = icmp ult i64 %.0.i2753, %i.dzm
  %i.dzp = shl i64 %.0.i2753, 1
  br i1 %i.dzo, label %bb.ov, label %bb.ow, !llvm.loop !0

bb.ow:                                            ; preds = %bb.ov
  %i.dzq = icmp ult i64 %.0.i2753, %i.dze
  %i.dzr = icmp ugt i64 %.0.i2753, %9
  %or.cond.i2754 = or i1 %i.dzq, %i.dzr
  br i1 %or.cond.i2754, label %resize_buffer.exit2758.thread, label %bb.ox

bb.ox:                                            ; preds = %bb.ow
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.dze) #11
  %i.dzs = sub nuw i64 %.0.i2753, %i.dze
  call void @rb_str_modify_expand(i64 noundef %0, i64 noundef %i.dzs) #11
  %i.dzt = load i64, ptr %i.h, align 8, !tbaa !14
  %i.dzu = and i64 %i.dzt, 8192
  %.not.i.i2755 = icmp eq i64 %i.dzu, 0
  br i1 %.not.i.i2755, label %resize_buffer.exit2758, label %bb.oy

bb.oy:                                            ; preds = %bb.ox
  %i.dzv = load ptr, ptr %i.m, align 8, !tbaa !15
  br label %resize_buffer.exit2758

resize_buffer.exit2758:                           ; preds = %bb.ox, %bb.oy
  %i.dzw = phi ptr [ %i.dzv, %bb.oy ], [ %i.m, %bb.ox ] ; 2 uses
  %i.dzx = getelementptr i8, ptr %i.dzw, i64 %.0.i2753
  store ptr %i.dzx, ptr %i.b, align 8, !tbaa !18
  %i.dzy = getelementptr i8, ptr %i.dzw, i64 %i.dze
  %.not.i2759 = icmp eq ptr %i.dzy, null
  br i1 %.not.i2759, label %resize_buffer.exit2758.thread, label %buffer_size_check.exit2760

resize_buffer.exit2758.thread:                    ; preds = %bb.ow, %resize_buffer.exit2758
  %i.dzz = call i64 @rb_enc_str_new(ptr noundef %1, i64 noundef range(i64 1, 0) %2, ptr noundef %.01901) #11
  call void @rb_syserr_fail_str(i32 noundef 34, i64 noundef %i.dzz) #13
  unreachable

buffer_size_check.exit2760:                       ; preds = %resize_buffer.exit2758, %bb.ot
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.dze) #11
  %i.eaa = icmp eq i8 %.019153307, 48
  %.not2135 = icmp eq i8 %.019153307, 0
  %i.eab = or i1 %i.eaa, %.not2135
  %i.eac = select i1 %i.eab, i64 4, i64 0
  %i.ead = getelementptr i8, ptr @.str.2, i64 %i.eac
  %i.eae = load i64, ptr %i.ag, align 8
  %i.eaf = lshr i64 %i.eae, 38
  %i.eag = trunc nuw nsw i64 %i.eaf to i32
  %i.eah = and i32 %i.eag, 7                      ; 2 uses
  %i.eai = icmp eq i32 %i.eah, 0
  %spec.select2342 = select i1 %i.eai, i32 7, i32 %i.eah
  %i.eaj = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %0, ptr noundef %i.ead, i32 noundef %i.dza, i32 noundef %spec.select2342) #11 ; 0 uses
  %i.eak = load i64, ptr %i.h, align 8, !tbaa !14
  %i.eal = and i64 %i.eak, 8192
  %.not.i2761 = icmp eq i64 %i.eal, 0
  br i1 %.not.i2761, label %RSTRING_PTR.exit2762, label %bb.oz

bb.oz:                                            ; preds = %buffer_size_check.exit2760
  %i.eam = load ptr, ptr %i.m, align 8, !tbaa !15
  br label %RSTRING_PTR.exit2762

RSTRING_PTR.exit2762:                             ; preds = %buffer_size_check.exit2760, %bb.oz
  %i.ean = phi ptr [ %i.eam, %bb.oz ], [ %i.m, %buffer_size_check.exit2760 ] ; 3 uses
  %i.eao = load i64, ptr %i.i, align 8, !tbaa !89
  store ptr %i.ean, ptr %i.a, align 8, !tbaa !18
  %i.eap = call i64 @rb_str_capacity(i64 noundef %0) #12
  %i.eaq = getelementptr i8, ptr %i.ean, i64 %i.eap
  store ptr %i.eaq, ptr %i.b, align 8, !tbaa !18
  %i.ear = getelementptr i8, ptr %i.ean, i64 %i.eao
  br label %case_conv.exit2868

bb.pa:                                            ; preds = %.lr.ph, %.lr.ph
  %i.eas = load i64, ptr %5, align 8, !tbaa !96   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11
  %i.eat = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.eas, i64 noundef 37, i32 noundef 1, i64 noundef 801) #11
  %i.eau = call i64 @rb_fix2int(i64 noundef %i.eat) #11
  %i.eav = trunc i64 %i.eau to i32
  %i.eaw = add i32 %i.eav, 100
  %i.eax = load i64, ptr %i.ag, align 8           ; 4 uses
  %i.eay = trunc i64 %i.eax to i32                ; 5 uses
  %i.eaz = lshr i32 %i.eay, 9
  %i.eba = and i32 %i.eaz, 15                     ; 3 uses
  %i.ebb = add nsw i32 %i.eba, -1
  %i.ebc = lshr i32 %i.eay, 13
  %i.ebd = and i32 %i.ebc, 31
  %i.ebe = lshr i32 %i.eay, 18
  %i.ebf = and i32 %i.ebe, 31
  %i.ebg = lshr i32 %i.eay, 23
  %i.ebh = and i32 %i.ebg, 63
  %i.ebi = lshr i64 %i.eax, 32
  %i.ebj = trunc nuw i64 %i.ebi to i32
  %i.ebk = and i32 %i.ebj, 63
  %i.ebl = lshr i64 %i.eax, 38
  %i.ebm = trunc nuw nsw i64 %i.ebl to i32
  %i.ebn = and i32 %i.ebm, 7
  %i.ebo = and i32 %i.eay, 511
  %i.ebp = add nsw i32 %i.ebo, -1
  %i.ebq = lshr i64 %i.eax, 41
  %i.ebr = trunc nuw nsw i64 %i.ebq to i32
  %i.ebs = and i32 %i.ebr, 3
  store i32 %i.ebk, ptr %10, align 8, !tbaa !11
  store i32 %i.ebh, ptr %.sroa.4.0..sroa_idx.i.i2763, align 4, !tbaa !11
  store i32 %i.ebf, ptr %.sroa.5.0..sroa_idx.i.i2764, align 8, !tbaa !11
  store i32 %i.ebd, ptr %.sroa.6.0..sroa_idx.i.i2765, align 4, !tbaa !11
  store i32 %i.ebb, ptr %.sroa.7.0..sroa_idx.i.i2766, align 8, !tbaa !11
  store i32 %i.eaw, ptr %.sroa.8.0..sroa_idx.i.i2767, align 4, !tbaa !11
  store i32 %i.ebn, ptr %.sroa.9.0..sroa_idx.i.i2768, align 8, !tbaa !11
  store i32 %i.ebp, ptr %.sroa.10.0..sroa_idx.i.i2769, align 4, !tbaa !11
  store i32 %i.ebs, ptr %.sroa.11.0..sroa_idx.i.i2770, align 8, !tbaa !11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.121.0..sroa_idx.i.i2771, i8 0, i64 16, i1 false)
  %i.ebt = call fastcc range(i32 0, 306783380) i32 @iso8601wknum(ptr noundef %10) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  %i.ebu = icmp eq i32 %i.eba, 12
  %i.ebv = icmp eq i32 %i.ebt, 1
  %or.cond36 = select i1 %i.ebu, i1 %i.ebv, i1 false
  br i1 %or.cond36, label %.sink.split4436, label %bb.pb

bb.pb:                                            ; preds = %bb.pa
  %i.ebw = icmp eq i32 %i.eba, 1
  %i.ebx = icmp samesign ugt i32 %i.ebt, 51
  %or.cond38 = select i1 %i.ebw, i1 %i.ebx, i1 false
  br i1 %or.cond38, label %.sink.split4436, label %bb.pc

.sink.split4436:                                  ; preds = %bb.pb, %bb.pa
  %.sink = phi i64 [ 43, %bb.pa ], [ 45, %bb.pb ]
  %i.eby = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.eas, i64 noundef %.sink, i32 noundef 1, i64 noundef 3) #11
  br label %bb.pc

bb.pc:                                            ; preds = %.sink.split4436, %bb.pb
  %.01898 = phi i64 [ %i.eas, %bb.pb ], [ %i.eby, %.sink.split4436 ] ; 8 uses
  %i.ebz = load i8, ptr %i.bo, align 1, !tbaa !15
  %i.eca = icmp eq i8 %i.ebz, 71
  br i1 %i.eca, label %bb.pd, label %bb.pz

bb.pd:                                            ; preds = %bb.pc
  %i.ecb = trunc i64 %.01898 to i1
  br i1 %i.ecb, label %bb.pe, label %bb.pl

bb.pe:                                            ; preds = %bb.pd
  %i.ecc = ashr i64 %.01898, 1                    ; 2 uses
  %i.ecd = and i32 %.019203305, 1
  %.not2128 = icmp eq i32 %i.ecd, 0
  %i.ece = icmp slt i32 %.019283304, 1
  %i.ecf = icmp sgt i64 %i.ecc, -1
  %i.ecg = select i1 %i.ecf, i32 4, i32 5
  %i.ech = select i1 %i.ece, i32 %i.ecg, i32 %.019283304
  %i.eci = select i1 %.not2128, i32 %i.ech, i32 1 ; 2 uses
  %i.ecj = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.eck = ptrtoint ptr %i.bl to i64              ; 2 uses
  %i.ecl = ptrtoint ptr %i.ecj to i64
  %i.ecm = sub i64 %i.eck, %i.ecl                 ; 6 uses
  %i.ecn = load ptr, ptr %i.b, align 8, !tbaa !18 ; 2 uses
  %.not2129 = icmp ult ptr %i.bl, %i.ecn
  %i.eco = sext i32 %i.eci to i64                 ; 2 uses
  br i1 %.not2129, label %bb.pf, label %._crit_edge3687

bb.pf:                                            ; preds = %bb.pe
  %i.ecp = ptrtoint ptr %i.ecn to i64
  %i.ecq = xor i64 %i.eck, -1
  %i.ecr = add i64 %i.ecp, %i.ecq
  %.not2130 = icmp sgt i64 %i.ecr, %i.eco
  br i1 %.not2130, label %buffer_size_check.exit2779, label %._crit_edge3687

._crit_edge3687:                                  ; preds = %bb.pe, %bb.pf
  %i.ecs = shl nsw i64 %i.eco, 1
  %i.ect = add i64 %i.ecm, %i.ecs
  %i.ecu = call i64 @rb_str_capacity(i64 noundef %0) #12
  br label %bb.pg

bb.pg:                                            ; preds = %bb.pg, %._crit_edge3687
  %.0.i2772 = phi i64 [ %i.ecu, %._crit_edge3687 ], [ %i.ecw, %bb.pg ] ; 6 uses
  %i.ecv = icmp ult i64 %.0.i2772, %i.ect
  %i.ecw = shl i64 %.0.i2772, 1
  br i1 %i.ecv, label %bb.pg, label %bb.ph, !llvm.loop !0

bb.ph:                                            ; preds = %bb.pg
  %i.ecx = icmp ult i64 %.0.i2772, %i.ecm
  %i.ecy = icmp ugt i64 %.0.i2772, %9
  %or.cond.i2773 = or i1 %i.ecx, %i.ecy
  br i1 %or.cond.i2773, label %resize_buffer.exit2777.thread, label %bb.pi

bb.pi:                                            ; preds = %bb.ph
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.ecm) #11
  %i.ecz = sub nuw i64 %.0.i2772, %i.ecm
  call void @rb_str_modify_expand(i64 noundef %0, i64 noundef %i.ecz) #11
  %i.eda = load i64, ptr %i.h, align 8, !tbaa !14
  %i.edb = and i64 %i.eda, 8192
  %.not.i.i2774 = icmp eq i64 %i.edb, 0
  br i1 %.not.i.i2774, label %resize_buffer.exit2777, label %bb.pj

bb.pj:                                            ; preds = %bb.pi
  %i.edc = load ptr, ptr %i.m, align 8, !tbaa !15
  br label %resize_buffer.exit2777

resize_buffer.exit2777:                           ; preds = %bb.pi, %bb.pj
  %i.edd = phi ptr [ %i.edc, %bb.pj ], [ %i.m, %bb.pi ] ; 2 uses
  %i.ede = getelementptr i8, ptr %i.edd, i64 %.0.i2772
  store ptr %i.ede, ptr %i.b, align 8, !tbaa !18
  %i.edf = getelementptr i8, ptr %i.edd, i64 %i.ecm
  %.not.i2778 = icmp eq ptr %i.edf, null
  br i1 %.not.i2778, label %resize_buffer.exit2777.thread, label %buffer_size_check.exit2779

resize_buffer.exit2777.thread:                    ; preds = %bb.ph, %resize_buffer.exit2777
  %i.edg = call i64 @rb_enc_str_new(ptr noundef %1, i64 noundef range(i64 1, 0) %2, ptr noundef %.01901) #11
  call void @rb_syserr_fail_str(i32 noundef 34, i64 noundef %i.edg) #13
  unreachable

buffer_size_check.exit2779:                       ; preds = %resize_buffer.exit2777, %bb.pf
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.ecm) #11
  %i.edh = icmp eq i8 %.019153307, 48
  %.not2131 = icmp eq i8 %.019153307, 0
  %i.edi = or i1 %i.edh, %.not2131
  %i.edj = select i1 %i.edi, i64 5, i64 0
  %i.edk = getelementptr i8, ptr @.str.3, i64 %i.edj
  %i.edl = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %0, ptr noundef %i.edk, i32 noundef %i.eci, i64 noundef %i.ecc) #11 ; 0 uses
  %i.edm = load i64, ptr %i.h, align 8, !tbaa !14
  %i.edn = and i64 %i.edm, 8192
  %.not.i2780 = icmp eq i64 %i.edn, 0
  br i1 %.not.i2780, label %RSTRING_PTR.exit2781, label %bb.pk

bb.pk:                                            ; preds = %buffer_size_check.exit2779
  %i.edo = load ptr, ptr %i.m, align 8, !tbaa !15
  br label %RSTRING_PTR.exit2781

RSTRING_PTR.exit2781:                             ; preds = %buffer_size_check.exit2779, %bb.pk
  %i.edp = phi ptr [ %i.edo, %bb.pk ], [ %i.m, %buffer_size_check.exit2779 ] ; 3 uses
  %i.edq = load i64, ptr %i.i, align 8, !tbaa !89
  store ptr %i.edp, ptr %i.a, align 8, !tbaa !18
  %i.edr = call i64 @rb_str_capacity(i64 noundef %0) #12
  %i.eds = getelementptr i8, ptr %i.edp, i64 %i.edr
  store ptr %i.eds, ptr %i.b, align 8, !tbaa !18
  %i.edt = getelementptr i8, ptr %i.edp, i64 %i.edq
  br label %case_conv.exit2868

bb.pl:                                            ; preds = %bb.pd
  %i.edu = and i32 %.019203305, 1
  %.not2122 = icmp eq i32 %i.edu, 0
  %.not2123 = icmp eq i8 %.019153307, 0
  %spec.store.select41 = select i1 %.not2123, i8 48, i8 %.019153307
  %i.edv = icmp eq i64 %.01898, 0
  %i.edw = and i64 %.01898, 6
  %i.edx = icmp ne i64 %i.edw, 0
  %i.edy = or i1 %i.edv, %i.edx
  br i1 %i.edy, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i2783, label %rbimpl_RB_TYPE_P_fastpath.exit.i2782

rbimpl_RB_TYPE_P_fastpath.exit.i2782:             ; preds = %bb.pl
  %i.edz = inttoptr i64 %.01898 to ptr
  %i.eea = load i64, ptr %i.edz, align 8, !tbaa !14
  %i.eeb = and i64 %i.eea, 31
  %i.eec = icmp eq i64 %i.eeb, 10
  br i1 %i.eec, label %format_value.exit2785, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i2783

rbimpl_RB_TYPE_P_fastpath.exit.thread.i2783:      ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i2782, %bb.pl
  %i.eed = call i64 @rb_Integer(i64 noundef %.01898) #11
  br label %format_value.exit2785

format_value.exit2785:                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i2782, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i2783
  %.0.i2784 = phi i64 [ %.01898, %rbimpl_RB_TYPE_P_fastpath.exit.i2782 ], [ %i.eed, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i2783 ]
  %i.eee = call i64 @rb_big2str(i64 noundef %.0.i2784, i32 noundef 10) #11 ; 2 uses
  %i.eef = inttoptr i64 %i.eee to ptr
  %i.eeg = getelementptr i8, ptr %i.eef, i64 16
  %i.eeh = load i64, ptr %i.eeg, align 8, !tbaa !89 ; 4 uses
  br i1 %.not2122, label %bb.pm, label %bb.pr

bb.pm:                                            ; preds = %format_value.exit2785
  %i.eei = icmp slt i32 %.019283304, 1
  %i.eej = select i1 %i.eei, i32 4, i32 %.019283304
  %i.eek = sext i32 %i.eej to i64                 ; 4 uses
  %i.eel = icmp slt i64 %i.eeh, %i.eek
  br i1 %i.eel, label %bb.pn, label %bb.pr

bb.pn:                                            ; preds = %bb.pm
  %i.eem = load ptr, ptr %i.b, align 8, !tbaa !18 ; 2 uses
  %.not2124 = icmp ult ptr %i.bl, %i.eem
  br i1 %.not2124, label %bb.po, label %bb.pp

bb.po:                                            ; preds = %bb.pn
  %i.een = ptrtoint ptr %i.eem to i64
  %i.eeo = ptrtoint ptr %i.bl to i64
  %i.eep = xor i64 %i.eeo, -1
  %i.eeq = add i64 %i.een, %i.eep
  %.not2125 = icmp sgt i64 %i.eeq, %i.eek
  br i1 %.not2125, label %bb.pq, label %bb.pp

bb.pp:                                            ; preds = %bb.po, %bb.pn
  %i.eer = call fastcc ptr @resize_buffer(i64 noundef %0, ptr noundef %i.bl, ptr noundef %i.a, ptr noundef %i.b, i64 noundef %i.eek, i64 noundef %9) ; 2 uses
  call fastcc void @buffer_size_check(ptr noundef %i.eer, ptr noundef nonnull %i.r, i64 noundef %2, ptr noundef %.01901)
  br label %bb.pq

bb.pq:                                            ; preds = %bb.pp, %bb.po
  %.27 = phi ptr [ %i.eer, %bb.pp ], [ %i.bl, %bb.po ] ; 2 uses
  %i.ees = sub i64 %i.eek, %i.eeh                 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %.27, i8 noundef %spec.store.select41, i64 noundef %i.ees, i1 noundef false) #11
  %i.eet = getelementptr i8, ptr %.27, i64 %i.ees
  br label %buffer_size_check.exit2793

bb.pr:                                            ; preds = %format_value.exit2785, %bb.pm
  %i.eeu = load ptr, ptr %i.b, align 8, !tbaa !18 ; 2 uses
  %.not2126 = icmp ult ptr %i.bl, %i.eeu
  br i1 %.not2126, label %bb.ps, label %._crit_edge3686

._crit_edge3686:                                  ; preds = %bb.pr
  %.pre3796 = ptrtoint ptr %i.bl to i64
  br label %bb.pt

bb.ps:                                            ; preds = %bb.pr
  %i.eev = ptrtoint ptr %i.eeu to i64
  %i.eew = ptrtoint ptr %i.bl to i64              ; 2 uses
  %i.eex = xor i64 %i.eew, -1
  %i.eey = add i64 %i.eev, %i.eex
  %.not2127 = icmp slt i64 %i.eeh, %i.eey
  br i1 %.not2127, label %buffer_size_check.exit2793, label %bb.pt

bb.pt:                                            ; preds = %._crit_edge3686, %bb.ps
  %.pre-phi3797 = phi i64 [ %.pre3796, %._crit_edge3686 ], [ %i.eew, %bb.ps ]
  %i.eez = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.efa = ptrtoint ptr %i.eez to i64
  %i.efb = sub i64 %.pre-phi3797, %i.efa          ; 5 uses
  %i.efc = shl i64 %i.eeh, 1
  %i.efd = add i64 %i.efb, %i.efc
  %i.efe = call i64 @rb_str_capacity(i64 noundef %0) #12
  br label %bb.pu

bb.pu:                                            ; preds = %bb.pu, %bb.pt
  %.0.i2786 = phi i64 [ %i.efe, %bb.pt ], [ %i.efg, %bb.pu ] ; 6 uses
  %i.eff = icmp ult i64 %.0.i2786, %i.efd
  %i.efg = shl i64 %.0.i2786, 1
  br i1 %i.eff, label %bb.pu, label %bb.pv, !llvm.loop !0

bb.pv:                                            ; preds = %bb.pu
  %i.efh = icmp ult i64 %.0.i2786, %i.efb
  %i.efi = icmp ugt i64 %.0.i2786, %9
  %or.cond.i2787 = or i1 %i.efh, %i.efi
  br i1 %or.cond.i2787, label %resize_buffer.exit2791.thread, label %bb.pw

bb.pw:                                            ; preds = %bb.pv
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.efb) #11
  %i.efj = sub nuw i64 %.0.i2786, %i.efb
  call void @rb_str_modify_expand(i64 noundef %0, i64 noundef %i.efj) #11
  %i.efk = load i64, ptr %i.h, align 8, !tbaa !14
  %i.efl = and i64 %i.efk, 8192
  %.not.i.i2788 = icmp eq i64 %i.efl, 0
  br i1 %.not.i.i2788, label %resize_buffer.exit2791, label %bb.px

bb.px:                                            ; preds = %bb.pw
  %i.efm = load ptr, ptr %i.m, align 8, !tbaa !15
  br label %resize_buffer.exit2791

resize_buffer.exit2791:                           ; preds = %bb.pw, %bb.px
  %i.efn = phi ptr [ %i.efm, %bb.px ], [ %i.m, %bb.pw ] ; 3 uses
  %i.efo = getelementptr i8, ptr %i.efn, i64 %.0.i2786
  store ptr %i.efo, ptr %i.b, align 8, !tbaa !18
  store ptr %i.efn, ptr %i.a, align 8, !tbaa !18
  %i.efp = getelementptr i8, ptr %i.efn, i64 %i.efb ; 2 uses
  %.not.i2792 = icmp eq ptr %i.efp, null
  br i1 %.not.i2792, label %resize_buffer.exit2791.thread, label %buffer_size_check.exit2793

resize_buffer.exit2791.thread:                    ; preds = %bb.pv, %resize_buffer.exit2791
  %i.efq = call i64 @rb_enc_str_new(ptr noundef %1, i64 noundef range(i64 1, 0) %2, ptr noundef %.01901) #11
  call void @rb_syserr_fail_str(i32 noundef 34, i64 noundef %i.efq) #13
  unreachable

buffer_size_check.exit2793:                       ; preds = %resize_buffer.exit2791, %bb.ps, %bb.pq
  %.28 = phi ptr [ %i.eet, %bb.pq ], [ %i.bl, %bb.ps ], [ %i.efp, %resize_buffer.exit2791 ]
  %i.efr = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.efs = ptrtoint ptr %.28 to i64
  %i.eft = ptrtoint ptr %i.efr to i64
  %i.efu = sub i64 %i.efs, %i.eft
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.efu) #11
  %i.efv = call i64 @rb_str_append(i64 noundef %0, i64 noundef %i.eee) #11 ; 0 uses
  %i.efw = load i64, ptr %i.h, align 8, !tbaa !14
  %i.efx = and i64 %i.efw, 8192
  %.not.i2794 = icmp eq i64 %i.efx, 0
  br i1 %.not.i2794, label %RSTRING_PTR.exit2795, label %bb.py

bb.py:                                            ; preds = %buffer_size_check.exit2793
  %i.efy = load ptr, ptr %i.m, align 8, !tbaa !15
  br label %RSTRING_PTR.exit2795

RSTRING_PTR.exit2795:                             ; preds = %buffer_size_check.exit2793, %bb.py
  %i.efz = phi ptr [ %i.efy, %bb.py ], [ %i.m, %buffer_size_check.exit2793 ] ; 3 uses
  %i.ega = load i64, ptr %i.i, align 8, !tbaa !89
  store ptr %i.efz, ptr %i.a, align 8, !tbaa !18
  %i.egb = call i64 @rb_str_capacity(i64 noundef %0) #12
  %i.egc = getelementptr i8, ptr %i.efz, i64 %i.egb
  store ptr %i.egc, ptr %i.b, align 8, !tbaa !18
  %i.egd = getelementptr i8, ptr %i.efz, i64 %i.ega
  br label %case_conv.exit2868

bb.pz:                                            ; preds = %bb.pc
  %i.ege = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.01898, i64 noundef 37, i32 noundef 1, i64 noundef 201) #11
  %i.egf = ashr i64 %i.ege, 1
  %i.egg = and i32 %.019203305, 1
  %.not2118 = icmp eq i32 %i.egg, 0
  %i.egh = icmp slt i32 %.019283304, 1
  %i.egi = select i1 %i.egh, i32 2, i32 %.019283304
  %i.egj = select i1 %.not2118, i32 %i.egi, i32 1 ; 2 uses
  %i.egk = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.egl = ptrtoint ptr %i.bl to i64              ; 2 uses
  %i.egm = ptrtoint ptr %i.egk to i64
  %i.egn = sub i64 %i.egl, %i.egm                 ; 6 uses
  %i.ego = load ptr, ptr %i.b, align 8, !tbaa !18 ; 2 uses
  %.not2119 = icmp ult ptr %i.bl, %i.ego
  %i.egp = sext i32 %i.egj to i64                 ; 2 uses
  br i1 %.not2119, label %bb.qa, label %._crit_edge3685

bb.qa:                                            ; preds = %bb.pz
  %i.egq = ptrtoint ptr %i.ego to i64
  %i.egr = xor i64 %i.egl, -1
  %i.egs = add i64 %i.egq, %i.egr
  %.not2120 = icmp sgt i64 %i.egs, %i.egp
  br i1 %.not2120, label %buffer_size_check.exit2803, label %._crit_edge3685

._crit_edge3685:                                  ; preds = %bb.pz, %bb.qa
  %i.egt = shl nsw i64 %i.egp, 1
  %i.egu = add i64 %i.egn, %i.egt
  %i.egv = call i64 @rb_str_capacity(i64 noundef %0) #12
  br label %bb.qb

bb.qb:                                            ; preds = %bb.qb, %._crit_edge3685
  %.0.i2796 = phi i64 [ %i.egv, %._crit_edge3685 ], [ %i.egx, %bb.qb ] ; 6 uses
  %i.egw = icmp ult i64 %.0.i2796, %i.egu
  %i.egx = shl i64 %.0.i2796, 1
  br i1 %i.egw, label %bb.qb, label %bb.qc, !llvm.loop !0

bb.qc:                                            ; preds = %bb.qb
  %i.egy = icmp ult i64 %.0.i2796, %i.egn
  %i.egz = icmp ugt i64 %.0.i2796, %9
  %or.cond.i2797 = or i1 %i.egy, %i.egz
  br i1 %or.cond.i2797, label %resize_buffer.exit2801.thread, label %bb.qd

bb.qd:                                            ; preds = %bb.qc
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.egn) #11
  %i.eha = sub nuw i64 %.0.i2796, %i.egn
  call void @rb_str_modify_expand(i64 noundef %0, i64 noundef %i.eha) #11
  %i.ehb = load i64, ptr %i.h, align 8, !tbaa !14
  %i.ehc = and i64 %i.ehb, 8192
  %.not.i.i2798 = icmp eq i64 %i.ehc, 0
  br i1 %.not.i.i2798, label %resize_buffer.exit2801, label %bb.qe

bb.qe:                                            ; preds = %bb.qd
  %i.ehd = load ptr, ptr %i.m, align 8, !tbaa !15
  br label %resize_buffer.exit2801

resize_buffer.exit2801:                           ; preds = %bb.qd, %bb.qe
  %i.ehe = phi ptr [ %i.ehd, %bb.qe ], [ %i.m, %bb.qd ] ; 2 uses
  %i.ehf = getelementptr i8, ptr %i.ehe, i64 %.0.i2796
  store ptr %i.ehf, ptr %i.b, align 8, !tbaa !18
  %i.ehg = getelementptr i8, ptr %i.ehe, i64 %i.egn
  %.not.i2802 = icmp eq ptr %i.ehg, null
  br i1 %.not.i2802, label %resize_buffer.exit2801.thread, label %buffer_size_check.exit2803

resize_buffer.exit2801.thread:                    ; preds = %bb.qc, %resize_buffer.exit2801
  %i.ehh = call i64 @rb_enc_str_new(ptr noundef %1, i64 noundef range(i64 1, 0) %2, ptr noundef %.01901) #11
  call void @rb_syserr_fail_str(i32 noundef 34, i64 noundef %i.ehh) #13
  unreachable

buffer_size_check.exit2803:                       ; preds = %resize_buffer.exit2801, %bb.qa
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.egn) #11
  %i.ehi = icmp eq i8 %.019153307, 48
  %.not2121 = icmp eq i8 %.019153307, 0
  %i.ehj = or i1 %i.ehi, %.not2121
  %i.ehk = select i1 %i.ehj, i64 5, i64 0
  %i.ehl = getelementptr i8, ptr @.str.3, i64 %i.ehk
  %i.ehm = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %0, ptr noundef %i.ehl, i32 noundef %i.egj, i64 noundef %i.egf) #11 ; 0 uses
  %i.ehn = load i64, ptr %i.h, align 8, !tbaa !14
  %i.eho = and i64 %i.ehn, 8192
  %.not.i2804 = icmp eq i64 %i.eho, 0
  br i1 %.not.i2804, label %RSTRING_PTR.exit2805, label %bb.qf

bb.qf:                                            ; preds = %buffer_size_check.exit2803
  %i.ehp = load ptr, ptr %i.m, align 8, !tbaa !15
  br label %RSTRING_PTR.exit2805

RSTRING_PTR.exit2805:                             ; preds = %buffer_size_check.exit2803, %bb.qf
  %i.ehq = phi ptr [ %i.ehp, %bb.qf ], [ %i.m, %buffer_size_check.exit2803 ] ; 3 uses
  %i.ehr = load i64, ptr %i.i, align 8, !tbaa !89
  store ptr %i.ehq, ptr %i.a, align 8, !tbaa !18
  %i.ehs = call i64 @rb_str_capacity(i64 noundef %0) #12
  %i.eht = getelementptr i8, ptr %i.ehq, i64 %i.ehs
  store ptr %i.eht, ptr %i.b, align 8, !tbaa !18
  %i.ehu = getelementptr i8, ptr %i.ehq, i64 %i.ehr
  br label %case_conv.exit2868

.loopexit2997.loopexit:                           ; preds = %.lr.ph
  br label %.loopexit2997

.loopexit2997:                                    ; preds = %.lr.ph, %.loopexit2997.loopexit
  %.01933 = phi i32 [ 3, %.loopexit2997.loopexit ], [ 9, %.lr.ph ]
  %i.ehv = icmp slt i32 %.019283304, 1
  %spec.select2343 = select i1 %i.ehv, i32 %.01933, i32 %.019283304 ; 14 uses
  %i.ehw = load ptr, ptr %i.b, align 8, !tbaa !18 ; 3 uses
  %.not2113 = icmp ult ptr %i.bl, %i.ehw
  %i.ehx = zext nneg i32 %spec.select2343 to i64  ; 2 uses
  br i1 %.not2113, label %bb.qg, label %._crit_edge3684

._crit_edge3684:                                  ; preds = %.loopexit2997
  %.pre3802 = ptrtoint ptr %i.bl to i64
  br label %bb.qh

bb.qg:                                            ; preds = %.loopexit2997
  %i.ehy = ptrtoint ptr %i.ehw to i64
  %i.ehz = ptrtoint ptr %i.bl to i64              ; 2 uses
  %i.eia = xor i64 %i.ehz, -1
  %i.eib = add i64 %i.ehy, %i.eia
  %.not2114 = icmp sgt i64 %i.eib, %i.ehx
  br i1 %.not2114, label %buffer_size_check.exit2813, label %bb.qh

bb.qh:                                            ; preds = %._crit_edge3684, %bb.qg
  %.pre-phi3803 = phi i64 [ %.pre3802, %._crit_edge3684 ], [ %i.ehz, %bb.qg ]
  %i.eic = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.eid = ptrtoint ptr %i.eic to i64
  %i.eie = sub i64 %.pre-phi3803, %i.eid          ; 5 uses
  %i.eif = shl nuw nsw i64 %i.ehx, 1
  %i.eig = add i64 %i.eie, %i.eif
  %i.eih = call i64 @rb_str_capacity(i64 noundef %0) #12
  br label %bb.qi

bb.qi:                                            ; preds = %bb.qi, %bb.qh
  %.0.i2806 = phi i64 [ %i.eih, %bb.qh ], [ %i.eij, %bb.qi ] ; 6 uses
  %i.eii = icmp ult i64 %.0.i2806, %i.eig
  %i.eij = shl i64 %.0.i2806, 1
  br i1 %i.eii, label %bb.qi, label %bb.qj, !llvm.loop !0

bb.qj:                                            ; preds = %bb.qi
  %i.eik = icmp ult i64 %.0.i2806, %i.eie
  %i.eil = icmp ugt i64 %.0.i2806, %9
  %or.cond.i2807 = or i1 %i.eik, %i.eil
  br i1 %or.cond.i2807, label %resize_buffer.exit2811.thread, label %bb.qk

bb.qk:                                            ; preds = %bb.qj
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.eie) #11
  %i.eim = sub nuw i64 %.0.i2806, %i.eie
  call void @rb_str_modify_expand(i64 noundef %0, i64 noundef %i.eim) #11
  %i.ein = load i64, ptr %i.h, align 8, !tbaa !14
  %i.eio = and i64 %i.ein, 8192
  %.not.i.i2808 = icmp eq i64 %i.eio, 0
  br i1 %.not.i.i2808, label %resize_buffer.exit2811, label %bb.ql

bb.ql:                                            ; preds = %bb.qk
  %i.eip = load ptr, ptr %i.m, align 8, !tbaa !15
  br label %resize_buffer.exit2811

resize_buffer.exit2811:                           ; preds = %bb.qk, %bb.ql
  %i.eiq = phi ptr [ %i.eip, %bb.ql ], [ %i.m, %bb.qk ] ; 3 uses
  %i.eir = getelementptr i8, ptr %i.eiq, i64 %.0.i2806 ; 2 uses
  store ptr %i.eir, ptr %i.b, align 8, !tbaa !18
  store ptr %i.eiq, ptr %i.a, align 8, !tbaa !18
  %i.eis = getelementptr i8, ptr %i.eiq, i64 %i.eie ; 2 uses
  %.not.i2812 = icmp eq ptr %i.eis, null
  br i1 %.not.i2812, label %resize_buffer.exit2811.thread, label %buffer_size_check.exit2813

resize_buffer.exit2811.thread:                    ; preds = %bb.qj, %resize_buffer.exit2811
  %i.eit = call i64 @rb_enc_str_new(ptr noundef %1, i64 noundef range(i64 1, 0) %2, ptr noundef %.01901) #11
  call void @rb_syserr_fail_str(i32 noundef 34, i64 noundef %i.eit) #13
  unreachable

buffer_size_check.exit2813:                       ; preds = %resize_buffer.exit2811, %bb.qg
  %i.eiu = phi ptr [ %i.ehw, %bb.qg ], [ %i.eir, %resize_buffer.exit2811 ] ; 2 uses
  %.31 = phi ptr [ %i.bl, %bb.qg ], [ %i.eis, %resize_buffer.exit2811 ] ; 11 uses
  br i1 %.not2115, label %bb.qp, label %bb.qm

bb.qm:                                            ; preds = %buffer_size_check.exit2813
  %i.eiv = load i64, ptr %i.ae, align 8, !tbaa !99 ; 4 uses
  %i.eiw = icmp sgt i32 %spec.select2343, 9
  br i1 %i.eiw, label %bb.qn, label %.preheader2993

.preheader2993:                                   ; preds = %bb.qm
  %i.eix = sub i32 9, %spec.select2343            ; 3 uses
  %.not3356 = icmp eq i32 %spec.select2343, 9
  br i1 %.not3356, label %._crit_edge, label %.lr.ph3331.preheader

.lr.ph3331.preheader:                             ; preds = %.preheader2993
  %xtraiter = and i32 %i.eix, 1
  %i.eiy = icmp eq i32 %spec.select2343, 8
  br i1 %i.eiy, label %.lr.ph3331.epil.preheader, label %.lr.ph3331.preheader.new

.lr.ph3331.preheader.new:                         ; preds = %.lr.ph3331.preheader
  %unroll_iter = and i32 %i.eix, -2
  br label %.lr.ph3331

bb.qn:                                            ; preds = %bb.qm
  %i.eiz = ptrtoint ptr %i.eiu to i64
  %i.eja = ptrtoint ptr %.31 to i64
  %i.ejb = sub i64 %i.eiz, %i.eja
  %i.ejc = call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef %.31, i64 noundef %i.ejb, ptr noundef nonnull @.str.19, i64 noundef %i.eiv) #11 ; 0 uses
  %i.ejd = getelementptr i8, ptr %.31, i64 9
  %i.eje = add nsw i32 %spec.select2343, -9
  %i.ejf = zext nneg i32 %i.eje to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.ejd, i8 noundef 48, i64 noundef %i.ejf, i1 noundef false) #11
  br label %bb.qo

.lr.ph3331:                                       ; preds = %.lr.ph3331, %.lr.ph3331.preheader.new
  %.018973329 = phi i64 [ %i.eiv, %.lr.ph3331.preheader.new ], [ %i.ejg, %.lr.ph3331 ]
  %niter = phi i32 [ 0, %.lr.ph3331.preheader.new ], [ %niter.next.1, %.lr.ph3331 ]
  %i.ejg = sdiv i64 %.018973329, 100              ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph3331, !llvm.loop !71

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph3331
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph3331.epil.preheader

.lr.ph3331.epil.preheader:                        ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph3331.preheader
  %.018973329.epil.init = phi i64 [ %i.eiv, %.lr.ph3331.preheader ], [ %i.ejg, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod6862 = trunc i32 %i.eix to i1
  call void @llvm.assume(i1 %lcmp.mod6862)
  %i.ejh = sdiv i64 %.018973329.epil.init, 10
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph3331.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader2993
  %.01897.lcssa = phi i64 [ %i.eiv, %.preheader2993 ], [ %i.ejg, %._crit_edge.loopexit.unr-lcssa ], [ %i.ejh, %.lr.ph3331.epil.preheader ]
  %i.eji = ptrtoint ptr %i.eiu to i64
  %i.ejj = ptrtoint ptr %.31 to i64
  %i.ejk = sub i64 %i.eji, %i.ejj
  %i.ejl = call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef %.31, i64 noundef %i.ejk, ptr noundef nonnull @.str.20, i32 noundef %spec.select2343, i64 noundef %.01897.lcssa) #11 ; 0 uses
  br label %bb.qo

bb.qo:                                            ; preds = %._crit_edge, %bb.qn
  %.pn2117 = zext i32 %spec.select2343 to i64
  %.32 = getelementptr i8, ptr %.31, i64 %.pn2117
  br label %case_conv.exit2868

bb.qp:                                            ; preds = %buffer_size_check.exit2813
  %i.ejm = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %6, i64 noundef 37, i32 noundef 1, i64 noundef 3) #11 ; 2 uses
  %i.ejn = icmp sgt i32 %spec.select2343, 8
  br i1 %i.ejn, label %.lr.ph3336, label %.preheader2992

.preheader2992:                                   ; preds = %.lr.ph3336, %bb.qp
  %.01894.lcssa = phi i64 [ %i.ejm, %bb.qp ], [ %i.ejq, %.lr.ph3336 ] ; 2 uses
  %.01893.lcssa = phi i32 [ %spec.select2343, %bb.qp ], [ %i.ejr, %.lr.ph3336 ] ; 4 uses
  %i.ejo = icmp sgt i32 %.01893.lcssa, 0
  br i1 %i.ejo, label %.lr.ph3341.preheader, label %._crit_edge3342.thread

.lr.ph3341.preheader:                             ; preds = %.preheader2992
  %xtraiter6863 = and i32 %.01893.lcssa, 7        ; 3 uses
  %i.ejp = icmp ult i32 %.01893.lcssa, 8
  br i1 %i.ejp, label %.lr.ph3341.epil.preheader, label %.lr.ph3341.preheader.new

.lr.ph3341.preheader.new:                         ; preds = %.lr.ph3341.preheader
  %unroll_iter6867 = and i32 %.01893.lcssa, 2147483640
  br label %.lr.ph3341

.lr.ph3336:                                       ; preds = %bb.qp, %.lr.ph3336
  %.018933334 = phi i32 [ %i.ejr, %.lr.ph3336 ], [ %spec.select2343, %bb.qp ] ; 2 uses
  %.018943333 = phi i64 [ %i.ejq, %.lr.ph3336 ], [ %i.ejm, %bb.qp ]
  %i.ejq = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.018943333, i64 noundef 42, i32 noundef 1, i64 noundef 2000000001) #11 ; 2 uses
  %i.ejr = add nsw i32 %.018933334, -9            ; 2 uses
  %i.ejs = icmp samesign ugt i32 %.018933334, 17
  br i1 %i.ejs, label %.lr.ph3336, label %.preheader2992, !llvm.loop !72

.lr.ph3341:                                       ; preds = %.lr.ph3341, %.lr.ph3341.preheader.new
  %.018923340 = phi i64 [ 1, %.lr.ph3341.preheader.new ], [ %i.ejt, %.lr.ph3341 ] ; 2 uses
  %niter6868 = phi i32 [ 0, %.lr.ph3341.preheader.new ], [ %niter6868.next.7, %.lr.ph3341 ]
  %i.ejt = mul i64 %.018923340, 100000000         ; 2 uses
  %niter6868.next.7 = add nuw nsw i32 %niter6868, 8 ; 2 uses
  %niter6868.ncmp.7.not = icmp eq i32 %niter6868.next.7, %unroll_iter6867
  br i1 %niter6868.ncmp.7.not, label %._crit_edge3342.unr-lcssa, label %.lr.ph3341, !llvm.loop !73

._crit_edge3342.unr-lcssa:                        ; preds = %.lr.ph3341
  %i.eju = mul i64 %.018923340, 10000000
  %lcmp.mod6864.not = icmp eq i32 %xtraiter6863, 0
  br i1 %lcmp.mod6864.not, label %._crit_edge3342, label %.lr.ph3341.epil.preheader

.lr.ph3341.epil.preheader:                        ; preds = %._crit_edge3342.unr-lcssa, %.lr.ph3341.preheader
  %.018923340.epil.init = phi i64 [ 1, %.lr.ph3341.preheader ], [ %i.ejt, %._crit_edge3342.unr-lcssa ]
  %lcmp.mod6866 = icmp ne i32 %xtraiter6863, 0
  call void @llvm.assume(i1 %lcmp.mod6866)
  br label %.lr.ph3341.epil

.lr.ph3341.epil:                                  ; preds = %.lr.ph3341.epil, %.lr.ph3341.epil.preheader
  %.018923340.epil = phi i64 [ %i.ejv, %.lr.ph3341.epil ], [ %.018923340.epil.init, %.lr.ph3341.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph3341.epil ], [ 0, %.lr.ph3341.epil.preheader ]
  %i.ejv = mul i64 %.018923340.epil, 10
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter6863
  br i1 %epil.iter.cmp.not, label %._crit_edge3342, label %.lr.ph3341.epil, !llvm.loop !74

._crit_edge3342:                                  ; preds = %.lr.ph3341.epil, %._crit_edge3342.unr-lcssa
  %.018923340.lcssa = phi i64 [ %i.eju, %._crit_edge3342.unr-lcssa ], [ %.018923340.epil, %.lr.ph3341.epil ]
  %i.ejw = mul i64 %.018923340.lcssa, 20
  %i.ejx = or disjoint i64 %i.ejw, 1
  %i.ejy = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.01894.lcssa, i64 noundef 42, i32 noundef 1, i64 noundef %i.ejx) #11
  br label %._crit_edge3342.thread

._crit_edge3342.thread:                           ; preds = %.preheader2992, %._crit_edge3342
  %.11895 = phi i64 [ %i.ejy, %._crit_edge3342 ], [ %.01894.lcssa, %.preheader2992 ]
  %.pr.i2814 = load i64, ptr @rb_strftime_with_timespec.rbimpl_id.21, align 8, !tbaa !20 ; 2 uses
  %.not4.i2815 = icmp eq i64 %.pr.i2814, 0
  br i1 %.not4.i2815, label %.lr.ph.i2817, label %rbimpl_intern_const.exit2819

.lr.ph.i2817:                                     ; preds = %._crit_edge3342.thread, %.lr.ph.i2817
  %i.ejz = call i64 @rb_intern2(ptr noundef nonnull @.str.4, i64 noundef 3) #11 ; 3 uses
  store i64 %i.ejz, ptr @rb_strftime_with_timespec.rbimpl_id.21, align 8, !tbaa !20
  %.not.i2818 = icmp eq i64 %i.ejz, 0
  br i1 %.not.i2818, label %.lr.ph.i2817, label %rbimpl_intern_const.exit2819, !llvm.loop !27

rbimpl_intern_const.exit2819:                     ; preds = %.lr.ph.i2817, %._crit_edge3342.thread
  %.lcssa.i2816 = phi i64 [ %.pr.i2814, %._crit_edge3342.thread ], [ %i.ejz, %.lr.ph.i2817 ]
  %i.eka = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.11895, i64 noundef %.lcssa.i2816, i32 noundef 1, i64 noundef 3) #11 ; 3 uses
  %i.ekb = trunc i64 %i.eka to i1
  br i1 %i.ekb, label %bb.qq, label %bb.qr

bb.qq:                                            ; preds = %rbimpl_intern_const.exit2819
  %i.ekc = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.ekd = ptrtoint ptr %i.ekc to i64
  %i.eke = ptrtoint ptr %.31 to i64
  %i.ekf = sub i64 %i.ekd, %i.eke
  %i.ekg = ashr i64 %i.eka, 1
  %i.ekh = call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef %.31, i64 noundef %i.ekf, ptr noundef nonnull @.str.20, i32 noundef %spec.select2343, i64 noundef %i.ekg) #11 ; 0 uses
  %i.eki = zext nneg i32 %spec.select2343 to i64
  br label %bb.qs

bb.qr:                                            ; preds = %rbimpl_intern_const.exit2819
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  %i.ekj = zext nneg i32 %spec.select2343 to i64  ; 2 uses
  %i.ekk = shl nuw nsw i64 %i.ekj, 1
  %i.ekl = or disjoint i64 %i.ekk, 1
  store i64 %i.ekl, ptr %i.d, align 16, !tbaa !20
  store i64 %i.eka, ptr %i.af, align 8, !tbaa !20
  %i.ekm = call i64 @rb_fstring_new(ptr noundef nonnull @.str.22, i64 noundef 4) #11
  %i.ekn = call i64 @rb_str_format(i32 noundef 2, ptr noundef nonnull %i.d, i64 noundef %i.ekm) #11
  store i64 %i.ekn, ptr %i.e, align 8, !tbaa !20
  %i.eko = call ptr @rb_string_value_cstr(ptr noundef nonnull %i.e) #11
  %i.ekp = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.ekq = ptrtoint ptr %i.ekp to i64
  %i.ekr = ptrtoint ptr %.31 to i64
  %i.eks = sub i64 %i.ekq, %i.ekr
  %i.ekt = call i64 @strlcpy(ptr noundef %.31, ptr noundef nonnull dereferenceable(1) %i.eko, i64 noundef %i.eks) #11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  br label %bb.qs

bb.qs:                                            ; preds = %bb.qr, %bb.qq
  %.pn = phi i64 [ %i.eki, %bb.qq ], [ %i.ekj, %bb.qr ]
  %.33 = getelementptr i8, ptr %.31, i64 %.pn
  br label %case_conv.exit2868

bb.qt:                                            ; preds = %.lr.ph
  %i.eku = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ekv = ptrtoint ptr %i.bl to i64
  %i.ekw = ptrtoint ptr %i.eku to i64
  %i.ekx = sub i64 %i.ekv, %i.ekw                 ; 3 uses
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.ekx) #11
  %i.eky = call fastcc i64 @rb_strftime_with_timespec(i64 noundef %0, ptr noundef nonnull @.str.23, i64 noundef 8, ptr noundef %.01901, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef %7, i32 noundef %8, i64 noundef %9)
  %.not2109 = icmp eq i64 %i.eky, 0
  br i1 %.not2109, label %.loopexit2998, label %bb.qu

bb.qu:                                            ; preds = %bb.qt
  %i.ekz = load i64, ptr %i.h, align 8, !tbaa !14
  %i.ela = and i64 %i.ekz, 8192
  %.not.i2820 = icmp eq i64 %i.ela, 0
  br i1 %.not.i2820, label %RSTRING_PTR.exit2821, label %bb.qv

bb.qv:                                            ; preds = %bb.qu
  %i.elb = load ptr, ptr %i.m, align 8, !tbaa !15
  br label %RSTRING_PTR.exit2821

RSTRING_PTR.exit2821:                             ; preds = %bb.qu, %bb.qv
  %i.elc = phi ptr [ %i.elb, %bb.qv ], [ %i.m, %bb.qu ] ; 5 uses
  %i.eld = load i64, ptr %i.i, align 8, !tbaa !89 ; 8 uses
  %i.ele = sub i64 %i.eld, %i.ekx                 ; 25 uses
  store ptr %i.elc, ptr %i.a, align 8, !tbaa !18
  %i.elf = call i64 @rb_str_capacity(i64 noundef %0) #12
  %i.elg = getelementptr i8, ptr %i.elc, i64 %i.elf
  store ptr %i.elg, ptr %i.b, align 8, !tbaa !18
  %i.elh = icmp sgt i64 %i.ele, 0
  br i1 %i.elh, label %bb.qw, label %case_conv.exit2831

bb.qw:                                            ; preds = %RSTRING_PTR.exit2821
  %i.eli = getelementptr i8, ptr %i.elc, i64 %i.ekx ; 46 uses
  %i.elj = and i32 %.019203305, 12
  switch i32 %i.elj, label %case_conv.exit2831 [
    i32 8, label %iter.check6396
    i32 4, label %iter.check6483
  ]

iter.check6483:                                   ; preds = %bb.qw
  %min.iters.check6422 = icmp ult i64 %i.ele, 4
  br i1 %min.iters.check6422, label %.preheader20.i2822.preheader, label %vector.main.loop.iter.check6423

vector.main.loop.iter.check6423:                  ; preds = %iter.check6483
  %min.iters.check6424 = icmp ult i64 %i.ele, 16
  br i1 %min.iters.check6424, label %vec.epilog.ph6487, label %vector.ph6425

vector.ph6425:                                    ; preds = %vector.main.loop.iter.check6423
  %i.elk = and i64 %i.ele, 12
  %n.vec6426 = and i64 %i.ele, 9223372036854775792 ; 4 uses
  %i.ell = and i64 %i.ele, 15
  %i.elm = getelementptr i8, ptr %i.eli, i64 %n.vec6426
  br label %vector.body6427

vector.body6427:                                  ; preds = %vector.ph6425, %pred.store.continue6477
  %index6428 = phi i64 [ 0, %vector.ph6425 ], [ %index.next6478, %pred.store.continue6477 ] ; 17 uses
  %next.gep6429.a = getelementptr i8, ptr %i.eli, i64 %index6428 ; 2 uses
  %i.eln = getelementptr i8, ptr %i.eli, i64 %index6428
  %next.gep6430.a = getelementptr i8, ptr %i.eln, i64 1
  %i.elo = getelementptr i8, ptr %i.eli, i64 %index6428
  %next.gep6431.a = getelementptr i8, ptr %i.elo, i64 2
  %i.elp = getelementptr i8, ptr %i.eli, i64 %index6428
  %next.gep6432.a = getelementptr i8, ptr %i.elp, i64 3
  %i.elq = getelementptr i8, ptr %i.eli, i64 %index6428
  %next.gep6433.a = getelementptr i8, ptr %i.elq, i64 4
  %i.elr = getelementptr i8, ptr %i.eli, i64 %index6428
  %next.gep6434.a = getelementptr i8, ptr %i.elr, i64 5
  %i.els = getelementptr i8, ptr %i.eli, i64 %index6428
  %next.gep6435.a = getelementptr i8, ptr %i.els, i64 6
  %i.elt = getelementptr i8, ptr %i.eli, i64 %index6428
  %next.gep6436.a = getelementptr i8, ptr %i.elt, i64 7
  %i.elu = getelementptr i8, ptr %i.eli, i64 %index6428
  %next.gep6437.a = getelementptr i8, ptr %i.elu, i64 8
  %i.elv = getelementptr i8, ptr %i.eli, i64 %index6428
  %next.gep6438.a = getelementptr i8, ptr %i.elv, i64 9
  %i.elw = getelementptr i8, ptr %i.eli, i64 %index6428
  %next.gep6439.a = getelementptr i8, ptr %i.elw, i64 10
  %i.elx = getelementptr i8, ptr %i.eli, i64 %index6428
  %next.gep6440 = getelementptr i8, ptr %i.elx, i64 11
  %i.ely = getelementptr i8, ptr %i.eli, i64 %index6428
  %next.gep6441 = getelementptr i8, ptr %i.ely, i64 12
  %i.elz = getelementptr i8, ptr %i.eli, i64 %index6428
  %next.gep6442 = getelementptr i8, ptr %i.elz, i64 13
  %i.ema = getelementptr i8, ptr %i.eli, i64 %index6428
  %next.gep6443 = getelementptr i8, ptr %i.ema, i64 14
  %i.emb = getelementptr i8, ptr %i.eli, i64 %index6428
  %next.gep6444 = getelementptr i8, ptr %i.emb, i64 15
  %wide.load6445 = load <16 x i8>, ptr %next.gep6429.a, align 1, !tbaa !15 ; 17 uses
  %i.emc = sext <16 x i8> %wide.load6445 to <16 x i32>
  %i.emd = add nsw <16 x i32> %i.emc, splat (i32 -65)
  %i.eme = icmp ult <16 x i32> %i.emd, splat (i32 26) ; 16 uses
  %i.emf = extractelement <16 x i1> %i.eme, i64 0
  br i1 %i.emf, label %pred.store.if6446, label %pred.store.continue6447

pred.store.if6446:                                ; preds = %vector.body6427
  %i.emg = extractelement <16 x i8> %wide.load6445, i64 0
  %i.emh = or i8 %i.emg, 32
  store i8 %i.emh, ptr %next.gep6429.a, align 1, !tbaa !15
  br label %pred.store.continue6447

pred.store.continue6447:                          ; preds = %pred.store.if6446, %vector.body6427
  %i.emi = extractelement <16 x i1> %i.eme, i64 1
  br i1 %i.emi, label %pred.store.if6448, label %pred.store.continue6449

pred.store.if6448:                                ; preds = %pred.store.continue6447
  %i.emj = extractelement <16 x i8> %wide.load6445, i64 1
  %i.emk = or i8 %i.emj, 32
  store i8 %i.emk, ptr %next.gep6430.a, align 1, !tbaa !15
  br label %pred.store.continue6449

pred.store.continue6449:                          ; preds = %pred.store.if6448, %pred.store.continue6447
  %i.eml = extractelement <16 x i1> %i.eme, i64 2
  br i1 %i.eml, label %pred.store.if6450, label %pred.store.continue6451

pred.store.if6450:                                ; preds = %pred.store.continue6449
  %i.emm = extractelement <16 x i8> %wide.load6445, i64 2
  %i.emn = or i8 %i.emm, 32
  store i8 %i.emn, ptr %next.gep6431.a, align 1, !tbaa !15
  br label %pred.store.continue6451

pred.store.continue6451:                          ; preds = %pred.store.if6450, %pred.store.continue6449
  %i.emo = extractelement <16 x i1> %i.eme, i64 3
  br i1 %i.emo, label %pred.store.if6452, label %pred.store.continue6453

pred.store.if6452:                                ; preds = %pred.store.continue6451
  %i.emp = extractelement <16 x i8> %wide.load6445, i64 3
  %i.emq = or i8 %i.emp, 32
  store i8 %i.emq, ptr %next.gep6432.a, align 1, !tbaa !15
  br label %pred.store.continue6453

pred.store.continue6453:                          ; preds = %pred.store.if6452, %pred.store.continue6451
  %i.emr = extractelement <16 x i1> %i.eme, i64 4
  br i1 %i.emr, label %pred.store.if6454, label %pred.store.continue6455

pred.store.if6454:                                ; preds = %pred.store.continue6453
  %i.ems = extractelement <16 x i8> %wide.load6445, i64 4
  %i.emt = or i8 %i.ems, 32
  store i8 %i.emt, ptr %next.gep6433.a, align 1, !tbaa !15
  br label %pred.store.continue6455

pred.store.continue6455:                          ; preds = %pred.store.if6454, %pred.store.continue6453
  %i.emu = extractelement <16 x i1> %i.eme, i64 5
  br i1 %i.emu, label %pred.store.if6456, label %pred.store.continue6457

pred.store.if6456:                                ; preds = %pred.store.continue6455
  %i.emv = extractelement <16 x i8> %wide.load6445, i64 5
  %i.emw = or i8 %i.emv, 32
  store i8 %i.emw, ptr %next.gep6434.a, align 1, !tbaa !15
  br label %pred.store.continue6457

pred.store.continue6457:                          ; preds = %pred.store.if6456, %pred.store.continue6455
  %i.emx = extractelement <16 x i1> %i.eme, i64 6
  br i1 %i.emx, label %pred.store.if6458, label %pred.store.continue6459

pred.store.if6458:                                ; preds = %pred.store.continue6457
  %i.emy = extractelement <16 x i8> %wide.load6445, i64 6
  %i.emz = or i8 %i.emy, 32
  store i8 %i.emz, ptr %next.gep6435.a, align 1, !tbaa !15
  br label %pred.store.continue6459

pred.store.continue6459:                          ; preds = %pred.store.if6458, %pred.store.continue6457
  %i.ena = extractelement <16 x i1> %i.eme, i64 7
  br i1 %i.ena, label %pred.store.if6460, label %pred.store.continue6461

pred.store.if6460:                                ; preds = %pred.store.continue6459
  %i.enb = extractelement <16 x i8> %wide.load6445, i64 7
  %i.enc = or i8 %i.enb, 32
  store i8 %i.enc, ptr %next.gep6436.a, align 1, !tbaa !15
  br label %pred.store.continue6461

pred.store.continue6461:                          ; preds = %pred.store.if6460, %pred.store.continue6459
  %i.end = extractelement <16 x i1> %i.eme, i64 8
  br i1 %i.end, label %pred.store.if6462, label %pred.store.continue6463

pred.store.if6462:                                ; preds = %pred.store.continue6461
  %i.ene = extractelement <16 x i8> %wide.load6445, i64 8
  %i.enf = or i8 %i.ene, 32
  store i8 %i.enf, ptr %next.gep6437.a, align 1, !tbaa !15
  br label %pred.store.continue6463

pred.store.continue6463:                          ; preds = %pred.store.if6462, %pred.store.continue6461
  %i.eng = extractelement <16 x i1> %i.eme, i64 9
  br i1 %i.eng, label %pred.store.if6464, label %pred.store.continue6465

pred.store.if6464:                                ; preds = %pred.store.continue6463
  %i.enh = extractelement <16 x i8> %wide.load6445, i64 9
  %i.eni = or i8 %i.enh, 32
  store i8 %i.eni, ptr %next.gep6438.a, align 1, !tbaa !15
  br label %pred.store.continue6465

pred.store.continue6465:                          ; preds = %pred.store.if6464, %pred.store.continue6463
  %i.enj = extractelement <16 x i1> %i.eme, i64 10
  br i1 %i.enj, label %pred.store.if6466, label %pred.store.continue6467

pred.store.if6466:                                ; preds = %pred.store.continue6465
  %i.enk = extractelement <16 x i8> %wide.load6445, i64 10
  %i.enl = or i8 %i.enk, 32
  store i8 %i.enl, ptr %next.gep6439.a, align 1, !tbaa !15
  br label %pred.store.continue6467

pred.store.continue6467:                          ; preds = %pred.store.if6466, %pred.store.continue6465
  %i.enm = extractelement <16 x i1> %i.eme, i64 11
  br i1 %i.enm, label %pred.store.if6468, label %pred.store.continue6469

pred.store.if6468:                                ; preds = %pred.store.continue6467
  %i.enn = extractelement <16 x i8> %wide.load6445, i64 11
  %i.eno = or i8 %i.enn, 32
  store i8 %i.eno, ptr %next.gep6440, align 1, !tbaa !15
  br label %pred.store.continue6469

pred.store.continue6469:                          ; preds = %pred.store.if6468, %pred.store.continue6467
  %i.enp = extractelement <16 x i1> %i.eme, i64 12
  br i1 %i.enp, label %pred.store.if6470, label %pred.store.continue6471

pred.store.if6470:                                ; preds = %pred.store.continue6469
  %i.enq = extractelement <16 x i8> %wide.load6445, i64 12
  %i.enr = or i8 %i.enq, 32
  store i8 %i.enr, ptr %next.gep6441, align 1, !tbaa !15
  br label %pred.store.continue6471

pred.store.continue6471:                          ; preds = %pred.store.if6470, %pred.store.continue6469
  %i.ens = extractelement <16 x i1> %i.eme, i64 13
  br i1 %i.ens, label %pred.store.if6472, label %pred.store.continue6473
end_hunk_10
begin_hunk_11_@rb_strftime_with_timespec:bb.a

pred.store.continue6376:                          ; preds = %pred.store.if6375, %pred.store.continue6374
  %i.eqt = extractelement <16 x i1> %i.epr, i64 9
  br i1 %i.eqt, label %pred.store.if6377, label %pred.store.continue6378

pred.store.if6377:                                ; preds = %pred.store.continue6376
  %i.equ = extractelement <16 x i8> %wide.load6358, i64 9
  %i.eqv = and i8 %i.equ, 95
  store i8 %i.eqv, ptr %next.gep6351.a, align 1, !tbaa !15
  br label %pred.store.continue6378

pred.store.continue6378:                          ; preds = %pred.store.if6377, %pred.store.continue6376
  %i.eqw = extractelement <16 x i1> %i.epr, i64 10
  br i1 %i.eqw, label %pred.store.if6379, label %pred.store.continue6380

pred.store.if6379:                                ; preds = %pred.store.continue6378
  %i.eqx = extractelement <16 x i8> %wide.load6358, i64 10
  %i.eqy = and i8 %i.eqx, 95
  store i8 %i.eqy, ptr %next.gep6352.a, align 1, !tbaa !15
  br label %pred.store.continue6380

pred.store.continue6380:                          ; preds = %pred.store.if6379, %pred.store.continue6378
  %i.eqz = extractelement <16 x i1> %i.epr, i64 11
  br i1 %i.eqz, label %pred.store.if6381, label %pred.store.continue6382

pred.store.if6381:                                ; preds = %pred.store.continue6380
  %i.era = extractelement <16 x i8> %wide.load6358, i64 11
  %i.erb = and i8 %i.era, 95
  store i8 %i.erb, ptr %next.gep6353, align 1, !tbaa !15
  br label %pred.store.continue6382

pred.store.continue6382:                          ; preds = %pred.store.if6381, %pred.store.continue6380
  %i.erc = extractelement <16 x i1> %i.epr, i64 12
  br i1 %i.erc, label %pred.store.if6383, label %pred.store.continue6384

pred.store.if6383:                                ; preds = %pred.store.continue6382
  %i.erd = extractelement <16 x i8> %wide.load6358, i64 12
  %i.ere = and i8 %i.erd, 95
  store i8 %i.ere, ptr %next.gep6354, align 1, !tbaa !15
  br label %pred.store.continue6384

pred.store.continue6384:                          ; preds = %pred.store.if6383, %pred.store.continue6382
  %i.erf = extractelement <16 x i1> %i.epr, i64 13
  br i1 %i.erf, label %pred.store.if6385, label %pred.store.continue6386

pred.store.if6385:                                ; preds = %pred.store.continue6384
  %i.erg = extractelement <16 x i8> %wide.load6358, i64 13
  %i.erh = and i8 %i.erg, 95
  store i8 %i.erh, ptr %next.gep6355, align 1, !tbaa !15
  br label %pred.store.continue6386

pred.store.continue6386:                          ; preds = %pred.store.if6385, %pred.store.continue6384
  %i.eri = extractelement <16 x i1> %i.epr, i64 14
  br i1 %i.eri, label %pred.store.if6387, label %pred.store.continue6388

pred.store.if6387:                                ; preds = %pred.store.continue6386
  %i.erj = extractelement <16 x i8> %wide.load6358, i64 14
  %i.erk = and i8 %i.erj, 95
  store i8 %i.erk, ptr %next.gep6356, align 1, !tbaa !15
  br label %pred.store.continue6388

pred.store.continue6388:                          ; preds = %pred.store.if6387, %pred.store.continue6386
  %i.erl = extractelement <16 x i1> %i.epr, i64 15
  br i1 %i.erl, label %pred.store.if6389, label %pred.store.continue6390

pred.store.if6389:                                ; preds = %pred.store.continue6388
  %i.erm = extractelement <16 x i8> %wide.load6358, i64 15
  %i.ern = and i8 %i.erm, 95
  store i8 %i.ern, ptr %next.gep6357, align 1, !tbaa !15
  br label %pred.store.continue6390

pred.store.continue6390:                          ; preds = %pred.store.if6389, %pred.store.continue6388
  %index.next6391 = add nuw i64 %index6341, 16    ; 2 uses
  %i.ero = icmp eq i64 %index.next6391, %n.vec6339
  br i1 %i.ero, label %middle.block6392, label %vector.body6340, !llvm.loop !77

middle.block6392:                                 ; preds = %pred.store.continue6390
  %cmp.n6393 = icmp eq i64 %i.ele, %n.vec6339
  br i1 %cmp.n6393, label %case_conv.exit2831, label %vec.epilog.iter.check6398

vec.epilog.iter.check6398:                        ; preds = %middle.block6392
  %min.epilog.iters.check6399 = icmp eq i64 %i.eox, 0
  br i1 %min.epilog.iters.check6399, label %.preheader.i2827.preheader, label %vec.epilog.ph6400, !prof !92

vec.epilog.ph6400:                                ; preds = %vector.main.loop.iter.check6336, %vec.epilog.iter.check6398
  %vec.epilog.resume.val6394 = phi i64 [ %n.vec6339, %vec.epilog.iter.check6398 ], [ 0, %vector.main.loop.iter.check6336 ]
  %n.vec6401 = and i64 %i.ele, 9223372036854775804 ; 3 uses
  %i.erp = and i64 %i.ele, 3
  %i.erq = getelementptr i8, ptr %i.eli, i64 %n.vec6401
  br label %vec.epilog.vector.body6402

vec.epilog.vector.body6402:                       ; preds = %pred.store.continue6416, %vec.epilog.ph6400
  %index6403 = phi i64 [ %vec.epilog.resume.val6394, %vec.epilog.ph6400 ], [ %index.next6417, %pred.store.continue6416 ] ; 5 uses
  %next.gep6404 = getelementptr i8, ptr %i.eli, i64 %index6403 ; 2 uses
  %i.err = getelementptr i8, ptr %i.eli, i64 %index6403
  %next.gep6405 = getelementptr i8, ptr %i.err, i64 1
  %i.ers = getelementptr i8, ptr %i.eli, i64 %index6403
  %next.gep6406 = getelementptr i8, ptr %i.ers, i64 2
  %i.ert = getelementptr i8, ptr %i.eli, i64 %index6403
  %next.gep6407 = getelementptr i8, ptr %i.ert, i64 3
  %wide.load6408 = load <4 x i8>, ptr %next.gep6404, align 1, !tbaa !15 ; 5 uses
  %i.eru = sext <4 x i8> %wide.load6408 to <4 x i32>
  %i.erv = add nsw <4 x i32> %i.eru, splat (i32 -97)
  %i.erw = icmp ult <4 x i32> %i.erv, splat (i32 26) ; 4 uses
  %i.erx = extractelement <4 x i1> %i.erw, i64 0
  br i1 %i.erx, label %pred.store.if6409, label %pred.store.continue6410

pred.store.if6409:                                ; preds = %vec.epilog.vector.body6402
  %i.ery = extractelement <4 x i8> %wide.load6408, i64 0
  %i.erz = and i8 %i.ery, 95
  store i8 %i.erz, ptr %next.gep6404, align 1, !tbaa !15
  br label %pred.store.continue6410

pred.store.continue6410:                          ; preds = %pred.store.if6409, %vec.epilog.vector.body6402
  %i.esa = extractelement <4 x i1> %i.erw, i64 1
  br i1 %i.esa, label %pred.store.if6411, label %pred.store.continue6412

pred.store.if6411:                                ; preds = %pred.store.continue6410
  %i.esb = extractelement <4 x i8> %wide.load6408, i64 1
  %i.esc = and i8 %i.esb, 95
  store i8 %i.esc, ptr %next.gep6405, align 1, !tbaa !15
  br label %pred.store.continue6412

pred.store.continue6412:                          ; preds = %pred.store.if6411, %pred.store.continue6410
  %i.esd = extractelement <4 x i1> %i.erw, i64 2
  br i1 %i.esd, label %pred.store.if6413, label %pred.store.continue6414

pred.store.if6413:                                ; preds = %pred.store.continue6412
  %i.ese = extractelement <4 x i8> %wide.load6408, i64 2
  %i.esf = and i8 %i.ese, 95
  store i8 %i.esf, ptr %next.gep6406, align 1, !tbaa !15
  br label %pred.store.continue6414

pred.store.continue6414:                          ; preds = %pred.store.if6413, %pred.store.continue6412
  %i.esg = extractelement <4 x i1> %i.erw, i64 3
  br i1 %i.esg, label %pred.store.if6415, label %pred.store.continue6416

pred.store.if6415:                                ; preds = %pred.store.continue6414
  %i.esh = extractelement <4 x i8> %wide.load6408, i64 3
  %i.esi = and i8 %i.esh, 95
  store i8 %i.esi, ptr %next.gep6407, align 1, !tbaa !15
  br label %pred.store.continue6416

pred.store.continue6416:                          ; preds = %pred.store.if6415, %pred.store.continue6414
  %index.next6417 = add nuw i64 %index6403, 4     ; 2 uses
  %i.esj = icmp eq i64 %index.next6417, %n.vec6401
  br i1 %i.esj, label %vec.epilog.middle.block6418, label %vec.epilog.vector.body6402, !llvm.loop !78

vec.epilog.middle.block6418:                      ; preds = %pred.store.continue6416
  %cmp.n6419 = icmp eq i64 %i.ele, %n.vec6401
  br i1 %cmp.n6419, label %case_conv.exit2831, label %.preheader.i2827.preheader

.preheader.i2827.preheader:                       ; preds = %iter.check6396, %vec.epilog.iter.check6398, %vec.epilog.middle.block6418
  %.013.i2828.ph = phi i64 [ %i.ele, %iter.check6396 ], [ %i.eoy, %vec.epilog.iter.check6398 ], [ %i.erp, %vec.epilog.middle.block6418 ]
  %.0.i2829.ph = phi ptr [ %i.eli, %iter.check6396 ], [ %i.eoz, %vec.epilog.iter.check6398 ], [ %i.erq, %vec.epilog.middle.block6418 ]
  br label %.preheader.i2827

.preheader.i2827:                                 ; preds = %.preheader.i2827.preheader, %bb.qy
  %.013.i2828 = phi i64 [ %i.esq, %bb.qy ], [ %.013.i2828.ph, %.preheader.i2827.preheader ]
  %.0.i2829 = phi ptr [ %i.esp, %bb.qy ], [ %.0.i2829.ph, %.preheader.i2827.preheader ] ; 3 uses
  %i.esk = load i8, ptr %.0.i2829, align 1, !tbaa !15 ; 2 uses
  %i.esl = sext i8 %i.esk to i32
  %i.esm = add nsw i32 %i.esl, -123
  %i.esn = icmp ult i32 %i.esm, -26
  br i1 %i.esn, label %bb.qy, label %bb.qx

bb.qx:                                            ; preds = %.preheader.i2827
  %i.eso = and i8 %i.esk, 95
  store i8 %i.eso, ptr %.0.i2829, align 1, !tbaa !15
  br label %bb.qy

bb.qy:                                            ; preds = %bb.qx, %.preheader.i2827
  %i.esp = getelementptr i8, ptr %.0.i2829, i64 1
  %i.esq = add nsw i64 %.013.i2828, -1            ; 2 uses
  %.not19.i2830 = icmp eq i64 %i.esq, 0
  br i1 %.not19.i2830, label %case_conv.exit2831, label %.preheader.i2827, !llvm.loop !79

.preheader20.i2822:                               ; preds = %.preheader20.i2822.preheader, %bb.ra
  %.114.i2823 = phi i64 [ %i.esx, %bb.ra ], [ %.114.i2823.ph, %.preheader20.i2822.preheader ]
  %.1.i2824 = phi ptr [ %i.esw, %bb.ra ], [ %.1.i2824.ph, %.preheader20.i2822.preheader ] ; 3 uses
  %i.esr = load i8, ptr %.1.i2824, align 1, !tbaa !15 ; 2 uses
  %i.ess = sext i8 %i.esr to i32
  %i.est = add nsw i32 %i.ess, -91
  %i.esu = icmp ult i32 %i.est, -26
  br i1 %i.esu, label %bb.ra, label %bb.qz

bb.qz:                                            ; preds = %.preheader20.i2822
  %i.esv = or i8 %i.esr, 32
  store i8 %i.esv, ptr %.1.i2824, align 1, !tbaa !15
  br label %bb.ra

bb.ra:                                            ; preds = %bb.qz, %.preheader20.i2822
  %i.esw = getelementptr i8, ptr %.1.i2824, i64 1
  %i.esx = add nsw i64 %.114.i2823, -1            ; 2 uses
  %.not17.i2825 = icmp eq i64 %i.esx, 0
  br i1 %.not17.i2825, label %case_conv.exit2831, label %.preheader20.i2822, !llvm.loop !80

case_conv.exit2831:                               ; preds = %bb.ra, %bb.qy, %middle.block6479, %vec.epilog.middle.block6505, %middle.block6392, %vec.epilog.middle.block6418, %bb.qw, %RSTRING_PTR.exit2821
  %i.esy = sext i32 %.019283304 to i64            ; 5 uses
  %i.esz = icmp slt i64 %i.ele, %i.esy
  %i.eta = getelementptr i8, ptr %i.elc, i64 %i.eld ; 3 uses
  br i1 %i.esz, label %bb.rb, label %case_conv.exit2868

bb.rb:                                            ; preds = %case_conv.exit2831
  %i.etb = load ptr, ptr %i.b, align 8, !tbaa !18 ; 2 uses
  %.not2110 = icmp ult ptr %i.eta, %i.etb
  br i1 %.not2110, label %bb.rc, label %bb.rd

bb.rc:                                            ; preds = %bb.rb
  %i.etc = ptrtoint ptr %i.etb to i64
  %i.etd = ptrtoint ptr %i.eta to i64
  %i.ete = xor i64 %i.etd, -1
  %i.etf = add i64 %i.etc, %i.ete
  %.not2111 = icmp sgt i64 %i.etf, %i.esy
  br i1 %.not2111, label %buffer_size_check.exit2839, label %bb.rd

bb.rd:                                            ; preds = %bb.rc, %bb.rb
  %i.etg = shl nsw i64 %i.esy, 1
  %i.eth = add i64 %i.eld, %i.etg
  %i.eti = call i64 @rb_str_capacity(i64 noundef %0) #12
  br label %bb.re

bb.re:                                            ; preds = %bb.re, %bb.rd
  %.0.i2832 = phi i64 [ %i.eti, %bb.rd ], [ %i.etk, %bb.re ] ; 6 uses
  %i.etj = icmp ult i64 %.0.i2832, %i.eth
  %i.etk = shl i64 %.0.i2832, 1
  br i1 %i.etj, label %bb.re, label %bb.rf, !llvm.loop !0

bb.rf:                                            ; preds = %bb.re
  %i.etl = icmp ult i64 %.0.i2832, %i.eld
  %i.etm = icmp ugt i64 %.0.i2832, %9
  %or.cond.i2833 = or i1 %i.etl, %i.etm
  br i1 %or.cond.i2833, label %resize_buffer.exit2837.thread, label %bb.rg

bb.rg:                                            ; preds = %bb.rf
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.eld) #11
  %i.etn = sub nuw i64 %.0.i2832, %i.eld
  call void @rb_str_modify_expand(i64 noundef %0, i64 noundef %i.etn) #11
  %i.eto = load i64, ptr %i.h, align 8, !tbaa !14
  %i.etp = and i64 %i.eto, 8192
  %.not.i.i2834 = icmp eq i64 %i.etp, 0
  br i1 %.not.i.i2834, label %resize_buffer.exit2837, label %bb.rh

bb.rh:                                            ; preds = %bb.rg
  %i.etq = load ptr, ptr %i.m, align 8, !tbaa !15
  br label %resize_buffer.exit2837

resize_buffer.exit2837:                           ; preds = %bb.rg, %bb.rh
  %i.etr = phi ptr [ %i.etq, %bb.rh ], [ %i.m, %bb.rg ] ; 4 uses
  %i.ets = getelementptr i8, ptr %i.etr, i64 %.0.i2832
  store ptr %i.ets, ptr %i.b, align 8, !tbaa !18
  store ptr %i.etr, ptr %i.a, align 8, !tbaa !18
  %i.ett = getelementptr i8, ptr %i.etr, i64 %i.eld
  %.not.i2838 = icmp eq ptr %i.ett, null
  br i1 %.not.i2838, label %resize_buffer.exit2837.thread, label %buffer_size_check.exit2839

resize_buffer.exit2837.thread:                    ; preds = %bb.rf, %resize_buffer.exit2837
  %i.etu = call i64 @rb_enc_str_new(ptr noundef %1, i64 noundef range(i64 1, 0) %2, ptr noundef %.01901) #11
  call void @rb_syserr_fail_str(i32 noundef 34, i64 noundef %i.etu) #13
  unreachable

buffer_size_check.exit2839:                       ; preds = %resize_buffer.exit2837, %bb.rc
  %.34 = phi ptr [ %i.elc, %bb.rc ], [ %i.etr, %resize_buffer.exit2837 ]
  %12 = getelementptr i8, ptr %.34, i64 %i.eld
  %i.etv = sub i64 0, %i.ele                      ; 2 uses
  %i.etw = getelementptr i8, ptr %12, i64 %i.etv  ; 3 uses
  %i.etx = getelementptr i8, ptr %i.etw, i64 %i.esy ; 2 uses
  %i.ety = getelementptr i8, ptr %i.etx, i64 %i.etv
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.ety, ptr noundef nonnull align 1 %i.etw, i64 noundef range(i64 -9223372036854775808, 2147483647) %i.ele, i1 noundef false) #11
  %.not2112 = icmp eq i8 %.019153307, 0
  %narrow = select i1 %.not2112, i8 32, i8 %.019153307
  %i.etz = sub i64 %i.esy, %i.ele
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.etw, i8 noundef %narrow, i64 noundef %i.etz, i1 noundef false) #11
  br label %case_conv.exit2868

bb.ri:                                            ; preds = %.lr.ph
  %i.eua = icmp sgt i32 %.019283304, 0
  br i1 %i.eua, label %.loopexit, label %bb.rj

bb.rj:                                            ; preds = %bb.ri
  %i.eub = or i32 %.019203305, 1
  br label %.backedge

.backedge:                                        ; preds = %bb.rj, %bb.rl, %bb.rn, %bb.rt, %bb.oi, %bb.ok, %bb.ro, %bb.rv
  %.01928.be = phi i32 [ %i.euw, %bb.rv ], [ %.019283304, %bb.oi ], [ %.019283304, %bb.ok ], [ 0, %bb.rj ], [ %.019283304, %bb.rl ], [ %.019283304, %bb.rn ], [ %.019283304, %bb.ro ], [ %.019283304, %bb.rt ]
  %.01920.be = phi i32 [ %.019203305, %bb.rv ], [ %.019203305, %bb.oi ], [ %.019203305, %bb.ok ], [ %i.eub, %bb.rj ], [ %i.eue, %bb.rl ], [ %i.eug, %bb.rn ], [ %.019203305, %bb.ro ], [ %.019203305, %bb.rt ]
  %.01918.be = phi i32 [ %.019183306, %bb.rv ], [ %.019183306, %bb.oi ], [ %.019183306, %bb.ok ], [ %.019183306, %bb.rj ], [ %.019183306, %bb.rl ], [ %.019183306, %bb.rn ], [ %.019183306, %bb.ro ], [ %.11919.lcssa, %bb.rt ]
  %.01915.be = phi i8 [ %.11916, %bb.rv ], [ %.019153307, %bb.oi ], [ %.019153307, %bb.ok ], [ 0, %bb.rj ], [ %.019153307, %bb.rl ], [ %.019153307, %bb.rn ], [ 32, %bb.ro ], [ %.019153307, %bb.rt ]
  %.11900.be = phi ptr [ %i.euy, %bb.rv ], [ %i.bo, %bb.oi ], [ %i.bo, %bb.ok ], [ %i.bo, %bb.rj ], [ %i.bo, %bb.rl ], [ %i.bo, %bb.rn ], [ %i.bo, %bb.ro ], [ %i.eup, %bb.rt ] ; 2 uses
  %i.euc = getelementptr i8, ptr %.11900.be, i64 1 ; 3 uses
  %.not2106 = icmp ult ptr %i.euc, %i.r
  br i1 %.not2106, label %.lr.ph, label %.loopexit

bb.rk:                                            ; preds = %.lr.ph
  %i.eud = icmp sgt i32 %.019283304, 0
  br i1 %i.eud, label %.loopexit, label %bb.rl

bb.rl:                                            ; preds = %bb.rk
  %i.eue = or i32 %.019203305, 8
  br label %.backedge

bb.rm:                                            ; preds = %.lr.ph
  %i.euf = icmp sgt i32 %.019283304, 0
  br i1 %i.euf, label %.loopexit, label %bb.rn

bb.rn:                                            ; preds = %bb.rm
  %i.eug = or i32 %.019203305, 2
  br label %.backedge

bb.ro:                                            ; preds = %.lr.ph
  %i.euh = icmp sgt i32 %.019283304, 0
  br i1 %i.euh, label %.loopexit, label %.backedge

bb.rp:                                            ; preds = %.preheader.preheader
  %i.eui = load i8, ptr %i.bq, align 1, !tbaa !15
  switch i8 %i.eui, label %.loopexit [
    i8 122, label %bb.rt
    i8 58, label %.preheader.1
  ]

.preheader.1:                                     ; preds = %bb.rp
  %i.euj = getelementptr i8, ptr %i.bo, i64 2     ; 2 uses
  %.not2107.1 = icmp ult ptr %i.euj, %i.r
  br i1 %.not2107.1, label %bb.rq, label %.loopexit

bb.rq:                                            ; preds = %.preheader.1
  %i.euk = load i8, ptr %i.euj, align 1, !tbaa !15
  switch i8 %i.euk, label %.loopexit [
    i8 122, label %bb.rt
    i8 58, label %.preheader.2
  ]

.preheader.2:                                     ; preds = %bb.rq
  %i.eul = getelementptr i8, ptr %i.bo, i64 3     ; 2 uses
  %.not2107.2 = icmp ult ptr %i.eul, %i.r
  br i1 %.not2107.2, label %bb.rr, label %.loopexit

bb.rr:                                            ; preds = %.preheader.2
  %i.eum = load i8, ptr %i.eul, align 1, !tbaa !15
  switch i8 %i.eum, label %.loopexit [
    i8 122, label %bb.rt
    i8 58, label %bb.rs
  ]

bb.rs:                                            ; preds = %bb.rr
  br label %bb.rt

bb.rt:                                            ; preds = %bb.rs, %bb.rr, %bb.rq, %bb.rp
  %.11919.lcssa = phi i32 [ 1, %bb.rp ], [ 4, %bb.rs ], [ 2, %bb.rq ], [ 3, %bb.rr ] ; 2 uses
  %i.eun = zext nneg i32 %.11919.lcssa to i64
  %i.euo = getelementptr i8, ptr %i.bo, i64 %i.eun
  %i.eup = getelementptr i8, ptr %i.euo, i64 -1
  br label %.backedge

bb.ru:                                            ; preds = %.lr.ph
  br label %bb.rv

bb.rv:                                            ; preds = %bb.ru, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %.11916 = phi i8 [ 48, %bb.ru ], [ %.019153307, %.lr.ph ], [ %.019153307, %.lr.ph ], [ %.019153307, %.lr.ph ], [ %.019153307, %.lr.ph ], [ %.019153307, %.lr.ph ], [ %.019153307, %.lr.ph ], [ %.019153307, %.lr.ph ], [ %.019153307, %.lr.ph ], [ %.019153307, %.lr.ph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #11
  %i.euq = ptrtoint ptr %i.bo to i64
  %i.eur = sub i64 %i.ad, %i.euq
  %i.eus = call i64 @ruby_scan_digits(ptr noundef nonnull %i.bo, i64 noundef %i.eur, i32 noundef 10, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g) #11 ; 2 uses
  %i.eut = load i32, ptr %i.g, align 4, !tbaa !11
  %i.euu = icmp ne i32 %i.eut, 0
  %i.euv = icmp ugt i64 %i.eus, 2147483647
  %or.cond44 = select i1 %i.euu, i1 true, i1 %i.euv
  %i.euw = trunc nuw nsw i64 %i.eus to i32
  %i.eux = load i64, ptr %i.f, align 8
  %i.euy = getelementptr i8, ptr %.119003308, i64 %i.eux
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  br i1 %or.cond44, label %.loopexit, label %.backedge

.loopexit:                                        ; preds = %.backedge, %bb.oi, %bb.oh, %bb.ok, %bb.oj, %bb.ri, %bb.rk, %bb.rm, %bb.ro, %.lr.ph, %bb.rv, %bb.rp, %.preheader.preheader, %.preheader.1, %bb.rq, %.preheader.2, %bb.rr, %.preheader2995, %.thread
  %.3 = phi ptr [ %i.bn, %.preheader2995 ], [ %.119003308, %.thread ], [ %i.bo, %.lr.ph ], [ %i.bo, %bb.rv ], [ %i.euc, %.backedge ], [ %i.bo, %bb.oi ], [ %i.bo, %bb.oh ], [ %i.bo, %bb.ok ], [ %i.bo, %bb.oj ], [ %i.bo, %bb.ri ], [ %i.bo, %bb.rk ], [ %i.bo, %bb.rm ], [ %i.bo, %bb.ro ], [ %i.bo, %.preheader.preheader ], [ %i.bo, %.preheader.1 ], [ %i.bo, %bb.rq ], [ %i.bo, %.preheader.2 ], [ %i.bo, %bb.rr ], [ %i.bo, %bb.rp ] ; 2 uses
  %i.euz = ptrtoint ptr %.3 to i64
  %reass.sub = sub i64 %i.euz, %i.an
  %i.eva = add i64 %reass.sub, 1
  br label %.critedge

.critedge:                                        ; preds = %.preheader2986, %.preheader2986.1, %.preheader2986.2, %.preheader2986.3, %RSTRING_PTR.exit2566, %bb.iw, %bb.ai, %bb.ae, %.loopexit
  %.21942 = phi ptr [ %spec.select, %.loopexit ], [ %i.boc, %bb.iw ], [ %i.c, %RSTRING_PTR.exit2566 ], [ %i.eq, %bb.ai ], [ %i.dt, %bb.ae ], [ %i.boc, %.preheader2986.3 ], [ %i.boc, %.preheader2986.2 ], [ %i.boc, %.preheader2986.1 ], [ %i.boc, %.preheader2986 ]
  %.31937 = phi i64 [ %i.eva, %.loopexit ], [ %i.bpd, %bb.iw ], [ %i.bop, %RSTRING_PTR.exit2566 ], [ %i.er, %bb.ai ], [ %i.du, %bb.ae ], [ %.119353344, %.preheader2986 ], [ %i.boq, %.preheader2986.1 ], [ %i.bou, %.preheader2986.2 ], [ %i.boy, %.preheader2986.3 ] ; 2 uses
  %.41932 = phi i32 [ -1, %.loopexit ], [ %.019283304, %bb.iw ], [ %.019283304, %RSTRING_PTR.exit2566 ], [ %.019283304, %bb.ai ], [ %.019283304, %bb.ae ], [ %.019283304, %.preheader2986.3 ], [ %.019283304, %.preheader2986.2 ], [ %.019283304, %.preheader2986.1 ], [ %.019283304, %.preheader2986 ]
  %.71927 = phi i32 [ 0, %.loopexit ], [ %.61926, %bb.iw ], [ %.61926, %RSTRING_PTR.exit2566 ], [ %.41924, %bb.ai ], [ %.21922, %bb.ae ], [ %.61926, %.preheader2986.3 ], [ %.61926, %.preheader2986.2 ], [ %.61926, %.preheader2986.1 ], [ %.61926, %.preheader2986 ]
  %.21917 = phi i8 [ 0, %.loopexit ], [ %.019153307, %bb.iw ], [ %.019153307, %RSTRING_PTR.exit2566 ], [ %.019153307, %bb.ai ], [ %.019153307, %bb.ae ], [ %.019153307, %.preheader2986.3 ], [ %.019153307, %.preheader2986.2 ], [ %.019153307, %.preheader2986.1 ], [ %.019153307, %.preheader2986 ]
  %.21912 = phi i64 [ %.019103345, %.loopexit ], [ %.11911, %bb.iw ], [ %.11911, %RSTRING_PTR.exit2566 ], [ %.019103345, %bb.ai ], [ %.019103345, %bb.ae ], [ %.11911, %.preheader2986.3 ], [ %.11911, %.preheader2986.2 ], [ %.11911, %.preheader2986.1 ], [ %.11911, %.preheader2986 ] ; 2 uses
  %.4 = phi ptr [ %.3, %.loopexit ], [ %i.bo, %bb.iw ], [ %i.bo, %RSTRING_PTR.exit2566 ], [ %i.bo, %bb.ai ], [ %i.bo, %bb.ae ], [ %i.bo, %.preheader2986.3 ], [ %i.bo, %.preheader2986.2 ], [ %i.bo, %.preheader2986.1 ], [ %i.bo, %.preheader2986 ] ; 2 uses
  %.not2314 = icmp eq i64 %.31937, 0
  br i1 %.not2314, label %case_conv.exit2868, label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.iv, %bb.ij, %bb.ah, %bb.cr, %bb.af, %bb.ag, %bb.ad, %bb.ab, %bb.ac, %.critedge
  %.42965 = phi ptr [ %.4, %.critedge ], [ %i.bo, %bb.ac ], [ %i.bo, %bb.ab ], [ %i.bo, %bb.ad ], [ %i.bo, %bb.ag ], [ %i.bo, %bb.af ], [ %i.bo, %bb.cr ], [ %i.bo, %bb.ah ], [ %i.bo, %bb.ij ], [ %i.bo, %bb.iv ] ; 7 uses
  %.219122964 = phi i64 [ %.21912, %.critedge ], [ %.019103345, %bb.ac ], [ %.019103345, %bb.ab ], [ %.019103345, %bb.ad ], [ %.019103345, %bb.ag ], [ %.019103345, %bb.af ], [ %.019103345, %bb.cr ], [ %.019103345, %bb.ah ], [ %.019103345, %bb.ij ], [ %.11911, %bb.iv ] ; 7 uses
  %.219172963 = phi i8 [ %.21917, %.critedge ], [ %.019153307, %bb.ac ], [ %.019153307, %bb.ab ], [ %.019153307, %bb.ad ], [ %.019153307, %bb.ag ], [ %.019153307, %bb.af ], [ %.019153307, %bb.cr ], [ %.019153307, %bb.ah ], [ %.019153307, %bb.ij ], [ %.019153307, %bb.iv ] ; 2 uses
  %.719272962 = phi i32 [ %.71927, %.critedge ], [ %.11921, %bb.ac ], [ %.11921, %bb.ab ], [ %.21922, %bb.ad ], [ %.31923, %bb.ag ], [ %.31923, %bb.af ], [ %.51925, %bb.cr ], [ %.41924, %bb.ah ], [ %.61926, %bb.ij ], [ %.61926, %bb.iv ] ; 2 uses
  %.419322961 = phi i32 [ %.41932, %.critedge ], [ %.019283304, %bb.ac ], [ %.019283304, %bb.ab ], [ %.019283304, %bb.ad ], [ %.019283304, %bb.ag ], [ %.019283304, %bb.af ], [ %.019283304, %bb.cr ], [ %.019283304, %bb.ah ], [ %.019283304, %bb.ij ], [ %.019283304, %bb.iv ]
  %.319372960 = phi i64 [ %.31937, %.critedge ], [ 3, %bb.ac ], [ 1, %bb.ab ], [ 1, %bb.ad ], [ 3, %bb.ag ], [ 1, %bb.af ], [ 2, %bb.cr ], [ 1, %bb.ah ], [ 3, %bb.ij ], [ 100, %bb.iv ] ; 26 uses
  %.219422959 = phi ptr [ %.21942, %.critedge ], [ %i.dk, %bb.ac ], [ @.str, %bb.ab ], [ @.str, %bb.ad ], [ %i.ef, %bb.ag ], [ @.str, %bb.af ], [ %rb_strftime_with_timespec.ampm., %bb.cr ], [ @.str, %bb.ah ], [ @.str.12, %bb.ij ], [ %i.boc, %bb.iv ]
  %i.evb = and i32 %.719272962, 1
  %.not2315 = icmp eq i32 %i.evb, 0
  br i1 %.not2315, label %bb.rw, label %bb.se

bb.rw:                                            ; preds = %.critedge.thread
  %i.evc = sext i32 %.419322961 to i64            ; 4 uses
  %i.evd = icmp slt i64 %.319372960, %i.evc
  br i1 %i.evd, label %bb.rx, label %bb.se

bb.rx:                                            ; preds = %bb.rw
  %i.eve = load ptr, ptr %i.b, align 8, !tbaa !18 ; 2 uses
  %.not2316 = icmp ult ptr %i.bl, %i.eve
  br i1 %.not2316, label %bb.ry, label %._crit_edge3722

._crit_edge3722:                                  ; preds = %bb.rx
  %.pre = ptrtoint ptr %i.bl to i64
  br label %bb.rz

bb.ry:                                            ; preds = %bb.rx
  %i.evf = ptrtoint ptr %i.eve to i64
  %i.evg = ptrtoint ptr %i.bl to i64              ; 2 uses
  %i.evh = xor i64 %i.evg, -1
  %i.evi = add i64 %i.evf, %i.evh
  %.not2317 = icmp sgt i64 %i.evi, %i.evc
  br i1 %.not2317, label %buffer_size_check.exit2847, label %bb.rz

bb.rz:                                            ; preds = %._crit_edge3722, %bb.ry
  %.pre-phi3723 = phi i64 [ %.pre, %._crit_edge3722 ], [ %i.evg, %bb.ry ]
  %i.evj = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.evk = ptrtoint ptr %i.evj to i64
  %i.evl = sub i64 %.pre-phi3723, %i.evk          ; 5 uses
  %i.evm = shl nsw i64 %i.evc, 1
  %i.evn = add i64 %i.evl, %i.evm
  %i.evo = call i64 @rb_str_capacity(i64 noundef %0) #12
  br label %bb.sa

bb.sa:                                            ; preds = %bb.sa, %bb.rz
  %.0.i2840 = phi i64 [ %i.evo, %bb.rz ], [ %i.evq, %bb.sa ] ; 6 uses
  %i.evp = icmp ult i64 %.0.i2840, %i.evn
  %i.evq = shl i64 %.0.i2840, 1
  br i1 %i.evp, label %bb.sa, label %bb.sb, !llvm.loop !0

bb.sb:                                            ; preds = %bb.sa
  %i.evr = icmp ult i64 %.0.i2840, %i.evl
  %i.evs = icmp ugt i64 %.0.i2840, %9
  %or.cond.i2841 = or i1 %i.evr, %i.evs
  br i1 %or.cond.i2841, label %resize_buffer.exit2845.thread, label %bb.sc

bb.sc:                                            ; preds = %bb.sb
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.evl) #11
  %i.evt = sub nuw i64 %.0.i2840, %i.evl
  call void @rb_str_modify_expand(i64 noundef %0, i64 noundef %i.evt) #11
  %i.evu = load i64, ptr %i.h, align 8, !tbaa !14
  %i.evv = and i64 %i.evu, 8192
  %.not.i.i2842 = icmp eq i64 %i.evv, 0
  br i1 %.not.i.i2842, label %resize_buffer.exit2845, label %bb.sd

bb.sd:                                            ; preds = %bb.sc
  %i.evw = load ptr, ptr %i.m, align 8, !tbaa !15
  br label %resize_buffer.exit2845

resize_buffer.exit2845:                           ; preds = %bb.sc, %bb.sd
  %i.evx = phi ptr [ %i.evw, %bb.sd ], [ %i.m, %bb.sc ] ; 3 uses
  %i.evy = getelementptr i8, ptr %i.evx, i64 %.0.i2840
  store ptr %i.evy, ptr %i.b, align 8, !tbaa !18
end_hunk_11
