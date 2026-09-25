Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/YAMLProfileWriter?download=true
inline.NumInlined: 4718
inline.NumDeleted: 2447
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN4llvm4bolt17YAMLProfileWriter7convertERKNS0_14BinaryFunctionEbRKNS1_14InlineTreeDescEPKNS0_22BoltAddressTranslationE:bb.a
_ZNK4llvm4bolt22BoltAddressTranslation13isBATFunctionEm.exit.thread.i: ; preds = %_ZNK4llvm4bolt22BoltAddressTranslation13isBATFunctionEm.exit.i, %_ZNKSt8_Rb_treeImSt4pairIKmSt8multimapIjjSt4lessIjESaIS0_IKjjEEEESt10_Select1stIS9_ES3_ImESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i, %bb.ag, %bb.af
  %i.hq = call noundef ptr @_ZN4llvm4bolt14BinaryFunction29getBasicBlockContainingOffsetEm(ptr noundef nonnull align 8 dereferenceable(1360) %i.hf, i64 noundef 0) #23 ; 2 uses
  %.not26.i = icmp eq ptr %i.hq, null
  br i1 %.not26.i, label %_ZNK4llvm4bolt22BoltAddressTranslation13isBATFunctionEm.exit.thread..thread35_crit_edge.i, label %bb.ai

_ZNK4llvm4bolt22BoltAddressTranslation13isBATFunctionEm.exit.thread..thread35_crit_edge.i: ; preds = %_ZNK4llvm4bolt22BoltAddressTranslation13isBATFunctionEm.exit.thread.i
  %.pre.i194 = load i64, ptr %i.a, align 8, !tbaa !50
  %i.hr = trunc i64 %.pre.i194 to i32
  br label %.thread35.i

bb.ai:                                            ; preds = %_ZNK4llvm4bolt22BoltAddressTranslation13isBATFunctionEm.exit.thread.i
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 112
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !200 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hf, i64 280
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !201, !noalias !583
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hf, i64 288
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !202, !noalias !583 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hf, i64 300
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !203, !noalias !583 ; 2 uses
  %i.ia = icmp eq i32 %i.hz, 0
  br i1 %i.ia, label %.loopexit.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ib = add i32 %i.hz, -1                       ; 2 uses
  %i.ic = ptrtoint ptr %i.ht to i64
  %i.id = mul i64 %i.ic, -4658895280553007687     ; 2 uses
  %i.ie = lshr i64 %i.id, 31
  %i.if = xor i64 %i.ie, %i.id
  %i.ig = trunc i64 %i.if to i32
  %i.ih = and i32 %i.ib, %i.ig                    ; 3 uses
  %i.ii = zext i32 %i.ih to i64                   ; 2 uses
  %i.ij = lshr i64 %i.ii, 5
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %i.ij
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !204
  %i.im = and i32 %i.ih, 31
  %i.in = lshr i32 %i.il, %i.im
  %i.io = trunc i32 %i.in to i1
  br i1 %i.io, label %.lr.ph.i.i.i.i27.i, label %.loopexit.i, !prof !205

.lr.ph.i.i.i.i27.i:                               ; preds = %bb.aj, %bb.ak
  %i.ip = phi i64 [ %i.iv, %bb.ak ], [ %i.ii, %bb.aj ]
  %.017.i.i.i.i.i = phi i32 [ %i.iu, %bb.ak ], [ %i.ih, %bb.aj ]
  %i.iq = getelementptr inbounds nuw [16 x i8], ptr %i.hv, i64 %i.ip ; 2 uses
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !206
  %i.is = icmp eq ptr %i.ht, %i.ir
  br i1 %i.is, label %bb.al, label %bb.ak, !prof !207

bb.ak:                                            ; preds = %.lr.ph.i.i.i.i27.i
  %i.it = add nuw i32 %.017.i.i.i.i.i, 1
  %i.iu = and i32 %i.it, %i.ib                    ; 3 uses
  %i.iv = zext i32 %i.iu to i64                   ; 2 uses
  %i.iw = lshr i64 %i.iv, 5
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %i.iw
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !204
  %i.iz = and i32 %i.iu, 31
  %i.ja = lshr i32 %i.iy, %i.iz
  %i.jb = trunc i32 %i.ja to i1
  br i1 %i.jb, label %.lr.ph.i.i.i.i27.i, label %.loopexit.i, !prof !208

bb.al:                                            ; preds = %.lr.ph.i.i.i.i27.i
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !206
  br label %.loopexit.i

.thread35.i:                                      ; preds = %_ZNK4llvm4bolt22BoltAddressTranslation13isBATFunctionEm.exit.thread..thread35_crit_edge.i, %bb.ah
  %i.je = phi i32 [ %.fca.1.extract.i, %bb.ah ], [ %i.hr, %_ZNK4llvm4bolt22BoltAddressTranslation13isBATFunctionEm.exit.thread..thread35_crit_edge.i ]
  %.0.ph.i = phi ptr [ %.fca.0.extract.i, %bb.ah ], [ %i.hf, %_ZNK4llvm4bolt22BoltAddressTranslation13isBATFunctionEm.exit.thread..thread35_crit_edge.i ] ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.0.ph.i, i64 1352
  %i.jg = load i64, ptr %i.jf, align 8, !tbaa !209
  %i.jh = trunc i64 %i.jg to i32
  store i32 %i.jh, ptr %i.dc, align 4, !tbaa !48
  br label %bb.am

.loopexit.i:                                      ; preds = %bb.ak, %bb.al, %bb.aj, %bb.ai
  %i.ji = phi ptr [ %i.jd, %bb.al ], [ null, %bb.ai ], [ null, %bb.aj ], [ null, %bb.ak ]
  %i.jj = call noundef ptr @_ZN4llvm4bolt13BinaryContext20getFunctionForSymbolEPKNS_8MCSymbolEPm(ptr noundef nonnull align 8 dereferenceable(2268) %i.f, ptr noundef %i.ji, ptr noundef nonnull %i.a) #23 ; 0 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.hf, i64 1352
  %i.jl = load i64, ptr %i.jk, align 8, !tbaa !209
  %i.jm = trunc i64 %i.jl to i32
  store i32 %i.jm, ptr %i.dc, align 4, !tbaa !48
  %i.jn = load i64, ptr %i.a, align 8, !tbaa !50
  %i.jo = trunc i64 %i.jn to i32
  br label %bb.am

bb.am:                                            ; preds = %.loopexit.i, %.thread35.i
  %.sink.i = phi i32 [ %i.je, %.thread35.i ], [ %i.jo, %.loopexit.i ]
  %.1.ph.ph.i = phi ptr [ %.0.ph.i, %.thread35.i ], [ %i.hf, %.loopexit.i ]
  store i32 %.sink.i, ptr %i.dd, align 8, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.jp = getelementptr inbounds nuw i8, ptr %.1.ph.ph.i, i64 16
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !44
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !206 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  %i.jt = load i32, ptr %i.js, align 8
  %i.ju = and i32 %i.jt, 4
  %.not.i.i = icmp eq i32 %i.ju, 0
  br i1 %.not.i.i, label %_ZN4llvm4bolt17YAMLProfileWriter17setCSIDestinationERKNS0_13BinaryContextERNS_4yaml4bolt12CallSiteInfoEPKNS_8MCSymbolEPKNS0_22BoltAddressTranslationEj.exit.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.jv = getelementptr inbounds i8, ptr %i.jr, i64 -8
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !585 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 24
  %i.jy = load i64, ptr %i.jw, align 8, !tbaa !365
  br label %_ZN4llvm4bolt17YAMLProfileWriter17setCSIDestinationERKNS0_13BinaryContextERNS_4yaml4bolt12CallSiteInfoEPKNS_8MCSymbolEPKNS0_22BoltAddressTranslationEj.exit.thread

_ZN4llvm4bolt17YAMLProfileWriter17setCSIDestinationERKNS0_13BinaryContextERNS_4yaml4bolt12CallSiteInfoEPKNS_8MCSymbolEPKNS0_22BoltAddressTranslationEj.exit.thread: ; preds = %bb.an, %bb.am, %.lr.ph, %_ZN4llvm4bolt17YAMLProfileWriter17setCSIDestinationERKNS0_13BinaryContextERNS_4yaml4bolt12CallSiteInfoEPKNS_8MCSymbolEPKNS0_22BoltAddressTranslationEj.exit.thread390
  %.sroa.6353.0 = phi i64 [ 0, %_ZN4llvm4bolt17YAMLProfileWriter17setCSIDestinationERKNS0_13BinaryContextERNS_4yaml4bolt12CallSiteInfoEPKNS_8MCSymbolEPKNS0_22BoltAddressTranslationEj.exit.thread390 ], [ 0, %.lr.ph ], [ %i.jy, %bb.an ], [ 0, %bb.am ] ; 2 uses
  %.sroa.0351.0 = phi ptr [ @.str.3, %_ZN4llvm4bolt17YAMLProfileWriter17setCSIDestinationERKNS0_13BinaryContextERNS_4yaml4bolt12CallSiteInfoEPKNS_8MCSymbolEPKNS0_22BoltAddressTranslationEj.exit.thread390 ], [ @.str.3, %.lr.ph ], [ %i.jx, %bb.an ], [ null, %bb.am ] ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %.0160414, i64 16
  %i.ka = load <2 x i64>, ptr %i.jz, align 8, !tbaa !50
  store <2 x i64> %i.ka, ptr %i.de, align 8, !tbaa !50
  %i.kb = load i32, ptr %i.da, align 8, !tbaa !340 ; 2 uses
  %i.kc = load i32, ptr %i.db, align 4, !tbaa !344
  %.not.i195 = icmp ult i32 %i.kb, %i.kc
  br i1 %.not.i195, label %bb.ao, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_9StringRefENS_4yaml4bolt12CallSiteInfoEELb1EE18growAndEmplaceBackIJRS2_RS5_EEERS6_DpOT_.exit, !prof !207

_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_9StringRefENS_4yaml4bolt12CallSiteInfoEELb1EE18growAndEmplaceBackIJRS2_RS5_EEERS6_DpOT_.exit: ; preds = %_ZN4llvm4bolt17YAMLProfileWriter17setCSIDestinationERKNS0_13BinaryContextERNS_4yaml4bolt12CallSiteInfoEPKNS_8MCSymbolEPKNS0_22BoltAddressTranslationEj.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store ptr %.sroa.0351.0, ptr %5, align 8, !tbaa !366
  store i64 %.sroa.6353.0, ptr %.sroa.6353.0..sroa_idx354, align 8, !tbaa !50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dl, ptr noundef nonnull align 8 dereferenceable(48) %13, i64 48, i1 false), !tbaa.struct !300
  call void @_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_9StringRefENS_4yaml4bolt12CallSiteInfoEELb1EE15growAndPushBackERKS6_(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(64) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %_ZN4llvm15SmallVectorImplISt4pairINS_9StringRefENS_4yaml4bolt12CallSiteInfoEEE12emplace_backIJRS2_RS5_EEERS6_DpOT_.exit

bb.ao:                                            ; preds = %_ZN4llvm4bolt17YAMLProfileWriter17setCSIDestinationERKNS0_13BinaryContextERNS_4yaml4bolt12CallSiteInfoEPKNS_8MCSymbolEPKNS0_22BoltAddressTranslationEj.exit.thread
  %i.kd = zext i32 %i.kb to i64
  %i.ke = load ptr, ptr %12, align 8, !tbaa !44
  %i.kf = getelementptr inbounds nuw [64 x i8], ptr %i.ke, i64 %i.kd ; 3 uses
  store ptr %.sroa.0351.0, ptr %i.kf, align 8, !tbaa !366
  %.sroa.6353.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  store i64 %.sroa.6353.0, ptr %.sroa.6353.0..sroa_idx, align 8, !tbaa !50
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.kg, ptr noundef nonnull align 8 dereferenceable(48) %13, i64 48, i1 false), !tbaa.struct !300
  %i.kh = load i32, ptr %i.da, align 8, !tbaa !340
  %i.ki = add i32 %i.kh, 1
  store i32 %i.ki, ptr %i.da, align 8, !tbaa !340
  br label %_ZN4llvm15SmallVectorImplISt4pairINS_9StringRefENS_4yaml4bolt12CallSiteInfoEEE12emplace_backIJRS2_RS5_EEERS6_DpOT_.exit

