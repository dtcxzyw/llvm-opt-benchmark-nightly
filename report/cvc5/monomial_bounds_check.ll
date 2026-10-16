Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/monomial_bounds_check?download=true
inline.NumInlined: 3200
inline.NumDeleted: 1042
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN4cvc58internal6theory5arith2nl19MonomialBoundsCheck14checkResBoundsEv:bb.a
  br i1 %i.dq, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE4findERS7_.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS5_.exit.i.i
  %i.dr = getelementptr inbounds nuw i8, ptr %.19.i.i.i184, i64 32
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !62
  %i.dt = load i64, ptr %i.ds, align 8
  %i.du = and i64 %i.dt, 1099511627775
  %i.dv = icmp samesign ult i64 %i.dk, %i.du
  %spec.select.i.i189 = select i1 %i.dv, ptr %i.dh, ptr %.19.i.i.i184
  br label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE4findERS7_.exit

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE4findERS7_.exit: ; preds = %bb.q, %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS5_.exit.i.i, %bb.o
  %.sroa.0.0.i.i190 = phi ptr [ %i.dh, %bb.o ], [ %i.dh, %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS5_.exit.i.i ], [ %spec.select.i.i189, %bb.q ] ; 3 uses
  %i.dw = load ptr, ptr %i.c, align 8, !tbaa !51  ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 592
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 608
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !53 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dw, i64 600 ; 3 uses
  %.not10.i.i.i.i191 = icmp eq ptr %i.dz, null
  br i1 %.not10.i.i.i.i191, label %.critedge.i202, label %.lr.ph.i.i.i.i192

.lr.ph.i.i.i.i192:                                ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE4findERS7_.exit
  %i.eb = load ptr, ptr %40, align 8, !tbaa !62
  %i.ec = load i64, ptr %i.eb, align 8
  %i.ed = and i64 %i.ec, 1099511627775            ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.lr.ph.i.i.i.i192
  %.012.i.i.i.i193 = phi ptr [ %i.dz, %.lr.ph.i.i.i.i192 ], [ %.1.i.i.i.i198, %bb.r ] ; 3 uses
  %.0811.i.i.i.i194 = phi ptr [ %i.ea, %.lr.ph.i.i.i.i192 ], [ %.19.i.i.i.i195, %bb.r ]
  %i.ee = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i193, i64 32
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !62
  %i.eg = load i64, ptr %i.ef, align 8
  %i.eh = and i64 %i.eg, 1099511627775
  %i.ei = icmp samesign ult i64 %i.eh, %i.ed      ; 2 uses
  %.19.i.i.i.i195 = select i1 %i.ei, ptr %.0811.i.i.i.i194, ptr %.012.i.i.i.i193 ; 6 uses
  %.1.in.v.i.i.i.i196 = select i1 %i.ei, i64 24, i64 16
  %.1.in.i.i.i.i197 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i193, i64 %.1.in.v.i.i.i.i196
  %.1.i.i.i.i198 = load ptr, ptr %.1.in.i.i.i.i197, align 8, !tbaa !68 ; 2 uses
  %.not.i.i.i.i199 = icmp eq ptr %.1.i.i.i.i198, null
  br i1 %.not.i.i.i.i199, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES_IS3_S3_St4lessIS3_ESaISt4pairIKS3_S3_EEES5_SaIS6_IS7_SA_EEE11lower_boundERS7_.exit.i200, label %bb.r, !llvm.loop !3

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES_IS3_S3_St4lessIS3_ESaISt4pairIKS3_S3_EEES5_SaIS6_IS7_SA_EEE11lower_boundERS7_.exit.i200: ; preds = %bb.r
  %i.ej = icmp eq ptr %.19.i.i.i.i195, %i.ea
  br i1 %i.ej, label %.critedge.i202, label %bb.s

bb.s:                                             ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES_IS3_S3_St4lessIS3_ESaISt4pairIKS3_S3_EEES5_SaIS6_IS7_SA_EEE11lower_boundERS7_.exit.i200
  %i.ek = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i195, i64 32
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !62
  %i.em = load i64, ptr %i.el, align 8
  %i.en = and i64 %i.em, 1099511627775
  %i.eo = icmp samesign ult i64 %i.ed, %i.en
  br i1 %i.eo, label %.critedge.i202, label %bb.t

.critedge.i202:                                   ; preds = %bb.s, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES_IS3_S3_St4lessIS3_ESaISt4pairIKS3_S3_EEES5_SaIS6_IS7_SA_EEE11lower_boundERS7_.exit.i200, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE4findERS7_.exit
  %.08.lcssa.i.i.i11.i203 = phi ptr [ %.19.i.i.i.i195, %bb.s ], [ %.19.i.i.i.i195, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES_IS3_S3_St4lessIS3_ESaISt4pairIKS3_S3_EEES5_SaIS6_IS7_SA_EEE11lower_boundERS7_.exit.i200 ], [ %i.ea, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE4findERS7_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #22
  store ptr %40, ptr %36, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #22
  %i.ep = invoke ptr @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St3mapIS3_S3_St4lessIS3_ESaIS4_IS5_S3_EEEESt10_Select1stISC_ES8_SaISC_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS5_EESL_IJEEEEESt17_Rb_tree_iteratorISC_ESt23_Rb_tree_const_iteratorISC_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.dx, ptr %.08.lcssa.i.i.i11.i203, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %36, ptr noundef nonnull align 1 dereferenceable(1) %37)
          to label %.noexc204 unwind label %bb.v

.noexc204:                                        ; preds = %.critedge.i202
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #22
  br label %bb.t

bb.t:                                             ; preds = %.noexc204, %bb.s
  %.sroa.06.0.i201 = phi ptr [ %i.ep, %.noexc204 ], [ %.19.i.i.i.i195, %bb.s ]
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i201, i64 48
  %i.er = icmp eq ptr %.sroa.0.0.i.i190, %i.eq
  br i1 %i.er, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES_IS3_S_IS3_NS1_4kind6Kind_tESt4lessIS3_ESaISt4pairIKS3_S5_EEES7_SaIS8_IS9_SC_EEES7_SaIS8_IS9_SF_EEE4findERS9_.exit159.thread, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit232

