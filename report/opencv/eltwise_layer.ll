Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/eltwise_layer?download=true
inline.NumInlined: 915
inline.NumDeleted: 385
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZNK2cv3dnn16EltwiseLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #23
  br label %common.resume

bb.aq:                                            ; preds = %bb.ad
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %.0213259, i32 %i.av)
  br label %bb.av

.split266.us:                                     ; preds = %bb.ad, %_ZNK2cv8MatShapeixEm.exit159.us
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull @.str.61, ptr noundef nonnull align 1 dereferenceable(1) %28)
          to label %bb.ar unwind label %bb.at

bb.ar:                                            ; preds = %.split266.us
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull @__func__._ZNK2cv3dnn16EltwiseLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_, ptr noundef nonnull @.str.9, i32 noundef 232) #25
          to label %bb.as unwind label %bb.au

bb.as:                                            ; preds = %bb.ar
  unreachable

bb.at:                                            ; preds = %.split266.us
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168

bb.au:                                            ; preds = %bb.ar
  %i.co = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cp = load ptr, ptr %27, align 8, !tbaa !59   ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.cr = icmp eq ptr %i.cp, %i.cq
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166: ; preds = %bb.au
  %i.cs = load i64, ptr %i.cq, align 8, !tbaa !53
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.ct) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166, %bb.at
  %.pn105 = phi { ptr, i32 } [ %i.cn, %bb.at ], [ %i.co, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166 ], [ %i.co, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #23
  br label %common.resume

bb.av:                                            ; preds = %bb.ad, %bb.al, %bb.aq, %bb.ag
  %.1 = phi i32 [ %i.av, %bb.ag ], [ %.0213259, %bb.al ], [ %.0213259, %bb.ad ], [ %.sroa.speculated, %bb.aq ] ; 2 uses
  %i.cu = add nuw i64 %.069261, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.cu, %i.g
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !185

bb.aw:                                            ; preds = %._crit_edge
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !70
  br label %bb.ax

bb.ax:                                            ; preds = %._crit_edge, %bb.aw
  %i.cx = phi i32 [ %i.cw, %bb.aw ], [ 0, %._crit_edge ]
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i32 %i.cx, ptr %i.cy, align 4, !tbaa !71
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i32 %.0213.lcssa, ptr %i.cz, align 8, !tbaa !48
  tail call void @_ZNSt6vectorIN2cv8MatShapeESaIS1_EE14_M_fill_assignEmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 1, ptr noundef nonnull align 4 dereferenceable(52) %i.c)
  %i.da = load ptr, ptr %3, align 8, !tbaa !117   ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !103
  %narrow.i169 = tail call i32 @llvm.smax.i32(i32 %i.db, i32 1) ; 2 uses
  %i.dc = zext i1 %i.as to i32
  %i.dd = icmp samesign ugt i32 %narrow.i169, %i.dc
  br i1 %i.dd, label %_ZN2cv8MatShapeixEm.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.38, ptr noundef nonnull align 1 dereferenceable(1) %12)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.39, i32 noundef 97) #25
          to label %bb.az unwind label %bb.ba

bb.az:                                            ; preds = %bb.ay
  unreachable

bb.ba:                                            ; preds = %bb.ay
  %i.de = landingpad { ptr, i32 }
          cleanup
  %i.df = load ptr, ptr %11, align 8, !tbaa !59   ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.dh = icmp eq ptr %i.df, %i.dg
  br i1 %i.dh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i172, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i171

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i171: ; preds = %bb.ba
  %i.di = load i64, ptr %i.dg, align 8, !tbaa !53
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.dj) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i172

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i172: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i171
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %common.resume

_ZN2cv8MatShapeixEm.exit:                         ; preds = %bb.ax
  %i.dk = zext i1 %i.as to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %i.da, i64 12 ; 2 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.dk
  store i32 %.0213.lcssa, ptr %i.dm, align 4, !tbaa !92
  %i.dn = load ptr, ptr %i.a, align 8, !tbaa !116 ; 2 uses
  %i.do = load ptr, ptr %1, align 8, !tbaa !117   ; 7 uses
  %i.dp = ptrtoint ptr %i.dn to i64
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = sub i64 %i.dp, %i.dq
  %i.ds = sdiv exact i64 %i.dr, 52                ; 3 uses
  %.not = icmp eq ptr %i.dn, %i.do
  br i1 %.not, label %.loopexit, label %.lr.ph277

