Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SimpleLoopUnswitch?download=true
inline.NumInlined: 9189
inline.NumDeleted: 4425
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZL12unswitchLoopRN4llvm4LoopERNS_13DominatorTreeERNS_8LoopInfoERNS_15AssumptionCacheERNS_9AAResultsERNS_19TargetTransformInfoEbbPNS_15ScalarEvolutionEPNS_16MemorySSAUpdaterERNS_10LPMUpdaterE:bb.a
  %i.jm = load ptr, ptr %.tr78.i258.i.i, align 8, !tbaa !189 ; 2 uses
  %i.jn = icmp eq ptr %i.jm, %i.jk
  br i1 %i.jn, label %_ZNK4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE8containsEPKS2_.exit262.i.i, label %.lr.ph.i257.i.i

_ZNK4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE8containsEPKS2_.exit262.i.i: ; preds = %tailrecurse.i260.i.i, %.lr.ph.i257.i.i, %bb.ae, %.lr.ph598.i.i
  %.3.i.i = phi ptr [ %i.jk, %bb.ae ], [ null, %.lr.ph598.i.i ], [ %i.jk, %tailrecurse.i260.i.i ], [ %.2597.i.i, %.lr.ph.i257.i.i ] ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %.0175596.i.i, i64 4 ; 2 uses
  %.not189.i.i = icmp eq ptr %i.jo, %i.jd
  br i1 %.not189.i.i, label %._crit_edge599.i.i, label %.lr.ph598.i.i

._crit_edge599.i.i:                               ; preds = %_ZNK4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE8containsEPKS2_.exit262.i.i, %_ZNK4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE8containsEPKS2_.exit.i.i
  %.2.lcssa.i.i = phi ptr [ %.1174.i.i, %_ZNK4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE8containsEPKS2_.exit.i.i ], [ %.3.i.i, %_ZNK4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE8containsEPKS2_.exit262.i.i ] ; 2 uses
  %.not190.i.i = icmp eq ptr %.2.lcssa.i.i, null
  br i1 %.not190.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %._crit_edge599.i.i
  call void @_ZN4llvm15ScalarEvolution10forgetLoopEPKNS_4LoopE(ptr noundef nonnull align 8 dereferenceable(1152) %8, ptr noundef nonnull %.2.lcssa.i.i) #24
  br label %bb.ah

bb.ag:                                            ; preds = %._crit_edge599.i.i
  call void @_ZN4llvm15ScalarEvolution17forgetTopmostLoopEPKNS_4LoopE(ptr noundef nonnull align 8 dereferenceable(1152) %8, ptr noundef nonnull align 8 dereferenceable(144) %0) #24
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.jp = load ptr, ptr %i.d, align 8, !tbaa !148
  %.not191.i.i = icmp eq ptr %i.jp, null
  br i1 %.not191.i.i, label %bb.am, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.jq = load ptr, ptr %i.ei, align 8, !tbaa !163 ; 3 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 32
  %i.js = getelementptr inbounds nuw i8, ptr %i.jq, i64 48 ; 2 uses
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !190 ; 3 uses
  %.not.i.i.i.i.i.i79.i = icmp eq ptr %i.jt, null
  br i1 %.not.i.i.i.i.i.i79.i, label %_ZN4llvm10SwitchInst14setDefaultDestEPNS_10BasicBlockE.exit.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jq, i64 40 ; 2 uses
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !191 ; 3 uses
  store ptr %i.jv, ptr %i.jt, align 8, !tbaa !163
  %.not2.i.i.i.i.i.i.i = icmp eq ptr %i.jv, null
  br i1 %.not2.i.i.i.i.i.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 16
  store ptr %i.jt, ptr %i.jw, align 8, !tbaa !190
  store ptr null, ptr %i.ju, align 8, !tbaa !191
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  store ptr null, ptr %i.js, align 8, !tbaa !190
  br label %_ZN4llvm10SwitchInst14setDefaultDestEPNS_10BasicBlockE.exit.i.i

_ZN4llvm10SwitchInst14setDefaultDestEPNS_10BasicBlockE.exit.i.i: ; preds = %bb.al, %bb.ai
  store ptr null, ptr %i.jr, align 8, !tbaa !93
  br label %bb.am

bb.am:                                            ; preds = %_ZN4llvm10SwitchInst14setDefaultDestEPNS_10BasicBlockE.exit.i.i, %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #24
  store ptr %i.al, ptr %25, align 8, !tbaa !57
  store i32 0, ptr %i.am, align 8, !tbaa !69
  store i32 4, ptr %i.an, align 4, !tbaa !80
  %i.jx = load i32, ptr %i.aj, align 8, !tbaa !69 ; 2 uses
  %i.jy = icmp ugt i32 %i.jx, 4
  br i1 %i.jy, label %bb.an, label %_ZN4llvm15SmallVectorImplISt5tupleIJPNS_11ConstantIntEPNS_10BasicBlockESt8optionalIjEEEE7reserveEm.exit.i.i

bb.an:                                            ; preds = %bb.am
  %i.jz = zext i32 %i.jx to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  %i.ka = call noundef ptr @_ZN4llvm15SmallVectorBaseIjE13mallocForGrowEPvmmRm(ptr noundef nonnull align 8 dereferenceable(16) %25, ptr noundef nonnull %i.al, i64 noundef %i.jz, i64 noundef 24, ptr noundef nonnull align 8 dereferenceable(8) %i.c) #24 ; 2 uses
  %i.kb = load ptr, ptr %25, align 8, !tbaa !57   ; 3 uses
  %i.kc = load i32, ptr %i.am, align 8, !tbaa !69 ; 2 uses
  %i.kd = zext i32 %i.kc to i64
  %.idx.i.i.i.i.i = mul nuw nsw i64 %i.kd, 24
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kb, i64 %.idx.i.i.i.i.i
  %.not7.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.kc, 0
  br i1 %.not7.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt5tupleIJPNS_11ConstantIntEPNS_10BasicBlockESt8optionalIjEEELb0EE19moveElementsForGrowEPS8_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.an, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.kk, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.ka, %bb.an ] ; 3 uses
  %.sroa.04.08.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.kj, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.kb, %bb.an ] ; 3 uses
  %i.kf = load i64, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i.i, align 4
  store i64 %i.kf, ptr %.09.i.i.i.i.i.i.i.i.i.i, align 4
  %i.kg = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.kh = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.ki = load <2 x i64>, ptr %i.kh, align 8, !tbaa !141
  store <2 x i64> %i.ki, ptr %i.kg, align 8, !tbaa !141
  %i.kj = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.i.i, i64 24
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.kj, %i.ke
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt5tupleIJPNS_11ConstantIntEPNS_10BasicBlockESt8optionalIjEEELb0EE19moveElementsForGrowEPS8_.exit.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !3

