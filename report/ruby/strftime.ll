inline.NumInlined: 250
inline.NumDeleted: 33
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
  %i.c = load i64, ptr %i.b, align 8, !tbaa !11
  %i.d = and i64 %i.c, -3145729
  store i64 %i.d, ptr %i.b, align 8, !tbaa !11
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
  %i.a = alloca ptr, align 8                      ; 143 uses
  %i.b = alloca ptr, align 8                      ; 143 uses
  %i.c = alloca [100 x i8], align 16              ; 4 uses
  %i.d = alloca [2 x i64], align 16               ; 5 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = inttoptr i64 %0 to ptr                   ; 78 uses
  %i.i = getelementptr i8, ptr %i.h, i64 16       ; 36 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !14
  %i.k = load i64, ptr %i.h, align 8, !tbaa !11
  %i.l = and i64 %i.k, 8192
  %.not.i = icmp eq i64 %i.l, 0
  %i.m = getelementptr i8, ptr %i.h, i64 24       ; 152 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !16
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.a, %bb.b
  %i.o = phi ptr [ %i.n, %bb.b ], [ %i.m, %bb.a ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store ptr %i.o, ptr %i.a, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.p = tail call i64 @rb_str_capacity(i64 noundef %0) #12
  %i.q = getelementptr i8, ptr %i.o, i64 %i.p
  store ptr %i.q, ptr %i.b, align 8, !tbaa !17
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
  %.01900 = phi ptr [ null, %bb.g ], [ %3, %bb.f ], [ null, %bb.c ] ; 61 uses
  %i.ab = getelementptr i8, ptr %i.o, i64 %i.j    ; 2 uses
  %i.ac = icmp ult ptr %1, %i.r
  br i1 %i.ac, label %.lr.ph3350, label %ruby_nonempty_memcpy.exit._crit_edge

.lr.ph3350:                                       ; preds = %bb.h
  %i.ad = ptrtoint ptr %i.r to i64                ; 2 uses
  %.not2115 = icmp eq ptr %7, null                ; 2 uses
  %i.ae = getelementptr i8, ptr %7, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ag = getelementptr i8, ptr %5, i64 32        ; 20 uses
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
  %.not2201 = icmp eq ptr %.01900, null
  %i.ai = getelementptr i8, ptr %5, i64 16
  %.shift = getelementptr i8, ptr %5, i64 36
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph3350, %case_conv.exit2868
  %.018923348 = phi ptr [ %1, %.lr.ph3350 ], [ %i.fed, %case_conv.exit2868 ] ; 4 uses
  %.019023347 = phi ptr [ %i.ab, %.lr.ph3350 ], [ %.37, %case_conv.exit2868 ] ; 4 uses
  %.019393345 = phi i64 [ 4, %.lr.ph3350 ], [ %.31942, %case_conv.exit2868 ] ; 66 uses
  %i.aj = ptrtoint ptr %.018923348 to i64         ; 2 uses
  %i.ak = sub i64 %i.ad, %i.aj
  %i.al = call ptr @memchr(ptr noundef %.018923348, i32 noundef 37, i64 noundef %i.ak) #12 ; 2 uses
  %.not2103 = icmp eq ptr %i.al, null
  %spec.select = select i1 %.not2103, ptr %i.r, ptr %i.al ; 6 uses
  %i.am = load ptr, ptr %i.b, align 8, !tbaa !17  ; 2 uses
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
  %i.at = load ptr, ptr %i.a, align 8, !tbaa !17
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
  br i1 %i.az, label %bb.l, label %bb.m, !llvm.loop !20

bb.m:                                             ; preds = %bb.l
  %i.bb = icmp ult i64 %.0.i, %i.av
  %i.bc = icmp ugt i64 %.0.i, %9
  %or.cond.i = or i1 %i.bb, %i.bc
  br i1 %or.cond.i, label %resize_buffer.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.av) #11
  %i.bd = sub nuw i64 %.0.i, %i.av
  call void @rb_str_modify_expand(i64 noundef %0, i64 noundef %i.bd) #11
  %i.be = load i64, ptr %i.h, align 8, !tbaa !11
  %i.bf = and i64 %i.be, 8192
  %.not.i.i = icmp eq i64 %i.bf, 0
  br i1 %.not.i.i, label %resize_buffer.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bg = load ptr, ptr %i.m, align 8, !tbaa !16
  br label %resize_buffer.exit