.lr.ph277:                                        ; preds = %_ZN2cv8MatShapeixEm.exit
  %i.dt = select i1 %i.as, i32 2, i32 1           ; 2 uses
  %.not.i = icmp slt i32 %.fr299, %i.dt
  %i.du = icmp samesign ugt i32 %.fr299, 2
  br i1 %.not.i, label %bb.bf, label %.lr.ph277.split

.lr.ph277.split:                                  ; preds = %.lr.ph277
  %.not28.i = icmp samesign ugt i32 %.fr299, %i.dt
  br i1 %.not28.i, label %.lr.ph277.split.split.us, label %.lr.ph277.split.split

.lr.ph277.split.split.us:                         ; preds = %.lr.ph277.split
  br i1 %i.du, label %.lr.ph277.split.split.us.split.us, label %.lr.ph277.split.split.us.split

.lr.ph277.split.split.us.split.us:                ; preds = %.lr.ph277.split.split.us, %_ZN2cv3dnn14dnn5_v20260605L9isAllOnesERKNS_8MatShapeEii.exit.thread.us.us
  %.065276.us.us = phi i64 [ %i.el, %_ZN2cv3dnn14dnn5_v20260605L9isAllOnesERKNS_8MatShapeEii.exit.thread.us.us ], [ 0, %.lr.ph277.split.split.us ] ; 5 uses
  %.066275.us.us = phi i8 [ %spec.select117222.us.us, %_ZN2cv3dnn14dnn5_v20260605L9isAllOnesERKNS_8MatShapeEii.exit.thread.us.us ], [ 0, %.lr.ph277.split.split.us ] ; 2 uses
  %.067274.us.us = phi i64 [ %spec.select116221.us.us, %_ZN2cv3dnn14dnn5_v20260605L9isAllOnesERKNS_8MatShapeEii.exit.thread.us.us ], [ 0, %.lr.ph277.split.split.us ] ; 2 uses
  %i.dv = getelementptr inbounds nuw [52 x i8], ptr %i.do, i64 %.065276.us.us ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !103 ; 2 uses
  %.not23.i.us.us = icmp sgt i32 %narrow.i, %i.dw
  br i1 %.not23.i.us.us, label %.split283.us, label %.preheader.split.i.us.us

.preheader.split.i.us.us:                         ; preds = %.lr.ph277.split.split.us.split.us
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 12 ; 2 uses
  br label %_ZNK2cv8MatShapeixEm.exit.i.us.us

_ZNK2cv8MatShapeixEm.exit.i.us.us:                ; preds = %bb.bb, %.preheader.split.i.us.us
  %indvars.iv.i.us.us = phi i64 [ 2, %.preheader.split.i.us.us ], [ %indvars.iv.next.i.us.us, %bb.bb ] ; 2 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %indvars.iv.i.us.us
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !92
  %.not24.i.us.us = icmp eq i32 %i.dz, 1
  br i1 %.not24.i.us.us, label %bb.bb, label %_ZN2cv3dnn14dnn5_v20260605L9isAllOnesERKNS_8MatShapeEii.exit.us.us

bb.bb:                                            ; preds = %_ZNK2cv8MatShapeixEm.exit.i.us.us
  %indvars.iv.next.i.us.us = add nuw nsw i64 %indvars.iv.i.us.us, 1 ; 2 uses
  %exitcond.not.i.us.us = icmp eq i64 %indvars.iv.next.i.us.us, %spec.select.i
  br i1 %exitcond.not.i.us.us, label %_ZN2cv3dnn14dnn5_v20260605L9isAllOnesERKNS_8MatShapeEii.exit.thread.us.us, label %_ZNK2cv8MatShapeixEm.exit.i.us.us, !llvm.loop !2

