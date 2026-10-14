Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SLPVectorizer?download=true
inline.NumInlined: 69834
inline.NumDeleted: 26527
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 297
loop-unroll.NumUnrolled: 333
begin_hunk_0_@_ZN4llvm17SLPVectorizerPass18tryToVectorizeListENS_8ArrayRefIPNS_5ValueEEERNS_13slpvectorizer7BoUpSLPEbb:bb.a
bb.f:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %17, i64 80
  %i.bh = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplINS_30DiagnosticInfoOptimizationBase8ArgumentEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(336) %i.ba, ptr noundef nonnull align 8 dereferenceable(336) %i.bg) ; 0 uses
  br label %_ZN4llvm24OptimizationRemarkMissedC2EOS0_.exit.i.i

_ZN4llvm24OptimizationRemarkMissedC2EOS0_.exit.i.i: ; preds = %bb.f, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %19, i64 416
  %i.bj = getelementptr inbounds nuw i8, ptr %17, i64 416
  %i.bk = load i64, ptr %i.bj, align 8, !noalias !9039
  store i64 %i.bk, ptr %i.bi, align 8, !alias.scope !9039
  %i.bl = getelementptr inbounds nuw i8, ptr %19, i64 424
  %i.bm = getelementptr inbounds nuw i8, ptr %17, i64 424
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !1983, !noalias !9039
  store ptr %i.bn, ptr %i.bl, align 8, !tbaa !1983, !alias.scope !9039
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm24OptimizationRemarkMissedE, i64 16), ptr %19, align 8, !tbaa !361, !alias.scope !9039
  %i.bo = load ptr, ptr %18, align 8, !tbaa !1188, !noalias !9039 ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.ah
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZN4llvm24OptimizationRemarkMissedC2EOS0_.exit.i.i
  %i.bq = load i64, ptr %i.ah, align 8, !tbaa !571, !noalias !9039
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.br) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZN4llvm24OptimizationRemarkMissedC2EOS0_.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #31, !noalias !9039
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm30DiagnosticInfoOptimizationBaseE, i64 16), ptr %17, align 8, !tbaa !361, !noalias !9039
  %i.bs = getelementptr inbounds nuw i8, ptr %17, i64 80 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !359, !noalias !9039 ; 3 uses
  %i.bu = load i32, ptr %i.be, align 8, !tbaa !371, !noalias !9039 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq i32 %i.bu, 0
  br i1 %.not4.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i, label %.lr.ph.i.preheader.i.i.i.i

.lr.ph.i.preheader.i.i.i.i:                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.bv = zext i32 %i.bu to i64
  %.idx.i.i.i.i = mul nuw nsw i64 %i.bv, 80
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.idx.i.i.i.i
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.bx, %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i.i ], [ %i.bw, %.lr.ph.i.preheader.i.i.i.i ] ; 4 uses
  %i.bx = getelementptr inbounds i8, ptr %.05.i.i.i.i.i, i64 -80 ; 3 uses
  %i.by = getelementptr inbounds i8, ptr %.05.i.i.i.i.i, i64 -48
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !1188 ; 2 uses
  %i.ca = getelementptr inbounds i8, ptr %.05.i.i.i.i.i, i64 -32 ; 2 uses
  %i.cb = icmp eq ptr %i.bz, %i.ca
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.cc = load i64, ptr %i.ca, align 8, !tbaa !571
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cd) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.ce = load ptr, ptr %i.bx, align 8, !tbaa !1188 ; 2 uses
  %i.cf = getelementptr inbounds i8, ptr %.05.i.i.i.i.i, i64 -64 ; 2 uses
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i
  %i.ch = load i64, ptr %i.cf, align 8, !tbaa !571
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ci) #32
  br label %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i.i

_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i
  %.not.i.i.i.i.i = icmp eq ptr %i.bt, %i.bx
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !118

_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i.i: ; preds = %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i.i
  %.pre.i.i.i.i = load ptr, ptr %i.bs, align 8, !tbaa !359, !noalias !9039
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i

_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.cj = phi ptr [ %.pre.i.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i.i ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ] ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %17, i64 96
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %_ZN4llvm30DiagnosticInfoOptimizationBaseD2Ev.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i
  call void @free(ptr noundef %i.cj) #31
  br label %_ZN4llvm30DiagnosticInfoOptimizationBaseD2Ev.exit.i.i

_ZN4llvm30DiagnosticInfoOptimizationBaseD2Ev.exit.i.i: ; preds = %bb.g, %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #31, !noalias !9039
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %16) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #31, !noalias !9039
  %i.cm = load ptr, ptr %15, align 8, !tbaa !1188, !noalias !9039 ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.y
  br i1 %i.cn, label %"_ZZN4llvm17SLPVectorizerPass18tryToVectorizeListENS_8ArrayRefIPNS_5ValueEEERNS_13slpvectorizer7BoUpSLPEbbENK3$_0clEv.exit.i", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i: ; preds = %_ZN4llvm30DiagnosticInfoOptimizationBaseD2Ev.exit.i.i
  %i.co = load i64, ptr %i.y, align 8, !tbaa !571, !noalias !9039
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cp) #32
  br label %"_ZZN4llvm17SLPVectorizerPass18tryToVectorizeListENS_8ArrayRefIPNS_5ValueEEERNS_13slpvectorizer7BoUpSLPEbbENK3$_0clEv.exit.i"

"_ZZN4llvm17SLPVectorizerPass18tryToVectorizeListENS_8ArrayRefIPNS_5ValueEEERNS_13slpvectorizer7BoUpSLPEbbENK3$_0clEv.exit.i": ; preds = %_ZN4llvm30DiagnosticInfoOptimizationBaseD2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #31, !noalias !9039
  call void @_ZN4llvm25OptimizationRemarkEmitter4emitERNS_30DiagnosticInfoOptimizationBaseE(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(424) %19) #31
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm30DiagnosticInfoOptimizationBaseE, i64 16), ptr %19, align 8, !tbaa !361
  %i.cq = load ptr, ptr %i.ba, align 8, !tbaa !359 ; 3 uses
  %i.cr = load i32, ptr %i.bc, align 8, !tbaa !371 ; 2 uses
  %.not4.i.i.i.i = icmp eq i32 %i.cr, 0
  br i1 %.not4.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i, label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %"_ZZN4llvm17SLPVectorizerPass18tryToVectorizeListENS_8ArrayRefIPNS_5ValueEEERNS_13slpvectorizer7BoUpSLPEbbENK3$_0clEv.exit.i"
  %i.cs = zext i32 %i.cr to i64
  %.idx.i.i.i = mul nuw nsw i64 %i.cs, 80
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.idx.i.i.i
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i, %.lr.ph.i.preheader.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.cu, %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i ], [ %i.ct, %.lr.ph.i.preheader.i.i.i ] ; 4 uses
  %i.cu = getelementptr inbounds i8, ptr %.05.i.i.i.i, i64 -80 ; 3 uses
  %i.cv = getelementptr inbounds i8, ptr %.05.i.i.i.i, i64 -48
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !1188 ; 2 uses
  %i.cx = getelementptr inbounds i8, ptr %.05.i.i.i.i, i64 -32 ; 2 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.cz = load i64, ptr %i.cx, align 8, !tbaa !571
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.da) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.db = load ptr, ptr %i.cu, align 8, !tbaa !1188 ; 2 uses
  %i.dc = getelementptr inbounds i8, ptr %.05.i.i.i.i, i64 -64 ; 2 uses
  %i.dd = icmp eq ptr %i.db, %i.dc
  br i1 %i.dd, label %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.de = load i64, ptr %i.dc, align 8, !tbaa !571
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.df) #32
  br label %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i

