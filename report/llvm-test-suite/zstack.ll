begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.op_def = type { ptr, ptr }
%struct.ref_s = type { %union.v, i16, i16 }
%union.v = type { i64 }

@osp_nargs = external local_unnamed_addr global [6 x ptr], align 16
@osp = external local_unnamed_addr global ptr, align 8
@ostop = external local_unnamed_addr global ptr, align 8
@osbot = external local_unnamed_addr global ptr, align 8
@zstack_op_init.my_defs = internal global [10 x %struct.op_def] [%struct.op_def { ptr @.str, ptr @zclear_stack }, %struct.op_def { ptr @.str.1, ptr @zcleartomark }, %struct.op_def { ptr @.str.2, ptr @zcount }, %struct.op_def { ptr @.str.3, ptr @zcounttomark }, %struct.op_def { ptr @.str.4, ptr @zdup }, %struct.op_def { ptr @.str.5, ptr @zexch }, %struct.op_def { ptr @.str.6, ptr @zindex }, %struct.op_def { ptr @.str.7, ptr @zpop }, %struct.op_def { ptr @.str.8, ptr @zroll }, %struct.op_def zeroinitializer], align 16
@.str = private unnamed_addr constant [7 x i8] c"0clear\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"0cleartomark\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"0count\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"0counttomark\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"1dup\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"2exch\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"2index\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"1pop\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"2roll\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -17, 1) i32 @zpop(ptr noundef readnone captures(address) %0) #0 {
bb.a:
  %i.a = load ptr, ptr @osp_nargs, align 16, !tbaa !8
  %i.b = icmp ult ptr %0, %i.a
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @osp, align 8, !tbaa !8
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -16
  store ptr %i.d, ptr @osp, align 8, !tbaa !8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -17, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -17, 1) i32 @zexch(ptr noundef captures(address) %0) #1 {
bb.a:
  %1 = alloca %struct.ref_s, align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @osp_nargs, i64 8), align 8, !tbaa !8
  %i.b = icmp ult ptr %0, %i.a
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %0, i64 -16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !11
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -17, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -17, 1) i32 @zdup(ptr noundef %0) #3 {
bb.a:
  %i.a = load ptr, ptr @osp_nargs, align 16, !tbaa !8
  %i.b = icmp ult ptr %0, %i.a
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.c, ptr @osp, align 8, !tbaa !8
  %i.d = load ptr, ptr @ostop, align 8, !tbaa !8
  %i.e = icmp ugt ptr %i.c, %i.d
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr %0, ptr @osp, align 8, !tbaa !8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !11
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0 = phi i32 [ 0, %bb.d ], [ -16, %bb.c ], [ -17, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -20, 1) i32 @zindex(ptr noundef %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8, !tbaa !15
  %i.c = and i16 %i.b, 252
  %i.d = icmp eq i16 %i.c, 20
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %0, align 8, !tbaa !12     ; 2 uses
  %i.f = load ptr, ptr @osbot, align 8, !tbaa !8
  %i.g = ptrtoint ptr %0 to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 4
  %.not = icmp ult i64 %i.e, %i.j
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = xor i64 %i.e, -1
  %sext = shl i64 %i.k, 32
  %i.l = ashr exact i64 %sext, 28
  %i.m = getelementptr inbounds i8, ptr %0, i64 %i.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 16, i1 false), !tbaa.struct !11
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ -20, %bb.a ], [ 0, %bb.c ], [ -15, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -20, 1) i32 @zroll(ptr noundef %0) #4 {
bb.a:
  %1 = alloca %struct.ref_s, align 8              ; 4 uses
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16 ; 2 uses
  %i.b = getelementptr inbounds i8, ptr %0, i64 -8
  %i.c = load i16, ptr %i.b, align 8, !tbaa !15
  %i.d = and i16 %i.c, 252
  %i.e = icmp eq i16 %i.d, 20
  br i1 %i.e, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i16, ptr %i.f, align 8, !tbaa !15
  %i.h = and i16 %i.g, 252
  %i.i = icmp eq i16 %i.h, 20
  br i1 %i.i, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %i.a, align 8, !tbaa !12   ; 3 uses
  %i.k = load ptr, ptr @osbot, align 8, !tbaa !8
  %i.l = ptrtoint ptr %i.a to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = ashr exact i64 %i.n, 4
  %i.p = icmp ugt i64 %i.j, %i.o
  br i1 %i.p, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = trunc i64 %i.j to i32                    ; 6 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr @osp, align 8, !tbaa !8
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -32
  store ptr %i.t, ptr @osp, align 8, !tbaa !8
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.u = load i64, ptr %0, align 8, !tbaa !12
  %sext = shl i64 %i.j, 32
  %i.v = ashr exact i64 %sext, 32                 ; 2 uses
  %i.w = srem i64 %i.u, %i.v                      ; 3 uses
  %i.x = trunc nsw i64 %i.w to i32                ; 2 uses
  %i.y = load ptr, ptr @osp, align 8, !tbaa !8
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -32
  store ptr %i.z, ptr @osp, align 8, !tbaa !8
  %i.aa = icmp slt i64 %i.w, 0
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ab = add nsw i32 %i.x, %i.q
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ac = icmp eq i64 %i.w, 0
  br i1 %i.ac, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.039 = phi i32 [ %i.ab, %bb.g ], [ %i.x, %bb.h ]
  %i.ad = sub i32 %i.q, %.039                     ; 2 uses
  %i.ae = sub nsw i64 0, %i.v
  %i.af = getelementptr [16 x i8], ptr %0, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.af, i64 -16    ; 4 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  %indvars.iv = phi i64 [ 0, %bb.i ], [ %indvars.iv.next, %._crit_edge ] ; 7 uses
  %.03750 = phi i32 [ %i.q, %bb.i ], [ %.lcssa, %._crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %indvars.iv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false), !tbaa.struct !11
  %i.ai = add nsw i32 %.03750, -1                 ; 2 uses
  %i.aj = trunc i64 %indvars.iv to i32
  %i.ak = add i32 %i.ad, %i.aj
  %i.al = srem i32 %i.ak, %i.q                    ; 2 uses
  %i.am = zext i32 %i.al to i64
  %.not4546 = icmp eq i64 %indvars.iv, %i.am
  br i1 %.not4546, label %.._crit_edge_crit_edge, label %.lr.ph.preheader

