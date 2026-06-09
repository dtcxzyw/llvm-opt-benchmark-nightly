inline.NumInlined: 31
begin_hunk_0_@make_play:bb.a
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i20, !llvm.loop !20

.lr.ph.i20:                                       ; preds = %bb.d, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.d ] ; 2 uses
  %.0710.i = phi i32 [ %i.t, %.lr.ph.preheader.i ], [ %i.w, %bb.d ]
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.01744, i64 %indvars.iv.i
  %i.w = load i32, ptr %i.v, align 4, !tbaa !4    ; 2 uses
  %i.x = icmp sgt i32 %i.w, %.0710.i
  br i1 %i.x, label %valid_data.exit, label %bb.d

.loopexit:                                        ; preds = %bb.d, %bb.c
  %i.y = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.045, i64 24 ; 3 uses
  store ptr %i.y, ptr %i.z, align 8, !tbaa !27
  %i.aa = load ptr, ptr @game_tree, align 8, !tbaa !32
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.loopexit
  store ptr %i.y, ptr @game_tree, align 8, !tbaa !32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.loopexit
  %i.ac = load i32, ptr @ncol, align 4, !tbaa !4
  %i.ad = sext i32 %i.ac to i64
  %i.ae = shl nsw i64 %i.ad, 2
  %i.af = tail call noalias ptr @malloc(i64 noundef %i.ae) #16 ; 2 uses
  %i.ag = load i32, ptr @ncol, align 4, !tbaa !4  ; 3 uses
  %.not5.i = icmp eq i32 %i.ag, 0
  br i1 %.not5.i, label %copy_data.exit, label %.lr.ph.preheader.i21

.lr.ph.preheader.i21:                             ; preds = %bb.f
  %i.ah = add i32 %i.ag, -1                       ; 2 uses
  %i.ai = sext i32 %i.ah to i64
  %i.aj = zext i32 %i.ah to i64
  %i.ak = sub nsw i64 %i.ai, %i.aj
  %i.al = shl nsw i64 %i.ak, 2                    ; 2 uses
  %scevgep.i = getelementptr i8, ptr %i.af, i64 %i.al
  %scevgep7.i = getelementptr i8, ptr %.01744, i64 %i.al
  %i.am = zext i32 %i.ag to i64
  %i.an = shl nuw nsw i64 %i.am, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep.i, ptr readonly align 4 %scevgep7.i, i64 %i.an, i1 false), !tbaa !4
  br label %copy_data.exit

copy_data.exit:                                   ; preds = %bb.f, %.lr.ph.preheader.i21
  %i.ao = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.af, ptr %i.ao, align 8, !tbaa !31
  %i.ap = call ptr @make_list(ptr noundef nonnull %.01744, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a)
  %i.aq = load ptr, ptr %i.z, align 8, !tbaa !27  ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store ptr %i.ap, ptr %i.ar, align 8, !tbaa !30
  %i.as = load i32, ptr %i.b, align 4, !tbaa !4
  store i32 %i.as, ptr %i.aq, align 8, !tbaa !34
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store ptr null, ptr %i.at, align 8, !tbaa !27
  %i.au = load ptr, ptr %i.z, align 8, !tbaa !27  ; 4 uses
  %i.av = load i32, ptr %i.a, align 4, !tbaa !4
  %i.aw = icmp eq i32 %i.av, 2
  br i1 %i.aw, label %bb.g, label %copy_data.exit.valid_data.exit_crit_edge

copy_data.exit.valid_data.exit_crit_edge:         ; preds = %copy_data.exit
  %.pre52 = load i32, ptr @ncol, align 4, !tbaa !4
  br label %valid_data.exit

bb.g:                                             ; preds = %copy_data.exit
  tail call void @free(ptr noundef nonnull %.01744) #17
  %i.ax = load i32, ptr @nrow, align 4, !tbaa !4  ; 2 uses
  %i.ay = load i32, ptr @ncol, align 4, !tbaa !4  ; 7 uses
  %i.az = sext i32 %i.ay to i64
  %i.ba = shl nsw i64 %i.az, 2
  %i.bb = tail call noalias ptr @malloc(i64 noundef %i.ba) #16 ; 7 uses
  %.not11.i = icmp eq i32 %i.ay, 0
  br i1 %.not11.i, label %.preheader.i, label %.lr.ph.i22

