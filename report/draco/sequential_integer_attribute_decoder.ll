Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/draco/original/sequential_integer_attribute_decoder?download=true
inline.NumInlined: 2410
inline.NumDeleted: 886
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_ZN5draco56MeshPredictionSchemeConstrainedMultiParallelogramDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21ComputeOriginalValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEE:bb.a
  %i.as = load i32, ptr %i.af, align 4, !tbaa !177
  %i.at = add nsw i32 %i.as, %i.ak
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.n, %bb.l
  %.sink.i = phi i32 [ %i.ap, %bb.l ], [ %i.at, %bb.n ]
  store i32 %.sink.i, ptr %i.al, align 4, !tbaa !102
  br label %bb.o

bb.o:                                             ; preds = %.sink.split.i, %bb.m
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.au = load i32, ptr %i.c, align 8, !tbaa !180
  %i.av = sext i32 %i.au to i64
  %i.aw = icmp slt i64 %indvars.iv.next.i, %i.av
  br i1 %i.aw, label %bb.k, label %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit, !llvm.loop !2

bb.p:                                             ; preds = %_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit
  invoke void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr null, i64 noundef %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %._ZNSt6vectorIiSaIiEE6resizeEmRKi.exit_crit_edge314 unwind label %bb.z

._ZNSt6vectorIiSaIiEE6resizeEmRKi.exit_crit_edge314: ; preds = %bb.p
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %6, i64 24
  %.phi.trans.insert315 = getelementptr inbounds nuw i8, ptr %6, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert315, align 16, !tbaa !119
  %.pre317 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !58
  br label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit

_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit:            ; preds = %_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit, %._ZNSt6vectorIiSaIiEE6resizeEmRKi.exit_crit_edge314
  %i.ax = phi ptr [ %.pre317, %._ZNSt6vectorIiSaIiEE6resizeEmRKi.exit_crit_edge314 ], [ null, %_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit ] ; 2 uses
  %i.ay = phi ptr [ %.pre, %._ZNSt6vectorIiSaIiEE6resizeEmRKi.exit_crit_edge314 ], [ null, %_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i32 0, ptr %i.b, align 4, !tbaa !102
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = ptrtoint ptr %i.ax to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = ashr exact i64 %i.bc, 2                 ; 3 uses
  %i.be = icmp ult i64 %i.bd, %i.e
  br i1 %i.be, label %bb.s, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit
  %i.bf = icmp ugt i64 %i.bd, %i.e
  br i1 %i.bf, label %bb.r, label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit.1

bb.r:                                             ; preds = %bb.q
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.e ; 2 uses
  %.not.i.i.1 = icmp eq ptr %i.ay, %i.bg
  br i1 %.not.i.i.1, label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit.1, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.1

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.1:      ; preds = %bb.r
  store ptr %i.bg, ptr %i.az, align 16, !tbaa !119
  br label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit.1

bb.s:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.bi = sub nuw nsw i64 %i.e, %i.bd
  invoke void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr %i.ay, i64 noundef %i.bi, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit.1 unwind label %bb.z

_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit.1:          ; preds = %bb.s, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.1, %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i32 0, ptr %i.b, align 4, !tbaa !102
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !119 ; 3 uses
  %i.bm = load ptr, ptr %i.bj, align 16, !tbaa !58 ; 2 uses
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = ashr exact i64 %i.bp, 2                 ; 3 uses
  %i.br = icmp ult i64 %i.bq, %i.e
  br i1 %i.br, label %bb.v, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit.1
  %i.bs = icmp ugt i64 %i.bq, %i.e
  br i1 %i.bs, label %bb.u, label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit.2

bb.u:                                             ; preds = %bb.t
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.e ; 2 uses
  %.not.i.i.2 = icmp eq ptr %i.bl, %i.bt
  br i1 %.not.i.i.2, label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit.2, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.2

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.2:      ; preds = %bb.u
  store ptr %i.bt, ptr %i.bk, align 8, !tbaa !119
  br label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit.2

bb.v:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit.1
  %i.bu = sub nuw nsw i64 %i.e, %i.bq
  invoke void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr %i.bl, i64 noundef %i.bu, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit.2 unwind label %bb.z

_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit.2:          ; preds = %bb.v, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.2, %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i32 0, ptr %i.b, align 4, !tbaa !102
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 16, !tbaa !119 ; 3 uses
  %i.by = load ptr, ptr %i.bv, align 8, !tbaa !58 ; 2 uses
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = ashr exact i64 %i.cb, 2                 ; 3 uses
  %i.cd = icmp ult i64 %i.cc, %i.e
  br i1 %i.cd, label %bb.y, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit.2
  %i.ce = icmp ugt i64 %i.cc, %i.e
  br i1 %i.ce, label %bb.x, label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit.3

bb.x:                                             ; preds = %bb.w
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.e ; 2 uses
  %.not.i.i.3 = icmp eq ptr %i.bx, %i.cf
  br i1 %.not.i.i.3, label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit.3, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.3

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.3:      ; preds = %bb.x
  store ptr %i.cf, ptr %i.bw, align 16, !tbaa !119
  br label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit.3

bb.y:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit.2
  %i.cg = sub nuw nsw i64 %i.e, %i.cc
  invoke void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, ptr %i.bx, i64 noundef %i.cg, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit.3 unwind label %bb.z

_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit.3:          ; preds = %bb.y, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.3, %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  %i.ch = load ptr, ptr %6, align 16, !tbaa !58
  %i.ci = load i32, ptr %i.c, align 8, !tbaa !180
  %i.cj = icmp sgt i32 %i.ci, 0
  br i1 %i.cj, label %.lr.ph.i.i, label %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit

bb.z:                                             ; preds = %bb.y, %bb.v, %bb.s, %bb.p
  %i.ck = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %bb.bz

_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit: ; preds = %bb.o, %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i, %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit.3
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !128 ; 6 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !130
  %i.cp = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #19
          to label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader unwind label %bb.ac ; 4 uses

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cp, i8 0, i64 16, i1 false), !tbaa !102
  %i.cq = icmp slt i32 %4, 0
  br i1 %i.cq, label %bb.aa, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #20
          to label %.noexc132 unwind label %bb.ad

.noexc132:                                        ; preds = %bb.aa
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %.not.i.i.i.i = icmp eq i32 %4, 0               ; 5 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.cr = shl nuw nsw i64 %i.e, 2
  %i.cs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cr) #19
          to label %.noexc133 unwind label %bb.ad ; 5 uses

