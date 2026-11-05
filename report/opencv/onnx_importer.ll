Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/onnx_importer?download=true
inline.NumInlined: 9294
inline.NumDeleted: 1829
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 36
begin_hunk_0_@_ZN2cv3dnn14dnn5_v2026060512ONNXImporter12parseQConcatERNS1_11LayerParamsERKN11opencv_onnx9NodeProtoE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #28
  %i.mc = load ptr, ptr %42, align 8, !tbaa !66   ; 2 uses
  %i.md = icmp eq ptr %i.mc, %i.ca
  br i1 %i.md, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261: ; preds = %bb.ce
  %i.me = load i64, ptr %i.ca, align 8, !tbaa !69
  %i.mf = add i64 %i.me, 1
  call void @_ZdlPvm(ptr noundef %i.mc, i64 noundef %i.mf) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263: ; preds = %bb.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #28
  br label %bb.ci

bb.cf:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232
  %i.mg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.cg:                                            ; preds = %bb.bx, %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3AddEv.exit.i242, %_ZN6google8protobuf8internal17StringTypeHandler16NewFromPrototypeEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE.exit.i.i.i240, %bb.bw, %bb.bv, %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3AddEv.exit.i, %_ZN6google8protobuf8internal17StringTypeHandler16NewFromPrototypeEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE.exit.i.i.i, %bb.br, %bb.bq, %_ZN11opencv_onnx9NodeProto10add_outputERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.mh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11opencv_onnx9NodeProtoD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %43) #28
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %.pn120 = phi { ptr, i32 } [ %i.mh, %bb.cg ], [ %i.mg, %bb.cf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #28
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254, %bb.ca, %.body204
  %.pn120.pn = phi { ptr, i32 } [ %.pn120, %bb.ch ], [ %i.mb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263 ], [ %i.lw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260 ], [ %i.lr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257 ], [ %i.lm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254 ], [ %i.ll, %bb.ca ], [ %lpad.loopexit.split-lp896, %.body204 ]
  call void @_ZN2cv3dnn14dnn5_v2026060511LayerParamsD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %37) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #28
  br label %bb.ck

bb.cj:                                            ; preds = %_ZN2cv3dnn14dnn5_v2026060511LayerParamsD2Ev.exit, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  br label %bb.cl

