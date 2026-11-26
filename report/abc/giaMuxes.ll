Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaMuxes?download=true
inline.NumInlined: 746
inline.NumDeleted: 145
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 11
begin_hunk_0_@Gia_ManProfileStructuresInt:bb.a
  br label %Vec_IntPush.exit566

bb.cu:                                            ; preds = %.critedge
  %i.ub = icmp slt i32 %i.ty, 16
  br i1 %i.ub, label %bb.cv, label %bb.cy

bb.cv:                                            ; preds = %bb.cu
  %i.uc = load ptr, ptr %i.v, align 8, !tbaa !55  ; 2 uses
  %.not9.i.i564 = icmp eq ptr %i.uc, null
  br i1 %.not9.i.i564, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.ud = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.uc, i64 noundef 64) #33
  br label %Vec_IntGrow.exit11.sink.split.i562

bb.cx:                                            ; preds = %bb.cv
  %i.ue = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #31
  br label %Vec_IntGrow.exit11.sink.split.i562

bb.cy:                                            ; preds = %bb.cu
  %i.uf = icmp samesign ult i32 %i.ty, 1073741823
  %i.ug = shl nuw nsw i32 %i.ty, 1
  %spec.select.i559 = select i1 %i.uf, i32 %i.ug, i32 2147483647 ; 4 uses
  %.not.i9.i560 = icmp samesign ult i32 %i.ty, %spec.select.i559
  %.pre686 = load ptr, ptr %i.v, align 8, !tbaa !55 ; 3 uses
  br i1 %.not.i9.i560, label %bb.cz, label %Vec_IntPush.exit566

bb.cz:                                            ; preds = %bb.cy
  %.not9.i10.i561 = icmp eq ptr %.pre686, null
  %i.uh = zext nneg i32 %spec.select.i559 to i64
  %i.ui = shl nuw nsw i64 %i.uh, 2                ; 2 uses
  br i1 %.not9.i10.i561, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.uj = tail call ptr @realloc(ptr noundef nonnull %.pre686, i64 noundef %i.ui) #33
  br label %Vec_IntGrow.exit11.sink.split.i562

bb.db:                                            ; preds = %bb.cz
  %i.uk = tail call noalias ptr @malloc(i64 noundef %i.ui) #31
  br label %Vec_IntGrow.exit11.sink.split.i562

Vec_IntGrow.exit11.sink.split.i562:               ; preds = %bb.da, %bb.db, %bb.cw, %bb.cx
  %storemerge637 = phi ptr [ %i.ue, %bb.cx ], [ %i.ud, %bb.cw ], [ %i.uj, %bb.da ], [ %i.uk, %bb.db ] ; 2 uses
  %spec.select.sink.i563 = phi i32 [ 16, %bb.cx ], [ 16, %bb.cw ], [ %spec.select.i559, %bb.da ], [ %spec.select.i559, %bb.db ]
  store ptr %storemerge637, ptr %i.v, align 8, !tbaa !55
  store i32 %spec.select.sink.i563, ptr %i.o, align 8, !tbaa !54
  br label %Vec_IntPush.exit566

Vec_IntPush.exit566:                              ; preds = %.critedge.Vec_IntPush.exit566_crit_edge, %bb.cy, %Vec_IntGrow.exit11.sink.split.i562
  %i.ul = phi ptr [ %.pre685, %.critedge.Vec_IntPush.exit566_crit_edge ], [ %.pre686, %bb.cy ], [ %storemerge637, %Vec_IntGrow.exit11.sink.split.i562 ] ; 3 uses
  %i.um = add nsw i32 %i.tz, 1
  store i32 %i.um, ptr %i.q, align 4, !tbaa !39
  %i.un = sext i32 %i.tz to i64
  %i.uo = getelementptr inbounds [4 x i8], ptr %i.ul, i64 %i.un
  store i32 %.val186, ptr %i.uo, align 4, !tbaa !12
  %.not175 = icmp eq i32 %2, 0
  br i1 %.not175, label %.critedge4, label %bb.dc

bb.dc:                                            ; preds = %Vec_IntPush.exit566
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %i.up = getelementptr i8, ptr %0, i64 32
  %i.uq = load i32, ptr %i.e, align 8, !tbaa !34
  %i.ur = icmp sgt i32 %i.uq, 0
  br i1 %i.ur, label %.lr.ph655, label %.critedge4

