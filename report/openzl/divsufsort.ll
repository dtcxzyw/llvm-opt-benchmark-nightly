Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/divsufsort?download=true
inline.NumInlined: 85
inline.NumDeleted: 33
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@sort_typeBstar:.preheader340.preheader
.critedge.i115.i:                                 ; preds = %bb.ca
  %i.vl = icmp slt i32 %i.vj, %i.vc
  br i1 %i.vl, label %.preheader206.i116.i, label %.critedge2.i62.i

.preheader206.i116.i:                             ; preds = %.critedge.i115.i
  %i.vm = getelementptr inbounds nuw i8, ptr %.0154.i61.i, i64 8 ; 3 uses
  %i.vn = icmp ult ptr %i.vm, %.0459.ph.i.i
  br i1 %i.vn, label %.lr.ph.i117.i, label %.critedge2.i62.i

.lr.ph.i117.i:                                    ; preds = %.preheader206.i116.i, %bb.cd
  %i.vo = phi ptr [ %i.vw, %bb.cd ], [ %i.vm, %.preheader206.i116.i ] ; 4 uses
  %.0159217.i118.i = phi ptr [ %.1160.i120.i, %bb.cd ], [ %i.ve, %.preheader206.i116.i ] ; 5 uses
  %i.vp = load i32, ptr %i.vo, align 4, !tbaa !12 ; 2 uses
  %i.vq = sext i32 %i.vp to i64
  %i.vr = getelementptr inbounds [4 x i8], ptr %i.ux, i64 %i.vq
  %i.vs = load i32, ptr %i.vr, align 4, !tbaa !12 ; 2 uses
  %.not.i119.i = icmp sgt i32 %i.vs, %i.vc
  br i1 %.not.i119.i, label %.critedge2.i62.i, label %bb.cb

bb.cb:                                            ; preds = %.lr.ph.i117.i
  %i.vt = icmp eq i32 %i.vs, %i.vc
  br i1 %i.vt, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.vu = load i32, ptr %.0159217.i118.i, align 4, !tbaa !12
  store i32 %i.vu, ptr %i.vo, align 4, !tbaa !12
  store i32 %i.vp, ptr %.0159217.i118.i, align 4, !tbaa !12
  %i.vv = getelementptr inbounds nuw i8, ptr %.0159217.i118.i, i64 4
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.1160.i120.i = phi ptr [ %i.vv, %bb.cc ], [ %.0159217.i118.i, %bb.cb ] ; 2 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vo, i64 4 ; 3 uses
  %i.vx = icmp ult ptr %i.vw, %.0459.ph.i.i
  br i1 %i.vx, label %.lr.ph.i117.i, label %.critedge2.i62.i, !llvm.loop !48

.critedge2.i62.i:                                 ; preds = %bb.bz, %bb.cd, %.lr.ph.i117.i, %.preheader206.i116.i, %.critedge.i115.i
  %.2161.i63.i = phi ptr [ %i.ve, %.critedge.i115.i ], [ %.0159217.i118.i, %.lr.ph.i117.i ], [ %i.ve, %.preheader206.i116.i ], [ %.1160.i120.i, %bb.cd ], [ %i.ve, %bb.bz ] ; 2 uses
  %.2156.i64.i = phi ptr [ %i.ve, %.critedge.i115.i ], [ %i.vo, %.lr.ph.i117.i ], [ %i.vm, %.preheader206.i116.i ], [ %i.vw, %bb.cd ], [ %i.ve, %bb.bz ] ; 6 uses
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cf, %.critedge2.i62.i
  %.0149.i65.i = phi ptr [ %.0459.ph.i.i, %.critedge2.i62.i ], [ %i.vy, %bb.cf ] ; 2 uses
  %i.vy = getelementptr inbounds i8, ptr %.0149.i65.i, i64 -4 ; 9 uses
  %i.vz = icmp ult ptr %.2156.i64.i, %i.vy
  br i1 %i.vz, label %bb.cf, label %.critedge6.i66.i

bb.cf:                                            ; preds = %bb.ce
  %i.wa = load i32, ptr %i.vy, align 4, !tbaa !12
  %i.wb = sext i32 %i.wa to i64
  %i.wc = getelementptr inbounds [4 x i8], ptr %i.ux, i64 %i.wb
  %i.wd = load i32, ptr %i.wc, align 4, !tbaa !12 ; 2 uses
  %i.we = icmp eq i32 %i.wd, %i.vc
  br i1 %i.we, label %bb.ce, label %.critedge4.i109.i, !llvm.loop !49

.critedge4.i109.i:                                ; preds = %bb.cf
  %i.wf = icmp sgt i32 %i.wd, %i.vc
  br i1 %i.wf, label %.preheader.i110.i, label %.critedge6.i66.i

.preheader.i110.i:                                ; preds = %.critedge4.i109.i
  %i.wg = getelementptr inbounds i8, ptr %.0149.i65.i, i64 -8 ; 3 uses
  %i.wh = icmp ult ptr %.2156.i64.i, %i.wg
  br i1 %i.wh, label %.lr.ph223.i111.i, label %.critedge6.i66.i

.lr.ph223.i111.i:                                 ; preds = %.preheader.i110.i, %bb.ci
  %i.wi = phi ptr [ %i.wq, %bb.ci ], [ %i.wg, %.preheader.i110.i ] ; 4 uses
  %.0143222.i112.i = phi ptr [ %.1144.i114.i, %bb.ci ], [ %i.vy, %.preheader.i110.i ] ; 5 uses
  %i.wj = load i32, ptr %i.wi, align 4, !tbaa !12 ; 2 uses
  %i.wk = sext i32 %i.wj to i64
  %i.wl = getelementptr inbounds [4 x i8], ptr %i.ux, i64 %i.wk
  %i.wm = load i32, ptr %i.wl, align 4, !tbaa !12 ; 2 uses
  %.not197.i113.i = icmp slt i32 %i.wm, %i.vc
  br i1 %.not197.i113.i, label %.critedge6.i66.i, label %bb.cg

bb.cg:                                            ; preds = %.lr.ph223.i111.i
  %i.wn = icmp eq i32 %i.wm, %i.vc
  br i1 %i.wn, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.wo = load i32, ptr %.0143222.i112.i, align 4, !tbaa !12
  store i32 %i.wo, ptr %i.wi, align 4, !tbaa !12
  store i32 %i.wj, ptr %.0143222.i112.i, align 4, !tbaa !12
  %i.wp = getelementptr inbounds i8, ptr %.0143222.i112.i, i64 -4
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %.1144.i114.i = phi ptr [ %i.wp, %bb.ch ], [ %.0143222.i112.i, %bb.cg ] ; 2 uses
  %i.wq = getelementptr inbounds i8, ptr %i.wi, i64 -4 ; 3 uses
  %i.wr = icmp ult ptr %.2156.i64.i, %i.wq
  br i1 %i.wr, label %.lr.ph223.i111.i, label %.critedge6.i66.i, !llvm.loop !50

.critedge6.i66.i:                                 ; preds = %bb.ce, %bb.ci, %.lr.ph223.i111.i, %.preheader.i110.i, %.critedge4.i109.i
  %.2151.i67.i = phi ptr [ %i.vy, %.critedge4.i109.i ], [ %i.wi, %.lr.ph223.i111.i ], [ %i.wg, %.preheader.i110.i ], [ %i.wq, %bb.ci ], [ %i.vy, %bb.ce ] ; 2 uses
  %.2145.i68.i = phi ptr [ %i.vy, %.critedge4.i109.i ], [ %.0143222.i112.i, %.lr.ph223.i111.i ], [ %i.vy, %.preheader.i110.i ], [ %.1144.i114.i, %bb.ci ], [ %i.vy, %bb.ce ] ; 2 uses
  %i.ws = icmp ult ptr %.2156.i64.i, %.2151.i67.i
  br i1 %i.ws, label %.lr.ph247.i90.i, label %._crit_edge.i69.i

.lr.ph247.i90.i:                                  ; preds = %.critedge6.i66.i, %.critedge10.i98.i
  %.3146246.i91.i = phi ptr [ %.4147.lcssa.i99.i, %.critedge10.i98.i ], [ %.2145.i68.i, %.critedge6.i66.i ] ; 2 uses
  %.3152245.i92.i = phi ptr [ %.lcssa208.i100.i, %.critedge10.i98.i ], [ %.2151.i67.i, %.critedge6.i66.i ] ; 5 uses
  %.3157244.i93.i = phi ptr [ %.lcssa.i97.i, %.critedge10.i98.i ], [ %.2156.i64.i, %.critedge6.i66.i ] ; 3 uses
  %.3162243.i94.i = phi ptr [ %.4163.lcssa.i96.i, %.critedge10.i98.i ], [ %.2161.i63.i, %.critedge6.i66.i ] ; 2 uses
  %i.wt = load i32, ptr %.3157244.i93.i, align 4, !tbaa !12
  %i.wu = load i32, ptr %.3152245.i92.i, align 4, !tbaa !12
  store i32 %i.wu, ptr %.3157244.i93.i, align 4, !tbaa !12
  store i32 %i.wt, ptr %.3152245.i92.i, align 4, !tbaa !12
  %i.wv = getelementptr inbounds nuw i8, ptr %.3157244.i93.i, i64 4 ; 3 uses
  %i.ww = icmp ult ptr %i.wv, %.3152245.i92.i
  br i1 %i.ww, label %.lr.ph230.i105.i, label %.critedge8.i95.i

.lr.ph230.i105.i:                                 ; preds = %.lr.ph247.i90.i, %bb.cl
  %i.wx = phi ptr [ %i.xf, %bb.cl ], [ %i.wv, %.lr.ph247.i90.i ] ; 4 uses
  %.4163229.i106.i = phi ptr [ %.5164.i108.i, %bb.cl ], [ %.3162243.i94.i, %.lr.ph247.i90.i ] ; 5 uses
  %i.wy = load i32, ptr %i.wx, align 4, !tbaa !12 ; 2 uses
  %i.wz = sext i32 %i.wy to i64
  %i.xa = getelementptr inbounds [4 x i8], ptr %i.ux, i64 %i.wz
  %i.xb = load i32, ptr %i.xa, align 4, !tbaa !12 ; 2 uses
  %.not199.i107.i = icmp sgt i32 %i.xb, %i.vc
  br i1 %.not199.i107.i, label %.critedge8.i95.i, label %bb.cj

bb.cj:                                            ; preds = %.lr.ph230.i105.i
  %i.xc = icmp eq i32 %i.xb, %i.vc
  br i1 %i.xc, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.xd = load i32, ptr %.4163229.i106.i, align 4, !tbaa !12
  store i32 %i.xd, ptr %i.wx, align 4, !tbaa !12
  store i32 %i.wy, ptr %.4163229.i106.i, align 4, !tbaa !12
  %i.xe = getelementptr inbounds nuw i8, ptr %.4163229.i106.i, i64 4
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %.5164.i108.i = phi ptr [ %i.xe, %bb.ck ], [ %.4163229.i106.i, %bb.cj ] ; 2 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %i.wx, i64 4 ; 3 uses
  %i.xg = icmp ult ptr %i.xf, %.3152245.i92.i
  br i1 %i.xg, label %.lr.ph230.i105.i, label %.critedge8.i95.i, !llvm.loop !51

.critedge8.i95.i:                                 ; preds = %bb.cl, %.lr.ph230.i105.i, %.lr.ph247.i90.i
  %.4163.lcssa.i96.i = phi ptr [ %.3162243.i94.i, %.lr.ph247.i90.i ], [ %.5164.i108.i, %bb.cl ], [ %.4163229.i106.i, %.lr.ph230.i105.i ] ; 2 uses
  %.lcssa.i97.i = phi ptr [ %i.wv, %.lr.ph247.i90.i ], [ %i.xf, %bb.cl ], [ %i.wx, %.lr.ph230.i105.i ] ; 5 uses
  %i.xh = getelementptr inbounds i8, ptr %.3152245.i92.i, i64 -4 ; 3 uses
  %i.xi = icmp ult ptr %.lcssa.i97.i, %i.xh
  br i1 %i.xi, label %.lr.ph237.i101.i, label %.critedge10.i98.i

.lr.ph237.i101.i:                                 ; preds = %.critedge8.i95.i, %bb.co
  %i.xj = phi ptr [ %i.xr, %bb.co ], [ %i.xh, %.critedge8.i95.i ] ; 4 uses
  %.4147236.i102.i = phi ptr [ %.5148.i104.i, %bb.co ], [ %.3146246.i91.i, %.critedge8.i95.i ] ; 5 uses
  %i.xk = load i32, ptr %i.xj, align 4, !tbaa !12 ; 2 uses
  %i.xl = sext i32 %i.xk to i64
  %i.xm = getelementptr inbounds [4 x i8], ptr %i.ux, i64 %i.xl
  %i.xn = load i32, ptr %i.xm, align 4, !tbaa !12 ; 2 uses
  %.not200.i103.i = icmp slt i32 %i.xn, %i.vc
  br i1 %.not200.i103.i, label %.critedge10.i98.i, label %bb.cm

bb.cm:                                            ; preds = %.lr.ph237.i101.i
  %i.xo = icmp eq i32 %i.xn, %i.vc
  br i1 %i.xo, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.xp = load i32, ptr %.4147236.i102.i, align 4, !tbaa !12
  store i32 %i.xp, ptr %i.xj, align 4, !tbaa !12
  store i32 %i.xk, ptr %.4147236.i102.i, align 4, !tbaa !12
  %i.xq = getelementptr inbounds i8, ptr %.4147236.i102.i, i64 -4
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %.5148.i104.i = phi ptr [ %i.xq, %bb.cn ], [ %.4147236.i102.i, %bb.cm ] ; 2 uses
  %i.xr = getelementptr inbounds i8, ptr %i.xj, i64 -4 ; 3 uses
  %i.xs = icmp ult ptr %.lcssa.i97.i, %i.xr
  br i1 %i.xs, label %.lr.ph237.i101.i, label %.critedge10.i98.i, !llvm.loop !52

.critedge10.i98.i:                                ; preds = %bb.co, %.lr.ph237.i101.i, %.critedge8.i95.i
  %.4147.lcssa.i99.i = phi ptr [ %.3146246.i91.i, %.critedge8.i95.i ], [ %.5148.i104.i, %bb.co ], [ %.4147236.i102.i, %.lr.ph237.i101.i ] ; 2 uses
  %.lcssa208.i100.i = phi ptr [ %i.xh, %.critedge8.i95.i ], [ %i.xr, %bb.co ], [ %i.xj, %.lr.ph237.i101.i ] ; 2 uses
  %i.xt = icmp ult ptr %.lcssa.i97.i, %.lcssa208.i100.i
  br i1 %i.xt, label %.lr.ph247.i90.i, label %._crit_edge.i69.i, !llvm.loop !53

