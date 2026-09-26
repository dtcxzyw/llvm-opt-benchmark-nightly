Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ThreadSafety?download=true
inline.NumInlined: 6756
inline.NumDeleted: 3385
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN12_GLOBAL__N_112BuildLockset10handleCallEPKN5clang4ExprEPKNS1_9NamedDeclEPNS1_12threadSafety3til5SExprENS1_14SourceLocationE:bb.a
_ZNK5clang19AttributeCommonInfo29getAttributeSpellingListIndexEv.exit2.i326: ; preds = %bb.bu, %bb.bt
  %i.kl = phi i32 [ %i.kj, %bb.bt ], [ %i.kk, %bb.bu ]
  %i.km = icmp eq i32 %i.kl, 5
  br i1 %i.km, label %_ZNK5clang22RequiresCapabilityAttr8isSharedEv.exit, label %bb.bv

bb.bv:                                            ; preds = %_ZNK5clang19AttributeCommonInfo29getAttributeSpellingListIndexEv.exit2.i326
  %i.kn = load i32, ptr %i.jw, align 8            ; 2 uses
  %i.ko = and i32 %i.kn, 15728640
  %.not.i3.i327 = icmp eq i32 %i.ko, 15728640
  br i1 %.not.i3.i327, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.kp = lshr i32 %i.kn, 20
  %i.kq = and i32 %i.kp, 15
  br label %_ZNK5clang19AttributeCommonInfo29getAttributeSpellingListIndexEv.exit4.i328

bb.bx:                                            ; preds = %bb.bv
  %i.kr = call noundef i32 @_ZNK5clang19AttributeCommonInfo35calculateAttributeSpellingListIndexEv(ptr noundef nonnull align 8 dereferenceable(72) %i.eo) #22
  br label %_ZNK5clang19AttributeCommonInfo29getAttributeSpellingListIndexEv.exit4.i328

_ZNK5clang19AttributeCommonInfo29getAttributeSpellingListIndexEv.exit4.i328: ; preds = %bb.bx, %bb.bw
  %i.ks = phi i32 [ %i.kq, %bb.bw ], [ %i.kr, %bb.bx ]
  %i.kt = icmp eq i32 %i.ks, 6
  br i1 %i.kt, label %_ZNK5clang22RequiresCapabilityAttr8isSharedEv.exit, label %bb.by

bb.by:                                            ; preds = %_ZNK5clang19AttributeCommonInfo29getAttributeSpellingListIndexEv.exit4.i328
  %i.ku = load i32, ptr %i.jw, align 8            ; 2 uses
  %i.kv = and i32 %i.ku, 15728640
  %.not.i5.i = icmp eq i32 %i.kv, 15728640
  br i1 %.not.i5.i, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.kw = lshr i32 %i.ku, 20
  %i.kx = and i32 %i.kw, 15
  br label %_ZNK5clang19AttributeCommonInfo29getAttributeSpellingListIndexEv.exit6.i

bb.ca:                                            ; preds = %bb.by
  %i.ky = call noundef i32 @_ZNK5clang19AttributeCommonInfo35calculateAttributeSpellingListIndexEv(ptr noundef nonnull align 8 dereferenceable(72) %i.eo) #22
  br label %_ZNK5clang19AttributeCommonInfo29getAttributeSpellingListIndexEv.exit6.i

_ZNK5clang19AttributeCommonInfo29getAttributeSpellingListIndexEv.exit6.i: ; preds = %bb.ca, %bb.bz
  %i.kz = phi i32 [ %i.kx, %bb.bz ], [ %i.ky, %bb.ca ]
  %i.la = icmp ne i32 %i.kz, 7
  %i.lb = zext i1 %i.la to i32
  br label %_ZNK5clang22RequiresCapabilityAttr8isSharedEv.exit

_ZNK5clang22RequiresCapabilityAttr8isSharedEv.exit: ; preds = %_ZNK5clang19AttributeCommonInfo29getAttributeSpellingListIndexEv.exit.i324, %_ZNK5clang19AttributeCommonInfo29getAttributeSpellingListIndexEv.exit2.i326, %_ZNK5clang19AttributeCommonInfo29getAttributeSpellingListIndexEv.exit4.i328, %_ZNK5clang19AttributeCommonInfo29getAttributeSpellingListIndexEv.exit6.i
  %not.289 = phi i32 [ 0, %_ZNK5clang19AttributeCommonInfo29getAttributeSpellingListIndexEv.exit4.i328 ], [ 0, %_ZNK5clang19AttributeCommonInfo29getAttributeSpellingListIndexEv.exit2.i326 ], [ 0, %_ZNK5clang19AttributeCommonInfo29getAttributeSpellingListIndexEv.exit.i324 ], [ %i.lb, %_ZNK5clang19AttributeCommonInfo29getAttributeSpellingListIndexEv.exit6.i ]
  call fastcc void @_ZN12_GLOBAL__N_120ThreadSafetyAnalyzer18warnIfMutexNotHeldERKNS_7FactSetEPKN5clang9NamedDeclEPKNS4_4ExprENS4_12threadSafety10AccessKindEPS8_NSB_22ProtectedOperationKindEPNSB_3til5SExprENS4_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(656) %i.jy, ptr noundef nonnull align 8 dereferenceable(32) %i.ec, ptr noundef nonnull %2, ptr noundef %1, i32 noundef %not.289, ptr noundef %i.jx, i32 noundef 2, ptr noundef %.2, i32 %.sroa.0630.0)
  br i1 %i.ek, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %_ZNK5clang22RequiresCapabilityAttr8isSharedEv.exit
  %i.lc = load ptr, ptr %0, align 8, !tbaa !362
  call fastcc void @_ZN12_GLOBAL__N_120ThreadSafetyAnalyzer11getMutexIDsIKN5clang22RequiresCapabilityAttrEEEvRNS_10CapExprSetEPT_PKNS2_4ExprEPKNS2_9NamedDeclEPNS2_12threadSafety3til5SExprE(ptr noundef nonnull align 8 dereferenceable(656) %i.lc, ptr noundef nonnull align 8 dereferenceable(112) %21, ptr noundef nonnull %i.eo, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %.2)
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %_ZNK5clang22RequiresCapabilityAttr8isSharedEv.exit
  %i.ld = getelementptr inbounds nuw i8, ptr %.0258680, i64 8 ; 2 uses
  %.not288 = icmp eq ptr %i.ld, %i.jv
  br i1 %.not288, label %.loopexit665, label %bb.bp

bb.cd:                                            ; preds = %bb.y
  %i.le = getelementptr inbounds nuw i8, ptr %i.eo, i64 48
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !395 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.eo, i64 40
  %i.lh = load i32, ptr %i.lg, align 8, !tbaa !394 ; 2 uses
  %i.li = zext i32 %i.lh to i64
  %.idx = shl nuw nsw i64 %i.li, 3
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lf, i64 %.idx
  %.not287677 = icmp eq i32 %i.lh, 0
  br i1 %.not287677, label %.loopexit665, label %.lr.ph