_ZN2cv3dnn14dnn5_v20260605L9isAllOnesERKNS_8MatShapeEii.exit.us.us: ; preds = %_ZNK2cv8MatShapeixEm.exit.i.us.us
  %i.ea = trunc nuw i8 %.066275.us.us to i1
  %spec.select116.us.us = select i1 %i.ea, i64 %.067274.us.us, i64 %.065276.us.us ; 3 uses
  %.not98.us.us = icmp eq i64 %.065276.us.us, %spec.select116.us.us
  br i1 %.not98.us.us, label %_ZN2cv3dnn14dnn5_v20260605L9isAllOnesERKNS_8MatShapeEii.exit.thread.us.us, label %.preheader223.us.us

.preheader223.us.us:                              ; preds = %_ZN2cv3dnn14dnn5_v20260605L9isAllOnesERKNS_8MatShapeEii.exit.us.us
  %i.eb = getelementptr inbounds nuw [52 x i8], ptr %i.do, i64 %spec.select116.us.us ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !103
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 12
  %i.ee = tail call i32 @llvm.smax.i32(i32 %i.ec, i32 2)
  %umax327 = zext nneg i32 %i.ee to i64
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bd, %.preheader223.us.us
  %.064272.us.us = phi i64 [ 2, %.preheader223.us.us ], [ %i.ek, %bb.bd ] ; 4 uses
  %exitcond328.not = icmp eq i64 %.064272.us.us, %umax327
  br i1 %exitcond328.not, label %.split286.us, label %_ZNK2cv8MatShapeixEm.exit179.us.us

_ZNK2cv8MatShapeixEm.exit179.us.us:               ; preds = %bb.bc
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %.064272.us.us
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !92
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %.064272.us.us
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !92
  %i.ej = icmp eq i32 %i.eg, %i.ei
  br i1 %i.ej, label %bb.bd, label %.split288.us

bb.bd:                                            ; preds = %_ZNK2cv8MatShapeixEm.exit179.us.us
  %i.ek = add nuw nsw i64 %.064272.us.us, 1       ; 2 uses
  %exitcond329.not = icmp eq i64 %i.ek, %spec.select.i
  br i1 %exitcond329.not, label %_ZN2cv3dnn14dnn5_v20260605L9isAllOnesERKNS_8MatShapeEii.exit.thread.us.us, label %bb.bc, !llvm.loop !186

_ZN2cv3dnn14dnn5_v20260605L9isAllOnesERKNS_8MatShapeEii.exit.thread.us.us: ; preds = %bb.bb, %bb.bd, %_ZN2cv3dnn14dnn5_v20260605L9isAllOnesERKNS_8MatShapeEii.exit.us.us
  %spec.select117222.us.us = phi i8 [ 1, %_ZN2cv3dnn14dnn5_v20260605L9isAllOnesERKNS_8MatShapeEii.exit.us.us ], [ 1, %bb.bd ], [ %.066275.us.us, %bb.bb ] ; 2 uses
  %spec.select116221.us.us = phi i64 [ %.065276.us.us, %_ZN2cv3dnn14dnn5_v20260605L9isAllOnesERKNS_8MatShapeEii.exit.us.us ], [ %spec.select116.us.us, %bb.bd ], [ %.067274.us.us, %bb.bb ] ; 2 uses
  %i.el = add nuw i64 %.065276.us.us, 1           ; 2 uses
  %exitcond331.not = icmp eq i64 %i.el, %i.ds
  br i1 %exitcond331.not, label %._crit_edge278, label %.lr.ph277.split.split.us.split.us, !llvm.loop !187

.lr.ph277.split.split.us.split:                   ; preds = %.lr.ph277.split.split.us, %_ZN2cv3dnn14dnn5_v20260605L9isAllOnesERKNS_8MatShapeEii.exit.thread.us
  %.065276.us = phi i64 [ %i.es, %_ZN2cv3dnn14dnn5_v20260605L9isAllOnesERKNS_8MatShapeEii.exit.thread.us ], [ 0, %.lr.ph277.split.split.us ] ; 3 uses
  %.066275.us = phi i8 [ %spec.select117222.us, %_ZN2cv3dnn14dnn5_v20260605L9isAllOnesERKNS_8MatShapeEii.exit.thread.us ], [ 0, %.lr.ph277.split.split.us ] ; 2 uses
  %.067274.us = phi i64 [ %spec.select116221.us, %_ZN2cv3dnn14dnn5_v20260605L9isAllOnesERKNS_8MatShapeEii.exit.thread.us ], [ 0, %.lr.ph277.split.split.us ] ; 2 uses
  %i.em = getelementptr inbounds nuw [52 x i8], ptr %i.do, i64 %.065276.us ; 2 uses
  %i.en = load i32, ptr %i.em, align 4, !tbaa !103 ; 2 uses
  %.not23.i.us = icmp sgt i32 %narrow.i, %i.en
  br i1 %.not23.i.us, label %.split283.us, label %.preheader.split.i.us

