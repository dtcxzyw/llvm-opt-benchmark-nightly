inline.NumInlined: 5390
inline.NumDeleted: 1762
begin_hunk_0_@_ZN11OpenImageIO4v3_112OpenEXRInput8PartInfo12parse_headerEPS1_PKN27OpenImageIO_v3_1_Imf__3_3_56HeaderE:bb.a
_ZNKSt3mapIN27OpenImageIO_v3_1_Imf__3_3_54NameEPNS0_9AttributeESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.thread.i: ; preds = %_ZNKSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_54NameESt4pairIKS1_PNS0_9AttributeEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #37
  br label %_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header18findTypedAttributeINS_14TypedAttributeINS_6EnvmapEEEEEPKT_PKc.exit.thread

_ZNKSt3mapIN27OpenImageIO_v3_1_Imf__3_3_54NameEPNS0_9AttributeESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.i: ; preds = %_ZNKSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_54NameESt4pairIKS1_PNS0_9AttributeEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i
  %i.ff = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.fg = call i32 @strcmp(ptr noundef nonnull align 1 dereferenceable(256) %23, ptr noundef nonnull align 1 dereferenceable(256) %i.ff) #42
  %i.fh = icmp slt i32 %i.fg, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #37
  br i1 %i.fh, label %_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header18findTypedAttributeINS_14TypedAttributeINS_6EnvmapEEEEEPKT_PKc.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %_ZNKSt3mapIN27OpenImageIO_v3_1_Imf__3_3_54NameEPNS0_9AttributeESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.i
  %i.fi = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 288
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !253 ; 2 uses
  %i.fk = icmp eq ptr %i.fj, null
  br i1 %i.fk, label %_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header18findTypedAttributeINS_14TypedAttributeINS_6EnvmapEEEEEPKT_PKc.exit.thread, label %_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header18findTypedAttributeINS_14TypedAttributeINS_6EnvmapEEEEEPKT_PKc.exit

_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header18findTypedAttributeINS_14TypedAttributeINS_6EnvmapEEEEEPKT_PKc.exit: ; preds = %bb.aa
  %i.fl = call ptr @__dynamic_cast(ptr nonnull %i.fj, ptr nonnull @_ZTIN27OpenImageIO_v3_1_Imf__3_3_59AttributeE, ptr nonnull @_ZTIN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINS_6EnvmapEEE, i64 0) #37 ; 2 uses
  %.not231 = icmp eq ptr %i.fl, null
  br i1 %.not231, label %_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header18findTypedAttributeINS_14TypedAttributeINS_6EnvmapEEEEEPKT_PKc.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header18findTypedAttributeINS_14TypedAttributeINS_6EnvmapEEEEEPKT_PKc.exit
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !257
  %i.fo = icmp eq i32 %i.fn, 1                    ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.fq = zext i1 %i.fo to i8
  store i8 %i.fq, ptr %i.fp, align 8, !tbaa !259
  store ptr @.str.65, ptr %30, align 8, !tbaa !91
  %i.fr = getelementptr inbounds nuw i8, ptr %30, i64 8
  store i64 13, ptr %i.fr, align 8, !tbaa !89
  %i.fs = select i1 %i.fo, ptr @.str.66, ptr @.str.67
  store ptr %i.fs, ptr %31, align 8, !tbaa !91
  %i.ft = select i1 %i.fo, i64 20, i64 19
  %i.fu = getelementptr inbounds nuw i8, ptr %31, i64 8
  store i64 %i.ft, ptr %i.fu, align 8, !tbaa !89
  invoke void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull align 8 dereferenceable(160) %i.s, ptr noundef nonnull dead_on_return %30, ptr noundef nonnull dead_on_return %31)
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.fv = load i8, ptr %i.fp, align 8, !tbaa !259, !range !127, !noundef !128
  %i.fw = trunc nuw i8 %i.fv to i1
  br i1 %i.fw, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store ptr @.str.68, ptr %32, align 8, !tbaa !91
  %i.fx = getelementptr inbounds nuw i8, ptr %32, i64 8
  store i64 16, ptr %i.fx, align 8, !tbaa !89
  store ptr @.str.69, ptr %33, align 8, !tbaa !91
  %i.fy = getelementptr inbounds nuw i8, ptr %33, i64 8
  store i64 1, ptr %i.fy, align 8, !tbaa !89
  invoke void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull align 8 dereferenceable(160) %i.s, ptr noundef nonnull dead_on_return %32, ptr noundef nonnull dead_on_return %33)
          to label %bb.af unwind label %bb.ae

bb.ae:                                            ; preds = %bb.af, %bb.ag, %bb.ad, %bb.ab
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %bb.hq

bb.af:                                            ; preds = %bb.ad, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  store i32 1, ptr %i.i, align 4, !tbaa !3
  store ptr @.str.70, ptr %22, align 8, !tbaa !91
  %i.ga = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 17, ptr %i.ga, align 8, !tbaa !89
  invoke void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPKv(ptr noundef nonnull align 8 dereferenceable(160) %i.s, ptr noundef nonnull dead_on_return %22, i64 263, ptr noundef nonnull %i.i)
          to label %_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit310 unwind label %bb.ae

_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit310: ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  br label %bb.ah

_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header18findTypedAttributeINS_14TypedAttributeINS_6EnvmapEEEEEPKT_PKc.exit.thread: ; preds = %_ZNKSt3mapIN27OpenImageIO_v3_1_Imf__3_3_54NameEPNS0_9AttributeESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.thread.i, %bb.aa, %_ZNKSt3mapIN27OpenImageIO_v3_1_Imf__3_3_54NameEPNS0_9AttributeESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.i, %_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header18findTypedAttributeINS_14TypedAttributeINS_6EnvmapEEEEEPKT_PKc.exit
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i8 0, ptr %i.gb, align 8, !tbaa !259
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.gd = load i32, ptr %i.gc, align 8, !tbaa !210
  %.not232 = icmp ne i32 %i.gd, 0
  %i.ge = load i32, ptr %i.er, align 8
  %i.gf = icmp eq i32 %i.ge, 1
  %or.cond = select i1 %.not232, i1 %i.gf, i1 false
  br i1 %or.cond, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header18findTypedAttributeINS_14TypedAttributeINS_6EnvmapEEEEEPKT_PKc.exit.thread
  store ptr @.str.65, ptr %34, align 8, !tbaa !91
  %i.gg = getelementptr inbounds nuw i8, ptr %34, i64 8
  store i64 13, ptr %i.gg, align 8, !tbaa !89
  store ptr @.str.71, ptr %35, align 8, !tbaa !91
  %i.gh = getelementptr inbounds nuw i8, ptr %35, i64 8
  store i64 13, ptr %i.gh, align 8, !tbaa !89
  invoke void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull align 8 dereferenceable(160) %i.s, ptr noundef nonnull dead_on_return %34, ptr noundef nonnull dead_on_return %35)
          to label %bb.ah unwind label %bb.ae

bb.ah:                                            ; preds = %_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit310, %_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header18findTypedAttributeINS_14TypedAttributeINS_6EnvmapEEEEEPKT_PKc.exit.thread, %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #37
  %i.gi = call ptr @strncpy(ptr noundef nonnull align 1 dereferenceable(256) %21, ptr noundef nonnull dereferenceable(12) @.str.36, i64 noundef 255) #37 ; 0 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %21, i64 255
  store i8 0, ptr %i.gj, align 1, !tbaa !15
  %i.gk = load ptr, ptr %i.ey, align 8, !tbaa !80 ; 2 uses
  %.not10.i.i.i.i311 = icmp eq ptr %i.gk, null
  br i1 %.not10.i.i.i.i311, label %_ZNKSt3mapIN27OpenImageIO_v3_1_Imf__3_3_54NameEPNS0_9AttributeESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.thread.i322, label %.lr.ph.i.i.i.i312

