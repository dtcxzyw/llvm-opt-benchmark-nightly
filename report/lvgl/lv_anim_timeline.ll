Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_anim_timeline?download=true
inline.NumInlined: 11
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._lv_anim_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union._lv_anim_path_para_t, i32, i32, i32, i8 }
%union._lv_anim_path_para_t = type { %struct.lv_anim_bezier3_para_t }
%struct.lv_anim_bezier3_para_t = type { i16, i16, i16, i16 }

; Function Attrs: nounwind uwtable
define nonnull ptr @lv_anim_timeline_create() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @lv_malloc_zeroed(i64 noundef 40) #6 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @lv_malloc_zeroed(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define void @lv_anim_timeline_delete(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %lv_anim_timeline_pause.exit

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

lv_anim_timeline_pause.exit:                      ; preds = %bb.a
  %i.a = tail call zeroext i1 @lv_anim_delete(ptr noundef nonnull %0, ptr noundef nonnull @anim_timeline_exec_cb) #6 ; 0 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !13
  tail call void @lv_free(ptr noundef %i.b) #6
  tail call void @lv_free(ptr noundef nonnull %0) #6
  ret void
}

; Function Attrs: nounwind uwtable
define void @lv_anim_timeline_pause(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 @lv_anim_delete(ptr noundef nonnull %0, ptr noundef nonnull @anim_timeline_exec_cb) #6 ; 0 uses
  ret void
}

declare void @lv_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @lv_anim_timeline_add(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !14
  %i.c = add i32 %i.b, 1                          ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !14
  %i.d = load ptr, ptr %0, align 8, !tbaa !13
  %i.e = zext i32 %i.c to i64
  %i.f = mul nuw nsw i64 %i.e, 144
  %i.g = tail call ptr @lv_realloc(ptr noundef %i.d, i64 noundef %i.f) #6 ; 3 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !13
  %.not12 = icmp eq ptr %i.g, null
  br i1 %.not12, label %.preheader13, label %bb.c

.preheader13:                                     ; preds = %bb.b, %.preheader13
  br label %.preheader13

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.a, align 8, !tbaa !14
  %i.i = add i32 %i.h, -1
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [144 x i8], ptr %i.g, i64 %i.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.k, ptr noundef nonnull align 8 dereferenceable(136) %2, i64 136, i1 false), !tbaa.struct !18
  %i.l = load ptr, ptr %0, align 8, !tbaa !13
  %i.m = load i32, ptr %i.a, align 8, !tbaa !14
  %i.n = add i32 %i.m, -1
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [144 x i8], ptr %i.l, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 136
  store i32 %1, ptr %i.q, align 8, !tbaa !21
  ret void
}

declare ptr @lv_realloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define i32 @lv_anim_timeline_start(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct._lv_anim_t, align 8         ; 12 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %.preheader33.i

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

.preheader33.i:                                   ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !14
  %.not3034.not.i = icmp eq i32 %i.b, 0
  br i1 %.not3034.not.i, label %lv_anim_timeline_get_playtime.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader33.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !13
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.preheader.i
  %i.c = phi ptr [ %.pre.i, %.lr.ph.preheader.i ], [ %i.f, %bb.b ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.b ] ; 3 uses
  %.01935.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %spec.select.i, %bb.b ]
  %i.d = getelementptr inbounds nuw [144 x i8], ptr %i.c, i64 %indvars.iv.i
  %i.e = tail call i32 @lv_anim_get_playtime(ptr noundef %i.d) #6 ; 2 uses
  %.not29.i = icmp eq i32 %i.e, -1
  br i1 %.not29.i, label %lv_anim_timeline_get_playtime.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.f = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %i.g = getelementptr inbounds nuw [144 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  %i.i = load i32, ptr %i.h, align 8, !tbaa !21
  %i.j = add i32 %i.i, %i.e
  %spec.select.i = tail call i32 @llvm.umax.i32(i32 %i.j, i32 %.01935.i) ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.k = load i32, ptr %i.a, align 8, !tbaa !14
  %i.l = zext i32 %i.k to i64
  %.not30.i = icmp samesign ult i64 %indvars.iv.next.i, %i.l
  br i1 %.not30.i, label %.lr.ph.i, label %lv_anim_timeline_get_playtime.exit, !llvm.loop !0

lv_anim_timeline_get_playtime.exit:               ; preds = %.lr.ph.i, %bb.b, %.preheader33.i
  %spec.select31.i = phi i32 [ 0, %.preheader33.i ], [ %spec.select.i, %bb.b ], [ -1, %.lr.ph.i ] ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !23
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.p = load i32, ptr %i.o, align 4, !tbaa !24
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !25   ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.t = load i8, ptr %i.s, align 8, !tbaa !26, !range !27, !noundef !28 ; 2 uses
  %i.u = trunc nuw i8 %i.t to i1                  ; 2 uses
  br i1 %i.u, label %bb.d, label %bb.c

bb.c:                                             ; preds = %lv_anim_timeline_get_playtime.exit
  %i.v = icmp eq i32 %i.r, 0
  br i1 %i.v, label %bb.e, label %.loopexit.thread50

bb.d:                                             ; preds = %lv_anim_timeline_get_playtime.exit
  %i.w = icmp eq i32 %i.r, %spec.select31.i
  br i1 %i.w, label %bb.e, label %.loopexit.thread

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.x = load i32, ptr %i.a, align 8, !tbaa !14
  %.not46 = icmp eq i32 %i.x, 0
  br i1 %.not46, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.e ] ; 3 uses
  %i.y = load ptr, ptr %0, align 8, !tbaa !13
  %i.z = getelementptr inbounds nuw [144 x i8], ptr %i.y, i64 %indvars.iv
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 140 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 4
  %i.ac = and i8 %i.ab, -2
  store i8 %i.ac, ptr %i.aa, align 4
  %i.ad = load ptr, ptr %0, align 8, !tbaa !13
  %i.ae = getelementptr inbounds nuw [144 x i8], ptr %i.ad, i64 %indvars.iv
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 140 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 4
  %i.ah = and i8 %i.ag, -3
  store i8 %i.ah, ptr %i.af, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ai = load i32, ptr %i.a, align 8, !tbaa !14
  %i.aj = zext i32 %i.ai to i64
  %i.ak = icmp samesign ult i64 %indvars.iv.next, %i.aj
  br i1 %i.ak, label %.lr.ph, label %.loopexit.loopexit, !llvm.loop !35