bb.ck:                                            ; preds = %bb.ci, %.body200
  %.pn125.pn.pn = phi { ptr, i32 } [ %.pn125.pn, %.body200 ], [ %.pn120.pn, %bb.ci ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  br label %.body147

bb.cl:                                            ; preds = %bb.am, %bb.cj
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.mi = trunc nuw i64 %indvars.iv.next to i32
  %i.mj = icmp sgt i32 %i.m, %i.mi
  br i1 %i.mj, label %bb.w, label %.lr.ph647, !llvm.loop !1354

.lr.ph.i.i.i265:                                  ; preds = %.lr.ph647, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v2026060512ONNXImporter9LayerInfoESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit.thread
  %indvars.iv687 = phi i64 [ %indvars.iv.next688, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v2026060512ONNXImporter9LayerInfoESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit.thread ], [ 2, %.lr.ph647 ] ; 2 uses
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv687
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !54 ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 8
  %i.mn = load i64, ptr %i.mm, align 8, !tbaa !65 ; 4 uses
  %i.mo = load ptr, ptr %i.ml, align 8            ; 2 uses
  br label %bb.cm

bb.cm:                                            ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i271, %.lr.ph.i.i.i265
  %.012.i.i.i266 = phi ptr [ %i.cr, %.lr.ph.i.i.i265 ], [ %.1.i.i.i276, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i271 ] ; 4 uses
  %.0811.i.i.i267 = phi ptr [ %i.cs, %.lr.ph.i.i.i265 ], [ %.19.i.i.i273, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i271 ]
  %i.mp = getelementptr inbounds nuw i8, ptr %.012.i.i.i266, i64 40
  %i.mq = load i64, ptr %i.mp, align 8, !tbaa !65 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i268 = call i64 @llvm.umin.i64(i64 %i.mn, i64 %i.mq) ; 2 uses
  %i.mr = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i268, 0
  br i1 %i.mr, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i289, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i269

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i269: ; preds = %bb.cm
  %i.ms = getelementptr inbounds nuw i8, ptr %.012.i.i.i266, i64 32
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !66
  %i.mu = call i32 @memcmp(ptr noundef %i.mt, ptr noundef %i.mo, i64 noundef %.sroa.speculated.i.i.i.i.i.i268) #28 ; 2 uses
  %.not.i.i.i.i.i.i270 = icmp eq i32 %i.mu, 0
  br i1 %.not.i.i.i.i.i.i270, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i289, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i271

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i289: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i269, %bb.cm
  %i.mv = sub i64 %i.mq, %i.mn
  %spec.select7.i.i.i.i.i.i.i290 = call i64 @llvm.smax.i64(i64 %i.mv, i64 -2147483648)
  %.08.i.i.i.i.i.i.i291 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i290, i64 2147483647)
  %.0.i6.i.i.i.i.i.i292 = trunc nsw i64 %.08.i.i.i.i.i.i.i291 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i271

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i271: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i289, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i269
  %.0.i.i.i.i.i.i272 = phi i32 [ %i.mu, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i269 ], [ %.0.i6.i.i.i.i.i.i292, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i289 ]
  %i.mw = icmp slt i32 %.0.i.i.i.i.i.i272, 0      ; 2 uses
  %.19.i.i.i273 = select i1 %i.mw, ptr %.0811.i.i.i267, ptr %.012.i.i.i266 ; 4 uses
  %.1.in.v.i.i.i274 = select i1 %i.mw, i64 24, i64 16
  %.1.in.i.i.i275 = getelementptr inbounds nuw i8, ptr %.012.i.i.i266, i64 %.1.in.v.i.i.i274
  %.1.i.i.i276 = load ptr, ptr %.1.in.i.i.i275, align 8, !tbaa !67 ; 2 uses
  %.not.i.i.i277 = icmp eq ptr %.1.i.i.i276, null
  br i1 %.not.i.i.i277, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3dnn14dnn5_v2026060512ONNXImporter9LayerInfoEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.cm, !llvm.loop !5

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3dnn14dnn5_v2026060512ONNXImporter9LayerInfoEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i271
  %i.mx = icmp eq ptr %.19.i.i.i273, %i.cs
  br i1 %i.mx, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v2026060512ONNXImporter9LayerInfoESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit.thread, label %bb.cn

bb.cn:                                            ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3dnn14dnn5_v2026060512ONNXImporter9LayerInfoEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.my = getelementptr inbounds nuw i8, ptr %.19.i.i.i273, i64 40
  %i.mz = load i64, ptr %i.my, align 8, !tbaa !65 ; 2 uses
  %.sroa.speculated.i.i.i.i.i278 = call i64 @llvm.umin.i64(i64 %i.mz, i64 %i.mn) ; 2 uses
  %i.na = icmp eq i64 %.sroa.speculated.i.i.i.i.i278, 0
  br i1 %i.na, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i285, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i279

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i279: ; preds = %bb.cn
  %i.nb = getelementptr inbounds nuw i8, ptr %.19.i.i.i273, i64 32
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !66
  %i.nd = call i32 @memcmp(ptr noundef %i.mo, ptr noundef %i.nc, i64 noundef %.sroa.speculated.i.i.i.i.i278) #28 ; 2 uses
  %.not.i.i.i.i.i280 = icmp eq i32 %i.nd, 0
  br i1 %.not.i.i.i.i.i280, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i285, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v2026060512ONNXImporter9LayerInfoESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i285: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i279, %bb.cn
  %i.ne = sub i64 %i.mn, %i.mz
  %spec.select7.i.i.i.i.i.i286 = call i64 @llvm.smax.i64(i64 %i.ne, i64 -2147483648)
  %.08.i.i.i.i.i.i287 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i286, i64 2147483647)
  %.0.i6.i.i.i.i.i288 = trunc nsw i64 %.08.i.i.i.i.i.i287 to i32
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v2026060512ONNXImporter9LayerInfoESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v2026060512ONNXImporter9LayerInfoESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i279, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i285
  %.0.i.i.i.i.i282 = phi i32 [ %i.nd, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i279 ], [ %.0.i6.i.i.i.i.i288, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i285 ]
  %i.nf = icmp slt i32 %.0.i.i.i.i.i282, 0
  br i1 %i.nf, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v2026060512ONNXImporter9LayerInfoESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit.thread, label %.lr.ph653