resize_buffer.exit:                               ; preds = %bb.n, %bb.o
  %i.bh = phi ptr [ %i.bg, %bb.o ], [ %i.m, %bb.n ] ; 3 uses
  %i.bi = getelementptr i8, ptr %i.bh, i64 %.0.i
  store ptr %i.bi, ptr %i.b, align 8, !tbaa !17
  store ptr %i.bh, ptr %i.a, align 8, !tbaa !17
  %i.bj = getelementptr i8, ptr %i.bh, i64 %i.av  ; 2 uses
  %.not.i2344 = icmp eq ptr %i.bj, null
  br i1 %.not.i2344, label %resize_buffer.exit.thread, label %buffer_size_check.exit

resize_buffer.exit.thread:                        ; preds = %bb.m, %resize_buffer.exit
  %i.bk = call i64 @rb_enc_str_new(ptr noundef %1, i64 noundef range(i64 1, 0) %2, ptr noundef %.01900) #11
  call void @rb_syserr_fail_str(i32 noundef 34, i64 noundef %i.bk) #13
  unreachable

buffer_size_check.exit:                           ; preds = %resize_buffer.exit, %bb.j
  %.11903 = phi ptr [ %i.bj, %resize_buffer.exit ], [ %.019023347, %bb.j ] ; 2 uses
  %.not.i2345 = icmp eq ptr %spec.select, %.018923348
  br i1 %.not.i2345, label %ruby_nonempty_memcpy.exit, label %bb.p

bb.p:                                             ; preds = %buffer_size_check.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %.11903, ptr noundef nonnull readonly align 1 %.018923348, i64 noundef range(i64 1, 0) %i.ao, i1 noundef false) #11
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
  %i.bo = phi ptr [ %i.etr, %.backedge ], [ %i.bn, %.preheader2995 ] ; 100 uses
  %.13308 = phi ptr [ %.1.be, %.backedge ], [ %spec.select, %.preheader2995 ] ; 4 uses
  %.019193307 = phi i32 [ %.01919.be, %.backedge ], [ -1, %.preheader2995 ] ; 103 uses
  %.019243306 = phi i32 [ %.01924.be, %.backedge ], [ 0, %.preheader2995 ] ; 64 uses
  %.019323305 = phi i32 [ %.01932.be, %.backedge ], [ 0, %.preheader2995 ] ; 11 uses
  %.019343304 = phi i8 [ %.01934.be, %.backedge ], [ 0, %.preheader2995 ] ; 105 uses
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !16  ; 3 uses
  switch i8 %i.bp, label %.loopexit [
    i8 37, label %bb.q
    i8 97, label %bb.ab
    i8 65, label %bb.ad
    i8 104, label %bb.af
    i8 98, label %bb.af
    i8 66, label %bb.ah
    i8 99, label %bb.aj
    i8 100, label %bb.ay
    i8 72, label %bb.bf
    i8 73, label %bb.bm
    i8 106, label %bb.bt
    i8 109, label %bb.ca
    i8 77, label %bb.ch
    i8 112, label %bb.co
    i8 80, label %bb.co
    i8 115, label %bb.cs
    i8 83, label %bb.dr
    i8 85, label %bb.dy
    i8 119, label %bb.ef
    i8 87, label %bb.en
    i8 120, label %bb.eu
    i8 88, label %bb.fj
    i8 121, label %bb.fy
    i8 89, label %bb.gh
    i8 122, label %bb.hd
    i8 90, label %bb.ij
    i8 110, label %bb.ix
    i8 116, label %bb.ji
    i8 68, label %bb.jt
    i8 101, label %bb.ki
    i8 114, label %bb.kp
    i8 82, label %bb.le
    i8 84, label %bb.lt
    i8 107, label %bb.mi
    i8 108, label %bb.mp
    i8 118, label %bb.mw
    i8 67, label %bb.nl
    i8 69, label %bb.oh
    i8 79, label %bb.oj
    i8 86, label %bb.ol
    i8 117, label %bb.os
    i8 71, label %bb.pa
    i8 103, label %bb.pa
    i8 76, label %.loopexit2997.loopexit
    i8 78, label %.loopexit2997
    i8 70, label %bb.qt
    i8 45, label %bb.ri
    i8 94, label %bb.rk
    i8 35, label %bb.rm
    i8 95, label %bb.ro
    i8 58, label %.preheader.preheader
    i8 48, label %bb.ru
    i8 49, label %bb.rv
    i8 50, label %bb.rv
    i8 51, label %bb.rv
    i8 52, label %bb.rv
    i8 53, label %bb.rv
    i8 54, label %bb.rv
    i8 55, label %bb.rv
    i8 56, label %bb.rv
    i8 57, label %bb.rv
  ]

