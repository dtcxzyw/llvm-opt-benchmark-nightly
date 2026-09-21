Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/eltwise2_int8_layer?download=true
inline.NumInlined: 1293
inline.NumDeleted: 621
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN2cv3dnn21Eltwise2Int8LayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_:bb.a
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %19) #25
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn140 = phi { ptr, i32 } [ %i.br, %bb.m ], [ %i.bq, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  br label %bb.ec

bb.o:                                             ; preds = %bb.k
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ec

._crit_edge318:                                   ; preds = %._crit_edge315
  %i.bt = icmp sgt i32 %i.da, 0
  %i.bu = getelementptr inbounds nuw i8, ptr %21, i64 4
  store i32 %.086.lcssa, ptr %i.bu, align 4, !tbaa !117
  %i.bv = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i32 %.085.lcssa, ptr %i.bv, align 4, !tbaa !118
  br i1 %i.bt, label %.lr.ph331, label %._crit_edge332

.lr.ph331:                                        ; preds = %._crit_edge318
  %i.bw = getelementptr inbounds nuw i8, ptr %21, i64 12 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %12, i64 12 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %24, i64 24
  br label %bb.x

bb.p:                                             ; preds = %._crit_edge
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.q:                                             ; preds = %.lr.ph317, %._crit_edge315
  %indvars.iv357 = phi i64 [ 0, %.lr.ph317 ], [ %indvars.iv.next358, %._crit_edge315 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #25
  %i.ca = getelementptr inbounds nuw [208 x i8], ptr %i.ao, i64 %indvars.iv357
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 72
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %22, ptr noundef nonnull align 4 dereferenceable(52) %i.cb)
          to label %_ZNK2cv3Mat5shapeEv.exit153 unwind label %bb.r

_ZNK2cv3Mat5shapeEv.exit153:                      ; preds = %bb.q
  %i.cc = load i32, ptr %22, align 4, !tbaa !116  ; 3 uses
  %narrow.i154 = call i32 @llvm.smax.i32(i32 %i.cc, i32 0) ; 2 uses
  %i.cd = sub i32 %.0285.lcssa, %narrow.i154      ; 3 uses
  %i.ce = icmp sgt i32 %i.cc, 0
  br i1 %i.ce, label %.lr.ph314, label %._crit_edge315

.lr.ph314:                                        ; preds = %_ZNK2cv3Mat5shapeEv.exit153
  %i.cf = load i32, ptr %21, align 4, !tbaa !116
  %narrow.i158 = call i32 @llvm.smax.i32(i32 %i.cf, i32 1) ; 2 uses
  %wide.trip.count = zext nneg i32 %i.cc to i64   ; 2 uses
  %i.cg = add nsw i64 %wide.trip.count, -1
  %i.ch = call i32 @llvm.umax.i32(i32 %narrow.i158, i32 %i.cd)
  %i.ci = add i32 %narrow.i154, %i.ch
  %i.cj = sub i32 %i.ci, %.0285.lcssa
  %i.ck = zext i32 %i.cj to i64
  %i.cl = call i64 @llvm.umin.i64(i64 %i.cg, i64 %i.ck) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.cl, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

scalar.ph.preheader:                              ; preds = %vector.body, %.lr.ph314
  %indvars.iv354.ph = phi i64 [ 0, %.lr.ph314 ], [ %n.vec, %vector.body ]
  br label %scalar.ph

vector.ph:                                        ; preds = %.lr.ph314
  %i.cm = add nuw nsw i64 %i.cl, 1                ; 2 uses
  %i.cn = and i64 %i.cm, 7                        ; 2 uses
  %i.co = icmp eq i64 %i.cn, 0
  %i.cp = select i1 %i.co, i64 8, i64 %i.cn
  %n.vec = sub nsw i64 %i.cm, %i.cp               ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cq = trunc nuw nsw i64 %index to i32
  %i.cr = add nuw nsw i32 %i.cd, %i.cq
  %i.cs = zext nneg i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.cs ; 3 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %index ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.ct, align 4, !tbaa !87
  %wide.load459 = load <4 x i32>, ptr %i.cv, align 4, !tbaa !87
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %wide.load460 = load <4 x i32>, ptr %i.cu, align 4, !tbaa !87
  %wide.load461 = load <4 x i32>, ptr %i.cw, align 4, !tbaa !87
  %i.cx = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load, <4 x i32> %wide.load460)
  %i.cy = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load459, <4 x i32> %wide.load461)
  store <4 x i32> %i.cx, ptr %i.ct, align 4, !tbaa !87
  store <4 x i32> %i.cy, ptr %i.cv, align 4, !tbaa !87
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cz = icmp eq i64 %index.next, %n.vec
  br i1 %i.cz, label %scalar.ph.preheader, label %vector.body, !llvm.loop !187