.lr.ph653:                                        ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v2026060512ONNXImporter9LayerInfoESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit
  %i.ng = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %57, i64 8 ; 3 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %57, i64 16 ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %57, i64 24
  %i.nl = getelementptr inbounds nuw i8, ptr %57, i64 32
  %i.nm = getelementptr inbounds nuw i8, ptr %57, i64 40
  %i.nn = getelementptr inbounds nuw i8, ptr %57, i64 72 ; 4 uses
  %i.no = getelementptr inbounds nuw i8, ptr %57, i64 88 ; 4 uses
  %i.np = getelementptr inbounds nuw i8, ptr %57, i64 80
  %i.nq = getelementptr inbounds nuw i8, ptr %57, i64 104 ; 3 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %57, i64 120 ; 4 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %57, i64 112 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %57, i64 48 ; 3 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %57, i64 56 ; 4 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %57, i64 64 ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %59, i64 16 ; 6 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %59, i64 8
  %i.ny = getelementptr inbounds nuw i8, ptr %60, i64 48 ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %60, i64 64
  %i.oa = getelementptr inbounds nuw i8, ptr %60, i64 56 ; 2 uses
  %i.ob = load ptr, ptr %i.ng, align 8, !tbaa !61 ; 2 uses
  %i.oc = icmp eq ptr %i.ob, null
  br i1 %i.oc, label %._crit_edge.i.i390, label %.lr.ph653.split.preheader

.lr.ph653.split.preheader:                        ; preds = %.lr.ph653
  %i.od = getelementptr inbounds nuw i8, ptr %59, i64 21
  br label %.lr.ph653.split

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v2026060512ONNXImporter9LayerInfoESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit.thread: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3dnn14dnn5_v2026060512ONNXImporter9LayerInfoEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v2026060512ONNXImporter9LayerInfoESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit
  %indvars.iv.next688 = add nuw nsw i64 %indvars.iv687, 3 ; 2 uses
  %i.oe = trunc nuw i64 %indvars.iv.next688 to i32
  %i.of = icmp sgt i32 %i.m, %i.oe
  br i1 %i.of, label %.lr.ph.i.i.i265, label %.critedge, !llvm.loop !1355

.critedge:                                        ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v2026060512ONNXImporter9LayerInfoESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit.thread, %bb.r, %.lr.ph647
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %44, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %45, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #28
  invoke void @_ZN2cv8MatShapeC1Ev(ptr noundef nonnull align 4 dereferenceable(52) %46)
          to label %.preheader515 unwind label %bb.eb

.preheader515:                                    ; preds = %.critedge
  %i.og = zext nneg i32 %i.m to i64
  %i.oh = icmp ugt i32 %i.m, 2
  br i1 %i.oh, label %.lr.ph649, label %._crit_edge.i.i293

.lr.ph649:                                        ; preds = %.preheader515
  %i.oi = getelementptr inbounds nuw i8, ptr %47, i64 72 ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %44, i64 8 ; 3 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %44, i64 16
  br label %bb.co

._crit_edge.i.i293:                               ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit, %.preheader515
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #28
  %i.ol = getelementptr inbounds nuw i8, ptr %49, i64 16 ; 8 uses
  store ptr %i.ol, ptr %49, align 8, !tbaa !71
  store i32 1936291937, ptr %i.ol, align 8
  %i.om = getelementptr inbounds nuw i8, ptr %49, i64 8
  store i64 4, ptr %i.om, align 8, !tbaa !65
  %i.on = getelementptr inbounds nuw i8, ptr %49, i64 20
  store i8 0, ptr %i.on, align 4, !tbaa !69
  %i.oo = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !61 ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.op, null
  br i1 %.not10.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322, label %.lr.ph.i.i.i.i309

bb.co:                                            ; preds = %.lr.ph649, %_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit
  %.050648 = phi i64 [ 2, %.lr.ph649 ], [ %i.po, %_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #28
  %i.or = trunc i64 %.050648 to i32
  %i.os = load i32, ptr %i.l, align 8, !tbaa !52, !noalias !1374
  %i.ot = icmp sgt i32 %i.os, %i.or
  br i1 %i.ot, label %bb.cs, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28, !noalias !1374
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28, !noalias !1374
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.45, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %.noexc300 unwind label %.loopexit.split-lp517.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc300:                                        ; preds = %bb.cp
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZN2cv3dnn14dnn5_v2026060512ONNXImporter7getBlobERKN11opencv_onnx9NodeProtoEi, ptr noundef nonnull @.str.4, i32 noundef 627) #31
          to label %bb.cq unwind label %bb.cr, !noalias !1374