.lr.ph.i.i.i.i312:                                ; preds = %bb.ah, %.lr.ph.i.i.i.i312
  %.012.i.i.i.i313 = phi ptr [ %.1.i.i.i.i318, %.lr.ph.i.i.i.i312 ], [ %i.gk, %bb.ah ] ; 3 uses
  %.0811.i.i.i.i314 = phi ptr [ %.19.i.i.i.i315, %.lr.ph.i.i.i.i312 ], [ %i.fa, %bb.ah ]
  %i.gl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i313, i64 32
  %i.gm = call i32 @strcmp(ptr noundef nonnull align 1 dereferenceable(256) %i.gl, ptr noundef nonnull align 1 dereferenceable(256) %21) #42
  %i.gn = icmp slt i32 %i.gm, 0                   ; 2 uses
  %.19.i.i.i.i315 = select i1 %i.gn, ptr %.0811.i.i.i.i314, ptr %.012.i.i.i.i313 ; 4 uses
  %.1.in.v.i.i.i.i316 = select i1 %i.gn, i64 24, i64 16
  %.1.in.i.i.i.i317 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i313, i64 %.1.in.v.i.i.i.i316
  %.1.i.i.i.i318 = load ptr, ptr %.1.in.i.i.i.i317, align 8, !tbaa !86 ; 2 uses
  %.not.i.i.i.i319 = icmp eq ptr %.1.i.i.i.i318, null
  br i1 %.not.i.i.i.i319, label %_ZNKSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_54NameESt4pairIKS1_PNS0_9AttributeEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i320, label %.lr.ph.i.i.i.i312, !llvm.loop !252

_ZNKSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_54NameESt4pairIKS1_PNS0_9AttributeEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i320: ; preds = %.lr.ph.i.i.i.i312
  %i.go = icmp eq ptr %.19.i.i.i.i315, %i.fa
  br i1 %i.go, label %_ZNKSt3mapIN27OpenImageIO_v3_1_Imf__3_3_54NameEPNS0_9AttributeESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.thread.i322, label %_ZNKSt3mapIN27OpenImageIO_v3_1_Imf__3_3_54NameEPNS0_9AttributeESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.i321

_ZNKSt3mapIN27OpenImageIO_v3_1_Imf__3_3_54NameEPNS0_9AttributeESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.thread.i322: ; preds = %_ZNKSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_54NameESt4pairIKS1_PNS0_9AttributeEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i320, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #37
  br label %.critedge

_ZNKSt3mapIN27OpenImageIO_v3_1_Imf__3_3_54NameEPNS0_9AttributeESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.i321: ; preds = %_ZNKSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_54NameESt4pairIKS1_PNS0_9AttributeEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i320
  %i.gp = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i315, i64 32
  %i.gq = call i32 @strcmp(ptr noundef nonnull align 1 dereferenceable(256) %21, ptr noundef nonnull align 1 dereferenceable(256) %i.gp) #42
  %i.gr = icmp slt i32 %i.gq, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #37
  br i1 %i.gr, label %.critedge, label %bb.ai

bb.ai:                                            ; preds = %_ZNKSt3mapIN27OpenImageIO_v3_1_Imf__3_3_54NameEPNS0_9AttributeESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.i321
  %i.gs = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i315, i64 288
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !253 ; 2 uses
  %i.gu = icmp eq ptr %i.gt, null
  br i1 %i.gu, label %.critedge, label %_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header18findTypedAttributeINS_14TypedAttributeINS_11CompressionEEEEEPKT_PKc.exit

_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header18findTypedAttributeINS_14TypedAttributeINS_11CompressionEEEEEPKT_PKc.exit: ; preds = %bb.ai
  %i.gv = call ptr @__dynamic_cast(ptr nonnull %i.gt, ptr nonnull @_ZTIN27OpenImageIO_v3_1_Imf__3_3_59AttributeE, ptr nonnull @_ZTIN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINS_11CompressionEEE, i64 0) #37 ; 2 uses
  %.not233 = icmp eq ptr %i.gv, null
  br i1 %.not233, label %.critedge, label %bb.aj

bb.aj:                                            ; preds = %_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header18findTypedAttributeINS_14TypedAttributeINS_11CompressionEEEEEPKT_PKc.exit
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !260 ; 2 uses
  %i.gy = icmp ult i32 %i.gx, 10
  br i1 %i.gy, label %switch.lookup, label %.critedge

bb.ak:                                            ; preds = %switch.lookup
  %i.gz = landingpad { ptr, i32 }
          cleanup
  br label %bb.hq

switch.lookup:                                    ; preds = %bb.aj
  %i.ha = zext nneg i32 %i.gx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN11OpenImageIO4v3_112OpenEXRInput8PartInfo12parse_headerEPS1_PKN27OpenImageIO_v3_1_Imf__3_3_56HeaderE, i64 %i.ha
  %switch.load = load ptr, ptr %switch.gep, align 8 ; 2 uses
  store ptr @.str.36, ptr %36, align 8, !tbaa !91
  %i.hb = getelementptr inbounds nuw i8, ptr %36, i64 8
  store i64 11, ptr %i.hb, align 8, !tbaa !89
  store ptr %switch.load, ptr %37, align 8, !tbaa !91
  %i.hc = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %switch.load) #37
  %i.hd = getelementptr inbounds nuw i8, ptr %37, i64 8
  store i64 %i.hc, ptr %i.hd, align 8, !tbaa !89
  invoke void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull align 8 dereferenceable(160) %i.s, ptr noundef nonnull dead_on_return %36, ptr noundef nonnull dead_on_return %37)
          to label %.critedge unwind label %bb.ak

.critedge:                                        ; preds = %bb.aj, %_ZNKSt3mapIN27OpenImageIO_v3_1_Imf__3_3_54NameEPNS0_9AttributeESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.thread.i322, %bb.ai, %_ZNKSt3mapIN27OpenImageIO_v3_1_Imf__3_3_54NameEPNS0_9AttributeESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.i321, %switch.lookup, %_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header18findTypedAttributeINS_14TypedAttributeINS_11CompressionEEEEEPKT_PKc.exit
  %i.he = invoke ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header5beginEv(ptr noundef nonnull align 8 dereferenceable(49) %2)
          to label %.preheader unwind label %bb.ao

.preheader:                                       ; preds = %.critedge
  %i.hf = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 5 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %38, i64 8 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 10 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %39, i64 8 ; 26 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 7 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %40, i64 8 ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %20, i64 255
  %i.hm = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.hn = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.ho = getelementptr inbounds nuw i8, ptr %19, i64 255
  %i.hp = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.hq = getelementptr inbounds nuw i8, ptr %17, i64 255
  %i.hr = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.hs = getelementptr inbounds nuw i8, ptr %15, i64 255
  %i.ht = getelementptr inbounds nuw i8, ptr %43, i64 8
  %i.hu = getelementptr inbounds nuw i8, ptr %14, i64 255
  %i.hv = getelementptr inbounds nuw i8, ptr %44, i64 8
  %i.hw = getelementptr inbounds nuw i8, ptr %13, i64 255
  %i.hx = getelementptr inbounds nuw i8, ptr %45, i64 8
  %i.hy = getelementptr inbounds nuw i8, ptr %12, i64 255
  %i.hz = getelementptr inbounds nuw i8, ptr %46, i64 8
  %i.ia = getelementptr inbounds nuw i8, ptr %11, i64 255
  %i.ib = getelementptr inbounds nuw i8, ptr %47, i64 8
  %i.ic = getelementptr inbounds nuw i8, ptr %10, i64 255
  %i.id = getelementptr inbounds nuw i8, ptr %48, i64 8
  %i.ie = getelementptr inbounds nuw i8, ptr %9, i64 255
  %i.if = getelementptr inbounds nuw i8, ptr %49, i64 8 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %49, i64 16
  %i.ih = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ii = getelementptr inbounds nuw i8, ptr %50, i64 8
  %i.ij = getelementptr inbounds nuw i8, ptr %7, i64 255
  %i.ik = getelementptr inbounds nuw i8, ptr %51, i64 8
  %i.il = getelementptr inbounds nuw i8, ptr %6, i64 255
  %i.im = getelementptr inbounds nuw i8, ptr %52, i64 8
  %i.in = getelementptr inbounds nuw i8, ptr %5, i64 255
  %i.io = getelementptr inbounds nuw i8, ptr %53, i64 8
  %i.ip = getelementptr inbounds nuw i8, ptr %54, i64 8
  %i.iq = getelementptr inbounds nuw i8, ptr %55, i64 8
  %i.ir = getelementptr inbounds nuw i8, ptr %56, i64 8
  %i.is = getelementptr inbounds nuw i8, ptr %57, i64 8
  %i.it = getelementptr inbounds nuw i8, ptr %58, i64 8
  %i.iu = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.iv = getelementptr inbounds nuw i8, ptr %59, i64 8
  %i.iw = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.ix = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.iy = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.iz = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.ja = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.jb = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.jc = getelementptr inbounds nuw i8, ptr %60, i64 8
  %i.jd = getelementptr inbounds nuw i8, ptr %61, i64 8
  %i.je = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.jf = getelementptr inbounds nuw i8, ptr %63, i64 8
  %i.jg = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.jh = getelementptr inbounds nuw i8, ptr %62, i64 8
  %i.ji = getelementptr inbounds nuw i8, ptr %64, i64 8
  %i.jj = getelementptr inbounds nuw i8, ptr %65, i64 8
  %i.jk = getelementptr inbounds nuw i8, ptr %68, i64 8
  %i.jl = getelementptr inbounds nuw i8, ptr %66, i64 8
  %i.jm = getelementptr inbounds nuw i8, ptr %67, i64 8
  br label %bb.al