._crit_edge.i69.i:                                ; preds = %.critedge10.i98.i, %.critedge6.i66.i
  %.3162.lcssa.i70.i = phi ptr [ %.2161.i63.i, %.critedge6.i66.i ], [ %.4163.lcssa.i96.i, %.critedge10.i98.i ] ; 2 uses
  %.3157.lcssa.i71.i = phi ptr [ %.2156.i64.i, %.critedge6.i66.i ], [ %.lcssa.i97.i, %.critedge10.i98.i ] ; 10 uses
  %.3146.lcssa.i72.i = phi ptr [ %.2145.i68.i, %.critedge6.i66.i ], [ %.4147.lcssa.i99.i, %.critedge10.i98.i ] ; 2 uses
  %.not198.i73.i = icmp ugt ptr %.3162.lcssa.i70.i, %.3146.lcssa.i72.i
  br i1 %.not198.i73.i, label %tr_partition.exit121.i, label %bb.cp

bb.cp:                                            ; preds = %._crit_edge.i69.i
  %i.xu = getelementptr inbounds i8, ptr %.3157.lcssa.i71.i, i64 -4
  %i.xv = ptrtoint ptr %.3162.lcssa.i70.i to i64  ; 2 uses
  %i.xw = ptrtoint ptr %.0462.ph.i.i to i64
  %i.xx = sub i64 %i.xv, %i.xw
  %i.xy = lshr exact i64 %i.xx, 2
  %i.xz = trunc i64 %i.xy to i32
  %i.ya = ptrtoint ptr %.3157.lcssa.i71.i to i64
  %i.yb = sub i64 %i.ya, %i.xv                    ; 2 uses
  %i.yc = lshr exact i64 %i.yb, 2
  %i.yd = trunc i64 %i.yc to i32
  %spec.select.i74.i = tail call i32 @llvm.smin.i32(i32 %i.xz, i32 %i.yd) ; 7 uses
  %i.ye = icmp sgt i32 %spec.select.i74.i, 0
  br i1 %i.ye, label %.lr.ph255.preheader.i85.i, label %._crit_edge256.i75.i

.lr.ph255.preheader.i85.i:                        ; preds = %bb.cp
  %i.yf = zext nneg i32 %spec.select.i74.i to i64 ; 4 uses
  %i.yg = sub nsw i64 0, %i.yf
  %i.yh = getelementptr [4 x i8], ptr %.3157.lcssa.i71.i, i64 %i.yg ; 5 uses
  %min.iters.check160 = icmp ult i32 %spec.select.i74.i, 8
  br i1 %min.iters.check160, label %.lr.ph255.i86.i.preheader, label %vector.memcheck151

vector.memcheck151:                               ; preds = %.lr.ph255.preheader.i85.i
  %scevgep152 = getelementptr i8, ptr %.0462.ph.i.i, i64 4
  %i.yi = add nsw i32 %spec.select.i74.i, -1
  %i.yj = zext i32 %i.yi to i64                   ; 2 uses
  %6 = shl nuw nsw i64 %i.yj, 2
  %scevgep153 = getelementptr i8, ptr %scevgep152, i64 %6
  %scevgep154 = getelementptr i8, ptr %.3157.lcssa.i71.i, i64 4
  %7 = sub nsw i64 %i.yj, %i.yf
  %i.yk = shl nsw i64 %7, 2
  %scevgep155 = getelementptr i8, ptr %scevgep154, i64 %i.yk
  %bound0156 = icmp ult ptr %.0462.ph.i.i, %scevgep155
  %bound1157 = icmp ult ptr %i.yh, %scevgep153
  %found.conflict158 = and i1 %bound0156, %bound1157
  br i1 %found.conflict158, label %.lr.ph255.i86.i.preheader, label %vector.ph161

vector.ph161:                                     ; preds = %vector.memcheck151
  %n.vec162 = and i64 %i.yf, 2147483640           ; 4 uses
  %i.yl = trunc nuw nsw i64 %n.vec162 to i32
  %i.ym = sub nsw i32 %spec.select.i74.i, %i.yl
  %i.yn = shl nuw nsw i64 %n.vec162, 2            ; 2 uses
  %i.yo = getelementptr i8, ptr %i.yh, i64 %i.yn
  %i.yp = getelementptr i8, ptr %.0462.ph.i.i, i64 %i.yn
  br label %vector.body163

vector.body163:                                   ; preds = %vector.body163, %vector.ph161
  %index164 = phi i64 [ 0, %vector.ph161 ], [ %index.next171, %vector.body163 ] ; 2 uses
  %i.yq = shl i64 %index164, 2                    ; 2 uses
  %next.gep165 = getelementptr i8, ptr %i.yh, i64 %i.yq ; 3 uses
  %next.gep166 = getelementptr i8, ptr %.0462.ph.i.i, i64 %i.yq ; 3 uses
  %i.yr = getelementptr i8, ptr %next.gep166, i64 16 ; 2 uses
  %wide.load167 = load <4 x i32>, ptr %next.gep166, align 4, !tbaa !12, !alias.scope !101, !noalias !102
  %wide.load168 = load <4 x i32>, ptr %i.yr, align 4, !tbaa !12, !alias.scope !101, !noalias !102
  %i.ys = getelementptr i8, ptr %next.gep165, i64 16 ; 2 uses
  %wide.load169 = load <4 x i32>, ptr %next.gep165, align 4, !tbaa !12, !alias.scope !102
  %wide.load170 = load <4 x i32>, ptr %i.ys, align 4, !tbaa !12, !alias.scope !102
  store <4 x i32> %wide.load169, ptr %next.gep166, align 4, !tbaa !12, !alias.scope !101, !noalias !102
  store <4 x i32> %wide.load170, ptr %i.yr, align 4, !tbaa !12, !alias.scope !101, !noalias !102
  store <4 x i32> %wide.load167, ptr %next.gep165, align 4, !tbaa !12, !alias.scope !102
  store <4 x i32> %wide.load168, ptr %i.ys, align 4, !tbaa !12, !alias.scope !102
  %index.next171 = add nuw i64 %index164, 8       ; 2 uses
  %i.yt = icmp eq i64 %index.next171, %n.vec162
  br i1 %i.yt, label %middle.block172, label %vector.body163, !llvm.loop !57

middle.block172:                                  ; preds = %vector.body163
  %cmp.n173 = icmp eq i64 %n.vec162, %i.yf
  br i1 %cmp.n173, label %._crit_edge256.i75.i, label %.lr.ph255.i86.i.preheader

.lr.ph255.i86.i.preheader:                        ; preds = %vector.memcheck151, %.lr.ph255.preheader.i85.i, %middle.block172
  %.1136253.i87.i.ph = phi i32 [ %spec.select.i74.i, %vector.memcheck151 ], [ %spec.select.i74.i, %.lr.ph255.preheader.i85.i ], [ %i.ym, %middle.block172 ]
  %.0139252.i88.i.ph = phi ptr [ %i.yh, %vector.memcheck151 ], [ %i.yh, %.lr.ph255.preheader.i85.i ], [ %i.yo, %middle.block172 ]
  %.0141251.i89.i.ph = phi ptr [ %.0462.ph.i.i, %vector.memcheck151 ], [ %.0462.ph.i.i, %.lr.ph255.preheader.i85.i ], [ %i.yp, %middle.block172 ]
  br label %.lr.ph255.i86.i

.lr.ph255.i86.i:                                  ; preds = %.lr.ph255.i86.i.preheader, %.lr.ph255.i86.i
  %.1136253.i87.i = phi i32 [ %i.yw, %.lr.ph255.i86.i ], [ %.1136253.i87.i.ph, %.lr.ph255.i86.i.preheader ] ; 2 uses
  %.0139252.i88.i = phi ptr [ %i.yy, %.lr.ph255.i86.i ], [ %.0139252.i88.i.ph, %.lr.ph255.i86.i.preheader ] ; 3 uses
  %.0141251.i89.i = phi ptr [ %i.yx, %.lr.ph255.i86.i ], [ %.0141251.i89.i.ph, %.lr.ph255.i86.i.preheader ] ; 3 uses
  %i.yu = load i32, ptr %.0141251.i89.i, align 4, !tbaa !12
  %i.yv = load i32, ptr %.0139252.i88.i, align 4, !tbaa !12
  store i32 %i.yv, ptr %.0141251.i89.i, align 4, !tbaa !12
  store i32 %i.yu, ptr %.0139252.i88.i, align 4, !tbaa !12
  %i.yw = add nsw i32 %.1136253.i87.i, -1
  %i.yx = getelementptr inbounds nuw i8, ptr %.0141251.i89.i, i64 4
  %i.yy = getelementptr inbounds nuw i8, ptr %.0139252.i88.i, i64 4
  %i.yz = icmp samesign ugt i32 %.1136253.i87.i, 1
  br i1 %i.yz, label %.lr.ph255.i86.i, label %._crit_edge256.i75.i, !llvm.loop !58

._crit_edge256.i75.i:                             ; preds = %.lr.ph255.i86.i, %middle.block172, %bb.cp
  %i.za = ptrtoint ptr %.3146.lcssa.i72.i to i64  ; 2 uses
  %i.zb = ptrtoint ptr %i.xu to i64
  %i.zc = sub i64 %i.za, %i.zb
  %i.zd = ashr exact i64 %i.zc, 2                 ; 2 uses
  %i.ze = trunc i64 %i.zd to i32
  %i.zf = sub i64 %i.uy, %i.za
  %i.zg = lshr exact i64 %i.zf, 2
  %i.zh = trunc i64 %i.zg to i32
  %i.zi = add i32 %i.zh, -1
  %spec.select202.i76.i = tail call i32 @llvm.smin.i32(i32 %i.zi, i32 %i.ze) ; 7 uses
  %i.zj = icmp sgt i32 %spec.select202.i76.i, 0
  br i1 %i.zj, label %.lr.ph261.preheader.i80.i, label %._crit_edge262.i77.i

.lr.ph261.preheader.i80.i:                        ; preds = %._crit_edge256.i75.i
  %i.zk = zext nneg i32 %spec.select202.i76.i to i64 ; 4 uses
  %i.zl = sub nsw i64 0, %i.zk
  %i.zm = getelementptr [4 x i8], ptr %.0459.ph.i.i, i64 %i.zl ; 5 uses
  %min.iters.check134 = icmp ult i32 %spec.select202.i76.i, 8
  br i1 %min.iters.check134, label %.lr.ph261.i81.i.preheader, label %vector.memcheck125

vector.memcheck125:                               ; preds = %.lr.ph261.preheader.i80.i
  %scevgep126 = getelementptr i8, ptr %.3157.lcssa.i71.i, i64 4
  %i.zn = add nsw i32 %spec.select202.i76.i, -1
  %i.zo = zext i32 %i.zn to i64                   ; 2 uses
  %8 = shl nuw nsw i64 %i.zo, 2
  %scevgep127 = getelementptr i8, ptr %scevgep126, i64 %8
  %scevgep128 = getelementptr i8, ptr %.0459.ph.i.i, i64 4
  %9 = sub nsw i64 %i.zo, %i.zk
  %i.zp = shl nsw i64 %9, 2
  %scevgep129 = getelementptr i8, ptr %scevgep128, i64 %i.zp
  %bound0130 = icmp ult ptr %.3157.lcssa.i71.i, %scevgep129
  %bound1131 = icmp ult ptr %i.zm, %scevgep127
  %found.conflict132 = and i1 %bound0130, %bound1131
  br i1 %found.conflict132, label %.lr.ph261.i81.i.preheader, label %vector.ph135

vector.ph135:                                     ; preds = %vector.memcheck125
  %n.vec136 = and i64 %i.zk, 2147483640           ; 4 uses
  %i.zq = trunc nuw nsw i64 %n.vec136 to i32
  %i.zr = sub nsw i32 %spec.select202.i76.i, %i.zq
  %i.zs = shl nuw nsw i64 %n.vec136, 2            ; 2 uses
  %i.zt = getelementptr i8, ptr %i.zm, i64 %i.zs
  %i.zu = getelementptr i8, ptr %.3157.lcssa.i71.i, i64 %i.zs
  br label %vector.body137

vector.body137:                                   ; preds = %vector.body137, %vector.ph135
  %index138 = phi i64 [ 0, %vector.ph135 ], [ %index.next145, %vector.body137 ] ; 2 uses
  %i.zv = shl i64 %index138, 2                    ; 2 uses
  %next.gep139 = getelementptr i8, ptr %i.zm, i64 %i.zv ; 3 uses
  %next.gep140 = getelementptr i8, ptr %.3157.lcssa.i71.i, i64 %i.zv ; 3 uses
  %i.zw = getelementptr i8, ptr %next.gep140, i64 16 ; 2 uses
  %wide.load141 = load <4 x i32>, ptr %next.gep140, align 4, !tbaa !12, !alias.scope !103, !noalias !104
  %wide.load142 = load <4 x i32>, ptr %i.zw, align 4, !tbaa !12, !alias.scope !103, !noalias !104
  %i.zx = getelementptr i8, ptr %next.gep139, i64 16 ; 2 uses
  %wide.load143 = load <4 x i32>, ptr %next.gep139, align 4, !tbaa !12, !alias.scope !104
  %wide.load144 = load <4 x i32>, ptr %i.zx, align 4, !tbaa !12, !alias.scope !104
  store <4 x i32> %wide.load143, ptr %next.gep140, align 4, !tbaa !12, !alias.scope !103, !noalias !104
  store <4 x i32> %wide.load144, ptr %i.zw, align 4, !tbaa !12, !alias.scope !103, !noalias !104
  store <4 x i32> %wide.load141, ptr %next.gep139, align 4, !tbaa !12, !alias.scope !104
  store <4 x i32> %wide.load142, ptr %i.zx, align 4, !tbaa !12, !alias.scope !104
  %index.next145 = add nuw i64 %index138, 8       ; 2 uses
  %i.zy = icmp eq i64 %index.next145, %n.vec136
  br i1 %i.zy, label %middle.block146, label %vector.body137, !llvm.loop !62

middle.block146:                                  ; preds = %vector.body137
  %cmp.n147 = icmp eq i64 %n.vec136, %i.zk
  br i1 %cmp.n147, label %._crit_edge262.i77.i, label %.lr.ph261.i81.i.preheader