._crit_edge315:                                   ; preds = %bb.w, %_ZNK2cv3Mat5shapeEv.exit153
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25
  %indvars.iv.next358 = add nuw nsw i64 %indvars.iv357, 1 ; 2 uses
  %i.da = load i32, ptr %i.a, align 4, !tbaa !87  ; 2 uses
  %i.db = sext i32 %i.da to i64
  %i.dc = icmp slt i64 %indvars.iv.next358, %i.db
  br i1 %i.dc, label %bb.q, label %._crit_edge318, !llvm.loop !188

bb.r:                                             ; preds = %bb.q
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.s:                                             ; preds = %bb.t
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.di, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.de, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25
  br label %bb.at

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.w
  %indvars.iv354 = phi i64 [ %indvars.iv.next355, %bb.w ], [ %indvars.iv354.ph, %scalar.ph.preheader ] ; 3 uses
  %i.df = trunc nuw nsw i64 %indvars.iv354 to i32
  %i.dg = add nuw nsw i32 %i.cd, %i.df            ; 2 uses
  %i.dh = icmp ult i32 %i.dg, %narrow.i158
  br i1 %i.dh, label %bb.w, label %bb.t

bb.t:                                             ; preds = %scalar.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.32, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %.noexc160 unwind label %bb.s

.noexc160:                                        ; preds = %bb.t
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.33, i32 noundef 97) #26
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %.noexc160
  unreachable

bb.v:                                             ; preds = %.noexc160
  %i.di = landingpad { ptr, i32 }
          cleanup
  %i.dj = load ptr, ptr %14, align 8, !tbaa !34   ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.dl = icmp eq ptr %i.dj, %i.dk
  br i1 %i.dl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.v
  %i.dm = load i64, ptr %i.dk, align 8, !tbaa !28
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dn) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %.body

bb.w:                                             ; preds = %scalar.ph
  %i.do = zext nneg i32 %i.dg to i64
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.do ; 2 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv354
  %i.dr = load i32, ptr %i.dp, align 4, !tbaa !87
  %i.ds = load i32, ptr %i.dq, align 4, !tbaa !87
  %i.dt = call i32 @llvm.smax.i32(i32 %i.dr, i32 %i.ds)
  store i32 %i.dt, ptr %i.dp, align 4, !tbaa !87
  %indvars.iv.next355 = add nuw nsw i64 %indvars.iv354, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next355, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge315, label %scalar.ph, !llvm.loop !189

._crit_edge332:                                   ; preds = %bb.ar, %.preheader.split, %._crit_edge318
  %i.du = phi ptr [ %i.ao, %.preheader.split ], [ %i.ao, %._crit_edge318 ], [ %i.iw, %bb.ar ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #25
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 72
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %25, ptr noundef nonnull align 4 dereferenceable(52) %i.dv)
          to label %_ZNK2cv3Mat5shapeEv.exit180 unwind label %bb.au

bb.x:                                             ; preds = %.lr.ph331, %bb.ar
  %i.dw = phi ptr [ %i.ao, %.lr.ph331 ], [ %i.iw, %bb.ar ] ; 2 uses
  %indvars.iv360 = phi i64 [ 0, %.lr.ph331 ], [ %indvars.iv.next361, %bb.ar ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #25
  %i.dx = getelementptr inbounds nuw [208 x i8], ptr %i.dw, i64 %indvars.iv360 ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 72 ; 2 uses
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %23, ptr noundef nonnull align 4 dereferenceable(52) %i.dy)
          to label %_ZNK2cv3Mat5shapeEv.exit182 unwind label %bb.ap

_ZNK2cv3Mat5shapeEv.exit182:                      ; preds = %bb.x
  %i.dz = invoke noundef zeroext i1 @_ZN2cvneERKNS_8MatShapeES2_(ptr noundef nonnull align 4 dereferenceable(52) %23, ptr noundef nonnull align 4 dereferenceable(52) %21)
          to label %bb.y unwind label %bb.ap