.lr.ph655:                                        ; preds = %bb.dc, %bb.dd
  %.1654 = phi i32 [ %i.us, %bb.dd ], [ 0, %bb.dc ] ; 3 uses
  %.val183 = load ptr, ptr %i.up, align 8, !tbaa !35
  %.not176 = icmp eq ptr %.val183, null
  br i1 %.not176, label %.critedge4, label %bb.dd

bb.dd:                                            ; preds = %.lr.ph655
  tail call void @Gia_ManProfileCollect(ptr nonnull poison, i32 noundef %.1654, ptr noundef %i.g, ptr noundef nonnull %i.o, ptr noundef nonnull %i.a)
  tail call void @Gia_ManProfilePrintOne(ptr noundef nonnull %0, i32 noundef %.1654, ptr noundef nonnull %i.a)
  %i.us = add nuw nsw i32 %.1654, 1               ; 2 uses
  %i.ut = load i32, ptr %i.e, align 8, !tbaa !34
  %i.uu = icmp slt i32 %i.us, %i.ut
  br i1 %i.uu, label %.lr.ph655, label %.critedge4, !llvm.loop !138

.critedge4:                                       ; preds = %bb.dd, %.lr.ph655, %bb.dc, %Vec_IntPush.exit566
  %i.uv = tail call ptr @Gia_ManProfileHash(ptr noundef nonnull %0, ptr noundef %i.g, ptr noundef nonnull %i.o) ; 5 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uv, i64 4
  %i.ux = load i32, ptr %i.uw, align 4, !tbaa !39 ; 4 uses
  %i.uy = icmp eq i32 %i.ux, 0
  br i1 %i.uy, label %Vec_IntFindMax.exit.thread, label %bb.de

Vec_IntFindMax.exit.thread:                       ; preds = %.critedge4
  %i.uz = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31
  br label %.thread

bb.de:                                            ; preds = %.critedge4
  %i.va = getelementptr inbounds nuw i8, ptr %i.uv, i64 8
  %i.vb = load ptr, ptr %i.va, align 8, !tbaa !55 ; 3 uses
  %i.vc = load i32, ptr %i.vb, align 4, !tbaa !12 ; 3 uses
  %i.vd = icmp sgt i32 %i.ux, 1
  br i1 %i.vd, label %.lr.ph.preheader.i, label %Vec_IntFindMax.exit

.lr.ph.preheader.i:                               ; preds = %bb.de
  %wide.trip.count.i = zext nneg i32 %i.ux to i64 ; 2 uses
  %i.ve = add nsw i64 %wide.trip.count.i, -1      ; 2 uses
  %min.iters.check = icmp ult i32 %i.ux, 9
  br i1 %min.iters.check, label %.lr.ph.i567.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.ve, -8                      ; 3 uses
  %i.vf = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.vc, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.vj, %vector.body ]
  %vec.phi758 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.vk, %vector.body ]
  %i.vg = getelementptr inbounds nuw [4 x i8], ptr %i.vb, i64 %index ; 2 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 4
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vg, i64 20
  %wide.load = load <4 x i32>, ptr %i.vh, align 4, !tbaa !12
  %wide.load759 = load <4 x i32>, ptr %i.vi, align 4, !tbaa !12
  %i.vj = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi, <4 x i32> %wide.load) ; 2 uses
  %i.vk = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi758, <4 x i32> %wide.load759) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.vl = icmp eq i64 %index.next, %n.vec
  br i1 %i.vl, label %middle.block, label %vector.body, !llvm.loop !139

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.vj, <4 x i32> %i.vk)
  %i.vm = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %i.ve, %n.vec
  br i1 %cmp.n, label %Vec_IntFindMax.exit, label %.lr.ph.i567.preheader

.lr.ph.i567.preheader:                            ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i568.ph = phi i64 [ 1, %.lr.ph.preheader.i ], [ %i.vf, %middle.block ]
  %.015.i.ph = phi i32 [ %i.vc, %.lr.ph.preheader.i ], [ %i.vm, %middle.block ]
  br label %.lr.ph.i567