.preheader.split.i.us:                            ; preds = %.lr.ph277.split.split.us.split
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 12
  br label %_ZNK2cv8MatShapeixEm.exit.i.us

_ZNK2cv8MatShapeixEm.exit.i.us:                   ; preds = %bb.be, %.preheader.split.i.us
  %indvars.iv.i.us = phi i64 [ 2, %.preheader.split.i.us ], [ %indvars.iv.next.i.us, %bb.be ] ; 2 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %indvars.iv.i.us
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !92
  %.not24.i.us = icmp eq i32 %i.eq, 1
  br i1 %.not24.i.us, label %bb.be, label %_ZN2cv3dnn14dnn5_v20260605L9isAllOnesERKNS_8MatShapeEii.exit.us

bb.be:                                            ; preds = %_ZNK2cv8MatShapeixEm.exit.i.us
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %spec.select.i
  br i1 %exitcond.not.i.us, label %_ZN2cv3dnn14dnn5_v20260605L9isAllOnesERKNS_8MatShapeEii.exit.thread.us, label %_ZNK2cv8MatShapeixEm.exit.i.us, !llvm.loop !2

_ZN2cv3dnn14dnn5_v20260605L9isAllOnesERKNS_8MatShapeEii.exit.us: ; preds = %_ZNK2cv8MatShapeixEm.exit.i.us
  %i.er = trunc nuw i8 %.066275.us to i1
  %spec.select116.us = select i1 %i.er, i64 %.067274.us, i64 %.065276.us
  br label %_ZN2cv3dnn14dnn5_v20260605L9isAllOnesERKNS_8MatShapeEii.exit.thread.us

_ZN2cv3dnn14dnn5_v20260605L9isAllOnesERKNS_8MatShapeEii.exit.thread.us: ; preds = %bb.be, %_ZN2cv3dnn14dnn5_v20260605L9isAllOnesERKNS_8MatShapeEii.exit.us
  %spec.select117222.us = phi i8 [ 1, %_ZN2cv3dnn14dnn5_v20260605L9isAllOnesERKNS_8MatShapeEii.exit.us ], [ %.066275.us, %bb.be ] ; 2 uses
  %spec.select116221.us = phi i64 [ %spec.select116.us, %_ZN2cv3dnn14dnn5_v20260605L9isAllOnesERKNS_8MatShapeEii.exit.us ], [ %.067274.us, %bb.be ] ; 2 uses
  %i.es = add nuw i64 %.065276.us, 1              ; 2 uses
  %exitcond326.not = icmp eq i64 %i.es, %i.ds
  br i1 %exitcond326.not, label %._crit_edge278, label %.lr.ph277.split.split.us.split, !llvm.loop !187

._crit_edge278:                                   ; preds = %_ZN2cv3dnn14dnn5_v20260605L9isAllOnesERKNS_8MatShapeEii.exit.thread.us, %_ZN2cv3dnn14dnn5_v20260605L9isAllOnesERKNS_8MatShapeEii.exit.thread.us.us
  %.067.lcssa = phi i64 [ %spec.select116221.us.us, %_ZN2cv3dnn14dnn5_v20260605L9isAllOnesERKNS_8MatShapeEii.exit.thread.us.us ], [ %spec.select116221.us, %_ZN2cv3dnn14dnn5_v20260605L9isAllOnesERKNS_8MatShapeEii.exit.thread.us ]
  %.066.lcssa = phi i8 [ %spec.select117222.us.us, %_ZN2cv3dnn14dnn5_v20260605L9isAllOnesERKNS_8MatShapeEii.exit.thread.us.us ], [ %spec.select117222.us, %_ZN2cv3dnn14dnn5_v20260605L9isAllOnesERKNS_8MatShapeEii.exit.thread.us ]
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !70
  %i.ev = icmp eq i32 %i.eu, 0
  %i.ew = trunc nuw i8 %.066.lcssa to i1
  %or.cond3 = select i1 %i.ev, i1 %i.ew, i1 false
  %i.ex = icmp sgt i32 %.fr299, 2
  %or.cond = and i1 %or.cond3, %i.ex
  br i1 %or.cond, label %.lr.ph298, label %.loopexit

