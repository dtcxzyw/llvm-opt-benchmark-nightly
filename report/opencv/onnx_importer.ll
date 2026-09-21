Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/onnx_importer?download=true
inline.NumInlined: 9294
inline.NumDeleted: 1829
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 36
begin_hunk_0_@_ZN2cv3dnn14dnn5_v2026060512ONNXImporter12parseQConcatERNS1_11LayerParamsERKN11opencv_onnx9NodeProtoE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  br label %.body147

bb.cn:                                            ; preds = %bb.an, %bb.cl
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.mj = trunc nuw i64 %indvars.iv.next to i32
  %i.mk = icmp sgt i32 %i.m, %i.mj
  br i1 %i.mk, label %bb.x, label %.lr.ph652, !llvm.loop !1355

.lr.ph.i.i.i265:                                  ; preds = %.lr.ph652, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v2026060512ONNXImporter9LayerInfoESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit.thread
  %indvars.iv674 = phi i64 [ %indvars.iv.next675, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v2026060512ONNXImporter9LayerInfoESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit.thread ], [ 2, %.lr.ph652 ] ; 2 uses
  %i.ml = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv674
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !54 ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 8
  %i.mo = load i64, ptr %i.mn, align 8, !tbaa !65 ; 4 uses
  %i.mp = load ptr, ptr %i.mm, align 8            ; 2 uses
  br label %bb.co

bb.co:                                            ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i271, %.lr.ph.i.i.i265
  %.012.i.i.i266 = phi ptr [ %i.cr, %.lr.ph.i.i.i265 ], [ %.1.i.i.i276, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i271 ] ; 4 uses
  %.0811.i.i.i267 = phi ptr [ %i.cs, %.lr.ph.i.i.i265 ], [ %.19.i.i.i273, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i271 ]
  %i.mq = getelementptr inbounds nuw i8, ptr %.012.i.i.i266, i64 40
  %i.mr = load i64, ptr %i.mq, align 8, !tbaa !65 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i268 = call i64 @llvm.umin.i64(i64 %i.mo, i64 %i.mr) ; 2 uses
  %i.ms = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i268, 0
  br i1 %i.ms, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i289, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i269

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i269: ; preds = %bb.co
  %i.mt = getelementptr inbounds nuw i8, ptr %.012.i.i.i266, i64 32
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !66
  %i.mv = call i32 @memcmp(ptr noundef %i.mu, ptr noundef %i.mp, i64 noundef %.sroa.speculated.i.i.i.i.i.i268) #28 ; 2 uses
  %.not.i.i.i.i.i.i270 = icmp eq i32 %i.mv, 0
  br i1 %.not.i.i.i.i.i.i270, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i289, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i271

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i289: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i269, %bb.co
  %i.mw = sub i64 %i.mr, %i.mo
  %spec.select7.i.i.i.i.i.i.i290 = call i64 @llvm.smax.i64(i64 %i.mw, i64 -2147483648)
  %.08.i.i.i.i.i.i.i291 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i290, i64 2147483647)
  %.0.i6.i.i.i.i.i.i292 = trunc nsw i64 %.08.i.i.i.i.i.i.i291 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i271

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i271: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i289, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i269
  %.0.i.i.i.i.i.i272 = phi i32 [ %i.mv, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i269 ], [ %.0.i6.i.i.i.i.i.i292, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i289 ]
  %i.mx = icmp slt i32 %.0.i.i.i.i.i.i272, 0      ; 2 uses
  %.19.i.i.i273 = select i1 %i.mx, ptr %.0811.i.i.i267, ptr %.012.i.i.i266 ; 4 uses
  %.1.in.v.i.i.i274 = select i1 %i.mx, i64 24, i64 16
  %.1.in.i.i.i275 = getelementptr inbounds nuw i8, ptr %.012.i.i.i266, i64 %.1.in.v.i.i.i274
  %.1.i.i.i276 = load ptr, ptr %.1.in.i.i.i275, align 8, !tbaa !67 ; 2 uses
  %.not.i.i.i277 = icmp eq ptr %.1.i.i.i276, null
  br i1 %.not.i.i.i277, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3dnn14dnn5_v2026060512ONNXImporter9LayerInfoEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.co, !llvm.loop !5

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3dnn14dnn5_v2026060512ONNXImporter9LayerInfoEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i271
  %i.my = icmp eq ptr %.19.i.i.i273, %i.cs
  br i1 %i.my, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v2026060512ONNXImporter9LayerInfoESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit.thread, label %bb.cp