.preheader.preheader:                             ; preds = %.lr.ph
  %i.bq = getelementptr i8, ptr %i.bo, i64 1      ; 2 uses
  %.not2107 = icmp ult ptr %i.bq, %i.r
  br i1 %.not2107, label %bb.rp, label %.loopexit

bb.q:                                             ; preds = %.lr.ph
  %i.br = and i32 %.019243306, 1
  %i.bs = icmp eq i32 %i.br, 0
  %i.bt = icmp sgt i32 %.019193307, 1
  %or.cond5 = select i1 %i.bs, i1 %i.bt, i1 false
  %i.bu = load ptr, ptr %i.b, align 8, !tbaa !17  ; 4 uses
  br i1 %or.cond5, label %bb.r, label %bb.y

bb.r:                                             ; preds = %bb.q
  %.not2310 = icmp ult ptr %i.bl, %i.bu
  br i1 %.not2310, label %bb.s, label %._crit_edge3720

._crit_edge3720:                                  ; preds = %bb.r
  %.pre3726 = ptrtoint ptr %i.bl to i64
  br label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bv = zext nneg i32 %.019193307 to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = ptrtoint ptr %i.bl to i64               ; 2 uses
  %i.by = xor i64 %i.bx, -1
  %i.bz = add i64 %i.bw, %i.by
  %.not2311 = icmp sgt i64 %i.bz, %i.bv
  br i1 %.not2311, label %buffer_size_check.exit2354, label %bb.t

bb.t:                                             ; preds = %._crit_edge3720, %bb.s
end_hunk_0
begin_hunk_1_@rb_strftime_with_timespec:bb.a
  br label %resize_buffer.exit2431

resize_buffer.exit2431:                           ; preds = %bb.cy, %bb.cz
  %i.aab = phi ptr [ %i.aaa, %bb.cz ], [ %i.m, %bb.cy ] ; 3 uses
  %i.aac = getelementptr i8, ptr %i.aab, i64 %.0.i2426
  store ptr %i.aac, ptr %i.b, align 8, !tbaa !17
  store ptr %i.aab, ptr %i.a, align 8, !tbaa !17
  %i.aad = getelementptr i8, ptr %i.aab, i64 %i.zj
  %.not.i2432 = icmp eq ptr %i.aad, null
  br i1 %.not.i2432, label %resize_buffer.exit2431.thread, label %buffer_size_check.exit2433

resize_buffer.exit2431.thread:                    ; preds = %bb.cx, %resize_buffer.exit2431
  %i.aae = call i64 @rb_enc_str_new(ptr noundef %1, i64 noundef range(i64 1, 0) %2, ptr noundef %.01900) #11
  call void @rb_syserr_fail_str(i32 noundef 34, i64 noundef %i.aae) #13
  unreachable

buffer_size_check.exit2433:                       ; preds = %resize_buffer.exit2431, %bb.cu
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.zj) #11
  %i.aaf = icmp eq i8 %.019343304, 48
  %.not2273 = icmp eq i8 %.019343304, 0
  %i.aag = or i1 %i.aaf, %.not2273
  %i.aah = select i1 %i.aag, i64 5, i64 0
  %i.aai = getelementptr i8, ptr @.str.3, i64 %i.aah
  %i.aaj = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %0, ptr noundef %i.aai, i32 noundef %i.zf, i64 noundef %i.zc) #11 ; 0 uses
  %i.aak = load i64, ptr %i.h, align 8, !tbaa !11
  %i.aal = and i64 %i.aak, 8192
  %.not.i2434 = icmp eq i64 %i.aal, 0
  br i1 %.not.i2434, label %RSTRING_PTR.exit2435, label %bb.da

bb.da:                                            ; preds = %buffer_size_check.exit2433
  %i.aam = load ptr, ptr %i.m, align 8, !tbaa !16
  br label %RSTRING_PTR.exit2435

RSTRING_PTR.exit2435:                             ; preds = %buffer_size_check.exit2433, %bb.da
  %i.aan = phi ptr [ %i.aam, %bb.da ], [ %i.m, %buffer_size_check.exit2433 ] ; 3 uses
  %i.aao = load i64, ptr %i.i, align 8, !tbaa !14
  store ptr %i.aan, ptr %i.a, align 8, !tbaa !17
  %i.aap = call i64 @rb_str_capacity(i64 noundef %0) #12
  %i.aaq = getelementptr i8, ptr %i.aan, i64 %i.aap
  store ptr %i.aaq, ptr %i.b, align 8, !tbaa !17
  %i.aar = getelementptr i8, ptr %i.aan, i64 %i.aao
  br label %case_conv.exit2868

