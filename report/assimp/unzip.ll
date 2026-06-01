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
@switch.table.unzOpenCurrentFile3 = private unnamed_addr constant [13 x i32] [i32 0, i32 -103, i32 -103, i32 -103, i32 -103, i32 -103, i32 -103, i32 -103, i32 0, i32 -103, i32 -103, i32 -103, i32 0], align 4

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
  br i1 %i.ac, label %bb.bg, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = call i64 @call_zseek64(ptr noundef nonnull %3, ptr noundef nonnull %i.aa, i64 noundef 0, i32 noundef 2) #14
  %.not.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i, label %bb.f, label %unz64local_SearchCentralDir64.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.ae = call i64 @call_ztell64(ptr noundef nonnull %3, ptr noundef nonnull %i.aa) #14 ; 3 uses
  %spec.select.i = call i64 @llvm.umin.i64(i64 %i.ae, i64 65535) ; 2 uses
  %i.af = call noalias dereferenceable_or_null(1028) ptr @malloc(i64 noundef 1028) #15 ; 6 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %unz64local_SearchCentralDir64.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.f
  %i.ah = icmp ugt i64 %i.ae, 4
  br i1 %i.ah, label %.lr.ph105.i, label %.thread92.i

.lr.ph105.i:                                      ; preds = %.preheader.i
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 16 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 31 uses
  br label %bb.g

.thread92.i:                                      ; preds = %.thread99.i, %.preheader.i
  call void @free(ptr noundef nonnull %i.af) #14
  br label %unz64local_SearchCentralDir64.exit.thread

bb.g:                                             ; preds = %.thread99.i, %.lr.ph105.i
  %.061104.i = phi i64 [ 4, %.lr.ph105.i ], [ %spec.select..i, %.thread99.i ]
  %i.ak = add nuw nsw i64 %.061104.i, 1024        ; 2 uses
  %spec.select..i = call i64 @llvm.umin.i64(i64 %i.ak, i64 %spec.select.i) ; 3 uses
  %i.al = sub i64 %i.ae, %spec.select..i          ; 2 uses
  %i.am = call i64 @llvm.umin.i64(i64 %spec.select..i, i64 1028) ; 3 uses
  %i.an = call i64 @call_zseek64(ptr noundef nonnull %3, ptr noundef nonnull %i.aa, i64 noundef %i.al, i32 noundef 0) #14
  %.not70.i = icmp eq i64 %i.an, 0
  br i1 %.not70.i, label %bb.h, label %.thread95.i

bb.h:                                             ; preds = %bb.g
  %i.ao = load ptr, ptr %i.ai, align 8
  %i.ap = load ptr, ptr %i.aj, align 8
  %i.aq = call i64 %i.ao(ptr noundef %i.ap, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.af, i64 noundef %i.am) #14, !inline_history !3
  %.not71.i = icmp eq i64 %i.aq, %i.am
  br i1 %.not71.i, label %.lr.ph.preheader.i, label %.thread95.i

.lr.ph.preheader.i:                               ; preds = %bb.h
  %i.ar = add nuw nsw i64 %i.am, 4294967292
  %i.as = and i64 %i.ar, 4294967295
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.as, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.l ] ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.af, i64 %indvars.iv.i ; 4 uses
  %i.au = load i8, ptr %i.at, align 1
  %i.av = icmp eq i8 %i.au, 80
  br i1 %i.av, label %bb.i, label %bb.l

bb.i:                                             ; preds = %.lr.ph.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  %i.ax = load i8, ptr %i.aw, align 1
  %i.ay = icmp eq i8 %i.ax, 75
  br i1 %i.ay, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 2
  %i.ba = load i8, ptr %i.az, align 1
  %i.bb = icmp eq i8 %i.ba, 6
  br i1 %i.bb, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %i.at, i64 3
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
  %.fr187.i = freeze i32 %i.ba
  %.not.i82.not.i = icmp eq i32 %.fr187.i, 0
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
  %.fr188.i = freeze i32 %i.bp
  %.not.i85.not.i = icmp eq i32 %.fr188.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  %spec.select185.i = select i1 %.not.i85.not.i, i32 %i.bb, i32 -1
  br label %bb.k