bb.cp:                                            ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3dnn14dnn5_v2026060512ONNXImporter9LayerInfoEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.mz = getelementptr inbounds nuw i8, ptr %.19.i.i.i273, i64 40
  %i.na = load i64, ptr %i.mz, align 8, !tbaa !65 ; 2 uses
  %.sroa.speculated.i.i.i.i.i278 = call i64 @llvm.umin.i64(i64 %i.na, i64 %i.mo) ; 2 uses
  %i.nb = icmp eq i64 %.sroa.speculated.i.i.i.i.i278, 0
  br i1 %i.nb, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i285, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i279

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i279: ; preds = %bb.cp
  %i.nc = getelementptr inbounds nuw i8, ptr %.19.i.i.i273, i64 32
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !66
  %i.ne = call i32 @memcmp(ptr noundef %i.mp, ptr noundef %i.nd, i64 noundef %.sroa.speculated.i.i.i.i.i278) #28 ; 2 uses
  %.not.i.i.i.i.i280 = icmp eq i32 %i.ne, 0
  br i1 %.not.i.i.i.i.i280, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i285, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v2026060512ONNXImporter9LayerInfoESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i285: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i279, %bb.cp
  %i.nf = sub i64 %i.mo, %i.na
  %spec.select7.i.i.i.i.i.i286 = call i64 @llvm.smax.i64(i64 %i.nf, i64 -2147483648)
  %.08.i.i.i.i.i.i287 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i286, i64 2147483647)
  %.0.i6.i.i.i.i.i288 = trunc nsw i64 %.08.i.i.i.i.i.i287 to i32
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v2026060512ONNXImporter9LayerInfoESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v2026060512ONNXImporter9LayerInfoESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i279, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i285
  %.0.i.i.i.i.i282 = phi i32 [ %i.ne, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i279 ], [ %.0.i6.i.i.i.i.i288, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i285 ]
  %i.ng = icmp slt i32 %.0.i.i.i.i.i282, 0
  br i1 %i.ng, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v2026060512ONNXImporter9LayerInfoESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit.thread, label %.lr.ph658

.lr.ph658:                                        ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v2026060512ONNXImporter9LayerInfoESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit
  %i.nh = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %57, i64 8 ; 3 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %57, i64 16 ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %57, i64 24
  %i.nm = getelementptr inbounds nuw i8, ptr %57, i64 32
  %i.nn = getelementptr inbounds nuw i8, ptr %57, i64 40
  %i.no = getelementptr inbounds nuw i8, ptr %57, i64 72 ; 4 uses
  %i.np = getelementptr inbounds nuw i8, ptr %57, i64 88 ; 4 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %57, i64 80
  %i.nr = getelementptr inbounds nuw i8, ptr %57, i64 104 ; 3 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %57, i64 120 ; 4 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %57, i64 112 ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %57, i64 48 ; 3 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %57, i64 56 ; 4 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %57, i64 64 ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %59, i64 16 ; 6 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %59, i64 8
  %i.nz = getelementptr inbounds nuw i8, ptr %60, i64 48 ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %60, i64 64
  %i.ob = getelementptr inbounds nuw i8, ptr %60, i64 56 ; 2 uses
  %i.oc = load ptr, ptr %i.nh, align 8, !tbaa !61 ; 2 uses
  %i.od = icmp eq ptr %i.oc, null
  br i1 %i.od, label %._crit_edge.i.i390, label %.lr.ph658.split.preheader

