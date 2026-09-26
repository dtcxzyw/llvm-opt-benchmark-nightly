Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vqavideo?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@vqa_decode_frame:bb.a
  %i.th = load i32, ptr %i.tc, align 1, !tbaa !34
  %i.ti = call i32 @llvm.bswap.i32(i32 %i.th)
  br label %bytestream2_get_be32.exit.i40

bytestream2_get_be32.exit.i40:                    ; preds = %bb.bz, %bb.by
  %.0.i.i41 = phi i32 [ 0, %bb.by ], [ %i.ti, %bb.bz ]
  %i.tj = getelementptr inbounds nuw i8, ptr %i.d, i64 1120
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !49
  %i.tl = getelementptr inbounds nuw i8, ptr %i.d, i64 1128
  %i.tm = load i32, ptr %i.tl, align 8, !tbaa !48
  %i.tn = call fastcc i32 @decode_format80(ptr noundef nonnull %i.d, i32 noundef %.0.i.i41, ptr noundef %i.tk, i32 noundef %i.tm, i32 noundef 0) ; 2 uses
  %i.to = icmp slt i32 %i.tn, 0
  br i1 %i.to, label %vqa_decode_frame_hicolor.exit.thread, label %bb.ca

.thread192.i:                                     ; preds = %bb.bw, %bb.bc
  %i.tp = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.tq = load ptr, ptr %i.tp, align 8, !tbaa !33
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.tq, i32 noundef 16, ptr noundef nonnull @.str.28) #9
  br label %vqa_decode_frame_hicolor.exit.thread

bb.ca:                                            ; preds = %bytestream2_get_be32.exit.i40, %bb.bv
  %i.tr = getelementptr inbounds nuw i8, ptr %i.d, i64 1120
  %i.ts = load ptr, ptr %i.tr, align 8, !tbaa !49 ; 3 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %i.d, i64 1128
  %i.tu = load i32, ptr %i.tt, align 8, !tbaa !48 ; 2 uses
  %i.tv = icmp ne ptr %i.ts, null
  %i.tw = icmp sgt i32 %i.tu, -1
  %or.cond.i.i35 = and i1 %i.tv, %i.tw
  br i1 %or.cond.i.i35, label %bytestream2_init.exit.i36, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 141) #9
  call void @abort() #10
  unreachable

bytestream2_init.exit.i36:                        ; preds = %bb.ca
  %i.tx = zext nneg i32 %i.tu to i64
  %i.ty = getelementptr inbounds nuw i8, ptr %i.ts, i64 %i.tx ; 4 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %i.d, i64 1068 ; 2 uses
  %i.ua = load i32, ptr %i.tz, align 4, !tbaa !37 ; 2 uses
  %.not15893.i = icmp sgt i32 %i.ua, 0
  br i1 %.not15893.i, label %.preheader29.lr.ph.i, label %vqa_decode_frame_hicolor.exit

.preheader29.lr.ph.i:                             ; preds = %bytestream2_init.exit.i36
  %i.ub = getelementptr inbounds nuw i8, ptr %i.d, i64 1064 ; 4 uses
  %i.uc = ptrtoint ptr %i.ty to i64               ; 3 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %i.d, i64 1072 ; 3 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %i.d, i64 1076 ; 5 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %i.d, i64 1088 ; 2 uses
  %i.ug = load i32, ptr %i.ub, align 8, !tbaa !36 ; 2 uses
  %i.uh = icmp sgt i32 %i.ug, 0
  br i1 %i.uh, label %.preheader29.i, label %vqa_decode_frame_hicolor.exit

