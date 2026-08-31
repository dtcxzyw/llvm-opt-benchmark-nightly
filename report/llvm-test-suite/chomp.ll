Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/chomp?download=true
inline.NumInlined: 31
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@make_play:bb.a

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.preheader.outer, %copy_data.exit.valid_data.exit_crit_edge
  %.045 = phi ptr [ %i.ar, %copy_data.exit.valid_data.exit_crit_edge ], [ %.045.ph, %.lr.ph.i.preheader.outer ] ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.i.preheader ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %.01744.ph, i64 %indvars.iv ; 3 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !4    ; 2 uses
  %i.m = load i32, ptr @nrow, align 4, !tbaa !4
  %i.n = icmp eq i32 %i.l, %i.m
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  store i32 0, ptr %i.k, align 4, !tbaa !4
  %i.o = load i32, ptr @ncol, align 4, !tbaa !4
  %i.p = zext i32 %i.o to i64
  %.not.not.i = icmp eq i64 %indvars.iv.next, %i.p
  br i1 %.not.not.i, label %.loopexit38, label %.lr.ph.i, !llvm.loop !8

bb.c:                                             ; preds = %.lr.ph.i
  %i.q = add nsw i32 %i.l, 1
  store i32 %i.q, ptr %i.k, align 4, !tbaa !4
  %i.r = load i32, ptr @ncol, align 4, !tbaa !4   ; 5 uses
  %.not9.i = icmp eq i32 %i.r, 0                  ; 2 uses
  br i1 %.not9.i, label %.loopexit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.s = load i32, ptr @nrow, align 4, !tbaa !4
  %i.t = zext i32 %i.r to i64
  br label %.lr.ph.i20

bb.d:                                             ; preds = %.lr.ph.i20
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next.i, %i.t
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i20, !llvm.loop !20

.lr.ph.i20:                                       ; preds = %bb.d, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.d ] ; 2 uses
  %.0710.i = phi i32 [ %i.s, %.lr.ph.preheader.i ], [ %i.v, %bb.d ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %.01744.ph, i64 %indvars.iv.i
  %i.v = load i32, ptr %i.u, align 4, !tbaa !4    ; 2 uses
  %i.w = icmp sgt i32 %i.v, %.0710.i
  br i1 %i.w, label %valid_data.exit, label %bb.d

.loopexit:                                        ; preds = %bb.d, %bb.c
  %i.x = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.045, i64 24 ; 3 uses
  store ptr %i.x, ptr %i.y, align 8, !tbaa !27
  %i.z = load ptr, ptr @game_tree, align 8, !tbaa !32
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.loopexit
  store ptr %i.x, ptr @game_tree, align 8, !tbaa !32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.loopexit
  %i.ab = sext i32 %i.r to i64
  %i.ac = shl nsw i64 %i.ab, 2
  %i.ad = tail call noalias ptr @malloc(i64 noundef %i.ac) #16 ; 2 uses
  br i1 %.not9.i, label %copy_data.exit, label %.lr.ph.preheader.i21

.lr.ph.preheader.i21:                             ; preds = %bb.f
  %i.ae = add i32 %i.r, -1                        ; 2 uses
  %i.af = sext i32 %i.ae to i64
  %i.ag = zext i32 %i.ae to i64
  %i.ah = sub nsw i64 %i.af, %i.ag
  %i.ai = shl nsw i64 %i.ah, 2                    ; 2 uses
  %scevgep.i = getelementptr i8, ptr %i.ad, i64 %i.ai
  %scevgep7.i = getelementptr i8, ptr %.01744.ph, i64 %i.ai
  %i.aj = zext i32 %i.r to i64
  %i.ak = shl nuw nsw i64 %i.aj, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep.i, ptr readonly align 4 %scevgep7.i, i64 %i.ak, i1 false), !tbaa !4
  br label %copy_data.exit