_ZN4llvm23SmallVectorTemplateBaseISt5tupleIJPNS_11ConstantIntEPNS_10BasicBlockESt8optionalIjEEELb0EE19moveElementsForGrowEPS8_.exit.loopexit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.pre.i.i.i.i = load ptr, ptr %25, align 8, !tbaa !57
  br label %_ZN4llvm23SmallVectorTemplateBaseISt5tupleIJPNS_11ConstantIntEPNS_10BasicBlockESt8optionalIjEEELb0EE19moveElementsForGrowEPS8_.exit.i.i.i.i

_ZN4llvm23SmallVectorTemplateBaseISt5tupleIJPNS_11ConstantIntEPNS_10BasicBlockESt8optionalIjEEELb0EE19moveElementsForGrowEPS8_.exit.i.i.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt5tupleIJPNS_11ConstantIntEPNS_10BasicBlockESt8optionalIjEEELb0EE19moveElementsForGrowEPS8_.exit.loopexit.i.i.i.i, %bb.an
  %i.kl = phi ptr [ %.pre.i.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseISt5tupleIJPNS_11ConstantIntEPNS_10BasicBlockESt8optionalIjEEELb0EE19moveElementsForGrowEPS8_.exit.loopexit.i.i.i.i ], [ %i.kb, %bb.an ] ; 2 uses
  %i.km = load i64, ptr %i.c, align 8, !tbaa !74
  %i.kn = icmp eq ptr %i.kl, %i.al
  br i1 %i.kn, label %_ZN4llvm23SmallVectorTemplateBaseISt5tupleIJPNS_11ConstantIntEPNS_10BasicBlockESt8optionalIjEEELb0EE4growEm.exit.i.i.i, label %bb.ao

bb.ao:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt5tupleIJPNS_11ConstantIntEPNS_10BasicBlockESt8optionalIjEEELb0EE19moveElementsForGrowEPS8_.exit.i.i.i.i
  call void @free(ptr noundef %i.kl) #24
  br label %_ZN4llvm23SmallVectorTemplateBaseISt5tupleIJPNS_11ConstantIntEPNS_10BasicBlockESt8optionalIjEEELb0EE4growEm.exit.i.i.i

_ZN4llvm23SmallVectorTemplateBaseISt5tupleIJPNS_11ConstantIntEPNS_10BasicBlockESt8optionalIjEEELb0EE4growEm.exit.i.i.i: ; preds = %bb.ao, %_ZN4llvm23SmallVectorTemplateBaseISt5tupleIJPNS_11ConstantIntEPNS_10BasicBlockESt8optionalIjEEELb0EE19moveElementsForGrowEPS8_.exit.i.i.i.i
  store ptr %i.ka, ptr %25, align 8, !tbaa !57
  %i.ko = trunc i64 %i.km to i32
  store i32 %i.ko, ptr %i.an, align 4, !tbaa !80
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  br label %_ZN4llvm15SmallVectorImplISt5tupleIJPNS_11ConstantIntEPNS_10BasicBlockESt8optionalIjEEEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplISt5tupleIJPNS_11ConstantIntEPNS_10BasicBlockESt8optionalIjEEEE7reserveEm.exit.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt5tupleIJPNS_11ConstantIntEPNS_10BasicBlockESt8optionalIjEEELb0EE4growEm.exit.i.i.i, %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #24
  store ptr %spec.select.i.i.i, ptr %26, align 8, !tbaa !553
  store i8 0, ptr %i.ao, align 8, !tbaa !555
  store i8 0, ptr %i.ap, align 8, !tbaa !561
  call void @_ZN4llvm27SwitchInstProfUpdateWrapper4initEv(ptr noundef nonnull align 8 dereferenceable(65) %26) #24
  %i.kp = load ptr, ptr %24, align 8, !tbaa !57, !noalias !562 ; 2 uses
  %i.kq = load i32, ptr %i.aj, align 8, !tbaa !69, !noalias !562 ; 2 uses
  %.not574600.i.i = icmp eq i32 %i.kq, 0
  br i1 %.not574600.i.i, label %._crit_edge603.i.i, label %.lr.ph602.i.i

.lr.ph602.i.i:                                    ; preds = %_ZN4llvm15SmallVectorImplISt5tupleIJPNS_11ConstantIntEPNS_10BasicBlockESt8optionalIjEEEE7reserveEm.exit.i.i
  %i.kr = zext i32 %i.kq to i64
  %.idx640.i.i = shl nuw nsw i64 %i.kr, 2
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kp, i64 %.idx640.i.i
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ef, i64 48
  br label %bb.ap

._crit_edge603.i.i:                               ; preds = %_ZN4llvm15SmallVectorImplISt5tupleIJPNS_11ConstantIntEPNS_10BasicBlockESt8optionalIjEEEE12emplace_backIJS3_S5_RS7_EEERS8_DpOT_.exit.i.i, %_ZN4llvm15SmallVectorImplISt5tupleIJPNS_11ConstantIntEPNS_10BasicBlockESt8optionalIjEEEE7reserveEm.exit.i.i
  %i.ku = load i32, ptr %i.es, align 4
  %i.kv = and i32 %i.ku, 268435455
  %i.kw = add nsw i32 %i.kv, -2                   ; 2 uses
  %.not192.i.i = icmp eq i32 %i.kw, 0
  br i1 %.not192.i.i, label %.critedge.thread.i.i, label %bb.as