_ZN4llvm15SmallVectorImplISt4pairINS_9StringRefENS_4yaml4bolt12CallSiteInfoEEE12emplace_backIJRS2_RS5_EEERS6_DpOT_.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_9StringRefENS_4yaml4bolt12CallSiteInfoEELb1EE18growAndEmplaceBackIJRS2_RS5_EEERS6_DpOT_.exit, %bb.ao
  %i.kj = getelementptr inbounds nuw i8, ptr %.0160414, i64 32 ; 2 uses
  %.not175 = icmp eq ptr %i.kj, %i.hd
  br i1 %.not175, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm15SmallVectorImplISt4pairINS_9StringRefENS_4yaml4bolt12CallSiteInfoEEE12emplace_backIJRS2_RS5_EEERS6_DpOT_.exit, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %bb.bc

bb.ap:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  store ptr @.str.3, ptr %15, align 8, !tbaa !367
  store i64 0, ptr %i.dg, align 8, !tbaa !368
  %i.kk = load ptr, ptr %i.cy, align 8, !tbaa !579 ; 2 uses
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !36
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 864
  %i.kn = load ptr, ptr %i.km, align 8
  %i.ko = call noundef ptr %i.kn(ptr noundef nonnull align 8 dereferenceable(536) %i.kk, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.0363.0419, i32 noundef 0) #23
  %i.kp = call noundef ptr @_ZN4llvm4bolt17YAMLProfileWriter17setCSIDestinationERKNS0_13BinaryContextERNS_4yaml4bolt12CallSiteInfoEPKNS_8MCSymbolEPKNS0_22BoltAddressTranslationEj(ptr noundef nonnull align 8 dereferenceable(2268) %i.f, ptr noundef nonnull align 8 dereferenceable(44) %13, ptr noundef %i.ko, ptr noundef %4, i32 noundef 0) ; 2 uses
  %.not173 = icmp eq ptr %i.kp, null
  br i1 %.not173, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 16
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !44
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !206 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 8
  %i.ku = load i32, ptr %i.kt, align 8
  %i.kv = and i32 %i.ku, 4
  %.not.i.i196 = icmp eq i32 %i.kv, 0
  br i1 %.not.i.i196, label %_ZNK4llvm4bolt14BinaryFunction10getOneNameEv.exit201, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.kw = getelementptr inbounds i8, ptr %i.ks, i64 -8
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !585 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 24
  %i.kz = load i64, ptr %i.kx, align 8, !tbaa !365
  br label %_ZNK4llvm4bolt14BinaryFunction10getOneNameEv.exit201

_ZNK4llvm4bolt14BinaryFunction10getOneNameEv.exit201: ; preds = %bb.aq, %bb.ar
  %.sroa.0.0.i.i197 = phi ptr [ %i.ky, %bb.ar ], [ null, %bb.aq ]
  %.sroa.4.0.i.i198 = phi i64 [ %i.kz, %bb.ar ], [ 0, %bb.aq ]
  store ptr %.sroa.0.0.i.i197, ptr %15, align 8, !tbaa !366
  store i64 %.sroa.4.0.i.i198, ptr %i.dg, align 8, !tbaa !50
  br label %bb.as

bb.as:                                            ; preds = %_ZNK4llvm4bolt14BinaryFunction10getOneNameEv.exit201, %bb.ap
  %i.la = load ptr, ptr %i.cy, align 8, !tbaa !579
  %i.lb = call { i64, i8 } @_ZNK4llvm4bolt13MCPlusBuilder22getConditionalTailCallERKNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(536) %i.la, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.0363.0419) #23
  %i.lc = extractvalue { i64, i8 } %i.lb, 1
  %i.ld = trunc nuw i8 %i.lc to i1
  %.val183.val = load ptr, ptr %i.cy, align 8, !tbaa !579 ; 4 uses
  br i1 %i.ld, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %bb.as
  %i.le = call noundef i32 @_ZN4llvm4bolt13MCPlusBuilder26getOrCreateAnnotationIndexENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(536) %.val183.val, ptr nonnull @.str.4, i64 13) ; 3 uses
  %i.lf = call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %.val183.val, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.0363.0419, i32 noundef %i.le) #23
  br i1 %i.lf, label %bb.au, label %"_ZZN4llvm4bolt17YAMLProfileWriter7convertERKNS0_14BinaryFunctionEbRKNS1_14InlineTreeDescEPKNS0_22BoltAddressTranslationEENK3$_0clERKNS_6MCInstENS_9StringRefE.exit"

bb.au:                                            ; preds = %bb.at
  %i.lg = getelementptr inbounds nuw i8, ptr %.sroa.0363.0419, i64 24
  %i.lh = load i32, ptr %i.lg, align 8, !tbaa !340 ; 5 uses
  %.01317.i.i.i.i.i.i.i = add i32 %i.lh, -1       ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %.sroa.0363.0419, i64 16
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !44 ; 4 uses
  %17 = zext i32 %i.lh to i64                     ; 2 uses
  %i.lk = zext nneg i32 %.01317.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.ll = getelementptr inbounds nuw [16 x i8], ptr %i.lj, i64 %i.lk ; 2 uses
  %i.lm = load i8, ptr %i.ll, align 8, !tbaa !371
  %i.ln = icmp eq i8 %i.lm, 6
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ll, i64 8
  %i.lp = load ptr, ptr %i.lo, align 8
  %i.lq = icmp eq ptr %i.lp, null
  %i.lr = select i1 %i.ln, i1 %i.lq, i1 false
  br i1 %i.lr, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i.i, label %.backedge.i.i.i.i.i.i.i

.backedge.i.i.i.i.i.i.i:                          ; preds = %bb.au, %.backedge.i.i.i.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %.backedge.i.i.i.i.i.i.i ], [ %i.lk, %bb.au ] ; 2 uses
  %indvars.iv.i.i.i.i.a = phi i64 [ %indvars.iv.next.i.i.i.i.i, %.backedge.i.i.i.i.i.i.i ], [ %17, %bb.au ]
  %indvars.iv.next.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i, -1 ; 3 uses
  %i.ls = icmp sgt i64 %indvars.iv.i.i.i.i, 0
  %indvars.iv.next.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i.a, -1 ; 2 uses
  call void @llvm.assume(i1 %i.ls)
  %i.lt = getelementptr inbounds nuw [16 x i8], ptr %i.lj, i64 %indvars.iv.next.i.i.i.i ; 2 uses
  %i.lu = load i8, ptr %i.lt, align 8, !tbaa !371
  %i.lv = icmp eq i8 %i.lu, 6
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lt, i64 8
  %i.lx = load ptr, ptr %i.lw, align 8
  %i.ly = icmp eq ptr %i.lx, null
  %i.lz = select i1 %i.lv, i1 %i.ly, i1 false
  br i1 %i.lz, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i.i, label %.backedge.i.i.i.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i.i: ; preds = %.backedge.i.i.i.i.i.i.i
  %i.ma = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i to i32
  br label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i.i: ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i.i, %bb.au
  %indvars.iv.i.lcssa.i.i.i.i = phi i64 [ %17, %bb.au ], [ %indvars.iv.next.i.i.i.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i.i ] ; 2 uses
  %.01318.i.i.i.lcssa.i.i.i.i = phi i32 [ %.01317.i.i.i.i.i.i.i, %bb.au ], [ %i.ma, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i.i ] ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp ne i32 %i.lh, %.01318.i.i.i.lcssa.i.i.i.i
  %i.mb = add nuw i32 %.01318.i.i.i.lcssa.i.i.i.i, 1
  %.not1324.i.i.i.i.i = icmp ult i32 %i.mb, %i.lh
  call void @llvm.assume(i1 %.not.i.not.i.i.i.i.i)
  call void @llvm.assume(i1 %.not1324.i.i.i.i.i)
  %i.mc = getelementptr inbounds nuw [16 x i8], ptr %i.lj, i64 %indvars.iv.i.lcssa.i.i.i.i
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 8
  %i.me = load i64, ptr %i.md, align 8, !tbaa !317 ; 2 uses
  %i.mf = lshr i64 %i.me, 56
  %i.mg = trunc nuw nsw i64 %i.mf to i32
  %.not.i3.i.i.i.i = icmp eq i32 %i.le, %i.mg
  br i1 %.not.i3.i.i.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsIyEERT_RKNS_6MCInstEj.exit.i.i.i, label %.critedge.i.i.i.i.i

.critedge.i.i.i.i.i:                              ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i.i, %.critedge.i.i.i.i.i
  %indvars.iv.i4.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.a, %.critedge.i.i.i.i.i ], [ %indvars.iv.i.lcssa.i.i.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i.i ]
  %indvars.iv.next.i.i.i.i.i.a = add nsw i64 %indvars.iv.i4.i.i.i.i, 1 ; 3 uses
  %lftr.wideiv.i.i.i.i.i = trunc i64 %indvars.iv.next.i.i.i.i.i.a to i32
  %exitcond.not.i.i.i.i.i = icmp ne i32 %i.lh, %lftr.wideiv.i.i.i.i.i
  call void @llvm.assume(i1 %exitcond.not.i.i.i.i.i)
  %i.mh = getelementptr inbounds nuw [16 x i8], ptr %i.lj, i64 %indvars.iv.next.i.i.i.i.i.a
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 8
  %i.mj = load i64, ptr %i.mi, align 8, !tbaa !317 ; 2 uses
  %i.mk = lshr i64 %i.mj, 56
  %i.ml = trunc nuw nsw i64 %i.mk to i32
  %.not.i.i.i.i.i202 = icmp eq i32 %i.le, %i.ml
  br i1 %.not.i.i.i.i.i202, label %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsIyEERT_RKNS_6MCInstEj.exit.i.i.i, label %.critedge.i.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsIyEERT_RKNS_6MCInstEj.exit.i.i.i: ; preds = %.critedge.i.i.i.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i.i
  %.lcssa.i.i.i.i = phi i64 [ %i.me, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i.i ], [ %i.mj, %.critedge.i.i.i.i.i ]
  %i.mm = shl i64 %.lcssa.i.i.i.i, 8
  %i.mn = ashr exact i64 %i.mm, 8
  %i.mo = inttoptr i64 %i.mn to ptr
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 8
  %.0.i.i.sroa.speculate.load._ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsIyEERT_RKNS_6MCInstEj.exit.i.i.i = load i64, ptr %i.mp, align 8, !tbaa !587
  br label %"_ZZN4llvm4bolt17YAMLProfileWriter7convertERKNS0_14BinaryFunctionEbRKNS1_14InlineTreeDescEPKNS0_22BoltAddressTranslationEENK3$_0clERKNS_6MCInstENS_9StringRefE.exit"

