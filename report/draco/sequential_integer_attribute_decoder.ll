Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/draco/original/sequential_integer_attribute_decoder?download=true
inline.NumInlined: 2410
inline.NumDeleted: 886
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 55
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
  %.sroa.0208.0 = phi ptr [ %i.cs, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.cs, %.noexc133 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 19 uses
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
  %wide.trip.count.i = zext nneg i32 %4 to i64    ; 13 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  %i.dn = shl nuw nsw i64 %wide.trip.count.i, 2   ; 3 uses
  %umax310 = call i64 @llvm.umax.i64(i64 %i.df, i64 1) ; 2 uses
  %wide.trip.count312 = and i64 %i.df, 2147483647
  %scevgep = getelementptr i8, ptr %.sroa.0208.0, i64 %i.dn
  %i.do = add nsw i64 %wide.trip.count.i, -1      ; 2 uses
  %min.iters.check388 = icmp ult i32 %4, 12
  %n.vec390 = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %cmp.n401 = icmp eq i64 %n.vec390, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %min.iters.check = icmp ult i32 %4, 8
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  %xtraiter407 = and i64 %wide.trip.count.i, 3    ; 2 uses
  %lcmp.mod408.not = icmp eq i64 %xtraiter407, 0
  %xtraiter409 = and i64 %wide.trip.count.i, 1
  %i.dp = icmp eq i64 %i.do, 0
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod410.not = icmp eq i64 %xtraiter409, 0
  %lcmp.mod411 = trunc i32 %4 to i1
  br label %bb.ae

bb.ac:                                            ; preds = %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.ad:                                            ; preds = %bb.ab, %bb.aa
  %i.dr = landingpad { ptr, i32 }
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
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv307
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !186 ; 6 uses
  %.not233250 = icmp eq i32 %i.dt, -1
  br i1 %.not233250, label %.thread230, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ag
  %i.du = load ptr, ptr %i.cm, align 8, !tbaa !144, !noalias !415
  %i.dv = urem i32 %i.dt, 3
  %.not.i.i.i150 = icmp ne i32 %i.dv, 0           ; 2 uses
  %i.dw = add i32 %i.dt, -1
  %i.dx = add i32 %i.dt, 2                        ; 2 uses
  %i.dy = icmp ne i32 %i.dx, -1
  %brmerge = or i1 %.not.i.i.i150, %i.dy
  %.mux = select i1 %.not.i.i.i150, i32 %i.dw, i32 %i.dx ; 3 uses
  %i.dz = lshr i32 %.mux, 6
  %.zext.i.i.i153 = zext nneg i32 %i.dz to i64
  %i.ea = and i32 %.mux, 63
  %i.eb = zext nneg i32 %i.ea to i64
  %i.ec = shl nuw i64 1, %i.eb
  %i.ed = zext i32 %.mux to i64
  br label %bb.ah

bb.ah:                                            ; preds = %.lr.ph, %_ZNK5draco24MeshAttributeCornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit159
  %.083253 = phi i1 [ true, %.lr.ph ], [ %.184, %_ZNK5draco24MeshAttributeCornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit159 ] ; 3 uses
  %.085252 = phi i32 [ 0, %.lr.ph ], [ %.186, %_ZNK5draco24MeshAttributeCornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit159 ] ; 5 uses
  %.sroa.0198.0251 = phi i32 [ %i.dt, %.lr.ph ], [ %.sroa.0198.2, %_ZNK5draco24MeshAttributeCornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit159 ] ; 8 uses
  %i.ee = sext i32 %.085252 to i64
  %i.ef = getelementptr inbounds [24 x i8], ptr %6, i64 %i.ee
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !58 ; 5 uses
  %i.eh = ptrtoaddr ptr %i.eg to i64              ; 2 uses
  %i.ei = lshr i32 %.sroa.0198.0251, 6
  %.zext.i.i.i = zext nneg i32 %i.ei to i64
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %.zext.i.i.i
  %i.ek = and i32 %.sroa.0198.0251, 63
  %i.el = zext nneg i32 %i.ek to i64
  %i.em = shl nuw i64 1, %i.el
  %i.en = load i64, ptr %i.ej, align 8, !tbaa !187, !noalias !415
  %i.eo = and i64 %i.en, %i.em
  %.not.i.i136 = icmp eq i64 %i.eo, 0
  br i1 %.not.i.i136, label %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, label %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit.thread

_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i: ; preds = %bb.ah
  %i.ep = load ptr, ptr %i.dh, align 8, !tbaa !204, !noalias !415
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 24
  %i.er = zext i32 %.sroa.0198.0251 to i64
  %i.es = load ptr, ptr %i.eq, align 8, !tbaa !184, !noalias !416
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %i.er
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !186, !noalias !416 ; 5 uses
  %i.ev = icmp eq i32 %i.eu, -1
  br i1 %i.ev, label %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit.thread, label %_ZN5draco23GetParallelogramEntriesINS_24MeshAttributeCornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i

_ZN5draco23GetParallelogramEntriesINS_24MeshAttributeCornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i: ; preds = %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i
  %i.ew = zext i32 %i.eu to i64
  %i.ex = load ptr, ptr %i.di, align 8, !tbaa !205, !noalias !417 ; 3 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %i.ew
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !207, !noalias !417
  %i.fa = zext i32 %i.ez to i64
  %i.fb = load ptr, ptr %i.co, align 8, !tbaa !58 ; 3 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.fa
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !102 ; 2 uses
  %i.fe = insertelement <2 x i32> poison, i32 %i.eu, i64 0
  %i.ff = shufflevector <2 x i32> %i.fe, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.fg = add nuw <2 x i32> %i.ff, <i32 0, i32 1>
  %i.fh = urem <2 x i32> %i.fg, splat (i32 3)
  %i.fi = icmp eq <2 x i32> %i.fh, zeroinitializer ; 2 uses
  %i.fj = extractelement <2 x i1> %i.fi, i64 1
  %spec.select.i.i.i.i.v = select i1 %i.fj, i32 -2, i32 1
  %spec.select.i.i.i.i = add i32 %i.eu, %spec.select.i.i.i.i.v
  %i.fk = zext i32 %spec.select.i.i.i.i to i64
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %i.fk
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !207, !noalias !418
  %i.fn = zext i32 %i.fm to i64
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.fn
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !102 ; 2 uses
  %i.fq = extractelement <2 x i1> %i.fi, i64 0
  %.sink.i.i12.i.v.i = select i1 %i.fq, i32 2, i32 -1
  %.sink.i.i12.i.i = add i32 %.sink.i.i12.i.v.i, %i.eu
  %i.fr = zext i32 %.sink.i.i12.i.i to i64
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %i.fr
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !207, !noalias !419
  %i.fu = zext i32 %i.ft to i64
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.fu
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !102 ; 2 uses
  %i.fx = sext i32 %i.fd to i64
  %i.fy = icmp sgt i64 %indvars.iv307, %i.fx
  %i.fz = sext i32 %i.fp to i64
  %i.ga = icmp sgt i64 %indvars.iv307, %i.fz
  %or.cond.i = select i1 %i.fy, i1 %i.ga, i1 false
  %i.gb = sext i32 %i.fw to i64
  %i.gc = icmp sgt i64 %indvars.iv307, %i.gb
  %or.cond40.i = select i1 %or.cond.i, i1 %i.gc, i1 false
  br i1 %or.cond40.i, label %bb.ai, label %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit.thread

bb.ai:                                            ; preds = %_ZN5draco23GetParallelogramEntriesINS_24MeshAttributeCornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i
  br i1 %.not.i.i.i.i, label %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.ai
  %i.gd = mul nsw i32 %i.fw, %4
  %i.ge = mul nsw i32 %i.fp, %4
  %i.gf = mul nsw i32 %i.fd, %4
  %i.gg = sext i32 %i.ge to i64                   ; 2 uses
  %i.gh = sext i32 %i.gd to i64                   ; 2 uses
  %i.gi = sext i32 %i.gf to i64                   ; 2 uses
  %invariant.gep.i = getelementptr [4 x i8], ptr %2, i64 %i.gg ; 4 uses
  %invariant.gep48.i = getelementptr [4 x i8], ptr %2, i64 %i.gh ; 4 uses
  %invariant.gep50.i = getelementptr [4 x i8], ptr %2, i64 %i.gi ; 4 uses
  br i1 %min.iters.check388, label %.lr.ph.i138.preheader, label %vector.memcheck383

vector.memcheck383:                               ; preds = %.lr.ph.preheader.i
  %i.gj = sub i64 %i.eh, %i.a                     ; 2 uses
  %i.gk = shl nsw i64 %i.gi, 2
  %i.gl = sub i64 %i.gk, %i.gj
  %diff.check = icmp ugt i64 %i.gl, -32
  %i.gm = shl nsw i64 %i.gh, 2
  %i.gn = sub i64 %i.gm, %i.gj
  %diff.check384 = icmp ugt i64 %i.gn, -32
  %conflict.rdx = or i1 %diff.check, %diff.check384
  %i.go = shl nsw i64 %i.gg, 2
  %i.gp = add i64 %i.go, %i.a
  %i.gq = sub i64 %i.gp, %i.eh
  %diff.check385 = icmp ugt i64 %i.gq, -32
  %conflict.rdx386 = or i1 %conflict.rdx, %diff.check385
  br i1 %conflict.rdx386, label %.lr.ph.i138.preheader, label %vector.body391

vector.body391:                                   ; preds = %vector.memcheck383, %vector.body391
  %index392 = phi i64 [ %index.next399, %vector.body391 ], [ 0, %vector.memcheck383 ] ; 5 uses
  %i.gr = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %index392 ; 2 uses
  %i.gs = getelementptr i8, ptr %i.gr, i64 16
  %wide.load393.a = load <4 x i32>, ptr %i.gr, align 4, !tbaa !102
  %wide.load394.a = load <4 x i32>, ptr %i.gs, align 4, !tbaa !102
  %i.gt = getelementptr [4 x i8], ptr %invariant.gep48.i, i64 %index392 ; 2 uses
  %i.gu = getelementptr i8, ptr %i.gt, i64 16
  %wide.load395.a = load <4 x i32>, ptr %i.gt, align 4, !tbaa !102
  %wide.load396 = load <4 x i32>, ptr %i.gu, align 4, !tbaa !102
  %i.gv = getelementptr [4 x i8], ptr %invariant.gep50.i, i64 %index392 ; 2 uses
  %i.gw = getelementptr i8, ptr %i.gv, i64 16
  %wide.load397 = load <4 x i32>, ptr %i.gv, align 4, !tbaa !102
  %wide.load398 = load <4 x i32>, ptr %i.gw, align 4, !tbaa !102
  %i.gx = add <4 x i32> %wide.load395.a, %wide.load393.a
  %i.gy = add <4 x i32> %wide.load396, %wide.load394.a
  %i.gz = sub <4 x i32> %i.gx, %wide.load397
  %i.ha = sub <4 x i32> %i.gy, %wide.load398
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %index392 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  store <4 x i32> %i.gz, ptr %i.hb, align 4, !tbaa !102
  store <4 x i32> %i.ha, ptr %i.hc, align 4, !tbaa !102
  %index.next399 = add nuw i64 %index392, 8       ; 2 uses
  %i.hd = icmp eq i64 %index.next399, %n.vec390
  br i1 %i.hd, label %middle.block400, label %vector.body391, !llvm.loop !385

middle.block400:                                  ; preds = %vector.body391
  br i1 %cmp.n401, label %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit, label %.lr.ph.i138.preheader

.lr.ph.i138.preheader:                            ; preds = %vector.memcheck383, %.lr.ph.preheader.i, %middle.block400
  %indvars.iv.i139.ph = phi i64 [ 0, %vector.memcheck383 ], [ 0, %.lr.ph.preheader.i ], [ %n.vec390, %middle.block400 ] ; 7 uses
  br i1 %lcmp.mod.not, label %.lr.ph.i138.prol.loopexit, label %.lr.ph.i138.prol

.lr.ph.i138.prol:                                 ; preds = %.lr.ph.i138.preheader
  %gep.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i139.ph
  %i.he = load i32, ptr %gep.i.prol, align 4, !tbaa !102
  %gep49.i.prol = getelementptr [4 x i8], ptr %invariant.gep48.i, i64 %indvars.iv.i139.ph
  %i.hf = load i32, ptr %gep49.i.prol, align 4, !tbaa !102
  %gep51.i.prol = getelementptr [4 x i8], ptr %invariant.gep50.i, i64 %indvars.iv.i139.ph
  %i.hg = load i32, ptr %gep51.i.prol, align 4, !tbaa !102
  %i.hh = add i32 %i.hf, %i.he
  %i.hi = sub i32 %i.hh, %i.hg
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv.i139.ph
  store i32 %i.hi, ptr %i.hj, align 4, !tbaa !102
  %indvars.iv.next.i140.prol = or disjoint i64 %indvars.iv.i139.ph, 1
  br label %.lr.ph.i138.prol.loopexit

.lr.ph.i138.prol.loopexit:                        ; preds = %.lr.ph.i138.prol, %.lr.ph.i138.preheader
  %indvars.iv.i139.unr = phi i64 [ %indvars.iv.i139.ph, %.lr.ph.i138.preheader ], [ %indvars.iv.next.i140.prol, %.lr.ph.i138.prol ]
  %i.hk = icmp eq i64 %i.do, %indvars.iv.i139.ph
  br i1 %i.hk, label %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit, label %.lr.ph.i138

.lr.ph.i138:                                      ; preds = %.lr.ph.i138.prol.loopexit, %.lr.ph.i138
  %indvars.iv.i139 = phi i64 [ %indvars.iv.next.i140.1, %.lr.ph.i138 ], [ %indvars.iv.i139.unr, %.lr.ph.i138.prol.loopexit ] ; 6 uses
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i139
  %i.hl = load i32, ptr %gep.i, align 4, !tbaa !102
  %gep49.i = getelementptr [4 x i8], ptr %invariant.gep48.i, i64 %indvars.iv.i139
  %i.hm = load i32, ptr %gep49.i, align 4, !tbaa !102
  %gep51.i = getelementptr [4 x i8], ptr %invariant.gep50.i, i64 %indvars.iv.i139
  %i.hn = load i32, ptr %gep51.i, align 4, !tbaa !102
  %i.ho = add i32 %i.hm, %i.hl
  %i.hp = sub i32 %i.ho, %i.hn
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv.i139
  store i32 %i.hp, ptr %i.hq, align 4, !tbaa !102
  %indvars.iv.next.i140 = add nuw nsw i64 %indvars.iv.i139, 1 ; 4 uses
  %gep.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i140
  %i.hr = load i32, ptr %gep.i.1, align 4, !tbaa !102
  %gep49.i.1 = getelementptr [4 x i8], ptr %invariant.gep48.i, i64 %indvars.iv.next.i140
  %i.hs = load i32, ptr %gep49.i.1, align 4, !tbaa !102
  %gep51.i.1 = getelementptr [4 x i8], ptr %invariant.gep50.i, i64 %indvars.iv.next.i140
  %i.ht = load i32, ptr %gep51.i.1, align 4, !tbaa !102
  %i.hu = add i32 %i.hs, %i.hr
  %i.hv = sub i32 %i.hu, %i.ht
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv.next.i140
  store i32 %i.hv, ptr %i.hw, align 4, !tbaa !102
  %indvars.iv.next.i140.1 = add nuw nsw i64 %indvars.iv.i139, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i140.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit, label %.lr.ph.i138, !llvm.loop !386

_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit: ; preds = %.lr.ph.i138.prol.loopexit, %.lr.ph.i138, %middle.block400, %bb.ai
  %i.hx = add nsw i32 %.085252, 1                 ; 2 uses
  %i.hy = icmp eq i32 %i.hx, 4
  br i1 %i.hy, label %.preheader238, label %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit.thread

bb.aj:                                            ; preds = %bb.af
  %i.hz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i180 = icmp eq ptr %.sroa.0208.0, null
  br i1 %.not.i.i.i180, label %_ZNSt6vectorIiSaIiEED2Ev.exit186, label %bb.bt

_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit.thread: ; preds = %bb.ah, %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, %_ZN5draco23GetParallelogramEntriesINS_24MeshAttributeCornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i, %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit
  %.186 = phi i32 [ %i.hx, %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit ], [ %.085252, %_ZN5draco23GetParallelogramEntriesINS_24MeshAttributeCornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i ], [ %.085252, %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i ], [ %.085252, %bb.ah ] ; 3 uses
  br i1 %.083253, label %_ZNK5draco24MeshAttributeCornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, label %bb.am

_ZNK5draco24MeshAttributeCornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i: ; preds = %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit.thread
  %i.ia = add nuw i32 %.sroa.0198.0251, 1         ; 2 uses
  %i.ib = urem i32 %i.ia, 3
  %.not.i.i.i141 = icmp eq i32 %i.ib, 0
  %i.ic = add i32 %.sroa.0198.0251, -2
  %spec.select.i.i.i = select i1 %.not.i.i.i141, i32 %i.ic, i32 %i.ia ; 4 uses
  %i.id = icmp eq i32 %spec.select.i.i.i, -1
  br i1 %i.id, label %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZNK5draco24MeshAttributeCornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i
  %i.ie = load ptr, ptr %i.cm, align 8, !tbaa !144, !noalias !420
  %i.if = lshr i32 %spec.select.i.i.i, 6
  %.zext.i.i.i142 = zext nneg i32 %i.if to i64
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %.zext.i.i.i142
  %i.ih = and i32 %spec.select.i.i.i, 63
  %i.ii = zext nneg i32 %i.ih to i64
  %i.ij = shl nuw i64 1, %i.ii
  %i.ik = load i64, ptr %i.ig, align 8, !tbaa !187, !noalias !420
  %i.il = and i64 %i.ik, %i.ij
  %.not.i.i143 = icmp eq i64 %i.il, 0
  br i1 %.not.i.i143, label %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i144, label %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i144: ; preds = %bb.ak
  %i.im = load ptr, ptr %i.dh, align 8, !tbaa !204, !noalias !420
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 24
  %i.io = zext i32 %spec.select.i.i.i to i64
  %i.ip = load ptr, ptr %i.in, align 8, !tbaa !184, !noalias !421
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %i.io
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !186, !noalias !421 ; 3 uses
  %i.is = icmp eq i32 %i.ir, -1
  br i1 %i.is, label %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %bb.al

bb.al:                                            ; preds = %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i144
  %i.it = add nuw i32 %i.ir, 1                    ; 2 uses
  %i.iu = urem i32 %i.it, 3
  %.not.i.i1.i = icmp eq i32 %i.iu, 0
  %i.iv = add i32 %i.ir, -2
  %spec.select.i.i2.i = select i1 %.not.i.i1.i, i32 %i.iv, i32 %i.it
  br label %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

bb.am:                                            ; preds = %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit.thread
  %i.iw = urem i32 %.sroa.0198.0251, 3
  %.not.i.i.i145 = icmp eq i32 %i.iw, 0
  br i1 %.not.i.i.i145, label %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, label %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i

_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i: ; preds = %bb.am
  %i.ix = add i32 %.sroa.0198.0251, -1
  br label %bb.an

_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i: ; preds = %bb.am
  %i.iy = add i32 %.sroa.0198.0251, 2             ; 2 uses
  %i.iz = icmp eq i32 %i.iy, -1
  br i1 %i.iz, label %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %bb.an

bb.an:                                            ; preds = %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i
  %.sink.i.i9.i = phi i32 [ %i.ix, %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i ], [ %i.iy, %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i ] ; 3 uses
  %i.ja = load ptr, ptr %i.cm, align 8, !tbaa !144, !noalias !422
  %i.jb = lshr i32 %.sink.i.i9.i, 6
  %.zext.i.i.i146 = zext nneg i32 %i.jb to i64
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %.zext.i.i.i146
  %i.jd = and i32 %.sink.i.i9.i, 63
  %i.je = zext nneg i32 %i.jd to i64
  %i.jf = shl nuw i64 1, %i.je
  %i.jg = load i64, ptr %i.jc, align 8, !tbaa !187, !noalias !422
  %i.jh = and i64 %i.jf, %i.jg
  %.not.i.i147 = icmp eq i64 %i.jh, 0
  br i1 %.not.i.i147, label %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i148, label %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i148: ; preds = %bb.an
  %i.ji = load ptr, ptr %i.dh, align 8, !tbaa !204, !noalias !422
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 24
  %i.jk = zext i32 %.sink.i.i9.i to i64
  %i.jl = load ptr, ptr %i.jj, align 8, !tbaa !184, !noalias !423
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.jl, i64 %i.jk
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !186, !noalias !423 ; 4 uses
  %i.jo = icmp eq i32 %i.jn, -1
  br i1 %i.jo, label %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i148
  %i.jp = urem i32 %i.jn, 3
  %.not.i.i1.i149 = icmp eq i32 %i.jp, 0
  br i1 %.not.i.i1.i149, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.jq = add i32 %i.jn, -1
  br label %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

bb.aq:                                            ; preds = %bb.ao
  %i.jr = add i32 %i.jn, 2
  br label %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit: ; preds = %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, %bb.an, %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i148, %bb.ap, %bb.aq, %_ZNK5draco24MeshAttributeCornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, %bb.ak, %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i144, %bb.al
  %.sroa.0198.1 = phi i32 [ -1, %bb.ak ], [ -1, %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i144 ], [ %spec.select.i.i2.i, %bb.al ], [ -1, %_ZNK5draco24MeshAttributeCornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i ], [ %i.jq, %bb.ap ], [ %i.jr, %bb.aq ], [ -1, %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i148 ], [ -1, %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i ], [ -1, %bb.an ] ; 3 uses
  %i.js = icmp eq i32 %.sroa.0198.1, %i.dt
  br i1 %i.js, label %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit._crit_edge, label %bb.ar

bb.ar:                                            ; preds = %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  %i.jt = icmp eq i32 %.sroa.0198.1, -1
  %or.cond = and i1 %.083253, %i.jt
  br i1 %or.cond, label %bb.as, label %_ZNK5draco24MeshAttributeCornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit159

bb.as:                                            ; preds = %bb.ar
  br i1 %brmerge, label %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i151, label %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit._crit_edge

_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i151: ; preds = %bb.as
  %i.ju = load ptr, ptr %i.cm, align 8, !tbaa !144, !noalias !424
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.ju, i64 %.zext.i.i.i153
  %i.jw = load i64, ptr %i.jv, align 8, !tbaa !187, !noalias !424
  %i.jx = and i64 %i.ec, %i.jw
  %.not.i.i154 = icmp eq i64 %i.jx, 0
  br i1 %.not.i.i154, label %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i156, label %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit._crit_edge

_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i156: ; preds = %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i151
  %i.jy = load ptr, ptr %i.dh, align 8, !tbaa !204, !noalias !424
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 24
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !184, !noalias !425
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.ka, i64 %i.ed
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !186, !noalias !425 ; 4 uses
  %i.kd = icmp eq i32 %i.kc, -1
  br i1 %i.kd, label %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit._crit_edge, label %bb.at

bb.at:                                            ; preds = %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i156
  %i.ke = urem i32 %i.kc, 3
  %.not.i.i1.i157 = icmp eq i32 %i.ke, 0
  br i1 %.not.i.i1.i157, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.kf = add i32 %i.kc, -1
  br label %_ZNK5draco24MeshAttributeCornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit159

bb.av:                                            ; preds = %bb.at
  %i.kg = add i32 %i.kc, 2
  br label %_ZNK5draco24MeshAttributeCornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit159

_ZNK5draco24MeshAttributeCornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit159: ; preds = %bb.au, %bb.av, %bb.ar
  %.sroa.0198.2 = phi i32 [ %.sroa.0198.1, %bb.ar ], [ %i.kf, %bb.au ], [ %i.kg, %bb.av ] ; 2 uses
  %.184 = phi i1 [ %.083253, %bb.ar ], [ false, %bb.au ], [ false, %bb.av ]
  %.not233 = icmp eq i32 %.sroa.0198.2, -1
  br i1 %.not233, label %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit._crit_edge, label %bb.ah, !llvm.loop !405

_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit._crit_edge: ; preds = %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i151, %bb.as, %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i156, %_ZNK5draco24MeshAttributeCornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit159, %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  %i.kh = icmp sgt i32 %.186, 0
  br i1 %i.kh, label %.preheader238, label %.thread230

.preheader238:                                    ; preds = %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit, %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit._crit_edge
  %.287368 = phi i32 [ %.186, %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit._crit_edge ], [ 4, %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit ] ; 2 uses
  br i1 %.not.i.i.i.i, label %.lr.ph265, label %.lr.ph257.preheader

.lr.ph257.preheader:                              ; preds = %.preheader238
  call void @llvm.memset.p0.i64(ptr align 4 %.sroa.0208.0, i8 0, i64 %i.dn, i1 false), !tbaa !102
  br label %.lr.ph265

.lr.ph265:                                        ; preds = %.preheader238, %.lr.ph257.preheader
  %i.ki = add nsw i32 %.287368, -1
  %i.kj = zext nneg i32 %i.ki to i64              ; 2 uses
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.kj ; 2 uses
  %i.kl = getelementptr inbounds nuw [40 x i8], ptr %i.dj, i64 %i.kj ; 3 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 16
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !144
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kl, i64 24
  %i.kp = load i32, ptr %i.ko, align 8, !tbaa !145
  %i.kq = load ptr, ptr %i.kl, align 8, !tbaa !144 ; 2 uses
  %i.kr = ptrtoint ptr %i.kn to i64
  %i.ks = ptrtoint ptr %i.kq to i64
  %i.kt = sub i64 %i.kr, %i.ks
  %i.ku = shl nsw i64 %i.kt, 3
  %i.kv = zext i32 %i.kp to i64
  %i.kw = add nsw i64 %i.ku, %i.kv
  %.promoted = load i32, ptr %i.kk, align 4, !tbaa !102
  %i.kx = sext i32 %.promoted to i64              ; 2 uses
  %i.ky = call i64 @llvm.usub.sat.i64(i64 %i.kw, i64 %i.kx)
  %wide.trip.count299 = zext nneg i32 %.287368 to i64
  br label %bb.aw

bb.aw:                                            ; preds = %.lr.ph265, %.thread
  %indvars.iv292 = phi i64 [ 0, %.lr.ph265 ], [ %indvars.iv.next293, %.thread ] ; 3 uses
  %indvars.iv290 = phi i64 [ %i.kx, %.lr.ph265 ], [ %indvars.iv.next291, %.thread ] ; 4 uses
  %.082262 = phi i32 [ 0, %.lr.ph265 ], [ %.2223, %.thread ] ; 2 uses
  %indvars.iv.next291 = add nsw i64 %indvars.iv290, 1 ; 2 uses
  %i.kz = trunc nsw i64 %indvars.iv.next291 to i32
  store i32 %i.kz, ptr %i.kk, align 4, !tbaa !102
  %exitcond297.not = icmp eq i64 %indvars.iv292, %i.ky
  br i1 %exitcond297.not, label %.critedge130, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.la = trunc nsw i64 %indvars.iv290 to i32
  %i.lb = sdiv i32 %i.la, 64
  %.sext = sext i32 %i.lb to i64
  %i.lc = getelementptr inbounds [8 x i8], ptr %i.kq, i64 %.sext
  %i.ld = and i64 %indvars.iv290, -9223372036854775745
  %i.le = icmp ugt i64 %i.ld, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.le, i64 -8, i64 0
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.lc, i64 %storemerge.idx.i.i.i.i.i
  %i.lf = and i64 %indvars.iv290, 63
  %i.lg = shl nuw i64 1, %i.lf
  %i.lh = load i64, ptr %storemerge.i.i.i.i.i, align 8, !tbaa !187
  %i.li = and i64 %i.lh, %i.lg
  %.not235 = icmp eq i64 %i.li, 0
  br i1 %.not235, label %bb.ay, label %.thread

bb.ay:                                            ; preds = %bb.ax
  %i.lj = add nsw i32 %.082262, 1                 ; 4 uses
  br i1 %.not.i.i.i.i, label %.thread, label %.lr.ph260

.lr.ph260:                                        ; preds = %bb.ay
  %i.lk = getelementptr inbounds nuw [24 x i8], ptr %6, i64 %indvars.iv292
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !58 ; 8 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph260
  %scevgep379 = getelementptr i8, ptr %i.ll, i64 %i.dn
  %bound0 = icmp ult ptr %.sroa.0208.0, %scevgep379
  %bound1 = icmp ult ptr %i.ll, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0208.0, i64 %index ; 3 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.lm, align 4, !tbaa !102, !alias.scope !426, !noalias !427
  %wide.load380 = load <4 x i32>, ptr %i.ln, align 4, !tbaa !102, !alias.scope !426, !noalias !427
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.ll, i64 %index ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 16
  %wide.load381 = load <4 x i32>, ptr %i.lo, align 4, !tbaa !102, !alias.scope !427
  %wide.load382 = load <4 x i32>, ptr %i.lp, align 4, !tbaa !102, !alias.scope !427
  %i.lq = add <4 x i32> %wide.load381, %wide.load
  %i.lr = add <4 x i32> %wide.load382, %wide.load380
  store <4 x i32> %i.lq, ptr %i.lm, align 4, !tbaa !102, !alias.scope !426, !noalias !427
  store <4 x i32> %i.lr, ptr %i.ln, align 4, !tbaa !102, !alias.scope !426, !noalias !427
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ls = icmp eq i64 %index.next, %n.vec
  br i1 %i.ls, label %middle.block, label %vector.body, !llvm.loop !409

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.thread, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph260, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph260 ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod408.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0208.0, i64 %indvars.iv.prol ; 2 uses
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !102
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %i.ll, i64 %indvars.iv.prol
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !102
  %i.lx = add i32 %i.lw, %i.lu
  store i32 %i.lx, ptr %i.lt, align 4, !tbaa !102
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter407
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !410

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %7 = sub nsw i64 %indvars.iv.ph, %wide.trip.count.i
  %8 = icmp ugt i64 %7, -4
  br i1 %8, label %.thread, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0208.0, i64 %indvars.iv ; 2 uses
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !102
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %i.ll, i64 %indvars.iv
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !102
  %i.mc = add i32 %i.mb, %i.lz
  store i32 %i.mc, ptr %i.ly, align 4, !tbaa !102
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0208.0, i64 %indvars.iv.next ; 2 uses
  %i.me = load i32, ptr %i.md, align 4, !tbaa !102
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.ll, i64 %indvars.iv.next
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !102
  %i.mh = add i32 %i.mg, %i.me
  store i32 %i.mh, ptr %i.md, align 4, !tbaa !102
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0208.0, i64 %indvars.iv.next.1 ; 2 uses
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !102
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.ll, i64 %indvars.iv.next.1
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !102
  %i.mm = add i32 %i.ml, %i.mj
  store i32 %i.mm, ptr %i.mi, align 4, !tbaa !102
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0208.0, i64 %indvars.iv.next.2 ; 2 uses
  %i.mo = load i32, ptr %i.mn, align 4, !tbaa !102
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %i.ll, i64 %indvars.iv.next.2
  %i.mq = load i32, ptr %i.mp, align 4, !tbaa !102
  %i.mr = add i32 %i.mq, %i.mo
  store i32 %i.mr, ptr %i.mn, align 4, !tbaa !102
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count.i
  br i1 %exitcond.not.3, label %.thread, label %scalar.ph, !llvm.loop !411

.thread:                                          ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.ay, %bb.ax
  %.2223 = phi i32 [ %.082262, %bb.ax ], [ %i.lj, %bb.ay ], [ %i.lj, %middle.block ], [ %i.lj, %scalar.ph ], [ %i.lj, %scalar.ph.prol.loopexit ] ; 5 uses
  %indvars.iv.next293 = add nuw nsw i64 %indvars.iv292, 1 ; 2 uses
  %exitcond300.not = icmp eq i64 %indvars.iv.next293, %wide.trip.count299
  br i1 %exitcond300.not, label %.thread228, label %bb.aw, !llvm.loop !412

.thread228:                                       ; preds = %.thread
  %i.ms = mul nuw nsw i64 %indvars.iv307, %i.e    ; 2 uses
  %i.mt = icmp eq i32 %.2223, 0
  br i1 %i.mt, label %.thread230, label %.preheader

.preheader:                                       ; preds = %.thread228
  br i1 %.not.i.i.i.i, label %._crit_edge269, label %.lr.ph268.preheader

.lr.ph268.preheader:                              ; preds = %.preheader
  br i1 %i.dp, label %.lr.ph268.epil.preheader, label %.lr.ph268

.thread230:                                       ; preds = %bb.ag, %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit._crit_edge, %.thread228
  %.pn = trunc i64 %indvars.iv307 to i32
  %i.mu = mul i32 %4, %.pn
  %i.mv = add nsw i64 %indvars.iv307, -1
  %i.mw = mul nuw nsw i64 %i.mv, %i.e
  %i.mx = getelementptr inbounds [4 x i8], ptr %2, i64 %i.mw
  %i.my = sext i32 %i.mu to i64                   ; 2 uses
  %i.mz = getelementptr inbounds [4 x i8], ptr %1, i64 %i.my
  %i.na = getelementptr inbounds [4 x i8], ptr %2, i64 %i.my
  %i.nb = load i32, ptr %i.c, align 8, !tbaa !180
  %i.nc = icmp sgt i32 %i.nb, 0
  br i1 %i.nc, label %.lr.ph.i.i160, label %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit169

.lr.ph.i.i160:                                    ; preds = %.thread230
  %i.nd = load ptr, ptr %i.d, align 8             ; 3 uses
  br label %bb.az

bb.az:                                            ; preds = %bb.be, %.lr.ph.i.i160
  %indvars.iv.i.i161 = phi i64 [ 0, %.lr.ph.i.i160 ], [ %indvars.iv.next.i.i162, %bb.be ] ; 4 uses
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %indvars.iv.i.i161
  %i.nf = load i32, ptr %i.ne, align 4, !tbaa !102 ; 3 uses
  %i.ng = load i32, ptr %i.dk, align 8, !tbaa !176 ; 2 uses
  %i.nh = icmp sgt i32 %i.nf, %i.ng
  br i1 %i.nh, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.nd, i64 %indvars.iv.i.i161
  store i32 %i.ng, ptr %i.ni, align 4, !tbaa !102
  br label %bb.be

bb.bb:                                            ; preds = %bb.az
  %i.nj = load i32, ptr %i.dl, align 4, !tbaa !175 ; 2 uses
  %i.nk = icmp slt i32 %i.nf, %i.nj
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.nd, i64 %indvars.iv.i.i161 ; 2 uses
  br i1 %i.nk, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  store i32 %i.nj, ptr %i.nl, align 4, !tbaa !102
  br label %bb.be

bb.bd:                                            ; preds = %bb.bb
  store i32 %i.nf, ptr %i.nl, align 4, !tbaa !102
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc, %bb.ba
  %indvars.iv.next.i.i162 = add nuw nsw i64 %indvars.iv.i.i161, 1 ; 2 uses
  %i.nm = load i32, ptr %i.c, align 8, !tbaa !180 ; 2 uses
  %i.nn = sext i32 %i.nm to i64
  %i.no = icmp slt i64 %indvars.iv.next.i.i162, %i.nn
  br i1 %i.no, label %bb.az, label %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i163, !llvm.loop !1

_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i163: ; preds = %bb.be
  %i.np = icmp sgt i32 %i.nm, 0
  br i1 %i.np, label %.lr.ph.i164, label %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit169

.lr.ph.i164:                                      ; preds = %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i163, %bb.bi
  %indvars.iv.i165 = phi i64 [ %indvars.iv.next.i166, %bb.bi ], [ 0, %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i163 ] ; 4 uses
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.nd, i64 %indvars.iv.i165
  %i.nr = load i32, ptr %i.nq, align 4, !tbaa !102
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %i.mz, i64 %indvars.iv.i165
  %i.nt = load i32, ptr %i.ns, align 4, !tbaa !102
  %i.nu = add i32 %i.nt, %i.nr                    ; 5 uses
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %i.na, i64 %indvars.iv.i165 ; 2 uses
  store i32 %i.nu, ptr %i.nv, align 4, !tbaa !102
  %i.nw = load i32, ptr %i.dk, align 8, !tbaa !176
  %i.nx = icmp sgt i32 %i.nu, %i.nw
  br i1 %i.nx, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %.lr.ph.i164
  %i.ny = load i32, ptr %i.dm, align 4, !tbaa !177
  %i.nz = sub nsw i32 %i.nu, %i.ny
  br label %.sink.split.i167

bb.bg:                                            ; preds = %.lr.ph.i164
  %i.oa = load i32, ptr %i.dl, align 4, !tbaa !175
  %i.ob = icmp slt i32 %i.nu, %i.oa
  br i1 %i.ob, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.oc = load i32, ptr %i.dm, align 4, !tbaa !177
  %i.od = add nsw i32 %i.oc, %i.nu
  br label %.sink.split.i167

.sink.split.i167:                                 ; preds = %bb.bh, %bb.bf
  %.sink.i168 = phi i32 [ %i.nz, %bb.bf ], [ %i.od, %bb.bh ]
  store i32 %.sink.i168, ptr %i.nv, align 4, !tbaa !102
  br label %bb.bi

bb.bi:                                            ; preds = %.sink.split.i167, %bb.bg
  %indvars.iv.next.i166 = add nuw nsw i64 %indvars.iv.i165, 1 ; 2 uses
  %i.oe = load i32, ptr %i.c, align 8, !tbaa !180
  %i.of = sext i32 %i.oe to i64
  %i.og = icmp slt i64 %indvars.iv.next.i166, %i.of
  br i1 %i.og, label %.lr.ph.i164, label %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit169, !llvm.loop !2

._crit_edge269.loopexit.unr-lcssa:                ; preds = %.lr.ph268
  br i1 %lcmp.mod410.not, label %._crit_edge269, label %.lr.ph268.epil.preheader

.lr.ph268.epil.preheader:                         ; preds = %._crit_edge269.loopexit.unr-lcssa, %.lr.ph268.preheader
  %indvars.iv301.epil.init = phi i64 [ 0, %.lr.ph268.preheader ], [ %indvars.iv.next302.1, %._crit_edge269.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod411)
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0208.0, i64 %indvars.iv301.epil.init ; 2 uses
  %i.oi = load i32, ptr %i.oh, align 4, !tbaa !102
  %i.oj = sdiv i32 %i.oi, %.2223
  store i32 %i.oj, ptr %i.oh, align 4, !tbaa !102
  br label %._crit_edge269

._crit_edge269:                                   ; preds = %.lr.ph268.epil.preheader, %._crit_edge269.loopexit.unr-lcssa, %.preheader
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ms
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ms
  %i.om = load i32, ptr %i.c, align 8, !tbaa !180
  %i.on = icmp sgt i32 %i.om, 0
  br i1 %i.on, label %.lr.ph.i.i170, label %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit169

.lr.ph.i.i170:                                    ; preds = %._crit_edge269
  %i.oo = load ptr, ptr %i.d, align 8             ; 3 uses
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bo, %.lr.ph.i.i170
  %indvars.iv.i.i171 = phi i64 [ 0, %.lr.ph.i.i170 ], [ %indvars.iv.next.i.i172, %bb.bo ] ; 4 uses
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0208.0, i64 %indvars.iv.i.i171
  %i.oq = load i32, ptr %i.op, align 4, !tbaa !102 ; 3 uses
  %i.or = load i32, ptr %i.dk, align 8, !tbaa !176 ; 2 uses
  %i.os = icmp sgt i32 %i.oq, %i.or
  br i1 %i.os, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %i.oo, i64 %indvars.iv.i.i171
  store i32 %i.or, ptr %i.ot, align 4, !tbaa !102
  br label %bb.bo

bb.bl:                                            ; preds = %bb.bj
  %i.ou = load i32, ptr %i.dl, align 4, !tbaa !175 ; 2 uses
  %i.ov = icmp slt i32 %i.oq, %i.ou
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %i.oo, i64 %indvars.iv.i.i171 ; 2 uses
  br i1 %i.ov, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  store i32 %i.ou, ptr %i.ow, align 4, !tbaa !102
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bl
  store i32 %i.oq, ptr %i.ow, align 4, !tbaa !102
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm, %bb.bk
  %indvars.iv.next.i.i172 = add nuw nsw i64 %indvars.iv.i.i171, 1 ; 2 uses
  %i.ox = load i32, ptr %i.c, align 8, !tbaa !180 ; 2 uses
  %i.oy = sext i32 %i.ox to i64
  %i.oz = icmp slt i64 %indvars.iv.next.i.i172, %i.oy
  br i1 %i.oz, label %bb.bj, label %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i173, !llvm.loop !1

_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i173: ; preds = %bb.bo
  %i.pa = icmp sgt i32 %i.ox, 0
  br i1 %i.pa, label %.lr.ph.i174, label %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit169

.lr.ph.i174:                                      ; preds = %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i173, %bb.bs
  %indvars.iv.i175 = phi i64 [ %indvars.iv.next.i176, %bb.bs ], [ 0, %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i173 ] ; 4 uses
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %i.oo, i64 %indvars.iv.i175
  %i.pc = load i32, ptr %i.pb, align 4, !tbaa !102
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %i.ok, i64 %indvars.iv.i175
  %i.pe = load i32, ptr %i.pd, align 4, !tbaa !102
  %i.pf = add i32 %i.pe, %i.pc                    ; 5 uses
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %i.ol, i64 %indvars.iv.i175 ; 2 uses
  store i32 %i.pf, ptr %i.pg, align 4, !tbaa !102
  %i.ph = load i32, ptr %i.dk, align 8, !tbaa !176
  %i.pi = icmp sgt i32 %i.pf, %i.ph
  br i1 %i.pi, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %.lr.ph.i174
  %i.pj = load i32, ptr %i.dm, align 4, !tbaa !177
  %i.pk = sub nsw i32 %i.pf, %i.pj
  br label %.sink.split.i177

bb.bq:                                            ; preds = %.lr.ph.i174
  %i.pl = load i32, ptr %i.dl, align 4, !tbaa !175
  %i.pm = icmp slt i32 %i.pf, %i.pl
  br i1 %i.pm, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.pn = load i32, ptr %i.dm, align 4, !tbaa !177
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
  %.sroa.0201.0 = phi ptr [ %i.cs, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.cs, %.noexc133 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 19 uses
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
  %wide.trip.count.i = zext nneg i32 %4 to i64    ; 13 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  %i.dm = shl nuw nsw i64 %wide.trip.count.i, 2   ; 3 uses
  %umax303 = call i64 @llvm.umax.i64(i64 %i.df, i64 1) ; 2 uses
  %wide.trip.count305 = and i64 %i.df, 2147483647
  %scevgep = getelementptr i8, ptr %.sroa.0201.0, i64 %i.dm
  %i.dn = add nsw i64 %wide.trip.count.i, -1      ; 2 uses
  %min.iters.check382 = icmp ult i32 %4, 12
  %n.vec384 = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %cmp.n395 = icmp eq i64 %n.vec384, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %min.iters.check = icmp ult i32 %4, 8
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  %xtraiter401 = and i64 %wide.trip.count.i, 3    ; 2 uses
  %lcmp.mod402.not = icmp eq i64 %xtraiter401, 0
  %xtraiter403 = and i64 %wide.trip.count.i, 1
  %i.do = icmp eq i64 %i.dn, 0
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod404.not = icmp eq i64 %xtraiter403, 0
  %lcmp.mod405 = trunc i32 %4 to i1
  br label %bb.ae

bb.ac:                                            ; preds = %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.ad:                                            ; preds = %bb.ab, %bb.aa
  %i.dq = landingpad { ptr, i32 }
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
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv300
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !186 ; 6 uses
  %.not226243 = icmp eq i32 %i.ds, -1
  br i1 %.not226243, label %.thread223, label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.lr.ph

_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.lr.ph: ; preds = %bb.ag
  %i.dt = load ptr, ptr %i.dh, align 8, !tbaa !184, !noalias !725
  %i.du = urem i32 %i.ds, 3
  %.not.i.i145 = icmp ne i32 %i.du, 0             ; 2 uses
  %i.dv = add i32 %i.ds, -1
  %i.dw = add i32 %i.ds, 2                        ; 2 uses
  %i.dx = icmp ne i32 %i.dw, -1
  %brmerge = or i1 %.not.i.i145, %i.dx
  %.mux = select i1 %.not.i.i145, i32 %i.dv, i32 %i.dw
  %i.dy = zext i32 %.mux to i64
  br label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i

_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i: ; preds = %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.lr.ph, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit152
  %.083246 = phi i1 [ true, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.lr.ph ], [ %.184, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit152 ] ; 3 uses
  %.085245 = phi i32 [ 0, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.lr.ph ], [ %.186, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit152 ] ; 4 uses
  %.sroa.0191.0244 = phi i32 [ %i.ds, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.lr.ph ], [ %.sroa.0191.2, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit152 ] ; 6 uses
  %i.dz = sext i32 %.085245 to i64
  %i.ea = getelementptr inbounds [24 x i8], ptr %6, i64 %i.dz
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !58 ; 5 uses
  %i.ec = ptrtoaddr ptr %i.eb to i64              ; 2 uses
  %i.ed = zext i32 %.sroa.0191.0244 to i64
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %i.ed
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !186, !noalias !725 ; 7 uses
  %i.eg = icmp eq i32 %i.ef, -1
  br i1 %i.eg, label %_ZN5draco30ComputeParallelogramPredictionINS_11CornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit, label %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i

_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i: ; preds = %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i
  %i.eh = zext i32 %i.ef to i64
  %i.ei = load ptr, ptr %i.cm, align 8, !tbaa !205, !noalias !726 ; 3 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.eh
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !207, !noalias !726
  %i.el = zext i32 %i.ek to i64
  %i.em = load ptr, ptr %i.co, align 8, !tbaa !58 ; 3 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.el
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !102 ; 2 uses
  %i.ep = add nuw i32 %i.ef, 1                    ; 2 uses
  %i.eq = urem i32 %i.ep, 3
  %.not.i.i.i136 = icmp eq i32 %i.eq, 0
  %i.er = add i32 %i.ef, -2
  %spec.select.i.i.i = select i1 %.not.i.i.i136, i32 %i.er, i32 %i.ep ; 2 uses
  %i.es = icmp eq i32 %spec.select.i.i.i, -1
  br i1 %i.es, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i
  %i.et = zext i32 %spec.select.i.i.i to i64
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.et
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !207, !noalias !727
  %i.ew = zext i32 %i.ev to i64
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i
  %storemerge.i11.i.i = phi i64 [ %i.ew, %bb.ah ], [ 4294967295, %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i ]
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %storemerge.i11.i.i
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !102 ; 2 uses
  %i.ez = urem i32 %i.ef, 3
  %.not.i13.i.i = icmp eq i32 %i.ez, 0
  br i1 %.not.i13.i.i, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread26.i.i

_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread26.i.i: ; preds = %bb.ai
  %i.fa = add i32 %i.ef, -1
  br label %bb.aj

_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i: ; preds = %bb.ai
  %i.fb = add i32 %i.ef, 2                        ; 2 uses
  %i.fc = icmp eq i32 %i.fb, -1
  br i1 %i.fc, label %_ZN5draco23GetParallelogramEntriesINS_11CornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i, label %bb.aj

bb.aj:                                            ; preds = %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread26.i.i
  %.sink.i1428.i.i = phi i32 [ %i.fa, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread26.i.i ], [ %i.fb, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i ]
  %i.fd = zext i32 %.sink.i1428.i.i to i64
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.fd
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !207, !noalias !728
  %i.fg = zext i32 %i.ff to i64
  br label %_ZN5draco23GetParallelogramEntriesINS_11CornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i

_ZN5draco23GetParallelogramEntriesINS_11CornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i: ; preds = %bb.aj, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i
  %storemerge.i15.i.i = phi i64 [ %i.fg, %bb.aj ], [ 4294967295, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i ]
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %storemerge.i15.i.i
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !102 ; 2 uses
  %i.fj = sext i32 %i.eo to i64
  %i.fk = icmp sgt i64 %indvars.iv300, %i.fj
  %i.fl = sext i32 %i.ey to i64
  %i.fm = icmp sgt i64 %indvars.iv300, %i.fl
  %or.cond.i = select i1 %i.fk, i1 %i.fm, i1 false
  %i.fn = sext i32 %i.fi to i64
  %i.fo = icmp sgt i64 %indvars.iv300, %i.fn
  %or.cond40.i = select i1 %or.cond.i, i1 %i.fo, i1 false
  br i1 %or.cond40.i, label %bb.ak, label %_ZN5draco30ComputeParallelogramPredictionINS_11CornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit

bb.ak:                                            ; preds = %_ZN5draco23GetParallelogramEntriesINS_11CornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i
  br i1 %.not.i.i.i.i, label %.loopexit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.ak
  %i.fp = mul nsw i32 %i.fi, %4
  %i.fq = mul nsw i32 %i.ey, %4
  %i.fr = mul nsw i32 %i.eo, %4
  %i.fs = sext i32 %i.fq to i64                   ; 2 uses
  %i.ft = sext i32 %i.fp to i64                   ; 2 uses
  %i.fu = sext i32 %i.fr to i64                   ; 2 uses
  %invariant.gep.i = getelementptr [4 x i8], ptr %2, i64 %i.fs ; 4 uses
  %invariant.gep49.i = getelementptr [4 x i8], ptr %2, i64 %i.ft ; 4 uses
  %invariant.gep51.i = getelementptr [4 x i8], ptr %2, i64 %i.fu ; 4 uses
  br i1 %min.iters.check382, label %.lr.ph.i137.preheader, label %vector.memcheck377

vector.memcheck377:                               ; preds = %.lr.ph.preheader.i
  %i.fv = sub i64 %i.ec, %i.a                     ; 2 uses
  %i.fw = shl nsw i64 %i.fu, 2
  %i.fx = sub i64 %i.fw, %i.fv
  %diff.check = icmp ugt i64 %i.fx, -32
  %i.fy = shl nsw i64 %i.ft, 2
  %i.fz = sub i64 %i.fy, %i.fv
  %diff.check378 = icmp ugt i64 %i.fz, -32
  %conflict.rdx = or i1 %diff.check, %diff.check378
  %i.ga = shl nsw i64 %i.fs, 2
  %i.gb = add i64 %i.ga, %i.a
  %i.gc = sub i64 %i.gb, %i.ec
  %diff.check379 = icmp ugt i64 %i.gc, -32
  %conflict.rdx380 = or i1 %conflict.rdx, %diff.check379
  br i1 %conflict.rdx380, label %.lr.ph.i137.preheader, label %vector.body385

vector.body385:                                   ; preds = %vector.memcheck377, %vector.body385
  %index386 = phi i64 [ %index.next393, %vector.body385 ], [ 0, %vector.memcheck377 ] ; 5 uses
  %i.gd = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %index386 ; 2 uses
  %i.ge = getelementptr i8, ptr %i.gd, i64 16
  %wide.load387.a = load <4 x i32>, ptr %i.gd, align 4, !tbaa !102
  %wide.load388.a = load <4 x i32>, ptr %i.ge, align 4, !tbaa !102
  %i.gf = getelementptr [4 x i8], ptr %invariant.gep49.i, i64 %index386 ; 2 uses
  %i.gg = getelementptr i8, ptr %i.gf, i64 16
  %wide.load389.a = load <4 x i32>, ptr %i.gf, align 4, !tbaa !102
  %wide.load390 = load <4 x i32>, ptr %i.gg, align 4, !tbaa !102
  %i.gh = getelementptr [4 x i8], ptr %invariant.gep51.i, i64 %index386 ; 2 uses
  %i.gi = getelementptr i8, ptr %i.gh, i64 16
  %wide.load391 = load <4 x i32>, ptr %i.gh, align 4, !tbaa !102
  %wide.load392 = load <4 x i32>, ptr %i.gi, align 4, !tbaa !102
  %i.gj = add <4 x i32> %wide.load389.a, %wide.load387.a
  %i.gk = add <4 x i32> %wide.load390, %wide.load388.a
  %i.gl = sub <4 x i32> %i.gj, %wide.load391
  %i.gm = sub <4 x i32> %i.gk, %wide.load392
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %index386 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  store <4 x i32> %i.gl, ptr %i.gn, align 4, !tbaa !102
  store <4 x i32> %i.gm, ptr %i.go, align 4, !tbaa !102
  %index.next393 = add nuw i64 %index386, 8       ; 2 uses
  %i.gp = icmp eq i64 %index.next393, %n.vec384
  br i1 %i.gp, label %middle.block394, label %vector.body385, !llvm.loop !701

middle.block394:                                  ; preds = %vector.body385
  br i1 %cmp.n395, label %.loopexit, label %.lr.ph.i137.preheader

.lr.ph.i137.preheader:                            ; preds = %vector.memcheck377, %.lr.ph.preheader.i, %middle.block394
  %indvars.iv.i138.ph = phi i64 [ 0, %vector.memcheck377 ], [ 0, %.lr.ph.preheader.i ], [ %n.vec384, %middle.block394 ] ; 7 uses
  br i1 %lcmp.mod.not, label %.lr.ph.i137.prol.loopexit, label %.lr.ph.i137.prol

.lr.ph.i137.prol:                                 ; preds = %.lr.ph.i137.preheader
  %gep.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i138.ph
  %i.gq = load i32, ptr %gep.i.prol, align 4, !tbaa !102
  %gep50.i.prol = getelementptr [4 x i8], ptr %invariant.gep49.i, i64 %indvars.iv.i138.ph
  %i.gr = load i32, ptr %gep50.i.prol, align 4, !tbaa !102
  %gep52.i.prol = getelementptr [4 x i8], ptr %invariant.gep51.i, i64 %indvars.iv.i138.ph
  %i.gs = load i32, ptr %gep52.i.prol, align 4, !tbaa !102
  %i.gt = add i32 %i.gr, %i.gq
  %i.gu = sub i32 %i.gt, %i.gs
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv.i138.ph
  store i32 %i.gu, ptr %i.gv, align 4, !tbaa !102
  %indvars.iv.next.i139.prol = or disjoint i64 %indvars.iv.i138.ph, 1
  br label %.lr.ph.i137.prol.loopexit

.lr.ph.i137.prol.loopexit:                        ; preds = %.lr.ph.i137.prol, %.lr.ph.i137.preheader
  %indvars.iv.i138.unr = phi i64 [ %indvars.iv.i138.ph, %.lr.ph.i137.preheader ], [ %indvars.iv.next.i139.prol, %.lr.ph.i137.prol ]
  %i.gw = icmp eq i64 %i.dn, %indvars.iv.i138.ph
  br i1 %i.gw, label %.loopexit, label %.lr.ph.i137

.lr.ph.i137:                                      ; preds = %.lr.ph.i137.prol.loopexit, %.lr.ph.i137
  %indvars.iv.i138 = phi i64 [ %indvars.iv.next.i139.1, %.lr.ph.i137 ], [ %indvars.iv.i138.unr, %.lr.ph.i137.prol.loopexit ] ; 6 uses
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i138
  %i.gx = load i32, ptr %gep.i, align 4, !tbaa !102
  %gep50.i = getelementptr [4 x i8], ptr %invariant.gep49.i, i64 %indvars.iv.i138
  %i.gy = load i32, ptr %gep50.i, align 4, !tbaa !102
  %gep52.i = getelementptr [4 x i8], ptr %invariant.gep51.i, i64 %indvars.iv.i138
  %i.gz = load i32, ptr %gep52.i, align 4, !tbaa !102
  %i.ha = add i32 %i.gy, %i.gx
  %i.hb = sub i32 %i.ha, %i.gz
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv.i138
  store i32 %i.hb, ptr %i.hc, align 4, !tbaa !102
  %indvars.iv.next.i139 = add nuw nsw i64 %indvars.iv.i138, 1 ; 4 uses
  %gep.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i139
  %i.hd = load i32, ptr %gep.i.1, align 4, !tbaa !102
  %gep50.i.1 = getelementptr [4 x i8], ptr %invariant.gep49.i, i64 %indvars.iv.next.i139
  %i.he = load i32, ptr %gep50.i.1, align 4, !tbaa !102
  %gep52.i.1 = getelementptr [4 x i8], ptr %invariant.gep51.i, i64 %indvars.iv.next.i139
  %i.hf = load i32, ptr %gep52.i.1, align 4, !tbaa !102
  %i.hg = add i32 %i.he, %i.hd
  %i.hh = sub i32 %i.hg, %i.hf
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv.next.i139
  store i32 %i.hh, ptr %i.hi, align 4, !tbaa !102
  %indvars.iv.next.i139.1 = add nuw nsw i64 %indvars.iv.i138, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i139.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %.loopexit, label %.lr.ph.i137, !llvm.loop !702

.loopexit:                                        ; preds = %.lr.ph.i137.prol.loopexit, %.lr.ph.i137, %middle.block394, %bb.ak
  %i.hj = add nsw i32 %.085245, 1                 ; 2 uses
  %i.hk = icmp eq i32 %i.hj, 4
  br i1 %i.hk, label %.preheader231, label %_ZN5draco30ComputeParallelogramPredictionINS_11CornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit

bb.al:                                            ; preds = %bb.af
  %i.hl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i173 = icmp eq ptr %.sroa.0201.0, null
  br i1 %.not.i.i.i173, label %_ZNSt6vectorIiSaIiEED2Ev.exit179, label %bb.bt

_ZN5draco30ComputeParallelogramPredictionINS_11CornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit: ; preds = %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, %_ZN5draco23GetParallelogramEntriesINS_11CornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i, %.loopexit
  %.186 = phi i32 [ %i.hj, %.loopexit ], [ %.085245, %_ZN5draco23GetParallelogramEntriesINS_11CornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i ], [ %.085245, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i ] ; 3 uses
  br i1 %.083246, label %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, label %bb.an

_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i: ; preds = %_ZN5draco30ComputeParallelogramPredictionINS_11CornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit
  %i.hm = add nuw i32 %.sroa.0191.0244, 1         ; 2 uses
  %i.hn = urem i32 %i.hm, 3
  %.not.i.i140 = icmp eq i32 %i.hn, 0
  %i.ho = add i32 %.sroa.0191.0244, -2
  %spec.select.i.i = select i1 %.not.i.i140, i32 %i.ho, i32 %i.hm ; 2 uses
  %i.hp = icmp eq i32 %spec.select.i.i, -1
  br i1 %i.hp, label %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i141

_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i141: ; preds = %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i
  %i.hq = zext i32 %spec.select.i.i to i64
  %i.hr = load ptr, ptr %i.dh, align 8, !tbaa !184, !noalias !729
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %i.hq
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !186, !noalias !729 ; 3 uses
  %i.hu = icmp eq i32 %i.ht, -1
  br i1 %i.hu, label %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %bb.am

bb.am:                                            ; preds = %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i141
  %i.hv = add nuw i32 %i.ht, 1                    ; 2 uses
  %i.hw = urem i32 %i.hv, 3
  %.not.i1.i = icmp eq i32 %i.hw, 0
  %i.hx = add i32 %i.ht, -2
  %spec.select.i2.i = select i1 %.not.i1.i, i32 %i.hx, i32 %i.hv
  br label %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

bb.an:                                            ; preds = %_ZN5draco30ComputeParallelogramPredictionINS_11CornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit
  %i.hy = urem i32 %.sroa.0191.0244, 3
  %.not.i.i142 = icmp eq i32 %i.hy, 0
  br i1 %.not.i.i142, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i

_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i: ; preds = %bb.an
  %i.hz = add i32 %.sroa.0191.0244, -1
  br label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i143

_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i: ; preds = %bb.an
  %i.ia = add i32 %.sroa.0191.0244, 2             ; 2 uses
  %i.ib = icmp eq i32 %i.ia, -1
  br i1 %i.ib, label %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i143

_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i143: ; preds = %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i
  %.sink.i9.i = phi i32 [ %i.hz, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i ], [ %i.ia, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i ]
  %i.ic = zext i32 %.sink.i9.i to i64
  %i.id = load ptr, ptr %i.dh, align 8, !tbaa !184, !noalias !730
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %i.ic
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !186, !noalias !730 ; 4 uses
  %i.ig = icmp eq i32 %i.if, -1
  br i1 %i.ig, label %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i143
  %i.ih = urem i32 %i.if, 3
  %.not.i1.i144 = icmp eq i32 %i.ih, 0
  br i1 %.not.i1.i144, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ii = add i32 %i.if, -1
  br label %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

bb.aq:                                            ; preds = %bb.ao
  %i.ij = add i32 %i.if, 2
  br label %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit: ; preds = %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i143, %bb.ap, %bb.aq, %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i141, %bb.am
  %.sroa.0191.1 = phi i32 [ -1, %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i ], [ -1, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i141 ], [ %spec.select.i2.i, %bb.am ], [ %i.ii, %bb.ap ], [ %i.ij, %bb.aq ], [ -1, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i143 ], [ -1, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i ] ; 3 uses
  %i.ik = icmp eq i32 %.sroa.0191.1, %i.ds
  br i1 %i.ik, label %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit._crit_edge, label %bb.ar

bb.ar:                                            ; preds = %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  %i.il = icmp eq i32 %.sroa.0191.1, -1
  %or.cond = and i1 %.083246, %i.il
  br i1 %or.cond, label %bb.as, label %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit152

bb.as:                                            ; preds = %bb.ar
  br i1 %brmerge, label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i147, label %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit._crit_edge

_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i147: ; preds = %bb.as
  %i.im = load ptr, ptr %i.dh, align 8, !tbaa !184, !noalias !731
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %i.dy
  %i.io = load i32, ptr %i.in, align 4, !tbaa !186, !noalias !731 ; 4 uses
  %i.ip = icmp eq i32 %i.io, -1
  br i1 %i.ip, label %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit._crit_edge, label %bb.at

bb.at:                                            ; preds = %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i147
  %i.iq = urem i32 %i.io, 3
  %.not.i1.i149 = icmp eq i32 %i.iq, 0
  br i1 %.not.i1.i149, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ir = add i32 %i.io, -1
  br label %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit152

bb.av:                                            ; preds = %bb.at
  %i.is = add i32 %i.io, 2
  br label %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit152

_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit152: ; preds = %bb.au, %bb.av, %bb.ar
  %.sroa.0191.2 = phi i32 [ %.sroa.0191.1, %bb.ar ], [ %i.ir, %bb.au ], [ %i.is, %bb.av ] ; 2 uses
  %.184 = phi i1 [ %.083246, %bb.ar ], [ false, %bb.au ], [ false, %bb.av ]
  %.not226 = icmp eq i32 %.sroa.0191.2, -1
  br i1 %.not226, label %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit._crit_edge, label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, !llvm.loop !715

_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit._crit_edge: ; preds = %bb.as, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i147, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit152, %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  %i.it = icmp sgt i32 %.186, 0
  br i1 %i.it, label %.preheader231, label %.thread223

.preheader231:                                    ; preds = %.loopexit, %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit._crit_edge
  %.287362 = phi i32 [ %.186, %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit._crit_edge ], [ 4, %.loopexit ] ; 2 uses
  br i1 %.not.i.i.i.i, label %.lr.ph258, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader231
  call void @llvm.memset.p0.i64(ptr align 4 %.sroa.0201.0, i8 0, i64 %i.dm, i1 false), !tbaa !102
  br label %.lr.ph258

.lr.ph258:                                        ; preds = %.preheader231, %.lr.ph.preheader
  %i.iu = add nsw i32 %.287362, -1
  %i.iv = zext nneg i32 %i.iu to i64              ; 2 uses
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.iv ; 2 uses
  %i.ix = getelementptr inbounds nuw [40 x i8], ptr %i.di, i64 %i.iv ; 3 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !144
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ix, i64 24
  %i.jb = load i32, ptr %i.ja, align 8, !tbaa !145
  %i.jc = load ptr, ptr %i.ix, align 8, !tbaa !144 ; 2 uses
  %i.jd = ptrtoint ptr %i.iz to i64
  %i.je = ptrtoint ptr %i.jc to i64
  %i.jf = sub i64 %i.jd, %i.je
  %i.jg = shl nsw i64 %i.jf, 3
  %i.jh = zext i32 %i.jb to i64
  %i.ji = add nsw i64 %i.jg, %i.jh
  %.promoted = load i32, ptr %i.iw, align 4, !tbaa !102
  %i.jj = sext i32 %.promoted to i64              ; 2 uses
  %i.jk = call i64 @llvm.usub.sat.i64(i64 %i.ji, i64 %i.jj)
  %wide.trip.count292 = zext nneg i32 %.287362 to i64
  br label %bb.aw

bb.aw:                                            ; preds = %.lr.ph258, %.thread
  %indvars.iv285 = phi i64 [ 0, %.lr.ph258 ], [ %indvars.iv.next286, %.thread ] ; 3 uses
  %indvars.iv283 = phi i64 [ %i.jj, %.lr.ph258 ], [ %indvars.iv.next284, %.thread ] ; 4 uses
  %.082255 = phi i32 [ 0, %.lr.ph258 ], [ %.2216, %.thread ] ; 2 uses
  %indvars.iv.next284 = add nsw i64 %indvars.iv283, 1 ; 2 uses
  %i.jl = trunc nsw i64 %indvars.iv.next284 to i32
  store i32 %i.jl, ptr %i.iw, align 4, !tbaa !102
  %exitcond290.not = icmp eq i64 %indvars.iv285, %i.jk
  br i1 %exitcond290.not, label %.critedge130, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.jm = trunc nsw i64 %indvars.iv283 to i32
  %i.jn = sdiv i32 %i.jm, 64
  %.sext = sext i32 %i.jn to i64
  %i.jo = getelementptr inbounds [8 x i8], ptr %i.jc, i64 %.sext
  %i.jp = and i64 %indvars.iv283, -9223372036854775745
  %i.jq = icmp ugt i64 %i.jp, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.jq, i64 -8, i64 0
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.jo, i64 %storemerge.idx.i.i.i.i.i
  %i.jr = and i64 %indvars.iv283, 63
  %i.js = shl nuw i64 1, %i.jr
  %i.jt = load i64, ptr %storemerge.i.i.i.i.i, align 8, !tbaa !187
  %i.ju = and i64 %i.jt, %i.js
  %.not228 = icmp eq i64 %i.ju, 0
  br i1 %.not228, label %bb.ay, label %.thread

bb.ay:                                            ; preds = %bb.ax
  %i.jv = add nsw i32 %.082255, 1                 ; 4 uses
  br i1 %.not.i.i.i.i, label %.thread, label %.lr.ph253

.lr.ph253:                                        ; preds = %bb.ay
  %i.jw = getelementptr inbounds nuw [24 x i8], ptr %6, i64 %indvars.iv285
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !58 ; 8 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph253
  %scevgep373 = getelementptr i8, ptr %i.jx, i64 %i.dm
  %bound0 = icmp ult ptr %.sroa.0201.0, %scevgep373
  %bound1 = icmp ult ptr %i.jx, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0201.0, i64 %index ; 3 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.jy, align 4, !tbaa !102, !alias.scope !732, !noalias !733
  %wide.load374 = load <4 x i32>, ptr %i.jz, align 4, !tbaa !102, !alias.scope !732, !noalias !733
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %index ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 16
  %wide.load375 = load <4 x i32>, ptr %i.ka, align 4, !tbaa !102, !alias.scope !733
  %wide.load376 = load <4 x i32>, ptr %i.kb, align 4, !tbaa !102, !alias.scope !733
  %i.kc = add <4 x i32> %wide.load375, %wide.load
  %i.kd = add <4 x i32> %wide.load376, %wide.load374
  store <4 x i32> %i.kc, ptr %i.jy, align 4, !tbaa !102, !alias.scope !732, !noalias !733
  store <4 x i32> %i.kd, ptr %i.jz, align 4, !tbaa !102, !alias.scope !732, !noalias !733
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ke = icmp eq i64 %index.next, %n.vec
  br i1 %i.ke, label %middle.block, label %vector.body, !llvm.loop !719

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.thread, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph253, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph253 ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod402.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0201.0, i64 %indvars.iv.prol ; 2 uses
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !102
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %indvars.iv.prol
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !102
  %i.kj = add i32 %i.ki, %i.kg
  store i32 %i.kj, ptr %i.kf, align 4, !tbaa !102
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter401
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !720

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %7 = sub nsw i64 %indvars.iv.ph, %wide.trip.count.i
  %8 = icmp ugt i64 %7, -4
  br i1 %8, label %.thread, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0201.0, i64 %indvars.iv ; 2 uses
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !102
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %indvars.iv
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !102
  %i.ko = add i32 %i.kn, %i.kl
  store i32 %i.ko, ptr %i.kk, align 4, !tbaa !102
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0201.0, i64 %indvars.iv.next ; 2 uses
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !102
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %indvars.iv.next
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !102
  %i.kt = add i32 %i.ks, %i.kq
  store i32 %i.kt, ptr %i.kp, align 4, !tbaa !102
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0201.0, i64 %indvars.iv.next.1 ; 2 uses
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !102
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %indvars.iv.next.1
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !102
  %i.ky = add i32 %i.kx, %i.kv
  store i32 %i.ky, ptr %i.ku, align 4, !tbaa !102
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0201.0, i64 %indvars.iv.next.2 ; 2 uses
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !102
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %indvars.iv.next.2
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !102
  %i.ld = add i32 %i.lc, %i.la
  store i32 %i.ld, ptr %i.kz, align 4, !tbaa !102
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count.i
  br i1 %exitcond.not.3, label %.thread, label %scalar.ph, !llvm.loop !721

.thread:                                          ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.ay, %bb.ax
  %.2216 = phi i32 [ %.082255, %bb.ax ], [ %i.jv, %bb.ay ], [ %i.jv, %middle.block ], [ %i.jv, %scalar.ph ], [ %i.jv, %scalar.ph.prol.loopexit ] ; 5 uses
  %indvars.iv.next286 = add nuw nsw i64 %indvars.iv285, 1 ; 2 uses
  %exitcond293.not = icmp eq i64 %indvars.iv.next286, %wide.trip.count292
  br i1 %exitcond293.not, label %.thread221, label %bb.aw, !llvm.loop !722

.thread221:                                       ; preds = %.thread
  %i.le = mul nuw nsw i64 %indvars.iv300, %i.e    ; 2 uses
  %i.lf = icmp eq i32 %.2216, 0
  br i1 %i.lf, label %.thread223, label %.preheader

.preheader:                                       ; preds = %.thread221
  br i1 %.not.i.i.i.i, label %._crit_edge262, label %.lr.ph261.preheader

.lr.ph261.preheader:                              ; preds = %.preheader
  br i1 %i.do, label %.lr.ph261.epil.preheader, label %.lr.ph261

.thread223:                                       ; preds = %bb.ag, %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit._crit_edge, %.thread221
  %.pn = trunc i64 %indvars.iv300 to i32
  %i.lg = mul i32 %4, %.pn
  %i.lh = add nsw i64 %indvars.iv300, -1
  %i.li = mul nuw nsw i64 %i.lh, %i.e
  %i.lj = getelementptr inbounds [4 x i8], ptr %2, i64 %i.li
  %i.lk = sext i32 %i.lg to i64                   ; 2 uses
  %i.ll = getelementptr inbounds [4 x i8], ptr %1, i64 %i.lk
  %i.lm = getelementptr inbounds [4 x i8], ptr %2, i64 %i.lk
  %i.ln = load i32, ptr %i.c, align 8, !tbaa !180
  %i.lo = icmp sgt i32 %i.ln, 0
  br i1 %i.lo, label %.lr.ph.i.i153, label %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit162

.lr.ph.i.i153:                                    ; preds = %.thread223
  %i.lp = load ptr, ptr %i.d, align 8             ; 3 uses
  br label %bb.az

bb.az:                                            ; preds = %bb.be, %.lr.ph.i.i153
  %indvars.iv.i.i154 = phi i64 [ 0, %.lr.ph.i.i153 ], [ %indvars.iv.next.i.i155, %bb.be ] ; 4 uses
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.lj, i64 %indvars.iv.i.i154
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !102 ; 3 uses
  %i.ls = load i32, ptr %i.dj, align 8, !tbaa !176 ; 2 uses
  %i.lt = icmp sgt i32 %i.lr, %i.ls
  br i1 %i.lt, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.lp, i64 %indvars.iv.i.i154
  store i32 %i.ls, ptr %i.lu, align 4, !tbaa !102
  br label %bb.be

bb.bb:                                            ; preds = %bb.az
  %i.lv = load i32, ptr %i.dk, align 4, !tbaa !175 ; 2 uses
  %i.lw = icmp slt i32 %i.lr, %i.lv
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.lp, i64 %indvars.iv.i.i154 ; 2 uses
  br i1 %i.lw, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  store i32 %i.lv, ptr %i.lx, align 4, !tbaa !102
  br label %bb.be

bb.bd:                                            ; preds = %bb.bb
  store i32 %i.lr, ptr %i.lx, align 4, !tbaa !102
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc, %bb.ba
  %indvars.iv.next.i.i155 = add nuw nsw i64 %indvars.iv.i.i154, 1 ; 2 uses
  %i.ly = load i32, ptr %i.c, align 8, !tbaa !180 ; 2 uses
  %i.lz = sext i32 %i.ly to i64
  %i.ma = icmp slt i64 %indvars.iv.next.i.i155, %i.lz
  br i1 %i.ma, label %bb.az, label %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i156, !llvm.loop !1

_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i156: ; preds = %bb.be
  %i.mb = icmp sgt i32 %i.ly, 0
  br i1 %i.mb, label %.lr.ph.i157, label %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit162

.lr.ph.i157:                                      ; preds = %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i156, %bb.bi
  %indvars.iv.i158 = phi i64 [ %indvars.iv.next.i159, %bb.bi ], [ 0, %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i156 ] ; 4 uses
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %i.lp, i64 %indvars.iv.i158
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !102
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.ll, i64 %indvars.iv.i158
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !102
  %i.mg = add i32 %i.mf, %i.md                    ; 5 uses
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.lm, i64 %indvars.iv.i158 ; 2 uses
  store i32 %i.mg, ptr %i.mh, align 4, !tbaa !102
  %i.mi = load i32, ptr %i.dj, align 8, !tbaa !176
  %i.mj = icmp sgt i32 %i.mg, %i.mi
  br i1 %i.mj, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %.lr.ph.i157
  %i.mk = load i32, ptr %i.dl, align 4, !tbaa !177
  %i.ml = sub nsw i32 %i.mg, %i.mk
  br label %.sink.split.i160

bb.bg:                                            ; preds = %.lr.ph.i157
  %i.mm = load i32, ptr %i.dk, align 4, !tbaa !175
  %i.mn = icmp slt i32 %i.mg, %i.mm
  br i1 %i.mn, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.mo = load i32, ptr %i.dl, align 4, !tbaa !177
  %i.mp = add nsw i32 %i.mo, %i.mg
  br label %.sink.split.i160

.sink.split.i160:                                 ; preds = %bb.bh, %bb.bf
  %.sink.i161 = phi i32 [ %i.ml, %bb.bf ], [ %i.mp, %bb.bh ]
  store i32 %.sink.i161, ptr %i.mh, align 4, !tbaa !102
  br label %bb.bi

bb.bi:                                            ; preds = %.sink.split.i160, %bb.bg
  %indvars.iv.next.i159 = add nuw nsw i64 %indvars.iv.i158, 1 ; 2 uses
  %i.mq = load i32, ptr %i.c, align 8, !tbaa !180
  %i.mr = sext i32 %i.mq to i64
  %i.ms = icmp slt i64 %indvars.iv.next.i159, %i.mr
  br i1 %i.ms, label %.lr.ph.i157, label %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit162, !llvm.loop !2

._crit_edge262.loopexit.unr-lcssa:                ; preds = %.lr.ph261
  br i1 %lcmp.mod404.not, label %._crit_edge262, label %.lr.ph261.epil.preheader

.lr.ph261.epil.preheader:                         ; preds = %._crit_edge262.loopexit.unr-lcssa, %.lr.ph261.preheader
  %indvars.iv294.epil.init = phi i64 [ 0, %.lr.ph261.preheader ], [ %indvars.iv.next295.1, %._crit_edge262.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod405)
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0201.0, i64 %indvars.iv294.epil.init ; 2 uses
  %i.mu = load i32, ptr %i.mt, align 4, !tbaa !102
  %i.mv = sdiv i32 %i.mu, %.2216
  store i32 %i.mv, ptr %i.mt, align 4, !tbaa !102
  br label %._crit_edge262

._crit_edge262:                                   ; preds = %.lr.ph261.epil.preheader, %._crit_edge262.loopexit.unr-lcssa, %.preheader
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.le
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.le
  %i.my = load i32, ptr %i.c, align 8, !tbaa !180
  %i.mz = icmp sgt i32 %i.my, 0
  br i1 %i.mz, label %.lr.ph.i.i163, label %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit162

.lr.ph.i.i163:                                    ; preds = %._crit_edge262
  %i.na = load ptr, ptr %i.d, align 8             ; 3 uses
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bo, %.lr.ph.i.i163
  %indvars.iv.i.i164 = phi i64 [ 0, %.lr.ph.i.i163 ], [ %indvars.iv.next.i.i165, %bb.bo ] ; 4 uses
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0201.0, i64 %indvars.iv.i.i164
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !102 ; 3 uses
  %i.nd = load i32, ptr %i.dj, align 8, !tbaa !176 ; 2 uses
  %i.ne = icmp sgt i32 %i.nc, %i.nd
  br i1 %i.ne, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.na, i64 %indvars.iv.i.i164
  store i32 %i.nd, ptr %i.nf, align 4, !tbaa !102
  br label %bb.bo

bb.bl:                                            ; preds = %bb.bj
  %i.ng = load i32, ptr %i.dk, align 4, !tbaa !175 ; 2 uses
  %i.nh = icmp slt i32 %i.nc, %i.ng
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.na, i64 %indvars.iv.i.i164 ; 2 uses
  br i1 %i.nh, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  store i32 %i.ng, ptr %i.ni, align 4, !tbaa !102
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bl
  store i32 %i.nc, ptr %i.ni, align 4, !tbaa !102
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm, %bb.bk
  %indvars.iv.next.i.i165 = add nuw nsw i64 %indvars.iv.i.i164, 1 ; 2 uses
  %i.nj = load i32, ptr %i.c, align 8, !tbaa !180 ; 2 uses
  %i.nk = sext i32 %i.nj to i64
  %i.nl = icmp slt i64 %indvars.iv.next.i.i165, %i.nk
  br i1 %i.nl, label %bb.bj, label %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i166, !llvm.loop !1

_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i166: ; preds = %bb.bo
  %i.nm = icmp sgt i32 %i.nj, 0
  br i1 %i.nm, label %.lr.ph.i167, label %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit162

.lr.ph.i167:                                      ; preds = %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i166, %bb.bs
  %indvars.iv.i168 = phi i64 [ %indvars.iv.next.i169, %bb.bs ], [ 0, %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i166 ] ; 4 uses
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %i.na, i64 %indvars.iv.i168
  %i.no = load i32, ptr %i.nn, align 4, !tbaa !102
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.mw, i64 %indvars.iv.i168
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !102
  %i.nr = add i32 %i.nq, %i.no                    ; 5 uses
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %indvars.iv.i168 ; 2 uses
  store i32 %i.nr, ptr %i.ns, align 4, !tbaa !102
  %i.nt = load i32, ptr %i.dj, align 8, !tbaa !176
  %i.nu = icmp sgt i32 %i.nr, %i.nt
  br i1 %i.nu, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %.lr.ph.i167
  %i.nv = load i32, ptr %i.dl, align 4, !tbaa !177
  %i.nw = sub nsw i32 %i.nr, %i.nv
  br label %.sink.split.i170

bb.bq:                                            ; preds = %.lr.ph.i167
  %i.nx = load i32, ptr %i.dk, align 4, !tbaa !175
  %i.ny = icmp slt i32 %i.nr, %i.nx
  br i1 %i.ny, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.nz = load i32, ptr %i.dl, align 4, !tbaa !177
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
  br i1 %i.ct, label %.lr.ph.split, label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit, !llvm.loop !897
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
