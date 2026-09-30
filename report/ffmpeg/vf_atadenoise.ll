Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_atadenoise?download=true
inline.NumInlined: 12
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0
@.str.15 = private unnamed_addr constant [30 x i8] c"set threshold B for 2nd plane\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"2a\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"set threshold A for 3rd plane\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"2b\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"set threshold B for 3rd plane\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"set how many frames to use\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"set what planes to filter\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"set variant of algorithm\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"parallel\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"0s\00", align 1
@.str.29 = private unnamed_addr constant [24 x i8] c"set sigma for 1st plane\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"1s\00", align 1
@.str.31 = private unnamed_addr constant [24 x i8] c"set sigma for 2nd plane\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"2s\00", align 1
@.str.33 = private unnamed_addr constant [24 x i8] c"set sigma for 3rd plane\00", align 1
@atadenoise_options = internal constant <{ { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } }> <{ { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.8, ptr @.str.9, i32 8, i32 5, { double } { double 2.000000e-02 }, double 0.000000e+00, double 3.000000e-01, i32 98320, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.10, ptr @.str.11, i32 24, i32 5, { double } { double 4.000000e-02 }, double 0.000000e+00, double 5.000000e+00, i32 98320, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.12, ptr @.str.13, i32 12, i32 5, { double } { double 2.000000e-02 }, double 0.000000e+00, double 3.000000e-01, i32 98320, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.14, ptr @.str.15, i32 28, i32 5, { double } { double 4.000000e-02 }, double 0.000000e+00, double 5.000000e+00, i32 98320, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.16, ptr @.str.17, i32 16, i32 5, { double } { double 2.000000e-02 }, double 0.000000e+00, double 3.000000e-01, i32 98320, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.18, ptr @.str.19, i32 32, i32 5, { double } { double 4.000000e-02 }, double 0.000000e+00, double 5.000000e+00, i32 98320, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.20, ptr @.str.21, i32 9448, i32 2, %union.anon.2 { i64 9 }, double 5.000000e+00, double 1.290000e+02, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.22, ptr @.str.23, i32 92, i32 1, %union.anon.2 { i64 7 }, double 0.000000e+00, double 1.500000e+01, i32 98320, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.24, ptr @.str.25, i32 88, i32 2, %union.anon.2 zeroinitializer, double 0.000000e+00, double 1.000000e+00, i32 98320, [4 x i8] zeroinitializer, ptr @.str.24 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.22, ptr @.str.26, i32 0, i32 11, %union.anon.2 zeroinitializer, double 0.000000e+00, double 0.000000e+00, i32 98320, [4 x i8] zeroinitializer, ptr @.str.24 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.20, ptr @.str.27, i32 0, i32 11, %union.anon.2 { i64 1 }, double 0.000000e+00, double 0.000000e+00, i32 98320, [4 x i8] zeroinitializer, ptr @.str.24 }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.28, ptr @.str.29, i32 40, i32 5, { double } { double 3.276700e+04 }, double 0.000000e+00, double 3.276700e+04, i32 98320, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.30, ptr @.str.31, i32 44, i32 5, { double } { double 3.276700e+04 }, double 0.000000e+00, double 3.276700e+04, i32 98320, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.32, ptr @.str.33, i32 48, i32 5, { double } { double 3.276700e+04 }, double 0.000000e+00, double 3.276700e+04, i32 98320, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } zeroinitializer }>, align 16
@.str.35 = private unnamed_addr constant [61 x i8] c"size %d is invalid. Must be an odd value, setting it to %d.\0A\00", align 1

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @init(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 9448 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !24   ; 4 uses
  %i.e = and i32 %i.d, 1
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = or disjoint i32 %i.d, 1
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.35, i32 noundef %i.d, i32 noundef %i.f) #10
  %i.g = load i32, ptr %i.c, align 8, !tbaa !24
  %i.h = or i32 %i.g, 1                           ; 2 uses
  store i32 %i.h, ptr %i.c, align 8, !tbaa !24
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = phi i32 [ %i.h, %bb.b ], [ %i.d, %bb.a ]
  %i.j = sdiv i32 %i.i, 2                         ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 9456
  store i32 %i.j, ptr %i.k, align 8, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 9452
  store i32 %i.j, ptr %i.l, align 4, !tbaa !26
  ret i32 0
}