bb.u:                                             ; preds = %.critedge.i
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %bb.pf

bb.v:                                             ; preds = %.critedge.i202
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %bb.pf

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit232: ; preds = %bb.t
  %i.eu = load ptr, ptr %i.c, align 8, !tbaa !51  ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 592
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 608
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !53 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eu, i64 600 ; 3 uses
  %.not10.i.i.i.i233 = icmp eq ptr %i.ex, null
  br i1 %.not10.i.i.i.i233, label %.critedge.i244, label %.lr.ph.i.i.i.i234

.lr.ph.i.i.i.i234:                                ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit232
  %i.ez = load ptr, ptr %41, align 8, !tbaa !62
  %i.fa = load i64, ptr %i.ez, align 8
  %i.fb = and i64 %i.fa, 1099511627775            ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.lr.ph.i.i.i.i234
  %.012.i.i.i.i235 = phi ptr [ %i.ex, %.lr.ph.i.i.i.i234 ], [ %.1.i.i.i.i240, %bb.w ] ; 3 uses
  %.0811.i.i.i.i236 = phi ptr [ %i.ey, %.lr.ph.i.i.i.i234 ], [ %.19.i.i.i.i237, %bb.w ]
  %i.fc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i235, i64 32
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !62
  %i.fe = load i64, ptr %i.fd, align 8
  %i.ff = and i64 %i.fe, 1099511627775
  %i.fg = icmp samesign ult i64 %i.ff, %i.fb      ; 2 uses
  %.19.i.i.i.i237 = select i1 %i.fg, ptr %.0811.i.i.i.i236, ptr %.012.i.i.i.i235 ; 6 uses
  %.1.in.v.i.i.i.i238 = select i1 %i.fg, i64 24, i64 16
  %.1.in.i.i.i.i239 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i235, i64 %.1.in.v.i.i.i.i238
  %.1.i.i.i.i240 = load ptr, ptr %.1.in.i.i.i.i239, align 8, !tbaa !68 ; 2 uses
  %.not.i.i.i.i241 = icmp eq ptr %.1.i.i.i.i240, null
  br i1 %.not.i.i.i.i241, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES_IS3_S3_St4lessIS3_ESaISt4pairIKS3_S3_EEES5_SaIS6_IS7_SA_EEE11lower_boundERS7_.exit.i242, label %bb.w, !llvm.loop !3

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES_IS3_S3_St4lessIS3_ESaISt4pairIKS3_S3_EEES5_SaIS6_IS7_SA_EEE11lower_boundERS7_.exit.i242: ; preds = %bb.w
  %i.fh = icmp eq ptr %.19.i.i.i.i237, %i.ey
  br i1 %i.fh, label %.critedge.i244, label %bb.x

bb.x:                                             ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES_IS3_S3_St4lessIS3_ESaISt4pairIKS3_S3_EEES5_SaIS6_IS7_SA_EEE11lower_boundERS7_.exit.i242
  %i.fi = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i237, i64 32
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !62
  %i.fk = load i64, ptr %i.fj, align 8
  %i.fl = and i64 %i.fk, 1099511627775
  %i.fm = icmp samesign ult i64 %i.fb, %i.fl
  br i1 %i.fm, label %.critedge.i244, label %bb.y

.critedge.i244:                                   ; preds = %bb.x, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES_IS3_S3_St4lessIS3_ESaISt4pairIKS3_S3_EEES5_SaIS6_IS7_SA_EEE11lower_boundERS7_.exit.i242, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit232
  %.08.lcssa.i.i.i11.i245 = phi ptr [ %.19.i.i.i.i237, %bb.x ], [ %.19.i.i.i.i237, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES_IS3_S3_St4lessIS3_ESaISt4pairIKS3_S3_EEES5_SaIS6_IS7_SA_EEE11lower_boundERS7_.exit.i242 ], [ %i.ey, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit232 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #22
  store ptr %41, ptr %34, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #22
  %i.fn = invoke ptr @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St3mapIS3_S3_St4lessIS3_ESaIS4_IS5_S3_EEEESt10_Select1stISC_ES8_SaISC_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS5_EESL_IJEEEEESt17_Rb_tree_iteratorISC_ESt23_Rb_tree_const_iteratorISC_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.ev, ptr %.08.lcssa.i.i.i11.i245, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %34, ptr noundef nonnull align 1 dereferenceable(1) %35)
          to label %.noexc246 unwind label %bb.ad

.noexc246:                                        ; preds = %.critedge.i244
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #22
  br label %bb.y

bb.y:                                             ; preds = %.noexc246, %bb.x
  %.sroa.06.0.i243 = phi ptr [ %i.fn, %.noexc246 ], [ %.19.i.i.i.i237, %bb.x ] ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i243, i64 56
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !53 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i243, i64 48 ; 5 uses
  %.not10.i.i.i248 = icmp eq ptr %i.fp, null
  br i1 %.not10.i.i.i248, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE4findERS7_.exit260, label %.lr.ph.i.i.i249

.lr.ph.i.i.i249:                                  ; preds = %bb.y
  %i.fr = load ptr, ptr %40, align 8, !tbaa !62
  %i.fs = load i64, ptr %i.fr, align 8
  %i.ft = and i64 %i.fs, 1099511627775            ; 2 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.lr.ph.i.i.i249
  %.012.i.i.i250 = phi ptr [ %i.fp, %.lr.ph.i.i.i249 ], [ %.1.i.i.i255, %bb.z ] ; 3 uses
  %.0811.i.i.i251 = phi ptr [ %i.fq, %.lr.ph.i.i.i249 ], [ %.19.i.i.i252, %bb.z ]
  %i.fu = getelementptr inbounds nuw i8, ptr %.012.i.i.i250, i64 32
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !62
  %i.fw = load i64, ptr %i.fv, align 8
  %i.fx = and i64 %i.fw, 1099511627775
  %i.fy = icmp samesign ult i64 %i.fx, %i.ft      ; 2 uses
  %.19.i.i.i252 = select i1 %i.fy, ptr %.0811.i.i.i251, ptr %.012.i.i.i250 ; 4 uses
  %.1.in.v.i.i.i253 = select i1 %i.fy, i64 24, i64 16
  %.1.in.i.i.i254 = getelementptr inbounds nuw i8, ptr %.012.i.i.i250, i64 %.1.in.v.i.i.i253
  %.1.i.i.i255 = load ptr, ptr %.1.in.i.i.i254, align 8, !tbaa !68 ; 2 uses
  %.not.i.i.i256 = icmp eq ptr %.1.i.i.i255, null
  br i1 %.not.i.i.i256, label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS5_.exit.i.i257, label %bb.z, !llvm.loop !4

