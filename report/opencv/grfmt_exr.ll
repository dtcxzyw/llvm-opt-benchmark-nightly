Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/grfmt_exr?download=true
inline.NumInlined: 523
inline.NumDeleted: 289
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN2cv10ExrDecoder8readDataERNS_3MatE:_ZNK2cv10ExrDecoder4typeEv.exit

._crit_edge480:                                   ; preds = %bb.er
  %i.ti = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.bb
  %i.tj = select i1 %i.k, i64 2, i64 0
  %i.tk = lshr i64 %i.x, %i.tj
  %i.tl = trunc i64 %i.tk to i32
  call void @_ZN2cv10ExrDecoder8UpSampleEPhiiii(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef nonnull %i.ti, i32 noundef %i.bg, i32 noundef %i.tl, i32 noundef %i.tf, i32 noundef %i.th)
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %._crit_edge480, %bb.eq
  %i.tm = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.tn = load ptr, ptr %i.tm, align 8, !tbaa !95 ; 3 uses
  %.not343 = icmp eq ptr %i.tn, null
  br i1 %.not343, label %bb.ew, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 4
  %i.tp = load i32, ptr %i.to, align 4, !tbaa !102 ; 2 uses
  %.not344 = icmp eq i32 %i.tp, 1
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tn, i64 8
  %i.tr = load i32, ptr %i.tq, align 4, !tbaa !103 ; 2 uses
  %.not345 = icmp eq i32 %i.tr, 1
  %or.cond565 = select i1 %.not344, i1 %.not345, i1 false
  br i1 %or.cond565, label %bb.ew, label %._crit_edge483

._crit_edge483:                                   ; preds = %bb.et
  %i.ts = shl nuw nsw i64 %i.bb, 1
  %i.tt = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ts
  %i.tu = select i1 %i.k, i64 2, i64 0
  %i.tv = lshr i64 %i.x, %i.tu
  %i.tw = trunc i64 %i.tv to i32
  call void @_ZN2cv10ExrDecoder8UpSampleEPhiiii(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef nonnull %i.tt, i32 noundef %i.bg, i32 noundef %i.tw, i32 noundef %i.tp, i32 noundef %i.tr)
  br label %bb.ew

bb.eu:                                            ; preds = %bb.eg
  %i.tx = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.ty = load ptr, ptr %i.tx, align 8, !tbaa !96 ; 3 uses
  %.not334 = icmp eq ptr %i.ty, null
  br i1 %.not334, label %bb.ew, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 4
  %i.ua = load i32, ptr %i.tz, align 4, !tbaa !102 ; 2 uses
  %.not335 = icmp eq i32 %i.ua, 1
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ty, i64 8
  %i.uc = load i32, ptr %i.ub, align 4, !tbaa !103 ; 2 uses
  %.not336 = icmp eq i32 %i.uc, 1
  %or.cond566 = select i1 %.not335, i1 %.not336, i1 false
  br i1 %or.cond566, label %bb.ew, label %._crit_edge474

._crit_edge474:                                   ; preds = %bb.ev
  %i.ud = select i1 %i.k, i64 2, i64 0
  %i.ue = lshr i64 %i.x, %i.ud
  %i.uf = trunc i64 %i.ue to i32
  call void @_ZN2cv10ExrDecoder8UpSampleEPhiiii(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef %i.v, i32 noundef %i.bg, i32 noundef %i.uf, i32 noundef %i.ua, i32 noundef %i.uc)
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %bb.et, %bb.en, %bb.eu, %._crit_edge474, %._crit_edge492, %bb.em, %._crit_edge483, %bb.es
  br i1 %i.ag, label %bb.ex, label %bb.fz

bb.ex:                                            ; preds = %bb.ew
  %i.ug = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.uh = load i32, ptr %i.ug, align 4, !tbaa !94 ; 2 uses
  %i.ui = select i1 %i.k, i64 2, i64 0
  %i.uj = lshr i64 %i.x, %i.ui
  %i.uk = trunc i64 %i.uj to i32                  ; 2 uses
  br i1 %.0258, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %bb.ex
  call void @_ZN2cv10ExrDecoder11ChromaToRGBEPfiii(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef %i.v, i32 noundef %i.uh, i32 noundef %i.bg, i32 noundef %i.uk)
  br label %bb.fz

bb.ez:                                            ; preds = %bb.ex
  call void @_ZN2cv10ExrDecoder11ChromaToBGREPfiii(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef %i.v, i32 noundef %i.uh, i32 noundef %i.bg, i32 noundef %i.uk)
  br label %bb.fz

bb.fa:                                            ; preds = %bb.ed
  %i.ul = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.um = load i32, ptr %i.ul, align 8, !tbaa !162 ; 2 uses
  %i.un = getelementptr inbounds nuw i8, ptr %0, i64 744 ; 2 uses
  %i.uo = load i32, ptr %i.un, align 8, !tbaa !164
  %.not309429 = icmp sgt i32 %i.um, %i.uo
  br i1 %.not309429, label %._crit_edge435, label %.lr.ph434

.lr.ph434:                                        ; preds = %bb.fa
  %i.up = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.uq = trunc i64 %i.x to i32                   ; 2 uses
  %ident.check582.not = icmp eq i32 %i.bg, 1
  %ident.check.not = icmp eq i32 %i.bg, 1
  br label %bb.fb

bb.fb:                                            ; preds = %.lr.ph434, %.loopexit
  %.0252432 = phi i32 [ %i.um, %.lr.ph434 ], [ %i.ye, %.loopexit ] ; 4 uses
  %.0254430 = phi ptr [ %i.v, %.lr.ph434 ], [ %i.yd, %.loopexit ] ; 4 uses
  %i.ur = load ptr, ptr %i.ra, align 8, !tbaa !73
  invoke void @_ZN7Imf_3_19InputFile10readPixelsEii(ptr noundef nonnull align 8 dereferenceable(16) %i.ur, i32 noundef %.0252432, i32 noundef %.0252432)
          to label %.lr.ph424 unwind label %bb.fc

._crit_edge:                                      ; preds = %_ZN2cv10ExrDecoder9UpSampleXEPfii.exit
  br i1 %i.al, label %bb.fe, label %bb.ff

bb.fc:                                            ; preds = %bb.fb
  %i.us = landingpad { ptr, i32 }
          cleanup
  br label %bb.gg

.lr.ph424:                                        ; preds = %bb.fb, %_ZN2cv10ExrDecoder9UpSampleXEPfii.exit
  %indvars.iv445 = phi i64 [ %indvars.iv.next446, %_ZN2cv10ExrDecoder9UpSampleXEPfii.exit ], [ 0, %bb.fb ] ; 3 uses
  %i.ut = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv445
  %i.uu = load i32, ptr %i.ut, align 4, !tbaa !14 ; 9 uses
  %.not333 = icmp eq i32 %i.uu, 1
  br i1 %.not333, label %_ZN2cv10ExrDecoder9UpSampleXEPfii.exit, label %bb.fd

bb.fd:                                            ; preds = %.lr.ph424
  %i.uv = getelementptr inbounds nuw [4 x i8], ptr %.0274, i64 %indvars.iv445 ; 14 uses
  %i.uw = load i32, ptr %i.up, align 8, !tbaa !93 ; 2 uses
  %i.ux = add nsw i32 %i.uw, -1
  %i.uy = sdiv i32 %i.ux, %i.uu                   ; 2 uses
  %i.uz = icmp sgt i32 %i.uy, -1
  %i.va = icmp sgt i32 %i.uu, 0
  %or.cond.i393 = and i1 %i.va, %i.uz
  br i1 %or.cond.i393, label %.preheader.lr.ph.split.i, label %_ZN2cv10ExrDecoder9UpSampleXEPfii.exit