.noexc133:                                        ; preds = %bb.ab
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.e ; 2 uses
  store i32 0, ptr %i.cs, align 4, !tbaa !102
  %i.cu = add nsw i64 %i.e, -1                    ; 2 uses
  %i.cv = icmp eq i64 %i.cu, 0
  br i1 %i.cv, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc133
  %i.cw = getelementptr i8, ptr %i.cs, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.cu, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.cw, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !102
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc133, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.14.0 = phi ptr [ %i.ct, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ct, %.noexc133 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.0208.0 = phi ptr [ %i.cs, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.cs, %.noexc133 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 18 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !129 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !183
  %i.db = load ptr, ptr %i.cy, align 8, !tbaa !184 ; 2 uses
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = ptrtoint ptr %i.db to i64
  %i.de = sub i64 %i.dc, %i.dd
  %i.df = ashr exact i64 %i.de, 2                 ; 4 uses
  %i.dg = trunc i64 %i.df to i32
  %.not126270 = icmp slt i32 %i.dg, 2
  br i1 %.not126270, label %.critedge130, label %.lr.ph273

.lr.ph273:                                        ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cm, i64 160 ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.cm, i64 88
  %wide.trip.count.i = zext nneg i32 %4 to i64    ; 14 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  %i.dn = shl nuw nsw i64 %wide.trip.count.i, 2   ; 3 uses
  %umax310 = call i64 @llvm.umax.i64(i64 %i.df, i64 1) ; 2 uses
  %wide.trip.count312 = and i64 %i.df, 2147483647
  %scevgep = getelementptr i8, ptr %.sroa.0208.0, i64 %i.dn
  %min.iters.check399 = icmp ult i32 %4, 12
  %n.vec401 = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %cmp.n412 = icmp eq i64 %n.vec401, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.do = add nsw i64 %wide.trip.count.i, -1
  %min.iters.check381 = icmp ult i32 %4, 8
  %n.vec383 = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %cmp.n392 = icmp eq i64 %n.vec383, %wide.trip.count.i
  %xtraiter419 = and i64 %wide.trip.count.i, 3    ; 2 uses
  %lcmp.mod420.not = icmp eq i64 %xtraiter419, 0
  %min.iters.check = icmp ult i32 %4, 4
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br label %bb.ae

bb.ac:                                            ; preds = %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.ad:                                            ; preds = %bb.ab, %bb.aa
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit186

bb.ae:                                            ; preds = %.lr.ph273, %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit169
  %indvars.iv307 = phi i64 [ 1, %.lr.ph273 ], [ %indvars.iv.next308, %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit169 ] ; 9 uses
  %exitcond311.not = icmp eq i64 %indvars.iv307, %umax310
  br i1 %exitcond311.not, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1, i64 noundef %umax310, i64 noundef %i.df) #20
          to label %.noexc135 unwind label %bb.aj

.noexc135:                                        ; preds = %bb.af
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv307
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !186 ; 6 uses
  %.not233250 = icmp eq i32 %i.ds, -1
  br i1 %.not233250, label %.thread230, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ag
  %i.dt = load ptr, ptr %i.cm, align 8, !tbaa !144, !noalias !417
  %i.du = urem i32 %i.ds, 3
  %.not.i.i.i150 = icmp ne i32 %i.du, 0           ; 2 uses
  %i.dv = add i32 %i.ds, -1
  %i.dw = add i32 %i.ds, 2                        ; 2 uses
  %i.dx = icmp ne i32 %i.dw, -1
  %brmerge = or i1 %.not.i.i.i150, %i.dx
  %.mux = select i1 %.not.i.i.i150, i32 %i.dv, i32 %i.dw ; 3 uses
  %i.dy = lshr i32 %.mux, 6
  %.zext.i.i.i153 = zext nneg i32 %i.dy to i64
  %i.dz = and i32 %.mux, 63
  %i.ea = zext nneg i32 %i.dz to i64
  %i.eb = shl nuw i64 1, %i.ea
  %i.ec = zext i32 %.mux to i64
  br label %bb.ah

bb.ah:                                            ; preds = %.lr.ph, %_ZNK5draco24MeshAttributeCornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit159
  %.083253 = phi i1 [ true, %.lr.ph ], [ %.184, %_ZNK5draco24MeshAttributeCornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit159 ] ; 3 uses
  %.085252 = phi i32 [ 0, %.lr.ph ], [ %.186, %_ZNK5draco24MeshAttributeCornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit159 ] ; 5 uses
  %.sroa.0198.0251 = phi i32 [ %i.ds, %.lr.ph ], [ %.sroa.0198.2, %_ZNK5draco24MeshAttributeCornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit159 ] ; 8 uses
  %i.ed = sext i32 %.085252 to i64
  %i.ee = getelementptr inbounds [24 x i8], ptr %6, i64 %i.ed
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !58 ; 5 uses
  %i.eg = ptrtoaddr ptr %i.ef to i64              ; 2 uses
  %i.eh = lshr i32 %.sroa.0198.0251, 6
  %.zext.i.i.i = zext nneg i32 %i.eh to i64
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %.zext.i.i.i
  %i.ej = and i32 %.sroa.0198.0251, 63
  %i.ek = zext nneg i32 %i.ej to i64
  %i.el = shl nuw i64 1, %i.ek
  %i.em = load i64, ptr %i.ei, align 8, !tbaa !187, !noalias !417
  %i.en = and i64 %i.em, %i.el
  %.not.i.i136 = icmp eq i64 %i.en, 0
  br i1 %.not.i.i136, label %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, label %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit.thread

_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i: ; preds = %bb.ah
  %i.eo = load ptr, ptr %i.dh, align 8, !tbaa !204, !noalias !417
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.eq = zext i32 %.sroa.0198.0251 to i64
  %i.er = load ptr, ptr %i.ep, align 8, !tbaa !184, !noalias !418
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %i.eq
  %i.et = load i32, ptr %i.es, align 4, !tbaa !186, !noalias !418 ; 5 uses
  %i.eu = icmp eq i32 %i.et, -1
  br i1 %i.eu, label %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit.thread, label %_ZN5draco23GetParallelogramEntriesINS_24MeshAttributeCornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i

_ZN5draco23GetParallelogramEntriesINS_24MeshAttributeCornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i: ; preds = %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i
  %i.ev = zext i32 %i.et to i64
  %i.ew = load ptr, ptr %i.di, align 8, !tbaa !205, !noalias !419 ; 3 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.ev
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !207, !noalias !419
  %i.ez = zext i32 %i.ey to i64
  %i.fa = load ptr, ptr %i.co, align 8, !tbaa !58 ; 3 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %i.ez
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !102 ; 2 uses
  %i.fd = insertelement <2 x i32> poison, i32 %i.et, i64 0
  %i.fe = shufflevector <2 x i32> %i.fd, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ff = add nuw <2 x i32> %i.fe, <i32 0, i32 1>
  %i.fg = urem <2 x i32> %i.ff, splat (i32 3)
  %i.fh = icmp eq <2 x i32> %i.fg, zeroinitializer ; 2 uses
  %i.fi = extractelement <2 x i1> %i.fh, i64 1
  %spec.select.i.i.i.i.v = select i1 %i.fi, i32 -2, i32 1
  %spec.select.i.i.i.i = add i32 %i.et, %spec.select.i.i.i.i.v
  %i.fj = zext i32 %spec.select.i.i.i.i to i64
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.fj
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !207, !noalias !420
  %i.fm = zext i32 %i.fl to i64
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %i.fm
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !102 ; 2 uses
  %i.fp = extractelement <2 x i1> %i.fh, i64 0
  %.sink.i.i12.i.v.i = select i1 %i.fp, i32 2, i32 -1
  %.sink.i.i12.i.i = add i32 %.sink.i.i12.i.v.i, %i.et
  %i.fq = zext i32 %.sink.i.i12.i.i to i64
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.fq
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !207, !noalias !421
  %i.ft = zext i32 %i.fs to i64
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %i.ft
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !102 ; 2 uses
  %i.fw = sext i32 %i.fc to i64
  %i.fx = icmp sgt i64 %indvars.iv307, %i.fw
  %i.fy = sext i32 %i.fo to i64
  %i.fz = icmp sgt i64 %indvars.iv307, %i.fy
  %or.cond.i = select i1 %i.fx, i1 %i.fz, i1 false
  %i.ga = sext i32 %i.fv to i64
  %i.gb = icmp sgt i64 %indvars.iv307, %i.ga
  %or.cond40.i = select i1 %or.cond.i, i1 %i.gb, i1 false
  br i1 %or.cond40.i, label %bb.ai, label %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit.thread

bb.ai:                                            ; preds = %_ZN5draco23GetParallelogramEntriesINS_24MeshAttributeCornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i
  br i1 %.not.i.i.i.i, label %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.ai
  %i.gc = mul nsw i32 %i.fv, %4
  %i.gd = mul nsw i32 %i.fo, %4
  %i.ge = mul nsw i32 %i.fc, %4
  %i.gf = sext i32 %i.gd to i64                   ; 2 uses
  %i.gg = sext i32 %i.gc to i64                   ; 2 uses
  %i.gh = sext i32 %i.ge to i64                   ; 2 uses
  %invariant.gep.i = getelementptr [4 x i8], ptr %2, i64 %i.gf ; 4 uses
  %invariant.gep48.i = getelementptr [4 x i8], ptr %2, i64 %i.gg ; 4 uses
  %invariant.gep50.i = getelementptr [4 x i8], ptr %2, i64 %i.gh ; 4 uses
  br i1 %min.iters.check399, label %.lr.ph.i138.preheader, label %vector.memcheck394

vector.memcheck394:                               ; preds = %.lr.ph.preheader.i
  %i.gi = sub i64 %i.eg, %i.a                     ; 2 uses
  %i.gj = shl nsw i64 %i.gh, 2
  %i.gk = sub i64 %i.gj, %i.gi
  %diff.check = icmp ugt i64 %i.gk, -32
  %i.gl = shl nsw i64 %i.gg, 2
  %i.gm = sub i64 %i.gl, %i.gi
  %diff.check395 = icmp ugt i64 %i.gm, -32
  %conflict.rdx = or i1 %diff.check, %diff.check395
  %i.gn = shl nsw i64 %i.gf, 2
  %i.go = add i64 %i.gn, %i.a
  %i.gp = sub i64 %i.go, %i.eg
  %diff.check396 = icmp ugt i64 %i.gp, -32
  %conflict.rdx397 = or i1 %conflict.rdx, %diff.check396
  br i1 %conflict.rdx397, label %.lr.ph.i138.preheader, label %vector.body402

vector.body402:                                   ; preds = %vector.memcheck394, %vector.body402
  %index403 = phi i64 [ %index.next410, %vector.body402 ], [ 0, %vector.memcheck394 ] ; 5 uses
  %i.gq = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %index403 ; 2 uses
  %i.gr = getelementptr i8, ptr %i.gq, i64 16
  %wide.load404.a = load <4 x i32>, ptr %i.gq, align 4, !tbaa !102
  %wide.load405.a = load <4 x i32>, ptr %i.gr, align 4, !tbaa !102
  %i.gs = getelementptr [4 x i8], ptr %invariant.gep48.i, i64 %index403 ; 2 uses
  %i.gt = getelementptr i8, ptr %i.gs, i64 16
  %wide.load406.a = load <4 x i32>, ptr %i.gs, align 4, !tbaa !102
  %wide.load407 = load <4 x i32>, ptr %i.gt, align 4, !tbaa !102
  %i.gu = getelementptr [4 x i8], ptr %invariant.gep50.i, i64 %index403 ; 2 uses
  %i.gv = getelementptr i8, ptr %i.gu, i64 16
  %wide.load408 = load <4 x i32>, ptr %i.gu, align 4, !tbaa !102
  %wide.load409 = load <4 x i32>, ptr %i.gv, align 4, !tbaa !102
  %i.gw = add <4 x i32> %wide.load406.a, %wide.load404.a
  %i.gx = add <4 x i32> %wide.load407, %wide.load405.a
  %i.gy = sub <4 x i32> %i.gw, %wide.load408
  %i.gz = sub <4 x i32> %i.gx, %wide.load409
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %index403 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  store <4 x i32> %i.gy, ptr %i.ha, align 4, !tbaa !102
  store <4 x i32> %i.gz, ptr %i.hb, align 4, !tbaa !102
  %index.next410 = add nuw i64 %index403, 8       ; 2 uses
  %i.hc = icmp eq i64 %index.next410, %n.vec401
  br i1 %i.hc, label %middle.block411, label %vector.body402, !llvm.loop !386

middle.block411:                                  ; preds = %vector.body402
  br i1 %cmp.n412, label %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit, label %.lr.ph.i138.preheader

.lr.ph.i138.preheader:                            ; preds = %vector.memcheck394, %.lr.ph.preheader.i, %middle.block411
  %indvars.iv.i139.ph = phi i64 [ 0, %vector.memcheck394 ], [ 0, %.lr.ph.preheader.i ], [ %n.vec401, %middle.block411 ] ; 7 uses
  br i1 %lcmp.mod.not, label %.lr.ph.i138.prol.loopexit, label %.lr.ph.i138.prol

.lr.ph.i138.prol:                                 ; preds = %.lr.ph.i138.preheader
  %gep.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i139.ph
  %i.hd = load i32, ptr %gep.i.prol, align 4, !tbaa !102
  %gep49.i.prol = getelementptr [4 x i8], ptr %invariant.gep48.i, i64 %indvars.iv.i139.ph
  %i.he = load i32, ptr %gep49.i.prol, align 4, !tbaa !102
  %gep51.i.prol = getelementptr [4 x i8], ptr %invariant.gep50.i, i64 %indvars.iv.i139.ph
  %i.hf = load i32, ptr %gep51.i.prol, align 4, !tbaa !102
  %i.hg = add i32 %i.he, %i.hd
  %i.hh = sub i32 %i.hg, %i.hf
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %indvars.iv.i139.ph
  store i32 %i.hh, ptr %i.hi, align 4, !tbaa !102
  %indvars.iv.next.i140.prol = or disjoint i64 %indvars.iv.i139.ph, 1
  br label %.lr.ph.i138.prol.loopexit

.lr.ph.i138.prol.loopexit:                        ; preds = %.lr.ph.i138.prol, %.lr.ph.i138.preheader
  %indvars.iv.i139.unr = phi i64 [ %indvars.iv.i139.ph, %.lr.ph.i138.preheader ], [ %indvars.iv.next.i140.prol, %.lr.ph.i138.prol ]
  %i.hj = icmp eq i64 %indvars.iv.i139.ph, %i.do
  br i1 %i.hj, label %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit, label %.lr.ph.i138

.lr.ph.i138:                                      ; preds = %.lr.ph.i138.prol.loopexit, %.lr.ph.i138
  %indvars.iv.i139 = phi i64 [ %indvars.iv.next.i140.1, %.lr.ph.i138 ], [ %indvars.iv.i139.unr, %.lr.ph.i138.prol.loopexit ] ; 6 uses
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i139
  %i.hk = load i32, ptr %gep.i, align 4, !tbaa !102
  %gep49.i = getelementptr [4 x i8], ptr %invariant.gep48.i, i64 %indvars.iv.i139
  %i.hl = load i32, ptr %gep49.i, align 4, !tbaa !102
  %gep51.i = getelementptr [4 x i8], ptr %invariant.gep50.i, i64 %indvars.iv.i139
  %i.hm = load i32, ptr %gep51.i, align 4, !tbaa !102
  %i.hn = add i32 %i.hl, %i.hk
  %i.ho = sub i32 %i.hn, %i.hm
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %indvars.iv.i139
  store i32 %i.ho, ptr %i.hp, align 4, !tbaa !102
  %indvars.iv.next.i140 = add nuw nsw i64 %indvars.iv.i139, 1 ; 4 uses
  %gep.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i140
  %i.hq = load i32, ptr %gep.i.1, align 4, !tbaa !102
  %gep49.i.1 = getelementptr [4 x i8], ptr %invariant.gep48.i, i64 %indvars.iv.next.i140
  %i.hr = load i32, ptr %gep49.i.1, align 4, !tbaa !102
  %gep51.i.1 = getelementptr [4 x i8], ptr %invariant.gep50.i, i64 %indvars.iv.next.i140
  %i.hs = load i32, ptr %gep51.i.1, align 4, !tbaa !102
  %i.ht = add i32 %i.hr, %i.hq
  %i.hu = sub i32 %i.ht, %i.hs
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %indvars.iv.next.i140
  store i32 %i.hu, ptr %i.hv, align 4, !tbaa !102
  %indvars.iv.next.i140.1 = add nuw nsw i64 %indvars.iv.i139, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i140.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit, label %.lr.ph.i138, !llvm.loop !387

_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit: ; preds = %.lr.ph.i138.prol.loopexit, %.lr.ph.i138, %middle.block411, %bb.ai
  %i.hw = add nsw i32 %.085252, 1                 ; 2 uses
  %i.hx = icmp eq i32 %i.hw, 4
  br i1 %i.hx, label %.preheader238, label %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit.thread

bb.aj:                                            ; preds = %bb.af
  %i.hy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i180 = icmp eq ptr %.sroa.0208.0, null
  br i1 %.not.i.i.i180, label %_ZNSt6vectorIiSaIiEED2Ev.exit186, label %bb.bt

_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit.thread: ; preds = %bb.ah, %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, %_ZN5draco23GetParallelogramEntriesINS_24MeshAttributeCornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i, %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit
  %.186 = phi i32 [ %i.hw, %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit ], [ %.085252, %_ZN5draco23GetParallelogramEntriesINS_24MeshAttributeCornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i ], [ %.085252, %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i ], [ %.085252, %bb.ah ] ; 3 uses
  br i1 %.083253, label %_ZNK5draco24MeshAttributeCornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, label %bb.am

_ZNK5draco24MeshAttributeCornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i: ; preds = %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit.thread
  %i.hz = add nuw i32 %.sroa.0198.0251, 1         ; 2 uses
  %i.ia = urem i32 %i.hz, 3
  %.not.i.i.i141 = icmp eq i32 %i.ia, 0
  %i.ib = add i32 %.sroa.0198.0251, -2
  %spec.select.i.i.i = select i1 %.not.i.i.i141, i32 %i.ib, i32 %i.hz ; 4 uses
  %i.ic = icmp eq i32 %spec.select.i.i.i, -1
  br i1 %i.ic, label %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZNK5draco24MeshAttributeCornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i
  %i.id = load ptr, ptr %i.cm, align 8, !tbaa !144, !noalias !422
  %i.ie = lshr i32 %spec.select.i.i.i, 6
  %.zext.i.i.i142 = zext nneg i32 %i.ie to i64
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %.zext.i.i.i142
  %i.ig = and i32 %spec.select.i.i.i, 63
  %i.ih = zext nneg i32 %i.ig to i64
  %i.ii = shl nuw i64 1, %i.ih
  %i.ij = load i64, ptr %i.if, align 8, !tbaa !187, !noalias !422
  %i.ik = and i64 %i.ij, %i.ii
  %.not.i.i143 = icmp eq i64 %i.ik, 0
  br i1 %.not.i.i143, label %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i144, label %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i144: ; preds = %bb.ak
  %i.il = load ptr, ptr %i.dh, align 8, !tbaa !204, !noalias !422
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 24
  %i.in = zext i32 %spec.select.i.i.i to i64
  %i.io = load ptr, ptr %i.im, align 8, !tbaa !184, !noalias !423
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %i.in
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !186, !noalias !423 ; 3 uses
  %i.ir = icmp eq i32 %i.iq, -1
  br i1 %i.ir, label %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %bb.al

bb.al:                                            ; preds = %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i144
  %i.is = add nuw i32 %i.iq, 1                    ; 2 uses
  %i.it = urem i32 %i.is, 3
  %.not.i.i1.i = icmp eq i32 %i.it, 0
  %i.iu = add i32 %i.iq, -2
  %spec.select.i.i2.i = select i1 %.not.i.i1.i, i32 %i.iu, i32 %i.is
  br label %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

bb.am:                                            ; preds = %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit.thread
  %i.iv = urem i32 %.sroa.0198.0251, 3
  %.not.i.i.i145 = icmp eq i32 %i.iv, 0
  br i1 %.not.i.i.i145, label %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, label %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i

_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i: ; preds = %bb.am
  %i.iw = add i32 %.sroa.0198.0251, -1
  br label %bb.an

_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i: ; preds = %bb.am
  %i.ix = add i32 %.sroa.0198.0251, 2             ; 2 uses
  %i.iy = icmp eq i32 %i.ix, -1
  br i1 %i.iy, label %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %bb.an

bb.an:                                            ; preds = %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i
  %.sink.i.i9.i = phi i32 [ %i.iw, %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i ], [ %i.ix, %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i ] ; 3 uses
  %i.iz = load ptr, ptr %i.cm, align 8, !tbaa !144, !noalias !424
  %i.ja = lshr i32 %.sink.i.i9.i, 6
  %.zext.i.i.i146 = zext nneg i32 %i.ja to i64
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %.zext.i.i.i146
  %i.jc = and i32 %.sink.i.i9.i, 63
  %i.jd = zext nneg i32 %i.jc to i64
  %i.je = shl nuw i64 1, %i.jd
  %i.jf = load i64, ptr %i.jb, align 8, !tbaa !187, !noalias !424
  %i.jg = and i64 %i.je, %i.jf
  %.not.i.i147 = icmp eq i64 %i.jg, 0
  br i1 %.not.i.i147, label %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i148, label %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i148: ; preds = %bb.an
  %i.jh = load ptr, ptr %i.dh, align 8, !tbaa !204, !noalias !424
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 24
  %i.jj = zext i32 %.sink.i.i9.i to i64
  %i.jk = load ptr, ptr %i.ji, align 8, !tbaa !184, !noalias !425
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %i.jj
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !186, !noalias !425 ; 4 uses
  %i.jn = icmp eq i32 %i.jm, -1
  br i1 %i.jn, label %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i148
  %i.jo = urem i32 %i.jm, 3
  %.not.i.i1.i149 = icmp eq i32 %i.jo, 0
  br i1 %.not.i.i1.i149, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.jp = add i32 %i.jm, -1
  br label %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

bb.aq:                                            ; preds = %bb.ao
  %i.jq = add i32 %i.jm, 2
  br label %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit: ; preds = %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, %bb.an, %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i148, %bb.ap, %bb.aq, %_ZNK5draco24MeshAttributeCornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, %bb.ak, %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i144, %bb.al
  %.sroa.0198.1 = phi i32 [ -1, %bb.ak ], [ -1, %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i144 ], [ %spec.select.i.i2.i, %bb.al ], [ -1, %_ZNK5draco24MeshAttributeCornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i ], [ %i.jp, %bb.ap ], [ %i.jq, %bb.aq ], [ -1, %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i148 ], [ -1, %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i ], [ -1, %bb.an ] ; 3 uses
  %i.jr = icmp eq i32 %.sroa.0198.1, %i.ds
  br i1 %i.jr, label %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit._crit_edge, label %bb.ar

bb.ar:                                            ; preds = %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  %i.js = icmp eq i32 %.sroa.0198.1, -1
  %or.cond = and i1 %.083253, %i.js
  br i1 %or.cond, label %bb.as, label %_ZNK5draco24MeshAttributeCornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit159

bb.as:                                            ; preds = %bb.ar
  br i1 %brmerge, label %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i151, label %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit._crit_edge

_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i151: ; preds = %bb.as
  %i.jt = load ptr, ptr %i.cm, align 8, !tbaa !144, !noalias !426
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.jt, i64 %.zext.i.i.i153
  %i.jv = load i64, ptr %i.ju, align 8, !tbaa !187, !noalias !426
  %i.jw = and i64 %i.eb, %i.jv
  %.not.i.i154 = icmp eq i64 %i.jw, 0
  br i1 %.not.i.i154, label %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i156, label %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit._crit_edge

_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i156: ; preds = %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i151
  %i.jx = load ptr, ptr %i.dh, align 8, !tbaa !204, !noalias !426
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 24
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !184, !noalias !427
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.jz, i64 %i.ec
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !186, !noalias !427 ; 4 uses
  %i.kc = icmp eq i32 %i.kb, -1
  br i1 %i.kc, label %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit._crit_edge, label %bb.at

bb.at:                                            ; preds = %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i156
  %i.kd = urem i32 %i.kb, 3
  %.not.i.i1.i157 = icmp eq i32 %i.kd, 0
  br i1 %.not.i.i1.i157, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ke = add i32 %i.kb, -1
  br label %_ZNK5draco24MeshAttributeCornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit159

bb.av:                                            ; preds = %bb.at
  %i.kf = add i32 %i.kb, 2
  br label %_ZNK5draco24MeshAttributeCornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit159

_ZNK5draco24MeshAttributeCornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit159: ; preds = %bb.au, %bb.av, %bb.ar
  %.sroa.0198.2 = phi i32 [ %.sroa.0198.1, %bb.ar ], [ %i.ke, %bb.au ], [ %i.kf, %bb.av ] ; 2 uses
  %.184 = phi i1 [ %.083253, %bb.ar ], [ false, %bb.au ], [ false, %bb.av ]
  %.not233 = icmp eq i32 %.sroa.0198.2, -1
  br i1 %.not233, label %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit._crit_edge, label %bb.ah, !llvm.loop !406

_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit._crit_edge: ; preds = %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i151, %bb.as, %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i156, %_ZNK5draco24MeshAttributeCornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit159, %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  %i.kg = icmp sgt i32 %.186, 0
  br i1 %i.kg, label %.preheader238, label %.thread230

.preheader238:                                    ; preds = %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit, %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit._crit_edge
  %.287368 = phi i32 [ %.186, %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit._crit_edge ], [ 4, %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit ] ; 2 uses
  br i1 %.not.i.i.i.i, label %.lr.ph265, label %.lr.ph257.preheader

.lr.ph257.preheader:                              ; preds = %.preheader238
  call void @llvm.memset.p0.i64(ptr align 4 %.sroa.0208.0, i8 0, i64 %i.dn, i1 false), !tbaa !102
  br label %.lr.ph265

.lr.ph265:                                        ; preds = %.preheader238, %.lr.ph257.preheader
  %i.kh = add nsw i32 %.287368, -1
  %i.ki = zext nneg i32 %i.kh to i64              ; 2 uses
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.ki ; 2 uses
  %i.kk = getelementptr inbounds nuw [40 x i8], ptr %i.dj, i64 %i.ki ; 3 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 16
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !144
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kk, i64 24
  %i.ko = load i32, ptr %i.kn, align 8, !tbaa !145
  %i.kp = load ptr, ptr %i.kk, align 8, !tbaa !144 ; 2 uses
  %i.kq = ptrtoint ptr %i.km to i64
  %i.kr = ptrtoint ptr %i.kp to i64
  %i.ks = sub i64 %i.kq, %i.kr
  %i.kt = shl nsw i64 %i.ks, 3
  %i.ku = zext i32 %i.ko to i64
  %i.kv = add nsw i64 %i.kt, %i.ku
  %.promoted = load i32, ptr %i.kj, align 4, !tbaa !102
  %i.kw = sext i32 %.promoted to i64              ; 2 uses
  %i.kx = call i64 @llvm.usub.sat.i64(i64 %i.kv, i64 %i.kw)
  %wide.trip.count299 = zext nneg i32 %.287368 to i64
  br label %bb.aw

bb.aw:                                            ; preds = %.lr.ph265, %.thread
  %indvars.iv292 = phi i64 [ 0, %.lr.ph265 ], [ %indvars.iv.next293, %.thread ] ; 3 uses
  %indvars.iv290 = phi i64 [ %i.kw, %.lr.ph265 ], [ %indvars.iv.next291, %.thread ] ; 4 uses
  %.082262 = phi i32 [ 0, %.lr.ph265 ], [ %.2223, %.thread ] ; 2 uses
  %indvars.iv.next291 = add nsw i64 %indvars.iv290, 1 ; 2 uses
  %i.ky = trunc nsw i64 %indvars.iv.next291 to i32
  store i32 %i.ky, ptr %i.kj, align 4, !tbaa !102
  %exitcond297.not = icmp eq i64 %indvars.iv292, %i.kx
  br i1 %exitcond297.not, label %.critedge130, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.kz = trunc nsw i64 %indvars.iv290 to i32
  %i.la = sdiv i32 %i.kz, 64
  %.sext = sext i32 %i.la to i64
  %i.lb = getelementptr inbounds [8 x i8], ptr %i.kp, i64 %.sext
  %i.lc = and i64 %indvars.iv290, -9223372036854775745
  %i.ld = icmp ugt i64 %i.lc, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.ld, i64 -8, i64 0
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.lb, i64 %storemerge.idx.i.i.i.i.i
  %i.le = and i64 %indvars.iv290, 63
  %i.lf = shl nuw i64 1, %i.le
  %i.lg = load i64, ptr %storemerge.i.i.i.i.i, align 8, !tbaa !187
  %i.lh = and i64 %i.lg, %i.lf
  %.not235 = icmp eq i64 %i.lh, 0
  br i1 %.not235, label %bb.ay, label %.thread

bb.ay:                                            ; preds = %bb.ax
  %i.li = add nsw i32 %.082262, 1                 ; 4 uses
  br i1 %.not.i.i.i.i, label %.thread, label %.lr.ph260

.lr.ph260:                                        ; preds = %bb.ay
  %i.lj = getelementptr inbounds nuw [24 x i8], ptr %6, i64 %indvars.iv292
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !58 ; 8 uses
  br i1 %min.iters.check381, label %scalar.ph380.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph260
  %scevgep379 = getelementptr i8, ptr %i.lk, i64 %i.dn
  %bound0 = icmp ult ptr %.sroa.0208.0, %scevgep379
  %bound1 = icmp ult ptr %i.lk, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph380.preheader, label %vector.body384

vector.body384:                                   ; preds = %vector.memcheck, %vector.body384
  %index385 = phi i64 [ %index.next390, %vector.body384 ], [ 0, %vector.memcheck ] ; 3 uses
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0208.0, i64 %index385 ; 3 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 16 ; 2 uses
  %wide.load386.a = load <4 x i32>, ptr %i.ll, align 4, !tbaa !102, !alias.scope !428, !noalias !429
  %wide.load387 = load <4 x i32>, ptr %i.lm, align 4, !tbaa !102, !alias.scope !428, !noalias !429
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.lk, i64 %index385 ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 16
  %wide.load388 = load <4 x i32>, ptr %i.ln, align 4, !tbaa !102, !alias.scope !429
  %wide.load389 = load <4 x i32>, ptr %i.lo, align 4, !tbaa !102, !alias.scope !429
  %i.lp = add <4 x i32> %wide.load388, %wide.load386.a
  %i.lq = add <4 x i32> %wide.load389, %wide.load387
  store <4 x i32> %i.lp, ptr %i.ll, align 4, !tbaa !102, !alias.scope !428, !noalias !429
  store <4 x i32> %i.lq, ptr %i.lm, align 4, !tbaa !102, !alias.scope !428, !noalias !429
  %index.next390 = add nuw i64 %index385, 8       ; 2 uses
  %i.lr = icmp eq i64 %index.next390, %n.vec383
  br i1 %i.lr, label %middle.block391, label %vector.body384, !llvm.loop !410

middle.block391:                                  ; preds = %vector.body384
  br i1 %cmp.n392, label %.thread, label %scalar.ph380.preheader

scalar.ph380.preheader:                           ; preds = %vector.memcheck, %.lr.ph260, %middle.block391
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph260 ], [ %n.vec383, %middle.block391 ] ; 3 uses
  br i1 %lcmp.mod420.not, label %scalar.ph380.prol.loopexit, label %scalar.ph380.prol