_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS5_.exit.i.i257: ; preds = %bb.z
  %i.fz = icmp eq ptr %.19.i.i.i252, %i.fq
  br i1 %i.fz, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE4findERS7_.exit260, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS5_.exit.i.i257
  %i.ga = getelementptr inbounds nuw i8, ptr %.19.i.i.i252, i64 32
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !62
  %i.gc = load i64, ptr %i.gb, align 8
  %i.gd = and i64 %i.gc, 1099511627775
  %i.ge = icmp samesign ult i64 %i.ft, %i.gd
  %spec.select.i.i258 = select i1 %i.ge, ptr %i.fq, ptr %.19.i.i.i252
  br label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE4findERS7_.exit260

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE4findERS7_.exit260: ; preds = %bb.aa, %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS5_.exit.i.i257, %bb.y
  %.sroa.0.0.i.i259 = phi ptr [ %i.fq, %bb.y ], [ %i.fq, %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS5_.exit.i.i257 ], [ %spec.select.i.i258, %bb.aa ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #22
  %i.gf = load ptr, ptr %i.c, align 8, !tbaa !51
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 64
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !110, !nonnull !111, !align !112
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i190, i64 40 ; 2 uses
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !62
  store ptr %i.gj, ptr %43, align 8, !tbaa !74
  invoke void @_ZN4cvc58internal6theory5arith2nl7NlModel25computeAbstractModelValueENS0_12NodeTemplateILb0EEE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %42, ptr noundef nonnull align 8 dereferenceable(369) %i.gh, ptr noundef nonnull align 8 %43)
          to label %bb.ab unwind label %bb.ae

bb.ab:                                            ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE4findERS7_.exit260
  %i.gk = load ptr, ptr %42, align 8, !tbaa !62
  %i.gl = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK4cvc58internal4expr9NodeValue8getConstINS0_8RationalEEERKT_v(ptr noundef nonnull align 8 dereferenceable(24) %i.gk)
          to label %bb.ac unwind label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 4
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !142 ; 2 uses
  %i.go = icmp eq i32 %i.gn, 0
  br i1 %i.go, label %bb.oq, label %bb.ag

bb.ad:                                            ; preds = %.critedge.i244
  %i.gp = landingpad { ptr, i32 }
          cleanup
  br label %bb.pf

bb.ae:                                            ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE4findERS7_.exit260
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit825

bb.af:                                            ; preds = %bb.ab
  %i.gr = landingpad { ptr, i32 }
          cleanup
  br label %bb.pb

bb.ag:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #22
  %i.gs = load ptr, ptr %i.c, align 8, !tbaa !51
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 64
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !110, !nonnull !111, !align !112
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i259, i64 40 ; 2 uses
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !62
  store ptr %i.gw, ptr %45, align 8, !tbaa !74
  invoke void @_ZN4cvc58internal6theory5arith2nl7NlModel25computeAbstractModelValueENS0_12NodeTemplateILb0EEE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %44, ptr noundef nonnull align 8 dereferenceable(369) %i.gu, ptr noundef nonnull align 8 %45)
          to label %bb.ah unwind label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.gx = load ptr, ptr %44, align 8, !tbaa !62
  %i.gy = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK4cvc58internal4expr9NodeValue8getConstINS0_8RationalEEERKT_v(ptr noundef nonnull align 8 dereferenceable(24) %i.gx)
          to label %bb.ai unwind label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 4
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !142 ; 2 uses
  %i.hb = icmp eq i32 %i.ha, 0
  br i1 %i.hb, label %bb.om, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit286

bb.aj:                                            ; preds = %bb.ag
  %i.hc = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit822

bb.ak:                                            ; preds = %bb.ah
  %i.hd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ox

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit286: ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %46, i8 0, i64 24, i1 false)
  %i.he = load ptr, ptr %i.bb, align 8, !tbaa !54 ; 2 uses
  %.not10571130 = icmp eq ptr %i.he, %i.bc
  br i1 %.not10571130, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit, label %.lr.ph1132

.lr.ph1132:                                       ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit286
  %i.hf = getelementptr inbounds nuw i8, ptr %.19.i.i.i151, i64 64
  %i.hg = getelementptr inbounds nuw i8, ptr %.19.i.i.i151, i64 48 ; 2 uses
  br label %bb.ap

._crit_edge1133:                                  ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %.pre1202 = load ptr, ptr %46, align 8, !tbaa !64 ; 3 uses
  %.pre1203 = load ptr, ptr %i.r, align 8, !tbaa !63 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.pre1202, %.pre1203
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i314

.lr.ph.i.i.i314:                                  ; preds = %._crit_edge1133, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.hr, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i ], [ %.pre1202, %._crit_edge1133 ] ; 2 uses
  %i.hh = load ptr, ptr %.05.i.i.i, align 8, !tbaa !62 ; 3 uses
  %i.hi = load i64, ptr %i.hh, align 8            ; 3 uses
  %i.hj = and i64 %i.hi, 1152920405095219200
  %.not.i.i.i.i.i.i = icmp eq i64 %i.hj, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i, label %bb.al, !prof !66

bb.al:                                            ; preds = %.lr.ph.i.i.i314
  %i.hk = add i64 %i.hi, 1152920405095219200
  %i.hl = and i64 %i.hk, 1152920405095219200      ; 2 uses
  %i.hm = and i64 %i.hi, -1152920405095219201
  %i.hn = or disjoint i64 %i.hl, %i.hm
  store i64 %i.hn, ptr %i.hh, align 8
  %i.ho = icmp eq i64 %i.hl, 0
  br i1 %i.ho, label %bb.am, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i, !prof !66