copy_data.exit:                                   ; preds = %bb.f, %.lr.ph.preheader.i21
  %i.al = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.ad, ptr %i.al, align 8, !tbaa !31
  %i.am = call ptr @make_list(ptr noundef %.01744.ph, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a)
  %i.an = load ptr, ptr %i.y, align 8, !tbaa !27  ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !30
  %i.ap = load i32, ptr %i.b, align 4, !tbaa !4
  store i32 %i.ap, ptr %i.an, align 8, !tbaa !34
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store ptr null, ptr %i.aq, align 8, !tbaa !27
  %i.ar = load ptr, ptr %i.y, align 8, !tbaa !27  ; 3 uses
  %i.as = load i32, ptr %i.a, align 4, !tbaa !4
  %i.at = icmp eq i32 %i.as, 2
  br i1 %i.at, label %bb.g, label %copy_data.exit.valid_data.exit_crit_edge

copy_data.exit.valid_data.exit_crit_edge:         ; preds = %copy_data.exit
  %.pre52 = load i32, ptr @ncol, align 4, !tbaa !4
  %i.au = icmp eq i32 %.pre52, 0
  br i1 %i.au, label %.loopexit38, label %.lr.ph.i.preheader, !llvm.loop !56

bb.g:                                             ; preds = %copy_data.exit
  tail call void @free(ptr noundef %.01744.ph) #17
  %i.av = load i32, ptr @nrow, align 4, !tbaa !4  ; 2 uses
  %i.aw = load i32, ptr @ncol, align 4, !tbaa !4  ; 4 uses
  %i.ax = sext i32 %i.aw to i64
  %i.ay = shl nsw i64 %i.ax, 2
  %i.az = tail call noalias ptr @malloc(i64 noundef %i.ay) #16 ; 4 uses
  %.not11.i = icmp eq i32 %i.aw, 0
  br i1 %.not11.i, label %.loopexit38, label %.lr.ph.i22