.lr.ph.i22:                                       ; preds = %bb.g
  %i.bc = load i32, ptr @nrow, align 4, !tbaa !4  ; 2 uses
  %i.bd = zext i32 %i.ay to i64                   ; 3 uses
  %min.iters.check71 = icmp ult i32 %i.ay, 8
  br i1 %min.iters.check71, label %scalar.ph70.preheader, label %vector.ph72

vector.ph72:                                      ; preds = %.lr.ph.i22
  %n.vec74 = and i64 %i.bd, 4294967288            ; 3 uses
  %broadcast.splatinsert75 = insertelement <4 x i32> poison, i32 %i.bc, i64 0
  %broadcast.splat76 = shufflevector <4 x i32> %broadcast.splatinsert75, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body77

vector.body77:                                    ; preds = %vector.body77, %vector.ph72
  %index78 = phi i64 [ 0, %vector.ph72 ], [ %index.next79, %vector.body77 ] ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %index78 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store <4 x i32> %broadcast.splat76, ptr %i.be, align 4, !tbaa !4
  store <4 x i32> %broadcast.splat76, ptr %i.bf, align 4, !tbaa !4
  %index.next79 = add nuw i64 %index78, 8         ; 2 uses
  %i.bg = icmp eq i64 %index.next79, %n.vec74
  br i1 %i.bg, label %middle.block80, label %vector.body77, !llvm.loop !56

middle.block80:                                   ; preds = %vector.body77
  %cmp.n81 = icmp eq i64 %n.vec74, %i.bd
  br i1 %cmp.n81, label %.preheader.i, label %scalar.ph70.preheader

scalar.ph70.preheader:                            ; preds = %.lr.ph.i22, %middle.block80
  %indvars.iv.i23.ph = phi i64 [ 0, %.lr.ph.i22 ], [ %n.vec74, %middle.block80 ]
  br label %scalar.ph70

.preheader.i:                                     ; preds = %scalar.ph70, %middle.block80, %bb.g
  %i.bh = load i32, ptr @ncol, align 4, !tbaa !4  ; 4 uses
  %.not1013.i26 = icmp eq i32 %i.ay, %i.bh
  br i1 %.not1013.i26, label %valid_data.exit, label %.lr.ph15.preheader.i27

.lr.ph15.preheader.i27:                           ; preds = %.preheader.i
  %i.bi = zext i32 %i.ay to i64                   ; 4 uses
  %i.bj = zext i32 %i.bh to i64                   ; 2 uses
  %i.bk = sub nsw i64 %i.bj, %i.bi                ; 3 uses
  %min.iters.check = icmp ult i64 %i.bk, 8
  br i1 %min.iters.check, label %.lr.ph15.i28.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph15.preheader.i27
  %n.vec = and i64 %i.bk, -8                      ; 3 uses
  %i.bl = add nsw i64 %n.vec, %i.bi
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ax, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.bb, i64 %i.bi
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %gep, align 4, !tbaa !4
  store <4 x i32> %broadcast.splat, ptr %i.bm, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !57

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bk, %n.vec
  br i1 %cmp.n, label %valid_data.exit, label %.lr.ph15.i28.preheader

.lr.ph15.i28.preheader:                           ; preds = %.lr.ph15.preheader.i27, %middle.block
  %indvars.iv17.i29.ph = phi i64 [ %i.bi, %.lr.ph15.preheader.i27 ], [ %i.bl, %middle.block ]
  br label %.lr.ph15.i28

scalar.ph70:                                      ; preds = %scalar.ph70.preheader, %scalar.ph70
  %indvars.iv.i23 = phi i64 [ %indvars.iv.next.i24, %scalar.ph70 ], [ %indvars.iv.i23.ph, %scalar.ph70.preheader ] ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv.i23
  store i32 %i.bc, ptr %i.bo, align 4, !tbaa !4
  %indvars.iv.next.i24 = add nuw nsw i64 %indvars.iv.i23, 1 ; 2 uses
  %.not.i25 = icmp eq i64 %indvars.iv.next.i24, %i.bd
  br i1 %.not.i25, label %.preheader.i, label %scalar.ph70, !llvm.loop !58