.lr.ph:                                           ; preds = %bb.cd, %bb.ck
  %.0259678 = phi ptr [ %i.mr, %bb.ck ], [ %i.lf, %bb.cd ] ; 2 uses
  %i.lk = load ptr, ptr %.0259678, align 8, !tbaa !379
  %i.ll = load ptr, ptr %0, align 8, !tbaa !362   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 88
  call void @_ZN5clang12threadSafety12SExprBuilder17translateAttrExprEPKNS_4ExprEPKNS_9NamedDeclES4_PNS0_3til5SExprE(ptr dead_on_unwind nonnull writable sret(%"class.clang::threadSafety::CapabilityExpr") align 8 %10, ptr noundef nonnull align 8 dereferenceable(272) %i.lm, ptr noundef %i.lk, ptr noundef nonnull %2, ptr noundef %1, ptr noundef %.2) #22
  %.0.copyload.i.i.i.i.i.i332 = load i64, ptr %10, align 8
  %i.ln = and i64 %.0.copyload.i.i.i.i.i.i332, -8 ; 2 uses
  %.not.i.i.i.i333 = icmp eq i64 %i.ln, 0
  br i1 %.not.i.i.i.i333, label %_ZN12_GLOBAL__N_120ThreadSafetyAnalyzer15warnIfMutexHeldERKNS_7FactSetEPKN5clang9NamedDeclEPKNS4_4ExprEPS8_PNS4_12threadSafety3til5SExprENS4_14SourceLocationE.exit, label %_ZNK5clang12threadSafety14CapabilityExpr9isInvalidEv.exit.i334

_ZNK5clang12threadSafety14CapabilityExpr9isInvalidEv.exit.i334: ; preds = %.lr.ph
  %i.lo = inttoptr i64 %i.ln to ptr
  %i.lp = load i8, ptr %i.lo, align 8, !tbaa !50
  %i.lq = icmp eq i8 %i.lp, 1
  br i1 %i.lq, label %bb.ce, label %bb.ch

bb.ce:                                            ; preds = %_ZNK5clang12threadSafety14CapabilityExpr9isInvalidEv.exit.i334
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ll, i64 360
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !216, !nonnull !217, !align !218 ; 2 uses
  br i1 %.not, label %bb.cf, label %_ZN12_GLOBAL__N_120ThreadSafetyAnalyzer15warnIfMutexHeldERKNS_7FactSetEPKN5clang9NamedDeclEPKNS4_4ExprEPS8_PNS4_12threadSafety3til5SExprENS4_14SourceLocationE.exit

bb.cf:                                            ; preds = %bb.ce
  %i.lt = call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #26 ; 2 uses
  %.not3.i.i338 = icmp eq i32 %i.lt, 0
  br i1 %.not3.i.i338, label %_ZN12_GLOBAL__N_120ThreadSafetyAnalyzer15warnIfMutexHeldERKNS_7FactSetEPKN5clang9NamedDeclEPKNS4_4ExprEPS8_PNS4_12threadSafety3til5SExprENS4_14SourceLocationE.exit, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.lu = load ptr, ptr %i.ls, align 8, !tbaa !220
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 16
  %i.lw = load ptr, ptr %i.lv, align 8
  call void %i.lw(ptr noundef nonnull align 8 dereferenceable(9) %i.ls, i32 %i.lt) #22, !inline_history !892
  br label %_ZN12_GLOBAL__N_120ThreadSafetyAnalyzer15warnIfMutexHeldERKNS_7FactSetEPKN5clang9NamedDeclEPKNS4_4ExprEPS8_PNS4_12threadSafety3til5SExprENS4_14SourceLocationE.exit

bb.ch:                                            ; preds = %_ZNK5clang12threadSafety14CapabilityExpr9isInvalidEv.exit.i334
  %i.lx = getelementptr inbounds nuw i8, ptr %i.ll, i64 592
  %i.ly = call fastcc noundef ptr @_ZNK12_GLOBAL__N_17FactSet8findLockERNS_11FactManagerERKN5clang12threadSafety14CapabilityExprE(ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ec, ptr noundef nonnull align 8 dereferenceable(32) %i.lx, ptr noundef nonnull align 8 dereferenceable(24) %10)
  %.not.i335 = icmp eq ptr %i.ly, null
  br i1 %.not.i335, label %_ZN12_GLOBAL__N_120ThreadSafetyAnalyzer15warnIfMutexHeldERKNS_7FactSetEPKN5clang9NamedDeclEPKNS4_4ExprEPS8_PNS4_12threadSafety3til5SExprENS4_14SourceLocationE.exit, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ll, i64 360
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !216, !nonnull !217, !align !218 ; 2 uses
  %.sroa.0.0.copyload.i16.i = load ptr, ptr %i.ed, align 8, !tbaa !337
  %.sroa.2.0.copyload.i18.i = load i64, ptr %.sroa.2.0..sroa_idx.i17.i, align 8, !tbaa !232
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  call void @_ZNK5clang15DeclarationName11getAsStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %i.ee) #22
  %i.mb = load ptr, ptr %11, align 8, !tbaa !413
  %i.mc = load i64, ptr %i.ef, align 8, !tbaa !414
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  call void @_ZNK5clang12threadSafety14CapabilityExpr8toStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(24) %10)
  %i.md = load ptr, ptr %13, align 8, !tbaa !413
  store ptr %i.md, ptr %12, align 8, !tbaa !415
  %i.me = load i64, ptr %i.eh, align 8, !tbaa !414
  store i64 %i.me, ptr %i.eg, align 8, !tbaa !416
  %i.mf = load ptr, ptr %i.ma, align 8, !tbaa !220
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 104
  %i.mh = load ptr, ptr %i.mg, align 8
  call void %i.mh(ptr noundef nonnull align 8 dereferenceable(9) %i.ma, ptr %.sroa.0.0.copyload.i16.i, i64 %.sroa.2.0.copyload.i18.i, ptr %i.mb, i64 %i.mc, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %12, i32 %.sroa.0630.0) #22, !inline_history !893
  %i.mi = load ptr, ptr %13, align 8, !tbaa !413  ; 2 uses
  %i.mj = icmp eq ptr %i.mi, %i.ei
  br i1 %i.mj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ci
  %i.mk = load i64, ptr %i.ei, align 8, !tbaa !156
  %i.ml = add i64 %i.mk, 1
  call void @_ZdlPvm(ptr noundef %i.mi, i64 noundef %i.ml) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %i.mm = load ptr, ptr %11, align 8, !tbaa !413  ; 2 uses
  %i.mn = icmp eq ptr %i.mm, %i.ej
  br i1 %i.mn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.mo = load i64, ptr %i.ej, align 8, !tbaa !156
  %i.mp = add i64 %i.mo, 1
  call void @_ZdlPvm(ptr noundef %i.mm, i64 noundef %i.mp) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %_ZN12_GLOBAL__N_120ThreadSafetyAnalyzer15warnIfMutexHeldERKNS_7FactSetEPKN5clang9NamedDeclEPKNS4_4ExprEPS8_PNS4_12threadSafety3til5SExprENS4_14SourceLocationE.exit