scalar.ph380.prol:                                ; preds = %scalar.ph380.preheader, %scalar.ph380.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph380.prol ], [ %indvars.iv.ph, %scalar.ph380.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph380.prol ], [ 0, %scalar.ph380.preheader ]
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0208.0, i64 %indvars.iv.prol ; 2 uses
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !102
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.lk, i64 %indvars.iv.prol
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !102
  %i.lw = add i32 %i.lv, %i.lt
  store i32 %i.lw, ptr %i.ls, align 4, !tbaa !102
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter419
  br i1 %prol.iter.cmp.not, label %scalar.ph380.prol.loopexit, label %scalar.ph380.prol, !llvm.loop !411

scalar.ph380.prol.loopexit:                       ; preds = %scalar.ph380.prol, %scalar.ph380.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph380.preheader ], [ %indvars.iv.next.prol, %scalar.ph380.prol ]
  %i.lx = sub nsw i64 %indvars.iv.ph, %wide.trip.count.i
  %i.ly = icmp ugt i64 %i.lx, -4
  br i1 %i.ly, label %.thread, label %scalar.ph380

scalar.ph380:                                     ; preds = %scalar.ph380.prol.loopexit, %scalar.ph380
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph380 ], [ %indvars.iv.unr, %scalar.ph380.prol.loopexit ] ; 6 uses
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0208.0, i64 %indvars.iv ; 2 uses
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !102
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.lk, i64 %indvars.iv
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !102
  %i.md = add i32 %i.mc, %i.ma
  store i32 %i.md, ptr %i.lz, align 4, !tbaa !102
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0208.0, i64 %indvars.iv.next ; 2 uses
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !102
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.lk, i64 %indvars.iv.next
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !102
  %i.mi = add i32 %i.mh, %i.mf
  store i32 %i.mi, ptr %i.me, align 4, !tbaa !102
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0208.0, i64 %indvars.iv.next.1 ; 2 uses
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !102
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.lk, i64 %indvars.iv.next.1
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !102
  %i.mn = add i32 %i.mm, %i.mk
  store i32 %i.mn, ptr %i.mj, align 4, !tbaa !102
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0208.0, i64 %indvars.iv.next.2 ; 2 uses
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !102
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %i.lk, i64 %indvars.iv.next.2
  %i.mr = load i32, ptr %i.mq, align 4, !tbaa !102
  %i.ms = add i32 %i.mr, %i.mp
  store i32 %i.ms, ptr %i.mo, align 4, !tbaa !102
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count.i
  br i1 %exitcond.not.3, label %.thread, label %scalar.ph380, !llvm.loop !412

.thread:                                          ; preds = %scalar.ph380.prol.loopexit, %scalar.ph380, %middle.block391, %bb.ay, %bb.ax
  %.2223 = phi i32 [ %.082262, %bb.ax ], [ %i.li, %bb.ay ], [ %i.li, %middle.block391 ], [ %i.li, %scalar.ph380 ], [ %i.li, %scalar.ph380.prol.loopexit ] ; 4 uses
  %indvars.iv.next293 = add nuw nsw i64 %indvars.iv292, 1 ; 2 uses
  %exitcond300.not = icmp eq i64 %indvars.iv.next293, %wide.trip.count299
  br i1 %exitcond300.not, label %.thread228, label %bb.aw, !llvm.loop !413

.thread228:                                       ; preds = %.thread
  %i.mt = mul nuw nsw i64 %indvars.iv307, %i.e    ; 2 uses
  %i.mu = icmp eq i32 %.2223, 0
  br i1 %i.mu, label %.thread230, label %.preheader

.preheader:                                       ; preds = %.thread228
  br i1 %.not.i.i.i.i, label %._crit_edge269, label %.lr.ph268.preheader

.lr.ph268.preheader:                              ; preds = %.preheader
  br i1 %min.iters.check, label %.lr.ph268.preheader415, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph268.preheader
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.2223, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0208.0, i64 %index ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.mv, align 4, !tbaa !102
  %i.mw = sdiv <4 x i32> %wide.load, %broadcast.splat
  store <4 x i32> %i.mw, ptr %i.mv, align 4, !tbaa !102
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.mx = icmp eq i64 %index.next, %n.vec
  br i1 %i.mx, label %middle.block, label %vector.body, !llvm.loop !414

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge269, label %.lr.ph268.preheader415

.lr.ph268.preheader415:                           ; preds = %.lr.ph268.preheader, %middle.block
  %indvars.iv301.ph = phi i64 [ 0, %.lr.ph268.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph268

.thread230:                                       ; preds = %bb.ag, %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit._crit_edge, %.thread228
  %.pn = trunc i64 %indvars.iv307 to i32
  %i.my = mul i32 %4, %.pn
  %i.mz = add nsw i64 %indvars.iv307, -1
  %i.na = mul nuw nsw i64 %i.mz, %i.e
  %i.nb = getelementptr inbounds [4 x i8], ptr %2, i64 %i.na
  %i.nc = sext i32 %i.my to i64                   ; 2 uses
  %i.nd = getelementptr inbounds [4 x i8], ptr %1, i64 %i.nc
  %i.ne = getelementptr inbounds [4 x i8], ptr %2, i64 %i.nc
  %i.nf = load i32, ptr %i.c, align 8, !tbaa !180
  %i.ng = icmp sgt i32 %i.nf, 0
  br i1 %i.ng, label %.lr.ph.i.i160, label %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit169

.lr.ph.i.i160:                                    ; preds = %.thread230
  %i.nh = load ptr, ptr %i.d, align 8             ; 3 uses
  br label %bb.az

bb.az:                                            ; preds = %bb.be, %.lr.ph.i.i160
  %indvars.iv.i.i161 = phi i64 [ 0, %.lr.ph.i.i160 ], [ %indvars.iv.next.i.i162, %bb.be ] ; 4 uses
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.nb, i64 %indvars.iv.i.i161
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !102 ; 3 uses
  %i.nk = load i32, ptr %i.dk, align 8, !tbaa !176 ; 2 uses
  %i.nl = icmp sgt i32 %i.nj, %i.nk
  br i1 %i.nl, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %indvars.iv.i.i161
  store i32 %i.nk, ptr %i.nm, align 4, !tbaa !102
  br label %bb.be

bb.bb:                                            ; preds = %bb.az
  %i.nn = load i32, ptr %i.dl, align 4, !tbaa !175 ; 2 uses
  %i.no = icmp slt i32 %i.nj, %i.nn
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %indvars.iv.i.i161 ; 2 uses
  br i1 %i.no, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  store i32 %i.nn, ptr %i.np, align 4, !tbaa !102
  br label %bb.be

bb.bd:                                            ; preds = %bb.bb
  store i32 %i.nj, ptr %i.np, align 4, !tbaa !102
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc, %bb.ba
  %indvars.iv.next.i.i162 = add nuw nsw i64 %indvars.iv.i.i161, 1 ; 2 uses
  %i.nq = load i32, ptr %i.c, align 8, !tbaa !180 ; 2 uses
  %i.nr = sext i32 %i.nq to i64
  %i.ns = icmp slt i64 %indvars.iv.next.i.i162, %i.nr
  br i1 %i.ns, label %bb.az, label %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i163, !llvm.loop !1

_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i163: ; preds = %bb.be
  %i.nt = icmp sgt i32 %i.nq, 0
  br i1 %i.nt, label %.lr.ph.i164, label %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit169

.lr.ph.i164:                                      ; preds = %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i163, %bb.bi
  %indvars.iv.i165 = phi i64 [ %indvars.iv.next.i166, %bb.bi ], [ 0, %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i163 ] ; 4 uses
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %indvars.iv.i165
  %i.nv = load i32, ptr %i.nu, align 4, !tbaa !102
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %i.nd, i64 %indvars.iv.i165
  %i.nx = load i32, ptr %i.nw, align 4, !tbaa !102
  %i.ny = add i32 %i.nx, %i.nv                    ; 5 uses
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.ne, i64 %indvars.iv.i165 ; 2 uses
  store i32 %i.ny, ptr %i.nz, align 4, !tbaa !102
  %i.oa = load i32, ptr %i.dk, align 8, !tbaa !176
  %i.ob = icmp sgt i32 %i.ny, %i.oa
  br i1 %i.ob, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %.lr.ph.i164
  %i.oc = load i32, ptr %i.dm, align 4, !tbaa !177
  %i.od = sub nsw i32 %i.ny, %i.oc
  br label %.sink.split.i167

bb.bg:                                            ; preds = %.lr.ph.i164
  %i.oe = load i32, ptr %i.dl, align 4, !tbaa !175
  %i.of = icmp slt i32 %i.ny, %i.oe
  br i1 %i.of, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.og = load i32, ptr %i.dm, align 4, !tbaa !177
  %i.oh = add nsw i32 %i.og, %i.ny
  br label %.sink.split.i167

.sink.split.i167:                                 ; preds = %bb.bh, %bb.bf
  %.sink.i168 = phi i32 [ %i.od, %bb.bf ], [ %i.oh, %bb.bh ]
  store i32 %.sink.i168, ptr %i.nz, align 4, !tbaa !102
  br label %bb.bi

bb.bi:                                            ; preds = %.sink.split.i167, %bb.bg
  %indvars.iv.next.i166 = add nuw nsw i64 %indvars.iv.i165, 1 ; 2 uses
  %i.oi = load i32, ptr %i.c, align 8, !tbaa !180
  %i.oj = sext i32 %i.oi to i64
  %i.ok = icmp slt i64 %indvars.iv.next.i166, %i.oj
  br i1 %i.ok, label %.lr.ph.i164, label %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit169, !llvm.loop !2

._crit_edge269:                                   ; preds = %.lr.ph268, %middle.block, %.preheader
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.mt
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.mt
  %i.on = load i32, ptr %i.c, align 8, !tbaa !180
  %i.oo = icmp sgt i32 %i.on, 0
  br i1 %i.oo, label %.lr.ph.i.i170, label %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit169

.lr.ph.i.i170:                                    ; preds = %._crit_edge269
  %i.op = load ptr, ptr %i.d, align 8             ; 3 uses
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bo, %.lr.ph.i.i170
  %indvars.iv.i.i171 = phi i64 [ 0, %.lr.ph.i.i170 ], [ %indvars.iv.next.i.i172, %bb.bo ] ; 4 uses
  %i.oq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0208.0, i64 %indvars.iv.i.i171
  %i.or = load i32, ptr %i.oq, align 4, !tbaa !102 ; 3 uses
  %i.os = load i32, ptr %i.dk, align 8, !tbaa !176 ; 2 uses
  %i.ot = icmp sgt i32 %i.or, %i.os
  br i1 %i.ot, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %i.op, i64 %indvars.iv.i.i171
  store i32 %i.os, ptr %i.ou, align 4, !tbaa !102
  br label %bb.bo

bb.bl:                                            ; preds = %bb.bj
  %i.ov = load i32, ptr %i.dl, align 4, !tbaa !175 ; 2 uses
  %i.ow = icmp slt i32 %i.or, %i.ov
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %i.op, i64 %indvars.iv.i.i171 ; 2 uses
  br i1 %i.ow, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  store i32 %i.ov, ptr %i.ox, align 4, !tbaa !102
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bl
  store i32 %i.or, ptr %i.ox, align 4, !tbaa !102
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm, %bb.bk
  %indvars.iv.next.i.i172 = add nuw nsw i64 %indvars.iv.i.i171, 1 ; 2 uses
  %i.oy = load i32, ptr %i.c, align 8, !tbaa !180 ; 2 uses
  %i.oz = sext i32 %i.oy to i64
  %i.pa = icmp slt i64 %indvars.iv.next.i.i172, %i.oz
  br i1 %i.pa, label %bb.bj, label %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i173, !llvm.loop !1

_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i173: ; preds = %bb.bo
  %i.pb = icmp sgt i32 %i.oy, 0
  br i1 %i.pb, label %.lr.ph.i174, label %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit169

.lr.ph.i174:                                      ; preds = %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i173, %bb.bs
  %indvars.iv.i175 = phi i64 [ %indvars.iv.next.i176, %bb.bs ], [ 0, %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i173 ] ; 4 uses
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %i.op, i64 %indvars.iv.i175
  %i.pd = load i32, ptr %i.pc, align 4, !tbaa !102
  %i.pe = getelementptr inbounds nuw [4 x i8], ptr %i.ol, i64 %indvars.iv.i175
  %i.pf = load i32, ptr %i.pe, align 4, !tbaa !102
  %i.pg = add i32 %i.pf, %i.pd                    ; 5 uses
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %i.om, i64 %indvars.iv.i175 ; 2 uses
  store i32 %i.pg, ptr %i.ph, align 4, !tbaa !102
  %i.pi = load i32, ptr %i.dk, align 8, !tbaa !176
  %i.pj = icmp sgt i32 %i.pg, %i.pi
  br i1 %i.pj, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %.lr.ph.i174
  %i.pk = load i32, ptr %i.dm, align 4, !tbaa !177
  %i.pl = sub nsw i32 %i.pg, %i.pk
  br label %.sink.split.i177

bb.bq:                                            ; preds = %.lr.ph.i174
  %i.pm = load i32, ptr %i.dl, align 4, !tbaa !175
  %i.pn = icmp slt i32 %i.pg, %i.pm
  br i1 %i.pn, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.po = load i32, ptr %i.dm, align 4, !tbaa !177
  %i.pp = add nsw i32 %i.po, %i.pg
  br label %.sink.split.i177

.sink.split.i177:                                 ; preds = %bb.br, %bb.bp
  %.sink.i178 = phi i32 [ %i.pl, %bb.bp ], [ %i.pp, %bb.br ]
  store i32 %.sink.i178, ptr %i.ph, align 4, !tbaa !102
  br label %bb.bs

bb.bs:                                            ; preds = %.sink.split.i177, %bb.bq
  %indvars.iv.next.i176 = add nuw nsw i64 %indvars.iv.i175, 1 ; 2 uses
  %i.pq = load i32, ptr %i.c, align 8, !tbaa !180
  %i.pr = sext i32 %i.pq to i64
  %i.ps = icmp slt i64 %indvars.iv.next.i176, %i.pr
  br i1 %i.ps, label %.lr.ph.i174, label %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit169, !llvm.loop !2

.lr.ph268:                                        ; preds = %.lr.ph268.preheader415, %.lr.ph268
  %indvars.iv301 = phi i64 [ %indvars.iv.next302, %.lr.ph268 ], [ %indvars.iv301.ph, %.lr.ph268.preheader415 ] ; 2 uses
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0208.0, i64 %indvars.iv301 ; 2 uses
  %i.pu = load i32, ptr %i.pt, align 4, !tbaa !102
  %i.pv = sdiv i32 %i.pu, %.2223
  store i32 %i.pv, ptr %i.pt, align 4, !tbaa !102
  %indvars.iv.next302 = add nuw nsw i64 %indvars.iv301, 1 ; 2 uses
  %exitcond306.not = icmp eq i64 %indvars.iv.next302, %wide.trip.count.i
  br i1 %exitcond306.not, label %._crit_edge269, label %.lr.ph268, !llvm.loop !415

_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit169: ; preds = %bb.bs, %bb.bi, %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i173, %._crit_edge269, %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i163, %.thread230
  %indvars.iv.next308 = add nuw nsw i64 %indvars.iv307, 1 ; 2 uses
  %exitcond313.not = icmp eq i64 %indvars.iv.next308, %wide.trip.count312
  br i1 %exitcond313.not, label %.critedge130, label %bb.ae, !llvm.loop !416

bb.bt:                                            ; preds = %bb.aj
  %i.pw = ptrtoint ptr %.sroa.14.0 to i64
  %i.px = ptrtoint ptr %.sroa.0208.0 to i64
  %i.py = sub i64 %i.pw, %i.px
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0208.0, i64 noundef %i.py) #18
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit186

.critedge130:                                     ; preds = %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit169, %bb.aw, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %.not126245 = phi i1 [ false, %bb.aw ], [ true, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit ], [ true, %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit169 ]
  %.not.i.i.i181 = icmp eq ptr %.sroa.0208.0, null
  br i1 %.not.i.i.i181, label %_ZNSt6vectorIiSaIiEED2Ev.exit184, label %bb.bu

bb.bu:                                            ; preds = %.critedge130
  %i.pz = ptrtoint ptr %.sroa.14.0 to i64
  %i.qa = ptrtoint ptr %.sroa.0208.0 to i64
  %i.qb = sub i64 %i.pz, %i.qa
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0208.0, i64 noundef %i.qb) #18
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit184