.lr.ph.i567:                                      ; preds = %.lr.ph.i567.preheader, %.lr.ph.i567
  %indvars.iv.i568 = phi i64 [ %indvars.iv.next.i570, %.lr.ph.i567 ], [ %indvars.iv.i568.ph, %.lr.ph.i567.preheader ] ; 2 uses
  %.015.i = phi i32 [ %spec.select.i569, %.lr.ph.i567 ], [ %.015.i.ph, %.lr.ph.i567.preheader ]
  %i.vn = getelementptr inbounds nuw [4 x i8], ptr %i.vb, i64 %indvars.iv.i568
  %i.vo = load i32, ptr %i.vn, align 4, !tbaa !12
  %spec.select.i569 = tail call i32 @llvm.smax.i32(i32 %.015.i, i32 %i.vo) ; 2 uses
  %indvars.iv.next.i570 = add nuw nsw i64 %indvars.iv.i568, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i570, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Vec_IntFindMax.exit, label %.lr.ph.i567, !llvm.loop !140

Vec_IntFindMax.exit:                              ; preds = %.lr.ph.i567, %middle.block, %bb.de
  %.012.i = phi i32 [ %i.vc, %bb.de ], [ %i.vm, %middle.block ], [ %spec.select.i569, %.lr.ph.i567 ]
  %.012.i.fr = freeze i32 %.012.i                 ; 4 uses
  %i.vp = add nsw i32 %.012.i.fr, 1               ; 5 uses
  %i.vq = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31 ; 6 uses
  %or.cond.i.i = icmp ult i32 %.012.i.fr, 15
  br i1 %or.cond.i.i, label %.thread, label %bb.df

.thread:                                          ; preds = %Vec_IntFindMax.exit.thread, %Vec_IntFindMax.exit
  %.ph = phi ptr [ %i.uz, %Vec_IntFindMax.exit.thread ], [ %i.vq, %Vec_IntFindMax.exit ] ; 3 uses
  %.ph604 = phi i32 [ 1, %Vec_IntFindMax.exit.thread ], [ %i.vp, %Vec_IntFindMax.exit ]
  %.012.i602.ph = phi i32 [ 0, %Vec_IntFindMax.exit.thread ], [ %.012.i.fr, %Vec_IntFindMax.exit ]
  %i.vr = getelementptr i8, ptr %.ph, i64 4
  store i32 16, ptr %.ph, align 8, !tbaa !54
  br label %Vec_IntAlloc.exit.i

bb.df:                                            ; preds = %Vec_IntFindMax.exit
  %i.vs = getelementptr i8, ptr %i.vq, i64 4      ; 3 uses
  store i32 %i.vp, ptr %i.vq, align 8, !tbaa !54
  %.not.i.i571 = icmp eq i32 %i.vp, 0
  br i1 %.not.i.i571, label %Vec_IntAlloc.exit.thread.i578, label %Vec_IntAlloc.exit.i

Vec_IntAlloc.exit.i:                              ; preds = %.thread, %bb.df
  %i.vt = phi ptr [ %i.vr, %.thread ], [ %i.vs, %bb.df ] ; 3 uses
  %i.vu = phi i32 [ 16, %.thread ], [ %i.vp, %bb.df ] ; 2 uses
  %.012.i602608 = phi i32 [ %.012.i602.ph, %.thread ], [ %.012.i.fr, %bb.df ] ; 2 uses
  %i.vv = phi i32 [ %.ph604, %.thread ], [ %i.vp, %bb.df ] ; 6 uses
  %i.vw = phi ptr [ %.ph, %.thread ], [ %i.vq, %bb.df ] ; 3 uses
  %i.vx = sext i32 %i.vu to i64
  %i.vy = shl nsw i64 %i.vx, 2                    ; 2 uses
  %i.vz = tail call noalias ptr @malloc(i64 noundef %i.vy) #31 ; 3 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vw, i64 8
  store ptr %i.vz, ptr %i.wa, align 8, !tbaa !55
  store i32 %i.vv, ptr %i.vt, align 4, !tbaa !39
  %.not.i572 = icmp eq ptr %i.vz, null
  br i1 %.not.i572, label %Vec_IntAlloc.exit.i576, label %bb.dg

bb.dg:                                            ; preds = %Vec_IntAlloc.exit.i
  %i.wb = sext i32 %i.vv to i64
  %i.wc = shl nsw i64 %i.wb, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.vz, i8 0, i64 %i.wc, i1 false)
  br label %Vec_IntAlloc.exit.i576