.lr.ph.i22:                                       ; preds = %bb.g
  %i.ba = zext i32 %i.aw to i64                   ; 3 uses
  %min.iters.check = icmp ult i32 %i.aw, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i22
  %n.vec = and i64 %i.ba, 4294967288              ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.av, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %index ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.bb, align 4, !tbaa !4
  store <4 x i32> %broadcast.splat, ptr %i.bc, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !57

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ba
  br i1 %cmp.n, label %valid_data.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i22, %middle.block
  %indvars.iv.i23.ph = phi i64 [ 0, %.lr.ph.i22 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i23 = phi i64 [ %indvars.iv.next.i24, %scalar.ph ], [ %indvars.iv.i23.ph, %scalar.ph.preheader ] ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i23
  store i32 %i.av, ptr %i.be, align 4, !tbaa !4
  %indvars.iv.next.i24 = add nuw nsw i64 %indvars.iv.i23, 1 ; 2 uses
  %.not.i25 = icmp eq i64 %indvars.iv.next.i24, %i.ba
  br i1 %.not.i25, label %valid_data.exit, label %scalar.ph, !llvm.loop !58

valid_data.exit:                                  ; preds = %scalar.ph, %.lr.ph.i20, %middle.block
  %.118 = phi ptr [ %i.az, %middle.block ], [ %.01744.ph, %.lr.ph.i20 ], [ %i.az, %scalar.ph ]
  %.1 = phi ptr [ %i.ar, %middle.block ], [ %.045, %.lr.ph.i20 ], [ %i.ar, %scalar.ph ]
  br label %.lr.ph.i.preheader.outer, !llvm.loop !56

.loopexit38:                                      ; preds = %bb.g, %copy_data.exit.valid_data.exit_crit_edge, %bb.b, %bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !27
  tail call void @free(ptr noundef %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  ret ptr %i.bg
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @make_wanted(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !21
  %i.c = load i32, ptr @nrow, align 4, !tbaa !4   ; 5 uses
  %.not43 = icmp eq i32 %i.c, 0
  br i1 %.not43, label %._crit_edge46, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = load i32, ptr @ncol, align 4, !tbaa !4   ; 6 uses
  %.not2638 = icmp eq i32 %i.d, 0
  %i.e = sext i32 %i.d to i64                     ; 7 uses
  %i.f = shl nsw i64 %i.e, 2                      ; 2 uses
  %i.g = zext i32 %i.d to i64                     ; 3 uses
  %i.h = add i32 %i.d, -1                         ; 2 uses
  %i.i = sext i32 %i.h to i64
  %i.j = zext i32 %i.h to i64
  %i.k = sub nsw i64 %i.i, %i.j
  %i.l = shl nsw i64 %i.k, 2                      ; 2 uses
  %i.m = shl nuw nsw i64 %i.g, 2
  %i.n = add nsw i32 %i.c, -1
  br i1 %.not2638, label %._crit_edge46, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %broadcast.splatinsert104 = insertelement <4 x i32> poison, i32 %i.c, i64 0
  %broadcast.splat105 = shufflevector <4 x i32> %broadcast.splatinsert104, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %min.iters.check = icmp ult i32 %i.d, 8
  %n.vec = and i64 %i.e, -8                       ; 2 uses
  %i.o = and i64 %i.e, 7
  %cmp.n = icmp eq i64 %n.vec, %i.e
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.045 = phi ptr [ %.258, %._crit_edge ], [ %i.a, %.preheader.preheader ]
  %.02344 = phi i32 [ %i.bd, %._crit_edge ], [ 0, %.preheader.preheader ] ; 4 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.02344, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.c
  %indvar = phi i64 [ 0, %.preheader ], [ %indvar.next, %bb.c ] ; 2 uses
  %.141 = phi ptr [ %.045, %.preheader ], [ %i.bb, %bb.c ] ; 2 uses
  %.02140 = phi i32 [ 0, %.preheader ], [ %i.bc, %bb.c ] ; 4 uses
  %1 = sub i64 %i.g, %indvar                      ; 3 uses
  %i.p = tail call noalias ptr @malloc(i64 noundef %i.f) #16 ; 10 uses
  %.not11.i = icmp eq i32 %.02140, 0              ; 2 uses
  br i1 %.not11.i, label %.lr.ph15.preheader.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.q = zext nneg i32 %.02140 to i64             ; 5 uses
  %min.iters.check101 = icmp samesign ult i32 %.02140, 8
  br i1 %min.iters.check101, label %scalar.ph100.preheader, label %vector.ph102

vector.ph102:                                     ; preds = %.lr.ph.i
  %n.vec103 = and i64 %i.q, 2147483640            ; 3 uses
  br label %vector.body106

vector.body106:                                   ; preds = %vector.body106, %vector.ph102
  %index107 = phi i64 [ 0, %vector.ph102 ], [ %index.next108, %vector.body106 ] ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %index107 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <4 x i32> %broadcast.splat105, ptr %i.r, align 4, !tbaa !4
  store <4 x i32> %broadcast.splat105, ptr %i.s, align 4, !tbaa !4
  %index.next108 = add nuw i64 %index107, 8       ; 2 uses
  %i.t = icmp eq i64 %index.next108, %n.vec103
  br i1 %i.t, label %middle.block109, label %vector.body106, !llvm.loop !59

middle.block109:                                  ; preds = %vector.body106
  %cmp.n110 = icmp eq i64 %n.vec103, %i.q
  br i1 %cmp.n110, label %.lr.ph15.preheader.i, label %scalar.ph100.preheader

scalar.ph100.preheader:                           ; preds = %.lr.ph.i, %middle.block109
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec103, %middle.block109 ]
  br label %scalar.ph100

.lr.ph15.preheader.i:                             ; preds = %scalar.ph100, %middle.block109, %bb.b
  %.pre-phi = phi i64 [ 0, %bb.b ], [ %i.q, %middle.block109 ], [ %i.q, %scalar.ph100 ] ; 3 uses
  %min.iters.check91 = icmp ult i64 %1, 8
  br i1 %min.iters.check91, label %.lr.ph15.i.preheader, label %vector.ph92

vector.ph92:                                      ; preds = %.lr.ph15.preheader.i
  %n.vec93 = and i64 %1, -8                       ; 3 uses
  %i.u = add i64 %.pre-phi, %n.vec93
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %.pre-phi
  br label %vector.body94

vector.body94:                                    ; preds = %vector.body94, %vector.ph92
  %index95 = phi i64 [ 0, %vector.ph92 ], [ %index.next96, %vector.body94 ] ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %index95 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.w, align 4, !tbaa !4
  store <4 x i32> %broadcast.splat, ptr %i.x, align 4, !tbaa !4
  %index.next96 = add nuw i64 %index95, 8         ; 2 uses
  %i.y = icmp eq i64 %index.next96, %n.vec93
  br i1 %i.y, label %middle.block97, label %vector.body94, !llvm.loop !60

middle.block97:                                   ; preds = %vector.body94
  %cmp.n98 = icmp eq i64 %1, %n.vec93
  br i1 %cmp.n98, label %.lr.ph.i28.preheader, label %.lr.ph15.i.preheader

.lr.ph15.i.preheader:                             ; preds = %.lr.ph15.preheader.i, %middle.block97
  %indvars.iv17.i.ph = phi i64 [ %.pre-phi, %.lr.ph15.preheader.i ], [ %i.u, %middle.block97 ]
  br label %.lr.ph15.i

scalar.ph100:                                     ; preds = %scalar.ph100.preheader, %scalar.ph100
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph100 ], [ %indvars.iv.i.ph, %scalar.ph100.preheader ] ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.i
  store i32 %i.c, ptr %i.z, align 4, !tbaa !4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next.i, %i.q
  br i1 %.not.i, label %.lr.ph15.preheader.i, label %scalar.ph100, !llvm.loop !61

.lr.ph15.i:                                       ; preds = %.lr.ph15.i.preheader, %.lr.ph15.i
  %indvars.iv17.i = phi i64 [ %indvars.iv.next18.i, %.lr.ph15.i ], [ %indvars.iv17.i.ph, %.lr.ph15.i.preheader ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv17.i
  store i32 %.02344, ptr %i.aa, align 4, !tbaa !4
  %indvars.iv.next18.i = add nuw nsw i64 %indvars.iv17.i, 1 ; 2 uses
  %.not10.i = icmp eq i64 %indvars.iv.next18.i, %i.g
  br i1 %.not10.i, label %.lr.ph.i28.preheader, label %.lr.ph15.i, !llvm.loop !62

.lr.ph.i28.preheader:                             ; preds = %.lr.ph15.i, %middle.block97
  br i1 %min.iters.check, label %.lr.ph.i28.preheader112, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i28.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i28.preheader ] ; 2 uses
  %i.ab = xor i64 %index, -1
  %i.ac = add i64 %i.ab, %i.e                     ; 2 uses
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.ac ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -12 ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %i.ad, i64 -28 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.ae, align 4, !tbaa !4
  %wide.load82 = load <4 x i32>, ptr %i.af, align 4, !tbaa !4
  %i.ag = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ac ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -12
  %i.ai = getelementptr inbounds i8, ptr %i.ag, i64 -28
  %wide.load84 = load <4 x i32>, ptr %i.ah, align 4, !tbaa !4
  %wide.load85 = load <4 x i32>, ptr %i.ai, align 4, !tbaa !4
  %i.aj = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load, <4 x i32> %wide.load84)
  %i.ak = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load82, <4 x i32> %wide.load85)
  store <4 x i32> %i.aj, ptr %i.ae, align 4
  store <4 x i32> %i.ak, ptr %i.af, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !63

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %melt_data.exit.loopexit.preheader.preheader, label %.lr.ph.i28.preheader112