_ZNSt6vectorIiSaIiEED2Ev.exit184:                 ; preds = %.critedge130, %bb.bu
  call void @_ZdlPvm(ptr noundef nonnull %i.cp, i64 noundef 16) #18
  %i.qc = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !58 ; 3 uses
  %.not.i.i.i187 = icmp eq ptr %i.qd, null
  br i1 %.not.i.i.i187, label %_ZNSt6vectorIiSaIiEED2Ev.exit188, label %bb.bv

_ZNSt6vectorIiSaIiEED2Ev.exit186:                 ; preds = %bb.bt, %bb.aj, %bb.ad
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dq, %bb.ad ], [ %i.hy, %bb.aj ], [ %i.hy, %bb.bt ]
  call void @_ZdlPvm(ptr noundef nonnull %i.cp, i64 noundef 16) #18
  br label %bb.bz

bb.bv:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit184
  %i.qe = getelementptr inbounds nuw i8, ptr %6, i64 88
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !59
  %i.qg = ptrtoint ptr %i.qf to i64
  %i.qh = ptrtoint ptr %i.qd to i64
  %i.qi = sub i64 %i.qg, %i.qh
  call void @_ZdlPvm(ptr noundef nonnull %i.qd, i64 noundef %i.qi) #18
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit188

_ZNSt6vectorIiSaIiEED2Ev.exit188:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit184, %bb.bv
  %i.qj = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.qk = load ptr, ptr %i.qj, align 16, !tbaa !58 ; 3 uses
  %.not.i.i.i187.1 = icmp eq ptr %i.qk, null
  br i1 %.not.i.i.i187.1, label %_ZNSt6vectorIiSaIiEED2Ev.exit188.1, label %bb.bw

bb.bw:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit188
  %i.ql = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.qm = load ptr, ptr %i.ql, align 16, !tbaa !59
  %i.qn = ptrtoint ptr %i.qm to i64
  %i.qo = ptrtoint ptr %i.qk to i64
  %i.qp = sub i64 %i.qn, %i.qo
  call void @_ZdlPvm(ptr noundef nonnull %i.qk, i64 noundef %i.qp) #18
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit188.1

_ZNSt6vectorIiSaIiEED2Ev.exit188.1:               ; preds = %bb.bw, %_ZNSt6vectorIiSaIiEED2Ev.exit188
  %i.qq = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.qr = load ptr, ptr %i.qq, align 8, !tbaa !58 ; 3 uses
  %.not.i.i.i187.2 = icmp eq ptr %i.qr, null
  br i1 %.not.i.i.i187.2, label %_ZNSt6vectorIiSaIiEED2Ev.exit188.2, label %bb.bx

bb.bx:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit188.1
  %i.qs = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !59
  %i.qu = ptrtoint ptr %i.qt to i64
  %i.qv = ptrtoint ptr %i.qr to i64
  %i.qw = sub i64 %i.qu, %i.qv
  call void @_ZdlPvm(ptr noundef nonnull %i.qr, i64 noundef %i.qw) #18
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit188.2

_ZNSt6vectorIiSaIiEED2Ev.exit188.2:               ; preds = %bb.bx, %_ZNSt6vectorIiSaIiEED2Ev.exit188.1
  %i.qx = load ptr, ptr %6, align 16, !tbaa !58   ; 3 uses
  %.not.i.i.i187.3 = icmp eq ptr %i.qx, null
  br i1 %.not.i.i.i187.3, label %_ZNSt6vectorIiSaIiEED2Ev.exit188.3, label %bb.by

bb.by:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit188.2
  %i.qy = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.qz = load ptr, ptr %i.qy, align 16, !tbaa !59
  %i.ra = ptrtoint ptr %i.qz to i64
  %i.rb = ptrtoint ptr %i.qx to i64
  %i.rc = sub i64 %i.ra, %i.rb
  call void @_ZdlPvm(ptr noundef nonnull %i.qx, i64 noundef %i.rc) #18
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit188.3

_ZNSt6vectorIiSaIiEED2Ev.exit188.3:               ; preds = %bb.by, %_ZNSt6vectorIiSaIiEED2Ev.exit188.2
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  ret i1 %.not126245

bb.bz:                                            ; preds = %bb.ac, %_ZNSt6vectorIiSaIiEED2Ev.exit186, %bb.z
  %.pn127 = phi { ptr, i32 } [ %i.ck, %bb.z ], [ %i.dp, %bb.ac ], [ %.pn.pn.pn.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit186 ]
  %i.rd = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !58 ; 3 uses
  %.not.i.i.i189 = icmp eq ptr %i.re, null
  br i1 %.not.i.i.i189, label %_ZNSt6vectorIiSaIiEED2Ev.exit190, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.rf = getelementptr inbounds nuw i8, ptr %6, i64 88
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !59
  %i.rh = ptrtoint ptr %i.rg to i64
  %i.ri = ptrtoint ptr %i.re to i64
  %i.rj = sub i64 %i.rh, %i.ri
  call void @_ZdlPvm(ptr noundef nonnull %i.re, i64 noundef %i.rj) #18
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit190

_ZNSt6vectorIiSaIiEED2Ev.exit190:                 ; preds = %bb.bz, %bb.ca
  %i.rk = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.rl = load ptr, ptr %i.rk, align 16, !tbaa !58 ; 3 uses
  %.not.i.i.i189.1 = icmp eq ptr %i.rl, null
  br i1 %.not.i.i.i189.1, label %_ZNSt6vectorIiSaIiEED2Ev.exit190.1, label %bb.cb

bb.cb:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit190
  %i.rm = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.rn = load ptr, ptr %i.rm, align 16, !tbaa !59
  %i.ro = ptrtoint ptr %i.rn to i64
  %i.rp = ptrtoint ptr %i.rl to i64
  %i.rq = sub i64 %i.ro, %i.rp
  call void @_ZdlPvm(ptr noundef nonnull %i.rl, i64 noundef %i.rq) #18
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit190.1

_ZNSt6vectorIiSaIiEED2Ev.exit190.1:               ; preds = %bb.cb, %_ZNSt6vectorIiSaIiEED2Ev.exit190
  %i.rr = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.rs = load ptr, ptr %i.rr, align 8, !tbaa !58 ; 3 uses
  %.not.i.i.i189.2 = icmp eq ptr %i.rs, null
  br i1 %.not.i.i.i189.2, label %_ZNSt6vectorIiSaIiEED2Ev.exit190.2, label %bb.cc

bb.cc:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit190.1
  %i.rt = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.ru = load ptr, ptr %i.rt, align 8, !tbaa !59
  %i.rv = ptrtoint ptr %i.ru to i64
  %i.rw = ptrtoint ptr %i.rs to i64
  %i.rx = sub i64 %i.rv, %i.rw
  call void @_ZdlPvm(ptr noundef nonnull %i.rs, i64 noundef %i.rx) #18
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit190.2

_ZNSt6vectorIiSaIiEED2Ev.exit190.2:               ; preds = %bb.cc, %_ZNSt6vectorIiSaIiEED2Ev.exit190.1
  %i.ry = load ptr, ptr %6, align 16, !tbaa !58   ; 3 uses
  %.not.i.i.i189.3 = icmp eq ptr %i.ry, null
  br i1 %.not.i.i.i189.3, label %_ZNSt6vectorIiSaIiEED2Ev.exit190.3, label %bb.cd

bb.cd:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit190.2
  %i.rz = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.sa = load ptr, ptr %i.rz, align 16, !tbaa !59
  %i.sb = ptrtoint ptr %i.sa to i64
  %i.sc = ptrtoint ptr %i.ry to i64
  %i.sd = sub i64 %i.sb, %i.sc
  call void @_ZdlPvm(ptr noundef nonnull %i.ry, i64 noundef %i.sd) #18
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit190.3

_ZNSt6vectorIiSaIiEED2Ev.exit190.3:               ; preds = %bb.cd, %_ZNSt6vectorIiSaIiEED2Ev.exit190.2
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  resume { ptr, i32 } %.pn127
}

declare void @_ZN5draco14RAnsBitDecoderC1Ev(ptr noundef nonnull align 8 dereferenceable(17)) unnamed_addr #1

declare noundef zeroext i1 @_ZN5draco14RAnsBitDecoder13StartDecodingEPNS_13DecoderBufferE(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN5draco14RAnsBitDecoder13DecodeNextBitEv(ptr noundef nonnull align 8 dereferenceable(17)) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN5draco14RAnsBitDecoderD1Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17)) unnamed_addr #10

; Function Attrs: mustprogress nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN5draco12_GLOBAL__N_120DecodeVarintUnsignedIjEEbiPT_PNS_13DecoderBufferE(i32 noundef range(i32 1, 7) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2) unnamed_addr #11 {
bb.a:
  %i.a = icmp samesign ugt i32 %0, 5
  br i1 %i.a, label %_ZN5draco13DecoderBuffer6DecodeIhEEbPT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !54
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !55   ; 2 uses
  %i.f = add i64 %i.e, 1                          ; 2 uses
  %.not13 = icmp slt i64 %i.c, %i.f
  br i1 %.not13, label %_ZN5draco13DecoderBuffer6DecodeIhEEbPT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %2, align 8, !tbaa !56
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 %i.e
  %i.i = load i8, ptr %i.h, align 1               ; 3 uses
  store i64 %i.f, ptr %i.d, align 8, !tbaa !55
  %.not = icmp sgt i8 %i.i, -1
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = add nuw nsw i32 %0, 1
  %i.k = tail call fastcc noundef zeroext i1 @_ZN5draco12_GLOBAL__N_120DecodeVarintUnsignedIjEEbiPT_PNS_13DecoderBufferE(i32 noundef %i.j, ptr noundef %1, ptr noundef nonnull %2)
  br i1 %i.k, label %bb.e, label %_ZN5draco13DecoderBuffer6DecodeIhEEbPT_.exit

bb.e:                                             ; preds = %bb.d
  %i.l = load i32, ptr %1, align 4, !tbaa !102
  %i.m = shl i32 %i.l, 7
end_hunk_0
begin_hunk_1_@_ZN5draco56MeshPredictionSchemeConstrainedMultiParallelogramDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21ComputeOriginalValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEE:bb.a
bb.n:                                             ; preds = %bb.m
  %i.as = load i32, ptr %i.af, align 4, !tbaa !177
  %i.at = add nsw i32 %i.as, %i.ak
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.n, %bb.l
  %.sink.i = phi i32 [ %i.ap, %bb.l ], [ %i.at, %bb.n ]
  store i32 %.sink.i, ptr %i.al, align 4, !tbaa !102
  br label %bb.o

bb.o:                                             ; preds = %.sink.split.i, %bb.m
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.au = load i32, ptr %i.c, align 8, !tbaa !180
  %i.av = sext i32 %i.au to i64
  %i.aw = icmp slt i64 %indvars.iv.next.i, %i.av
  br i1 %i.aw, label %bb.k, label %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit, !llvm.loop !2

bb.p:                                             ; preds = %_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit
  invoke void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr null, i64 noundef %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %._ZNSt6vectorIiSaIiEE6resizeEmRKi.exit_crit_edge307 unwind label %bb.z

._ZNSt6vectorIiSaIiEE6resizeEmRKi.exit_crit_edge307: ; preds = %bb.p
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %6, i64 24
  %.phi.trans.insert308 = getelementptr inbounds nuw i8, ptr %6, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert308, align 16, !tbaa !119
  %.pre310 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !58
  br label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit

_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit:            ; preds = %_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit, %._ZNSt6vectorIiSaIiEE6resizeEmRKi.exit_crit_edge307
  %i.ax = phi ptr [ %.pre310, %._ZNSt6vectorIiSaIiEE6resizeEmRKi.exit_crit_edge307 ], [ null, %_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit ] ; 2 uses
  %i.ay = phi ptr [ %.pre, %._ZNSt6vectorIiSaIiEE6resizeEmRKi.exit_crit_edge307 ], [ null, %_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i32 0, ptr %i.b, align 4, !tbaa !102
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = ptrtoint ptr %i.ax to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = ashr exact i64 %i.bc, 2                 ; 3 uses
  %i.be = icmp ult i64 %i.bd, %i.e
  br i1 %i.be, label %bb.s, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit
  %i.bf = icmp ugt i64 %i.bd, %i.e
  br i1 %i.bf, label %bb.r, label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit.1

bb.r:                                             ; preds = %bb.q
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.e ; 2 uses
  %.not.i.i.1 = icmp eq ptr %i.ay, %i.bg
  br i1 %.not.i.i.1, label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit.1, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.1

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.1:      ; preds = %bb.r
  store ptr %i.bg, ptr %i.az, align 16, !tbaa !119
  br label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit.1

bb.s:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.bi = sub nuw nsw i64 %i.e, %i.bd
  invoke void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr %i.ay, i64 noundef %i.bi, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit.1 unwind label %bb.z

_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit.1:          ; preds = %bb.s, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.1, %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i32 0, ptr %i.b, align 4, !tbaa !102
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !119 ; 3 uses
  %i.bm = load ptr, ptr %i.bj, align 16, !tbaa !58 ; 2 uses
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = ashr exact i64 %i.bp, 2                 ; 3 uses
  %i.br = icmp ult i64 %i.bq, %i.e
  br i1 %i.br, label %bb.v, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit.1
  %i.bs = icmp ugt i64 %i.bq, %i.e
  br i1 %i.bs, label %bb.u, label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit.2

bb.u:                                             ; preds = %bb.t
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.e ; 2 uses
  %.not.i.i.2 = icmp eq ptr %i.bl, %i.bt
  br i1 %.not.i.i.2, label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit.2, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.2

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.2:      ; preds = %bb.u
  store ptr %i.bt, ptr %i.bk, align 8, !tbaa !119
  br label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit.2

bb.v:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit.1
  %i.bu = sub nuw nsw i64 %i.e, %i.bq
  invoke void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr %i.bl, i64 noundef %i.bu, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit.2 unwind label %bb.z

_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit.2:          ; preds = %bb.v, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.2, %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i32 0, ptr %i.b, align 4, !tbaa !102
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 16, !tbaa !119 ; 3 uses
  %i.by = load ptr, ptr %i.bv, align 8, !tbaa !58 ; 2 uses
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = ashr exact i64 %i.cb, 2                 ; 3 uses
  %i.cd = icmp ult i64 %i.cc, %i.e
  br i1 %i.cd, label %bb.y, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit.2
  %i.ce = icmp ugt i64 %i.cc, %i.e
  br i1 %i.ce, label %bb.x, label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit.3

bb.x:                                             ; preds = %bb.w
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.e ; 2 uses
  %.not.i.i.3 = icmp eq ptr %i.bx, %i.cf
  br i1 %.not.i.i.3, label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit.3, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.3

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.3:      ; preds = %bb.x
  store ptr %i.cf, ptr %i.bw, align 16, !tbaa !119
  br label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit.3

bb.y:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit.2
  %i.cg = sub nuw nsw i64 %i.e, %i.cc
  invoke void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, ptr %i.bx, i64 noundef %i.cg, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit.3 unwind label %bb.z

_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit.3:          ; preds = %bb.y, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.3, %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  %i.ch = load ptr, ptr %6, align 16, !tbaa !58
  %i.ci = load i32, ptr %i.c, align 8, !tbaa !180
  %i.cj = icmp sgt i32 %i.ci, 0
  br i1 %i.cj, label %.lr.ph.i.i, label %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit

bb.z:                                             ; preds = %bb.y, %bb.v, %bb.s, %bb.p
  %i.ck = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %bb.bz

_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit: ; preds = %bb.o, %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i, %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit.3
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !134 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !136
  %i.cp = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #19
          to label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader unwind label %bb.ac ; 4 uses

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cp, i8 0, i64 16, i1 false), !tbaa !102
  %i.cq = icmp slt i32 %4, 0
  br i1 %i.cq, label %bb.aa, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #20
          to label %.noexc132 unwind label %bb.ad

.noexc132:                                        ; preds = %bb.aa
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %.not.i.i.i.i = icmp eq i32 %4, 0               ; 5 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.cr = shl nuw nsw i64 %i.e, 2
  %i.cs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cr) #19
          to label %.noexc133 unwind label %bb.ad ; 5 uses

