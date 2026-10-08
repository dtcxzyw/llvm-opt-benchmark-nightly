Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SLPVectorizer?download=true
inline.NumInlined: 69834
inline.NumDeleted: 26527
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 296
loop-unroll.NumUnrolled: 332
begin_hunk_0_@_ZN4llvm17SLPVectorizerPass18tryToVectorizeListENS_8ArrayRefIPNS_5ValueEEERNS_13slpvectorizer7BoUpSLPEbb:bb.a
bb.s:                                             ; preds = %bb.r, %_ZNK4llvm13slpvectorizer7BoUpSLP12getMaximumVFEjj.exit
  %i.fh = icmp ult i32 %.sroa.speculated332, 2
  br i1 %i.fh, label %bb.t, label %.thread

bb.t:                                             ; preds = %bb.s
  %i.fi = getelementptr inbounds nuw i8, ptr %3, i64 4888
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !1850 ; 3 uses
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !1967
  %i.fl = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm8Function10getContextEv(ptr noundef nonnull align 8 dereferenceable(140) %i.fk) #31
  %i.fm = tail call noundef ptr @_ZN4llvm11LLVMContext21getLLVMRemarkStreamerEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fl) #31
  %.not.i.i170 = icmp eq ptr %i.fm, null
  br i1 %.not.i.i170, label %_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.i205, label %_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.thread.i171

_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.i205: ; preds = %bb.t
  %i.fn = load ptr, ptr %i.fj, align 8, !tbaa !1967
  %i.fo = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm8Function10getContextEv(ptr noundef nonnull align 8 dereferenceable(140) %i.fn) #31
  %i.fp = tail call noundef ptr @_ZNK4llvm11LLVMContext17getDiagHandlerPtrEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fo) #31 ; 2 uses
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !361
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 48
  %i.fs = load ptr, ptr %i.fr, align 8
  %i.ft = tail call noundef zeroext i1 %i.fs(ptr noundef nonnull align 8 dereferenceable(32) %i.fp) #31, !inline_history !9024
  br i1 %i.ft, label %_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.thread.i171, label %"_ZN4llvm25OptimizationRemarkEmitter4emitIZNS_17SLPVectorizerPass18tryToVectorizeListENS_8ArrayRefIPNS_5ValueEEERNS_13slpvectorizer7BoUpSLPEbbE3$_0EEvT_PDTclfL0p_EE.exit"

_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.thread.i171: ; preds = %_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.i205, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #31
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9051)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #31, !noalias !9051
  call void @_ZN4llvm24OptimizationRemarkMissedC1EPKcNS_9StringRefEPKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(432) %13, ptr noundef nonnull @.str.99, ptr nonnull @.str.126, i64 7, ptr noundef nonnull %.val162) #31, !noalias !9051
  call void @_ZN4llvm30DiagnosticInfoOptimizationBase6insertENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(432) %13, ptr nonnull @.str.127, i64 48) #31, !noalias !9051
  call void @_ZN4llvm30DiagnosticInfoOptimizationBase6insertENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(432) %13, ptr nonnull @.str.128, i64 28) #31, !noalias !9051
  %i.fu = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.fv = getelementptr inbounds nuw i8, ptr %13, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.fu, ptr noundef nonnull align 8 dereferenceable(5) %i.fv, i64 5, i1 false)
  %i.fw = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.fx = getelementptr inbounds nuw i8, ptr %13, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fw, ptr noundef nonnull align 8 dereferenceable(24) %i.fx, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm30DiagnosticInfoOptimizationBaseE, i64 16), ptr %14, align 8, !tbaa !361, !alias.scope !9051
  %i.fy = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.fz = getelementptr inbounds nuw i8, ptr %13, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.fy, ptr noundef nonnull align 8 dereferenceable(40) %i.fz, i64 40, i1 false)
  %i.ga = getelementptr inbounds nuw i8, ptr %14, i64 80 ; 4 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %14, i64 96 ; 2 uses
  store ptr %i.gb, ptr %i.ga, align 8, !tbaa !359, !alias.scope !9051
  %i.gc = getelementptr inbounds nuw i8, ptr %14, i64 88 ; 2 uses
  store i32 0, ptr %i.gc, align 8, !tbaa !371, !alias.scope !9051
  %i.gd = getelementptr inbounds nuw i8, ptr %14, i64 92
  store i32 4, ptr %i.gd, align 4, !tbaa !372, !alias.scope !9051
  %i.ge = getelementptr inbounds nuw i8, ptr %13, i64 88 ; 2 uses
  %i.gf = load i32, ptr %i.ge, align 8, !tbaa !371, !noalias !9051
  %.not.i.i.i.i.i.i.i172 = icmp eq i32 %i.gf, 0
  br i1 %.not.i.i.i.i.i.i.i172, label %_ZN4llvm24OptimizationRemarkMissedC2EOS0_.exit.i.i173, label %bb.u

bb.u:                                             ; preds = %_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.thread.i171
  %i.gg = getelementptr inbounds nuw i8, ptr %13, i64 80
  %i.gh = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplINS_30DiagnosticInfoOptimizationBase8ArgumentEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(336) %i.ga, ptr noundef nonnull align 8 dereferenceable(336) %i.gg) ; 0 uses
  %.pre.i.i = load i32, ptr %i.ge, align 8, !tbaa !371, !noalias !9051
  br label %_ZN4llvm24OptimizationRemarkMissedC2EOS0_.exit.i.i173

_ZN4llvm24OptimizationRemarkMissedC2EOS0_.exit.i.i173: ; preds = %bb.u, %_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.thread.i171
  %i.gi = phi i32 [ 0, %_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.thread.i171 ], [ %.pre.i.i, %bb.u ] ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %14, i64 416
  %i.gk = getelementptr inbounds nuw i8, ptr %13, i64 416
  %i.gl = load i64, ptr %i.gk, align 8, !noalias !9051
  store i64 %i.gl, ptr %i.gj, align 8, !alias.scope !9051
  %i.gm = getelementptr inbounds nuw i8, ptr %14, i64 424
  %i.gn = getelementptr inbounds nuw i8, ptr %13, i64 424
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !1983, !noalias !9051
  store ptr %i.go, ptr %i.gm, align 8, !tbaa !1983, !alias.scope !9051
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm24OptimizationRemarkMissedE, i64 16), ptr %14, align 8, !tbaa !361, !alias.scope !9051
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm30DiagnosticInfoOptimizationBaseE, i64 16), ptr %13, align 8, !tbaa !361, !noalias !9051
  %i.gp = getelementptr inbounds nuw i8, ptr %13, i64 80 ; 2 uses
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !359, !noalias !9051 ; 3 uses
  %.not4.i.i.i.i.i174 = icmp eq i32 %i.gi, 0
  br i1 %.not4.i.i.i.i.i174, label %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i186, label %.lr.ph.i.preheader.i.i.i.i175

.lr.ph.i.preheader.i.i.i.i175:                    ; preds = %_ZN4llvm24OptimizationRemarkMissedC2EOS0_.exit.i.i173
  %i.gr = zext i32 %i.gi to i64
  %.idx.i.i.i.i176 = mul nuw nsw i64 %i.gr, 80
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 %.idx.i.i.i.i176
  br label %.lr.ph.i.i.i.i.i177

.lr.ph.i.i.i.i.i177:                              ; preds = %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i.i182, %.lr.ph.i.preheader.i.i.i.i175
  %.05.i.i.i.i.i178 = phi ptr [ %i.gt, %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i.i182 ], [ %i.gs, %.lr.ph.i.preheader.i.i.i.i175 ] ; 4 uses
  %i.gt = getelementptr inbounds i8, ptr %.05.i.i.i.i.i178, i64 -80 ; 3 uses
  %i.gu = getelementptr inbounds i8, ptr %.05.i.i.i.i.i178, i64 -48
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !1188 ; 2 uses
  %i.gw = getelementptr inbounds i8, ptr %.05.i.i.i.i.i178, i64 -32 ; 2 uses
  %i.gx = icmp eq ptr %i.gv, %i.gw
  br i1 %i.gx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i180, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i179

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i179: ; preds = %.lr.ph.i.i.i.i.i177
  %i.gy = load i64, ptr %i.gw, align 8, !tbaa !571
  %i.gz = add i64 %i.gy, 1
  call void @_ZdlPvm(ptr noundef %i.gv, i64 noundef %i.gz) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i180

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i180: ; preds = %.lr.ph.i.i.i.i.i177, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i179
  %i.ha = load ptr, ptr %i.gt, align 8, !tbaa !1188 ; 2 uses
  %i.hb = getelementptr inbounds i8, ptr %.05.i.i.i.i.i178, i64 -64 ; 2 uses
  %i.hc = icmp eq ptr %i.ha, %i.hb
  br i1 %i.hc, label %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i.i182, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i181

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i181: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i180
  %i.hd = load i64, ptr %i.hb, align 8, !tbaa !571
  %i.he = add i64 %i.hd, 1
  call void @_ZdlPvm(ptr noundef %i.ha, i64 noundef %i.he) #32
  br label %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i.i182