bb.y:                                             ; preds = %_ZNK2cv3Mat5shapeEv.exit182
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #25
  br i1 %i.dz, label %bb.z, label %bb.ar

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !211)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25, !noalias !211
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %12, ptr noundef nonnull align 4 dereferenceable(52) %i.dy)
          to label %.noexc184 unwind label %.loopexit.split-lp

.noexc184:                                        ; preds = %bb.z
  %i.ea = load i32, ptr %21, align 4, !tbaa !116, !noalias !211 ; 10 uses
  %narrow.i.i = call i32 @llvm.smax.i32(i32 %i.ea, i32 0) ; 7 uses
  %spec.select.i.i = zext nneg i32 %narrow.i.i to i64 ; 4 uses
  %i.eb = load i32, ptr %12, align 4, !tbaa !116, !noalias !211
  %narrow.i64115.i = call i32 @llvm.smax.i32(i32 %i.eb, i32 0)
  %i.ec = icmp sgt i32 %i.ea, %narrow.i64115.i
  br i1 %i.ec, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.noexc184, %.noexc186
  %i.ed = invoke noundef ptr @_ZN2cv8MatShape5beginEv(ptr noundef nonnull align 4 dereferenceable(52) %12)
          to label %.noexc185 unwind label %.loopexit

.noexc185:                                        ; preds = %.lr.ph.i
  invoke void @_ZN2cv8MatShape6insertEPii(ptr noundef nonnull align 4 dereferenceable(52) %12, ptr noundef %i.ed, i32 noundef 1)
          to label %.noexc186 unwind label %.loopexit

.noexc186:                                        ; preds = %.noexc185
  %i.ee = load i32, ptr %12, align 4, !tbaa !116, !noalias !211
  %narrow.i64.i = call i32 @llvm.smax.i32(i32 %i.ee, i32 0)
  %i.ef = icmp samesign ugt i32 %i.ea, %narrow.i64.i
  br i1 %i.ef, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !192

._crit_edge.i:                                    ; preds = %.noexc186, %.noexc184
  %i.eg = invoke noundef zeroext i1 @_ZN2cveqERKNS_8MatShapeES2_(ptr noundef nonnull align 4 dereferenceable(52) %12, ptr noundef nonnull align 4 dereferenceable(52) %21)
          to label %.noexc187 unwind label %.loopexit.split-lp

.noexc187:                                        ; preds = %._crit_edge.i
  br i1 %i.eg, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.noexc187
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %24, ptr noundef nonnull align 8 dereferenceable(208) %i.dx)
          to label %bb.an unwind label %.loopexit.split-lp

bb.ab:                                            ; preds = %.noexc187
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25, !noalias !211
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %13, ptr noundef nonnull align 4 dereferenceable(52) %21)
          to label %.noexc189 unwind label %.loopexit.split-lp

.noexc189:                                        ; preds = %bb.ab
  %i.eh = load i32, ptr %i.dx, align 8, !tbaa !212, !noalias !211
  %i.ei = and i32 %i.eh, 4095
  invoke void @_ZN2cv3MatC1ERKNS_8MatShapeEi(ptr noundef nonnull align 8 dereferenceable(208) %24, ptr noundef nonnull align 4 dereferenceable(52) %13, i32 noundef %i.ei)
          to label %.noexc190 unwind label %.loopexit.split-lp

.noexc190:                                        ; preds = %.noexc189
  %i.ej = invoke noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %24)
          to label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i unwind label %bb.ad ; 2 uses

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %.noexc190
  %i.ek = trunc i64 %i.ej to i32
  %.not.i.i.i.i.i183 = icmp slt i32 %i.ea, 1
  br i1 %.not.i.i.i.i.i183, label %._crit_edge122.i, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.el = shl nuw nsw i64 %spec.select.i.i, 2     ; 5 uses
  %i.em = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.el) #23
          to label %.noexc66.i unwind label %bb.ae ; 11 uses

.noexc66.i:                                       ; preds = %bb.ac
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %spec.select.i.i
  store i32 0, ptr %i.em, align 4, !tbaa !87
  %i.eo = add nsw i64 %spec.select.i.i, -1        ; 2 uses
  %i.ep = icmp eq i64 %i.eo, 0
  br i1 %i.ep, label %.lr.ph118.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i: ; preds = %.noexc66.i
  %i.eq = getelementptr i8, ptr %i.em, i64 4
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.eo, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.eq, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !87
  br label %.lr.ph118.i