.noexc133:                                        ; preds = %bb.ab
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.e ; 2 uses
  store i32 0, ptr %i.cs, align 4, !tbaa !102
  %i.cu = add nsw i64 %i.e, -1                    ; 2 uses
  %i.cv = icmp eq i64 %i.cu, 0
  br i1 %i.cv, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc133
  %i.cw = getelementptr i8, ptr %i.cs, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.cu, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.cw, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !102
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc133, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.14.0 = phi ptr [ %i.ct, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ct, %.noexc133 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.0201.0 = phi ptr [ %i.cs, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.cs, %.noexc133 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 18 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !135 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !183
  %i.db = load ptr, ptr %i.cy, align 8, !tbaa !184 ; 2 uses
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = ptrtoint ptr %i.db to i64
  %i.de = sub i64 %i.dc, %i.dd
  %i.df = ashr exact i64 %i.de, 2                 ; 4 uses
  %i.dg = trunc i64 %i.df to i32
  %.not126263 = icmp slt i32 %i.dg, 2
  br i1 %.not126263, label %.critedge130, label %.lr.ph266

.lr.ph266:                                        ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cm, i64 24 ; 4 uses
  %wide.trip.count.i = zext nneg i32 %4 to i64    ; 14 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  %i.dm = shl nuw nsw i64 %wide.trip.count.i, 2   ; 3 uses
  %umax303 = call i64 @llvm.umax.i64(i64 %i.df, i64 1) ; 2 uses
  %wide.trip.count305 = and i64 %i.df, 2147483647
  %scevgep = getelementptr i8, ptr %.sroa.0201.0, i64 %i.dm
  %min.iters.check393 = icmp ult i32 %4, 12
  %n.vec395 = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %cmp.n406 = icmp eq i64 %n.vec395, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.dn = add nsw i64 %wide.trip.count.i, -1
  %min.iters.check375 = icmp ult i32 %4, 8
  %n.vec377 = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %cmp.n386 = icmp eq i64 %n.vec377, %wide.trip.count.i
  %xtraiter413 = and i64 %wide.trip.count.i, 3    ; 2 uses
  %lcmp.mod414.not = icmp eq i64 %xtraiter413, 0
  %min.iters.check = icmp ult i32 %4, 4
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br label %bb.ae

bb.ac:                                            ; preds = %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.ad:                                            ; preds = %bb.ab, %bb.aa
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit179

bb.ae:                                            ; preds = %.lr.ph266, %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit162
  %indvars.iv300 = phi i64 [ 1, %.lr.ph266 ], [ %indvars.iv.next301, %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit162 ] ; 9 uses
  %exitcond304.not = icmp eq i64 %indvars.iv300, %umax303
  br i1 %exitcond304.not, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1, i64 noundef %umax303, i64 noundef %i.df) #20
          to label %.noexc135 unwind label %bb.al

.noexc135:                                        ; preds = %bb.af
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv300
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !186 ; 6 uses
  %.not226243 = icmp eq i32 %i.dr, -1
  br i1 %.not226243, label %.thread223, label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.lr.ph

_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.lr.ph: ; preds = %bb.ag
  %i.ds = load ptr, ptr %i.dh, align 8, !tbaa !184, !noalias !729
  %i.dt = urem i32 %i.dr, 3
  %.not.i.i145 = icmp ne i32 %i.dt, 0             ; 2 uses
  %i.du = add i32 %i.dr, -1
  %i.dv = add i32 %i.dr, 2                        ; 2 uses
  %i.dw = icmp ne i32 %i.dv, -1
  %brmerge = or i1 %.not.i.i145, %i.dw
  %.mux = select i1 %.not.i.i145, i32 %i.du, i32 %i.dv
  %i.dx = zext i32 %.mux to i64
  br label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i

_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i: ; preds = %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.lr.ph, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit152
  %.083246 = phi i1 [ true, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.lr.ph ], [ %.184, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit152 ] ; 3 uses
  %.085245 = phi i32 [ 0, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.lr.ph ], [ %.186, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit152 ] ; 4 uses
  %.sroa.0191.0244 = phi i32 [ %i.dr, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.lr.ph ], [ %.sroa.0191.2, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit152 ] ; 6 uses
  %i.dy = sext i32 %.085245 to i64
  %i.dz = getelementptr inbounds [24 x i8], ptr %6, i64 %i.dy
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !58 ; 5 uses
  %i.eb = ptrtoaddr ptr %i.ea to i64              ; 2 uses
  %i.ec = zext i32 %.sroa.0191.0244 to i64
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %i.ec
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !186, !noalias !729 ; 7 uses
  %i.ef = icmp eq i32 %i.ee, -1
  br i1 %i.ef, label %_ZN5draco30ComputeParallelogramPredictionINS_11CornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit, label %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i

_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i: ; preds = %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i
  %i.eg = zext i32 %i.ee to i64
  %i.eh = load ptr, ptr %i.cm, align 8, !tbaa !205, !noalias !730 ; 3 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.eg
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !207, !noalias !730
  %i.ek = zext i32 %i.ej to i64
  %i.el = load ptr, ptr %i.co, align 8, !tbaa !58 ; 3 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %i.ek
  %i.en = load i32, ptr %i.em, align 4, !tbaa !102 ; 2 uses
  %i.eo = add nuw i32 %i.ee, 1                    ; 2 uses
  %i.ep = urem i32 %i.eo, 3
  %.not.i.i.i136 = icmp eq i32 %i.ep, 0
  %i.eq = add i32 %i.ee, -2
  %spec.select.i.i.i = select i1 %.not.i.i.i136, i32 %i.eq, i32 %i.eo ; 2 uses
  %i.er = icmp eq i32 %spec.select.i.i.i, -1
  br i1 %i.er, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i
  %i.es = zext i32 %spec.select.i.i.i to i64
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.es
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !207, !noalias !731
  %i.ev = zext i32 %i.eu to i64
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i
  %storemerge.i11.i.i = phi i64 [ %i.ev, %bb.ah ], [ 4294967295, %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i ]
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %storemerge.i11.i.i
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !102 ; 2 uses
  %i.ey = urem i32 %i.ee, 3
  %.not.i13.i.i = icmp eq i32 %i.ey, 0
  br i1 %.not.i13.i.i, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread26.i.i

_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread26.i.i: ; preds = %bb.ai
  %i.ez = add i32 %i.ee, -1
  br label %bb.aj

_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i: ; preds = %bb.ai
  %i.fa = add i32 %i.ee, 2                        ; 2 uses
  %i.fb = icmp eq i32 %i.fa, -1
  br i1 %i.fb, label %_ZN5draco23GetParallelogramEntriesINS_11CornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i, label %bb.aj

bb.aj:                                            ; preds = %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread26.i.i
  %.sink.i1428.i.i = phi i32 [ %i.ez, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread26.i.i ], [ %i.fa, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i ]
  %i.fc = zext i32 %.sink.i1428.i.i to i64
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.fc
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !207, !noalias !732
  %i.ff = zext i32 %i.fe to i64
  br label %_ZN5draco23GetParallelogramEntriesINS_11CornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i

_ZN5draco23GetParallelogramEntriesINS_11CornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i: ; preds = %bb.aj, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i
  %storemerge.i15.i.i = phi i64 [ %i.ff, %bb.aj ], [ 4294967295, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i ]
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %storemerge.i15.i.i
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !102 ; 2 uses
  %i.fi = sext i32 %i.en to i64
  %i.fj = icmp sgt i64 %indvars.iv300, %i.fi
  %i.fk = sext i32 %i.ex to i64
  %i.fl = icmp sgt i64 %indvars.iv300, %i.fk
  %or.cond.i = select i1 %i.fj, i1 %i.fl, i1 false
  %i.fm = sext i32 %i.fh to i64
  %i.fn = icmp sgt i64 %indvars.iv300, %i.fm
  %or.cond40.i = select i1 %or.cond.i, i1 %i.fn, i1 false
  br i1 %or.cond40.i, label %bb.ak, label %_ZN5draco30ComputeParallelogramPredictionINS_11CornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit

bb.ak:                                            ; preds = %_ZN5draco23GetParallelogramEntriesINS_11CornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i
  br i1 %.not.i.i.i.i, label %.loopexit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.ak
  %i.fo = mul nsw i32 %i.fh, %4
  %i.fp = mul nsw i32 %i.ex, %4
  %i.fq = mul nsw i32 %i.en, %4
  %i.fr = sext i32 %i.fp to i64                   ; 2 uses
  %i.fs = sext i32 %i.fo to i64                   ; 2 uses
  %i.ft = sext i32 %i.fq to i64                   ; 2 uses
  %invariant.gep.i = getelementptr [4 x i8], ptr %2, i64 %i.fr ; 4 uses
  %invariant.gep49.i = getelementptr [4 x i8], ptr %2, i64 %i.fs ; 4 uses
  %invariant.gep51.i = getelementptr [4 x i8], ptr %2, i64 %i.ft ; 4 uses
  br i1 %min.iters.check393, label %.lr.ph.i137.preheader, label %vector.memcheck388

vector.memcheck388:                               ; preds = %.lr.ph.preheader.i
  %i.fu = sub i64 %i.eb, %i.a                     ; 2 uses
  %i.fv = shl nsw i64 %i.ft, 2
  %i.fw = sub i64 %i.fv, %i.fu
  %diff.check = icmp ugt i64 %i.fw, -32
  %i.fx = shl nsw i64 %i.fs, 2
  %i.fy = sub i64 %i.fx, %i.fu
  %diff.check389 = icmp ugt i64 %i.fy, -32
  %conflict.rdx = or i1 %diff.check, %diff.check389
  %i.fz = shl nsw i64 %i.fr, 2
  %i.ga = add i64 %i.fz, %i.a
  %i.gb = sub i64 %i.ga, %i.eb
  %diff.check390 = icmp ugt i64 %i.gb, -32
  %conflict.rdx391 = or i1 %conflict.rdx, %diff.check390
  br i1 %conflict.rdx391, label %.lr.ph.i137.preheader, label %vector.body396

vector.body396:                                   ; preds = %vector.memcheck388, %vector.body396
  %index397 = phi i64 [ %index.next404, %vector.body396 ], [ 0, %vector.memcheck388 ] ; 5 uses
  %i.gc = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %index397 ; 2 uses
  %i.gd = getelementptr i8, ptr %i.gc, i64 16
  %wide.load398.a = load <4 x i32>, ptr %i.gc, align 4, !tbaa !102
  %wide.load399.a = load <4 x i32>, ptr %i.gd, align 4, !tbaa !102
  %i.ge = getelementptr [4 x i8], ptr %invariant.gep49.i, i64 %index397 ; 2 uses
  %i.gf = getelementptr i8, ptr %i.ge, i64 16
  %wide.load400.a = load <4 x i32>, ptr %i.ge, align 4, !tbaa !102
  %wide.load401 = load <4 x i32>, ptr %i.gf, align 4, !tbaa !102
  %i.gg = getelementptr [4 x i8], ptr %invariant.gep51.i, i64 %index397 ; 2 uses
  %i.gh = getelementptr i8, ptr %i.gg, i64 16
  %wide.load402 = load <4 x i32>, ptr %i.gg, align 4, !tbaa !102
  %wide.load403 = load <4 x i32>, ptr %i.gh, align 4, !tbaa !102
  %i.gi = add <4 x i32> %wide.load400.a, %wide.load398.a
  %i.gj = add <4 x i32> %wide.load401, %wide.load399.a
  %i.gk = sub <4 x i32> %i.gi, %wide.load402
  %i.gl = sub <4 x i32> %i.gj, %wide.load403
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %index397 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  store <4 x i32> %i.gk, ptr %i.gm, align 4, !tbaa !102
  store <4 x i32> %i.gl, ptr %i.gn, align 4, !tbaa !102
  %index.next404 = add nuw i64 %index397, 8       ; 2 uses
  %i.go = icmp eq i64 %index.next404, %n.vec395
  br i1 %i.go, label %middle.block405, label %vector.body396, !llvm.loop !704

middle.block405:                                  ; preds = %vector.body396
  br i1 %cmp.n406, label %.loopexit, label %.lr.ph.i137.preheader

.lr.ph.i137.preheader:                            ; preds = %vector.memcheck388, %.lr.ph.preheader.i, %middle.block405
  %indvars.iv.i138.ph = phi i64 [ 0, %vector.memcheck388 ], [ 0, %.lr.ph.preheader.i ], [ %n.vec395, %middle.block405 ] ; 7 uses
  br i1 %lcmp.mod.not, label %.lr.ph.i137.prol.loopexit, label %.lr.ph.i137.prol

.lr.ph.i137.prol:                                 ; preds = %.lr.ph.i137.preheader
  %gep.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i138.ph
  %i.gp = load i32, ptr %gep.i.prol, align 4, !tbaa !102
  %gep50.i.prol = getelementptr [4 x i8], ptr %invariant.gep49.i, i64 %indvars.iv.i138.ph
  %i.gq = load i32, ptr %gep50.i.prol, align 4, !tbaa !102
  %gep52.i.prol = getelementptr [4 x i8], ptr %invariant.gep51.i, i64 %indvars.iv.i138.ph
  %i.gr = load i32, ptr %gep52.i.prol, align 4, !tbaa !102
  %i.gs = add i32 %i.gq, %i.gp
  %i.gt = sub i32 %i.gs, %i.gr
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv.i138.ph
  store i32 %i.gt, ptr %i.gu, align 4, !tbaa !102
  %indvars.iv.next.i139.prol = or disjoint i64 %indvars.iv.i138.ph, 1
  br label %.lr.ph.i137.prol.loopexit

.lr.ph.i137.prol.loopexit:                        ; preds = %.lr.ph.i137.prol, %.lr.ph.i137.preheader
  %indvars.iv.i138.unr = phi i64 [ %indvars.iv.i138.ph, %.lr.ph.i137.preheader ], [ %indvars.iv.next.i139.prol, %.lr.ph.i137.prol ]
  %i.gv = icmp eq i64 %indvars.iv.i138.ph, %i.dn
  br i1 %i.gv, label %.loopexit, label %.lr.ph.i137

.lr.ph.i137:                                      ; preds = %.lr.ph.i137.prol.loopexit, %.lr.ph.i137
  %indvars.iv.i138 = phi i64 [ %indvars.iv.next.i139.1, %.lr.ph.i137 ], [ %indvars.iv.i138.unr, %.lr.ph.i137.prol.loopexit ] ; 6 uses
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i138
  %i.gw = load i32, ptr %gep.i, align 4, !tbaa !102
  %gep50.i = getelementptr [4 x i8], ptr %invariant.gep49.i, i64 %indvars.iv.i138
  %i.gx = load i32, ptr %gep50.i, align 4, !tbaa !102
  %gep52.i = getelementptr [4 x i8], ptr %invariant.gep51.i, i64 %indvars.iv.i138
  %i.gy = load i32, ptr %gep52.i, align 4, !tbaa !102
  %i.gz = add i32 %i.gx, %i.gw
  %i.ha = sub i32 %i.gz, %i.gy
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv.i138
  store i32 %i.ha, ptr %i.hb, align 4, !tbaa !102
  %indvars.iv.next.i139 = add nuw nsw i64 %indvars.iv.i138, 1 ; 4 uses
  %gep.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i139
  %i.hc = load i32, ptr %gep.i.1, align 4, !tbaa !102
  %gep50.i.1 = getelementptr [4 x i8], ptr %invariant.gep49.i, i64 %indvars.iv.next.i139
  %i.hd = load i32, ptr %gep50.i.1, align 4, !tbaa !102
  %gep52.i.1 = getelementptr [4 x i8], ptr %invariant.gep51.i, i64 %indvars.iv.next.i139
  %i.he = load i32, ptr %gep52.i.1, align 4, !tbaa !102
  %i.hf = add i32 %i.hd, %i.hc
  %i.hg = sub i32 %i.hf, %i.he
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv.next.i139
  store i32 %i.hg, ptr %i.hh, align 4, !tbaa !102
  %indvars.iv.next.i139.1 = add nuw nsw i64 %indvars.iv.i138, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i139.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %.loopexit, label %.lr.ph.i137, !llvm.loop !705

.loopexit:                                        ; preds = %.lr.ph.i137.prol.loopexit, %.lr.ph.i137, %middle.block405, %bb.ak
  %i.hi = add nsw i32 %.085245, 1                 ; 2 uses
  %i.hj = icmp eq i32 %i.hi, 4
  br i1 %i.hj, label %.preheader231, label %_ZN5draco30ComputeParallelogramPredictionINS_11CornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit

bb.al:                                            ; preds = %bb.af
  %i.hk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i173 = icmp eq ptr %.sroa.0201.0, null
  br i1 %.not.i.i.i173, label %_ZNSt6vectorIiSaIiEED2Ev.exit179, label %bb.bt

_ZN5draco30ComputeParallelogramPredictionINS_11CornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit: ; preds = %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, %_ZN5draco23GetParallelogramEntriesINS_11CornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i, %.loopexit
  %.186 = phi i32 [ %i.hi, %.loopexit ], [ %.085245, %_ZN5draco23GetParallelogramEntriesINS_11CornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i ], [ %.085245, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i ] ; 3 uses
  br i1 %.083246, label %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, label %bb.an

_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i: ; preds = %_ZN5draco30ComputeParallelogramPredictionINS_11CornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit
  %i.hl = add nuw i32 %.sroa.0191.0244, 1         ; 2 uses
  %i.hm = urem i32 %i.hl, 3
  %.not.i.i140 = icmp eq i32 %i.hm, 0
  %i.hn = add i32 %.sroa.0191.0244, -2
  %spec.select.i.i = select i1 %.not.i.i140, i32 %i.hn, i32 %i.hl ; 2 uses
  %i.ho = icmp eq i32 %spec.select.i.i, -1
  br i1 %i.ho, label %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i141

_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i141: ; preds = %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i
  %i.hp = zext i32 %spec.select.i.i to i64
  %i.hq = load ptr, ptr %i.dh, align 8, !tbaa !184, !noalias !733
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %i.hp
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !186, !noalias !733 ; 3 uses
  %i.ht = icmp eq i32 %i.hs, -1
  br i1 %i.ht, label %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %bb.am

bb.am:                                            ; preds = %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i141
  %i.hu = add nuw i32 %i.hs, 1                    ; 2 uses
  %i.hv = urem i32 %i.hu, 3
  %.not.i1.i = icmp eq i32 %i.hv, 0
  %i.hw = add i32 %i.hs, -2
  %spec.select.i2.i = select i1 %.not.i1.i, i32 %i.hw, i32 %i.hu
  br label %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

bb.an:                                            ; preds = %_ZN5draco30ComputeParallelogramPredictionINS_11CornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit
  %i.hx = urem i32 %.sroa.0191.0244, 3
  %.not.i.i142 = icmp eq i32 %i.hx, 0
  br i1 %.not.i.i142, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i

_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i: ; preds = %bb.an
  %i.hy = add i32 %.sroa.0191.0244, -1
  br label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i143

_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i: ; preds = %bb.an
  %i.hz = add i32 %.sroa.0191.0244, 2             ; 2 uses
  %i.ia = icmp eq i32 %i.hz, -1
  br i1 %i.ia, label %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i143

_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i143: ; preds = %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i
  %.sink.i9.i = phi i32 [ %i.hy, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i ], [ %i.hz, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i ]
  %i.ib = zext i32 %.sink.i9.i to i64
  %i.ic = load ptr, ptr %i.dh, align 8, !tbaa !184, !noalias !734
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %i.ib
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !186, !noalias !734 ; 4 uses
  %i.if = icmp eq i32 %i.ie, -1
  br i1 %i.if, label %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i143
  %i.ig = urem i32 %i.ie, 3
  %.not.i1.i144 = icmp eq i32 %i.ig, 0
  br i1 %.not.i1.i144, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ih = add i32 %i.ie, -1
  br label %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

bb.aq:                                            ; preds = %bb.ao
  %i.ii = add i32 %i.ie, 2
  br label %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit: ; preds = %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i143, %bb.ap, %bb.aq, %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i141, %bb.am
  %.sroa.0191.1 = phi i32 [ -1, %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i ], [ -1, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i141 ], [ %spec.select.i2.i, %bb.am ], [ %i.ih, %bb.ap ], [ %i.ii, %bb.aq ], [ -1, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i143 ], [ -1, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i ] ; 3 uses
  %i.ij = icmp eq i32 %.sroa.0191.1, %i.dr
  br i1 %i.ij, label %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit._crit_edge, label %bb.ar

bb.ar:                                            ; preds = %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  %i.ik = icmp eq i32 %.sroa.0191.1, -1
  %or.cond = and i1 %.083246, %i.ik
  br i1 %or.cond, label %bb.as, label %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit152

bb.as:                                            ; preds = %bb.ar
  br i1 %brmerge, label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i147, label %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit._crit_edge

_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i147: ; preds = %bb.as
  %i.il = load ptr, ptr %i.dh, align 8, !tbaa !184, !noalias !735
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %i.dx
  %i.in = load i32, ptr %i.im, align 4, !tbaa !186, !noalias !735 ; 4 uses
  %i.io = icmp eq i32 %i.in, -1
  br i1 %i.io, label %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit._crit_edge, label %bb.at

bb.at:                                            ; preds = %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i147
  %i.ip = urem i32 %i.in, 3
  %.not.i1.i149 = icmp eq i32 %i.ip, 0
  br i1 %.not.i1.i149, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.iq = add i32 %i.in, -1
  br label %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit152

bb.av:                                            ; preds = %bb.at
  %i.ir = add i32 %i.in, 2
  br label %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit152

_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit152: ; preds = %bb.au, %bb.av, %bb.ar
  %.sroa.0191.2 = phi i32 [ %.sroa.0191.1, %bb.ar ], [ %i.iq, %bb.au ], [ %i.ir, %bb.av ] ; 2 uses
  %.184 = phi i1 [ %.083246, %bb.ar ], [ false, %bb.au ], [ false, %bb.av ]
  %.not226 = icmp eq i32 %.sroa.0191.2, -1
  br i1 %.not226, label %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit._crit_edge, label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, !llvm.loop !718

_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit._crit_edge: ; preds = %bb.as, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i147, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit152, %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  %i.is = icmp sgt i32 %.186, 0
  br i1 %i.is, label %.preheader231, label %.thread223

.preheader231:                                    ; preds = %.loopexit, %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit._crit_edge
  %.287362 = phi i32 [ %.186, %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit._crit_edge ], [ 4, %.loopexit ] ; 2 uses
  br i1 %.not.i.i.i.i, label %.lr.ph258, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader231
  call void @llvm.memset.p0.i64(ptr align 4 %.sroa.0201.0, i8 0, i64 %i.dm, i1 false), !tbaa !102
  br label %.lr.ph258

.lr.ph258:                                        ; preds = %.preheader231, %.lr.ph.preheader
  %i.it = add nsw i32 %.287362, -1
  %i.iu = zext nneg i32 %i.it to i64              ; 2 uses
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.iu ; 2 uses
  %i.iw = getelementptr inbounds nuw [40 x i8], ptr %i.di, i64 %i.iu ; 3 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !144
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iw, i64 24
  %i.ja = load i32, ptr %i.iz, align 8, !tbaa !145
  %i.jb = load ptr, ptr %i.iw, align 8, !tbaa !144 ; 2 uses
  %i.jc = ptrtoint ptr %i.iy to i64
  %i.jd = ptrtoint ptr %i.jb to i64
  %i.je = sub i64 %i.jc, %i.jd
  %i.jf = shl nsw i64 %i.je, 3
  %i.jg = zext i32 %i.ja to i64
  %i.jh = add nsw i64 %i.jf, %i.jg
  %.promoted = load i32, ptr %i.iv, align 4, !tbaa !102
  %i.ji = sext i32 %.promoted to i64              ; 2 uses
  %i.jj = call i64 @llvm.usub.sat.i64(i64 %i.jh, i64 %i.ji)
  %wide.trip.count292 = zext nneg i32 %.287362 to i64
  br label %bb.aw

bb.aw:                                            ; preds = %.lr.ph258, %.thread
  %indvars.iv285 = phi i64 [ 0, %.lr.ph258 ], [ %indvars.iv.next286, %.thread ] ; 3 uses
  %indvars.iv283 = phi i64 [ %i.ji, %.lr.ph258 ], [ %indvars.iv.next284, %.thread ] ; 4 uses
  %.082255 = phi i32 [ 0, %.lr.ph258 ], [ %.2216, %.thread ] ; 2 uses
  %indvars.iv.next284 = add nsw i64 %indvars.iv283, 1 ; 2 uses
  %i.jk = trunc nsw i64 %indvars.iv.next284 to i32
  store i32 %i.jk, ptr %i.iv, align 4, !tbaa !102
  %exitcond290.not = icmp eq i64 %indvars.iv285, %i.jj
  br i1 %exitcond290.not, label %.critedge130, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.jl = trunc nsw i64 %indvars.iv283 to i32
  %i.jm = sdiv i32 %i.jl, 64
  %.sext = sext i32 %i.jm to i64
  %i.jn = getelementptr inbounds [8 x i8], ptr %i.jb, i64 %.sext
  %i.jo = and i64 %indvars.iv283, -9223372036854775745
  %i.jp = icmp ugt i64 %i.jo, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.jp, i64 -8, i64 0
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.jn, i64 %storemerge.idx.i.i.i.i.i
  %i.jq = and i64 %indvars.iv283, 63
  %i.jr = shl nuw i64 1, %i.jq
  %i.js = load i64, ptr %storemerge.i.i.i.i.i, align 8, !tbaa !187
  %i.jt = and i64 %i.js, %i.jr
  %.not228 = icmp eq i64 %i.jt, 0
  br i1 %.not228, label %bb.ay, label %.thread

bb.ay:                                            ; preds = %bb.ax
  %i.ju = add nsw i32 %.082255, 1                 ; 4 uses
  br i1 %.not.i.i.i.i, label %.thread, label %.lr.ph253

.lr.ph253:                                        ; preds = %bb.ay
  %i.jv = getelementptr inbounds nuw [24 x i8], ptr %6, i64 %indvars.iv285
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !58 ; 8 uses
  br i1 %min.iters.check375, label %scalar.ph374.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph253
  %scevgep373 = getelementptr i8, ptr %i.jw, i64 %i.dm
  %bound0 = icmp ult ptr %.sroa.0201.0, %scevgep373
  %bound1 = icmp ult ptr %i.jw, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph374.preheader, label %vector.body378

vector.body378:                                   ; preds = %vector.memcheck, %vector.body378
  %index379 = phi i64 [ %index.next384, %vector.body378 ], [ 0, %vector.memcheck ] ; 3 uses
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0201.0, i64 %index379 ; 3 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 16 ; 2 uses
  %wide.load380.a = load <4 x i32>, ptr %i.jx, align 4, !tbaa !102, !alias.scope !736, !noalias !737
  %wide.load381 = load <4 x i32>, ptr %i.jy, align 4, !tbaa !102, !alias.scope !736, !noalias !737
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %index379 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 16
  %wide.load382 = load <4 x i32>, ptr %i.jz, align 4, !tbaa !102, !alias.scope !737
  %wide.load383 = load <4 x i32>, ptr %i.ka, align 4, !tbaa !102, !alias.scope !737
  %i.kb = add <4 x i32> %wide.load382, %wide.load380.a
  %i.kc = add <4 x i32> %wide.load383, %wide.load381
  store <4 x i32> %i.kb, ptr %i.jx, align 4, !tbaa !102, !alias.scope !736, !noalias !737
  store <4 x i32> %i.kc, ptr %i.jy, align 4, !tbaa !102, !alias.scope !736, !noalias !737
  %index.next384 = add nuw i64 %index379, 8       ; 2 uses
  %i.kd = icmp eq i64 %index.next384, %n.vec377
  br i1 %i.kd, label %middle.block385, label %vector.body378, !llvm.loop !722

middle.block385:                                  ; preds = %vector.body378
  br i1 %cmp.n386, label %.thread, label %scalar.ph374.preheader

scalar.ph374.preheader:                           ; preds = %vector.memcheck, %.lr.ph253, %middle.block385
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph253 ], [ %n.vec377, %middle.block385 ] ; 3 uses
  br i1 %lcmp.mod414.not, label %scalar.ph374.prol.loopexit, label %scalar.ph374.prol