bb.k:                                             ; preds = %unz64local_getShort.exit88.i, %unz64local_getShort.exit88.thread.i
  %.0130150.i = phi i32 [ -103, %unz64local_getShort.exit88.i ], [ %i.bl, %unz64local_getShort.exit88.thread.i ] ; 3 uses
  %i.bq = phi i32 [ %spec.select185.i, %unz64local_getShort.exit88.i ], [ %i.bb, %unz64local_getShort.exit88.thread.i ] ; 2 uses
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
  %.0131155.i = phi i64 [ %i.by, %unz64local_getShort.exit92.thread.i ], [ 0, %unz64local_getShort.exit92.i ] ; 3 uses
  %i.cd = icmp eq i32 %i.bq, 0
  br i1 %i.cd, label %bb.m, label %.thread.i

bb.m:                                             ; preds = %bb.l
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.cf = load i64, ptr %i.ce, align 8
  %.not60.i = icmp eq i64 %.0131155.i, %i.cf
  %5 = icmp samesign ult i64 %.0131155.i, 13
  %or.cond111 = select i1 %.not60.i, i1 %5, i1 false
  br i1 %or.cond111, label %bb.n, label %.thread.i

bb.n:                                             ; preds = %bb.m
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.unzOpenCurrentFile3, i64 %.0131155.i
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %.thread.i

.thread.i:                                        ; preds = %bb.n, %bb.m, %bb.l, %unz64local_getShort.exit92.i
  %.4.i = phi i32 [ -103, %bb.m ], [ %switch.load, %bb.n ], [ %i.bq, %bb.l ], [ -1, %unz64local_getShort.exit92.i ]
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
  br label %bb.o

unz64local_getLong.exit96.i:                      ; preds = %.thread.i
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = load ptr, ptr %i.ag, align 8
  %i.cp = call i32 %i.cn(ptr noundef %i.co, ptr noundef %i.cg) #14, !inline_history !9
  %.fr189.i = freeze i32 %i.cp
  %.not.i93.not.i = icmp eq i32 %.fr189.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  br i1 %.not.i93.not.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %unz64local_getLong.exit96.i, %unz64local_getLong.exit96.thread.i
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %unz64local_getLong.exit96.i
  %i.cq = phi i32 [ %.4.i, %bb.o ], [ -1, %unz64local_getLong.exit96.i ] ; 2 uses
  %i.cr = load ptr, ptr %i.v, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  %i.cs = load ptr, ptr %i.ae, align 8
  %i.ct = load ptr, ptr %i.ag, align 8
  %i.cu = call i64 %i.cs(ptr noundef %i.ct, ptr noundef %i.cr, ptr noundef nonnull %i.e, i64 noundef 4) #14, !inline_history !9
  %i.cv = and i64 %i.cu, 4294967295
  %i.cw = icmp eq i64 %i.cv, 4
  br i1 %i.cw, label %unz64local_getLong.exit100.thread.i, label %unz64local_getLong.exit100.i

unz64local_getLong.exit100.thread.i:              ; preds = %bb.p
  %i.cx = load i32, ptr %i.e, align 4
  %i.cy = zext i32 %i.cx to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  br label %bb.q

unz64local_getLong.exit100.i:                     ; preds = %bb.p
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = load ptr, ptr %i.ag, align 8
  %i.dc = call i32 %i.da(ptr noundef %i.db, ptr noundef %i.cr) #14, !inline_history !9
  %.not.i97.not.i = icmp eq i32 %i.dc, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  br i1 %.not.i97.not.i, label %bb.q, label %bb.s