_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i.i182: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i180, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i181
  %.not.i.i.i.i.i183 = icmp eq ptr %i.gq, %i.gt
  br i1 %.not.i.i.i.i.i183, label %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i.i184, label %.lr.ph.i.i.i.i.i177, !llvm.loop !118

_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i.i184: ; preds = %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i.i182
  %.pre.i.i.i.i185 = load ptr, ptr %i.gp, align 8, !tbaa !359, !noalias !9051
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i186

_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i186: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i.i184, %_ZN4llvm24OptimizationRemarkMissedC2EOS0_.exit.i.i173
  %i.hf = phi ptr [ %.pre.i.i.i.i185, %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i.i184 ], [ %i.gq, %_ZN4llvm24OptimizationRemarkMissedC2EOS0_.exit.i.i173 ] ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %13, i64 96
  %i.hh = icmp eq ptr %i.hf, %i.hg
  br i1 %i.hh, label %"_ZZN4llvm17SLPVectorizerPass18tryToVectorizeListENS_8ArrayRefIPNS_5ValueEEERNS_13slpvectorizer7BoUpSLPEbbENK3$_1clEv.exit.i", label %bb.v

bb.v:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i186
  call void @free(ptr noundef %i.hf) #31
  br label %"_ZZN4llvm17SLPVectorizerPass18tryToVectorizeListENS_8ArrayRefIPNS_5ValueEEERNS_13slpvectorizer7BoUpSLPEbbENK3$_1clEv.exit.i"

"_ZZN4llvm17SLPVectorizerPass18tryToVectorizeListENS_8ArrayRefIPNS_5ValueEEERNS_13slpvectorizer7BoUpSLPEbbENK3$_1clEv.exit.i": ; preds = %bb.v, %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i186
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31, !noalias !9051
  call void @_ZN4llvm25OptimizationRemarkEmitter4emitERNS_30DiagnosticInfoOptimizationBaseE(ptr noundef nonnull align 8 dereferenceable(24) %i.fj, ptr noundef nonnull align 8 dereferenceable(424) %14) #31
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm30DiagnosticInfoOptimizationBaseE, i64 16), ptr %14, align 8, !tbaa !361
  %i.hi = load ptr, ptr %i.ga, align 8, !tbaa !359 ; 3 uses
  %i.hj = load i32, ptr %i.gc, align 8, !tbaa !371 ; 2 uses
  %.not4.i.i.i.i187 = icmp eq i32 %i.hj, 0
  br i1 %.not4.i.i.i.i187, label %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i199, label %.lr.ph.i.preheader.i.i.i188

.lr.ph.i.preheader.i.i.i188:                      ; preds = %"_ZZN4llvm17SLPVectorizerPass18tryToVectorizeListENS_8ArrayRefIPNS_5ValueEEERNS_13slpvectorizer7BoUpSLPEbbENK3$_1clEv.exit.i"
  %i.hk = zext i32 %i.hj to i64
  %.idx.i.i.i189 = mul nuw nsw i64 %i.hk, 80
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hi, i64 %.idx.i.i.i189
  br label %.lr.ph.i.i.i.i190

.lr.ph.i.i.i.i190:                                ; preds = %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i195, %.lr.ph.i.preheader.i.i.i188
  %.05.i.i.i.i191 = phi ptr [ %i.hm, %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i195 ], [ %i.hl, %.lr.ph.i.preheader.i.i.i188 ] ; 4 uses
  %i.hm = getelementptr inbounds i8, ptr %.05.i.i.i.i191, i64 -80 ; 3 uses
  %i.hn = getelementptr inbounds i8, ptr %.05.i.i.i.i191, i64 -48
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !1188 ; 2 uses
  %i.hp = getelementptr inbounds i8, ptr %.05.i.i.i.i191, i64 -32 ; 2 uses
  %i.hq = icmp eq ptr %i.ho, %i.hp
  br i1 %i.hq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i193, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i192

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i192: ; preds = %.lr.ph.i.i.i.i190
  %i.hr = load i64, ptr %i.hp, align 8, !tbaa !571
  %i.hs = add i64 %i.hr, 1
  call void @_ZdlPvm(ptr noundef %i.ho, i64 noundef %i.hs) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i193

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i193: ; preds = %.lr.ph.i.i.i.i190, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i192
  %i.ht = load ptr, ptr %i.hm, align 8, !tbaa !1188 ; 2 uses
  %i.hu = getelementptr inbounds i8, ptr %.05.i.i.i.i191, i64 -64 ; 2 uses
  %i.hv = icmp eq ptr %i.ht, %i.hu
  br i1 %i.hv, label %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i195, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i194

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i194: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i193
  %i.hw = load i64, ptr %i.hu, align 8, !tbaa !571
  %i.hx = add i64 %i.hw, 1
  call void @_ZdlPvm(ptr noundef %i.ht, i64 noundef %i.hx) #32
  br label %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i195

_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i195: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i193, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i194
  %.not.i.i.i.i196 = icmp eq ptr %i.hi, %i.hm
  br i1 %.not.i.i.i.i196, label %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i197, label %.lr.ph.i.i.i.i190, !llvm.loop !118

_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i197: ; preds = %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i195
  %.pre.i.i.i198 = load ptr, ptr %i.ga, align 8, !tbaa !359
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i199

_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i199: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i197, %"_ZZN4llvm17SLPVectorizerPass18tryToVectorizeListENS_8ArrayRefIPNS_5ValueEEERNS_13slpvectorizer7BoUpSLPEbbENK3$_1clEv.exit.i"
  %i.hy = phi ptr [ %.pre.i.i.i198, %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i197 ], [ %i.hi, %"_ZZN4llvm17SLPVectorizerPass18tryToVectorizeListENS_8ArrayRefIPNS_5ValueEEERNS_13slpvectorizer7BoUpSLPEbbENK3$_1clEv.exit.i" ] ; 2 uses
  %i.hz = icmp eq ptr %i.hy, %i.gb
  br i1 %i.hz, label %_ZN4llvm30DiagnosticInfoOptimizationBaseD2Ev.exit.i200, label %bb.w

bb.w:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i199
  call void @free(ptr noundef %i.hy) #31
  br label %_ZN4llvm30DiagnosticInfoOptimizationBaseD2Ev.exit.i200

_ZN4llvm30DiagnosticInfoOptimizationBaseD2Ev.exit.i200: ; preds = %bb.w, %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i199
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #31
  br label %"_ZN4llvm25OptimizationRemarkEmitter4emitIZNS_17SLPVectorizerPass18tryToVectorizeListENS_8ArrayRefIPNS_5ValueEEERNS_13slpvectorizer7BoUpSLPEbbE3$_0EEvT_PDTclfL0p_EE.exit"

.thread:                                          ; preds = %bb.r, %bb.s
  %.0384 = phi i32 [ %.sroa.speculated332, %bb.s ], [ %.sroa.speculated359, %bb.r ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #31
  %i.ia = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL16SLPCostThreshold, i64 120), align 8, !tbaa !380
  %i.ib = sext i32 %i.ia to i64
  %i.ic = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 3 uses
  store i32 0, ptr %i.ic, align 8, !tbaa !824
  %i.id = shl nsw i64 %i.ib, 2
  store i64 %i.id, ptr %21, align 8, !tbaa !825
  %i.ie = icmp ugt i32 %i.dy, 1
  %i.if = icmp uge i32 %.0384, %.sroa.speculated.i
  %29 = and i1 %i.ie, %i.if
  br i1 %29, label %.lr.ph447, label %.thread560

.lr.ph447:                                        ; preds = %.thread
  %i.ig = getelementptr inbounds nuw i8, ptr %.6.i, i64 8 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 5 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %22, i64 12
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %2
  %i.il = getelementptr inbounds nuw i8, ptr %3, i64 3536
  %i.im = getelementptr inbounds nuw i8, ptr %3, i64 3544
  %i.in = getelementptr inbounds nuw i8, ptr %3, i64 3556
  %i.io = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ip = getelementptr inbounds nuw i8, ptr %25, i64 8
  %.sroa.215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.iq = getelementptr inbounds nuw i8, ptr %3, i64 4888
  %i.ir = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.is = getelementptr inbounds nuw i8, ptr %28, i64 32
  %i.it = getelementptr inbounds nuw i8, ptr %28, i64 48 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %27, i64 32
  %i.iw = getelementptr inbounds nuw i8, ptr %27, i64 48 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %26, i64 80 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %26, i64 88
  %i.ja = getelementptr inbounds nuw i8, ptr %26, i64 96
  %i.jb = getelementptr inbounds nuw i8, ptr %.val162, i64 8
  br label %bb.x

._crit_edge448:                                   ; preds = %_ZL34getFloorFullVectorNumberOfElementsRKN4llvm19TargetTransformInfoEPNS_4TypeEj.exit233
  %.not = xor i1 %.6122, true
  %or.cond10 = select i1 %.not, i1 %.5128, i1 false
  br i1 %or.cond10, label %bb.ba, label %bb.be