bb.ap:                                            ; preds = %_ZN4llvm15SmallVectorImplISt5tupleIJPNS_11ConstantIntEPNS_10BasicBlockESt8optionalIjEEEE12emplace_backIJS3_S5_RS7_EEERS8_DpOT_.exit.i.i, %.lr.ph602.i.i
  %.sroa.0510.0601.i.i = phi ptr [ %i.ks, %.lr.ph602.i.i ], [ %i.kx, %_ZN4llvm15SmallVectorImplISt5tupleIJPNS_11ConstantIntEPNS_10BasicBlockESt8optionalIjEEEE12emplace_backIJS3_S5_RS7_EEERS8_DpOT_.exit.i.i ]
  %i.kx = getelementptr inbounds i8, ptr %.sroa.0510.0601.i.i, i64 -4 ; 3 uses
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !94 ; 3 uses
  %i.kz = zext i32 %i.ky to i64                   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #24
  %.not.i270.i.i = icmp eq i32 %i.ky, -2          ; 2 uses
  %i.la = add i32 %i.ky, 1
  %i.lb = select i1 %.not.i270.i.i, i32 0, i32 %i.la
  %i.lc = call i64 @_ZN4llvm27SwitchInstProfUpdateWrapper18getSuccessorWeightEj(ptr noundef nonnull align 8 dereferenceable(65) %26, i32 noundef %i.lb) #24 ; 2 uses
  store i64 %i.lc, ptr %27, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  %i.ld = load ptr, ptr %i.ei, align 8, !tbaa !163 ; 2 uses
  %i.le = load i32, ptr %i.kt, align 8, !tbaa !564
  %i.lf = zext i32 %i.le to i64
  %i.lg = getelementptr inbounds nuw [32 x i8], ptr %i.ld, i64 %i.lf
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %i.lg, i64 %i.kz
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !193
  store ptr %i.li, ptr %i.e, align 8, !tbaa !193
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #24
  %i.lj = add nuw nsw i64 %i.kz, 2
  %i.lk = and i64 %i.lj, 4294967295
  %i.ll = select i1 %.not.i270.i.i, i64 1, i64 %i.lk
  %i.lm = getelementptr inbounds nuw [32 x i8], ptr %i.ld, i64 %i.ll
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !93
  store ptr %i.ln, ptr %i.f, align 8, !tbaa !148
  %i.lo = load i32, ptr %i.am, align 8, !tbaa !69 ; 2 uses
  %i.lp = load i32, ptr %i.an, align 4, !tbaa !80
  %.not.i272.i.i = icmp ult i32 %i.lo, %i.lp
  br i1 %.not.i272.i.i, label %bb.ar, label %bb.aq, !prof !81

bb.aq:                                            ; preds = %bb.ap
  %i.lq = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm23SmallVectorTemplateBaseISt5tupleIJPNS_11ConstantIntEPNS_10BasicBlockESt8optionalIjEEELb0EE18growAndEmplaceBackIJS3_S5_RS7_EEERS8_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %25, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 4 dereferenceable(8) %27) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplISt5tupleIJPNS_11ConstantIntEPNS_10BasicBlockESt8optionalIjEEEE12emplace_backIJS3_S5_RS7_EEERS8_DpOT_.exit.i.i

bb.ar:                                            ; preds = %bb.ap
  %i.lr = zext i32 %i.lo to i64
  %i.ls = load ptr, ptr %25, align 8, !tbaa !57
  %i.lt = getelementptr inbounds nuw [24 x i8], ptr %i.ls, i64 %i.lr ; 3 uses
  store i64 %i.lc, ptr %i.lt, align 4
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 8
  %i.lv = load ptr, ptr %i.f, align 8, !tbaa !148
  store ptr %i.lv, ptr %i.lu, align 8, !tbaa !195
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lt, i64 16
  %i.lx = load ptr, ptr %i.e, align 8, !tbaa !193
  store ptr %i.lx, ptr %i.lw, align 8, !tbaa !197
  %i.ly = load i32, ptr %i.am, align 8, !tbaa !69
  %i.lz = add i32 %i.ly, 1
  store i32 %i.lz, ptr %i.am, align 8, !tbaa !69
  br label %_ZN4llvm15SmallVectorImplISt5tupleIJPNS_11ConstantIntEPNS_10BasicBlockESt8optionalIjEEEE12emplace_backIJS3_S5_RS7_EEERS8_DpOT_.exit.i.i

_ZN4llvm15SmallVectorImplISt5tupleIJPNS_11ConstantIntEPNS_10BasicBlockESt8optionalIjEEEE12emplace_backIJS3_S5_RS7_EEERS8_DpOT_.exit.i.i: ; preds = %bb.ar, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  %i.ma = call { ptr, i64 } @_ZN4llvm27SwitchInstProfUpdateWrapper10removeCaseENS_10SwitchInst16CaseIteratorImplINS1_10CaseHandleEEE(ptr noundef nonnull align 8 dereferenceable(65) %26, ptr nonnull align 8 dereferenceable(76) %i.eg, i64 %i.kz) #24 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #24
  %.not574.i.i = icmp eq ptr %i.kx, %i.kp
  br i1 %.not574.i.i, label %._crit_edge603.i.i, label %bb.ap

bb.as:                                            ; preds = %._crit_edge603.i.i
  %i.mb = zext i32 %i.kw to i64                   ; 3 uses
  %i.mc = add nsw i64 %i.mb, -1                   ; 2 uses
  %38 = lshr i64 %i.mc, 2                         ; 2 uses
  %.not575.i.i = icmp eq i64 %38, 0
  %.pre.i80.pre.i = load ptr, ptr %i.ei, align 8, !tbaa !163 ; 9 uses
  %i.md = getelementptr i8, ptr %.pre.i80.pre.i, i64 64
  %.val41.val.val.i.i.i.i.i.i.i = load ptr, ptr %i.md, align 8, !tbaa !93 ; 10 uses
  br i1 %.not575.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i85.i