.preheader29.i:                                   ; preds = %.preheader29.lr.ph.i, %._crit_edge91.i
  %i.ui = phi i32 [ %i.aaf, %._crit_edge91.i ], [ %i.ua, %.preheader29.lr.ph.i ]
  %i.uj = phi i32 [ %i.aag, %._crit_edge91.i ], [ %i.ug, %.preheader29.lr.ph.i ] ; 3 uses
  %.013795.i = phi i32 [ %i.aai, %._crit_edge91.i ], [ 0, %.preheader29.lr.ph.i ] ; 3 uses
  %.sroa.0.094.i = phi ptr [ %.sroa.0.1.lcssa.i, %._crit_edge91.i ], [ %i.ts, %.preheader29.lr.ph.i ] ; 2 uses
  %i.uk = icmp sgt i32 %i.uj, 0
  br i1 %i.uk, label %.lr.ph90.i, label %._crit_edge91.i

.lr.ph90.i:                                       ; preds = %.preheader29.i, %.critedge.thread.i
  %i.ul = phi i32 [ %i.aad, %.critedge.thread.i ], [ %i.uj, %.preheader29.i ] ; 6 uses
  %.013389.i = phi i32 [ %.3136.i, %.critedge.thread.i ], [ 0, %.preheader29.i ] ; 14 uses
  %.sroa.0.188.i = phi ptr [ %.sroa.0.8.i, %.critedge.thread.i ], [ %.sroa.0.094.i, %.preheader29.i ] ; 4 uses
  %i.um = ptrtoint ptr %.sroa.0.188.i to i64
  %i.un = sub i64 %i.uc, %i.um                    ; 2 uses
  %i.uo = trunc i64 %i.un to i32
  %i.up = icmp slt i32 %i.uo, 2
  br i1 %i.up, label %vqa_decode_frame_hicolor.exit.thread, label %bb.cc

bb.cc:                                            ; preds = %.lr.ph90.i
  %i.uq = icmp slt i64 %i.un, 2
  br i1 %i.uq, label %bytestream2_get_le16.exit.thread.i, label %bytestream2_get_le16.exit.i

bytestream2_get_le16.exit.i:                      ; preds = %bb.cc
  %i.ur = getelementptr inbounds nuw i8, ptr %.sroa.0.188.i, i64 2 ; 5 uses
  %i.us = load i16, ptr %.sroa.0.188.i, align 1, !tbaa !34
  %.fr97.i = freeze i16 %i.us                     ; 3 uses
  %i.ut = zext i16 %.fr97.i to i32                ; 6 uses
  %i.uu = lshr i32 %i.ut, 13                      ; 4 uses
  %i.uv = icmp eq i32 %i.uu, 0
  br i1 %i.uv, label %bytestream2_get_le16.exit.thread.i, label %bb.cd

bytestream2_get_le16.exit.thread.i:               ; preds = %bytestream2_get_le16.exit.i, %bb.cc
  %.0.i17617.i = phi i32 [ %i.ut, %bytestream2_get_le16.exit.i ], [ 0, %bb.cc ]
  %.sroa.0.216.i = phi ptr [ %i.ur, %bytestream2_get_le16.exit.i ], [ %i.ty, %bb.cc ]
  %i.uw = shl nuw nsw i32 %.0.i17617.i, 2
  %i.ux = add nsw i32 %i.uw, %.013389.i
  br label %.critedge.thread.i, !llvm.loop !71

bb.cd:                                            ; preds = %bytestream2_get_le16.exit.i
  %i.uy = icmp ult i16 %.fr97.i, 24576
  br i1 %i.uy, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.uz = and i32 %i.ut, 255
  %i.va = lshr i32 %i.ut, 7
  %i.vb = and i32 %i.va, 62
  %i.vc = add nuw nsw i32 %i.uu, 1
  %i.vd = add nuw nsw i32 %i.vc, %i.vb
  br label %bytestream2_get_byte.exit175.i

bb.cf:                                            ; preds = %bb.cd
  %i.ve = icmp ult i16 %.fr97.i, -24576
  br i1 %i.ve, label %bytestream2_get_byte.exit175.thread.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %.not156.i = icmp eq i32 %i.uu, 7
  br i1 %.not156.i, label %bb.cj, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.vf = ptrtoint ptr %i.ur to i64
  %i.vg = sub i64 %i.uc, %i.vf
  %i.vh = icmp slt i64 %i.vg, 1
  br i1 %i.vh, label %bytestream2_get_byte.exit175.i.thread, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.vi = and i32 %i.ut, 8191
  %i.vj = getelementptr inbounds nuw i8, ptr %.sroa.0.188.i, i64 3
  %i.vk = load i8, ptr %i.ur, align 1, !tbaa !34
  %i.vl = zext i8 %i.vk to i32
  br label %bytestream2_get_byte.exit175.i