bb.cq:                                            ; preds = %.noexc300
  unreachable

bb.cr:                                            ; preds = %.noexc300
  %i.ou = landingpad { ptr, i32 }
          cleanup
  %i.ov = load ptr, ptr %9, align 8, !tbaa !66, !noalias !1374 ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ox = icmp eq ptr %i.ov, %i.ow
  br i1 %i.ox, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i298, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i297

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i297: ; preds = %bb.cr
  %i.oy = load i64, ptr %i.ow, align 8, !tbaa !69, !noalias !1374
  %i.oz = add i64 %i.oy, 1
  call void @_ZdlPvm(ptr noundef %i.ov, i64 noundef %i.oz) #29, !noalias !1374
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i298

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i298: ; preds = %bb.cr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i297
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28, !noalias !1374
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28, !noalias !1374
  br label %.body301

bb.cs:                                            ; preds = %bb.co
  %i.pa = load ptr, ptr %i.u, align 8, !tbaa !53, !noalias !1374
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 8
  %sext = shl nuw i64 %.050648, 32
  %63 = ashr exact i64 %sext, 29
  %i.pc = getelementptr inbounds i8, ptr %i.pb, i64 %63
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !54, !noalias !1374
  invoke void @_ZN2cv3dnn14dnn5_v2026060512ONNXImporter7getBlobERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %47, ptr noundef nonnull align 8 dereferenceable(720) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.pd)
          to label %_ZN2cv3dnn14dnn5_v2026060512ONNXImporter7getBlobERKN11opencv_onnx9NodeProtoEi.exit304 unwind label %.loopexit.split-lp517.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN2cv3dnn14dnn5_v2026060512ONNXImporter7getBlobERKN11opencv_onnx9NodeProtoEi.exit304: ; preds = %bb.cs
  %i.pe = load i32, ptr %i.oi, align 8, !tbaa !284
  %i.pf = load i32, ptr %46, align 4, !tbaa !170
  %narrow.i = call i32 @llvm.smax.i32(i32 %i.pf, i32 0)
  %i.pg = icmp ult i32 %narrow.i, %i.pe
  br i1 %i.pg, label %bb.ct, label %bb.cx

bb.ct:                                            ; preds = %_ZN2cv3dnn14dnn5_v2026060512ONNXImporter7getBlobERKN11opencv_onnx9NodeProtoEi.exit304
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #28
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %48, ptr noundef nonnull align 4 dereferenceable(52) %i.oi)
          to label %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit unwind label %bb.cw

_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit: ; preds = %bb.ct
  %i.ph = invoke noundef nonnull align 4 dereferenceable(52) ptr @_ZN2cv8MatShapeaSERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %46, ptr noundef nonnull align 4 dereferenceable(52) %48)
          to label %bb.cu unwind label %bb.cw     ; 0 uses

bb.cu:                                            ; preds = %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #28
  br label %bb.cx

.loopexit.split-lp517.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.cs, %bb.cp
  %lpad.loopexit.split-lp879 = landingpad { ptr, i32 }
          cleanup
  br label %.body301

bb.cv:                                            ; preds = %bb.cz, %bb.cy
  %i.pi = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

bb.cw:                                            ; preds = %bb.ct, %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit
  %i.pj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #28
  br label %bb.da

bb.cx:                                            ; preds = %bb.cu, %_ZN2cv3dnn14dnn5_v2026060512ONNXImporter7getBlobERKN11opencv_onnx9NodeProtoEi.exit304
  %i.pk = load ptr, ptr %i.oj, align 8, !tbaa !188 ; 3 uses
  %i.pl = load ptr, ptr %i.ok, align 8, !tbaa !204
  %.not.i306 = icmp eq ptr %i.pk, %i.pl
  br i1 %.not.i306, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.pk, ptr noundef nonnull align 8 dereferenceable(208) %47)
          to label %.noexc307 unwind label %bb.cv

