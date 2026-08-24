Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/ps_title?download=true
inline.NumInlined: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@save_argc = internal unnamed_addr global i32 0, align 4
@save_argv = internal unnamed_addr global ptr null, align 8
@environ = external local_unnamed_addr global ptr, align 8
@ps_buffer = internal unnamed_addr global ptr null, align 8
@ps_buffer_size = internal unnamed_addr global i64 0, align 8
@new_environ = internal unnamed_addr global ptr null, align 8
@frozen_environ = internal unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [8 x i8] c"Success\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Not available on this OS\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Not initialized correctly\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Buffer not contiguous\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Too long\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Windows error\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"Unknown error code\00", align 1
@ps_buffer_cur_len = internal unnamed_addr global i64 0, align 8
@empty_environ = internal global [1 x ptr] zeroinitializer, align 8
@switch.table.ps_title_errno = private unnamed_addr constant [6 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.4], align 8

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef ptr @save_ps_args(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  store i32 %0, ptr @save_argc, align 4, !tbaa !12
  store ptr %1, ptr @save_argv, align 8, !tbaa !13
  %i.a = icmp sgt i32 %0, 0                       ; 2 uses
  br i1 %i.a, label %bb.b, label %.preheader84

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %.pre = load ptr, ptr %1, align 8, !tbaa !17    ; 2 uses
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.pre) #11
  %i.d = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.c ; 2 uses
  %.not142 = icmp eq i32 %0, 1
  br i1 %.not142, label %.preheader84, label %.lr.ph.peel.next