.lr.ph658.split.preheader:                        ; preds = %.lr.ph658
  %i.oe = getelementptr inbounds nuw i8, ptr %59, i64 21
  br label %.lr.ph658.split

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v2026060512ONNXImporter9LayerInfoESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit.thread: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3dnn14dnn5_v2026060512ONNXImporter9LayerInfoEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v2026060512ONNXImporter9LayerInfoESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit
  %indvars.iv.next675 = add nuw nsw i64 %indvars.iv674, 3 ; 2 uses
  %i.of = trunc nuw i64 %indvars.iv.next675 to i32
  %i.og = icmp sgt i32 %i.m, %i.of
  br i1 %i.og, label %.lr.ph.i.i.i265, label %.critedge, !llvm.loop !1356

.critedge:                                        ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v2026060512ONNXImporter9LayerInfoESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit.thread, %bb.r, %.lr.ph652
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %44, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %45, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #28
  invoke void @_ZN2cv8MatShapeC1Ev(ptr noundef nonnull align 4 dereferenceable(52) %46)
          to label %.preheader515 unwind label %bb.cq

.preheader515:                                    ; preds = %.critedge
  %i.oh = zext nneg i32 %i.m to i64
  %i.oi = icmp ugt i32 %i.m, 2
  br i1 %i.oi, label %.lr.ph654, label %._crit_edge.i.i293

.lr.ph654:                                        ; preds = %.preheader515
  %i.oj = getelementptr inbounds nuw i8, ptr %47, i64 72 ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %44, i64 8 ; 3 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %44, i64 16
  br label %bb.cr

._crit_edge.i.i293:                               ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit, %.preheader515
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #28
  %i.om = getelementptr inbounds nuw i8, ptr %49, i64 16 ; 8 uses
  store ptr %i.om, ptr %49, align 8, !tbaa !71
  store i32 1936291937, ptr %i.om, align 8
  %i.on = getelementptr inbounds nuw i8, ptr %49, i64 8
  store i64 4, ptr %i.on, align 8, !tbaa !65
  %i.oo = getelementptr inbounds nuw i8, ptr %49, i64 20
  store i8 0, ptr %i.oo, align 4, !tbaa !69
  %i.op = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !61 ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.oq, null
  br i1 %.not10.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322, label %.lr.ph.i.i.i.i309

bb.cq:                                            ; preds = %.critedge
  %i.os = landingpad { ptr, i32 }
          cleanup
  br label %bb.eo

bb.cr:                                            ; preds = %.lr.ph654, %_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit
  %.050653 = phi i64 [ 2, %.lr.ph654 ], [ %i.pq, %_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #28
  %i.ot = trunc i64 %.050653 to i32
  %i.ou = load i32, ptr %i.l, align 8, !tbaa !52, !noalias !1375
  %i.ov = icmp sgt i32 %i.ou, %i.ot
  br i1 %i.ov, label %bb.cv, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28, !noalias !1375
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28, !noalias !1375
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.45, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %.noexc300 unwind label %.loopexit.split-lp517

.noexc300:                                        ; preds = %bb.cs
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZN2cv3dnn14dnn5_v2026060512ONNXImporter7getBlobERKN11opencv_onnx9NodeProtoEi, ptr noundef nonnull @.str.4, i32 noundef 627) #31
          to label %bb.ct unwind label %bb.cu, !noalias !1375

bb.ct:                                            ; preds = %.noexc300
  unreachable

bb.cu:                                            ; preds = %.noexc300
  %i.ow = landingpad { ptr, i32 }
          cleanup
  %i.ox = load ptr, ptr %9, align 8, !tbaa !66, !noalias !1375 ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.oz = icmp eq ptr %i.ox, %i.oy
  br i1 %i.oz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i298, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i297

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i297: ; preds = %bb.cu
  %i.pa = load i64, ptr %i.oy, align 8, !tbaa !69, !noalias !1375
  %i.pb = add i64 %i.pa, 1
  call void @_ZdlPvm(ptr noundef %i.ox, i64 noundef %i.pb) #29, !noalias !1375
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i298

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i298: ; preds = %bb.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i297
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28, !noalias !1375
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28, !noalias !1375
  br label %.body301