.noexc307:                                        ; preds = %bb.cy
  %i.pm = load ptr, ptr %i.oj, align 8, !tbaa !188
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 208
  store ptr %i.pn, ptr %i.oj, align 8, !tbaa !188
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit

bb.cz:                                            ; preds = %bb.cx
  invoke void @_ZNSt6vectorIN2cv3MatESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %44, ptr %i.pk, ptr noundef nonnull align 8 dereferenceable(208) %47)
          to label %_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit unwind label %bb.cv

_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit: ; preds = %.noexc307, %bb.cz
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %47) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #28
  %i.po = add nuw nsw i64 %.050648, 3             ; 2 uses
  %i.pp = icmp samesign ult i64 %i.po, %i.og
  br i1 %i.pp, label %bb.co, label %._crit_edge.i.i293, !llvm.loop !1358

bb.da:                                            ; preds = %bb.cw, %bb.cv
  %.pn95 = phi { ptr, i32 } [ %i.pi, %bb.cv ], [ %i.pj, %bb.cw ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %47) #28
  br label %.body301

.body301:                                         ; preds = %.loopexit.split-lp517.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i298, %bb.da
  %.pn95.pn = phi { ptr, i32 } [ %.pn95, %bb.da ], [ %i.ou, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i298 ], [ %lpad.loopexit.split-lp879, %.loopexit.split-lp517.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #28
  br label %bb.el

.lr.ph.i.i.i.i309:                                ; preds = %._crit_edge.i.i293, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i ], [ %i.op, %._crit_edge.i.i293 ] ; 4 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i ], [ %i.oq, %._crit_edge.i.i293 ]
  %i.pq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40
  %i.pr = load i64, ptr %i.pq, align 8, !tbaa !65 ; 3 uses
  %i.ps = icmp eq i64 %i.pr, 0
  br i1 %i.ps, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i309
  %.sroa.speculated.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.pr, i64 4)
  %i.pt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !66
  %i.pv = call i32 @memcmp(ptr noundef %i.pu, ptr noundef nonnull %i.ol, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i) #28 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.pv, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i309
  %i.pw = add i64 %i.pr, -4
  %spec.select7.i.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.pw, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.pv, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i ]
  %i.px = icmp slt i32 %.0.i.i.i.i.i.i.i, 0       ; 2 uses
  %.19.i.i.i.i = select i1 %i.px, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.px, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !67 ; 2 uses
  %.not.i.i.i.i310 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i310, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3dnn14dnn5_v202606059DictValueEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i, label %.lr.ph.i.i.i.i309, !llvm.loop !11

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3dnn14dnn5_v202606059DictValueEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i
  %i.py = icmp eq ptr %.19.i.i.i.i, %i.oq
  br i1 %i.py, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322, label %bb.db

bb.db:                                            ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3dnn14dnn5_v202606059DictValueEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i
  %i.pz = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.qa = load i64, ptr %i.pz, align 8, !tbaa !65 ; 3 uses
  %i.qb = icmp eq i64 %i.qa, 0
  br i1 %i.qb, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i315, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i312

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i312: ; preds = %bb.db
  %.sroa.speculated.i.i.i.i.i.i311 = call i64 @llvm.umin.i64(i64 %i.qa, i64 4)
  %i.qc = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !66
  %i.qe = call i32 @memcmp(ptr noundef nonnull %i.ol, ptr noundef %i.qd, i64 noundef %.sroa.speculated.i.i.i.i.i.i311) #28 ; 2 uses
  %.not.i.i.i.i.i.i313 = icmp eq i32 %i.qe, 0
  br i1 %.not.i.i.i.i.i.i313, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i315, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v202606059DictValueESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i315: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i312, %bb.db
  %i.qf = sub i64 4, %i.qa
  %spec.select7.i.i.i.i.i.i.i316 = call i64 @llvm.smax.i64(i64 %i.qf, i64 -2147483648)
  %.08.i.i.i.i.i.i.i317 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i316, i64 2147483647)
  %.0.i6.i.i.i.i.i.i318 = trunc nsw i64 %.08.i.i.i.i.i.i.i317 to i32
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v202606059DictValueESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v202606059DictValueESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i315, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i312
  %.0.i.i.i.i.i.i314 = phi i32 [ %i.qe, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i312 ], [ %.0.i6.i.i.i.i.i.i318, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i315 ]
  %i.qg = icmp slt i32 %.0.i.i.i.i.i.i314, 0
  br i1 %i.qg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322, label %bb.dc