.lr.ph261.i81.i.preheader:                        ; preds = %vector.memcheck125, %.lr.ph261.preheader.i80.i, %middle.block146
  %.3138259.i82.i.ph = phi i32 [ %spec.select202.i76.i, %vector.memcheck125 ], [ %spec.select202.i76.i, %.lr.ph261.preheader.i80.i ], [ %i.zr, %middle.block146 ]
  %.1140258.i83.i.ph = phi ptr [ %i.zm, %vector.memcheck125 ], [ %i.zm, %.lr.ph261.preheader.i80.i ], [ %i.zt, %middle.block146 ]
  %.1142257.i84.i.ph = phi ptr [ %.3157.lcssa.i71.i, %vector.memcheck125 ], [ %.3157.lcssa.i71.i, %.lr.ph261.preheader.i80.i ], [ %i.zu, %middle.block146 ]
  br label %.lr.ph261.i81.i

.lr.ph261.i81.i:                                  ; preds = %.lr.ph261.i81.i.preheader, %.lr.ph261.i81.i
  %.3138259.i82.i = phi i32 [ %i.aab, %.lr.ph261.i81.i ], [ %.3138259.i82.i.ph, %.lr.ph261.i81.i.preheader ] ; 2 uses
  %.1140258.i83.i = phi ptr [ %i.aad, %.lr.ph261.i81.i ], [ %.1140258.i83.i.ph, %.lr.ph261.i81.i.preheader ] ; 3 uses
  %.1142257.i84.i = phi ptr [ %i.aac, %.lr.ph261.i81.i ], [ %.1142257.i84.i.ph, %.lr.ph261.i81.i.preheader ] ; 3 uses
  %i.zz = load i32, ptr %.1142257.i84.i, align 4, !tbaa !12
  %i.aaa = load i32, ptr %.1140258.i83.i, align 4, !tbaa !12
  store i32 %i.aaa, ptr %.1142257.i84.i, align 4, !tbaa !12
  store i32 %i.zz, ptr %.1140258.i83.i, align 4, !tbaa !12
  %i.aab = add nsw i32 %.3138259.i82.i, -1
  %i.aac = getelementptr inbounds nuw i8, ptr %.1142257.i84.i, i64 4
  %i.aad = getelementptr inbounds nuw i8, ptr %.1140258.i83.i, i64 4
  %i.aae = icmp samesign ugt i32 %.3138259.i82.i, 1
  br i1 %i.aae, label %.lr.ph261.i81.i, label %._crit_edge262.i77.i, !llvm.loop !63

._crit_edge262.i77.i:                             ; preds = %.lr.ph261.i81.i, %middle.block146, %._crit_edge256.i75.i
  %i.aaf = getelementptr inbounds i8, ptr %.0462.ph.i.i, i64 %i.yb
  %i.aag = sub nsw i64 0, %i.zd
  %i.aah = getelementptr inbounds [4 x i8], ptr %.0459.ph.i.i, i64 %i.aag
  br label %tr_partition.exit121.i

tr_partition.exit121.i:                           ; preds = %._crit_edge262.i77.i, %._crit_edge.i69.i
  %.0166.i78.i = phi ptr [ %i.aah, %._crit_edge262.i77.i ], [ %.0459.ph.i.i, %._crit_edge.i69.i ] ; 14 uses
  %.0165.i79.i = phi ptr [ %i.aaf, %._crit_edge262.i77.i ], [ %.0462.ph.i.i, %._crit_edge.i69.i ] ; 17 uses
  %i.aai = icmp ult ptr %.0165.i79.i, %.0459.ph.i.i
  br i1 %i.aai, label %bb.cq, label %.loopexit596.i.i

bb.cq:                                            ; preds = %tr_partition.exit121.i
  %i.aaj = ptrtoint ptr %.0165.i79.i to i64
  %i.aak = sub i64 %i.aaj, %i.rk
  %i.aal = lshr exact i64 %i.aak, 2
  %i.aam = trunc i64 %i.aal to i32
  %i.aan = add i32 %i.aam, -1
  %i.aao = icmp ult ptr %.0462.ph.i.i, %.0165.i79.i
  br i1 %i.aao, label %.lr.ph656.i.i, label %.loopexit596.i.i

.lr.ph656.i.i:                                    ; preds = %bb.cq, %.lr.ph656.i.i
  %.0452654.i.i = phi ptr [ %i.aas, %.lr.ph656.i.i ], [ %.0462.ph.i.i, %bb.cq ] ; 2 uses
  %i.aap = load i32, ptr %.0452654.i.i, align 4, !tbaa !12
  %i.aaq = sext i32 %i.aap to i64
  %i.aar = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.aaq
  store i32 %i.aan, ptr %i.aar, align 4, !tbaa !12
  %i.aas = getelementptr inbounds nuw i8, ptr %.0452654.i.i, i64 4 ; 2 uses
  %i.aat = icmp ult ptr %i.aas, %.0165.i79.i
  br i1 %i.aat, label %.lr.ph656.i.i, label %.loopexit596.i.i, !llvm.loop !64

.loopexit596.i.i:                                 ; preds = %.lr.ph656.i.i, %bb.cq, %tr_partition.exit121.i
  %i.aau = icmp ult ptr %.0166.i78.i, %.0459.ph.i.i
  %i.aav = ptrtoint ptr %.0166.i78.i to i64       ; 3 uses
  br i1 %i.aau, label %bb.cr, label %.loopexit595.i.i

bb.cr:                                            ; preds = %.loopexit596.i.i
  %i.aaw = sub i64 %i.aav, %i.rk
  %i.aax = lshr exact i64 %i.aaw, 2
  %i.aay = trunc i64 %i.aax to i32
  %i.aaz = add i32 %i.aay, -1
  %i.aba = icmp ult ptr %.0165.i79.i, %.0166.i78.i
  br i1 %i.aba, label %.lr.ph659.i.i, label %.loopexit595.i.i

.lr.ph659.i.i:                                    ; preds = %bb.cr, %.lr.ph659.i.i
  %.1453657.i.i = phi ptr [ %i.abe, %.lr.ph659.i.i ], [ %.0165.i79.i, %bb.cr ] ; 2 uses
  %i.abb = load i32, ptr %.1453657.i.i, align 4, !tbaa !12
  %i.abc = sext i32 %i.abb to i64
  %i.abd = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.abc
  store i32 %i.aaz, ptr %i.abd, align 4, !tbaa !12
  %i.abe = getelementptr inbounds nuw i8, ptr %.1453657.i.i, i64 4 ; 2 uses
  %i.abf = icmp ult ptr %i.abe, %.0166.i78.i
  br i1 %i.abf, label %.lr.ph659.i.i, label %.loopexit595.i.i, !llvm.loop !65

.loopexit595.i.i:                                 ; preds = %.lr.ph659.i.i, %bb.cr, %.loopexit596.i.i
  %i.abg = ptrtoint ptr %.0165.i79.i to i64       ; 2 uses
  %i.abh = sub i64 %i.aav, %i.abg
  %i.abi = icmp sgt i64 %i.abh, 4
  br i1 %i.abi, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %.loopexit595.i.i
  %i.abj = sext i32 %.0445.ph.i.i to i64
  %i.abk = getelementptr inbounds [32 x i8], ptr %5, i64 %i.abj ; 10 uses
  store ptr null, ptr %i.abk, align 16, !tbaa !106
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abk, i64 8
  store ptr %.0165.i79.i, ptr %i.abl, align 8, !tbaa !107
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abk, i64 16
  store ptr %.0166.i78.i, ptr %i.abm, align 16, !tbaa !108
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abk, i64 24
  store i32 0, ptr %i.abn, align 8, !tbaa !109
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abk, i64 28
  store i32 0, ptr %i.abo, align 4, !tbaa !110
  %i.abp = getelementptr i8, ptr %i.abk, i64 32
  store ptr %i.ux, ptr %i.abp, align 16, !tbaa !106
  %i.abq = getelementptr i8, ptr %i.abk, i64 40
  store ptr %.0462.ph.i.i, ptr %i.abq, align 8, !tbaa !107
  %i.abr = getelementptr i8, ptr %i.abk, i64 48
  store ptr %.0459.ph.i.i, ptr %i.abr, align 16, !tbaa !108
  %i.abs = getelementptr i8, ptr %i.abk, i64 56
  store i32 -2, ptr %i.abs, align 8, !tbaa !109
  %i.abt = add nsw i32 %.0445.ph.i.i, 2
  %i.abu = getelementptr i8, ptr %i.abk, i64 60
  store i32 %.0.ph.i.i, ptr %i.abu, align 4, !tbaa !110
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %.loopexit595.i.i
  %.1446.i.i = phi i32 [ %i.abt, %bb.cs ], [ %.0445.ph.i.i, %.loopexit595.i.i ] ; 16 uses
  %.1.i.i311 = phi i32 [ %.0445.ph.i.i, %bb.cs ], [ %.0.ph.i.i, %.loopexit595.i.i ] ; 18 uses
  %i.abv = ptrtoint ptr %.0462.ph.i.i to i64
  %i.abw = sub i64 %i.abg, %i.abv                 ; 9 uses
  %i.abx = ashr exact i64 %i.abw, 2               ; 8 uses
  %i.aby = sub i64 %i.uy, %i.aav                  ; 9 uses
  %i.abz = ashr exact i64 %i.aby, 2               ; 8 uses
  %.not524.i.i = icmp sgt i64 %i.abx, %i.abz
  br i1 %.not524.i.i, label %bb.ds, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.aca = icmp sgt i64 %i.abx, 1
  br i1 %i.aca, label %bb.cv, label %bb.di

bb.cv:                                            ; preds = %bb.cu
  %i.acb = sext i32 %.1446.i.i to i64
  %i.acc = getelementptr inbounds [32 x i8], ptr %5, i64 %i.acb ; 5 uses
  store ptr %.0456.ph.i.i, ptr %i.acc, align 16, !tbaa !106
  %i.acd = getelementptr inbounds nuw i8, ptr %i.acc, i64 8
  store ptr %.0166.i78.i, ptr %i.acd, align 8, !tbaa !107
  %i.ace = getelementptr inbounds nuw i8, ptr %i.acc, i64 16
  store ptr %.0459.ph.i.i, ptr %i.ace, align 16, !tbaa !108
  %i.acf = lshr exact i64 %i.aby, 2               ; 2 uses
  %i.acg = trunc i64 %i.acf to i32                ; 3 uses
  %.not.i525.i.i = icmp ult i32 %i.acg, 65536
  br i1 %.not.i525.i.i, label %bb.cz, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %.not8.i526.i.i = icmp ult i32 %i.acg, 16777216
  br i1 %.not8.i526.i.i, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.ach = lshr i64 %i.aby, 26
  %i.aci = and i64 %i.ach, 255
  %i.acj = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %i.aci
  %i.ack = load i32, ptr %i.acj, align 4, !tbaa !12
  %i.acl = add nsw i32 %i.ack, 24
  br label %tr_ilg.exit528.i.i

bb.cy:                                            ; preds = %bb.cw
  %i.acm = lshr i64 %i.aby, 18
  %i.acn = and i64 %i.acm, 65535
  %i.aco = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %i.acn
  %i.acp = load i32, ptr %i.aco, align 4, !tbaa !12
  %i.acq = add nsw i32 %i.acp, 16
  br label %tr_ilg.exit528.i.i

bb.cz:                                            ; preds = %bb.cv
  %.not7.i527.i.i = icmp samesign ult i32 %i.acg, 256
  br i1 %.not7.i527.i.i, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.acr = lshr i64 %i.aby, 10
  %i.acs = and i64 %i.acr, 16777215
  %i.act = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %i.acs
  %i.acu = load i32, ptr %i.act, align 4, !tbaa !12
  %i.acv = add nsw i32 %i.acu, 8
  br label %tr_ilg.exit528.i.i

end_hunk_0
begin_hunk_1_@sort_typeBstar:.preheader340.preheader

.critedge.i58.i:                                  ; preds = %bb.hc
  %i.beq = icmp slt i32 %i.beo, %i.bei
  br i1 %i.beq, label %.preheader206.i.i, label %.critedge2.i55.i

.preheader206.i.i:                                ; preds = %.critedge.i58.i
  %i.ber = getelementptr inbounds nuw i8, ptr %.0154.i.i, i64 8 ; 3 uses
  %i.bes = icmp ult ptr %i.ber, %.0459.ph.i.i
  br i1 %i.bes, label %.lr.ph.i59.i, label %.critedge2.i55.i

.lr.ph.i59.i:                                     ; preds = %.preheader206.i.i, %bb.hf
  %i.bet = phi ptr [ %i.bfb, %bb.hf ], [ %i.ber, %.preheader206.i.i ] ; 4 uses
  %.0159217.i.i = phi ptr [ %.1160.i.i, %bb.hf ], [ %i.bej, %.preheader206.i.i ] ; 5 uses
  %i.beu = load i32, ptr %i.bet, align 4, !tbaa !12 ; 2 uses
  %i.bev = sext i32 %i.beu to i64
  %i.bew = getelementptr inbounds [4 x i8], ptr %.0456.ph.i.i, i64 %i.bev
  %i.bex = load i32, ptr %i.bew, align 4, !tbaa !12 ; 2 uses
  %.not.i60.i = icmp sgt i32 %i.bex, %i.bei
  br i1 %.not.i60.i, label %.critedge2.i55.i, label %bb.hd

bb.hd:                                            ; preds = %.lr.ph.i59.i
  %i.bey = icmp eq i32 %i.bex, %i.bei
  br i1 %i.bey, label %bb.he, label %bb.hf

bb.he:                                            ; preds = %bb.hd
  %i.bez = load i32, ptr %.0159217.i.i, align 4, !tbaa !12
  store i32 %i.bez, ptr %i.bet, align 4, !tbaa !12
  store i32 %i.beu, ptr %.0159217.i.i, align 4, !tbaa !12
  %i.bfa = getelementptr inbounds nuw i8, ptr %.0159217.i.i, i64 4
  br label %bb.hf

bb.hf:                                            ; preds = %bb.he, %bb.hd
  %.1160.i.i = phi ptr [ %i.bfa, %bb.he ], [ %.0159217.i.i, %bb.hd ] ; 2 uses
  %i.bfb = getelementptr inbounds nuw i8, ptr %i.bet, i64 4 ; 3 uses
  %i.bfc = icmp ult ptr %i.bfb, %.0459.ph.i.i
  br i1 %i.bfc, label %.lr.ph.i59.i, label %.critedge2.i55.i, !llvm.loop !48

.critedge2.i55.i:                                 ; preds = %bb.hb, %bb.hf, %.lr.ph.i59.i, %.preheader206.i.i, %.critedge.i58.i
  %.2161.i.i = phi ptr [ %i.bej, %.critedge.i58.i ], [ %.0159217.i.i, %.lr.ph.i59.i ], [ %i.bej, %.preheader206.i.i ], [ %.1160.i.i, %bb.hf ], [ %i.bej, %bb.hb ] ; 2 uses
  %.2156.i.i = phi ptr [ %i.bej, %.critedge.i58.i ], [ %i.bet, %.lr.ph.i59.i ], [ %i.ber, %.preheader206.i.i ], [ %i.bfb, %bb.hf ], [ %i.bej, %bb.hb ] ; 6 uses
  br label %bb.hg