.lr.ph.i.i.i.i.i.i85.i:                           ; preds = %bb.as
  %i.me = and i64 %i.mc, -4
  %i.mf = or disjoint i64 %i.me, 1
  br label %bb.at

bb.at:                                            ; preds = %bb.ax, %.lr.ph.i.i.i.i.i.i85.i
  %.095.i.i.i.i.i.i.i = phi i64 [ %38, %.lr.ph.i.i.i.i.i.i85.i ], [ %i.mu, %bb.ax ] ; 2 uses
  %.sroa.15.094.i.i.i.i.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i85.i ], [ %i.mn, %bb.ax ] ; 7 uses
  %39 = and i64 %.sroa.15.094.i.i.i.i.i.i.i, 4294967295
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %39, 4294967294
  %i.mg = add nuw nsw i64 %.sroa.15.094.i.i.i.i.i.i.i, 2 ; 2 uses
  %40 = and i64 %i.mg, 4294967295                 ; 2 uses
  %41 = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i, i64 1, i64 %40
  %i.mh = getelementptr inbounds nuw [32 x i8], ptr %.pre.i80.pre.i, i64 %41
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !93
  %.not89.i.i.i.i.i.i.i = icmp eq ptr %i.mi, %.val41.val.val.i.i.i.i.i.i.i
  br i1 %.not89.i.i.i.i.i.i.i, label %bb.au, label %"_ZN4llvm6all_ofINS_14iterator_rangeINS_10SwitchInst16CaseIteratorImplINS2_10CaseHandleEEEEEZL21unswitchTrivialSwitchRNS_4LoopERS2_RNS_13DominatorTreeERNS_8LoopInfoEPNS_15ScalarEvolutionEPNS_16MemorySSAUpdaterEE3$_0EEbOT_T0_.exit.i.i"

bb.au:                                            ; preds = %bb.at
  %42 = add nuw nsw i64 %.sroa.15.094.i.i.i.i.i.i.i, 1 ; 2 uses
  %43 = and i64 %42, 4294967295
  %.not.i.i.i.i43.i.i.i.i.i.i.i = icmp eq i64 %43, 4294967294
  %i.mj = add nuw i64 %.sroa.15.094.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.mk = and i64 %i.mj, 4294967295               ; 2 uses
  %44 = select i1 %.not.i.i.i.i43.i.i.i.i.i.i.i, i64 1, i64 %i.mk
  %i.ml = getelementptr inbounds nuw [32 x i8], ptr %.pre.i80.pre.i, i64 %44
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !93
  %.not90.i.i.i.i.i.i.i = icmp eq ptr %i.mm, %.val41.val.val.i.i.i.i.i.i.i
  br i1 %.not90.i.i.i.i.i.i.i, label %bb.av, label %"_ZN4llvm6all_ofINS_14iterator_rangeINS_10SwitchInst16CaseIteratorImplINS2_10CaseHandleEEEEEZL21unswitchTrivialSwitchRNS_4LoopERS2_RNS_13DominatorTreeERNS_8LoopInfoEPNS_15ScalarEvolutionEPNS_16MemorySSAUpdaterEE3$_0EEbOT_T0_.exit.i.i"

bb.av:                                            ; preds = %bb.au
  %.not.i.i.i.i45.i.i.i.i.i.i.i = icmp eq i64 %40, 4294967294
  %i.mn = add nuw i64 %.sroa.15.094.i.i.i.i.i.i.i, 4 ; 2 uses
  %45 = and i64 %i.mn, 4294967295
  %46 = select i1 %.not.i.i.i.i45.i.i.i.i.i.i.i, i64 1, i64 %45
  %i.mo = getelementptr inbounds nuw [32 x i8], ptr %.pre.i80.pre.i, i64 %46
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !93
  %.not91.i.i.i.i.i.i.i = icmp eq ptr %i.mp, %.val41.val.val.i.i.i.i.i.i.i
  br i1 %.not91.i.i.i.i.i.i.i, label %bb.aw, label %"_ZN4llvm6all_ofINS_14iterator_rangeINS_10SwitchInst16CaseIteratorImplINS2_10CaseHandleEEEEEZL21unswitchTrivialSwitchRNS_4LoopERS2_RNS_13DominatorTreeERNS_8LoopInfoEPNS_15ScalarEvolutionEPNS_16MemorySSAUpdaterEE3$_0EEbOT_T0_.exit.i.i"

bb.aw:                                            ; preds = %bb.av
  %.not.i.i.i.i47.i.i.i.i.i.i.i = icmp eq i64 %i.mk, 4294967294
  %i.mq = add nuw i64 %.sroa.15.094.i.i.i.i.i.i.i, 5
  %47 = and i64 %i.mq, 4294967295
  %i.mr = select i1 %.not.i.i.i.i47.i.i.i.i.i.i.i, i64 1, i64 %47
  %i.ms = getelementptr inbounds nuw [32 x i8], ptr %.pre.i80.pre.i, i64 %i.mr
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !93
  %.not92.i.i.i.i.i.i.i = icmp eq ptr %i.mt, %.val41.val.val.i.i.i.i.i.i.i
  br i1 %.not92.i.i.i.i.i.i.i, label %bb.ax, label %"_ZN4llvm6all_ofINS_14iterator_rangeINS_10SwitchInst16CaseIteratorImplINS2_10CaseHandleEEEEEZL21unswitchTrivialSwitchRNS_4LoopERS2_RNS_13DominatorTreeERNS_8LoopInfoEPNS_15ScalarEvolutionEPNS_16MemorySSAUpdaterEE3$_0EEbOT_T0_.exit.i.i"