.loopexit.loopexit:                               ; preds = %.lr.ph
  %.pre = load i8, ptr %i.s, align 8, !tbaa !26, !range !27
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.e
  %i.al = phi i8 [ %.pre, %.loopexit.loopexit ], [ %i.t, %bb.e ]
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %.loopexit.thread, label %.loopexit.thread50

.loopexit.thread50:                               ; preds = %bb.c, %.loopexit
  %i.an = load i32, ptr %i.q, align 4, !tbaa !25
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %.sink.split, label %bb.f

.loopexit.thread:                                 ; preds = %bb.d, %.loopexit
  %i.ap = load i32, ptr %i.q, align 4, !tbaa !25
  %i.aq = icmp eq i32 %i.ap, %spec.select31.i
  br i1 %i.aq, label %.sink.split, label %bb.f

.sink.split:                                      ; preds = %.loopexit.thread, %.loopexit.thread50
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !29
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %.loopexit.thread50, %.loopexit.thread
  %.0 = phi i32 [ 0, %.loopexit.thread50 ], [ 0, %.loopexit.thread ], [ %i.as, %.sink.split ]
  %i.at = select i1 %i.u, i32 0, i32 %spec.select31.i ; 4 uses
  %2 = icmp ugt i32 %i.at, %i.r
  %3 = sub nuw i32 %i.at, %i.r
  %i.au = sub nuw i32 %i.r, %i.at
  %4 = select i1 %2, i32 %3, i32 %i.au
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #6
  call void @lv_anim_init(ptr noundef nonnull %1) #6
  call void @lv_anim_set_var(ptr noundef nonnull %1, ptr noundef nonnull %0) #6
  call void @lv_anim_set_exec_cb(ptr noundef nonnull %1, ptr noundef nonnull @anim_timeline_exec_cb) #6
  call void @lv_anim_set_values(ptr noundef nonnull %1, i32 noundef %i.r, i32 noundef %i.at) #6
  call void @lv_anim_set_duration(ptr noundef nonnull %1, i32 noundef %4) #6
  call void @lv_anim_set_delay(ptr noundef nonnull %1, i32 noundef %.0) #6
  call void @lv_anim_set_path_cb(ptr noundef nonnull %1, ptr noundef nonnull @anim_timeline_path_cb) #6
  call void @lv_anim_set_repeat_count(ptr noundef nonnull %1, i32 noundef %i.n) #6
  call void @lv_anim_set_repeat_delay(ptr noundef nonnull %1, i32 noundef %i.p) #6
  %i.av = call ptr @lv_anim_start(ptr noundef nonnull %1) #6 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  ret i32 %spec.select31.i
}