.lr.ph118.i:                                      ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i, %.noexc66.i
  %i.er = add nsw i32 %narrow.i.i, -1             ; 3 uses
  %i.es = load i32, ptr %21, align 4, !tbaa !116, !noalias !211
  %narrow.i72.i = call i32 @llvm.smax.i32(i32 %i.es, i32 1)
  %i.et = zext i32 %i.er to i64                   ; 5 uses
  %.first_iter.i = icmp ult i32 %i.er, %narrow.i72.i
  br i1 %.first_iter.i, label %.lr.ph118.i.split.us.preheader, label %.lr.ph118.i.split

.lr.ph118.i.split.us.preheader:                   ; preds = %.lr.ph118.i
  %xtraiter = and i32 %narrow.i.i, 3              ; 3 uses
  %i.eu = icmp slt i32 %i.ea, 4
  br i1 %i.eu, label %.lr.ph118.i.split.us.epil.preheader, label %.lr.ph118.i.split.us.preheader.new

.lr.ph118.i.split.us.preheader.new:               ; preds = %.lr.ph118.i.split.us.preheader
  %unroll_iter = and i32 %narrow.i.i, 2147483644
  br label %.lr.ph118.i.split.us

.lr.ph118.i.split.us:                             ; preds = %.lr.ph118.i.split.us, %.lr.ph118.i.split.us.preheader.new
  %indvars.iv.i.us = phi i64 [ %i.et, %.lr.ph118.i.split.us.preheader.new ], [ %indvars.iv.next.i.us.3, %.lr.ph118.i.split.us ] ; 7 uses
  %.052116.i.us = phi i32 [ 1, %.lr.ph118.i.split.us.preheader.new ], [ %i.fl, %.lr.ph118.i.split.us ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph118.i.split.us.preheader.new ], [ %niter.next.3, %.lr.ph118.i.split.us ]
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %indvars.iv.i.us
  store i32 %.052116.i.us, ptr %i.ev, align 4, !tbaa !87
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv.i.us
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !87, !noalias !211
  %i.ey = mul nsw i32 %i.ex, %.052116.i.us        ; 2 uses
  %indvars.iv.next.i.us = add nsw i64 %indvars.iv.i.us, -1 ; 2 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %indvars.iv.next.i.us
  store i32 %i.ey, ptr %i.ez, align 4, !tbaa !87
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv.next.i.us
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !87, !noalias !211
  %i.fc = mul nsw i32 %i.fb, %i.ey                ; 2 uses
  %indvars.iv.next.i.us.1 = add nsw i64 %indvars.iv.i.us, -2 ; 2 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %indvars.iv.next.i.us.1
  store i32 %i.fc, ptr %i.fd, align 4, !tbaa !87
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv.next.i.us.1
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !87, !noalias !211
  %i.fg = mul nsw i32 %i.ff, %i.fc                ; 2 uses
  %i.fh = getelementptr [4 x i8], ptr %i.em, i64 %indvars.iv.i.us
  %i.fi = getelementptr i8, ptr %i.fh, i64 -12
  store i32 %i.fg, ptr %i.fi, align 4, !tbaa !87
  %i.fj = getelementptr [4 x i8], ptr %21, i64 %indvars.iv.i.us
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !87, !noalias !211
  %i.fl = mul nsw i32 %i.fk, %i.fg                ; 2 uses
  %indvars.iv.next.i.us.3 = add nsw i64 %indvars.iv.i.us, -4 ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i67.i.split.us.unr-lcssa, label %.lr.ph118.i.split.us, !llvm.loop !193

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i67.i.split.us.unr-lcssa: ; preds = %.lr.ph118.i.split.us
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i67.i.split.us, label %.lr.ph118.i.split.us.epil.preheader

.lr.ph118.i.split.us.epil.preheader:              ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i67.i.split.us.unr-lcssa, %.lr.ph118.i.split.us.preheader
  %indvars.iv.i.us.epil.init = phi i64 [ %i.et, %.lr.ph118.i.split.us.preheader ], [ %indvars.iv.next.i.us.3, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i67.i.split.us.unr-lcssa ]
  %.052116.i.us.epil.init = phi i32 [ 1, %.lr.ph118.i.split.us.preheader ], [ %i.fl, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i67.i.split.us.unr-lcssa ]
  %lcmp.mod504 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod504)
  br label %.lr.ph118.i.split.us.epil