.preheader.lr.ph.split.i:                         ; preds = %bb.fd
  %.02327.i = sub nsw i32 %i.uw, %i.uu            ; 2 uses
  %i.vb = load i32, ptr %i.ar, align 8
  %i.vc = icmp eq i32 %i.vb, 2
  %i.vd = zext nneg i32 %i.uy to i64              ; 2 uses
  %wide.trip.count41.i = zext nneg i32 %i.uu to i64 ; 10 uses
  br i1 %i.vc, label %.preheader.us.i.preheader, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %.preheader.lr.ph.split.i
  %min.iters.check584 = icmp ugt i32 %i.uu, 7
  %or.cond596 = select i1 %min.iters.check584, i1 %ident.check582.not, i1 false
  %n.vec586 = and i64 %wide.trip.count41.i, 2147483640 ; 3 uses
  %cmp.n593 = icmp eq i64 %n.vec586, %wide.trip.count41.i
  %xtraiter = and i64 %wide.trip.count41.i, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.i

.preheader.us.i.preheader:                        ; preds = %.preheader.lr.ph.split.i
  %min.iters.check = icmp ugt i32 %i.uu, 7
  %or.cond595 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %n.vec = and i64 %wide.trip.count41.i, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count41.i
  %xtraiter604 = and i64 %wide.trip.count41.i, 3  ; 2 uses
  %lcmp.mod605.not = icmp eq i64 %xtraiter604, 0
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %.preheader.us.i.preheader, %._crit_edge.split.us.us.i
  %indvars.iv43.i = phi i64 [ %indvars.iv.next44.i, %._crit_edge.split.us.us.i ], [ %i.vd, %.preheader.us.i.preheader ] ; 3 uses
  %.02329.us.i = phi i32 [ %.023.us.i, %._crit_edge.split.us.us.i ], [ %.02327.i, %.preheader.us.i.preheader ] ; 2 uses
  %i.ve = mul nsw i64 %indvars.iv43.i, %i.bh
  %i.vf = getelementptr inbounds [4 x i8], ptr %i.uv, i64 %i.ve
  %i.vg = sext i32 %.02329.us.i to i64            ; 6 uses
  %.pre46.i = load float, ptr %i.vf, align 4, !tbaa !16 ; 6 uses
  br i1 %or.cond595, label %vector.ph, label %scalar.ph.preheader

