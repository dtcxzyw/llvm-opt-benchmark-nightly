inline.NumInlined: 71
inline.NumDeleted: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.zlib_filefunc64_32_def_s = type { %struct.zlib_filefunc64_def_s, ptr, ptr, ptr }
%struct.zlib_filefunc64_def_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.unz64_s = type { %struct.zlib_filefunc64_32_def_s, i32, ptr, %struct.unz_global_info64_s, i64, i64, i64, i64, i64, i64, i64, %struct.unz_file_info64_s, %struct.unz_file_info64_internal_s, ptr, i32, i32 }
%struct.unz_global_info64_s = type { i64, i64 }
%struct.unz_file_info64_s = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.tm_unz_s }
%struct.tm_unz_s = type { i32, i32, i32, i32, i32, i32 }
%struct.unz_file_info64_internal_s = type { i64 }

@unz_copyright = local_unnamed_addr constant [81 x i8] c" unzip 1.01 Copyright 1998-2004 Gilles Vollant - http://www.winimage.com/zLibDll\00", align 16
@.str = private unnamed_addr constant [4 x i8] c"1.3\00", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define i32 @unzStringFileNameCompare(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i32 %2, 2
  br i1 %i.a, label %bb.b, label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1) #13
  br label %strcmpcasenosensitive_internal.exit