"_ZZN4llvm4bolt17YAMLProfileWriter7convertERKNS0_14BinaryFunctionEbRKNS1_14InlineTreeDescEPKNS0_22BoltAddressTranslationEENK3$_0clERKNS_6MCInstENS_9StringRefE.exit": ; preds = %bb.at, %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsIyEERT_RKNS_6MCInstEj.exit.i.i.i
  %.0.i.i.sroa.speculated.i = phi i64 [ %.0.i.i.sroa.speculate.load._ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsIyEERT_RKNS_6MCInstEj.exit.i.i.i, %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsIyEERT_RKNS_6MCInstEj.exit.i.i.i ], [ 0, %bb.at ]
  store i64 %.0.i.i.sroa.speculated.i, ptr %i.de, align 8, !tbaa !588
  %.val181.val = load ptr, ptr %i.cy, align 8, !tbaa !579 ; 2 uses
  %i.mq = call noundef i32 @_ZN4llvm4bolt13MCPlusBuilder26getOrCreateAnnotationIndexENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(536) %.val181.val, ptr nonnull @.str.5, i64 15) ; 3 uses
  %i.mr = call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %.val181.val, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.0363.0419, i32 noundef %i.mq) #23
  br i1 %i.mr, label %bb.av, label %"_ZZN4llvm4bolt17YAMLProfileWriter7convertERKNS0_14BinaryFunctionEbRKNS1_14InlineTreeDescEPKNS0_22BoltAddressTranslationEENK3$_0clERKNS_6MCInstENS_9StringRefE.exit223"

bb.av:                                            ; preds = %"_ZZN4llvm4bolt17YAMLProfileWriter7convertERKNS0_14BinaryFunctionEbRKNS1_14InlineTreeDescEPKNS0_22BoltAddressTranslationEENK3$_0clERKNS_6MCInstENS_9StringRefE.exit"
  %i.ms = getelementptr inbounds nuw i8, ptr %.sroa.0363.0419, i64 24
  %i.mt = load i32, ptr %i.ms, align 8, !tbaa !340 ; 5 uses
  %.01317.i.i.i.i.i.i.i204 = add i32 %i.mt, -1    ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %.sroa.0363.0419, i64 16
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !44 ; 4 uses
  %18 = zext i32 %i.mt to i64                     ; 2 uses
  %i.mw = zext nneg i32 %.01317.i.i.i.i.i.i.i204 to i64 ; 2 uses
  %i.mx = getelementptr inbounds nuw [16 x i8], ptr %i.mv, i64 %i.mw ; 2 uses
  %i.my = load i8, ptr %i.mx, align 8, !tbaa !371
  %i.mz = icmp eq i8 %i.my, 6
  %i.na = getelementptr inbounds nuw i8, ptr %i.mx, i64 8
  %i.nb = load ptr, ptr %i.na, align 8
  %i.nc = icmp eq ptr %i.nb, null
  %i.nd = select i1 %i.mz, i1 %i.nc, i1 false
  br i1 %i.nd, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i.i209, label %.backedge.i.i.i.i.i.i.i205

.backedge.i.i.i.i.i.i.i205:                       ; preds = %bb.av, %.backedge.i.i.i.i.i.i.i205
  %indvars.iv.i.i.i.i206 = phi i64 [ %indvars.iv.next.i.i.i.i207, %.backedge.i.i.i.i.i.i.i205 ], [ %i.mw, %bb.av ] ; 2 uses
  %indvars.iv.i.i.i.i206.a = phi i64 [ %indvars.iv.next.i.i.i.i.i209, %.backedge.i.i.i.i.i.i.i205 ], [ %18, %bb.av ]
  %indvars.iv.next.i.i.i.i207 = add nsw i64 %indvars.iv.i.i.i.i206, -1 ; 3 uses
  %i.ne = icmp sgt i64 %indvars.iv.i.i.i.i206, 0
  %indvars.iv.next.i.i.i.i.i209 = add nsw i64 %indvars.iv.i.i.i.i206.a, -1 ; 2 uses
  call void @llvm.assume(i1 %i.ne)
  %i.nf = getelementptr inbounds nuw [16 x i8], ptr %i.mv, i64 %indvars.iv.next.i.i.i.i207 ; 2 uses
  %i.ng = load i8, ptr %i.nf, align 8, !tbaa !371
  %i.nh = icmp eq i8 %i.ng, 6
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nf, i64 8
  %i.nj = load ptr, ptr %i.ni, align 8
  %i.nk = icmp eq ptr %i.nj, null
  %i.nl = select i1 %i.nh, i1 %i.nk, i1 false
  br i1 %i.nl, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i.i208, label %.backedge.i.i.i.i.i.i.i205

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i.i208: ; preds = %.backedge.i.i.i.i.i.i.i205
  %i.nm = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i207 to i32
  br label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i.i209

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i.i209: ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i.i208, %bb.av
  %indvars.iv.i.lcssa.i.i.i.i212 = phi i64 [ %18, %bb.av ], [ %indvars.iv.next.i.i.i.i.i209, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i.i208 ] ; 2 uses
  %.01318.i.i.i.lcssa.i.i.i.i210 = phi i32 [ %.01317.i.i.i.i.i.i.i204, %bb.av ], [ %i.nm, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i.i208 ] ; 2 uses
  %.not.i.not.i.i.i.i.i211 = icmp ne i32 %i.mt, %.01318.i.i.i.lcssa.i.i.i.i210
  %i.nn = add nuw i32 %.01318.i.i.i.lcssa.i.i.i.i210, 1
  %.not1324.i.i.i.i.i212 = icmp ult i32 %i.nn, %i.mt
  call void @llvm.assume(i1 %.not.i.not.i.i.i.i.i211)
  call void @llvm.assume(i1 %.not1324.i.i.i.i.i212)
  %i.no = getelementptr inbounds nuw [16 x i8], ptr %i.mv, i64 %indvars.iv.i.lcssa.i.i.i.i212
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 8
  %i.nq = load i64, ptr %i.np, align 8, !tbaa !317 ; 2 uses
  %i.nr = lshr i64 %i.nq, 56
  %i.ns = trunc nuw nsw i64 %i.nr to i32
  %.not.i3.i.i.i.i214 = icmp eq i32 %i.mq, %i.ns
  br i1 %.not.i3.i.i.i.i214, label %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsIyEERT_RKNS_6MCInstEj.exit.i.i.i220, label %.critedge.i.i.i.i.i215

.critedge.i.i.i.i.i215:                           ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i.i209, %.critedge.i.i.i.i.i215
  %indvars.iv.i4.i.i.i.i216 = phi i64 [ %indvars.iv.next.i.i.i.i.i217, %.critedge.i.i.i.i.i215 ], [ %indvars.iv.i.lcssa.i.i.i.i212, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i.i209 ]
  %indvars.iv.next.i.i.i.i.i217 = add nsw i64 %indvars.iv.i4.i.i.i.i216, 1 ; 3 uses
  %lftr.wideiv.i.i.i.i.i220 = trunc i64 %indvars.iv.next.i.i.i.i.i217 to i32
  %exitcond.not.i.i.i.i.i218 = icmp ne i32 %i.mt, %lftr.wideiv.i.i.i.i.i220
  call void @llvm.assume(i1 %exitcond.not.i.i.i.i.i218)
  %i.nt = getelementptr inbounds nuw [16 x i8], ptr %i.mv, i64 %indvars.iv.next.i.i.i.i.i217
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 8
  %i.nv = load i64, ptr %i.nu, align 8, !tbaa !317 ; 2 uses
  %i.nw = lshr i64 %i.nv, 56
  %i.nx = trunc nuw nsw i64 %i.nw to i32
  %.not.i.i.i.i.i219 = icmp eq i32 %i.mq, %i.nx
  br i1 %.not.i.i.i.i.i219, label %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsIyEERT_RKNS_6MCInstEj.exit.i.i.i220, label %.critedge.i.i.i.i.i215

_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsIyEERT_RKNS_6MCInstEj.exit.i.i.i220: ; preds = %.critedge.i.i.i.i.i215, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i.i209
  %.lcssa.i.i.i.i221 = phi i64 [ %i.nq, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i.i209 ], [ %i.nv, %.critedge.i.i.i.i.i215 ]
  %i.ny = shl i64 %.lcssa.i.i.i.i221, 8
  %i.nz = ashr exact i64 %i.ny, 8
  %i.oa = inttoptr i64 %i.nz to ptr
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 8
  %.0.i.i.sroa.speculate.load._ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsIyEERT_RKNS_6MCInstEj.exit.i.i.i222 = load i64, ptr %i.ob, align 8, !tbaa !587
  br label %"_ZZN4llvm4bolt17YAMLProfileWriter7convertERKNS0_14BinaryFunctionEbRKNS1_14InlineTreeDescEPKNS0_22BoltAddressTranslationEENK3$_0clERKNS_6MCInstENS_9StringRefE.exit223"

"_ZZN4llvm4bolt17YAMLProfileWriter7convertERKNS0_14BinaryFunctionEbRKNS1_14InlineTreeDescEPKNS0_22BoltAddressTranslationEENK3$_0clERKNS_6MCInstENS_9StringRefE.exit223": ; preds = %"_ZZN4llvm4bolt17YAMLProfileWriter7convertERKNS0_14BinaryFunctionEbRKNS1_14InlineTreeDescEPKNS0_22BoltAddressTranslationEENK3$_0clERKNS_6MCInstENS_9StringRefE.exit", %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsIyEERT_RKNS_6MCInstEj.exit.i.i.i220
  %.0.i.i.sroa.speculated.i203 = phi i64 [ %.0.i.i.sroa.speculate.load._ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsIyEERT_RKNS_6MCInstEj.exit.i.i.i222, %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsIyEERT_RKNS_6MCInstEj.exit.i.i.i220 ], [ 0, %"_ZZN4llvm4bolt17YAMLProfileWriter7convertERKNS0_14BinaryFunctionEbRKNS1_14InlineTreeDescEPKNS0_22BoltAddressTranslationEENK3$_0clERKNS_6MCInstENS_9StringRefE.exit" ]
  store i64 %.0.i.i.sroa.speculated.i203, ptr %i.dh, align 8, !tbaa !589
  %.pr393 = load i64, ptr %i.de, align 8, !tbaa !588
  br label %bb.ay

bb.aw:                                            ; preds = %bb.as
  %i.oc = call noundef i32 @_ZN4llvm4bolt13MCPlusBuilder26getOrCreateAnnotationIndexENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(536) %.val183.val, ptr nonnull @.str.6, i64 5) ; 3 uses
  %i.od = call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %.val183.val, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.0363.0419, i32 noundef %i.oc) #23
  br i1 %i.od, label %bb.ax, label %"_ZZN4llvm4bolt17YAMLProfileWriter7convertERKNS0_14BinaryFunctionEbRKNS1_14InlineTreeDescEPKNS0_22BoltAddressTranslationEENK3$_0clERKNS_6MCInstENS_9StringRefE.exit244"

bb.ax:                                            ; preds = %bb.aw
  %i.oe = getelementptr inbounds nuw i8, ptr %.sroa.0363.0419, i64 24
  %i.of = load i32, ptr %i.oe, align 8, !tbaa !340 ; 5 uses
  %.01317.i.i.i.i.i.i.i225 = add i32 %i.of, -1    ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %.sroa.0363.0419, i64 16
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !44 ; 4 uses
  %19 = zext i32 %i.of to i64                     ; 2 uses
  %i.oi = zext nneg i32 %.01317.i.i.i.i.i.i.i225 to i64 ; 2 uses
  %i.oj = getelementptr inbounds nuw [16 x i8], ptr %i.oh, i64 %i.oi ; 2 uses
  %i.ok = load i8, ptr %i.oj, align 8, !tbaa !371
  %i.ol = icmp eq i8 %i.ok, 6
  %i.om = getelementptr inbounds nuw i8, ptr %i.oj, i64 8
  %i.on = load ptr, ptr %i.om, align 8
  %i.oo = icmp eq ptr %i.on, null
  %i.op = select i1 %i.ol, i1 %i.oo, i1 false
  br i1 %i.op, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i.i230, label %.backedge.i.i.i.i.i.i.i226