vector.ph:                                        ; preds = %.preheader.us.i
  %broadcast.splatinsert = insertelement <4 x float> poison, float %.pre46.i, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep616 = getelementptr [4 x i8], ptr %i.uv, i64 %i.vg
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep617 = getelementptr [4 x i8], ptr %invariant.gep616, i64 %index ; 2 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %gep617, i64 16
  store <4 x float> %broadcast.splat, ptr %gep617, align 4, !tbaa !16
  store <4 x float> %broadcast.splat, ptr %i.vh, align 4, !tbaa !16
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.vi = icmp eq i64 %index.next, %n.vec
  br i1 %i.vi, label %middle.block, label %vector.body, !llvm.loop !147

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.split.us.us.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us.i, %middle.block
  %indvars.iv38.i.ph = phi i64 [ 0, %.preheader.us.i ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod605.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv38.i.prol = phi i64 [ %indvars.iv.next39.i.prol, %scalar.ph.prol ], [ %indvars.iv38.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter606 = phi i64 [ %prol.iter606.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.vj = add nsw i64 %indvars.iv38.i.prol, %i.vg
  %i.vk = mul nsw i64 %i.vj, %i.bh
  %i.vl = getelementptr inbounds [4 x i8], ptr %i.uv, i64 %i.vk
  store float %.pre46.i, ptr %i.vl, align 4, !tbaa !16
  %indvars.iv.next39.i.prol = add nuw nsw i64 %indvars.iv38.i.prol, 1 ; 2 uses
  %prol.iter606.next = add i64 %prol.iter606, 1   ; 2 uses
  %prol.iter606.cmp.not = icmp eq i64 %prol.iter606.next, %xtraiter604
  br i1 %prol.iter606.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !148

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv38.i.unr = phi i64 [ %indvars.iv38.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next39.i.prol, %scalar.ph.prol ]
  %i.vm = sub nsw i64 %indvars.iv38.i.ph, %wide.trip.count41.i
  %i.vn = icmp ugt i64 %i.vm, -4
  br i1 %i.vn, label %._crit_edge.split.us.us.i, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op618 = add i64 1, %i.vg
  %invariant.op620 = add i64 2, %i.vg
  %invariant.op622 = add i64 3, %i.vg
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %indvars.iv38.i = phi i64 [ %indvars.iv38.i.unr, %scalar.ph.preheader.new ], [ %indvars.iv.next39.i.3, %scalar.ph ] ; 5 uses
  %i.vo = add nsw i64 %indvars.iv38.i, %i.vg
  %i.vp = mul nsw i64 %i.vo, %i.bh
  %i.vq = getelementptr inbounds [4 x i8], ptr %i.uv, i64 %i.vp
  store float %.pre46.i, ptr %i.vq, align 4, !tbaa !16
  %.reass619 = add i64 %indvars.iv38.i, %invariant.op618
  %i.vr = mul nsw i64 %.reass619, %i.bh
  %i.vs = getelementptr inbounds [4 x i8], ptr %i.uv, i64 %i.vr
  store float %.pre46.i, ptr %i.vs, align 4, !tbaa !16
  %.reass621 = add i64 %indvars.iv38.i, %invariant.op620
  %i.vt = mul nsw i64 %.reass621, %i.bh
  %i.vu = getelementptr inbounds [4 x i8], ptr %i.uv, i64 %i.vt
  store float %.pre46.i, ptr %i.vu, align 4, !tbaa !16
  %.reass623 = add i64 %indvars.iv38.i, %invariant.op622
  %i.vv = mul nsw i64 %.reass623, %i.bh
  %i.vw = getelementptr inbounds [4 x i8], ptr %i.uv, i64 %i.vv
  store float %.pre46.i, ptr %i.vw, align 4, !tbaa !16
  %indvars.iv.next39.i.3 = add nuw nsw i64 %indvars.iv38.i, 4 ; 2 uses
  %exitcond42.not.i.3 = icmp eq i64 %indvars.iv.next39.i.3, %wide.trip.count41.i
  br i1 %exitcond42.not.i.3, label %._crit_edge.split.us.us.i, label %scalar.ph, !llvm.loop !149

._crit_edge.split.us.us.i:                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next44.i = add nsw i64 %indvars.iv43.i, -1
  %.023.us.i = sub nsw i32 %.02329.us.i, %i.uu
  %i.vx = icmp sgt i64 %indvars.iv43.i, 0
  br i1 %i.vx, label %.preheader.us.i, label %_ZN2cv10ExrDecoder9UpSampleXEPfii.exit, !llvm.loop !3

.preheader.i:                                     ; preds = %.preheader.i.preheader, %._crit_edge.split.i
  %indvars.iv35.i = phi i64 [ %indvars.iv.next36.i, %._crit_edge.split.i ], [ %i.vd, %.preheader.i.preheader ] ; 3 uses
  %.02329.i = phi i32 [ %.023.i, %._crit_edge.split.i ], [ %.02327.i, %.preheader.i.preheader ] ; 2 uses
  %i.vy = mul nsw i64 %indvars.iv35.i, %i.bh
  %i.vz = getelementptr inbounds [4 x i8], ptr %i.uv, i64 %i.vy
  %i.wa = sext i32 %.02329.i to i64               ; 6 uses
  %.pre.i = load i32, ptr %i.vz, align 4, !tbaa !14 ; 6 uses
  br i1 %or.cond596, label %vector.ph585, label %scalar.ph583.preheader

vector.ph585:                                     ; preds = %.preheader.i
  %broadcast.splatinsert587 = insertelement <4 x i32> poison, i32 %.pre.i, i64 0
  %broadcast.splat588 = shufflevector <4 x i32> %broadcast.splatinsert587, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.uv, i64 %i.wa
  br label %vector.body589

vector.body589:                                   ; preds = %vector.body589, %vector.ph585
  %index590 = phi i64 [ 0, %vector.ph585 ], [ %index.next591, %vector.body589 ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index590 ; 2 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <4 x i32> %broadcast.splat588, ptr %gep, align 4, !tbaa !14
  store <4 x i32> %broadcast.splat588, ptr %i.wb, align 4, !tbaa !14
  %index.next591 = add nuw i64 %index590, 8       ; 2 uses
  %i.wc = icmp eq i64 %index.next591, %n.vec586
  br i1 %i.wc, label %middle.block592, label %vector.body589, !llvm.loop !150

middle.block592:                                  ; preds = %vector.body589
  br i1 %cmp.n593, label %._crit_edge.split.i, label %scalar.ph583.preheader

scalar.ph583.preheader:                           ; preds = %.preheader.i, %middle.block592
  %indvars.iv.i.ph = phi i64 [ 0, %.preheader.i ], [ %n.vec586, %middle.block592 ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph583.prol.loopexit, label %scalar.ph583.prol

scalar.ph583.prol:                                ; preds = %scalar.ph583.preheader, %scalar.ph583.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %scalar.ph583.prol ], [ %indvars.iv.i.ph, %scalar.ph583.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph583.prol ], [ 0, %scalar.ph583.preheader ]
  %i.wd = add nsw i64 %indvars.iv.i.prol, %i.wa
  %i.we = mul nsw i64 %i.wd, %i.bh
  %i.wf = getelementptr inbounds [4 x i8], ptr %i.uv, i64 %i.we
  store i32 %.pre.i, ptr %i.wf, align 4, !tbaa !14
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph583.prol.loopexit, label %scalar.ph583.prol, !llvm.loop !151

scalar.ph583.prol.loopexit:                       ; preds = %scalar.ph583.prol, %scalar.ph583.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph583.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph583.prol ]
  %i.wg = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count41.i
  %i.wh = icmp ugt i64 %i.wg, -4
  br i1 %i.wh, label %._crit_edge.split.i, label %scalar.ph583.preheader.new

scalar.ph583.preheader.new:                       ; preds = %scalar.ph583.prol.loopexit
  %invariant.op = add i64 1, %i.wa
  %invariant.op612 = add i64 2, %i.wa
  %invariant.op614 = add i64 3, %i.wa
  br label %scalar.ph583

._crit_edge.split.i:                              ; preds = %scalar.ph583.prol.loopexit, %scalar.ph583, %middle.block592
  %indvars.iv.next36.i = add nsw i64 %indvars.iv35.i, -1
  %.023.i = sub nsw i32 %.02329.i, %i.uu
  %i.wi = icmp sgt i64 %indvars.iv35.i, 0
  br i1 %i.wi, label %.preheader.i, label %_ZN2cv10ExrDecoder9UpSampleXEPfii.exit, !llvm.loop !3

scalar.ph583:                                     ; preds = %scalar.ph583, %scalar.ph583.preheader.new
  %indvars.iv.i = phi i64 [ %indvars.iv.i.unr, %scalar.ph583.preheader.new ], [ %indvars.iv.next.i.3, %scalar.ph583 ] ; 5 uses
  %i.wj = add nsw i64 %indvars.iv.i, %i.wa
  %i.wk = mul nsw i64 %i.wj, %i.bh
  %i.wl = getelementptr inbounds [4 x i8], ptr %i.uv, i64 %i.wk
  store i32 %.pre.i, ptr %i.wl, align 4, !tbaa !14
  %.reass = add i64 %indvars.iv.i, %invariant.op
  %i.wm = mul nsw i64 %.reass, %i.bh
  %i.wn = getelementptr inbounds [4 x i8], ptr %i.uv, i64 %i.wm
  store i32 %.pre.i, ptr %i.wn, align 4, !tbaa !14
  %.reass613 = add i64 %indvars.iv.i, %invariant.op612
  %i.wo = mul nsw i64 %.reass613, %i.bh
  %i.wp = getelementptr inbounds [4 x i8], ptr %i.uv, i64 %i.wo
  store i32 %.pre.i, ptr %i.wp, align 4, !tbaa !14
  %.reass615 = add i64 %indvars.iv.i, %invariant.op614
  %i.wq = mul nsw i64 %.reass615, %i.bh
  %i.wr = getelementptr inbounds [4 x i8], ptr %i.uv, i64 %i.wq
  store i32 %.pre.i, ptr %i.wr, align 4, !tbaa !14
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count41.i
  br i1 %exitcond.not.i.3, label %._crit_edge.split.i, label %scalar.ph583, !llvm.loop !152

_ZN2cv10ExrDecoder9UpSampleXEPfii.exit:           ; preds = %._crit_edge.split.i, %._crit_edge.split.us.us.i, %bb.fd, %.lr.ph424
  %indvars.iv.next446 = add nuw nsw i64 %indvars.iv445, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next446, %i.bh
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph424, !llvm.loop !153

bb.fe:                                            ; preds = %._crit_edge
  call void @_ZN2cv10ExrDecoder9RGBToGrayEPfS1_(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef %.0274, ptr noundef %.0254430)
  br label %.loopexit

bb.ff:                                            ; preds = %._crit_edge
  br i1 %i.ag, label %bb.fg, label %bb.fj

bb.fg:                                            ; preds = %bb.ff
  br i1 %.0258, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %bb.fg
  call void @_ZN2cv10ExrDecoder11ChromaToRGBEPfiii(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef %.0274, i32 noundef 1, i32 noundef 3, i32 noundef %i.uq)
  br label %bb.fj

bb.fi:                                            ; preds = %bb.fg
  call void @_ZN2cv10ExrDecoder11ChromaToBGREPfiii(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef %.0274, i32 noundef 1, i32 noundef 3, i32 noundef %i.uq)
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fh, %bb.fi, %bb.ff
  %i.ws = load i32, ptr %i.ar, align 8, !tbaa !74
  %i.wt = icmp eq i32 %i.ws, 2
  %i.wu = load i32, ptr %i.up, align 8, !tbaa !93
  %i.wv = load i32, ptr %1, align 8, !tbaa !104
  %i.ww = lshr i32 %i.wv, 5
  %i.wx = and i32 %i.ww, 127
  %i.wy = add nuw nsw i32 %i.wx, 1
  %i.wz = mul nsw i32 %i.wy, %i.wu
  %i.xa = icmp sgt i32 %i.wz, 0                   ; 2 uses
  br i1 %i.wt, label %.preheader, label %.preheader409

.preheader409:                                    ; preds = %bb.fj
  br i1 %i.xa, label %.lr.ph426, label %.loopexit

.preheader:                                       ; preds = %bb.fj
  br i1 %i.xa, label %.lr.ph428, label %.loopexit

.lr.ph428:                                        ; preds = %.preheader, %.lr.ph428
  %indvars.iv452 = phi i64 [ %indvars.iv.next453, %.lr.ph428 ], [ 0, %.preheader ] ; 3 uses
  %i.xb = getelementptr inbounds nuw [4 x i8], ptr %.0274, i64 %indvars.iv452
  %i.xc = load float, ptr %i.xb, align 4, !tbaa !16
  %i.xd = insertelement <4 x float> poison, float %i.xc, i64 0
  %i.xe = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.xd)
  %i.xf = call i32 @llvm.smax.i32(i32 %i.xe, i32 0)
  %i.xg = call i32 @llvm.umin.i32(i32 %i.xf, i32 255)
  %i.xh = trunc nuw i32 %i.xg to i8
  %i.xi = getelementptr inbounds nuw i8, ptr %.0254430, i64 %indvars.iv452
  store i8 %i.xh, ptr %i.xi, align 1, !tbaa !86
  %indvars.iv.next453 = add nuw nsw i64 %indvars.iv452, 1 ; 2 uses
  %i.xj = load i32, ptr %i.up, align 8, !tbaa !93
  %i.xk = load i32, ptr %1, align 8, !tbaa !104
  %i.xl = lshr i32 %i.xk, 5
  %i.xm = and i32 %i.xl, 127
  %i.xn = add nuw nsw i32 %i.xm, 1
  %i.xo = mul nsw i32 %i.xn, %i.xj
  %i.xp = sext i32 %i.xo to i64
  %i.xq = icmp slt i64 %indvars.iv.next453, %i.xp
  br i1 %i.xq, label %.lr.ph428, label %.loopexit, !llvm.loop !154

.lr.ph426:                                        ; preds = %.preheader409, %.lr.ph426
  %indvars.iv449 = phi i64 [ %indvars.iv.next450, %.lr.ph426 ], [ 0, %.preheader409 ] ; 3 uses
  %i.xr = getelementptr inbounds nuw [4 x i8], ptr %.0274, i64 %indvars.iv449
  %i.xs = load i32, ptr %i.xr, align 4, !tbaa !14
  %.sroa.speculated.i = call i32 @llvm.umin.i32(i32 %i.xs, i32 255)
  %i.xt = trunc nuw i32 %.sroa.speculated.i to i8
  %i.xu = getelementptr inbounds nuw i8, ptr %.0254430, i64 %indvars.iv449
  store i8 %i.xt, ptr %i.xu, align 1, !tbaa !86
  %indvars.iv.next450 = add nuw nsw i64 %indvars.iv449, 1 ; 2 uses
  %i.xv = load i32, ptr %i.up, align 8, !tbaa !93
  %i.xw = load i32, ptr %1, align 8, !tbaa !104
  %i.xx = lshr i32 %i.xw, 5
  %i.xy = and i32 %i.xx, 127
  %i.xz = add nuw nsw i32 %i.xy, 1
  %i.ya = mul nsw i32 %i.xz, %i.xv
  %i.yb = sext i32 %i.ya to i64
  %i.yc = icmp slt i64 %indvars.iv.next450, %i.yb
  br i1 %i.yc, label %.lr.ph426, label %.loopexit, !llvm.loop !155

.loopexit:                                        ; preds = %.lr.ph426, %.lr.ph428, %.preheader409, %.preheader, %bb.fe
  %i.yd = getelementptr inbounds nuw i8, ptr %.0254430, i64 %i.x
  %i.ye = add nsw i32 %.0252432, 1
  %i.yf = load i32, ptr %i.un, align 8, !tbaa !164
  %.not309.not = icmp slt i32 %.0252432, %i.yf
  br i1 %.not309.not, label %bb.fb, label %._crit_edge435, !llvm.loop !156

._crit_edge435:                                   ; preds = %.loopexit, %bb.fa
  br i1 %i.r, label %bb.fk, label %bb.fx

bb.fk:                                            ; preds = %._crit_edge435
  br i1 %.0258, label %bb.fl, label %bb.fr

bb.fl:                                            ; preds = %bb.fk
  %i.yg = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.yh = load ptr, ptr %i.yg, align 8, !tbaa !95 ; 3 uses
  %.not322 = icmp eq ptr %i.yh, null
  br i1 %.not322, label %bb.fn, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yh, i64 4
  %i.yj = load i32, ptr %i.yi, align 4, !tbaa !102
  %.not323 = icmp eq i32 %i.yj, 1
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yh, i64 8
  %i.yl = load i32, ptr %i.yk, align 4, !tbaa !103 ; 2 uses
  %.not324 = icmp eq i32 %i.yl, 1
  %or.cond567 = select i1 %.not323, i1 %.not324, i1 false
  br i1 %or.cond567, label %bb.fn, label %._crit_edge465

._crit_edge465:                                   ; preds = %bb.fm
  %i.ym = select i1 %i.k, i64 2, i64 0
  %i.yn = lshr i64 %i.x, %i.ym
  %i.yo = trunc i64 %i.yn to i32
  call void @_ZN2cv10ExrDecoder9UpSampleYEPhiii(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef %i.v, i32 noundef 3, i32 noundef %i.yo, i32 noundef %i.yl)
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %._crit_edge465, %bb.fl
  %i.yp = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.yq = load ptr, ptr %i.yp, align 8, !tbaa !96 ; 3 uses
  %.not325 = icmp eq ptr %i.yq, null
  br i1 %.not325, label %bb.fp, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yq, i64 4
  %i.ys = load i32, ptr %i.yr, align 4, !tbaa !102
  %.not326 = icmp eq i32 %i.ys, 1
  %i.yt = getelementptr inbounds nuw i8, ptr %i.yq, i64 8
  %i.yu = load i32, ptr %i.yt, align 4, !tbaa !103 ; 2 uses
  %.not327 = icmp eq i32 %i.yu, 1
  %or.cond568 = select i1 %.not326, i1 %.not327, i1 false
  br i1 %or.cond568, label %bb.fp, label %._crit_edge468

._crit_edge468:                                   ; preds = %bb.fo
  %i.yv = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.bb
  %i.yw = select i1 %i.k, i64 2, i64 0
  %i.yx = lshr i64 %i.x, %i.yw
  %i.yy = trunc i64 %i.yx to i32
  call void @_ZN2cv10ExrDecoder9UpSampleYEPhiii(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef nonnull %i.yv, i32 noundef 3, i32 noundef %i.yy, i32 noundef %i.yu)
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %._crit_edge468, %bb.fn
  %i.yz = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.za = load ptr, ptr %i.yz, align 8, !tbaa !97 ; 3 uses
  %.not328 = icmp eq ptr %i.za, null
  br i1 %.not328, label %bb.fz, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.zb = getelementptr inbounds nuw i8, ptr %i.za, i64 4
  %i.zc = load i32, ptr %i.zb, align 4, !tbaa !102
  %.not329 = icmp eq i32 %i.zc, 1
  %i.zd = getelementptr inbounds nuw i8, ptr %i.za, i64 8
  %i.ze = load i32, ptr %i.zd, align 4, !tbaa !103 ; 2 uses
  %.not330 = icmp eq i32 %i.ze, 1
  %or.cond569 = select i1 %.not329, i1 %.not330, i1 false
  br i1 %or.cond569, label %bb.fz, label %._crit_edge471

._crit_edge471:                                   ; preds = %bb.fq
  %i.zf = shl nuw nsw i64 %i.bb, 1
  %i.zg = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.zf
  %i.zh = select i1 %i.k, i64 2, i64 0
  %i.zi = lshr i64 %i.x, %i.zh
  %i.zj = trunc i64 %i.zi to i32
  call void @_ZN2cv10ExrDecoder9UpSampleYEPhiii(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef nonnull %i.zg, i32 noundef 3, i32 noundef %i.zj, i32 noundef %i.ze)
  br label %bb.fz

bb.fr:                                            ; preds = %bb.fk
  %i.zk = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.zl = load ptr, ptr %i.zk, align 8, !tbaa !97 ; 3 uses
  %.not313 = icmp eq ptr %i.zl, null
  br i1 %.not313, label %bb.ft, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zl, i64 4
  %i.zn = load i32, ptr %i.zm, align 4, !tbaa !102
  %.not314 = icmp eq i32 %i.zn, 1
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zl, i64 8
  %i.zp = load i32, ptr %i.zo, align 4, !tbaa !103 ; 2 uses
  %.not315 = icmp eq i32 %i.zp, 1
  %or.cond570 = select i1 %.not314, i1 %.not315, i1 false
  br i1 %or.cond570, label %bb.ft, label %._crit_edge456

._crit_edge456:                                   ; preds = %bb.fs
  %i.zq = select i1 %i.k, i64 2, i64 0
  %i.zr = lshr i64 %i.x, %i.zq
  %i.zs = trunc i64 %i.zr to i32
  call void @_ZN2cv10ExrDecoder9UpSampleYEPhiii(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef %i.v, i32 noundef 3, i32 noundef %i.zs, i32 noundef %i.zp)
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %._crit_edge456, %bb.fr
  %i.zt = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.zu = load ptr, ptr %i.zt, align 8, !tbaa !96 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN2cv10ExrDecoder11ChromaToBGREPfiii:bb.a
  %i.bu = load float, ptr %i.h, align 4, !tbaa !16
  %i.bv = fpext float %i.bu to double
  %i.bw = fmul double %i.bo, %i.bi                ; 2 uses
  %i.bx = fneg double %i.bw
  %i.by = tail call double @llvm.fmuladd.f64(double %i.bx, double %i.bq, double %i.bi)
  %i.bz = tail call double @llvm.fmuladd.f64(double %i.bt, double %i.bs, double %i.by)
  %i.ca = fdiv double %i.bz, %i.bv
  %i.cb = insertelement <2 x double> poison, double %i.bw, i64 0
  %i.cc = insertelement <2 x double> %i.cb, double %i.ca, i64 1
  %i.cd = fptrunc <2 x double> %i.cc to <2 x float>
  store <2 x float> %i.cd, ptr %gep108.lver.orig, align 4, !tbaa !16
  %i.ce = fptrunc double %i.bn to float
  store float %i.ce, ptr %i.bj, align 4, !tbaa !16
  %indvars.iv.next95.lver.orig = add nuw nsw i64 %indvars.iv94.lver.orig, 1 ; 2 uses
  %exitcond.not.lver.orig = icmp eq i64 %indvars.iv.next95.lver.orig, %wide.trip.count
  br i1 %exitcond.not.lver.orig, label %._crit_edge, label %.ph.lver.orig, !llvm.loop !182

.ph:                                              ; preds = %.lver.check
  %load_initial115 = load float, ptr %scevgep114, align 4
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.ph
  %store_forwarded116 = phi float [ %load_initial115, %.ph ], [ %i.de, %bb.b ]
  %indvars.iv94 = phi i64 [ 0, %.ph ], [ %indvars.iv.next95, %bb.b ] ; 2 uses
  %i.cf = mul nuw nsw i64 %indvars.iv94, %i.k
  %gep108 = getelementptr [4 x i8], ptr %invariant.gep107, i64 %i.cf ; 3 uses
  %i.cg = load float, ptr %gep108, align 4, !tbaa !16
  %i.ch = fpext float %i.cg to double
  %i.ci = fpext float %store_forwarded116 to double ; 3 uses
  %i.cj = getelementptr i8, ptr %gep108, i64 8    ; 2 uses
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !16
  %i.cl = fpext float %i.ck to double
  %i.cm = fadd double %i.cl, 1.000000e+00
  %i.cn = fmul double %i.cm, %i.ci                ; 2 uses
  %i.co = fadd double %i.ch, 1.000000e+00
  %i.cp = load float, ptr %i.f, align 4, !tbaa !16
  %i.cq = fpext float %i.cp to double
  %i.cr = load float, ptr %i.g, align 4, !tbaa !16
  %i.cs = fpext float %i.cr to double
  %i.ct = fneg double %i.cn
  %i.cu = load float, ptr %i.h, align 4, !tbaa !16
  %i.cv = fpext float %i.cu to double
  %i.cw = fmul double %i.co, %i.ci                ; 2 uses
  %i.cx = fneg double %i.cw
  %i.cy = tail call double @llvm.fmuladd.f64(double %i.cx, double %i.cq, double %i.ci)
  %i.cz = tail call double @llvm.fmuladd.f64(double %i.ct, double %i.cs, double %i.cy)
  %i.da = fdiv double %i.cz, %i.cv
  %i.db = insertelement <2 x double> poison, double %i.cw, i64 0
  %i.dc = insertelement <2 x double> %i.db, double %i.da, i64 1
  %i.dd = fptrunc <2 x double> %i.dc to <2 x float>
  store <2 x float> %i.dd, ptr %gep108, align 4, !tbaa !16
  %i.de = fptrunc double %i.cn to float           ; 2 uses
  store float %i.de, ptr %i.cj, align 4, !tbaa !16
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next95, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !182

._crit_edge90:                                    ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret void

._crit_edge:                                      ; preds = %.lr.ph.split.lver.orig, %.lr.ph.split, %.ph.lver.orig, %bb.b, %.preheader
  %i.df = phi i32 [ %i.eh, %.lr.ph.split ], [ %i.o, %.preheader ], [ %i.o, %bb.b ], [ %i.o, %.ph.lver.orig ], [ %i.ba, %.lr.ph.split.lver.orig ]
  %i.dg = phi i32 [ %i.eh, %.lr.ph.split ], [ %i.p, %.preheader ], [ %i.o, %bb.b ], [ %i.o, %.ph.lver.orig ], [ %i.ba, %.lr.ph.split.lver.orig ]
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1 ; 2 uses
  %exitcond101.not = icmp eq i64 %indvars.iv.next98, %wide.trip.count100
  br i1 %exitcond101.not, label %._crit_edge90, label %.preheader, !llvm.loop !183

.lr.ph.split:                                     ; preds = %.lr.ph.split.ph, %.lr.ph.split
  %store_forwarded = phi i32 [ %load_initial, %.lr.ph.split.ph ], [ %i.eg, %.lr.ph.split ]
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.ph ], [ %indvars.iv.next, %.lr.ph.split ] ; 2 uses
  %i.dh = mul nuw nsw i64 %indvars.iv, %i.k
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.dh ; 4 uses
  %i.di = load i32, ptr %gep, align 4, !tbaa !14
  %i.dj = uitofp i32 %i.di to double
  %i.dk = getelementptr i8, ptr %gep, i64 4
  %i.dl = uitofp i32 %store_forwarded to double   ; 3 uses
  %i.dm = getelementptr i8, ptr %gep, i64 8       ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !14
  %i.do = uitofp i32 %i.dn to double
  %i.dp = fadd nnan double %i.do, 1.000000e+00
  %i.dq = fmul double %i.dp, %i.dl                ; 2 uses
  %i.dr = fadd nnan double %i.dj, 1.000000e+00
  %i.ds = fmul double %i.dr, %i.dl                ; 2 uses
  %i.dt = fneg double %i.ds
  %i.du = tail call double @llvm.fmuladd.f64(double %i.dt, double %i.w, double %i.dl)
  %i.dv = fneg double %i.dq
  %i.dw = tail call double @llvm.fmuladd.f64(double %i.dv, double %i.x, double %i.du)
  %i.dx = fdiv double %i.dw, %i.y
  %i.dy = insertelement <2 x double> poison, double %i.ds, i64 0
  %i.dz = tail call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.dy)
  %i.ea = tail call i32 @llvm.smax.i32(i32 %i.dz, i32 0)
  store i32 %i.ea, ptr %gep, align 4, !tbaa !14
  %i.eb = insertelement <2 x double> poison, double %i.dx, i64 0
  %i.ec = tail call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.eb)
  %i.ed = tail call i32 @llvm.smax.i32(i32 %i.ec, i32 0)
  store i32 %i.ed, ptr %i.dk, align 4, !tbaa !14
  %i.ee = insertelement <2 x double> poison, double %i.dq, i64 0
  %i.ef = tail call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.ee)
  %i.eg = tail call i32 @llvm.smax.i32(i32 %i.ef, i32 0) ; 2 uses
  store i32 %i.eg, ptr %i.dm, align 4, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.eh = load i32, ptr %i.b, align 8, !tbaa !93  ; 3 uses
  %i.ei = sext i32 %i.eh to i64
  %i.ej = icmp slt i64 %indvars.iv.next, %i.ei
  br i1 %i.ej, label %.lr.ph.split, label %._crit_edge, !llvm.loop !182
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN2cv10ExrDecoder9UpSampleXEPfii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(832) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !93   ; 2 uses
  %i.c = add nsw i32 %i.b, -1
  %i.d = sdiv i32 %i.c, %3                        ; 2 uses
  %i.e = icmp sgt i32 %i.d, -1
  %i.f = icmp sgt i32 %3, 0
  %or.cond = and i1 %i.e, %i.f
  br i1 %or.cond, label %.preheader.lr.ph.split, label %._crit_edge30.split