_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  %.not.i.i.i.i = icmp eq ptr %i.cq, %i.cu
  br i1 %.not.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !118

_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i: ; preds = %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.ba, align 8, !tbaa !359
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i

_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i, %"_ZZN4llvm17SLPVectorizerPass18tryToVectorizeListENS_8ArrayRefIPNS_5ValueEEERNS_13slpvectorizer7BoUpSLPEbbENK3$_0clEv.exit.i"
  %i.dg = phi ptr [ %.pre.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i ], [ %i.cq, %"_ZZN4llvm17SLPVectorizerPass18tryToVectorizeListENS_8ArrayRefIPNS_5ValueEEERNS_13slpvectorizer7BoUpSLPEbbENK3$_0clEv.exit.i" ] ; 2 uses
  %i.dh = icmp eq ptr %i.dg, %i.bb
  br i1 %i.dh, label %_ZN4llvm30DiagnosticInfoOptimizationBaseD2Ev.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i
  call void @free(ptr noundef %i.dg) #31
  br label %_ZN4llvm30DiagnosticInfoOptimizationBaseD2Ev.exit.i

_ZN4llvm30DiagnosticInfoOptimizationBaseD2Ev.exit.i: ; preds = %bb.h, %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #31
  br label %"_ZN4llvm25OptimizationRemarkEmitter4emitIZNS_17SLPVectorizerPass18tryToVectorizeListENS_8ArrayRefIPNS_5ValueEEERNS_13slpvectorizer7BoUpSLPEbbE3$_0EEvT_PDTclfL0p_EE.exit"

bb.i:                                             ; preds = %.lr.ph, %.lr.ph, %bb.c
  %i.di = getelementptr inbounds nuw i8, ptr %.0115418, i64 8 ; 2 uses
  %.not152 = icmp eq ptr %i.di, %i.g
  br i1 %.not152, label %.critedge157, label %.lr.ph

.critedge157:                                     ; preds = %bb.i
  %i.dj = load ptr, ptr %1, align 8, !tbaa !579   ; 3 uses
  %i.dk = load i8, ptr %i.dj, align 8, !tbaa !391 ; 3 uses
  switch i8 %i.dk, label %.thread34.i [
    i8 86, label %.sink.split.i
    i8 85, label %.sink.split.i
    i8 64, label %.sink.split.i
  ]

.thread34.i:                                      ; preds = %.critedge157
  %i.dl = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL8SLPReVec, i64 120), align 8, !tbaa !648, !range !368, !noundef !369
  %i.dm = trunc nuw i8 %i.dl to i1
  %i.dn = icmp ne i8 %i.dk, 94
  %or.cond41.not.i = or i1 %i.dn, %i.dm
  br i1 %or.cond41.not.i, label %.thread36.i, label %.sink.split.i

.thread36.i:                                      ; preds = %.thread34.i
  %i.do = icmp eq i8 %i.dk, 97
  br i1 %i.do, label %.sink.split.i, label %_ZL12getValueTypePN4llvm5ValueEb.exit

.sink.split.i:                                    ; preds = %.critedge157, %.critedge157, %.critedge157, %.thread36.i, %.thread34.i
  %.sink44.i = phi i64 [ -64, %.thread34.i ], [ -32, %.thread36.i ], [ -64, %.critedge157 ], [ -64, %.critedge157 ], [ -64, %.critedge157 ]
  %i.dp = getelementptr inbounds i8, ptr %i.dj, i64 %.sink44.i
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !546
  br label %_ZL12getValueTypePN4llvm5ValueEb.exit

_ZL12getValueTypePN4llvm5ValueEb.exit:            ; preds = %.thread36.i, %.sink.split.i
  %.sink.i = phi ptr [ %i.dj, %.thread36.i ], [ %i.dq, %.sink.split.i ]
  %i.dr = getelementptr inbounds nuw i8, ptr %.sink.i, i64 8
  %.6.i = load ptr, ptr %i.dr, align 8, !tbaa !580 ; 8 uses
  %i.ds = tail call noundef i32 @_ZN4llvm13slpvectorizer7BoUpSLP20getVectorElementSizeEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(5088) %3, ptr noundef nonnull %.val162) ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 4900
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !841
  %i.dv = udiv i32 %i.du, %i.ds                   ; 2 uses
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.dv, i32 2) ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !1837
  %i.dy = trunc i64 %2 to i32                     ; 15 uses
  %i.dz = tail call fastcc noundef zeroext i1 @_ZL18isValidElementTypePN4llvm4TypeE(ptr noundef %.6.i)
  br i1 %i.dz, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZL12getValueTypePN4llvm5ValueEb.exit
  %i.ea = getelementptr inbounds nuw i8, ptr %.6.i, i64 8
  %i.eb = load i32, ptr %i.ea, align 8
  %i.ec = and i32 %i.eb, 255
  %i.ed = icmp eq i32 %i.ec, 16
  br i1 %i.ed, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %_ZL12getValueTypePN4llvm5ValueEb.exit
  %.not.i.i165 = icmp eq i32 %i.dy, 0
  %i.ee = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.dy, i1 true)
  %i.ef = lshr exact i32 -2147483648, %i.ee
  %.0.i.i = select i1 %.not.i.i165, i32 0, i32 %i.ef
  br label %_ZL34getFloorFullVectorNumberOfElementsRKN4llvm19TargetTransformInfoEPNS_4TypeEj.exit

bb.l:                                             ; preds = %bb.j
  %i.eg = tail call fastcc noundef ptr @_ZL14getWidenedTypePN4llvm4TypeEj(ptr noundef nonnull %.6.i, i32 noundef %i.dy)
  %i.eh = tail call noundef i32 @_ZNK4llvm19TargetTransformInfo16getNumberOfPartsEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.dx, ptr noundef %i.eg) #31 ; 3 uses
  %i.ei = icmp ne i32 %i.eh, 0
  %.not.i = icmp ult i32 %i.eh, %i.dy
  %or.cond.i = and i1 %i.ei, %.not.i
  br i1 %or.cond.i, label %_ZN4llvm8bit_ceilIjEET_S1_.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not.i18.i = icmp eq i32 %i.dy, 0
  %i.ej = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.dy, i1 true)
  %i.ek = lshr exact i32 -2147483648, %i.ej
  %.0.i19.i = select i1 %.not.i18.i, i32 0, i32 %i.ek
  br label %_ZL34getFloorFullVectorNumberOfElementsRKN4llvm19TargetTransformInfoEPNS_4TypeEj.exit

_ZN4llvm8bit_ceilIjEET_S1_.exit.i:                ; preds = %bb.l
  %i.el = add i32 %i.dy, -1
  %i.em = udiv i32 %i.el, %i.eh
  %i.en = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.em, i1 false)
  %i.eo = sub nuw nsw i32 32, %i.en
  %i.ep = shl nuw i32 1, %i.eo                    ; 2 uses
  %i.eq = icmp ugt i32 %i.ep, %i.dy
  br i1 %i.eq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN4llvm8bit_ceilIjEET_S1_.exit.i
  %i.er = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.dy, i1 true)
  %i.es = lshr exact i32 -2147483648, %i.er
  br label %_ZL34getFloorFullVectorNumberOfElementsRKN4llvm19TargetTransformInfoEPNS_4TypeEj.exit

bb.o:                                             ; preds = %_ZN4llvm8bit_ceilIjEET_S1_.exit.i
  %.not24.i = sub i32 0, %i.ep
  %i.et = and i32 %.not24.i, %i.dy
  br label %_ZL34getFloorFullVectorNumberOfElementsRKN4llvm19TargetTransformInfoEPNS_4TypeEj.exit

