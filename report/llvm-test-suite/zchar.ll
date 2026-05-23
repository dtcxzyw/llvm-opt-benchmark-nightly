inline.NumInlined: 19
begin_hunk_0_@zwidthshow:bb.a
  store i16 1, ptr %i.z, align 8, !tbaa !14
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store i16 33, ptr %i.aa, align 8, !tbaa !8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  store ptr @finish_show, ptr %i.ab, align 8, !tbaa !14
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  store i16 37, ptr %i.ac, align 8, !tbaa !8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 42
  store i16 0, ptr %i.ad, align 2, !tbaa !15
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  store i16 0, ptr %i.ae, align 8, !tbaa !14
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  store i16 32, ptr %i.af, align 8, !tbaa !8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 64 ; 2 uses
  store ptr %i.ag, ptr @esp, align 8, !tbaa !11
  store ptr %i.w, ptr %i.ag, align 8, !tbaa !14
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  store i16 52, ptr %i.ah, align 8, !tbaa !8
  %i.ai = load i32, ptr @gs_show_enum_sizeof, align 4, !tbaa !4
  %i.aj = trunc i32 %i.ai to i16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 74
  store i16 %i.aj, ptr %i.ak, align 2, !tbaa !15
  %i.al = load ptr, ptr @igs, align 8, !tbaa !16
  %i.am = load float, ptr %i.a, align 4, !tbaa !28
  %i.an = fpext float %i.am to double
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !28
  %i.aq = fpext float %i.ap to double
  %i.ar = load i64, ptr %i.b, align 8, !tbaa !14
  %i.as = trunc i64 %i.ar to i8
  %i.at = load ptr, ptr %0, align 8, !tbaa !14
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.av = load i16, ptr %i.au, align 2, !tbaa !15
  %i.aw = zext i16 %i.av to i32
  %i.ax = call i32 @gs_widthshow_n_init(ptr noundef nonnull %i.w, ptr noundef %i.al, double noundef %i.an, double noundef %i.aq, i8 noundef signext %i.as, ptr noundef %i.at, i32 noundef %i.aw) #7 ; 2 uses
  %i.ay = icmp slt i32 %i.ax, 0
  br i1 %i.ay, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.az = load ptr, ptr @esp, align 8, !tbaa !11
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !14
  %i.bb = load i32, ptr @gs_show_enum_sizeof, align 4, !tbaa !4
  call void @alloc_free(ptr noundef %i.ba, i32 noundef 1, i32 noundef %i.bb, ptr noundef nonnull @.str.13) #7
  %i.bc = load ptr, ptr @esp, align 8, !tbaa !11
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -64
  store ptr %i.bd, ptr @esp, align 8, !tbaa !11
  br label %setup_show.exit.thread

bb.j:                                             ; preds = %bb.h
  %i.be = load ptr, ptr @osp, align 8, !tbaa !11
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 -64
  store ptr %i.bf, ptr @osp, align 8, !tbaa !11
  %i.bg = getelementptr inbounds i8, ptr %0, i64 -64
  %i.bh = call i32 @show_continue(ptr noundef nonnull %i.bg)
  br label %setup_show.exit.thread

setup_show.exit.thread:                           ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a, %bb.j, %bb.i
  %.011 = phi i32 [ -20, %bb.a ], [ -15, %bb.b ], [ %i.ax, %bb.i ], [ %i.bh, %bb.j ], [ %i.j, %bb.c ], [ -25, %bb.g ], [ -5, %bb.f ], [ -7, %bb.e ], [ -20, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.011
}