.lr.ph118.i.split.us.epil:                        ; preds = %.lr.ph118.i.split.us.epil, %.lr.ph118.i.split.us.epil.preheader
  %indvars.iv.i.us.epil = phi i64 [ %indvars.iv.next.i.us.epil, %.lr.ph118.i.split.us.epil ], [ %indvars.iv.i.us.epil.init, %.lr.ph118.i.split.us.epil.preheader ] ; 3 uses
  %.052116.i.us.epil = phi i32 [ %i.fp, %.lr.ph118.i.split.us.epil ], [ %.052116.i.us.epil.init, %.lr.ph118.i.split.us.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph118.i.split.us.epil ], [ 0, %.lr.ph118.i.split.us.epil.preheader ]
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %indvars.iv.i.us.epil
  store i32 %.052116.i.us.epil, ptr %i.fm, align 4, !tbaa !87
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv.i.us.epil
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !87, !noalias !211
  %i.fp = mul nsw i32 %i.fo, %.052116.i.us.epil
  %indvars.iv.next.i.us.epil = add nsw i64 %indvars.iv.i.us.epil, -1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i67.i.split.us, label %.lr.ph118.i.split.us.epil, !llvm.loop !194

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i67.i.split.us: ; preds = %.lr.ph118.i.split.us.epil, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i67.i.split.us.unr-lcssa
  %i.fq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.el) #23
          to label %.lr.ph121.i unwind label %bb.ai ; 7 uses

bb.ad:                                            ; preds = %.noexc190
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit97.i

bb.ae:                                            ; preds = %bb.ac
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit97.i

.lr.ph118.i.split:                                ; preds = %.lr.ph118.i
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.et
  store i32 1, ptr %i.ft, align 4, !tbaa !87
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25, !noalias !211
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25, !noalias !211
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.32, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %.noexc74.i unwind label %bb.ah

.noexc74.i:                                       ; preds = %.lr.ph118.i.split
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.33, i32 noundef 103) #26
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %.noexc74.i
  unreachable

bb.ag:                                            ; preds = %.noexc74.i
  %i.fu = landingpad { ptr, i32 }
          cleanup
  %i.fv = load ptr, ptr %10, align 8, !tbaa !34, !noalias !211 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.fx = icmp eq ptr %i.fv, %i.fw
  br i1 %i.fx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.ag
  %i.fy = load i64, ptr %i.fw, align 8, !tbaa !28, !noalias !211
  %i.fz = add i64 %i.fy, 1
  call void @_ZdlPvm(ptr noundef %i.fv, i64 noundef %i.fz) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25, !noalias !211
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25, !noalias !211
  br label %.body.thread.i

bb.ah:                                            ; preds = %.lr.ph118.i.split
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

.lr.ph121.i:                                      ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i67.i.split.us
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.fq, i8 0, i64 %i.el, i1 false), !tbaa !87
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %spec.select.i.i
  %i.gc = ptrtoint ptr %i.gb to i64
  %i.gd = load i32, ptr %12, align 4, !tbaa !116, !noalias !211
  %narrow.i75.i = call i32 @llvm.smax.i32(i32 %i.gd, i32 1)
  %.first_iter136.i = icmp samesign ult i32 %i.er, %narrow.i75.i
  br i1 %.first_iter136.i, label %.lr.ph121.i.split.preheader, label %bb.aj

.lr.ph121.i.split.preheader:                      ; preds = %.lr.ph121.i
  %xtraiter505 = and i32 %narrow.i.i, 1
  %i.ge = icmp eq i32 %i.ea, 1
  br i1 %i.ge, label %.lr.ph121.i.split.epil.preheader, label %.lr.ph121.i.split.preheader.new

.lr.ph121.i.split.preheader.new:                  ; preds = %.lr.ph121.i.split.preheader
  %unroll_iter509 = and i32 %narrow.i.i, 2147483646
  br label %.lr.ph121.i.split

._crit_edge122.i.loopexit.unr-lcssa:              ; preds = %.lr.ph121.i.split
  %lcmp.mod507.not = icmp eq i32 %xtraiter505, 0
  br i1 %lcmp.mod507.not, label %._crit_edge122.i.loopexit, label %.lr.ph121.i.split.epil.preheader