bb.q:                                             ; preds = %unz64local_getLong.exit100.i, %unz64local_getLong.exit100.thread.i
  %.1164.i = phi i64 [ %i.cy, %unz64local_getLong.exit100.thread.i ], [ 0, %unz64local_getLong.exit100.i ]
  %i.dd = icmp eq i32 %i.cq, 0
  br i1 %i.dd, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.df = load i64, ptr %i.de, align 8
  %.not66.i = icmp eq i64 %.1164.i, %i.df
  %spec.select191.i = select i1 %.not66.i, i32 0, i32 %.0130150.i
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %unz64local_getLong.exit100.i
  %.6.i = phi i32 [ %i.cq, %bb.q ], [ -1, %unz64local_getLong.exit100.i ], [ %spec.select191.i, %bb.r ] ; 2 uses
  %i.dg = load ptr, ptr %i.v, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  %i.dh = load ptr, ptr %i.ae, align 8
  %i.di = load ptr, ptr %i.ag, align 8
  %i.dj = call i64 %i.dh(ptr noundef %i.di, ptr noundef %i.dg, ptr noundef nonnull %i.d, i64 noundef 4) #14, !inline_history !9
  %i.dk = and i64 %i.dj, 4294967295
  %i.dl = icmp eq i64 %i.dk, 4
  br i1 %i.dl, label %unz64local_getLong.exit104.thread.i, label %unz64local_getLong.exit104.i

unz64local_getLong.exit104.thread.i:              ; preds = %bb.s
  %i.dm = load i32, ptr %i.d, align 4
  %i.dn = zext i32 %i.dm to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  br label %bb.t

unz64local_getLong.exit104.i:                     ; preds = %bb.s
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dp = load ptr, ptr %i.do, align 8
  %i.dq = load ptr, ptr %i.ag, align 8
  %i.dr = call i32 %i.dp(ptr noundef %i.dq, ptr noundef %i.dg) #14, !inline_history !9
  %.not.i101.not.i = icmp eq i32 %i.dr, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  br i1 %.not.i101.not.i, label %bb.t, label %bb.v

bb.t:                                             ; preds = %unz64local_getLong.exit104.i, %unz64local_getLong.exit104.thread.i
  %.2132168.i = phi i64 [ %i.dn, %unz64local_getLong.exit104.thread.i ], [ 0, %unz64local_getLong.exit104.i ] ; 2 uses
  %i.ds = icmp ne i64 %.2132168.i, 4294967295
  %i.dt = icmp eq i32 %.6.i, 0
  %or.cond.i = and i1 %i.dt, %i.ds
  br i1 %or.cond.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.dv = load i64, ptr %i.du, align 8
  %.not68.i = icmp eq i64 %.2132168.i, %i.dv
  %spec.select192.i = select i1 %.not68.i, i32 0, i32 %.0130150.i
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %unz64local_getLong.exit104.i
  %.7.i = phi i32 [ %.6.i, %bb.t ], [ -1, %unz64local_getLong.exit104.i ], [ %spec.select192.i, %bb.u ] ; 2 uses
  %i.dw = load ptr, ptr %i.v, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.dx = load ptr, ptr %i.ae, align 8
  %i.dy = load ptr, ptr %i.ag, align 8
  %i.dz = call i64 %i.dx(ptr noundef %i.dy, ptr noundef %i.dw, ptr noundef nonnull %i.c, i64 noundef 4) #14, !inline_history !9
  %i.ea = and i64 %i.dz, 4294967295
  %i.eb = icmp eq i64 %i.ea, 4
  br i1 %i.eb, label %unz64local_getLong.exit108.thread.i, label %unz64local_getLong.exit108.i

unz64local_getLong.exit108.thread.i:              ; preds = %bb.v
  %i.ec = load i32, ptr %i.c, align 4
  %i.ed = zext i32 %i.ec to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  br label %bb.w

unz64local_getLong.exit108.i:                     ; preds = %bb.v
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ef = load ptr, ptr %i.ee, align 8
  %i.eg = load ptr, ptr %i.ag, align 8
  %i.eh = call i32 %i.ef(ptr noundef %i.eg, ptr noundef %i.dw) #14, !inline_history !9
  %.not.i105.not.i = icmp eq i32 %i.eh, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  br i1 %.not.i105.not.i, label %bb.w, label %bb.y