bb.am:                                            ; preds = %bb.al
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.hh)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.hp = landingpad { ptr, i32 }
          catch ptr null
  %i.hq = extractvalue { ptr, i32 } %i.hp, 0
  call void @__clang_call_terminate(ptr %i.hq) #21
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i: ; preds = %bb.am, %bb.al, %.lr.ph.i.i.i314
  %i.hr = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i315 = icmp eq ptr %i.hr, %.pre1203
  br i1 %.not.i.i.i315, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i314, !llvm.loop !5

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %46, align 8, !tbaa !64
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %._crit_edge1133
  %i.hs = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %.pre1202, %._crit_edge1133 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.hs, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i
  %i.ht = load ptr, ptr %i.s, align 8, !tbaa !145
  %i.hu = ptrtoint ptr %i.ht to i64
  %i.hv = ptrtoint ptr %i.hs to i64
  %i.hw = sub i64 %i.hu, %i.hv
  call void @_ZdlPvm(ptr noundef nonnull %i.hs, i64 noundef %i.hw) #24
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit: ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit286, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #22
  br label %bb.om

bb.ap:                                            ; preds = %.lr.ph1132, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %.sroa.0989.01131 = phi ptr [ %i.he, %.lr.ph1132 ], [ %i.iy, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #22
  %i.hx = getelementptr inbounds nuw i8, ptr %.sroa.0989.01131, i64 32
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !62 ; 5 uses
  store ptr %i.hy, ptr %47, align 8, !tbaa !62
  %i.hz = load i64, ptr %i.hy, align 8            ; 3 uses
  %i.ia = lshr i64 %i.hz, 40
  %i.ib = trunc nuw nsw i64 %i.ia to i32
  %i.ic = and i32 %i.ib, 1048575                  ; 3 uses
  %i.id = icmp samesign ult i32 %i.ic, 1048574
  br i1 %i.id, label %bb.aq, label %bb.ar, !prof !65

bb.aq:                                            ; preds = %bb.ap
  %i.ie = add nuw nsw i32 %i.ic, 1
  %i.if = zext nneg i32 %i.ie to i64
  %i.ig = shl nuw nsw i64 %i.if, 40
  %i.ih = and i64 %i.hz, -1152920405095219201
  %i.ii = or i64 %i.ig, %i.ih
  store i64 %i.ii, ptr %i.hy, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit317

bb.ar:                                            ; preds = %bb.ap
  %i.ij = icmp eq i32 %i.ic, 1048574
  br i1 %i.ij, label %bb.as, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit317, !prof !66

bb.as:                                            ; preds = %bb.ar
  %i.ik = or i64 %i.hz, 1152920405095219200
  store i64 %i.ik, ptr %i.hy, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.hy)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit317 unwind label %bb.aw

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit317: ; preds = %bb.ar, %bb.aq, %bb.as
  %i.il = getelementptr inbounds nuw i8, ptr %.sroa.0989.01131, i64 64
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !54 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %.sroa.0989.01131, i64 48 ; 2 uses
  %.not10581126 = icmp eq ptr %i.im, %i.in
  br i1 %.not10581126, label %._crit_edge1129, label %.lr.ph1128

._crit_edge1129:                                  ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit790, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit317
  %i.io = load ptr, ptr %47, align 8, !tbaa !62   ; 3 uses
  %i.ip = load i64, ptr %i.io, align 8            ; 3 uses
  %i.iq = and i64 %i.ip, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.iq, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.at, !prof !66

bb.at:                                            ; preds = %._crit_edge1129
  %i.ir = add i64 %i.ip, 1152920405095219200
  %i.is = and i64 %i.ir, 1152920405095219200      ; 2 uses
  %i.it = and i64 %i.ip, -1152920405095219201
  %i.iu = or disjoint i64 %i.is, %i.it
  store i64 %i.iu, ptr %i.io, align 8
  %i.iv = icmp eq i64 %i.is, 0
  br i1 %i.iv, label %bb.au, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !66

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.io)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.iw = landingpad { ptr, i32 }
          catch ptr null
  %i.ix = extractvalue { ptr, i32 } %i.iw, 0
  call void @__clang_call_terminate(ptr %i.ix) #21
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %._crit_edge1129, %bb.at, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #22
  %i.iy = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.0989.01131) #26 ; 2 uses
  %.not1057 = icmp eq ptr %i.iy, %i.bc
  br i1 %.not1057, label %._crit_edge1133, label %bb.ap, !llvm.loop !525

bb.aw:                                            ; preds = %bb.as
  %i.iz = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit799

.lr.ph1128:                                       ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit317, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit790
  %.sroa.0984.01127 = phi ptr [ %i.auj, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit790 ], [ %i.im, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit317 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #22
  %i.ja = getelementptr inbounds nuw i8, ptr %.sroa.0984.01127, i64 32
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !62 ; 5 uses
  store ptr %i.jb, ptr %48, align 8, !tbaa !62
  %i.jc = load i64, ptr %i.jb, align 8            ; 3 uses
  %i.jd = lshr i64 %i.jc, 40
  %i.je = trunc nuw nsw i64 %i.jd to i32
  %i.jf = and i32 %i.je, 1048575                  ; 3 uses
  %i.jg = icmp samesign ult i32 %i.jf, 1048574
  br i1 %i.jg, label %bb.ax, label %bb.ay, !prof !65

bb.ax:                                            ; preds = %.lr.ph1128
  %i.jh = add nuw nsw i32 %i.jf, 1
  %i.ji = zext nneg i32 %i.jh to i64
  %i.jj = shl nuw nsw i64 %i.ji, 40
  %i.jk = and i64 %i.jc, -1152920405095219201
  %i.jl = or i64 %i.jj, %i.jk
  store i64 %i.jl, ptr %i.jb, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit319

bb.ay:                                            ; preds = %.lr.ph1128
  %i.jm = icmp eq i32 %i.jf, 1048574
  br i1 %i.jm, label %bb.az, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit319, !prof !66

bb.az:                                            ; preds = %bb.ay
  %i.jn = or i64 %i.jc, 1152920405095219200
  store i64 %i.jn, ptr %i.jb, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.jb)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit319 unwind label %bb.by

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit319: ; preds = %bb.ay, %bb.ax, %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #22
  %i.jo = load ptr, ptr %i.gv, align 8, !tbaa !62 ; 2 uses
  %i.jp = load ptr, ptr %48, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %32)
  call void @llvm.lifetime.start.p0(ptr nonnull %33)