bb.hg:                                            ; preds = %bb.hh, %.critedge2.i55.i
  %.0149.i.i = phi ptr [ %.0459.ph.i.i, %.critedge2.i55.i ], [ %i.bfd, %bb.hh ] ; 2 uses
  %i.bfd = getelementptr inbounds i8, ptr %.0149.i.i, i64 -4 ; 9 uses
  %i.bfe = icmp ult ptr %.2156.i.i, %i.bfd
  br i1 %i.bfe, label %bb.hh, label %.critedge6.i.i

bb.hh:                                            ; preds = %bb.hg
  %i.bff = load i32, ptr %i.bfd, align 4, !tbaa !12
  %i.bfg = sext i32 %i.bff to i64
  %i.bfh = getelementptr inbounds [4 x i8], ptr %.0456.ph.i.i, i64 %i.bfg
  %i.bfi = load i32, ptr %i.bfh, align 4, !tbaa !12 ; 2 uses
  %i.bfj = icmp eq i32 %i.bfi, %i.bei
  br i1 %i.bfj, label %bb.hg, label %.critedge4.i.i, !llvm.loop !49

.critedge4.i.i:                                   ; preds = %bb.hh
  %i.bfk = icmp sgt i32 %i.bfi, %i.bei
  br i1 %i.bfk, label %.preheader.i.i298, label %.critedge6.i.i

.preheader.i.i298:                                ; preds = %.critedge4.i.i
  %i.bfl = getelementptr inbounds i8, ptr %.0149.i.i, i64 -8 ; 3 uses
  %i.bfm = icmp ult ptr %.2156.i.i, %i.bfl
  br i1 %i.bfm, label %.lr.ph223.i.i, label %.critedge6.i.i

.lr.ph223.i.i:                                    ; preds = %.preheader.i.i298, %bb.hk
  %i.bfn = phi ptr [ %i.bfv, %bb.hk ], [ %i.bfl, %.preheader.i.i298 ] ; 4 uses
  %.0143222.i.i = phi ptr [ %.1144.i.i, %bb.hk ], [ %i.bfd, %.preheader.i.i298 ] ; 5 uses
  %i.bfo = load i32, ptr %i.bfn, align 4, !tbaa !12 ; 2 uses
  %i.bfp = sext i32 %i.bfo to i64
  %i.bfq = getelementptr inbounds [4 x i8], ptr %.0456.ph.i.i, i64 %i.bfp
  %i.bfr = load i32, ptr %i.bfq, align 4, !tbaa !12 ; 2 uses
  %.not197.i.i = icmp slt i32 %i.bfr, %i.bei
  br i1 %.not197.i.i, label %.critedge6.i.i, label %bb.hi

bb.hi:                                            ; preds = %.lr.ph223.i.i
  %i.bfs = icmp eq i32 %i.bfr, %i.bei
  br i1 %i.bfs, label %bb.hj, label %bb.hk

bb.hj:                                            ; preds = %bb.hi
  %i.bft = load i32, ptr %.0143222.i.i, align 4, !tbaa !12
  store i32 %i.bft, ptr %i.bfn, align 4, !tbaa !12
  store i32 %i.bfo, ptr %.0143222.i.i, align 4, !tbaa !12
  %i.bfu = getelementptr inbounds i8, ptr %.0143222.i.i, i64 -4
  br label %bb.hk

bb.hk:                                            ; preds = %bb.hj, %bb.hi
  %.1144.i.i = phi ptr [ %i.bfu, %bb.hj ], [ %.0143222.i.i, %bb.hi ] ; 2 uses
  %i.bfv = getelementptr inbounds i8, ptr %i.bfn, i64 -4 ; 3 uses
  %i.bfw = icmp ult ptr %.2156.i.i, %i.bfv
  br i1 %i.bfw, label %.lr.ph223.i.i, label %.critedge6.i.i, !llvm.loop !50

.critedge6.i.i:                                   ; preds = %bb.hg, %bb.hk, %.lr.ph223.i.i, %.preheader.i.i298, %.critedge4.i.i
  %.2151.i.i = phi ptr [ %i.bfd, %.critedge4.i.i ], [ %i.bfn, %.lr.ph223.i.i ], [ %i.bfl, %.preheader.i.i298 ], [ %i.bfv, %bb.hk ], [ %i.bfd, %bb.hg ] ; 2 uses
  %.2145.i.i = phi ptr [ %i.bfd, %.critedge4.i.i ], [ %.0143222.i.i, %.lr.ph223.i.i ], [ %i.bfd, %.preheader.i.i298 ], [ %.1144.i.i, %bb.hk ], [ %i.bfd, %bb.hg ] ; 2 uses
  %i.bfx = icmp ult ptr %.2156.i.i, %.2151.i.i
  br i1 %i.bfx, label %.lr.ph247.i.i, label %._crit_edge.i56.i

.lr.ph247.i.i:                                    ; preds = %.critedge6.i.i, %.critedge10.i.i
  %.3146246.i.i = phi ptr [ %.4147.lcssa.i.i, %.critedge10.i.i ], [ %.2145.i.i, %.critedge6.i.i ] ; 2 uses
  %.3152245.i.i = phi ptr [ %.lcssa208.i.i, %.critedge10.i.i ], [ %.2151.i.i, %.critedge6.i.i ] ; 5 uses
  %.3157244.i.i = phi ptr [ %.lcssa.i57.i, %.critedge10.i.i ], [ %.2156.i.i, %.critedge6.i.i ] ; 3 uses
  %.3162243.i.i = phi ptr [ %.4163.lcssa.i.i, %.critedge10.i.i ], [ %.2161.i.i, %.critedge6.i.i ] ; 2 uses
  %i.bfy = load i32, ptr %.3157244.i.i, align 4, !tbaa !12
  %i.bfz = load i32, ptr %.3152245.i.i, align 4, !tbaa !12
  store i32 %i.bfz, ptr %.3157244.i.i, align 4, !tbaa !12
  store i32 %i.bfy, ptr %.3152245.i.i, align 4, !tbaa !12
  %i.bga = getelementptr inbounds nuw i8, ptr %.3157244.i.i, i64 4 ; 3 uses
  %i.bgb = icmp ult ptr %i.bga, %.3152245.i.i
  br i1 %i.bgb, label %.lr.ph230.i.i, label %.critedge8.i.i

.lr.ph230.i.i:                                    ; preds = %.lr.ph247.i.i, %bb.hn
  %i.bgc = phi ptr [ %i.bgk, %bb.hn ], [ %i.bga, %.lr.ph247.i.i ] ; 4 uses
  %.4163229.i.i = phi ptr [ %.5164.i.i, %bb.hn ], [ %.3162243.i.i, %.lr.ph247.i.i ] ; 5 uses
  %i.bgd = load i32, ptr %i.bgc, align 4, !tbaa !12 ; 2 uses
  %i.bge = sext i32 %i.bgd to i64
  %i.bgf = getelementptr inbounds [4 x i8], ptr %.0456.ph.i.i, i64 %i.bge
  %i.bgg = load i32, ptr %i.bgf, align 4, !tbaa !12 ; 2 uses
  %.not199.i.i = icmp sgt i32 %i.bgg, %i.bei
  br i1 %.not199.i.i, label %.critedge8.i.i, label %bb.hl

bb.hl:                                            ; preds = %.lr.ph230.i.i
  %i.bgh = icmp eq i32 %i.bgg, %i.bei
  br i1 %i.bgh, label %bb.hm, label %bb.hn

bb.hm:                                            ; preds = %bb.hl
  %i.bgi = load i32, ptr %.4163229.i.i, align 4, !tbaa !12
  store i32 %i.bgi, ptr %i.bgc, align 4, !tbaa !12
  store i32 %i.bgd, ptr %.4163229.i.i, align 4, !tbaa !12
  %i.bgj = getelementptr inbounds nuw i8, ptr %.4163229.i.i, i64 4
  br label %bb.hn

bb.hn:                                            ; preds = %bb.hm, %bb.hl
  %.5164.i.i = phi ptr [ %i.bgj, %bb.hm ], [ %.4163229.i.i, %bb.hl ] ; 2 uses
  %i.bgk = getelementptr inbounds nuw i8, ptr %i.bgc, i64 4 ; 3 uses
  %i.bgl = icmp ult ptr %i.bgk, %.3152245.i.i
  br i1 %i.bgl, label %.lr.ph230.i.i, label %.critedge8.i.i, !llvm.loop !51

.critedge8.i.i:                                   ; preds = %bb.hn, %.lr.ph230.i.i, %.lr.ph247.i.i
  %.4163.lcssa.i.i = phi ptr [ %.3162243.i.i, %.lr.ph247.i.i ], [ %.5164.i.i, %bb.hn ], [ %.4163229.i.i, %.lr.ph230.i.i ] ; 2 uses
  %.lcssa.i57.i = phi ptr [ %i.bga, %.lr.ph247.i.i ], [ %i.bgk, %bb.hn ], [ %i.bgc, %.lr.ph230.i.i ] ; 5 uses
  %i.bgm = getelementptr inbounds i8, ptr %.3152245.i.i, i64 -4 ; 3 uses
  %i.bgn = icmp ult ptr %.lcssa.i57.i, %i.bgm
  br i1 %i.bgn, label %.lr.ph237.i.i, label %.critedge10.i.i

.lr.ph237.i.i:                                    ; preds = %.critedge8.i.i, %bb.hq
  %i.bgo = phi ptr [ %i.bgw, %bb.hq ], [ %i.bgm, %.critedge8.i.i ] ; 4 uses
  %.4147236.i.i = phi ptr [ %.5148.i.i, %bb.hq ], [ %.3146246.i.i, %.critedge8.i.i ] ; 5 uses
  %i.bgp = load i32, ptr %i.bgo, align 4, !tbaa !12 ; 2 uses
  %i.bgq = sext i32 %i.bgp to i64
  %i.bgr = getelementptr inbounds [4 x i8], ptr %.0456.ph.i.i, i64 %i.bgq
  %i.bgs = load i32, ptr %i.bgr, align 4, !tbaa !12 ; 2 uses
  %.not200.i.i = icmp slt i32 %i.bgs, %i.bei
  br i1 %.not200.i.i, label %.critedge10.i.i, label %bb.ho

bb.ho:                                            ; preds = %.lr.ph237.i.i
  %i.bgt = icmp eq i32 %i.bgs, %i.bei
  br i1 %i.bgt, label %bb.hp, label %bb.hq

bb.hp:                                            ; preds = %bb.ho
  %i.bgu = load i32, ptr %.4147236.i.i, align 4, !tbaa !12
  store i32 %i.bgu, ptr %i.bgo, align 4, !tbaa !12
  store i32 %i.bgp, ptr %.4147236.i.i, align 4, !tbaa !12
  %i.bgv = getelementptr inbounds i8, ptr %.4147236.i.i, i64 -4
  br label %bb.hq

bb.hq:                                            ; preds = %bb.hp, %bb.ho
  %.5148.i.i = phi ptr [ %i.bgv, %bb.hp ], [ %.4147236.i.i, %bb.ho ] ; 2 uses
  %i.bgw = getelementptr inbounds i8, ptr %i.bgo, i64 -4 ; 3 uses
  %i.bgx = icmp ult ptr %.lcssa.i57.i, %i.bgw
  br i1 %i.bgx, label %.lr.ph237.i.i, label %.critedge10.i.i, !llvm.loop !52

.critedge10.i.i:                                  ; preds = %bb.hq, %.lr.ph237.i.i, %.critedge8.i.i
  %.4147.lcssa.i.i = phi ptr [ %.3146246.i.i, %.critedge8.i.i ], [ %.5148.i.i, %bb.hq ], [ %.4147236.i.i, %.lr.ph237.i.i ] ; 2 uses
  %.lcssa208.i.i = phi ptr [ %i.bgm, %.critedge8.i.i ], [ %i.bgw, %bb.hq ], [ %i.bgo, %.lr.ph237.i.i ] ; 2 uses
  %i.bgy = icmp ult ptr %.lcssa.i57.i, %.lcssa208.i.i
  br i1 %i.bgy, label %.lr.ph247.i.i, label %._crit_edge.i56.i, !llvm.loop !53

._crit_edge.i56.i:                                ; preds = %.critedge10.i.i, %.critedge6.i.i
  %.3162.lcssa.i.i = phi ptr [ %.2161.i.i, %.critedge6.i.i ], [ %.4163.lcssa.i.i, %.critedge10.i.i ] ; 2 uses
  %.3157.lcssa.i.i = phi ptr [ %.2156.i.i, %.critedge6.i.i ], [ %.lcssa.i57.i, %.critedge10.i.i ] ; 10 uses
  %.3146.lcssa.i.i = phi ptr [ %.2145.i.i, %.critedge6.i.i ], [ %.4147.lcssa.i.i, %.critedge10.i.i ] ; 2 uses
  %.not198.i.i = icmp ugt ptr %.3162.lcssa.i.i, %.3146.lcssa.i.i
  br i1 %.not198.i.i, label %tr_partition.exit.thread.i, label %bb.hr

bb.hr:                                            ; preds = %._crit_edge.i56.i
  %i.bgz = getelementptr inbounds i8, ptr %.3157.lcssa.i.i, i64 -4
  %i.bha = ptrtoint ptr %.3162.lcssa.i.i to i64   ; 2 uses
  %i.bhb = sub i64 %i.bha, %i.te
  %i.bhc = lshr exact i64 %i.bhb, 2
  %i.bhd = trunc i64 %i.bhc to i32
  %i.bhe = ptrtoint ptr %.3157.lcssa.i.i to i64
  %i.bhf = sub i64 %i.bhe, %i.bha                 ; 5 uses
  %i.bhg = lshr exact i64 %i.bhf, 2
  %i.bhh = trunc i64 %i.bhg to i32
  %spec.select.i.i = tail call i32 @llvm.smin.i32(i32 %i.bhd, i32 %i.bhh) ; 7 uses
  %i.bhi = icmp sgt i32 %spec.select.i.i, 0
  br i1 %i.bhi, label %.lr.ph255.preheader.i.i, label %._crit_edge256.i.i

.lr.ph255.preheader.i.i:                          ; preds = %bb.hr
  %i.bhj = zext nneg i32 %spec.select.i.i to i64  ; 4 uses
  %i.bhk = sub nsw i64 0, %i.bhj
  %i.bhl = getelementptr [4 x i8], ptr %.3157.lcssa.i.i, i64 %i.bhk ; 5 uses
  %min.iters.check212 = icmp ult i32 %spec.select.i.i, 8
  br i1 %min.iters.check212, label %.lr.ph255.i.i.preheader, label %vector.memcheck203