bb.dc:                                            ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v202606059DictValueESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i
  %i.qh = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 64
  %i.qi = invoke noundef i64 @_ZNK2cv3dnn14dnn5_v202606059DictValue3getIlEET_i(ptr noundef nonnull align 8 dereferenceable(16) %i.qh, i32 noundef -1)
          to label %_ZNK2cv3dnn14dnn5_v202606054Dict3getIiEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS4_.exit unwind label %bb.dd

_ZNK2cv3dnn14dnn5_v202606054Dict3getIiEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS4_.exit: ; preds = %bb.dc
  %i.qj = call i64 @llvm.smax.i64(i64 %i.qi, i64 -2147483648)
  %i.qk = call i64 @llvm.smin.i64(i64 %i.qj, i64 2147483647) ; 2 uses
  %.pre = load ptr, ptr %49, align 8, !tbaa !66   ; 2 uses
  %i.ql = icmp eq ptr %.pre, %i.ol
  br i1 %i.ql, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i320

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i320: ; preds = %_ZNK2cv3dnn14dnn5_v202606054Dict3getIiEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS4_.exit
  %i.qm = load i64, ptr %i.ol, align 8, !tbaa !69
  %i.qn = add i64 %i.qm, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.qn) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322: ; preds = %_ZNK2cv3dnn14dnn5_v202606054Dict3getIiEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS4_.exit, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v202606059DictValueESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3dnn14dnn5_v202606059DictValueEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i, %._crit_edge.i.i293, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i320
  %.0.i821 = phi i64 [ %i.qk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i320 ], [ %i.qk, %_ZNK2cv3dnn14dnn5_v202606054Dict3getIiEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS4_.exit ], [ 1, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v202606059DictValueESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i ], [ 1, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3dnn14dnn5_v202606059DictValueEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i ], [ 1, %._crit_edge.i.i293 ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #28
  %i.qo = getelementptr inbounds nuw i8, ptr %44, i64 8 ; 3 uses
  %i.qp = load ptr, ptr %i.qo, align 8, !tbaa !188
  %i.qq = load ptr, ptr %44, align 8, !tbaa !189
  %.not654 = icmp eq ptr %i.qp, %i.qq
  br i1 %.not654, label %._crit_edge, label %.lr.ph651

.lr.ph651:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322
  %i.qr = getelementptr inbounds nuw i8, ptr %51, i64 12
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %i.qr, i64 %.0.i821
  %i.qt = getelementptr inbounds nuw i8, ptr %50, i64 12 ; 19 uses
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %i.qt, i64 %.0.i821
  %i.qv = getelementptr inbounds nuw i8, ptr %52, i64 12 ; 9 uses
  br label %bb.de

._crit_edge:                                      ; preds = %bb.dv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322
  invoke void @_ZN2cv3dnn14dnn5_v202606058runLayerERNS1_11LayerParamsERKSt6vectorINS_3MatESaIS5_EERS7_(ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(24) %44, ptr noundef nonnull align 8 dereferenceable(24) %45)
          to label %bb.ea unwind label %bb.eb

bb.dd:                                            ; preds = %bb.dc
  %i.qw = landingpad { ptr, i32 }
          cleanup
  %i.qx = load ptr, ptr %49, align 8, !tbaa !66   ; 2 uses
  %i.qy = icmp eq ptr %i.qx, %i.ol
  br i1 %i.qy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i323

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i323: ; preds = %bb.dd
  %i.qz = load i64, ptr %i.ol, align 8, !tbaa !69
  %i.ra = add i64 %i.qz, 1
  call void @_ZdlPvm(ptr noundef %i.qx, i64 noundef %i.ra) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325: ; preds = %bb.dd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i323
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #28
  br label %bb.el

bb.de:                                            ; preds = %.lr.ph651, %bb.dv
  %.049650 = phi i64 [ 0, %.lr.ph651 ], [ %i.zm, %bb.dv ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #28
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %50, ptr noundef nonnull align 4 dereferenceable(52) %46)
end_hunk_0