.lr.ph15.i28:                                     ; preds = %.lr.ph15.i28.preheader, %.lr.ph15.i28
  %indvars.iv17.i29 = phi i64 [ %indvars.iv.next18.i30, %.lr.ph15.i28 ], [ %indvars.iv17.i29.ph, %.lr.ph15.i28.preheader ] ; 2 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv17.i29
  store i32 %i.ax, ptr %i.bp, align 4, !tbaa !4
  %indvars.iv.next18.i30 = add nuw nsw i64 %indvars.iv17.i29, 1 ; 2 uses
  %.not10.i31 = icmp eq i64 %indvars.iv.next18.i30, %i.bj
  br i1 %.not10.i31, label %valid_data.exit, label %.lr.ph15.i28, !llvm.loop !59

valid_data.exit:                                  ; preds = %.lr.ph.i20, %.lr.ph15.i28, %middle.block, %copy_data.exit.valid_data.exit_crit_edge, %.preheader.i
  %i.bq = phi i32 [ %i.bh, %middle.block ], [ %.pre52, %copy_data.exit.valid_data.exit_crit_edge ], [ %i.ay, %.preheader.i ], [ %i.bh, %.lr.ph15.i28 ], [ 1, %.lr.ph.i20 ]
  %.118 = phi ptr [ %i.bb, %middle.block ], [ %.01744, %copy_data.exit.valid_data.exit_crit_edge ], [ %i.bb, %.preheader.i ], [ %i.bb, %.lr.ph15.i28 ], [ %.01744, %.lr.ph.i20 ]
  %.1 = phi ptr [ %i.au, %middle.block ], [ %i.au, %copy_data.exit.valid_data.exit_crit_edge ], [ %i.au, %.preheader.i ], [ %i.au, %.lr.ph15.i28 ], [ %.045, %.lr.ph.i20 ]
  %.not13.not.i = icmp eq i32 %i.bq, 0
  br i1 %.not13.not.i, label %.loopexit38, label %.lr.ph.i.preheader, !llvm.loop !60