.lr.ph298:                                        ; preds = %._crit_edge278
  %i.ey = getelementptr inbounds nuw [52 x i8], ptr %i.do, i64 %.067.lcssa ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 12
  %spec.select.i196 = zext nneg i32 %narrow.i169 to i64
  br label %bb.bm

.lr.ph277.split.split:                            ; preds = %.lr.ph277.split, %.preheader.split.i
  %.065276 = phi i64 [ %i.fc, %.preheader.split.i ], [ 0, %.lr.ph277.split ] ; 2 uses
  %i.fa = getelementptr inbounds nuw [52 x i8], ptr %i.do, i64 %.065276
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !103 ; 2 uses
  %.not23.i = icmp sgt i32 %narrow.i, %i.fb
  br i1 %.not23.i, label %.split283.us, label %.preheader.split.i

bb.bf:                                            ; preds = %.lr.ph277
  tail call void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef range(i32 0, 3) 2, i32 noundef %narrow.i, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv3dnn14dnn5_v20260605L9isAllOnesERKNS_8MatShapeEiiE15__cv_check__279) #25
  unreachable

.preheader.split.i:                               ; preds = %.lr.ph277.split.split
  %i.fc = add nuw i64 %.065276, 1                 ; 2 uses
  %exitcond324.not = icmp eq i64 %i.fc, %i.ds
  br i1 %exitcond324.not, label %.loopexit, label %.lr.ph277.split.split, !llvm.loop !187

.split283.us:                                     ; preds = %.lr.ph277.split.split, %.lr.ph277.split.split.us.split, %.lr.ph277.split.split.us.split.us
  %.us-phi284 = phi i32 [ %i.en, %.lr.ph277.split.split.us.split ], [ %i.dw, %.lr.ph277.split.split.us.split.us ], [ %i.fb, %.lr.ph277.split.split ]
  tail call void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef %narrow.i, i32 noundef %.us-phi284, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv3dnn14dnn5_v20260605L9isAllOnesERKNS_8MatShapeEiiE15__cv_check__280) #25
  unreachable

.split286.us:                                     ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.38, ptr noundef nonnull align 1 dereferenceable(1) %10)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.39, i32 noundef 103) #25
          to label %bb.bg unwind label %bb.bh

bb.bg:                                            ; preds = %.split286.us
  unreachable

bb.bh:                                            ; preds = %.split286.us
  %i.fd = landingpad { ptr, i32 }
          cleanup
  %i.fe = load ptr, ptr %9, align 8, !tbaa !59    ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.fg = icmp eq ptr %i.fe, %i.ff
  br i1 %i.fg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i177, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i176

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i176: ; preds = %bb.bh
  %i.fh = load i64, ptr %i.ff, align 8, !tbaa !53
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fi) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i177

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i177: ; preds = %bb.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i176
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %common.resume

.split288.us:                                     ; preds = %_ZNK2cv8MatShapeixEm.exit179.us.us
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull @.str.73, ptr noundef nonnull align 1 dereferenceable(1) %30)
          to label %bb.bi unwind label %bb.bk

bb.bi:                                            ; preds = %.split288.us
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull @__func__._ZNK2cv3dnn16EltwiseLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_, ptr noundef nonnull @.str.9, i32 noundef 259) #25
          to label %bb.bj unwind label %bb.bl

bb.bj:                                            ; preds = %bb.bi
  unreachable

bb.bk:                                            ; preds = %.split288.us
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188