bb.ax:                                            ; preds = %bb.aw
  %i.mu = add nsw i64 %.095.i.i.i.i.i.i.i, -1
  %i.mv = icmp sgt i64 %.095.i.i.i.i.i.i.i, 1
  br i1 %i.mv, label %bb.at, label %._crit_edge.i.i.i.i.i.i.i, !llvm.loop !494

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %bb.ax, %bb.as
  %.sroa.15.0.lcssa.i.i.i.i.i.i.i = phi i64 [ 1, %bb.as ], [ %i.mf, %bb.ax ] ; 6 uses
  %i.mw = sub nsw i64 %i.mb, %.sroa.15.0.lcssa.i.i.i.i.i.i.i
  switch i64 %i.mw, label %.critedge.i.i [
    i64 3, label %bb.ay
    i64 2, label %._crit_edge._crit_edge.i.i.i.i.i.i.i
    i64 1, label %._crit_edge._crit_edge101.i.i.i.i.i.i.i
  ]

bb.ay:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.mx = add nuw nsw i64 %.sroa.15.0.lcssa.i.i.i.i.i.i.i, 2
  %i.my = and i64 %i.mx, 4294967295
  %i.mz = getelementptr inbounds nuw [32 x i8], ptr %.pre.i80.pre.i, i64 %i.my
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !93
  %.not.i.i.i.i.i283.i.i = icmp eq ptr %i.na, %.val41.val.val.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i283.i.i, label %bb.az, label %"_ZN4llvm6all_ofINS_14iterator_rangeINS_10SwitchInst16CaseIteratorImplINS2_10CaseHandleEEEEEZL21unswitchTrivialSwitchRNS_4LoopERS2_RNS_13DominatorTreeERNS_8LoopInfoEPNS_15ScalarEvolutionEPNS_16MemorySSAUpdaterEE3$_0EEbOT_T0_.exit.i.i"

bb.az:                                            ; preds = %bb.ay
  %i.nb = add nuw nsw i64 %.sroa.15.0.lcssa.i.i.i.i.i.i.i, 1
  br label %._crit_edge._crit_edge.i.i.i.i.i.i.i

._crit_edge._crit_edge.i.i.i.i.i.i.i:             ; preds = %bb.az, %._crit_edge.i.i.i.i.i.i.i
  %.sroa.15.1.i.i.i.i.i.i.i = phi i64 [ %i.nb, %bb.az ], [ %.sroa.15.0.lcssa.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i ] ; 4 uses
  %i.nc = and i64 %.sroa.15.1.i.i.i.i.i.i.i, 4294967295
  %.not.i.i.i.i51.i.i.i.i.i.i.i = icmp eq i64 %i.nc, 4294967294
  %i.nd = add i64 %.sroa.15.1.i.i.i.i.i.i.i, 2
  %i.ne = and i64 %i.nd, 4294967295
  %i.nf = select i1 %.not.i.i.i.i51.i.i.i.i.i.i.i, i64 1, i64 %i.ne
  %i.ng = getelementptr inbounds nuw [32 x i8], ptr %.pre.i80.pre.i, i64 %i.nf
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !93
  %.not87.i.i.i.i.i.i.i = icmp eq ptr %i.nh, %.val41.val.val.i.i.i.i.i.i.i
  br i1 %.not87.i.i.i.i.i.i.i, label %bb.ba, label %"_ZN4llvm6all_ofINS_14iterator_rangeINS_10SwitchInst16CaseIteratorImplINS2_10CaseHandleEEEEEZL21unswitchTrivialSwitchRNS_4LoopERS2_RNS_13DominatorTreeERNS_8LoopInfoEPNS_15ScalarEvolutionEPNS_16MemorySSAUpdaterEE3$_0EEbOT_T0_.exit.i.i"

bb.ba:                                            ; preds = %._crit_edge._crit_edge.i.i.i.i.i.i.i
  %i.ni = add nuw nsw i64 %.sroa.15.1.i.i.i.i.i.i.i, 1
  br label %._crit_edge._crit_edge101.i.i.i.i.i.i.i

._crit_edge._crit_edge101.i.i.i.i.i.i.i:          ; preds = %bb.ba, %._crit_edge.i.i.i.i.i.i.i
  %.sroa.15.2.i.i.i.i.i.i.i = phi i64 [ %i.ni, %bb.ba ], [ %.sroa.15.0.lcssa.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i ] ; 3 uses
  %i.nj = and i64 %.sroa.15.2.i.i.i.i.i.i.i, 4294967295
  %.not.i.i.i.i53.i.i.i.i.i.i.i = icmp eq i64 %i.nj, 4294967294
  %i.nk = add i64 %.sroa.15.2.i.i.i.i.i.i.i, 2
  %i.nl = and i64 %i.nk, 4294967295
  %i.nm = select i1 %.not.i.i.i.i53.i.i.i.i.i.i.i, i64 1, i64 %i.nl
  %i.nn = getelementptr inbounds nuw [32 x i8], ptr %.pre.i80.pre.i, i64 %i.nm
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !93
  %.not88.i.i.i.i.i.i.i = icmp eq ptr %i.no, %.val41.val.val.i.i.i.i.i.i.i
  br i1 %.not88.i.i.i.i.i.i.i, label %.critedge.i.i, label %"_ZN4llvm6all_ofINS_14iterator_rangeINS_10SwitchInst16CaseIteratorImplINS2_10CaseHandleEEEEEZL21unswitchTrivialSwitchRNS_4LoopERS2_RNS_13DominatorTreeERNS_8LoopInfoEPNS_15ScalarEvolutionEPNS_16MemorySSAUpdaterEE3$_0EEbOT_T0_.exit.i.i"