.loopexit38:                                      ; preds = %valid_data.exit, %bb.b, %bb.a
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !27
  tail call void @free(ptr noundef %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  ret ptr %i.bs
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @make_wanted(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !21
  %i.c = load i32, ptr @nrow, align 4, !tbaa !4   ; 2 uses
  %.not43 = icmp eq i32 %i.c, 0
  %i.d = load i32, ptr @ncol, align 4             ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  %or.cond = select i1 %.not43, i1 true, i1 %i.e
  br i1 %or.cond, label %._crit_edge46, label %.preheader

.preheader:                                       ; preds = %bb.a, %._crit_edge
  %i.f = phi i32 [ %i.bs, %._crit_edge ], [ %i.c, %bb.a ]
  %i.g = phi i32 [ %i.bt, %._crit_edge ], [ %i.d, %bb.a ] ; 2 uses
  %.045 = phi ptr [ %.1.lcssa, %._crit_edge ], [ %i.a, %bb.a ] ; 2 uses
  %.02144 = phi i32 [ %i.bu, %._crit_edge ], [ 0, %bb.a ] ; 5 uses
  %.not2638 = icmp eq i32 %i.g, 0
  br i1 %.not2638, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.02144, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %indvar = phi i64 [ %indvar.next, %bb.d ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.h = phi i32 [ %i.be, %bb.d ], [ %i.g, %.lr.ph.preheader ]
  %.141 = phi ptr [ %i.bp, %bb.d ], [ %.045, %.lr.ph.preheader ] ; 2 uses
  %.02439 = phi i32 [ %i.bq, %bb.d ], [ 0, %.lr.ph.preheader ] ; 6 uses
  %i.i = sext i32 %i.h to i64
  %i.j = shl nsw i64 %i.i, 2
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #16 ; 10 uses
  %.not11.i = icmp eq i32 %.02439, 0              ; 2 uses
  br i1 %.not11.i, label %.preheader.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph
  %i.l = load i32, ptr @nrow, align 4, !tbaa !4   ; 2 uses
  %i.m = zext nneg i32 %.02439 to i64             ; 3 uses
  %min.iters.check126 = icmp samesign ult i32 %.02439, 8
  br i1 %min.iters.check126, label %scalar.ph125.preheader, label %vector.ph127

vector.ph127:                                     ; preds = %.lr.ph.i
  %n.vec129 = and i64 %i.m, 2147483640            ; 3 uses
  %broadcast.splatinsert130 = insertelement <4 x i32> poison, i32 %i.l, i64 0
  %broadcast.splat131 = shufflevector <4 x i32> %broadcast.splatinsert130, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body132

vector.body132:                                   ; preds = %vector.body132, %vector.ph127
  %index133 = phi i64 [ 0, %vector.ph127 ], [ %index.next134, %vector.body132 ] ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %index133 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store <4 x i32> %broadcast.splat131, ptr %i.n, align 4, !tbaa !4
  store <4 x i32> %broadcast.splat131, ptr %i.o, align 4, !tbaa !4
  %index.next134 = add nuw i64 %index133, 8       ; 2 uses
  %i.p = icmp eq i64 %index.next134, %n.vec129
  br i1 %i.p, label %middle.block135, label %vector.body132, !llvm.loop !61

middle.block135:                                  ; preds = %vector.body132
  %cmp.n136 = icmp eq i64 %n.vec129, %i.m
  br i1 %cmp.n136, label %.preheader.i, label %scalar.ph125.preheader

scalar.ph125.preheader:                           ; preds = %.lr.ph.i, %middle.block135
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec129, %middle.block135 ]
  br label %scalar.ph125

.preheader.i:                                     ; preds = %scalar.ph125, %middle.block135, %.lr.ph
  %i.q = load i32, ptr @ncol, align 4, !tbaa !4   ; 6 uses
  %.not1013.i = icmp eq i32 %.02439, %i.q
  br i1 %.not1013.i, label %make_data.exit, label %.lr.ph15.preheader.i

.lr.ph15.preheader.i:                             ; preds = %.preheader.i
  %i.r = zext nneg i32 %.02439 to i64             ; 3 uses
  %i.s = zext i32 %i.q to i64                     ; 2 uses
  %i.t = sub i64 %i.s, %indvar                    ; 3 uses
  %min.iters.check115 = icmp ult i64 %i.t, 8
  br i1 %min.iters.check115, label %.lr.ph15.i.preheader, label %vector.ph116

vector.ph116:                                     ; preds = %.lr.ph15.preheader.i
  %n.vec118 = and i64 %i.t, -8                    ; 3 uses
  %i.u = add i64 %n.vec118, %i.r
  %invariant.gep = getelementptr [4 x i8], ptr %i.k, i64 %i.r
  br label %vector.body119

vector.body119:                                   ; preds = %vector.body119, %vector.ph116
  %index120 = phi i64 [ 0, %vector.ph116 ], [ %index.next121, %vector.body119 ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index120 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %gep, align 4, !tbaa !4
  store <4 x i32> %broadcast.splat, ptr %i.v, align 4, !tbaa !4
  %index.next121 = add nuw i64 %index120, 8       ; 2 uses
  %i.w = icmp eq i64 %index.next121, %n.vec118
  br i1 %i.w, label %middle.block122, label %vector.body119, !llvm.loop !62

middle.block122:                                  ; preds = %vector.body119
  %cmp.n123 = icmp eq i64 %i.t, %n.vec118
  br i1 %cmp.n123, label %make_data.exit, label %.lr.ph15.i.preheader

.lr.ph15.i.preheader:                             ; preds = %.lr.ph15.preheader.i, %middle.block122
  %indvars.iv17.i.ph = phi i64 [ %i.r, %.lr.ph15.preheader.i ], [ %i.u, %middle.block122 ]
  br label %.lr.ph15.i

scalar.ph125:                                     ; preds = %scalar.ph125.preheader, %scalar.ph125
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph125 ], [ %indvars.iv.i.ph, %scalar.ph125.preheader ] ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.i
  store i32 %i.l, ptr %i.x, align 4, !tbaa !4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next.i, %i.m
  br i1 %.not.i, label %.preheader.i, label %scalar.ph125, !llvm.loop !63

.lr.ph15.i:                                       ; preds = %.lr.ph15.i.preheader, %.lr.ph15.i
  %indvars.iv17.i = phi i64 [ %indvars.iv.next18.i, %.lr.ph15.i ], [ %indvars.iv17.i.ph, %.lr.ph15.i.preheader ] ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv17.i
  store i32 %.02144, ptr %i.y, align 4, !tbaa !4
  %indvars.iv.next18.i = add nuw nsw i64 %indvars.iv17.i, 1 ; 2 uses
  %.not10.i = icmp eq i64 %indvars.iv.next18.i, %i.s
  br i1 %.not10.i, label %make_data.exit, label %.lr.ph15.i, !llvm.loop !64

make_data.exit:                                   ; preds = %.lr.ph15.i, %middle.block122, %.preheader.i
  %.not9.i = icmp eq i32 %i.q, 0
  br i1 %.not9.i, label %melt_data.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %make_data.exit
  %i.z = sext i32 %i.q to i64                     ; 7 uses
  %min.iters.check = icmp ult i32 %i.q, 8
  br i1 %min.iters.check, label %.lr.ph.i28.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.z, -8                       ; 2 uses
  %i.aa = and i64 %i.z, 7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ab = xor i64 %index, -1
  %i.ac = add i64 %i.ab, %i.z                     ; 2 uses
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.ac ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -12 ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %i.ad, i64 -28 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.ae, align 4, !tbaa !4
  %wide.load106 = load <4 x i32>, ptr %i.af, align 4, !tbaa !4
  %i.ag = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ac ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -12
  %i.ai = getelementptr inbounds i8, ptr %i.ag, i64 -28
  %wide.load108 = load <4 x i32>, ptr %i.ah, align 4, !tbaa !4
  %wide.load109 = load <4 x i32>, ptr %i.ai, align 4, !tbaa !4
  %i.aj = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load, <4 x i32> %wide.load108)
  %i.ak = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load106, <4 x i32> %wide.load109)
  store <4 x i32> %i.aj, ptr %i.ae, align 4
  store <4 x i32> %i.ak, ptr %i.af, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !65

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.z
  br i1 %cmp.n, label %melt_data.exit, label %.lr.ph.i28.preheader