bb.cj:                                            ; preds = %bb.cg
  %i.vm = load ptr, ptr %i.ot, align 8, !tbaa !33
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.vm, i32 noundef 16, ptr noundef nonnull @.str.29, i32 noundef 7) #9
  br label %vqa_decode_frame_hicolor.exit.thread

bytestream2_get_byte.exit175.i:                   ; preds = %bb.ci, %bb.ce
  %.sroa.0.4.i = phi ptr [ %i.ur, %bb.ce ], [ %i.vj, %bb.ci ] ; 2 uses
  %.0129.i = phi i32 [ %i.uz, %bb.ce ], [ %i.vi, %bb.ci ]
  %.0127.i = phi i32 [ %i.vd, %bb.ce ], [ %i.vl, %bb.ci ] ; 5 uses
  %i.vn = sub nsw i32 %i.ul, %.013389.i
  %i.vo = load i32, ptr %i.ud, align 8, !tbaa !39
  %i.vp = sdiv i32 %i.vn, %i.vo
  %i.vq = icmp sgt i32 %.0127.i, %i.vp
  br i1 %i.vq, label %bb.cl, label %.preheader.i37

bytestream2_get_byte.exit175.i.thread:            ; preds = %bb.ch
  %i.vr = sub nsw i32 %i.ul, %.013389.i
  %i.vs = load i32, ptr %i.ud, align 8, !tbaa !39
  %i.vt = sdiv i32 %i.vr, %i.vs
  %i.vu = icmp slt i32 %i.vt, 0
  br i1 %i.vu, label %bb.cl, label %.critedge.thread.i

bytestream2_get_byte.exit175.thread.i:            ; preds = %bb.cf
  %i.vv = and i32 %i.ut, 8191
  %i.vw = sub nsw i32 %i.ul, %.013389.i
  %i.vx = load i32, ptr %i.ud, align 8, !tbaa !39
  %i.vy = sdiv i32 %i.vw, %i.vx
  %i.vz = icmp slt i32 %i.vy, 1
  br i1 %i.vz, label %bb.cl, label %.lr.ph68.i

.preheader.i37:                                   ; preds = %bytestream2_get_byte.exit175.i
  %i.wa = add nsw i32 %.0127.i, -1
  %.not15763.i = icmp eq i32 %.0127.i, 0
  br i1 %.not15763.i, label %.critedge.thread.i, label %.lr.ph68.i

.lr.ph68.i:                                       ; preds = %.preheader.i37, %bytestream2_get_byte.exit175.thread.i
  %i.wb = phi i32 [ %i.wa, %.preheader.i37 ], [ 0, %bytestream2_get_byte.exit175.thread.i ] ; 11 uses
  %.sroa.0.4198208.i = phi ptr [ %.sroa.0.4.i, %.preheader.i37 ], [ %i.ur, %bytestream2_get_byte.exit175.thread.i ] ; 9 uses
  %.0129199207.i = phi i32 [ %.0129.i, %.preheader.i37 ], [ %i.vv, %bytestream2_get_byte.exit175.thread.i ] ; 2 uses
  %.0127201206.i = phi i32 [ %.0127.i, %.preheader.i37 ], [ 1, %bytestream2_get_byte.exit175.thread.i ] ; 3 uses
  %i.wc = icmp eq i32 %i.uu, 2
  br i1 %i.wc, label %.lr.ph68.split.preheader.i, label %.lr.ph68.split.us.i

.lr.ph68.split.preheader.i:                       ; preds = %.lr.ph68.i
  %i.wd = sext i32 %.013389.i to i64
  br label %.lr.ph68.split.i

