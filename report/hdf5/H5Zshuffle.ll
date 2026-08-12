begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.H5Z_class2_t = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [8 x i8] c"shuffle\00", align 1
@H5Z_SHUFFLE = local_unnamed_addr constant [1 x %struct.H5Z_class2_t] [%struct.H5Z_class2_t { i32 1, i32 2, i32 1, i32 1, ptr @.str, ptr null, ptr @H5Z__set_local_shuffle, ptr @H5Z__filter_shuffle }], align 16
@H5Z_init_g = external local_unnamed_addr global i8, align 1
@H5_libterm_g = external local_unnamed_addr global i8, align 1
@H5P_CLS_DATASET_CREATE_ID_g = external local_unnamed_addr global i64, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"/opt-bench/work/hdf5/hdf5/src/H5Zshuffle.c\00", align 1
@__func__.H5Z__set_local_shuffle = private unnamed_addr constant [23 x i8] c"H5Z__set_local_shuffle\00", align 1
@H5E_ID_g = external local_unnamed_addr global i64, align 8
@H5E_BADID_g = external local_unnamed_addr global i64, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"can't find object for ID\00", align 1
@H5E_ARGS_g = external local_unnamed_addr global i64, align 8
@H5E_BADTYPE_g = external local_unnamed_addr global i64, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"not a datatype\00", align 1
@H5E_PLINE_g = external local_unnamed_addr global i64, align 8
@H5E_CANTGET_g = external local_unnamed_addr global i64, align 8
@.str.4 = private unnamed_addr constant [29 x i8] c"can't get shuffle parameters\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"bad datatype size\00", align 1
@H5E_CANTSET_g = external local_unnamed_addr global i64, align 8
@.str.6 = private unnamed_addr constant [35 x i8] c"can't set local shuffle parameters\00", align 1
@__func__.H5Z__filter_shuffle = private unnamed_addr constant [20 x i8] c"H5Z__filter_shuffle\00", align 1
@H5E_BADVALUE_g = external local_unnamed_addr global i64, align 8
@.str.7 = private unnamed_addr constant [27 x i8] c"invalid shuffle parameters\00", align 1
@H5E_RESOURCE_g = external local_unnamed_addr global i64, align 8
@H5E_NOSPACE_g = external local_unnamed_addr global i64, align 8
@.str.8 = private unnamed_addr constant [44 x i8] c"memory allocation failed for shuffle buffer\00", align 1

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @H5Z__set_local_shuffle(i64 noundef %0, i64 noundef %1, i64 %2) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca [1 x i32], align 4                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store i64 0, ptr %i.b, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  %i.d = load i8, ptr @H5Z_init_g, align 1, !tbaa !10, !range !12, !noundef !13
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = load i8, ptr @H5_libterm_g, align 1, !range !12
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = xor i1 %i.g, true
  %i.i = select i1 %i.e, i1 true, i1 %i.h
  br i1 %i.i, label %bb.b, label %bb.l, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.j = load i64, ptr @H5P_CLS_DATASET_CREATE_ID_g, align 8, !tbaa !8
  %i.k = tail call ptr @H5P_object_verify(i64 noundef %0, i64 noundef %i.j, i1 noundef zeroext false) #4 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = load i64, ptr @H5E_ID_g, align 8, !tbaa !8
  %i.n = load i64, ptr @H5E_BADID_g, align 8, !tbaa !8
  %i.o = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Z__set_local_shuffle, i32 noundef 68, i64 noundef %i.m, i64 noundef %i.n, ptr noundef nonnull @.str.2) #4 ; 0 uses
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.p = tail call ptr @H5I_object_verify(i64 noundef %1, i32 noundef 3) #4 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !8
  %i.s = load i64, ptr @H5E_BADTYPE_g, align 8, !tbaa !8
  %i.t = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Z__set_local_shuffle, i32 noundef 72, i64 noundef %i.r, i64 noundef %i.s, ptr noundef nonnull @.str.3) #4 ; 0 uses
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.u = call i32 @H5P_get_filter_by_id(ptr noundef nonnull %i.k, i32 noundef 2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i64 noundef 0, ptr noundef null, ptr noundef null) #4
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = load i64, ptr @H5E_PLINE_g, align 8, !tbaa !8
  %i.x = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !8
  %i.y = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Z__set_local_shuffle, i32 noundef 77, i64 noundef %i.w, i64 noundef %i.x, ptr noundef nonnull @.str.4) #4 ; 0 uses
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.z = call i64 @H5T_get_size(ptr noundef nonnull %i.p) #4
  %i.aa = trunc i64 %i.z to i32                   ; 2 uses
  store i32 %i.aa, ptr %i.c, align 4, !tbaa !15
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ac = load i64, ptr @H5E_PLINE_g, align 8, !tbaa !8
  %i.ad = load i64, ptr @H5E_BADTYPE_g, align 8, !tbaa !8
  %i.ae = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Z__set_local_shuffle, i32 noundef 81, i64 noundef %i.ac, i64 noundef %i.ad, ptr noundef nonnull @.str.5) #4 ; 0 uses
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.af = load i32, ptr %i.a, align 4, !tbaa !15
  %i.ag = call i32 @H5P_modify_filter(ptr noundef nonnull %i.k, i32 noundef 2, i32 noundef %i.af, i64 noundef 1, ptr noundef nonnull %i.c) #4
  %i.ah = icmp slt i32 %i.ag, 0
  br i1 %i.ah, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ai = load i64, ptr @H5E_PLINE_g, align 8, !tbaa !8
  %i.aj = load i64, ptr @H5E_CANTSET_g, align 8, !tbaa !8
  %i.ak = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Z__set_local_shuffle, i32 noundef 86, i64 noundef %i.ai, i64 noundef %i.aj, ptr noundef nonnull @.str.6) #4 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.c, %bb.e, %bb.g, %bb.i, %bb.k, %bb.j, %bb.a
  %.0 = phi i32 [ -1, %bb.c ], [ -1, %bb.e ], [ -1, %bb.g ], [ -1, %bb.i ], [ -1, %bb.k ], [ 0, %bb.j ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal noundef i64 @H5Z__filter_shuffle(i32 noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef captures(none) %5) #0 {
bb.a:
  %i.a = load i8, ptr @H5Z_init_g, align 1, !tbaa !10, !range !12, !noundef !13
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !12
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.ag, !prof !14

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %1, 1
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %2, align 4, !tbaa !15     ; 5 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.i = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !8
  %i.j = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !8
  %i.k = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Z__filter_shuffle, i32 noundef 127, i64 noundef %i.i, i64 noundef %i.j, ptr noundef nonnull @.str.7) #4 ; 0 uses
  br label %bb.ag