bb.al:                                            ; preds = %.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit559
  %.sroa.0666.0 = phi ptr [ %i.aeo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit559 ], [ %i.he, %.preheader ] ; 4 uses
  %i.jn = invoke ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header3endEv(ptr noundef nonnull align 8 dereferenceable(49) %2)
          to label %bb.am unwind label %bb.ap

bb.am:                                            ; preds = %bb.al
  %.not718 = icmp eq ptr %.sroa.0666.0, %i.jn
  br i1 %.not718, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %bb.am
  store ptr @.str.20, ptr %69, align 8, !tbaa !91
  %i.jo = getelementptr inbounds nuw i8, ptr %69, i64 8
  store i64 16, ptr %i.jo, align 8, !tbaa !89
  %i.jp = invoke noundef float @_ZNK11OpenImageIO4v3_19ImageSpec19get_float_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEEf(ptr noundef nonnull align 8 dereferenceable(160) %i.s, ptr noundef nonnull dead_on_return %69, float noundef 0.000000e+00)
          to label %bb.gr unwind label %bb.gv     ; 2 uses

bb.ao:                                            ; preds = %.critedge
  %i.jq = landingpad { ptr, i32 }
          cleanup
  br label %bb.hq

bb.ap:                                            ; preds = %bb.al
  %i.jr = landingpad { ptr, i32 }
          cleanup
  br label %bb.hq

bb.aq:                                            ; preds = %bb.am
  %i.js = getelementptr inbounds nuw i8, ptr %.sroa.0666.0, i64 32 ; 31 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #37
  store ptr %i.hf, ptr %38, align 8, !tbaa !7
  %i.jt = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.js) #37 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #37
  store i64 %i.jt, ptr %i.h, align 8, !tbaa !11
  %i.ju = icmp ugt i64 %i.jt, 15
  br i1 %i.ju, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.aq
  %i.jv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %38, ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef 0)
          to label %.noexc unwind label %bb.bd    ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.jv, ptr %38, align 8, !tbaa !13
  %i.jw = load i64, ptr %i.h, align 8, !tbaa !11
  store i64 %i.jw, ptr %i.hf, align 8, !tbaa !15
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.aq
  %i.jx = phi ptr [ %i.jv, %.noexc ], [ %i.hf, %bb.aq ] ; 2 uses
  switch i64 %i.jt, label %bb.as [
    i64 1, label %bb.ar
    i64 0, label %bb.at
  ]

bb.ar:                                            ; preds = %._crit_edge.i.i
  %i.jy = load i8, ptr %i.js, align 1, !tbaa !15
  store i8 %i.jy, ptr %i.jx, align 1, !tbaa !15
  br label %bb.at

bb.as:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jx, ptr nonnull align 1 %i.js, i64 %i.jt, i1 false)
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %._crit_edge.i.i
  %i.jz = load i64, ptr %i.h, align 8, !tbaa !11  ; 2 uses
  store i64 %i.jz, ptr %i.hg, align 8, !tbaa !16
  %i.ka = load ptr, ptr %38, align 8, !tbaa !13
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 %i.jz
  store i8 0, ptr %i.kb, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #37
  %i.kc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_1L19exr_tag_to_oiio_stdB5cxx11E, i64 16), align 8, !tbaa !80 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.kc, null
  %.pre = load ptr, ptr %38, align 8              ; 4 uses
  br i1 %.not10.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.at
  %i.kd = load i64, ptr %i.hg, align 8, !tbaa !16 ; 4 uses
  br label %bb.au

bb.au:                                            ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.kc, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_1L19exr_tag_to_oiio_stdB5cxx11E, i64 8), %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.ke = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.kf = load i64, ptr %i.ke, align 8, !tbaa !16 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.kd, i64 %i.kf) ; 2 uses
  %i.kg = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.kg, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.au
  %i.kh = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !13
  %i.kj = call i32 @memcmp(ptr noundef %i.ki, ptr noundef %.pre, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #37 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.kj, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.au
  %i.kk = sub i64 %i.kf, %i.kd
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.kk, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.kj, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.kl = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 2 uses
  %.19.i.i.i = select i1 %i.kl, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 5 uses
  %.1.in.v.i.i.i = select i1 %i.kl, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !86 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.au, !llvm.loop !262

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.km = icmp eq ptr %.19.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_1L19exr_tag_to_oiio_stdB5cxx11E, i64 8)
  br i1 %i.km, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_.exit, label %bb.av

bb.av:                                            ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.kn = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.ko = load i64, ptr %i.kn, align 8, !tbaa !16 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ko, i64 %i.kd) ; 2 uses
  %i.kp = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.kp, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.av
  %i.kq = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !13
  %i.ks = call i32 @memcmp(ptr noundef %.pre, ptr noundef %i.kr, i64 noundef %.sroa.speculated.i.i.i.i.i) #37 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.ks, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.av
  %i.kt = sub i64 %i.kd, %i.ko
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.kt, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.ks, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.ku = icmp slt i32 %.0.i.i.i.i.i, 0
  %spec.select.i.i = select i1 %i.ku, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_1L19exr_tag_to_oiio_stdB5cxx11E, i64 8), ptr %.19.i.i.i
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, %bb.at
  %.sroa.0.0.i.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_1L19exr_tag_to_oiio_stdB5cxx11E, i64 8), %bb.at ], [ getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_1L19exr_tag_to_oiio_stdB5cxx11E, i64 8), %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_.exit.i.i ], [ %spec.select.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i ] ; 3 uses
  %i.kv = icmp eq ptr %.pre, %i.hf
  br i1 %i.kv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_.exit
  %i.kw = load i64, ptr %i.hf, align 8, !tbaa !15
  %i.kx = add i64 %i.kw, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.kx) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #37
  %.not719 = icmp eq ptr %.sroa.0.0.i.i, getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_1L19exr_tag_to_oiio_stdB5cxx11E, i64 8)
  br i1 %.not719, label %bb.az, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ky = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 64
  store ptr %i.hh, ptr %39, align 8, !tbaa !7
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !13 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 72
  %i.lb = load i64, ptr %i.la, align 8, !tbaa !16 ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_112OpenEXRInput8PartInfo12parse_headerEPS1_PKN27OpenImageIO_v3_1_Imf__3_3_56HeaderE:bb.a
  %i.so = zext i8 %i.sn to i16
  %i.sp = xor i16 %i.so, 102
  %i.sq = or i16 %i.sl, %i.sp
  %i.sr = icmp ne i16 %i.sq, 0
  %i.ss = zext i1 %i.sr to i32
  %i.st = icmp eq i32 %i.ss, 0
  br i1 %i.st, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit438.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit452

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit438.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit438
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37
  %i.su = call ptr @strncpy(ptr noundef nonnull align 1 dereferenceable(256) %11, ptr noundef nonnull dereferenceable(1) %i.js, i64 noundef 255) #37 ; 0 uses
  store i8 0, ptr %i.ia, align 1, !tbaa !15
  %i.sv = load ptr, ptr %i.ey, align 8, !tbaa !80 ; 2 uses
  %.not10.i.i.i.i439 = icmp eq ptr %i.sv, null
  br i1 %.not10.i.i.i.i439, label %_ZNKSt3mapIN27OpenImageIO_v3_1_Imf__3_3_54NameEPNS0_9AttributeESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.thread.i450, label %.lr.ph.i.i.i.i440