.lr.ph68.split.us.i:                              ; preds = %.lr.ph68.i
  %i.we = icmp slt i32 %.013389.i, %i.ul
  br i1 %i.we, label %.lr.ph77.i, label %.critedge.i

.lr.ph77.i:                                       ; preds = %.lr.ph68.split.us.i
  %i.wf = shl nuw nsw i32 %.0129199207.i, 3
  %i.wg = load i32, ptr %i.ue, align 4, !tbaa !40 ; 2 uses
  %i.wh = icmp sgt i32 %i.wg, 0
  br i1 %i.wh, label %.lr.ph77.split.preheader.i, label %bytestream2_get_byte.exit.us.us.preheader.i

bytestream2_get_byte.exit.us.us.preheader.i:      ; preds = %.lr.ph77.i
  %i.wi = shl nuw nsw i32 %.0127201206.i, 2
  %i.wj = add i32 %i.wi, %.013389.i               ; 3 uses
  %.not157.us.us.i192 = icmp eq i32 %i.wb, 0
  br i1 %.not157.us.us.i192, label %.critedge.thread.i, label %.lr.ph

.lr.ph:                                           ; preds = %bytestream2_get_byte.exit.us.us.preheader.i
  %min.iters.check = icmp ult i32 %i.wb, 32
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i32 %i.wb, -16                     ; 3 uses
  %i.wk = and i32 %i.wb, 15
  %i.wl = shl i32 %n.vec, 2
  %i.wm = add i32 %.013389.i, %i.wl
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %i.ul, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert194 = insertelement <16 x i32> poison, i32 %i.wb, i64 0
  %broadcast.splat195 = shufflevector <16 x i32> %broadcast.splatinsert194, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.wn = add nsw <16 x i32> %broadcast.splat195, <i32 0, i32 -1, i32 -2, i32 -3, i32 -4, i32 -5, i32 -6, i32 -7, i32 -8, i32 -9, i32 -10, i32 -11, i32 -12, i32 -13, i32 -14, i32 -15>
  %broadcast.splatinsert196 = insertelement <16 x i32> poison, i32 %.013389.i, i64 0
  %broadcast.splat197 = shufflevector <16 x i32> %broadcast.splatinsert196, <16 x i32> poison, <16 x i32> zeroinitializer
  %induction = add nsw <16 x i32> %broadcast.splat197, <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  br label %vector.body

vector.body:                                      ; preds = %vector.body.interim, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body.interim ] ; 2 uses
  %vec.ind = phi <16 x i32> [ %i.wn, %vector.ph ], [ %vec.ind.next, %vector.body.interim ] ; 2 uses
  %vec.ind198 = phi <16 x i32> [ %induction, %vector.ph ], [ %vec.ind.next199, %vector.body.interim ] ; 2 uses
  %i.wo = add nsw <16 x i32> %vec.ind198, splat (i32 4) ; 2 uses
  %i.wp = icmp sge <16 x i32> %i.wo, %broadcast.splat
  %i.wq = freeze <16 x i1> %i.wp                  ; 2 uses
  %i.wr = bitcast <16 x i1> %i.wq to i16
  %.not = icmp eq i16 %i.wr, 0
  br i1 %.not, label %vector.body.interim, label %vector.early.exit

vector.body.interim:                              ; preds = %vector.body
  %vec.ind.next199 = add nsw <16 x i32> %vec.ind198, splat (i32 64)
  %vec.ind.next = add nsw <16 x i32> %vec.ind, splat (i32 -16)
  %index.next = add nuw i32 %index, 16            ; 2 uses
  %i.ws = icmp eq i32 %index.next, %n.vec
  br i1 %i.ws, label %middle.block, label %vector.body, !llvm.loop !72

middle.block:                                     ; preds = %vector.body.interim
  %cmp.n = icmp eq i32 %i.wb, %n.vec
  br i1 %cmp.n, label %.critedge.thread.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.ph = phi i32 [ %i.wb, %.lr.ph ], [ %i.wk, %middle.block ]
  %.113465.us76.us.i193.ph = phi i32 [ %.013389.i, %.lr.ph ], [ %i.wm, %middle.block ]
  br label %scalar.ph