bb.x:                                             ; preds = %.lr.ph447, %_ZL34getFloorFullVectorNumberOfElementsRKN4llvm19TargetTransformInfoEPNS_4TypeEj.exit233
  %.0116446 = phi i1 [ false, %.lr.ph447 ], [ %.6122, %_ZL34getFloorFullVectorNumberOfElementsRKN4llvm19TargetTransformInfoEPNS_4TypeEj.exit233 ] ; 2 uses
  %.0123445 = phi i1 [ false, %.lr.ph447 ], [ %.5128, %_ZL34getFloorFullVectorNumberOfElementsRKN4llvm19TargetTransformInfoEPNS_4TypeEj.exit233 ] ; 2 uses
  %.0129444 = phi i32 [ 0, %.lr.ph447 ], [ %.6135, %_ZL34getFloorFullVectorNumberOfElementsRKN4llvm19TargetTransformInfoEPNS_4TypeEj.exit233 ] ; 4 uses
  %storemerge443 = phi i32 [ %.0384, %.lr.ph447 ], [ %.2.i226, %_ZL34getFloorFullVectorNumberOfElementsRKN4llvm19TargetTransformInfoEPNS_4TypeEj.exit233 ] ; 9 uses
  %i.jc = call fastcc noundef ptr @_ZL14getWidenedTypePN4llvm4TypeEj(ptr noundef %.6.i, i32 noundef %storemerge443)
  %i.jd = load ptr, ptr %i.dw, align 8, !tbaa !1837
  %i.je = call fastcc noundef i32 @_ZL16getNumberOfPartsRKN4llvm19TargetTransformInfoEPNS_4TypeES4_j(ptr noundef nonnull align 8 dereferenceable(8) %i.jd, ptr noundef %i.jc, ptr noundef %.6.i, i32 noundef -1)
  %i.jf = icmp ne i32 %i.je, %storemerge443
  %i.jg = icmp ult i32 %.0129444, %i.dy
  %or.cond = select i1 %i.jf, i1 %i.jg, i1 false
  br i1 %or.cond, label %.lr.ph428, label %..thread393_crit_edge

..thread393_crit_edge:                            ; preds = %bb.x
  %.pre = add i32 %storemerge443, -1
  br label %.thread393

.lr.ph428:                                        ; preds = %bb.x
  %i.jh = icmp ugt i32 %storemerge443, %.sroa.speculated.i
  %i.ji = add i32 %storemerge443, -1              ; 4 uses
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph428, %.thread400
  %.1117427 = phi i1 [ %.0116446, %.lr.ph428 ], [ %.4120409, %.thread400 ] ; 9 uses
  %.1124426 = phi i1 [ %.0123445, %.lr.ph428 ], [ %.3126408, %.thread400 ] ; 8 uses
  %.1130425 = phi i32 [ %.0129444, %.lr.ph428 ], [ %.4133407, %.thread400 ] ; 9 uses
  %.0136424 = phi i32 [ %.0129444, %.lr.ph428 ], [ %i.oq, %.thread400 ] ; 11 uses
  %i.jj = sub nuw i32 %i.dy, %.0136424            ; 2 uses
  %.sroa.speculated = call i32 @llvm.umin.i32(i32 %storemerge443, i32 %i.jj) ; 12 uses
  %i.jk = load ptr, ptr %i.dw, align 8, !tbaa !1837
  %i.jl = icmp ult i32 %.sroa.speculated, 2
  br i1 %i.jl, label %.thread400, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.jm = call fastcc noundef zeroext i1 @_ZL18isValidElementTypePN4llvm4TypeE(ptr noundef %.6.i)
  br i1 %i.jm, label %_ZN4llvm14has_single_bitIjvEEbT_.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.jn = load i32, ptr %i.ig, align 8
  %i.jo = and i32 %i.jn, 255
  %i.jp = icmp eq i32 %i.jo, 18
  br i1 %i.jp, label %_ZN4llvm14has_single_bitIjvEEbT_.exit.i, label %.thread400

_ZN4llvm14has_single_bitIjvEEbT_.exit.i:          ; preds = %bb.aa, %bb.z
  %i.jq = call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %.sroa.speculated)
  %i.jr = icmp samesign ult i32 %i.jq, 2
  br i1 %i.jr, label %_ZL24hasFullVectorsOrPowerOf2RKN4llvm19TargetTransformInfoEPNS_4TypeEj.exit.thread386, label %bb.ab

bb.ab:                                            ; preds = %_ZN4llvm14has_single_bitIjvEEbT_.exit.i
  %i.js = load i32, ptr %i.ig, align 8
  %i.jt = and i32 %i.js, 255
  %i.ju = icmp eq i32 %i.jt, 16
  br i1 %i.ju, label %.thread400, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.jv = call fastcc noundef ptr @_ZL14getWidenedTypePN4llvm4TypeEj(ptr noundef nonnull %.6.i, i32 noundef %.sroa.speculated)
  %i.jw = call noundef i32 @_ZNK4llvm19TargetTransformInfo16getNumberOfPartsEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.jk, ptr noundef %i.jv) #31 ; 4 uses
  %.not.i208 = icmp ne i32 %i.jw, 0
  %i.jx = icmp ult i32 %i.jw, %.sroa.speculated
  %or.cond.i209 = and i1 %.not.i208, %i.jx
  br i1 %or.cond.i209, label %bb.ad, label %.thread400

bb.ad:                                            ; preds = %bb.ac
  %i.jy = udiv i32 %.sroa.speculated, %i.jw
  %i.jz = urem i32 %.sroa.speculated, %i.jw
  %i.ka = call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %i.jy)
  %i.kb = icmp samesign ult i32 %i.ka, 2
  %i.kc = icmp eq i32 %i.jz, 0
  %or.cond575 = and i1 %i.kb, %i.kc
  br i1 %or.cond575, label %_ZL24hasFullVectorsOrPowerOf2RKN4llvm19TargetTransformInfoEPNS_4TypeEj.exit.thread386, label %.thread400

_ZL24hasFullVectorsOrPowerOf2RKN4llvm19TargetTransformInfoEPNS_4TypeEj.exit.thread386: ; preds = %bb.ad, %_ZN4llvm14has_single_bitIjvEEbT_.exit.i
  %i.kd = icmp ult i32 %.sroa.speculated, %.0384
  %or.cond159 = and i1 %4, %i.kd
  %i.ke = icmp ult i32 %i.jj, %storemerge443
  %or.cond160 = and i1 %i.jh, %i.ke
  %or.cond451 = or i1 %or.cond159, %or.cond160
  br i1 %or.cond451, label %.thread393, label %bb.ae

bb.ae:                                            ; preds = %_ZL24hasFullVectorsOrPowerOf2RKN4llvm19TargetTransformInfoEPNS_4TypeEj.exit.thread386
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #31
  %i.kf = zext i32 %.sroa.speculated to i64       ; 4 uses
  store ptr %i.ih, ptr %22, align 8, !tbaa !359
  store i32 6, ptr %i.ij, align 4, !tbaa !372
  %i.kg = icmp ugt i32 %.sroa.speculated, 6
  br i1 %i.kg, label %_ZN4llvm11SmallVectorIPNS_5ValueELj6EEC2EmRKS2_.exit.loopexit, label %_ZN4llvm11SmallVectorIPNS_5ValueELj6EEC2EmRKS2_.exit

_ZN4llvm11SmallVectorIPNS_5ValueELj6EEC2EmRKS2_.exit.loopexit: ; preds = %bb.ae
  store i32 0, ptr %i.ii, align 8, !tbaa !371
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %22, ptr noundef nonnull %i.ih, i64 noundef %i.kf, i64 noundef 8) #31
  %i.kh = load ptr, ptr %22, align 8, !tbaa !359
  br label %_ZN4llvm11SmallVectorIPNS_5ValueELj6EEC2EmRKS2_.exit

_ZN4llvm11SmallVectorIPNS_5ValueELj6EEC2EmRKS2_.exit: ; preds = %bb.ae, %_ZN4llvm11SmallVectorIPNS_5ValueELj6EEC2EmRKS2_.exit.loopexit
  %.sink = phi ptr [ %i.kh, %_ZN4llvm11SmallVectorIPNS_5ValueELj6EEC2EmRKS2_.exit.loopexit ], [ %i.ih, %bb.ae ]
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %i.kf, 3
  call void @llvm.memset.p0.i64(ptr align 8 %.sink, i8 0, i64 %.idx.i.i.i.i.i.i, i1 false), !tbaa !579
  store i32 %.sroa.speculated, ptr %i.ii, align 8, !tbaa !371
  %i.ki = zext i32 %.0136424 to i64               ; 2 uses
  %.not153419 = icmp samesign eq i64 %2, %i.ki
  br i1 %.not153419, label %._crit_edge.thread, label %.lr.ph422

