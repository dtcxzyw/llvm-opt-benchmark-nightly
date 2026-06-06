inline.NumInlined: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"X\00", align 1
@uriSafeToPointToA = local_unnamed_addr constant ptr @.str, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@uriConstPwdA = local_unnamed_addr constant ptr @.str.1, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@uriConstParentA = local_unnamed_addr constant ptr @.str.2, align 8
@.str.3 = private unnamed_addr constant [2 x i32] [i32 88, i32 0], align 4
@uriSafeToPointToW = local_unnamed_addr constant ptr @.str.3, align 8
@.str.4 = private unnamed_addr constant [2 x i32] [i32 46, i32 0], align 4
@uriConstPwdW = local_unnamed_addr constant ptr @.str.4, align 8
@.str.5 = private unnamed_addr constant [3 x i32] [i32 46, i32 46, i32 0], align 4
@uriConstParentW = local_unnamed_addr constant ptr @.str.5, align 8
@switch.table.uriHexToLetterA = private unnamed_addr constant [15 x i8] c"0123456789ABCDE", align 1
@switch.table.uriHexdigToIntW = private unnamed_addr constant [55 x i8] c"\00\01\02\03\04\05\06\07\08\09\00\00\00\00\00\00\00\0A\0B\0C\0D\0E\0F\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0A\0B\0C\0D\0E\0F", align 1
@switch.table.uriHexToLetterW = private unnamed_addr constant [15 x i32] [i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 65, i32 66, i32 67, i32 68, i32 69], align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @uriResetUriA(ptr nofree noundef writeonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %0, i8 0, i64 160, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -1, 2) i32 @uriCompareRangeA(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null                     ; 2 uses
  %i.b = icmp eq ptr %1, null                     ; 2 uses
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %not. = xor i1 %i.a, true
  %i.c = zext i1 %not. to i32
  %not.30 = xor i1 %i.b, true
  %.neg31 = sext i1 %not.30 to i32
  %i.d = add nsw i32 %.neg31, %i.c
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !7      ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  %.pre = load ptr, ptr %1, align 8, !tbaa !7     ; 4 uses
  %i.g = icmp eq ptr %.pre, null
  %or.cond37 = select i1 %i.f, i1 true, i1 %i.g
  br i1 %or.cond37, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = icmp ne ptr %i.e, null
  %i.i = zext i1 %i.h to i32
  %i.j = icmp ne ptr %.pre, null
  %.neg29 = sext i1 %i.j to i32
  %i.k = add nsw i32 %.neg29, %i.i
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !11
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.e to i64
  %i.p = sub i64 %i.n, %i.o                       ; 2 uses
  %i.q = trunc i64 %i.p to i32
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !11
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %.pre to i64
  %.neg = sub i64 %i.u, %i.t
  %.neg28 = trunc i64 %.neg to i32
  %i.v = add i32 %.neg28, %i.q                    ; 2 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = icmp slt i32 %i.v, 0
  br i1 %i.x, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = tail call i32 @strncmp(ptr noundef nonnull %i.e, ptr noundef nonnull %.pre, i64 noundef %i.p) #10 ; 2 uses
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not = icmp ne i32 %i.y, 0
  %. = sext i1 %.not to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ %i.k, %bb.d ], [ 1, %bb.g ], [ 1, %bb.e ], [ -1, %bb.f ], [ %., %bb.h ]
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @uriRemoveDotSegmentsA(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.c = load i32, ptr %i.b, align 4, !tbaa !12
  %i.d = tail call i32 @uriRemoveDotSegmentsExA(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.c, ptr noundef %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @uriRemoveDotSegmentsExA(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 7 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18   ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr null, ptr %i.e, align 8, !tbaa !19
  %.not = icmp eq i32 %1, 0                       ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %.not242 = icmp eq i32 %2, 0                    ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 19 uses
  br label %bb.d

bb.d:                                             ; preds = %.thread297, %bb.c
  %.0186 = phi ptr [ %i.c, %bb.c ], [ %.6192, %.thread297 ] ; 25 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0186, i64 8 ; 5 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !21   ; 6 uses
  %i.k = load ptr, ptr %.0186, align 8, !tbaa !22 ; 14 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = trunc i64 %i.n to i32
  switch i32 %i.o, label %.thread301 [
    i32 1, label %bb.e
    i32 2, label %bb.x
  ]

bb.e:                                             ; preds = %bb.d
  %i.p = load i8, ptr %i.k, align 1, !tbaa !23
  %i.q = icmp eq i8 %i.p, 46
  br i1 %i.q, label %bb.f, label %.thread301

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %.0186, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !19   ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0186, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !24   ; 8 uses
  br i1 %.not, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.w = icmp ne ptr %.0186, %i.v
  %.not246 = icmp eq ptr %i.u, null
  %or.cond = select i1 %i.w, i1 true, i1 %.not246
  br i1 %or.cond, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !22   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !21   ; 2 uses
  %i.aa = icmp ult ptr %i.x, %i.z
  br i1 %i.aa, label %.lr.ph, label %.thread261

bb.i:                                             ; preds = %.lr.ph
  %i.ab = getelementptr inbounds nuw i8, ptr %.0200336, i64 1 ; 2 uses
  %exitcond.not = icmp eq ptr %i.ab, %i.z
  br i1 %exitcond.not, label %.thread261, label %.lr.ph, !llvm.loop !25

.lr.ph:                                           ; preds = %bb.h, %bb.i
  %.0200336 = phi ptr [ %i.ab, %bb.i ], [ %i.x, %bb.h ] ; 2 uses
  %i.ac = load i8, ptr %.0200336, align 1, !tbaa !23
  %i.ad = icmp eq i8 %i.ac, 58
  br i1 %i.ad, label %.thread301, label %bb.i

bb.j:                                             ; preds = %bb.g, %bb.f
  %.not248 = icmp eq ptr %i.u, null
  br i1 %.not248, label %bb.p, label %.thread261

.thread261:                                       ; preds = %bb.i, %bb.h, %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store ptr %i.s, ptr %i.ae, align 8, !tbaa !19
  %i.af = icmp eq ptr %i.s, null
  br i1 %i.af, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.thread261
  store ptr %i.u, ptr %i.b, align 8, !tbaa !18
  br label %bb.m

bb.l:                                             ; preds = %.thread261
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.u, ptr %i.ag, align 8, !tbaa !24
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.not253 = icmp eq ptr %i.k, %i.j
end_hunk_0
begin_hunk_1_@uriRemoveDotSegmentsExA:bb.a
  br i1 %.not230, label %bb.aw, label %bb.at

bb.at:                                            ; preds = %bb.as
  store ptr %i.bc, ptr %i.b, align 8, !tbaa !18
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  store ptr null, ptr %i.cm, align 8, !tbaa !19
  %.not234 = icmp eq ptr %i.k, %i.j
  %or.cond316 = or i1 %.not242, %.not234
  br i1 %or.cond316, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.cn = load ptr, ptr %i.h, align 8, !tbaa !27
  tail call void %i.cn(ptr noundef %3, ptr noundef nonnull %i.k) #11
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.co = load ptr, ptr %i.h, align 8, !tbaa !27
  tail call void %i.co(ptr noundef %3, ptr noundef nonnull %.0186) #11
  br label %bb.az

bb.aw:                                            ; preds = %bb.as
  %.not232 = icmp eq ptr %i.k, %i.j
  %or.cond317 = or i1 %.not242, %.not232
  br i1 %or.cond317, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.cp = load ptr, ptr %i.h, align 8, !tbaa !27
  tail call void %i.cp(ptr noundef %3, ptr noundef nonnull %i.k) #11
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  store <2 x ptr> <ptr @.str, ptr @.str>, ptr %.0186, align 8, !tbaa !34
  store ptr %.0186, ptr %i.b, align 8, !tbaa !18
  store ptr %.0186, ptr %i.g, align 8, !tbaa !35
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.av
  br i1 %.not242, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.cq = load ptr, ptr %i.ba, align 8, !tbaa !22 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !21
  %.not236 = icmp eq ptr %i.cq, %i.cs
  br i1 %.not236, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ct = load ptr, ptr %i.h, align 8, !tbaa !27
  tail call void %i.ct(ptr noundef %3, ptr noundef %i.cq) #11
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %bb.az
  %i.cu = load ptr, ptr %i.h, align 8, !tbaa !27
  tail call void %i.cu(ptr noundef %3, ptr noundef nonnull %i.ba) #11
  br label %.thread297

bb.bd:                                            ; preds = %bb.ae
  store ptr %i.bc, ptr %i.b, align 8, !tbaa !18
  %.not226 = icmp eq ptr %i.bc, null
  br i1 %.not226, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  store ptr null, ptr %i.cv, align 8, !tbaa !19
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  store ptr null, ptr %i.g, align 8, !tbaa !35
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.not228 = icmp eq ptr %i.k, %i.j
  %or.cond318 = or i1 %.not242, %.not228
  br i1 %or.cond318, label %.thread305, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.cw = load ptr, ptr %i.h, align 8, !tbaa !27
  tail call void %i.cw(ptr noundef %3, ptr noundef nonnull %i.k) #11
  br label %.thread305

.thread305:                                       ; preds = %bb.bg, %bb.bh
  %i.cx = load ptr, ptr %i.h, align 8, !tbaa !27
  tail call void %i.cx(ptr noundef %3, ptr noundef nonnull %.0186) #11
  br label %.thread297

.sink.split389:                                   ; preds = %bb.al, %bb.ai
  %.sink = phi ptr [ %.0186, %bb.ai ], [ %i.ca, %bb.al ]
  %i.cy = load ptr, ptr %i.h, align 8, !tbaa !27
  tail call void %i.cy(ptr noundef nonnull %3, ptr noundef %.sink) #11
  br label %bb.bi

bb.bi:                                            ; preds = %.sink.split389, %bb.al
  %i.cz = load ptr, ptr %i.h, align 8, !tbaa !27
  tail call void %i.cz(ptr noundef nonnull %3, ptr noundef nonnull %i.ba) #11
  br label %.critedge

.thread301:                                       ; preds = %.lr.ph, %bb.ad, %bb.y, %bb.e, %bb.x, %bb.d, %bb.aa
  %i.da = getelementptr inbounds nuw i8, ptr %.0186, i64 16
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !24 ; 3 uses
  %.not255 = icmp eq ptr %i.db, null
  br i1 %.not255, label %.thread309, label %bb.bj

bb.bj:                                            ; preds = %.thread301
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  store ptr %.0186, ptr %i.dc, align 8, !tbaa !19
  br label %.thread297

.thread309:                                       ; preds = %.thread301
  store ptr %.0186, ptr %i.g, align 8, !tbaa !35
  br label %.critedge

.thread297:                                       ; preds = %bb.ar, %bb.bc, %bb.o, %bb.bj, %.thread305
  %.6192 = phi ptr [ %i.bc, %.thread305 ], [ %i.u, %bb.o ], [ %i.db, %bb.bj ], [ %i.bc, %bb.bc ], [ %i.bc, %bb.ar ] ; 2 uses
  %.not256 = icmp eq ptr %.6192, null
  br i1 %.not256, label %.critedge, label %bb.d, !llvm.loop !36

.critedge:                                        ; preds = %.thread297, %bb.w, %bb.v, %uriIsHostSetA.exit.thread, %.thread309, %bb.bi, %bb.a, %bb.b
  %.7 = phi i32 [ 1, %bb.w ], [ 1, %bb.a ], [ 1, %bb.b ], [ 0, %bb.bi ], [ 1, %.thread309 ], [ 1, %uriIsHostSetA.exit.thread ], [ 1, %bb.v ], [ 1, %.thread297 ]
  ret i32 %.7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @uriIsHostSetA(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29
  %.not5 = icmp eq ptr %i.b, null
  br i1 %.not5, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !30
  %.not6 = icmp eq ptr %i.d, null
  br i1 %.not6, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !31
  %.not7 = icmp eq ptr %i.f, null
  br i1 %.not7, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !32
  %i.i = icmp ne ptr %i.h, null
  %i.j = zext i1 %i.i to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.a
  %i.k = phi i32 [ 0, %bb.a ], [ 1, %bb.d ], [ 1, %bb.c ], [ 1, %bb.b ], [ %i.j, %bb.e ]
  ret i32 %i.k
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @uriRemoveDotSegmentsAbsoluteA(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %uriRemoveDotSegmentsA.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.c = load i32, ptr %i.b, align 4, !tbaa !12
  %i.d = tail call i32 @uriRemoveDotSegmentsExA(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %i.c, ptr noundef %1)
  br label %uriRemoveDotSegmentsA.exit

uriRemoveDotSegmentsA.exit:                       ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.d, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define zeroext range(i8 0, 16) i8 @uriHexdigToIntA(i8 noundef signext %0) local_unnamed_addr #6 {
bb.a:
  %switch.tableidx = add i8 %0, -48               ; 2 uses
  %i.a = icmp ult i8 %switch.tableidx, 55
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.uriHexdigToIntW, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %bb.b

bb.b:                                             ; preds = %switch.lookup, %bb.a
  %.0 = phi i8 [ 0, %bb.a ], [ %switch.load, %switch.lookup ]
  ret i8 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define signext range(i8 48, 71) i8 @uriHexToLetterA(i32 noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp ult i32 %0, 15
  br i1 %i.a, label %switch.lookup, label %uriHexToLetterExA.exit

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.uriHexToLetterA, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %uriHexToLetterExA.exit

uriHexToLetterExA.exit:                           ; preds = %bb.a, %switch.lookup
  %.0.i = phi i8 [ %switch.load, %switch.lookup ], [ 70, %bb.a ]
  ret i8 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define signext range(i8 48, 103) i8 @uriHexToLetterExA(i32 noundef %0, i32 noundef %1) local_unnamed_addr #6 {
bb.a:
  switch i32 %0, label %bb.p [
    i32 0, label %bb.q
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.e
    i32 5, label %bb.f
    i32 6, label %bb.g
    i32 7, label %bb.h
    i32 8, label %bb.i
    i32 9, label %bb.j
    i32 10, label %bb.k
    i32 11, label %bb.l
    i32 12, label %bb.m
    i32 13, label %bb.n
    i32 14, label %bb.o
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  br label %bb.q

bb.d:                                             ; preds = %bb.a
  br label %bb.q

bb.e:                                             ; preds = %bb.a
  br label %bb.q

bb.f:                                             ; preds = %bb.a
  br label %bb.q

bb.g:                                             ; preds = %bb.a
  br label %bb.q

bb.h:                                             ; preds = %bb.a
  br label %bb.q

bb.i:                                             ; preds = %bb.a
  br label %bb.q

bb.j:                                             ; preds = %bb.a
  br label %bb.q

bb.k:                                             ; preds = %bb.a
  %i.a = icmp eq i32 %1, 1
  %i.b = select i1 %i.a, i8 65, i8 97
  br label %bb.q

bb.l:                                             ; preds = %bb.a
  %i.c = icmp eq i32 %1, 1
  %i.d = select i1 %i.c, i8 66, i8 98
  br label %bb.q

bb.m:                                             ; preds = %bb.a
  %i.e = icmp eq i32 %1, 1
  %i.f = select i1 %i.e, i8 67, i8 99
  br label %bb.q

bb.n:                                             ; preds = %bb.a
  %i.g = icmp eq i32 %1, 1
  %i.h = select i1 %i.g, i8 68, i8 100
  br label %bb.q

bb.o:                                             ; preds = %bb.a
  %i.i = icmp eq i32 %1, 1
  %i.j = select i1 %i.i, i8 69, i8 101
  br label %bb.q

bb.p:                                             ; preds = %bb.a
  %i.k = icmp eq i32 %1, 1
  %i.l = select i1 %i.k, i8 70, i8 102
  br label %bb.q

bb.q:                                             ; preds = %bb.a, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i8 [ %i.l, %bb.p ], [ %i.j, %bb.o ], [ 49, %bb.b ], [ 50, %bb.c ], [ 51, %bb.d ], [ 52, %bb.e ], [ 53, %bb.f ], [ 54, %bb.g ], [ 55, %bb.h ], [ 56, %bb.i ], [ 57, %bb.j ], [ %i.b, %bb.k ], [ %i.d, %bb.l ], [ %i.f, %bb.m ], [ %i.h, %bb.n ], [ 48, %bb.a ]
  ret i8 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @uriCopyPathA(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  br i1 %i.c, label %bb.b, label %.preheader

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  br label %bb.i

.preheader:                                       ; preds = %bb.a, %bb.h
  %.030 = phi ptr [ %i.k, %bb.h ], [ %i.b, %bb.a ] ; 2 uses
  %.028 = phi ptr [ %i.f, %bb.h ], [ null, %bb.a ] ; 4 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !37
  %i.f = tail call ptr %i.e(ptr noundef nonnull %2, i64 noundef 32) #11 ; 7 uses
  %.not34 = icmp eq ptr %i.f, null
  br i1 %.not34, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.preheader
  %.not = icmp eq ptr %.028, null
  br i1 %.not, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.028, i64 16
  store ptr null, ptr %i.g, align 8, !tbaa !24
  br label %bb.j

bb.e:                                             ; preds = %.preheader
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %.030, i64 16, i1 false), !tbaa.struct !38
  %i.h = icmp eq ptr %.028, null
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr %i.f, ptr %i.d, align 8, !tbaa !18
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %.028, i64 16
  store ptr %i.f, ptr %i.i, align 8, !tbaa !24
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %.030, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !24   ; 2 uses
  %.not35 = icmp eq ptr %i.k, null
  br i1 %.not35, label %.thread38, label %.preheader, !llvm.loop !39

.thread38:                                        ; preds = %bb.h
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.f, ptr %i.l, align 8, !tbaa !35
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr null, ptr %i.m, align 8, !tbaa !24
  br label %bb.i

bb.i:                                             ; preds = %.thread38, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.o = load i32, ptr %i.n, align 8, !tbaa !40
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 %i.o, ptr %i.p, align 8, !tbaa !40
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.c, %bb.i
  %.2 = phi i32 [ 1, %bb.i ], [ 0, %bb.c ], [ 0, %bb.d ]
  ret i32 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @uriCopyAuthorityA(ptr nofree noundef writeonly captures(none) initializes((16, 56)) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !38
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa.struct !38
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !30
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %2, align 8, !tbaa !37
  %i.h = tail call ptr %i.g(ptr noundef nonnull %2, i64 noundef 4) #11 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.h, ptr %i.i, align 8, !tbaa !30
  %i.j = icmp eq ptr %i.h, null
  br i1 %i.j, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !30
  %i.l = load i32, ptr %i.k, align 1, !tbaa !23
  store i32 %i.l, ptr %i.h, align 1, !tbaa !23
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !31
  %.not32 = icmp eq ptr %i.o, null
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  br i1 %.not32, label %bb.g, label %bb.e

end_hunk_1
begin_hunk_2_@uriRemoveDotSegmentsExW:bb.a
  br i1 %.not230, label %bb.aw, label %bb.at

bb.at:                                            ; preds = %bb.as
  store ptr %i.be, ptr %i.b, align 8, !tbaa !50
  %i.co = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store ptr null, ptr %i.co, align 8, !tbaa !51
  %.not234 = icmp eq ptr %i.k, %i.j
  %or.cond316 = or i1 %.not242, %.not234
  br i1 %or.cond316, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.cp = load ptr, ptr %i.h, align 8, !tbaa !27
  tail call void %i.cp(ptr noundef %3, ptr noundef nonnull %i.k) #11
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.cq = load ptr, ptr %i.h, align 8, !tbaa !27
  tail call void %i.cq(ptr noundef %3, ptr noundef nonnull %.0186) #11
  br label %bb.az

bb.aw:                                            ; preds = %bb.as
  %.not232 = icmp eq ptr %i.k, %i.j
  %or.cond317 = or i1 %.not242, %.not232
  br i1 %or.cond317, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.cr = load ptr, ptr %i.h, align 8, !tbaa !27
  tail call void %i.cr(ptr noundef %3, ptr noundef nonnull %i.k) #11
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  store <2 x ptr> <ptr @.str.3, ptr @.str.3>, ptr %.0186, align 8, !tbaa !61
  store ptr %.0186, ptr %i.b, align 8, !tbaa !50
  store ptr %.0186, ptr %i.g, align 8, !tbaa !62
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.av
  br i1 %.not242, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.cs = load ptr, ptr %i.bc, align 8, !tbaa !54 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !53
  %.not236 = icmp eq ptr %i.cs, %i.cu
  br i1 %.not236, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.cv = load ptr, ptr %i.h, align 8, !tbaa !27
  tail call void %i.cv(ptr noundef %3, ptr noundef %i.cs) #11
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %bb.az
  %i.cw = load ptr, ptr %i.h, align 8, !tbaa !27
  tail call void %i.cw(ptr noundef %3, ptr noundef nonnull %i.bc) #11
  br label %.thread297

bb.bd:                                            ; preds = %bb.ae
  store ptr %i.be, ptr %i.b, align 8, !tbaa !50
  %.not226 = icmp eq ptr %i.be, null
  br i1 %.not226, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.cx = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store ptr null, ptr %i.cx, align 8, !tbaa !51
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  store ptr null, ptr %i.g, align 8, !tbaa !62
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.not228 = icmp eq ptr %i.k, %i.j
  %or.cond318 = or i1 %.not242, %.not228
  br i1 %or.cond318, label %.thread305, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.cy = load ptr, ptr %i.h, align 8, !tbaa !27
  tail call void %i.cy(ptr noundef %3, ptr noundef nonnull %i.k) #11
  br label %.thread305

.thread305:                                       ; preds = %bb.bg, %bb.bh
  %i.cz = load ptr, ptr %i.h, align 8, !tbaa !27
  tail call void %i.cz(ptr noundef %3, ptr noundef nonnull %.0186) #11
  br label %.thread297

.sink.split390:                                   ; preds = %bb.al, %bb.ai
  %.sink = phi ptr [ %.0186, %bb.ai ], [ %i.cc, %bb.al ]
  %i.da = load ptr, ptr %i.h, align 8, !tbaa !27
  tail call void %i.da(ptr noundef nonnull %3, ptr noundef %.sink) #11
  br label %bb.bi

bb.bi:                                            ; preds = %.sink.split390, %bb.al
  %i.db = load ptr, ptr %i.h, align 8, !tbaa !27
  tail call void %i.db(ptr noundef nonnull %3, ptr noundef nonnull %i.bc) #11
  br label %.critedge

.thread301:                                       ; preds = %.lr.ph, %bb.ad, %bb.y, %bb.e, %bb.x, %bb.d, %bb.aa
  %i.dc = getelementptr inbounds nuw i8, ptr %.0186, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !55 ; 3 uses
  %.not255 = icmp eq ptr %i.dd, null
  br i1 %.not255, label %.thread309, label %bb.bj

bb.bj:                                            ; preds = %.thread301
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  store ptr %.0186, ptr %i.de, align 8, !tbaa !51
  br label %.thread297

.thread309:                                       ; preds = %.thread301
  store ptr %.0186, ptr %i.g, align 8, !tbaa !62
  br label %.critedge

.thread297:                                       ; preds = %bb.ar, %bb.bc, %bb.o, %bb.bj, %.thread305
  %.6192 = phi ptr [ %i.be, %.thread305 ], [ %i.v, %bb.o ], [ %i.dd, %bb.bj ], [ %i.be, %bb.bc ], [ %i.be, %bb.ar ] ; 2 uses
  %.not256 = icmp eq ptr %.6192, null
  br i1 %.not256, label %.critedge, label %bb.d, !llvm.loop !63

.critedge:                                        ; preds = %.thread297, %bb.w, %bb.v, %uriIsHostSetW.exit.thread, %.thread309, %bb.bi, %bb.a, %bb.b
  %.7 = phi i32 [ 1, %bb.w ], [ 1, %bb.a ], [ 1, %bb.b ], [ 0, %bb.bi ], [ 1, %.thread309 ], [ 1, %uriIsHostSetW.exit.thread ], [ 1, %bb.v ], [ 1, %.thread297 ]
  ret i32 %.7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @uriIsHostSetW(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57
  %.not5 = icmp eq ptr %i.b, null
  br i1 %.not5, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !58
  %.not6 = icmp eq ptr %i.d, null
  br i1 %.not6, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !59
  %.not7 = icmp eq ptr %i.f, null
  br i1 %.not7, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !60
  %i.i = icmp ne ptr %i.h, null
  %i.j = zext i1 %i.i to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.a
  %i.k = phi i32 [ 0, %bb.a ], [ 1, %bb.d ], [ 1, %bb.c ], [ 1, %bb.b ], [ %i.j, %bb.e ]
  ret i32 %i.k
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @uriRemoveDotSegmentsAbsoluteW(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %uriRemoveDotSegmentsW.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.c = load i32, ptr %i.b, align 4, !tbaa !46
  %i.d = tail call i32 @uriRemoveDotSegmentsExW(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %i.c, ptr noundef %1)
  br label %uriRemoveDotSegmentsW.exit

uriRemoveDotSegmentsW.exit:                       ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.d, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define zeroext range(i8 0, 16) i8 @uriHexdigToIntW(i32 noundef %0) local_unnamed_addr #6 {
bb.a:
  %switch.tableidx = add i32 %0, -48              ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 55
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.uriHexdigToIntW, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %bb.b

bb.b:                                             ; preds = %switch.lookup, %bb.a
  %.0 = phi i8 [ 0, %bb.a ], [ %switch.load, %switch.lookup ]
  ret i8 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 48, 71) i32 @uriHexToLetterW(i32 noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp ult i32 %0, 15
  br i1 %i.a, label %switch.lookup, label %uriHexToLetterExW.exit

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.uriHexToLetterW, i64 %i.b
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %uriHexToLetterExW.exit

uriHexToLetterExW.exit:                           ; preds = %bb.a, %switch.lookup
  %.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 70, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 48, 103) i32 @uriHexToLetterExW(i32 noundef %0, i32 noundef %1) local_unnamed_addr #6 {
bb.a:
  switch i32 %0, label %bb.p [
    i32 0, label %bb.q
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.e
    i32 5, label %bb.f
    i32 6, label %bb.g
    i32 7, label %bb.h
    i32 8, label %bb.i
    i32 9, label %bb.j
    i32 10, label %bb.k
    i32 11, label %bb.l
    i32 12, label %bb.m
    i32 13, label %bb.n
    i32 14, label %bb.o
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  br label %bb.q

bb.d:                                             ; preds = %bb.a
  br label %bb.q

bb.e:                                             ; preds = %bb.a
  br label %bb.q

bb.f:                                             ; preds = %bb.a
  br label %bb.q

bb.g:                                             ; preds = %bb.a
  br label %bb.q

bb.h:                                             ; preds = %bb.a
  br label %bb.q

bb.i:                                             ; preds = %bb.a
  br label %bb.q

bb.j:                                             ; preds = %bb.a
  br label %bb.q

bb.k:                                             ; preds = %bb.a
  %i.a = icmp eq i32 %1, 1
  %i.b = select i1 %i.a, i32 65, i32 97
  br label %bb.q

bb.l:                                             ; preds = %bb.a
  %i.c = icmp eq i32 %1, 1
  %i.d = select i1 %i.c, i32 66, i32 98
  br label %bb.q

bb.m:                                             ; preds = %bb.a
  %i.e = icmp eq i32 %1, 1
  %i.f = select i1 %i.e, i32 67, i32 99
  br label %bb.q

bb.n:                                             ; preds = %bb.a
  %i.g = icmp eq i32 %1, 1
  %i.h = select i1 %i.g, i32 68, i32 100
  br label %bb.q

bb.o:                                             ; preds = %bb.a
  %i.i = icmp eq i32 %1, 1
  %i.j = select i1 %i.i, i32 69, i32 101
  br label %bb.q

bb.p:                                             ; preds = %bb.a
  %i.k = icmp eq i32 %1, 1
  %i.l = select i1 %i.k, i32 70, i32 102
  br label %bb.q

bb.q:                                             ; preds = %bb.a, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ %i.l, %bb.p ], [ %i.j, %bb.o ], [ 49, %bb.b ], [ 50, %bb.c ], [ 51, %bb.d ], [ 52, %bb.e ], [ 53, %bb.f ], [ 54, %bb.g ], [ 55, %bb.h ], [ 56, %bb.i ], [ 57, %bb.j ], [ %i.b, %bb.k ], [ %i.d, %bb.l ], [ %i.f, %bb.m ], [ %i.h, %bb.n ], [ 48, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @uriCopyPathW(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  br i1 %i.c, label %bb.b, label %.preheader

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  br label %bb.i

.preheader:                                       ; preds = %bb.a, %bb.h
  %.030 = phi ptr [ %i.k, %bb.h ], [ %i.b, %bb.a ] ; 2 uses
  %.028 = phi ptr [ %i.f, %bb.h ], [ null, %bb.a ] ; 4 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !37
  %i.f = tail call ptr %i.e(ptr noundef nonnull %2, i64 noundef 32) #11 ; 7 uses
  %.not34 = icmp eq ptr %i.f, null
  br i1 %.not34, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.preheader
  %.not = icmp eq ptr %.028, null
  br i1 %.not, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.028, i64 16
  store ptr null, ptr %i.g, align 8, !tbaa !55
  br label %bb.j

bb.e:                                             ; preds = %.preheader
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %.030, i64 16, i1 false), !tbaa.struct !64
  %i.h = icmp eq ptr %.028, null
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr %i.f, ptr %i.d, align 8, !tbaa !50
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %.028, i64 16
  store ptr %i.f, ptr %i.i, align 8, !tbaa !55
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %.030, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !55   ; 2 uses
  %.not35 = icmp eq ptr %i.k, null
  br i1 %.not35, label %.thread38, label %.preheader, !llvm.loop !65

.thread38:                                        ; preds = %bb.h
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.f, ptr %i.l, align 8, !tbaa !62
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr null, ptr %i.m, align 8, !tbaa !55
  br label %bb.i

bb.i:                                             ; preds = %.thread38, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.o = load i32, ptr %i.n, align 8, !tbaa !66
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 %i.o, ptr %i.p, align 8, !tbaa !66
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.c, %bb.i
  %.2 = phi i32 [ 1, %bb.i ], [ 0, %bb.c ], [ 0, %bb.d ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @uriCopyAuthorityW(ptr nofree noundef writeonly captures(none) initializes((16, 56)) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa.struct !64
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !58
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %2, align 8, !tbaa !37
  %i.h = tail call ptr %i.g(ptr noundef nonnull %2, i64 noundef 4) #11 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.h, ptr %i.i, align 8, !tbaa !58
  %i.j = icmp eq ptr %i.h, null
  br i1 %i.j, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !58
  %i.l = load i32, ptr %i.k, align 1, !tbaa !23
  store i32 %i.l, ptr %i.h, align 1, !tbaa !23
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !59
  %.not32 = icmp eq ptr %i.o, null
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  br i1 %.not32, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr %i.p, align 8, !tbaa !58
  %i.q = load ptr, ptr %2, align 8, !tbaa !37
  %i.r = tail call ptr %i.q(ptr noundef nonnull %2, i64 noundef 16) #11 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.r, ptr %i.s, align 8, !tbaa !59
  %i.t = icmp eq ptr %i.r, null
  br i1 %i.t, label %bb.i, label %bb.f
end_hunk_2