bb.db:                                            ; preds = %bb.cs
  %.pr.i = load i64, ptr @rb_strftime_with_timespec.rbimpl_id, align 8, !tbaa !33 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %bb.db, %.lr.ph.i
  %i.aas = call i64 @rb_intern2(ptr noundef nonnull @.str.4, i64 noundef 3) #11 ; 3 uses
  store i64 %i.aas, ptr @rb_strftime_with_timespec.rbimpl_id, align 8, !tbaa !33
  %.not.i2436 = icmp eq i64 %i.aas, 0
  br i1 %.not.i2436, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !34

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %bb.db
  %.lcssa.i = phi i64 [ %.pr.i, %bb.db ], [ %i.aas, %.lr.ph.i ]
  %i.aat = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %6, i64 noundef %.lcssa.i, i32 noundef 1, i64 noundef 3) #11 ; 3 uses
  %i.aau = trunc i64 %i.aat to i1
  %i.aav = and i32 %.019243306, 1
  %.not2266 = icmp eq i32 %i.aav, 0               ; 2 uses
  br i1 %i.aau, label %bb.dc, label %bb.dg

bb.dc:                                            ; preds = %rbimpl_intern_const.exit
  %i.aaw = call i32 @llvm.smax.i32(i32 %.019193307, i32 1)
  %i.aax = select i1 %.not2266, i32 %i.aaw, i32 1 ; 2 uses
  %i.aay = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.aaz = ptrtoint ptr %i.bl to i64              ; 2 uses
  %i.aba = ptrtoint ptr %i.aay to i64
  %i.abb = sub i64 %i.aaz, %i.aba
  %i.abc = load ptr, ptr %i.b, align 8, !tbaa !17 ; 2 uses
  %.not2267 = icmp ult ptr %i.bl, %i.abc
  %i.abd = zext nneg i32 %i.aax to i64            ; 2 uses
  br i1 %.not2267, label %bb.dd, label %._crit_edge3712

bb.dd:                                            ; preds = %bb.dc
  %i.abe = ptrtoint ptr %i.abc to i64
  %i.abf = xor i64 %i.aaz, -1
  %i.abg = add i64 %i.abe, %i.abf
  %.not2268 = icmp sgt i64 %i.abg, %i.abd
  br i1 %.not2268, label %bb.de, label %._crit_edge3712

._crit_edge3712:                                  ; preds = %bb.dc, %bb.dd
  %i.abh = call fastcc ptr @resize_buffer(i64 noundef %0, ptr noundef %i.bl, ptr noundef %i.a, ptr noundef %i.b, i64 noundef %i.abd, i64 noundef %9)
  call fastcc void @buffer_size_check(ptr noundef %i.abh, ptr noundef nonnull %i.r, i64 noundef %2, ptr noundef %.01900)
  br label %bb.de

bb.de:                                            ; preds = %._crit_edge3712, %bb.dd
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.abb) #11
  %i.abi = icmp eq i8 %.019343304, 48
  %.not2269 = icmp eq i8 %.019343304, 0
  %i.abj = or i1 %i.abi, %.not2269
  %i.abk = select i1 %i.abj, i64 5, i64 0
  %i.abl = getelementptr i8, ptr @.str.3, i64 %i.abk
  %i.abm = ashr i64 %i.aat, 1
  %i.abn = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %0, ptr noundef %i.abl, i32 noundef %i.aax, i64 noundef %i.abm) #11 ; 0 uses
  %i.abo = load i64, ptr %i.h, align 8, !tbaa !11
  %i.abp = and i64 %i.abo, 8192
  %.not.i2437 = icmp eq i64 %i.abp, 0
  br i1 %.not.i2437, label %RSTRING_PTR.exit2438, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.abq = load ptr, ptr %i.m, align 8, !tbaa !16
  br label %RSTRING_PTR.exit2438

RSTRING_PTR.exit2438:                             ; preds = %bb.de, %bb.df
  %i.abr = phi ptr [ %i.abq, %bb.df ], [ %i.m, %bb.de ] ; 3 uses
  %i.abs = load i64, ptr %i.i, align 8, !tbaa !14
  store ptr %i.abr, ptr %i.a, align 8, !tbaa !17
  %i.abt = call i64 @rb_str_capacity(i64 noundef %0) #12
  %i.abu = getelementptr i8, ptr %i.abr, i64 %i.abt
  store ptr %i.abu, ptr %i.b, align 8, !tbaa !17
  %i.abv = getelementptr i8, ptr %i.abr, i64 %i.abs
  br label %case_conv.exit2868