.._crit_edge_crit_edge:                           ; preds = %bb.j
  %sext57 = shl nuw i64 %indvars.iv, 32
  %.pre = ashr exact i64 %sext57, 32
  br label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.j
  %i.an = trunc nuw nsw i64 %indvars.iv to i32
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.ao = phi i32 [ %i.aw, %.lr.ph ], [ %i.al, %.lr.ph.preheader ] ; 3 uses
  %i.ap = phi i32 [ %i.au, %.lr.ph ], [ %i.ai, %.lr.ph.preheader ]
  %.03647 = phi i32 [ %i.ao, %.lr.ph ], [ %i.an, %.lr.ph.preheader ]
  %i.aq = sext i32 %.03647 to i64
  %i.ar = getelementptr inbounds [16 x i8], ptr %i.ag, i64 %i.aq
  %i.as = sext i32 %i.ao to i64                   ; 2 uses
  %i.at = getelementptr inbounds [16 x i8], ptr %i.ag, i64 %i.as
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(16) %i.at, i64 16, i1 false), !tbaa.struct !11
  %i.au = add nsw i32 %i.ap, -1                   ; 2 uses
  %i.av = add nsw i32 %i.ad, %i.ao
  %i.aw = srem i32 %i.av, %i.q                    ; 2 uses
  %i.ax = zext i32 %i.aw to i64
  %.not45 = icmp eq i64 %indvars.iv, %i.ax
  br i1 %.not45, label %._crit_edge, label %.lr.ph, !llvm.loop !17

._crit_edge:                                      ; preds = %.lr.ph, %.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.._crit_edge_crit_edge ], [ %i.as, %.lr.ph ]
  %.lcssa = phi i32 [ %i.ai, %.._crit_edge_crit_edge ], [ %i.au, %.lr.ph ] ; 2 uses
  %i.ay = getelementptr inbounds [16 x i8], ptr %i.ag, i64 %.pre-phi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %.not = icmp eq i32 %.lcssa, 0
  br i1 %.not, label %.loopexit, label %bb.j, !llvm.loop !19