.lr.ph422:                                        ; preds = %_ZN4llvm11SmallVectorIPNS_5ValueELj6EEC2EmRKS2_.exit
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ki
  %i.kk = load ptr, ptr %22, align 8
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph422, %_ZNK4llvm13slpvectorizer7BoUpSLP9isDeletedEPNS_11InstructionE.exit.thread388
  %.0140421 = phi ptr [ %i.kj, %.lr.ph422 ], [ %i.lw, %_ZNK4llvm13slpvectorizer7BoUpSLP9isDeletedEPNS_11InstructionE.exit.thread388 ] ; 2 uses
  %.0141420 = phi i32 [ 0, %.lr.ph422 ], [ %.2143391, %_ZNK4llvm13slpvectorizer7BoUpSLP9isDeletedEPNS_11InstructionE.exit.thread388 ] ; 3 uses
  %i.kl = load ptr, ptr %.0140421, align 8, !tbaa !579 ; 4 uses
  %i.km = load i8, ptr %i.kl, align 8, !tbaa !391
  %i.kn = icmp ult i8 %i.km, 30
  br i1 %i.kn, label %_ZNK4llvm13slpvectorizer7BoUpSLP9isDeletedEPNS_11InstructionE.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ko = load ptr, ptr %i.il, align 8, !tbaa !376, !noalias !9052
  %i.kp = load ptr, ptr %i.im, align 8, !tbaa !377, !noalias !9052 ; 2 uses
  %i.kq = load i32, ptr %i.in, align 4, !tbaa !378, !noalias !9052 ; 2 uses
  %i.kr = icmp eq i32 %i.kq, 0
  br i1 %i.kr, label %_ZNK4llvm13slpvectorizer7BoUpSLP9isDeletedEPNS_11InstructionE.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ks = add i32 %i.kq, -1                       ; 2 uses
  %i.kt = ptrtoint ptr %i.kl to i64
  %i.ku = mul i64 %i.kt, -4658895280553007687     ; 2 uses
  %i.kv = lshr i64 %i.ku, 31
  %i.kw = xor i64 %i.kv, %i.ku
  %i.kx = trunc i64 %i.kw to i32
  %i.ky = and i32 %i.ks, %i.kx                    ; 3 uses
  %i.kz = zext i32 %i.ky to i64                   ; 2 uses
  %i.la = lshr i64 %i.kz, 5
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %i.la
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !380
  %i.ld = and i32 %i.ky, 31
  %i.le = lshr i32 %i.lc, %i.ld
  %i.lf = trunc i32 %i.le to i1
  br i1 %i.lf, label %.lr.ph.i.i.i.i.i211, label %_ZNK4llvm13slpvectorizer7BoUpSLP9isDeletedEPNS_11InstructionE.exit, !prof !547

.lr.ph.i.i.i.i.i211:                              ; preds = %bb.ah, %bb.ai
  %i.lg = phi i64 [ %i.lm, %bb.ai ], [ %i.kz, %bb.ah ]
  %.019.i.i.i.i.i = phi i32 [ %i.ll, %bb.ai ], [ %i.ky, %bb.ah ]
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %i.ko, i64 %i.lg
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !383
  %i.lj = icmp eq ptr %i.kl, %i.li
  br i1 %i.lj, label %_ZNK4llvm13slpvectorizer7BoUpSLP9isDeletedEPNS_11InstructionE.exit.thread388, label %bb.ai, !prof !548

bb.ai:                                            ; preds = %.lr.ph.i.i.i.i.i211
  %i.lk = add nuw i32 %.019.i.i.i.i.i, 1
  %i.ll = and i32 %i.lk, %i.ks                    ; 3 uses
  %i.lm = zext i32 %i.ll to i64                   ; 2 uses
  %i.ln = lshr i64 %i.lm, 5
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %i.ln
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !380
  %i.lq = and i32 %i.ll, 31
  %i.lr = lshr i32 %i.lp, %i.lq
  %i.ls = trunc i32 %i.lr to i1
  br i1 %i.ls, label %.lr.ph.i.i.i.i.i211, label %_ZNK4llvm13slpvectorizer7BoUpSLP9isDeletedEPNS_11InstructionE.exit, !prof !549

_ZNK4llvm13slpvectorizer7BoUpSLP9isDeletedEPNS_11InstructionE.exit: ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af
  %i.lt = zext i32 %.0141420 to i64
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %i.kk, i64 %i.lt
  store ptr %i.kl, ptr %i.lu, align 8, !tbaa !579
  %i.lv = add i32 %.0141420, 1                    ; 2 uses
  %.not413 = icmp eq i32 %i.lv, %.sroa.speculated
  br i1 %.not413, label %._crit_edge.thread558, label %_ZNK4llvm13slpvectorizer7BoUpSLP9isDeletedEPNS_11InstructionE.exit.thread388

_ZNK4llvm13slpvectorizer7BoUpSLP9isDeletedEPNS_11InstructionE.exit.thread388: ; preds = %.lr.ph.i.i.i.i.i211, %_ZNK4llvm13slpvectorizer7BoUpSLP9isDeletedEPNS_11InstructionE.exit
  %.2143391 = phi i32 [ %i.lv, %_ZNK4llvm13slpvectorizer7BoUpSLP9isDeletedEPNS_11InstructionE.exit ], [ %.0141420, %.lr.ph.i.i.i.i.i211 ] ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %.0140421, i64 8 ; 2 uses
  %.not153 = icmp eq ptr %i.lw, %i.ik
  br i1 %.not153, label %._crit_edge, label %bb.af

._crit_edge:                                      ; preds = %_ZNK4llvm13slpvectorizer7BoUpSLP9isDeletedEPNS_11InstructionE.exit.thread388
  %i.lx = icmp eq i32 %.2143391, %.sroa.speculated
  br i1 %i.lx, label %._crit_edge.thread558, label %._crit_edge.thread

._crit_edge.thread558:                            ; preds = %_ZNK4llvm13slpvectorizer7BoUpSLP9isDeletedEPNS_11InstructionE.exit, %._crit_edge
  %i.ly = load ptr, ptr %22, align 8, !tbaa !359  ; 2 uses
  call void @_ZN4llvm13slpvectorizer7BoUpSLP10deleteTreeEv(ptr noundef nonnull align 8 dereferenceable(5088) %3)
  %i.lz = call noundef zeroext i1 @_ZN4llvm13slpvectorizer11allSameTypeENS_8ArrayRefIPNS_5ValueEEE(ptr %i.ly, i64 %i.kf) #31
  br i1 %i.lz, label %bb.aj, label %_ZN4llvm13slpvectorizer7BoUpSLP9buildTreeENS_8ArrayRefIPNS_5ValueEEE.exit

bb.aj:                                            ; preds = %._crit_edge.thread558
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  store i32 -1, ptr %i.io, align 8, !tbaa !970
  call void @_ZN4llvm13slpvectorizer7BoUpSLP12buildTreeRecENS_8ArrayRefIPNS_5ValueEEEjRKNS1_8EdgeInfoEj(ptr noundef nonnull align 8 dereferenceable(5088) %3, ptr %i.ly, i64 %i.kf, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %12, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  br label %_ZN4llvm13slpvectorizer7BoUpSLP9buildTreeENS_8ArrayRefIPNS_5ValueEEE.exit

_ZN4llvm13slpvectorizer7BoUpSLP9buildTreeENS_8ArrayRefIPNS_5ValueEEE.exit: ; preds = %._crit_edge.thread558, %bb.aj
  %i.ma = call noundef zeroext i1 @_ZNK4llvm13slpvectorizer7BoUpSLP33isTreeTinyAndNotFullyVectorizableEb(ptr noundef nonnull align 8 dereferenceable(5088) %3, i1 noundef zeroext false)
  br i1 %i.ma, label %bb.ap, label %bb.ak

bb.ak:                                            ; preds = %_ZN4llvm13slpvectorizer7BoUpSLP9buildTreeENS_8ArrayRefIPNS_5ValueEEE.exit
  %i.mb = call noundef zeroext i1 @_ZNK4llvm13slpvectorizer7BoUpSLP21isProfitableToReorderEv(ptr noundef nonnull align 8 dereferenceable(5088) %3)
  br i1 %i.mb, label %bb.al, label %_ZN4llvm6detail12DenseSetImplIPNS_5ValueENS_13SmallDenseMapIS3_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit

bb.al:                                            ; preds = %bb.ak
  call void @_ZN4llvm13slpvectorizer7BoUpSLP18reorderTopToBottomEv(ptr noundef nonnull align 8 dereferenceable(5088) %3)
  %i.mc = load ptr, ptr %22, align 8, !tbaa !359
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !579
  %i.me = load i8, ptr %i.md, align 8, !tbaa !391 ; 2 uses
  %i.mf = icmp ne i8 %i.me, 94
  %i.mg = icmp ne i8 %i.me, 97
  %spec.select.i212.not = and i1 %i.mf, %i.mg
  call void @_ZN4llvm13slpvectorizer7BoUpSLP18reorderBottomToTopEb(ptr noundef nonnull align 8 dereferenceable(5088) %3, i1 noundef zeroext %spec.select.i212.not)
  br label %_ZN4llvm6detail12DenseSetImplIPNS_5ValueENS_13SmallDenseMapIS3_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit

_ZN4llvm6detail12DenseSetImplIPNS_5ValueENS_13SmallDenseMapIS3_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit: ; preds = %bb.ak, %bb.al
  call void @_ZN4llvm13slpvectorizer7BoUpSLP14transformNodesEv(ptr noundef nonnull align 8 dereferenceable(5088) %3)
  call void @_ZN4llvm13slpvectorizer7BoUpSLP24computeMinimumValueSizesEv(ptr noundef nonnull align 8 dereferenceable(5088) %3)
  %i.mh = call { i64, i32 } @_ZN4llvm13slpvectorizer7BoUpSLP37calculateTreeCostAndTrimNonProfitableENS_8ArrayRefIPNS_5ValueEEEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(5088) %3, ptr null, i64 0, ptr noundef null) ; 2 uses
  %.fca.0.extract19 = extractvalue { i64, i32 } %i.mh, 0
  %.fca.1.extract20 = extractvalue { i64, i32 } %i.mh, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %23, i8 0, i64 48, i1 false)
  store i32 1, ptr %23, align 8
  call void @_ZN4llvm13slpvectorizer7BoUpSLP17buildExternalUsesERKNS_13SmallDenseSetIPNS_5ValueELj4ENS_12DenseMapInfoIS4_vEEEE(ptr noundef nonnull align 8 dereferenceable(5088) %3, ptr noundef nonnull align 8 dereferenceable(48) %23)
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #31
  store i32 0, ptr %i.ip, align 8, !tbaa !824
  store i64 0, ptr %25, align 8, !tbaa !825
  %i.mi = call { i64, i32 } @_ZN4llvm13slpvectorizer7BoUpSLP11getTreeCostENS_15InstructionCostENS_8ArrayRefIPNS_5ValueEEES2_PNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(5088) %3, i64 %.fca.0.extract19, i32 %.fca.1.extract20, ptr poison, i64 0, ptr noundef nonnull byval(%"class.llvm::InstructionCost") align 8 %25, ptr noundef null) ; 2 uses
  %.fca.0.extract = extractvalue { i64, i32 } %i.mi, 0 ; 4 uses
  %.fca.1.extract = extractvalue { i64, i32 } %i.mi, 1 ; 6 uses
  store i64 %.fca.0.extract, ptr %24, align 8
  store i32 %.fca.1.extract, ptr %.sroa.215.0..sroa_idx, align 8
  %i.mj = load i32, ptr %i.ic, align 8, !tbaa !844 ; 2 uses
  %i.mk = icmp slt i32 %.fca.1.extract, %i.mj
  br i1 %i.mk, label %_ZNK4llvm15InstructionCostltERKS0_.exit.thread.i, label %bb.am