.lr.ph121.i.split.epil.preheader:                 ; preds = %._crit_edge122.i.loopexit.unr-lcssa, %.lr.ph121.i.split.preheader
  %indvars.iv133.i.epil.init = phi i64 [ %i.et, %.lr.ph121.i.split.preheader ], [ %indvars.iv.next134.i.1, %._crit_edge122.i.loopexit.unr-lcssa ] ; 2 uses
  %.050119.i.epil.init = phi i32 [ 1, %.lr.ph121.i.split.preheader ], [ %i.if, %._crit_edge122.i.loopexit.unr-lcssa ]
  %lcmp.mod508 = trunc i32 %narrow.i.i to i1
  call void @llvm.assume(i1 %lcmp.mod508)
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %indvars.iv133.i.epil.init
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !87, !noalias !211
  %i.gh = icmp sgt i32 %i.gg, 1
  %i.gi = select i1 %i.gh, i32 %.050119.i.epil.init, i32 0
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %indvars.iv133.i.epil.init
  store i32 %i.gi, ptr %i.gj, align 4, !tbaa !87
  br label %._crit_edge122.i.loopexit

._crit_edge122.i.loopexit:                        ; preds = %._crit_edge122.i.loopexit.unr-lcssa, %.lr.ph121.i.split.epil.preheader
  %i.gk = ptrtoint ptr %i.en to i64
  br label %._crit_edge122.i

._crit_edge122.i:                                 ; preds = %._crit_edge122.i.loopexit, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %.sroa.11.0177.i = phi i64 [ 0, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.gc, %._crit_edge122.i.loopexit ]
  %.sroa.098.0176.i = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.fq, %._crit_edge122.i.loopexit ] ; 6 uses
  %.sroa.0104.0163167175.i = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.em, %._crit_edge122.i.loopexit ] ; 6 uses
  %.sroa.12.0159169174.i = phi i64 [ 0, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.gk, %._crit_edge122.i.loopexit ]
  %i.gl = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !213, !noalias !211 ; 2 uses
  %i.gn = load ptr, ptr %i.by, align 8, !tbaa !213, !alias.scope !211 ; 2 uses
  %i.go = icmp sgt i32 %i.ek, 0
  br i1 %i.go, label %.preheader.lr.ph.i, label %._crit_edge129.i

.preheader.lr.ph.i:                               ; preds = %._crit_edge122.i
  %i.gp = icmp sgt i32 %i.ea, 0
  %wide.trip.count148.i = and i64 %i.ej, 2147483647 ; 2 uses
  br i1 %i.gp, label %.preheader.us.preheader.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.preheader.lr.ph.i
  %.pre.i = load i8, ptr %i.gm, align 1, !tbaa !28
  call void @llvm.memset.p0.i64(ptr align 1 %i.gn, i8 %.pre.i, i64 %wide.trip.count148.i, i1 false), !tbaa !28
  br label %._crit_edge129.i

.preheader.us.preheader.i:                        ; preds = %.preheader.lr.ph.i
  %wide.trip.count143.i = zext nneg i32 %i.ea to i64 ; 2 uses
  %xtraiter511 = and i64 %wide.trip.count143.i, 1
  %i.gq = icmp eq i32 %i.ea, 1
  %unroll_iter516 = and i64 %wide.trip.count143.i, 2147483646
  %lcmp.mod513.not = icmp eq i64 %xtraiter511, 0
  %lcmp.mod515 = trunc i32 %i.ea to i1
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %._crit_edge127.us.i, %.preheader.us.preheader.i
  %indvars.iv145.i = phi i64 [ 0, %.preheader.us.preheader.i ], [ %indvars.iv.next146.i, %._crit_edge127.us.i ] ; 3 uses
  %i.gr = trunc nuw nsw i64 %indvars.iv145.i to i32 ; 2 uses
  br i1 %i.gq, label %.epil.preheader, label %.preheader.us.i.new