.preheader.lr.ph.split:                           ; preds = %bb.a
  %.02327 = sub nsw i32 %i.b, %3                  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.h = load i32, ptr %i.g, align 8
  %i.i = icmp eq i32 %i.h, 2
  %i.j = sext i32 %2 to i64                       ; 12 uses
  %i.k = zext nneg i32 %i.d to i64                ; 2 uses
  %wide.trip.count41 = zext nneg i32 %3 to i64    ; 10 uses
  br i1 %i.i, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph.split
  %min.iters.check = icmp ugt i32 %3, 7
  %ident.check.not = icmp eq i32 %2, 1
  %or.cond65 = and i1 %min.iters.check, %ident.check.not
  %n.vec = and i64 %wide.trip.count41, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count41
  %xtraiter = and i64 %wide.trip.count41, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph.split
  %min.iters.check53 = icmp ugt i32 %3, 7
  %ident.check51.not = icmp eq i32 %2, 1
  %or.cond64 = and i1 %min.iters.check53, %ident.check51.not
  %n.vec55 = and i64 %wide.trip.count41, 2147483640 ; 3 uses
  %cmp.n62 = icmp eq i64 %n.vec55, %wide.trip.count41
  %xtraiter67 = and i64 %wide.trip.count41, 3     ; 2 uses
  %lcmp.mod68.not = icmp eq i64 %xtraiter67, 0
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.split.us.us
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %._crit_edge.split.us.us ], [ %i.k, %.preheader.us.preheader ] ; 3 uses
  %.02329.us = phi i32 [ %.023.us, %._crit_edge.split.us.us ], [ %.02327, %.preheader.us.preheader ] ; 2 uses
  %i.l = mul nsw i64 %indvars.iv43, %i.j
  %i.m = getelementptr inbounds [4 x i8], ptr %1, i64 %i.l
  %i.n = sext i32 %.02329.us to i64               ; 6 uses
  %.pre46 = load float, ptr %i.m, align 4, !tbaa !16 ; 6 uses
  br i1 %or.cond64, label %vector.ph54, label %scalar.ph52.preheader