bb.am:                                            ; preds = %_ZN4llvm6detail12DenseSetImplIPNS_5ValueENS_13SmallDenseMapIS3_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit
  %i.ml = icmp slt i32 %i.mj, %.fca.1.extract
  br i1 %i.ml, label %_ZSt3minIN4llvm15InstructionCostEERKT_S4_S4_.exit, label %_ZNK4llvm15InstructionCostltERKS0_.exit.i

_ZNK4llvm15InstructionCostltERKS0_.exit.i:        ; preds = %bb.am
  %i.mm = load i64, ptr %21, align 8, !tbaa !581
  %i.mn = icmp slt i64 %.fca.0.extract, %i.mm
  %cond.fr.i = freeze i1 %i.mn
  br i1 %cond.fr.i, label %_ZNK4llvm15InstructionCostltERKS0_.exit.thread.i, label %_ZSt3minIN4llvm15InstructionCostEERKT_S4_S4_.exit

_ZNK4llvm15InstructionCostltERKS0_.exit.thread.i: ; preds = %_ZNK4llvm15InstructionCostltERKS0_.exit.i, %_ZN4llvm6detail12DenseSetImplIPNS_5ValueENS_13SmallDenseMapIS3_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit
  br label %_ZSt3minIN4llvm15InstructionCostEERKT_S4_S4_.exit

_ZSt3minIN4llvm15InstructionCostEERKT_S4_S4_.exit: ; preds = %bb.am, %_ZNK4llvm15InstructionCostltERKS0_.exit.i, %_ZNK4llvm15InstructionCostltERKS0_.exit.thread.i
  %i.mo = phi ptr [ %24, %_ZNK4llvm15InstructionCostltERKS0_.exit.thread.i ], [ %21, %_ZNK4llvm15InstructionCostltERKS0_.exit.i ], [ %21, %bb.am ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %21, ptr noundef nonnull align 8 dereferenceable(12) %i.mo, i64 12, i1 false), !tbaa.struct !1545
  %i.mp = icmp slt i32 %.fca.1.extract, 0
  br i1 %i.mp, label %_ZNK4llvm15InstructionCostltEl.exit.thread, label %bb.an

bb.an:                                            ; preds = %_ZSt3minIN4llvm15InstructionCostEERKT_S4_S4_.exit
  %i.mq = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL16SLPCostThreshold, i64 120), align 8, !tbaa !840
  %i.mr = sub nsw i32 0, %i.mq
  %i.ms = sext i32 %i.mr to i64
  %i.mt = shl nsw i64 %i.ms, 2
  %.not.i214 = icmp eq i32 %.fca.1.extract, 0
  %i.mu = icmp slt i64 %.fca.0.extract, %i.mt
  %or.cond411 = select i1 %.not.i214, i1 %i.mu, i1 false
  br i1 %or.cond411, label %_ZNK4llvm15InstructionCostltEl.exit.thread, label %_ZNK4llvm15InstructionCostltEl.exit.thread392

_ZNK4llvm15InstructionCostltEl.exit.thread:       ; preds = %bb.an, %_ZSt3minIN4llvm15InstructionCostEERKT_S4_S4_.exit
  %i.mv = load ptr, ptr %i.iq, align 8, !tbaa !1850
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #31
  %i.mw = load ptr, ptr %22, align 8, !tbaa !359
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !579
  call void @_ZN4llvm18OptimizationRemarkC1EPKcNS_9StringRefEPKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(432) %26, ptr noundef nonnull @.str.99, ptr nonnull @.str.105, i64 14, ptr noundef %i.mx) #31
  call void @_ZN4llvm30DiagnosticInfoOptimizationBase6insertENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(432) %26, ptr nonnull @.str.106, i64 25) #31
  call void @_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentC1ENS_9StringRefENS_15InstructionCostE(ptr noundef nonnull align 8 dereferenceable(80) %27, ptr nonnull @.str.102, i64 4, i64 %.fca.0.extract, i32 %.fca.1.extract) #31
  %i.my = call noundef nonnull align 8 dereferenceable(432) ptr @_ZN4llvmlsINS_18OptimizationRemarkEEEDcOT_NSt9enable_ifIXsr3stdE12is_base_of_vINS_30DiagnosticInfoOptimizationBaseENSt16remove_referenceIS2_E4typeEEENS5_8ArgumentEE4typeE(ptr noundef nonnull align 8 dereferenceable(432) %26, ptr nofree noundef nonnull align 8 dereferenceable(80) %27) ; 2 uses
  call void @_ZN4llvm30DiagnosticInfoOptimizationBase6insertENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(432) %i.my, ptr nonnull @.str.103, i64 20) #31
  %i.mz = load i32, ptr %i.ir, align 8, !tbaa !371
  call void @_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentC1ENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(80) %28, ptr nonnull @.str.104, i64 8, i32 noundef %i.mz) #31
end_hunk_0
begin_hunk_1_@_ZL31areTwoInsertFromSameBuildVectorPN4llvm17InsertElementInstES1_NS_12function_refIFPNS_5ValueES1_EEE:bb.a

bb.f:                                             ; preds = %bb.e
  %i.w = load i8, ptr %0, align 8, !tbaa !391
  %.not.i82 = icmp eq i8 %i.w, 97
  br i1 %.not.i82, label %bb.g, label %_ZL15getElementIndexPKN4llvm5ValueEj.exit

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !359  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !371 ; 2 uses
  %i.ab = zext i32 %i.aa to i64
  %.idx.i = shl nuw nsw i64 %i.ab, 2
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx.i
  %.not3976.i = icmp eq i32 %i.aa, 0
  br i1 %.not3976.i, label %_ZL15getElementIndexPKN4llvm5ValueEj.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %bb.i
  %.03179.in.i = phi ptr [ %.364.in.i, %bb.i ], [ %i.e, %bb.g ]
  %.078.i = phi ptr [ %i.au, %bb.i ], [ %i.y, %bb.g ] ; 2 uses
  %.05577.i = phi i32 [ %i.at, %bb.i ], [ 0, %bb.g ]
  %.03179.i = load ptr, ptr %.03179.in.i, align 8, !tbaa !653 ; 6 uses
  %i.ad = load i32, ptr %.078.i, align 4, !tbaa !380 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.03179.i, i64 8
  %i.af = load i32, ptr %i.ae, align 8
  %i.ag = and i32 %i.af, 255                      ; 2 uses
  %i.ah = icmp ne i32 %i.ag, 16
  %.not4073.i = icmp eq ptr %.03179.i, null       ; 2 uses
  %.not40.i = or i1 %.not4073.i, %i.ah
  br i1 %.not40.i, label %bb.h, label %.thread.i