; Function Attrs: nounwind uwtable
define i32 @lv_anim_timeline_get_playtime(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %.preheader33

.preheader33:                                     ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !14
  %.not3034.not = icmp eq i32 %i.b, 0
  br i1 %.not3034.not, label %.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader33
  %.pre = load ptr, ptr %0, align 8, !tbaa !13
  br label %.lr.ph

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %i.c = phi ptr [ %.pre, %.lr.ph.preheader ], [ %i.f, %bb.b ]
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %.01935 = phi i32 [ 0, %.lr.ph.preheader ], [ %spec.select, %bb.b ]
  %i.d = getelementptr inbounds nuw [144 x i8], ptr %i.c, i64 %indvars.iv
  %i.e = tail call i32 @lv_anim_get_playtime(ptr noundef %i.d) #6 ; 2 uses
  %.not29 = icmp eq i32 %i.e, -1
  br i1 %.not29, label %.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.f = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %i.g = getelementptr inbounds nuw [144 x i8], ptr %i.f, i64 %indvars.iv
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  %i.i = load i32, ptr %i.h, align 8, !tbaa !21
  %i.j = add i32 %i.i, %i.e
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.j, i32 %.01935) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.k = load i32, ptr %i.a, align 8, !tbaa !14
  %i.l = zext i32 %i.k to i64
  %.not30 = icmp samesign ult i64 %indvars.iv.next, %i.l
  br i1 %.not30, label %.lr.ph, label %.thread, !llvm.loop !0

.thread:                                          ; preds = %bb.b, %.lr.ph, %.preheader33
  %spec.select31 = phi i32 [ 0, %.preheader33 ], [ -1, %.lr.ph ], [ %spec.select, %bb.b ]
  ret i32 %spec.select31
}

declare void @lv_anim_init(ptr noundef) local_unnamed_addr #2

declare void @lv_anim_set_var(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @lv_anim_set_exec_cb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @anim_timeline_exec_cb(ptr noundef initializes((12, 16)) %0, i32 noundef %1) #0 {
bb.a:
  tail call fastcc void @anim_timeline_set_act_time(ptr noundef %0, i32 noundef %1)
  ret void
}