.lr.ph.peel.next:                                 ; preds = %bb.b, %.lr.ph.peel.next
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.peel.next ], [ 1, %bb.b ] ; 2 uses
  %.06288 = phi ptr [ %i.i, %.lr.ph.peel.next ], [ %i.d, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %.06288, i64 1
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17   ; 3 uses
  %.not77 = icmp eq ptr %i.e, %i.g                ; 2 uses
  %i.h = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #11
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.h ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.j = icmp samesign ult i64 %indvars.iv.next, %i.b
  %i.k = select i1 %.not77, i1 %i.j, i1 false
  br i1 %i.k, label %.lr.ph.peel.next, label %._crit_edge, !llvm.loop !19

._crit_edge:                                      ; preds = %.lr.ph.peel.next
  br i1 %.not77, label %.preheader84, label %.thread

.preheader84:                                     ; preds = %bb.b, %bb.a, %._crit_edge
  %.062.lcssa145 = phi ptr [ %i.i, %._crit_edge ], [ %i.d, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.l = load ptr, ptr @environ, align 8, !tbaa !13 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !17   ; 3 uses
  %.not92 = icmp eq ptr %i.m, null                ; 2 uses
  br i1 %.not92, label %._crit_edge96, label %.lr.ph95

.lr.ph95:                                         ; preds = %.preheader84, %bb.d
  %indvars.iv117 = phi i64 [ %indvars.iv.next118, %bb.d ], [ 0, %.preheader84 ] ; 2 uses
  %i.n = phi ptr [ %i.t, %bb.d ], [ %i.m, %.preheader84 ] ; 3 uses
  %.16393 = phi ptr [ %.264, %bb.d ], [ %.062.lcssa145, %.preheader84 ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.16393, i64 1
  %i.p = icmp eq ptr %i.o, %i.n
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph95
  %i.q = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.n) #11
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.q
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph95, %bb.c
  %.264 = phi ptr [ %i.r, %bb.c ], [ %.16393, %.lr.ph95 ] ; 2 uses
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1 ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next118
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !17   ; 2 uses
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %._crit_edge96.loopexit, label %.lr.ph95, !llvm.loop !22

._crit_edge96.loopexit:                           ; preds = %bb.d
  %i.u = shl i64 %indvars.iv117, 3
  %i.v = add i64 %i.u, 16
  %i.w = and i64 %i.v, 34359738360
  br label %._crit_edge96

._crit_edge96:                                    ; preds = %._crit_edge96.loopexit, %.preheader84
  %.163.lcssa = phi ptr [ %.062.lcssa145, %.preheader84 ], [ %.264, %._crit_edge96.loopexit ]
  %.159.lcssa = phi i64 [ 8, %.preheader84 ], [ %i.w, %._crit_edge96.loopexit ] ; 2 uses
  %i.x = load ptr, ptr %1, align 8, !tbaa !17     ; 3 uses
  store ptr %i.x, ptr @ps_buffer, align 8, !tbaa !17
  %i.y = ptrtoint ptr %.163.lcssa to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 2 uses
  store i64 %i.aa, ptr @ps_buffer_size, align 8, !tbaa !23
  %i.ab = tail call noalias ptr @malloc(i64 noundef %.159.lcssa) #12 ; 6 uses
  store ptr %i.ab, ptr @new_environ, align 8, !tbaa !13
  %i.ac = tail call noalias ptr @malloc(i64 noundef %.159.lcssa) #12 ; 3 uses
  store ptr %i.ac, ptr @frozen_environ, align 8, !tbaa !13
  %i.ad = icmp ne ptr %i.ab, null
  %i.ae = icmp ne ptr %i.ac, null
  %or.cond = and i1 %i.ad, %i.ae
  br i1 %or.cond, label %.preheader83, label %.thread

.preheader83:                                     ; preds = %._crit_edge96
  br i1 %.not92, label %._crit_edge103, label %.lr.ph102

.lr.ph102:                                        ; preds = %.preheader83, %bb.e
  %indvars.iv120 = phi i64 [ %indvars.iv.next121, %bb.e ], [ 0, %.preheader83 ] ; 3 uses
  %i.af = phi ptr [ %i.aj, %bb.e ], [ %i.m, %.preheader83 ]
  %i.ag = tail call noalias ptr @strdup(ptr noundef nonnull %i.af) #13 ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv120
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !17
  %.not73 = icmp eq ptr %i.ag, null
  br i1 %.not73, label %.thread, label %bb.e

bb.e:                                             ; preds = %.lr.ph102
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1 ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next121
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !17 ; 2 uses
  %.not72 = icmp eq ptr %i.aj, null
  br i1 %.not72, label %._crit_edge103.loopexit, label %.lr.ph102, !llvm.loop !25

._crit_edge103.loopexit:                          ; preds = %bb.e
  %i.ak = shl i64 %indvars.iv120, 3
  %i.al = add i64 %i.ak, 16
  %i.am = and i64 %i.al, 34359738360
  br label %._crit_edge103

._crit_edge103:                                   ; preds = %._crit_edge103.loopexit, %.preheader83
  %.2.lcssa = phi i64 [ 8, %.preheader83 ], [ %i.am, %._crit_edge103.loopexit ]
  %.lcssa = phi i64 [ 0, %.preheader83 ], [ %indvars.iv.next121, %._crit_edge103.loopexit ]
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.lcssa
  store ptr null, ptr %i.an, align 8, !tbaa !17
  store ptr %i.ab, ptr @environ, align 8, !tbaa !13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ac, ptr noundef nonnull align 1 dereferenceable(1) %i.ab, i64 %.2.lcssa, i1 false)
  %i.ao = add nsw i32 %0, 1
  %i.ap = sext i32 %i.ao to i64
  %i.aq = shl nsw i64 %i.ap, 3
  %i.ar = tail call noalias ptr @malloc(i64 noundef %i.aq) #12 ; 7 uses
  %.not74 = icmp eq ptr %i.ar, null
  br i1 %.not74, label %.thread, label %.preheader

.preheader:                                       ; preds = %._crit_edge103
  br i1 %i.a, label %.lr.ph107.preheader, label %._crit_edge108

.lr.ph107.preheader:                              ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %.lr.ph107

bb.f:                                             ; preds = %.lr.ph107
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next124, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge108, label %.lr.ph107, !llvm.loop !26

.lr.ph107:                                        ; preds = %.lr.ph107.preheader, %bb.f
  %indvars.iv123 = phi i64 [ 0, %.lr.ph107.preheader ], [ %indvars.iv.next124, %bb.f ] ; 3 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv123
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !17
  %i.au = tail call noalias ptr @strdup(ptr noundef %i.at) #13 ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv123
  store ptr %i.au, ptr %i.av, align 8, !tbaa !17
  %.not75 = icmp eq ptr %i.au, null
  br i1 %.not75, label %bb.g, label %bb.f

bb.g:                                             ; preds = %.lr.ph107
  tail call void @free(ptr noundef nonnull %i.ar) #13
  br label %.thread

._crit_edge108:                                   ; preds = %bb.f, %.preheader
  %2 = sext i32 %0 to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %2
  store ptr null, ptr %i.aw, align 8, !tbaa !17
  %3 = load i32, ptr @save_argc, align 4, !tbaa !12 ; 3 uses
  %4 = icmp sgt i32 %3, 1
  br i1 %4, label %.lr.ph111, label %.loopexit

.lr.ph111:                                        ; preds = %._crit_edge108
  %i.ax = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.aa ; 2 uses
  %wide.trip.count129 = zext nneg i32 %3 to i64   ; 2 uses
  %i.ay = add nsw i64 %wide.trip.count129, -1     ; 2 uses
  %min.iters.check = icmp ult i32 %3, 5
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph111
  %n.vec = and i64 %i.ay, -4                      ; 3 uses
  %i.az = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %i.ax, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  store <2 x ptr> %broadcast.splat, ptr %i.bb, align 8, !tbaa !17
  store <2 x ptr> %broadcast.splat, ptr %i.bc, align 8, !tbaa !17
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !27

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ay, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph111, %middle.block
  %indvars.iv126.ph = phi i64 [ 1, %.lr.ph111 ], [ %i.az, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv126 = phi i64 [ %indvars.iv.next127, %scalar.ph ], [ %indvars.iv126.ph, %scalar.ph.preheader ] ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv126
  store ptr %i.ax, ptr %i.be, align 8, !tbaa !17
  %indvars.iv.next127 = add nuw nsw i64 %indvars.iv126, 1 ; 2 uses
  %exitcond130.not = icmp eq i64 %indvars.iv.next127, %wide.trip.count129
  br i1 %exitcond130.not, label %.loopexit, label %scalar.ph, !llvm.loop !30

.thread:                                          ; preds = %.lr.ph102, %._crit_edge103, %bb.g, %._crit_edge, %._crit_edge96
  store ptr null, ptr @save_argv, align 8, !tbaa !13
  store i32 0, ptr @save_argc, align 4, !tbaa !12
  store ptr null, ptr @ps_buffer, align 8, !tbaa !17
  store i64 0, ptr @ps_buffer_size, align 8, !tbaa !23
  br label %.loopexit

.loopexit:                                        ; preds = %scalar.ph, %middle.block, %._crit_edge108, %.thread
  %.067 = phi ptr [ %1, %.thread ], [ %i.ar, %._crit_edge108 ], [ %i.ar, %middle.block ], [ %i.ar, %scalar.ph ]
  ret ptr %.067
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strdup(ptr noundef readonly captures(none)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 0, 4) i32 @is_ps_title_available() local_unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr @save_argv, align 8, !tbaa !13
  %.not = icmp eq ptr %i.a, null
  %i.b = load ptr, ptr @ps_buffer, align 8
  %.not1 = icmp eq ptr %i.b, null
  %. = select i1 %.not1, i32 3, i32 0
  %.0 = select i1 %.not, i32 2, i32 %.
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull ptr @ps_title_errno(i32 noundef %0) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp ult i32 %0, 6
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.ps_title_errno, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.6, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 0, 6) i32 @set_ps_title(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = load i64, ptr @ps_buffer_size, align 8, !tbaa !23 ; 2 uses
  %.not = icmp ult i64 %1, %i.a
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @save_argv, align 8, !tbaa !13
  %.not.i = icmp eq ptr %i.b, null
  %i.c = load ptr, ptr @ps_buffer, align 8        ; 3 uses
  %.not1.i = icmp eq ptr %i.c, null
  %..i = select i1 %.not1.i, i32 3, i32 0
  %.0.i = select i1 %.not.i, i32 2, i32 %..i      ; 2 uses
  %.not9 = icmp eq i32 %.0.i, 0
  br i1 %.not9, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i64 %1, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %0, i64 %i.d, i1 false)
  store i64 %1, ptr @ps_buffer_cur_len, align 8, !tbaa !23
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %1
  %i.f = sub nuw i64 %i.a, %1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.e, i8 0, i64 %i.f, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.1 = phi i32 [ 5, %bb.a ], [ %.0.i, %bb.b ], [ 0, %bb.c ]
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 0, 4) i32 @get_ps_title(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #10 {
bb.a:
  %i.a = load ptr, ptr @save_argv, align 8, !tbaa !13
  %.not.i = icmp eq ptr %i.a, null
  %i.b = load ptr, ptr @ps_buffer, align 8        ; 2 uses
  %.not1.i = icmp eq ptr %i.b, null
  %..i = select i1 %.not1.i, i32 3, i32 0
  %.0.i = select i1 %.not.i, i32 2, i32 %..i      ; 2 uses
  %.not = icmp eq i32 %.0.i, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr @ps_buffer_cur_len, align 8, !tbaa !23
  store i64 %i.c, ptr %0, align 8, !tbaa !23
  store ptr %i.b, ptr %1, align 8, !tbaa !17
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i32 %.0.i
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define hidden void @cleanup_ps_args(ptr noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @save_argv, align 8, !tbaa !13
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr @save_argv, align 8, !tbaa !13
  store i32 0, ptr @save_argc, align 4, !tbaa !12
  %i.b = load ptr, ptr @frozen_environ, align 8, !tbaa !13 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17   ; 2 uses
  %.not1113 = icmp eq ptr %i.c, null
  br i1 %.not1113, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.b ]
  %i.d = phi ptr [ %i.f, %.lr.ph ], [ %i.c, %bb.b ]
  tail call void @free(ptr noundef nonnull %i.d) #13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !17   ; 2 uses
  %.not11 = icmp eq ptr %i.f, null
  br i1 %.not11, label %._crit_edge, label %.lr.ph, !llvm.loop !31

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  tail call void @free(ptr noundef nonnull %i.b) #13
  %i.g = load ptr, ptr @new_environ, align 8, !tbaa !13
  tail call void @free(ptr noundef %i.g) #13
  store ptr @empty_environ, ptr @environ, align 8, !tbaa !13
  %i.h = load ptr, ptr %0, align 8, !tbaa !17     ; 2 uses
  %.not1215 = icmp eq ptr %i.h, null
  br i1 %.not1215, label %._crit_edge19, label %.lr.ph18

.lr.ph18:                                         ; preds = %._crit_edge, %.lr.ph18
  %indvars.iv21 = phi i64 [ %indvars.iv.next22, %.lr.ph18 ], [ 0, %._crit_edge ]
  %i.i = phi ptr [ %i.k, %.lr.ph18 ], [ %i.h, %._crit_edge ]
  tail call void @free(ptr noundef nonnull %i.i) #13
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1 ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next22
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !17   ; 2 uses
  %.not12 = icmp eq ptr %i.k, null
  br i1 %.not12, label %._crit_edge19, label %.lr.ph18, !llvm.loop !32

._crit_edge19:                                    ; preds = %.lr.ph18, %._crit_edge
  tail call void @free(ptr noundef nonnull %0) #13
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge19, %bb.a
  ret void
}

attributes #0 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind willreturn memory(read) }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!8, !9, i64 0}
!8 = !{!"__libc_errno", !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!9, !9, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"p2 omnipotent char", !15, i64 0}
!15 = !{!"any p2 pointer", !16, i64 0}
!16 = !{!"any pointer", !10, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"p1 omnipotent char", !16, i64 0}
!19 = distinct !{!19, !20, !21}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!"llvm.loop.peeled.count", i32 1}
!22 = distinct !{!22, !20}
!23 = !{!24, !24, i64 0}
!24 = !{!"long", !10, i64 0}
!25 = distinct !{!25, !20}
!26 = distinct !{!26, !20}
!27 = distinct !{!27, !20, !28, !29}
!28 = !{!"llvm.loop.isvectorized", i32 1}
!29 = !{!"llvm.loop.unroll.runtime.disable"}
!30 = distinct !{!30, !20, !29, !28}
!31 = distinct !{!31, !20}
!32 = distinct !{!32, !20}
end_hunk_0