.lr.ph.i28.preheader112:                          ; preds = %.lr.ph.i28.preheader, %middle.block
  %indvars.iv.i29.ph = phi i64 [ %i.e, %.lr.ph.i28.preheader ], [ %i.o, %middle.block ]
  br label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %.lr.ph.i28.preheader112, %.lr.ph.i28
  %indvars.iv.i29 = phi i64 [ %indvars.iv.next.i30, %.lr.ph.i28 ], [ %indvars.iv.i29.ph, %.lr.ph.i28.preheader112 ]
  %indvars.iv.next.i30 = add nsw i64 %indvars.iv.i29, -1 ; 4 uses
  %i.am = getelementptr inbounds [4 x i8], ptr %i.p, i64 %indvars.iv.next.i30 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !4
  %i.ao = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv.next.i30
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !4
  %spec.store.select = tail call i32 @llvm.smin.i32(i32 %i.an, i32 %i.ap)
  store i32 %spec.store.select, ptr %i.am, align 4
  %.not.i31 = icmp eq i64 %indvars.iv.next.i30, 0
  br i1 %.not.i31, label %melt_data.exit.loopexit.preheader.preheader, label %.lr.ph.i28, !llvm.loop !64

melt_data.exit.loopexit.preheader.preheader:      ; preds = %.lr.ph.i28, %middle.block
  br label %melt_data.exit.loopexit.preheader