.backedge.i.i.i.i.i.i.i226:                       ; preds = %bb.ax, %.backedge.i.i.i.i.i.i.i226
  %indvars.iv.i.i.i.i230 = phi i64 [ %indvars.iv.next.i.i.i.i228, %.backedge.i.i.i.i.i.i.i226 ], [ %i.oi, %bb.ax ] ; 2 uses
  %indvars.iv.i.i.i.i227 = phi i64 [ %indvars.iv.next.i.i.i.i.i233, %.backedge.i.i.i.i.i.i.i226 ], [ %19, %bb.ax ]
  %indvars.iv.next.i.i.i.i228 = add nsw i64 %indvars.iv.i.i.i.i230, -1 ; 3 uses
  %i.oq = icmp sgt i64 %indvars.iv.i.i.i.i230, 0
  %indvars.iv.next.i.i.i.i.i233 = add nsw i64 %indvars.iv.i.i.i.i227, -1 ; 2 uses
  call void @llvm.assume(i1 %i.oq)
  %i.or = getelementptr inbounds nuw [16 x i8], ptr %i.oh, i64 %indvars.iv.next.i.i.i.i228 ; 2 uses
  %i.os = load i8, ptr %i.or, align 8, !tbaa !371
  %i.ot = icmp eq i8 %i.os, 6
  %i.ou = getelementptr inbounds nuw i8, ptr %i.or, i64 8
  %i.ov = load ptr, ptr %i.ou, align 8
  %i.ow = icmp eq ptr %i.ov, null
  %i.ox = select i1 %i.ot, i1 %i.ow, i1 false
  br i1 %i.ox, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i.i229, label %.backedge.i.i.i.i.i.i.i226

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i.i229: ; preds = %.backedge.i.i.i.i.i.i.i226
  %i.oy = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i228 to i32
  br label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i.i230

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i.i230: ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i.i229, %bb.ax
  %indvars.iv.i.lcssa.i.i.i.i236 = phi i64 [ %19, %bb.ax ], [ %indvars.iv.next.i.i.i.i.i233, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i.i229 ] ; 2 uses
  %.01318.i.i.i.lcssa.i.i.i.i231 = phi i32 [ %.01317.i.i.i.i.i.i.i225, %bb.ax ], [ %i.oy, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i.i229 ] ; 2 uses
  %.not.i.not.i.i.i.i.i232 = icmp ne i32 %i.of, %.01318.i.i.i.lcssa.i.i.i.i231
  %i.oz = add nuw i32 %.01318.i.i.i.lcssa.i.i.i.i231, 1
  %.not1324.i.i.i.i.i233 = icmp ult i32 %i.oz, %i.of
  call void @llvm.assume(i1 %.not.i.not.i.i.i.i.i232)
  call void @llvm.assume(i1 %.not1324.i.i.i.i.i233)
  %i.pa = getelementptr inbounds nuw [16 x i8], ptr %i.oh, i64 %indvars.iv.i.lcssa.i.i.i.i236
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 8
  %i.pc = load i64, ptr %i.pb, align 8, !tbaa !317 ; 2 uses
  %i.pd = lshr i64 %i.pc, 56
  %i.pe = trunc nuw nsw i64 %i.pd to i32
  %.not.i3.i.i.i.i235 = icmp eq i32 %i.oc, %i.pe
  br i1 %.not.i3.i.i.i.i235, label %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsIyEERT_RKNS_6MCInstEj.exit.i.i.i241, label %.critedge.i.i.i.i.i236

.critedge.i.i.i.i.i236:                           ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i.i230, %.critedge.i.i.i.i.i236
  %indvars.iv.i4.i.i.i.i237 = phi i64 [ %indvars.iv.next.i.i.i.i.i238, %.critedge.i.i.i.i.i236 ], [ %indvars.iv.i.lcssa.i.i.i.i236, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i.i230 ]
  %indvars.iv.next.i.i.i.i.i238 = add nsw i64 %indvars.iv.i4.i.i.i.i237, 1 ; 3 uses
  %lftr.wideiv.i.i.i.i.i244 = trunc i64 %indvars.iv.next.i.i.i.i.i238 to i32
  %exitcond.not.i.i.i.i.i239 = icmp ne i32 %i.of, %lftr.wideiv.i.i.i.i.i244
  call void @llvm.assume(i1 %exitcond.not.i.i.i.i.i239)
  %i.pf = getelementptr inbounds nuw [16 x i8], ptr %i.oh, i64 %indvars.iv.next.i.i.i.i.i238
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 8
  %i.ph = load i64, ptr %i.pg, align 8, !tbaa !317 ; 2 uses
  %i.pi = lshr i64 %i.ph, 56
  %i.pj = trunc nuw nsw i64 %i.pi to i32
  %.not.i.i.i.i.i240 = icmp eq i32 %i.oc, %i.pj
  br i1 %.not.i.i.i.i.i240, label %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsIyEERT_RKNS_6MCInstEj.exit.i.i.i241, label %.critedge.i.i.i.i.i236

_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsIyEERT_RKNS_6MCInstEj.exit.i.i.i241: ; preds = %.critedge.i.i.i.i.i236, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i.i230
  %.lcssa.i.i.i.i242 = phi i64 [ %i.pc, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i.i230 ], [ %i.ph, %.critedge.i.i.i.i.i236 ]
  %i.pk = shl i64 %.lcssa.i.i.i.i242, 8
  %i.pl = ashr exact i64 %i.pk, 8
  %i.pm = inttoptr i64 %i.pl to ptr
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 8
  %.0.i.i.sroa.speculate.load._ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsIyEERT_RKNS_6MCInstEj.exit.i.i.i243 = load i64, ptr %i.pn, align 8, !tbaa !587
  br label %"_ZZN4llvm4bolt17YAMLProfileWriter7convertERKNS0_14BinaryFunctionEbRKNS1_14InlineTreeDescEPKNS0_22BoltAddressTranslationEENK3$_0clERKNS_6MCInstENS_9StringRefE.exit244"

"_ZZN4llvm4bolt17YAMLProfileWriter7convertERKNS0_14BinaryFunctionEbRKNS1_14InlineTreeDescEPKNS0_22BoltAddressTranslationEENK3$_0clERKNS_6MCInstENS_9StringRefE.exit244": ; preds = %bb.aw, %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsIyEERT_RKNS_6MCInstEj.exit.i.i.i241
  %.0.i.i.sroa.speculated.i224 = phi i64 [ %.0.i.i.sroa.speculate.load._ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsIyEERT_RKNS_6MCInstEj.exit.i.i.i243, %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsIyEERT_RKNS_6MCInstEj.exit.i.i.i241 ], [ 0, %bb.aw ] ; 2 uses
  store i64 %.0.i.i.sroa.speculated.i224, ptr %i.de, align 8, !tbaa !588
  br label %bb.ay

bb.ay:                                            ; preds = %"_ZZN4llvm4bolt17YAMLProfileWriter7convertERKNS0_14BinaryFunctionEbRKNS1_14InlineTreeDescEPKNS0_22BoltAddressTranslationEENK3$_0clERKNS_6MCInstENS_9StringRefE.exit244", %"_ZZN4llvm4bolt17YAMLProfileWriter7convertERKNS0_14BinaryFunctionEbRKNS1_14InlineTreeDescEPKNS0_22BoltAddressTranslationEENK3$_0clERKNS_6MCInstENS_9StringRefE.exit223"
  %i.po = phi i64 [ %.0.i.i.sroa.speculated.i224, %"_ZZN4llvm4bolt17YAMLProfileWriter7convertERKNS0_14BinaryFunctionEbRKNS1_14InlineTreeDescEPKNS0_22BoltAddressTranslationEENK3$_0clERKNS_6MCInstENS_9StringRefE.exit244" ], [ %.pr393, %"_ZZN4llvm4bolt17YAMLProfileWriter7convertERKNS0_14BinaryFunctionEbRKNS1_14InlineTreeDescEPKNS0_22BoltAddressTranslationEENK3$_0clERKNS_6MCInstENS_9StringRefE.exit223" ]
  %.not174 = icmp eq i64 %i.po, 0
  br i1 %.not174, label %_ZN4llvm15SmallVectorImplISt4pairINS_9StringRefENS_4yaml4bolt12CallSiteInfoEEE12emplace_backIJRS2_RS5_EEERS6_DpOT_.exit247, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.pp = load i32, ptr %i.da, align 8, !tbaa !340 ; 2 uses
  %i.pq = load i32, ptr %i.db, align 4, !tbaa !344
  %.not.i245 = icmp ult i32 %i.pp, %i.pq
  br i1 %.not.i245, label %bb.bb, label %bb.ba, !prof !207

bb.ba:                                            ; preds = %bb.az
  %i.pr = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_9StringRefENS_4yaml4bolt12CallSiteInfoEELb1EE18growAndEmplaceBackIJRS2_RS5_EEERS6_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(44) %13) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplISt4pairINS_9StringRefENS_4yaml4bolt12CallSiteInfoEEE12emplace_backIJRS2_RS5_EEERS6_DpOT_.exit247

bb.bb:                                            ; preds = %bb.az
  %i.ps = zext i32 %i.pp to i64
  %i.pt = load ptr, ptr %12, align 8, !tbaa !44
  %i.pu = getelementptr inbounds nuw [64 x i8], ptr %i.pt, i64 %i.ps ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.pu, ptr noundef nonnull align 8 dereferenceable(16) %15, i64 16, i1 false), !tbaa.struct !372
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.pv, ptr noundef nonnull align 8 dereferenceable(48) %13, i64 48, i1 false), !tbaa.struct !300
  %i.pw = load i32, ptr %i.da, align 8, !tbaa !340
  %i.px = add i32 %i.pw, 1
  store i32 %i.px, ptr %i.da, align 8, !tbaa !340
  br label %_ZN4llvm15SmallVectorImplISt4pairINS_9StringRefENS_4yaml4bolt12CallSiteInfoEEE12emplace_backIJRS2_RS5_EEERS6_DpOT_.exit247

_ZN4llvm15SmallVectorImplISt4pairINS_9StringRefENS_4yaml4bolt12CallSiteInfoEEE12emplace_backIJRS2_RS5_EEERS6_DpOT_.exit247: ; preds = %bb.bb, %bb.ba, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %bb.bc

bb.bc:                                            ; preds = %._crit_edge, %_ZN4llvm15SmallVectorImplISt4pairINS_9StringRefENS_4yaml4bolt12CallSiteInfoEEE12emplace_backIJRS2_RS5_EEERS6_DpOT_.exit247
  %.val185 = load ptr, ptr %12, align 8, !tbaa !44 ; 5 uses
  %.val186 = load i32, ptr %i.da, align 8, !tbaa !340 ; 3 uses
  %i.py = zext i32 %.val186 to i64                ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.py, 6
  %i.pz = getelementptr inbounds nuw i8, ptr %.val185, i64 %.idx.i ; 3 uses
  %.not.i.i.i.i = icmp eq i32 %.val186, 0
  br i1 %.not.i.i.i.i, label %.loopexit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.qa = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.py, i1 true)
  %i.qb = shl nuw nsw i64 %i.qa, 1
  %i.qc = xor i64 %i.qb, 126
  call fastcc void @"_ZSt16__introsort_loopIPSt4pairIN4llvm9StringRefENS1_4yaml4bolt12CallSiteInfoEElN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_4bolt17YAMLProfileWriter7convertERKNSB_14BinaryFunctionEbRKNSC_14InlineTreeDescEPKNSB_22BoltAddressTranslationEE3$_1EEEvT_SO_T0_T1_"(ptr noundef %.val185, ptr noundef nonnull %i.pz, i64 noundef %i.qc)
  %i.qd = icmp ugt i32 %.val186, 16
  br i1 %i.qd, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %bb.bd
  %i.qe = getelementptr inbounds nuw i8, ptr %.val185, i64 1024 ; 2 uses
  call fastcc void @"_ZSt16__insertion_sortIPSt4pairIN4llvm9StringRefENS1_4yaml4bolt12CallSiteInfoEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_4bolt17YAMLProfileWriter7convertERKNSB_14BinaryFunctionEbRKNSC_14InlineTreeDescEPKNSB_22BoltAddressTranslationEE3$_1EEEvT_SO_T0_"(ptr noundef nonnull %.val185, ptr noundef nonnull %i.qe)
  br label %.lr.ph.i.i.i.i.i.i248