.loopexit:                                        ; preds = %._crit_edge, %bb.h, %bb.c, %bb.b, %bb.a, %bb.e
  %.0 = phi i32 [ -20, %bb.b ], [ 0, %bb.e ], [ 0, %bb.h ], [ -15, %bb.c ], [ -20, %bb.a ], [ 0, %._crit_edge ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @zclear_stack(ptr readnone captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr @osbot, align 8, !tbaa !8
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -16
  store ptr %i.b, ptr @osp, align 8, !tbaa !8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -16, 1) i32 @zcount(ptr noundef %0) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr @osp, align 8, !tbaa !8
  %i.b = load ptr, ptr @ostop, align 8, !tbaa !8
  %i.c = icmp ugt ptr %i.a, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %0, ptr @osp, align 8, !tbaa !8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @osbot, align 8, !tbaa !8
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 4
  store i64 %i.h, ptr %i.a, align 8, !tbaa !12
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 20, ptr %i.i, align 8, !tbaa !15
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ -16, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -24, 1) i32 @zcleartomark(ptr noundef %0) #6 {
bb.a:
  %i.a = load ptr, ptr @osbot, align 8, !tbaa !8  ; 2 uses
  %.not6 = icmp ult ptr %0, %i.a
  br i1 %.not6, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.07 = phi ptr [ %i.f, %bb.c ], [ %0, %bb.a ]   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.07, i64 8
  %i.c = load i16, ptr %i.b, align 8, !tbaa !15
  %i.d = and i16 %i.c, 252
  %i.e = icmp eq i16 %i.d, 24
  %i.f = getelementptr inbounds i8, ptr %.07, i64 -16 ; 3 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  store ptr %i.f, ptr @osp, align 8, !tbaa !8
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph
  %.not = icmp ult ptr %i.f, %i.a
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !20

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.04 = phi i32 [ 0, %bb.b ], [ -24, %bb.a ], [ -24, %bb.c ]
  ret i32 %.04
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -24, 1) i32 @zcounttomark(ptr noundef %0) #4 {
bb.a:
  %i.a = load ptr, ptr @osbot, align 8, !tbaa !8  ; 2 uses
  %.not12 = icmp ult ptr %0, %i.a
  br i1 %.not12, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %.013 = phi ptr [ %i.o, %bb.e ], [ %0, %bb.a ]  ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.013, i64 8
  %i.c = load i16, ptr %i.b, align 8, !tbaa !15
  %i.d = and i16 %i.c, 252
  %i.e = icmp eq i16 %i.d, 24
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.f, ptr @osp, align 8, !tbaa !8
  %i.g = load ptr, ptr @ostop, align 8, !tbaa !8
  %i.h = icmp ugt ptr %i.f, %i.g
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr %0, ptr @osp, align 8, !tbaa !8
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %.013 to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 4
  %i.m = add nsw i64 %i.l, -1
  store i64 %i.m, ptr %i.f, align 8, !tbaa !12
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 20, ptr %i.n, align 8, !tbaa !15
  br label %.loopexit

bb.e:                                             ; preds = %.lr.ph
  %i.o = getelementptr inbounds i8, ptr %.013, i64 -16 ; 2 uses
  %.not = icmp ult ptr %i.o, %i.a
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !21

.loopexit:                                        ; preds = %bb.e, %bb.a, %bb.d, %bb.c
  %.09 = phi i32 [ -16, %bb.c ], [ 0, %bb.d ], [ -24, %bb.a ], [ -24, %bb.e ]
  ret i32 %.09
}

; Function Attrs: nounwind uwtable
define dso_local void @zstack_op_init() local_unnamed_addr #7 {
bb.a:
  %i.a = tail call i32 (ptr, ...) @z_op_init(ptr noundef nonnull @zstack_op_init.my_defs) #9 ; 0 uses
  ret void
}

declare i32 @z_op_init(...) local_unnamed_addr #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 _ZTS5ref_s", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{i64 0, i64 8, !12, i64 8, i64 2, !13, i64 10, i64 2, !13}
!12 = !{!6, !6, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"short", !6, i64 0}
!15 = !{!16, !14, i64 8}
!16 = !{!"ref_s", !6, i64 0, !14, i64 8, !14, i64 10}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = distinct !{!19, !18}
!20 = distinct !{!20, !18}
!21 = distinct !{!21, !18}
end_hunk_0