declare void @lv_anim_set_values(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @lv_anim_set_duration(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @lv_anim_set_delay(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @lv_anim_set_path_cb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @anim_timeline_path_cb(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i32, ptr %i.a, align 8, !tbaa !30
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.d = load i32, ptr %i.c, align 4, !tbaa !31
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load i32, ptr %i.e, align 8, !tbaa !32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load i32, ptr %i.g, align 8, !tbaa !33
  %i.i = tail call i32 @lv_map(i32 noundef %i.b, i32 noundef 0, i32 noundef %i.d, i32 noundef %i.f, i32 noundef %i.h) #6
  ret i32 %i.i
}

declare void @lv_anim_set_repeat_count(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @lv_anim_set_repeat_delay(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @lv_anim_start(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @lv_anim_delete(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define void @lv_anim_timeline_set_reverse(ptr nofree noundef writeonly captures(address_is_null) %0, i1 noundef zeroext %1) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = zext i1 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.a, ptr %i.b, align 8, !tbaa !26
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define void @lv_anim_timeline_set_delay(ptr nofree noundef writeonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %1, ptr %i.a, align 4, !tbaa !29
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define void @lv_anim_timeline_set_repeat_count(ptr nofree noundef writeonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %1, ptr %i.a, align 8, !tbaa !23
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define void @lv_anim_timeline_set_repeat_delay(ptr nofree noundef writeonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %1, ptr %i.a, align 4, !tbaa !24
  ret void
}

; Function Attrs: nounwind uwtable
define void @lv_anim_timeline_set_progress(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %.preheader33.i

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

.preheader33.i:                                   ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !14
  %.not3034.not.i = icmp eq i32 %i.b, 0
  br i1 %.not3034.not.i, label %lv_anim_timeline_get_playtime.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader33.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !13
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.preheader.i
  %i.c = phi ptr [ %.pre.i, %.lr.ph.preheader.i ], [ %i.f, %bb.b ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.b ] ; 3 uses
  %.01935.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %spec.select.i, %bb.b ]
  %i.d = getelementptr inbounds nuw [144 x i8], ptr %i.c, i64 %indvars.iv.i
  %i.e = tail call i32 @lv_anim_get_playtime(ptr noundef %i.d) #6 ; 2 uses
  %.not29.i = icmp eq i32 %i.e, -1
  br i1 %.not29.i, label %lv_anim_timeline_get_playtime.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.f = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %i.g = getelementptr inbounds nuw [144 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  %i.i = load i32, ptr %i.h, align 8, !tbaa !21
  %i.j = add i32 %i.i, %i.e
  %spec.select.i = tail call i32 @llvm.umax.i32(i32 %i.j, i32 %.01935.i) ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.k = load i32, ptr %i.a, align 8, !tbaa !14
  %i.l = zext i32 %i.k to i64
  %.not30.i = icmp samesign ult i64 %indvars.iv.next.i, %i.l
  br i1 %.not30.i, label %.lr.ph.i, label %lv_anim_timeline_get_playtime.exit, !llvm.loop !0

lv_anim_timeline_get_playtime.exit:               ; preds = %.lr.ph.i, %bb.b, %.preheader33.i
  %spec.select31.i = phi i32 [ 0, %.preheader33.i ], [ %spec.select.i, %bb.b ], [ -1, %.lr.ph.i ]
  %i.m = zext i16 %1 to i32
  %i.n = tail call i32 @lv_map(i32 noundef %i.m, i32 noundef 0, i32 noundef 65535, i32 noundef 0, i32 noundef %spec.select31.i) #6
  tail call fastcc void @anim_timeline_set_act_time(ptr noundef nonnull %0, i32 noundef %i.n)
  ret void
}

declare i32 @lv_map(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @anim_timeline_set_act_time(ptr noundef initializes((12, 16)) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %1, ptr %i.a, align 4, !tbaa !25
  %i.b = tail call ptr @lv_anim_get(ptr noundef %0, ptr noundef nonnull @anim_timeline_exec_cb) #6
  %.not = icmp eq ptr %i.b, null                  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !14
  %.not136 = icmp eq i32 %i.d, 0
  br i1 %.not136, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  br label %bb.b

._crit_edge:                                      ; preds = %exec_anim.exit128, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %exec_anim.exit128
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %exec_anim.exit128 ] ; 2 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw [144 x i8], ptr %i.f, i64 %indvars.iv ; 57 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  %i.i = load i32, ptr %i.h, align 8, !tbaa !21   ; 7 uses
  %i.j = icmp ult i32 %1, %i.i
  br i1 %i.j, label %bb.c, label %bb.t

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %i.l = load i8, ptr %i.k, align 8
  %i.m = and i8 %i.l, 16
  %.not99 = icmp eq i8 %i.m, 0
  br i1 %.not99, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %.not, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = load i8, ptr %i.e, align 8, !tbaa !26, !range !27, !noundef !28
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 140 ; 3 uses
  %i.q = load i8, ptr %i.p, align 4               ; 4 uses
  br i1 %i.o, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.r = and i8 %i.q, 1
  %.not112 = icmp eq i8 %i.r, 0
  br i1 %.not112, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !38   ; 2 uses
  %.not113 = icmp eq ptr %i.t, null
  br i1 %.not113, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void %i.t(ptr noundef nonnull %i.g) #6
  %.pre140 = load i8, ptr %i.p, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.u = phi i8 [ %.pre140, %bb.h ], [ %i.q, %bb.g ], [ %i.q, %bb.f ]
  %i.v = or i8 %i.u, 1
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  %i.w = and i8 %i.q, -2
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.sink = phi i8 [ %i.v, %bb.i ], [ %i.w, %bb.j ]
  store i8 %.sink, ptr %i.p, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.y = load i32, ptr %i.x, align 8, !tbaa !32   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !39  ; 2 uses
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = load ptr, ptr %i.g, align 8, !tbaa !40
  tail call void %i.aa(ptr noundef %i.ab, i32 noundef %i.y) #6, !inline_history !36
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !41 ; 2 uses
  %.not8.i = icmp eq ptr %i.ad, null
  br i1 %.not8.i, label %exec_anim.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void %i.ad(ptr noundef nonnull %i.g, i32 noundef %i.y) #6, !inline_history !36
  br label %exec_anim.exit

exec_anim.exit:                                   ; preds = %bb.n, %bb.m
  %i.ae = load i8, ptr %i.e, align 8, !tbaa !26, !range !27, !noundef !28
  %i.af = trunc nuw i8 %i.ae to i1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 140 ; 4 uses
  %i.ah = load i8, ptr %i.ag, align 4             ; 4 uses
  br i1 %i.af, label %bb.o, label %bb.s

bb.o:                                             ; preds = %exec_anim.exit
  %i.ai = and i8 %i.ah, 2
  %.not114 = icmp eq i8 %i.ai, 0
  br i1 %.not114, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !42 ; 2 uses
  %.not115 = icmp eq ptr %i.ak, null
  br i1 %.not115, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void %i.ak(ptr noundef nonnull %i.g) #6
  %.pre141 = load i8, ptr %i.ag, align 4
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  %i.al = phi i8 [ %.pre141, %bb.q ], [ %i.ah, %bb.p ], [ %i.ah, %bb.o ]
  %i.am = or i8 %i.al, 2
  store i8 %i.am, ptr %i.ag, align 4
  br label %exec_anim.exit128

bb.s:                                             ; preds = %exec_anim.exit
  %i.an = and i8 %i.ah, -3
  store i8 %i.an, ptr %i.ag, align 4
  br label %exec_anim.exit128

bb.t:                                             ; preds = %bb.b
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 84 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !31
  %i.aq = add i32 %i.ap, %i.i
  %.not101 = icmp ugt i32 %1, %i.aq
  br i1 %.not101, label %.thread.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  br i1 %.not, label %.critedge117, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 140 ; 11 uses
  %i.as = load i8, ptr %i.ar, align 4             ; 3 uses
  %i.at = and i8 %i.as, 1
  %.not106 = icmp eq i8 %i.at, 0
  br i1 %.not106, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.au = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !38 ; 2 uses
  %.not107 = icmp eq ptr %i.av, null
  br i1 %.not107, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void %i.av(ptr noundef nonnull %i.g) #6
  %.pre = load i8, ptr %i.ar, align 4
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  %i.aw = phi i8 [ %.pre, %bb.x ], [ %i.as, %bb.w ], [ %i.as, %bb.v ]
  %i.ax = or i8 %i.aw, 1
  store i8 %i.ax, ptr %i.ar, align 4
  %i.ay = sub nuw i32 %1, %i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  store i32 %i.ay, ptr %i.az, align 8, !tbaa !30
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !43
  %i.bc = tail call i32 %i.bb(ptr noundef nonnull %i.g) #6 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !39 ; 2 uses
  %.not.i120 = icmp eq ptr %i.be, null
  br i1 %.not.i120, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bf = load ptr, ptr %i.g, align 8, !tbaa !40
  tail call void %i.be(ptr noundef %i.bf, i32 noundef %i.bc) #6, !inline_history !36
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.bg = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !41 ; 2 uses
  %.not8.i121 = icmp eq ptr %i.bh, null
  br i1 %.not8.i121, label %exec_anim.exit122, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void %i.bh(ptr noundef nonnull %i.g, i32 noundef %i.bc) #6, !inline_history !36
  br label %exec_anim.exit122

exec_anim.exit122:                                ; preds = %bb.ab, %bb.aa
  %i.bi = load i8, ptr %i.e, align 8, !tbaa !26, !range !27, !noundef !28
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %bb.ac, label %bb.ai

bb.ac:                                            ; preds = %exec_anim.exit122
  %i.bk = icmp eq i32 %1, %i.i
  %i.bl = load i8, ptr %i.ar, align 4             ; 4 uses
  br i1 %i.bk, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %bb.ac
  %i.bm = and i8 %i.bl, 2
  %.not110 = icmp eq i8 %i.bm, 0
  br i1 %.not110, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.bn = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !42 ; 2 uses
  %.not111 = icmp eq ptr %i.bo, null
  br i1 %.not111, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void %i.bo(ptr noundef nonnull %i.g) #6
  %.pre139 = load i8, ptr %i.ar, align 4
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %i.bp = phi i8 [ %.pre139, %bb.af ], [ %i.bl, %bb.ae ], [ %i.bl, %bb.ad ]
  %i.bq = or i8 %i.bp, 2
  store i8 %i.bq, ptr %i.ar, align 4
  br label %exec_anim.exit128

bb.ah:                                            ; preds = %bb.ac
  %i.br = and i8 %i.bl, -3
  store i8 %i.br, ptr %i.ar, align 4
  br label %exec_anim.exit128

bb.ai:                                            ; preds = %exec_anim.exit122
  %i.bs = load i32, ptr %i.ao, align 4, !tbaa !31
  %i.bt = add i32 %i.bs, %i.i
  %i.bu = icmp eq i32 %1, %i.bt
  %i.bv = load i8, ptr %i.ar, align 4             ; 4 uses
  br i1 %i.bu, label %bb.aj, label %bb.an

bb.aj:                                            ; preds = %bb.ai
  %i.bw = and i8 %i.bv, 2
  %.not108 = icmp eq i8 %i.bw, 0
  br i1 %.not108, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.bx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !42 ; 2 uses
  %.not109 = icmp eq ptr %i.by, null
  br i1 %.not109, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  tail call void %i.by(ptr noundef nonnull %i.g) #6
  %.pre138 = load i8, ptr %i.ar, align 4
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj
  %i.bz = phi i8 [ %.pre138, %bb.al ], [ %i.bv, %bb.ak ], [ %i.bv, %bb.aj ]
  %i.ca = or i8 %i.bz, 2
  store i8 %i.ca, ptr %i.ar, align 4
  br label %exec_anim.exit128

bb.an:                                            ; preds = %bb.ai
  %i.cb = and i8 %i.bv, -3
  store i8 %i.cb, ptr %i.ar, align 4
  br label %exec_anim.exit128

.thread:                                          ; preds = %bb.c
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.g, i64 84
  %.pre142 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !31
  %.pre145 = add i32 %.pre142, %i.i
  %i.cc = icmp ugt i32 %1, %.pre145
  br i1 %i.cc, label %.thread.thread, label %exec_anim.exit128

.thread.thread:                                   ; preds = %bb.t, %.thread
  br i1 %.not, label %.critedge119, label %bb.ao

bb.ao:                                            ; preds = %.thread.thread
  %i.cd = load i8, ptr %i.e, align 8, !tbaa !26, !range !27, !noundef !28
  %i.ce = trunc nuw i8 %i.cd to i1
  %i.cf = getelementptr inbounds nuw i8, ptr %i.g, i64 140 ; 3 uses
  %i.cg = load i8, ptr %i.cf, align 4             ; 4 uses
  br i1 %i.ce, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.ch = and i8 %i.cg, -2
  br label %bb.au

bb.aq:                                            ; preds = %bb.ao
  %i.ci = and i8 %i.cg, 1
  %.not102 = icmp eq i8 %i.ci, 0
  br i1 %.not102, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.cj = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !38 ; 2 uses
  %.not103 = icmp eq ptr %i.ck, null
  br i1 %.not103, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  tail call void %i.ck(ptr noundef nonnull %i.g) #6
  %.pre143 = load i8, ptr %i.cf, align 4
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.aq
  %i.cl = phi i8 [ %.pre143, %bb.as ], [ %i.cg, %bb.ar ], [ %i.cg, %bb.aq ]
  %i.cm = or i8 %i.cl, 1
  br label %bb.au

bb.au:                                            ; preds = %bb.ap, %bb.at
  %.sink168 = phi i8 [ %i.ch, %bb.ap ], [ %i.cm, %bb.at ]
  store i8 %.sink168, ptr %i.cf, align 4
  %i.cn = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !33 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !39 ; 2 uses
  %.not.i123 = icmp eq ptr %i.cq, null
  br i1 %.not.i123, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.cr = load ptr, ptr %i.g, align 8, !tbaa !40
  tail call void %i.cq(ptr noundef %i.cr, i32 noundef %i.co) #6, !inline_history !36
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.cs = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !41 ; 2 uses
  %.not8.i124 = icmp eq ptr %i.ct, null
  br i1 %.not8.i124, label %exec_anim.exit125, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  tail call void %i.ct(ptr noundef nonnull %i.g, i32 noundef %i.co) #6, !inline_history !36
  br label %exec_anim.exit125

exec_anim.exit125:                                ; preds = %bb.ax, %bb.aw
  %i.cu = load i8, ptr %i.e, align 8, !tbaa !26, !range !27, !noundef !28
  %i.cv = trunc nuw i8 %i.cu to i1
  %i.cw = getelementptr inbounds nuw i8, ptr %i.g, i64 140 ; 4 uses
  %i.cx = load i8, ptr %i.cw, align 4             ; 4 uses
  br i1 %i.cv, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %exec_anim.exit125
  %i.cy = and i8 %i.cx, -3
  store i8 %i.cy, ptr %i.cw, align 4
  br label %exec_anim.exit128

bb.az:                                            ; preds = %exec_anim.exit125
  %i.cz = and i8 %i.cx, 2
  %.not104 = icmp eq i8 %i.cz, 0
  br i1 %.not104, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %i.da = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !42 ; 2 uses
  %.not105 = icmp eq ptr %i.db, null
  br i1 %.not105, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  tail call void %i.db(ptr noundef nonnull %i.g) #6
  %.pre144 = load i8, ptr %i.cw, align 4
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %bb.az
  %i.dc = phi i8 [ %.pre144, %bb.bb ], [ %i.cx, %bb.ba ], [ %i.cx, %bb.az ]
  %i.dd = or i8 %i.dc, 2
  store i8 %i.dd, ptr %i.cw, align 4
  br label %exec_anim.exit128

.critedge:                                        ; preds = %bb.d
  %i.de = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.df = load i32, ptr %i.de, align 8, !tbaa !32 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !39 ; 2 uses
  %.not.i126 = icmp eq ptr %i.dh, null
  br i1 %.not.i126, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %.critedge
  %i.di = load ptr, ptr %i.g, align 8, !tbaa !40
  tail call void %i.dh(ptr noundef %i.di, i32 noundef %i.df) #6, !inline_history !36
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %.critedge
  %i.dj = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !41 ; 2 uses
  %.not8.i127 = icmp eq ptr %i.dk, null
  br i1 %.not8.i127, label %exec_anim.exit128, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  tail call void %i.dk(ptr noundef nonnull %i.g, i32 noundef %i.df) #6, !inline_history !36
  br label %exec_anim.exit128

.critedge117:                                     ; preds = %bb.u
  %i.dl = sub nuw i32 %1, %i.i
  %i.dm = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  store i32 %i.dl, ptr %i.dm, align 8, !tbaa !30
  %i.dn = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !43
  %i.dp = tail call i32 %i.do(ptr noundef nonnull %i.g) #6 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !39 ; 2 uses
  %.not.i129 = icmp eq ptr %i.dr, null
  br i1 %.not.i129, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %.critedge117
  %i.ds = load ptr, ptr %i.g, align 8, !tbaa !40
  tail call void %i.dr(ptr noundef %i.ds, i32 noundef %i.dp) #6, !inline_history !36
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %.critedge117
  %i.dt = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !41 ; 2 uses
  %.not8.i130 = icmp eq ptr %i.du, null
  br i1 %.not8.i130, label %exec_anim.exit128, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  tail call void %i.du(ptr noundef nonnull %i.g, i32 noundef %i.dp) #6, !inline_history !36
  br label %exec_anim.exit128

.critedge119:                                     ; preds = %.thread.thread
  %i.dv = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !33 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !39 ; 2 uses
  %.not.i132 = icmp eq ptr %i.dy, null
  br i1 %.not.i132, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %.critedge119
  %i.dz = load ptr, ptr %i.g, align 8, !tbaa !40
  tail call void %i.dy(ptr noundef %i.dz, i32 noundef %i.dw) #6, !inline_history !36
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %.critedge119
  %i.ea = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !41 ; 2 uses
  %.not8.i133 = icmp eq ptr %i.eb, null
  br i1 %.not8.i133, label %exec_anim.exit128, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  tail call void %i.eb(ptr noundef nonnull %i.g, i32 noundef %i.dw) #6, !inline_history !36
  br label %exec_anim.exit128

exec_anim.exit128:                                ; preds = %bb.bl, %bb.bk, %bb.bi, %bb.bh, %bb.bf, %bb.be, %bb.ah, %bb.ag, %bb.an, %bb.am, %bb.bc, %bb.ay, %.thread, %bb.s, %bb.r
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ec = load i32, ptr %i.c, align 8, !tbaa !14
  %i.ed = zext i32 %i.ec to i64
  %i.ee = icmp samesign ult i64 %indvars.iv.next, %i.ed
  br i1 %i.ee, label %bb.b, label %._crit_edge, !llvm.loop !37
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define void @lv_anim_timeline_set_user_data(ptr nofree noundef writeonly captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %1, ptr %i.a, align 8, !tbaa !34
  ret void
}

declare i32 @lv_anim_get_playtime(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define zeroext i1 @lv_anim_timeline_get_reverse(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !26, !range !27, !noundef !28
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define i32 @lv_anim_timeline_get_delay(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !29
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define zeroext i16 @lv_anim_timeline_get_progress(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %.preheader33.i

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

.preheader33.i:                                   ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !14
  %.not3034.not.i = icmp eq i32 %i.b, 0
  br i1 %.not3034.not.i, label %lv_anim_timeline_get_playtime.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader33.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !13
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.preheader.i
  %i.c = phi ptr [ %.pre.i, %.lr.ph.preheader.i ], [ %i.f, %bb.b ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.b ] ; 3 uses
  %.01935.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %spec.select.i, %bb.b ]
  %i.d = getelementptr inbounds nuw [144 x i8], ptr %i.c, i64 %indvars.iv.i
  %i.e = tail call i32 @lv_anim_get_playtime(ptr noundef %i.d) #6 ; 2 uses
  %.not29.i = icmp eq i32 %i.e, -1
  br i1 %.not29.i, label %lv_anim_timeline_get_playtime.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.f = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %i.g = getelementptr inbounds nuw [144 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  %i.i = load i32, ptr %i.h, align 8, !tbaa !21
  %i.j = add i32 %i.i, %i.e
  %spec.select.i = tail call i32 @llvm.umax.i32(i32 %i.j, i32 %.01935.i) ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.k = load i32, ptr %i.a, align 8, !tbaa !14
  %i.l = zext i32 %i.k to i64
  %.not30.i = icmp samesign ult i64 %indvars.iv.next.i, %i.l
  br i1 %.not30.i, label %.lr.ph.i, label %lv_anim_timeline_get_playtime.exit, !llvm.loop !0

lv_anim_timeline_get_playtime.exit:               ; preds = %.lr.ph.i, %bb.b, %.preheader33.i
  %spec.select31.i = phi i32 [ 0, %.preheader33.i ], [ %spec.select.i, %bb.b ], [ -1, %.lr.ph.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !25
  %i.o = tail call i32 @lv_map(i32 noundef %i.n, i32 noundef 0, i32 noundef %spec.select31.i, i32 noundef 0, i32 noundef 65535) #6
  %i.p = trunc i32 %i.o to i16
  ret i16 %i.p
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define i32 @lv_anim_timeline_get_repeat_count(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !23
  ret i32 %i.b
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define i32 @lv_anim_timeline_get_repeat_delay(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !24
  ret i32 %i.b
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define ptr @lv_anim_timeline_get_user_data(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define void @lv_anim_timeline_merge(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !14
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not.i = icmp eq ptr %0, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br i1 %.not.i, label %.preheader.i, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %.pre = load i32, ptr %i.c, align 8, !tbaa !14
  %.pre11 = load ptr, ptr %0, align 8, !tbaa !13
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %lv_anim_timeline_add.exit
  %i.d = phi ptr [ %.pre11, %.lr.ph.split.preheader ], [ %i.s, %lv_anim_timeline_add.exit ]
  %i.e = phi i32 [ %.pre, %.lr.ph.split.preheader ], [ %i.t, %lv_anim_timeline_add.exit ]
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next, %lv_anim_timeline_add.exit ] ; 2 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw [144 x i8], ptr %i.f, i64 %indvars.iv ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  %i.i = load i32, ptr %i.h, align 8, !tbaa !21
  %i.j = add i32 %i.e, 1                          ; 2 uses
  store i32 %i.j, ptr %i.c, align 8, !tbaa !14
  %i.k = zext i32 %i.j to i64
  %i.l = mul nuw nsw i64 %i.k, 144
  %i.m = tail call ptr @lv_realloc(ptr noundef %i.d, i64 noundef %i.l) #6 ; 3 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !13
  %.not12.i = icmp eq ptr %i.m, null
  br i1 %.not12.i, label %.preheader13.i, label %lv_anim_timeline_add.exit

.preheader.i:                                     ; preds = %.lr.ph, %.preheader.i
  br label %.preheader.i

.preheader13.i:                                   ; preds = %.lr.ph.split, %.preheader13.i
  br label %.preheader13.i

lv_anim_timeline_add.exit:                        ; preds = %.lr.ph.split
  %i.n = add i32 %i.i, %2
  %i.o = load i32, ptr %i.c, align 8, !tbaa !14
  %i.p = add i32 %i.o, -1
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [144 x i8], ptr %i.m, i64 %i.q
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.r, ptr noundef nonnull readonly align 8 dereferenceable(136) %i.g, i64 136, i1 false), !tbaa.struct !18
  %i.s = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %i.t = load i32, ptr %i.c, align 8, !tbaa !14   ; 2 uses
  %i.u = add i32 %i.t, -1
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [144 x i8], ptr %i.s, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 136
  store i32 %i.n, ptr %i.x, align 8, !tbaa !21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.y = load i32, ptr %i.a, align 8, !tbaa !14
  %i.z = zext i32 %i.y to i64
  %i.aa = icmp samesign ult i64 %indvars.iv.next, %i.z
  br i1 %i.aa, label %.lr.ph.split, label %._crit_edge, !llvm.loop !44

._crit_edge:                                      ; preds = %lv_anim_timeline_add.exit, %bb.a
  ret void
}

declare ptr @lv_anim_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !22}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS23_lv_anim_timeline_dsc_t", !9, i64 0}
!11 = !{!"_Bool", !5, i64 0}
!12 = !{!"_lv_anim_timeline_t", !10, i64 0, !6, i64 8, !6, i64 12, !11, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !9, i64 32}
!13 = !{!12, !10, i64 0}
!14 = !{!12, !6, i64 8}
!15 = !{!9, !9, i64 0}
!16 = !{!6, !6, i64 0}
!17 = !{!5, !5, i64 0}
!18 = !{i64 0, i64 8, !15, i64 8, i64 8, !15, i64 16, i64 8, !15, i64 24, i64 8, !15, i64 32, i64 8, !15, i64 40, i64 8, !15, i64 48, i64 8, !15, i64 56, i64 8, !15, i64 64, i64 8, !15, i64 72, i64 4, !16, i64 76, i64 4, !16, i64 80, i64 4, !16, i64 84, i64 4, !16, i64 88, i64 4, !16, i64 92, i64 4, !16, i64 96, i64 4, !16, i64 100, i64 4, !16, i64 104, i64 4, !16, i64 108, i64 8, !17, i64 116, i64 4, !16, i64 120, i64 4, !16, i64 124, i64 4, !16, i64 128, i64 1, !17}
!19 = !{!"_lv_anim_t", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !5, i64 108, !6, i64 116, !6, i64 120, !6, i64 124, !5, i64 128, !5, i64 128, !5, i64 128, !5, i64 128, !5, i64 128}
!20 = !{!"_lv_anim_timeline_dsc_t", !19, i64 0, !6, i64 136, !5, i64 140, !5, i64 140}
!21 = !{!20, !6, i64 136}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!12, !6, i64 24}
!24 = !{!12, !6, i64 28}
!25 = !{!12, !6, i64 12}
!26 = !{!12, !11, i64 16}
!27 = !{i8 0, i8 2}
!28 = !{}
!29 = !{!12, !6, i64 20}
!30 = !{!19, !6, i64 88}
!31 = !{!19, !6, i64 84}
!32 = !{!19, !6, i64 72}
!33 = !{!19, !6, i64 80}
!34 = !{!12, !9, i64 32}
!35 = distinct !{!35, !22}
!36 = distinct !{null}
!37 = distinct !{!37, !22}
!38 = !{!19, !9, i64 24}
!39 = !{!19, !9, i64 8}
!40 = !{!19, !9, i64 0}
!41 = !{!19, !9, i64 16}
!42 = !{!19, !9, i64 32}
!43 = !{!19, !9, i64 64}
!44 = distinct !{!44, !22}
end_hunk_0