.lr.ph.i.i.i.i440:                                ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit438.thread, %.lr.ph.i.i.i.i440
  %.012.i.i.i.i441 = phi ptr [ %.1.i.i.i.i446, %.lr.ph.i.i.i.i440 ], [ %i.sv, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit438.thread ] ; 3 uses
  %.0811.i.i.i.i442 = phi ptr [ %.19.i.i.i.i443, %.lr.ph.i.i.i.i440 ], [ %i.fa, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit438.thread ]
  %i.sw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i441, i64 32
  %i.sx = call i32 @strcmp(ptr noundef nonnull align 1 dereferenceable(256) %i.sw, ptr noundef nonnull align 1 dereferenceable(256) %11) #42
  %i.sy = icmp slt i32 %i.sx, 0                   ; 2 uses
  %.19.i.i.i.i443 = select i1 %i.sy, ptr %.0811.i.i.i.i442, ptr %.012.i.i.i.i441 ; 4 uses
  %.1.in.v.i.i.i.i444 = select i1 %i.sy, i64 24, i64 16
  %.1.in.i.i.i.i445 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i441, i64 %.1.in.v.i.i.i.i444
  %.1.i.i.i.i446 = load ptr, ptr %.1.in.i.i.i.i445, align 8, !tbaa !86 ; 2 uses
  %.not.i.i.i.i447 = icmp eq ptr %.1.i.i.i.i446, null
  br i1 %.not.i.i.i.i447, label %_ZNKSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_54NameESt4pairIKS1_PNS0_9AttributeEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i448, label %.lr.ph.i.i.i.i440, !llvm.loop !252

_ZNKSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_54NameESt4pairIKS1_PNS0_9AttributeEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i448: ; preds = %.lr.ph.i.i.i.i440
  %i.sz = icmp eq ptr %.19.i.i.i.i443, %i.fa
  br i1 %i.sz, label %_ZNKSt3mapIN27OpenImageIO_v3_1_Imf__3_3_54NameEPNS0_9AttributeESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.thread.i450, label %_ZNKSt3mapIN27OpenImageIO_v3_1_Imf__3_3_54NameEPNS0_9AttributeESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.i449

_ZNKSt3mapIN27OpenImageIO_v3_1_Imf__3_3_54NameEPNS0_9AttributeESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.thread.i450: ; preds = %_ZNKSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_54NameESt4pairIKS1_PNS0_9AttributeEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i448, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit438.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit452

_ZNKSt3mapIN27OpenImageIO_v3_1_Imf__3_3_54NameEPNS0_9AttributeESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.i449: ; preds = %_ZNKSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_54NameESt4pairIKS1_PNS0_9AttributeEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i448
  %i.ta = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i443, i64 32
  %i.tb = call i32 @strcmp(ptr noundef nonnull align 1 dereferenceable(256) %11, ptr noundef nonnull align 1 dereferenceable(256) %i.ta) #42
  %i.tc = icmp slt i32 %i.tb, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  br i1 %i.tc, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit452, label %bb.cg

bb.cg:                                            ; preds = %_ZNKSt3mapIN27OpenImageIO_v3_1_Imf__3_3_54NameEPNS0_9AttributeESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.i449
  %i.td = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i443, i64 288
  %i.te = load ptr, ptr %i.td, align 8, !tbaa !253 ; 2 uses
  %i.tf = icmp eq ptr %i.te, null
  br i1 %i.tf, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit452, label %_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header18findTypedAttributeINS_14TypedAttributeIN9Imath_3_14Vec2IfEEEEEEPKT_PKc.exit

_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header18findTypedAttributeINS_14TypedAttributeIN9Imath_3_14Vec2IfEEEEEEPKT_PKc.exit: ; preds = %bb.cg
  %i.tg = call ptr @__dynamic_cast(ptr nonnull %i.te, ptr nonnull @_ZTIN27OpenImageIO_v3_1_Imf__3_3_59AttributeE, ptr nonnull @_ZTIN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeIN9Imath_3_14Vec2IfEEEE, i64 0) #37 ; 2 uses
  %.not251 = icmp eq ptr %i.tg, null
  br i1 %.not251, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit452, label %bb.ch

bb.ch:                                            ; preds = %_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header18findTypedAttributeINS_14TypedAttributeIN9Imath_3_14Vec2IfEEEEEEPKT_PKc.exit
  %i.th = load ptr, ptr %39, align 8, !tbaa !13
  store ptr %i.th, ptr %47, align 8, !tbaa !91
  %i.ti = load i64, ptr %i.hi, align 8, !tbaa !16
  store i64 %i.ti, ptr %i.ib, align 8, !tbaa !89
  %i.tj = getelementptr inbounds nuw i8, ptr %i.tg, i64 8
  invoke void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPKv(ptr noundef nonnull align 8 dereferenceable(160) %i.s, ptr noundef nonnull dead_on_return %47, i64 523, ptr noundef nonnull %i.tj)
          to label %bb.go unwind label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.tk = landingpad { ptr, i32 }
          cleanup
  br label %bb.gq

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit452: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit438, %_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header18findTypedAttributeINS_14TypedAttributeIN9Imath_3_14Vec2IfEEEEEEPKT_PKc.exit, %_ZNKSt3mapIN27OpenImageIO_v3_1_Imf__3_3_54NameEPNS0_9AttributeESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.i449, %bb.cg, %_ZNKSt3mapIN27OpenImageIO_v3_1_Imf__3_3_54NameEPNS0_9AttributeESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.thread.i450
  %i.tl = load i16, ptr %.pre867, align 1
  %i.tm = xor i16 %i.tl, 12918
  %i.tn = getelementptr i8, ptr %.pre867, i64 2
  %i.to = load i8, ptr %i.tn, align 1
  %i.tp = zext i8 %i.to to i16
  %i.tq = xor i16 %i.tp, 105
  %i.tr = or i16 %i.tm, %i.tq
  %i.ts = icmp ne i16 %i.tr, 0
  %i.tt = zext i1 %i.ts to i32
  %i.tu = icmp eq i32 %i.tt, 0
  br i1 %i.tu, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit452.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit530

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit452.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit452
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37
  %i.tv = call ptr @strncpy(ptr noundef nonnull align 1 dereferenceable(256) %10, ptr noundef nonnull dereferenceable(1) %i.js, i64 noundef 255) #37 ; 0 uses
  store i8 0, ptr %i.ic, align 1, !tbaa !15
  %i.tw = load ptr, ptr %i.ey, align 8, !tbaa !80 ; 2 uses
  %.not10.i.i.i.i453 = icmp eq ptr %i.tw, null
  br i1 %.not10.i.i.i.i453, label %_ZNKSt3mapIN27OpenImageIO_v3_1_Imf__3_3_54NameEPNS0_9AttributeESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.thread.i464, label %.lr.ph.i.i.i.i454