vector.ph54:                                      ; preds = %.preheader.us
  %broadcast.splatinsert56 = insertelement <4 x float> poison, float %.pre46, i64 0
  %broadcast.splat57 = shufflevector <4 x float> %broadcast.splatinsert56, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep74 = getelementptr [4 x i8], ptr %1, i64 %i.n
  br label %vector.body58

vector.body58:                                    ; preds = %vector.body58, %vector.ph54
  %index59 = phi i64 [ 0, %vector.ph54 ], [ %index.next60, %vector.body58 ] ; 2 uses
  %gep75 = getelementptr [4 x i8], ptr %invariant.gep74, i64 %index59 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %gep75, i64 16
  store <4 x float> %broadcast.splat57, ptr %gep75, align 4, !tbaa !16
  store <4 x float> %broadcast.splat57, ptr %i.o, align 4, !tbaa !16
  %index.next60 = add nuw i64 %index59, 8         ; 2 uses
  %i.p = icmp eq i64 %index.next60, %n.vec55
  br i1 %i.p, label %middle.block61, label %vector.body58, !llvm.loop !184

middle.block61:                                   ; preds = %vector.body58
  br i1 %cmp.n62, label %._crit_edge.split.us.us, label %scalar.ph52.preheader

scalar.ph52.preheader:                            ; preds = %.preheader.us, %middle.block61
  %indvars.iv38.ph = phi i64 [ 0, %.preheader.us ], [ %n.vec55, %middle.block61 ] ; 3 uses
  br i1 %lcmp.mod68.not, label %scalar.ph52.prol.loopexit, label %scalar.ph52.prol