vector.memcheck203:                               ; preds = %.lr.ph255.preheader.i.i
  %scevgep204 = getelementptr i8, ptr %.0462.ph.i.i, i64 4
  %i.bhm = add nsw i32 %spec.select.i.i, -1
  %i.bhn = zext i32 %i.bhm to i64                 ; 2 uses
  %10 = shl nuw nsw i64 %i.bhn, 2
  %scevgep205 = getelementptr i8, ptr %scevgep204, i64 %10
  %scevgep206 = getelementptr i8, ptr %.3157.lcssa.i.i, i64 4
  %11 = sub nsw i64 %i.bhn, %i.bhj
  %i.bho = shl nsw i64 %11, 2
  %scevgep207 = getelementptr i8, ptr %scevgep206, i64 %i.bho
  %bound0208 = icmp ult ptr %.0462.ph.i.i, %scevgep207
  %bound1209 = icmp ult ptr %i.bhl, %scevgep205
  %found.conflict210 = and i1 %bound0208, %bound1209
  br i1 %found.conflict210, label %.lr.ph255.i.i.preheader, label %vector.ph213

vector.ph213:                                     ; preds = %vector.memcheck203
  %n.vec214 = and i64 %i.bhj, 2147483640          ; 4 uses
  %i.bhp = trunc nuw nsw i64 %n.vec214 to i32
  %i.bhq = sub nsw i32 %spec.select.i.i, %i.bhp
  %i.bhr = shl nuw nsw i64 %n.vec214, 2           ; 2 uses
  %i.bhs = getelementptr i8, ptr %i.bhl, i64 %i.bhr
  %i.bht = getelementptr i8, ptr %.0462.ph.i.i, i64 %i.bhr
  br label %vector.body215

vector.body215:                                   ; preds = %vector.body215, %vector.ph213
  %index216 = phi i64 [ 0, %vector.ph213 ], [ %index.next223, %vector.body215 ] ; 2 uses
  %i.bhu = shl i64 %index216, 2                   ; 2 uses
  %next.gep217 = getelementptr i8, ptr %i.bhl, i64 %i.bhu ; 3 uses
  %next.gep218 = getelementptr i8, ptr %.0462.ph.i.i, i64 %i.bhu ; 3 uses
  %i.bhv = getelementptr i8, ptr %next.gep218, i64 16 ; 2 uses
  %wide.load219 = load <4 x i32>, ptr %next.gep218, align 4, !tbaa !12, !alias.scope !111, !noalias !112
  %wide.load220 = load <4 x i32>, ptr %i.bhv, align 4, !tbaa !12, !alias.scope !111, !noalias !112
  %i.bhw = getelementptr i8, ptr %next.gep217, i64 16 ; 2 uses
  %wide.load221 = load <4 x i32>, ptr %next.gep217, align 4, !tbaa !12, !alias.scope !112
  %wide.load222 = load <4 x i32>, ptr %i.bhw, align 4, !tbaa !12, !alias.scope !112
  store <4 x i32> %wide.load221, ptr %next.gep218, align 4, !tbaa !12, !alias.scope !111, !noalias !112
  store <4 x i32> %wide.load222, ptr %i.bhv, align 4, !tbaa !12, !alias.scope !111, !noalias !112
  store <4 x i32> %wide.load219, ptr %next.gep217, align 4, !tbaa !12, !alias.scope !112
  store <4 x i32> %wide.load220, ptr %i.bhw, align 4, !tbaa !12, !alias.scope !112
  %index.next223 = add nuw i64 %index216, 8       ; 2 uses
  %i.bhx = icmp eq i64 %index.next223, %n.vec214
  br i1 %i.bhx, label %middle.block224, label %vector.body215, !llvm.loop !81

middle.block224:                                  ; preds = %vector.body215
  %cmp.n225 = icmp eq i64 %n.vec214, %i.bhj
  br i1 %cmp.n225, label %._crit_edge256.i.i, label %.lr.ph255.i.i.preheader

.lr.ph255.i.i.preheader:                          ; preds = %vector.memcheck203, %.lr.ph255.preheader.i.i, %middle.block224
  %.1136253.i.i.ph = phi i32 [ %spec.select.i.i, %vector.memcheck203 ], [ %spec.select.i.i, %.lr.ph255.preheader.i.i ], [ %i.bhq, %middle.block224 ]
  %.0139252.i.i.ph = phi ptr [ %i.bhl, %vector.memcheck203 ], [ %i.bhl, %.lr.ph255.preheader.i.i ], [ %i.bhs, %middle.block224 ]
  %.0141251.i.i.ph = phi ptr [ %.0462.ph.i.i, %vector.memcheck203 ], [ %.0462.ph.i.i, %.lr.ph255.preheader.i.i ], [ %i.bht, %middle.block224 ]
  br label %.lr.ph255.i.i

.lr.ph255.i.i:                                    ; preds = %.lr.ph255.i.i.preheader, %.lr.ph255.i.i
  %.1136253.i.i = phi i32 [ %i.bia, %.lr.ph255.i.i ], [ %.1136253.i.i.ph, %.lr.ph255.i.i.preheader ] ; 2 uses
  %.0139252.i.i = phi ptr [ %i.bic, %.lr.ph255.i.i ], [ %.0139252.i.i.ph, %.lr.ph255.i.i.preheader ] ; 3 uses
  %.0141251.i.i = phi ptr [ %i.bib, %.lr.ph255.i.i ], [ %.0141251.i.i.ph, %.lr.ph255.i.i.preheader ] ; 3 uses
  %i.bhy = load i32, ptr %.0141251.i.i, align 4, !tbaa !12
  %i.bhz = load i32, ptr %.0139252.i.i, align 4, !tbaa !12
  store i32 %i.bhz, ptr %.0141251.i.i, align 4, !tbaa !12
  store i32 %i.bhy, ptr %.0139252.i.i, align 4, !tbaa !12
  %i.bia = add nsw i32 %.1136253.i.i, -1
  %i.bib = getelementptr inbounds nuw i8, ptr %.0141251.i.i, i64 4
  %i.bic = getelementptr inbounds nuw i8, ptr %.0139252.i.i, i64 4
  %i.bid = icmp samesign ugt i32 %.1136253.i.i, 1
  br i1 %i.bid, label %.lr.ph255.i.i, label %._crit_edge256.i.i, !llvm.loop !82

._crit_edge256.i.i:                               ; preds = %.lr.ph255.i.i, %middle.block224, %bb.hr
  %i.bie = ptrtoint ptr %.3146.lcssa.i.i to i64   ; 2 uses
  %i.bif = ptrtoint ptr %i.bgz to i64
  %i.big = sub i64 %i.bie, %i.bif                 ; 4 uses
  %i.bih = lshr exact i64 %i.big, 2
  %i.bii = trunc i64 %i.bih to i32
  %i.bij = sub i64 %i.td, %i.bie
  %i.bik = lshr exact i64 %i.bij, 2
  %i.bil = trunc i64 %i.bik to i32
  %i.bim = add i32 %i.bil, -1
  %spec.select202.i.i = tail call i32 @llvm.smin.i32(i32 %i.bim, i32 %i.bii) ; 7 uses
  %i.bin = icmp sgt i32 %spec.select202.i.i, 0
  br i1 %i.bin, label %.lr.ph261.preheader.i.i, label %tr_partition.exit.i

.lr.ph261.preheader.i.i:                          ; preds = %._crit_edge256.i.i
  %i.bio = zext nneg i32 %spec.select202.i.i to i64 ; 4 uses
  %i.bip = sub nsw i64 0, %i.bio
  %i.biq = getelementptr [4 x i8], ptr %.0459.ph.i.i, i64 %i.bip ; 5 uses
  %min.iters.check186 = icmp ult i32 %spec.select202.i.i, 8
  br i1 %min.iters.check186, label %.lr.ph261.i.i.preheader, label %vector.memcheck177

vector.memcheck177:                               ; preds = %.lr.ph261.preheader.i.i
  %scevgep178 = getelementptr i8, ptr %.3157.lcssa.i.i, i64 4
  %i.bir = add nsw i32 %spec.select202.i.i, -1
  %i.bis = zext i32 %i.bir to i64                 ; 2 uses
  %12 = shl nuw nsw i64 %i.bis, 2
  %scevgep179 = getelementptr i8, ptr %scevgep178, i64 %12
  %scevgep180 = getelementptr i8, ptr %.0459.ph.i.i, i64 4
  %13 = sub nsw i64 %i.bis, %i.bio
  %i.bit = shl nsw i64 %13, 2
  %scevgep181 = getelementptr i8, ptr %scevgep180, i64 %i.bit
  %bound0182 = icmp ult ptr %.3157.lcssa.i.i, %scevgep181
  %bound1183 = icmp ult ptr %i.biq, %scevgep179
  %found.conflict184 = and i1 %bound0182, %bound1183
  br i1 %found.conflict184, label %.lr.ph261.i.i.preheader, label %vector.ph187

vector.ph187:                                     ; preds = %vector.memcheck177
  %n.vec188 = and i64 %i.bio, 2147483640          ; 4 uses
  %i.biu = trunc nuw nsw i64 %n.vec188 to i32
  %i.biv = sub nsw i32 %spec.select202.i.i, %i.biu
  %i.biw = shl nuw nsw i64 %n.vec188, 2           ; 2 uses
  %i.bix = getelementptr i8, ptr %i.biq, i64 %i.biw
  %i.biy = getelementptr i8, ptr %.3157.lcssa.i.i, i64 %i.biw
  br label %vector.body189

vector.body189:                                   ; preds = %vector.body189, %vector.ph187
  %index190 = phi i64 [ 0, %vector.ph187 ], [ %index.next197, %vector.body189 ] ; 2 uses
  %i.biz = shl i64 %index190, 2                   ; 2 uses
  %next.gep191 = getelementptr i8, ptr %i.biq, i64 %i.biz ; 3 uses
  %next.gep192 = getelementptr i8, ptr %.3157.lcssa.i.i, i64 %i.biz ; 3 uses
  %i.bja = getelementptr i8, ptr %next.gep192, i64 16 ; 2 uses
  %wide.load193 = load <4 x i32>, ptr %next.gep192, align 4, !tbaa !12, !alias.scope !113, !noalias !114
  %wide.load194 = load <4 x i32>, ptr %i.bja, align 4, !tbaa !12, !alias.scope !113, !noalias !114
  %i.bjb = getelementptr i8, ptr %next.gep191, i64 16 ; 2 uses
  %wide.load195 = load <4 x i32>, ptr %next.gep191, align 4, !tbaa !12, !alias.scope !114
  %wide.load196 = load <4 x i32>, ptr %i.bjb, align 4, !tbaa !12, !alias.scope !114
  store <4 x i32> %wide.load195, ptr %next.gep192, align 4, !tbaa !12, !alias.scope !113, !noalias !114
  store <4 x i32> %wide.load196, ptr %i.bja, align 4, !tbaa !12, !alias.scope !113, !noalias !114
  store <4 x i32> %wide.load193, ptr %next.gep191, align 4, !tbaa !12, !alias.scope !114
  store <4 x i32> %wide.load194, ptr %i.bjb, align 4, !tbaa !12, !alias.scope !114
  %index.next197 = add nuw i64 %index190, 8       ; 2 uses
  %i.bjc = icmp eq i64 %index.next197, %n.vec188
  br i1 %i.bjc, label %middle.block198, label %vector.body189, !llvm.loop !86

middle.block198:                                  ; preds = %vector.body189
  %cmp.n199 = icmp eq i64 %n.vec188, %i.bio
  br i1 %cmp.n199, label %tr_partition.exit.i, label %.lr.ph261.i.i.preheader

.lr.ph261.i.i.preheader:                          ; preds = %vector.memcheck177, %.lr.ph261.preheader.i.i, %middle.block198
  %.3138259.i.i.ph = phi i32 [ %spec.select202.i.i, %vector.memcheck177 ], [ %spec.select202.i.i, %.lr.ph261.preheader.i.i ], [ %i.biv, %middle.block198 ]
  %.1140258.i.i.ph = phi ptr [ %i.biq, %vector.memcheck177 ], [ %i.biq, %.lr.ph261.preheader.i.i ], [ %i.bix, %middle.block198 ]
  %.1142257.i.i.ph = phi ptr [ %.3157.lcssa.i.i, %vector.memcheck177 ], [ %.3157.lcssa.i.i, %.lr.ph261.preheader.i.i ], [ %i.biy, %middle.block198 ]
  br label %.lr.ph261.i.i

.lr.ph261.i.i:                                    ; preds = %.lr.ph261.i.i.preheader, %.lr.ph261.i.i
  %.3138259.i.i = phi i32 [ %i.bjf, %.lr.ph261.i.i ], [ %.3138259.i.i.ph, %.lr.ph261.i.i.preheader ] ; 2 uses
  %.1140258.i.i = phi ptr [ %i.bjh, %.lr.ph261.i.i ], [ %.1140258.i.i.ph, %.lr.ph261.i.i.preheader ] ; 3 uses
  %.1142257.i.i = phi ptr [ %i.bjg, %.lr.ph261.i.i ], [ %.1142257.i.i.ph, %.lr.ph261.i.i.preheader ] ; 3 uses
  %i.bjd = load i32, ptr %.1142257.i.i, align 4, !tbaa !12
  %i.bje = load i32, ptr %.1140258.i.i, align 4, !tbaa !12
  store i32 %i.bje, ptr %.1142257.i.i, align 4, !tbaa !12
  store i32 %i.bjd, ptr %.1140258.i.i, align 4, !tbaa !12
  %i.bjf = add nsw i32 %.3138259.i.i, -1
  %i.bjg = getelementptr inbounds nuw i8, ptr %.1142257.i.i, i64 4
  %i.bjh = getelementptr inbounds nuw i8, ptr %.1140258.i.i, i64 4
  %i.bji = icmp samesign ugt i32 %.3138259.i.i, 1
  br i1 %i.bji, label %.lr.ph261.i.i, label %tr_partition.exit.i, !llvm.loop !87

tr_partition.exit.i:                              ; preds = %.lr.ph261.i.i, %middle.block198, %._crit_edge256.i.i
  %i.bjj = getelementptr inbounds i8, ptr %.0462.ph.i.i, i64 %i.bhf ; 27 uses
  %.idx455.i = sub i64 0, %i.big                  ; 2 uses
  %i.bjk = getelementptr inbounds i8, ptr %.0459.ph.i.i, i64 %.idx455.i ; 25 uses
  %.pre.i296 = ptrtoint ptr %i.bjk to i64         ; 2 uses
  %.pre254.i = ptrtoint ptr %i.bjj to i64         ; 2 uses
  %.pre256.i = sub i64 %.pre.i296, %.pre254.i     ; 2 uses
  %.pre258.i = ashr exact i64 %.pre256.i, 2       ; 12 uses
  %.not.i54.i = icmp eq i64 %i.tg, %.pre258.i
  br i1 %.not.i54.i, label %tr_partition.exit.thread.i, label %bb.hs