_ZL34getFloorFullVectorNumberOfElementsRKN4llvm19TargetTransformInfoEPNS_4TypeEj.exit: ; preds = %bb.k, %bb.m, %bb.n, %bb.o
  %.2.i = phi i32 [ %.0.i.i, %bb.k ], [ %.0.i19.i, %bb.m ], [ %i.es, %bb.n ], [ %i.et, %bb.o ]
  %.sroa.speculated337 = tail call i32 @llvm.umax.i32(i32 %.2.i, i32 %.sroa.speculated.i) ; 2 uses
  %i.eu = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL11MaxVFOption, i64 8), align 8, !tbaa !1511
  %.not.i166 = icmp eq i16 %i.eu, 0
  br i1 %.not.i166, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZL34getFloorFullVectorNumberOfElementsRKN4llvm19TargetTransformInfoEPNS_4TypeEj.exit
  %i.ev = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL11MaxVFOption, i64 120), align 8, !tbaa !669
  br label %_ZNK4llvm13slpvectorizer7BoUpSLP12getMaximumVFEjj.exit

bb.q:                                             ; preds = %_ZL34getFloorFullVectorNumberOfElementsRKN4llvm19TargetTransformInfoEPNS_4TypeEj.exit
  %.val161.val = load i8, ptr %.val162, align 8, !tbaa !391
  %i.ew = zext i8 %.val161.val to i32
  %i.ex = add nsw i32 %i.ew, -30
  %i.ey = getelementptr inbounds nuw i8, ptr %3, i64 4832
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !584
  %i.fa = tail call noundef i32 @_ZNK4llvm19TargetTransformInfo12getMaximumVFEjj(ptr noundef nonnull align 8 dereferenceable(8) %i.ez, i32 noundef %i.ds, i32 noundef %i.ex) #31
  br label %_ZNK4llvm13slpvectorizer7BoUpSLP12getMaximumVFEjj.exit

_ZNK4llvm13slpvectorizer7BoUpSLP12getMaximumVFEjj.exit: ; preds = %bb.p, %bb.q
  %i.fb = phi i32 [ %i.ev, %bb.p ], [ %i.fa, %bb.q ] ; 2 uses
  %.not4.i = icmp eq i32 %i.fb, 0
  %i.fc = tail call i32 @llvm.umin.i32(i32 %.sroa.speculated337, i32 %i.fb)
  %.sroa.speculated332 = select i1 %.not4.i, i32 %.sroa.speculated337, i32 %i.fc ; 2 uses
  br i1 %5, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZNK4llvm13slpvectorizer7BoUpSLP12getMaximumVFEjj.exit
  %i.fd = getelementptr inbounds nuw i8, ptr %3, i64 4896
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !1261
  %i.ff = udiv i32 %i.fe, %i.ds
  %.sroa.speculated359 = tail call i32 @llvm.umax.i32(i32 %.sroa.speculated.i, i32 %i.ff)
  %.sroa.speculated346 = tail call i32 @llvm.umin.i32(i32 %.sroa.speculated359, i32 %.sroa.speculated332)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZNK4llvm13slpvectorizer7BoUpSLP12getMaximumVFEjj.exit
  %.0 = phi i32 [ %.sroa.speculated346, %bb.r ], [ %.sroa.speculated332, %_ZNK4llvm13slpvectorizer7BoUpSLP12getMaximumVFEjj.exit ] ; 4 uses
  %i.fg = icmp ult i32 %.0, 2
  br i1 %i.fg, label %bb.t, label %.thread.a

bb.t:                                             ; preds = %bb.s
  %i.fh = getelementptr inbounds nuw i8, ptr %3, i64 4888
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !1850 ; 3 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !1967
  %i.fk = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm8Function10getContextEv(ptr noundef nonnull align 8 dereferenceable(140) %i.fj) #31
  %i.fl = tail call noundef ptr @_ZN4llvm11LLVMContext21getLLVMRemarkStreamerEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fk) #31
  %.not.i.i170 = icmp eq ptr %i.fl, null
  br i1 %.not.i.i170, label %_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.i205, label %_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.thread.i171

_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.i205: ; preds = %bb.t
  %i.fm = load ptr, ptr %i.fi, align 8, !tbaa !1967
  %i.fn = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm8Function10getContextEv(ptr noundef nonnull align 8 dereferenceable(140) %i.fm) #31
  %i.fo = tail call noundef ptr @_ZNK4llvm11LLVMContext17getDiagHandlerPtrEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fn) #31 ; 2 uses
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !361
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 48
  %i.fr = load ptr, ptr %i.fq, align 8
  %i.fs = tail call noundef zeroext i1 %i.fr(ptr noundef nonnull align 8 dereferenceable(32) %i.fo) #31, !inline_history !9024
  br i1 %i.fs, label %_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.thread.i171, label %"_ZN4llvm25OptimizationRemarkEmitter4emitIZNS_17SLPVectorizerPass18tryToVectorizeListENS_8ArrayRefIPNS_5ValueEEERNS_13slpvectorizer7BoUpSLPEbbE3$_0EEvT_PDTclfL0p_EE.exit"

_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.thread.i171: ; preds = %_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.i205, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #31
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9051)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #31, !noalias !9051
  call void @_ZN4llvm24OptimizationRemarkMissedC1EPKcNS_9StringRefEPKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(432) %13, ptr noundef nonnull @.str.99, ptr nonnull @.str.126, i64 7, ptr noundef nonnull %.val162) #31, !noalias !9051
  call void @_ZN4llvm30DiagnosticInfoOptimizationBase6insertENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(432) %13, ptr nonnull @.str.127, i64 48) #31, !noalias !9051
  call void @_ZN4llvm30DiagnosticInfoOptimizationBase6insertENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(432) %13, ptr nonnull @.str.128, i64 28) #31, !noalias !9051
  %i.ft = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.fu = getelementptr inbounds nuw i8, ptr %13, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.ft, ptr noundef nonnull align 8 dereferenceable(5) %i.fu, i64 5, i1 false)
  %i.fv = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.fw = getelementptr inbounds nuw i8, ptr %13, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fv, ptr noundef nonnull align 8 dereferenceable(24) %i.fw, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm30DiagnosticInfoOptimizationBaseE, i64 16), ptr %14, align 8, !tbaa !361, !alias.scope !9051
  %i.fx = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.fy = getelementptr inbounds nuw i8, ptr %13, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.fx, ptr noundef nonnull align 8 dereferenceable(40) %i.fy, i64 40, i1 false)
  %i.fz = getelementptr inbounds nuw i8, ptr %14, i64 80 ; 4 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %14, i64 96 ; 2 uses
  store ptr %i.ga, ptr %i.fz, align 8, !tbaa !359, !alias.scope !9051
  %i.gb = getelementptr inbounds nuw i8, ptr %14, i64 88 ; 2 uses
  store i32 0, ptr %i.gb, align 8, !tbaa !371, !alias.scope !9051
  %i.gc = getelementptr inbounds nuw i8, ptr %14, i64 92
  store i32 4, ptr %i.gc, align 4, !tbaa !372, !alias.scope !9051
  %i.gd = getelementptr inbounds nuw i8, ptr %13, i64 88 ; 2 uses
  %i.ge = load i32, ptr %i.gd, align 8, !tbaa !371, !noalias !9051
  %.not.i.i.i.i.i.i.i172 = icmp eq i32 %i.ge, 0
  br i1 %.not.i.i.i.i.i.i.i172, label %_ZN4llvm24OptimizationRemarkMissedC2EOS0_.exit.i.i173, label %bb.u