vector.early.exit:                                ; preds = %vector.body
  %first.active.lane = call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %i.wq, i1 false) ; 3 uses
  %i.wt = extractelement <16 x i32> %i.wo, i64 %first.active.lane
  %i.wu = extractelement <16 x i32> %vec.ind, i64 %first.active.lane
  %i.wv = add nsw i32 %i.wu, -1
  %i.ww = trunc i64 %first.active.lane to i32
  %i.wx = add i32 %index, %i.ww
  %i.wy = sub i32 %i.wb, %i.wx
  br label %.critedge.i

.lr.ph77.split.preheader.i:                       ; preds = %.lr.ph77.i
  %i.wz = sext i32 %.013389.i to i64
  %.pre130.i = load ptr, ptr %i.d, align 8, !tbaa !44
  br label %.lr.ph77.split.i

bytestream2_get_byte.exit.us.us.i:                ; preds = %scalar.ph
  %.not157.us.us.i = icmp eq i32 %i.xc, 0
  br i1 %.not157.us.us.i, label %.critedge.thread.i, label %scalar.ph, !llvm.loop !73

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bytestream2_get_byte.exit.us.us.i
  %i.xa = phi i32 [ %i.xc, %bytestream2_get_byte.exit.us.us.i ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.113465.us76.us.i193 = phi i32 [ %i.xb, %bytestream2_get_byte.exit.us.us.i ], [ %.113465.us76.us.i193.ph, %scalar.ph.preheader ]
  %i.xb = add nsw i32 %.113465.us76.us.i193, 4    ; 3 uses
  %i.xc = add nsw i32 %i.xa, -1                   ; 3 uses
  %i.xd = icmp slt i32 %i.xb, %i.ul
  br i1 %i.xd, label %bytestream2_get_byte.exit.us.us.i, label %.critedge.i

bb.ck:                                            ; preds = %bytestream2_get_byte.exit.us.i
  %i.xe = add nsw i32 %i.xk, -1                   ; 2 uses
  %i.xf = load i32, ptr %i.ub, align 8, !tbaa !36
  %i.xg = sext i32 %i.xf to i64
  %i.xh = icmp slt i64 %indvars.iv.next.i39, %i.xg
  br i1 %i.xh, label %.lr.ph77.split.i, label %.critedge.loopexit99.i, !llvm.loop !74

.lr.ph77.split.i:                                 ; preds = %bb.ck, %.lr.ph77.split.preheader.i
  %i.xi = phi i32 [ %i.wg, %.lr.ph77.split.preheader.i ], [ %i.yi, %bb.ck ] ; 3 uses
  %i.xj = phi ptr [ %.pre130.i, %.lr.ph77.split.preheader.i ], [ %i.yj, %bb.ck ] ; 3 uses
  %indvars.iv.i38 = phi i64 [ %i.wz, %.lr.ph77.split.preheader.i ], [ %indvars.iv.next.i39, %bb.ck ] ; 2 uses
  %i.xk = phi i32 [ %i.wb, %.lr.ph77.split.preheader.i ], [ %i.xe, %bb.ck ] ; 3 uses
  %i.xl = icmp sgt i32 %i.xi, 0
  br i1 %i.xl, label %.lr.ph61.us.preheader.i, label %bytestream2_get_byte.exit.us.i

.lr.ph61.us.preheader.i:                          ; preds = %.lr.ph77.split.i
  %i.xm = load ptr, ptr %i.uf, align 8, !tbaa !46
  %i.xn = mul i32 %i.wf, %i.xi
  %i.xo = sext i32 %i.xn to i64
  %i.xp = getelementptr inbounds i8, ptr %i.xm, i64 %i.xo
  %i.xq = load ptr, ptr %i.xj, align 8, !tbaa !55
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xj, i64 64
  %i.xs = load i32, ptr %i.xr, align 8, !tbaa !38
  %i.xt = mul nsw i32 %i.xs, %.013795.i
  %i.xu = sext i32 %i.xt to i64
  %i.xv = getelementptr inbounds i8, ptr %i.xq, i64 %i.xu
  %i.xw = shl nsw i64 %indvars.iv.i38, 1
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xv, i64 %i.xw
  br label %.lr.ph61.us.i

.lr.ph61.us.i:                                    ; preds = %.lr.ph61.us.i, %.lr.ph61.us.preheader.i
  %.012459.us.i = phi i32 [ %i.yf, %.lr.ph61.us.i ], [ 0, %.lr.ph61.us.preheader.i ]
  %.012558.us.i = phi ptr [ %i.yd, %.lr.ph61.us.i ], [ %i.xx, %.lr.ph61.us.preheader.i ] ; 2 uses
  %.012657.us.i = phi ptr [ %i.ye, %.lr.ph61.us.i ], [ %i.xp, %.lr.ph61.us.preheader.i ] ; 2 uses
  %i.xy = load i64, ptr %.012657.us.i, align 1
  store i64 %i.xy, ptr %.012558.us.i, align 1
  %i.xz = load ptr, ptr %i.d, align 8, !tbaa !44  ; 2 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xz, i64 64
  %i.yb = load i32, ptr %i.ya, align 8, !tbaa !38
  %i.yc = sext i32 %i.yb to i64
  %i.yd = getelementptr inbounds i8, ptr %.012558.us.i, i64 %i.yc
  %i.ye = getelementptr inbounds nuw i8, ptr %.012657.us.i, i64 8
  %i.yf = add nuw nsw i32 %.012459.us.i, 1        ; 2 uses
  %i.yg = load i32, ptr %i.ue, align 4, !tbaa !40 ; 2 uses
  %i.yh = icmp slt i32 %i.yf, %i.yg
  br i1 %i.yh, label %.lr.ph61.us.i, label %bytestream2_get_byte.exit.us.i, !llvm.loop !75

bytestream2_get_byte.exit.us.i:                   ; preds = %.lr.ph61.us.i, %.lr.ph77.split.i
  %i.yi = phi i32 [ %i.xi, %.lr.ph77.split.i ], [ %i.yg, %.lr.ph61.us.i ]
  %i.yj = phi ptr [ %i.xj, %.lr.ph77.split.i ], [ %i.xz, %.lr.ph61.us.i ]
  %indvars.iv.next.i39 = add nsw i64 %indvars.iv.i38, 4 ; 4 uses
  %.not157.us.i = icmp eq i32 %i.xk, 0
  br i1 %.not157.us.i, label %.critedge.thread.loopexit98.i, label %bb.ck

bb.cl:                                            ; preds = %bytestream2_get_byte.exit175.i.thread, %bytestream2_get_byte.exit175.thread.i, %bytestream2_get_byte.exit175.i
  %.0127200.i = phi i32 [ 1, %bytestream2_get_byte.exit175.thread.i ], [ %.0127.i, %bytestream2_get_byte.exit175.i ], [ 0, %bytestream2_get_byte.exit175.i.thread ]
  %i.yk = load ptr, ptr %i.ot, align 8, !tbaa !33
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.yk, i32 noundef 16, ptr noundef nonnull @.str.30, i32 noundef %.0127200.i) #9
  br label %vqa_decode_frame_hicolor.exit.thread