bb.dg:                                            ; preds = %rbimpl_intern_const.exit
  %.not2261 = icmp eq i8 %.019343304, 0
  %spec.store.select = select i1 %.not2261, i8 48, i8 %.019343304
  %i.abw = call fastcc i64 @format_value(i64 noundef %i.aat) ; 2 uses
  %i.abx = inttoptr i64 %i.abw to ptr
  %i.aby = getelementptr i8, ptr %i.abx, i64 16
  %i.abz = load i64, ptr %i.aby, align 8, !tbaa !14 ; 4 uses
  br i1 %.not2266, label %bb.dh, label %bb.dm

bb.dh:                                            ; preds = %bb.dg
  %i.aca = call i32 @llvm.smax.i32(i32 %.019193307, i32 1)
  %i.acb = zext nneg i32 %i.aca to i64            ; 4 uses
  %i.acc = icmp slt i64 %i.abz, %i.acb
  br i1 %i.acc, label %bb.di, label %bb.dm

bb.di:                                            ; preds = %bb.dh
  %i.acd = load ptr, ptr %i.b, align 8, !tbaa !17 ; 2 uses
  %.not2262 = icmp ult ptr %i.bl, %i.acd
  br i1 %.not2262, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.ace = ptrtoint ptr %i.acd to i64
  %i.acf = ptrtoint ptr %i.bl to i64
  %i.acg = xor i64 %i.acf, -1
  %i.ach = add i64 %i.ace, %i.acg
  %.not2263 = icmp sgt i64 %i.ach, %i.acb
  br i1 %.not2263, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %i.aci = call fastcc ptr @resize_buffer(i64 noundef %0, ptr noundef %i.bl, ptr noundef %i.a, ptr noundef %i.b, i64 noundef %i.acb, i64 noundef %9) ; 2 uses
  call fastcc void @buffer_size_check(ptr noundef %i.aci, ptr noundef nonnull %i.r, i64 noundef %2, ptr noundef %.01900)
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  %.51907 = phi ptr [ %i.aci, %bb.dk ], [ %i.bl, %bb.dj ] ; 2 uses
  %i.acj = sub i64 %i.acb, %i.abz                 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %.51907, i8 noundef %spec.store.select, i64 noundef %i.acj, i1 noundef false) #11
  %i.ack = getelementptr i8, ptr %.51907, i64 %i.acj
  br label %bb.dp

bb.dm:                                            ; preds = %bb.dg, %bb.dh
  %i.acl = load ptr, ptr %i.b, align 8, !tbaa !17 ; 2 uses
  %.not2264 = icmp ult ptr %i.bl, %i.acl
  br i1 %.not2264, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  %i.acm = ptrtoint ptr %i.acl to i64
  %i.acn = ptrtoint ptr %i.bl to i64
  %i.aco = xor i64 %i.acn, -1
  %i.acp = add i64 %i.acm, %i.aco
  %.not2265 = icmp slt i64 %i.abz, %i.acp
  br i1 %.not2265, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %i.acq = call fastcc ptr @resize_buffer(i64 noundef %0, ptr noundef %i.bl, ptr noundef %i.a, ptr noundef %i.b, i64 noundef %i.abz, i64 noundef %9) ; 2 uses
  call fastcc void @buffer_size_check(ptr noundef %i.acq, ptr noundef nonnull %i.r, i64 noundef %2, ptr noundef %.01900)
  br label %bb.dp

bb.dp:                                            ; preds = %bb.dn, %bb.do, %bb.dl
  %.61908 = phi ptr [ %i.acq, %bb.do ], [ %i.bl, %bb.dn ], [ %i.ack, %bb.dl ]
  %i.acr = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.acs = ptrtoint ptr %.61908 to i64
  %i.act = ptrtoint ptr %i.acr to i64
  %i.acu = sub i64 %i.acs, %i.act
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.acu) #11
  %i.acv = call i64 @rb_str_append(i64 noundef %0, i64 noundef %i.abw) #11 ; 0 uses
  %i.acw = load i64, ptr %i.h, align 8, !tbaa !11
  %i.acx = and i64 %i.acw, 8192
  %.not.i2439 = icmp eq i64 %i.acx, 0
  br i1 %.not.i2439, label %RSTRING_PTR.exit2440, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.acy = load ptr, ptr %i.m, align 8, !tbaa !16
  br label %RSTRING_PTR.exit2440