bb.u:                                             ; preds = %_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.thread.i171
  %i.gf = getelementptr inbounds nuw i8, ptr %13, i64 80
  %i.gg = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplINS_30DiagnosticInfoOptimizationBase8ArgumentEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(336) %i.fz, ptr noundef nonnull align 8 dereferenceable(336) %i.gf) ; 0 uses
  %.pre.i.i = load i32, ptr %i.gd, align 8, !tbaa !371, !noalias !9051
  br label %_ZN4llvm24OptimizationRemarkMissedC2EOS0_.exit.i.i173

_ZN4llvm24OptimizationRemarkMissedC2EOS0_.exit.i.i173: ; preds = %bb.u, %_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.thread.i171
  %i.gh = phi i32 [ 0, %_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.thread.i171 ], [ %.pre.i.i, %bb.u ] ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %14, i64 416
  %i.gj = getelementptr inbounds nuw i8, ptr %13, i64 416
  %i.gk = load i64, ptr %i.gj, align 8, !noalias !9051
  store i64 %i.gk, ptr %i.gi, align 8, !alias.scope !9051
  %i.gl = getelementptr inbounds nuw i8, ptr %14, i64 424
  %i.gm = getelementptr inbounds nuw i8, ptr %13, i64 424
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !1983, !noalias !9051
  store ptr %i.gn, ptr %i.gl, align 8, !tbaa !1983, !alias.scope !9051
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm24OptimizationRemarkMissedE, i64 16), ptr %14, align 8, !tbaa !361, !alias.scope !9051
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm30DiagnosticInfoOptimizationBaseE, i64 16), ptr %13, align 8, !tbaa !361, !noalias !9051
  %i.go = getelementptr inbounds nuw i8, ptr %13, i64 80 ; 2 uses
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !359, !noalias !9051 ; 3 uses
  %.not4.i.i.i.i.i174 = icmp eq i32 %i.gh, 0
  br i1 %.not4.i.i.i.i.i174, label %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i186, label %.lr.ph.i.preheader.i.i.i.i175

.lr.ph.i.preheader.i.i.i.i175:                    ; preds = %_ZN4llvm24OptimizationRemarkMissedC2EOS0_.exit.i.i173
  %i.gq = zext i32 %i.gh to i64
  %.idx.i.i.i.i176 = mul nuw nsw i64 %i.gq, 80
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 %.idx.i.i.i.i176
  br label %.lr.ph.i.i.i.i.i177

.lr.ph.i.i.i.i.i177:                              ; preds = %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i.i182, %.lr.ph.i.preheader.i.i.i.i175
  %.05.i.i.i.i.i178 = phi ptr [ %i.gs, %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i.i182 ], [ %i.gr, %.lr.ph.i.preheader.i.i.i.i175 ] ; 4 uses
  %i.gs = getelementptr inbounds i8, ptr %.05.i.i.i.i.i178, i64 -80 ; 3 uses
  %i.gt = getelementptr inbounds i8, ptr %.05.i.i.i.i.i178, i64 -48
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !1188 ; 2 uses
  %i.gv = getelementptr inbounds i8, ptr %.05.i.i.i.i.i178, i64 -32 ; 2 uses
  %i.gw = icmp eq ptr %i.gu, %i.gv
  br i1 %i.gw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i180, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i179

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i179: ; preds = %.lr.ph.i.i.i.i.i177
  %i.gx = load i64, ptr %i.gv, align 8, !tbaa !571
  %i.gy = add i64 %i.gx, 1
  call void @_ZdlPvm(ptr noundef %i.gu, i64 noundef %i.gy) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i180

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i180: ; preds = %.lr.ph.i.i.i.i.i177, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i179
  %i.gz = load ptr, ptr %i.gs, align 8, !tbaa !1188 ; 2 uses
  %i.ha = getelementptr inbounds i8, ptr %.05.i.i.i.i.i178, i64 -64 ; 2 uses
  %i.hb = icmp eq ptr %i.gz, %i.ha
  br i1 %i.hb, label %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i.i182, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i181

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i181: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i180
  %i.hc = load i64, ptr %i.ha, align 8, !tbaa !571
  %i.hd = add i64 %i.hc, 1
  call void @_ZdlPvm(ptr noundef %i.gz, i64 noundef %i.hd) #32
  br label %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i.i182

_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i.i182: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i180, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i181
  %.not.i.i.i.i.i183 = icmp eq ptr %i.gp, %i.gs
  br i1 %.not.i.i.i.i.i183, label %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i.i184, label %.lr.ph.i.i.i.i.i177, !llvm.loop !118

_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i.i184: ; preds = %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i.i182
  %.pre.i.i.i.i185 = load ptr, ptr %i.go, align 8, !tbaa !359, !noalias !9051
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i186

_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i186: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i.i184, %_ZN4llvm24OptimizationRemarkMissedC2EOS0_.exit.i.i173
  %i.he = phi ptr [ %.pre.i.i.i.i185, %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i.i184 ], [ %i.gp, %_ZN4llvm24OptimizationRemarkMissedC2EOS0_.exit.i.i173 ] ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %13, i64 96
  %i.hg = icmp eq ptr %i.he, %i.hf
  br i1 %i.hg, label %"_ZZN4llvm17SLPVectorizerPass18tryToVectorizeListENS_8ArrayRefIPNS_5ValueEEERNS_13slpvectorizer7BoUpSLPEbbENK3$_1clEv.exit.i", label %bb.v

bb.v:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i186
  call void @free(ptr noundef %i.he) #31
  br label %"_ZZN4llvm17SLPVectorizerPass18tryToVectorizeListENS_8ArrayRefIPNS_5ValueEEERNS_13slpvectorizer7BoUpSLPEbbENK3$_1clEv.exit.i"

"_ZZN4llvm17SLPVectorizerPass18tryToVectorizeListENS_8ArrayRefIPNS_5ValueEEERNS_13slpvectorizer7BoUpSLPEbbENK3$_1clEv.exit.i": ; preds = %bb.v, %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i186
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31, !noalias !9051
  call void @_ZN4llvm25OptimizationRemarkEmitter4emitERNS_30DiagnosticInfoOptimizationBaseE(ptr noundef nonnull align 8 dereferenceable(24) %i.fi, ptr noundef nonnull align 8 dereferenceable(424) %14) #31
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm30DiagnosticInfoOptimizationBaseE, i64 16), ptr %14, align 8, !tbaa !361
  %i.hh = load ptr, ptr %i.fz, align 8, !tbaa !359 ; 3 uses
  %i.hi = load i32, ptr %i.gb, align 8, !tbaa !371 ; 2 uses
  %.not4.i.i.i.i187 = icmp eq i32 %i.hi, 0
  br i1 %.not4.i.i.i.i187, label %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i199, label %.lr.ph.i.preheader.i.i.i188

.lr.ph.i.preheader.i.i.i188:                      ; preds = %"_ZZN4llvm17SLPVectorizerPass18tryToVectorizeListENS_8ArrayRefIPNS_5ValueEEERNS_13slpvectorizer7BoUpSLPEbbENK3$_1clEv.exit.i"
  %i.hj = zext i32 %i.hi to i64
  %.idx.i.i.i189 = mul nuw nsw i64 %i.hj, 80
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hh, i64 %.idx.i.i.i189
  br label %.lr.ph.i.i.i.i190