bb.hs:                                            ; preds = %tr_partition.exit.i
  %i.bjl = load i32, ptr %i.bjj, align 4, !tbaa !12
  %i.bjm = sext i32 %i.bjl to i64
  %i.bjn = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.bjm
  %i.bjo = load i32, ptr %i.bjn, align 4, !tbaa !12
  %.not495.i.i = icmp eq i32 %i.bjo, %i.bei
  br i1 %.not495.i.i, label %tr_ilg.exit575.i.i, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.bjp = trunc i64 %.pre258.i to i32            ; 3 uses
  %.not.i572.i.i = icmp ult i32 %i.bjp, 65536
  br i1 %.not.i572.i.i, label %bb.hx, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %.not8.i573.i.i = icmp ult i32 %i.bjp, 16777216
  br i1 %.not8.i573.i.i, label %bb.hw, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %i.bjq = lshr i64 %.pre258.i, 24
  %i.bjr = and i64 %i.bjq, 255
  %i.bjs = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %i.bjr
  %i.bjt = load i32, ptr %i.bjs, align 4, !tbaa !12
  %i.bju = add nsw i32 %i.bjt, 24
  br label %tr_ilg.exit575.i.i

bb.hw:                                            ; preds = %bb.hu
  %i.bjv = lshr i64 %.pre258.i, 16
  %i.bjw = and i64 %i.bjv, 255
  %i.bjx = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %i.bjw
  %i.bjy = load i32, ptr %i.bjx, align 4, !tbaa !12
  %i.bjz = add nsw i32 %i.bjy, 16
  br label %tr_ilg.exit575.i.i

bb.hx:                                            ; preds = %bb.ht
  %.not7.i574.i.i = icmp samesign ult i32 %i.bjp, 256
  br i1 %.not7.i574.i.i, label %bb.hz, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %i.bka = lshr i64 %.pre258.i, 8
  %i.bkb = and i64 %i.bka, 255
  %i.bkc = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %i.bkb
  %i.bkd = load i32, ptr %i.bkc, align 4, !tbaa !12
  %i.bke = add nsw i32 %i.bkd, 8
  br label %tr_ilg.exit575.i.i

bb.hz:                                            ; preds = %bb.hx
  %i.bkf = and i64 %.pre258.i, 255
  %i.bkg = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %i.bkf
  %i.bkh = load i32, ptr %i.bkg, align 4, !tbaa !12
  br label %tr_ilg.exit575.i.i

tr_ilg.exit575.i.i:                               ; preds = %bb.hz, %bb.hy, %bb.hw, %bb.hv, %bb.hs
  %i.bki = phi i32 [ -1, %bb.hs ], [ %i.bjz, %bb.hw ], [ %i.bju, %bb.hv ], [ %i.bke, %bb.hy ], [ %i.bkh, %bb.hz ] ; 12 uses
  %i.bkj = sub i64 %.pre254.i, %i.rk
  %i.bkk = lshr exact i64 %i.bkj, 2
  %i.bkl = trunc i64 %i.bkk to i32
  %i.bkm = add i32 %i.bkl, -1
  %i.bkn = icmp sgt i64 %i.bhf, 0
  br i1 %i.bkn, label %.lr.ph649.i.i, label %._crit_edge650.i.i

.lr.ph649.i.i:                                    ; preds = %tr_ilg.exit575.i.i, %.lr.ph649.i.i
  %.2454648.i.i = phi ptr [ %i.bkr, %.lr.ph649.i.i ], [ %.0462.ph.i.i, %tr_ilg.exit575.i.i ] ; 2 uses
  %i.bko = load i32, ptr %.2454648.i.i, align 4, !tbaa !12
  %i.bkp = sext i32 %i.bko to i64
  %i.bkq = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.bkp
  store i32 %i.bkm, ptr %i.bkq, align 4, !tbaa !12
  %i.bkr = getelementptr inbounds nuw i8, ptr %.2454648.i.i, i64 4 ; 2 uses
  %i.bks = icmp ult ptr %i.bkr, %i.bjj
  br i1 %i.bks, label %.lr.ph649.i.i, label %._crit_edge650.i.i, !llvm.loop !88

._crit_edge650.i.i:                               ; preds = %.lr.ph649.i.i, %tr_ilg.exit575.i.i
  %i.bkt = icmp slt i64 %.idx455.i, 0
  br i1 %i.bkt, label %bb.ia, label %.loopexit599.i.i

bb.ia:                                            ; preds = %._crit_edge650.i.i
  %i.bku = sub i64 %.pre.i296, %i.rk
  %i.bkv = lshr exact i64 %i.bku, 2
  %i.bkw = trunc i64 %i.bkv to i32
  %i.bkx = add i32 %i.bkw, -1
  %i.bky = icmp ult ptr %i.bjj, %i.bjk
  br i1 %i.bky, label %.lr.ph653.i.i, label %.loopexit599.i.i

.lr.ph653.i.i:                                    ; preds = %bb.ia, %.lr.ph653.i.i
  %.3455651.i.i = phi ptr [ %i.blc, %.lr.ph653.i.i ], [ %i.bjj, %bb.ia ] ; 2 uses
  %i.bkz = load i32, ptr %.3455651.i.i, align 4, !tbaa !12
  %i.bla = sext i32 %i.bkz to i64
  %i.blb = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.bla
  store i32 %i.bkx, ptr %i.blb, align 4, !tbaa !12
  %i.blc = getelementptr inbounds nuw i8, ptr %.3455651.i.i, i64 4 ; 2 uses
  %i.bld = icmp ult ptr %i.blc, %i.bjk
  br i1 %i.bld, label %.lr.ph653.i.i, label %.loopexit599.i.i, !llvm.loop !89

.loopexit599.i.i:                                 ; preds = %.lr.ph653.i.i, %bb.ia, %._crit_edge650.i.i
  %i.ble = icmp sgt i64 %.pre258.i, 1
  br i1 %i.ble, label %bb.ib, label %bb.iz

bb.ib:                                            ; preds = %.loopexit599.i.i
  %i.blf = trunc i64 %.pre258.i to i32            ; 3 uses
  %.not.i576.i.i = icmp slt i32 %.sroa.9.3.i, %i.blf
  br i1 %.not.i576.i.i, label %bb.ic, label %bb.ie

bb.ic:                                            ; preds = %bb.ib
  %i.blg = icmp eq i32 %.sroa.0.3.i, 0
  br i1 %i.blg, label %trbudget_check.exit578.i.i, label %bb.id

bb.id:                                            ; preds = %bb.ic
  %i.blh = add i32 %.sroa.9.3.i, %i.bu
  %i.bli = add nsw i32 %.sroa.0.3.i, -1
  br label %bb.ie

trbudget_check.exit578.i.i:                       ; preds = %bb.ic
  %i.blj = add nsw i32 %.sroa.23.0.i, %i.blf
  br label %bb.iz

bb.ie:                                            ; preds = %bb.id, %bb.ib
  %.pn.i = phi i32 [ %i.blh, %bb.id ], [ %.sroa.9.3.i, %bb.ib ]
  %.sroa.0.5.i = phi i32 [ %i.bli, %bb.id ], [ %.sroa.0.3.i, %bb.ib ] ; 12 uses
  %.sroa.9.5.i = sub i32 %.pn.i, %i.blf           ; 12 uses
  %i.blk = ashr exact i64 %i.bhf, 2               ; 6 uses
  %i.bll = ashr exact i64 %i.big, 2               ; 6 uses
  %.not498.i.i = icmp sgt i64 %i.blk, %i.bll
  br i1 %.not498.i.i, label %bb.ip, label %bb.if

bb.if:                                            ; preds = %bb.ie
  %.not507.i.i = icmp sgt i64 %i.bll, %.pre258.i
  br i1 %.not507.i.i, label %bb.ik, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  %i.blm = icmp sgt i64 %i.blk, 1
  br i1 %i.blm, label %bb.ih, label %bb.ii

bb.ih:                                            ; preds = %bb.ig
  %i.bln = getelementptr inbounds [4 x i8], ptr %.0456.ph.i.i, i64 %i.ro
  %i.blo = sext i32 %.0445.ph.i.i to i64
end_hunk_1
begin_hunk_2_@ss_mintrosort:bb.a
  %i.zc = getelementptr inbounds [4 x i8], ptr %1, i64 %i.zb
  %i.zd = load i32, ptr %i.zc, align 4, !tbaa !12
  %i.ze = sext i32 %i.zd to i64
  %i.zf = getelementptr inbounds i8, ptr %i.ce, i64 %i.ze
  %i.zg = load i8, ptr %i.zf, align 1, !tbaa !13  ; 2 uses
  %.not = icmp ugt i8 %i.zg, %i.yl
  br i1 %.not, label %.critedge2, label %bb.bc

bb.bc:                                            ; preds = %.lr.ph
  %i.zh = icmp eq i8 %i.zg, %i.yl
  br i1 %i.zh, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.zi = load i32, ptr %.1420600, align 4, !tbaa !12
  store i32 %i.zi, ptr %i.yz, align 4, !tbaa !12
  store i32 %i.za, ptr %.1420600, align 4, !tbaa !12
  %i.zj = getelementptr inbounds nuw i8, ptr %.1420600, i64 4
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.2421 = phi ptr [ %i.zj, %bb.bd ], [ %.1420600, %bb.bc ] ; 2 uses
  %i.zk = getelementptr inbounds nuw i8, ptr %i.yz, i64 4 ; 3 uses
  %i.zl = icmp ult ptr %i.zk, %.0429
  br i1 %i.zl, label %.lr.ph, label %.critedge2, !llvm.loop !145

.critedge2:                                       ; preds = %bb.ba, %bb.be, %.lr.ph, %.preheader558, %.critedge
  %.3422 = phi ptr [ %i.ym, %.critedge ], [ %.1420600, %.lr.ph ], [ %i.ym, %.preheader558 ], [ %.2421, %bb.be ], [ %i.ym, %bb.ba ] ; 2 uses
  %.2416 = phi ptr [ %i.ym, %.critedge ], [ %i.yz, %.lr.ph ], [ %i.yx, %.preheader558 ], [ %i.zk, %bb.be ], [ %i.ym, %bb.ba ] ; 6 uses
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bg, %.critedge2
  %.0409 = phi ptr [ %.0429, %.critedge2 ], [ %i.zm, %bb.bg ] ; 2 uses
  %i.zm = getelementptr inbounds i8, ptr %.0409, i64 -4 ; 9 uses
  %i.zn = icmp ult ptr %.2416, %i.zm
  br i1 %i.zn, label %bb.bg, label %.critedge6

bb.bg:                                            ; preds = %bb.bf
  %i.zo = load i32, ptr %i.zm, align 4, !tbaa !12
  %i.zp = sext i32 %i.zo to i64
  %i.zq = getelementptr inbounds [4 x i8], ptr %1, i64 %i.zp
  %i.zr = load i32, ptr %i.zq, align 4, !tbaa !12
  %i.zs = sext i32 %i.zr to i64
  %i.zt = getelementptr inbounds i8, ptr %i.ce, i64 %i.zs
  %i.zu = load i8, ptr %i.zt, align 1, !tbaa !13  ; 2 uses
  %i.zv = icmp eq i8 %i.zu, %i.yl
  br i1 %i.zv, label %bb.bf, label %.critedge4, !llvm.loop !146

.critedge4:                                       ; preds = %bb.bg
  %i.zw = icmp ugt i8 %i.zu, %i.yl
  br i1 %i.zw, label %.preheader, label %.critedge6

.preheader:                                       ; preds = %.critedge4
  %i.zx = getelementptr inbounds i8, ptr %.0409, i64 -8 ; 3 uses
  %i.zy = icmp ult ptr %.2416, %i.zx
  br i1 %i.zy, label %.lr.ph607, label %.critedge6

.lr.ph607:                                        ; preds = %.preheader, %bb.bj
  %i.zz = phi ptr [ %i.aak, %bb.bj ], [ %i.zx, %.preheader ] ; 4 uses
  %.0403606 = phi ptr [ %.1404, %bb.bj ], [ %i.zm, %.preheader ] ; 5 uses
  %i.aaa = load i32, ptr %i.zz, align 4, !tbaa !12 ; 2 uses
  %i.aab = sext i32 %i.aaa to i64
  %i.aac = getelementptr inbounds [4 x i8], ptr %1, i64 %i.aab
  %i.aad = load i32, ptr %i.aac, align 4, !tbaa !12
  %i.aae = sext i32 %i.aad to i64
  %i.aaf = getelementptr inbounds i8, ptr %i.ce, i64 %i.aae
  %i.aag = load i8, ptr %i.aaf, align 1, !tbaa !13 ; 2 uses
  %.not486 = icmp ult i8 %i.aag, %i.yl
  br i1 %.not486, label %.critedge6, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph607
  %i.aah = icmp eq i8 %i.aag, %i.yl
  br i1 %i.aah, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.aai = load i32, ptr %.0403606, align 4, !tbaa !12
  store i32 %i.aai, ptr %i.zz, align 4, !tbaa !12
  store i32 %i.aaa, ptr %.0403606, align 4, !tbaa !12
  %i.aaj = getelementptr inbounds i8, ptr %.0403606, i64 -4
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.1404 = phi ptr [ %i.aaj, %bb.bi ], [ %.0403606, %bb.bh ] ; 2 uses
  %i.aak = getelementptr inbounds i8, ptr %i.zz, i64 -4 ; 3 uses
  %i.aal = icmp ult ptr %.2416, %i.aak
  br i1 %i.aal, label %.lr.ph607, label %.critedge6, !llvm.loop !147

.critedge6:                                       ; preds = %bb.bf, %bb.bj, %.lr.ph607, %.preheader, %.critedge4
  %.2411 = phi ptr [ %i.zm, %.critedge4 ], [ %i.zz, %.lr.ph607 ], [ %i.zx, %.preheader ], [ %i.aak, %bb.bj ], [ %i.zm, %bb.bf ] ; 2 uses
  %.2405 = phi ptr [ %i.zm, %.critedge4 ], [ %.0403606, %.lr.ph607 ], [ %i.zm, %.preheader ], [ %.1404, %bb.bj ], [ %i.zm, %bb.bf ] ; 2 uses
  %i.aam = icmp ult ptr %.2416, %.2411
  br i1 %i.aam, label %.lr.ph631, label %._crit_edge