"_ZN4llvm6all_ofINS_14iterator_rangeINS_10SwitchInst16CaseIteratorImplINS2_10CaseHandleEEEEEZL21unswitchTrivialSwitchRNS_4LoopERS2_RNS_13DominatorTreeERNS_8LoopInfoEPNS_15ScalarEvolutionEPNS_16MemorySSAUpdaterEE3$_0EEbOT_T0_.exit.i.i": ; preds = %bb.aw, %bb.av, %bb.au, %bb.at, %._crit_edge._crit_edge101.i.i.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i.i.i, %bb.ay
  %.sroa.9.0.i.i.i.i.i.i.i = phi i64 [ %.sroa.15.1.i.i.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i.i.i ], [ %.sroa.15.0.lcssa.i.i.i.i.i.i.i, %bb.ay ], [ %.sroa.15.2.i.i.i.i.i.i.i, %._crit_edge._crit_edge101.i.i.i.i.i.i.i ], [ %.sroa.15.094.i.i.i.i.i.i.i, %bb.at ], [ %42, %bb.au ], [ %i.mg, %bb.av ], [ %i.mj, %bb.aw ]
  %i.np = icmp eq i64 %.sroa.9.0.i.i.i.i.i.i.i, %i.mb
  %spec.select.i = select i1 %i.np, ptr %.val41.val.val.i.i.i.i.i.i.i, ptr null
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %"_ZN4llvm6all_ofINS_14iterator_rangeINS_10SwitchInst16CaseIteratorImplINS2_10CaseHandleEEEEEZL21unswitchTrivialSwitchRNS_4LoopERS2_RNS_13DominatorTreeERNS_8LoopInfoEPNS_15ScalarEvolutionEPNS_16MemorySSAUpdaterEE3$_0EEbOT_T0_.exit.i.i", %._crit_edge._crit_edge101.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i
  %.0176.i.i = phi ptr [ %spec.select.i, %"_ZN4llvm6all_ofINS_14iterator_rangeINS_10SwitchInst16CaseIteratorImplINS2_10CaseHandleEEEEEZL21unswitchTrivialSwitchRNS_4LoopERS2_RNS_13DominatorTreeERNS_8LoopInfoEPNS_15ScalarEvolutionEPNS_16MemorySSAUpdaterEE3$_0EEbOT_T0_.exit.i.i" ], [ %.val41.val.val.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i ], [ %.val41.val.val.i.i.i.i.i.i.i, %._crit_edge._crit_edge101.i.i.i.i.i.i.i ] ; 3 uses
  %i.nq = load ptr, ptr %i.d, align 8, !tbaa !148
  %.not193.i.i = icmp eq ptr %i.nq, null
  br i1 %.not193.i.i, label %bb.bb, label %bb.bc

.critedge.thread.i.i:                             ; preds = %._crit_edge603.i.i
  %i.nr = load ptr, ptr %i.d, align 8, !tbaa !148
  %.not193565.i.i = icmp eq ptr %i.nr, null
  br i1 %.not193565.i.i, label %.thread.i.i, label %bb.bc

.thread.i.i:                                      ; preds = %.critedge.thread.i.i
  %i.ns = load ptr, ptr %i.ei, align 8, !tbaa !163
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 32
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !93
  br label %bb.bc

bb.bb:                                            ; preds = %.critedge.i.i
  %i.nv = getelementptr inbounds nuw i8, ptr %.pre.i80.pre.i, i64 32
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !93
  %.not194.i.i = icmp eq ptr %i.nw, %.0176.i.i
  %spec.store.select.i.i = select i1 %.not194.i.i, ptr %.0176.i.i, ptr null
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %.thread.i.i, %.critedge.thread.i.i, %.critedge.i.i
  %.1177.i.i = phi ptr [ %.0176.i.i, %.critedge.i.i ], [ %i.nu, %.thread.i.i ], [ %spec.store.select.i.i, %bb.bb ], [ null, %.critedge.thread.i.i ] ; 4 uses
  %i.nx = call noundef ptr @_ZNK4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE16getLoopPreheaderEv(ptr noundef nonnull align 8 dereferenceable(144) %0) #24 ; 13 uses
  %i.ny = load ptr, ptr %i.i, align 8, !tbaa !146
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !148
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #24
  store i16 257, ptr %i.aq, align 8
  %i.oa = call noundef ptr @_ZN4llvm9SplitEdgeEPNS_10BasicBlockES1_PNS_13DominatorTreeEPNS_8LoopInfoEPNS_16MemorySSAUpdaterERKNS_5TwineE(ptr noundef %i.nx, ptr noundef %i.nz, ptr noundef nonnull align 8 dereferenceable(204) %1, ptr noundef nonnull align 8 dereferenceable(184) %2, ptr noundef %9, ptr noundef nonnull align 8 dereferenceable(34) %28) #24 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #24
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nx, i64 48
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !162
  %i.od = getelementptr inbounds i8, ptr %i.oc, i64 -24
  %i.oe = call { ptr, i64 } @_ZN4llvm11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(72) %i.od) #24 ; 0 uses
  %i.of = load i32, ptr %i.am, align 8, !tbaa !69
  call void @_ZN4llvm14InsertPositionC1EPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(16) %29, ptr noundef nonnull %i.nx) #24
  %i.og = load ptr, ptr %29, align 8
  %i.oh = load i64, ptr %i.ar, align 8
  %i.oi = call noundef ptr @_ZN4llvm4UsernwEmNS0_26HungOffOperandsAllocMarkerE(i64 noundef 80) #24 ; 3 uses
  call void @_ZN4llvm10SwitchInstC1EPNS_5ValueEPNS_10BasicBlockEjNS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(76) %i.oi, ptr noundef %i.eo, ptr noundef %i.oa, i32 noundef %i.of, ptr %i.og, i64 %i.oh) #24
  %i.oj = load ptr, ptr %26, align 8, !tbaa !565, !nonnull !54, !align !68
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 48
  %.sroa.063.0.copyload.i.i = load ptr, ptr %i.ok, align 8, !tbaa !198
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oi, i64 48
  store ptr %.sroa.063.0.copyload.i.i, ptr %i.ol, align 8, !tbaa !198
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #24
  store ptr %i.oi, ptr %30, align 8, !tbaa !553
  store i8 0, ptr %i.as, align 8, !tbaa !555
  store i8 0, ptr %i.at, align 8, !tbaa !561
  call void @_ZN4llvm27SwitchInstProfUpdateWrapper4initEv(ptr noundef nonnull align 8 dereferenceable(65) %30) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #24
  store ptr %.ptr575.i.i, ptr %31, align 8, !tbaa !55
  store i32 2, ptr %i.au, align 8, !tbaa !125
  store i32 0, ptr %i.av, align 4, !tbaa !126
  store i8 1, ptr %i.aw, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #24
  store i32 1, ptr %32, align 8
  store i32 0, ptr %i.ax, align 8
  %i.om = load ptr, ptr %i.d, align 8, !tbaa !148 ; 6 uses
  %.not195.i.i = icmp eq ptr %i.om, null
  br i1 %.not195.i.i, label %_ZL37rewritePHINodesForUnswitchedExitBlockRN4llvm10BasicBlockES1_S1_.exit.i.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 16
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !199
  %i.op = icmp eq ptr %i.oo, null
  br i1 %i.op, label %_ZN4llvm15SmallPtrSetImplIPNS_10BasicBlockEE6insertES2_.exit.i.i, label %bb.be