.lr.ph.i.i.i.i190:                                ; preds = %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i195, %.lr.ph.i.preheader.i.i.i188
  %.05.i.i.i.i191 = phi ptr [ %i.hl, %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i195 ], [ %i.hk, %.lr.ph.i.preheader.i.i.i188 ] ; 4 uses
  %i.hl = getelementptr inbounds i8, ptr %.05.i.i.i.i191, i64 -80 ; 3 uses
  %i.hm = getelementptr inbounds i8, ptr %.05.i.i.i.i191, i64 -48
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !1188 ; 2 uses
  %i.ho = getelementptr inbounds i8, ptr %.05.i.i.i.i191, i64 -32 ; 2 uses
  %i.hp = icmp eq ptr %i.hn, %i.ho
  br i1 %i.hp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i193, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i192

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i192: ; preds = %.lr.ph.i.i.i.i190
  %i.hq = load i64, ptr %i.ho, align 8, !tbaa !571
  %i.hr = add i64 %i.hq, 1
  call void @_ZdlPvm(ptr noundef %i.hn, i64 noundef %i.hr) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i193

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i193: ; preds = %.lr.ph.i.i.i.i190, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i192
  %i.hs = load ptr, ptr %i.hl, align 8, !tbaa !1188 ; 2 uses
  %i.ht = getelementptr inbounds i8, ptr %.05.i.i.i.i191, i64 -64 ; 2 uses
  %i.hu = icmp eq ptr %i.hs, %i.ht
  br i1 %i.hu, label %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i195, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i194

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i194: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i193
  %i.hv = load i64, ptr %i.ht, align 8, !tbaa !571
  %i.hw = add i64 %i.hv, 1
  call void @_ZdlPvm(ptr noundef %i.hs, i64 noundef %i.hw) #32
  br label %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i195

_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i195: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i193, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i194
  %.not.i.i.i.i196 = icmp eq ptr %i.hh, %i.hl
  br i1 %.not.i.i.i.i196, label %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i197, label %.lr.ph.i.i.i.i190, !llvm.loop !118

_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i197: ; preds = %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i195
  %.pre.i.i.i198 = load ptr, ptr %i.fz, align 8, !tbaa !359
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i199

_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i199: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i197, %"_ZZN4llvm17SLPVectorizerPass18tryToVectorizeListENS_8ArrayRefIPNS_5ValueEEERNS_13slpvectorizer7BoUpSLPEbbENK3$_1clEv.exit.i"
  %i.hx = phi ptr [ %.pre.i.i.i198, %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i197 ], [ %i.hh, %"_ZZN4llvm17SLPVectorizerPass18tryToVectorizeListENS_8ArrayRefIPNS_5ValueEEERNS_13slpvectorizer7BoUpSLPEbbENK3$_1clEv.exit.i" ] ; 2 uses
  %i.hy = icmp eq ptr %i.hx, %i.ga
  br i1 %i.hy, label %_ZN4llvm30DiagnosticInfoOptimizationBaseD2Ev.exit.i200, label %bb.w

bb.w:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i199
  call void @free(ptr noundef %i.hx) #31
  br label %_ZN4llvm30DiagnosticInfoOptimizationBaseD2Ev.exit.i200

_ZN4llvm30DiagnosticInfoOptimizationBaseD2Ev.exit.i200: ; preds = %bb.w, %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i199
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #31
  br label %"_ZN4llvm25OptimizationRemarkEmitter4emitIZNS_17SLPVectorizerPass18tryToVectorizeListENS_8ArrayRefIPNS_5ValueEEERNS_13slpvectorizer7BoUpSLPEbbE3$_0EEvT_PDTclfL0p_EE.exit"

.thread.a:                                        ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #31
  %i.hz = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL16SLPCostThreshold, i64 120), align 8, !tbaa !380
  %i.ia = sext i32 %i.hz to i64
  %i.ib = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 3 uses
  store i32 0, ptr %i.ib, align 8, !tbaa !824
  %i.ic = shl nsw i64 %i.ia, 2
  store i64 %i.ic, ptr %21, align 8, !tbaa !825
  %i.id = icmp ugt i32 %i.dy, 1
  %29 = icmp ule i32 %i.dv, %.0
  %i.ie = select i1 %i.id, i1 %29, i1 false
  br i1 %i.ie, label %.lr.ph447, label %.thread560

.lr.ph447:                                        ; preds = %.thread.a
  %i.if = getelementptr inbounds nuw i8, ptr %.6.i, i64 8 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 5 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %22, i64 12
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %2
  %i.ik = getelementptr inbounds nuw i8, ptr %3, i64 3536
  %i.il = getelementptr inbounds nuw i8, ptr %3, i64 3544
  %i.im = getelementptr inbounds nuw i8, ptr %3, i64 3556
  %i.in = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.io = getelementptr inbounds nuw i8, ptr %25, i64 8
  %.sroa.215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.ip = getelementptr inbounds nuw i8, ptr %3, i64 4888
  %i.iq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ir = getelementptr inbounds nuw i8, ptr %28, i64 32
  %i.is = getelementptr inbounds nuw i8, ptr %28, i64 48 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %27, i64 32
  %i.iv = getelementptr inbounds nuw i8, ptr %27, i64 48 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %26, i64 80 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %26, i64 88
  %i.iz = getelementptr inbounds nuw i8, ptr %26, i64 96
  %i.ja = getelementptr inbounds nuw i8, ptr %.val162, i64 8
  br label %bb.x

._crit_edge448:                                   ; preds = %_ZL34getFloorFullVectorNumberOfElementsRKN4llvm19TargetTransformInfoEPNS_4TypeEj.exit233
  %.not = xor i1 %.6122, true
  %or.cond10 = select i1 %.not, i1 %.5128, i1 false
  br i1 %or.cond10, label %bb.ba, label %bb.be

bb.x:                                             ; preds = %.lr.ph447, %_ZL34getFloorFullVectorNumberOfElementsRKN4llvm19TargetTransformInfoEPNS_4TypeEj.exit233
  %.0116446 = phi i1 [ false, %.lr.ph447 ], [ %.6122, %_ZL34getFloorFullVectorNumberOfElementsRKN4llvm19TargetTransformInfoEPNS_4TypeEj.exit233 ] ; 2 uses
  %.0123445 = phi i1 [ false, %.lr.ph447 ], [ %.5128, %_ZL34getFloorFullVectorNumberOfElementsRKN4llvm19TargetTransformInfoEPNS_4TypeEj.exit233 ] ; 2 uses
  %.0129444 = phi i32 [ 0, %.lr.ph447 ], [ %.6135, %_ZL34getFloorFullVectorNumberOfElementsRKN4llvm19TargetTransformInfoEPNS_4TypeEj.exit233 ] ; 4 uses
  %storemerge443 = phi i32 [ %.0, %.lr.ph447 ], [ %.2.i226, %_ZL34getFloorFullVectorNumberOfElementsRKN4llvm19TargetTransformInfoEPNS_4TypeEj.exit233 ] ; 9 uses
  %i.jb = call fastcc noundef ptr @_ZL14getWidenedTypePN4llvm4TypeEj(ptr noundef %.6.i, i32 noundef %storemerge443)
  %i.jc = load ptr, ptr %i.dw, align 8, !tbaa !1837
  %i.jd = call fastcc noundef i32 @_ZL16getNumberOfPartsRKN4llvm19TargetTransformInfoEPNS_4TypeES4_j(ptr noundef nonnull align 8 dereferenceable(8) %i.jc, ptr noundef %i.jb, ptr noundef %.6.i, i32 noundef -1)
  %i.je = icmp ne i32 %i.jd, %storemerge443
  %i.jf = icmp ult i32 %.0129444, %i.dy
  %or.cond = select i1 %i.je, i1 %i.jf, i1 false
  br i1 %or.cond, label %.lr.ph428, label %..thread393_crit_edge

..thread393_crit_edge:                            ; preds = %bb.x
  %.pre = add i32 %storemerge443, -1
  br label %.thread393