.lr.ph631:                                        ; preds = %.critedge6, %.critedge10
  %.3406630 = phi ptr [ %.4407.lcssa, %.critedge10 ], [ %.2405, %.critedge6 ] ; 2 uses
  %.3412629 = phi ptr [ %.lcssa572, %.critedge10 ], [ %.2411, %.critedge6 ] ; 5 uses
  %.3417628 = phi ptr [ %.lcssa571, %.critedge10 ], [ %.2416, %.critedge6 ] ; 3 uses
  %.4423627 = phi ptr [ %.5424.lcssa, %.critedge10 ], [ %.3422, %.critedge6 ] ; 2 uses
  %i.aan = load i32, ptr %.3417628, align 4, !tbaa !12
  %i.aao = load i32, ptr %.3412629, align 4, !tbaa !12
  store i32 %i.aao, ptr %.3417628, align 4, !tbaa !12
  store i32 %i.aan, ptr %.3412629, align 4, !tbaa !12
  %i.aap = getelementptr inbounds nuw i8, ptr %.3417628, i64 4 ; 3 uses
  %i.aaq = icmp ult ptr %i.aap, %.3412629
  br i1 %i.aaq, label %.lr.ph614, label %.critedge8

.lr.ph614:                                        ; preds = %.lr.ph631, %bb.bm
  %i.aar = phi ptr [ %i.abc, %bb.bm ], [ %i.aap, %.lr.ph631 ] ; 4 uses
  %.5424613 = phi ptr [ %.6425, %bb.bm ], [ %.4423627, %.lr.ph631 ] ; 5 uses
  %i.aas = load i32, ptr %i.aar, align 4, !tbaa !12 ; 2 uses
  %i.aat = sext i32 %i.aas to i64
  %i.aau = getelementptr inbounds [4 x i8], ptr %1, i64 %i.aat
  %i.aav = load i32, ptr %i.aau, align 4, !tbaa !12
  %i.aaw = sext i32 %i.aav to i64
  %i.aax = getelementptr inbounds i8, ptr %i.ce, i64 %i.aaw
  %i.aay = load i8, ptr %i.aax, align 1, !tbaa !13 ; 2 uses
  %.not494 = icmp ugt i8 %i.aay, %i.yl
  br i1 %.not494, label %.critedge8, label %bb.bk

bb.bk:                                            ; preds = %.lr.ph614
  %i.aaz = icmp eq i8 %i.aay, %i.yl
  br i1 %i.aaz, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.aba = load i32, ptr %.5424613, align 4, !tbaa !12
  store i32 %i.aba, ptr %i.aar, align 4, !tbaa !12
  store i32 %i.aas, ptr %.5424613, align 4, !tbaa !12
  %i.abb = getelementptr inbounds nuw i8, ptr %.5424613, i64 4
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.6425 = phi ptr [ %i.abb, %bb.bl ], [ %.5424613, %bb.bk ] ; 2 uses
  %i.abc = getelementptr inbounds nuw i8, ptr %i.aar, i64 4 ; 3 uses
  %i.abd = icmp ult ptr %i.abc, %.3412629
  br i1 %i.abd, label %.lr.ph614, label %.critedge8, !llvm.loop !148

.critedge8:                                       ; preds = %.lr.ph614, %bb.bm, %.lr.ph631
  %.5424.lcssa = phi ptr [ %.4423627, %.lr.ph631 ], [ %.6425, %bb.bm ], [ %.5424613, %.lr.ph614 ] ; 2 uses
  %.lcssa571 = phi ptr [ %i.aap, %.lr.ph631 ], [ %i.abc, %bb.bm ], [ %i.aar, %.lr.ph614 ] ; 5 uses
  %i.abe = getelementptr inbounds i8, ptr %.3412629, i64 -4 ; 3 uses
  %i.abf = icmp ult ptr %.lcssa571, %i.abe
  br i1 %i.abf, label %.lr.ph621, label %.critedge10

.lr.ph621:                                        ; preds = %.critedge8, %bb.bp
  %i.abg = phi ptr [ %i.abr, %bb.bp ], [ %i.abe, %.critedge8 ] ; 4 uses
  %.4407620 = phi ptr [ %.5408, %bb.bp ], [ %.3406630, %.critedge8 ] ; 5 uses
  %i.abh = load i32, ptr %i.abg, align 4, !tbaa !12 ; 2 uses
  %i.abi = sext i32 %i.abh to i64
  %i.abj = getelementptr inbounds [4 x i8], ptr %1, i64 %i.abi
  %i.abk = load i32, ptr %i.abj, align 4, !tbaa !12
  %i.abl = sext i32 %i.abk to i64
  %i.abm = getelementptr inbounds i8, ptr %i.ce, i64 %i.abl
  %i.abn = load i8, ptr %i.abm, align 1, !tbaa !13 ; 2 uses
  %.not495 = icmp ult i8 %i.abn, %i.yl
  br i1 %.not495, label %.critedge10, label %bb.bn

bb.bn:                                            ; preds = %.lr.ph621
  %i.abo = icmp eq i8 %i.abn, %i.yl
  br i1 %i.abo, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.abp = load i32, ptr %.4407620, align 4, !tbaa !12
  store i32 %i.abp, ptr %i.abg, align 4, !tbaa !12
  store i32 %i.abh, ptr %.4407620, align 4, !tbaa !12
  %i.abq = getelementptr inbounds i8, ptr %.4407620, i64 -4
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.5408 = phi ptr [ %i.abq, %bb.bo ], [ %.4407620, %bb.bn ] ; 2 uses
  %i.abr = getelementptr inbounds i8, ptr %i.abg, i64 -4 ; 3 uses
  %i.abs = icmp ult ptr %.lcssa571, %i.abr
  br i1 %i.abs, label %.lr.ph621, label %.critedge10, !llvm.loop !149

.critedge10:                                      ; preds = %.lr.ph621, %bb.bp, %.critedge8
  %.4407.lcssa = phi ptr [ %.3406630, %.critedge8 ], [ %.5408, %bb.bp ], [ %.4407620, %.lr.ph621 ] ; 2 uses
  %.lcssa572 = phi ptr [ %i.abe, %.critedge8 ], [ %i.abr, %bb.bp ], [ %i.abg, %.lr.ph621 ] ; 2 uses
  %i.abt = icmp ult ptr %.lcssa571, %.lcssa572
  br i1 %i.abt, label %.lr.ph631, label %._crit_edge, !llvm.loop !150

._crit_edge:                                      ; preds = %.critedge10, %.critedge6
  %.4423.lcssa = phi ptr [ %.3422, %.critedge6 ], [ %.5424.lcssa, %.critedge10 ] ; 2 uses
  %.3417.lcssa = phi ptr [ %.2416, %.critedge6 ], [ %.lcssa571, %.critedge10 ] ; 10 uses
  %.3406.lcssa = phi ptr [ %.2405, %.critedge6 ], [ %.4407.lcssa, %.critedge10 ] ; 2 uses
  %.not487 = icmp ugt ptr %.4423.lcssa, %.3406.lcssa
  br i1 %.not487, label %bb.cu, label %bb.bq

bb.bq:                                            ; preds = %._crit_edge
  %i.abu = getelementptr inbounds i8, ptr %.3417.lcssa, i64 -4
  %i.abv = ptrtoint ptr %.4423.lcssa to i64       ; 2 uses
  %i.abw = sub i64 %i.abv, %i.o
  %i.abx = lshr exact i64 %i.abw, 2
  %i.aby = trunc i64 %i.abx to i32
  %i.abz = ptrtoint ptr %.3417.lcssa to i64
  %i.aca = sub i64 %i.abz, %i.abv                 ; 3 uses
  %i.acb = lshr exact i64 %i.aca, 2
  %i.acc = trunc i64 %i.acb to i32
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.aby, i32 %i.acc) ; 7 uses
  %i.acd = icmp sgt i32 %spec.select, 0
  br i1 %i.acd, label %.lr.ph639.preheader, label %._crit_edge640

.lr.ph639.preheader:                              ; preds = %bb.bq
  %i.ace = zext nneg i32 %spec.select to i64      ; 4 uses
  %i.acf = sub nsw i64 0, %i.ace
  %i.acg = getelementptr [4 x i8], ptr %.3417.lcssa, i64 %i.acf ; 5 uses
  %min.iters.check62 = icmp ult i32 %spec.select, 8
  br i1 %min.iters.check62, label %.lr.ph639.preheader80, label %vector.memcheck53

vector.memcheck53:                                ; preds = %.lr.ph639.preheader
  %scevgep54 = getelementptr i8, ptr %.0432, i64 4
  %i.ach = add nsw i32 %spec.select, -1
  %i.aci = zext i32 %i.ach to i64                 ; 2 uses
  %5 = shl nuw nsw i64 %i.aci, 2
  %scevgep55 = getelementptr i8, ptr %scevgep54, i64 %5
  %scevgep56 = getelementptr i8, ptr %.3417.lcssa, i64 4
  %6 = sub nsw i64 %i.aci, %i.ace
  %i.acj = shl nsw i64 %6, 2
  %scevgep57 = getelementptr i8, ptr %scevgep56, i64 %i.acj
  %bound058 = icmp ult ptr %.0432, %scevgep57
  %bound159 = icmp ult ptr %i.acg, %scevgep55
  %found.conflict60 = and i1 %bound058, %bound159
  br i1 %found.conflict60, label %.lr.ph639.preheader80, label %vector.ph63

vector.ph63:                                      ; preds = %vector.memcheck53
  %n.vec64 = and i64 %i.ace, 2147483640           ; 4 uses
  %i.ack = trunc nuw nsw i64 %n.vec64 to i32
  %i.acl = sub nsw i32 %spec.select, %i.ack
  %i.acm = shl nuw nsw i64 %n.vec64, 2            ; 2 uses
  %i.acn = getelementptr i8, ptr %i.acg, i64 %i.acm
  %i.aco = getelementptr i8, ptr %.0432, i64 %i.acm
  br label %vector.body65

vector.body65:                                    ; preds = %vector.body65, %vector.ph63
  %index66 = phi i64 [ 0, %vector.ph63 ], [ %index.next73, %vector.body65 ] ; 2 uses
  %i.acp = shl i64 %index66, 2                    ; 2 uses
  %next.gep67 = getelementptr i8, ptr %i.acg, i64 %i.acp ; 3 uses
  %next.gep68 = getelementptr i8, ptr %.0432, i64 %i.acp ; 3 uses
  %i.acq = getelementptr i8, ptr %next.gep68, i64 16 ; 2 uses
  %wide.load69 = load <4 x i32>, ptr %next.gep68, align 4, !tbaa !12, !alias.scope !166, !noalias !167
  %wide.load70 = load <4 x i32>, ptr %i.acq, align 4, !tbaa !12, !alias.scope !166, !noalias !167
  %i.acr = getelementptr i8, ptr %next.gep67, i64 16 ; 2 uses
  %wide.load71 = load <4 x i32>, ptr %next.gep67, align 4, !tbaa !12, !alias.scope !167
  %wide.load72 = load <4 x i32>, ptr %i.acr, align 4, !tbaa !12, !alias.scope !167
  store <4 x i32> %wide.load71, ptr %next.gep68, align 4, !tbaa !12, !alias.scope !166, !noalias !167
  store <4 x i32> %wide.load72, ptr %i.acq, align 4, !tbaa !12, !alias.scope !166, !noalias !167
  store <4 x i32> %wide.load69, ptr %next.gep67, align 4, !tbaa !12, !alias.scope !167
  store <4 x i32> %wide.load70, ptr %i.acr, align 4, !tbaa !12, !alias.scope !167
  %index.next73 = add nuw i64 %index66, 8         ; 2 uses
  %i.acs = icmp eq i64 %index.next73, %n.vec64
  br i1 %i.acs, label %middle.block74, label %vector.body65, !llvm.loop !154

middle.block74:                                   ; preds = %vector.body65
  %cmp.n75 = icmp eq i64 %n.vec64, %i.ace
  br i1 %cmp.n75, label %._crit_edge640, label %.lr.ph639.preheader80

.lr.ph639.preheader80:                            ; preds = %vector.memcheck53, %.lr.ph639.preheader, %middle.block74
  %.1396637.ph = phi i32 [ %spec.select, %vector.memcheck53 ], [ %spec.select, %.lr.ph639.preheader ], [ %i.acl, %middle.block74 ]
  %.0399636.ph = phi ptr [ %i.acg, %vector.memcheck53 ], [ %i.acg, %.lr.ph639.preheader ], [ %i.acn, %middle.block74 ]
  %.0401635.ph = phi ptr [ %.0432, %vector.memcheck53 ], [ %.0432, %.lr.ph639.preheader ], [ %i.aco, %middle.block74 ]
  br label %.lr.ph639

.lr.ph639:                                        ; preds = %.lr.ph639.preheader80, %.lr.ph639
  %.1396637 = phi i32 [ %i.acv, %.lr.ph639 ], [ %.1396637.ph, %.lr.ph639.preheader80 ] ; 2 uses
  %.0399636 = phi ptr [ %i.acx, %.lr.ph639 ], [ %.0399636.ph, %.lr.ph639.preheader80 ] ; 3 uses
  %.0401635 = phi ptr [ %i.acw, %.lr.ph639 ], [ %.0401635.ph, %.lr.ph639.preheader80 ] ; 3 uses
  %i.act = load i32, ptr %.0401635, align 4, !tbaa !12
  %i.acu = load i32, ptr %.0399636, align 4, !tbaa !12
  store i32 %i.acu, ptr %.0401635, align 4, !tbaa !12
  store i32 %i.act, ptr %.0399636, align 4, !tbaa !12
  %i.acv = add nsw i32 %.1396637, -1
  %i.acw = getelementptr inbounds nuw i8, ptr %.0401635, i64 4
  %i.acx = getelementptr inbounds nuw i8, ptr %.0399636, i64 4
  %i.acy = icmp samesign ugt i32 %.1396637, 1
  br i1 %i.acy, label %.lr.ph639, label %._crit_edge640, !llvm.loop !155

._crit_edge640:                                   ; preds = %.lr.ph639, %middle.block74, %bb.bq
  %i.acz = ptrtoint ptr %.3406.lcssa to i64       ; 2 uses
  %i.ada = ptrtoint ptr %i.abu to i64
  %i.adb = sub i64 %i.acz, %i.ada
  %i.adc = ashr exact i64 %i.adb, 2               ; 5 uses
  %i.add = trunc i64 %i.adc to i32
  %i.ade = sub i64 %i.n, %i.acz
  %i.adf = lshr exact i64 %i.ade, 2
  %i.adg = trunc i64 %i.adf to i32
  %i.adh = add i32 %i.adg, -1
  %spec.select499 = tail call i32 @llvm.smin.i32(i32 %i.adh, i32 %i.add) ; 7 uses
  %i.adi = icmp sgt i32 %spec.select499, 0
  br i1 %i.adi, label %.lr.ph645.preheader, label %._crit_edge646