declare i32 @gs_widthshow_n_init(ptr noundef, ptr noundef, double noundef, double noundef, i8 noundef signext, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @zawidthshow(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca [2 x float], align 4              ; 5 uses
  %i.b = alloca [2 x float], align 4              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.c = getelementptr inbounds i8, ptr %0, i64 -48 ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %0, i64 -40
  %i.e = load i16, ptr %i.d, align 8, !tbaa !8
  %i.f = and i16 %i.e, 252
  %i.g = icmp eq i16 %i.f, 20
  br i1 %i.g, label %bb.b, label %setup_show.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.c, align 8, !tbaa !14
  %i.i = icmp ugt i64 %i.h, 255
  br i1 %i.i, label %setup_show.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds i8, ptr %0, i64 -64
  %i.k = call i32 (ptr, i32, ptr, ...) @num_params(ptr noundef nonnull %i.j, i32 noundef 2, ptr noundef nonnull %i.a) #7 ; 2 uses
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %setup_show.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds i8, ptr %0, i64 -16
  %i.n = call i32 (ptr, i32, ptr, ...) @num_params(ptr noundef nonnull %i.m, i32 noundef 2, ptr noundef nonnull %i.b) #7 ; 2 uses
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %setup_show.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i16, ptr %i.p, align 8, !tbaa !8
  %i.r = zext i16 %i.q to i32                     ; 2 uses
  %i.s = and i32 %i.r, 252
  %i.t = icmp eq i32 %i.s, 52
  br i1 %i.t, label %bb.f, label %setup_show.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.u = and i32 %i.r, 512
  %.not.not.i = icmp eq i32 %i.u, 0
  br i1 %.not.not.i, label %setup_show.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = load ptr, ptr @esp, align 8, !tbaa !11
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 96
  %i.x = load ptr, ptr @estop, align 8, !tbaa !11
  %i.y = icmp ugt ptr %i.w, %i.x
  br i1 %i.y, label %setup_show.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = load i32, ptr @gs_show_enum_sizeof, align 4, !tbaa !4
  %i.aa = call ptr @alloc(i32 noundef 1, i32 noundef %i.z, ptr noundef nonnull @.str.12) #7 ; 3 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %setup_show.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = load ptr, ptr @esp, align 8, !tbaa !11  ; 10 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i16 1, ptr %i.ad, align 8, !tbaa !14
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store i16 33, ptr %i.ae, align 8, !tbaa !8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  store ptr @finish_show, ptr %i.af, align 8, !tbaa !14
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  store i16 37, ptr %i.ag, align 8, !tbaa !8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 42
  store i16 0, ptr %i.ah, align 2, !tbaa !15
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  store i16 0, ptr %i.ai, align 8, !tbaa !14
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  store i16 32, ptr %i.aj, align 8, !tbaa !8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 64 ; 2 uses
  store ptr %i.ak, ptr @esp, align 8, !tbaa !11
  store ptr %i.aa, ptr %i.ak, align 8, !tbaa !14
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  store i16 52, ptr %i.al, align 8, !tbaa !8
  %i.am = load i32, ptr @gs_show_enum_sizeof, align 4, !tbaa !4
  %i.an = trunc i32 %i.am to i16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ac, i64 74
  store i16 %i.an, ptr %i.ao, align 2, !tbaa !15
  %i.ap = load ptr, ptr @igs, align 8, !tbaa !16
  %i.aq = load float, ptr %i.a, align 4, !tbaa !28
  %i.ar = fpext float %i.aq to double
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.at = load float, ptr %i.as, align 4, !tbaa !28
  %i.au = fpext float %i.at to double
  %i.av = load i64, ptr %i.c, align 8, !tbaa !14
  %i.aw = trunc i64 %i.av to i8
  %i.ax = load float, ptr %i.b, align 4, !tbaa !28
  %i.ay = fpext float %i.ax to double
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ba = load float, ptr %i.az, align 4, !tbaa !28
  %i.bb = fpext float %i.ba to double
  %i.bc = load ptr, ptr %0, align 8, !tbaa !14
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !15
  %i.bf = zext i16 %i.be to i32
  %i.bg = call i32 @gs_awidthshow_n_init(ptr noundef nonnull %i.aa, ptr noundef %i.ap, double noundef %i.ar, double noundef %i.au, i8 noundef signext %i.aw, double noundef %i.ay, double noundef %i.bb, ptr noundef %i.bc, i32 noundef %i.bf) #7 ; 2 uses
  %i.bh = icmp slt i32 %i.bg, 0
  br i1 %i.bh, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bi = load ptr, ptr @esp, align 8, !tbaa !11
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !14
  %i.bk = load i32, ptr @gs_show_enum_sizeof, align 4, !tbaa !4
  call void @alloc_free(ptr noundef %i.bj, i32 noundef 1, i32 noundef %i.bk, ptr noundef nonnull @.str.13) #7
  %i.bl = load ptr, ptr @esp, align 8, !tbaa !11
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 -64
  store ptr %i.bm, ptr @esp, align 8, !tbaa !11
  br label %setup_show.exit.thread

bb.k:                                             ; preds = %bb.i
  %i.bn = load ptr, ptr @osp, align 8, !tbaa !11
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -96
  store ptr %i.bo, ptr @osp, align 8, !tbaa !11
  %i.bp = getelementptr inbounds i8, ptr %0, i64 -96
  %i.bq = call i32 @show_continue(ptr noundef nonnull %i.bp)
  br label %setup_show.exit.thread

setup_show.exit.thread:                           ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.c, %bb.d, %bb.b, %bb.a, %bb.k, %bb.j
  %.012 = phi i32 [ -20, %bb.a ], [ -15, %bb.b ], [ %i.bg, %bb.j ], [ %i.bq, %bb.k ], [ %i.k, %bb.c ], [ %i.n, %bb.d ], [ -25, %bb.h ], [ -5, %bb.g ], [ -7, %bb.f ], [ -20, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.012
}

declare i32 @gs_awidthshow_n_init(ptr noundef, ptr noundef, double noundef, double noundef, i8 noundef signext, double noundef, double noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @zkshow(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16
  %i.b = getelementptr inbounds i8, ptr %0, i64 -8
  %i.c = load i16, ptr %i.b, align 8, !tbaa !8    ; 2 uses
  %1 = trunc i16 %i.c to i8
  %trunc = and i8 %1, -4
  switch i8 %trunc, label %setup_show.exit.thread [
    i8 0, label %bb.b
    i8 40, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.d = and i16 %i.c, 3
  %.not = icmp eq i16 %i.d, 3
  br i1 %.not, label %bb.c, label %setup_show.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i16, ptr %i.e, align 8, !tbaa !8
  %i.g = zext i16 %i.f to i32                     ; 2 uses
  %i.h = and i32 %i.g, 252
  %i.i = icmp eq i32 %i.h, 52
  br i1 %i.i, label %bb.d, label %setup_show.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.j = and i32 %i.g, 512
  %.not.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.not.i, label %setup_show.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr @esp, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %i.m = load ptr, ptr @estop, align 8, !tbaa !11
  %i.n = icmp ugt ptr %i.l, %i.m
  br i1 %i.n, label %setup_show.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load i32, ptr @gs_show_enum_sizeof, align 4, !tbaa !4
  %i.p = tail call ptr @alloc(i32 noundef 1, i32 noundef %i.o, ptr noundef nonnull @.str.12) #7 ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %setup_show.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr @esp, align 8, !tbaa !11   ; 10 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i16 1, ptr %i.s, align 8, !tbaa !14
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store i16 33, ptr %i.t, align 8, !tbaa !8
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store ptr @finish_show, ptr %i.u, align 8, !tbaa !14
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store i16 37, ptr %i.v, align 8, !tbaa !8
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 42
  store i16 0, ptr %i.w, align 2, !tbaa !15
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store i16 0, ptr %i.x, align 8, !tbaa !14
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  store i16 32, ptr %i.y, align 8, !tbaa !8
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 64 ; 2 uses
  store ptr %i.z, ptr @esp, align 8, !tbaa !11
  store ptr %i.p, ptr %i.z, align 8, !tbaa !14
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  store i16 52, ptr %i.aa, align 8, !tbaa !8
  %i.ab = load i32, ptr @gs_show_enum_sizeof, align 4, !tbaa !4
  %i.ac = trunc i32 %i.ab to i16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 74
  store i16 %i.ac, ptr %i.ad, align 2, !tbaa !15
  %i.ae = load ptr, ptr @igs, align 8, !tbaa !16
  %i.af = load ptr, ptr %0, align 8, !tbaa !14
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !15
  %i.ai = zext i16 %i.ah to i32
  %i.aj = tail call i32 @gs_kshow_n_init(ptr noundef nonnull %i.p, ptr noundef %i.ae, ptr noundef %i.af, i32 noundef %i.ai) #7 ; 2 uses
  %i.ak = icmp slt i32 %i.aj, 0
  %i.al = load ptr, ptr @esp, align 8, !tbaa !11  ; 2 uses
  br i1 %i.ak, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !14
  %i.an = load i32, ptr @gs_show_enum_sizeof, align 4, !tbaa !4
  tail call void @alloc_free(ptr noundef %i.am, i32 noundef 1, i32 noundef %i.an, ptr noundef nonnull @.str.13) #7
  %i.ao = load ptr, ptr @esp, align 8, !tbaa !11
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -64
  store ptr %i.ap, ptr @esp, align 8, !tbaa !11
  br label %setup_show.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds i8, ptr %i.al, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa.struct !18
  %i.ar = load ptr, ptr @osp, align 8, !tbaa !11
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -32
  store ptr %i.as, ptr @osp, align 8, !tbaa !11
  %i.at = getelementptr inbounds i8, ptr %0, i64 -32
  %i.au = tail call i32 @show_continue(ptr noundef nonnull %i.at)
  br label %setup_show.exit.thread

setup_show.exit.thread:                           ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a, %bb.i, %bb.h
  %.0 = phi i32 [ %i.au, %bb.i ], [ -20, %bb.a ], [ -7, %bb.b ], [ %i.aj, %bb.h ], [ -25, %bb.f ], [ -5, %bb.e ], [ -7, %bb.d ], [ -20, %bb.c ]
  ret i32 %.0
}

declare i32 @gs_kshow_n_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @zstringwidth(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8, !tbaa !8
  %i.c = zext i16 %i.b to i32                     ; 2 uses
  %i.d = and i32 %i.c, 252
  %i.e = icmp eq i32 %i.d, 52
  br i1 %i.e, label %bb.b, label %setup_show.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.f = and i32 %i.c, 512
  %.not.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.not.i, label %setup_show.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr @esp, align 8, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.i = load ptr, ptr @estop, align 8, !tbaa !11
  %i.j = icmp ugt ptr %i.h, %i.i
  br i1 %i.j, label %setup_show.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load i32, ptr @gs_show_enum_sizeof, align 4, !tbaa !4
  %i.l = tail call ptr @alloc(i32 noundef 1, i32 noundef %i.k, ptr noundef nonnull @.str.12) #7 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %setup_show.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr @esp, align 8, !tbaa !11   ; 10 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i16 1, ptr %i.o, align 8, !tbaa !14
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store i16 33, ptr %i.p, align 8, !tbaa !8
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr @finish_stringwidth, ptr %i.q, align 8, !tbaa !14
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store i16 37, ptr %i.r, align 8, !tbaa !8
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 42
  store i16 0, ptr %i.s, align 2, !tbaa !15
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  store i16 0, ptr %i.t, align 8, !tbaa !14
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  store i16 32, ptr %i.u, align 8, !tbaa !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 64 ; 2 uses
  store ptr %i.v, ptr @esp, align 8, !tbaa !11
  store ptr %i.l, ptr %i.v, align 8, !tbaa !14
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  store i16 52, ptr %i.w, align 8, !tbaa !8
  %i.x = load i32, ptr @gs_show_enum_sizeof, align 4, !tbaa !4
  %i.y = trunc i32 %i.x to i16
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 74
  store i16 %i.y, ptr %i.z, align 2, !tbaa !15
  %i.aa = load ptr, ptr @igs, align 8, !tbaa !16
  %i.ab = load ptr, ptr %0, align 8, !tbaa !14
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !15
  %i.ae = zext i16 %i.ad to i32
  %i.af = tail call i32 @gs_stringwidth_n_init(ptr noundef nonnull %i.l, ptr noundef %i.aa, ptr noundef %i.ab, i32 noundef %i.ae) #7 ; 2 uses
  %i.ag = icmp slt i32 %i.af, 0
  br i1 %i.ag, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ah = load ptr, ptr @esp, align 8, !tbaa !11
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !14
  %i.aj = load i32, ptr @gs_show_enum_sizeof, align 4, !tbaa !4
  tail call void @alloc_free(ptr noundef %i.ai, i32 noundef 1, i32 noundef %i.aj, ptr noundef nonnull @.str.13) #7
  %i.ak = load ptr, ptr @esp, align 8, !tbaa !11
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -64
  store ptr %i.al, ptr @esp, align 8, !tbaa !11
  br label %setup_show.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.am = load ptr, ptr @osp, align 8, !tbaa !11
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -16
  store ptr %i.an, ptr @osp, align 8, !tbaa !11
  %i.ao = getelementptr inbounds i8, ptr %0, i64 -16
  %i.ap = tail call i32 @show_continue(ptr noundef nonnull %i.ao)
  br label %setup_show.exit.thread

setup_show.exit.thread:                           ; preds = %bb.d, %bb.c, %bb.b, %bb.a, %bb.g, %bb.f
  %.0 = phi i32 [ %i.ap, %bb.g ], [ %i.af, %bb.f ], [ -25, %bb.d ], [ -5, %bb.c ], [ -7, %bb.b ], [ -20, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -16, 1) i32 @finish_stringwidth(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.gs_point_s, align 4         ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  %i.a = load ptr, ptr @esp, align 8, !tbaa !11
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  call void @gs_show_width(ptr noundef %i.b, ptr noundef nonnull %1) #7
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store ptr %i.c, ptr @osp, align 8, !tbaa !11
  %i.d = load ptr, ptr @ostop, align 8, !tbaa !11
  %i.e = icmp ugt ptr %i.c, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %0, ptr @osp, align 8, !tbaa !11
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = load float, ptr %1, align 4, !tbaa !29
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.f, ptr %i.g, align 8, !tbaa !14
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 44, ptr %i.h, align 8, !tbaa !8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load float, ptr %i.i, align 4, !tbaa !31
  store float %i.j, ptr %i.c, align 8, !tbaa !14
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i16 44, ptr %i.k, align 8, !tbaa !8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ -16, %bb.b ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  ret i32 %.0
}

declare i32 @gs_stringwidth_n_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @gs_show_width(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @zcharpath(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8, !tbaa !8
  %i.c = and i16 %i.b, 252
  %i.d = icmp eq i16 %i.c, 4
  br i1 %i.d, label %bb.b, label %setup_show.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %0, i64 -16
  %i.f = getelementptr inbounds i8, ptr %0, i64 -8
  %i.g = load i16, ptr %i.f, align 8, !tbaa !8
  %i.h = zext i16 %i.g to i32                     ; 2 uses
  %i.i = and i32 %i.h, 252
  %i.j = icmp eq i32 %i.i, 52
  br i1 %i.j, label %bb.c, label %setup_show.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.k = and i32 %i.h, 512
  %.not.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.not.i, label %setup_show.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr @esp, align 8, !tbaa !11
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  %i.n = load ptr, ptr @estop, align 8, !tbaa !11
  %i.o = icmp ugt ptr %i.m, %i.n
  br i1 %i.o, label %setup_show.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load i32, ptr @gs_show_enum_sizeof, align 4, !tbaa !4
  %i.q = tail call ptr @alloc(i32 noundef 1, i32 noundef %i.p, ptr noundef nonnull @.str.12) #7 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %setup_show.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr @esp, align 8, !tbaa !11   ; 10 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i16 1, ptr %i.t, align 8, !tbaa !14
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store i16 33, ptr %i.u, align 8, !tbaa !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store ptr @finish_show, ptr %i.v, align 8, !tbaa !14
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  store i16 37, ptr %i.w, align 8, !tbaa !8
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 42
  store i16 0, ptr %i.x, align 2, !tbaa !15
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  store i16 0, ptr %i.y, align 8, !tbaa !14
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  store i16 32, ptr %i.z, align 8, !tbaa !8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 64 ; 2 uses
  store ptr %i.aa, ptr @esp, align 8, !tbaa !11
  store ptr %i.q, ptr %i.aa, align 8, !tbaa !14
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  store i16 52, ptr %i.ab, align 8, !tbaa !8
  %i.ac = load i32, ptr @gs_show_enum_sizeof, align 4, !tbaa !4
  %i.ad = trunc i32 %i.ac to i16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 74
  store i16 %i.ad, ptr %i.ae, align 2, !tbaa !15
  %i.af = load ptr, ptr @igs, align 8, !tbaa !16
  %i.ag = load ptr, ptr %i.e, align 8, !tbaa !14
  %i.ah = getelementptr inbounds i8, ptr %0, i64 -6
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !15
  %i.aj = zext i16 %i.ai to i32
  %i.ak = load i16, ptr %0, align 8, !tbaa !14
  %i.al = zext i16 %i.ak to i32
  %i.am = tail call i32 @gs_charpath_n_init(ptr noundef nonnull %i.q, ptr noundef %i.af, ptr noundef %i.ag, i32 noundef %i.aj, i32 noundef %i.al) #7 ; 2 uses
  %i.an = icmp slt i32 %i.am, 0
  br i1 %i.an, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ao = load ptr, ptr @esp, align 8, !tbaa !11
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !14
  %i.aq = load i32, ptr @gs_show_enum_sizeof, align 4, !tbaa !4
  tail call void @alloc_free(ptr noundef %i.ap, i32 noundef 1, i32 noundef %i.aq, ptr noundef nonnull @.str.13) #7
  %i.ar = load ptr, ptr @esp, align 8, !tbaa !11
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -64
  store ptr %i.as, ptr @esp, align 8, !tbaa !11
  br label %setup_show.exit.thread

bb.h:                                             ; preds = %bb.f
  %i.at = load ptr, ptr @osp, align 8, !tbaa !11
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 -32
  store ptr %i.au, ptr @osp, align 8, !tbaa !11
  %i.av = getelementptr inbounds i8, ptr %0, i64 -32
  %i.aw = tail call i32 @show_continue(ptr noundef nonnull %i.av)
  br label %setup_show.exit.thread

setup_show.exit.thread:                           ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a, %bb.h, %bb.g
  %.0 = phi i32 [ -20, %bb.a ], [ %i.am, %bb.g ], [ %i.aw, %bb.h ], [ -25, %bb.e ], [ -5, %bb.d ], [ -7, %bb.c ], [ -20, %bb.b ]
  ret i32 %.0
}

declare i32 @gs_charpath_n_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483648, 1) i32 @zsetcachedevice(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca [6 x float], align 16             ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = load ptr, ptr @esp, align 8, !tbaa !11
  br label %bb.b

bb.b:                                             ; preds = %.critedge.i, %bb.a
  %.0.i = phi ptr [ %i.b, %bb.a ], [ %i.h, %.critedge.i ] ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.d = load i16, ptr %i.c, align 8, !tbaa !8
  %i.e = and i16 %i.d, 252
  %i.f = icmp eq i16 %i.e, 32
  br i1 %i.f, label %bb.c, label %.critedge.i

bb.c:                                             ; preds = %bb.b
  %i.g = load i16, ptr %.0.i, align 8, !tbaa !14
  %.not.i = icmp eq i16 %i.g, 1
  br i1 %.not.i, label %find_show.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds i8, ptr %.0.i, i64 -16 ; 2 uses
  %i.i = icmp ult ptr %i.h, @estack
  br i1 %i.i, label %find_show.exit.thread, label %bb.b, !llvm.loop !32

find_show.exit.thread:                            ; preds = %.critedge.i
  %i.j = call i32 (ptr, i32, ptr, ...) @num_params(ptr noundef %0, i32 noundef 6, ptr noundef nonnull %i.a) #7 ; 0 uses
  br label %bb.k

find_show.exit:                                   ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !14   ; 2 uses
  %i.m = call i32 (ptr, i32, ptr, ...) @num_params(ptr noundef %0, i32 noundef 6, ptr noundef nonnull %i.a) #7 ; 4 uses
  %i.n = icmp eq ptr %i.l, null
  br i1 %i.n, label %bb.k, label %bb.d

bb.d:                                             ; preds = %find_show.exit
  %i.o = icmp slt i32 %i.m, 0
  br i1 %i.o, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i16, ptr %i.p, align 8, !tbaa !8
  %1 = trunc i16 %i.q to i8
  %trunc = and i8 %1, -4
  switch i8 %trunc, label %bb.k [
    i8 0, label %bb.f
    i8 40, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.s = load i16, ptr %i.r, align 2, !tbaa !15
  %.not = icmp eq i16 %i.s, 4
  br i1 %.not, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds i8, ptr %0, i64 -16
  %i.u = call i32 (ptr, i32, ptr, ...) @num_params(ptr noundef nonnull %i.t, i32 noundef 2, ptr noundef nonnull %i.a) #7
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = load ptr, ptr %0, align 8, !tbaa !14
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.z = call i32 (ptr, i32, ptr, ...) @num_params(ptr noundef nonnull %i.x, i32 noundef 4, ptr noundef nonnull %i.y) #7
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.d
  %.011.neg = phi i64 [ -6, %bb.d ], [ -3, %bb.h ]
  %i.ab = load float, ptr %i.a, align 16, !tbaa !28
  %i.ac = fpext float %i.ab to double
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !28
  %i.af = fpext float %i.ae to double
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ah = load float, ptr %i.ag, align 8, !tbaa !28
  %i.ai = fpext float %i.ah to double
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !28
  %i.al = fpext float %i.ak to double
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.an = load float, ptr %i.am, align 16, !tbaa !28
  %i.ao = fpext float %i.an to double
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !28
  %i.ar = fpext float %i.aq to double
  %i.as = call i32 @gs_setcachedevice(ptr noundef nonnull %i.l, double noundef %i.ac, double noundef %i.af, double noundef %i.ai, double noundef %i.al, double noundef %i.ao, double noundef %i.ar) #7 ; 2 uses
  %i.at = icmp slt i32 %i.as, 0
  br i1 %i.at, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = load ptr, ptr @osp, align 8, !tbaa !11
  %i.av = getelementptr inbounds [16 x i8], ptr %i.au, i64 %.011.neg
  store ptr %i.av, ptr @osp, align 8, !tbaa !11
  br label %bb.k

bb.k:                                             ; preds = %find_show.exit.thread, %bb.i, %bb.f, %bb.g, %bb.h, %bb.e, %find_show.exit, %bb.j
  %.0 = phi i32 [ 0, %bb.j ], [ -21, %find_show.exit ], [ -20, %bb.e ], [ %i.m, %bb.f ], [ %i.m, %bb.h ], [ %i.m, %bb.g ], [ %i.as, %bb.i ], [ -21, %find_show.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.0
}

declare i32 @gs_setcachedevice(ptr noundef, double noundef, double noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483648, 1) i32 @zsetcharwidth(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca [2 x float], align 4              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = load ptr, ptr @esp, align 8, !tbaa !11
  br label %bb.b

bb.b:                                             ; preds = %.critedge.i, %bb.a
  %.0.i = phi ptr [ %i.b, %bb.a ], [ %i.h, %.critedge.i ] ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.d = load i16, ptr %i.c, align 8, !tbaa !8
  %i.e = and i16 %i.d, 252
  %i.f = icmp eq i16 %i.e, 32
  br i1 %i.f, label %bb.c, label %.critedge.i

bb.c:                                             ; preds = %bb.b
  %i.g = load i16, ptr %.0.i, align 8, !tbaa !14
  %.not.i = icmp eq i16 %i.g, 1
  br i1 %.not.i, label %find_show.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds i8, ptr %.0.i, i64 -16 ; 2 uses
  %i.i = icmp ult ptr %i.h, @estack
  br i1 %i.i, label %find_show.exit.thread, label %bb.b, !llvm.loop !32

find_show.exit.thread:                            ; preds = %.critedge.i
  %i.j = call i32 (ptr, i32, ptr, ...) @num_params(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %i.a) #7 ; 0 uses
  br label %bb.g

find_show.exit:                                   ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !14   ; 2 uses
  %i.m = call i32 (ptr, i32, ptr, ...) @num_params(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %i.a) #7 ; 2 uses
  %i.n = icmp eq ptr %i.l, null
  br i1 %i.n, label %bb.g, label %bb.d

bb.d:                                             ; preds = %find_show.exit
  %i.o = icmp slt i32 %i.m, 0
  br i1 %i.o, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load float, ptr %i.a, align 4, !tbaa !28
  %i.q = fpext float %i.p to double
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.s = load float, ptr %i.r, align 4, !tbaa !28
  %i.t = fpext float %i.s to double
  %i.u = call i32 @gs_setcharwidth(ptr noundef nonnull %i.l, double noundef %i.q, double noundef %i.t) #7 ; 2 uses
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr @osp, align 8, !tbaa !11
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -32
  store ptr %i.x, ptr @osp, align 8, !tbaa !11
  br label %bb.g

bb.g:                                             ; preds = %find_show.exit.thread, %bb.d, %bb.e, %find_show.exit, %bb.f
  %.05 = phi i32 [ 0, %bb.f ], [ -21, %find_show.exit ], [ %i.m, %bb.d ], [ %i.u, %bb.e ], [ -21, %find_show.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.05
}

declare i32 @gs_setcharwidth(ptr noundef, double noundef, double noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483648, 1) i32 @ztype1addpath(ptr noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %1 = alloca %struct.gs_fixed_point_s, align 8   ; 5 uses
  %2 = alloca %struct.gs_fixed_point_s, align 8   ; 5 uses
  %3 = alloca %struct.gs_type1_data_s, align 8    ; 6 uses
  %4 = alloca %struct.z1_data, align 8            ; 8 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = load ptr, ptr @esp, align 8, !tbaa !11
  br label %bb.b

bb.b:                                             ; preds = %.critedge.i, %bb.a
  %.0.i = phi ptr [ %i.c, %bb.a ], [ %i.i, %.critedge.i ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.e = load i16, ptr %i.d, align 8, !tbaa !8
  %i.f = and i16 %i.e, 252
  %i.g = icmp eq i16 %i.f, 32
  br i1 %i.g, label %bb.c, label %.critedge.i

bb.c:                                             ; preds = %bb.b
  %i.h = load i16, ptr %.0.i, align 8, !tbaa !14
  %.not.i = icmp eq i16 %i.h, 1
  br i1 %.not.i, label %bb.d, label %.critedge.i

.critedge.i:                                      ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds i8, ptr %.0.i, i64 -16 ; 2 uses
  %i.j = icmp ult ptr %i.i, @estack
  br i1 %i.j, label %find_show.exit, label %bb.b, !llvm.loop !32

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !14
  br label %find_show.exit

find_show.exit:                                   ; preds = %.critedge.i, %bb.d
  %.05.i = phi ptr [ %i.l, %bb.d ], [ null, %.critedge.i ] ; 3 uses
  %i.m = load ptr, ptr @igs, align 8, !tbaa !16
  %i.n = tail call ptr @gs_currentfont(ptr noundef %i.m) #7 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !20   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.q = icmp eq ptr %.05.i, null
  br i1 %i.q, label %bb.u, label %bb.e

bb.e:                                             ; preds = %find_show.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load i16, ptr %i.r, align 8, !tbaa !8
  %i.t = and i16 %i.s, 252
  %i.u = icmp eq i16 %i.t, 52
  br i1 %i.u, label %bb.f, label %bb.u

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 32, i1 false), !tbaa.struct !34
  store ptr %i.p, ptr %4, align 8, !tbaa !37
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store ptr %i.w, ptr %i.x, align 8, !tbaa !41
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %4, ptr %i.y, align 8, !tbaa !42
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !15
  %i.ab = zext i16 %i.aa to i32
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !44
  %.not = icmp slt i32 %i.ad, %i.ab
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = load ptr, ptr @osp, align 8, !tbaa !11
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -16
end_hunk_0