Vec_IntAlloc.exit.thread.i578:                    ; preds = %bb.df
  %i.wd = getelementptr inbounds nuw i8, ptr %i.vq, i64 8
  store ptr null, ptr %i.wd, align 8, !tbaa !55
  store i32 0, ptr %i.vs, align 4, !tbaa !39
  %calloc = tail call dereferenceable_or_null(16) ptr @calloc(i64 1, i64 16)
  br label %Vec_IntStart.exit579

Vec_IntAlloc.exit.i576:                           ; preds = %Vec_IntAlloc.exit.i, %bb.dg
  %i.we = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31 ; 5 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 4
  store i32 %i.vu, ptr %i.we, align 8, !tbaa !54
  %i.wg = tail call noalias ptr @malloc(i64 noundef %i.vy) #31 ; 3 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %i.we, i64 8
  store ptr %i.wg, ptr %i.wh, align 8, !tbaa !55
  store i32 %i.vv, ptr %i.wf, align 4, !tbaa !39
  %.not.i577 = icmp eq ptr %i.wg, null
  br i1 %.not.i577, label %Vec_IntStart.exit579, label %bb.dh

bb.dh:                                            ; preds = %Vec_IntAlloc.exit.i576
  %i.wi = sext i32 %i.vv to i64
  %i.wj = shl nsw i64 %i.wi, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.wg, i8 0, i64 %i.wj, i1 false)
  br label %Vec_IntStart.exit579

Vec_IntStart.exit579:                             ; preds = %Vec_IntAlloc.exit.thread.i578, %Vec_IntAlloc.exit.i576, %bb.dh
  %.val185691 = phi i32 [ 0, %Vec_IntAlloc.exit.thread.i578 ], [ %i.vv, %Vec_IntAlloc.exit.i576 ], [ %i.vv, %bb.dh ] ; 2 uses
  %i.wk = phi ptr [ %calloc, %Vec_IntAlloc.exit.thread.i578 ], [ %i.we, %Vec_IntAlloc.exit.i576 ], [ %i.we, %bb.dh ] ; 4 uses
  %i.wl = phi ptr [ %i.vq, %Vec_IntAlloc.exit.thread.i578 ], [ %i.vw, %Vec_IntAlloc.exit.i576 ], [ %i.vw, %bb.dh ] ; 3 uses
  %.012.i602607613 = phi i32 [ -1, %Vec_IntAlloc.exit.thread.i578 ], [ %.012.i602608, %Vec_IntAlloc.exit.i576 ], [ %.012.i602608, %bb.dh ] ; 2 uses
  %i.wm = phi ptr [ %i.vs, %Vec_IntAlloc.exit.thread.i578 ], [ %i.vt, %Vec_IntAlloc.exit.i576 ], [ %i.vt, %bb.dh ]
  %i.wn = load i32, ptr %i.e, align 8, !tbaa !34  ; 2 uses
  %i.wo = icmp sgt i32 %i.wn, 0
  br i1 %i.wo, label %.lr.ph659, label %.critedge6

.lr.ph659:                                        ; preds = %Vec_IntStart.exit579
  %i.wp = getelementptr i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.wp, align 8, !tbaa !35 ; 2 uses
  %.not177 = icmp eq ptr %.val, null
  %i.wq = getelementptr i8, ptr %0, i64 16
  %i.wr = getelementptr i8, ptr %0, i64 72
  %i.ws = getelementptr i8, ptr %i.wl, i64 8
  %3 = getelementptr i8, ptr %i.wk, i64 8
  br i1 %.not177, label %.critedge6, label %.lr.ph659.split

.lr.ph659.split:                                  ; preds = %.lr.ph659
  %i.wt = getelementptr i8, ptr %i.uv, i64 8
  %.val196 = load ptr, ptr %i.wt, align 8, !tbaa !55
  br label %bb.di

bb.di:                                            ; preds = %.lr.ph659.split, %bb.dl
  %i.wu = phi i32 [ %i.wn, %.lr.ph659.split ], [ %i.xo, %bb.dl ]
  %indvars.iv667 = phi i64 [ 0, %.lr.ph659.split ], [ %indvars.iv.next668, %bb.dl ] ; 4 uses
  %i.wv = getelementptr inbounds nuw [12 x i8], ptr %.val, i64 %indvars.iv667
  %i.ww = getelementptr inbounds nuw [4 x i8], ptr %.val196, i64 %indvars.iv667
  %i.wx = load i32, ptr %i.ww, align 4, !tbaa !12
  %.val197 = load i64, ptr %i.wv, align 4         ; 3 uses
  %i.wy = and i64 %.val197, 2147483648
  %.not.i.i580 = icmp eq i64 %i.wy, 0
  %i.wz = and i64 %.val197, 536870911
  %i.xa = icmp eq i64 %i.wz, 536870911
  %narrow.i.not.i581 = or i1 %.not.i.i580, %i.xa
  br i1 %narrow.i.not.i581, label %Gia_ObjIsRi.exit585.thread, label %Gia_ObjIsRi.exit585