_ZN4llvm15SmallPtrSetImplIPNS_10BasicBlockEE6insertES2_.exit.i.i: ; preds = %bb.bd
  store i32 1, ptr %i.av, align 4, !tbaa !126, !noalias !566
  store ptr %i.om, ptr %.ptr575.i.i, align 8, !tbaa !141, !noalias !566
  %i.oq = call { ptr, ptr } @_ZN4llvm10BasicBlock4phisEv(ptr noundef nonnull align 8 dereferenceable(80) %i.om) #24 ; 2 uses
  %i.or = extractvalue { ptr, ptr } %i.oq, 0      ; 2 uses
  %i.os = extractvalue { ptr, ptr } %i.oq, 1      ; 2 uses
  %.not14.i.i.i = icmp eq ptr %i.or, %i.os
  br i1 %.not14.i.i.i, label %_ZL37rewritePHINodesForUnswitchedExitBlockRN4llvm10BasicBlockES1_S1_.exit.i.i, label %.lr.ph17.i.i.i.preheader

.lr.ph17.i.i.i.preheader:                         ; preds = %_ZN4llvm15SmallPtrSetImplIPNS_10BasicBlockEE6insertES2_.exit.i.i
  %broadcast.splatinsert311 = insertelement <2 x ptr> poison, ptr %i.nx, i64 0
  %broadcast.splat312 = shufflevector <2 x ptr> %broadcast.splatinsert311, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph17.i.i.i

.lr.ph17.i.i.i:                                   ; preds = %.lr.ph17.i.i.i.preheader, %._crit_edge.i.i84.i
  %.sroa.06.015.i.i.i = phi ptr [ %spec.select.i.i.i1.i.i.i.i, %._crit_edge.i.i84.i ], [ %i.or, %.lr.ph17.i.i.i.preheader ] ; 4 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %.sroa.06.015.i.i.i, i64 4
  %i.ou = load i32, ptr %i.ot, align 4
  %i.ov = and i32 %i.ou, 268435455                ; 3 uses
  %i.ow = zext nneg i32 %i.ov to i64              ; 3 uses
  %.not1112.i.i.i = icmp eq i32 %i.ov, 0
  br i1 %.not1112.i.i.i, label %._crit_edge.i.i84.i, label %.lr.ph.i292.i.i

.lr.ph.i292.i.i:                                  ; preds = %.lr.ph17.i.i.i
  %i.ox = getelementptr inbounds i8, ptr %.sroa.06.015.i.i.i, i64 -8
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !163
  %i.oz = getelementptr inbounds nuw i8, ptr %.sroa.06.015.i.i.i, i64 76
  %i.pa = load i32, ptr %i.oz, align 4, !tbaa !178
  %i.pb = zext i32 %i.pa to i64
  %i.pc = getelementptr inbounds nuw [32 x i8], ptr %i.oy, i64 %i.pb ; 2 uses
  %min.iters.check308 = icmp samesign ult i32 %i.ov, 4
  br i1 %min.iters.check308, label %scalar.ph307.preheader, label %vector.ph309

vector.ph309:                                     ; preds = %.lr.ph.i292.i.i
  %n.vec310 = and i64 %i.ow, 268435452            ; 3 uses
  br label %vector.body313

vector.body313:                                   ; preds = %vector.body313, %vector.ph309
  %index314 = phi i64 [ 0, %vector.ph309 ], [ %index.next315, %vector.body313 ] ; 2 uses
  %i.pd = getelementptr inbounds nuw [8 x i8], ptr %i.pc, i64 %index314 ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 16
  store <2 x ptr> %broadcast.splat312, ptr %i.pd, align 8, !tbaa !148
  store <2 x ptr> %broadcast.splat312, ptr %i.pe, align 8, !tbaa !148
  %index.next315 = add nuw i64 %index314, 4       ; 2 uses
  %i.pf = icmp eq i64 %index.next315, %n.vec310
  br i1 %i.pf, label %middle.block316, label %vector.body313, !llvm.loop !497

middle.block316:                                  ; preds = %vector.body313
  %cmp.n317 = icmp eq i64 %n.vec310, %i.ow
  br i1 %cmp.n317, label %._crit_edge.i.i84.i, label %scalar.ph307.preheader

scalar.ph307.preheader:                           ; preds = %.lr.ph.i292.i.i, %middle.block316
  %.sroa.01.013.i.i.i.ph = phi i64 [ 0, %.lr.ph.i292.i.i ], [ %n.vec310, %middle.block316 ]
  br label %scalar.ph307

._crit_edge.i.i84.i:                              ; preds = %scalar.ph307, %middle.block316, %.lr.ph17.i.i.i
  %i.pg = getelementptr inbounds nuw i8, ptr %.sroa.06.015.i.i.i, i64 32
  %i.ph = load ptr, ptr %i.pg, align 8, !tbaa !160
  %i.pi = getelementptr inbounds i8, ptr %i.ph, i64 -24 ; 2 uses
  %i.pj = load i8, ptr %i.pi, align 8, !tbaa !157
  %i.pk = icmp eq i8 %i.pj, 87
  %spec.select.i.i.i1.i.i.i.i = select i1 %i.pk, ptr %i.pi, ptr null ; 2 uses
  %.not.i293.i.i = icmp eq ptr %spec.select.i.i.i1.i.i.i.i, %i.os
  br i1 %.not.i293.i.i, label %_ZL37rewritePHINodesForUnswitchedExitBlockRN4llvm10BasicBlockES1_S1_.exit.i.i, label %.lr.ph17.i.i.i