scalar.ph374.prol:                                ; preds = %scalar.ph374.preheader, %scalar.ph374.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph374.prol ], [ %indvars.iv.ph, %scalar.ph374.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph374.prol ], [ 0, %scalar.ph374.preheader ]
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0201.0, i64 %indvars.iv.prol ; 2 uses
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !102
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %indvars.iv.prol
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !102
  %i.ki = add i32 %i.kh, %i.kf
  store i32 %i.ki, ptr %i.ke, align 4, !tbaa !102
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter413
  br i1 %prol.iter.cmp.not, label %scalar.ph374.prol.loopexit, label %scalar.ph374.prol, !llvm.loop !723

scalar.ph374.prol.loopexit:                       ; preds = %scalar.ph374.prol, %scalar.ph374.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph374.preheader ], [ %indvars.iv.next.prol, %scalar.ph374.prol ]
  %i.kj = sub nsw i64 %indvars.iv.ph, %wide.trip.count.i
  %i.kk = icmp ugt i64 %i.kj, -4
  br i1 %i.kk, label %.thread, label %scalar.ph374

scalar.ph374:                                     ; preds = %scalar.ph374.prol.loopexit, %scalar.ph374
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph374 ], [ %indvars.iv.unr, %scalar.ph374.prol.loopexit ] ; 6 uses
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0201.0, i64 %indvars.iv ; 2 uses
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !102
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %indvars.iv
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !102
  %i.kp = add i32 %i.ko, %i.km
  store i32 %i.kp, ptr %i.kl, align 4, !tbaa !102
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0201.0, i64 %indvars.iv.next ; 2 uses
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !102
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %indvars.iv.next
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !102
  %i.ku = add i32 %i.kt, %i.kr
  store i32 %i.ku, ptr %i.kq, align 4, !tbaa !102
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0201.0, i64 %indvars.iv.next.1 ; 2 uses
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !102
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %indvars.iv.next.1
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !102
  %i.kz = add i32 %i.ky, %i.kw
  store i32 %i.kz, ptr %i.kv, align 4, !tbaa !102
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0201.0, i64 %indvars.iv.next.2 ; 2 uses
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !102
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %indvars.iv.next.2
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !102
  %i.le = add i32 %i.ld, %i.lb
  store i32 %i.le, ptr %i.la, align 4, !tbaa !102
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count.i
  br i1 %exitcond.not.3, label %.thread, label %scalar.ph374, !llvm.loop !724

.thread:                                          ; preds = %scalar.ph374.prol.loopexit, %scalar.ph374, %middle.block385, %bb.ay, %bb.ax
  %.2216 = phi i32 [ %.082255, %bb.ax ], [ %i.ju, %bb.ay ], [ %i.ju, %middle.block385 ], [ %i.ju, %scalar.ph374 ], [ %i.ju, %scalar.ph374.prol.loopexit ] ; 4 uses
  %indvars.iv.next286 = add nuw nsw i64 %indvars.iv285, 1 ; 2 uses
  %exitcond293.not = icmp eq i64 %indvars.iv.next286, %wide.trip.count292
  br i1 %exitcond293.not, label %.thread221, label %bb.aw, !llvm.loop !725

.thread221:                                       ; preds = %.thread
  %i.lf = mul nuw nsw i64 %indvars.iv300, %i.e    ; 2 uses
  %i.lg = icmp eq i32 %.2216, 0
  br i1 %i.lg, label %.thread223, label %.preheader

.preheader:                                       ; preds = %.thread221
  br i1 %.not.i.i.i.i, label %._crit_edge262, label %.lr.ph261.preheader

.lr.ph261.preheader:                              ; preds = %.preheader
  br i1 %min.iters.check, label %.lr.ph261.preheader409, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph261.preheader
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.2216, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0201.0, i64 %index ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.lh, align 4, !tbaa !102
  %i.li = sdiv <4 x i32> %wide.load, %broadcast.splat
  store <4 x i32> %i.li, ptr %i.lh, align 4, !tbaa !102
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.lj = icmp eq i64 %index.next, %n.vec
  br i1 %i.lj, label %middle.block, label %vector.body, !llvm.loop !726

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge262, label %.lr.ph261.preheader409

.lr.ph261.preheader409:                           ; preds = %.lr.ph261.preheader, %middle.block
  %indvars.iv294.ph = phi i64 [ 0, %.lr.ph261.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph261

.thread223:                                       ; preds = %bb.ag, %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit._crit_edge, %.thread221
  %.pn = trunc i64 %indvars.iv300 to i32
  %i.lk = mul i32 %4, %.pn
  %i.ll = add nsw i64 %indvars.iv300, -1
  %i.lm = mul nuw nsw i64 %i.ll, %i.e
  %i.ln = getelementptr inbounds [4 x i8], ptr %2, i64 %i.lm
  %i.lo = sext i32 %i.lk to i64                   ; 2 uses
  %i.lp = getelementptr inbounds [4 x i8], ptr %1, i64 %i.lo
  %i.lq = getelementptr inbounds [4 x i8], ptr %2, i64 %i.lo
  %i.lr = load i32, ptr %i.c, align 8, !tbaa !180
  %i.ls = icmp sgt i32 %i.lr, 0
  br i1 %i.ls, label %.lr.ph.i.i153, label %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit162

.lr.ph.i.i153:                                    ; preds = %.thread223
  %i.lt = load ptr, ptr %i.d, align 8             ; 3 uses
  br label %bb.az

bb.az:                                            ; preds = %bb.be, %.lr.ph.i.i153
  %indvars.iv.i.i154 = phi i64 [ 0, %.lr.ph.i.i153 ], [ %indvars.iv.next.i.i155, %bb.be ] ; 4 uses
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.ln, i64 %indvars.iv.i.i154
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !102 ; 3 uses
  %i.lw = load i32, ptr %i.dj, align 8, !tbaa !176 ; 2 uses
  %i.lx = icmp sgt i32 %i.lv, %i.lw
  br i1 %i.lx, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %i.lt, i64 %indvars.iv.i.i154
  store i32 %i.lw, ptr %i.ly, align 4, !tbaa !102
  br label %bb.be

bb.bb:                                            ; preds = %bb.az
  %i.lz = load i32, ptr %i.dk, align 4, !tbaa !175 ; 2 uses
  %i.ma = icmp slt i32 %i.lv, %i.lz
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.lt, i64 %indvars.iv.i.i154 ; 2 uses
  br i1 %i.ma, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  store i32 %i.lz, ptr %i.mb, align 4, !tbaa !102
  br label %bb.be

bb.bd:                                            ; preds = %bb.bb
  store i32 %i.lv, ptr %i.mb, align 4, !tbaa !102
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc, %bb.ba
  %indvars.iv.next.i.i155 = add nuw nsw i64 %indvars.iv.i.i154, 1 ; 2 uses
  %i.mc = load i32, ptr %i.c, align 8, !tbaa !180 ; 2 uses
  %i.md = sext i32 %i.mc to i64
  %i.me = icmp slt i64 %indvars.iv.next.i.i155, %i.md
  br i1 %i.me, label %bb.az, label %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i156, !llvm.loop !1

_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i156: ; preds = %bb.be
  %i.mf = icmp sgt i32 %i.mc, 0
  br i1 %i.mf, label %.lr.ph.i157, label %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit162

.lr.ph.i157:                                      ; preds = %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i156, %bb.bi
  %indvars.iv.i158 = phi i64 [ %indvars.iv.next.i159, %bb.bi ], [ 0, %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i156 ] ; 4 uses
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.lt, i64 %indvars.iv.i158
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !102
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.lp, i64 %indvars.iv.i158
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !102
  %i.mk = add i32 %i.mj, %i.mh                    ; 5 uses
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.lq, i64 %indvars.iv.i158 ; 2 uses
  store i32 %i.mk, ptr %i.ml, align 4, !tbaa !102
  %i.mm = load i32, ptr %i.dj, align 8, !tbaa !176
  %i.mn = icmp sgt i32 %i.mk, %i.mm
  br i1 %i.mn, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %.lr.ph.i157
  %i.mo = load i32, ptr %i.dl, align 4, !tbaa !177
  %i.mp = sub nsw i32 %i.mk, %i.mo
  br label %.sink.split.i160

bb.bg:                                            ; preds = %.lr.ph.i157
  %i.mq = load i32, ptr %i.dk, align 4, !tbaa !175
  %i.mr = icmp slt i32 %i.mk, %i.mq
  br i1 %i.mr, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.ms = load i32, ptr %i.dl, align 4, !tbaa !177
  %i.mt = add nsw i32 %i.ms, %i.mk
  br label %.sink.split.i160

.sink.split.i160:                                 ; preds = %bb.bh, %bb.bf
  %.sink.i161 = phi i32 [ %i.mp, %bb.bf ], [ %i.mt, %bb.bh ]
  store i32 %.sink.i161, ptr %i.ml, align 4, !tbaa !102
  br label %bb.bi

bb.bi:                                            ; preds = %.sink.split.i160, %bb.bg
  %indvars.iv.next.i159 = add nuw nsw i64 %indvars.iv.i158, 1 ; 2 uses
  %i.mu = load i32, ptr %i.c, align 8, !tbaa !180
  %i.mv = sext i32 %i.mu to i64
  %i.mw = icmp slt i64 %indvars.iv.next.i159, %i.mv
  br i1 %i.mw, label %.lr.ph.i157, label %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit162, !llvm.loop !2

._crit_edge262:                                   ; preds = %.lr.ph261, %middle.block, %.preheader
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.lf
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.lf
  %i.mz = load i32, ptr %i.c, align 8, !tbaa !180
  %i.na = icmp sgt i32 %i.mz, 0
  br i1 %i.na, label %.lr.ph.i.i163, label %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit162

.lr.ph.i.i163:                                    ; preds = %._crit_edge262
  %i.nb = load ptr, ptr %i.d, align 8             ; 3 uses
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bo, %.lr.ph.i.i163
  %indvars.iv.i.i164 = phi i64 [ 0, %.lr.ph.i.i163 ], [ %indvars.iv.next.i.i165, %bb.bo ] ; 4 uses
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0201.0, i64 %indvars.iv.i.i164
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !102 ; 3 uses
  %i.ne = load i32, ptr %i.dj, align 8, !tbaa !176 ; 2 uses
  %i.nf = icmp sgt i32 %i.nd, %i.ne
  br i1 %i.nf, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %i.nb, i64 %indvars.iv.i.i164
  store i32 %i.ne, ptr %i.ng, align 4, !tbaa !102
  br label %bb.bo

bb.bl:                                            ; preds = %bb.bj
  %i.nh = load i32, ptr %i.dk, align 4, !tbaa !175 ; 2 uses
  %i.ni = icmp slt i32 %i.nd, %i.nh
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.nb, i64 %indvars.iv.i.i164 ; 2 uses
  br i1 %i.ni, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  store i32 %i.nh, ptr %i.nj, align 4, !tbaa !102
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bl
  store i32 %i.nd, ptr %i.nj, align 4, !tbaa !102
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm, %bb.bk
  %indvars.iv.next.i.i165 = add nuw nsw i64 %indvars.iv.i.i164, 1 ; 2 uses
  %i.nk = load i32, ptr %i.c, align 8, !tbaa !180 ; 2 uses
  %i.nl = sext i32 %i.nk to i64
  %i.nm = icmp slt i64 %indvars.iv.next.i.i165, %i.nl
  br i1 %i.nm, label %bb.bj, label %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i166, !llvm.loop !1

_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i166: ; preds = %bb.bo
  %i.nn = icmp sgt i32 %i.nk, 0
  br i1 %i.nn, label %.lr.ph.i167, label %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit162

.lr.ph.i167:                                      ; preds = %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i166, %bb.bs
  %indvars.iv.i168 = phi i64 [ %indvars.iv.next.i169, %bb.bs ], [ 0, %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i166 ] ; 4 uses
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %i.nb, i64 %indvars.iv.i168
  %i.np = load i32, ptr %i.no, align 4, !tbaa !102
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %indvars.iv.i168
  %i.nr = load i32, ptr %i.nq, align 4, !tbaa !102
  %i.ns = add i32 %i.nr, %i.np                    ; 5 uses
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %i.my, i64 %indvars.iv.i168 ; 2 uses
  store i32 %i.ns, ptr %i.nt, align 4, !tbaa !102
  %i.nu = load i32, ptr %i.dj, align 8, !tbaa !176
  %i.nv = icmp sgt i32 %i.ns, %i.nu
  br i1 %i.nv, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %.lr.ph.i167
  %i.nw = load i32, ptr %i.dl, align 4, !tbaa !177
  %i.nx = sub nsw i32 %i.ns, %i.nw
  br label %.sink.split.i170

bb.bq:                                            ; preds = %.lr.ph.i167
  %i.ny = load i32, ptr %i.dk, align 4, !tbaa !175
  %i.nz = icmp slt i32 %i.ns, %i.ny
  br i1 %i.nz, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.oa = load i32, ptr %i.dl, align 4, !tbaa !177
  %i.ob = add nsw i32 %i.oa, %i.ns
  br label %.sink.split.i170

.sink.split.i170:                                 ; preds = %bb.br, %bb.bp
  %.sink.i171 = phi i32 [ %i.nx, %bb.bp ], [ %i.ob, %bb.br ]
  store i32 %.sink.i171, ptr %i.nt, align 4, !tbaa !102
  br label %bb.bs

bb.bs:                                            ; preds = %.sink.split.i170, %bb.bq
  %indvars.iv.next.i169 = add nuw nsw i64 %indvars.iv.i168, 1 ; 2 uses
  %i.oc = load i32, ptr %i.c, align 8, !tbaa !180
  %i.od = sext i32 %i.oc to i64
  %i.oe = icmp slt i64 %indvars.iv.next.i169, %i.od
  br i1 %i.oe, label %.lr.ph.i167, label %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit162, !llvm.loop !2

.lr.ph261:                                        ; preds = %.lr.ph261.preheader409, %.lr.ph261
  %indvars.iv294 = phi i64 [ %indvars.iv.next295, %.lr.ph261 ], [ %indvars.iv294.ph, %.lr.ph261.preheader409 ] ; 2 uses
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0201.0, i64 %indvars.iv294 ; 2 uses
  %i.og = load i32, ptr %i.of, align 4, !tbaa !102
  %i.oh = sdiv i32 %i.og, %.2216
  store i32 %i.oh, ptr %i.of, align 4, !tbaa !102
  %indvars.iv.next295 = add nuw nsw i64 %indvars.iv294, 1 ; 2 uses
  %exitcond299.not = icmp eq i64 %indvars.iv.next295, %wide.trip.count.i
  br i1 %exitcond299.not, label %._crit_edge262, label %.lr.ph261, !llvm.loop !727

_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit162: ; preds = %bb.bs, %bb.bi, %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i166, %._crit_edge262, %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i156, %.thread223
  %indvars.iv.next301 = add nuw nsw i64 %indvars.iv300, 1 ; 2 uses
  %exitcond306.not = icmp eq i64 %indvars.iv.next301, %wide.trip.count305
  br i1 %exitcond306.not, label %.critedge130, label %bb.ae, !llvm.loop !728

bb.bt:                                            ; preds = %bb.al
  %i.oi = ptrtoint ptr %.sroa.14.0 to i64
  %i.oj = ptrtoint ptr %.sroa.0201.0 to i64
  %i.ok = sub i64 %i.oi, %i.oj
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0201.0, i64 noundef %i.ok) #18
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit179