end_hunk_0
begin_hunk_1_@_ZN4cvc58internal6theory5arith2nl19MonomialBoundsCheck14checkResBoundsEv:bb.a

bb.gx:                                            ; preds = %.noexc882
  %i.acs = extractvalue { ptr, ptr } %i.acr, 0    ; 2 uses
  %i.act = extractvalue { ptr, ptr } %i.acr, 1    ; 4 uses
  %.not.i879 = icmp eq ptr %i.act, null
  br i1 %.not.i879, label %bb.ha, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %.not.i.i.i880 = icmp ne ptr %i.acs, null
  %i.acu = icmp eq ptr %i.act, %i.aca
  %or.cond.i.i.i = select i1 %.not.i.i.i880, i1 true, i1 %i.acu
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.acv = getelementptr inbounds nuw i8, ptr %i.act, i64 32
  %i.acw = load ptr, ptr %i.acq, align 8, !tbaa !62
  %i.acx = load i64, ptr %i.acw, align 8
  %i.acy = and i64 %i.acx, 1099511627775
  %i.acz = load ptr, ptr %i.acv, align 8, !tbaa !62
  %i.ada = load i64, ptr %i.acz, align 8
  %i.adb = and i64 %i.ada, 1099511627775
  %i.adc = icmp samesign ult i64 %i.acy, %i.adb
  br label %.thread.i

.thread.i:                                        ; preds = %bb.gz, %bb.gy
  %i.add = phi i1 [ %i.adc, %bb.gz ], [ true, %bb.gy ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.add, ptr noundef nonnull %i.acp, ptr noundef nonnull %i.act, ptr noundef nonnull align 8 dereferenceable(32) %i.aca) #22
  %i.ade = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i467, i64 80 ; 2 uses
  %i.adf = load i64, ptr %i.ade, align 8, !tbaa !56
  %i.adg = add i64 %i.adf, 1
  store i64 %i.adg, ptr %i.ade, align 8, !tbaa !56
  br label %.noexc485

_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE10_Auto_nodeD2Ev.exit.i: ; preds = %.noexc882
  %i.adh = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %i.abx, ptr noundef nonnull %i.acp) #22
  br label %.body883

bb.ha:                                            ; preds = %bb.gx
  %i.adi = getelementptr inbounds nuw i8, ptr %i.acp, i64 40
  %i.adj = load ptr, ptr %i.adi, align 8, !tbaa !62 ; 3 uses
  %i.adk = load i64, ptr %i.adj, align 8          ; 3 uses
  %i.adl = and i64 %i.adk, 1152920405095219200
  %.not.i.i.i.i.i = icmp eq i64 %i.adl, 1152920405095219200
  br i1 %.not.i.i.i.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.i.i.i, label %bb.hb, !prof !66

bb.hb:                                            ; preds = %bb.ha
  %i.adm = add i64 %i.adk, 1152920405095219200
  %i.adn = and i64 %i.adm, 1152920405095219200    ; 2 uses
  %i.ado = and i64 %i.adk, -1152920405095219201
  %i.adp = or disjoint i64 %i.adn, %i.ado
  store i64 %i.adp, ptr %i.adj, align 8
  %i.adq = icmp eq i64 %i.adn, 0
  br i1 %i.adq, label %bb.hc, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.i.i.i, !prof !66

bb.hc:                                            ; preds = %bb.hb
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.adj)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.i.i.i unwind label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.adr = landingpad { ptr, i32 }
          catch ptr null
  %i.ads = extractvalue { ptr, i32 } %i.adr, 0
  call void @__clang_call_terminate(ptr %i.ads) #21
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.i.i.i: ; preds = %bb.hc, %bb.hb, %bb.ha
  %i.adt = load ptr, ptr %i.acq, align 8, !tbaa !62 ; 3 uses
  %i.adu = load i64, ptr %i.adt, align 8          ; 3 uses
  %i.adv = and i64 %i.adu, 1152920405095219200
  %.not.i.i1.i.i.i = icmp eq i64 %i.adv, 1152920405095219200
  br i1 %.not.i.i1.i.i.i, label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit, label %bb.he, !prof !66

bb.he:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.i.i.i
  %i.adw = add i64 %i.adu, 1152920405095219200
  %i.adx = and i64 %i.adw, 1152920405095219200    ; 2 uses
  %i.ady = and i64 %i.adu, -1152920405095219201
  %i.adz = or disjoint i64 %i.adx, %i.ady
  store i64 %i.adz, ptr %i.adt, align 8
  %i.aea = icmp eq i64 %i.adx, 0
  br i1 %i.aea, label %bb.hf, label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit, !prof !66

bb.hf:                                            ; preds = %bb.he
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.adt)
          to label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit unwind label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.aeb = landingpad { ptr, i32 }
          catch ptr null
  %i.aec = extractvalue { ptr, i32 } %i.aeb, 0
  call void @__clang_call_terminate(ptr %i.aec) #21
  unreachable

_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.i.i.i, %bb.he, %bb.hf
  call void @_ZdlPvm(ptr noundef nonnull %i.acp, i64 noundef 48) #24
  br label %.noexc485