.lr.ph645.preheader:                              ; preds = %._crit_edge640
  %i.adj = zext nneg i32 %spec.select499 to i64   ; 4 uses
  %i.adk = sub nsw i64 0, %i.adj
  %i.adl = getelementptr [4 x i8], ptr %.0429, i64 %i.adk ; 5 uses
  %min.iters.check = icmp ult i32 %spec.select499, 8
  br i1 %min.iters.check, label %.lr.ph645.preheader79, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph645.preheader
  %scevgep = getelementptr i8, ptr %.3417.lcssa, i64 4
  %i.adm = add nsw i32 %spec.select499, -1
  %i.adn = zext i32 %i.adm to i64                 ; 2 uses
  %7 = shl nuw nsw i64 %i.adn, 2
  %scevgep44 = getelementptr i8, ptr %scevgep, i64 %7
  %scevgep45 = getelementptr i8, ptr %.0429, i64 4
  %8 = sub nsw i64 %i.adn, %i.adj
  %i.ado = shl nsw i64 %8, 2
  %scevgep46 = getelementptr i8, ptr %scevgep45, i64 %i.ado
  %bound0 = icmp ult ptr %.3417.lcssa, %scevgep46
  %bound1 = icmp ult ptr %i.adl, %scevgep44
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph645.preheader79, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.adj, 2147483640             ; 4 uses
  %i.adp = trunc nuw nsw i64 %n.vec to i32
  %i.adq = sub nsw i32 %spec.select499, %i.adp
  %i.adr = shl nuw nsw i64 %n.vec, 2              ; 2 uses
  %i.ads = getelementptr i8, ptr %i.adl, i64 %i.adr
  %i.adt = getelementptr i8, ptr %.3417.lcssa, i64 %i.adr
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.adu = shl i64 %index, 2                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.adl, i64 %i.adu ; 3 uses
  %next.gep47 = getelementptr i8, ptr %.3417.lcssa, i64 %i.adu ; 3 uses
  %i.adv = getelementptr i8, ptr %next.gep47, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep47, align 4, !tbaa !12, !alias.scope !168, !noalias !169
  %wide.load48 = load <4 x i32>, ptr %i.adv, align 4, !tbaa !12, !alias.scope !168, !noalias !169
  %i.adw = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load49 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !12, !alias.scope !169
  %wide.load50 = load <4 x i32>, ptr %i.adw, align 4, !tbaa !12, !alias.scope !169
  store <4 x i32> %wide.load49, ptr %next.gep47, align 4, !tbaa !12, !alias.scope !168, !noalias !169
  store <4 x i32> %wide.load50, ptr %i.adv, align 4, !tbaa !12, !alias.scope !168, !noalias !169
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !12, !alias.scope !169
  store <4 x i32> %wide.load48, ptr %i.adw, align 4, !tbaa !12, !alias.scope !169
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.adx = icmp eq i64 %index.next, %n.vec
  br i1 %i.adx, label %middle.block, label %vector.body, !llvm.loop !159

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.adj
  br i1 %cmp.n, label %._crit_edge646, label %.lr.ph645.preheader79

.lr.ph645.preheader79:                            ; preds = %vector.memcheck, %.lr.ph645.preheader, %middle.block
  %.3398643.ph = phi i32 [ %spec.select499, %vector.memcheck ], [ %spec.select499, %.lr.ph645.preheader ], [ %i.adq, %middle.block ]
  %.1400642.ph = phi ptr [ %i.adl, %vector.memcheck ], [ %i.adl, %.lr.ph645.preheader ], [ %i.ads, %middle.block ]
  %.1402641.ph = phi ptr [ %.3417.lcssa, %vector.memcheck ], [ %.3417.lcssa, %.lr.ph645.preheader ], [ %i.adt, %middle.block ]
  br label %.lr.ph645

.lr.ph645:                                        ; preds = %.lr.ph645.preheader79, %.lr.ph645
  %.3398643 = phi i32 [ %i.aea, %.lr.ph645 ], [ %.3398643.ph, %.lr.ph645.preheader79 ] ; 2 uses
  %.1400642 = phi ptr [ %i.aec, %.lr.ph645 ], [ %.1400642.ph, %.lr.ph645.preheader79 ] ; 3 uses
  %.1402641 = phi ptr [ %i.aeb, %.lr.ph645 ], [ %.1402641.ph, %.lr.ph645.preheader79 ] ; 3 uses
  %i.ady = load i32, ptr %.1402641, align 4, !tbaa !12
  %i.adz = load i32, ptr %.1400642, align 4, !tbaa !12
  store i32 %i.adz, ptr %.1402641, align 4, !tbaa !12
  store i32 %i.ady, ptr %.1400642, align 4, !tbaa !12
  %i.aea = add nsw i32 %.3398643, -1
  %i.aeb = getelementptr inbounds nuw i8, ptr %.1402641, i64 4
  %i.aec = getelementptr inbounds nuw i8, ptr %.1400642, i64 4
  %i.aed = icmp samesign ugt i32 %.3398643, 1
  br i1 %i.aed, label %.lr.ph645, label %._crit_edge646, !llvm.loop !160

._crit_edge646:                                   ; preds = %.lr.ph645, %middle.block, %._crit_edge640
  %i.aee = getelementptr inbounds i8, ptr %.0432, i64 %i.aca ; 11 uses
  %i.aef = sub nsw i64 0, %i.adc
  %i.aeg = getelementptr inbounds [4 x i8], ptr %.0429, i64 %i.aef ; 15 uses
  %i.aeh = load i32, ptr %i.aee, align 4, !tbaa !12
  %i.aei = sext i32 %i.aeh to i64
  %i.aej = getelementptr inbounds [4 x i8], ptr %1, i64 %i.aei
  %i.aek = load i32, ptr %i.aej, align 4, !tbaa !12
  %i.ael = sext i32 %i.aek to i64
  %i.aem = getelementptr i8, ptr %i.ce, i64 %i.ael
  %i.aen = getelementptr i8, ptr %i.aem, i64 -1
  %i.aeo = load i8, ptr %i.aen, align 1, !tbaa !13
  %.not488 = icmp ugt i8 %i.yl, %i.aeo
  br i1 %.not488, label %bb.br, label %ss_partition.exit528

bb.br:                                            ; preds = %._crit_edge646
  %i.aep = getelementptr inbounds i8, ptr %i.aee, i64 -4
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bw, %bb.br
  %.031.i519 = phi ptr [ %i.aep, %bb.br ], [ %.lcssa.i522, %bb.bw ]
  %.0.i520 = phi ptr [ %i.aeg, %bb.br ], [ %i.afd, %bb.bw ] ; 3 uses
  %i.aeq = getelementptr inbounds nuw i8, ptr %.031.i519, i64 4 ; 3 uses
  %i.aer = icmp ult ptr %i.aeq, %.0.i520
  br i1 %i.aer, label %.lr.ph.i526, label %.critedge.i521

.lr.ph.i526:                                      ; preds = %bb.bs, %bb.bt
  %i.aes = phi ptr [ %i.afb, %bb.bt ], [ %i.aeq, %bb.bs ] ; 4 uses
  %i.aet = load i32, ptr %i.aes, align 4, !tbaa !12 ; 2 uses
  %i.aeu = sext i32 %i.aet to i64
  %i.aev = getelementptr inbounds [4 x i8], ptr %1, i64 %i.aeu ; 2 uses
  %i.aew = load i32, ptr %i.aev, align 4, !tbaa !12
  %i.aex = add nsw i32 %i.aew, %.0426
  %i.aey = getelementptr i8, ptr %i.aev, i64 4
  %i.aez = load i32, ptr %i.aey, align 4, !tbaa !12
  %.not.not.i527 = icmp sgt i32 %i.aex, %i.aez
  br i1 %.not.not.i527, label %bb.bt, label %.critedge.i521

bb.bt:                                            ; preds = %.lr.ph.i526
  %i.afa = xor i32 %i.aet, -1
  store i32 %i.afa, ptr %i.aes, align 4, !tbaa !12
  %i.afb = getelementptr inbounds nuw i8, ptr %i.aes, i64 4 ; 3 uses
  %i.afc = icmp ult ptr %i.afb, %.0.i520
  br i1 %i.afc, label %.lr.ph.i526, label %.critedge.i521, !llvm.loop !142

.critedge.i521:                                   ; preds = %bb.bt, %.lr.ph.i526, %bb.bs
  %.lcssa.i522 = phi ptr [ %i.aeq, %bb.bs ], [ %i.aes, %.lr.ph.i526 ], [ %i.afb, %bb.bt ] ; 7 uses
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bv, %.critedge.i521
  %.1.i523 = phi ptr [ %.0.i520, %.critedge.i521 ], [ %i.afd, %bb.bv ]
  %i.afd = getelementptr inbounds i8, ptr %.1.i523, i64 -4 ; 5 uses
  %i.afe = icmp ult ptr %.lcssa.i522, %i.afd
  br i1 %i.afe, label %bb.bv, label %.critedge2.i524

bb.bv:                                            ; preds = %bb.bu
  %i.aff = load i32, ptr %i.afd, align 4, !tbaa !12 ; 2 uses
  %i.afg = sext i32 %i.aff to i64
  %i.afh = getelementptr inbounds [4 x i8], ptr %1, i64 %i.afg ; 2 uses
  %i.afi = load i32, ptr %i.afh, align 4, !tbaa !12
  %i.afj = add nsw i32 %i.afi, %.0426
  %i.afk = getelementptr i8, ptr %i.afh, i64 4
  %i.afl = load i32, ptr %i.afk, align 4, !tbaa !12
  %.not.i525 = icmp sgt i32 %i.afj, %i.afl
  br i1 %.not.i525, label %bb.bw, label %bb.bu, !llvm.loop !143

bb.bw:                                            ; preds = %bb.bv
  %i.afm = xor i32 %i.aff, -1
  %i.afn = load i32, ptr %.lcssa.i522, align 4, !tbaa !12
  store i32 %i.afn, ptr %i.afd, align 4, !tbaa !12
  store i32 %i.afm, ptr %.lcssa.i522, align 4, !tbaa !12
  br label %bb.bs

.critedge2.i524:                                  ; preds = %bb.bu
  %i.afo = icmp ult ptr %i.aee, %.lcssa.i522
  br i1 %i.afo, label %bb.bx, label %ss_partition.exit528

bb.bx:                                            ; preds = %.critedge2.i524
  %i.afp = load i32, ptr %i.aee, align 4, !tbaa !12
  %i.afq = xor i32 %i.afp, -1
  store i32 %i.afq, ptr %i.aee, align 4, !tbaa !12
  br label %ss_partition.exit528

ss_partition.exit528:                             ; preds = %bb.bx, %.critedge2.i524, %._crit_edge646
  %i.afr = phi ptr [ %i.aee, %._crit_edge646 ], [ %.lcssa.i522, %.critedge2.i524 ], [ %.lcssa.i522, %bb.bx ] ; 9 uses
  %i.afs = ashr exact i64 %i.aca, 2               ; 3 uses
  %i.aft = ptrtoint ptr %i.aeg to i64
  %.not489 = icmp sgt i64 %i.afs, %i.adc
  %i.afu = ptrtoint ptr %i.afr to i64
  %i.afv = sub i64 %i.aft, %i.afu                 ; 7 uses
  %i.afw = ashr exact i64 %i.afv, 2               ; 16 uses
  br i1 %.not489, label %bb.cj, label %bb.by

bb.by:                                            ; preds = %ss_partition.exit528
  %.not492 = icmp sgt i64 %i.adc, %i.afw
  br i1 %.not492, label %bb.cc, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.afx = sext i32 %.0392 to i64
  %i.afy = getelementptr inbounds [24 x i8], ptr %4, i64 %i.afx ; 8 uses
  store ptr %i.afr, ptr %i.afy, align 8, !tbaa !162
  %i.afz = getelementptr inbounds nuw i8, ptr %i.afy, i64 8
  store ptr %i.aeg, ptr %i.afz, align 8, !tbaa !163
  %i.aga = add nsw i32 %.0426, 1
  %i.agb = getelementptr inbounds nuw i8, ptr %i.afy, i64 16
  store i32 %i.aga, ptr %i.agb, align 8, !tbaa !164
  %i.agc = and i64 %i.afv, 261120
  %.not.i529 = icmp eq i64 %i.agc, 0
  br i1 %.not.i529, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.agd = lshr i64 %i.afw, 8
  %i.age = and i64 %i.agd, 255
  %i.agf = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %i.age
  %i.agg = load i32, ptr %i.agf, align 4, !tbaa !12
  %i.agh = add nsw i32 %i.agg, 8
  br label %ss_ilg.exit530

bb.cb:                                            ; preds = %bb.bz
  %i.agi = and i64 %i.afw, 255
  %i.agj = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %i.agi
  %i.agk = load i32, ptr %i.agj, align 4, !tbaa !12
  br label %ss_ilg.exit530

ss_ilg.exit530:                                   ; preds = %bb.ca, %bb.cb
  %i.agl = phi i32 [ %i.agh, %bb.ca ], [ %i.agk, %bb.cb ]
  %i.agm = getelementptr inbounds nuw i8, ptr %i.afy, i64 20
  store i32 %i.agl, ptr %i.agm, align 4, !tbaa !165
  %i.agn = getelementptr i8, ptr %i.afy, i64 24
  store ptr %i.aeg, ptr %i.agn, align 8, !tbaa !162
  %i.ago = getelementptr i8, ptr %i.afy, i64 32
  store ptr %.0429, ptr %i.ago, align 8, !tbaa !163
  %i.agp = getelementptr i8, ptr %i.afy, i64 40
  store i32 %.0426, ptr %i.agp, align 8, !tbaa !164
  %i.agq = add nsw i32 %.0392, 2
  %i.agr = getelementptr i8, ptr %i.afy, i64 44
  store i32 %i.cf, ptr %i.agr, align 4, !tbaa !165
  br label %ss_ilg.exit.backedge

bb.cc:                                            ; preds = %bb.by
  %.not493 = icmp sgt i64 %i.afs, %i.afw
  %i.ags = sext i32 %.0392 to i64
  %i.agt = getelementptr inbounds [24 x i8], ptr %4, i64 %i.ags ; 10 uses
  store ptr %i.aeg, ptr %i.agt, align 8, !tbaa !162
  %i.agu = getelementptr inbounds nuw i8, ptr %i.agt, i64 8
end_hunk_2