.critedge130:                                     ; preds = %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit162, %bb.aw, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %.not126238 = phi i1 [ false, %bb.aw ], [ true, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit ], [ true, %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit162 ]
  %.not.i.i.i174 = icmp eq ptr %.sroa.0201.0, null
  br i1 %.not.i.i.i174, label %_ZNSt6vectorIiSaIiEED2Ev.exit177, label %bb.bu

bb.bu:                                            ; preds = %.critedge130
  %i.ol = ptrtoint ptr %.sroa.14.0 to i64
  %i.om = ptrtoint ptr %.sroa.0201.0 to i64
  %i.on = sub i64 %i.ol, %i.om
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0201.0, i64 noundef %i.on) #18
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit177

_ZNSt6vectorIiSaIiEED2Ev.exit177:                 ; preds = %.critedge130, %bb.bu
  call void @_ZdlPvm(ptr noundef nonnull %i.cp, i64 noundef 16) #18
  %i.oo = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !58 ; 3 uses
  %.not.i.i.i180 = icmp eq ptr %i.op, null
  br i1 %.not.i.i.i180, label %_ZNSt6vectorIiSaIiEED2Ev.exit181, label %bb.bv

_ZNSt6vectorIiSaIiEED2Ev.exit179:                 ; preds = %bb.bt, %bb.al, %bb.ad
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dp, %bb.ad ], [ %i.hk, %bb.al ], [ %i.hk, %bb.bt ]
  call void @_ZdlPvm(ptr noundef nonnull %i.cp, i64 noundef 16) #18
  br label %bb.bz

bb.bv:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit177
  %i.oq = getelementptr inbounds nuw i8, ptr %6, i64 88
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !59
  %i.os = ptrtoint ptr %i.or to i64
  %i.ot = ptrtoint ptr %i.op to i64
  %i.ou = sub i64 %i.os, %i.ot
  call void @_ZdlPvm(ptr noundef nonnull %i.op, i64 noundef %i.ou) #18
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit181

_ZNSt6vectorIiSaIiEED2Ev.exit181:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit177, %bb.bv
  %i.ov = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.ow = load ptr, ptr %i.ov, align 16, !tbaa !58 ; 3 uses
  %.not.i.i.i180.1 = icmp eq ptr %i.ow, null
  br i1 %.not.i.i.i180.1, label %_ZNSt6vectorIiSaIiEED2Ev.exit181.1, label %bb.bw

bb.bw:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit181
  %i.ox = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.oy = load ptr, ptr %i.ox, align 16, !tbaa !59
  %i.oz = ptrtoint ptr %i.oy to i64
  %i.pa = ptrtoint ptr %i.ow to i64
  %i.pb = sub i64 %i.oz, %i.pa
  call void @_ZdlPvm(ptr noundef nonnull %i.ow, i64 noundef %i.pb) #18
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit181.1

_ZNSt6vectorIiSaIiEED2Ev.exit181.1:               ; preds = %bb.bw, %_ZNSt6vectorIiSaIiEED2Ev.exit181
  %i.pc = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !58 ; 3 uses
  %.not.i.i.i180.2 = icmp eq ptr %i.pd, null
  br i1 %.not.i.i.i180.2, label %_ZNSt6vectorIiSaIiEED2Ev.exit181.2, label %bb.bx

bb.bx:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit181.1
  %i.pe = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !59
  %i.pg = ptrtoint ptr %i.pf to i64
  %i.ph = ptrtoint ptr %i.pd to i64
  %i.pi = sub i64 %i.pg, %i.ph
  call void @_ZdlPvm(ptr noundef nonnull %i.pd, i64 noundef %i.pi) #18
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit181.2

_ZNSt6vectorIiSaIiEED2Ev.exit181.2:               ; preds = %bb.bx, %_ZNSt6vectorIiSaIiEED2Ev.exit181.1
  %i.pj = load ptr, ptr %6, align 16, !tbaa !58   ; 3 uses
  %.not.i.i.i180.3 = icmp eq ptr %i.pj, null
  br i1 %.not.i.i.i180.3, label %_ZNSt6vectorIiSaIiEED2Ev.exit181.3, label %bb.by

bb.by:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit181.2
  %i.pk = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.pl = load ptr, ptr %i.pk, align 16, !tbaa !59
  %i.pm = ptrtoint ptr %i.pl to i64
  %i.pn = ptrtoint ptr %i.pj to i64
  %i.po = sub i64 %i.pm, %i.pn
  call void @_ZdlPvm(ptr noundef nonnull %i.pj, i64 noundef %i.po) #18
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit181.3

_ZNSt6vectorIiSaIiEED2Ev.exit181.3:               ; preds = %bb.by, %_ZNSt6vectorIiSaIiEED2Ev.exit181.2
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  ret i1 %.not126238

bb.bz:                                            ; preds = %bb.ac, %_ZNSt6vectorIiSaIiEED2Ev.exit179, %bb.z
  %.pn127 = phi { ptr, i32 } [ %i.ck, %bb.z ], [ %i.do, %bb.ac ], [ %.pn.pn.pn.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit179 ]
  %i.pp = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !58 ; 3 uses
  %.not.i.i.i182 = icmp eq ptr %i.pq, null
  br i1 %.not.i.i.i182, label %_ZNSt6vectorIiSaIiEED2Ev.exit183, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.pr = getelementptr inbounds nuw i8, ptr %6, i64 88
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !59
  %i.pt = ptrtoint ptr %i.ps to i64
  %i.pu = ptrtoint ptr %i.pq to i64
  %i.pv = sub i64 %i.pt, %i.pu
  call void @_ZdlPvm(ptr noundef nonnull %i.pq, i64 noundef %i.pv) #18
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit183

_ZNSt6vectorIiSaIiEED2Ev.exit183:                 ; preds = %bb.bz, %bb.ca
  %i.pw = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.px = load ptr, ptr %i.pw, align 16, !tbaa !58 ; 3 uses
  %.not.i.i.i182.1 = icmp eq ptr %i.px, null
  br i1 %.not.i.i.i182.1, label %_ZNSt6vectorIiSaIiEED2Ev.exit183.1, label %bb.cb

bb.cb:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit183
  %i.py = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.pz = load ptr, ptr %i.py, align 16, !tbaa !59
  %i.qa = ptrtoint ptr %i.pz to i64
  %i.qb = ptrtoint ptr %i.px to i64
  %i.qc = sub i64 %i.qa, %i.qb
  call void @_ZdlPvm(ptr noundef nonnull %i.px, i64 noundef %i.qc) #18
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit183.1

_ZNSt6vectorIiSaIiEED2Ev.exit183.1:               ; preds = %bb.cb, %_ZNSt6vectorIiSaIiEED2Ev.exit183
  %i.qd = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !58 ; 3 uses
  %.not.i.i.i182.2 = icmp eq ptr %i.qe, null
  br i1 %.not.i.i.i182.2, label %_ZNSt6vectorIiSaIiEED2Ev.exit183.2, label %bb.cc

bb.cc:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit183.1
  %i.qf = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.qg = load ptr, ptr %i.qf, align 8, !tbaa !59
  %i.qh = ptrtoint ptr %i.qg to i64
  %i.qi = ptrtoint ptr %i.qe to i64
  %i.qj = sub i64 %i.qh, %i.qi
  call void @_ZdlPvm(ptr noundef nonnull %i.qe, i64 noundef %i.qj) #18
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit183.2

_ZNSt6vectorIiSaIiEED2Ev.exit183.2:               ; preds = %bb.cc, %_ZNSt6vectorIiSaIiEED2Ev.exit183.1
  %i.qk = load ptr, ptr %6, align 16, !tbaa !58   ; 3 uses
  %.not.i.i.i182.3 = icmp eq ptr %i.qk, null
  br i1 %.not.i.i.i182.3, label %_ZNSt6vectorIiSaIiEED2Ev.exit183.3, label %bb.cd

bb.cd:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit183.2
  %i.ql = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.qm = load ptr, ptr %i.ql, align 16, !tbaa !59
  %i.qn = ptrtoint ptr %i.qm to i64
  %i.qo = ptrtoint ptr %i.qk to i64
  %i.qp = sub i64 %i.qn, %i.qo
  call void @_ZdlPvm(ptr noundef nonnull %i.qk, i64 noundef %i.qp) #18
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit183.3

_ZNSt6vectorIiSaIiEED2Ev.exit183.3:               ; preds = %bb.cd, %_ZNSt6vectorIiSaIiEED2Ev.exit183.2
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  resume { ptr, i32 } %.pn127
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(172) dereferenceable(172) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEEE, i64 16), ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !144  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !148  ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr exact i64 %i.g, 3
  %i.i = sub nsw i64 0, %i.h
  %i.j = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.i
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.g) #18
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %bb.a, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !162  ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  tail call void @_ZdaPv(ptr noundef nonnull %i.l) #18
  br label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN5draco23PredictionSchemeDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEEEE, i64 16), ptr %0, align 8, !tbaa !14
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !58   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i, label %_ZN5draco23PredictionSchemeDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
end_hunk_1
begin_hunk_2_@_ZN5draco28PredictionSchemeDeltaDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEEE21ComputeOriginalValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEE:bb.a
bb.i:                                             ; preds = %bb.g
  store i32 %i.y, ptr %i.ae, align 4, !tbaa !102
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.f
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.af = load i32, ptr %i.a, align 8, !tbaa !180 ; 3 uses
  %i.ag = sext i32 %i.af to i64
  %i.ah = icmp slt i64 %indvars.iv.next.i.i, %i.ag
  br i1 %i.ah, label %bb.e, label %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i, !llvm.loop !1

_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i: ; preds = %bb.j
  %i.ai = icmp sgt i32 %i.af, 0
  br i1 %i.ai, label %.lr.ph.i, label %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit

.lr.ph.i:                                         ; preds = %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.o, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.o ] ; 4 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.i
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !102
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !102
  %i.ao = add i32 %i.an, %i.al                    ; 5 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i ; 2 uses
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !102
  %i.aq = load i32, ptr %i.u, align 8, !tbaa !176
  %i.ar = icmp sgt i32 %i.ao, %i.aq
  br i1 %i.ar, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.as = load i32, ptr %i.aj, align 4, !tbaa !177
  %i.at = sub nsw i32 %i.ao, %i.as
  br label %.sink.split.i

bb.m:                                             ; preds = %bb.k
  %i.au = load i32, ptr %i.v, align 4, !tbaa !175
  %i.av = icmp slt i32 %i.ao, %i.au
  br i1 %i.av, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.aw = load i32, ptr %i.aj, align 4, !tbaa !177
  %i.ax = add nsw i32 %i.aw, %i.ao
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.n, %bb.l
  %.sink.i = phi i32 [ %i.at, %bb.l ], [ %i.ax, %bb.n ]
  store i32 %.sink.i, ptr %i.ap, align 4, !tbaa !102
  br label %bb.o

bb.o:                                             ; preds = %.sink.split.i, %bb.m
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ay = load i32, ptr %i.a, align 8, !tbaa !180 ; 2 uses
  %i.az = sext i32 %i.ay to i64
  %i.ba = icmp slt i64 %indvars.iv.next.i, %i.az
  br i1 %i.ba, label %bb.k, label %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit, !llvm.loop !2

_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit: ; preds = %bb.o, %_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit, %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i
  %i.bb = phi i32 [ %i.af, %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i ], [ %i.s, %_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit ], [ %i.ay, %bb.o ] ; 2 uses
  %i.bc = icmp slt i32 %4, %3
  br i1 %i.bc, label %.lr.ph, label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit

.lr.ph:                                           ; preds = %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit
  %i.bd = sub nsw i64 0, %i.c
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.bh = icmp sgt i32 %i.bb, 0
  br i1 %i.bh, label %.lr.ph.split.preheader, label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.bi = sext i32 %3 to i64
  br label %.lr.ph.split

_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit30, %.lr.ph, %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit
  tail call void @_ZdaPv(ptr noundef nonnull %i.r) #18
  ret i1 true

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit30
  %i.bj = phi i32 [ %i.bb, %.lr.ph.split.preheader ], [ %i.cs, %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit30 ] ; 2 uses
  %indvars.iv = phi i64 [ %i.c, %.lr.ph.split.preheader ], [ %indvars.iv.next, %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit30 ] ; 3 uses
  %i.bk = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %i.bd
  %i.bm = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv
  %i.bn = icmp sgt i32 %i.bj, 0
  br i1 %i.bn, label %.lr.ph.i.i21, label %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit30

.lr.ph.i.i21:                                     ; preds = %.lr.ph.split
  %i.bo = load ptr, ptr %i.b, align 8             ; 3 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.u, %.lr.ph.i.i21
  %indvars.iv.i.i22 = phi i64 [ 0, %.lr.ph.i.i21 ], [ %indvars.iv.next.i.i23, %bb.u ] ; 4 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv.i.i22
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !102 ; 3 uses
  %i.br = load i32, ptr %i.be, align 8, !tbaa !176 ; 2 uses
  %i.bs = icmp sgt i32 %i.bq, %i.br
  br i1 %i.bs, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv.i.i22
  store i32 %i.br, ptr %i.bt, align 4, !tbaa !102
  br label %bb.u