.noexc485:                                        ; preds = %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit, %.thread.i
  %.sroa.015.019.i = phi ptr [ %i.acp, %.thread.i ], [ %i.acs, %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  br label %bb.hh

bb.hh:                                            ; preds = %.noexc485, %bb.gw
  %.sroa.06.0.i482 = phi ptr [ %.sroa.015.019.i, %.noexc485 ], [ %.19.i.i.i.i476, %bb.gw ]
  %i.aed = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i482, i64 40 ; 2 uses
  %i.aee = load ptr, ptr %i.r, align 8, !tbaa !63 ; 3 uses
  %i.aef = load ptr, ptr %i.s, align 8, !tbaa !145
  %.not.i487 = icmp eq ptr %i.aee, %i.aef
  br i1 %.not.i487, label %bb.hm, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.aeg = load ptr, ptr %i.aed, align 8, !tbaa !62 ; 5 uses
  store ptr %i.aeg, ptr %i.aee, align 8, !tbaa !62
  %i.aeh = load i64, ptr %i.aeg, align 8          ; 3 uses
  %i.aei = lshr i64 %i.aeh, 40
  %i.aej = trunc nuw nsw i64 %i.aei to i32
  %i.aek = and i32 %i.aej, 1048575                ; 3 uses
  %i.ael = icmp samesign ult i32 %i.aek, 1048574
  br i1 %i.ael, label %bb.hj, label %bb.hk, !prof !65

bb.hj:                                            ; preds = %bb.hi
  %i.aem = add nuw nsw i32 %i.aek, 1
  %i.aen = zext nneg i32 %i.aem to i64
  %i.aeo = shl nuw nsw i64 %i.aen, 40
  %i.aep = and i64 %i.aeh, -1152920405095219201
  %i.aeq = or i64 %i.aeo, %i.aep
  store i64 %i.aeq, ptr %i.aeg, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i488

bb.hk:                                            ; preds = %bb.hi
  %i.aer = icmp eq i32 %i.aek, 1048574
  br i1 %i.aer, label %bb.hl, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i488, !prof !66

bb.hl:                                            ; preds = %bb.hk
  %i.aes = or i64 %i.aeh, 1152920405095219200
  store i64 %i.aes, ptr %i.aeg, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aeg)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i488 unwind label %bb.hn

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i488: ; preds = %bb.hl, %bb.hk, %bb.hj
  %i.aet = load ptr, ptr %i.r, align 8, !tbaa !63
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aet, i64 8
  store ptr %i.aeu, ptr %i.r, align 8, !tbaa !63
  br label %.critedge144

bb.hm:                                            ; preds = %bb.hh
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %46, ptr %i.aee, ptr noundef nonnull align 8 dereferenceable(8) %i.aed)
          to label %.critedge144 unwind label %bb.hn

bb.hn:                                            ; preds = %.noexc881, %.critedge.i483, %bb.hm, %bb.hl, %.critedge.i468, %.critedge.i453
  %i.aev = landingpad { ptr, i32 }
          cleanup
  br label %.body883

.critedge144:                                     ; preds = %bb.hm, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i488
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  br label %bb.hp

bb.ho:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit591
  %.sroa.0.0..sroa.0.0. = load i32, ptr %.sroa.0, align 4, !tbaa !125
  %.sroa.5.0..sroa.5.4. = load i32, ptr %.sroa.5, align 4, !tbaa !125
  %i.aew = invoke noundef i32 @_ZN4cvc58internal6theory5arith10transKindsENS0_4kind6Kind_tES4_(i32 noundef %.sroa.0.0..sroa.0.0., i32 noundef %.sroa.5.0..sroa.5.4.)
          to label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit666 unwind label %bb.lt ; 2 uses

bb.hp:                                            ; preds = %.critedge144, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit591
  %i.aex = phi i1 [ true, %.critedge144 ], [ false, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit591 ] ; 5 uses
  %indvars.iv.sroa.phi = phi ptr [ %.sroa.0, %.critedge144 ], [ %.sroa.5, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit591 ] ; 2 uses
  %spec.select.v = select i1 %i.aex, ptr %.sroa.0.0.i.i259, ptr %.sroa.0.0.i.i190
  %i.aey = getelementptr inbounds nuw i8, ptr %spec.select.v, i64 40
  %i.aez = load ptr, ptr %i.aey, align 8, !tbaa !62 ; 13 uses
  %i.afa = load i64, ptr %i.aez, align 8          ; 3 uses
  %i.afb = lshr i64 %i.afa, 40
  %i.afc = trunc nuw nsw i64 %i.afb to i32
  %i.afd = and i32 %i.afc, 1048575                ; 3 uses
  %i.afe = icmp samesign ult i32 %i.afd, 1048574
  br i1 %i.afe, label %bb.hq, label %bb.hr, !prof !65

bb.hq:                                            ; preds = %bb.hp
  %i.aff = add nuw nsw i32 %i.afd, 1
  %i.afg = zext nneg i32 %i.aff to i64
  %i.afh = shl nuw nsw i64 %i.afg, 40
  %i.afi = and i64 %i.afa, -1152920405095219201
  %i.afj = or i64 %i.afh, %i.afi
  store i64 %i.afj, ptr %i.aez, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit557

bb.hr:                                            ; preds = %bb.hp
  %i.afk = icmp eq i32 %i.afd, 1048574
  br i1 %i.afk, label %bb.hs, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit557, !prof !66

bb.hs:                                            ; preds = %bb.hr
  %i.afl = or i64 %i.afa, 1152920405095219200
  store i64 %i.afl, ptr %i.aez, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aez)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit557 unwind label %bb.ic

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit557: ; preds = %bb.hr, %bb.hq, %bb.hs
  %i.afm = select i1 %i.aex, i32 %i.ha, i32 %i.gn ; 2 uses
  %74 = call i32 @llvm.scmp.i32.i32(i32 %i.afm, i32 0)
  %i.afn = select i1 %i.aex, i32 %i.ml, i32 %i.aan ; 2 uses
  store i32 %i.afn, ptr %indvars.iv.sroa.phi, align 4, !tbaa !125
  %i.afo = select i1 %i.aex, i32 1, i32 -1
  %i.afp = icmp eq i32 %74, %i.afo
  br i1 %i.afp, label %bb.ht, label %bb.ie

bb.ht:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit557
  switch i32 %i.afn, label %bb.hy [
    i32 76, label %_ZN4cvc58internal6theory5arith19reverseRelationKindENS0_4kind6Kind_tE.exit
    i32 77, label %bb.hu
    i32 5, label %bb.hv
    i32 79, label %bb.hw
    i32 78, label %bb.hx
  ]