.lr.ph.i.i.i.i454:                                ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit452.thread, %.lr.ph.i.i.i.i454
  %.012.i.i.i.i455 = phi ptr [ %.1.i.i.i.i460, %.lr.ph.i.i.i.i454 ], [ %i.tw, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit452.thread ] ; 3 uses
  %.0811.i.i.i.i456 = phi ptr [ %.19.i.i.i.i457, %.lr.ph.i.i.i.i454 ], [ %i.fa, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit452.thread ]
  %i.tx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i455, i64 32
  %i.ty = call i32 @strcmp(ptr noundef nonnull align 1 dereferenceable(256) %i.tx, ptr noundef nonnull align 1 dereferenceable(256) %10) #42
  %i.tz = icmp slt i32 %i.ty, 0                   ; 2 uses
  %.19.i.i.i.i457 = select i1 %i.tz, ptr %.0811.i.i.i.i456, ptr %.012.i.i.i.i455 ; 4 uses
  %.1.in.v.i.i.i.i458 = select i1 %i.tz, i64 24, i64 16
  %.1.in.i.i.i.i459 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i455, i64 %.1.in.v.i.i.i.i458
  %.1.i.i.i.i460 = load ptr, ptr %.1.in.i.i.i.i459, align 8, !tbaa !86 ; 2 uses
  %.not.i.i.i.i461 = icmp eq ptr %.1.i.i.i.i460, null
  br i1 %.not.i.i.i.i461, label %_ZNKSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_54NameESt4pairIKS1_PNS0_9AttributeEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i462, label %.lr.ph.i.i.i.i454, !llvm.loop !252

_ZNKSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_54NameESt4pairIKS1_PNS0_9AttributeEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i462: ; preds = %.lr.ph.i.i.i.i454
  %i.ua = icmp eq ptr %.19.i.i.i.i457, %i.fa
  br i1 %i.ua, label %_ZNKSt3mapIN27OpenImageIO_v3_1_Imf__3_3_54NameEPNS0_9AttributeESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.thread.i464, label %_ZNKSt3mapIN27OpenImageIO_v3_1_Imf__3_3_54NameEPNS0_9AttributeESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.i463

_ZNKSt3mapIN27OpenImageIO_v3_1_Imf__3_3_54NameEPNS0_9AttributeESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.thread.i464: ; preds = %_ZNKSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_54NameESt4pairIKS1_PNS0_9AttributeEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i462, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit452.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit530

_ZNKSt3mapIN27OpenImageIO_v3_1_Imf__3_3_54NameEPNS0_9AttributeESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.i463: ; preds = %_ZNKSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_54NameESt4pairIKS1_PNS0_9AttributeEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i462
  %i.ub = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i457, i64 32
  %i.uc = call i32 @strcmp(ptr noundef nonnull align 1 dereferenceable(256) %10, ptr noundef nonnull align 1 dereferenceable(256) %i.ub) #42
  %i.ud = icmp slt i32 %i.uc, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  br i1 %i.ud, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit530, label %bb.cj

bb.cj:                                            ; preds = %_ZNKSt3mapIN27OpenImageIO_v3_1_Imf__3_3_54NameEPNS0_9AttributeESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.i463
  %i.ue = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i457, i64 288
  %i.uf = load ptr, ptr %i.ue, align 8, !tbaa !253 ; 2 uses
  %i.ug = icmp eq ptr %i.uf, null
  br i1 %i.ug, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit530, label %_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header18findTypedAttributeINS_14TypedAttributeIN9Imath_3_14Vec2IiEEEEEEPKT_PKc.exit

_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header18findTypedAttributeINS_14TypedAttributeIN9Imath_3_14Vec2IiEEEEEEPKT_PKc.exit: ; preds = %bb.cj
  %i.uh = call ptr @__dynamic_cast(ptr nonnull %i.uf, ptr nonnull @_ZTIN27OpenImageIO_v3_1_Imf__3_3_59AttributeE, ptr nonnull @_ZTIN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeIN9Imath_3_14Vec2IiEEEE, i64 0) #37 ; 2 uses
  %.not252 = icmp eq ptr %i.uh, null
  br i1 %.not252, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit530, label %bb.ck

bb.ck:                                            ; preds = %_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header18findTypedAttributeINS_14TypedAttributeIN9Imath_3_14Vec2IiEEEEEEPKT_PKc.exit
  %i.ui = load ptr, ptr %39, align 8, !tbaa !13
  store ptr %i.ui, ptr %48, align 8, !tbaa !91
  %i.uj = load i64, ptr %i.hi, align 8, !tbaa !16
  store i64 %i.uj, ptr %i.id, align 8, !tbaa !89
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uh, i64 8
  invoke void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPKv(ptr noundef nonnull align 8 dereferenceable(160) %i.s, ptr noundef nonnull dead_on_return %48, i64 519, ptr noundef nonnull %i.uk)
          to label %bb.go unwind label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.ul = landingpad { ptr, i32 }
          cleanup
  br label %bb.gq

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit466: ; preds = %bb.bm
  %.pre870 = load ptr, ptr %40, align 8, !tbaa !13
  %bcmp.i465 = call i32 @bcmp(ptr %.pre870, ptr nonnull @.str.91, i64 %i.mo)
  %i.um = icmp eq i32 %bcmp.i465, 0
  br i1 %i.um, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit466.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit546.thread715

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit466.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit466
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  %i.un = call ptr @strncpy(ptr noundef nonnull align 1 dereferenceable(256) %9, ptr noundef nonnull dereferenceable(1) %i.js, i64 noundef 255) #37 ; 0 uses
  store i8 0, ptr %i.ie, align 1, !tbaa !15
  %i.uo = load ptr, ptr %i.ey, align 8, !tbaa !80 ; 2 uses
  %.not10.i.i.i.i467 = icmp eq ptr %i.uo, null
  br i1 %.not10.i.i.i.i467, label %_ZNKSt3mapIN27OpenImageIO_v3_1_Imf__3_3_54NameEPNS0_9AttributeESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.thread.i478, label %.lr.ph.i.i.i.i468

.lr.ph.i.i.i.i468:                                ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit466.thread, %.lr.ph.i.i.i.i468
  %.012.i.i.i.i469 = phi ptr [ %.1.i.i.i.i474, %.lr.ph.i.i.i.i468 ], [ %i.uo, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit466.thread ] ; 3 uses
  %.0811.i.i.i.i470 = phi ptr [ %.19.i.i.i.i471, %.lr.ph.i.i.i.i468 ], [ %i.fa, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit466.thread ]
  %i.up = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i469, i64 32
  %i.uq = call i32 @strcmp(ptr noundef nonnull align 1 dereferenceable(256) %i.up, ptr noundef nonnull align 1 dereferenceable(256) %9) #42
  %i.ur = icmp slt i32 %i.uq, 0                   ; 2 uses
  %.19.i.i.i.i471 = select i1 %i.ur, ptr %.0811.i.i.i.i470, ptr %.012.i.i.i.i469 ; 4 uses
  %.1.in.v.i.i.i.i472 = select i1 %i.ur, i64 24, i64 16
  %.1.in.i.i.i.i473 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i469, i64 %.1.in.v.i.i.i.i472
  %.1.i.i.i.i474 = load ptr, ptr %.1.in.i.i.i.i473, align 8, !tbaa !86 ; 2 uses
  %.not.i.i.i.i475 = icmp eq ptr %.1.i.i.i.i474, null
  br i1 %.not.i.i.i.i475, label %_ZNKSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_54NameESt4pairIKS1_PNS0_9AttributeEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i476, label %.lr.ph.i.i.i.i468, !llvm.loop !252

_ZNKSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_54NameESt4pairIKS1_PNS0_9AttributeEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i476: ; preds = %.lr.ph.i.i.i.i468
  %i.us = icmp eq ptr %.19.i.i.i.i471, %i.fa
  br i1 %i.us, label %_ZNKSt3mapIN27OpenImageIO_v3_1_Imf__3_3_54NameEPNS0_9AttributeESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.thread.i478, label %_ZNKSt3mapIN27OpenImageIO_v3_1_Imf__3_3_54NameEPNS0_9AttributeESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.i477

_ZNKSt3mapIN27OpenImageIO_v3_1_Imf__3_3_54NameEPNS0_9AttributeESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.thread.i478: ; preds = %_ZNKSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_54NameESt4pairIKS1_PNS0_9AttributeEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i476, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit466.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit546.thread715

_ZNKSt3mapIN27OpenImageIO_v3_1_Imf__3_3_54NameEPNS0_9AttributeESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.i477: ; preds = %_ZNKSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_54NameESt4pairIKS1_PNS0_9AttributeEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i476
  %i.ut = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i471, i64 32
  %i.uu = call i32 @strcmp(ptr noundef nonnull align 1 dereferenceable(256) %9, ptr noundef nonnull align 1 dereferenceable(256) %i.ut) #42
  %i.uv = icmp slt i32 %i.uu, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  br i1 %i.uv, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit546.thread715, label %bb.cm