RSTRING_PTR.exit2440:                             ; preds = %bb.dp, %bb.dq
  %i.acz = phi ptr [ %i.acy, %bb.dq ], [ %i.m, %bb.dp ] ; 3 uses
  %i.ada = load i64, ptr %i.i, align 8, !tbaa !14
  store ptr %i.acz, ptr %i.a, align 8, !tbaa !17
  %i.adb = call i64 @rb_str_capacity(i64 noundef %0) #12
  %i.adc = getelementptr i8, ptr %i.acz, i64 %i.adb
  store ptr %i.adc, ptr %i.b, align 8, !tbaa !17
  %i.add = getelementptr i8, ptr %i.acz, i64 %i.ada
  br label %case_conv.exit2868

bb.dr:                                            ; preds = %.lr.ph
  %12 = load i32, ptr %.shift, align 4
  %i.ade = and i32 %12, 63
  %i.adf = call range(i32 0, 367) i32 @llvm.umin.i32(i32 range(i32 0, 512) %i.ade, i32 60)
  %i.adg = and i32 %.019243306, 1
  %.not2255 = icmp eq i32 %i.adg, 0
  %i.adh = icmp slt i32 %.019193307, 1
  %i.adi = select i1 %i.adh, i32 2, i32 %.019193307
  %i.adj = select i1 %.not2255, i32 %i.adi, i32 1 ; 2 uses
  %i.adk = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.adl = ptrtoint ptr %i.bl to i64              ; 2 uses
  %i.adm = ptrtoint ptr %i.adk to i64
  %i.adn = sub i64 %i.adl, %i.adm                 ; 6 uses
  %i.ado = load ptr, ptr %i.b, align 8, !tbaa !17 ; 2 uses
  %.not2256 = icmp ult ptr %i.bl, %i.ado
  %i.adp = sext i32 %i.adj to i64                 ; 2 uses
  br i1 %.not2256, label %bb.ds, label %._crit_edge3711

bb.ds:                                            ; preds = %bb.dr
  %i.adq = ptrtoint ptr %i.ado to i64
  %i.adr = xor i64 %i.adl, -1
  %i.ads = add i64 %i.adq, %i.adr
  %.not2257 = icmp sgt i64 %i.ads, %i.adp
  br i1 %.not2257, label %buffer_size_check.exit2448, label %._crit_edge3711

._crit_edge3711:                                  ; preds = %bb.dr, %bb.ds
  %i.adt = shl nsw i64 %i.adp, 1
  %i.adu = add i64 %i.adn, %i.adt
  %i.adv = call i64 @rb_str_capacity(i64 noundef %0) #12
  br label %bb.dt

bb.dt:                                            ; preds = %bb.dt, %._crit_edge3711
  %.0.i2441 = phi i64 [ %i.adv, %._crit_edge3711 ], [ %i.adx, %bb.dt ] ; 6 uses
  %i.adw = icmp ult i64 %.0.i2441, %i.adu
  %i.adx = shl i64 %.0.i2441, 1
  br i1 %i.adw, label %bb.dt, label %bb.du, !llvm.loop !20

bb.du:                                            ; preds = %bb.dt
  %i.ady = icmp ult i64 %.0.i2441, %i.adn
  %i.adz = icmp ugt i64 %.0.i2441, %9
  %or.cond.i2442 = or i1 %i.ady, %i.adz
  br i1 %or.cond.i2442, label %resize_buffer.exit2446.thread, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.adn) #11
  %i.aea = sub nuw i64 %.0.i2441, %i.adn
  call void @rb_str_modify_expand(i64 noundef %0, i64 noundef %i.aea) #11
  %i.aeb = load i64, ptr %i.h, align 8, !tbaa !11
  %i.aec = and i64 %i.aeb, 8192
  %.not.i.i2443 = icmp eq i64 %i.aec, 0
  br i1 %.not.i.i2443, label %resize_buffer.exit2446, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.aed = load ptr, ptr %i.m, align 8, !tbaa !16
  br label %resize_buffer.exit2446

resize_buffer.exit2446:                           ; preds = %bb.dv, %bb.dw
  %i.aee = phi ptr [ %i.aed, %bb.dw ], [ %i.m, %bb.dv ] ; 3 uses
  %i.aef = getelementptr i8, ptr %i.aee, i64 %.0.i2441
  store ptr %i.aef, ptr %i.b, align 8, !tbaa !17
  store ptr %i.aee, ptr %i.a, align 8, !tbaa !17
  %i.aeg = getelementptr i8, ptr %i.aee, i64 %i.adn
  %.not.i2447 = icmp eq ptr %i.aeg, null
  br i1 %.not.i2447, label %resize_buffer.exit2446.thread, label %buffer_size_check.exit2448