_ZN12_GLOBAL__N_120ThreadSafetyAnalyzer15warnIfMutexHeldERKNS_7FactSetEPKN5clang9NamedDeclEPKNS4_4ExprEPS8_PNS4_12threadSafety3til5SExprENS4_14SourceLocationE.exit: ; preds = %.lr.ph, %bb.ce, %bb.cf, %bb.cg, %bb.ch, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  br i1 %i.ek, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %_ZN12_GLOBAL__N_120ThreadSafetyAnalyzer15warnIfMutexHeldERKNS_7FactSetEPKN5clang9NamedDeclEPKNS4_4ExprEPS8_PNS4_12threadSafety3til5SExprENS4_14SourceLocationE.exit
  %i.mq = load ptr, ptr %0, align 8, !tbaa !362
  call fastcc void @_ZN12_GLOBAL__N_120ThreadSafetyAnalyzer11getMutexIDsIKN5clang17LocksExcludedAttrEEEvRNS_10CapExprSetEPT_PKNS2_4ExprEPKNS2_9NamedDeclEPNS2_12threadSafety3til5SExprE(ptr noundef nonnull align 8 dereferenceable(656) %i.mq, ptr noundef nonnull align 8 dereferenceable(112) %21, ptr noundef nonnull %i.eo, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %.2)
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %_ZN12_GLOBAL__N_120ThreadSafetyAnalyzer15warnIfMutexHeldERKNS_7FactSetEPKN5clang9NamedDeclEPKNS4_4ExprEPS8_PNS4_12threadSafety3til5SExprENS4_14SourceLocationE.exit
  %i.mr = getelementptr inbounds nuw i8, ptr %.0259678, i64 8 ; 2 uses
  %.not287 = icmp eq ptr %i.mr, %i.lj
  br i1 %.not287, label %.loopexit665, label %.lr.ph

.loopexit665:                                     ; preds = %bb.ck, %bb.cc, %bb.cd, %bb.bo, %bb.bg, %bb.bn, %_ZNK5clang21ReleaseCapabilityAttr8isSharedEv.exit.thread, %bb.y, %_ZN4llvm11SmallVectorIN5clang12threadSafety14CapabilityExprELj4EED2Ev.exit, %bb.ai
  %i.ms = getelementptr inbounds nuw i8, ptr %.0246686, i64 8 ; 2 uses
  %.not269 = icmp eq ptr %i.ms, %i.eb
  br i1 %.not269, label %._crit_edge688, label %bb.y

bb.cl:                                            ; preds = %._crit_edge688
  %i.mt = load i16, ptr %1, align 8
  %i.mu = and i16 %i.mt, 511                      ; 3 uses
  %i.mv = add nsw i16 %i.mu, -96
  %spec.select.i.i.i.i.i.i.i.i340 = icmp ult i16 %i.mv, -5
  br i1 %spec.select.i.i.i.i.i.i.i.i340, label %_ZNSt8optionalIN4llvm14iterator_rangeIN5clang4Stmt12CastIteratorINS2_4ExprEKPKS5_KPKS3_EEEEEaSISD_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameISE_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESH_ISt6__and_IJSt9is_scalarISD_ESI_ISD_NSt5decayISL_E4typeEEEEESt16is_constructibleISD_JSL_EESt13is_assignableIRSD_SL_EEERSE_E4typeEOSL_.exit348, label %_ZNSt8optionalIN4llvm14iterator_rangeIN5clang4Stmt12CastIteratorINS2_4ExprEKPKS5_KPKS3_EEEEEaSISD_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameISE_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESH_ISt6__and_IJSt9is_scalarISD_ESI_ISD_NSt5decayISL_E4typeEEEEESt16is_constructibleISD_JSL_EESt13is_assignableIRSD_SL_EEERSE_E4typeEOSL_.exit

_ZNSt8optionalIN4llvm14iterator_rangeIN5clang4Stmt12CastIteratorINS2_4ExprEKPKS5_KPKS3_EEEEEaSISD_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameISE_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESH_ISt6__and_IJSt9is_scalarISD_ESI_ISD_NSt5decayISL_E4typeEEEEESt16is_constructibleISD_JSL_EESt13is_assignableIRSD_SL_EEERSE_E4typeEOSL_.exit: ; preds = %bb.cl
  %i.mw = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.mx = load i32, ptr %1, align 8
  %i.my = lshr i32 %i.mx, 19
  %i.mz = and i32 %i.my, 1
  %i.na = zext nneg i32 %i.mz to i64
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %i.mw, i64 %i.na
  br label %.sink.split

_ZNSt8optionalIN4llvm14iterator_rangeIN5clang4Stmt12CastIteratorINS2_4ExprEKPKS5_KPKS3_EEEEEaSISD_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameISE_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESH_ISt6__and_IJSt9is_scalarISD_ESI_ISD_NSt5decayISL_E4typeEEEEESt16is_constructibleISD_JSL_EESt13is_assignableIRSD_SL_EEERSE_E4typeEOSL_.exit348: ; preds = %bb.cl
  %i.nc = add nsw i16 %i.mu, -117
  %spec.select.i.i.i.i.i.i.i.i343 = icmp ult i16 %i.nc, 2
  %spec.select.i.i344 = select i1 %spec.select.i.i.i.i.i.i.i.i343, ptr %1, ptr null ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %spec.select.i.i344) ]
  %.not.i.i.i.i345 = icmp eq i16 %i.mu, 118
  %spec.select.v.i.i.i.i = select i1 %.not.i.i.i.i345, i64 48, i64 40
  %i.nd = getelementptr inbounds nuw i8, ptr %spec.select.i.i344, i64 %spec.select.v.i.i.i.i
  br label %.sink.split