.lr.ph.i.i.i.i.i.i248:                            ; preds = %"_ZSt25__unguarded_linear_insertIPSt4pairIN4llvm9StringRefENS1_4yaml4bolt12CallSiteInfoEEN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_4bolt17YAMLProfileWriter7convertERKNSB_14BinaryFunctionEbRKNSC_14InlineTreeDescEPKNSB_22BoltAddressTranslationEE3$_1EEEvT_T0_.exit.i.i.i.i.i.i", %bb.be
  %.07.i.i.i.i.i.i249 = phi ptr [ %i.qs, %"_ZSt25__unguarded_linear_insertIPSt4pairIN4llvm9StringRefENS1_4yaml4bolt12CallSiteInfoEEN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_4bolt17YAMLProfileWriter7convertERKNSB_14BinaryFunctionEbRKNSC_14InlineTreeDescEPKNSB_22BoltAddressTranslationEE3$_1EEEvT_T0_.exit.i.i.i.i.i.i" ], [ %i.qe, %bb.be ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i.i.i.i.i.i)
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.07.i.i.i.i.i.i249, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i249, i64 8
  %.sroa.5.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 8 ; 5 uses
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i249, i64 16
  %.sroa.6.0.copyload.i.i.i.i.i.i.i = load i32, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i249, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %.sroa.8.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(44) %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i, i64 44, i1 false)
  br label %bb.bf

bb.bf:                                            ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvm4bolt17YAMLProfileWriter7convertERKNS3_14BinaryFunctionEbRKNS4_14InlineTreeDescEPKNS3_22BoltAddressTranslationEE3$_1EclISt4pairINS2_9StringRefENS2_4yaml4bolt12CallSiteInfoEEPSM_EEbRT_T0_.exit.thread.i.i.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i248
  %.09.i.i.i.i.i.i.i = phi ptr [ %.07.i.i.i.i.i.i249, %.lr.ph.i.i.i.i.i.i248 ], [ %.0.i.i.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvm4bolt17YAMLProfileWriter7convertERKNS3_14BinaryFunctionEbRKNS4_14InlineTreeDescEPKNS3_22BoltAddressTranslationEE3$_1EclISt4pairINS2_9StringRefENS2_4yaml4bolt12CallSiteInfoEEPSM_EEbRT_T0_.exit.thread.i.i.i.i.i.i.i" ] ; 9 uses
  %.0.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.09.i.i.i.i.i.i.i, i64 -64 ; 3 uses
  %i.qf = getelementptr inbounds i8, ptr %.09.i.i.i.i.i.i.i, i64 -48 ; 2 uses
  %.sroa.03.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.0.i.i.i.i.i.i.i, align 8, !tbaa !366 ; 2 uses
  %.sroa.24.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.09.i.i.i.i.i.i.i, i64 -56
  %.sroa.24.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.24.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !50 ; 4 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.24.0.copyload.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.5.0.copyload.i.i.i.i.i.i.i) ; 3 uses
  %i.qg = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.qg, label %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bf
  %i.qh = call i32 @memcmp(ptr noundef %.sroa.0.0.copyload.i.i.i.i.i.i.i, ptr noundef %.sroa.03.0.copyload.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i.i.i) #27
  %.fr.i.i.i.i.i.i.i.i.i.i.i.i.i = freeze i32 %i.qh ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %.fr.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.thread.i.i.thread.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvmltENS_9StringRefES0_.exit.i.i.i.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.bf
  %i.qi = icmp ult i64 %.sroa.5.0.copyload.i.i.i.i.i.i.i, %.sroa.24.0.copyload.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.qi, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvm4bolt17YAMLProfileWriter7convertERKNS3_14BinaryFunctionEbRKNS4_14InlineTreeDescEPKNS3_22BoltAddressTranslationEE3$_1EclISt4pairINS2_9StringRefENS2_4yaml4bolt12CallSiteInfoEEPSM_EEbRT_T0_.exit.thread.i.i.i.i.i.i.i", label %.thread.i.i19.i.i.i.i.i.i.i.i.i.i.i

.thread.i.i.thread.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.qj = icmp ult i64 %.sroa.5.0.copyload.i.i.i.i.i.i.i, %.sroa.24.0.copyload.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.qj, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvm4bolt17YAMLProfileWriter7convertERKNS3_14BinaryFunctionEbRKNS4_14InlineTreeDescEPKNS3_22BoltAddressTranslationEE3$_1EclISt4pairINS2_9StringRefENS2_4yaml4bolt12CallSiteInfoEEPSM_EEbRT_T0_.exit.thread.i.i.i.i.i.i.i", label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i13.i.i.i.i.i.i.i.i.i.i.i

_ZN4llvmltENS_9StringRefES0_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.qk = icmp slt i32 %.fr.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.qk, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvm4bolt17YAMLProfileWriter7convertERKNS3_14BinaryFunctionEbRKNS4_14InlineTreeDescEPKNS3_22BoltAddressTranslationEE3$_1EclISt4pairINS2_9StringRefENS2_4yaml4bolt12CallSiteInfoEEPSM_EEbRT_T0_.exit.thread.i.i.i.i.i.i.i", label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i13.i.i.i.i.i.i.i.i.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i13.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4llvmltENS_9StringRefES0_.exit.i.i.i.i.i.i.i.i.i.i.i, %.thread.i.i.thread.i.i.i.i.i.i.i.i.i.i.i
  %i.ql = call i32 @memcmp(ptr noundef %.sroa.03.0.copyload.i.i.i.i.i.i.i.i.i.i.i, ptr noundef %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i.i.i) #27
  %.fr.i.i14.i.i.i.i.i.i.i.i.i.i.i = freeze i32 %i.ql ; 2 uses
  %.not.not.i.i15.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %.fr.i.i14.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.not.i.i15.i.i.i.i.i.i.i.i.i.i.i, label %.thread.i.i19.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvmltENS_9StringRefES0_.exit20.i.i.i.i.i.i.i.i.i.i.i

.thread.i.i19.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i13.i.i.i.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.qm = icmp ult i64 %.sroa.24.0.copyload.i.i.i.i.i.i.i.i.i.i.i, %.sroa.5.0.copyload.i.i.i.i.i.i.i
  br i1 %i.qm, label %"_ZSt25__unguarded_linear_insertIPSt4pairIN4llvm9StringRefENS1_4yaml4bolt12CallSiteInfoEEN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_4bolt17YAMLProfileWriter7convertERKNSB_14BinaryFunctionEbRKNSC_14InlineTreeDescEPKNSB_22BoltAddressTranslationEE3$_1EEEvT_T0_.exit.i.i.i.i.i.i", label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvm4bolt17YAMLProfileWriter7convertERKNS3_14BinaryFunctionEbRKNS4_14InlineTreeDescEPKNS3_22BoltAddressTranslationEE3$_1EclISt4pairINS2_9StringRefENS2_4yaml4bolt12CallSiteInfoEEPSM_EEbRT_T0_.exit.i.i.i.i.i.i.i"

_ZN4llvmltENS_9StringRefES0_.exit20.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i13.i.i.i.i.i.i.i.i.i.i.i
  %i.qn = icmp slt i32 %.fr.i.i14.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.qn, label %"_ZSt25__unguarded_linear_insertIPSt4pairIN4llvm9StringRefENS1_4yaml4bolt12CallSiteInfoEEN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_4bolt17YAMLProfileWriter7convertERKNSB_14BinaryFunctionEbRKNSC_14InlineTreeDescEPKNSB_22BoltAddressTranslationEE3$_1EEEvT_T0_.exit.i.i.i.i.i.i", label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvm4bolt17YAMLProfileWriter7convertERKNS3_14BinaryFunctionEbRKNS4_14InlineTreeDescEPKNS3_22BoltAddressTranslationEE3$_1EclISt4pairINS2_9StringRefENS2_4yaml4bolt12CallSiteInfoEEPSM_EEbRT_T0_.exit.i.i.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvm4bolt17YAMLProfileWriter7convertERKNS3_14BinaryFunctionEbRKNS4_14InlineTreeDescEPKNS3_22BoltAddressTranslationEE3$_1EclISt4pairINS2_9StringRefENS2_4yaml4bolt12CallSiteInfoEEPSM_EEbRT_T0_.exit.i.i.i.i.i.i.i": ; preds = %_ZN4llvmltENS_9StringRefES0_.exit20.i.i.i.i.i.i.i.i.i.i.i, %.thread.i.i19.i.i.i.i.i.i.i.i.i.i.i
  %i.qo = load i32, ptr %i.qf, align 8, !tbaa !360
  %i.qp = icmp ult i32 %.sroa.6.0.copyload.i.i.i.i.i.i.i, %i.qo
  br i1 %i.qp, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvm4bolt17YAMLProfileWriter7convertERKNS3_14BinaryFunctionEbRKNS4_14InlineTreeDescEPKNS3_22BoltAddressTranslationEE3$_1EclISt4pairINS2_9StringRefENS2_4yaml4bolt12CallSiteInfoEEPSM_EEbRT_T0_.exit.thread.i.i.i.i.i.i.i", label %"_ZSt25__unguarded_linear_insertIPSt4pairIN4llvm9StringRefENS1_4yaml4bolt12CallSiteInfoEEN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_4bolt17YAMLProfileWriter7convertERKNSB_14BinaryFunctionEbRKNSC_14InlineTreeDescEPKNSB_22BoltAddressTranslationEE3$_1EEEvT_T0_.exit.i.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvm4bolt17YAMLProfileWriter7convertERKNS3_14BinaryFunctionEbRKNS4_14InlineTreeDescEPKNS3_22BoltAddressTranslationEE3$_1EclISt4pairINS2_9StringRefENS2_4yaml4bolt12CallSiteInfoEEPSM_EEbRT_T0_.exit.thread.i.i.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvm4bolt17YAMLProfileWriter7convertERKNS3_14BinaryFunctionEbRKNS4_14InlineTreeDescEPKNS3_22BoltAddressTranslationEE3$_1EclISt4pairINS2_9StringRefENS2_4yaml4bolt12CallSiteInfoEEPSM_EEbRT_T0_.exit.i.i.i.i.i.i.i", %_ZN4llvmltENS_9StringRefES0_.exit.i.i.i.i.i.i.i.i.i.i.i, %.thread.i.i.thread.i.i.i.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.09.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.0.i.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !372
  %i.qq = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.qq, ptr noundef nonnull align 8 dereferenceable(44) %i.qf, i64 44, i1 false), !tbaa.struct !300
  br label %bb.bf, !llvm.loop !5