bb.cm:                                            ; preds = %_ZNKSt3mapIN27OpenImageIO_v3_1_Imf__3_3_54NameEPNS0_9AttributeESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.i477
  %i.uw = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i471, i64 288
  %i.ux = load ptr, ptr %i.uw, align 8, !tbaa !253 ; 2 uses
  %i.uy = icmp eq ptr %i.ux, null
  br i1 %i.uy, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit546.thread715, label %_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header18findTypedAttributeINS_14TypedAttributeISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEEEEPKT_PKc.exit

_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header18findTypedAttributeINS_14TypedAttributeISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEEEEPKT_PKc.exit: ; preds = %bb.cm
  %i.uz = call ptr @__dynamic_cast(ptr nonnull %i.ux, ptr nonnull @_ZTIN27OpenImageIO_v3_1_Imf__3_3_59AttributeE, ptr nonnull @_ZTIN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEEE, i64 0) #37 ; 3 uses
  %.not253 = icmp eq ptr %i.uz, null
  br i1 %.not253, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit546.thread715, label %bb.cn

bb.cn:                                            ; preds = %_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header18findTypedAttributeINS_14TypedAttributeISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEEEEPKT_PKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #37
  %i.va = getelementptr inbounds nuw i8, ptr %i.uz, i64 8 ; 2 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %i.uz, i64 16 ; 2 uses
  %i.vc = load ptr, ptr %i.vb, align 8, !tbaa !106 ; 2 uses
  %i.vd = load ptr, ptr %i.va, align 8, !tbaa !110 ; 2 uses
  %i.ve = ptrtoint ptr %i.vc to i64
  %i.vf = ptrtoint ptr %i.vd to i64
  %i.vg = sub i64 %i.ve, %i.vf                    ; 5 uses
  %.not.i.i.i.i479 = icmp eq ptr %i.vc, %i.vd
  br i1 %.not.i.i.i.i479, label %.noexc482, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.vh = icmp ugt i64 %i.vg, 9223372036854775776
  br i1 %i.vh, label %.noexc.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, !prof !220

.noexc.i.i:                                       ; preds = %bb.co
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #36
          to label %.noexc481 unwind label %.loopexit.split-lp722

.noexc481:                                        ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.co
  %i.vi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.vg) #40
          to label %.noexc482 unwind label %.loopexit721

.noexc482:                                        ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %bb.cn
  %i.vj = phi ptr [ null, %bb.cn ], [ %i.vi, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i ] ; 12 uses
  store ptr %i.vj, ptr %49, align 8, !tbaa !110
  store ptr %i.vj, ptr %i.if, align 8, !tbaa !106
  %79 = getelementptr inbounds nuw i8, ptr %i.vj, i64 %i.vg
  store ptr %79, ptr %i.ig, align 8, !tbaa !164
  %80 = load ptr, ptr %i.va, align 8, !tbaa !177
  %81 = load ptr, ptr %i.vb, align 8, !tbaa !177
  %i.vk = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %80, ptr %81, ptr noundef %i.vj)
          to label %bb.cr unwind label %bb.cp     ; 4 uses

bb.cp:                                            ; preds = %.noexc482
  %i.vl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i480 = icmp eq ptr %i.vj, null
  br i1 %.not.i.i.i480, label %.body, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  call void @_ZdlPvm(ptr noundef nonnull %i.vj, i64 noundef %i.vg) #38
  br label %.body

bb.cr:                                            ; preds = %.noexc482
  store ptr %i.vk, ptr %i.if, align 8, !tbaa !106
  %i.vm = ptrtoint ptr %i.vk to i64
  %i.vn = ptrtoint ptr %i.vj to i64
  %i.vo = sub i64 %i.vm, %i.vn                    ; 2 uses
  %i.vp = ashr exact i64 %i.vo, 5                 ; 3 uses
  %i.vq = icmp ugt i64 %i.vp, 1152921504606846975
  br i1 %i.vq, label %bb.cs, label %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i

bb.cs:                                            ; preds = %bb.cr
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.224) #36
          to label %.noexc484 unwind label %.loopexit.split-lp727

.noexc484:                                        ; preds = %bb.cs
  unreachable

_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %bb.cr
  %.not.i.i.i.i483 = icmp eq ptr %i.vk, %i.vj     ; 2 uses
  br i1 %.not.i.i.i.i483, label %._crit_edge, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.vr = ashr exact i64 %i.vo, 2                 ; 3 uses
  %i.vs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.vr) #40
          to label %.lr.ph.preheader unwind label %.loopexit726 ; 7 uses

.lr.ph.preheader:                                 ; preds = %.lr.ph.preheader.i.i.i.i.i
  %i.vt = getelementptr inbounds nuw [8 x i8], ptr %i.vs, i64 %i.vp
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.vs, i8 0, i64 %i.vr, i1 false), !tbaa !147
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.vs, i64 %i.vr
  %i.vu = ptrtoint ptr %scevgep.i.i.i.i.i to i64
  %i.vv = ptrtoint ptr %i.vt to i64               ; 2 uses
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.ct, %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %.0.lcssa.i.i.i.i.i996 = phi i64 [ 0, %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ], [ %i.vu, %bb.ct ]
  %.sink.i994 = phi i64 [ 0, %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ], [ %i.vv, %bb.ct ] ; 2 uses
  %.sroa.0634.0992 = phi ptr [ null, %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ], [ %i.vs, %bb.ct ] ; 4 uses
  %i.vw = ptrtoint ptr %.sroa.0634.0992 to i64    ; 3 uses
  %i.vx = sub i64 %.0.lcssa.i.i.i.i.i996, %i.vw
  %i.vy = load ptr, ptr %39, align 8, !tbaa !13
  store ptr %i.vy, ptr %50, align 8, !tbaa !91
  %i.vz = load i64, ptr %i.hi, align 8, !tbaa !16
  store i64 %i.vz, ptr %i.ii, align 8, !tbaa !89
  %.sroa.8632.0.insert.ext = shl i64 %i.vx, 29
  %.sroa.8632.0.insert.shift = and i64 %.sroa.8632.0.insert.ext, -4294967296
  %.sroa.0628.0.insert.insert = or disjoint i64 %.sroa.8632.0.insert.shift, 269
  invoke void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPKv(ptr noundef nonnull align 8 dereferenceable(160) %i.s, ptr noundef nonnull dead_on_return %50, i64 %.sroa.0628.0.insert.insert, ptr noundef nonnull %.sroa.0634.0992)
          to label %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EED2Ev.exit unwind label %.thread703

.loopexit721:                                     ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i
  %lpad.loopexit723 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp722:                            ; preds = %.noexc.i.i
  %lpad.loopexit.split-lp724 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit726:                                     ; preds = %.lr.ph.preheader.i.i.i.i.i
  %lpad.loopexit728 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EED2Ev.exit493

.loopexit.split-lp727:                            ; preds = %bb.cs
  %lpad.loopexit.split-lp729 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EED2Ev.exit493

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ct
  %.0196855 = phi i64 [ %i.wg, %bb.ct ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.wa = getelementptr inbounds nuw [32 x i8], ptr %i.vj, i64 %.0196855
  %i.wb = getelementptr inbounds nuw [8 x i8], ptr %i.vs, i64 %.0196855
  %i.wc = load ptr, ptr %i.wa, align 8, !tbaa !13 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %.not.i.i.i486 = icmp eq ptr %i.wc, null
  br i1 %.not.i.i.i486, label %bb.ct, label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.i.i.i

_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.i.i.i: ; preds = %.lr.ph
  store ptr %i.wc, ptr %8, align 8, !tbaa !91
  %i.wd = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.wc) #37
  store i64 %i.wd, ptr %i.ih, align 8, !tbaa !89
  %i.we = invoke noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %8)
          to label %bb.ct unwind label %._crit_edge880