.lr.ph.i28.preheader:                             ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i29.ph = phi i64 [ %i.z, %.lr.ph.preheader.i ], [ %i.aa, %middle.block ]
  br label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %.lr.ph.i28.preheader, %.lr.ph.i28
  %indvars.iv.i29 = phi i64 [ %indvars.iv.next.i30, %.lr.ph.i28 ], [ %indvars.iv.i29.ph, %.lr.ph.i28.preheader ]
  %indvars.iv.next.i30 = add nsw i64 %indvars.iv.i29, -1 ; 4 uses
  %i.am = getelementptr inbounds [4 x i8], ptr %i.k, i64 %indvars.iv.next.i30 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !4
  %i.ao = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv.next.i30
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !4
  %spec.store.select = tail call i32 @llvm.smin.i32(i32 %i.an, i32 %i.ap)
  store i32 %spec.store.select, ptr %i.am, align 4
  %.not.i31 = icmp eq i64 %indvars.iv.next.i30, 0
  br i1 %.not.i31, label %melt_data.exit, label %.lr.ph.i28, !llvm.loop !66

melt_data.exit:                                   ; preds = %.lr.ph.i28, %middle.block, %make_data.exit
  %.pre-phi = phi i64 [ 0, %make_data.exit ], [ %i.z, %middle.block ], [ %i.z, %.lr.ph.i28 ] ; 2 uses
  %i.aq = icmp eq i64 %.pre-phi, 0
  br i1 %i.aq, label %.thread, label %.lr.ph98

bb.b:                                             ; preds = %.lr.ph98
  %i.ar = icmp eq i64 %indvars.iv.next.i33, 0
  br i1 %i.ar, label %.thread, label %.lr.ph98, !llvm.loop !19

.lr.ph98:                                         ; preds = %melt_data.exit, %bb.b
  %indvars.iv.i3297 = phi i64 [ %indvars.iv.next.i33, %bb.b ], [ %.pre-phi, %melt_data.exit ] ; 2 uses
  %indvars.iv.next.i33 = add nsw i64 %indvars.iv.i3297, -1 ; 4 uses
  %i.as = getelementptr inbounds [4 x i8], ptr %i.k, i64 %indvars.iv.next.i33
  %i.at = load i32, ptr %i.as, align 4, !tbaa !4
  %i.au = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv.next.i33
  %i.av = load i32, ptr %i.au, align 4, !tbaa !4
  %i.aw = icmp eq i32 %i.at, %i.av
  br i1 %i.aw, label %bb.b, label %equal_data.exit, !llvm.loop !19