bb.w:                                             ; preds = %unz64local_getLong.exit108.i, %unz64local_getLong.exit108.thread.i
  %.3133172.i = phi i64 [ %i.ed, %unz64local_getLong.exit108.thread.i ], [ 0, %unz64local_getLong.exit108.i ] ; 2 uses
  %i.ei = icmp ne i64 %.3133172.i, 4294967295
  %i.ej = icmp eq i32 %.7.i, 0
  %or.cond3.i = and i1 %i.ej, %i.ei
  br i1 %or.cond3.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.el = load i64, ptr %i.ek, align 8
  %.not70.i = icmp eq i64 %.3133172.i, %i.el
  %spec.select193.i = select i1 %.not70.i, i32 0, i32 %.0130150.i
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %unz64local_getLong.exit108.i
  %.8.i = phi i32 [ %.7.i, %bb.w ], [ -1, %unz64local_getLong.exit108.i ], [ %spec.select193.i, %bb.x ]
  %i.em = load ptr, ptr %i.v, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.en = load ptr, ptr %i.ae, align 8
  %i.eo = load ptr, ptr %i.ag, align 8
  %i.ep = call i64 %i.en(ptr noundef %i.eo, ptr noundef %i.em, ptr noundef nonnull %i.b, i64 noundef 2) #14, !inline_history !10
  %i.eq = and i64 %i.ep, 4294967295
  %i.er = icmp eq i64 %i.eq, 2
  br i1 %i.er, label %unz64local_getShort.exit112.thread.i, label %unz64local_getShort.exit112.i

unz64local_getShort.exit112.thread.i:             ; preds = %bb.y
  %i.es = load i16, ptr %i.b, align 2
  %i.et = zext i16 %i.es to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %bb.z

unz64local_getShort.exit112.i:                    ; preds = %bb.y
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ev = load ptr, ptr %i.eu, align 8
  %i.ew = load ptr, ptr %i.ag, align 8
  %i.ex = call i32 %i.ev(ptr noundef %i.ew, ptr noundef %i.em) #14, !inline_history !10
  %.not.i109.not.i = icmp eq i32 %i.ex, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br i1 %.not.i109.not.i, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %unz64local_getShort.exit112.i, %unz64local_getShort.exit112.thread.i
  %.0129176.i = phi i64 [ %i.et, %unz64local_getShort.exit112.thread.i ], [ 0, %unz64local_getShort.exit112.i ] ; 3 uses
  %i.ey = icmp eq i32 %.8.i, 0
  br i1 %i.ey, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.fa = load i64, ptr %i.ez, align 8
  %.not72.i = icmp eq i64 %.0129176.i, %i.fa
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %unz64local_getShort.exit112.i
  %.0129177.i = phi i64 [ %.0129176.i, %bb.z ], [ 0, %unz64local_getShort.exit112.i ], [ %.0129176.i, %bb.aa ] ; 2 uses
  %.9.i = phi i1 [ false, %bb.z ], [ false, %unz64local_getShort.exit112.i ], [ %.not72.i, %bb.aa ]
  %i.fb = trunc nuw nsw i64 %.0129177.i to i32
  %i.fc = load ptr, ptr %i.v, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.fd = load ptr, ptr %i.ae, align 8
  %i.fe = load ptr, ptr %i.ag, align 8
  %i.ff = call i64 %i.fd(ptr noundef %i.fe, ptr noundef %i.fc, ptr noundef nonnull %i.a, i64 noundef 2) #14, !inline_history !10
  %i.fg = and i64 %i.ff, 4294967295
  %i.fh = icmp eq i64 %i.fg, 2
  br i1 %i.fh, label %unz64local_getShort.exit116.thread.i, label %unz64local_getShort.exit116.i

unz64local_getShort.exit116.thread.i:             ; preds = %bb.ab
  %i.fi = load i16, ptr %i.a, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.fj = zext i16 %i.fi to i32
  br label %unz64local_CheckCurrentFileCoherencyHeader.exit

end_hunk_1