bb.e:                                             ; preds = %bb.c
  %i.l = zext i32 %i.g to i64                     ; 20 uses
  %i.m = udiv i64 %3, %i.l                        ; 5 uses
  %i.n = urem i64 %3, %i.l                        ; 4 uses
  %i.o = icmp ne i32 %i.g, 1
  %i.p = icmp ugt i64 %i.m, 1
  %or.cond = and i1 %i.o, %i.p
  br i1 %or.cond, label %bb.f, label %bb.ag

bb.f:                                             ; preds = %bb.e
  %i.q = tail call noalias ptr @malloc(i64 noundef %3) #5 ; 4 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.s = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !8
  %i.t = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !8
  %i.u = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Z__filter_shuffle, i32 noundef 142, i64 noundef %i.s, i64 noundef %i.t, ptr noundef nonnull @.str.8) #4 ; 0 uses
  br label %bb.ag

bb.h:                                             ; preds = %bb.f
  %i.v = and i32 %0, 256
  %.not161 = icmp eq i32 %i.v, 0
  br i1 %.not161, label %.preheader, label %bb.i

.preheader:                                       ; preds = %bb.h
  %i.w = add i64 %i.m, 7
  %i.x = lshr i64 %i.w, 3                         ; 8 uses
  %i.y = and i64 %i.m, 7
  br label %.preheader.split