.preheader.us.i.new:                              ; preds = %.preheader.us.i, %.preheader.us.i.new
  %indvars.iv140.i = phi i64 [ %indvars.iv.next141.i.1, %.preheader.us.i.new ], [ 0, %.preheader.us.i ] ; 4 uses
  %.046124.us.i = phi i32 [ %i.hh, %.preheader.us.i.new ], [ 0, %.preheader.us.i ]
  %.047123.us.i = phi i32 [ %i.hd, %.preheader.us.i.new ], [ %i.gr, %.preheader.us.i ] ; 2 uses
  %niter517 = phi i64 [ %niter517.next.1, %.preheader.us.i.new ], [ 0, %.preheader.us.i ]
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0104.0163167175.i, i64 %indvars.iv140.i
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !87 ; 2 uses
  %i.gu = sdiv i32 %.047123.us.i, %i.gt
  %i.gv = srem i32 %.047123.us.i, %i.gt           ; 2 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.098.0176.i, i64 %indvars.iv140.i
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !87
  %i.gy = mul nsw i32 %i.gx, %i.gu
  %i.gz = add nsw i32 %i.gy, %.046124.us.i
  %indvars.iv.next141.i = or disjoint i64 %indvars.iv140.i, 1 ; 2 uses
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0104.0163167175.i, i64 %indvars.iv.next141.i
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !87 ; 2 uses
  %i.hc = sdiv i32 %i.gv, %i.hb
  %i.hd = srem i32 %i.gv, %i.hb                   ; 2 uses
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %.sroa.098.0176.i, i64 %indvars.iv.next141.i
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !87
  %i.hg = mul nsw i32 %i.hf, %i.hc
  %i.hh = add nsw i32 %i.hg, %i.gz                ; 3 uses
  %indvars.iv.next141.i.1 = add nuw nsw i64 %indvars.iv140.i, 2 ; 2 uses
  %niter517.next.1 = add i64 %niter517, 2         ; 2 uses
  %niter517.ncmp.1 = icmp eq i64 %niter517.next.1, %unroll_iter516
  br i1 %niter517.ncmp.1, label %._crit_edge127.us.i.unr-lcssa, label %.preheader.us.i.new, !llvm.loop !195

._crit_edge127.us.i.unr-lcssa:                    ; preds = %.preheader.us.i.new
  br i1 %lcmp.mod513.not, label %._crit_edge127.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge127.us.i.unr-lcssa, %.preheader.us.i
  %indvars.iv140.i.epil.init = phi i64 [ 0, %.preheader.us.i ], [ %indvars.iv.next141.i.1, %._crit_edge127.us.i.unr-lcssa ] ; 2 uses
  %.046124.us.i.epil.init = phi i32 [ 0, %.preheader.us.i ], [ %i.hh, %._crit_edge127.us.i.unr-lcssa ]
  %.047123.us.i.epil.init = phi i32 [ %i.gr, %.preheader.us.i ], [ %i.hd, %._crit_edge127.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod515)
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0104.0163167175.i, i64 %indvars.iv140.i.epil.init
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !87
  %i.hk = sdiv i32 %.047123.us.i.epil.init, %i.hj
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.098.0176.i, i64 %indvars.iv140.i.epil.init
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !87
  %i.hn = mul nsw i32 %i.hm, %i.hk
  %i.ho = add nsw i32 %i.hn, %.046124.us.i.epil.init
  br label %._crit_edge127.us.i

._crit_edge127.us.i:                              ; preds = %._crit_edge127.us.i.unr-lcssa, %.epil.preheader
  %.lcssa = phi i32 [ %i.hh, %._crit_edge127.us.i.unr-lcssa ], [ %i.ho, %.epil.preheader ]
  %i.hp = sext i32 %.lcssa to i64
  %i.hq = getelementptr inbounds i8, ptr %i.gm, i64 %i.hp
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !28
  %i.hs = getelementptr inbounds nuw i8, ptr %i.gn, i64 %indvars.iv145.i
  store i8 %i.hr, ptr %i.hs, align 1, !tbaa !28
  %indvars.iv.next146.i = add nuw nsw i64 %indvars.iv145.i, 1 ; 2 uses
  %exitcond149.not.i = icmp eq i64 %indvars.iv.next146.i, %wide.trip.count148.i
  br i1 %exitcond149.not.i, label %._crit_edge129.thread.i, label %.preheader.us.i, !llvm.loop !196

bb.ai:                                            ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i67.i.split.us
  %i.ht = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