scalar.ph307:                                     ; preds = %scalar.ph307.preheader, %scalar.ph307
  %.sroa.01.013.i.i.i = phi i64 [ %i.pm, %scalar.ph307 ], [ %.sroa.01.013.i.i.i.ph, %scalar.ph307.preheader ] ; 2 uses
  %i.pl = getelementptr inbounds nuw [8 x i8], ptr %i.pc, i64 %.sroa.01.013.i.i.i
  store ptr %i.nx, ptr %i.pl, align 8, !tbaa !148
  %i.pm = add nuw nsw i64 %.sroa.01.013.i.i.i, 1  ; 2 uses
  %.not11.i.i.i = icmp eq i64 %i.pm, %i.ow
  br i1 %.not11.i.i.i, label %._crit_edge.i.i84.i, label %scalar.ph307, !llvm.loop !498

bb.be:                                            ; preds = %bb.bd
  %i.pn = getelementptr inbounds nuw i8, ptr %i.om, i64 56
  %i.po = load ptr, ptr %i.pn, align 8, !tbaa !160
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #24
  store i16 257, ptr %i.ay, align 8
  %i.pp = call noundef ptr @_ZN4llvm10SplitBlockEPNS_10BasicBlockENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ES0_EELb0ELb0EEEPNS_13DominatorTreeEPNS_8LoopInfoEPNS_16MemorySSAUpdaterERKNS_5TwineE(ptr noundef nonnull %i.om, ptr %i.po, i64 1, ptr noundef nonnull align 8 dereferenceable(204) %1, ptr noundef nonnull align 8 dereferenceable(184) %2, ptr noundef %9, ptr noundef nonnull align 8 dereferenceable(34) %33) #24 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #24
  %i.pq = load ptr, ptr %i.d, align 8, !tbaa !148
  %i.pr = getelementptr i8, ptr %i.pp, i64 56
  %.val209.i.i = load ptr, ptr %i.pr, align 8, !tbaa !160
  call fastcc void @_ZL41rewritePHINodesForExitAndUnswitchedBlocksRN4llvm10BasicBlockES1_S1_S1_b(ptr noundef nonnull align 8 dereferenceable(80) %i.pq, ptr %.val209.i.i, ptr noundef nonnull align 8 dereferenceable(80) %i.er, ptr noundef nonnull align 8 dereferenceable(80) %i.nx, i1 noundef zeroext true)
  %i.ps = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockES3_Lj2ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %32, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %.fca.0.extract.i295.i.i = extractvalue { ptr, i8 } %i.ps, 0
  %i.pt = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i295.i.i, i64 8
  store ptr %i.pp, ptr %i.pt, align 8, !tbaa !148
  store ptr %i.pp, ptr %i.d, align 8, !tbaa !148
  br label %_ZL37rewritePHINodesForUnswitchedExitBlockRN4llvm10BasicBlockES1_S1_.exit.i.i

_ZL37rewritePHINodesForUnswitchedExitBlockRN4llvm10BasicBlockES1_S1_.exit.i.i: ; preds = %._crit_edge.i.i84.i, %bb.be, %_ZN4llvm15SmallPtrSetImplIPNS_10BasicBlockEE6insertES2_.exit.i.i, %bb.bc
  %i.pu = load ptr, ptr %25, align 8, !tbaa !57, !noalias !567 ; 2 uses
  %i.pv = load i32, ptr %i.am, align 8, !tbaa !69, !noalias !567 ; 2 uses
  %.not576607.i.i = icmp eq i32 %i.pv, 0
  br i1 %.not576607.i.i, label %._crit_edge615.i.i, label %.lr.ph609.i.i

.lr.ph609.i.i:                                    ; preds = %_ZL37rewritePHINodesForUnswitchedExitBlockRN4llvm10BasicBlockES1_S1_.exit.i.i
  %i.pw = zext i32 %i.pv to i64
  %.idx641.i.i = mul nuw nsw i64 %i.pw, 24
  %i.px = getelementptr inbounds nuw i8, ptr %i.pu, i64 %.idx641.i.i
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %i.nx, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %bb.bf

._crit_edge610.i.i:                               ; preds = %_ZL37rewritePHINodesForUnswitchedExitBlockRN4llvm10BasicBlockES1_S1_.exit334.i.i
  %.pre654.i.i = load ptr, ptr %25, align 8, !tbaa !57, !noalias !568 ; 2 uses
  %.pre655.i.i = load i32, ptr %i.am, align 8, !tbaa !69, !noalias !568 ; 2 uses
  %.not577611.i.i = icmp eq i32 %.pre655.i.i, 0
  br i1 %.not577611.i.i, label %._crit_edge615.i.i, label %.lr.ph614.preheader.i.i

.lr.ph614.preheader.i.i:                          ; preds = %._crit_edge610.i.i
  %i.py = zext i32 %.pre655.i.i to i64
  %.idx642.i.i = mul nuw nsw i64 %i.py, 24
  %i.pz = getelementptr inbounds nuw i8, ptr %.pre654.i.i, i64 %.idx642.i.i
  br label %.lr.ph614.i.i

bb.bf:                                            ; preds = %_ZL37rewritePHINodesForUnswitchedExitBlockRN4llvm10BasicBlockES1_S1_.exit334.i.i, %.lr.ph609.i.i
  %.sroa.0488.0608.i.i = phi ptr [ %i.px, %.lr.ph609.i.i ], [ %i.qa, %_ZL37rewritePHINodesForUnswitchedExitBlockRN4llvm10BasicBlockES1_S1_.exit334.i.i ] ; 2 uses
  %i.qa = getelementptr inbounds i8, ptr %.sroa.0488.0608.i.i, i64 -24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #24
  %i.qb = getelementptr inbounds i8, ptr %.sroa.0488.0608.i.i, i64 -16 ; 2 uses
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !148 ; 5 uses
  store ptr %i.qc, ptr %i.g, align 8, !tbaa !148
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 16
end_hunk_0