bb.cv:                                            ; preds = %bb.cr
  %i.pc = load ptr, ptr %i.u, align 8, !tbaa !53, !noalias !1375
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 8
  %sext = shl nuw i64 %.050653, 32
  %63 = ashr exact i64 %sext, 29
  %i.pe = getelementptr inbounds i8, ptr %i.pd, i64 %63
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !54, !noalias !1375
  invoke void @_ZN2cv3dnn14dnn5_v2026060512ONNXImporter7getBlobERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %47, ptr noundef nonnull align 8 dereferenceable(720) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.pf)
          to label %_ZN2cv3dnn14dnn5_v2026060512ONNXImporter7getBlobERKN11opencv_onnx9NodeProtoEi.exit304 unwind label %.loopexit516

_ZN2cv3dnn14dnn5_v2026060512ONNXImporter7getBlobERKN11opencv_onnx9NodeProtoEi.exit304: ; preds = %bb.cv
  %i.pg = load i32, ptr %i.oj, align 8, !tbaa !284
  %i.ph = load i32, ptr %46, align 4, !tbaa !170
  %narrow.i = call i32 @llvm.smax.i32(i32 %i.ph, i32 0)
  %i.pi = icmp ult i32 %narrow.i, %i.pg
  br i1 %i.pi, label %bb.cw, label %bb.da

bb.cw:                                            ; preds = %_ZN2cv3dnn14dnn5_v2026060512ONNXImporter7getBlobERKN11opencv_onnx9NodeProtoEi.exit304
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #28
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %48, ptr noundef nonnull align 4 dereferenceable(52) %i.oj)
          to label %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit unwind label %bb.cz

_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit: ; preds = %bb.cw
  %i.pj = invoke noundef nonnull align 4 dereferenceable(52) ptr @_ZN2cv8MatShapeaSERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %46, ptr noundef nonnull align 4 dereferenceable(52) %48)
          to label %bb.cx unwind label %bb.cz     ; 0 uses

bb.cx:                                            ; preds = %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #28
  br label %bb.da

.loopexit516:                                     ; preds = %bb.cv
  %lpad.loopexit518 = landingpad { ptr, i32 }
          cleanup
  br label %.body301

.loopexit.split-lp517:                            ; preds = %bb.cs
  %lpad.loopexit.split-lp519 = landingpad { ptr, i32 }
          cleanup
  br label %.body301

bb.cy:                                            ; preds = %bb.dc, %bb.db
  %i.pk = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.cz:                                            ; preds = %bb.cw, %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit
  %i.pl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #28
  br label %bb.dd

bb.da:                                            ; preds = %bb.cx, %_ZN2cv3dnn14dnn5_v2026060512ONNXImporter7getBlobERKN11opencv_onnx9NodeProtoEi.exit304
  %i.pm = load ptr, ptr %i.ok, align 8, !tbaa !188 ; 3 uses
  %i.pn = load ptr, ptr %i.ol, align 8, !tbaa !204
  %.not.i306 = icmp eq ptr %i.pm, %i.pn
  br i1 %.not.i306, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.pm, ptr noundef nonnull align 8 dereferenceable(208) %47)
          to label %.noexc307 unwind label %bb.cy

.noexc307:                                        ; preds = %bb.db
  %i.po = load ptr, ptr %i.ok, align 8, !tbaa !188
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 208
  store ptr %i.pp, ptr %i.ok, align 8, !tbaa !188
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit

bb.dc:                                            ; preds = %bb.da
  invoke void @_ZNSt6vectorIN2cv3MatESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %44, ptr %i.pm, ptr noundef nonnull align 8 dereferenceable(208) %47)
          to label %_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit unwind label %bb.cy