scalar.ph52.prol:                                 ; preds = %scalar.ph52.preheader, %scalar.ph52.prol
  %indvars.iv38.prol = phi i64 [ %indvars.iv.next39.prol, %scalar.ph52.prol ], [ %indvars.iv38.ph, %scalar.ph52.preheader ] ; 2 uses
  %prol.iter69 = phi i64 [ %prol.iter69.next, %scalar.ph52.prol ], [ 0, %scalar.ph52.preheader ]
  %i.q = add nsw i64 %indvars.iv38.prol, %i.n
  %i.r = mul nsw i64 %i.q, %i.j
  %i.s = getelementptr inbounds [4 x i8], ptr %1, i64 %i.r
  store float %.pre46, ptr %i.s, align 4, !tbaa !16
  %indvars.iv.next39.prol = add nuw nsw i64 %indvars.iv38.prol, 1 ; 2 uses
  %prol.iter69.next = add i64 %prol.iter69, 1     ; 2 uses
  %prol.iter69.cmp.not = icmp eq i64 %prol.iter69.next, %xtraiter67
  br i1 %prol.iter69.cmp.not, label %scalar.ph52.prol.loopexit, label %scalar.ph52.prol, !llvm.loop !185

scalar.ph52.prol.loopexit:                        ; preds = %scalar.ph52.prol, %scalar.ph52.preheader
  %indvars.iv38.unr = phi i64 [ %indvars.iv38.ph, %scalar.ph52.preheader ], [ %indvars.iv.next39.prol, %scalar.ph52.prol ]
  %i.t = sub nsw i64 %indvars.iv38.ph, %wide.trip.count41
  %i.u = icmp ugt i64 %i.t, -4
  br i1 %i.u, label %._crit_edge.split.us.us, label %scalar.ph52.preheader.new