.sink.split:                                      ; preds = %_ZNSt8optionalIN4llvm14iterator_rangeIN5clang4Stmt12CastIteratorINS2_4ExprEKPKS5_KPKS3_EEEEEaSISD_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameISE_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESH_ISt6__and_IJSt9is_scalarISD_ESI_ISD_NSt5decayISL_E4typeEEEEESt16is_constructibleISD_JSL_EESt13is_assignableIRSD_SL_EEERSE_E4typeEOSL_.exit348, %_ZNSt8optionalIN4llvm14iterator_rangeIN5clang4Stmt12CastIteratorINS2_4ExprEKPKS5_KPKS3_EEEEEaSISD_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameISE_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESH_ISt6__and_IJSt9is_scalarISD_ESI_ISD_NSt5decayISL_E4typeEEEEESt16is_constructibleISD_JSL_EESt13is_assignableIRSD_SL_EEERSE_E4typeEOSL_.exit
  %.sink887 = phi i64 [ 16, %_ZNSt8optionalIN4llvm14iterator_rangeIN5clang4Stmt12CastIteratorINS2_4ExprEKPKS5_KPKS3_EEEEEaSISD_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameISE_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESH_ISt6__and_IJSt9is_scalarISD_ESI_ISD_NSt5decayISL_E4typeEEEEESt16is_constructibleISD_JSL_EESt13is_assignableIRSD_SL_EEERSE_E4typeEOSL_.exit ], [ 32, %_ZNSt8optionalIN4llvm14iterator_rangeIN5clang4Stmt12CastIteratorINS2_4ExprEKPKS5_KPKS3_EEEEEaSISD_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameISE_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESH_ISt6__and_IJSt9is_scalarISD_ESI_ISD_NSt5decayISL_E4typeEEEEESt16is_constructibleISD_JSL_EESt13is_assignableIRSD_SL_EEERSE_E4typeEOSL_.exit348 ]
  %.sink = phi ptr [ %i.nb, %_ZNSt8optionalIN4llvm14iterator_rangeIN5clang4Stmt12CastIteratorINS2_4ExprEKPKS5_KPKS3_EEEEEaSISD_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameISE_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESH_ISt6__and_IJSt9is_scalarISD_ESI_ISD_NSt5decayISL_E4typeEEEEESt16is_constructibleISD_JSL_EESt13is_assignableIRSD_SL_EEERSE_E4typeEOSL_.exit ], [ %i.nd, %_ZNSt8optionalIN4llvm14iterator_rangeIN5clang4Stmt12CastIteratorINS2_4ExprEKPKS5_KPKS3_EEEEEaSISD_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameISE_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESH_ISt6__and_IJSt9is_scalarISD_ESI_ISD_NSt5decayISL_E4typeEEEEESt16is_constructibleISD_JSL_EESt13is_assignableIRSD_SL_EEERSE_E4typeEOSL_.exit348 ] ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %1, i64 %.sink887
  %i.nf = load i32, ptr %i.ne, align 8, !tbaa !255
  %i.ng = zext i32 %i.nf to i64
  %i.nh = getelementptr inbounds nuw [8 x i8], ptr %.sink, i64 %i.ng
  br label %bb.cm

bb.cm:                                            ; preds = %.sink.split, %._crit_edge688
  %.sroa.5.0 = phi ptr [ undef, %._crit_edge688 ], [ %i.nh, %.sink.split ] ; 2 uses
  %.sroa.0.0 = phi ptr [ undef, %._crit_edge688 ], [ %.sink, %.sink.split ] ; 2 uses
  %i.ni = load i32, ptr %i.dp, align 4
  %i.nj = and i32 %i.ni, 127
  %i.nk = add nsw i32 %i.nj, -35
  %i.nl = icmp ult i32 %i.nk, 6
  %.not272658 = icmp ne ptr %2, null
  %.not272 = and i1 %.not272658, %i.nl
  %or.cond652 = and i1 %.not, %.not272
  br i1 %or.cond652, label %bb.cn, label %.loopexit663

bb.cn:                                            ; preds = %bb.cm
  %i.nm = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !322 ; 2 uses
  %i.no = call noundef i32 @_ZNK5clang12FunctionDecl12getNumParamsEv(ptr noundef nonnull align 8 dereferenceable(168) %2) #22 ; 2 uses
  %i.np = zext i32 %i.no to i64
  %.idx768 = shl nuw nsw i64 %i.np, 3
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nn, i64 %.idx768
  %i.nr = icmp ne i32 %i.no, 0
  %i.ns = icmp ne ptr %.sroa.0.0, %.sroa.5.0
  %.not3.i708 = select i1 %i.nr, i1 %i.ns, i1 false
  br i1 %.not3.i708, label %.lr.ph712, label %.loopexit663

.lr.ph712:                                        ; preds = %bb.cn
  %i.nt = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %25, i64 12
  %i.nw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.2.0..sroa_idx.i17.i399 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ny = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.nz = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.oa = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ob = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.oc = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 3 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 3 uses
  %i.of = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 5 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %30, i64 12 ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 3 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 3 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %29, i64 12 ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %29, i64 112 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i430 = getelementptr inbounds nuw i8, ptr %31, i64 24 ; 3 uses
  %i.om = getelementptr inbounds nuw i8, ptr %31, i64 32 ; 4 uses
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %31, i64 56 ; 3 uses
  %i.on = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.op = getelementptr inbounds nuw i8, ptr %31, i64 8
  %.sroa.2.0..sroa_idx.i433 = getelementptr inbounds nuw i8, ptr %31, i64 16
  %i.oq = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.or = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.os = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.ot = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.ow = getelementptr inbounds nuw i8, ptr %31, i64 40 ; 2 uses
  %.sroa.2.0..sroa_idx.i447 = getelementptr inbounds nuw i8, ptr %31, i64 48 ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.oy = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.oz = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.pa = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.pd = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.pe = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.pf = getelementptr inbounds nuw i8, ptr %43, i64 8
  %i.pg = getelementptr inbounds nuw i8, ptr %44, i64 8
  %i.ph = getelementptr inbounds nuw i8, ptr %45, i64 8
  %i.pi = getelementptr inbounds nuw i8, ptr %45, i64 16 ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 2 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.pm = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.pn = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  br label %bb.co

bb.co:                                            ; preds = %.lr.ph712, %_ZN4llvm11SmallVectorIN5clang12threadSafety14CapabilityExprELj4EED2Ev.exit480
  %.sroa.0533.0710 = phi ptr [ %.sroa.0.0, %.lr.ph712 ], [ %i.adj, %_ZN4llvm11SmallVectorIN5clang12threadSafety14CapabilityExprELj4EED2Ev.exit480 ] ; 2 uses
  %.sroa.7536.0709 = phi ptr [ %i.nn, %.lr.ph712 ], [ %i.adi, %_ZN4llvm11SmallVectorIN5clang12threadSafety14CapabilityExprELj4EED2Ev.exit480 ] ; 2 uses
  %i.po = load ptr, ptr %.sroa.0533.0710, align 8, !tbaa !370, !noalias !944 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #22
  store ptr %i.nt, ptr %25, align 8, !tbaa !40
  store i32 0, ptr %i.nu, align 8, !tbaa !41
  store i32 4, ptr %i.nv, align 4, !tbaa !42
  %i.pp = load ptr, ptr %.sroa.7536.0709, align 8, !tbaa !324 ; 3 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 28 ; 2 uses
  %i.pr = load i32, ptr %i.pq, align 4
  %i.ps = and i32 %i.pr, 256
  %.not.i.i353 = icmp eq i32 %i.ps, 0
  br i1 %.not.i.i353, label %._crit_edge702, label %_ZNK5clang4Decl10attr_beginEv.exit.i354