bb.hu:                                            ; preds = %bb.ht
  br label %_ZN4cvc58internal6theory5arith19reverseRelationKindENS0_4kind6Kind_tE.exit

bb.hv:                                            ; preds = %bb.ht
  br label %_ZN4cvc58internal6theory5arith19reverseRelationKindENS0_4kind6Kind_tE.exit

bb.hw:                                            ; preds = %bb.ht
  br label %_ZN4cvc58internal6theory5arith19reverseRelationKindENS0_4kind6Kind_tE.exit

bb.hx:                                            ; preds = %bb.ht
  br label %_ZN4cvc58internal6theory5arith19reverseRelationKindENS0_4kind6Kind_tE.exit

bb.hy:                                            ; preds = %bb.ht
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  invoke void @_ZN4cvc58internal11FatalStreamC1EPKcS3_i(ptr noundef nonnull align 1 dereferenceable(1) %15, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4cvc58internal6theory5arith19reverseRelationKindENS0_4kind6Kind_tE, ptr noundef nonnull @.str.46, i32 noundef 71)
          to label %.noexc558 unwind label %bb.id

.noexc558:                                        ; preds = %bb.hy
  %i.afq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4cvc58internal11FatalStream6streamEv(ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %bb.hz unwind label %bb.ib

bb.hz:                                            ; preds = %.noexc558
  %i.afr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.afq, ptr noundef nonnull @.str.47)
          to label %bb.ia unwind label %bb.ib     ; 0 uses

bb.ia:                                            ; preds = %bb.hz
  call void @_ZN4cvc58internal11FatalStreamD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %15) #21
  unreachable

bb.ib:                                            ; preds = %bb.hz, %.noexc558
  %i.afs = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4cvc58internal11FatalStreamD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %15) #21
  unreachable

_ZN4cvc58internal6theory5arith19reverseRelationKindENS0_4kind6Kind_tE.exit: ; preds = %bb.hx, %bb.hw, %bb.hv, %bb.hu, %bb.ht
  %.0.i = phi i32 [ 76, %bb.hx ], [ 79, %bb.hu ], [ 5, %bb.hv ], [ 77, %bb.hw ], [ 78, %bb.ht ]
  store i32 %.0.i, ptr %indvars.iv.sroa.phi, align 4, !tbaa !125
  br label %bb.ie

bb.ic:                                            ; preds = %bb.hs
  %i.aft = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit594

bb.id:                                            ; preds = %bb.hy
  %i.afu = landingpad { ptr, i32 }
          cleanup
  br label %bb.jz

bb.ie:                                            ; preds = %_ZN4cvc58internal6theory5arith19reverseRelationKindENS0_4kind6Kind_tE.exit, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit557
  %75 = icmp sgt i32 %i.afm, 0
  %i.afv = getelementptr inbounds nuw i8, ptr %i.aez, i64 16 ; 2 uses
  br i1 %75, label %bb.if, label %bb.ja

bb.if:                                            ; preds = %bb.ie
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #22
  %i.afw = load ptr, ptr %i.c, align 8, !tbaa !51
  %i.afx = getelementptr inbounds nuw i8, ptr %i.afw, i64 32
  %i.afy = load ptr, ptr %i.afx, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22, !noalias !551
  %i.afz = load ptr, ptr %i.afv, align 8, !tbaa !72, !noalias !551
  invoke void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %12, ptr noundef %i.afz, i32 noundef 78)
          to label %.noexc560 unwind label %bb.iv

.noexc560:                                        ; preds = %bb.if
  store ptr %i.aez, ptr %13, align 8, !tbaa !74, !noalias !551
  %i.aga = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %12, ptr noundef nonnull align 8 %13)
          to label %bb.ig unwind label %bb.ij, !noalias !551

bb.ig:                                            ; preds = %.noexc560
  store ptr %i.afy, ptr %14, align 8, !tbaa !74, !noalias !551
  %i.agb = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %i.aga, ptr noundef nonnull align 8 %14)
          to label %bb.ih unwind label %bb.ik, !noalias !551 ; 0 uses

bb.ih:                                            ; preds = %bb.ig
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %65, ptr noundef nonnull align 8 dereferenceable(124) %12)
          to label %bb.im unwind label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.agc = landingpad { ptr, i32 }
          cleanup
  br label %bb.il

bb.ij:                                            ; preds = %.noexc560
  %i.agd = landingpad { ptr, i32 }
          cleanup
  br label %bb.il

bb.ik:                                            ; preds = %bb.ig
  %i.age = landingpad { ptr, i32 }
          cleanup
  br label %bb.il

bb.il:                                            ; preds = %bb.ik, %bb.ij, %bb.ii
  %.pn5.i559 = phi { ptr, i32 } [ %i.agc, %bb.ii ], [ %i.age, %bb.ik ], [ %i.agd, %bb.ij ]
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22, !noalias !551
  br label %.body561

bb.im:                                            ; preds = %bb.ih
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22, !noalias !551
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  %i.agf = load ptr, ptr %i.r, align 8, !tbaa !63 ; 3 uses
  %i.agg = load ptr, ptr %i.s, align 8, !tbaa !145
  %.not.i.i564 = icmp eq ptr %i.agf, %i.agg
  br i1 %.not.i.i564, label %bb.ir, label %bb.in

bb.in:                                            ; preds = %bb.im
  %i.agh = load ptr, ptr %65, align 8, !tbaa !62  ; 5 uses
  store ptr %i.agh, ptr %i.agf, align 8, !tbaa !62
  %i.agi = load i64, ptr %i.agh, align 8          ; 3 uses
  %i.agj = lshr i64 %i.agi, 40
  %i.agk = trunc nuw nsw i64 %i.agj to i32
  %i.agl = and i32 %i.agk, 1048575                ; 3 uses
  %i.agm = icmp samesign ult i32 %i.agl, 1048574
  br i1 %i.agm, label %bb.io, label %bb.ip, !prof !65