.thread.i:                                        ; preds = %.lr.ph.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.03179.i, i64 12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !656
  %i.ak = getelementptr inbounds nuw i8, ptr %.03179.i, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !652
  %i.am = zext i32 %i.ad to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.am
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph.i
  %i.ao = icmp ne i32 %i.ag, 17
  %.not41.not.i = or i1 %.not4073.i, %i.ao
  br i1 %.not41.not.i, label %_ZL15getElementIndexPKN4llvm5ValueEj.exit, label %.thread65.i

.thread65.i:                                      ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %.03179.i, i64 32
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !748
  %i.ar = trunc i64 %i.aq to i32
  %i.as = getelementptr inbounds nuw i8, ptr %.03179.i, i64 24
  br label %bb.i

bb.i:                                             ; preds = %.thread65.i, %.thread.i
  %.364.in.i = phi ptr [ %i.an, %.thread.i ], [ %i.as, %.thread65.i ]
  %.pn.i = phi i32 [ %i.aj, %.thread.i ], [ %i.ar, %.thread65.i ]
  %.263.i = mul i32 %.pn.i, %.05577.i
  %i.at = add i32 %.263.i, %i.ad                  ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.078.i, i64 4 ; 2 uses
  %.not39.i = icmp eq ptr %i.au, %i.ac
  br i1 %.not39.i, label %_ZL15getElementIndexPKN4llvm5ValueEj.exit, label %.lr.ph.i

_ZL15getElementIndexPKN4llvm5ValueEj.exit:        ; preds = %bb.h, %bb.i, %bb.d, %bb.e, %bb.f, %bb.g
  %i.av = phi i1 [ false, %bb.d ], [ false, %bb.e ], [ true, %bb.f ], [ false, %bb.g ], [ false, %bb.i ], [ true, %bb.h ]
  %.sroa.048.1.i = phi i32 [ %.sroa.048.0.extract.trunc.i, %bb.d ], [ %.sroa.048.0.extract.trunc49.i, %bb.e ], [ %.sroa.048.0.extract.trunc49.i, %bb.f ], [ 0, %bb.g ], [ %i.at, %bb.i ], [ %.sroa.048.0.extract.trunc49.i, %bb.h ] ; 2 uses
  %i.aw = tail call i64 @_ZN4llvm13slpvectorizer21getInsertExtractIndexINS_17InsertElementInstEEESt8optionalIjEPKNS_5ValueEj(ptr noundef nonnull %1, i32 noundef 0) #31 ; 2 uses
  %.sroa.048.0.extract.trunc.i83 = trunc i64 %i.aw to i32
  %i.ax = and i64 %i.aw, 4294967296
  %.not70.i84 = icmp eq i64 %i.ax, 0
  br i1 %.not70.i84, label %bb.j, label %_ZL15getElementIndexPKN4llvm5ValueEj.exit112

bb.j:                                             ; preds = %_ZL15getElementIndexPKN4llvm5ValueEj.exit
  %i.ay = tail call i64 @_ZN4llvm13slpvectorizer21getInsertExtractIndexINS_18ExtractElementInstEEESt8optionalIjEPKNS_5ValueEj(ptr noundef nonnull %1, i32 noundef 0) #31 ; 2 uses
  %.sroa.048.0.extract.trunc49.i92 = trunc i64 %i.ay to i32
  %i.az = and i64 %i.ay, 4294967296
  %.not71.i93 = icmp eq i64 %i.az, 0
  br i1 %.not71.i93, label %bb.k, label %_ZL15getElementIndexPKN4llvm5ValueEj.exit112

bb.k:                                             ; preds = %bb.j
  %i.ba = load i8, ptr %1, align 8, !tbaa !391
  %.not.i94 = icmp eq i8 %i.ba, 97
  br i1 %.not.i94, label %bb.l, label %_ZN4llvm14SmallBitVectorD2Ev.exit

bb.l:                                             ; preds = %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !359 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !371 ; 2 uses
  %i.bf = zext i32 %i.be to i64
  %.idx.i95 = shl nuw nsw i64 %i.bf, 2
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.idx.i95
  %.not3976.i96 = icmp eq i32 %i.be, 0
  br i1 %.not3976.i96, label %_ZL15getElementIndexPKN4llvm5ValueEj.exit112, label %.lr.ph.i98

.lr.ph.i98:                                       ; preds = %bb.l, %bb.n
  %.03179.in.i99 = phi ptr [ %.364.in.i106, %bb.n ], [ %i.g, %bb.l ]
  %.078.i100 = phi ptr [ %i.by, %bb.n ], [ %i.bc, %bb.l ] ; 2 uses
  %.05577.i101 = phi i32 [ %i.bx, %bb.n ], [ 0, %bb.l ]
  %.03179.i102 = load ptr, ptr %.03179.in.i99, align 8, !tbaa !653 ; 6 uses
  %i.bh = load i32, ptr %.078.i100, align 4, !tbaa !380 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.03179.i102, i64 8
  %i.bj = load i32, ptr %i.bi, align 8
  %i.bk = and i32 %i.bj, 255                      ; 2 uses
  %i.bl = icmp ne i32 %i.bk, 16
  %.not4073.i103 = icmp eq ptr %.03179.i102, null ; 2 uses
  %.not40.i104 = or i1 %.not4073.i103, %i.bl
  br i1 %.not40.i104, label %bb.m, label %.thread.i105

.thread.i105:                                     ; preds = %.lr.ph.i98
  %i.bm = getelementptr inbounds nuw i8, ptr %.03179.i102, i64 12
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !656
  %i.bo = getelementptr inbounds nuw i8, ptr %.03179.i102, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !652
  %i.bq = zext i32 %i.bh to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bq
  br label %bb.n

bb.m:                                             ; preds = %.lr.ph.i98
  %i.bs = icmp ne i32 %i.bk, 17
  %.not41.not.i110 = or i1 %.not4073.i103, %i.bs
  br i1 %.not41.not.i110, label %_ZN4llvm14SmallBitVectorD2Ev.exit, label %.thread65.i111

.thread65.i111:                                   ; preds = %bb.m
  %i.bt = getelementptr inbounds nuw i8, ptr %.03179.i102, i64 32
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !748
  %i.bv = trunc i64 %i.bu to i32
  %i.bw = getelementptr inbounds nuw i8, ptr %.03179.i102, i64 24
  br label %bb.n

bb.n:                                             ; preds = %.thread65.i111, %.thread.i105
  %.364.in.i106 = phi ptr [ %i.br, %.thread.i105 ], [ %i.bw, %.thread65.i111 ]
  %.pn.i107 = phi i32 [ %i.bn, %.thread.i105 ], [ %i.bv, %.thread65.i111 ]
  %.263.i108 = mul i32 %.pn.i107, %.05577.i101
  %i.bx = add i32 %.263.i108, %i.bh               ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.078.i100, i64 4 ; 2 uses
  %.not39.i109 = icmp eq ptr %i.by, %i.bg
  br i1 %.not39.i109, label %_ZL15getElementIndexPKN4llvm5ValueEj.exit112, label %.lr.ph.i98

_ZL15getElementIndexPKN4llvm5ValueEj.exit112:     ; preds = %bb.n, %_ZL15getElementIndexPKN4llvm5ValueEj.exit, %bb.j, %bb.l
  %.sroa.048.1.i87 = phi i32 [ %.sroa.048.0.extract.trunc.i83, %_ZL15getElementIndexPKN4llvm5ValueEj.exit ], [ %.sroa.048.0.extract.trunc49.i92, %bb.j ], [ 0, %bb.l ], [ %i.bx, %bb.n ] ; 2 uses
  br i1 %i.av, label %_ZN4llvm14SmallBitVectorD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZL15getElementIndexPKN4llvm5ValueEj.exit112
  %i.bz = load ptr, ptr %i.e, align 8, !tbaa !580
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !751 ; 4 uses
  %i.cc = icmp ult i32 %i.cb, 58
  br i1 %i.cc, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cd = zext nneg i32 %i.cb to i64
  %i.ce = shl nuw i64 %i.cd, 58
  %i.cf = or disjoint i64 %i.ce, 1
  br label %_ZN4llvm14SmallBitVectorC2Ejb.exit.preheader

bb.q:                                             ; preds = %bb.o
  %i.cg = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #33 ; 8 uses
  %i.ch = add i32 %i.cb, 63                       ; 2 uses
  %i.ci = lshr i32 %i.ch, 6                       ; 3 uses
  %i.cj = zext nneg i32 %i.ci to i64              ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 16 ; 3 uses
  store ptr %i.ck, ptr %i.cg, align 8, !tbaa !359
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cg, i64 12
  store i32 6, ptr %i.cm, align 4, !tbaa !372
  %i.cn = icmp ugt i32 %i.ch, 447
  br i1 %i.cn, label %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i.i.loopexit, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i