.lr.ph68.split.i:                                 ; preds = %bytestream2_get_byte.exit.i, %.lr.ph68.split.preheader.i
  %indvars.iv126.i = phi i64 [ %i.wd, %.lr.ph68.split.preheader.i ], [ %indvars.iv.next127.i, %bytestream2_get_byte.exit.i ] ; 4 uses
  %i.yl = phi i32 [ %i.wb, %.lr.ph68.split.preheader.i ], [ %i.zw, %bytestream2_get_byte.exit.i ] ; 4 uses
  %.112867.i = phi i32 [ %.0127201206.i, %.lr.ph68.split.preheader.i ], [ %i.yl, %bytestream2_get_byte.exit.i ] ; 2 uses
  %.113066.i = phi i32 [ %.0129199207.i, %.lr.ph68.split.preheader.i ], [ %.2131.i, %bytestream2_get_byte.exit.i ] ; 2 uses
  %.sroa.0.564.i = phi ptr [ %.sroa.0.4198208.i, %.lr.ph68.split.preheader.i ], [ %.sroa.0.7.i, %bytestream2_get_byte.exit.i ] ; 5 uses
  %i.ym = load i32, ptr %i.ub, align 8, !tbaa !36
  %i.yn = sext i32 %i.ym to i64
  %i.yo = icmp slt i64 %indvars.iv126.i, %i.yn
  br i1 %i.yo, label %bb.cm, label %.critedge.loopexit.i