bb.ct:                                            ; preds = %.lr.ph, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.i.i.i
  %i.wf = phi ptr [ null, %.lr.ph ], [ %i.we, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.i.i.i ]
  store ptr %i.wf, ptr %i.wb, align 8, !tbaa !147
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.wg = add nuw i64 %.0196855, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.wg, %i.vp
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !263

_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EED2Ev.exit: ; preds = %._crit_edge
  %i.wh = sub i64 %.sink.i994, %i.vw
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0634.0992, i64 noundef %i.wh) #38
  br i1 %.not.i.i.i.i483, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i489

.lr.ph.i.i.i489:                                  ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.wn, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.vj, %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EED2Ev.exit ] ; 3 uses
  %i.wi = load ptr, ptr %.05.i.i.i, align 8, !tbaa !13 ; 2 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.wk = icmp eq ptr %i.wi, %i.wj
  br i1 %i.wk, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i489
  %i.wl = load i64, ptr %i.wj, align 8, !tbaa !15
  %i.wm = add i64 %i.wl, 1
  call void @_ZdlPvm(ptr noundef %i.wi, i64 noundef %i.wm) #38
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i489, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.wn = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i490 = icmp eq ptr %i.wn, %i.vk
  br i1 %.not.i.i.i490, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i489, !llvm.loop !163

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EED2Ev.exit
  %.not.i.i1.i = icmp eq ptr %i.vj, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.cu

bb.cu:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %i.vj, i64 noundef %i.vg) #38
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #37
  br label %bb.go

.thread703:                                       ; preds = %._crit_edge
  %i.wo = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

._crit_edge880:                                   ; preds = %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.i.i.i
  %i.wp = landingpad { ptr, i32 }
          cleanup
  %.pre881 = ptrtoint ptr %i.vs to i64
  br label %bb.cv

bb.cv:                                            ; preds = %._crit_edge880, %.thread703
  %.sink.i995 = phi i64 [ %i.vv, %._crit_edge880 ], [ %.sink.i994, %.thread703 ]
  %.sroa.0634.0993 = phi ptr [ %i.vs, %._crit_edge880 ], [ %.sroa.0634.0992, %.thread703 ]
  %.pre-phi882 = phi i64 [ %.pre881, %._crit_edge880 ], [ %i.vw, %.thread703 ]
  %.pn280706 = phi { ptr, i32 } [ %i.wp, %._crit_edge880 ], [ %i.wo, %.thread703 ]
  %i.wq = sub i64 %.sink.i995, %.pre-phi882
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0634.0993, i64 noundef %i.wq) #38
  br label %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EED2Ev.exit493

_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EED2Ev.exit493: ; preds = %.loopexit726, %.loopexit.split-lp727, %bb.cv
  %.pn280.pn = phi { ptr, i32 } [ %.pn280706, %bb.cv ], [ %lpad.loopexit.split-lp729, %.loopexit.split-lp727 ], [ %lpad.loopexit728, %.loopexit726 ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %49) #37
  br label %.body

.body:                                            ; preds = %.loopexit721, %.loopexit.split-lp722, %bb.cq, %bb.cp, %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EED2Ev.exit493
  %.pn280.pn.pn = phi { ptr, i32 } [ %.pn280.pn, %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EED2Ev.exit493 ], [ %i.vl, %bb.cp ], [ %i.vl, %bb.cq ], [ %lpad.loopexit723, %.loopexit721 ], [ %lpad.loopexit.split-lp724, %.loopexit.split-lp722 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #37
  br label %bb.gq

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit495: ; preds = %bb.bm
  %.pre873.a = load ptr, ptr %40, align 8, !tbaa !13
  %bcmp.i494 = call i32 @bcmp(ptr %.pre873.a, ptr nonnull @.str.92, i64 %i.mo)
  %i.wr = icmp eq i32 %bcmp.i494, 0
  br i1 %i.wr, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit495.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit546.thread715

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit495.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit495
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  %i.ws = call ptr @strncpy(ptr noundef nonnull align 1 dereferenceable(256) %7, ptr noundef nonnull dereferenceable(1) %i.js, i64 noundef 255) #37 ; 0 uses
  store i8 0, ptr %i.ij, align 1, !tbaa !15
  %i.wt = load ptr, ptr %i.ey, align 8, !tbaa !80 ; 2 uses
  %.not10.i.i.i.i496 = icmp eq ptr %i.wt, null
  br i1 %.not10.i.i.i.i496, label %_ZNKSt3mapIN27OpenImageIO_v3_1_Imf__3_3_54NameEPNS0_9AttributeESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.thread.i507, label %.lr.ph.i.i.i.i497

.lr.ph.i.i.i.i497:                                ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit495.thread, %.lr.ph.i.i.i.i497
  %.012.i.i.i.i498 = phi ptr [ %.1.i.i.i.i503, %.lr.ph.i.i.i.i497 ], [ %i.wt, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit495.thread ] ; 3 uses
  %.0811.i.i.i.i499 = phi ptr [ %.19.i.i.i.i500, %.lr.ph.i.i.i.i497 ], [ %i.fa, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit495.thread ]
  %i.wu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i498, i64 32
  %i.wv = call i32 @strcmp(ptr noundef nonnull align 1 dereferenceable(256) %i.wu, ptr noundef nonnull align 1 dereferenceable(256) %7) #42
  %i.ww = icmp slt i32 %i.wv, 0                   ; 2 uses
  %.19.i.i.i.i500 = select i1 %i.ww, ptr %.0811.i.i.i.i499, ptr %.012.i.i.i.i498 ; 4 uses
  %.1.in.v.i.i.i.i501 = select i1 %i.ww, i64 24, i64 16
  %.1.in.i.i.i.i502 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i498, i64 %.1.in.v.i.i.i.i501
  %.1.i.i.i.i503 = load ptr, ptr %.1.in.i.i.i.i502, align 8, !tbaa !86 ; 2 uses
  %.not.i.i.i.i504 = icmp eq ptr %.1.i.i.i.i503, null
  br i1 %.not.i.i.i.i504, label %_ZNKSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_54NameESt4pairIKS1_PNS0_9AttributeEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i505, label %.lr.ph.i.i.i.i497, !llvm.loop !252

_ZNKSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_54NameESt4pairIKS1_PNS0_9AttributeEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i505: ; preds = %.lr.ph.i.i.i.i497
  %i.wx = icmp eq ptr %.19.i.i.i.i500, %i.fa
  br i1 %i.wx, label %_ZNKSt3mapIN27OpenImageIO_v3_1_Imf__3_3_54NameEPNS0_9AttributeESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.thread.i507, label %_ZNKSt3mapIN27OpenImageIO_v3_1_Imf__3_3_54NameEPNS0_9AttributeESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.i506

_ZNKSt3mapIN27OpenImageIO_v3_1_Imf__3_3_54NameEPNS0_9AttributeESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.thread.i507: ; preds = %_ZNKSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_54NameESt4pairIKS1_PNS0_9AttributeEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i505, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit495.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit546.thread715

_ZNKSt3mapIN27OpenImageIO_v3_1_Imf__3_3_54NameEPNS0_9AttributeESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.i506: ; preds = %_ZNKSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_54NameESt4pairIKS1_PNS0_9AttributeEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i505
  %i.wy = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i500, i64 32
  %i.wz = call i32 @strcmp(ptr noundef nonnull align 1 dereferenceable(256) %7, ptr noundef nonnull align 1 dereferenceable(256) %i.wy) #42
  %i.xa = icmp slt i32 %i.wz, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br i1 %i.xa, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit546.thread715, label %bb.cw

bb.cw:                                            ; preds = %_ZNKSt3mapIN27OpenImageIO_v3_1_Imf__3_3_54NameEPNS0_9AttributeESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.i506
  %i.xb = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i500, i64 288
  %i.xc = load ptr, ptr %i.xb, align 8, !tbaa !253 ; 2 uses
  %i.xd = icmp eq ptr %i.xc, null
  br i1 %i.xd, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit546.thread715, label %_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header18findTypedAttributeINS_14TypedAttributeISt6vectorIfSaIfEEEEEEPKT_PKc.exit

_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header18findTypedAttributeINS_14TypedAttributeISt6vectorIfSaIfEEEEEEPKT_PKc.exit: ; preds = %bb.cw
  %i.xe = call ptr @__dynamic_cast(ptr nonnull %i.xc, ptr nonnull @_ZTIN27OpenImageIO_v3_1_Imf__3_3_59AttributeE, ptr nonnull @_ZTIN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeISt6vectorIfSaIfEEEE, i64 0) #37 ; 3 uses
  %.not254 = icmp eq ptr %i.xe, null
  br i1 %.not254, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit546.thread715, label %bb.cx

bb.cx:                                            ; preds = %_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header18findTypedAttributeINS_14TypedAttributeISt6vectorIfSaIfEEEEEEPKT_PKc.exit
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xe, i64 8 ; 2 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xe, i64 16 ; 2 uses
  %i.xh = load ptr, ptr %i.xg, align 8, !tbaa !140 ; 2 uses
  %i.xi = load ptr, ptr %i.xf, align 8, !tbaa !137 ; 3 uses
  %i.xj = ptrtoint ptr %i.xh to i64               ; 2 uses
  %i.xk = ptrtoint ptr %i.xi to i64               ; 2 uses
  %i.xl = sub i64 %i.xj, %i.xk                    ; 4 uses
  %.not.i.i.i.i508 = icmp eq ptr %i.xh, %i.xi
  br i1 %.not.i.i.i.i508, label %.noexc511, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.xm = icmp ugt i64 %i.xl, 9223372036854775804
  br i1 %i.xm, label %.noexc.i.i509, label %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i, !prof !220

.noexc.i.i509:                                    ; preds = %bb.cy
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #36
          to label %.noexc510 unwind label %.loopexit.split-lp732

.noexc510:                                        ; preds = %.noexc.i.i509
  unreachable

_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.cy
  %i.xn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.xl) #40
          to label %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i..noexc511_crit_edge unwind label %.loopexit731