.lr.ph428:                                        ; preds = %bb.x
  %i.jg = icmp ugt i32 %storemerge443, %.sroa.speculated.i
  %i.jh = add i32 %storemerge443, -1              ; 4 uses
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph428, %.thread400
  %.1117427 = phi i1 [ %.0116446, %.lr.ph428 ], [ %.4120409, %.thread400 ] ; 9 uses
  %.1124426 = phi i1 [ %.0123445, %.lr.ph428 ], [ %.3126408, %.thread400 ] ; 8 uses
  %.1130425 = phi i32 [ %.0129444, %.lr.ph428 ], [ %.4133407, %.thread400 ] ; 9 uses
  %.0136424 = phi i32 [ %.0129444, %.lr.ph428 ], [ %i.op, %.thread400 ] ; 11 uses
  %i.ji = sub nuw i32 %i.dy, %.0136424            ; 2 uses
  %.sroa.speculated = call i32 @llvm.umin.i32(i32 %storemerge443, i32 %i.ji) ; 12 uses
  %i.jj = load ptr, ptr %i.dw, align 8, !tbaa !1837
  %i.jk = icmp ult i32 %.sroa.speculated, 2
  br i1 %i.jk, label %.thread400, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.jl = call fastcc noundef zeroext i1 @_ZL18isValidElementTypePN4llvm4TypeE(ptr noundef %.6.i)
  br i1 %i.jl, label %_ZN4llvm14has_single_bitIjvEEbT_.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.jm = load i32, ptr %i.if, align 8
  %i.jn = and i32 %i.jm, 255
  %i.jo = icmp eq i32 %i.jn, 18
  br i1 %i.jo, label %_ZN4llvm14has_single_bitIjvEEbT_.exit.i, label %.thread400

_ZN4llvm14has_single_bitIjvEEbT_.exit.i:          ; preds = %bb.aa, %bb.z
  %i.jp = call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %.sroa.speculated)
  %i.jq = icmp samesign ult i32 %i.jp, 2
  br i1 %i.jq, label %_ZL24hasFullVectorsOrPowerOf2RKN4llvm19TargetTransformInfoEPNS_4TypeEj.exit.thread386, label %bb.ab

bb.ab:                                            ; preds = %_ZN4llvm14has_single_bitIjvEEbT_.exit.i
  %i.jr = load i32, ptr %i.if, align 8
  %i.js = and i32 %i.jr, 255
  %i.jt = icmp eq i32 %i.js, 16
  br i1 %i.jt, label %.thread400, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ju = call fastcc noundef ptr @_ZL14getWidenedTypePN4llvm4TypeEj(ptr noundef nonnull %.6.i, i32 noundef %.sroa.speculated)
  %i.jv = call noundef i32 @_ZNK4llvm19TargetTransformInfo16getNumberOfPartsEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.jj, ptr noundef %i.ju) #31 ; 4 uses
  %.not.i208 = icmp ne i32 %i.jv, 0
  %i.jw = icmp ult i32 %i.jv, %.sroa.speculated
  %or.cond.i209 = and i1 %.not.i208, %i.jw
  br i1 %or.cond.i209, label %bb.ad, label %.thread400

bb.ad:                                            ; preds = %bb.ac
  %i.jx = udiv i32 %.sroa.speculated, %i.jv
  %i.jy = urem i32 %.sroa.speculated, %i.jv
  %i.jz = call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %i.jx)
  %i.ka = icmp samesign ult i32 %i.jz, 2
  %i.kb = icmp eq i32 %i.jy, 0
  %or.cond575 = and i1 %i.ka, %i.kb
  br i1 %or.cond575, label %_ZL24hasFullVectorsOrPowerOf2RKN4llvm19TargetTransformInfoEPNS_4TypeEj.exit.thread386, label %.thread400

_ZL24hasFullVectorsOrPowerOf2RKN4llvm19TargetTransformInfoEPNS_4TypeEj.exit.thread386: ; preds = %bb.ad, %_ZN4llvm14has_single_bitIjvEEbT_.exit.i
  %i.kc = icmp ult i32 %.sroa.speculated, %.0
  %or.cond159 = and i1 %4, %i.kc
  %i.kd = icmp ult i32 %i.ji, %storemerge443
  %or.cond160 = and i1 %i.jg, %i.kd
  %or.cond451 = or i1 %or.cond159, %or.cond160
  br i1 %or.cond451, label %.thread393, label %bb.ae

bb.ae:                                            ; preds = %_ZL24hasFullVectorsOrPowerOf2RKN4llvm19TargetTransformInfoEPNS_4TypeEj.exit.thread386
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #31
  %i.ke = zext i32 %.sroa.speculated to i64       ; 4 uses
  store ptr %i.ig, ptr %22, align 8, !tbaa !359
  store i32 6, ptr %i.ii, align 4, !tbaa !372
  %i.kf = icmp ugt i32 %.sroa.speculated, 6
  br i1 %i.kf, label %_ZN4llvm11SmallVectorIPNS_5ValueELj6EEC2EmRKS2_.exit.loopexit, label %_ZN4llvm11SmallVectorIPNS_5ValueELj6EEC2EmRKS2_.exit

_ZN4llvm11SmallVectorIPNS_5ValueELj6EEC2EmRKS2_.exit.loopexit: ; preds = %bb.ae
  store i32 0, ptr %i.ih, align 8, !tbaa !371
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %22, ptr noundef nonnull %i.ig, i64 noundef %i.ke, i64 noundef 8) #31
  %i.kg = load ptr, ptr %22, align 8, !tbaa !359
  br label %_ZN4llvm11SmallVectorIPNS_5ValueELj6EEC2EmRKS2_.exit

_ZN4llvm11SmallVectorIPNS_5ValueELj6EEC2EmRKS2_.exit: ; preds = %bb.ae, %_ZN4llvm11SmallVectorIPNS_5ValueELj6EEC2EmRKS2_.exit.loopexit
  %.sink = phi ptr [ %i.kg, %_ZN4llvm11SmallVectorIPNS_5ValueELj6EEC2EmRKS2_.exit.loopexit ], [ %i.ig, %bb.ae ]
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %i.ke, 3
  call void @llvm.memset.p0.i64(ptr align 8 %.sink, i8 0, i64 %.idx.i.i.i.i.i.i, i1 false), !tbaa !579
  store i32 %.sroa.speculated, ptr %i.ih, align 8, !tbaa !371
  %i.kh = zext i32 %.0136424 to i64               ; 2 uses
  %.not153419 = icmp samesign eq i64 %2, %i.kh
  br i1 %.not153419, label %._crit_edge.thread, label %.lr.ph422

.lr.ph422:                                        ; preds = %_ZN4llvm11SmallVectorIPNS_5ValueELj6EEC2EmRKS2_.exit
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.kh
  %i.kj = load ptr, ptr %22, align 8
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph422, %_ZNK4llvm13slpvectorizer7BoUpSLP9isDeletedEPNS_11InstructionE.exit.thread388
  %.0140421 = phi ptr [ %i.ki, %.lr.ph422 ], [ %i.lv, %_ZNK4llvm13slpvectorizer7BoUpSLP9isDeletedEPNS_11InstructionE.exit.thread388 ] ; 2 uses
  %.0141420 = phi i32 [ 0, %.lr.ph422 ], [ %.2143391, %_ZNK4llvm13slpvectorizer7BoUpSLP9isDeletedEPNS_11InstructionE.exit.thread388 ] ; 3 uses
  %i.kk = load ptr, ptr %.0140421, align 8, !tbaa !579 ; 4 uses
  %i.kl = load i8, ptr %i.kk, align 8, !tbaa !391
  %i.km = icmp ult i8 %i.kl, 30
  br i1 %i.km, label %_ZNK4llvm13slpvectorizer7BoUpSLP9isDeletedEPNS_11InstructionE.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.kn = load ptr, ptr %i.ik, align 8, !tbaa !376, !noalias !9052
  %i.ko = load ptr, ptr %i.il, align 8, !tbaa !377, !noalias !9052 ; 2 uses
  %i.kp = load i32, ptr %i.im, align 4, !tbaa !378, !noalias !9052 ; 2 uses
  %i.kq = icmp eq i32 %i.kp, 0
  br i1 %i.kq, label %_ZNK4llvm13slpvectorizer7BoUpSLP9isDeletedEPNS_11InstructionE.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.kr = add i32 %i.kp, -1                       ; 2 uses
  %i.ks = ptrtoint ptr %i.kk to i64
  %i.kt = mul i64 %i.ks, -4658895280553007687     ; 2 uses
  %i.ku = lshr i64 %i.kt, 31
  %i.kv = xor i64 %i.ku, %i.kt
  %i.kw = trunc i64 %i.kv to i32
  %i.kx = and i32 %i.kr, %i.kw                    ; 3 uses
  %i.ky = zext i32 %i.kx to i64                   ; 2 uses
  %i.kz = lshr i64 %i.ky, 5
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.ko, i64 %i.kz
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !380
  %i.lc = and i32 %i.kx, 31
  %i.ld = lshr i32 %i.lb, %i.lc
  %i.le = trunc i32 %i.ld to i1
  br i1 %i.le, label %.lr.ph.i.i.i.i.i211, label %_ZNK4llvm13slpvectorizer7BoUpSLP9isDeletedEPNS_11InstructionE.exit, !prof !547