bb.cm:                                            ; preds = %.lr.ph68.split.i
  %i.yp = load i32, ptr %i.ue, align 4, !tbaa !40 ; 2 uses
  %i.yq = icmp sgt i32 %i.yp, 0
  br i1 %i.yq, label %.lr.ph61.preheader.i, label %._crit_edge62.i

.lr.ph61.preheader.i:                             ; preds = %bb.cm
  %i.yr = load ptr, ptr %i.uf, align 8, !tbaa !46
  %i.ys = shl nuw nsw i32 %.113066.i, 3
  %i.yt = mul i32 %i.ys, %i.yp
  %i.yu = sext i32 %i.yt to i64
  %i.yv = getelementptr inbounds i8, ptr %i.yr, i64 %i.yu
  %i.yw = load ptr, ptr %i.d, align 8, !tbaa !44  ; 2 uses
  %i.yx = load ptr, ptr %i.yw, align 8, !tbaa !55
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yw, i64 64
  %i.yz = load i32, ptr %i.yy, align 8, !tbaa !38
  %i.za = mul nsw i32 %i.yz, %.013795.i
  %i.zb = sext i32 %i.za to i64
  %i.zc = getelementptr inbounds i8, ptr %i.yx, i64 %i.zb
  %i.zd = shl nsw i64 %indvars.iv126.i, 1
  %i.ze = getelementptr inbounds nuw i8, ptr %i.zc, i64 %i.zd
  br label %.lr.ph61.i

._crit_edge62.i:                                  ; preds = %.lr.ph61.i, %bb.cm
  %i.zf = icmp sgt i32 %.112867.i, 1
  br i1 %i.zf, label %bb.cn, label %bytestream2_get_byte.exit.i

.lr.ph61.i:                                       ; preds = %.lr.ph61.i, %.lr.ph61.preheader.i
  %.012459.i = phi i32 [ %i.zn, %.lr.ph61.i ], [ 0, %.lr.ph61.preheader.i ]
  %.012558.i = phi ptr [ %i.zl, %.lr.ph61.i ], [ %i.ze, %.lr.ph61.preheader.i ] ; 2 uses
  %.012657.i = phi ptr [ %i.zm, %.lr.ph61.i ], [ %i.yv, %.lr.ph61.preheader.i ] ; 2 uses
  %i.zg = load i64, ptr %.012657.i, align 1
  store i64 %i.zg, ptr %.012558.i, align 1
  %i.zh = load ptr, ptr %i.d, align 8, !tbaa !44
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zh, i64 64
  %i.zj = load i32, ptr %i.zi, align 8, !tbaa !38
  %i.zk = sext i32 %i.zj to i64
  %i.zl = getelementptr inbounds i8, ptr %.012558.i, i64 %i.zk
  %i.zm = getelementptr inbounds nuw i8, ptr %.012657.i, i64 8
  %i.zn = add nuw nsw i32 %.012459.i, 1           ; 2 uses
  %i.zo = load i32, ptr %i.ue, align 4, !tbaa !40
  %i.zp = icmp slt i32 %i.zn, %i.zo
  br i1 %i.zp, label %.lr.ph61.i, label %._crit_edge62.i, !llvm.loop !75