_ZNK5clang4Decl10attr_beginEv.exit.i354:          ; preds = %bb.co
  %i.pt = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33) %i.pp) #22
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !40 ; 2 uses
  %.pre.i355 = load i32, ptr %i.pq, align 4
  %.pre2.i356 = and i32 %.pre.i355, 256
  %i.pv = icmp eq i32 %.pre2.i356, 0
  br i1 %i.pv, label %_ZNK5clang4Decl5attrsEv.exit359, label %bb.cp

bb.cp:                                            ; preds = %_ZNK5clang4Decl10attr_beginEv.exit.i354
  %i.pw = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33) %i.pp) #22 ; 2 uses
  %i.px = load ptr, ptr %i.pw, align 8, !tbaa !40
  %i.py = getelementptr inbounds nuw i8, ptr %i.pw, i64 8
  %i.pz = load i32, ptr %i.py, align 8, !tbaa !41
  %i.qa = zext i32 %i.pz to i64
  %i.qb = getelementptr inbounds nuw [8 x i8], ptr %i.px, i64 %i.qa
  br label %_ZNK5clang4Decl5attrsEv.exit359

_ZNK5clang4Decl5attrsEv.exit359:                  ; preds = %_ZNK5clang4Decl10attr_beginEv.exit.i354, %bb.cp
  %i.qc = phi ptr [ %i.qb, %bb.cp ], [ null, %_ZNK5clang4Decl10attr_beginEv.exit.i354 ] ; 2 uses
  %.not283699 = icmp eq ptr %i.pu, %i.qc
  br i1 %.not283699, label %._crit_edge702, label %.lr.ph701

._crit_edge702:                                   ; preds = %bb.ek, %bb.co, %_ZNK5clang4Decl5attrsEv.exit359
  %i.qd = load i32, ptr %i.nu, align 8, !tbaa !41
  %.not.i360 = icmp eq i32 %i.qd, 0
  br i1 %.not.i360, label %bb.fj, label %bb.el

.lr.ph701:                                        ; preds = %_ZNK5clang4Decl5attrsEv.exit359, %bb.ek
  %.0262700 = phi ptr [ %i.wa, %bb.ek ], [ %i.pu, %_ZNK5clang4Decl5attrsEv.exit359 ] ; 2 uses
  %i.qe = load ptr, ptr %.0262700, align 8, !tbaa !215 ; 27 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 36
  %i.qg = load i16, ptr %i.qf, align 4
  switch i16 %i.qg, label %bb.ek [
    i16 129, label %bb.cq
    i16 366, label %bb.da
    i16 368, label %bb.ds
    i16 260, label %bb.ef
  ]

bb.cq:                                            ; preds = %.lr.ph701
  %i.qh = load ptr, ptr %0, align 8, !tbaa !362
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qe, i64 32 ; 3 uses
  %i.qj = load i32, ptr %i.qi, align 8            ; 2 uses
  %i.qk = and i32 %i.qj, 15728640
  %.not.i.i361 = icmp eq i32 %i.qk, 15728640
  br i1 %.not.i.i361, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.ql = lshr i32 %i.qj, 20
  %i.qm = and i32 %i.ql, 15
  br label %_ZNK5clang19AttributeCommonInfo29getAttributeSpellingListIndexEv.exit.i362

bb.cs:                                            ; preds = %bb.cq
  %i.qn = call noundef i32 @_ZNK5clang19AttributeCommonInfo35calculateAttributeSpellingListIndexEv(ptr noundef nonnull align 8 dereferenceable(72) %i.qe) #22
  br label %_ZNK5clang19AttributeCommonInfo29getAttributeSpellingListIndexEv.exit.i362

_ZNK5clang19AttributeCommonInfo29getAttributeSpellingListIndexEv.exit.i362: ; preds = %bb.cs, %bb.cr
  %i.qo = phi i32 [ %i.qm, %bb.cr ], [ %i.qn, %bb.cs ]
  %i.qp = icmp eq i32 %i.qo, 2
  br i1 %i.qp, label %_ZNK5clang21AcquireCapabilityAttr8isSharedEv.exit367.thread, label %bb.ct

bb.ct:                                            ; preds = %_ZNK5clang19AttributeCommonInfo29getAttributeSpellingListIndexEv.exit.i362
  %i.qq = load i32, ptr %i.qi, align 8            ; 2 uses
  %i.qr = and i32 %i.qq, 15728640
  %.not.i1.i363 = icmp eq i32 %i.qr, 15728640
  br i1 %.not.i1.i363, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.qs = lshr i32 %i.qq, 20
  %i.qt = and i32 %i.qs, 15
  br label %_ZNK5clang19AttributeCommonInfo29getAttributeSpellingListIndexEv.exit2.i364

bb.cv:                                            ; preds = %bb.ct
  %i.qu = call noundef i32 @_ZNK5clang19AttributeCommonInfo35calculateAttributeSpellingListIndexEv(ptr noundef nonnull align 8 dereferenceable(72) %i.qe) #22
  br label %_ZNK5clang19AttributeCommonInfo29getAttributeSpellingListIndexEv.exit2.i364

_ZNK5clang19AttributeCommonInfo29getAttributeSpellingListIndexEv.exit2.i364: ; preds = %bb.cv, %bb.cu
  %i.qv = phi i32 [ %i.qt, %bb.cu ], [ %i.qu, %bb.cv ]
  %i.qw = icmp eq i32 %i.qv, 3
  br i1 %i.qw, label %_ZNK5clang21AcquireCapabilityAttr8isSharedEv.exit367.thread, label %bb.cw

bb.cw:                                            ; preds = %_ZNK5clang19AttributeCommonInfo29getAttributeSpellingListIndexEv.exit2.i364
  %i.qx = load i32, ptr %i.qi, align 8
  %.fr661 = freeze i32 %i.qx                      ; 2 uses
  %i.qy = and i32 %.fr661, 15728640
  %.not.i3.i365 = icmp eq i32 %i.qy, 15728640
  br i1 %.not.i3.i365, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.qz = lshr i32 %.fr661, 20
  %i.ra = and i32 %i.qz, 15
  br label %_ZNK5clang21AcquireCapabilityAttr8isSharedEv.exit367

bb.cy:                                            ; preds = %bb.cw
  %i.rb = call noundef i32 @_ZNK5clang19AttributeCommonInfo35calculateAttributeSpellingListIndexEv(ptr noundef nonnull align 8 dereferenceable(72) %i.qe) #22
  br label %_ZNK5clang21AcquireCapabilityAttr8isSharedEv.exit367

_ZNK5clang21AcquireCapabilityAttr8isSharedEv.exit367: ; preds = %bb.cx, %bb.cy
  %.fr659 = phi i32 [ %i.ra, %bb.cx ], [ %i.rb, %bb.cy ]
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_112BuildLockset13VisitCallExprEPKN5clang8CallExprE:bb.a
bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 28
  %i.r = load i32, ptr %i.q, align 4
  %i.s = and i32 %i.r, 127
  %i.t = add nsw i32 %i.s, -35
  %i.u = icmp ult i32 %i.t, 6
  %spec.select.i.i.i.i = select i1 %i.u, ptr %i.p, ptr null
  br label %_ZNK5clang8CallExpr15getDirectCalleeEv.exit