bb.i:                                             ; preds = %bb.h
  %i.z = load ptr, ptr %5, align 8, !tbaa !16
  %i.aa = add i64 %i.m, 7
  %i.ab = lshr i64 %i.aa, 3                       ; 8 uses
  %i.ac = and i64 %i.m, 7
  br label %.split

.split:                                           ; preds = %bb.i, %bb.r
  %.0124172 = phi i64 [ %i.bd, %bb.r ], [ 0, %bb.i ] ; 2 uses
  %.0126171 = phi ptr [ %i.az, %bb.r ], [ %i.z, %bb.i ] ; 8 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 %.0124172 ; 8 uses
  switch i64 %i.ac, label %default.unreachable [
    i64 0, label %bb.j
    i64 7, label %bb.k
    i64 6, label %bb.l
    i64 5, label %bb.m
    i64 4, label %bb.n
    i64 3, label %bb.o
    i64 2, label %bb.p
    i64 1, label %bb.q
  ]

bb.j:                                             ; preds = %.split, %bb.q
  %.1135 = phi ptr [ %i.ad, %.split ], [ %i.bb, %bb.q ] ; 2 uses
  %.1127 = phi ptr [ %.0126171, %.split ], [ %i.az, %bb.q ] ; 2 uses
  %.0115 = phi i64 [ %i.ab, %.split ], [ %i.bc, %bb.q ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.1127, i64 1
  %i.af = load i8, ptr %.1127, align 1, !tbaa !18
  store i8 %i.af, ptr %.1135, align 1, !tbaa !18
  %i.ag = getelementptr inbounds nuw i8, ptr %.1135, i64 %i.l
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.split
  %.2136 = phi ptr [ %i.ag, %bb.j ], [ %i.ad, %.split ] ; 2 uses
  %.2128 = phi ptr [ %i.ae, %bb.j ], [ %.0126171, %.split ] ; 2 uses
  %.1116 = phi i64 [ %.0115, %bb.j ], [ %i.ab, %.split ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.2128, i64 1
  %i.ai = load i8, ptr %.2128, align 1, !tbaa !18
  store i8 %i.ai, ptr %.2136, align 1, !tbaa !18
  %i.aj = getelementptr inbounds nuw i8, ptr %.2136, i64 %i.l
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.split
  %.3137 = phi ptr [ %i.aj, %bb.k ], [ %i.ad, %.split ] ; 2 uses
  %.3129 = phi ptr [ %i.ah, %bb.k ], [ %.0126171, %.split ] ; 2 uses
  %.2117 = phi i64 [ %.1116, %bb.k ], [ %i.ab, %.split ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.3129, i64 1
  %i.al = load i8, ptr %.3129, align 1, !tbaa !18
  store i8 %i.al, ptr %.3137, align 1, !tbaa !18
  %i.am = getelementptr inbounds nuw i8, ptr %.3137, i64 %i.l
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.split
  %.4138 = phi ptr [ %i.am, %bb.l ], [ %i.ad, %.split ] ; 2 uses
  %.4130 = phi ptr [ %i.ak, %bb.l ], [ %.0126171, %.split ] ; 2 uses
  %.3118 = phi i64 [ %.2117, %bb.l ], [ %i.ab, %.split ]
  %i.an = getelementptr inbounds nuw i8, ptr %.4130, i64 1
  %i.ao = load i8, ptr %.4130, align 1, !tbaa !18
  store i8 %i.ao, ptr %.4138, align 1, !tbaa !18
  %i.ap = getelementptr inbounds nuw i8, ptr %.4138, i64 %i.l
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.split
  %.5139 = phi ptr [ %i.ap, %bb.m ], [ %i.ad, %.split ] ; 2 uses
  %.5131 = phi ptr [ %i.an, %bb.m ], [ %.0126171, %.split ] ; 2 uses
  %.4119 = phi i64 [ %.3118, %bb.m ], [ %i.ab, %.split ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.5131, i64 1
  %i.ar = load i8, ptr %.5131, align 1, !tbaa !18
  store i8 %i.ar, ptr %.5139, align 1, !tbaa !18
  %i.as = getelementptr inbounds nuw i8, ptr %.5139, i64 %i.l
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.split
  %.6140 = phi ptr [ %i.as, %bb.n ], [ %i.ad, %.split ] ; 2 uses
  %.6132 = phi ptr [ %i.aq, %bb.n ], [ %.0126171, %.split ] ; 2 uses
  %.5120 = phi i64 [ %.4119, %bb.n ], [ %i.ab, %.split ]
  %i.at = getelementptr inbounds nuw i8, ptr %.6132, i64 1
  %i.au = load i8, ptr %.6132, align 1, !tbaa !18
  store i8 %i.au, ptr %.6140, align 1, !tbaa !18
  %i.av = getelementptr inbounds nuw i8, ptr %.6140, i64 %i.l
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.split
  %.7141 = phi ptr [ %i.av, %bb.o ], [ %i.ad, %.split ] ; 2 uses
  %.7133 = phi ptr [ %i.at, %bb.o ], [ %.0126171, %.split ] ; 2 uses
  %.6121 = phi i64 [ %.5120, %bb.o ], [ %i.ab, %.split ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.7133, i64 1
  %i.ax = load i8, ptr %.7133, align 1, !tbaa !18
  store i8 %i.ax, ptr %.7141, align 1, !tbaa !18
  %i.ay = getelementptr inbounds nuw i8, ptr %.7141, i64 %i.l
  br label %bb.q

default.unreachable:                              ; preds = %.split
  unreachable

bb.q:                                             ; preds = %.split, %bb.p
  %.8142 = phi ptr [ %i.ay, %bb.p ], [ %i.ad, %.split ] ; 2 uses
  %.8 = phi ptr [ %i.aw, %bb.p ], [ %.0126171, %.split ] ; 2 uses
  %.7122 = phi i64 [ %.6121, %bb.p ], [ %i.ab, %.split ]
  %i.az = getelementptr inbounds nuw i8, ptr %.8, i64 1 ; 3 uses
  %i.ba = load i8, ptr %.8, align 1, !tbaa !18
  store i8 %i.ba, ptr %.8142, align 1, !tbaa !18
  %i.bb = getelementptr inbounds nuw i8, ptr %.8142, i64 %i.l ; 2 uses
  %i.bc = add i64 %.7122, -1                      ; 2 uses
  %.not165 = icmp eq i64 %i.bc, 0
  br i1 %.not165, label %bb.r, label %bb.j, !llvm.loop !19

bb.r:                                             ; preds = %bb.q
  %i.bd = add nuw nsw i64 %.0124172, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.bd, %i.l
  br i1 %exitcond.not, label %bb.s, label %.split, !llvm.loop !21

bb.s:                                             ; preds = %bb.r
  %.not164 = icmp eq i64 %i.n, 0
  br i1 %.not164, label %bb.af, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.be = add i32 %i.g, -1
  %i.bf = zext i32 %i.be to i64
  %i.bg = sub nsw i64 0, %i.bf
  %i.bh = getelementptr inbounds i8, ptr %i.bb, i64 %i.bg
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bh, ptr nonnull align 1 %i.az, i64 %i.n, i1 false)
  br label %bb.af

.preheader.split:                                 ; preds = %.preheader, %bb.ac
  %.1125174 = phi i64 [ %i.cj, %bb.ac ], [ 0, %.preheader ] ; 2 uses
  %.9143173 = phi ptr [ %i.cg, %bb.ac ], [ %i.q, %.preheader ] ; 8 uses
  %i.bi = load ptr, ptr %5, align 8, !tbaa !16
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.1125174 ; 8 uses
  switch i64 %i.y, label %.preheader.split.unreachabledefault [
    i64 0, label %bb.u
    i64 7, label %bb.v
    i64 6, label %bb.w
    i64 5, label %bb.x
    i64 4, label %bb.y
    i64 3, label %bb.z
    i64 2, label %bb.aa
    i64 1, label %bb.ab
  ]

bb.u:                                             ; preds = %.preheader.split, %bb.ab
  %.10144 = phi ptr [ %.9143173, %.preheader.split ], [ %i.cg, %bb.ab ] ; 2 uses
  %.10 = phi ptr [ %i.bj, %.preheader.split ], [ %i.ch, %bb.ab ] ; 2 uses
  %.0 = phi i64 [ %i.x, %.preheader.split ], [ %i.ci, %bb.ab ]
  %i.bk = load i8, ptr %.10, align 1, !tbaa !18
  %i.bl = getelementptr inbounds nuw i8, ptr %.10144, i64 1
  store i8 %i.bk, ptr %.10144, align 1, !tbaa !18
  %i.bm = getelementptr inbounds nuw i8, ptr %.10, i64 %i.l
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.preheader.split
  %.11145 = phi ptr [ %i.bl, %bb.u ], [ %.9143173, %.preheader.split ] ; 2 uses
  %.11 = phi ptr [ %i.bm, %bb.u ], [ %i.bj, %.preheader.split ] ; 2 uses
  %.1 = phi i64 [ %.0, %bb.u ], [ %i.x, %.preheader.split ]
  %i.bn = load i8, ptr %.11, align 1, !tbaa !18
  %i.bo = getelementptr inbounds nuw i8, ptr %.11145, i64 1
  store i8 %i.bn, ptr %.11145, align 1, !tbaa !18
  %i.bp = getelementptr inbounds nuw i8, ptr %.11, i64 %i.l
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.preheader.split
  %.12146 = phi ptr [ %i.bo, %bb.v ], [ %.9143173, %.preheader.split ] ; 2 uses
  %.12 = phi ptr [ %i.bp, %bb.v ], [ %i.bj, %.preheader.split ] ; 2 uses
  %.2 = phi i64 [ %.1, %bb.v ], [ %i.x, %.preheader.split ]
  %i.bq = load i8, ptr %.12, align 1, !tbaa !18
  %i.br = getelementptr inbounds nuw i8, ptr %.12146, i64 1
  store i8 %i.bq, ptr %.12146, align 1, !tbaa !18
  %i.bs = getelementptr inbounds nuw i8, ptr %.12, i64 %i.l
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.preheader.split
  %.13147 = phi ptr [ %i.br, %bb.w ], [ %.9143173, %.preheader.split ] ; 2 uses
  %.13 = phi ptr [ %i.bs, %bb.w ], [ %i.bj, %.preheader.split ] ; 2 uses
  %.3 = phi i64 [ %.2, %bb.w ], [ %i.x, %.preheader.split ]
  %i.bt = load i8, ptr %.13, align 1, !tbaa !18
  %i.bu = getelementptr inbounds nuw i8, ptr %.13147, i64 1
  store i8 %i.bt, ptr %.13147, align 1, !tbaa !18
  %i.bv = getelementptr inbounds nuw i8, ptr %.13, i64 %i.l
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.preheader.split
  %.14148 = phi ptr [ %i.bu, %bb.x ], [ %.9143173, %.preheader.split ] ; 2 uses
  %.14 = phi ptr [ %i.bv, %bb.x ], [ %i.bj, %.preheader.split ] ; 2 uses
  %.4 = phi i64 [ %.3, %bb.x ], [ %i.x, %.preheader.split ]
  %i.bw = load i8, ptr %.14, align 1, !tbaa !18
  %i.bx = getelementptr inbounds nuw i8, ptr %.14148, i64 1
  store i8 %i.bw, ptr %.14148, align 1, !tbaa !18
  %i.by = getelementptr inbounds nuw i8, ptr %.14, i64 %i.l
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.preheader.split
  %.15149 = phi ptr [ %i.bx, %bb.y ], [ %.9143173, %.preheader.split ] ; 2 uses
  %.15 = phi ptr [ %i.by, %bb.y ], [ %i.bj, %.preheader.split ] ; 2 uses
  %.5 = phi i64 [ %.4, %bb.y ], [ %i.x, %.preheader.split ]
  %i.bz = load i8, ptr %.15, align 1, !tbaa !18
  %i.ca = getelementptr inbounds nuw i8, ptr %.15149, i64 1
  store i8 %i.bz, ptr %.15149, align 1, !tbaa !18
  %i.cb = getelementptr inbounds nuw i8, ptr %.15, i64 %i.l
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.preheader.split
  %.16150 = phi ptr [ %i.ca, %bb.z ], [ %.9143173, %.preheader.split ] ; 2 uses
  %.16 = phi ptr [ %i.cb, %bb.z ], [ %i.bj, %.preheader.split ] ; 2 uses
  %.6 = phi i64 [ %.5, %bb.z ], [ %i.x, %.preheader.split ]
  %i.cc = load i8, ptr %.16, align 1, !tbaa !18
  %i.cd = getelementptr inbounds nuw i8, ptr %.16150, i64 1
  store i8 %i.cc, ptr %.16150, align 1, !tbaa !18
  %i.ce = getelementptr inbounds nuw i8, ptr %.16, i64 %i.l
  br label %bb.ab

.preheader.split.unreachabledefault:              ; preds = %.preheader.split
  unreachable

bb.ab:                                            ; preds = %.preheader.split, %bb.aa
  %.17151 = phi ptr [ %i.cd, %bb.aa ], [ %.9143173, %.preheader.split ] ; 2 uses
  %.17 = phi ptr [ %i.ce, %bb.aa ], [ %i.bj, %.preheader.split ] ; 2 uses
  %.7 = phi i64 [ %.6, %bb.aa ], [ %i.x, %.preheader.split ]
  %i.cf = load i8, ptr %.17, align 1, !tbaa !18
  %i.cg = getelementptr inbounds nuw i8, ptr %.17151, i64 1 ; 3 uses
  store i8 %i.cf, ptr %.17151, align 1, !tbaa !18
  %i.ch = getelementptr inbounds nuw i8, ptr %.17, i64 %i.l ; 2 uses
  %i.ci = add i64 %.7, -1                         ; 2 uses
  %.not163 = icmp eq i64 %i.ci, 0
  br i1 %.not163, label %bb.ac, label %bb.u, !llvm.loop !22

bb.ac:                                            ; preds = %bb.ab
  %i.cj = add nuw nsw i64 %.1125174, 1            ; 2 uses
  %exitcond179.not = icmp eq i64 %i.cj, %i.l
  br i1 %exitcond179.not, label %bb.ad, label %.preheader.split, !llvm.loop !23

bb.ad:                                            ; preds = %bb.ac
  %.not162 = icmp eq i64 %i.n, 0
  br i1 %.not162, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ck = add i32 %i.g, -1
  %i.cl = zext i32 %i.ck to i64
  %i.cm = sub nsw i64 0, %i.cl
  %i.cn = getelementptr inbounds i8, ptr %i.ch, i64 %i.cm
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cg, ptr nonnull align 1 %i.cn, i64 %i.n, i1 false)
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae, %bb.s, %bb.t
  %i.co = load ptr, ptr %5, align 8, !tbaa !16
  %i.cp = tail call ptr @H5MM_xfree(ptr noundef %i.co) #4 ; 0 uses
  store ptr %i.q, ptr %5, align 8, !tbaa !16
  store i64 %3, ptr %4, align 8, !tbaa !8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.e, %bb.af, %bb.d, %bb.g, %bb.a
  %.0123 = phi i64 [ 0, %bb.d ], [ 0, %bb.g ], [ 0, %bb.a ], [ %3, %bb.af ], [ %3, %bb.e ]
  ret i64 %.0123
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @H5P_object_verify(i64 noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare i32 @H5E_printf_stack(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @H5I_object_verify(i64 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @H5P_get_filter_by_id(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @H5T_get_size(ptr noundef) local_unnamed_addr #2

declare i32 @H5P_modify_filter(ptr noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare ptr @H5MM_xfree(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="16384" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"long", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"_Bool", !6, i64 0}
!12 = !{i8 0, i8 2}
!13 = !{}
!14 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!15 = !{!5, !5, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"any pointer", !6, i64 0}
!18 = !{!6, !6, i64 0}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.mustprogress"}
!21 = distinct !{!21, !20}
!22 = distinct !{!22, !20}
!23 = distinct !{!23, !20}
end_hunk_0