Gia_ObjIsRi.exit585:                              ; preds = %bb.di
  %i.xb = lshr i64 %.val197, 32
  %i.xc = trunc nuw i64 %i.xb to i32
  %i.xd = and i32 %i.xc, 536870911
  %.val4.i582 = load i32, ptr %i.wq, align 8, !tbaa !53
  %.val5.i583 = load ptr, ptr %i.wr, align 8, !tbaa !40
  %i.xe = getelementptr i8, ptr %.val5.i583, i64 4
  %.val5.val.i584 = load i32, ptr %i.xe, align 4, !tbaa !39
  %i.xf = sub nsw i32 %.val5.val.i584, %.val4.i582
  %.not638 = icmp slt i32 %i.xd, %i.xf
  br i1 %.not638, label %Gia_ObjIsRi.exit585.thread, label %bb.dl

Gia_ObjIsRi.exit585.thread:                       ; preds = %bb.di, %Gia_ObjIsRi.exit585
  %.val195 = load ptr, ptr %i.ws, align 8, !tbaa !55
  %i.xg = sext i32 %i.wx to i64                   ; 2 uses
  %i.xh = getelementptr inbounds [4 x i8], ptr %.val195, i64 %i.xg ; 3 uses
  %i.xi = load i32, ptr %i.xh, align 4, !tbaa !12 ; 2 uses
  %i.xj = icmp eq i32 %i.xi, 0
  br i1 %i.xj, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %Gia_ObjIsRi.exit585.thread
  %.val220 = load ptr, ptr %3, align 8, !tbaa !55
  %i.xk = getelementptr inbounds [4 x i8], ptr %.val220, i64 %i.xg
  %i.xl = trunc nuw nsw i64 %indvars.iv667 to i32
  store i32 %i.xl, ptr %i.xk, align 4, !tbaa !12
  %.pre688.a = load i32, ptr %i.xh, align 4, !tbaa !12
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %Gia_ObjIsRi.exit585.thread
  %i.xm = phi i32 [ %.pre688.a, %bb.dj ], [ %i.xi, %Gia_ObjIsRi.exit585.thread ]
  %i.xn = add nsw i32 %i.xm, -1
  store i32 %i.xn, ptr %i.xh, align 4, !tbaa !12
  %.pre689 = load i32, ptr %i.e, align 8, !tbaa !34
  br label %bb.dl

bb.dl:                                            ; preds = %Gia_ObjIsRi.exit585, %bb.dk
  %i.xo = phi i32 [ %i.wu, %Gia_ObjIsRi.exit585 ], [ %.pre689, %bb.dk ] ; 2 uses
  %indvars.iv.next668 = add nuw nsw i64 %indvars.iv667, 1 ; 2 uses
  %i.xp = sext i32 %i.xo to i64
  %i.xq = icmp slt i64 %indvars.iv.next668, %i.xp
  br i1 %i.xq, label %bb.di, label %.critedge6.loopexit, !llvm.loop !141

.critedge6.loopexit:                              ; preds = %bb.dl
  %.val185.pre = load i32, ptr %i.wm, align 4, !tbaa !39
  br label %.critedge6

.critedge6:                                       ; preds = %.critedge6.loopexit, %.lr.ph659, %Vec_IntStart.exit579
  %.val185 = phi i32 [ %.val185.pre, %.critedge6.loopexit ], [ %.val185691, %.lr.ph659 ], [ %.val185691, %Vec_IntStart.exit579 ]
  %i.xr = getelementptr i8, ptr %i.wl, i64 8
  %.val206 = load ptr, ptr %i.xr, align 8, !tbaa !55 ; 5 uses
  %i.xs = tail call ptr @Abc_MergeSortCost(ptr noundef %.val206, i32 noundef %.val185) #29 ; 3 uses
  %i.xt = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.37, i32 noundef %1) ; 0 uses
  %i.xu = icmp sgt i32 %.012.i602607613, 0
  br i1 %i.xu, label %.lr.ph662, label %._crit_edge