_ZNK5clang8CallExpr15getDirectCalleeEv.exit:      ; preds = %bb.f, %bb.g
  %.0.i.i.i = phi ptr [ %spec.select.i.i.i.i, %bb.g ], [ null, %bb.f ]
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.w = load i32, ptr %1, align 8
  %i.x = lshr i32 %i.w, 19
  %i.y = and i32 %i.x, 1
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.z ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !454
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ad
  tail call fastcc void @_ZN12_GLOBAL__N_112BuildLockset16examineArgumentsEPKN5clang12FunctionDeclENS1_4Stmt12CastIteratorINS1_4ExprEKPKS7_KPKS5_EESE_b(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef %.0.i.i.i, ptr nonnull %i.aa, ptr nonnull %i.ae, i1 noundef zeroext false)
  br label %bb.o

bb.h:                                             ; preds = %bb.a
  %i.af = load i32, ptr %1, align 8               ; 7 uses
  %i.ag = lshr i32 %i.af, 25
  %i.ah = and i32 %i.ag, 63
  switch i32 %i.ah, label %_ZNK5clang8CallExpr15getDirectCalleeEv.exit51 [
    i32 15, label %bb.i
    i32 18, label %bb.i
    i32 19, label %bb.i
    i32 20, label %bb.i
    i32 21, label %bb.i
    i32 22, label %bb.i
    i32 23, label %bb.i
    i32 24, label %bb.i
    i32 25, label %bb.i
    i32 28, label %bb.i
    i32 29, label %bb.i
    i32 37, label %bb.j
    i32 38, label %bb.j
    i32 7, label %bb.k
    i32 40, label %bb.l
    i32 41, label %bb.l
    i32 43, label %bb.l
  ]

bb.i:                                             ; preds = %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h
  %i.ai = lshr i32 %i.af, 19
  %i.aj = and i32 %i.ai, 1
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !379
  %i.ao = load ptr, ptr %0, align 8, !tbaa !362
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_ZN12_GLOBAL__N_120ThreadSafetyAnalyzer11checkAccessERKNS_7FactSetEPKN5clang4ExprENS4_12threadSafety10AccessKindENS8_22ProtectedOperationKindE(ptr noundef nonnull align 8 dereferenceable(656) %i.ao, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ap, ptr noundef nonnull %i.an, i32 noundef 0, i32 noundef 1)
  %.pre = load i32, ptr %1, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.h, %bb.i
  %i.aq = phi i32 [ %i.af, %bb.h ], [ %i.af, %bb.h ], [ %.pre, %bb.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.as = lshr i32 %i.aq, 19
  %i.at = and i32 %i.as, 1
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.au
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !379
  %i.ax = load ptr, ptr %0, align 8, !tbaa !362
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_ZN12_GLOBAL__N_120ThreadSafetyAnalyzer11checkAccessERKNS_7FactSetEPKN5clang4ExprENS4_12threadSafety10AccessKindENS8_22ProtectedOperationKindE(ptr noundef nonnull align 8 dereferenceable(656) %i.ax, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ay, ptr noundef nonnull %i.aw, i32 noundef 1, i32 noundef 1)
  br label %bb.o

bb.k:                                             ; preds = %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !454
  %i.bb = icmp ugt i32 %i.ba, 1
  br i1 %i.bb, label %_ZNK5clang8CallExpr15getDirectCalleeEv.exit51, label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.h, %bb.h, %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bd = lshr i32 %i.af, 19
  %i.be = and i32 %i.bd, 1
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bf
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !379
  %i.bi = load ptr, ptr %0, align 8, !tbaa !362
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_ZN12_GLOBAL__N_120ThreadSafetyAnalyzer13checkPtAccessERKNS_7FactSetEPKN5clang4ExprENS4_12threadSafety10AccessKindENS8_22ProtectedOperationKindE(ptr noundef nonnull align 8 dereferenceable(656) %i.bi, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.bj, ptr noundef %i.bh, i32 noundef 0, i32 noundef 1)
  %.pre62 = load i32, ptr %1, align 8
  br label %_ZNK5clang8CallExpr15getDirectCalleeEv.exit51

_ZNK5clang8CallExpr15getDirectCalleeEv.exit51:    ; preds = %bb.h, %bb.k, %bb.l
  %i.bk = phi i32 [ %i.af, %bb.h ], [ %i.af, %bb.k ], [ %.pre62, %bb.l ]
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.bm = lshr i32 %i.bk, 19
  %i.bn = and i32 %i.bm, 1
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bo
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !379
  %i.br = load ptr, ptr %0, align 8, !tbaa !362
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_ZN12_GLOBAL__N_120ThreadSafetyAnalyzer11checkAccessERKNS_7FactSetEPKN5clang4ExprENS4_12threadSafety10AccessKindENS8_22ProtectedOperationKindE(ptr noundef nonnull align 8 dereferenceable(656) %i.br, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.bs, ptr noundef nonnull %i.bq, i32 noundef 0, i32 noundef 1)
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !370
  %i.bv = tail call noundef ptr @_ZN5clang4Expr25getReferencedDeclOfCalleeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bu) #22 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bv) ]
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 28
  %i.bx = load i32, ptr %i.bw, align 4            ; 2 uses
  %i.by = and i32 %i.bx, 127
  %i.bz = add nsw i32 %i.by, -35
  %i.ca = icmp ult i32 %i.bz, 6
  %spec.select.i.i.i.i49 = select i1 %i.ca, ptr %i.bv, ptr null
  %i.cb = load i32, ptr %1, align 8
  %i.cc = lshr i32 %i.cb, 19
  %i.cd = and i32 %i.cc, 1
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.ce ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !454
  %i.cj = zext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.cj
  %i.cl = and i32 %i.bx, 124
  %i.cm = icmp ne i32 %i.cl, 36
  tail call fastcc void @_ZN12_GLOBAL__N_112BuildLockset16examineArgumentsEPKN5clang12FunctionDeclENS1_4Stmt12CastIteratorINS1_4ExprEKPKS7_KPKS5_EESE_b(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef %spec.select.i.i.i.i49, ptr nonnull %i.cg, ptr nonnull %i.ck, i1 noundef zeroext %i.cm)
  br label %bb.o

bb.m:                                             ; preds = %bb.a
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !370
  %i.cp = tail call noundef ptr @_ZN5clang4Expr25getReferencedDeclOfCalleeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.co) #22 ; 3 uses
  %.not.i.i.i52 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i52, label %_ZNK5clang8CallExpr15getDirectCalleeEv.exit55, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 28
  %i.cr = load i32, ptr %i.cq, align 4
  %i.cs = and i32 %i.cr, 127
  %i.ct = add nsw i32 %i.cs, -35
  %i.cu = icmp ult i32 %i.ct, 6
  %spec.select.i.i.i.i53 = select i1 %i.cu, ptr %i.cp, ptr null
  br label %_ZNK5clang8CallExpr15getDirectCalleeEv.exit55