_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit: ; preds = %.noexc307, %bb.dc
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %47) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #28
  %i.pq = add nuw nsw i64 %.050653, 3             ; 2 uses
  %i.pr = icmp samesign ult i64 %i.pq, %i.oh
  br i1 %i.pr, label %bb.cr, label %._crit_edge.i.i293, !llvm.loop !1359

bb.dd:                                            ; preds = %bb.cz, %bb.cy
  %.pn95 = phi { ptr, i32 } [ %i.pk, %bb.cy ], [ %i.pl, %bb.cz ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %47) #28
  br label %.body301

.body301:                                         ; preds = %.loopexit516, %.loopexit.split-lp517, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i298, %bb.dd
  %.pn95.pn = phi { ptr, i32 } [ %.pn95, %bb.dd ], [ %i.ow, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i298 ], [ %lpad.loopexit518, %.loopexit516 ], [ %lpad.loopexit.split-lp519, %.loopexit.split-lp517 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #28
  br label %bb.eo

.lr.ph.i.i.i.i309:                                ; preds = %._crit_edge.i.i293, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i ], [ %i.oq, %._crit_edge.i.i293 ] ; 4 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i ], [ %i.or, %._crit_edge.i.i293 ]
  %i.ps = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40
  %i.pt = load i64, ptr %i.ps, align 8, !tbaa !65 ; 3 uses
  %i.pu = icmp eq i64 %i.pt, 0
  br i1 %i.pu, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i309
  %.sroa.speculated.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.pt, i64 4)
  %i.pv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !66
  %i.px = call i32 @memcmp(ptr noundef %i.pw, ptr noundef nonnull %i.om, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i) #28 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.px, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i309
  %i.py = add i64 %i.pt, -4
  %spec.select7.i.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.py, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.px, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i ]
  %i.pz = icmp slt i32 %.0.i.i.i.i.i.i.i, 0       ; 2 uses
  %.19.i.i.i.i = select i1 %i.pz, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.pz, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !67 ; 2 uses
  %.not.i.i.i.i310 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i310, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3dnn14dnn5_v202606059DictValueEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i, label %.lr.ph.i.i.i.i309, !llvm.loop !11

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3dnn14dnn5_v202606059DictValueEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i
  %i.qa = icmp eq ptr %.19.i.i.i.i, %i.or
  br i1 %i.qa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322, label %bb.de

bb.de:                                            ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3dnn14dnn5_v202606059DictValueEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i
  %i.qb = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.qc = load i64, ptr %i.qb, align 8, !tbaa !65 ; 3 uses
  %i.qd = icmp eq i64 %i.qc, 0
  br i1 %i.qd, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i315, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i312

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i312: ; preds = %bb.de
  %.sroa.speculated.i.i.i.i.i.i311 = call i64 @llvm.umin.i64(i64 %i.qc, i64 4)
  %i.qe = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !66
  %i.qg = call i32 @memcmp(ptr noundef nonnull %i.om, ptr noundef %i.qf, i64 noundef %.sroa.speculated.i.i.i.i.i.i311) #28 ; 2 uses
  %.not.i.i.i.i.i.i313 = icmp eq i32 %i.qg, 0
  br i1 %.not.i.i.i.i.i.i313, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i315, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v202606059DictValueESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i315: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i312, %bb.de
  %i.qh = sub i64 4, %i.qc
  %spec.select7.i.i.i.i.i.i.i316 = call i64 @llvm.smax.i64(i64 %i.qh, i64 -2147483648)
  %.08.i.i.i.i.i.i.i317 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i316, i64 2147483647)
  %.0.i6.i.i.i.i.i.i318 = trunc nsw i64 %.08.i.i.i.i.i.i.i317 to i32
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v202606059DictValueESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v202606059DictValueESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i315, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i312
  %.0.i.i.i.i.i.i314 = phi i32 [ %i.qg, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i312 ], [ %.0.i6.i.i.i.i.i.i318, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i315 ]
  %i.qi = icmp slt i32 %.0.i.i.i.i.i.i314, 0
  br i1 %i.qi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322, label %bb.df