.lr.ph662:                                        ; preds = %.critedge6
  %i.xv = getelementptr i8, ptr %i.wk, i64 8
  %wide.trip.count = zext nneg i32 %.012.i602607613 to i64
  br label %bb.dm

bb.dm:                                            ; preds = %.lr.ph662, %bb.dn
  %indvars.iv670 = phi i64 [ 0, %.lr.ph662 ], [ %indvars.iv.next671, %bb.dn ] ; 3 uses
  %i.xw = getelementptr inbounds nuw [4 x i8], ptr %i.xs, i64 %indvars.iv670 ; 5 uses
  %i.xx = load i32, ptr %i.xw, align 4, !tbaa !12
  %i.xy = sext i32 %i.xx to i64
  %i.xz = getelementptr inbounds [4 x i8], ptr %.val206, i64 %i.xy
  %i.ya = load i32, ptr %i.xz, align 4, !tbaa !12
  %i.yb = sub nsw i32 0, %i.ya
  %i.yc = icmp sgt i32 %1, %i.yb
  br i1 %i.yc, label %.thread616, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.yd = trunc nuw nsw i64 %indvars.iv670 to i32
  %i.ye = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, i32 noundef %i.yd) ; 0 uses
  %i.yf = load i32, ptr %i.xw, align 4, !tbaa !12
  %i.yg = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, i32 noundef %i.yf) ; 0 uses
  %i.yh = load i32, ptr %i.xw, align 4, !tbaa !12
  %i.yi = sext i32 %i.yh to i64
  %i.yj = getelementptr inbounds [4 x i8], ptr %.val206, i64 %i.yi
  %i.yk = load i32, ptr %i.yj, align 4, !tbaa !12
  %i.yl = sub nsw i32 0, %i.yk
  %i.ym = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.38, i32 noundef %i.yl) ; 0 uses
  %i.yn = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.39) ; 0 uses
  %i.yo = load i32, ptr %i.xw, align 4, !tbaa !12
  %.val192 = load ptr, ptr %i.xv, align 8, !tbaa !55 ; 2 uses
  %i.yp = sext i32 %i.yo to i64
  %i.yq = getelementptr inbounds [4 x i8], ptr %.val192, i64 %i.yp
  %i.yr = load i32, ptr %i.yq, align 4, !tbaa !12
  tail call void @Gia_ManProfileCollect(ptr nonnull poison, i32 noundef %i.yr, ptr noundef %i.g, ptr noundef nonnull %i.o, ptr noundef nonnull %i.a)
  %i.ys = load i32, ptr %i.xw, align 4, !tbaa !12
  %i.yt = sext i32 %i.ys to i64
  %i.yu = getelementptr inbounds [4 x i8], ptr %.val192, i64 %i.yt
  %i.yv = load i32, ptr %i.yu, align 4, !tbaa !12
  tail call void @Gia_ManProfilePrintOne(ptr noundef nonnull %0, i32 noundef %i.yv, ptr noundef nonnull %i.a)
  %indvars.iv.next671 = add nuw nsw i64 %indvars.iv670, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next671, %wide.trip.count
  br i1 %exitcond.not, label %.thread616, label %bb.dm, !llvm.loop !142

._crit_edge:                                      ; preds = %.critedge6
  %.not178 = icmp eq ptr %i.xs, null
  br i1 %.not178, label %bb.do, label %.thread616

.thread616:                                       ; preds = %bb.dn, %bb.dm, %._crit_edge
  tail call void @free(ptr noundef nonnull %i.xs) #29
  br label %bb.do

bb.do:                                            ; preds = %._crit_edge, %.thread616
  %i.yw = getelementptr inbounds nuw i8, ptr %i.uv, i64 8
  %i.yx = load ptr, ptr %i.yw, align 8, !tbaa !55 ; 2 uses
  %.not.i586 = icmp eq ptr %i.yx, null
  br i1 %.not.i586, label %Vec_IntFree.exit, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  tail call void @free(ptr noundef nonnull %i.yx) #29
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %bb.do, %bb.dp
  tail call void @free(ptr noundef nonnull %i.uv) #29
  %.not.i587 = icmp eq ptr %.val206, null
  br i1 %.not.i587, label %Vec_IntFree.exit588, label %bb.dq