_ZNK5clang8CallExpr15getDirectCalleeEv.exit55:    ; preds = %bb.m, %bb.n
  %.0.i.i.i54 = phi ptr [ %spec.select.i.i.i.i53, %bb.n ], [ null, %bb.m ]
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cw = load i32, ptr %1, align 8
  %i.cx = lshr i32 %i.cw, 19
  %i.cy = and i32 %i.cx, 1
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.cz ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !454
  %i.dd = zext i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.dd
  tail call fastcc void @_ZN12_GLOBAL__N_112BuildLockset16examineArgumentsEPKN5clang12FunctionDeclENS1_4Stmt12CastIteratorINS1_4ExprEKPKS7_KPKS5_EESE_b(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef %.0.i.i.i54, ptr nonnull %i.da, ptr nonnull %i.de, i1 noundef zeroext false)
  br label %bb.o

bb.o:                                             ; preds = %_ZNK5clang8CallExpr15getDirectCalleeEv.exit55, %_ZNK5clang8CallExpr15getDirectCalleeEv.exit51, %bb.j, %_ZNK5clang8CallExpr15getDirectCalleeEv.exit
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !370
  %i.dh = tail call noundef ptr @_ZN5clang4Expr25getReferencedDeclOfCalleeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dg) #22 ; 3 uses
  %.not.i.i = icmp eq ptr %i.dh, null
  br i1 %.not.i.i, label %_ZN4llvm16dyn_cast_or_nullIN5clang9NamedDeclEKNS1_4DeclEEEDaPT0_.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 28
  %i.dj = load i32, ptr %i.di, align 4
  %i.dk = and i32 %i.dj, 124
  %i.dl = add nsw i32 %i.dk, -20
  %i.dm = icmp ult i32 %i.dl, 64
  br i1 %i.dm, label %_ZN4llvm16dyn_cast_or_nullIN5clang9NamedDeclEKNS1_4DeclEEEDaPT0_.exit, label %_ZN4llvm16dyn_cast_or_nullIN5clang9NamedDeclEKNS1_4DeclEEEDaPT0_.exit.thread

_ZN4llvm16dyn_cast_or_nullIN5clang9NamedDeclEKNS1_4DeclEEEDaPT0_.exit: ; preds = %bb.p
  tail call fastcc void @_ZN12_GLOBAL__N_112BuildLockset10handleCallEPKN5clang4ExprEPKNS1_9NamedDeclEPNS1_12threadSafety3til5SExprENS1_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef nonnull %1, ptr noundef nonnull %i.dh, ptr noundef null, i32 0)
  br label %_ZN4llvm16dyn_cast_or_nullIN5clang9NamedDeclEKNS1_4DeclEEEDaPT0_.exit.thread