bb.df:                                            ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v202606059DictValueESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i
  %i.qj = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 64
  %i.qk = invoke noundef i64 @_ZNK2cv3dnn14dnn5_v202606059DictValue3getIlEET_i(ptr noundef nonnull align 8 dereferenceable(16) %i.qj, i32 noundef -1)
          to label %_ZNK2cv3dnn14dnn5_v202606054Dict3getIiEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS4_.exit unwind label %bb.dg

_ZNK2cv3dnn14dnn5_v202606054Dict3getIiEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS4_.exit: ; preds = %bb.df
  %i.ql = call i64 @llvm.smax.i64(i64 %i.qk, i64 -2147483648)
  %i.qm = call i64 @llvm.smin.i64(i64 %i.ql, i64 2147483647) ; 2 uses
  %.pre = load ptr, ptr %49, align 8, !tbaa !66   ; 2 uses
  %i.qn = icmp eq ptr %.pre, %i.om
  br i1 %i.qn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i320

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i320: ; preds = %_ZNK2cv3dnn14dnn5_v202606054Dict3getIiEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS4_.exit
  %i.qo = load i64, ptr %i.om, align 8, !tbaa !69
  %i.qp = add i64 %i.qo, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.qp) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322: ; preds = %_ZNK2cv3dnn14dnn5_v202606054Dict3getIiEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS4_.exit, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v202606059DictValueESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3dnn14dnn5_v202606059DictValueEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i, %._crit_edge.i.i293, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i320
  %.0.i808 = phi i64 [ %i.qm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i320 ], [ %i.qm, %_ZNK2cv3dnn14dnn5_v202606054Dict3getIiEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS4_.exit ], [ 1, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v202606059DictValueESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i ], [ 1, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3dnn14dnn5_v202606059DictValueEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i ], [ 1, %._crit_edge.i.i293 ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #28
  %i.qq = getelementptr inbounds nuw i8, ptr %44, i64 8 ; 3 uses
  %i.qr = load ptr, ptr %i.qq, align 8, !tbaa !188
  %i.qs = load ptr, ptr %44, align 8, !tbaa !189
  %.not659 = icmp eq ptr %i.qr, %i.qs
  br i1 %.not659, label %._crit_edge, label %.lr.ph656

.lr.ph656:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322
  %i.qt = getelementptr inbounds nuw i8, ptr %51, i64 12
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %i.qt, i64 %.0.i808
  %i.qv = getelementptr inbounds nuw i8, ptr %50, i64 12 ; 19 uses
  %i.qw = getelementptr inbounds nuw [4 x i8], ptr %i.qv, i64 %.0.i808
  %i.qx = getelementptr inbounds nuw i8, ptr %52, i64 12 ; 9 uses
  br label %bb.dh

._crit_edge:                                      ; preds = %bb.dy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322
  invoke void @_ZN2cv3dnn14dnn5_v202606058runLayerERNS1_11LayerParamsERKSt6vectorINS_3MatESaIS5_EERS7_(ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(24) %44, ptr noundef nonnull align 8 dereferenceable(24) %45)
          to label %bb.ed unwind label %bb.ee

bb.dg:                                            ; preds = %bb.df
  %i.qy = landingpad { ptr, i32 }
          cleanup
  %i.qz = load ptr, ptr %49, align 8, !tbaa !66   ; 2 uses
  %i.ra = icmp eq ptr %i.qz, %i.om
  br i1 %i.ra, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i323

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i323: ; preds = %bb.dg
  %i.rb = load i64, ptr %i.om, align 8, !tbaa !69
  %i.rc = add i64 %i.rb, 1
  call void @_ZdlPvm(ptr noundef %i.qz, i64 noundef %i.rc) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325: ; preds = %bb.dg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i323
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #28
  br label %bb.eo
end_hunk_0
