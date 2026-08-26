Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_include?download=true
inline.NumInlined: 15
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"include\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"inject\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"#line \00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"source-file\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"Error: couldn't load '\00", align 1

; Function Attrs: nofree nounwind uwtable
define noundef ptr @stb_include_load_file(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str) ; 6 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @fseek(ptr noundef nonnull %i.a, i64 noundef 0, i32 noundef 2) ; 0 uses
  %i.d = tail call i64 @ftell(ptr noundef nonnull %i.a) ; 4 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 %i.d, ptr %1, align 8, !tbaa !8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = add i64 %i.d, 1
  %i.f = tail call noalias ptr @malloc(i64 noundef %i.e) #14 ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call i32 @fseek(ptr noundef nonnull %i.a, i64 noundef 0, i32 noundef 0) ; 0 uses
  %i.i = tail call i64 @fread(ptr noundef nonnull %i.f, i64 noundef 1, i64 noundef %i.d, ptr noundef nonnull %i.a) ; 0 uses
  %i.j = tail call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  store i8 0, ptr %i.k, align 1, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.a, %bb.e
  %.0 = phi ptr [ %i.f, %bb.e ], [ null, %bb.a ], [ null, %bb.d ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr noundef captures(none), i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @ftell(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define noalias noundef ptr @stb_include_append_include(ptr noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #4 {
bb.a:
  %i.a = add nsw i32 %1, 1
  %i.b = sext i32 %i.a to i64
  %i.c = mul nsw i64 %i.b, 24
  %i.d = tail call ptr @realloc(ptr noundef %0, i64 noundef %i.c) #15 ; 2 uses
  %i.e = sext i32 %1 to i64
  %i.f = getelementptr inbounds [24 x i8], ptr %i.d, i64 %i.e ; 4 uses
  store i32 %2, ptr %i.f, align 8, !tbaa !11
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %3, ptr %i.g, align 4, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %4, ptr %i.h, align 8, !tbaa !16
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i32 %5, ptr %i.i, align 8, !tbaa !17
  ret ptr %i.d
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @stb_include_free_includes(ptr noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.b = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %indvars.iv
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16
  tail call void @free(ptr noundef %i.d) #16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !18

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  tail call void @free(ptr noundef %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 0, 2) i32 @stb_include_isspace(i32 noundef %0) local_unnamed_addr #8 {
bb.a:
  switch i32 %0, label %bb.b [
    i32 32, label %bb.c
    i32 13, label %bb.c
    i32 9, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq i32 %0, 10
  %i.b = zext i1 %i.a to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.b
  %i.c = phi i32 [ 1, %bb.a ], [ %i.b, %bb.b ], [ 1, %bb.a ], [ 1, %bb.a ]
  ret i32 %i.c
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define i32 @stb_include_find_includes(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !10      ; 2 uses
  %.not128 = icmp eq i8 %i.a, 0
  br i1 %.not128, label %._crit_edge, label %.preheader121.lr.ph

.preheader121.lr.ph:                              ; preds = %bb.a
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  br label %.preheader121

.preheader121:                                    ; preds = %.preheader121.lr.ph, %.loopexit
  %i.c = phi i8 [ %i.a, %.preheader121.lr.ph ], [ %.pre142, %.loopexit ]
  %.0132 = phi i32 [ 1, %.preheader121.lr.ph ], [ %i.bd, %.loopexit ] ; 2 uses
  %.086131 = phi ptr [ null, %.preheader121.lr.ph ], [ %.2, %.loopexit ] ; 8 uses
  %.089130 = phi i32 [ 0, %.preheader121.lr.ph ], [ %.289, %.loopexit ] ; 9 uses
  %.090129 = phi ptr [ %0, %.preheader121.lr.ph ], [ %i.bc, %.loopexit ] ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader121, %.critedge
  %i.d = phi i8 [ %.pr, %.critedge ], [ %i.c, %.preheader121 ]
  %.187 = phi ptr [ %i.e, %.critedge ], [ %.090129, %.preheader121 ] ; 3 uses
  switch i8 %i.d, label %.loopexit119 [
    i8 32, label %.critedge
    i8 9, label %.critedge
    i8 35, label %.preheader
  ]

.critedge:                                        ; preds = %bb.b, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.187, i64 1 ; 2 uses
  %.pr = load i8, ptr %i.e, align 1, !tbaa !10
  br label %bb.b, !llvm.loop !20

.preheader:                                       ; preds = %bb.b, %.preheader.backedge
  %.187.pn = phi ptr [ %.288, %.preheader.backedge ], [ %.187, %bb.b ] ; 3 uses
  %.288 = getelementptr inbounds nuw i8, ptr %.187.pn, i64 1 ; 7 uses
  %i.f = load i8, ptr %.288, align 1, !tbaa !10   ; 2 uses
  switch i8 %i.f, label %bb.c [
    i8 32, label %.preheader.backedge
    i8 9, label %.preheader.backedge
  ]

.preheader.backedge:                              ; preds = %.preheader, %.preheader
  br label %.preheader, !llvm.loop !21

bb.c:                                             ; preds = %.preheader
  %i.g = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.288, ptr noundef nonnull dereferenceable(8) @.str.1, i64 noundef 7) #17
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %stb_include_isspace.exit

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.187.pn, i64 8 ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !10    ; 2 uses
  switch i8 %i.j, label %stb_include_isspace.exit [
    i8 32, label %.critedge118.preheader
    i8 13, label %.critedge118.preheader
    i8 9, label %.critedge118.preheader
    i8 10, label %.critedge118.preheader
  ]

.critedge118.preheader:                           ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  br label %.critedge118

.critedge118:                                     ; preds = %.critedge118.preheader, %.critedge4
  %i.k = phi i8 [ %.pre, %.critedge4 ], [ %i.j, %.critedge118.preheader ]
  %.3 = phi ptr [ %i.l, %.critedge4 ], [ %i.i, %.critedge118.preheader ] ; 3 uses
  switch i8 %i.k, label %.loopexit119 [
    i8 32, label %.critedge4
    i8 9, label %.critedge4
    i8 34, label %bb.e
  ]

.critedge4:                                       ; preds = %.critedge118, %.critedge118
  %i.l = getelementptr inbounds nuw i8, ptr %.3, i64 1 ; 2 uses
  %.pre = load i8, ptr %i.l, align 1, !tbaa !10
  br label %.critedge118, !llvm.loop !22

bb.e:                                             ; preds = %.critedge118
  %i.m = getelementptr inbounds nuw i8, ptr %.3, i64 1 ; 6 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %.0 = phi ptr [ %i.m, %bb.e ], [ %i.o, %bb.g ]  ; 4 uses
  %i.n = load i8, ptr %.0, align 1, !tbaa !10
  switch i8 %i.n, label %bb.g [
    i8 34, label %bb.h
    i8 0, label %.loopexit119
    i8 10, label %.loopexit119
    i8 13, label %.loopexit119
  ]

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %.0, i64 1
  br label %bb.f, !llvm.loop !23

bb.h:                                             ; preds = %bb.f
  %i.p = ptrtoint ptr %.0 to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q                       ; 3 uses
  %i.s = add nsw i64 %i.r, 1
  %i.t = tail call noalias ptr @malloc(i64 noundef %i.s) #14 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr nonnull align 1 %i.m, i64 %i.r, i1 false)
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !10
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h
  %.4 = phi ptr [ %.0, %bb.h ], [ %i.w, %bb.j ]   ; 5 uses
  %i.v = load i8, ptr %.4, align 1, !tbaa !10
  switch i8 %i.v, label %bb.j [
    i8 13, label %.loopexit119.sink.split
    i8 10, label %.loopexit119.sink.split
    i8 0, label %.loopexit119.sink.split
  ]

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %.4, i64 1
  br label %bb.i, !llvm.loop !24

stb_include_isspace.exit:                         ; preds = %bb.d, %bb.c
  %i.x = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.288, ptr noundef nonnull dereferenceable(7) @.str.2, i64 noundef 6) #17
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.k, label %.loopexit119

bb.k:                                             ; preds = %stb_include_isspace.exit
  %i.z = getelementptr inbounds nuw i8, ptr %.187.pn, i64 7
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !10
  switch i8 %i.aa, label %.loopexit119 [
    i8 32, label %stb_include_isspace.exit116.thread.preheader
    i8 13, label %stb_include_isspace.exit116.thread.preheader
    i8 9, label %stb_include_isspace.exit116.thread.preheader
    i8 10, label %stb_include_isspace.exit116.thread.preheader
    i8 0, label %stb_include_isspace.exit116.thread.preheader
  ]

stb_include_isspace.exit116.thread.preheader:     ; preds = %bb.k, %bb.k, %bb.k, %bb.k, %bb.k
  br label %stb_include_isspace.exit116.thread

stb_include_isspace.exit116.thread:               ; preds = %stb_include_isspace.exit116.thread.preheader, %bb.l
  %i.ab = phi i8 [ %.pre141, %bb.l ], [ %i.f, %stb_include_isspace.exit116.thread.preheader ]
  %.6 = phi ptr [ %i.ac, %bb.l ], [ %.288, %stb_include_isspace.exit116.thread.preheader ] ; 4 uses
  switch i8 %i.ab, label %bb.l [
    i8 13, label %.loopexit119.sink.split
    i8 10, label %.loopexit119.sink.split
    i8 0, label %.loopexit119.sink.split
  ]

bb.l:                                             ; preds = %stb_include_isspace.exit116.thread
  %i.ac = getelementptr inbounds nuw i8, ptr %.6, i64 1 ; 2 uses
  %.pre141 = load i8, ptr %i.ac, align 1, !tbaa !10
  br label %stb_include_isspace.exit116.thread, !llvm.loop !25

.loopexit119.sink.split:                          ; preds = %bb.i, %bb.i, %bb.i, %stb_include_isspace.exit116.thread, %stb_include_isspace.exit116.thread, %stb_include_isspace.exit116.thread
  %.4.lcssa.sink = phi ptr [ %.6, %stb_include_isspace.exit116.thread ], [ %.6, %stb_include_isspace.exit116.thread ], [ %.6, %stb_include_isspace.exit116.thread ], [ %.4, %bb.i ], [ %.4, %bb.i ], [ %.4, %bb.i ] ; 2 uses
  %.sink160 = phi ptr [ null, %stb_include_isspace.exit116.thread ], [ null, %stb_include_isspace.exit116.thread ], [ null, %stb_include_isspace.exit116.thread ], [ %i.t, %bb.i ], [ %i.t, %bb.i ], [ %i.t, %bb.i ]
  %i.ad = add nsw i32 %.089130, 1                 ; 2 uses
  %i.ae = ptrtoint ptr %.090129 to i64
  %i.af = sub i64 %i.ae, %i.b
  %i.ag = trunc i64 %i.af to i32
  %i.ah = ptrtoint ptr %.4.lcssa.sink to i64
  %i.ai = sub i64 %i.ah, %i.b
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = add nuw nsw i32 %.0132, 1
  %i.al = sext i32 %i.ad to i64
  %i.am = mul nsw i64 %i.al, 24
  %i.an = tail call ptr @realloc(ptr noundef %.086131, i64 noundef %i.am) #15 ; 2 uses
  %i.ao = sext i32 %.089130 to i64
  %i.ap = getelementptr inbounds [24 x i8], ptr %i.an, i64 %i.ao ; 4 uses
  store i32 %i.ag, ptr %i.ap, align 8, !tbaa !11
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  store i32 %i.aj, ptr %i.aq, align 4, !tbaa !15
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %.sink160, ptr %i.ar, align 8, !tbaa !16
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i32 %i.ak, ptr %i.as, align 8, !tbaa !17
  br label %.loopexit119

.loopexit119:                                     ; preds = %bb.b, %.critedge118, %bb.f, %bb.f, %bb.f, %.loopexit119.sink.split, %bb.k, %stb_include_isspace.exit
  %.7 = phi ptr [ %i.m, %bb.f ], [ %.3, %.critedge118 ], [ %.4.lcssa.sink, %.loopexit119.sink.split ], [ %.288, %bb.k ], [ %.288, %stb_include_isspace.exit ], [ %i.m, %bb.f ], [ %i.m, %bb.f ], [ %.187, %bb.b ]
  %.289 = phi i32 [ %.089130, %bb.f ], [ %.089130, %.critedge118 ], [ %i.ad, %.loopexit119.sink.split ], [ %.089130, %bb.k ], [ %.089130, %stb_include_isspace.exit ], [ %.089130, %bb.f ], [ %.089130, %bb.f ], [ %.089130, %bb.b ] ; 3 uses
  %.2 = phi ptr [ %.086131, %bb.f ], [ %.086131, %.critedge118 ], [ %i.an, %.loopexit119.sink.split ], [ %.086131, %bb.k ], [ %.086131, %stb_include_isspace.exit ], [ %.086131, %bb.f ], [ %.086131, %bb.f ], [ %.086131, %bb.b ] ; 3 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %.loopexit119
  %.8 = phi ptr [ %.7, %.loopexit119 ], [ %i.au, %bb.n ] ; 4 uses
  %i.at = load i8, ptr %.8, align 1, !tbaa !10    ; 2 uses
  switch i8 %i.at, label %bb.n [
    i8 13, label %.loopexit
    i8 10, label %.loopexit
    i8 0, label %._crit_edge
  ]

bb.n:                                             ; preds = %bb.m
  %i.au = getelementptr inbounds nuw i8, ptr %.8, i64 1
  br label %bb.m, !llvm.loop !26

.loopexit:                                        ; preds = %bb.m, %bb.m
  %i.av = zext nneg i8 %i.at to i32
  %i.aw = getelementptr inbounds nuw i8, ptr %.8, i64 1
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !10
  %i.ay = sext i8 %i.ax to i32
  %i.az = add nsw i32 %i.ay, %i.av
  %i.ba = icmp eq i32 %i.az, 23
  %i.bb = select i1 %i.ba, i64 2, i64 1
  %i.bc = getelementptr inbounds nuw i8, ptr %.8, i64 %i.bb ; 2 uses
  %.pre142 = load i8, ptr %i.bc, align 1, !tbaa !10 ; 2 uses
  %i.bd = add nuw nsw i32 %.0132, 1
  %.not = icmp eq i8 %.pre142, 0
  br i1 %.not, label %._crit_edge, label %.preheader121, !llvm.loop !27

._crit_edge:                                      ; preds = %.loopexit, %bb.m, %bb.a
  %.089.lcssa = phi i32 [ 0, %bb.a ], [ %.289, %bb.m ], [ %.289, %.loopexit ]
  %.085.lcssa = phi ptr [ null, %bb.a ], [ %.2, %bb.m ], [ %.2, %.loopexit ]
  store ptr %.085.lcssa, ptr %1, align 8, !tbaa !28
  ret i32 %.089.lcssa
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @stb_include_itoa(ptr nofree noundef writeonly captures(none) initializes((0, 9)) %0, i32 noundef %1) local_unnamed_addr #10 {
bb.a:
  store i64 2314885530818453536, ptr %0, align 1
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.a, align 1, !tbaa !10
  %i.b = srem i32 %1, 10
  %i.c = sdiv i32 %1, 10                          ; 2 uses
  %i.d = trunc nsw i32 %i.b to i8
  %i.e = add nsw i8 %i.d, 48
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 %i.e, ptr %i.f, align 1, !tbaa !10
  %.012.off = add i32 %1, 9
  %i.g = icmp ult i32 %.012.off, 19
  br i1 %i.g, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = srem i32 %i.c, 10
  %i.i = trunc nsw i32 %i.h to i8
  %i.j = add nsw i8 %i.i, 48
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.j, ptr %i.k, align 1, !tbaa !10
  %.012.off.1 = add nsw i32 %i.c, 9
  %i.l = icmp ult i32 %.012.off.1, 19
  br i1 %i.l, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = sdiv i32 %1, 100                         ; 2 uses
  %i.n = srem i32 %i.m, 10
  %i.o = trunc nsw i32 %i.n to i8
  %i.p = add nsw i8 %i.o, 48
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.p, ptr %i.q, align 1, !tbaa !10
  %.012.off.2 = add nsw i32 %i.m, 9
  %i.r = icmp ult i32 %.012.off.2, 19
  br i1 %i.r, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = sdiv i32 %1, 1000                        ; 2 uses
  %i.t = srem i32 %i.s, 10
  %i.u = trunc nsw i32 %i.t to i8
  %i.v = add nsw i8 %i.u, 48
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.v, ptr %i.w, align 1, !tbaa !10
  %.012.off.3 = add nsw i32 %i.s, 9
  %i.x = icmp ult i32 %.012.off.3, 19
  br i1 %i.x, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = sdiv i32 %1, 10000                       ; 2 uses
  %i.z = srem i32 %i.y, 10
  %i.aa = trunc nsw i32 %i.z to i8
  %i.ab = add nsw i8 %i.aa, 48
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !10
  %.012.off.4 = add nsw i32 %i.y, 9
  %i.ad = icmp ult i32 %.012.off.4, 19
  br i1 %i.ad, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = sdiv i32 %1, 100000                     ; 2 uses
  %.lhs.trunc = trunc nsw i32 %i.ae to i16
  %i.af = srem i16 %.lhs.trunc, 10
  %i.ag = trunc nsw i16 %i.af to i8
  %i.ah = add nsw i8 %i.ag, 48
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !10
  %.012.off.5 = add nsw i32 %i.ae, 9
  %i.aj = icmp ult i32 %.012.off.5, 19
  br i1 %i.aj, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = sdiv i32 %1, 1000000
  %.lhs.trunc19 = trunc nsw i32 %i.ak to i16
  %i.al = srem i16 %.lhs.trunc19, 10
  %i.am = trunc nsw i16 %i.al to i8
  %i.an = add nsw i8 %i.am, 48
  store i8 %i.an, ptr %0, align 1, !tbaa !10
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @stb_include_append(ptr noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #11 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !8
  %i.b = add i64 %i.a, %3
  %i.c = tail call ptr @realloc(ptr noundef %0, i64 noundef %i.b) #15 ; 2 uses
  %i.d = load i64, ptr %1, align 8, !tbaa !8      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.e, ptr align 1 %2, i64 %3, i1 false)
  %i.f = add i64 %i.d, %3
  store i64 %i.f, ptr %1, align 8, !tbaa !8
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define noalias noundef ptr @stb_include_string(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr noundef %4) local_unnamed_addr #12 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca [4096 x i8], align 16             ; 35 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %i.d = call i32 @stb_include_find_includes(ptr noundef %0, ptr noundef nonnull %i.c) ; 3 uses
  %i.e = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #17
  %i.f = icmp sgt i32 %i.d, 0                     ; 2 uses
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !28  ; 4 uses
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 6 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 14 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.not61 = icmp eq ptr %1, null
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 11
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 7
  %.not64 = icmp eq ptr %3, null
  %i.o = select i1 %.not64, ptr @.str.10, ptr %3
  %wide.trip.count = zext nneg i32 %i.d to i64    ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %stb_include_itoa.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %stb_include_itoa.exit ] ; 2 uses
  %.042102 = phi i64 [ 0, %.lr.ph ], [ %i.cm, %stb_include_itoa.exit ] ; 2 uses
  %.043101 = phi ptr [ null, %.lr.ph ], [ %i.ci, %stb_include_itoa.exit ]
  %.099 = phi i64 [ 0, %.lr.ph ], [ %i.ch, %stb_include_itoa.exit ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %.042102
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %.pre, i64 %indvars.iv ; 4 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !11
  %i.s = sext i32 %i.r to i64
  %i.t = sub nsw i64 %i.s, %.042102               ; 2 uses
  %i.u = add i64 %i.t, %.099                      ; 3 uses
  %i.v = call ptr @realloc(ptr noundef %.043101, i64 noundef %i.u) #15 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %.099
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr nonnull readonly align 1 %i.p, i64 %i.t, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(7) %i.b, ptr noundef nonnull align 1 dereferenceable(7) @.str.3, i64 7, i1 false) #16
  store i64 2319670605422534688, ptr %i.g, align 2
  store i8 0, ptr %i.h, align 2, !tbaa !10
  %strlen = call i64 @strlen(ptr nonnull dereferenceable(1) %i.b)
  %endptr = getelementptr inbounds i8, ptr %i.b, i64 %strlen
  store i16 32, ptr %endptr, align 1
  %strlen53 = call i64 @strlen(ptr nonnull dereferenceable(1) %i.b)
  %endptr54 = getelementptr inbounds i8, ptr %i.b, i64 %strlen53
  store i16 34, ptr %endptr54, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !16   ; 3 uses
  %i.z = icmp eq ptr %i.y, null                   ; 2 uses
  br i1 %i.z, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) %i.y) #16 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %strlen55 = call i64 @strlen(ptr nonnull dereferenceable(1) %i.b)
  %endptr56 = getelementptr inbounds i8, ptr %i.b, i64 %strlen55
  store i16 34, ptr %endptr56, align 1
  %strlen57 = call i64 @strlen(ptr nonnull dereferenceable(1) %i.b)
  %endptr58 = getelementptr inbounds i8, ptr %i.b, i64 %strlen57
  store i16 10, ptr %endptr58, align 1
  %i.ab = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #17 ; 2 uses
  %i.ac = add i64 %i.ab, %i.u                     ; 6 uses
  %i.ad = call ptr @realloc(ptr noundef %i.v, i64 noundef %i.ac) #15 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.u
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ae, ptr nonnull readonly align 16 %i.b, i64 %i.ab, i1 false)
  br i1 %i.z, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  br i1 %.not61, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #17 ; 2 uses
  %i.ag = add i64 %i.af, %i.ac                    ; 2 uses
  %i.ah = call ptr @realloc(ptr noundef %i.ad, i64 noundef %i.ag) #15 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ac
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ai, ptr nonnull readonly align 1 %1, i64 %i.af, i1 false)
  br label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.aj = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) %2) #16 ; 0 uses
  %strlen59 = call i64 @strlen(ptr nonnull dereferenceable(1) %i.b)
  %endptr60 = getelementptr inbounds i8, ptr %i.b, i64 %strlen59
  store i16 47, ptr %endptr60, align 1
end_hunk_0