melt_data.exit.loopexit:                          ; preds = %melt_data.exit.loopexit.preheader
  %i.aq = icmp eq i64 %indvars.iv.next.i33, 0
  br i1 %i.aq, label %.thread, label %melt_data.exit.loopexit.preheader, !llvm.loop !19

melt_data.exit.loopexit.preheader:                ; preds = %melt_data.exit.loopexit.preheader.preheader, %melt_data.exit.loopexit
  %indvars.iv.i3281 = phi i64 [ %indvars.iv.next.i33, %melt_data.exit.loopexit ], [ %i.e, %melt_data.exit.loopexit.preheader.preheader ] ; 2 uses
  %indvars.iv.next.i33 = add nsw i64 %indvars.iv.i3281, -1 ; 4 uses
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.p, i64 %indvars.iv.next.i33
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !4
  %i.at = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv.next.i33
  %i.au = load i32, ptr %i.at, align 4, !tbaa !4
  %i.av = icmp eq i32 %i.as, %i.au
  br i1 %i.av, label %melt_data.exit.loopexit, label %equal_data.exit, !llvm.loop !19

equal_data.exit:                                  ; preds = %melt_data.exit.loopexit.preheader
  %i.aw = icmp sgt i64 %indvars.iv.i3281, 0
  br i1 %i.aw, label %bb.c, label %.thread

.thread:                                          ; preds = %equal_data.exit, %melt_data.exit.loopexit
  %.225 = select i1 %.not11.i, i32 %i.n, i32 %.02344
  tail call void @free(ptr noundef nonnull %i.p) #17
  br label %._crit_edge

bb.c:                                             ; preds = %equal_data.exit
  %i.ax = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #16 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.141, i64 8 ; 2 uses
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !21
  %i.az = tail call noalias ptr @malloc(i64 noundef %i.f) #16 ; 2 uses
  %scevgep.i = getelementptr i8, ptr %i.az, i64 %i.l
  %scevgep7.i = getelementptr i8, ptr %i.p, i64 %i.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep.i, ptr readonly align 4 %scevgep7.i, i64 %i.m, i1 false), !tbaa !4
  store ptr %i.az, ptr %i.ax, align 8, !tbaa !26
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr null, ptr %i.ba, align 8, !tbaa !21
  %i.bb = load ptr, ptr %i.ay, align 8, !tbaa !21 ; 2 uses
  %i.bc = add nuw nsw i32 %.02140, 1              ; 2 uses
  tail call void @free(ptr noundef nonnull %i.p) #17
  %.not26 = icmp eq i32 %i.bc, %i.d
  %indvar.next = add i64 %indvar, 1
  br i1 %.not26, label %._crit_edge, label %bb.b, !llvm.loop !65

._crit_edge:                                      ; preds = %bb.c, %.thread
  %.258 = phi ptr [ %.141, %.thread ], [ %i.bb, %bb.c ]
  %.357 = phi i32 [ %.225, %.thread ], [ %.02344, %bb.c ]
  %i.bd = add nsw i32 %.357, 1                    ; 2 uses
  %.not = icmp eq i32 %i.bd, %i.c
  br i1 %.not, label %._crit_edge46.loopexit47, label %.preheader, !llvm.loop !66

._crit_edge46.loopexit47:                         ; preds = %._crit_edge
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !21
  br label %._crit_edge46