resize_buffer.exit2446.thread:                    ; preds = %bb.du, %resize_buffer.exit2446
  %i.aeh = call i64 @rb_enc_str_new(ptr noundef %1, i64 noundef range(i64 1, 0) %2, ptr noundef %.01900) #11
  call void @rb_syserr_fail_str(i32 noundef 34, i64 noundef %i.aeh) #13
  unreachable

buffer_size_check.exit2448:                       ; preds = %resize_buffer.exit2446, %bb.ds
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.adn) #11
  %i.aei = icmp eq i8 %.019343304, 48
  %.not2258 = icmp eq i8 %.019343304, 0
  %i.aej = or i1 %i.aei, %.not2258
  %i.aek = select i1 %i.aej, i64 4, i64 0
  %i.ael = getelementptr i8, ptr @.str.2, i64 %i.aek
  %i.aem = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %0, ptr noundef %i.ael, i32 noundef %i.adj, i32 noundef %i.adf) #11 ; 0 uses
  %i.aen = load i64, ptr %i.h, align 8, !tbaa !11
  %i.aeo = and i64 %i.aen, 8192
  %.not.i2449 = icmp eq i64 %i.aeo, 0
  br i1 %.not.i2449, label %RSTRING_PTR.exit2450, label %bb.dx

bb.dx:                                            ; preds = %buffer_size_check.exit2448
  %i.aep = load ptr, ptr %i.m, align 8, !tbaa !16
  br label %RSTRING_PTR.exit2450

RSTRING_PTR.exit2450:                             ; preds = %buffer_size_check.exit2448, %bb.dx
  %i.aeq = phi ptr [ %i.aep, %bb.dx ], [ %i.m, %buffer_size_check.exit2448 ] ; 3 uses
  %i.aer = load i64, ptr %i.i, align 8, !tbaa !14
  store ptr %i.aeq, ptr %i.a, align 8, !tbaa !17
  %i.aes = call i64 @rb_str_capacity(i64 noundef %0) #12
  %i.aet = getelementptr i8, ptr %i.aeq, i64 %i.aes
  store ptr %i.aet, ptr %i.b, align 8, !tbaa !17
  %i.aeu = getelementptr i8, ptr %i.aeq, i64 %i.aer
  br label %case_conv.exit2868

bb.dy:                                            ; preds = %.lr.ph
  %i.aev = and i32 %.019243306, 1
  %.not2251 = icmp eq i32 %i.aev, 0
  %i.aew = icmp slt i32 %.019193307, 1
  %i.aex = select i1 %i.aew, i32 2, i32 %.019193307
  %i.aey = select i1 %.not2251, i32 %i.aex, i32 1 ; 2 uses
  %i.aez = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.afa = ptrtoint ptr %i.bl to i64              ; 2 uses
  %i.afb = ptrtoint ptr %i.aez to i64
  %i.afc = sub i64 %i.afa, %i.afb                 ; 6 uses
  %i.afd = load ptr, ptr %i.b, align 8, !tbaa !17 ; 2 uses
  %.not2252 = icmp ult ptr %i.bl, %i.afd
  %i.afe = sext i32 %i.aey to i64                 ; 2 uses
  br i1 %.not2252, label %bb.dz, label %._crit_edge3710

bb.dz:                                            ; preds = %bb.dy
  %i.aff = ptrtoint ptr %i.afd to i64
  %i.afg = xor i64 %i.afa, -1
  %i.afh = add i64 %i.aff, %i.afg
  %.not2253 = icmp sgt i64 %i.afh, %i.afe
  br i1 %.not2253, label %buffer_size_check.exit2458, label %._crit_edge3710

._crit_edge3710:                                  ; preds = %bb.dy, %bb.dz
  %i.afi = shl nsw i64 %i.afe, 1
  %i.afj = add i64 %i.afc, %i.afi
  %i.afk = call i64 @rb_str_capacity(i64 noundef %0) #12
  br label %bb.ea

bb.ea:                                            ; preds = %bb.ea, %._crit_edge3710
  %.0.i2451 = phi i64 [ %i.afk, %._crit_edge3710 ], [ %i.afm, %bb.ea ] ; 6 uses
  %i.afl = icmp ult i64 %.0.i2451, %i.afj
  %i.afm = shl i64 %.0.i2451, 1
  br i1 %i.afl, label %bb.ea, label %bb.eb, !llvm.loop !20