"_ZSt25__unguarded_linear_insertIPSt4pairIN4llvm9StringRefENS1_4yaml4bolt12CallSiteInfoEEN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_4bolt17YAMLProfileWriter7convertERKNSB_14BinaryFunctionEbRKNSC_14InlineTreeDescEPKNSB_22BoltAddressTranslationEE3$_1EEEvT_T0_.exit.i.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvm4bolt17YAMLProfileWriter7convertERKNS3_14BinaryFunctionEbRKNS4_14InlineTreeDescEPKNS3_22BoltAddressTranslationEE3$_1EclISt4pairINS2_9StringRefENS2_4yaml4bolt12CallSiteInfoEEPSM_EEbRT_T0_.exit.i.i.i.i.i.i.i", %_ZN4llvmltENS_9StringRefES0_.exit20.i.i.i.i.i.i.i.i.i.i.i, %.thread.i.i19.i.i.i.i.i.i.i.i.i.i.i
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, ptr %.09.i.i.i.i.i.i.i, align 8, !tbaa !366
  %.sroa.5.0..09.sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 8
  store i64 %.sroa.5.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.5.0..09.sroa_idx.i.i.i.i.i.i.i, align 8, !tbaa !50
  %i.qr = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 16
  store i32 %.sroa.6.0.copyload.i.i.i.i.i.i.i, ptr %i.qr, align 8, !tbaa !204
  %.sroa.8.16..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %.sroa.8.16..sroa_idx.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8.i.i.i.i.i.i.i, i64 40, i1 false), !tbaa.struct !373
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i.i.i.i.i)
  %i.qs = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i249, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.qs, %i.pz
  br i1 %.not.i.i.i.i.i.i, label %"_ZN4llvm4sortIRNS_11SmallVectorISt4pairINS_9StringRefENS_4yaml4bolt12CallSiteInfoEELj1EEEZNS_4bolt17YAMLProfileWriter7convertERKNSA_14BinaryFunctionEbRKNSB_14InlineTreeDescEPKNSA_22BoltAddressTranslationEE3$_1EEvOT_T0_.exit", label %.lr.ph.i.i.i.i.i.i248, !llvm.loop !532

bb.bg:                                            ; preds = %bb.bd
  call fastcc void @"_ZSt16__insertion_sortIPSt4pairIN4llvm9StringRefENS1_4yaml4bolt12CallSiteInfoEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_4bolt17YAMLProfileWriter7convertERKNSB_14BinaryFunctionEbRKNSC_14InlineTreeDescEPKNSB_22BoltAddressTranslationEE3$_1EEEvT_SO_T0_"(ptr noundef nonnull %.val185, ptr noundef nonnull %i.pz)
  br label %"_ZN4llvm4sortIRNS_11SmallVectorISt4pairINS_9StringRefENS_4yaml4bolt12CallSiteInfoEELj1EEEZNS_4bolt17YAMLProfileWriter7convertERKNSA_14BinaryFunctionEbRKNSB_14InlineTreeDescEPKNSA_22BoltAddressTranslationEE3$_1EEvOT_T0_.exit"

"_ZN4llvm4sortIRNS_11SmallVectorISt4pairINS_9StringRefENS_4yaml4bolt12CallSiteInfoEELj1EEEZNS_4bolt17YAMLProfileWriter7convertERKNSA_14BinaryFunctionEbRKNSB_14InlineTreeDescEPKNSA_22BoltAddressTranslationEE3$_1EEvOT_T0_.exit": ; preds = %"_ZSt25__unguarded_linear_insertIPSt4pairIN4llvm9StringRefENS1_4yaml4bolt12CallSiteInfoEEN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_4bolt17YAMLProfileWriter7convertERKNSB_14BinaryFunctionEbRKNSC_14InlineTreeDescEPKNSB_22BoltAddressTranslationEE3$_1EEEvT_T0_.exit.i.i.i.i.i.i", %bb.bg
  %.pr540 = load i32, ptr %i.da, align 8, !tbaa !340 ; 2 uses
  %i.qt = load ptr, ptr %12, align 8, !tbaa !44   ; 2 uses
  %i.qu = zext i32 %.pr540 to i64
  %.idx455 = shl nuw nsw i64 %i.qu, 6
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qt, i64 %.idx455
  %.not176415 = icmp eq i32 %.pr540, 0
  br i1 %.not176415, label %.loopexit, label %.lr.ph417.preheader

.lr.ph417.preheader:                              ; preds = %"_ZN4llvm4sortIRNS_11SmallVectorISt4pairINS_9StringRefENS_4yaml4bolt12CallSiteInfoEELj1EEEZNS_4bolt17YAMLProfileWriter7convertERKNSA_14BinaryFunctionEbRKNSB_14InlineTreeDescEPKNSA_22BoltAddressTranslationEE3$_1EEvOT_T0_.exit"
  %.pre474 = load ptr, ptr %i.dn, align 8, !tbaa !297
  br label %.lr.ph417

.lr.ph417:                                        ; preds = %.lr.ph417.preheader, %_ZNSt6vectorIN4llvm4yaml4bolt12CallSiteInfoESaIS3_EE9push_backERKS3_.exit
  %i.qw = phi ptr [ %i.rv, %_ZNSt6vectorIN4llvm4yaml4bolt12CallSiteInfoESaIS3_EE9push_backERKS3_.exit ], [ %.pre474, %.lr.ph417.preheader ] ; 5 uses
  %.0157416 = phi ptr [ %i.rw, %_ZNSt6vectorIN4llvm4yaml4bolt12CallSiteInfoESaIS3_EE9push_backERKS3_.exit ], [ %i.qt, %.lr.ph417.preheader ] ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %.0157416, i64 16 ; 2 uses
  %i.qy = load ptr, ptr %i.do, align 8, !tbaa !298
  %.not.i250 = icmp eq ptr %i.qw, %i.qy
  br i1 %.not.i250, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph417
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.qw, ptr noundef nonnull align 8 dereferenceable(48) %i.qx, i64 48, i1 false), !tbaa.struct !300
  %i.qz = load ptr, ptr %i.dn, align 8, !tbaa !297
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 48 ; 2 uses
  store ptr %i.ra, ptr %i.dn, align 8, !tbaa !297
  br label %_ZNSt6vectorIN4llvm4yaml4bolt12CallSiteInfoESaIS3_EE9push_backERKS3_.exit

bb.bi:                                            ; preds = %.lr.ph417
  %i.rb = load ptr, ptr %i.dm, align 8, !tbaa !299 ; 5 uses
  %i.rc = ptrtoint ptr %i.qw to i64
  %i.rd = ptrtoint ptr %i.rb to i64               ; 2 uses
  %i.re = sub i64 %i.rc, %i.rd                    ; 3 uses
  %i.rf = icmp eq i64 %i.re, 9223372036854775776
  br i1 %i.rf, label %bb.bj, label %_ZNKSt6vectorIN4llvm4yaml4bolt12CallSiteInfoESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.bj:                                            ; preds = %bb.bi
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #25
  unreachable

_ZNKSt6vectorIN4llvm4yaml4bolt12CallSiteInfoESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.bi
end_hunk_0
begin_hunk_1_@_ZN4llvm4bolt17YAMLProfileWriter7convertERKNS0_14BinaryFunctionEbRKNS1_14InlineTreeDescEPKNS0_22BoltAddressTranslationE:bb.a
  %i.agz = getelementptr inbounds nuw [8 x i8], ptr %i.agr, i64 %i.agp
  store ptr %i.agz, ptr %i.agc, align 8, !tbaa !271
  br label %_ZN4llvm4bolt17YAMLProfileWriter13BlockProbeCtx13addBlockProbeERKNS_8DenseMapIPKNS_30MCDecodedPseudoProbeInlineTreeEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEERKNS_20MCDecodedPseudoProbeEj.exit

_ZN4llvm4bolt17YAMLProfileWriter13BlockProbeCtx13addBlockProbeERKNS_8DenseMapIPKNS_30MCDecodedPseudoProbeInlineTreeEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEERKNS_20MCDecodedPseudoProbeEj.exit: ; preds = %bb.cc, %bb.cb, %.lr.ph448, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_4bolt17YAMLProfileWriter13BlockProbeCtx4CallENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPSA_bEOT_DpOT0_.exit, %bb.co, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRjEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_30MCDecodedPseudoProbeInlineTreeEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit.i
  %i.aha = getelementptr inbounds nuw i8, ptr %.sroa.0319.0447, i64 8 ; 2 uses
  %.not396 = icmp eq ptr %i.aha, %.sroa.011.1.i.i.i.i10.i
  br i1 %.not396, label %._crit_edge449, label %.lr.ph448

bb.ct:                                            ; preds = %_ZN4llvm4bolt17YAMLProfileWriter13BlockProbeCtxD2Ev.exit, %._crit_edge445
  %i.ahb = load ptr, ptr %i.ee, align 8, !tbaa !358 ; 3 uses
  %i.ahc = load ptr, ptr %i.ef, align 8, !tbaa !359
  %.not.i285 = icmp eq ptr %i.ahb, %i.ahc
  br i1 %.not.i285, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  call void @_ZN4llvm4yaml4bolt23BinaryBasicBlockProfileC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(104) %i.ahb, ptr noundef nonnull align 8 dereferenceable(104) %11)
  %i.ahd = load ptr, ptr %i.ee, align 8, !tbaa !358
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.ahd, i64 104
  store ptr %i.ahe, ptr %i.ee, align 8, !tbaa !358
  br label %_ZNSt6vectorIN4llvm4yaml4bolt23BinaryBasicBlockProfileESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit

bb.cv:                                            ; preds = %bb.ct
  call void @_ZNSt6vectorIN4llvm4yaml4bolt23BinaryBasicBlockProfileESaIS3_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.eg, ptr %i.ahb, ptr noundef nonnull align 8 dereferenceable(104) %11)
  br label %_ZNSt6vectorIN4llvm4yaml4bolt23BinaryBasicBlockProfileESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit

_ZNSt6vectorIN4llvm4yaml4bolt23BinaryBasicBlockProfileESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit: ; preds = %bb.cv, %bb.cu, %bb.u, %bb.t, %bb.r, %._crit_edge438
  %i.ahf = load ptr, ptr %i.ei, align 8, !tbaa !379 ; 3 uses
  %i.ahg = load ptr, ptr %i.ej, align 8, !tbaa !292 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.ahf, %i.ahg
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN4llvm4yaml4bolt15PseudoProbeInfoEEvT_S5_.exit.i.i, label %.lr.ph.i.i.i.i288

.lr.ph.i.i.i.i288:                                ; preds = %_ZNSt6vectorIN4llvm4yaml4bolt23BinaryBasicBlockProfileESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit, %_ZSt8_DestroyIN4llvm4yaml4bolt15PseudoProbeInfoEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ahu, %_ZSt8_DestroyIN4llvm4yaml4bolt15PseudoProbeInfoEEvPT_.exit.i.i.i.i ], [ %i.ahf, %_ZNSt6vectorIN4llvm4yaml4bolt23BinaryBasicBlockProfileESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit ] ; 5 uses
  %i.ahh = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24
  %i.ahi = load ptr, ptr %i.ahh, align 8, !tbaa !252 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ahi, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i.i.i.i, label %bb.cw

bb.cw:                                            ; preds = %.lr.ph.i.i.i.i288
  %i.ahj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 40
  %i.ahk = load ptr, ptr %i.ahj, align 8, !tbaa !253
  %i.ahl = ptrtoint ptr %i.ahk to i64
  %i.ahm = ptrtoint ptr %i.ahi to i64
  %i.ahn = sub i64 %i.ahl, %i.ahm
  call void @_ZdlPvm(ptr noundef nonnull %i.ahi, i64 noundef %i.ahn) #26
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i.i.i.i

_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i.i.i.i:        ; preds = %bb.cw, %.lr.ph.i.i.i.i288
  %i.aho = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !272 ; 3 uses
  %.not.i.i.i1.i.i.i.i.i.i = icmp eq ptr %i.aho, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i, label %_ZSt8_DestroyIN4llvm4yaml4bolt15PseudoProbeInfoEEvPT_.exit.i.i.i.i, label %bb.cx