_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i.i.loopexit: ; preds = %bb.q
  store i32 0, ptr %i.cl, align 8, !tbaa !371
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(68) %i.cg, ptr noundef nonnull %i.ck, i64 noundef %i.cj, i64 noundef 8) #31
  %i.co = load ptr, ptr %i.cg, align 8, !tbaa !359
  br label %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i.i.sink.split

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i:      ; preds = %bb.q
  %.not.i.i.i = icmp eq i32 %i.ci, 0
  br i1 %.not.i.i.i, label %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i.i, label %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i.i.sink.split

_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i.i.sink.split: ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i, %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i.i.loopexit
  %.sink = phi ptr [ %i.co, %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i.i.loopexit ], [ %i.ck, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i ]
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.cj, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %.sink, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !581
  br label %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i.i

_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i.i:     ; preds = %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i.i.sink.split, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i
  store i32 %i.ci, ptr %i.cl, align 8, !tbaa !371
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cg, i64 64
  store i32 %i.cb, ptr %i.cp, align 8, !tbaa !631
  %i.cq = ptrtoint ptr %i.cg to i64
  br label %_ZN4llvm14SmallBitVectorC2Ejb.exit.preheader

_ZN4llvm14SmallBitVectorC2Ejb.exit.preheader:     ; preds = %bb.p, %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i.i
  %.sroa.0203.0.ph = phi i64 [ %i.cf, %bb.p ], [ %i.cq, %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i.i ]
  br label %_ZN4llvm14SmallBitVectorC2Ejb.exit

_ZN4llvm14SmallBitVectorC2Ejb.exit:               ; preds = %_ZN4llvm14SmallBitVectorC2Ejb.exit.preheader, %_ZN4llvm16dyn_cast_or_nullINS_17InsertElementInstENS_5ValueEEEDaPT0_.exit195.thread
  %.sroa.0203.0 = phi i64 [ %.sroa.0203.2256, %_ZN4llvm16dyn_cast_or_nullINS_17InsertElementInstENS_5ValueEEEDaPT0_.exit195.thread ], [ %.sroa.0203.0.ph, %_ZN4llvm14SmallBitVectorC2Ejb.exit.preheader ] ; 10 uses
  %.060 = phi ptr [ %.262, %_ZN4llvm16dyn_cast_or_nullINS_17InsertElementInstENS_5ValueEEEDaPT0_.exit195.thread ], [ %0, %_ZN4llvm14SmallBitVectorC2Ejb.exit.preheader ] ; 12 uses
  %.057 = phi ptr [ %.259258, %_ZN4llvm16dyn_cast_or_nullINS_17InsertElementInstENS_5ValueEEEDaPT0_.exit195.thread ], [ %1, %_ZN4llvm14SmallBitVectorC2Ejb.exit.preheader ] ; 12 uses
  %i.cr = icmp ne ptr %.057, %0                   ; 2 uses
  %i.cs = icmp ne ptr %.060, null                 ; 2 uses
  %or.cond = or i1 %i.cs, %i.cr
  br i1 %or.cond, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZN4llvm14SmallBitVectorC2Ejb.exit
  %i.ct = load ptr, ptr %i.i, align 8, !tbaa !876 ; 2 uses
  %.not.i113 = icmp eq ptr %i.ct, null
  br i1 %.not.i113, label %.critedge, label %.critedge.sink.split

bb.s:                                             ; preds = %_ZN4llvm14SmallBitVectorC2Ejb.exit
  %i.cu = icmp ne ptr %.060, %1                   ; 2 uses
  %i.cv = icmp ne ptr %.057, null                 ; 2 uses
  %or.cond3 = or i1 %i.cu, %i.cv
  br i1 %or.cond3, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !876 ; 2 uses
  %.not.i116 = icmp eq ptr %i.cx, null
  br i1 %.not.i116, label %.critedge, label %.critedge.sink.split

bb.u:                                             ; preds = %bb.s
  %brmerge.not = and i1 %i.cs, %i.cu
  br i1 %brmerge.not, label %bb.v, label %_ZN4llvm16dyn_cast_or_nullINS_17InsertElementInstENS_5ValueEEEDaPT0_.exit

bb.v:                                             ; preds = %bb.u
  %i.cy = tail call i64 @_ZN4llvm13slpvectorizer21getInsertExtractIndexINS_17InsertElementInstEEESt8optionalIjEPKNS_5ValueEj(ptr noundef nonnull %.060, i32 noundef 0) #31 ; 2 uses
  %.sroa.048.0.extract.trunc.i119 = trunc i64 %i.cy to i32
  %i.cz = and i64 %i.cy, 4294967296
  %.not70.i120 = icmp eq i64 %i.cz, 0
  br i1 %.not70.i120, label %bb.w, label %_ZL15getElementIndexPKN4llvm5ValueEj.exit148

bb.w:                                             ; preds = %bb.v
  %i.da = tail call i64 @_ZN4llvm13slpvectorizer21getInsertExtractIndexINS_18ExtractElementInstEEESt8optionalIjEPKNS_5ValueEj(ptr noundef nonnull %.060, i32 noundef 0) #31 ; 2 uses
  %.sroa.048.0.extract.trunc49.i128 = trunc i64 %i.da to i32
  %i.db = and i64 %i.da, 4294967296
  %.not71.i129 = icmp eq i64 %i.db, 0
  br i1 %.not71.i129, label %bb.x, label %_ZL15getElementIndexPKN4llvm5ValueEj.exit148

bb.x:                                             ; preds = %bb.w
  %i.dc = load i8, ptr %.060, align 8, !tbaa !391
  %.not.i130 = icmp eq i8 %i.dc, 97
  br i1 %.not.i130, label %bb.y, label %_ZL15getElementIndexPKN4llvm5ValueEj.exit148

bb.y:                                             ; preds = %bb.x
  %i.dd = getelementptr inbounds nuw i8, ptr %.060, i64 72
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !359 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.060, i64 80
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !371 ; 2 uses
  %i.dh = zext i32 %i.dg to i64
  %.idx.i131 = shl nuw nsw i64 %i.dh, 2
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 %.idx.i131
  %.not3976.i132 = icmp eq i32 %i.dg, 0
  br i1 %.not3976.i132, label %_ZL15getElementIndexPKN4llvm5ValueEj.exit148, label %.lr.ph.preheader.i133

.lr.ph.preheader.i133:                            ; preds = %bb.y
  %i.dj = getelementptr inbounds nuw i8, ptr %.060, i64 8
  br label %.lr.ph.i134

.lr.ph.i134:                                      ; preds = %bb.aa, %.lr.ph.preheader.i133
  %.03179.in.i135 = phi ptr [ %.364.in.i142, %bb.aa ], [ %i.dj, %.lr.ph.preheader.i133 ]
  %.078.i136 = phi ptr [ %i.eb, %bb.aa ], [ %i.de, %.lr.ph.preheader.i133 ] ; 2 uses
  %.05577.i137 = phi i32 [ %i.ea, %bb.aa ], [ 0, %.lr.ph.preheader.i133 ]
  %.03179.i138 = load ptr, ptr %.03179.in.i135, align 8, !tbaa !653 ; 6 uses
  %i.dk = load i32, ptr %.078.i136, align 4, !tbaa !380 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.03179.i138, i64 8
  %i.dm = load i32, ptr %i.dl, align 8
  %i.dn = and i32 %i.dm, 255                      ; 2 uses
  %i.do = icmp ne i32 %i.dn, 16
  %.not4073.i139 = icmp eq ptr %.03179.i138, null ; 2 uses
  %.not40.i140 = or i1 %.not4073.i139, %i.do
  br i1 %.not40.i140, label %bb.z, label %.thread.i141

.thread.i141:                                     ; preds = %.lr.ph.i134
  %i.dp = getelementptr inbounds nuw i8, ptr %.03179.i138, i64 12
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !656
  %i.dr = getelementptr inbounds nuw i8, ptr %.03179.i138, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !652
  %i.dt = zext i32 %i.dk to i64
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.dt
  br label %bb.aa

bb.z:                                             ; preds = %.lr.ph.i134
  %i.dv = icmp ne i32 %i.dn, 17
  %.not41.not.i146 = or i1 %.not4073.i139, %i.dv
  br i1 %.not41.not.i146, label %_ZL15getElementIndexPKN4llvm5ValueEj.exit148, label %.thread65.i147

.thread65.i147:                                   ; preds = %bb.z
  %i.dw = getelementptr inbounds nuw i8, ptr %.03179.i138, i64 32
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !748
  %i.dy = trunc i64 %i.dx to i32
  %i.dz = getelementptr inbounds nuw i8, ptr %.03179.i138, i64 24
  br label %bb.aa

bb.aa:                                            ; preds = %.thread65.i147, %.thread.i141
  %.364.in.i142 = phi ptr [ %i.du, %.thread.i141 ], [ %i.dz, %.thread65.i147 ]
  %.pn.i143 = phi i32 [ %i.dq, %.thread.i141 ], [ %i.dy, %.thread65.i147 ]
  %.263.i144 = mul i32 %.pn.i143, %.05577.i137
  %i.ea = add i32 %.263.i144, %i.dk               ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.078.i136, i64 4 ; 2 uses
  %.not39.i145 = icmp eq ptr %i.eb, %i.di
  br i1 %.not39.i145, label %_ZL15getElementIndexPKN4llvm5ValueEj.exit148, label %.lr.ph.i134