bb.dq:                                            ; preds = %Vec_IntFree.exit
  tail call void @free(ptr noundef nonnull %.val206) #29
  br label %Vec_IntFree.exit588

Vec_IntFree.exit588:                              ; preds = %Vec_IntFree.exit, %bb.dq
  tail call void @free(ptr noundef nonnull %i.wl) #29
  %i.yy = getelementptr inbounds nuw i8, ptr %i.wk, i64 8
  %i.yz = load ptr, ptr %i.yy, align 8, !tbaa !55 ; 2 uses
  %.not.i589 = icmp eq ptr %i.yz, null
  br i1 %.not.i589, label %Vec_IntFree.exit590, label %bb.dr

bb.dr:                                            ; preds = %Vec_IntFree.exit588
  tail call void @free(ptr noundef nonnull %i.yz) #29
  br label %Vec_IntFree.exit590

Vec_IntFree.exit590:                              ; preds = %Vec_IntFree.exit588, %bb.dr
  tail call void @free(ptr noundef nonnull %i.wk) #29
  %i.za = load ptr, ptr %i.d, align 8, !tbaa !55  ; 2 uses
  %.not.i591 = icmp eq ptr %i.za, null
  br i1 %.not.i591, label %Vec_IntFree.exit592, label %bb.ds

bb.ds:                                            ; preds = %Vec_IntFree.exit590
  tail call void @free(ptr noundef nonnull %i.za) #29
  br label %Vec_IntFree.exit592

Vec_IntFree.exit592:                              ; preds = %Vec_IntFree.exit590, %bb.ds
  tail call void @free(ptr noundef nonnull %i.a) #29
  %i.zb = load ptr, ptr %i.n, align 8, !tbaa !55  ; 2 uses
  %.not.i593 = icmp eq ptr %i.zb, null
  br i1 %.not.i593, label %Vec_IntFree.exit594, label %bb.dt

bb.dt:                                            ; preds = %Vec_IntFree.exit592
  tail call void @free(ptr noundef nonnull %i.zb) #29
  br label %Vec_IntFree.exit594

Vec_IntFree.exit594:                              ; preds = %Vec_IntFree.exit592, %bb.dt
  tail call void @free(ptr noundef nonnull %i.g) #29
  %.not.i595 = icmp eq ptr %i.ul, null
  br i1 %.not.i595, label %Vec_IntFree.exit596, label %bb.du

bb.du:                                            ; preds = %Vec_IntFree.exit594
  tail call void @free(ptr noundef nonnull %i.ul) #29
  br label %Vec_IntFree.exit596

Vec_IntFree.exit596:                              ; preds = %Vec_IntFree.exit594, %bb.du
  tail call void @free(ptr noundef nonnull %i.o) #29
  tail call void @Gia_ManStaticFanoutStop(ptr noundef nonnull %0) #29
  ret void
}

declare void @Gia_ManStaticFanoutStart(ptr noundef) local_unnamed_addr #2

declare ptr @Abc_MergeSortCost(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Gia_ManStaticFanoutStop(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @Gia_ManProfileStructures(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @Gia_ManProfileStructuresInt(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = tail call ptr @Gia_ManDupMuxes(ptr noundef nonnull %0, i32 noundef 2) ; 2 uses
  tail call void @Gia_ManProfileStructuresInt(ptr noundef %i.c, i32 noundef %1, i32 noundef %2)
  tail call void @Gia_ManStop(ptr noundef %i.c) #29
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @Gia_ManMarkTfi_rec(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !79
  %.val.i13 = load ptr, ptr %i.b, align 8, !tbaa !35
  %i.e = ptrtoint ptr %1 to i64
  %i.f = ptrtoint ptr %.val.i13 to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 12
  %i.i = shl i64 %i.h, 32
  %i.j = ashr exact i64 %i.i, 30
  %i.k = getelementptr inbounds i8, ptr %i.d, i64 %i.j ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !12
  %i.m = load i32, ptr %i.c, align 8, !tbaa !80   ; 2 uses
  %.not14 = icmp eq i32 %i.l, %i.m
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %tailrecurse
  %i.n = phi i32 [ %i.ai, %tailrecurse ], [ %i.m, %bb.a ]
  %i.o = phi ptr [ %i.ag, %tailrecurse ], [ %i.k, %bb.a ]
end_hunk_0