equal_data.exit:                                  ; preds = %.lr.ph98
  %i.ax = icmp sgt i64 %indvars.iv.i3297, 0
  br i1 %i.ax, label %bb.c, label %.thread

bb.c:                                             ; preds = %equal_data.exit
  %i.ay = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #16 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.141, i64 8 ; 2 uses
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !21
  %i.ba = load i32, ptr @ncol, align 4, !tbaa !4
  %i.bb = sext i32 %i.ba to i64
  %i.bc = shl nsw i64 %i.bb, 2
  %i.bd = tail call noalias ptr @malloc(i64 noundef %i.bc) #16 ; 2 uses
  %i.be = load i32, ptr @ncol, align 4, !tbaa !4  ; 6 uses
  %.not5.i = icmp eq i32 %i.be, 0
  br i1 %.not5.i, label %bb.d, label %.lr.ph.preheader.i34

.lr.ph.preheader.i34:                             ; preds = %bb.c
  %i.bf = add i32 %i.be, -1                       ; 2 uses
  %i.bg = sext i32 %i.bf to i64
  %i.bh = zext i32 %i.bf to i64
  %i.bi = sub nsw i64 %i.bg, %i.bh
  %i.bj = shl nsw i64 %i.bi, 2                    ; 2 uses
  %scevgep.i = getelementptr i8, ptr %i.bd, i64 %i.bj
  %scevgep7.i = getelementptr i8, ptr %i.k, i64 %i.bj
  %i.bk = zext i32 %i.be to i64
  %i.bl = shl nuw nsw i64 %i.bk, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep.i, ptr readonly align 4 %scevgep7.i, i64 %i.bl, i1 false), !tbaa !4
  br label %bb.d

.thread:                                          ; preds = %equal_data.exit, %melt_data.exit, %bb.b
  %i.bm = load i32, ptr @nrow, align 4
  %i.bn = add nsw i32 %i.bm, -1
  %.223 = select i1 %.not11.i, i32 %i.bn, i32 %.02144
  tail call void @free(ptr noundef %i.k) #17
  br label %._crit_edge.loopexit

bb.d:                                             ; preds = %.lr.ph.preheader.i34, %bb.c
  store ptr %i.bd, ptr %i.ay, align 8, !tbaa !26
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr null, ptr %i.bo, align 8, !tbaa !21
  %i.bp = load ptr, ptr %i.az, align 8, !tbaa !21 ; 2 uses
  %i.bq = add nuw nsw i32 %.02439, 1              ; 2 uses
  tail call void @free(ptr noundef nonnull %i.k) #17
  %.not26 = icmp eq i32 %i.bq, %i.be
  %indvar.next = add i64 %indvar, 1
  br i1 %.not26, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !67

._crit_edge.loopexit:                             ; preds = %bb.d, %.thread
  %.265 = phi ptr [ %.141, %.thread ], [ %i.bp, %bb.d ]
  %.364 = phi i32 [ %.223, %.thread ], [ %.02144, %bb.d ]
  %i.br = phi i32 [ %i.q, %.thread ], [ %i.be, %bb.d ]
  %.pre = load i32, ptr @nrow, align 4, !tbaa !4
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.bs = phi i32 [ %i.f, %.preheader ], [ %.pre, %._crit_edge.loopexit ] ; 2 uses
  %i.bt = phi i32 [ 0, %.preheader ], [ %i.br, %._crit_edge.loopexit ]
  %.122.lcssa = phi i32 [ %.02144, %.preheader ], [ %.364, %._crit_edge.loopexit ]
  %.1.lcssa = phi ptr [ %.045, %.preheader ], [ %.265, %._crit_edge.loopexit ]
  %i.bu = add nsw i32 %.122.lcssa, 1              ; 2 uses
  %.not = icmp eq i32 %i.bu, %i.bs
  br i1 %.not, label %._crit_edge46.loopexit47, label %.preheader, !llvm.loop !68

._crit_edge46.loopexit47:                         ; preds = %._crit_edge
  %.pre49 = load ptr, ptr %i.b, align 8, !tbaa !21
  br label %._crit_edge46

end_hunk_0