.preheader:                                       ; preds = %bb.a, %bb.f
  %.024.i = phi ptr [ %i.c, %bb.f ], [ %0, %bb.a ] ; 2 uses
  %.023.i = phi ptr [ %i.e, %bb.f ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.024.i, i64 1
  %i.d = load i8, ptr %.024.i, align 1            ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.023.i, i64 1
  %i.f = load i8, ptr %.023.i, align 1            ; 3 uses
  %i.g = add i8 %i.d, -97
  %or.cond.i = icmp ult i8 %i.g, 26
  %i.h = add nsw i8 %i.d, -32
  %spec.select.i = select i1 %or.cond.i, i8 %i.h, i8 %i.d ; 3 uses
  %i.i = add i8 %i.f, -97
  %or.cond5.i = icmp ult i8 %i.i, 26
  %i.j = add nsw i8 %i.f, -32
  %.021.i = select i1 %or.cond5.i, i8 %i.j, i8 %i.f ; 4 uses
  %i.k = icmp eq i8 %spec.select.i, 0
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.preheader
  %i.l = icmp ne i8 %.021.i, 0
  %i.m = sext i1 %i.l to i32
  br label %strcmpcasenosensitive_internal.exit

bb.d:                                             ; preds = %.preheader
  %i.n = icmp eq i8 %.021.i, 0
  br i1 %i.n, label %strcmpcasenosensitive_internal.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = icmp slt i8 %spec.select.i, %.021.i
  br i1 %i.o, label %strcmpcasenosensitive_internal.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not.i = icmp sgt i8 %spec.select.i, %.021.i
  br i1 %.not.i, label %strcmpcasenosensitive_internal.exit, label %.preheader

strcmpcasenosensitive_internal.exit:              ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ %i.m, %bb.c ], [ 1, %bb.f ], [ 1, %bb.d ], [ -1, %bb.e ]
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define noundef ptr @unzOpen2(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %2 = alloca %struct.zlib_filefunc64_32_def_s, align 8 ; 4 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @fill_zlib_filefunc64_32_def_from_filefunc32(ptr noundef nonnull %2, ptr noundef nonnull %1) #14
  %i.a = call fastcc ptr @unzOpenInternal(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call fastcc ptr @unzOpenInternal(ptr noundef %0, ptr noundef null, i32 noundef 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.a, %bb.b ], [ %i.b, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare void @fill_zlib_filefunc64_32_def_from_filefunc32(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @unzOpenInternal(ptr noundef %0, ptr noundef readonly captures(address_is_null) %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [4 x i8], align 4                 ; 5 uses
  %i.c = alloca [4 x i8], align 4                 ; 5 uses
  %i.d = alloca [2 x i8], align 2                 ; 5 uses
  %i.e = alloca [4 x i8], align 4                 ; 5 uses
  %i.f = alloca [4 x i8], align 4                 ; 5 uses
  %i.g = alloca [2 x i8], align 2                 ; 5 uses
  %i.h = alloca [2 x i8], align 2                 ; 5 uses
  %i.i = alloca [2 x i8], align 2                 ; 5 uses
  %i.j = alloca [2 x i8], align 2                 ; 5 uses
  %i.k = alloca [4 x i8], align 1                 ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 5 uses
  %i.m = alloca [8 x i8], align 8                 ; 5 uses
  %i.n = alloca [8 x i8], align 8                 ; 5 uses
  %i.o = alloca [8 x i8], align 8                 ; 5 uses
  %i.p = alloca [4 x i8], align 4                 ; 5 uses
  %i.q = alloca [4 x i8], align 4                 ; 5 uses
  %i.r = alloca [2 x i8], align 1                 ; 4 uses
  %i.s = alloca [2 x i8], align 1                 ; 4 uses
  %i.t = alloca [8 x i8], align 1                 ; 4 uses
  %i.u = alloca [4 x i8], align 1                 ; 4 uses
  %i.v = alloca [4 x i8], align 4                 ; 4 uses
  %i.w = alloca [4 x i8], align 1                 ; 4 uses
  %3 = alloca %struct.unz64_s, align 8            ; 66 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.y = icmp eq ptr %1, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  br i1 %i.y, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @fill_fopen64_filefunc(ptr noundef nonnull %3) #14
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 88, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 88
  store i32 %2, ptr %i.z, align 8
  %i.aa = call ptr @call_zopen64(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 5) #14 ; 18 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 23 uses
  store ptr %i.aa, ptr %i.ab, align 8
  %i.ac = icmp eq ptr %i.aa, null
  br i1 %i.ac, label %bb.bi, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = call i64 @call_zseek64(ptr noundef nonnull %3, ptr noundef nonnull %i.aa, i64 noundef 0, i32 noundef 2) #14
  %.not.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i, label %bb.f, label %unz64local_SearchCentralDir64.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.ae = call i64 @call_ztell64(ptr noundef nonnull %3, ptr noundef nonnull %i.aa) #14 ; 2 uses
  %spec.select.i = call i64 @llvm.umin.i64(i64 %i.ae, i64 65535) ; 2 uses
  %i.af = call noalias dereferenceable_or_null(1028) ptr @malloc(i64 noundef 1028) #15 ; 5 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %unz64local_SearchCentralDir64.exit.thread, label %.preheader.i.a

.preheader.i.a:                                   ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 16 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 31 uses
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.i, %.preheader.i.a
  %.061.i = phi i64 [ %spec.select..fr.i, %.loopexit.i ], [ 4, %.preheader.i.a ] ; 2 uses
  %4 = icmp ult i64 %.061.i, %spec.select.i
  br i1 %4, label %bb.h, label %.thread.thread.i

bb.h:                                             ; preds = %bb.g
  %5 = add nuw nsw i64 %.061.i, 1024
  %spec.select..i = call i64 @llvm.umin.i64(i64 %5, i64 %spec.select.i)
  %spec.select..fr.i = freeze i64 %spec.select..i ; 4 uses
  %i.aj = sub i64 %i.ae, %spec.select..fr.i       ; 2 uses
  %i.ak = call i64 @llvm.umin.i64(i64 %spec.select..fr.i, i64 1028) ; 3 uses
  %i.al = call i64 @call_zseek64(ptr noundef nonnull %3, ptr noundef nonnull %i.aa, i64 noundef %i.aj, i32 noundef 0) #14
  %.not70.i = icmp eq i64 %i.al, 0
  br i1 %.not70.i, label %bb.i, label %.thread.thread.i

bb.i:                                             ; preds = %bb.h
  %i.am = load ptr, ptr %i.ah, align 8
  %i.an = load ptr, ptr %i.ai, align 8
  %i.ao = call i64 %i.am(ptr noundef %i.an, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.af, i64 noundef %i.ak) #14, !inline_history !3
  %.not71.i = icmp eq i64 %i.ao, %i.ak
  br i1 %.not71.i, label %6, label %.thread.thread.i

6:                                                ; preds = %bb.i
  %7 = icmp ugt i64 %spec.select..fr.i, 3
  br i1 %7, label %.lr.ph.preheader.i, label %.loopexit.i

.lr.ph.preheader.i:                               ; preds = %6
  %i.ap = add nuw nsw i64 %i.ak, 4294967292
  %i.aq = and i64 %i.ap, 4294967295
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.n, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.aq, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.n ] ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.af, i64 %indvars.iv.i ; 4 uses
  %i.as = load i8, ptr %i.ar, align 1
  %i.at = icmp eq i8 %i.as, 80
  br i1 %i.at, label %bb.j, label %bb.n

bb.j:                                             ; preds = %.lr.ph.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = icmp eq i8 %i.av, 75
  br i1 %i.aw, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 2
  %i.ay = load i8, ptr %i.ax, align 1
  %i.az = icmp eq i8 %i.ay, 6
  br i1 %i.az, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 3
  %i.bb = load i8, ptr %i.ba, align 1
  %i.bc = icmp eq i8 %i.bb, 7
  br i1 %i.bc, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %8 = and i64 %indvars.iv.i, 4294967295
  %9 = add i64 %8, %i.aj
  br label %.loopexit.i

bb.n:                                             ; preds = %bb.l, %bb.k, %bb.j, %.lr.ph.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %10 = trunc nuw i64 %indvars.iv.i to i32
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %.lr.ph.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.n, %bb.m, %6
  %.164.i = phi i64 [ %9, %bb.m ], [ -1, %6 ], [ -1, %bb.n ] ; 2 uses
  %.not72.i = icmp eq i64 %.164.i, -1
  br i1 %.not72.i, label %bb.g, label %bb.o

.thread.thread.i:                                 ; preds = %bb.i, %bb.h, %bb.g
  call void @free(ptr noundef %i.af) #14
  br label %unz64local_SearchCentralDir64.exit.thread

bb.o:                                             ; preds = %.loopexit.i
  call void @free(ptr noundef nonnull %i.af) #14
  %i.bd = call i64 @call_zseek64(ptr noundef nonnull %3, ptr noundef nonnull %i.aa, i64 noundef %.164.i, i32 noundef 0) #14
  %.not73.i = icmp eq i64 %i.bd, 0
  br i1 %.not73.i, label %bb.p, label %unz64local_SearchCentralDir64.exit.thread

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #14
  %i.be = load ptr, ptr %i.ah, align 8
  %i.bf = load ptr, ptr %i.ai, align 8
  %i.bg = call i64 %i.be(ptr noundef %i.bf, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.w, i64 noundef 4) #14, !inline_history !4
  %i.bh = and i64 %i.bg, 4294967295
  %i.bi = icmp eq i64 %i.bh, 4
  br i1 %i.bi, label %unz64local_getLong.exit.thread.i, label %unz64local_getLong.exit.i

unz64local_getLong.exit.thread.i:                 ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #14
  br label %bb.q

unz64local_getLong.exit.i:                        ; preds = %bb.p
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = load ptr, ptr %i.ai, align 8
  %i.bm = call i32 %i.bk(ptr noundef %i.bl, ptr noundef nonnull %i.aa) #14, !inline_history !4
  %.not.i.not.i = icmp eq i32 %i.bm, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #14
  br i1 %.not.i.not.i, label %bb.q, label %unz64local_SearchCentralDir64.exit.thread

bb.q:                                             ; preds = %unz64local_getLong.exit.i, %unz64local_getLong.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #14
  %i.bn = load ptr, ptr %i.ah, align 8
  %i.bo = load ptr, ptr %i.ai, align 8
  %i.bp = call i64 %i.bn(ptr noundef %i.bo, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.v, i64 noundef 4) #14, !inline_history !4
  %i.bq = and i64 %i.bp, 4294967295
  %i.br = icmp eq i64 %i.bq, 4
  br i1 %i.br, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bs = load i32, ptr %i.v, align 4
  br label %unz64local_getLong.exit89.i

bb.s:                                             ; preds = %bb.q
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = load ptr, ptr %i.ai, align 8
  %i.bw = call i32 %i.bu(ptr noundef %i.bv, ptr noundef nonnull %i.aa) #14, !inline_history !4
  br label %unz64local_getLong.exit89.i

unz64local_getLong.exit89.i:                      ; preds = %bb.s, %bb.r
  %.0.i88.in.i = phi i32 [ %i.bs, %bb.r ], [ %i.bw, %bb.s ]
  %.0.i88.i = icmp eq i32 %.0.i88.in.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #14
  br i1 %.0.i88.i, label %bb.t, label %unz64local_SearchCentralDir64.exit.thread

bb.t:                                             ; preds = %unz64local_getLong.exit89.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.bx = load ptr, ptr %i.ah, align 8
  %i.by = load ptr, ptr %i.ai, align 8
  %i.bz = call i64 %i.bx(ptr noundef %i.by, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.a, i64 noundef 8) #14, !inline_history !5
  %i.ca = and i64 %i.bz, 4294967295
  %i.cb = icmp eq i64 %i.ca, 8
  br i1 %i.cb, label %unz64local_getLong64.exit148.thread, label %unz64local_getLong64.exit148

unz64local_getLong64.exit148.thread:              ; preds = %bb.t
  %i.cc = load i64, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.u

unz64local_getLong64.exit148:                     ; preds = %bb.t
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = load ptr, ptr %i.ai, align 8
  %i.cg = call i32 %i.ce(ptr noundef %i.cf, ptr noundef nonnull %i.aa) #14, !inline_history !5
  %.not.i145.not = icmp eq i32 %i.cg, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br i1 %.not.i145.not, label %bb.u, label %unz64local_SearchCentralDir64.exit.thread

bb.u:                                             ; preds = %unz64local_getLong64.exit148.thread, %unz64local_getLong64.exit148
  %.0168174 = phi i64 [ %i.cc, %unz64local_getLong64.exit148.thread ], [ 0, %unz64local_getLong64.exit148 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.ch = load ptr, ptr %i.ah, align 8
  %i.ci = load ptr, ptr %i.ai, align 8
  %i.cj = call i64 %i.ch(ptr noundef %i.ci, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.b, i64 noundef 4) #14, !inline_history !6
  %i.ck = and i64 %i.cj, 4294967295
  %i.cl = icmp eq i64 %i.ck, 4
  br i1 %i.cl, label %unz64local_getLong.exit144, label %unz64local_getLong.exit144.thread

unz64local_getLong.exit144.thread:                ; preds = %bb.u
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = load ptr, ptr %i.ai, align 8
  %i.cp = call i32 %i.cn(ptr noundef %i.co, ptr noundef nonnull %i.aa) #14, !inline_history !6 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %unz64local_SearchCentralDir64.exit.thread

unz64local_getLong.exit144:                       ; preds = %bb.u
  %i.cq = load i32, ptr %i.b, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  %.not79.i = icmp eq i32 %i.cq, 1
  br i1 %.not79.i, label %bb.v, label %unz64local_SearchCentralDir64.exit.thread

bb.v:                                             ; preds = %unz64local_getLong.exit144
  %i.cr = call i64 @call_zseek64(ptr noundef nonnull %3, ptr noundef nonnull %i.aa, i64 noundef %.0168174, i32 noundef 0) #14
  %.not80.i = icmp eq i64 %i.cr, 0
  br i1 %.not80.i, label %bb.w, label %unz64local_SearchCentralDir64.exit.thread

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.cs = load ptr, ptr %i.ah, align 8
  %i.ct = load ptr, ptr %i.ai, align 8
  %i.cu = call i64 %i.cs(ptr noundef %i.ct, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.c, i64 noundef 4) #14, !inline_history !6
  %i.cv = and i64 %i.cu, 4294967295
  %i.cw = icmp eq i64 %i.cv, 4
  br i1 %i.cw, label %unz64local_getLong.exit140, label %unz64local_getLong.exit140.thread

unz64local_getLong.exit140.thread:                ; preds = %bb.w
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = load ptr, ptr %i.ai, align 8
  %i.da = call i32 %i.cy(ptr noundef %i.cz, ptr noundef nonnull %i.aa) #14, !inline_history !6 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  br label %unz64local_SearchCentralDir64.exit.thread

unz64local_getLong.exit140:                       ; preds = %bb.w
  %i.db = load i32, ptr %i.c, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  %.fr = freeze i32 %i.db
  %.not82.i = icmp ne i32 %.fr, 101075792
  %.not = icmp eq i64 %.0168174, -1
  %or.cond297 = select i1 %.not82.i, i1 true, i1 %.not
  br i1 %or.cond297, label %unz64local_SearchCentralDir64.exit.thread, label %bb.x

bb.x:                                             ; preds = %unz64local_getLong.exit140
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 332
  store i32 1, ptr %i.dc, align 4
  %i.dd = load ptr, ptr %i.ab, align 8
  %i.de = call i64 @call_zseek64(ptr noundef nonnull %3, ptr noundef %i.dd, i64 noundef %.0168174, i32 noundef 0) #14
  %.not41 = icmp ne i64 %i.de, 0
  %spec.select = sext i1 %.not41 to i32
  %i.df = load ptr, ptr %i.ab, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #14
  %i.dg = load ptr, ptr %i.ah, align 8
  %i.dh = load ptr, ptr %i.ai, align 8
  %i.di = call i64 %i.dg(ptr noundef %i.dh, ptr noundef %i.df, ptr noundef nonnull %i.u, i64 noundef 4) #14, !inline_history !6
  %i.dj = and i64 %i.di, 4294967295
  %i.dk = icmp eq i64 %i.dj, 4
  br i1 %i.dk, label %unz64local_getLong.exit.thread, label %unz64local_getLong.exit

unz64local_getLong.exit.thread:                   ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #14
  br label %bb.y

unz64local_getLong.exit:                          ; preds = %bb.x
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.dm = load ptr, ptr %i.dl, align 8
  %i.dn = load ptr, ptr %i.ai, align 8
  %i.do = call i32 %i.dm(ptr noundef %i.dn, ptr noundef %i.df) #14, !inline_history !6
  %.fr307.a = freeze i32 %i.do
  %.not.i59.not = icmp eq i32 %.fr307.a, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #14
  br i1 %.not.i59.not, label %bb.y, label %bb.z

bb.y:                                             ; preds = %unz64local_getLong.exit.thread, %unz64local_getLong.exit
  br label %bb.z

bb.z:                                             ; preds = %unz64local_getLong.exit, %bb.y
  %i.dp = phi i32 [ %spec.select, %bb.y ], [ -1, %unz64local_getLong.exit ]
  %i.dq = load ptr, ptr %i.ab, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #14
  %i.dr = load ptr, ptr %i.ah, align 8
  %i.ds = load ptr, ptr %i.ai, align 8
  %i.dt = call i64 %i.dr(ptr noundef %i.ds, ptr noundef %i.dq, ptr noundef nonnull %i.t, i64 noundef 8) #14, !inline_history !5
  %i.du = and i64 %i.dt, 4294967295
  %i.dv = icmp eq i64 %i.du, 8
  br i1 %i.dv, label %unz64local_getLong64.exit.thread, label %unz64local_getLong64.exit

unz64local_getLong64.exit.thread:                 ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #14
  br label %bb.aa

unz64local_getLong64.exit:                        ; preds = %bb.z
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.dx = load ptr, ptr %i.dw, align 8
  %i.dy = load ptr, ptr %i.ai, align 8
  %i.dz = call i32 %i.dx(ptr noundef %i.dy, ptr noundef %i.dq) #14, !inline_history !5
  %.fr308.a = freeze i32 %i.dz
  %.not.i60.not = icmp eq i32 %.fr308.a, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #14
  br i1 %.not.i60.not, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %unz64local_getLong64.exit.thread, %unz64local_getLong64.exit
  br label %bb.ab

bb.ab:                                            ; preds = %unz64local_getLong64.exit, %bb.aa
  %i.ea = phi i32 [ %i.dp, %bb.aa ], [ -1, %unz64local_getLong64.exit ]
  %i.eb = load ptr, ptr %i.ab, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #14
  %i.ec = load ptr, ptr %i.ah, align 8
  %i.ed = load ptr, ptr %i.ai, align 8
  %i.ee = call i64 %i.ec(ptr noundef %i.ed, ptr noundef %i.eb, ptr noundef nonnull %i.s, i64 noundef 2) #14, !inline_history !7
  %i.ef = and i64 %i.ee, 4294967295
  %i.eg = icmp eq i64 %i.ef, 2
  br i1 %i.eg, label %unz64local_getShort.exit.thread, label %unz64local_getShort.exit

unz64local_getShort.exit.thread:                  ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #14
  br label %bb.ac

unz64local_getShort.exit:                         ; preds = %bb.ab
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ei = load ptr, ptr %i.eh, align 8
  %i.ej = load ptr, ptr %i.ai, align 8
  %i.ek = call i32 %i.ei(ptr noundef %i.ej, ptr noundef %i.eb) #14, !inline_history !7
  %.fr309.a = freeze i32 %i.ek
  %.not.i63.not = icmp eq i32 %.fr309.a, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #14
  br i1 %.not.i63.not, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %unz64local_getShort.exit.thread, %unz64local_getShort.exit
  br label %bb.ad

bb.ad:                                            ; preds = %unz64local_getShort.exit, %bb.ac
  %i.el = phi i32 [ %i.ea, %bb.ac ], [ -1, %unz64local_getShort.exit ]
  %i.em = load ptr, ptr %i.ab, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #14
  %i.en = load ptr, ptr %i.ah, align 8
  %i.eo = load ptr, ptr %i.ai, align 8
  %i.ep = call i64 %i.en(ptr noundef %i.eo, ptr noundef %i.em, ptr noundef nonnull %i.r, i64 noundef 2) #14, !inline_history !7
  %i.eq = and i64 %i.ep, 4294967295
  %i.er = icmp eq i64 %i.eq, 2
  br i1 %i.er, label %unz64local_getShort.exit69.thread, label %unz64local_getShort.exit69

unz64local_getShort.exit69.thread:                ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #14
  br label %bb.ae

unz64local_getShort.exit69:                       ; preds = %bb.ad
  %i.es = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.et = load ptr, ptr %i.es, align 8
  %i.eu = load ptr, ptr %i.ai, align 8
  %i.ev = call i32 %i.et(ptr noundef %i.eu, ptr noundef %i.em) #14, !inline_history !7
  %.fr310.a = freeze i32 %i.ev
  %.not.i66.not = icmp eq i32 %.fr310.a, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #14
  br i1 %.not.i66.not, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %unz64local_getShort.exit69.thread, %unz64local_getShort.exit69
  br label %bb.af

bb.af:                                            ; preds = %unz64local_getShort.exit69, %bb.ae
  %i.ew = phi i32 [ %i.el, %bb.ae ], [ -1, %unz64local_getShort.exit69 ] ; 2 uses
  %i.ex = load ptr, ptr %i.ab, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #14
  %i.ey = load ptr, ptr %i.ah, align 8
  %i.ez = load ptr, ptr %i.ai, align 8
  %i.fa = call i64 %i.ey(ptr noundef %i.ez, ptr noundef %i.ex, ptr noundef nonnull %i.q, i64 noundef 4) #14, !inline_history !6
  %i.fb = and i64 %i.fa, 4294967295
  %i.fc = icmp eq i64 %i.fb, 4
  br i1 %i.fc, label %unz64local_getLong.exit73.thread, label %unz64local_getLong.exit73

unz64local_getLong.exit73.thread:                 ; preds = %bb.af
  %i.fd = load i32, ptr %i.q, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #14
  %i.fe = icmp ne i32 %i.fd, 0
  br label %bb.ag

unz64local_getLong.exit73:                        ; preds = %bb.af
  %i.ff = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.fg = load ptr, ptr %i.ff, align 8
  %i.fh = load ptr, ptr %i.ai, align 8
  %i.fi = call i32 %i.fg(ptr noundef %i.fh, ptr noundef %i.ex) #14, !inline_history !6
  %.fr311.a = freeze i32 %i.fi
  %.not.i70.not = icmp eq i32 %.fr311.a, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #14
  %spec.select298.a = select i1 %.not.i70.not, i32 %i.ew, i32 -1
  br label %bb.ag

bb.ag:                                            ; preds = %unz64local_getLong.exit73, %unz64local_getLong.exit73.thread
  %.0162203 = phi i1 [ false, %unz64local_getLong.exit73 ], [ %i.fe, %unz64local_getLong.exit73.thread ]
  %i.fj = phi i32 [ %spec.select298.a, %unz64local_getLong.exit73 ], [ %i.ew, %unz64local_getLong.exit73.thread ] ; 2 uses
  %i.fk = load ptr, ptr %i.ab, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #14
  %i.fl = load ptr, ptr %i.ah, align 8
  %i.fm = load ptr, ptr %i.ai, align 8
  %i.fn = call i64 %i.fl(ptr noundef %i.fm, ptr noundef %i.fk, ptr noundef nonnull %i.p, i64 noundef 4) #14, !inline_history !6
  %i.fo = and i64 %i.fn, 4294967295
  %i.fp = icmp eq i64 %i.fo, 4
  br i1 %i.fp, label %unz64local_getLong.exit77.thread, label %unz64local_getLong.exit77

unz64local_getLong.exit77.thread:                 ; preds = %bb.ag
  %i.fq = load i32, ptr %i.p, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #14
  %i.fr = icmp ne i32 %i.fq, 0
  br label %bb.ah

unz64local_getLong.exit77:                        ; preds = %bb.ag
  %i.fs = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ft = load ptr, ptr %i.fs, align 8
  %i.fu = load ptr, ptr %i.ai, align 8
  %i.fv = call i32 %i.ft(ptr noundef %i.fu, ptr noundef %i.fk) #14, !inline_history !6
  %.fr312.a = freeze i32 %i.fv
  %.not.i74.not = icmp eq i32 %.fr312.a, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #14
  %spec.select299.a = select i1 %.not.i74.not, i32 %i.fj, i32 -1
  br label %bb.ah

bb.ah:                                            ; preds = %unz64local_getLong.exit77, %unz64local_getLong.exit77.thread
  %.0160210 = phi i1 [ false, %unz64local_getLong.exit77 ], [ %i.fr, %unz64local_getLong.exit77.thread ]
  %i.fw = phi i32 [ %spec.select299.a, %unz64local_getLong.exit77 ], [ %i.fj, %unz64local_getLong.exit77.thread ]
  %i.fx = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #14
  %i.fz = load ptr, ptr %i.ah, align 8
  %i.ga = load ptr, ptr %i.ai, align 8
  %i.gb = call i64 %i.fz(ptr noundef %i.ga, ptr noundef %i.fx, ptr noundef nonnull %i.o, i64 noundef 8) #14, !inline_history !5
  %i.gc = and i64 %i.gb, 4294967295
  %i.gd = icmp eq i64 %i.gc, 8
  br i1 %i.gd, label %unz64local_getLong64.exit81.thread, label %unz64local_getLong64.exit81

unz64local_getLong64.exit81.thread:               ; preds = %bb.ah
  %i.ge = load i64, ptr %i.o, align 8
  store i64 %i.ge, ptr %i.fy, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #14
  br label %bb.ai

unz64local_getLong64.exit81:                      ; preds = %bb.ah
  store i64 0, ptr %i.fy, align 8
  %i.gf = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.gg = load ptr, ptr %i.gf, align 8
  %i.gh = load ptr, ptr %i.ai, align 8
  %i.gi = call i32 %i.gg(ptr noundef %i.gh, ptr noundef %i.fx) #14, !inline_history !5
  %.fr313.a = freeze i32 %i.gi
  %.not.i78.not = icmp eq i32 %.fr313.a, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #14
  br i1 %.not.i78.not, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %unz64local_getLong64.exit81.thread, %unz64local_getLong64.exit81
  br label %bb.aj

bb.aj:                                            ; preds = %unz64local_getLong64.exit81, %bb.ai
  %i.gj = phi i32 [ %i.fw, %bb.ai ], [ -1, %unz64local_getLong64.exit81 ] ; 2 uses
  %i.gk = load ptr, ptr %i.ab, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #14
  %i.gl = load ptr, ptr %i.ah, align 8
  %i.gm = load ptr, ptr %i.ai, align 8
  %i.gn = call i64 %i.gl(ptr noundef %i.gm, ptr noundef %i.gk, ptr noundef nonnull %i.n, i64 noundef 8) #14, !inline_history !5
  %i.go = and i64 %i.gn, 4294967295
  %i.gp = icmp eq i64 %i.go, 8
  br i1 %i.gp, label %unz64local_getLong64.exit85.thread, label %unz64local_getLong64.exit85

unz64local_getLong64.exit85.thread:               ; preds = %bb.aj
  %i.gq = load i64, ptr %i.n, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #14
  br label %bb.ak

unz64local_getLong64.exit85:                      ; preds = %bb.aj
  %i.gr = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.gs = load ptr, ptr %i.gr, align 8
  %i.gt = load ptr, ptr %i.ai, align 8
  %i.gu = call i32 %i.gs(ptr noundef %i.gt, ptr noundef %i.gk) #14, !inline_history !5
  %.fr314.a = freeze i32 %i.gu
  %.not.i82.not = icmp eq i32 %.fr314.a, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #14
  %spec.select300.a = select i1 %.not.i82.not, i32 %i.gj, i32 -1
  br label %bb.ak

bb.ak:                                            ; preds = %unz64local_getLong64.exit85, %unz64local_getLong64.exit85.thread
  %.0221 = phi i64 [ 0, %unz64local_getLong64.exit85 ], [ %i.gq, %unz64local_getLong64.exit85.thread ]
  %i.gv = phi i32 [ %spec.select300.a, %unz64local_getLong64.exit85 ], [ %i.gj, %unz64local_getLong64.exit85.thread ]
  %i.gw = load i64, ptr %i.fy, align 8
  %i.gx = icmp ne i64 %.0221, %i.gw
  %or.cond = select i1 %i.gx, i1 true, i1 %.0160210
  %or.cond3 = select i1 %or.cond, i1 true, i1 %.0162203
  %.9 = select i1 %or.cond3, i32 -103, i32 %i.gv
  %i.gy = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #14
  %i.ha = load ptr, ptr %i.ah, align 8
  %i.hb = load ptr, ptr %i.ai, align 8
  %i.hc = call i64 %i.ha(ptr noundef %i.hb, ptr noundef %i.gy, ptr noundef nonnull %i.m, i64 noundef 8) #14, !inline_history !5
  %i.hd = and i64 %i.hc, 4294967295
  %i.he = icmp eq i64 %i.hd, 8
  br i1 %i.he, label %unz64local_getLong64.exit89.thread, label %unz64local_getLong64.exit89

unz64local_getLong64.exit89.thread:               ; preds = %bb.ak
  %i.hf = load i64, ptr %i.m, align 8
  store i64 %i.hf, ptr %i.gz, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #14
  br label %bb.al

unz64local_getLong64.exit89:                      ; preds = %bb.ak
  store i64 0, ptr %i.gz, align 8
  %i.hg = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.hh = load ptr, ptr %i.hg, align 8
  %i.hi = load ptr, ptr %i.ai, align 8
  %i.hj = call i32 %i.hh(ptr noundef %i.hi, ptr noundef %i.gy) #14, !inline_history !5
  %.fr315.a = freeze i32 %i.hj
  %.not.i86.not = icmp eq i32 %.fr315.a, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #14
  br i1 %.not.i86.not, label %bb.al, label %bb.am

bb.al:                                            ; preds = %unz64local_getLong64.exit89.thread, %unz64local_getLong64.exit89
  br label %bb.am

bb.am:                                            ; preds = %unz64local_getLong64.exit89, %bb.al
  %i.hk = phi i32 [ %.9, %bb.al ], [ -1, %unz64local_getLong64.exit89 ]
  %i.hl = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %3, i64 168 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #14
  %i.hn = load ptr, ptr %i.ah, align 8
  %i.ho = load ptr, ptr %i.ai, align 8
  %i.hp = call i64 %i.hn(ptr noundef %i.ho, ptr noundef %i.hl, ptr noundef nonnull %i.l, i64 noundef 8) #14, !inline_history !5
  %i.hq = and i64 %i.hp, 4294967295
  %i.hr = icmp eq i64 %i.hq, 8
  br i1 %i.hr, label %unz64local_getLong64.exit93.thread, label %unz64local_getLong64.exit93

unz64local_getLong64.exit93.thread:               ; preds = %bb.am
  %i.hs = load i64, ptr %i.l, align 8
  store i64 %i.hs, ptr %i.hm, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #14
  br label %bb.an

unz64local_getLong64.exit93:                      ; preds = %bb.am
  store i64 0, ptr %i.hm, align 8
  %i.ht = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.hu = load ptr, ptr %i.ht, align 8
  %i.hv = load ptr, ptr %i.ai, align 8
  %i.hw = call i32 %i.hu(ptr noundef %i.hv, ptr noundef %i.hl) #14, !inline_history !5
  %.fr316.a = freeze i32 %i.hw
  %.not.i90.not = icmp eq i32 %.fr316.a, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #14
  br i1 %.not.i90.not, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %unz64local_getLong64.exit93.thread, %unz64local_getLong64.exit93
  br label %bb.ao

bb.ao:                                            ; preds = %unz64local_getLong64.exit93, %bb.an
  %i.hx = phi i32 [ %i.hk, %bb.an ], [ -1, %unz64local_getLong64.exit93 ]
  %i.hy = getelementptr inbounds nuw i8, ptr %3, i64 112
  store i64 0, ptr %i.hy, align 8
  br label %bb.bg

unz64local_SearchCentralDir64.exit.thread:        ; preds = %unz64local_getLong.exit140.thread, %unz64local_getLong.exit144.thread, %unz64local_getLong.exit144, %unz64local_getLong64.exit148, %bb.v, %unz64local_getLong.exit89.i, %unz64local_getLong.exit.i, %bb.o, %.thread.thread.i, %bb.f, %bb.e, %unz64local_getLong.exit140
  %i.hz = load ptr, ptr %i.ab, align 8            ; 4 uses
  %i.ia = call i64 @call_zseek64(ptr noundef nonnull %3, ptr noundef %i.hz, i64 noundef 0, i32 noundef 2) #14
  %.not.i94 = icmp eq i64 %i.ia, 0
  br i1 %.not.i94, label %bb.ap, label %unz64local_SearchCentralDir.exit.thread

bb.ap:                                            ; preds = %unz64local_SearchCentralDir64.exit.thread
  %i.ib = call i64 @call_ztell64(ptr noundef nonnull %3, ptr noundef %i.hz) #14 ; 2 uses
  %spec.select.i95 = call i64 @llvm.umin.i64(i64 %i.ib, i64 65535) ; 2 uses
  %i.ic = call noalias dereferenceable_or_null(1028) ptr @malloc(i64 noundef 1028) #15 ; 4 uses
  %i.id = icmp eq ptr %i.ic, null
  br i1 %i.id, label %unz64local_SearchCentralDir.exit.thread, label %.preheader.i96

.preheader.i96:                                   ; preds = %bb.ap
  %i.ie = getelementptr inbounds nuw i8, ptr %3, i64 8
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 56
  br label %bb.aq

bb.aq:                                            ; preds = %.loopexit.i99, %.preheader.i96
  %.046.i = phi i64 [ %spec.select..fr.i98, %.loopexit.i99 ], [ 4, %.preheader.i96 ] ; 2 uses
  %13 = icmp ult i64 %.046.i, %spec.select.i95
  br i1 %13, label %bb.ar, label %unz64local_SearchCentralDir.exit.thread.sink.split

bb.ar:                                            ; preds = %bb.aq
  %14 = add nuw nsw i64 %.046.i, 1024
  %spec.select..i97 = call i64 @llvm.umin.i64(i64 %14, i64 %spec.select.i95)
  %spec.select..fr.i98 = freeze i64 %spec.select..i97 ; 4 uses
  %i.if = sub i64 %i.ib, %spec.select..fr.i98     ; 2 uses
  %i.ig = call i64 @llvm.umin.i64(i64 %spec.select..fr.i98, i64 1028) ; 3 uses
  %i.ih = call i64 @call_zseek64(ptr noundef nonnull %3, ptr noundef %i.hz, i64 noundef %i.if, i32 noundef 0) #14
  %.not55.i = icmp eq i64 %i.ih, 0
  br i1 %.not55.i, label %bb.as, label %unz64local_SearchCentralDir.exit.thread.sink.split

bb.as:                                            ; preds = %bb.ar
  %i.ii = load ptr, ptr %i.ie, align 8
  %i.ij = load ptr, ptr %12, align 8
  %i.ik = call i64 %i.ii(ptr noundef %i.ij, ptr noundef %i.hz, ptr noundef nonnull %i.ic, i64 noundef %i.ig) #14, !inline_history !8
  %.not56.i = icmp eq i64 %i.ik, %i.ig
  br i1 %.not56.i, label %15, label %unz64local_SearchCentralDir.exit.thread.sink.split

15:                                               ; preds = %bb.as
  %16 = icmp ugt i64 %spec.select..fr.i98, 3
  br i1 %16, label %.lr.ph.preheader.i100, label %.loopexit.i99

.lr.ph.preheader.i100:                            ; preds = %15
  %i.il = add nuw nsw i64 %i.ig, 4294967292
  %i.im = and i64 %i.il, 4294967295
  br label %.lr.ph.i101

.lr.ph.i101:                                      ; preds = %bb.ax, %.lr.ph.preheader.i100
  %indvars.iv.i102 = phi i64 [ %i.im, %.lr.ph.preheader.i100 ], [ %indvars.iv.next.i103, %bb.ax ] ; 4 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.ic, i64 %indvars.iv.i102 ; 4 uses
  %i.io = load i8, ptr %i.in, align 1
  %i.ip = icmp eq i8 %i.io, 80
  br i1 %i.ip, label %bb.at, label %bb.ax

bb.at:                                            ; preds = %.lr.ph.i101
  %i.iq = getelementptr inbounds nuw i8, ptr %i.in, i64 1
  %i.ir = load i8, ptr %i.iq, align 1
  %i.is = icmp eq i8 %i.ir, 75
  br i1 %i.is, label %bb.au, label %bb.ax

bb.au:                                            ; preds = %bb.at
  %i.it = getelementptr inbounds nuw i8, ptr %i.in, i64 2
  %i.iu = load i8, ptr %i.it, align 1
  %i.iv = icmp eq i8 %i.iu, 5
  br i1 %i.iv, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.iw = getelementptr inbounds nuw i8, ptr %i.in, i64 3
  %i.ix = load i8, ptr %i.iw, align 1
  %i.iy = icmp eq i8 %i.ix, 6
  br i1 %i.iy, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %17 = and i64 %indvars.iv.i102, 4294967295
  %18 = add i64 %17, %i.if
  br label %.loopexit.i99

bb.ax:                                            ; preds = %bb.av, %bb.au, %bb.at, %.lr.ph.i101
  %indvars.iv.next.i103 = add nsw i64 %indvars.iv.i102, -1
  %19 = trunc nuw i64 %indvars.iv.i102 to i32
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %.lr.ph.i101, label %.loopexit.i99

.loopexit.i99:                                    ; preds = %bb.ax, %bb.aw, %15
  %.149.i = phi i64 [ %18, %bb.aw ], [ -1, %15 ], [ -1, %bb.ax ] ; 2 uses
  %.not57.i = icmp eq i64 %.149.i, -1
  br i1 %.not57.i, label %bb.aq, label %unz64local_SearchCentralDir.exit.thread.sink.split

unz64local_SearchCentralDir.exit.thread.sink.split: ; preds = %.loopexit.i99, %bb.as, %bb.ar, %bb.aq
  %.045.i232.ph = phi i64 [ -1, %bb.as ], [ -1, %bb.aq ], [ -1, %bb.ar ], [ %.149.i, %.loopexit.i99 ]
  %.ph = phi i32 [ -1, %bb.as ], [ -1, %bb.aq ], [ -1, %bb.ar ], [ 0, %.loopexit.i99 ]
  call void @free(ptr noundef %i.ic) #14
  br label %unz64local_SearchCentralDir.exit.thread

unz64local_SearchCentralDir.exit.thread:          ; preds = %unz64local_SearchCentralDir.exit.thread.sink.split, %bb.ap, %unz64local_SearchCentralDir64.exit.thread
  %.045.i232 = phi i64 [ -1, %unz64local_SearchCentralDir64.exit.thread ], [ -1, %bb.ap ], [ %.045.i232.ph, %unz64local_SearchCentralDir.exit.thread.sink.split ] ; 3 uses
  %i.iz = phi i32 [ -1, %unz64local_SearchCentralDir64.exit.thread ], [ -1, %bb.ap ], [ %.ph, %unz64local_SearchCentralDir.exit.thread.sink.split ]
  %i.ja = getelementptr inbounds nuw i8, ptr %3, i64 332
  store i32 0, ptr %i.ja, align 4
  %i.jb = load ptr, ptr %i.ab, align 8
  %i.jc = call i64 @call_zseek64(ptr noundef nonnull %3, ptr noundef %i.jb, i64 noundef %.045.i232, i32 noundef 0) #14
  %.not32 = icmp eq i64 %i.jc, 0
  %.13 = select i1 %.not32, i32 %i.iz, i32 -1
  %i.jd = load ptr, ptr %i.ab, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #14
  %i.je = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 8 uses
  %i.jf = load ptr, ptr %i.je, align 8
  %i.jg = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 16 uses
  %i.jh = load ptr, ptr %i.jg, align 8
  %i.ji = call i64 %i.jf(ptr noundef %i.jh, ptr noundef %i.jd, ptr noundef nonnull %i.k, i64 noundef 4) #14, !inline_history !6
  %i.jj = and i64 %i.ji, 4294967295
  %i.jk = icmp eq i64 %i.jj, 4
  br i1 %i.jk, label %unz64local_getLong.exit107.thread, label %unz64local_getLong.exit107

unz64local_getLong.exit107.thread:                ; preds = %unz64local_SearchCentralDir.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #14
  br label %bb.ay

unz64local_getLong.exit107:                       ; preds = %unz64local_SearchCentralDir.exit.thread
  %i.jl = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.jm = load ptr, ptr %i.jl, align 8
  %i.jn = load ptr, ptr %i.jg, align 8
  %i.jo = call i32 %i.jm(ptr noundef %i.jn, ptr noundef %i.jd) #14, !inline_history !6
  %.fr317.a = freeze i32 %i.jo
  %.not.i104.not = icmp eq i32 %.fr317.a, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #14
  br i1 %.not.i104.not, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %unz64local_getLong.exit107.thread, %unz64local_getLong.exit107
  br label %bb.az

bb.az:                                            ; preds = %unz64local_getLong.exit107, %bb.ay
  %i.jp = phi i32 [ %.13, %bb.ay ], [ -1, %unz64local_getLong.exit107 ] ; 2 uses
  %i.jq = load ptr, ptr %i.ab, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #14
  %i.jr = load ptr, ptr %i.je, align 8
  %i.js = load ptr, ptr %i.jg, align 8
  %i.jt = call i64 %i.jr(ptr noundef %i.js, ptr noundef %i.jq, ptr noundef nonnull %i.j, i64 noundef 2) #14, !inline_history !7
  %i.ju = and i64 %i.jt, 4294967295
  %i.jv = icmp eq i64 %i.ju, 2
  br i1 %i.jv, label %unz64local_getShort.exit111.thread, label %unz64local_getShort.exit111

unz64local_getShort.exit111.thread:               ; preds = %bb.az
  %i.jw = load i16, ptr %i.j, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #14
  %i.jx = icmp ne i16 %i.jw, 0
  br label %bb.ba

unz64local_getShort.exit111:                      ; preds = %bb.az
  %i.jy = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.jz = load ptr, ptr %i.jy, align 8
  %i.ka = load ptr, ptr %i.jg, align 8
  %i.kb = call i32 %i.jz(ptr noundef %i.ka, ptr noundef %i.jq) #14, !inline_history !7
  %.fr318.a = freeze i32 %i.kb
  %.not.i108.not = icmp eq i32 %.fr318.a, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #14
  %spec.select301.a = select i1 %.not.i108.not, i32 %i.jp, i32 -1
  br label %bb.ba

bb.ba:                                            ; preds = %unz64local_getShort.exit111, %unz64local_getShort.exit111.thread
  %.1163246 = phi i1 [ false, %unz64local_getShort.exit111 ], [ %i.jx, %unz64local_getShort.exit111.thread ]
  %i.kc = phi i32 [ %spec.select301.a, %unz64local_getShort.exit111 ], [ %i.jp, %unz64local_getShort.exit111.thread ] ; 2 uses
  %i.kd = load ptr, ptr %i.ab, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #14
  %i.ke = load ptr, ptr %i.je, align 8
  %i.kf = load ptr, ptr %i.jg, align 8
  %i.kg = call i64 %i.ke(ptr noundef %i.kf, ptr noundef %i.kd, ptr noundef nonnull %i.i, i64 noundef 2) #14, !inline_history !7
  %i.kh = and i64 %i.kg, 4294967295
  %i.ki = icmp eq i64 %i.kh, 2
  br i1 %i.ki, label %unz64local_getShort.exit115.thread, label %unz64local_getShort.exit115

unz64local_getShort.exit115.thread:               ; preds = %bb.ba
  %i.kj = load i16, ptr %i.i, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #14
  %i.kk = icmp ne i16 %i.kj, 0
  br label %bb.bb

unz64local_getShort.exit115:                      ; preds = %bb.ba
  %i.kl = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.km = load ptr, ptr %i.kl, align 8
  %i.kn = load ptr, ptr %i.jg, align 8
  %i.ko = call i32 %i.km(ptr noundef %i.kn, ptr noundef %i.kd) #14, !inline_history !7
  %.fr319.a = freeze i32 %i.ko
  %.not.i112.not = icmp eq i32 %.fr319.a, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #14
  %spec.select302.a = select i1 %.not.i112.not, i32 %i.kc, i32 -1
  br label %bb.bb

bb.bb:                                            ; preds = %unz64local_getShort.exit115, %unz64local_getShort.exit115.thread
  %.1161253 = phi i1 [ false, %unz64local_getShort.exit115 ], [ %i.kk, %unz64local_getShort.exit115.thread ]
  %i.kp = phi i32 [ %spec.select302.a, %unz64local_getShort.exit115 ], [ %i.kc, %unz64local_getShort.exit115.thread ] ; 2 uses
  %i.kq = load ptr, ptr %i.ab, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #14
  %i.kr = load ptr, ptr %i.je, align 8
  %i.ks = load ptr, ptr %i.jg, align 8
  %i.kt = call i64 %i.kr(ptr noundef %i.ks, ptr noundef %i.kq, ptr noundef nonnull %i.h, i64 noundef 2) #14, !inline_history !7
  %i.ku = and i64 %i.kt, 4294967295
  %i.kv = icmp eq i64 %i.ku, 2
  br i1 %i.kv, label %unz64local_getShort.exit119.thread, label %unz64local_getShort.exit119

unz64local_getShort.exit119.thread:               ; preds = %bb.bb
  %i.kw = load i16, ptr %i.h, align 2
  %i.kx = zext i16 %i.kw to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  br label %bb.bc

unz64local_getShort.exit119:                      ; preds = %bb.bb
  %i.ky = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.kz = load ptr, ptr %i.ky, align 8
  %i.la = load ptr, ptr %i.jg, align 8
  %i.lb = call i32 %i.kz(ptr noundef %i.la, ptr noundef %i.kq) #14, !inline_history !7
  %.fr320 = freeze i32 %i.lb
  %.not.i116.not = icmp eq i32 %.fr320, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  %spec.select303 = select i1 %.not.i116.not, i32 %i.kp, i32 -1
  br label %bb.bc

bb.bc:                                            ; preds = %unz64local_getShort.exit119, %unz64local_getShort.exit119.thread
  %.0164260 = phi i64 [ 0, %unz64local_getShort.exit119 ], [ %i.kx, %unz64local_getShort.exit119.thread ]
  %i.lc = phi i32 [ %spec.select303, %unz64local_getShort.exit119 ], [ %i.kp, %unz64local_getShort.exit119.thread ] ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  store i64 %.0164260, ptr %i.ld, align 8
  %i.le = load ptr, ptr %i.ab, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #14
  %i.lf = load ptr, ptr %i.je, align 8
  %i.lg = load ptr, ptr %i.jg, align 8
  %i.lh = call i64 %i.lf(ptr noundef %i.lg, ptr noundef %i.le, ptr noundef nonnull %i.g, i64 noundef 2) #14, !inline_history !7
  %i.li = and i64 %i.lh, 4294967295
  %i.lj = icmp eq i64 %i.li, 2
  br i1 %i.lj, label %unz64local_getShort.exit123.thread, label %unz64local_getShort.exit123

unz64local_getShort.exit123.thread:               ; preds = %bb.bc
  %i.lk = load i16, ptr %i.g, align 2
  %i.ll = zext i16 %i.lk to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  br label %bb.bd

unz64local_getShort.exit123:                      ; preds = %bb.bc
  %i.lm = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ln = load ptr, ptr %i.lm, align 8
  %i.lo = load ptr, ptr %i.jg, align 8
  %i.lp = call i32 %i.ln(ptr noundef %i.lo, ptr noundef %i.le) #14, !inline_history !7
  %.fr321 = freeze i32 %i.lp
  %.not.i120.not = icmp eq i32 %.fr321, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  %spec.select304 = select i1 %.not.i120.not, i32 %i.lc, i32 -1
  br label %bb.bd

bb.bd:                                            ; preds = %unz64local_getShort.exit123, %unz64local_getShort.exit123.thread
  %.1165267 = phi i64 [ 0, %unz64local_getShort.exit123 ], [ %i.ll, %unz64local_getShort.exit123.thread ]
  %i.lq = phi i32 [ %spec.select304, %unz64local_getShort.exit123 ], [ %i.lc, %unz64local_getShort.exit123.thread ]
  %i.lr = load i64, ptr %i.ld, align 8
  %i.ls = icmp ne i64 %.1165267, %i.lr
  %or.cond5 = select i1 %i.ls, i1 true, i1 %.1161253
  %or.cond7 = select i1 %or.cond5, i1 true, i1 %.1163246
  %.19 = select i1 %or.cond7, i32 -103, i32 %i.lq ; 2 uses
  %i.lt = load ptr, ptr %i.ab, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  %i.lu = load ptr, ptr %i.je, align 8
  %i.lv = load ptr, ptr %i.jg, align 8
  %i.lw = call i64 %i.lu(ptr noundef %i.lv, ptr noundef %i.lt, ptr noundef nonnull %i.f, i64 noundef 4) #14, !inline_history !6
  %i.lx = and i64 %i.lw, 4294967295
  %i.ly = icmp eq i64 %i.lx, 4
  br i1 %i.ly, label %unz64local_getLong.exit127.thread, label %unz64local_getLong.exit127

unz64local_getLong.exit127.thread:                ; preds = %bb.bd
  %i.lz = load i32, ptr %i.f, align 4
  %i.ma = zext i32 %i.lz to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  br label %bb.be

unz64local_getLong.exit127:                       ; preds = %bb.bd
  %i.mb = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.mc = load ptr, ptr %i.mb, align 8
  %i.md = load ptr, ptr %i.jg, align 8
  %i.me = call i32 %i.mc(ptr noundef %i.md, ptr noundef %i.lt) #14, !inline_history !6
  %.fr322 = freeze i32 %i.me
  %.not.i124.not = icmp eq i32 %.fr322, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  %spec.select305 = select i1 %.not.i124.not, i32 %.19, i32 -1
  br label %bb.be

bb.be:                                            ; preds = %unz64local_getLong.exit127, %unz64local_getLong.exit127.thread
  %.2166274 = phi i64 [ 0, %unz64local_getLong.exit127 ], [ %i.ma, %unz64local_getLong.exit127.thread ]
  %i.mf = phi i32 [ %spec.select305, %unz64local_getLong.exit127 ], [ %.19, %unz64local_getLong.exit127.thread ] ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %3, i64 160
  store i64 %.2166274, ptr %i.mg, align 8
  %i.mh = load ptr, ptr %i.ab, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  %i.mi = load ptr, ptr %i.je, align 8
  %i.mj = load ptr, ptr %i.jg, align 8
  %i.mk = call i64 %i.mi(ptr noundef %i.mj, ptr noundef %i.mh, ptr noundef nonnull %i.e, i64 noundef 4) #14, !inline_history !6
  %i.ml = and i64 %i.mk, 4294967295
  %i.mm = icmp eq i64 %i.ml, 4
  br i1 %i.mm, label %unz64local_getLong.exit131.thread, label %unz64local_getLong.exit131

end_hunk_0
begin_hunk_1_@unzGoToFilePos:bb.a
  %i.b = icmp eq ptr %0, null
  %or.cond = or i1 %i.b, %i.a
  br i1 %or.cond, label %unzGoToFilePos64.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = load <2 x i64>, ptr %1, align 8
  %i.e = shufflevector <2 x i64> %i.d, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.e, ptr %i.c, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.h = tail call fastcc i32 @unz64local_GetCurrentFileInfoInternal(ptr noundef nonnull %0, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0) ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  %i.j = zext i1 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 %i.j, ptr %i.k, align 8
  br label %unzGoToFilePos64.exit

unzGoToFilePos64.exit:                            ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ -102, %bb.a ], [ %i.h, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @unzOpenCurrentFile3(ptr noundef %0, ptr noundef writeonly captures(address_is_null) %1, ptr noundef writeonly captures(address_is_null) %2, i32 noundef %3, ptr noundef readnone captures(address_is_null) %4) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 5 uses
  %i.b = alloca [2 x i8], align 2                 ; 5 uses
  %i.c = alloca [4 x i8], align 4                 ; 5 uses
  %i.d = alloca [4 x i8], align 4                 ; 5 uses
  %i.e = alloca [4 x i8], align 4                 ; 5 uses
  %i.f = alloca [4 x i8], align 1                 ; 4 uses
  %i.g = alloca [2 x i8], align 2                 ; 5 uses
  %i.h = alloca [2 x i8], align 2                 ; 5 uses
  %i.i = alloca [2 x i8], align 1                 ; 4 uses
  %i.j = alloca [4 x i8], align 4                 ; 5 uses
  %.not = icmp ne ptr %4, null
  %i.k = icmp eq ptr %0, null
  %or.cond85 = or i1 %i.k, %.not
  br i1 %or.cond85, label %unz64local_CheckCurrentFileCoherencyHeader.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.m = load i64, ptr %i.l, align 8
  %.not77 = icmp eq i64 %i.m, 0
  br i1 %.not77, label %unz64local_CheckCurrentFileCoherencyHeader.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 6 uses
  %.not78 = icmp eq ptr %i.o, null
  br i1 %.not78, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.o, align 8
  tail call void @free(ptr noundef %i.p) #14
  store ptr null, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 128
  %i.r = load i64, ptr %i.q, align 8
  %i.s = icmp eq i64 %i.r, 8
  br i1 %i.s, label %bb.e, label %unzCloseCurrentFile.exit

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.u = tail call i32 @inflateEnd(ptr noundef nonnull %i.t) #14 ; 0 uses
  br label %unzCloseCurrentFile.exit

unzCloseCurrentFile.exit:                         ; preds = %bb.d, %bb.e
  tail call void @free(ptr noundef nonnull %i.o) #14
  store ptr null, ptr %i.n, align 8
  br label %bb.f

bb.f:                                             ; preds = %unzCloseCurrentFile.exit, %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 12 uses
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 3 uses
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = add i64 %i.aa, %i.y
  %i.ac = tail call i64 @call_zseek64(ptr noundef nonnull %0, ptr noundef %i.w, i64 noundef %i.ab, i32 noundef 0) #14
  %.not.i86 = icmp eq i64 %i.ac, 0
  br i1 %.not.i86, label %bb.g, label %unz64local_CheckCurrentFileCoherencyHeader.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.ad = load ptr, ptr %i.v, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #14
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 20 uses
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = call i64 %i.af(ptr noundef %i.ah, ptr noundef %i.ad, ptr noundef nonnull %i.j, i64 noundef 4) #14, !inline_history !9
  %i.aj = and i64 %i.ai, 4294967295
  %i.ak = icmp eq i64 %i.aj, 4
  br i1 %i.ak, label %unz64local_getLong.exit.i, label %unz64local_getLong.exit.thread.i

unz64local_getLong.exit.thread.i:                 ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = load ptr, ptr %i.ag, align 8
  %i.ao = call i32 %i.am(ptr noundef %i.an, ptr noundef %i.ad) #14, !inline_history !9
  %.not.i.not.i = icmp eq i32 %i.ao, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #14
  %i.ap = select i1 %.not.i.not.i, i32 -103, i32 -1
  br label %bb.h

unz64local_getLong.exit.i:                        ; preds = %bb.g
  %i.aq = load i32, ptr %i.j, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #14
  %.fr.i = freeze i32 %i.aq
  %.not56.i = icmp eq i32 %.fr.i, 67324752
  %spec.select.i87 = select i1 %.not56.i, i32 0, i32 -103
  br label %bb.h

bb.h:                                             ; preds = %unz64local_getLong.exit.i, %unz64local_getLong.exit.thread.i
  %.not55140.i = phi i32 [ %i.ap, %unz64local_getLong.exit.thread.i ], [ %spec.select.i87, %unz64local_getLong.exit.i ]
  %i.ar = load ptr, ptr %i.v, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #14
  %i.as = load ptr, ptr %i.ae, align 8
  %i.at = load ptr, ptr %i.ag, align 8
  %i.au = call i64 %i.as(ptr noundef %i.at, ptr noundef %i.ar, ptr noundef nonnull %i.i, i64 noundef 2) #14, !inline_history !10
  %i.av = and i64 %i.au, 4294967295
  %i.aw = icmp eq i64 %i.av, 2
  br i1 %i.aw, label %unz64local_getShort.exit.thread.i, label %unz64local_getShort.exit.i

unz64local_getShort.exit.thread.i:                ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #14
  br label %bb.i

unz64local_getShort.exit.i:                       ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = load ptr, ptr %i.ag, align 8
  %i.ba = call i32 %i.ay(ptr noundef %i.az, ptr noundef %i.ar) #14, !inline_history !10
  %.fr188.i.a = freeze i32 %i.ba
  %.not.i82.not.i = icmp eq i32 %.fr188.i.a, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #14
  br i1 %.not.i82.not.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %unz64local_getShort.exit.i, %unz64local_getShort.exit.thread.i
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %unz64local_getShort.exit.i
  %i.bb = phi i32 [ %.not55140.i, %bb.i ], [ -1, %unz64local_getShort.exit.i ] ; 2 uses
  %i.bc = load ptr, ptr %i.v, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #14
  %i.bd = load ptr, ptr %i.ae, align 8
  %i.be = load ptr, ptr %i.ag, align 8
  %i.bf = call i64 %i.bd(ptr noundef %i.be, ptr noundef %i.bc, ptr noundef nonnull %i.h, i64 noundef 2) #14, !inline_history !10
  %i.bg = and i64 %i.bf, 4294967295
  %i.bh = icmp eq i64 %i.bg, 2
  br i1 %i.bh, label %unz64local_getShort.exit88.thread.i, label %unz64local_getShort.exit88.i

unz64local_getShort.exit88.thread.i:              ; preds = %bb.j
  %i.bi = load i16, ptr %i.h, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  %i.bj = and i16 %i.bi, 8
  %i.bk = icmp eq i16 %i.bj, 0
  %i.bl = select i1 %i.bk, i32 -103, i32 0
  br label %bb.k

unz64local_getShort.exit88.i:                     ; preds = %bb.j
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = load ptr, ptr %i.ag, align 8
  %i.bp = call i32 %i.bn(ptr noundef %i.bo, ptr noundef %i.bc) #14, !inline_history !10
  %.fr189.i.a = freeze i32 %i.bp
  %.not.i85.not.i = icmp eq i32 %.fr189.i.a, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  %spec.select186.i = select i1 %.not.i85.not.i, i32 %i.bb, i32 -1
  br label %bb.k

bb.k:                                             ; preds = %unz64local_getShort.exit88.i, %unz64local_getShort.exit88.thread.i
  %.0130150.i = phi i32 [ -103, %unz64local_getShort.exit88.i ], [ %i.bl, %unz64local_getShort.exit88.thread.i ] ; 3 uses
  %i.bq = phi i32 [ %spec.select186.i, %unz64local_getShort.exit88.i ], [ %i.bb, %unz64local_getShort.exit88.thread.i ] ; 2 uses
  %i.br = load ptr, ptr %i.v, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #14
  %i.bs = load ptr, ptr %i.ae, align 8
  %i.bt = load ptr, ptr %i.ag, align 8
  %i.bu = call i64 %i.bs(ptr noundef %i.bt, ptr noundef %i.br, ptr noundef nonnull %i.g, i64 noundef 2) #14, !inline_history !10
  %i.bv = and i64 %i.bu, 4294967295
  %i.bw = icmp eq i64 %i.bv, 2
  br i1 %i.bw, label %unz64local_getShort.exit92.thread.i, label %unz64local_getShort.exit92.i

unz64local_getShort.exit92.thread.i:              ; preds = %bb.k
  %i.bx = load i16, ptr %i.g, align 2
  %i.by = zext i16 %i.bx to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  br label %bb.l

unz64local_getShort.exit92.i:                     ; preds = %bb.k
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = load ptr, ptr %i.ag, align 8
  %i.cc = call i32 %i.ca(ptr noundef %i.cb, ptr noundef %i.br) #14, !inline_history !10
  %.not.i89.not.i = icmp eq i32 %i.cc, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  br i1 %.not.i89.not.i, label %bb.l, label %.thread.i

bb.l:                                             ; preds = %unz64local_getShort.exit92.i, %unz64local_getShort.exit92.thread.i
  %.0131155.i = phi i64 [ %i.by, %unz64local_getShort.exit92.thread.i ], [ 0, %unz64local_getShort.exit92.i ]
  %i.cd = icmp eq i32 %i.bq, 0
  br i1 %i.cd, label %bb.m, label %.thread.i

bb.m:                                             ; preds = %bb.l
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.cf = load i64, ptr %i.ce, align 8            ; 2 uses
  %.not60.i = icmp eq i64 %.0131155.i, %i.cf
  %cond.fr156.i = freeze i1 %.not60.i
  br i1 %cond.fr156.i, label %bb.n, label %.thread.i

bb.n:                                             ; preds = %bb.m
  switch i64 %i.cf, label %bb.o [
    i64 0, label %.thread.i
    i64 12, label %.thread.i
    i64 8, label %.thread.i
  ]

bb.o:                                             ; preds = %bb.n
  br label %.thread.i

.thread.i:                                        ; preds = %bb.o, %bb.n, %bb.n, %bb.n, %bb.m, %bb.l, %unz64local_getShort.exit92.i
  %.4.i = phi i32 [ -103, %bb.o ], [ 0, %bb.n ], [ 0, %bb.n ], [ 0, %bb.n ], [ -103, %bb.m ], [ -1, %unz64local_getShort.exit92.i ], [ %i.bq, %bb.l ]
  %i.cg = load ptr, ptr %i.v, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  %i.ch = load ptr, ptr %i.ae, align 8
  %i.ci = load ptr, ptr %i.ag, align 8
  %i.cj = call i64 %i.ch(ptr noundef %i.ci, ptr noundef %i.cg, ptr noundef nonnull %i.f, i64 noundef 4) #14, !inline_history !9
  %i.ck = and i64 %i.cj, 4294967295
  %i.cl = icmp eq i64 %i.ck, 4
  br i1 %i.cl, label %unz64local_getLong.exit96.thread.i, label %unz64local_getLong.exit96.i

unz64local_getLong.exit96.thread.i:               ; preds = %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  br label %bb.p

unz64local_getLong.exit96.i:                      ; preds = %.thread.i
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = load ptr, ptr %i.ag, align 8
  %i.cp = call i32 %i.cn(ptr noundef %i.co, ptr noundef %i.cg) #14, !inline_history !9
  %.fr190.i.a = freeze i32 %i.cp
  %.not.i93.not.i = icmp eq i32 %.fr190.i.a, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  br i1 %.not.i93.not.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %unz64local_getLong.exit96.i, %unz64local_getLong.exit96.thread.i
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %unz64local_getLong.exit96.i
  %i.cq = phi i32 [ %.4.i, %bb.p ], [ -1, %unz64local_getLong.exit96.i ] ; 2 uses
  %i.cr = load ptr, ptr %i.v, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  %i.cs = load ptr, ptr %i.ae, align 8
  %i.ct = load ptr, ptr %i.ag, align 8
  %i.cu = call i64 %i.cs(ptr noundef %i.ct, ptr noundef %i.cr, ptr noundef nonnull %i.e, i64 noundef 4) #14, !inline_history !9
  %i.cv = and i64 %i.cu, 4294967295
  %i.cw = icmp eq i64 %i.cv, 4
  br i1 %i.cw, label %unz64local_getLong.exit100.thread.i, label %unz64local_getLong.exit100.i

unz64local_getLong.exit100.thread.i:              ; preds = %bb.q
  %i.cx = load i32, ptr %i.e, align 4
  %i.cy = zext i32 %i.cx to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  br label %bb.r

unz64local_getLong.exit100.i:                     ; preds = %bb.q
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = load ptr, ptr %i.ag, align 8
  %i.dc = call i32 %i.da(ptr noundef %i.db, ptr noundef %i.cr) #14, !inline_history !9
  %.not.i97.not.i = icmp eq i32 %i.dc, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  br i1 %.not.i97.not.i, label %bb.r, label %bb.t

bb.r:                                             ; preds = %unz64local_getLong.exit100.i, %unz64local_getLong.exit100.thread.i
  %.1165.i = phi i64 [ %i.cy, %unz64local_getLong.exit100.thread.i ], [ 0, %unz64local_getLong.exit100.i ]
  %i.dd = icmp eq i32 %i.cq, 0
  br i1 %i.dd, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.df = load i64, ptr %i.de, align 8
  %.not66.i = icmp eq i64 %.1165.i, %i.df
  %spec.select192.i.a = select i1 %.not66.i, i32 0, i32 %.0130150.i
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %unz64local_getLong.exit100.i
  %.6.i = phi i32 [ %i.cq, %bb.r ], [ -1, %unz64local_getLong.exit100.i ], [ %spec.select192.i.a, %bb.s ] ; 2 uses
  %i.dg = load ptr, ptr %i.v, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  %i.dh = load ptr, ptr %i.ae, align 8
  %i.di = load ptr, ptr %i.ag, align 8
  %i.dj = call i64 %i.dh(ptr noundef %i.di, ptr noundef %i.dg, ptr noundef nonnull %i.d, i64 noundef 4) #14, !inline_history !9
  %i.dk = and i64 %i.dj, 4294967295
  %i.dl = icmp eq i64 %i.dk, 4
  br i1 %i.dl, label %unz64local_getLong.exit104.thread.i, label %unz64local_getLong.exit104.i

unz64local_getLong.exit104.thread.i:              ; preds = %bb.t
  %i.dm = load i32, ptr %i.d, align 4
  %i.dn = zext i32 %i.dm to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  br label %bb.u

unz64local_getLong.exit104.i:                     ; preds = %bb.t
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dp = load ptr, ptr %i.do, align 8
  %i.dq = load ptr, ptr %i.ag, align 8
  %i.dr = call i32 %i.dp(ptr noundef %i.dq, ptr noundef %i.dg) #14, !inline_history !9
  %.not.i101.not.i = icmp eq i32 %i.dr, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  br i1 %.not.i101.not.i, label %bb.u, label %bb.w

bb.u:                                             ; preds = %unz64local_getLong.exit104.i, %unz64local_getLong.exit104.thread.i
  %.2132169.i = phi i64 [ %i.dn, %unz64local_getLong.exit104.thread.i ], [ 0, %unz64local_getLong.exit104.i ] ; 2 uses
  %i.ds = icmp ne i64 %.2132169.i, 4294967295
  %i.dt = icmp eq i32 %.6.i, 0
  %or.cond.i = and i1 %i.dt, %i.ds
  br i1 %or.cond.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.dv = load i64, ptr %i.du, align 8
  %.not68.i = icmp eq i64 %.2132169.i, %i.dv
  %spec.select193.i.a = select i1 %.not68.i, i32 0, i32 %.0130150.i
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %unz64local_getLong.exit104.i
  %.7.i = phi i32 [ %.6.i, %bb.u ], [ -1, %unz64local_getLong.exit104.i ], [ %spec.select193.i.a, %bb.v ] ; 2 uses
  %i.dw = load ptr, ptr %i.v, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.dx = load ptr, ptr %i.ae, align 8
  %i.dy = load ptr, ptr %i.ag, align 8
  %i.dz = call i64 %i.dx(ptr noundef %i.dy, ptr noundef %i.dw, ptr noundef nonnull %i.c, i64 noundef 4) #14, !inline_history !9
  %i.ea = and i64 %i.dz, 4294967295
  %i.eb = icmp eq i64 %i.ea, 4
  br i1 %i.eb, label %unz64local_getLong.exit108.thread.i, label %unz64local_getLong.exit108.i

unz64local_getLong.exit108.thread.i:              ; preds = %bb.w
  %i.ec = load i32, ptr %i.c, align 4
  %i.ed = zext i32 %i.ec to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  br label %bb.x

unz64local_getLong.exit108.i:                     ; preds = %bb.w
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ef = load ptr, ptr %i.ee, align 8
  %i.eg = load ptr, ptr %i.ag, align 8
  %i.eh = call i32 %i.ef(ptr noundef %i.eg, ptr noundef %i.dw) #14, !inline_history !9
  %.not.i105.not.i = icmp eq i32 %i.eh, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  br i1 %.not.i105.not.i, label %bb.x, label %bb.z

bb.x:                                             ; preds = %unz64local_getLong.exit108.i, %unz64local_getLong.exit108.thread.i
  %.3133173.i = phi i64 [ %i.ed, %unz64local_getLong.exit108.thread.i ], [ 0, %unz64local_getLong.exit108.i ] ; 2 uses
  %i.ei = icmp ne i64 %.3133173.i, 4294967295
  %i.ej = icmp eq i32 %.7.i, 0
  %or.cond3.i = and i1 %i.ej, %i.ei
  br i1 %or.cond3.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.el = load i64, ptr %i.ek, align 8
  %.not70.i = icmp eq i64 %.3133173.i, %i.el
  %spec.select194.i = select i1 %.not70.i, i32 0, i32 %.0130150.i
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %unz64local_getLong.exit108.i
  %.8.i = phi i32 [ %.7.i, %bb.x ], [ -1, %unz64local_getLong.exit108.i ], [ %spec.select194.i, %bb.y ]
  %i.em = load ptr, ptr %i.v, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.en = load ptr, ptr %i.ae, align 8
  %i.eo = load ptr, ptr %i.ag, align 8
  %i.ep = call i64 %i.en(ptr noundef %i.eo, ptr noundef %i.em, ptr noundef nonnull %i.b, i64 noundef 2) #14, !inline_history !10
  %i.eq = and i64 %i.ep, 4294967295
  %i.er = icmp eq i64 %i.eq, 2
  br i1 %i.er, label %unz64local_getShort.exit112.thread.i, label %unz64local_getShort.exit112.i

unz64local_getShort.exit112.thread.i:             ; preds = %bb.z
  %i.es = load i16, ptr %i.b, align 2
  %i.et = zext i16 %i.es to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %bb.aa

unz64local_getShort.exit112.i:                    ; preds = %bb.z
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ev = load ptr, ptr %i.eu, align 8
  %i.ew = load ptr, ptr %i.ag, align 8
  %i.ex = call i32 %i.ev(ptr noundef %i.ew, ptr noundef %i.em) #14, !inline_history !10
  %.not.i109.not.i = icmp eq i32 %i.ex, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br i1 %.not.i109.not.i, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %unz64local_getShort.exit112.i, %unz64local_getShort.exit112.thread.i
  %.0129177.i.a = phi i64 [ %i.et, %unz64local_getShort.exit112.thread.i ], [ 0, %unz64local_getShort.exit112.i ] ; 3 uses
  %i.ey = icmp eq i32 %.8.i, 0
  br i1 %i.ey, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.fa = load i64, ptr %i.ez, align 8
  %.not72.i = icmp eq i64 %.0129177.i.a, %i.fa
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %unz64local_getShort.exit112.i
  %.0129178.i = phi i64 [ %.0129177.i.a, %bb.aa ], [ 0, %unz64local_getShort.exit112.i ], [ %.0129177.i.a, %bb.ab ] ; 2 uses
  %.9.i = phi i1 [ false, %bb.aa ], [ false, %unz64local_getShort.exit112.i ], [ %.not72.i, %bb.ab ]
  %i.fb = trunc nuw nsw i64 %.0129178.i to i32
  %i.fc = load ptr, ptr %i.v, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.fd = load ptr, ptr %i.ae, align 8
  %i.fe = load ptr, ptr %i.ag, align 8
  %i.ff = call i64 %i.fd(ptr noundef %i.fe, ptr noundef %i.fc, ptr noundef nonnull %i.a, i64 noundef 2) #14, !inline_history !10
  %i.fg = and i64 %i.ff, 4294967295
  %i.fh = icmp eq i64 %i.fg, 2
  br i1 %i.fh, label %unz64local_getShort.exit116.thread.i, label %unz64local_getShort.exit116.i
end_hunk_1
begin_hunk_2_@unzReadCurrentFile:bb.a
  %i.ad = phi i32 [ %i.ac, %bb.j ], [ %i.r, %bb.i ], [ %i.r, %bb.h ]
  %.not150174 = icmp eq i32 %i.ad, 0
  br i1 %.not150174, label %.thread, label %.lr.ph176

.lr.ph176:                                        ; preds = %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 288 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 120 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 304
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 296
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 312
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 160 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 168 ; 4 uses
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph176, %.thread168
  %.0125175 = phi i32 [ 0, %.lr.ph176 ], [ %.2127, %.thread168 ] ; 4 uses
  %i.aq = load i32, ptr %i.u, align 8             ; 2 uses
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.as = load i64, ptr %i.s, align 8             ; 2 uses
  %.not151 = icmp eq i64 %i.as, 0
  br i1 %.not151, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %spec.select172 = tail call i64 @llvm.umin.i64(i64 %i.as, i64 16384) ; 5 uses
  %spec.select = trunc nuw nsw i64 %spec.select172 to i32 ; 2 uses
  %i.at = load ptr, ptr %i.af, align 8
  %i.au = load i64, ptr %i.ag, align 8
  %i.av = load i64, ptr %i.ah, align 8
  %i.aw = add i64 %i.av, %i.au
  %i.ax = tail call i64 @call_zseek64(ptr noundef nonnull %i.ae, ptr noundef %i.at, i64 noundef %i.aw, i32 noundef 0) #14
  %.not152 = icmp eq i64 %i.ax, 0
  br i1 %.not152, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.ay = load ptr, ptr %i.ai, align 8
  %i.az = load ptr, ptr %i.aj, align 8
  %i.ba = load ptr, ptr %i.af, align 8
  %i.bb = load ptr, ptr %i.c, align 8
  %i.bc = tail call i64 %i.ay(ptr noundef %i.az, ptr noundef %i.ba, ptr noundef %i.bb, i64 noundef %spec.select172) #14
  %.not153 = icmp eq i64 %i.bc, %spec.select172
  br i1 %.not153, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.bd = load i64, ptr %i.ag, align 8
  %i.be = add i64 %i.bd, %spec.select172
  store i64 %i.be, ptr %i.ag, align 8
  %i.bf = load i64, ptr %i.s, align 8
  %i.bg = sub i64 %i.bf, %spec.select172
  store i64 %i.bg, ptr %i.s, align 8
  %i.bh = load ptr, ptr %i.c, align 8
  store ptr %i.bh, ptr %i.h, align 8
  store i32 %spec.select, ptr %i.u, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m, %bb.l
  %i.bi = phi i32 [ %spec.select, %bb.p ], [ 0, %bb.m ], [ %i.aq, %bb.l ] ; 2 uses
  %i.bj = load i64, ptr %i.ak, align 8            ; 2 uses
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bl = load i32, ptr %i.al, align 8
  %.not154 = icmp eq i32 %i.bl, 0
  br i1 %.not154, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bm = icmp eq i32 %i.bi, 0
  br i1 %i.bm, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bn = load i64, ptr %i.s, align 8
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %.thread, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bp = load i32, ptr %i.j, align 8
  %. = tail call i32 @llvm.umin.i32(i32 %i.bp, i32 %i.bi) ; 7 uses
  %.not180 = icmp eq i32 %., 0
  br i1 %.not180, label %.thread161, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.u
  %wide.trip.count = zext i32 %. to i64           ; 4 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.bq = icmp ult i32 %., 4
  br i1 %i.bq, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.br = load ptr, ptr %i.h, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %indvars.iv
  %i.bt = load i8, ptr %i.bs, align 1
  %i.bu = load ptr, ptr %i.i, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %indvars.iv
  store i8 %i.bt, ptr %i.bv, align 1
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.bw = load ptr, ptr %i.h, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %indvars.iv.next
  %i.by = load i8, ptr %i.bx, align 1
  %i.bz = load ptr, ptr %i.i, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %indvars.iv.next
  store i8 %i.by, ptr %i.ca, align 1
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.cb = load ptr, ptr %i.h, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %indvars.iv.next.1
  %i.cd = load i8, ptr %i.cc, align 1
  %i.ce = load ptr, ptr %i.i, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %indvars.iv.next.1
  store i8 %i.cd, ptr %i.cf, align 1
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.cg = load ptr, ptr %i.h, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %indvars.iv.next.2
  %i.ci = load i8, ptr %i.ch, align 1
  %i.cj = load ptr, ptr %i.i, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %indvars.iv.next.2
  store i8 %i.ci, ptr %i.ck, align 1
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.thread161.loopexit.unr-lcssa, label %.lr.ph

.thread161.loopexit.unr-lcssa:                    ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.thread161, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.thread161.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %.thread161.loopexit.unr-lcssa ]
  %lcmp.mod197 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod197)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.cl = load ptr, ptr %i.h, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %indvars.iv.epil
  %i.cn = load i8, ptr %i.cm, align 1
  %i.co = load ptr, ptr %i.i, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %indvars.iv.epil
  store i8 %i.cn, ptr %i.cp, align 1
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.thread161, label %.lr.ph.epil, !llvm.loop !11

.thread161:                                       ; preds = %.thread161.loopexit.unr-lcssa, %.lr.ph.epil, %bb.u
  %.pre-phi = phi i64 [ 0, %bb.u ], [ %wide.trip.count, %.lr.ph.epil ], [ %wide.trip.count, %.thread161.loopexit.unr-lcssa ] ; 5 uses
  %i.cq = load i64, ptr %i.ao, align 8
  %i.cr = add i64 %i.cq, %.pre-phi
  store i64 %i.cr, ptr %i.ao, align 8
  %i.cs = load i64, ptr %i.ap, align 8
  %i.ct = load ptr, ptr %i.i, align 8
  %i.cu = tail call i64 @crc32(i64 noundef %i.cs, ptr noundef %i.ct, i32 noundef %.) #14
  store i64 %i.cu, ptr %i.ap, align 8
  %i.cv = load i64, ptr %i.l, align 8
  %i.cw = sub i64 %i.cv, %.pre-phi
  store i64 %i.cw, ptr %i.l, align 8
  %i.cx = load i32, ptr %i.u, align 8
  %i.cy = sub i32 %i.cx, %.
  store i32 %i.cy, ptr %i.u, align 8
  %i.cz = load i32, ptr %i.j, align 8
  %i.da = sub i32 %i.cz, %.
  store i32 %i.da, ptr %i.j, align 8
  %i.db = load ptr, ptr %i.i, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %.pre-phi
  store ptr %i.dc, ptr %i.i, align 8
  %i.dd = load ptr, ptr %i.h, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %.pre-phi
  store ptr %i.de, ptr %i.h, align 8
  %i.df = load i64, ptr %i.am, align 8
  %i.dg = add i64 %i.df, %.pre-phi
  store i64 %i.dg, ptr %i.am, align 8
  %i.dh = add i32 %., %.0125175
  br label %.thread168

bb.v:                                             ; preds = %bb.r
  %i.di = icmp eq i64 %i.bj, 12
  br i1 %i.di, label %.thread168, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dj = load i64, ptr %i.am, align 8            ; 2 uses
  %i.dk = load ptr, ptr %i.i, align 8
  %i.dl = tail call i32 @inflate(ptr noundef nonnull %i.h, i32 noundef 2) #14 ; 3 uses
  %i.dm = icmp sgt i32 %i.dl, -1
  br i1 %i.dm, label %bb.x, label %select.unfold

bb.x:                                             ; preds = %bb.w
  %i.dn = load ptr, ptr %i.an, align 8
  %.fr = freeze ptr %i.dn
  %.not155 = icmp eq ptr %.fr, null
  %spec.select195 = select i1 %.not155, i32 %i.dl, i32 -3
  br label %select.unfold

select.unfold:                                    ; preds = %bb.x, %bb.w
  %.1122 = phi i32 [ %i.dl, %bb.w ], [ %spec.select195, %bb.x ] ; 2 uses
  %i.do = load i64, ptr %i.am, align 8            ; 3 uses
  %i.dp = icmp ult i64 %i.do, %i.dj
  %i.dq = add i64 %i.do, 4294967296
  %spec.select158 = select i1 %i.dp, i64 %i.dq, i64 %i.do
  %i.dr = sub i64 %spec.select158, %i.dj          ; 3 uses
  %i.ds = load i64, ptr %i.ao, align 8
  %i.dt = add i64 %i.dr, %i.ds
  store i64 %i.dt, ptr %i.ao, align 8
  %i.du = load i64, ptr %i.ap, align 8
  %i.dv = trunc i64 %i.dr to i32                  ; 2 uses
  %i.dw = tail call i64 @crc32(i64 noundef %i.du, ptr noundef %i.dk, i32 noundef %i.dv) #14
  store i64 %i.dw, ptr %i.ap, align 8
  %i.dx = load i64, ptr %i.l, align 8
  %i.dy = sub i64 %i.dx, %i.dr
  store i64 %i.dy, ptr %i.l, align 8
  %i.dz = add i32 %.0125175, %i.dv                ; 2 uses
  switch i32 %.1122, label %.thread.loopexit196 [
    i32 1, label %.thread
    i32 0, label %.thread168
  ]

.thread168:                                       ; preds = %select.unfold, %.thread161, %bb.v
  %.2127 = phi i32 [ %i.dh, %.thread161 ], [ %.0125175, %bb.v ], [ %i.dz, %select.unfold ] ; 2 uses
  %i.ea = load i32, ptr %i.j, align 8
  %.not150 = icmp eq i32 %i.ea, 0
  br i1 %.not150, label %.thread, label %bb.l

.thread.loopexit196:                              ; preds = %select.unfold
  br label %.thread

.thread:                                          ; preds = %bb.o, %bb.n, %bb.t, %.thread168, %select.unfold, %.thread.loopexit196, %bb.k, %bb.d, %bb.c, %bb.b, %bb.a
  %.6 = phi i32 [ 0, %bb.k ], [ -102, %bb.a ], [ -102, %bb.b ], [ -100, %bb.c ], [ 0, %bb.d ], [ %i.dz, %select.unfold ], [ -1, %bb.n ], [ -1, %bb.o ], [ %.0125175, %bb.t ], [ %.2127, %.thread168 ], [ %.1122, %.thread.loopexit196 ]
  ret i32 %.6
}

declare i64 @call_zseek64(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

declare i64 @crc32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @inflate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i64 @unztell(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.f = load i64, ptr %i.e, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i64 [ %i.f, %bb.c ], [ -102, %bb.a ], [ -102, %bb.b ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i64 @unztell64(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.f = load i64, ptr %i.e, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i64 [ %i.f, %bb.c ], [ -1, %bb.a ], [ -1, %bb.b ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -102, 2) i32 @unzeof(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  %i.f = load i64, ptr %i.e, align 8
  %i.g = icmp eq i64 %i.f, 0
  %. = zext i1 %i.g to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -102, %bb.b ], [ -102, %bb.a ], [ %., %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @unzGetLocalExtrafield(ptr noundef readonly captures(address_is_null) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.c = load ptr, ptr %i.b, align 8              ; 8 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.f = load i32, ptr %i.e, align 8
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  %i.j = sub i64 %i.g, %i.i                       ; 2 uses
  %i.k = icmp eq ptr %1, null
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = trunc i64 %i.j to i32
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.m = zext i32 %2 to i64
  %.02430 = tail call i64 @llvm.umin.i64(i64 %i.j, i64 %i.m) ; 4 uses
  %.024 = trunc nuw i64 %.02430 to i32
  %i.n = icmp eq i64 %.02430, 0
  br i1 %i.n, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 288 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.s = load i64, ptr %i.r, align 8
  %i.t = add i64 %i.s, %i.i
  %i.u = tail call i64 @call_zseek64(ptr noundef nonnull %i.o, ptr noundef %i.q, i64 noundef %i.t, i32 noundef 0) #14
  %.not = icmp eq i64 %i.u, 0
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = load ptr, ptr %i.p, align 8
  %i.aa = tail call i64 %i.w(ptr noundef %i.y, ptr noundef %i.z, ptr noundef nonnull %1, i64 noundef %.02430) #14
  %.not29 = icmp eq i64 %i.aa, %.02430
  %.024. = select i1 %.not29, i32 %.024, i32 -1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.b, %bb.a, %bb.d
  %.0 = phi i32 [ -1, %bb.f ], [ -102, %bb.a ], [ %i.l, %bb.d ], [ -102, %bb.b ], [ 0, %bb.e ], [ %.024., %bb.g ]
  ret i32 %.0
}

declare i32 @inflateEnd(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define i32 @unzGetGlobalComment(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %spec.select = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.c) ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.g = load i64, ptr %i.f, align 8
  %i.h = add i64 %i.g, 22
  %i.i = tail call i64 @call_zseek64(ptr noundef nonnull %0, ptr noundef %i.e, i64 noundef %i.h, i32 noundef 0) #14
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %.not29 = icmp eq i64 %spec.select, 0
  br i1 %.not29, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
end_hunk_2