; Function Attrs: cold nounwind optsize uwtable
define internal void @uninit(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 1186 ; 3 uses
  %i.f = load i16, ptr %i.e, align 2, !tbaa !27   ; 2 uses
  %.not2.i = icmp eq i16 %i.f, 0
  br i1 %.not2.i, label %ff_bufqueue_discard_all.exit, label %ff_bufqueue_get.exit.lr.ph.i

ff_bufqueue_get.exit.lr.ph.i:                     ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 1184 ; 2 uses
  br label %ff_bufqueue_get.exit.i

ff_bufqueue_get.exit.i:                           ; preds = %ff_bufqueue_get.exit.i, %ff_bufqueue_get.exit.lr.ph.i
  %i.h = phi i16 [ %i.f, %ff_bufqueue_get.exit.lr.ph.i ], [ %i.r, %ff_bufqueue_get.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.i = load i16, ptr %i.g, align 8, !tbaa !28   ; 2 uses
  %i.j = zext i16 %i.i to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.j ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !30
  %i.m = add i16 %i.h, -1
  store i16 %i.m, ptr %i.e, align 2, !tbaa !27
  store ptr null, ptr %i.k, align 8, !tbaa !30
  %i.n = zext i16 %i.i to i32
  %i.o = add nuw nsw i32 %i.n, 1
  %i.p = urem i32 %i.o, 129
  %i.q = trunc nuw nsw i32 %i.p to i16
  store i16 %i.q, ptr %i.g, align 8, !tbaa !28
  store ptr %i.l, ptr %i.a, align 8, !tbaa !30
  call void @av_frame_free(ptr noundef nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.r = load i16, ptr %i.e, align 2, !tbaa !27   ; 2 uses
  %.not.i = icmp eq i16 %i.r, 0
  br i1 %.not.i, label %ff_bufqueue_discard_all.exit, label %ff_bufqueue_get.exit.i, !llvm.loop !68

ff_bufqueue_discard_all.exit:                     ; preds = %ff_bufqueue_get.exit.i, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @process_command(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) #1 {
bb.a:
  %i.a = tail call i32 @ff_filter_process_command(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) #10 ; 2 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !34
  %i.f = tail call i32 @config_input(ptr noundef %i.e)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ %i.a, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @filter_frame(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %struct.ThreadData, align 8         ; 6 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !30
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !43   ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !71
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !34   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !19   ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 152 ; 9 uses
  %i.k = getelementptr i8, ptr %i.i, i64 1186     ; 18 uses
  %i.l = load i16, ptr %i.k, align 2, !tbaa !72   ; 2 uses
  %i.m = zext i16 %i.l to i32                     ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 9448 ; 4 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !24   ; 2 uses
  %.not = icmp eq i32 %i.o, %i.m
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 9452 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !26   ; 3 uses
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = icmp sgt i32 %i.q, %i.m
  br i1 %i.r, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 1184 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %ff_bufqueue_add.exit
  %.07198 = phi i32 [ 0, %.lr.ph ], [ %i.am, %ff_bufqueue_add.exit ]
  %i.t = tail call ptr @av_frame_clone(ptr noundef %1) #10 ; 2 uses
  %.not85 = icmp eq ptr %i.t, null
  br i1 %.not85, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @av_frame_free(ptr noundef nonnull %i.a) #10
  br label %bb.q

bb.e:                                             ; preds = %bb.c
  %.val.i = load i16, ptr %i.k, align 2, !tbaa !27 ; 2 uses
  %.not.i = icmp eq i16 %.val.i, 129
  br i1 %.not.i, label %bb.f, label %ff_bufqueue_add.exit

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.d, i32 noundef 24, ptr noundef nonnull @.str.3) #10
  %i.u = load i16, ptr %i.s, align 8, !tbaa !28
  %i.v = zext i16 %i.u to i32
  %i.w = load i16, ptr %i.k, align 2, !tbaa !27
  %i.x = add i16 %i.w, -1                         ; 2 uses
  store i16 %i.x, ptr %i.k, align 2, !tbaa !27
  %i.y = zext i16 %i.x to i32
  %i.z = add nuw nsw i32 %i.y, %i.v
  %i.aa = urem i32 %i.z, 129
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.ab
  tail call void @av_frame_free(ptr noundef nonnull %i.ac) #10
  %.pre.i = load i16, ptr %i.k, align 2, !tbaa !27
  br label %ff_bufqueue_add.exit

ff_bufqueue_add.exit:                             ; preds = %bb.e, %bb.f
  %i.ad = phi i16 [ %.pre.i, %bb.f ], [ %.val.i, %bb.e ] ; 2 uses
  %i.ae = load i16, ptr %i.s, align 8, !tbaa !28
  %i.af = zext i16 %i.ae to i32
  %i.ag = add i16 %i.ad, 1                        ; 3 uses
  store i16 %i.ag, ptr %i.k, align 2, !tbaa !27
  %i.ah = zext i16 %i.ad to i32
  %i.ai = add nuw nsw i32 %i.af, %i.ah
  %i.aj = urem i32 %i.ai, 129
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.ak
  store ptr %i.t, ptr %i.al, align 8, !tbaa !30
  %i.am = add nuw nsw i32 %.07198, 1              ; 2 uses
  %i.an = load i32, ptr %i.p, align 4, !tbaa !26
  %i.ao = icmp slt i32 %i.am, %i.an
  br i1 %i.ao, label %bb.c, label %.loopexit.loopexit, !llvm.loop !69

.loopexit.loopexit:                               ; preds = %ff_bufqueue_add.exit
  %.pre = load i32, ptr %i.n, align 8, !tbaa !24
  %.pre101 = zext i16 %i.ag to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.b
  %.pre-phi = phi i32 [ %i.m, %bb.b ], [ %.pre101, %.loopexit.loopexit ] ; 2 uses
  %i.ap = phi i32 [ %i.o, %bb.b ], [ %.pre, %.loopexit.loopexit ]
  %.val.i87 = phi i16 [ %i.l, %bb.b ], [ %i.ag, %.loopexit.loopexit ] ; 2 uses
  %i.aq = icmp sgt i32 %i.ap, %.pre-phi
  br i1 %i.aq, label %bb.g, label %bb.q

bb.g:                                             ; preds = %.loopexit
  %.not.i88 = icmp eq i16 %.val.i87, 129
  br i1 %.not.i88, label %bb.h, label %ff_bufqueue_add.exit90

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.d, i32 noundef 24, ptr noundef nonnull @.str.3) #10
  %i.ar = getelementptr inbounds nuw i8, ptr %i.i, i64 1184
  %i.as = load i16, ptr %i.ar, align 8, !tbaa !28
  %i.at = zext i16 %i.as to i32
  %i.au = load i16, ptr %i.k, align 2, !tbaa !27
  %i.av = add i16 %i.au, -1                       ; 2 uses
  store i16 %i.av, ptr %i.k, align 2, !tbaa !27
  %i.aw = zext i16 %i.av to i32
  %i.ax = add nuw nsw i32 %i.aw, %i.at
  %i.ay = urem i32 %i.ax, 129
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.az
  tail call void @av_frame_free(ptr noundef nonnull %i.ba) #10
  %.pre.i89 = load i16, ptr %i.k, align 2, !tbaa !27 ; 2 uses
  %.pre102 = zext i16 %.pre.i89 to i32
  br label %ff_bufqueue_add.exit90

ff_bufqueue_add.exit90:                           ; preds = %bb.g, %bb.h
  %.pre-phi103 = phi i32 [ %.pre-phi, %bb.g ], [ %.pre102, %bb.h ]
  %i.bb = phi i16 [ %.val.i87, %bb.g ], [ %.pre.i89, %bb.h ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.i, i64 1184
  %i.bd = load i16, ptr %i.bc, align 8, !tbaa !28
  %i.be = zext i16 %i.bd to i32
  %i.bf = add i16 %i.bb, 1
  store i16 %i.bf, ptr %i.k, align 2, !tbaa !27
  %i.bg = add nuw nsw i32 %.pre-phi103, %i.be
  %i.bh = urem i32 %i.bg, 129
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.bi
  store ptr %1, ptr %i.bj, align 8, !tbaa !30
  %i.bk = getelementptr inbounds nuw i8, ptr %i.i, i64 9460 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !44
  %i.bm = add nsw i32 %i.bl, 1
  store i32 %i.bm, ptr %i.bk, align 4, !tbaa !44
  br label %bb.q

bb.i:                                             ; preds = %bb.a
  %i.bn = icmp ult i32 %i.q, %i.m
  br i1 %i.bn, label %bb.j, label %ff_bufqueue_peek.exit

bb.j:                                             ; preds = %bb.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.i, i64 1184
  %i.bp = load i16, ptr %i.bo, align 8, !tbaa !28
  %i.bq = zext i16 %i.bp to i32
  %i.br = add nuw nsw i32 %i.q, %i.bq
  %i.bs = urem i32 %i.br, 129
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.bt
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !30
  br label %ff_bufqueue_peek.exit

ff_bufqueue_peek.exit:                            ; preds = %bb.i, %bb.j
  %i.bw = phi ptr [ %i.bv, %bb.j ], [ null, %bb.i ] ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !45
  %.not82 = icmp eq i32 %i.by, 0
  br i1 %.not82, label %bb.k, label %bb.l

bb.k:                                             ; preds = %ff_bufqueue_peek.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.bz = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !46
  %i.cb = getelementptr inbounds nuw i8, ptr %i.g, i64 44
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !47
  %i.cd = tail call ptr @ff_get_video_buffer(ptr noundef %i.g, i32 noundef %i.ca, i32 noundef %i.cc) #10 ; 4 uses
  %.not83.not = icmp eq ptr %i.cd, null
  br i1 %.not83.not, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.k
  %i.ce = load i32, ptr %i.n, align 8, !tbaa !24
  %i.cf = icmp sgt i32 %i.ce, 0
  br i1 %i.cf, label %ff_bufqueue_peek.exit91.lr.ph, label %._crit_edge

ff_bufqueue_peek.exit91.lr.ph:                    ; preds = %.preheader
  %i.cg = load i16, ptr %i.k, align 2, !tbaa !27
  %i.ch = getelementptr inbounds nuw i8, ptr %i.i, i64 1184
  %i.ci = load i16, ptr %i.ch, align 8, !tbaa !28
  %i.cj = getelementptr inbounds nuw i8, ptr %i.i, i64 1192
  %i.ck = getelementptr inbounds nuw i8, ptr %i.i, i64 2224
  %i.cl = getelementptr inbounds nuw i8, ptr %i.i, i64 3256
  %i.cm = getelementptr inbounds nuw i8, ptr %i.i, i64 5320
  %i.cn = getelementptr inbounds nuw i8, ptr %i.i, i64 5836
  %i.co = getelementptr inbounds nuw i8, ptr %i.i, i64 6352
  %i.cp = zext i16 %i.ci to i64
  %i.cq = zext i16 %i.cg to i64
  br label %ff_bufqueue_peek.exit91

.thread:                                          ; preds = %bb.k
  call void @av_frame_free(ptr noundef nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %bb.q

ff_bufqueue_peek.exit91:                          ; preds = %ff_bufqueue_peek.exit91.lr.ph, %ff_bufqueue_peek.exit91
  %indvars.iv = phi i64 [ 0, %ff_bufqueue_peek.exit91.lr.ph ], [ %indvars.iv.next, %ff_bufqueue_peek.exit91 ] ; 9 uses
  %i.cr = icmp samesign ult i64 %indvars.iv, %i.cq
  tail call void @llvm.assume(i1 %i.cr)
  %i.cs = add nuw nsw i64 %indvars.iv, %i.cp
  %i.ct = trunc nuw nsw i64 %i.cs to i32
  %i.cu = urem i32 %i.ct, 129
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.cv
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !30 ; 6 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !48
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %indvars.iv
  store ptr %i.cy, ptr %i.cz, align 8, !tbaa !49
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !48
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %indvars.iv
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !49
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !48
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv
  store ptr %i.de, ptr %i.df, align 8, !tbaa !49
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cx, i64 64
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !50
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv
  store i32 %i.dh, ptr %i.di, align 4, !tbaa !50
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cx, i64 68
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !50
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv
  store i32 %i.dk, ptr %i.dl, align 4, !tbaa !50
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cx, i64 72
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !50
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv
  store i32 %i.dn, ptr %i.do, align 4, !tbaa !50
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dp = load i32, ptr %i.n, align 8, !tbaa !24
  %i.dq = sext i32 %i.dp to i64
  %i.dr = icmp slt i64 %indvars.iv.next, %i.dq
  br i1 %i.dr, label %ff_bufqueue_peek.exit91, label %._crit_edge, !llvm.loop !70

._crit_edge:                                      ; preds = %ff_bufqueue_peek.exit91, %.preheader
  store ptr %i.bw, ptr %2, align 8, !tbaa !52
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.cd, ptr %i.ds, align 8, !tbaa !53
  %i.dt = getelementptr inbounds nuw i8, ptr %i.i, i64 9464
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !54
  %i.dv = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !50
  %i.dx = getelementptr inbounds nuw i8, ptr %i.i, i64 124
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !50
  %. = tail call i32 @llvm.smin.i32(i32 %i.dw, i32 %i.dy)
  %i.dz = tail call i32 @ff_filter_get_nb_threads(ptr noundef nonnull %i.d) #11
  %spec.select = tail call i32 @llvm.smin.i32(i32 %., i32 %i.dz)
  %i.ea = call i32 @ff_filter_execute(ptr noundef nonnull %i.d, ptr noundef %i.du, ptr noundef nonnull %2, ptr noundef null, i32 noundef %spec.select) #10 ; 0 uses
  %i.eb = call i32 @av_frame_copy_props(ptr noundef nonnull %i.cd, ptr noundef %i.bw) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %bb.n

bb.l:                                             ; preds = %ff_bufqueue_peek.exit
  %i.ec = tail call ptr @av_frame_clone(ptr noundef %i.bw) #10 ; 2 uses
  %.not84 = icmp eq ptr %i.ec, null
  br i1 %.not84, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @av_frame_free(ptr noundef nonnull %i.a) #10
  br label %bb.q

bb.n:                                             ; preds = %._crit_edge, %bb.l
  %.073 = phi ptr [ %i.ec, %bb.l ], [ %i.cd, %._crit_edge ]
  %i.ed = load i16, ptr %i.k, align 2, !tbaa !27  ; 2 uses
  %.not.i92 = icmp eq i16 %i.ed, 0
  br i1 %.not.i92, label %bb.o, label %ff_bufqueue_get.exit

bb.o:                                             ; preds = %bb.n
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 101) #10
  call void @abort() #12
  unreachable

ff_bufqueue_get.exit:                             ; preds = %bb.n
  %i.ee = getelementptr inbounds nuw i8, ptr %i.i, i64 1184 ; 4 uses
  %i.ef = load i16, ptr %i.ee, align 8, !tbaa !28 ; 2 uses
  %i.eg = zext i16 %i.ef to i64
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.eg ; 2 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !30
  %i.ej = add i16 %i.ed, -1
  store i16 %i.ej, ptr %i.k, align 2, !tbaa !27
  store ptr null, ptr %i.eh, align 8, !tbaa !30
  %i.ek = zext i16 %i.ef to i32
  %i.el = add nuw nsw i32 %i.ek, 1
  %i.em = urem i32 %i.el, 129
  %i.en = trunc nuw nsw i32 %i.em to i16
  store i16 %i.en, ptr %i.ee, align 8, !tbaa !28
  store ptr %i.ei, ptr %i.b, align 8, !tbaa !30
  call void @av_frame_free(ptr noundef nonnull %i.b) #10
  %i.eo = load ptr, ptr %i.a, align 8, !tbaa !30
  %.val.i93 = load i16, ptr %i.k, align 2, !tbaa !27 ; 2 uses
  %.not.i94 = icmp eq i16 %.val.i93, 129
  br i1 %.not.i94, label %bb.p, label %ff_bufqueue_add.exit96

bb.p:                                             ; preds = %ff_bufqueue_get.exit
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.d, i32 noundef 24, ptr noundef nonnull @.str.3) #10
end_hunk_0