.lr.ph.i.i.i.i.i211:                              ; preds = %bb.ah, %bb.ai
  %i.lf = phi i64 [ %i.ll, %bb.ai ], [ %i.ky, %bb.ah ]
  %.019.i.i.i.i.i = phi i32 [ %i.lk, %bb.ai ], [ %i.kx, %bb.ah ]
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %i.kn, i64 %i.lf
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !383
  %i.li = icmp eq ptr %i.kk, %i.lh
  br i1 %i.li, label %_ZNK4llvm13slpvectorizer7BoUpSLP9isDeletedEPNS_11InstructionE.exit.thread388, label %bb.ai, !prof !548

bb.ai:                                            ; preds = %.lr.ph.i.i.i.i.i211
  %i.lj = add nuw i32 %.019.i.i.i.i.i, 1
  %i.lk = and i32 %i.lj, %i.kr                    ; 3 uses
  %i.ll = zext i32 %i.lk to i64                   ; 2 uses
  %i.lm = lshr i64 %i.ll, 5
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.ko, i64 %i.lm
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !380
  %i.lp = and i32 %i.lk, 31
  %i.lq = lshr i32 %i.lo, %i.lp
  %i.lr = trunc i32 %i.lq to i1
  br i1 %i.lr, label %.lr.ph.i.i.i.i.i211, label %_ZNK4llvm13slpvectorizer7BoUpSLP9isDeletedEPNS_11InstructionE.exit, !prof !549

_ZNK4llvm13slpvectorizer7BoUpSLP9isDeletedEPNS_11InstructionE.exit: ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af
  %i.ls = zext i32 %.0141420 to i64
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %i.kj, i64 %i.ls
  store ptr %i.kk, ptr %i.lt, align 8, !tbaa !579
  %i.lu = add i32 %.0141420, 1                    ; 2 uses
  %.not413 = icmp eq i32 %i.lu, %.sroa.speculated
  br i1 %.not413, label %._crit_edge.thread558, label %_ZNK4llvm13slpvectorizer7BoUpSLP9isDeletedEPNS_11InstructionE.exit.thread388

_ZNK4llvm13slpvectorizer7BoUpSLP9isDeletedEPNS_11InstructionE.exit.thread388: ; preds = %.lr.ph.i.i.i.i.i211, %_ZNK4llvm13slpvectorizer7BoUpSLP9isDeletedEPNS_11InstructionE.exit
  %.2143391 = phi i32 [ %i.lu, %_ZNK4llvm13slpvectorizer7BoUpSLP9isDeletedEPNS_11InstructionE.exit ], [ %.0141420, %.lr.ph.i.i.i.i.i211 ] ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %.0140421, i64 8 ; 2 uses
  %.not153 = icmp eq ptr %i.lv, %i.ij
  br i1 %.not153, label %._crit_edge, label %bb.af

._crit_edge:                                      ; preds = %_ZNK4llvm13slpvectorizer7BoUpSLP9isDeletedEPNS_11InstructionE.exit.thread388
  %i.lw = icmp eq i32 %.2143391, %.sroa.speculated
  br i1 %i.lw, label %._crit_edge.thread558, label %._crit_edge.thread

._crit_edge.thread558:                            ; preds = %_ZNK4llvm13slpvectorizer7BoUpSLP9isDeletedEPNS_11InstructionE.exit, %._crit_edge
  %i.lx = load ptr, ptr %22, align 8, !tbaa !359  ; 2 uses
  call void @_ZN4llvm13slpvectorizer7BoUpSLP10deleteTreeEv(ptr noundef nonnull align 8 dereferenceable(5088) %3)
  %i.ly = call noundef zeroext i1 @_ZN4llvm13slpvectorizer11allSameTypeENS_8ArrayRefIPNS_5ValueEEE(ptr %i.lx, i64 %i.ke) #31
  br i1 %i.ly, label %bb.aj, label %_ZN4llvm13slpvectorizer7BoUpSLP9buildTreeENS_8ArrayRefIPNS_5ValueEEE.exit