bb.bl:                                            ; preds = %bb.bi
  %i.fk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fl = load ptr, ptr %29, align 8, !tbaa !59   ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.fn = icmp eq ptr %i.fl, %i.fm
  br i1 %i.fn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186: ; preds = %bb.bl
  %i.fo = load i64, ptr %i.fm, align 8, !tbaa !53
  %i.fp = add i64 %i.fo, 1
  call void @_ZdlPvm(ptr noundef %i.fl, i64 noundef %i.fp) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188: ; preds = %bb.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186, %bb.bk
  %.pn99 = phi { ptr, i32 } [ %i.fj, %bb.bk ], [ %i.fk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186 ], [ %i.fk, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #23
  br label %common.resume

bb.bm:                                            ; preds = %.lr.ph298, %_ZN2cv8MatShapeixEm.exit200
  %.0297 = phi i64 [ 2, %.lr.ph298 ], [ %i.gi, %_ZN2cv8MatShapeixEm.exit200 ] ; 5 uses
  %i.fq = load i32, ptr %i.ey, align 4, !tbaa !103
  %narrow.i189 = tail call i32 @llvm.smax.i32(i32 %i.fq, i32 1)
  %spec.select.i190 = zext nneg i32 %narrow.i189 to i64
  %i.fr = icmp samesign ult i64 %.0297, %spec.select.i190
  br i1 %i.fr, label %_ZNK2cv8MatShapeixEm.exit194, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.38, ptr noundef nonnull align 1 dereferenceable(1) %8)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.39, i32 noundef 103) #25
          to label %bb.bo unwind label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  unreachable

bb.bp:                                            ; preds = %bb.bn
  %i.fs = landingpad { ptr, i32 }
          cleanup
  %i.ft = load ptr, ptr %7, align 8, !tbaa !59    ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.fv = icmp eq ptr %i.ft, %i.fu
  br i1 %i.fv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i192, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i191

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i191: ; preds = %bb.bp
  %i.fw = load i64, ptr %i.fu, align 8, !tbaa !53
  %i.fx = add i64 %i.fw, 1
  call void @_ZdlPvm(ptr noundef %i.ft, i64 noundef %i.fx) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i192

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i192: ; preds = %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i191
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %common.resume

_ZNK2cv8MatShapeixEm.exit194:                     ; preds = %bb.bm
  %i.fy = icmp samesign ult i64 %.0297, %spec.select.i196
  br i1 %i.fy, label %_ZN2cv8MatShapeixEm.exit200, label %bb.bq

bb.bq:                                            ; preds = %_ZNK2cv8MatShapeixEm.exit194
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.38, ptr noundef nonnull align 1 dereferenceable(1) %6)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.39, i32 noundef 97) #25
          to label %bb.br unwind label %bb.bs

bb.br:                                            ; preds = %bb.bq
  unreachable

bb.bs:                                            ; preds = %bb.bq
  %i.fz = landingpad { ptr, i32 }
          cleanup
  %i.ga = load ptr, ptr %5, align 8, !tbaa !59    ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.gc = icmp eq ptr %i.ga, %i.gb
  br i1 %i.gc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i198, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i197

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i197: ; preds = %bb.bs
  %i.gd = load i64, ptr %i.gb, align 8, !tbaa !53
  %i.ge = add i64 %i.gd, 1
  call void @_ZdlPvm(ptr noundef %i.ga, i64 noundef %i.ge) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i198

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i198: ; preds = %bb.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i197
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %common.resume

_ZN2cv8MatShapeixEm.exit200:                      ; preds = %_ZNK2cv8MatShapeixEm.exit194
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %.0297
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !92
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %.0297
  store i32 %i.gg, ptr %i.gh, align 4, !tbaa !92
  %i.gi = add nuw nsw i64 %.0297, 1               ; 2 uses
  %exitcond332.not = icmp eq i64 %i.gi, %spec.select.i
  br i1 %exitcond332.not, label %.loopexit, label %bb.bm, !llvm.loop !188

.loopexit:                                        ; preds = %.preheader.split.i, %_ZN2cv8MatShapeixEm.exit200, %_ZN2cv8MatShapeixEm.exit, %._crit_edge278, %bb.h
  ret i1 false
}

end_hunk_0