_ZL15getElementIndexPKN4llvm5ValueEj.exit148:     ; preds = %bb.z, %bb.aa, %bb.v, %bb.w, %bb.x, %bb.y
  %.sroa.4.4.i122 = phi i32 [ %.sroa.048.0.extract.trunc.i119, %bb.v ], [ %.sroa.048.0.extract.trunc49.i128, %bb.w ], [ %.sroa.048.1.i87, %bb.x ], [ 0, %bb.y ], [ %i.ea, %bb.aa ], [ %.sroa.048.1.i87, %bb.z ] ; 3 uses
  %i.ec = trunc i64 %.sroa.0203.0 to i1
  br i1 %i.ec, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %_ZL15getElementIndexPKN4llvm5ValueEj.exit148
  %i.ed = lshr i64 %.sroa.0203.0, 1               ; 2 uses
  %i.ee = lshr i64 %.sroa.0203.0, 58
  %i.ef = shl nsw i64 -1, %i.ee
  %i.eg = xor i64 %i.ef, -1                       ; 2 uses
  %i.eh = and i64 %i.ed, %i.eg
  %i.ei = zext nneg i32 %.sroa.4.4.i122 to i64    ; 2 uses
  %i.ej = lshr i64 %i.eh, %i.ei
  %i.ek = shl nuw i64 1, %i.ei
  %i.el = or i64 %i.ek, %i.ed
  %i.em = and i64 %i.el, %i.eg
  %i.en = shl nuw i64 %i.em, 1
  %i.eo = and i64 %.sroa.0203.0, -288230376151711743
  %i.ep = or i64 %i.en, %i.eo
  br label %_ZN4llvm14SmallBitVector3setEj.exit

bb.ac:                                            ; preds = %_ZL15getElementIndexPKN4llvm5ValueEj.exit148
  %i.eq = inttoptr i64 %.sroa.0203.0 to ptr
  %i.er = lshr i32 %.sroa.4.4.i122, 6
  %i.es = zext nneg i32 %i.er to i64
  %i.et = load ptr, ptr %i.eq, align 8, !tbaa !359
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %i.es ; 2 uses
  %i.ev = and i32 %.sroa.4.4.i122, 63
  %i.ew = load i64, ptr %i.eu, align 8, !tbaa !581 ; 2 uses
  %i.ex = zext nneg i32 %i.ev to i64              ; 2 uses
  %i.ey = lshr i64 %i.ew, %i.ex
  %i.ez = shl nuw i64 1, %i.ex
  %i.fa = or i64 %i.ew, %i.ez
  store i64 %i.fa, ptr %i.eu, align 8, !tbaa !581
  br label %_ZN4llvm14SmallBitVector3setEj.exit

_ZN4llvm14SmallBitVector3setEj.exit:              ; preds = %bb.ab, %bb.ac
  %.in.in = phi i64 [ %i.ej, %bb.ab ], [ %i.ey, %bb.ac ]
  %.sroa.0203.4 = phi i64 [ %i.ep, %bb.ab ], [ %.sroa.0203.0, %bb.ac ] ; 5 uses
  %.in = trunc i64 %.in.in to i8
  %i.fb = and i8 %.in, 1                          ; 3 uses
  %i.fc = icmp eq i8 %i.fb, 0                     ; 2 uses
  %.not70 = icmp eq ptr %.060, %0
  br i1 %.not70, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZN4llvm14SmallBitVector3setEj.exit
  %i.fd = getelementptr inbounds nuw i8, ptr %.060, i64 16
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !876 ; 2 uses
  %.not.i149 = icmp eq ptr %i.fe, null
  br i1 %.not.i149, label %_ZN4llvm16dyn_cast_or_nullINS_17InsertElementInstENS_5ValueEEEDaPT0_.exit, label %_ZNK4llvm5Value9hasOneUseEv.exit151

_ZNK4llvm5Value9hasOneUseEv.exit151:              ; preds = %bb.ad
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !545
  %i.fh = icmp eq ptr %i.fg, null
  %or.cond5.not = and i1 %i.fc, %i.fh
  br i1 %or.cond5.not, label %bb.af, label %_ZN4llvm16dyn_cast_or_nullINS_17InsertElementInstENS_5ValueEEEDaPT0_.exit

bb.ae:                                            ; preds = %_ZN4llvm14SmallBitVector3setEj.exit
  br i1 %i.fc, label %bb.af, label %_ZN4llvm16dyn_cast_or_nullINS_17InsertElementInstENS_5ValueEEEDaPT0_.exit

bb.af:                                            ; preds = %_ZNK4llvm5Value9hasOneUseEv.exit151, %bb.ae
  %i.fi = tail call noundef ptr %2(i64 noundef %3, ptr noundef nonnull %.060) #31, !inline_history !10498 ; 3 uses
  %.not.i.i = icmp eq ptr %i.fi, null
  br i1 %.not.i.i, label %_ZN4llvm16dyn_cast_or_nullINS_17InsertElementInstENS_5ValueEEEDaPT0_.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fj = load i8, ptr %i.fi, align 8, !tbaa !391
  %i.fk = icmp eq i8 %i.fj, 94
  %spec.select.i.i.i = select i1 %i.fk, ptr %i.fi, ptr null
  br label %_ZN4llvm16dyn_cast_or_nullINS_17InsertElementInstENS_5ValueEEEDaPT0_.exit

_ZN4llvm16dyn_cast_or_nullINS_17InsertElementInstENS_5ValueEEEDaPT0_.exit: ; preds = %bb.ad, %bb.ag, %bb.af, %bb.ae, %_ZNK4llvm5Value9hasOneUseEv.exit151, %bb.u
  %.sroa.0203.1 = phi i64 [ %.sroa.0203.0, %bb.u ], [ %.sroa.0203.4, %bb.ag ], [ %.sroa.0203.4, %bb.ae ], [ %.sroa.0203.4, %_ZNK4llvm5Value9hasOneUseEv.exit151 ], [ %.sroa.0203.4, %bb.af ], [ %.sroa.0203.4, %bb.ad ] ; 7 uses
  %.262 = phi ptr [ %.060, %bb.u ], [ %spec.select.i.i.i, %bb.ag ], [ null, %bb.ae ], [ null, %_ZNK4llvm5Value9hasOneUseEv.exit151 ], [ null, %bb.af ], [ null, %bb.ad ] ; 2 uses
  %.1 = phi i8 [ 0, %bb.u ], [ 0, %bb.ag ], [ 1, %bb.ae ], [ %i.fb, %_ZNK4llvm5Value9hasOneUseEv.exit151 ], [ 0, %bb.af ], [ %i.fb, %bb.ad ] ; 2 uses
  %brmerge77.not = and i1 %i.cv, %i.cr
  br i1 %brmerge77.not, label %bb.ah, label %_ZN4llvm16dyn_cast_or_nullINS_17InsertElementInstENS_5ValueEEEDaPT0_.exit195

bb.ah:                                            ; preds = %_ZN4llvm16dyn_cast_or_nullINS_17InsertElementInstENS_5ValueEEEDaPT0_.exit
  %i.fl = tail call i64 @_ZN4llvm13slpvectorizer21getInsertExtractIndexINS_17InsertElementInstEEESt8optionalIjEPKNS_5ValueEj(ptr noundef nonnull %.057, i32 noundef 0) #31 ; 2 uses
  %.sroa.048.0.extract.trunc.i153 = trunc i64 %i.fl to i32
  %i.fm = and i64 %i.fl, 4294967296
  %.not70.i154 = icmp eq i64 %i.fm, 0
  br i1 %.not70.i154, label %bb.ai, label %_ZL15getElementIndexPKN4llvm5ValueEj.exit182

bb.ai:                                            ; preds = %bb.ah
  %i.fn = tail call i64 @_ZN4llvm13slpvectorizer21getInsertExtractIndexINS_18ExtractElementInstEEESt8optionalIjEPKNS_5ValueEj(ptr noundef nonnull %.057, i32 noundef 0) #31 ; 2 uses
  %.sroa.048.0.extract.trunc49.i162 = trunc i64 %i.fn to i32
  %i.fo = and i64 %i.fn, 4294967296
  %.not71.i163 = icmp eq i64 %i.fo, 0
  br i1 %.not71.i163, label %bb.aj, label %_ZL15getElementIndexPKN4llvm5ValueEj.exit182

bb.aj:                                            ; preds = %bb.ai
  %i.fp = load i8, ptr %.057, align 8, !tbaa !391
  %.not.i164 = icmp eq i8 %i.fp, 97
  br i1 %.not.i164, label %bb.ak, label %_ZL15getElementIndexPKN4llvm5ValueEj.exit182

bb.ak:                                            ; preds = %bb.aj
end_hunk_1