_ZN4llvm16dyn_cast_or_nullIN5clang9NamedDeclEKNS1_4DeclEEEDaPT0_.exit.thread: ; preds = %bb.o, %bb.p, %_ZN4llvm16dyn_cast_or_nullIN5clang9NamedDeclEKNS1_4DeclEEEDaPT0_.exit
  tail call fastcc void @_ZN12_GLOBAL__N_112BuildLockset20updateLocalVarMapCtxEPKN5clang4StmtE(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef nonnull %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_112BuildLockset21VisitCXXConstructExprEPKN5clang16CXXConstructExprE(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1204 ; 5 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i32 0, ptr %i.a, align 4, !tbaa !255
  %i.d = call noundef zeroext i1 @_ZNK5clang18CXXConstructorDecl17isCopyConstructorERj(ptr noundef nonnull align 8 dereferenceable(176) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.e = load i16, ptr %1, align 8
  %i.f = and i16 %i.e, 511
  %.not.i.i.i.i21 = icmp eq i16 %i.f, 118
  %spec.select.v.i.i.i.i22 = select i1 %.not.i.i.i.i21, i64 48, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.v.i.i.i.i22 ; 3 uses
  br i1 %i.d, label %bb.c, label %.split14

.split14:                                         ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !1205
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.j
  call fastcc void @_ZN12_GLOBAL__N_112BuildLockset16examineArgumentsEPKN5clang12FunctionDeclENS1_4Stmt12CastIteratorINS1_4ExprEKPKS7_KPKS5_EESE_b(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef nonnull %i.c, ptr nonnull %i.g, ptr nonnull %i.k, i1 noundef zeroext false)
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !379
  %i.m = load ptr, ptr %0, align 8, !tbaa !362
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  call fastcc void @_ZN12_GLOBAL__N_120ThreadSafetyAnalyzer11checkAccessERKNS_7FactSetEPKN5clang4ExprENS4_12threadSafety10AccessKindENS8_22ProtectedOperationKindE(ptr noundef nonnull align 8 dereferenceable(656) %i.m, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.n, ptr noundef nonnull %i.l, i32 noundef 0, i32 noundef 1)
  br label %bb.d

bb.d:                                             ; preds = %.split14, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.p = load i32, ptr %i.o, align 4
  %i.q = and i32 %i.p, 256
  %.not24 = icmp eq i32 %i.q, 0
  br i1 %.not24, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call fastcc void @_ZN12_GLOBAL__N_112BuildLockset10handleCallEPKN5clang4ExprEPKNS1_9NamedDeclEPNS1_12threadSafety3til5SExprENS1_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef nonnull %1, ptr noundef nonnull %i.c, ptr noundef null, i32 0)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_112BuildLockset19VisitBinaryOperatorEPKN5clang14BinaryOperatorE(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8
  %i.b = lshr i32 %i.a, 19
  %i.c = and i32 %i.b, 63
  %i.d = add nsw i32 %i.c, -21
  %i.e = icmp ult i32 %i.d, 11
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !370
  %i.h = load ptr, ptr %0, align 8, !tbaa !362
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_ZN12_GLOBAL__N_120ThreadSafetyAnalyzer11checkAccessERKNS_7FactSetEPKN5clang4ExprENS4_12threadSafety10AccessKindENS8_22ProtectedOperationKindE(ptr noundef nonnull align 8 dereferenceable(656) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.i, ptr noundef nonnull %i.g, i32 noundef 1, i32 noundef 1)
  tail call fastcc void @_ZN12_GLOBAL__N_112BuildLockset20updateLocalVarMapCtxEPKN5clang4StmtE(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef nonnull %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_112BuildLockset15VisitReturnStmtEPKN5clang10ReturnStmtE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(60) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !362
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 368
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !213  ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1207 ; 3 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.g, align 8, !tbaa !156
  %i.h = and i64 %.sroa.0.0.copyload.i.i, -16
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load ptr, ptr %i.i, align 16, !tbaa !445 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i8, ptr %i.k, align 16
  %i.m = add i8 %i.l, -25
  %spec.select.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.m, -2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i, label %bb.d, label %_ZNK5clang12FunctionDecl13getReturnTypeEv.exit

bb.d:                                             ; preds = %bb.c
  %i.n = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.j) #22
  br label %_ZNK5clang12FunctionDecl13getReturnTypeEv.exit

_ZNK5clang12FunctionDecl13getReturnTypeEv.exit:   ; preds = %bb.c, %bb.d
  %.1.i.i = phi ptr [ %i.n, %bb.d ], [ %i.j, %bb.c ]
  %i.o = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 24
  %.sroa.0.0.copyload.i1.i = load i64, ptr %i.o, align 8, !tbaa !156
  %i.p = and i64 %.sroa.0.0.copyload.i1.i, -16
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !156
  %i.t = and i64 %i.s, -16
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load ptr, ptr %i.u, align 16, !tbaa !445 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.w, align 8, !tbaa !156
  %i.x = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = load ptr, ptr %i.y, align 16, !tbaa !445
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load i8, ptr %i.aa, align 16
  switch i8 %i.ab, label %bb.i [
    i8 42, label %bb.e
    i8 40, label %bb.g
  ]

bb.e:                                             ; preds = %_ZNK5clang12FunctionDecl13getReturnTypeEv.exit
  %i.ac = load ptr, ptr %0, align 8, !tbaa !362
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1208, !nonnull !217, !align !218
  %i.af = tail call i64 @_ZNK5clang4Type14getPointeeTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.v) #22 ; 2 uses
  %i.ag = trunc i64 %i.af to i1
  br i1 %i.ag, label %_ZNK5clang8QualType16isConstQualifiedEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = and i64 %i.af, -16
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.0.copyload.i.i.i.i.i1.i = load i64, ptr %i.aj, align 8
  %i.ak = trunc i64 %.0.copyload.i.i.i.i.i1.i to i32
  %i.al = and i32 %i.ak, 1
  %i.am = xor i32 %i.al, 1
  br label %_ZNK5clang8QualType16isConstQualifiedEv.exit

_ZNK5clang8QualType16isConstQualifiedEv.exit:     ; preds = %bb.e, %bb.f
  %not.5 = phi i32 [ 0, %bb.e ], [ %i.am, %bb.f ]
  tail call fastcc void @_ZN12_GLOBAL__N_120ThreadSafetyAnalyzer11checkAccessERKNS_7FactSetEPKN5clang4ExprENS4_12threadSafety10AccessKindENS8_22ProtectedOperationKindE(ptr noundef nonnull align 8 dereferenceable(656) %i.ac, ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull %i.f, i32 noundef %not.5, i32 noundef 5)
  br label %bb.i

bb.g:                                             ; preds = %_ZNK5clang12FunctionDecl13getReturnTypeEv.exit
  %i.an = load ptr, ptr %0, align 8, !tbaa !362
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !1208, !nonnull !217, !align !218
  %i.aq = tail call i64 @_ZNK5clang4Type14getPointeeTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.v) #22 ; 2 uses
  %i.ar = trunc i64 %i.aq to i1
  br i1 %i.ar, label %_ZNK5clang8QualType16isConstQualifiedEv.exit12, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = and i64 %i.aq, -16
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.0.copyload.i.i.i.i.i1.i11 = load i64, ptr %i.au, align 8
  %i.av = trunc i64 %.0.copyload.i.i.i.i.i1.i11 to i32
  %i.aw = and i32 %i.av, 1
  %i.ax = xor i32 %i.aw, 1
  br label %_ZNK5clang8QualType16isConstQualifiedEv.exit12

_ZNK5clang8QualType16isConstQualifiedEv.exit12:   ; preds = %bb.g, %bb.h
  %not. = phi i32 [ 0, %bb.g ], [ %i.ax, %bb.h ]
  tail call fastcc void @_ZN12_GLOBAL__N_120ThreadSafetyAnalyzer13checkPtAccessERKNS_7FactSetEPKN5clang4ExprENS4_12threadSafety10AccessKindENS8_22ProtectedOperationKindE(ptr noundef nonnull align 8 dereferenceable(656) %i.an, ptr noundef nonnull align 8 dereferenceable(32) %i.ap, ptr noundef nonnull %i.f, i32 noundef %not., i32 noundef 9)
  br label %bb.i

bb.i:                                             ; preds = %_ZNK5clang12FunctionDecl13getReturnTypeEv.exit, %_ZNK5clang8QualType16isConstQualifiedEv.exit, %_ZNK5clang8QualType16isConstQualifiedEv.exit12, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_112BuildLockset13VisitDeclStmtEPKN5clang8DeclStmtE(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %class.anon.1171, align 1           ; 3 uses
  %3 = alloca %"class.clang::DeclGroupRef", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8, !tbaa !270 ; 3 uses
  store ptr %.sroa.0.0.copyload.i, ptr %3, align 8
  %i.b = ptrtoint ptr %.sroa.0.0.copyload.i to i64 ; 2 uses
  %i.c = and i64 %i.b, 1
  %i.d = icmp eq i64 %i.c, 0                      ; 2 uses
  %.not.i = icmp eq ptr %.sroa.0.0.copyload.i, null ; 2 uses
  %i.e = select i1 %.not.i, ptr null, ptr %3
  %i.f = and i64 %i.b, -2
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %.0.i = select i1 %i.d, ptr %i.e, ptr %i.h      ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = select i1 %.not.i, ptr null, ptr %i.i
  br label %_ZNK5clang12DeclGroupRef3endEv.exit

bb.c:                                             ; preds = %bb.a
  %i.k = load i32, ptr %i.g, align 8, !tbaa !272
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.l
  br label %_ZNK5clang12DeclGroupRef3endEv.exit

_ZNK5clang12DeclGroupRef3endEv.exit:              ; preds = %bb.b, %bb.c
  %.0.i30 = phi ptr [ %i.j, %bb.b ], [ %i.m, %bb.c ] ; 2 uses
  %.not49 = icmp eq ptr %.0.i, %.0.i30
  br i1 %.not49, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.critedge, %_ZNK5clang12DeclGroupRef3endEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call fastcc void @_ZN12_GLOBAL__N_112BuildLockset20updateLocalVarMapCtxEPKN5clang4StmtE(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef nonnull %1)
  ret void

.lr.ph:                                           ; preds = %_ZNK5clang12DeclGroupRef3endEv.exit, %.critedge
  %.02350 = phi ptr [ %i.cp, %.critedge ], [ %.0.i, %_ZNK5clang12DeclGroupRef3endEv.exit ] ; 2 uses
  %i.n = load ptr, ptr %.02350, align 8, !tbaa !270 ; 4 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %.critedge, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 28
  %i.p = load i32, ptr %i.o, align 4
  %i.q = and i32 %i.p, 127
  %i.r = add nsw i32 %i.q, -41
  %i.s = icmp ult i32 %i.r, 7
end_hunk_1