.lr.ph121.i.split:                                ; preds = %.lr.ph121.i.split, %.lr.ph121.i.split.preheader.new
  %indvars.iv133.i = phi i64 [ %i.et, %.lr.ph121.i.split.preheader.new ], [ %indvars.iv.next134.i.1, %.lr.ph121.i.split ] ; 4 uses
  %.050119.i = phi i32 [ 1, %.lr.ph121.i.split.preheader.new ], [ %i.if, %.lr.ph121.i.split ] ; 2 uses
  %niter510 = phi i32 [ 0, %.lr.ph121.i.split.preheader.new ], [ %niter510.next.1, %.lr.ph121.i.split ]
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %indvars.iv133.i
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !87, !noalias !211 ; 2 uses
  %i.hw = icmp sgt i32 %i.hv, 1
  %i.hx = select i1 %i.hw, i32 %.050119.i, i32 0
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %indvars.iv133.i
  store i32 %i.hx, ptr %i.hy, align 4, !tbaa !87
  %i.hz = mul nsw i32 %i.hv, %.050119.i           ; 2 uses
  %indvars.iv.next134.i = add nsw i64 %indvars.iv133.i, -1 ; 2 uses
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %indvars.iv.next134.i
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !87, !noalias !211 ; 2 uses
  %i.ic = icmp sgt i32 %i.ib, 1
  %i.id = select i1 %i.ic, i32 %i.hz, i32 0
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %indvars.iv.next134.i
  store i32 %i.id, ptr %i.ie, align 4, !tbaa !87
  %i.if = mul nsw i32 %i.ib, %i.hz                ; 2 uses
  %indvars.iv.next134.i.1 = add nsw i64 %indvars.iv133.i, -2 ; 2 uses
  %niter510.next.1 = add i32 %niter510, 2         ; 2 uses
  %niter510.ncmp.1.not = icmp eq i32 %niter510.next.1, %unroll_iter509
  br i1 %niter510.ncmp.1.not, label %._crit_edge122.i.loopexit.unr-lcssa, label %.lr.ph121.i.split, !llvm.loop !197

bb.aj:                                            ; preds = %.lr.ph121.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25, !noalias !211
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25, !noalias !211
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.32, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %.noexc80.i unwind label %.body89.i

.noexc80.i:                                       ; preds = %bb.aj
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.33, i32 noundef 97) #26
          to label %bb.ak unwind label %bb.al

bb.ak:                                            ; preds = %.noexc80.i
  unreachable

bb.al:                                            ; preds = %.noexc80.i
  %i.ig = landingpad { ptr, i32 }
          cleanup
  %i.ih = load ptr, ptr %8, align 8, !tbaa !34, !noalias !211 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ij = icmp eq ptr %i.ih, %i.ii
  br i1 %i.ij, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i78.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77.i: ; preds = %bb.al
  %i.ik = load i64, ptr %i.ii, align 8, !tbaa !28, !noalias !211
  %i.il = add i64 %i.ik, 1
  call void @_ZdlPvm(ptr noundef %i.ih, i64 noundef %i.il) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i78.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i78.i: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25, !noalias !211
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25, !noalias !211
  br label %.body81.i

.body89.i:                                        ; preds = %bb.aj
  %i.im = landingpad { ptr, i32 }
          cleanup
  br label %.body81.i

.body81.i:                                        ; preds = %.body89.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i78.i
  %eh.lpad-body82.i = phi { ptr, i32 } [ %i.im, %.body89.i ], [ %i.ig, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i78.i ]
  call void @_ZdlPvm(ptr noundef nonnull %i.fq, i64 noundef %i.el) #24
  br label %.body.thread.i

._crit_edge129.i:                                 ; preds = %.preheader.preheader.i, %._crit_edge122.i
  %.not.i.i.i92.i = icmp eq ptr %.sroa.098.0176.i, null
  br i1 %.not.i.i.i92.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit93.i, label %._crit_edge129.thread.i

._crit_edge129.thread.i:                          ; preds = %._crit_edge127.us.i, %._crit_edge129.i
  %i.in = ptrtoint ptr %.sroa.098.0176.i to i64
  %i.io = sub i64 %.sroa.11.0177.i, %i.in
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.098.0176.i, i64 noundef %i.io) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit93.i

_ZNSt6vectorIiSaIiEED2Ev.exit93.i:                ; preds = %._crit_edge129.thread.i, %._crit_edge129.i
  %.not.i.i.i94.i = icmp eq ptr %.sroa.0104.0163167175.i, null
end_hunk_0
