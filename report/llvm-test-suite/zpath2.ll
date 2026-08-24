Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/zpath2?download=true
inline.NumInlined: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
@.str.2 = private unnamed_addr constant [10 x i8] c"0clippath\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"0eoclip\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"0flattenpath\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"0initclip\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"0pathbbox\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"4pathforall\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"0reversepath\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"0strokepath\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @zflattenpath(ptr nofree readnone captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr @igs, align 8, !tbaa !8
  %i.b = tail call i32 @gs_flattenpath(ptr noundef %i.a) #4
  ret i32 %i.b
}

declare i32 @gs_flattenpath(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @zreversepath(ptr nofree readnone captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr @igs, align 8, !tbaa !8
  %i.b = tail call i32 @gs_reversepath(ptr noundef %i.a) #4
  ret i32 %i.b
}

declare i32 @gs_reversepath(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @zstrokepath(ptr nofree readnone captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr @igs, align 8, !tbaa !8
  %i.b = tail call i32 @gs_strokepath(ptr noundef %i.a) #4
  ret i32 %i.b
}

declare i32 @gs_strokepath(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @zclippath(ptr nofree readnone captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr @igs, align 8, !tbaa !8
  %i.b = tail call i32 @gs_clippath(ptr noundef %i.a) #4
  ret i32 %i.b
}

declare i32 @gs_clippath(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483648, 1) i32 @zpathbbox(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.gs_rect_s, align 4          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #4
  %i.a = load ptr, ptr @igs, align 8, !tbaa !8
  %i.b = call i32 @gs_pathbbox(ptr noundef %i.a, ptr noundef nonnull %1) #4 ; 2 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  store ptr %i.d, ptr @osp, align 8, !tbaa !11
  %i.e = load ptr, ptr @ostop, align 8, !tbaa !11
  %i.f = icmp ugt ptr %i.d, %i.e
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr %0, ptr @osp, align 8, !tbaa !11
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = load float, ptr %1, align 4, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.g, ptr %i.h, align 8, !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 44, ptr %i.i, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = load float, ptr %i.j, align 4, !tbaa !21
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.k, ptr %i.l, align 8, !tbaa !17
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i16 44, ptr %i.m, align 8, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load float, ptr %i.n, align 4, !tbaa !22
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  store float %i.o, ptr %i.p, align 8, !tbaa !17
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i16 44, ptr %i.q, align 8, !tbaa !18
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.s = load float, ptr %i.r, align 4, !tbaa !23
  store float %i.s, ptr %i.d, align 8, !tbaa !17
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i16 44, ptr %i.t, align 8, !tbaa !18
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0 = phi i32 [ 0, %bb.d ], [ -16, %bb.c ], [ %i.b, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #4
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @gs_pathbbox(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 5, 2) i32 @zpathforall(ptr noundef %0) #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @osp_nargs, i64 24), align 8, !tbaa !11
  %i.b = icmp ult ptr %0, %i.a
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @esp, align 8, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.e = load ptr, ptr @estop, align 8, !tbaa !11
  %i.f = icmp ugt ptr %i.d, %i.e
  br i1 %i.f, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr @gs_path_enum_sizeof, align 4, !tbaa !4
  %i.h = tail call ptr @alloc(i32 noundef 1, i32 noundef %i.g, ptr noundef nonnull @.str) #4 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr @igs, align 8, !tbaa !8
  tail call void @gs_path_enum_init(ptr noundef nonnull %i.h, ptr noundef %i.j) #4
  %i.k = load ptr, ptr @esp, align 8, !tbaa !11   ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i16 2, ptr %i.l, align 8, !tbaa !17
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i16 33, ptr %i.m, align 8, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  store ptr %i.n, ptr @esp, align 8, !tbaa !11
  %i.o = getelementptr inbounds i8, ptr %0, i64 -48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 16, i1 false), !tbaa.struct !24
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 48 ; 2 uses
  store ptr %i.p, ptr @esp, align 8, !tbaa !11
  %i.q = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 16, i1 false), !tbaa.struct !24
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 64 ; 2 uses
  store ptr %i.r, ptr @esp, align 8, !tbaa !11
  %i.s = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !24
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 80 ; 2 uses
  store ptr %i.t, ptr @esp, align 8, !tbaa !11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !24
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 96 ; 2 uses
  store ptr %i.u, ptr @esp, align 8, !tbaa !11
  store ptr %i.h, ptr %i.u, align 8, !tbaa !17
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  store i16 20, ptr %i.v, align 8, !tbaa !18
  %i.w = load ptr, ptr @osp, align 8, !tbaa !11
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -64
  store ptr %i.x, ptr @osp, align 8, !tbaa !11
  %i.y = getelementptr inbounds i8, ptr %0, i64 -64
  %i.z = tail call i32 @path_continue(ptr noundef nonnull %i.y)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.0 = phi i32 [ %i.z, %bb.d ], [ -17, %bb.a ], [ -5, %bb.b ], [ -25, %bb.c ]
  ret i32 %.0
}

declare ptr @alloc(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @gs_path_enum_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define dso_local noundef range(i32 5, 2) i32 @path_continue(ptr noundef %0) #0 {
bb.a:
  %1 = alloca [3 x %struct.gs_point_s], align 16  ; 13 uses
  %i.a = load ptr, ptr @esp, align 8, !tbaa !11
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #4
  %i.c = call i32 @gs_path_enum_next(ptr noundef %i.b, ptr noundef nonnull %1) #4 ; 2 uses
  switch i32 %i.c, label %bb.l [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.e
    i32 3, label %bb.g
    i32 4, label %.thread
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr @gs_path_enum_sizeof, align 4, !tbaa !4
  call void @alloc_free(ptr noundef %i.b, i32 noundef 1, i32 noundef %i.d, ptr noundef nonnull @.str) #4
  %i.e = load ptr, ptr @esp, align 8, !tbaa !11
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -96
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr @esp, align 8, !tbaa !11   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 -64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false), !tbaa.struct !24
  %i.j = load ptr, ptr @ostop, align 8, !tbaa !11
  %scevgep25 = getelementptr i8, ptr %0, i64 32   ; 3 uses
  %i.k = icmp ugt ptr %scevgep25, %i.j
  br i1 %i.k, label %pf_push.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load float, ptr %1, align 16, !tbaa !26
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.l, ptr %i.m, align 8, !tbaa !17
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 44, ptr %i.n, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.p = load float, ptr %i.o, align 4, !tbaa !27
  store float %i.p, ptr %scevgep25, align 8, !tbaa !17
  br label %pf_push.exit.sink.split

bb.e:                                             ; preds = %bb.a
  %i.q = load ptr, ptr @esp, align 8, !tbaa !11   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = getelementptr inbounds i8, ptr %i.q, i64 -48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !24
  %i.t = load ptr, ptr @ostop, align 8, !tbaa !11
  %scevgep = getelementptr i8, ptr %0, i64 32     ; 3 uses
  %i.u = icmp ugt ptr %scevgep, %i.t
  br i1 %i.u, label %pf_push.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load float, ptr %1, align 16, !tbaa !26
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.v, ptr %i.w, align 8, !tbaa !17
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 44, ptr %i.x, align 8, !tbaa !18
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.z = load float, ptr %i.y, align 4, !tbaa !27
  store float %i.z, ptr %scevgep, align 8, !tbaa !17
  br label %pf_push.exit.sink.split

bb.g:                                             ; preds = %bb.a
  %i.aa = load ptr, ptr @esp, align 8, !tbaa !11  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 -32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 16, i1 false), !tbaa.struct !24
  %i.ad = load ptr, ptr @ostop, align 8, !tbaa !11 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.af = icmp ugt ptr %i.ae, %i.ad
  br i1 %i.af, label %pf_push.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = load float, ptr %1, align 16, !tbaa !26
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.ag, ptr %i.ah, align 8, !tbaa !17
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 44, ptr %i.ai, align 8, !tbaa !18
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !27
  store float %i.ak, ptr %i.ae, align 8, !tbaa !17
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i16 44, ptr %i.al, align 8, !tbaa !18
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.an = icmp ugt ptr %i.am, %i.ad
  br i1 %i.an, label %pf_push.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ap = load float, ptr %i.ao, align 8, !tbaa !26
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48
  store float %i.ap, ptr %i.aq, align 8, !tbaa !17
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i16 44, ptr %i.ar, align 8, !tbaa !18
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.at = load float, ptr %i.as, align 4, !tbaa !27
  store float %i.at, ptr %i.am, align 8, !tbaa !17
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i16 44, ptr %i.au, align 8, !tbaa !18
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.aw = icmp ugt ptr %i.av, %i.ad
  br i1 %i.aw, label %pf_push.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ay = load float, ptr %i.ax, align 16, !tbaa !26
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 80
  store float %i.ay, ptr %i.az, align 8, !tbaa !17
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i16 44, ptr %i.ba, align 8, !tbaa !18
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !27
  store float %i.bc, ptr %i.av, align 8, !tbaa !17
  br label %pf_push.exit.sink.split

.thread:                                          ; preds = %bb.a
  %i.bd = load ptr, ptr @esp, align 8, !tbaa !11  ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bf = getelementptr inbounds i8, ptr %i.bd, i64 -16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, ptr noundef nonnull align 8 dereferenceable(16) %i.bf, i64 16, i1 false), !tbaa.struct !24
  br label %bb.k

pf_push.exit.sink.split:                          ; preds = %bb.d, %bb.f, %bb.j
  %.sink31 = phi i64 [ 104, %bb.j ], [ 40, %bb.f ], [ 40, %bb.d ]
  %.lcssa22.sink.i21.sink.ph = phi ptr [ %i.av, %bb.j ], [ %scevgep, %bb.f ], [ %scevgep25, %bb.d ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 %.sink31
  store i16 44, ptr %i.bg, align 8, !tbaa !18
  br label %pf_push.exit

pf_push.exit:                                     ; preds = %pf_push.exit.sink.split, %bb.g, %bb.h, %bb.i, %bb.e, %bb.c
  %.lcssa22.sink.i21.sink = phi ptr [ %i.am, %bb.i ], [ %i.ae, %bb.h ], [ %0, %bb.c ], [ %0, %bb.e ], [ %0, %bb.g ], [ %.lcssa22.sink.i21.sink.ph, %pf_push.exit.sink.split ]
  %i.bh = phi i1 [ true, %bb.i ], [ true, %bb.h ], [ true, %bb.c ], [ true, %bb.e ], [ true, %bb.g ], [ false, %pf_push.exit.sink.split ]
  %.0 = phi i32 [ -16, %bb.i ], [ -16, %bb.h ], [ -16, %bb.c ], [ -16, %bb.e ], [ -16, %bb.g ], [ 0, %pf_push.exit.sink.split ]
  store ptr %.lcssa22.sink.i21.sink, ptr @osp, align 8, !tbaa !11
  br i1 %i.bh, label %bb.l, label %._crit_edge

._crit_edge:                                      ; preds = %pf_push.exit
  %.pre = load ptr, ptr @esp, align 8, !tbaa !11
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %.thread
  %i.bi = phi ptr [ %.pre, %._crit_edge ], [ %i.bd, %.thread ] ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store ptr @path_continue, ptr %i.bj, align 8, !tbaa !17
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  store i16 37, ptr %i.bk, align 8, !tbaa !18
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 26
  store i16 0, ptr %i.bl, align 2, !tbaa !28
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.k
  %.sink = phi ptr [ %i.bm, %bb.k ], [ %i.f, %bb.b ]
  store ptr %.sink, ptr @esp, align 8, !tbaa !11
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %pf_push.exit, %bb.a
  %.09 = phi i32 [ %i.c, %bb.a ], [ %.0, %pf_push.exit ], [ 1, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #4
  ret i32 %.09
}

declare i32 @gs_path_enum_next(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @alloc_free(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -16, 1) i32 @pf_push(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #3 {
bb.a:
  %.not14 = icmp eq i32 %1, 0
  br i1 %.not14, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = load ptr, ptr @ostop, align 8, !tbaa !11
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.in = phi i32 [ %1, %.lr.ph ], [ %i.d, %bb.c ]
  %.016 = phi ptr [ %2, %.lr.ph ], [ %i.b, %bb.c ] ; 5 uses
  %.01015 = phi ptr [ %0, %.lr.ph ], [ %i.k, %bb.c ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.016, i64 32 ; 4 uses
  %i.c = icmp ugt ptr %i.b, %i.a
  br i1 %i.c, label %.loopexit.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i32 %.in, -1                     ; 2 uses
  %i.e = load float, ptr %.01015, align 4, !tbaa !26
  %i.f = getelementptr inbounds nuw i8, ptr %.016, i64 16
  store float %i.e, ptr %i.f, align 8, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %.016, i64 24
  store i16 44, ptr %i.g, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %.01015, i64 4
  %i.i = load float, ptr %i.h, align 4, !tbaa !27
  store float %i.i, ptr %i.b, align 8, !tbaa !17
  %i.j = getelementptr inbounds nuw i8, ptr %.016, i64 40
  store i16 44, ptr %i.j, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %.01015, i64 8
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %.loopexit.sink.split, label %bb.b, !llvm.loop !29

.loopexit.sink.split:                             ; preds = %bb.c, %bb.b
  %.lcssa22.sink = phi ptr [ %.016, %bb.b ], [ %i.b, %bb.c ]
  %.011.ph = phi i32 [ -16, %bb.b ], [ 0, %bb.c ]
  store ptr %.lcssa22.sink, ptr @osp, align 8, !tbaa !11
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.sink.split, %bb.a
  %.011 = phi i32 [ 0, %bb.a ], [ %.011.ph, %.loopexit.sink.split ]
  ret i32 %.011
}

; Function Attrs: nounwind uwtable
define dso_local i32 @zinitclip(ptr nofree readnone captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr @igs, align 8, !tbaa !8
  %i.b = tail call i32 @gs_initclip(ptr noundef %i.a) #4
  ret i32 %i.b
}

declare i32 @gs_initclip(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @zclip(ptr nofree readnone captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr @igs, align 8, !tbaa !8
  %i.b = tail call i32 @gs_clip(ptr noundef %i.a) #4
  ret i32 %i.b
}

declare i32 @gs_clip(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @zeoclip(ptr nofree readnone captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr @igs, align 8, !tbaa !8
  %i.b = tail call i32 @gs_eoclip(ptr noundef %i.a) #4
  ret i32 %i.b
}

declare i32 @gs_eoclip(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @zpath2_op_init() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 (ptr, ...) @z_op_init(ptr noundef nonnull @zpath2_op_init.my_defs) #4 ; 0 uses
  ret void
}

declare i32 @z_op_init(...) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
!9 = !{!"p1 _ZTS10gs_state_s", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"p1 _ZTS5ref_s", !10, i64 0}
!13 = !{!14, !16, i64 0}
!14 = !{!"gs_rect_s", !15, i64 0, !15, i64 8}
!15 = !{!"gs_point_s", !16, i64 0, !16, i64 4}
!16 = !{!"float", !6, i64 0}
!17 = !{!6, !6, i64 0}
!18 = !{!19, !20, i64 8}
!19 = !{!"ref_s", !6, i64 0, !20, i64 8, !20, i64 10}
!20 = !{!"short", !6, i64 0}
!21 = !{!14, !16, i64 4}
!22 = !{!14, !16, i64 8}
!23 = !{!14, !16, i64 12}
!24 = !{i64 0, i64 8, !17, i64 8, i64 2, !25, i64 10, i64 2, !25}
!25 = !{!20, !20, i64 0}
!26 = !{!15, !16, i64 0}
!27 = !{!15, !16, i64 4}
!28 = !{!19, !20, i64 10}
!29 = distinct !{!29, !30}
!30 = !{!"llvm.loop.mustprogress"}
end_hunk_0