scalar.ph52.preheader.new:                        ; preds = %scalar.ph52.prol.loopexit
  %invariant.op76 = add i64 1, %i.n
  %invariant.op78 = add i64 2, %i.n
  %invariant.op80 = add i64 3, %i.n
  br label %scalar.ph52

scalar.ph52:                                      ; preds = %scalar.ph52, %scalar.ph52.preheader.new
  %indvars.iv38 = phi i64 [ %indvars.iv38.unr, %scalar.ph52.preheader.new ], [ %indvars.iv.next39.3, %scalar.ph52 ] ; 5 uses
  %i.v = add nsw i64 %indvars.iv38, %i.n
  %i.w = mul nsw i64 %i.v, %i.j
  %i.x = getelementptr inbounds [4 x i8], ptr %1, i64 %i.w
  store float %.pre46, ptr %i.x, align 4, !tbaa !16
  %.reass77 = add i64 %indvars.iv38, %invariant.op76
  %i.y = mul nsw i64 %.reass77, %i.j
  %i.z = getelementptr inbounds [4 x i8], ptr %1, i64 %i.y
  store float %.pre46, ptr %i.z, align 4, !tbaa !16
  %.reass79 = add i64 %indvars.iv38, %invariant.op78
  %i.aa = mul nsw i64 %.reass79, %i.j
  %i.ab = getelementptr inbounds [4 x i8], ptr %1, i64 %i.aa
  store float %.pre46, ptr %i.ab, align 4, !tbaa !16
  %.reass81 = add i64 %indvars.iv38, %invariant.op80
  %i.ac = mul nsw i64 %.reass81, %i.j
  %i.ad = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ac
  store float %.pre46, ptr %i.ad, align 4, !tbaa !16
  %indvars.iv.next39.3 = add nuw nsw i64 %indvars.iv38, 4 ; 2 uses
  %exitcond42.not.3 = icmp eq i64 %indvars.iv.next39.3, %wide.trip.count41
  br i1 %exitcond42.not.3, label %._crit_edge.split.us.us, label %scalar.ph52, !llvm.loop !186

._crit_edge.split.us.us:                          ; preds = %scalar.ph52.prol.loopexit, %scalar.ph52, %middle.block61
  %indvars.iv.next44 = add nsw i64 %indvars.iv43, -1
  %.023.us = sub nsw i32 %.02329.us, %3
  %i.ae = icmp sgt i64 %indvars.iv43, 0
  br i1 %i.ae, label %.preheader.us, label %._crit_edge30.split, !llvm.loop !3

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge.split
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %._crit_edge.split ], [ %i.k, %.preheader.preheader ] ; 3 uses
  %.02329 = phi i32 [ %.023, %._crit_edge.split ], [ %.02327, %.preheader.preheader ] ; 2 uses
  %i.af = mul nsw i64 %indvars.iv35, %i.j
  %i.ag = getelementptr inbounds [4 x i8], ptr %1, i64 %i.af
  %i.ah = sext i32 %.02329 to i64                 ; 6 uses
  %.pre = load i32, ptr %i.ag, align 4, !tbaa !14 ; 6 uses
  br i1 %or.cond65, label %vector.ph, label %scalar.ph.preheader

vector.ph:                                        ; preds = %.preheader
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.pre, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %1, i64 %i.ah
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %gep, align 4, !tbaa !14
  store <4 x i32> %broadcast.splat, ptr %i.ai, align 4, !tbaa !14
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !187

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.split, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ak = add nsw i64 %indvars.iv.prol, %i.ah
  %i.al = mul nsw i64 %i.ak, %i.j
  %i.am = getelementptr inbounds [4 x i8], ptr %1, i64 %i.al
  store i32 %.pre, ptr %i.am, align 4, !tbaa !14
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !188

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.an = sub nsw i64 %indvars.iv.ph, %wide.trip.count41
  %i.ao = icmp ugt i64 %i.an, -4
  br i1 %i.ao, label %._crit_edge.split, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %i.ah
  %invariant.op70 = add i64 2, %i.ah
  %invariant.op72 = add i64 3, %i.ah
  br label %scalar.ph

._crit_edge30.split:                              ; preds = %._crit_edge.split, %._crit_edge.split.us.us, %bb.a
  ret void

._crit_edge.split:                                ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next36 = add nsw i64 %indvars.iv35, -1
  %.023 = sub nsw i32 %.02329, %3
  %i.ap = icmp sgt i64 %indvars.iv35, 0
  br i1 %i.ap, label %.preheader, label %._crit_edge30.split, !llvm.loop !3

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.unr, %scalar.ph.preheader.new ], [ %indvars.iv.next.3, %scalar.ph ] ; 5 uses
  %i.aq = add nsw i64 %indvars.iv, %i.ah
  %i.ar = mul nsw i64 %i.aq, %i.j
  %i.as = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ar
  store i32 %.pre, ptr %i.as, align 4, !tbaa !14
  %.reass = add i64 %indvars.iv, %invariant.op
  %i.at = mul nsw i64 %.reass, %i.j
  %i.au = getelementptr inbounds [4 x i8], ptr %1, i64 %i.at
  store i32 %.pre, ptr %i.au, align 4, !tbaa !14
  %.reass71 = add i64 %indvars.iv, %invariant.op70
  %i.av = mul nsw i64 %.reass71, %i.j
  %i.aw = getelementptr inbounds [4 x i8], ptr %1, i64 %i.av
  store i32 %.pre, ptr %i.aw, align 4, !tbaa !14
  %.reass73 = add i64 %indvars.iv, %invariant.op72
  %i.ax = mul nsw i64 %.reass73, %i.j
  %i.ay = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ax
  store i32 %.pre, ptr %i.ay, align 4, !tbaa !14
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count41
  br i1 %exitcond.not.3, label %._crit_edge.split, label %scalar.ph, !llvm.loop !189
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN2cv10ExrDecoder9RGBToGrayEPfS1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(832) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.b = load i32, ptr %i.a, align 8, !tbaa !74
  %i.c = icmp eq i32 %i.b, 2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 820
  %i.e = load i8, ptr %i.d, align 4, !tbaa !105, !range !89, !noundef !90
  %i.f = trunc nuw i8 %i.e to i1                  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !93   ; 3 uses
  %i.i = icmp sgt i32 %i.h, 0                     ; 4 uses
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  br i1 %i.f, label %.preheader, label %.preheader60

.preheader60:                                     ; preds = %bb.b
  br i1 %i.i, label %.lr.ph76, label %.loopexit

.lr.ph76:                                         ; preds = %.preheader60
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 792
  br label %bb.c

.preheader:                                       ; preds = %bb.b
  br i1 %i.i, label %.lr.ph79, label %.loopexit