bb.io:                                            ; preds = %bb.in
  %i.agn = add nuw nsw i32 %i.agl, 1
  %i.ago = zext nneg i32 %i.agn to i64
  %i.agp = shl nuw nsw i64 %i.ago, 40
  %i.agq = and i64 %i.agi, -1152920405095219201
  %i.agr = or i64 %i.agp, %i.agq
  store i64 %i.agr, ptr %i.agh, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i

bb.ip:                                            ; preds = %bb.in
  %i.ags = icmp eq i32 %i.agl, 1048574
  br i1 %i.ags, label %bb.iq, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i, !prof !66

bb.iq:                                            ; preds = %bb.ip
  %i.agt = or i64 %i.agi, 1152920405095219200
  store i64 %i.agt, ptr %i.agh, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.agh)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i unwind label %bb.iw

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i: ; preds = %bb.iq, %bb.ip, %bb.io
  %i.agu = load ptr, ptr %i.r, align 8, !tbaa !63
  %i.agv = getelementptr inbounds nuw i8, ptr %i.agu, i64 8
  store ptr %i.agv, ptr %i.r, align 8, !tbaa !63
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit

bb.ir:                                            ; preds = %bb.im
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %46, ptr %i.agf, ptr noundef nonnull align 8 dereferenceable(8) %65)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit unwind label %bb.iw

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i, %bb.ir
  %i.agw = load ptr, ptr %65, align 8, !tbaa !62  ; 3 uses
  %i.agx = load i64, ptr %i.agw, align 8          ; 3 uses
  %i.agy = and i64 %i.agx, 1152920405095219200
  %.not.i.i567 = icmp eq i64 %i.agy, 1152920405095219200
  br i1 %.not.i.i567, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit569, label %bb.is, !prof !66

bb.is:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit
  %i.agz = add i64 %i.agx, 1152920405095219200
  %i.aha = and i64 %i.agz, 1152920405095219200    ; 2 uses
  %i.ahb = and i64 %i.agx, -1152920405095219201
  %i.ahc = or disjoint i64 %i.aha, %i.ahb
  store i64 %i.ahc, ptr %i.agw, align 8
  %i.ahd = icmp eq i64 %i.aha, 0
  br i1 %i.ahd, label %bb.it, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit569, !prof !66

bb.it:                                            ; preds = %bb.is
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.agw)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit569 unwind label %bb.iu

bb.iu:                                            ; preds = %bb.it
  %i.ahe = landingpad { ptr, i32 }
          catch ptr null
  %i.ahf = extractvalue { ptr, i32 } %i.ahe, 0
  call void @__clang_call_terminate(ptr %i.ahf) #21
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit569: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit, %bb.is, %bb.it
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #22
  br label %bb.jv

bb.iv:                                            ; preds = %bb.if
  %i.ahg = landingpad { ptr, i32 }
          cleanup
  br label %.body561

bb.iw:                                            ; preds = %bb.ir, %bb.iq
  %i.ahh = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ahi = load ptr, ptr %65, align 8, !tbaa !62  ; 3 uses
  %i.ahj = load i64, ptr %i.ahi, align 8          ; 3 uses
  %i.ahk = and i64 %i.ahj, 1152920405095219200
  %.not.i.i570 = icmp eq i64 %i.ahk, 1152920405095219200
  br i1 %.not.i.i570, label %.body561, label %bb.ix, !prof !66

bb.ix:                                            ; preds = %bb.iw
  %i.ahl = add i64 %i.ahj, 1152920405095219200
  %i.ahm = and i64 %i.ahl, 1152920405095219200    ; 2 uses
  %i.ahn = and i64 %i.ahj, -1152920405095219201
  %i.aho = or disjoint i64 %i.ahm, %i.ahn
  store i64 %i.aho, ptr %i.ahi, align 8
  %i.ahp = icmp eq i64 %i.ahm, 0
  br i1 %i.ahp, label %bb.iy, label %.body561, !prof !66

bb.iy:                                            ; preds = %bb.ix
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ahi)
          to label %.body561 unwind label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  %i.ahq = landingpad { ptr, i32 }
          catch ptr null
  %i.ahr = extractvalue { ptr, i32 } %i.ahq, 0
  call void @__clang_call_terminate(ptr %i.ahr) #21
  unreachable

.body561:                                         ; preds = %bb.iy, %bb.ix, %bb.iw, %bb.iv, %bb.il
  %.pn118 = phi { ptr, i32 } [ %.pn5.i559, %bb.il ], [ %i.ahg, %bb.iv ], [ %i.ahh, %bb.iw ], [ %i.ahh, %bb.ix ], [ %i.ahh, %bb.iy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #22
  br label %bb.jz

bb.ja:                                            ; preds = %bb.ie
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #22
  %i.ahs = load ptr, ptr %i.c, align 8, !tbaa !51
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahs, i64 32
  %i.ahu = load ptr, ptr %i.aht, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22, !noalias !552
  %i.ahv = load ptr, ptr %i.afv, align 8, !tbaa !72, !noalias !552
  invoke void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %9, ptr noundef %i.ahv, i32 noundef 76)
          to label %.noexc574 unwind label %bb.jq

.noexc574:                                        ; preds = %bb.ja
  store ptr %i.aez, ptr %10, align 8, !tbaa !74, !noalias !552
  %i.ahw = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %9, ptr noundef nonnull align 8 %10)
          to label %bb.jb unwind label %bb.je, !noalias !552

bb.jb:                                            ; preds = %.noexc574
  store ptr %i.ahu, ptr %11, align 8, !tbaa !74, !noalias !552
  %i.ahx = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %i.ahw, ptr noundef nonnull align 8 %11)
          to label %bb.jc unwind label %bb.jf, !noalias !552 ; 0 uses

bb.jc:                                            ; preds = %bb.jb
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %66, ptr noundef nonnull align 8 dereferenceable(124) %9)
          to label %bb.jh unwind label %bb.jd

bb.jd:                                            ; preds = %bb.jc
  %i.ahy = landingpad { ptr, i32 }
          cleanup
  br label %bb.jg

bb.je:                                            ; preds = %.noexc574
  %i.ahz = landingpad { ptr, i32 }
end_hunk_1