bb.r:                                             ; preds = %bb.p
  %i.bu = load i32, ptr %i.bf, align 4, !tbaa !175 ; 2 uses
  %i.bv = icmp slt i32 %i.bq, %i.bu
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv.i.i22 ; 2 uses
  br i1 %i.bv, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 %i.bu, ptr %i.bw, align 4, !tbaa !102
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  store i32 %i.bq, ptr %i.bw, align 4, !tbaa !102
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.q
  %indvars.iv.next.i.i23 = add nuw nsw i64 %indvars.iv.i.i22, 1 ; 2 uses
  %i.bx = load i32, ptr %i.a, align 8, !tbaa !180 ; 3 uses
  %i.by = sext i32 %i.bx to i64
  %i.bz = icmp slt i64 %indvars.iv.next.i.i23, %i.by
  br i1 %i.bz, label %bb.p, label %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i24, !llvm.loop !1

_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i24: ; preds = %bb.u
  %i.ca = icmp sgt i32 %i.bx, 0
  br i1 %i.ca, label %.lr.ph.i25, label %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit30

.lr.ph.i25:                                       ; preds = %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i24, %bb.y
  %indvars.iv.i26 = phi i64 [ %indvars.iv.next.i27, %bb.y ], [ 0, %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i24 ] ; 4 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv.i26
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !102
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv.i26
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !102
  %i.cf = add i32 %i.ce, %i.cc                    ; 5 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv.i26 ; 2 uses
  store i32 %i.cf, ptr %i.cg, align 4, !tbaa !102
  %i.ch = load i32, ptr %i.be, align 8, !tbaa !176
  %i.ci = icmp sgt i32 %i.cf, %i.ch
  br i1 %i.ci, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph.i25
  %i.cj = load i32, ptr %i.bg, align 4, !tbaa !177
  %i.ck = sub nsw i32 %i.cf, %i.cj
  br label %.sink.split.i28

bb.w:                                             ; preds = %.lr.ph.i25
  %i.cl = load i32, ptr %i.bf, align 4, !tbaa !175
  %i.cm = icmp slt i32 %i.cf, %i.cl
  br i1 %i.cm, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cn = load i32, ptr %i.bg, align 4, !tbaa !177
  %i.co = add nsw i32 %i.cn, %i.cf
  br label %.sink.split.i28

.sink.split.i28:                                  ; preds = %bb.x, %bb.v
  %.sink.i29 = phi i32 [ %i.ck, %bb.v ], [ %i.co, %bb.x ]
  store i32 %.sink.i29, ptr %i.cg, align 4, !tbaa !102
  br label %bb.y

bb.y:                                             ; preds = %.sink.split.i28, %bb.w
  %indvars.iv.next.i27 = add nuw nsw i64 %indvars.iv.i26, 1 ; 2 uses
  %i.cp = load i32, ptr %i.a, align 8, !tbaa !180 ; 2 uses
  %i.cq = sext i32 %i.cp to i64
  %i.cr = icmp slt i64 %indvars.iv.next.i27, %i.cq
  br i1 %i.cr, label %.lr.ph.i25, label %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit30, !llvm.loop !2

_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit30: ; preds = %bb.y, %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i24, %.lr.ph.split
  %i.cs = phi i32 [ %i.bj, %.lr.ph.split ], [ %i.bx, %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i24 ], [ %i.cp, %bb.y ]
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.c ; 2 uses
  %i.ct = icmp slt i64 %indvars.iv.next, %i.bi
  br i1 %i.ct, label %.lr.ph.split, label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit, !llvm.loop !901
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.floor.v2f64(<2 x double>) #12

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #17 = { nounwind }
attributes #18 = { builtin nounwind }
attributes #19 = { builtin allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }
attributes #20 = { noreturn }
attributes #21 = { noreturn nounwind }

!llvm.module.flags = !{!5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{null, null}
!1 = distinct !{!1, !95}
!2 = distinct !{!2, !95}
!3 = distinct !{!3, !95}
!4 = distinct !{!4, !95}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"vtable pointer", !8, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"any pointer", !9, i64 0}
!16 = !{!"p1 _ZTSN5draco37PredictionSchemeTypedDecoderInterfaceIiiEE", !15, i64 0}
!17 = !{!"_ZTSSt10_Head_baseILm0EPN5draco37PredictionSchemeTypedDecoderInterfaceIiiEELb0EE", !16, i64 0}
!18 = !{!17, !16, i64 0}
!19 = !{!"p1 _ZTSN5draco17PointCloudDecoderE", !15, i64 0}
!20 = !{!"p1 _ZTSN5draco14PointAttributeE", !15, i64 0}
!21 = !{!"_ZTSSt10_Head_baseILm0EPN5draco14PointAttributeELb0EE", !20, i64 0}
!22 = !{!"_ZTSSt11_Tuple_implILm0EJPN5draco14PointAttributeESt14default_deleteIS1_EEE", !21, i64 0}
!23 = !{!"_ZTSSt5tupleIJPN5draco14PointAttributeESt14default_deleteIS1_EEE", !22, i64 0}
!24 = !{!"_ZTSSt15__uniq_ptr_implIN5draco14PointAttributeESt14default_deleteIS1_EE", !23, i64 0}
!25 = !{!"_ZTSSt15__uniq_ptr_dataIN5draco14PointAttributeESt14default_deleteIS1_ELb1ELb1EE", !24, i64 0}
!26 = !{!"_ZTSSt10unique_ptrIN5draco14PointAttributeESt14default_deleteIS1_EE", !25, i64 0}
!27 = !{!"_ZTSN5draco26SequentialAttributeDecoderE", !19, i64 8, !20, i64 16, !10, i64 24, !26, i64 32}
!28 = !{!27, !19, i64 8}
!29 = !{!"p1 _ZTSN5draco10PointCloudE", !15, i64 0}
!30 = !{!"p1 _ZTSSt10unique_ptrIN5draco26AttributesDecoderInterfaceESt14default_deleteIS1_EE", !15, i64 0}
!31 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN5draco26AttributesDecoderInterfaceESt14default_deleteIS2_EESaIS5_EE17_Vector_impl_dataE", !30, i64 0, !30, i64 8, !30, i64 16}
!32 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN5draco26AttributesDecoderInterfaceESt14default_deleteIS2_EESaIS5_EE12_Vector_implE", !31, i64 0}
!33 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrIN5draco26AttributesDecoderInterfaceESt14default_deleteIS2_EESaIS5_EE", !32, i64 0}
!34 = !{!"_ZTSSt6vectorISt10unique_ptrIN5draco26AttributesDecoderInterfaceESt14default_deleteIS2_EESaIS5_EE", !33, i64 0}
!35 = !{!"p1 int", !15, i64 0}
!36 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !35, i64 0, !35, i64 8, !35, i64 16}
!37 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !36, i64 0}
!38 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !37, i64 0}
!39 = !{!"_ZTSSt6vectorIiSaIiEE", !38, i64 0}
!40 = !{!"p1 _ZTSN5draco13DecoderBufferE", !15, i64 0}
!41 = !{!"p1 _ZTSN5draco12DracoOptionsINS_17GeometryAttribute4TypeEEE", !15, i64 0}
!42 = !{!"_ZTSN5draco17PointCloudDecoderE", !29, i64 8, !34, i64 16, !39, i64 40, !40, i64 64, !9, i64 72, !9, i64 73, !41, i64 80}
!43 = !{!42, !9, i64 72}
!44 = !{!"p1 _ZTSN5draco9IndexTypeIjNS_20PointIndex_tag_type_EEE", !15, i64 0}
!45 = !{!"_ZTSNSt12_Vector_baseIN5draco9IndexTypeIjNS0_20PointIndex_tag_type_EEESaIS3_EE17_Vector_impl_dataE", !44, i64 0, !44, i64 8, !44, i64 16}
!46 = !{!45, !44, i64 8}
!47 = !{!45, !44, i64 0}
!48 = !{!"p1 omnipotent char", !15, i64 0}
!49 = !{!"long", !9, i64 0}
!50 = !{!"_ZTSN5draco13DecoderBuffer10BitDecoderE", !48, i64 0, !48, i64 8, !49, i64 16}
!51 = !{!"bool", !9, i64 0}
!52 = !{!"short", !9, i64 0}
!53 = !{!"_ZTSN5draco13DecoderBufferE", !48, i64 0, !49, i64 8, !49, i64 16, !50, i64 24, !51, i64 48, !52, i64 50}
!54 = !{!53, !49, i64 8}
!55 = !{!53, !49, i64 16}
!56 = !{!53, !48, i64 0}
!57 = !{!16, !16, i64 0}
!58 = !{!36, !35, i64 0}
!59 = !{!36, !35, i64 16}
!60 = !{!"p1 _ZTSN5draco23PredictionSchemeDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEEEE", !15, i64 0}
!61 = !{!60, !60, i64 0}
!62 = !{!20, !20, i64 0}
!63 = !{!"p1 _ZTSN5draco10DataBufferE", !15, i64 0}
!64 = !{!"_ZTSN5draco20DataBufferDescriptorE", !49, i64 0, !49, i64 8}
!65 = !{!"_ZTSN5draco8DataTypeE", !9, i64 0}
!66 = !{!"_ZTSN5draco17GeometryAttribute4TypeE", !9, i64 0}
!67 = !{!"_ZTSN5draco17GeometryAttributeE", !63, i64 0, !64, i64 8, !9, i64 24, !65, i64 28, !51, i64 32, !49, i64 40, !49, i64 48, !66, i64 56, !10, i64 60}
!68 = !{!"_ZTSSt10_Head_baseILm0EPN5draco10DataBufferELb0EE", !63, i64 0}
!69 = !{!"_ZTSSt11_Tuple_implILm0EJPN5draco10DataBufferESt14default_deleteIS1_EEE", !68, i64 0}
!70 = !{!"_ZTSSt5tupleIJPN5draco10DataBufferESt14default_deleteIS1_EEE", !69, i64 0}
!71 = !{!"_ZTSSt15__uniq_ptr_implIN5draco10DataBufferESt14default_deleteIS1_EE", !70, i64 0}
!72 = !{!"_ZTSSt15__uniq_ptr_dataIN5draco10DataBufferESt14default_deleteIS1_ELb1ELb1EE", !71, i64 0}
!73 = !{!"_ZTSSt10unique_ptrIN5draco10DataBufferESt14default_deleteIS1_EE", !72, i64 0}
!74 = !{!"p1 _ZTSN5draco9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEE", !15, i64 0}
!75 = !{!"_ZTSNSt12_Vector_baseIN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEESaIS3_EE17_Vector_impl_dataE", !74, i64 0, !74, i64 8, !74, i64 16}
!76 = !{!"_ZTSNSt12_Vector_baseIN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEESaIS3_EE12_Vector_implE", !75, i64 0}
!77 = !{!"_ZTSSt12_Vector_baseIN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEESaIS3_EE", !76, i64 0}
!78 = !{!"_ZTSSt6vectorIN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEESaIS3_EE", !77, i64 0}
!79 = !{!"_ZTSN5draco15IndexTypeVectorINS_9IndexTypeIjNS_20PointIndex_tag_type_EEENS1_IjNS_29AttributeValueIndex_tag_type_EEEEE", !78, i64 0}
!80 = !{!"p1 _ZTSN5draco22AttributeTransformDataE", !15, i64 0}
!81 = !{!"_ZTSSt10_Head_baseILm0EPN5draco22AttributeTransformDataELb0EE", !80, i64 0}
!82 = !{!"_ZTSSt11_Tuple_implILm0EJPN5draco22AttributeTransformDataESt14default_deleteIS1_EEE", !81, i64 0}
!83 = !{!"_ZTSSt5tupleIJPN5draco22AttributeTransformDataESt14default_deleteIS1_EEE", !82, i64 0}
!84 = !{!"_ZTSSt15__uniq_ptr_implIN5draco22AttributeTransformDataESt14default_deleteIS1_EE", !83, i64 0}
!85 = !{!"_ZTSSt15__uniq_ptr_dataIN5draco22AttributeTransformDataESt14default_deleteIS1_ELb1ELb1EE", !84, i64 0}
!86 = !{!"_ZTSSt10unique_ptrIN5draco22AttributeTransformDataESt14default_deleteIS1_EE", !85, i64 0}
!87 = !{!"_ZTSN5draco14PointAttributeE", !67, i64 0, !73, i64 64, !79, i64 72, !10, i64 96, !51, i64 100, !86, i64 104}
!88 = !{!87, !10, i64 96}
!89 = !{!67, !49, i64 48}
!90 = !{!67, !63, i64 0}
!91 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !48, i64 0, !48, i64 8, !48, i64 16}
!92 = !{!91, !48, i64 0}
!93 = !{!63, !63, i64 0}
!94 = !{!91, !48, i64 8}
!95 = !{!"llvm.loop.mustprogress"}
!96 = !{!27, !20, i64 16}
!97 = !{!67, !66, i64 56}
!98 = !{!87, !51, i64 100}
!99 = !{!75, !74, i64 0}
!100 = !{!67, !65, i64 28}
!101 = !{!67, !9, i64 24}
!102 = !{!10, !10, i64 0}
!103 = !{!9, !9, i64 0}
!104 = !{!"llvm.loop.isvectorized", i32 1}
!105 = !{!"llvm.loop.unroll.runtime.disable"}
!106 = !{!"llvm.loop.unroll.disable"}
!107 = !{!52, !52, i64 0}
!108 = !{!42, !29, i64 8}
!109 = !{!"p1 _ZTSSt10unique_ptrIN5draco14PointAttributeESt14default_deleteIS1_EE", !15, i64 0}
!110 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN5draco14PointAttributeESt14default_deleteIS2_EESaIS5_EE17_Vector_impl_dataE", !109, i64 0, !109, i64 8, !109, i64 16}
!111 = !{!110, !109, i64 0}
!112 = !{!"_ZTSN5draco25PredictionSchemeInterfaceE"}
!113 = !{!"_ZTSN5draco32PredictionSchemeDecoderInterfaceE", !112, i64 0}
!114 = !{!"_ZTSN5draco37PredictionSchemeTypedDecoderInterfaceIiiEE", !113, i64 0}
!115 = !{!"_ZTSN5draco33PredictionSchemeWrapTransformBaseIiEE", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !39, i64 24}
!116 = !{!"_ZTSN5draco37PredictionSchemeWrapDecodingTransformIiiEE", !115, i64 0}
!117 = !{!"_ZTSN5draco23PredictionSchemeDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEEEE", !114, i64 0, !20, i64 8, !116, i64 16}
!118 = !{!117, !20, i64 8}
!119 = !{!36, !35, i64 8}
!120 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!121 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!122 = !{!"p1 _ZTSN5draco4MeshE", !15, i64 0}
!123 = !{!"p1 _ZTSN5draco24MeshAttributeCornerTableE", !15, i64 0}
!124 = !{!"p1 _ZTSSt6vectorIiSaIiEE", !15, i64 0}
!125 = !{!"p1 _ZTSSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE", !15, i64 0}
!126 = !{!"_ZTSN5draco24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEE", !122, i64 0, !123, i64 8, !124, i64 16, !125, i64 24}
!127 = !{!126, !122, i64 0}
!128 = !{!126, !123, i64 8}
!129 = !{!126, !125, i64 24}
!130 = !{!126, !124, i64 16}
!131 = !{!"p1 _ZTSN5draco11CornerTableE", !15, i64 0}
!132 = !{!"_ZTSN5draco24MeshPredictionSchemeDataINS_11CornerTableEEE", !122, i64 0, !131, i64 8, !124, i64 16, !125, i64 24}
!133 = !{!132, !122, i64 0}
!134 = !{!132, !131, i64 8}
!135 = !{!132, !125, i64 24}
!136 = !{!132, !124, i64 16}
!137 = !{!122, !122, i64 0}
!138 = !{!123, !123, i64 0}
!139 = !{!124, !124, i64 0}
!140 = !{!125, !125, i64 0}
!141 = !{i64 0, i64 8, !137, i64 8, i64 8, !138, i64 16, i64 8, !139, i64 24, i64 8, !140}
!142 = !{!"p1 long", !15, i64 0}
!143 = !{!"_ZTSSt18_Bit_iterator_base", !142, i64 0, !10, i64 8}
!144 = !{!143, !142, i64 0}
!145 = !{!143, !10, i64 8}
!146 = !{!"_ZTSSt13_Bit_iterator", !143, i64 0}
!147 = !{!"_ZTSNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataE", !146, i64 0, !146, i64 16, !142, i64 32}
!148 = !{!147, !142, i64 32}
!149 = !{!"_ZTSN5draco27MeshPredictionSchemeDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEEE", !117, i64 0, !126, i64 64}
!150 = !{!"_ZTSN5draco31constrained_multi_parallelogram4ModeE", !9, i64 0}
!151 = !{!"_ZTSSt10_Head_baseILm0EPiLb0EE", !35, i64 0}
!152 = !{!"_ZTSSt11_Tuple_implILm0EJPiSt14default_deleteIA_iEEE", !151, i64 0}
!153 = !{!"_ZTSSt5tupleIJPiSt14default_deleteIA_iEEE", !152, i64 0}
!154 = !{!"_ZTSSt15__uniq_ptr_implIiSt14default_deleteIA_iEE", !153, i64 0}
!155 = !{!"_ZTSSt15__uniq_ptr_dataIiSt14default_deleteIA_iELb1ELb1EE", !154, i64 0}
!156 = !{!"_ZTSSt10unique_ptrIA_iSt14default_deleteIS0_EE", !155, i64 0}
!157 = !{!"_ZTSNSt13_Bvector_baseISaIbEE13_Bvector_implE", !147, i64 0}
!158 = !{!"_ZTSSt13_Bvector_baseISaIbEE", !157, i64 0}
!159 = !{!"_ZTSSt6vectorIbSaIbEE", !158, i64 0}
!160 = !{!"_ZTSN5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEEE", !149, i64 0, !20, i64 96, !44, i64 104, !156, i64 112, !10, i64 120, !159, i64 128, !10, i64 168}
!161 = !{!160, !10, i64 168}
!162 = !{!35, !35, i64 0}
!163 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!164 = !{!"_ZTSN5draco20NormalPredictionModeE", !9, i64 0}
end_hunk_2