bb.cx:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i.i.i.i
  %i.ahp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.ahq = load ptr, ptr %i.ahp, align 8, !tbaa !271
  %i.ahr = ptrtoint ptr %i.ahq to i64
  %i.ahs = ptrtoint ptr %i.aho to i64
  %i.aht = sub i64 %i.ahr, %i.ahs
  call void @_ZdlPvm(ptr noundef nonnull %i.aho, i64 noundef %i.aht) #26
  br label %_ZSt8_DestroyIN4llvm4yaml4bolt15PseudoProbeInfoEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN4llvm4yaml4bolt15PseudoProbeInfoEEvPT_.exit.i.i.i.i: ; preds = %bb.cx, %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i.i.i.i
  %i.ahu = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i289 = icmp eq ptr %i.ahu, %i.ahg
  br i1 %.not.i.i.i.i289, label %_ZSt8_DestroyIPN4llvm4yaml4bolt15PseudoProbeInfoEEvT_S5_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i288, !llvm.loop !11

_ZSt8_DestroyIPN4llvm4yaml4bolt15PseudoProbeInfoEEvT_S5_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN4llvm4yaml4bolt15PseudoProbeInfoEEvPT_.exit.i.i.i.i
  %.pr.i.i290 = load ptr, ptr %i.ei, align 8, !tbaa !379
  br label %_ZSt8_DestroyIPN4llvm4yaml4bolt15PseudoProbeInfoEEvT_S5_.exit.i.i

_ZSt8_DestroyIPN4llvm4yaml4bolt15PseudoProbeInfoEEvT_S5_.exit.i.i: ; preds = %_ZSt8_DestroyIPN4llvm4yaml4bolt15PseudoProbeInfoEEvT_S5_.exitthread-pre-split.i.i, %_ZNSt6vectorIN4llvm4yaml4bolt23BinaryBasicBlockProfileESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit
  %i.ahv = phi ptr [ %.pr.i.i290, %_ZSt8_DestroyIPN4llvm4yaml4bolt15PseudoProbeInfoEEvT_S5_.exitthread-pre-split.i.i ], [ %i.ahf, %_ZNSt6vectorIN4llvm4yaml4bolt23BinaryBasicBlockProfileESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.ahv, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorIN4llvm4yaml4bolt15PseudoProbeInfoESaIS3_EED2Ev.exit.i, label %bb.cy

bb.cy:                                            ; preds = %_ZSt8_DestroyIPN4llvm4yaml4bolt15PseudoProbeInfoEEvT_S5_.exit.i.i
  %i.ahw = load ptr, ptr %i.ek, align 8, !tbaa !293
  %i.ahx = ptrtoint ptr %i.ahw to i64
  %i.ahy = ptrtoint ptr %i.ahv to i64
  %i.ahz = sub i64 %i.ahx, %i.ahy
  call void @_ZdlPvm(ptr noundef nonnull %i.ahv, i64 noundef %i.ahz) #26
  br label %_ZNSt6vectorIN4llvm4yaml4bolt15PseudoProbeInfoESaIS3_EED2Ev.exit.i

_ZNSt6vectorIN4llvm4yaml4bolt15PseudoProbeInfoESaIS3_EED2Ev.exit.i: ; preds = %bb.cy, %_ZSt8_DestroyIPN4llvm4yaml4bolt15PseudoProbeInfoEEvT_S5_.exit.i.i
  %i.aia = load ptr, ptr %i.dp, align 8, !tbaa !377 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.aia, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIN4llvm4yaml4bolt13SuccessorInfoESaIS3_EED2Ev.exit.i, label %bb.cz

bb.cz:                                            ; preds = %_ZNSt6vectorIN4llvm4yaml4bolt15PseudoProbeInfoESaIS3_EED2Ev.exit.i
  %i.aib = load ptr, ptr %i.dr, align 8, !tbaa !376
  %i.aic = ptrtoint ptr %i.aib to i64
  %i.aid = ptrtoint ptr %i.aia to i64
  %i.aie = sub i64 %i.aic, %i.aid
  call void @_ZdlPvm(ptr noundef nonnull %i.aia, i64 noundef %i.aie) #26
  br label %_ZNSt6vectorIN4llvm4yaml4bolt13SuccessorInfoESaIS3_EED2Ev.exit.i

_ZNSt6vectorIN4llvm4yaml4bolt13SuccessorInfoESaIS3_EED2Ev.exit.i: ; preds = %bb.cz, %_ZNSt6vectorIN4llvm4yaml4bolt15PseudoProbeInfoESaIS3_EED2Ev.exit.i
  %i.aif = load ptr, ptr %i.dm, align 8, !tbaa !299 ; 3 uses
  %.not.i.i.i2.i = icmp eq ptr %i.aif, null
  br i1 %.not.i.i.i2.i, label %_ZN4llvm4yaml4bolt23BinaryBasicBlockProfileD2Ev.exit, label %bb.da

bb.da:                                            ; preds = %_ZNSt6vectorIN4llvm4yaml4bolt13SuccessorInfoESaIS3_EED2Ev.exit.i
  %i.aig = load ptr, ptr %i.do, align 8, !tbaa !298
  %i.aih = ptrtoint ptr %i.aig to i64
  %i.aii = ptrtoint ptr %i.aif to i64
  %i.aij = sub i64 %i.aih, %i.aii
  call void @_ZdlPvm(ptr noundef nonnull %i.aif, i64 noundef %i.aij) #26
  br label %_ZN4llvm4yaml4bolt23BinaryBasicBlockProfileD2Ev.exit

_ZN4llvm4yaml4bolt23BinaryBasicBlockProfileD2Ev.exit: ; preds = %_ZNSt6vectorIN4llvm4yaml4bolt13SuccessorInfoESaIS3_EED2Ev.exit.i, %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %i.aik = getelementptr inbounds nuw i8, ptr %.0159451, i64 8 ; 2 uses
  %.not166 = icmp eq ptr %i.aik, %i.cu
  br i1 %.not166, label %._crit_edge453, label %bb.q
}

declare noundef i64 @_ZNK4llvm4bolt14BinaryFunction11computeHashEbNS0_12HashFunctionENS_12function_refIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_9MCOperandEEEE(ptr noundef nonnull align 8 dereferenceable(1360), i1 noundef zeroext, i8 noundef signext, ptr, i64) local_unnamed_addr #4

declare void @_ZNK4llvm4bolt14BinaryFunction18computeBlockHashesENS0_12HashFunctionE(ptr noundef nonnull align 8 dereferenceable(1360), i8 noundef signext) local_unnamed_addr #4

declare { ptr, i64 } @_ZN4llvm4bolt14DataAggregator15getLocationNameERKNS0_14BinaryFunctionEb(ptr noundef nonnull align 8 dereferenceable(1360), i1 noundef zeroext) local_unnamed_addr #4

declare void @_ZNK4llvm4bolt14BinaryFunction3dfsEv(ptr dead_on_unwind writable sret(%"class.llvm::SmallVector.464") align 8, ptr noundef nonnull align 8 dereferenceable(1360)) local_unnamed_addr #4

declare void @_ZN4llvm4bolt14FunctionLayoutC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #4

declare void @_ZNK4llvm4bolt14FunctionLayout19updateLayoutIndicesENS_8ArrayRefIPNS0_16BinaryBasicBlockEEE(ptr noundef nonnull align 8 dereferenceable(32), ptr, i64) local_unnamed_addr #4

declare i64 @_ZNK4llvm4bolt13MCPlusBuilder9getOffsetERKNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(536), ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_11SmallVectorINS0_19IndirectCallProfileELj4EEEEENS_7ErrorOrIRKT_EERKNS_6MCInstENS_9StringRefE(ptr dead_on_unwind noalias writable sret(%"class.llvm::ErrorOr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(536) %1, ptr noundef nonnull align 8 dereferenceable(128) %2, ptr %3, i64 %4) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.b = tail call noundef i32 @pthread_rwlock_rdlock(ptr noundef nonnull align 8 dereferenceable(64) %i.a) #23
  switch i32 %i.b, label %_ZNSt11shared_lockIN4llvm3sys12SmartRWMutexILb0EEEEC2ERS3_.exit.i [
    i32 11, label %bb.b
    i32 35, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_system_errori(i32 noundef 35) #25
  unreachable

_ZNSt11shared_lockIN4llvm3sys12SmartRWMutexILb0EEEEC2ERS3_.exit.i: ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.d = tail call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr %3, i64 %4) #23
  %i.e = tail call noundef i32 @_ZNK4llvm13StringMapImpl7FindKeyENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) %i.c, ptr %3, i64 %4, i32 noundef %i.d) #23 ; 2 uses
  %i.f = icmp eq i32 %i.e, -1
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !382
  br i1 %i.f, label %_ZNK4llvm4bolt13MCPlusBuilder18getAnnotationIndexENS_9StringRefE.exit.thread, label %_ZNK4llvm9StringMapImNS_15MallocAllocatorEE4findENS_9StringRefE.exit.i

_ZNK4llvm9StringMapImNS_15MallocAllocatorEE4findENS_9StringRefE.exit.i: ; preds = %_ZNSt11shared_lockIN4llvm3sys12SmartRWMutexILb0EEEEC2ERS3_.exit.i
  %i.h = sext i32 %i.e to i64                     ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !383
  %.pre8.i = zext i32 %.pre.i to i64
  %i.i = icmp eq i64 %i.h, %.pre8.i
  br i1 %i.i, label %_ZNK4llvm4bolt13MCPlusBuilder18getAnnotationIndexENS_9StringRefE.exit.thread, label %_ZNK4llvm4bolt13MCPlusBuilder18getAnnotationIndexENS_9StringRefE.exit

_ZNK4llvm4bolt13MCPlusBuilder18getAnnotationIndexENS_9StringRefE.exit.thread: ; preds = %_ZNK4llvm9StringMapImNS_15MallocAllocatorEE4findENS_9StringRefE.exit.i, %_ZNSt11shared_lockIN4llvm3sys12SmartRWMutexILb0EEEEC2ERS3_.exit.i
  %i.j = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(64) %i.a) #23 ; 0 uses
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #28
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8
  %i.n = or i8 %i.m, 1
  store i8 %i.n, ptr %i.l, align 8
  store i32 34, ptr %0, align 8, !tbaa !204
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !385
  br label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_11SmallVectorINS0_19IndirectCallProfileELj4EEEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit

_ZNK4llvm4bolt13MCPlusBuilder18getAnnotationIndexENS_9StringRefE.exit: ; preds = %_ZNK4llvm9StringMapImNS_15MallocAllocatorEE4findENS_9StringRefE.exit.i
  %i.o = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.h
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !387
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !50
  %i.s = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(64) %i.a) #23 ; 0 uses
  %.sroa.0.0.extract.trunc = trunc i64 %i.r to i32 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !604)
  %i.t = tail call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %1, ptr noundef nonnull align 8 dereferenceable(128) %2, i32 noundef %.sroa.0.0.extract.trunc) #23, !noalias !604
  br i1 %i.t, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm4bolt13MCPlusBuilder18getAnnotationIndexENS_9StringRefE.exit
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #28
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = load i8, ptr %i.v, align 8, !alias.scope !604
  %i.x = or i8 %i.w, 1
  store i8 %i.x, ptr %i.v, align 8, !alias.scope !604
  store i32 34, ptr %0, align 8, !tbaa !204, !alias.scope !604
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.u, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !385, !alias.scope !604
  br label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_11SmallVectorINS0_19IndirectCallProfileELj4EEEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit

bb.e:                                             ; preds = %_ZNK4llvm4bolt13MCPlusBuilder18getAnnotationIndexENS_9StringRefE.exit
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.z = load i32, ptr %i.y, align 8, !tbaa !340, !noalias !604 ; 5 uses
  %.01317.i.i.i.i.i = add i32 %i.z, -1            ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !44, !noalias !604 ; 4 uses
  %5 = zext i32 %i.z to i64                       ; 2 uses
  %i.ac = zext nneg i32 %.01317.i.i.i.i.i to i64  ; 2 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %i.ac ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !371, !noalias !604
  %i.af = icmp eq i8 %i.ae, 6
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !604
  %i.ai = icmp eq ptr %i.ah, null
  %i.aj = select i1 %i.af, i1 %i.ai, i1 false
  br i1 %i.aj, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i, label %.backedge.i.i.i.i.i

.backedge.i.i.i.i.i:                              ; preds = %bb.e, %.backedge.i.i.i.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.backedge.i.i.i.i.i ], [ %i.ac, %bb.e ] ; 2 uses
  %indvars.iv.i.i.a = phi i64 [ %indvars.iv.next.i.i.i, %.backedge.i.i.i.i.i ], [ %5, %bb.e ]
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 3 uses
  %i.ak = icmp sgt i64 %indvars.iv.i.i, 0
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.a, -1 ; 2 uses
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %indvars.iv.next.i.i ; 2 uses
  %i.am = load i8, ptr %i.al, align 8, !tbaa !371, !noalias !604
  %i.an = icmp eq i8 %i.am, 6
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !604
  %i.aq = icmp eq ptr %i.ap, null
  %i.ar = select i1 %i.an, i1 %i.aq, i1 false
  br i1 %i.ar, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i, label %.backedge.i.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i: ; preds = %.backedge.i.i.i.i.i
  %i.as = trunc nuw nsw i64 %indvars.iv.next.i.i to i32
  br label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i: ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i, %bb.e
  %indvars.iv.i.lcssa.i.i = phi i64 [ %5, %bb.e ], [ %indvars.iv.next.i.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i ] ; 2 uses
  %.01318.i.i.i.lcssa.i.i = phi i32 [ %.01317.i.i.i.i.i, %bb.e ], [ %i.as, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i ] ; 2 uses
  %.not.i.not.i.i.i = icmp ne i32 %i.z, %.01318.i.i.i.lcssa.i.i
  %i.at = add nuw i32 %.01318.i.i.i.lcssa.i.i, 1
  %.not1324.i.i.i = icmp ult i32 %i.at, %i.z
  tail call void @llvm.assume(i1 %.not.i.not.i.i.i)
  tail call void @llvm.assume(i1 %.not1324.i.i.i)
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %indvars.iv.i.lcssa.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !317, !noalias !604 ; 2 uses
  %i.ax = lshr i64 %i.aw, 56
  %i.ay = trunc nuw nsw i64 %i.ax to i32
  %.not.i3.i.i = icmp eq i32 %.sroa.0.0.extract.trunc, %i.ay
  br i1 %.not.i3.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_11SmallVectorINS0_19IndirectCallProfileELj4EEEEERT_RKNS_6MCInstEj.exit.i, label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i, %.critedge.i.i.i
  %indvars.iv.i4.i.i = phi i64 [ %indvars.iv.next.i.i.i.a, %.critedge.i.i.i ], [ %indvars.iv.i.lcssa.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i ]
  %indvars.iv.next.i.i.i.a = add nsw i64 %indvars.iv.i4.i.i, 1 ; 3 uses
  %lftr.wideiv.i.i.i = trunc i64 %indvars.iv.next.i.i.i.a to i32
  %exitcond.not.i.i.i = icmp ne i32 %i.z, %lftr.wideiv.i.i.i
  tail call void @llvm.assume(i1 %exitcond.not.i.i.i)
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %indvars.iv.next.i.i.i.a
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !317, !noalias !604 ; 2 uses
  %i.bc = lshr i64 %i.bb, 56
  %i.bd = trunc nuw nsw i64 %i.bc to i32
  %.not.i.i.i = icmp eq i32 %.sroa.0.0.extract.trunc, %i.bd
  br i1 %.not.i.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_11SmallVectorINS0_19IndirectCallProfileELj4EEEEERT_RKNS_6MCInstEj.exit.i, label %.critedge.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_11SmallVectorINS0_19IndirectCallProfileELj4EEEEERT_RKNS_6MCInstEj.exit.i: ; preds = %.critedge.i.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i
  %.lcssa.i.i = phi i64 [ %i.aw, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i ], [ %i.bb, %.critedge.i.i.i ]
  %i.be = shl i64 %.lcssa.i.i, 8
  %i.bf = ashr exact i64 %i.be, 8
  %i.bg = inttoptr i64 %i.bf to ptr
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 8, !alias.scope !604
  %i.bk = and i8 %i.bj, -2
  store i8 %i.bk, ptr %i.bi, align 8, !alias.scope !604
  store ptr %i.bh, ptr %0, align 8, !tbaa !363, !alias.scope !604
  br label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_11SmallVectorINS0_19IndirectCallProfileELj4EEEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit

_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_11SmallVectorINS0_19IndirectCallProfileELj4EEEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit: ; preds = %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_11SmallVectorINS0_19IndirectCallProfileELj4EEEEERT_RKNS_6MCInstEj.exit.i, %bb.d, %_ZNK4llvm4bolt13MCPlusBuilder18getAnnotationIndexENS_9StringRefE.exit.thread
  ret void
}

declare { i64, i8 } @_ZNK4llvm4bolt13MCPlusBuilder22getConditionalTailCallERKNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(536), ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZNK4llvm4bolt16BinaryBasicBlock12isEntryPointEv(ptr noundef nonnull align 8 dereferenceable(192)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm4bolt16BinaryBasicBlock13getBranchInfoERKS1_(ptr noundef nonnull align 8 dereferenceable(192), ptr noundef nonnull align 8 dereferenceable(192)) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN4llvm4bolt14FunctionLayoutD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local { i32, ptr } @_ZN4llvm4bolt17YAMLProfileWriter12writeProfileERKNS0_15RewriteInstanceE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(808) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::error_code", align 8   ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %4 = alloca %"struct.llvm::yaml::bolt::BinaryProfile", align 8 ; 24 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 24 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %8 = alloca %"class.llvm::StringSet", align 8   ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"struct.llvm::bolt::YAMLProfileWriter::InlineTreeDesc", align 8 ; 18 uses
  %13 = alloca %"class.std::tuple.538", align 8   ; 5 uses
  %14 = alloca %"class.std::tuple.878", align 8   ; 5 uses
  %15 = alloca %"struct.llvm::yaml::bolt::BinaryFunctionProfile", align 8 ; 16 uses
  %16 = alloca %"class.llvm::yaml::Output", align 8 ; 13 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !621  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store i32 0, ptr %2, align 8, !tbaa !623
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #28 ; 2 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !624
  %i.i = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #24, !noalias !625 ; 2 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !388, !noalias !625
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !316, !noalias !625
  call void @_ZN4llvm14raw_fd_ostreamC1ENS_9StringRefERSt10error_codeNS_3sys2fs9OpenFlagsE(ptr noundef nonnull align 8 dereferenceable(96) %i.i, ptr %i.j, i64 %i.l, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 0) #23, !noalias !625
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !627  ; 3 uses
  store ptr %i.i, ptr %i.m, align 8, !tbaa !627
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN4llvm14raw_fd_ostreamESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm14raw_fd_ostreamEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN4llvm14raw_fd_ostreamEEclEPS1_.exit.i.i.i.i: ; preds = %bb.a
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !36
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(96) %i.n) #23, !inline_history !607
  br label %_ZNSt10unique_ptrIN4llvm14raw_fd_ostreamESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm14raw_fd_ostreamESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN4llvm14raw_fd_ostreamEEclEPS1_.exit.i.i.i.i, %bb.a
  %i.r = load i32, ptr %2, align 8, !tbaa !623
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt10unique_ptrIN4llvm14raw_fd_ostreamESt14default_deleteIS1_EED2Ev.exit
  %i.s = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #23 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !628
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !629  ; 2 uses
  %i.x = ptrtoint ptr %i.u to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = icmp ult i64 %i.z, 14
  br i1 %i.aa, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ab = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.s, ptr noundef nonnull @.str.7, i64 noundef 14) #23
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %i.w, ptr noundef nonnull align 1 dereferenceable(14) @.str.7, i64 14, i1 false)
  %i.ac = load ptr, ptr %i.v, align 8, !tbaa !629
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 14
  store ptr %i.ad, ptr %i.v, align 8, !tbaa !629
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.c, %bb.d
  %.0.i.i = phi ptr [ %i.ab, %bb.c ], [ %i.s, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.ae = load ptr, ptr %i.g, align 8, !tbaa !624, !noalias !630 ; 2 uses
  %i.af = load i32, ptr %2, align 8, !tbaa !623, !noalias !630
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !36, !noalias !630
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !630
  call void %i.ai(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.ae, i32 noundef %i.af) #23, !inline_history !610
  %i.aj = load ptr, ptr %3, align 8, !tbaa !388
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !316
  %i.am = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i, ptr noundef %i.aj, i64 noundef %i.al) #23 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !628
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 32 ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !629 ; 2 uses
  %i.ar = ptrtoint ptr %i.ao to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = icmp ult i64 %i.at, 18
  br i1 %i.au, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.av = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.am, ptr noundef nonnull @.str.8, i64 noundef 18) #23
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit47

bb.f:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.aq, ptr noundef nonnull align 1 dereferenceable(18) @.str.8, i64 18, i1 false)
  %i.aw = load ptr, ptr %i.ap, align 8, !tbaa !629
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 18
  store ptr %i.ax, ptr %i.ap, align 8, !tbaa !629
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit47

_ZN4llvm11raw_ostreamlsEPKc.exit47:               ; preds = %bb.e, %bb.f
  %.0.i.i46 = phi ptr [ %i.av, %bb.e ], [ %i.am, %bb.f ]
  %i.ay = load ptr, ptr %0, align 8, !tbaa !388
  %i.az = load i64, ptr %i.k, align 8, !tbaa !316
  %i.ba = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i46, ptr noundef %i.ay, i64 noundef %i.az) #23 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !628
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 32 ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !629 ; 2 uses
  %i.bf = ptrtoint ptr %i.bc to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = icmp ult i64 %i.bh, 13
  br i1 %i.bi, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit47
  %i.bj = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ba, ptr noundef nonnull @.str.9, i64 noundef 13) #23 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit50

bb.h:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.be, ptr noundef nonnull align 1 dereferenceable(13) @.str.9, i64 13, i1 false)
  %i.bk = load ptr, ptr %i.bd, align 8, !tbaa !629
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 13
  store ptr %i.bl, ptr %i.bd, align 8, !tbaa !629
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit50

_ZN4llvm11raw_ostreamlsEPKc.exit50:               ; preds = %bb.g, %bb.h
  %i.bm = load ptr, ptr %3, align 8, !tbaa !388   ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit50
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !317
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bq) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit50, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %.sroa.0130.0.copyload = load i32, ptr %2, align 8, !tbaa !204
  %.sroa.3131.0.copyload = load ptr, ptr %i.g, align 8, !tbaa !385
  br label %bb.bs

bb.i:                                             ; preds = %_ZNSt10unique_ptrIN4llvm14raw_fd_ostreamESt14default_deleteIS1_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  store ptr %i.bs, ptr %i.br, align 8, !tbaa !315
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store i64 0, ptr %i.bt, align 8, !tbaa !316
  store i8 0, ptr %i.bs, align 8, !tbaa !317
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 5 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 4 uses
  store ptr %i.bv, ptr %i.bu, align 8, !tbaa !315
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 4 uses
end_hunk_1