.lr.ph79:                                         ; preds = %.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 784 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 792 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.h to i64    ; 5 uses
  %min.iters.check = icmp ult i32 %i.h, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph79
  %i.p = shl nuw nsw i64 %wide.trip.count, 2
  %scevgep = getelementptr i8, ptr %2, i64 %i.p   ; 2 uses
  %i.q = mul nuw nsw i64 %wide.trip.count, 12
  %scevgep119 = getelementptr i8, ptr %1, i64 %i.q
  %scevgep120 = getelementptr inbounds nuw i8, ptr %0, i64 804
  %bound0 = icmp ult ptr %2, %scevgep119
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0121 = icmp ult ptr %2, %scevgep120
  %bound1122 = icmp ult ptr %i.m, %scevgep
  %found.conflict123 = and i1 %bound0121, %bound1122
  %conflict.rdx = or i1 %found.conflict, %found.conflict123
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 4 uses
  %i.r = mul nuw nsw i64 %n.vec, 3
  %i.s = load <4 x float>, ptr %i.n, align 8
  %broadcast.splat125 = shufflevector <4 x float> %i.s, <4 x float> poison, <4 x i32> zeroinitializer
  %i.t = load <4 x float>, ptr %i.o, align 8
  %broadcast.splat = shufflevector <4 x float> %i.t, <4 x float> poison, <4 x i32> zeroinitializer
  %i.u = load <4 x float>, ptr %i.m, align 8
  %broadcast.splat127 = shufflevector <4 x float> %i.u, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.v = mul nuw i64 %index, 3                    ; 4 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.v ; 3 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.v ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  %i.z = getelementptr [4 x i8], ptr %1, i64 %i.v ; 3 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 24
  %i.ab = getelementptr [4 x i8], ptr %1, i64 %i.v ; 3 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 36
  %i.ad = load float, ptr %i.w, align 4, !tbaa !16, !alias.scope !200
  %i.ae = load float, ptr %i.y, align 4, !tbaa !16, !alias.scope !200
  %i.af = load float, ptr %i.aa, align 4, !tbaa !16, !alias.scope !200
  %i.ag = load float, ptr %i.ac, align 4, !tbaa !16, !alias.scope !200
  %i.ah = insertelement <4 x float> poison, float %i.ad, i64 0
  %i.ai = insertelement <4 x float> %i.ah, float %i.ae, i64 1
  %i.aj = insertelement <4 x float> %i.ai, float %i.af, i64 2
  %i.ak = insertelement <4 x float> %i.aj, float %i.ag, i64 3
  %i.al = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.an = getelementptr i8, ptr %i.z, i64 28
  %i.ao = getelementptr i8, ptr %i.ab, i64 40
  %i.ap = load float, ptr %i.al, align 4, !tbaa !16, !alias.scope !200
  %i.aq = load float, ptr %i.am, align 4, !tbaa !16, !alias.scope !200
  %i.ar = load float, ptr %i.an, align 4, !tbaa !16, !alias.scope !200
  %i.as = load float, ptr %i.ao, align 4, !tbaa !16, !alias.scope !200
  %i.at = insertelement <4 x float> poison, float %i.ap, i64 0
  %i.au = insertelement <4 x float> %i.at, float %i.aq, i64 1
  %i.av = insertelement <4 x float> %i.au, float %i.ar, i64 2
  %i.aw = insertelement <4 x float> %i.av, float %i.as, i64 3
  %i.ax = fmul <4 x float> %i.aw, %broadcast.splat
  %i.ay = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ak, <4 x float> %broadcast.splat125, <4 x float> %i.ax)
  %i.az = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.x, i64 20
  %i.bb = getelementptr i8, ptr %i.z, i64 32
  %i.bc = getelementptr i8, ptr %i.ab, i64 44
  %i.bd = load float, ptr %i.az, align 4, !tbaa !16, !alias.scope !200
  %i.be = load float, ptr %i.ba, align 4, !tbaa !16, !alias.scope !200
  %i.bf = load float, ptr %i.bb, align 4, !tbaa !16, !alias.scope !200
  %i.bg = load float, ptr %i.bc, align 4, !tbaa !16, !alias.scope !200
  %i.bh = insertelement <4 x float> poison, float %i.bd, i64 0
  %i.bi = insertelement <4 x float> %i.bh, float %i.be, i64 1
  %i.bj = insertelement <4 x float> %i.bi, float %i.bf, i64 2
  %i.bk = insertelement <4 x float> %i.bj, float %i.bg, i64 3
  %i.bl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bk, <4 x float> %broadcast.splat127, <4 x float> %i.ay)
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index
  store <4 x float> %i.bl, ptr %i.bm, align 4, !tbaa !16, !alias.scope !201, !noalias !202
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !194

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph79, %middle.block
  %indvars.iv107.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph79 ], [ %n.vec, %middle.block ]
  %indvars.iv105.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph79 ], [ %i.r, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv107 = phi i64 [ %indvars.iv.next108, %scalar.ph ], [ %indvars.iv107.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv105 = phi i64 [ %indvars.iv.next106, %scalar.ph ], [ %indvars.iv105.ph, %scalar.ph.preheader ] ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv105 ; 3 uses
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !16
  %i.bq = load float, ptr %i.n, align 8, !tbaa !16
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.bs = load float, ptr %i.br, align 4, !tbaa !16
  %i.bt = load float, ptr %i.o, align 8, !tbaa !16
  %i.bu = fmul float %i.bs, %i.bt
  %i.bv = tail call float @llvm.fmuladd.f32(float %i.bp, float %i.bq, float %i.bu)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !16
  %i.by = load float, ptr %i.m, align 8, !tbaa !16
  %i.bz = tail call float @llvm.fmuladd.f32(float %i.bx, float %i.by, float %i.bv)
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv107
  store float %i.bz, ptr %i.ca, align 4, !tbaa !16
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1 ; 2 uses
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 3
  %exitcond.not = icmp eq i64 %indvars.iv.next108, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !195

bb.c:                                             ; preds = %.lr.ph76, %bb.c
  %indvars.iv100 = phi i64 [ 0, %.lr.ph76 ], [ %indvars.iv.next101, %bb.c ] ; 2 uses
  %indvars.iv98 = phi i64 [ 0, %.lr.ph76 ], [ %indvars.iv.next99, %bb.c ] ; 2 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv98 ; 3 uses
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !16
  %i.cd = load float, ptr %i.k, align 8, !tbaa !16
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !16
  %i.cg = load float, ptr %i.l, align 8, !tbaa !16
  %i.ch = fmul float %i.cf, %i.cg
  %i.ci = tail call float @llvm.fmuladd.f32(float %i.cc, float %i.cd, float %i.ch)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !16
  %i.cl = load float, ptr %i.j, align 8, !tbaa !16
  %i.cm = tail call float @llvm.fmuladd.f32(float %i.ck, float %i.cl, float %i.ci)
  %i.cn = fptoui float %i.cm to i8
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv100
  store i8 %i.cn, ptr %i.co, align 1, !tbaa !86
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1 ; 2 uses
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 3
  %i.cp = load i32, ptr %i.g, align 8, !tbaa !93
  %i.cq = sext i32 %i.cp to i64
  %i.cr = icmp slt i64 %indvars.iv.next101, %i.cq
  br i1 %i.cr, label %bb.c, label %.loopexit, !llvm.loop !196

bb.d:                                             ; preds = %bb.a
  br i1 %i.f, label %.preheader64, label %.preheader65

.preheader65:                                     ; preds = %bb.d
  br i1 %i.i, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader65
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 792
  br label %bb.f

.preheader64:                                     ; preds = %bb.d
  br i1 %i.i, label %.lr.ph70, label %.loopexit

.preheader62:                                     ; preds = %.lr.ph70
  %i.cv = icmp sgt i32 %i.df, 0
  br i1 %i.cv, label %.lr.ph73, label %.loopexit

.lr.ph73:                                         ; preds = %.preheader62
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 800
end_hunk_1