bb.eb:                                            ; preds = %bb.ea
  %i.afn = icmp ult i64 %.0.i2451, %i.afc
  %i.afo = icmp ugt i64 %.0.i2451, %9
  %or.cond.i2452 = or i1 %i.afn, %i.afo
  br i1 %or.cond.i2452, label %resize_buffer.exit2456.thread, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.afc) #11
  %i.afp = sub nuw i64 %.0.i2451, %i.afc
  call void @rb_str_modify_expand(i64 noundef %0, i64 noundef %i.afp) #11
  %i.afq = load i64, ptr %i.h, align 8, !tbaa !11
  %i.afr = and i64 %i.afq, 8192
  %.not.i.i2453 = icmp eq i64 %i.afr, 0
  br i1 %.not.i.i2453, label %resize_buffer.exit2456, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.afs = load ptr, ptr %i.m, align 8, !tbaa !16
  br label %resize_buffer.exit2456

resize_buffer.exit2456:                           ; preds = %bb.ec, %bb.ed
  %i.aft = phi ptr [ %i.afs, %bb.ed ], [ %i.m, %bb.ec ] ; 3 uses
  %i.afu = getelementptr i8, ptr %i.aft, i64 %.0.i2451
  store ptr %i.afu, ptr %i.b, align 8, !tbaa !17
  store ptr %i.aft, ptr %i.a, align 8, !tbaa !17
  %i.afv = getelementptr i8, ptr %i.aft, i64 %i.afc
  %.not.i2457 = icmp eq ptr %i.afv, null
  br i1 %.not.i2457, label %resize_buffer.exit2456.thread, label %buffer_size_check.exit2458

resize_buffer.exit2456.thread:                    ; preds = %bb.eb, %resize_buffer.exit2456
  %i.afw = call i64 @rb_enc_str_new(ptr noundef %1, i64 noundef range(i64 1, 0) %2, ptr noundef %.01900) #11
  call void @rb_syserr_fail_str(i32 noundef 34, i64 noundef %i.afw) #13
  unreachable

buffer_size_check.exit2458:                       ; preds = %resize_buffer.exit2456, %bb.dz
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.afc) #11
  %i.afx = icmp eq i8 %.019343304, 48
  %.not2254 = icmp eq i8 %.019343304, 0
  %i.afy = or i1 %i.afx, %.not2254
  %i.afz = select i1 %i.afy, i64 4, i64 0
  %i.aga = getelementptr i8, ptr @.str.2, i64 %i.afz
  %i.agb = load i64, ptr %5, align 8, !tbaa !35
  %i.agc = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.agb, i64 noundef 37, i32 noundef 1, i64 noundef 801) #11
  %i.agd = call i64 @rb_fix2int(i64 noundef %i.agc) #11 ; 0 uses
  %i.age = load i64, ptr %i.ag, align 8           ; 2 uses
  %i.agf = trunc i64 %i.age to i16
  %i.agg = lshr i64 %i.age, 38
  %i.agh = trunc i64 %i.agg to i16
  %i.agi = and i16 %i.agh, 7
  %i.agj = and i16 %i.agf, 511
  %i.agk = add nuw nsw i16 %i.agj, 6
  %.lhs.trunc.i = sub nsw i16 %i.agk, %i.agi
  %i.agl = sdiv i16 %.lhs.trunc.i, 7
  %.sext.i = zext nneg i16 %i.agl to i32
  %i.agm = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %0, ptr noundef %i.aga, i32 noundef %i.aey, i32 noundef %.sext.i) #11 ; 0 uses
  %i.agn = load i64, ptr %i.h, align 8, !tbaa !11
  %i.ago = and i64 %i.agn, 8192
  %.not.i2459 = icmp eq i64 %i.ago, 0
  br i1 %.not.i2459, label %RSTRING_PTR.exit2460, label %bb.ee

bb.ee:                                            ; preds = %buffer_size_check.exit2458
  %i.agp = load ptr, ptr %i.m, align 8, !tbaa !16
  br label %RSTRING_PTR.exit2460

RSTRING_PTR.exit2460:                             ; preds = %buffer_size_check.exit2458, %bb.ee
  %i.agq = phi ptr [ %i.agp, %bb.ee ], [ %i.m, %buffer_size_check.exit2458 ] ; 3 uses
  %i.agr = load i64, ptr %i.i, align 8, !tbaa !14
  store ptr %i.agq, ptr %i.a, align 8, !tbaa !17
  %i.ags = call i64 @rb_str_capacity(i64 noundef %0) #12
  %i.agt = getelementptr i8, ptr %i.agq, i64 %i.ags
  store ptr %i.agt, ptr %i.b, align 8, !tbaa !17
  %i.agu = getelementptr i8, ptr %i.agq, i64 %i.agr
  br label %case_conv.exit2868
end_hunk_1