bb.cn:                                            ; preds = %._crit_edge62.i
  %i.zq = ptrtoint ptr %.sroa.0.564.i to i64
  %i.zr = sub i64 %i.uc, %i.zq
  %i.zs = icmp slt i64 %i.zr, 1
  br i1 %i.zs, label %bytestream2_get_byte.exit.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.zt = getelementptr inbounds nuw i8, ptr %.sroa.0.564.i, i64 1
  %i.zu = load i8, ptr %.sroa.0.564.i, align 1, !tbaa !34
  %i.zv = zext i8 %i.zu to i32
  br label %bytestream2_get_byte.exit.i

bytestream2_get_byte.exit.i:                      ; preds = %bb.co, %bb.cn, %._crit_edge62.i
  %.sroa.0.7.i = phi ptr [ %.sroa.0.564.i, %._crit_edge62.i ], [ %i.zt, %bb.co ], [ %i.ty, %bb.cn ] ; 2 uses
  %.2131.i = phi i32 [ %.113066.i, %._crit_edge62.i ], [ %i.zv, %bb.co ], [ 0, %bb.cn ]
  %indvars.iv.next127.i = add nsw i64 %indvars.iv126.i, 4 ; 2 uses
  %i.zw = add nsw i32 %i.yl, -1
  %.not157.i = icmp eq i32 %i.yl, 0
  br i1 %.not157.i, label %.critedge.thread.loopexit.i, label %.lr.ph68.split.i

.critedge.loopexit.i:                             ; preds = %.lr.ph68.split.i
  %i.zx = trunc nsw i64 %indvars.iv126.i to i32
  br label %.critedge.i

.critedge.loopexit99.i:                           ; preds = %bb.ck
  %i.zy = trunc nsw i64 %indvars.iv.next.i39 to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %scalar.ph, %vector.early.exit, %.critedge.loopexit99.i, %.critedge.loopexit.i, %.lr.ph68.split.us.i
  %.us-phi.i = phi ptr [ %.sroa.0.4198208.i, %.lr.ph68.split.us.i ], [ %.sroa.0.4198208.i, %.critedge.loopexit99.i ], [ %.sroa.0.564.i, %.critedge.loopexit.i ], [ %.sroa.0.4198208.i, %vector.early.exit ], [ %.sroa.0.4198208.i, %scalar.ph ]
  %.us-phi71.i = phi i32 [ %.013389.i, %.lr.ph68.split.us.i ], [ %i.zy, %.critedge.loopexit99.i ], [ %i.zx, %.critedge.loopexit.i ], [ %i.wt, %vector.early.exit ], [ %i.xb, %scalar.ph ]
  %.us-phi72.i = phi i32 [ %.0127201206.i, %.lr.ph68.split.us.i ], [ %i.xk, %.critedge.loopexit99.i ], [ %.112867.i, %.critedge.loopexit.i ], [ %i.wy, %vector.early.exit ], [ %i.xa, %scalar.ph ]
  %.us-phi73.i = phi i32 [ %i.wb, %.lr.ph68.split.us.i ], [ %i.xe, %.critedge.loopexit99.i ], [ %i.yl, %.critedge.loopexit.i ], [ %i.wv, %vector.early.exit ], [ %i.xc, %scalar.ph ]
  %i.zz = icmp sgt i32 %.us-phi72.i, 1
  br i1 %i.zz, label %bb.cp, label %.critedge.thread.i

bb.cp:                                            ; preds = %.critedge.i
  %i.aaa = load ptr, ptr %i.ot, align 8, !tbaa !33
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.aaa, i32 noundef 16, ptr noundef nonnull @.str.31, i32 noundef %.us-phi73.i) #9
  br label %vqa_decode_frame_hicolor.exit.thread

.critedge.thread.loopexit.i:                      ; preds = %bytestream2_get_byte.exit.i
  %i.aab = trunc nsw i64 %indvars.iv.next127.i to i32
  br label %.critedge.thread.i

.critedge.thread.loopexit98.i:                    ; preds = %bytestream2_get_byte.exit.us.i
end_hunk_0