bb.aj:                                            ; preds = %._crit_edge.thread558
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  store i32 -1, ptr %i.in, align 8, !tbaa !970
  call void @_ZN4llvm13slpvectorizer7BoUpSLP12buildTreeRecENS_8ArrayRefIPNS_5ValueEEEjRKNS1_8EdgeInfoEj(ptr noundef nonnull align 8 dereferenceable(5088) %3, ptr %i.lx, i64 %i.ke, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %12, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  br label %_ZN4llvm13slpvectorizer7BoUpSLP9buildTreeENS_8ArrayRefIPNS_5ValueEEE.exit

_ZN4llvm13slpvectorizer7BoUpSLP9buildTreeENS_8ArrayRefIPNS_5ValueEEE.exit: ; preds = %._crit_edge.thread558, %bb.aj
  %i.lz = call noundef zeroext i1 @_ZNK4llvm13slpvectorizer7BoUpSLP33isTreeTinyAndNotFullyVectorizableEb(ptr noundef nonnull align 8 dereferenceable(5088) %3, i1 noundef zeroext false)
  br i1 %i.lz, label %bb.ap, label %bb.ak

bb.ak:                                            ; preds = %_ZN4llvm13slpvectorizer7BoUpSLP9buildTreeENS_8ArrayRefIPNS_5ValueEEE.exit
  %i.ma = call noundef zeroext i1 @_ZNK4llvm13slpvectorizer7BoUpSLP21isProfitableToReorderEv(ptr noundef nonnull align 8 dereferenceable(5088) %3)
  br i1 %i.ma, label %bb.al, label %_ZN4llvm6detail12DenseSetImplIPNS_5ValueENS_13SmallDenseMapIS3_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit

bb.al:                                            ; preds = %bb.ak
  call void @_ZN4llvm13slpvectorizer7BoUpSLP18reorderTopToBottomEv(ptr noundef nonnull align 8 dereferenceable(5088) %3)
  %i.mb = load ptr, ptr %22, align 8, !tbaa !359
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !579
  %i.md = load i8, ptr %i.mc, align 8, !tbaa !391 ; 2 uses
  %i.me = icmp ne i8 %i.md, 94
  %i.mf = icmp ne i8 %i.md, 97
  %spec.select.i212.not = and i1 %i.me, %i.mf
  call void @_ZN4llvm13slpvectorizer7BoUpSLP18reorderBottomToTopEb(ptr noundef nonnull align 8 dereferenceable(5088) %3, i1 noundef zeroext %spec.select.i212.not)
  br label %_ZN4llvm6detail12DenseSetImplIPNS_5ValueENS_13SmallDenseMapIS3_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit

_ZN4llvm6detail12DenseSetImplIPNS_5ValueENS_13SmallDenseMapIS3_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit: ; preds = %bb.ak, %bb.al
  call void @_ZN4llvm13slpvectorizer7BoUpSLP14transformNodesEv(ptr noundef nonnull align 8 dereferenceable(5088) %3)
  call void @_ZN4llvm13slpvectorizer7BoUpSLP24computeMinimumValueSizesEv(ptr noundef nonnull align 8 dereferenceable(5088) %3)
  %i.mg = call { i64, i32 } @_ZN4llvm13slpvectorizer7BoUpSLP37calculateTreeCostAndTrimNonProfitableENS_8ArrayRefIPNS_5ValueEEEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(5088) %3, ptr null, i64 0, ptr noundef null) ; 2 uses
  %.fca.0.extract19 = extractvalue { i64, i32 } %i.mg, 0
  %.fca.1.extract20 = extractvalue { i64, i32 } %i.mg, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %23, i8 0, i64 48, i1 false)
  store i32 1, ptr %23, align 8
  call void @_ZN4llvm13slpvectorizer7BoUpSLP17buildExternalUsesERKNS_13SmallDenseSetIPNS_5ValueELj4ENS_12DenseMapInfoIS4_vEEEE(ptr noundef nonnull align 8 dereferenceable(5088) %3, ptr noundef nonnull align 8 dereferenceable(48) %23)
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #31
  store i32 0, ptr %i.io, align 8, !tbaa !824
  store i64 0, ptr %25, align 8, !tbaa !825
  %i.mh = call { i64, i32 } @_ZN4llvm13slpvectorizer7BoUpSLP11getTreeCostENS_15InstructionCostENS_8ArrayRefIPNS_5ValueEEES2_PNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(5088) %3, i64 %.fca.0.extract19, i32 %.fca.1.extract20, ptr poison, i64 0, ptr noundef nonnull byval(%"class.llvm::InstructionCost") align 8 %25, ptr noundef null) ; 2 uses
  %.fca.0.extract = extractvalue { i64, i32 } %i.mh, 0 ; 4 uses
  %.fca.1.extract = extractvalue { i64, i32 } %i.mh, 1 ; 6 uses
  store i64 %.fca.0.extract, ptr %24, align 8
  store i32 %.fca.1.extract, ptr %.sroa.215.0..sroa_idx, align 8
  %i.mi = load i32, ptr %i.ib, align 8, !tbaa !844 ; 2 uses
  %i.mj = icmp slt i32 %.fca.1.extract, %i.mi
  br i1 %i.mj, label %_ZNK4llvm15InstructionCostltERKS0_.exit.thread.i, label %bb.am

bb.am:                                            ; preds = %_ZN4llvm6detail12DenseSetImplIPNS_5ValueENS_13SmallDenseMapIS3_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit
  %i.mk = icmp slt i32 %i.mi, %.fca.1.extract
  br i1 %i.mk, label %_ZSt3minIN4llvm15InstructionCostEERKT_S4_S4_.exit, label %_ZNK4llvm15InstructionCostltERKS0_.exit.i

_ZNK4llvm15InstructionCostltERKS0_.exit.i:        ; preds = %bb.am
  %i.ml = load i64, ptr %21, align 8, !tbaa !581
  %i.mm = icmp slt i64 %.fca.0.extract, %i.ml
  %cond.fr.i = freeze i1 %i.mm
  br i1 %cond.fr.i, label %_ZNK4llvm15InstructionCostltERKS0_.exit.thread.i, label %_ZSt3minIN4llvm15InstructionCostEERKT_S4_S4_.exit

_ZNK4llvm15InstructionCostltERKS0_.exit.thread.i: ; preds = %_ZNK4llvm15InstructionCostltERKS0_.exit.i, %_ZN4llvm6detail12DenseSetImplIPNS_5ValueENS_13SmallDenseMapIS3_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit
  br label %_ZSt3minIN4llvm15InstructionCostEERKT_S4_S4_.exit

_ZSt3minIN4llvm15InstructionCostEERKT_S4_S4_.exit: ; preds = %bb.am, %_ZNK4llvm15InstructionCostltERKS0_.exit.i, %_ZNK4llvm15InstructionCostltERKS0_.exit.thread.i
  %i.mn = phi ptr [ %24, %_ZNK4llvm15InstructionCostltERKS0_.exit.thread.i ], [ %21, %_ZNK4llvm15InstructionCostltERKS0_.exit.i ], [ %21, %bb.am ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %21, ptr noundef nonnull align 8 dereferenceable(12) %i.mn, i64 12, i1 false), !tbaa.struct !1545
  %i.mo = icmp slt i32 %.fca.1.extract, 0
  br i1 %i.mo, label %_ZNK4llvm15InstructionCostltEl.exit.thread, label %bb.an

bb.an:                                            ; preds = %_ZSt3minIN4llvm15InstructionCostEERKT_S4_S4_.exit
  %i.mp = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL16SLPCostThreshold, i64 120), align 8, !tbaa !840
  %i.mq = sub nsw i32 0, %i.mp
  %i.mr = sext i32 %i.mq to i64
  %i.ms = shl nsw i64 %i.mr, 2
  %.not.i214 = icmp eq i32 %.fca.1.extract, 0
  %i.mt = icmp slt i64 %.fca.0.extract, %i.ms
  %or.cond411 = select i1 %.not.i214, i1 %i.mt, i1 false
  br i1 %or.cond411, label %_ZNK4llvm15InstructionCostltEl.exit.thread, label %_ZNK4llvm15InstructionCostltEl.exit.thread392

_ZNK4llvm15InstructionCostltEl.exit.thread:       ; preds = %bb.an, %_ZSt3minIN4llvm15InstructionCostEERKT_S4_S4_.exit
  %i.mu = load ptr, ptr %i.ip, align 8, !tbaa !1850
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #31
  %i.mv = load ptr, ptr %22, align 8, !tbaa !359
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !579
  call void @_ZN4llvm18OptimizationRemarkC1EPKcNS_9StringRefEPKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(432) %26, ptr noundef nonnull @.str.99, ptr nonnull @.str.105, i64 14, ptr noundef %i.mw) #31
  call void @_ZN4llvm30DiagnosticInfoOptimizationBase6insertENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(432) %26, ptr nonnull @.str.106, i64 25) #31
  call void @_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentC1ENS_9StringRefENS_15InstructionCostE(ptr noundef nonnull align 8 dereferenceable(80) %27, ptr nonnull @.str.102, i64 4, i64 %.fca.0.extract, i32 %.fca.1.extract) #31
  %i.mx = call noundef nonnull align 8 dereferenceable(432) ptr @_ZN4llvmlsINS_18OptimizationRemarkEEEDcOT_NSt9enable_ifIXsr3stdE12is_base_of_vINS_30DiagnosticInfoOptimizationBaseENSt16remove_referenceIS2_E4typeEEENS5_8ArgumentEE4typeE(ptr noundef nonnull align 8 dereferenceable(432) %26, ptr nofree noundef nonnull align 8 dereferenceable(80) %27) ; 2 uses
  call void @_ZN4llvm30DiagnosticInfoOptimizationBase6insertENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(432) %i.mx, ptr nonnull @.str.103, i64 20) #31
  %i.my = load i32, ptr %i.iq, align 8, !tbaa !371
  call void @_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentC1ENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(80) %28, ptr nonnull @.str.104, i64 8, i32 noundef %i.my) #31
end_hunk_0