._crit_edge46:                                    ; preds = %.preheader.lr.ph, %._crit_edge46.loopexit47, %bb.a
  %i.be = phi ptr [ %.pre, %._crit_edge46.loopexit47 ], [ null, %bb.a ], [ null, %.preheader.lr.ph ]
  tail call void @free(ptr noundef nonnull %i.a) #17
  store ptr %i.be, ptr @wanted, align 8, !tbaa !41
  ret void
}

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define dso_local noalias noundef ptr @get_good_move(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %copy_data.exit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = load i32, ptr @ncol, align 4             ; 5 uses
  %i.c = sext i32 %i.b to i64                     ; 2 uses
  %.0.i32 = load ptr, ptr @game_tree, align 8     ; 2 uses
  %i.d = icmp eq i32 %i.b, 0
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %get_value.exit
  %.0 = phi ptr [ %i.f, %get_value.exit ], [ %0, %.preheader ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !21   ; 2 uses
  %.not = icmp eq ptr %i.f, null
  %.pre = load ptr, ptr %.0, align 8, !tbaa !26   ; 2 uses
  br i1 %.not, label %.critedge, label %.preheader24

.preheader24:                                     ; preds = %bb.b
  br i1 %i.d, label %get_value.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader24, %bb.e
  %.0.i33 = phi ptr [ %.0.i, %bb.e ], [ %.0.i32, %.preheader24 ] ; 4 uses
  %.in = getelementptr inbounds nuw i8, ptr %.0.i33, i64 8
  %i.g = load ptr, ptr %.in, align 8, !tbaa !31
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.h = icmp eq i64 %indvars.iv.next.i.i, 0
  br i1 %i.h, label %get_value.exit, label %bb.d, !llvm.loop !19

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv.i.i29 = phi i64 [ %i.c, %.lr.ph ], [ %indvars.iv.next.i.i, %bb.c ] ; 2 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i29, -1 ; 4 uses
  %i.i = getelementptr inbounds [4 x i8], ptr %i.g, i64 %indvars.iv.next.i.i
  %i.j = load i32, ptr %i.i, align 4, !tbaa !4
  %i.k = getelementptr inbounds [4 x i8], ptr %.pre, i64 %indvars.iv.next.i.i
  %i.l = load i32, ptr %i.k, align 4, !tbaa !4
  %i.m = icmp eq i32 %i.j, %i.l
  br i1 %i.m, label %bb.c, label %equal_data.exit.i, !llvm.loop !19

equal_data.exit.i:                                ; preds = %bb.d
  %i.n = icmp sgt i64 %indvars.iv.i.i29, 0
  br i1 %i.n, label %bb.e, label %get_value.exit

bb.e:                                             ; preds = %equal_data.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i33, i64 24
  %.0.i = load ptr, ptr %i.o, align 8, !tbaa !32
  br label %.lr.ph, !llvm.loop !33

get_value.exit:                                   ; preds = %equal_data.exit.i, %bb.c, %.preheader24
  %.0.i28 = phi ptr [ %.0.i33, %bb.c ], [ %.0.i32, %.preheader24 ], [ %.0.i33, %equal_data.exit.i ]
  %i.p = load i32, ptr %.0.i28, align 8, !tbaa !34
  %.not8 = icmp eq i32 %i.p, 0
  br i1 %.not8, label %.critedge, label %bb.b, !llvm.loop !67

.critedge:                                        ; preds = %bb.b, %get_value.exit
  %i.q = shl nsw i64 %i.c, 2
  %i.r = tail call noalias ptr @malloc(i64 noundef %i.q) #16 ; 3 uses
  %.not5.i = icmp eq i32 %i.b, 0
  br i1 %.not5.i, label %copy_data.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.critedge
  %i.s = add i32 %i.b, -1                         ; 2 uses
  %i.t = sext i32 %i.s to i64
  %i.u = zext i32 %i.s to i64
  %i.v = sub nsw i64 %i.t, %i.u
  %i.w = shl nsw i64 %i.v, 2                      ; 2 uses
  %scevgep.i = getelementptr i8, ptr %i.r, i64 %i.w
  %scevgep7.i = getelementptr i8, ptr %.pre, i64 %i.w
  %i.x = zext i32 %i.b to i64
  %i.y = shl nuw nsw i64 %i.x, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep.i, ptr readonly align 4 %scevgep7.i, i64 %i.y, i1 false), !tbaa !4
  br label %copy_data.exit

copy_data.exit:                                   ; preds = %.lr.ph.preheader.i, %.critedge, %bb.a
  %.06 = phi ptr [ null, %bb.a ], [ %i.r, %.critedge ], [ %i.r, %.lr.ph.preheader.i ]
  ret ptr %.06
}

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define dso_local noalias noundef ptr @get_winning_move(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #10 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %0, %bb.a ], [ %i.b, %bb.b ]    ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !68

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !30   ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %get_good_move.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.f = load i32, ptr @ncol, align 4             ; 5 uses
  %i.g = sext i32 %i.f to i64                     ; 2 uses
  %.0.i.i26 = load ptr, ptr @game_tree, align 8   ; 2 uses
  %i.h = icmp eq i32 %i.f, 0
  br label %bb.d

bb.d:                                             ; preds = %get_value.exit.i, %.preheader.i
  %.0.i = phi ptr [ %i.j, %get_value.exit.i ], [ %i.d, %.preheader.i ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !21   ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  %.pre.i = load ptr, ptr %.0.i, align 8, !tbaa !26 ; 2 uses
  br i1 %.not.i, label %.critedge.i, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.d
  br i1 %i.h, label %get_value.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.preheader, %.preheader
  %.0.i.i27 = phi ptr [ %.0.i.i, %.preheader ], [ %.0.i.i26, %.preheader.preheader ] ; 4 uses
  %.in = getelementptr inbounds nuw i8, ptr %.0.i.i27, i64 8
  %i.k = load ptr, ptr %.in, align 8, !tbaa !31
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %i.l = icmp eq i64 %indvars.iv.next.i.i.i, 0
  br i1 %i.l, label %get_value.exit.i, label %bb.f, !llvm.loop !19

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv.i.i.i24 = phi i64 [ %i.g, %.lr.ph ], [ %indvars.iv.next.i.i.i, %bb.e ] ; 2 uses
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i24, -1 ; 4 uses
  %i.m = getelementptr inbounds [4 x i8], ptr %i.k, i64 %indvars.iv.next.i.i.i
  %i.n = load i32, ptr %i.m, align 4, !tbaa !4
  %i.o = getelementptr inbounds [4 x i8], ptr %.pre.i, i64 %indvars.iv.next.i.i.i
  %i.p = load i32, ptr %i.o, align 4, !tbaa !4
  %i.q = icmp eq i32 %i.n, %i.p
  br i1 %i.q, label %bb.e, label %equal_data.exit.i.i, !llvm.loop !19

equal_data.exit.i.i:                              ; preds = %bb.f
  %i.r = icmp sgt i64 %indvars.iv.i.i.i24, 0
  br i1 %i.r, label %.preheader, label %get_value.exit.i

.preheader:                                       ; preds = %equal_data.exit.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i.i27, i64 24
  %.0.i.i = load ptr, ptr %i.s, align 8, !tbaa !32
  br label %.lr.ph, !llvm.loop !33

get_value.exit.i:                                 ; preds = %equal_data.exit.i.i, %bb.e, %.preheader.preheader
  %.0.i.i23 = phi ptr [ %.0.i.i27, %bb.e ], [ %.0.i.i26, %.preheader.preheader ], [ %.0.i.i27, %equal_data.exit.i.i ]
  %i.t = load i32, ptr %.0.i.i23, align 8, !tbaa !34
  %.not8.i = icmp eq i32 %i.t, 0
  br i1 %.not8.i, label %.critedge.i, label %bb.d, !llvm.loop !67

.critedge.i:                                      ; preds = %get_value.exit.i, %bb.d
  %i.u = shl nsw i64 %i.g, 2
  %i.v = tail call noalias ptr @malloc(i64 noundef %i.u) #16 ; 3 uses
  %.not5.i.i = icmp eq i32 %i.f, 0
  br i1 %.not5.i.i, label %get_good_move.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.critedge.i
  %i.w = add i32 %i.f, -1                         ; 2 uses
  %i.x = sext i32 %i.w to i64
  %i.y = zext i32 %i.w to i64
  %i.z = sub nsw i64 %i.x, %i.y
  %i.aa = shl nsw i64 %i.z, 2                     ; 2 uses
  %scevgep.i.i = getelementptr i8, ptr %i.v, i64 %i.aa
  %scevgep7.i.i = getelementptr i8, ptr %.pre.i, i64 %i.aa
  %i.ab = zext i32 %i.f to i64
  %i.ac = shl nuw nsw i64 %i.ab, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep.i.i, ptr readonly align 4 %scevgep7.i.i, i64 %i.ac, i1 false), !tbaa !4
  br label %get_good_move.exit

get_good_move.exit:                               ; preds = %bb.c, %.critedge.i, %.lr.ph.preheader.i.i
  %.06.i = phi ptr [ null, %bb.c ], [ %i.v, %.critedge.i ], [ %i.v, %.lr.ph.preheader.i.i ]
  ret ptr %.06.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @where(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 {
end_hunk_0