_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i..noexc511_crit_edge: ; preds = %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i
  %.pre874 = load ptr, ptr %i.xf, align 8, !tbaa !139 ; 2 uses
  %.pre875.a = load ptr, ptr %i.xg, align 8, !tbaa !139
  %.pre877 = ptrtoint ptr %.pre875.a to i64
  %.pre878 = ptrtoint ptr %.pre874 to i64
  br label %.noexc511

.noexc511:                                        ; preds = %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i..noexc511_crit_edge, %bb.cx
  %.pre-phi879 = phi i64 [ %.pre878, %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i..noexc511_crit_edge ], [ %i.xk, %bb.cx ]
  %.pre-phi = phi i64 [ %.pre877, %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i..noexc511_crit_edge ], [ %i.xj, %bb.cx ]
  %i.xo = phi ptr [ %.pre874, %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i..noexc511_crit_edge ], [ %i.xi, %bb.cx ] ; 2 uses
  %i.xp = phi ptr [ %i.xn, %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i..noexc511_crit_edge ], [ null, %bb.cx ] ; 5 uses
  %i.xq = sub i64 %.pre-phi, %.pre-phi879         ; 4 uses
  %i.xr = icmp sgt i64 %i.xq, 4
  br i1 %i.xr, label %bb.cz, label %bb.da, !prof !264

bb.cz:                                            ; preds = %.noexc511
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.xp, ptr align 4 %i.xo, i64 %i.xq, i1 false)
  br label %bb.dc

bb.da:                                            ; preds = %.noexc511
  %i.xs = icmp eq i64 %i.xq, 4
  br i1 %i.xs, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.xt = load float, ptr %i.xo, align 4, !tbaa !141
  store float %i.xt, ptr %i.xp, align 4, !tbaa !141
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da, %bb.cz
  %i.xu = load ptr, ptr %39, align 8, !tbaa !13
  store ptr %i.xu, ptr %51, align 8, !tbaa !91
  %i.xv = load i64, ptr %i.hi, align 8, !tbaa !16
  store i64 %i.xv, ptr %i.ik, align 8, !tbaa !89
  %.sroa.8622.0.insert.ext = shl i64 %i.xq, 30
  %.sroa.8622.0.insert.shift = and i64 %.sroa.8622.0.insert.ext, -4294967296
  %.sroa.0618.0.insert.insert = or disjoint i64 %.sroa.8622.0.insert.shift, 267
  invoke void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPKv(ptr noundef nonnull align 8 dereferenceable(160) %i.s, ptr noundef nonnull dead_on_return %51, i64 %.sroa.0618.0.insert.insert, ptr noundef nonnull %i.xp)
          to label %_ZNSt6vectorIfSaIfEED2Ev.exit unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit514

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.dc
  call void @_ZdlPvm(ptr noundef nonnull %i.xp, i64 noundef %i.xl) #38
  br label %bb.go

.loopexit731:                                     ; preds = %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i
  %lpad.loopexit733 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gq

.loopexit.split-lp732:                            ; preds = %.noexc.i.i509
  %lpad.loopexit.split-lp734 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gq

_ZNSt6vectorIfSaIfEED2Ev.exit514:                 ; preds = %bb.dc
  %i.xw = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.xp, i64 noundef %i.xl) #38
  br label %bb.gq

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit516: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header18findTypedAttributeINS_14TypedAttributeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEPKT_PKc.exit, %_ZNKSt3mapIN27OpenImageIO_v3_1_Imf__3_3_54NameEPNS0_9AttributeESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.i348, %bb.bn, %_ZNKSt3mapIN27OpenImageIO_v3_1_Imf__3_3_54NameEPNS0_9AttributeESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.thread.i349
  %bcmp.i515 = call i32 @bcmp(ptr nonnull %i.mp, ptr nonnull @.str.93, i64 %i.mo)
  %i.xx = icmp eq i32 %bcmp.i515, 0
  br i1 %i.xx, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit516.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit546.thread715

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit516.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit516
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  %i.xy = call ptr @strncpy(ptr noundef nonnull align 1 dereferenceable(256) %6, ptr noundef nonnull dereferenceable(1) %i.js, i64 noundef 255) #37 ; 0 uses
  store i8 0, ptr %i.il, align 1, !tbaa !15
  %i.xz = load ptr, ptr %i.ey, align 8, !tbaa !80 ; 2 uses
  %.not10.i.i.i.i517 = icmp eq ptr %i.xz, null
  br i1 %.not10.i.i.i.i517, label %_ZNKSt3mapIN27OpenImageIO_v3_1_Imf__3_3_54NameEPNS0_9AttributeESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.thread.i528, label %.lr.ph.i.i.i.i518

.lr.ph.i.i.i.i518:                                ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit516.thread, %.lr.ph.i.i.i.i518
  %.012.i.i.i.i519 = phi ptr [ %.1.i.i.i.i524, %.lr.ph.i.i.i.i518 ], [ %i.xz, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit516.thread ] ; 3 uses
  %.0811.i.i.i.i520 = phi ptr [ %.19.i.i.i.i521, %.lr.ph.i.i.i.i518 ], [ %i.fa, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit516.thread ]
  %i.ya = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i519, i64 32
  %i.yb = call i32 @strcmp(ptr noundef nonnull align 1 dereferenceable(256) %i.ya, ptr noundef nonnull align 1 dereferenceable(256) %6) #42
  %i.yc = icmp slt i32 %i.yb, 0                   ; 2 uses
  %.19.i.i.i.i521 = select i1 %i.yc, ptr %.0811.i.i.i.i520, ptr %.012.i.i.i.i519 ; 4 uses
  %.1.in.v.i.i.i.i522 = select i1 %i.yc, i64 24, i64 16
  %.1.in.i.i.i.i523 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i519, i64 %.1.in.v.i.i.i.i522
  %.1.i.i.i.i524 = load ptr, ptr %.1.in.i.i.i.i523, align 8, !tbaa !86 ; 2 uses
  %.not.i.i.i.i525 = icmp eq ptr %.1.i.i.i.i524, null
  br i1 %.not.i.i.i.i525, label %_ZNKSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_54NameESt4pairIKS1_PNS0_9AttributeEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i526, label %.lr.ph.i.i.i.i518, !llvm.loop !252
end_hunk_1
