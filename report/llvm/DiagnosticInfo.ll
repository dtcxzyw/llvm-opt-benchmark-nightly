Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DiagnosticInfo?download=true
inline.NumInlined: 1094
inline.NumDeleted: 551
begin_hunk_0_@"_ZZN4llvm16diagnoseDontCallERKNS_8CallInstEENK3$_0clEPKNS_10DILocationE":bb.a
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.az, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNK4llvm7DIScope7getFileEv.exit.thread.i.i
  %i.ba = getelementptr inbounds i8, ptr %i.aw, i64 -32
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !23
  br label %_ZNK4llvm6DINode12getOperandAsINS_8MDStringEEEPT_j.exit.i.i.i.i

bb.o:                                             ; preds = %_ZNK4llvm7DIScope7getFileEv.exit.thread.i.i
  %i.bc = lshr i64 %i.ay, 2
  %i.bd = and i64 %i.bc, 15
  %i.be = sub nsw i64 0, %i.bd
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.be
  br label %_ZNK4llvm6DINode12getOperandAsINS_8MDStringEEEPT_j.exit.i.i.i.i

_ZNK4llvm6DINode12getOperandAsINS_8MDStringEEEPT_j.exit.i.i.i.i: ; preds = %bb.o, %bb.n
  %.sroa.0.0.i.i.i.i.i.i.i = phi ptr [ %i.bf, %bb.o ], [ %i.bb, %bb.n ]
  %i.bg = load ptr, ptr %.sroa.0.0.i.i.i.i.i.i.i, align 8, !tbaa !26 ; 2 uses
  %.not.not.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.not.i.i.i.i, label %_ZNK4llvm10DILocation11getFilenameEv.exit, label %bb.p

bb.p:                                             ; preds = %_ZNK4llvm6DINode12getOperandAsINS_8MDStringEEEPT_j.exit.i.i.i.i
  %i.bh = tail call { ptr, i64 } @_ZNK4llvm8MDString9getStringEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #21 ; 2 uses
  %i.bi = extractvalue { ptr, i64 } %i.bh, 0
  %i.bj = extractvalue { ptr, i64 } %i.bh, 1
  br label %_ZNK4llvm10DILocation11getFilenameEv.exit

_ZNK4llvm10DILocation11getFilenameEv.exit:        ; preds = %_ZNK4llvm7DIScope7getFileEv.exit.i.i, %_ZNK4llvm6DINode12getOperandAsINS_8MDStringEEEPT_j.exit.i.i.i.i, %bb.p
  %.sroa.3.1.i.i = phi i64 [ 0, %_ZNK4llvm6DINode12getOperandAsINS_8MDStringEEEPT_j.exit.i.i.i.i ], [ %i.bj, %bb.p ], [ 0, %_ZNK4llvm7DIScope7getFileEv.exit.i.i ]
  %.sroa.0.1.i.i14 = phi ptr [ null, %_ZNK4llvm6DINode12getOperandAsINS_8MDStringEEEPT_j.exit.i.i.i.i ], [ %i.bi, %bb.p ], [ @.str, %_ZNK4llvm7DIScope7getFileEv.exit.i.i ]
  store ptr %.sroa.0.1.i.i14, ptr %i.aa, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %.sroa.3.1.i.i, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !77
  store i32 %i.bn, ptr %i.bl, align 8, !tbaa !155
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !78
  %i.br = zext i16 %i.bq to i32
  store i32 %i.br, ptr %i.bo, align 4, !tbaa !156
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.val, i64 8 ; 3 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !50 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.val, i64 12
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !130
  %.not.i = icmp ult i32 %i.bt, %i.bv
  br i1 %.not.i, label %bb.r, label %bb.q, !prof !144

bb.q:                                             ; preds = %_ZNK4llvm10DILocation11getFilenameEv.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_15DebugInlineInfoELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %.0.val, ptr noundef nonnull align 8 dereferenceable(40) %1)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_15DebugInlineInfoELb1EE9push_backERKS1_.exit

bb.r:                                             ; preds = %_ZNK4llvm10DILocation11getFilenameEv.exit
  %i.bw = zext i32 %i.bt to i64
  %i.bx = load ptr, ptr %.0.val, align 8, !tbaa !23
  %i.by = getelementptr inbounds nuw [40 x i8], ptr %i.bx, i64 %i.bw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %i.by, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  %i.bz = load i32, ptr %i.bs, align 8, !tbaa !50
  %i.ca = add i32 %i.bz, 1
  store i32 %i.ca, ptr %i.bs, align 8, !tbaa !50
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_15DebugInlineInfoELb1EE9push_backERKS1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_15DebugInlineInfoELb1EE9push_backERKS1_.exit: ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %bb.s

bb.s:                                             ; preds = %bb.d, %_ZN4llvm23SmallVectorTemplateBaseINS_15DebugInlineInfoELb1EE9push_backERKS1_.exit, %_ZNK4llvm10DILocation8getScopeEv.exit
  ret void
}

declare void @_ZN4llvm11LLVMContext8diagnoseERKNS_14DiagnosticInfoE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(13)) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm22DiagnosticInfoDontCallD2Ev(ptr noundef nonnull align 8 dead_on_return(240) dereferenceable(240) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm22DiagnosticInfoDontCallE, i64 16), ptr %0, align 8, !tbaa !18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorINS_15DebugInlineInfoELj4EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #21
  br label %_ZN4llvm11SmallVectorINS_15DebugInlineInfoELj4EED2Ev.exit

_ZN4llvm11SmallVectorINS_15DebugInlineInfoELj4EED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm22DiagnosticInfoDontCall5printERNS_17DiagnosticPrinterE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.c(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.24) #21 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i = load ptr, ptr %i.e, align 8, !tbaa !76
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !80
  call void @_ZN4llvm8demangleB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, i64 %.sroa.2.0.copyload.i, ptr %.sroa.0.0.copyload.i) #21
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = call noundef nonnull align 8 dereferenceable(8) ptr %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %2) #21 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = call noundef nonnull align 8 dereferenceable(8) ptr %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.25) #21 ; 0 uses
  %i.n = load ptr, ptr %2, align 8, !tbaa !40     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.q = load i64, ptr %i.o, align 8, !tbaa !33
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.t = load i8, ptr %i.s, align 4, !tbaa !42
  %i.u = icmp eq i8 %i.t, 0
  %i.v = load ptr, ptr %1, align 8, !tbaa !18
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.x = load ptr, ptr %i.w, align 8
  %.str.26..str.27 = select i1 %i.u, ptr @.str.26, ptr @.str.27
  %i.y = call noundef nonnull align 8 dereferenceable(8) ptr %i.x(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %.str.26..str.27) #21 ; 0 uses
  %.sroa.2.0..sroa_idx.i10 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.sroa.2.0.copyload.i11 = load i64, ptr %.sroa.2.0..sroa_idx.i10, align 8, !tbaa !80
  %i.z = icmp eq i64 %.sroa.2.0.copyload.i11, 0
  br i1 %i.z, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ab = load ptr, ptr %1, align 8, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = call noundef nonnull align 8 dereferenceable(8) ptr %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.1) #21 ; 2 uses
  %.sroa.0.0.copyload.i14 = load ptr, ptr %i.aa, align 8, !tbaa !76
  %.sroa.2.0.copyload.i16 = load i64, ptr %.sroa.2.0..sroa_idx.i10, align 8, !tbaa !80
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !18
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = call noundef nonnull align 8 dereferenceable(8) ptr %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr %.sroa.0.0.copyload.i14, i64 %.sroa.2.0.copyload.i16) #21 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void
}

declare void @_ZN4llvm8demangleB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i64, ptr) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm22DiagnosticInfoDontCall20getInliningDecisionsEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector.143") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(240) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.llvm::StringRef", align 8   ; 6 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.b, ptr %0, align 8, !tbaa !23
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 0, ptr %i.c, align 8, !tbaa !50
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 2, ptr %i.d, align 4, !tbaa !130
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !153  ; 3 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -16
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %i.i = and i64 %i.h, 2
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = trunc i64 %i.h to i32
  %i.k = lshr i32 %i.j, 6
  %i.l = and i32 %i.k, 15
  br label %_ZNK4llvm6MDNode14getNumOperandsEv.exit

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds i8, ptr %i.f, i64 -24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !50
  br label %_ZNK4llvm6MDNode14getNumOperandsEv.exit

_ZNK4llvm6MDNode14getNumOperandsEv.exit:          ; preds = %bb.c, %bb.d
  %.0.i.i = phi i32 [ %i.n, %bb.d ], [ %i.l, %bb.c ] ; 2 uses
  %i.o = icmp ugt i32 %.0.i.i, 1
  br i1 %i.o, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZNK4llvm6MDNode14getNumOperandsEv.exit
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %3 = zext i32 %.0.i.i to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %.critedge
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.critedge ] ; 3 uses
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !153  ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -16 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  %i.t = and i64 %i.s, 2
  %.not.i.i18 = icmp eq i64 %i.t, 0
  br i1 %.not.i.i18, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds i8, ptr %i.q, i64 -32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !23
  br label %_ZNK4llvm6MDNode10getOperandEj.exit21

bb.g:                                             ; preds = %bb.e
  %i.w = lshr i64 %i.s, 2
  %i.x = and i64 %i.w, 15
  %i.y = sub nsw i64 0, %i.x
  %i.z = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.y
  br label %_ZNK4llvm6MDNode10getOperandEj.exit21

_ZNK4llvm6MDNode10getOperandEj.exit21:            ; preds = %bb.f, %bb.g
  %.sink = phi ptr [ %i.v, %bb.f ], [ %i.z, %bb.g ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.sink, i64 %indvars.iv
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !26 ; 3 uses
  %i.ac = load i8, ptr %i.ab, align 4, !tbaa !53
  %.not36 = icmp eq i8 %i.ac, 0
  %4 = getelementptr inbounds nuw [8 x i8], ptr %.sink, i64 %indvars.iv
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ad = load ptr, ptr %5, align 8, !tbaa !26    ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 4, !tbaa !53
  %.not.i = icmp eq i8 %i.ae, 1
  br i1 %.not.i, label %bb.h, label %_ZN4llvm7mdconst11dyn_extractINS_11ConstantIntERKNS_9MDOperandEEENSt9enable_ifIXsr6detail14IsValidPointerIT_T0_EE5valueEPS7_E4typeEOS8_.exit

bb.h:                                             ; preds = %_ZNK4llvm6MDNode10getOperandEj.exit21
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 136
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !59 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !63
  %i.ai = icmp eq i8 %i.ah, 5
  %spec.select.i.i.i22 = select i1 %i.ai, ptr %i.ag, ptr null
  br label %_ZN4llvm7mdconst11dyn_extractINS_11ConstantIntERKNS_9MDOperandEEENSt9enable_ifIXsr6detail14IsValidPointerIT_T0_EE5valueEPS7_E4typeEOS8_.exit

_ZN4llvm7mdconst11dyn_extractINS_11ConstantIntERKNS_9MDOperandEEENSt9enable_ifIXsr6detail14IsValidPointerIT_T0_EE5valueEPS7_E4typeEOS8_.exit: ; preds = %_ZNK4llvm6MDNode10getOperandEj.exit21, %bb.h
  %spec.select.i = phi ptr [ %spec.select.i.i.i22, %bb.h ], [ null, %_ZNK4llvm6MDNode10getOperandEj.exit21 ] ; 3 uses
  br i1 %.not36, label %bb.i, label %.critedge

bb.i:                                             ; preds = %_ZN4llvm7mdconst11dyn_extractINS_11ConstantIntERKNS_9MDOperandEEENSt9enable_ifIXsr6detail14IsValidPointerIT_T0_EE5valueEPS7_E4typeEOS8_.exit
  %i.aj = call { ptr, i64 } @_ZNK4llvm8MDString9getStringEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #21
  %i.ak = extractvalue { ptr, i64 } %i.aj, 1
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.am = call { ptr, i64 } @_ZNK4llvm8MDString9getStringEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #21 ; 2 uses
  %i.an = extractvalue { ptr, i64 } %i.am, 0
  store ptr %i.an, ptr %2, align 8
  %i.ao = extractvalue { ptr, i64 } %i.am, 1
  store i64 %i.ao, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %.not17 = icmp eq ptr %spec.select.i, null
  br i1 %.not17, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 24 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 32
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !65
  %i.as = icmp ult i32 %i.ar, 65
  %i.at = load ptr, ptr %i.ap, align 8
  %spec.select.i.i = select i1 %i.as, ptr %i.ap, ptr %i.at
  %.0.i.i23 = load i64, ptr %spec.select.i.i, align 8, !tbaa !33
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.au = phi i64 [ %.0.i.i23, %bb.k ], [ 0, %bb.j ] ; 2 uses
  store i64 %i.au, ptr %i.a, align 8, !tbaa !80
  %i.av = load i32, ptr %i.c, align 8, !tbaa !50  ; 2 uses
  %i.aw = load i32, ptr %i.d, align 4, !tbaa !130
  %.not.i24 = icmp ult i32 %i.av, %i.aw
  br i1 %.not.i24, label %bb.n, label %bb.m, !prof !144

bb.m:                                             ; preds = %bb.l
  %i.ax = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_9StringRefEmELb1EE18growAndEmplaceBackIJS2_mEEERS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplISt4pairINS_9StringRefEmEE12emplace_backIJS2_mEEERS3_DpOT_.exit

bb.n:                                             ; preds = %bb.l
  %i.ay = zext i32 %i.av to i64
  %i.az = load ptr, ptr %0, align 8, !tbaa !23
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.az, i64 %i.ay ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !158
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store i64 %i.au, ptr %i.bb, align 8, !tbaa !160
  %i.bc = load i32, ptr %i.c, align 8, !tbaa !50
  %i.bd = add i32 %i.bc, 1
  store i32 %i.bd, ptr %i.c, align 8, !tbaa !50
  br label %_ZN4llvm15SmallVectorImplISt4pairINS_9StringRefEmEE12emplace_backIJS2_mEEERS3_DpOT_.exit

_ZN4llvm15SmallVectorImplISt4pairINS_9StringRefEmEE12emplace_backIJS2_mEEERS3_DpOT_.exit: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %.critedge

.critedge:                                        ; preds = %_ZN4llvm7mdconst11dyn_extractINS_11ConstantIntERKNS_9MDOperandEEENSt9enable_ifIXsr6detail14IsValidPointerIT_T0_EE5valueEPS7_E4typeEOS8_.exit, %_ZN4llvm15SmallVectorImplISt4pairINS_9StringRefEmEE12emplace_backIJS2_mEEERS3_DpOT_.exit, %bb.i
  %indvars.iv.next = add nuw i64 %indvars.iv, 2   ; 2 uses
  %6 = or disjoint i64 %indvars.iv.next, 1
  %i.be = icmp ult i64 %6, %3
  br i1 %i.be, label %bb.e, label %.loopexit, !llvm.loop !486

.loopexit:                                        ; preds = %.critedge, %_ZNK4llvm6MDNode14getNumOperandsEv.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm14DiagnosticInfoD0Ev(ptr noundef nonnull align 8 dereferenceable(13) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #23
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm21DiagnosticInfoGenericD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #22
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm34DiagnosticInfoDebugMetadataVersionD0Ev(ptr noundef nonnull align 8 dereferenceable(28) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #22
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm42DiagnosticInfoIgnoringInvalidDebugMetadataD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #22
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm27DiagnosticInfoSampleProfileD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #22
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm24DiagnosticInfoPGOProfileD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #22
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm30DiagnosticInfoWithLocationBaseD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #23
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm33DiagnosticInfoLegalizationFailureD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #22
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm28DiagnosticInfoGenericWithLocD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #22
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm27DiagnosticInfoResourceLimitD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #22
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23DiagnosticInfoStackSizeD0Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 112) #22
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm30DiagnosticInfoOptimizationBaseD0Ev(ptr noundef nonnull align 8 dereferenceable(424) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #23
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm28DiagnosticInfoIROptimizationD0Ev(ptr noundef nonnull align 8 dereferenceable(432) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #23
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm18OptimizationRemarkD0Ev(ptr noundef nonnull align 8 dereferenceable(432) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm30DiagnosticInfoOptimizationBaseE, i64 16), ptr %0, align 8, !tbaa !18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load i32, ptr %i.c, align 8, !tbaa !50   ; 2 uses
  %.not4.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not4.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.a
  %i.e = zext i32 %i.d to i64
  %.idx.i.i = mul nuw nsw i64 %i.e, 80
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i, %.lr.ph.i.preheader.i.i
  %.05.i.i.i = phi ptr [ %i.g, %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i ], [ %i.f, %.lr.ph.i.preheader.i.i ] ; 4 uses
  %i.g = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -80 ; 3 uses
  %i.h = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !40   ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -32 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !33
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #22, !inline_history !161
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !40   ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -64 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.q = load i64, ptr %i.o, align 8, !tbaa !33
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #22, !inline_history !161
  br label %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i

_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i
  %.not.i.i.i = icmp eq ptr %i.b, %i.g
  br i1 %.not.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i: ; preds = %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !23
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i, %bb.a
  %i.s = phi ptr [ %.pre.i.i, %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZN4llvm30DiagnosticInfoOptimizationBaseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i
  tail call void @free(ptr noundef %i.s) #21, !inline_history !161
  br label %_ZN4llvm30DiagnosticInfoOptimizationBaseD2Ev.exit

_ZN4llvm30DiagnosticInfoOptimizationBaseD2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 432) #22
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm24OptimizationRemarkMissedD0Ev(ptr noundef nonnull align 8 dereferenceable(432) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm30DiagnosticInfoOptimizationBaseE, i64 16), ptr %0, align 8, !tbaa !18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load i32, ptr %i.c, align 8, !tbaa !50   ; 2 uses
  %.not4.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not4.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.a
  %i.e = zext i32 %i.d to i64
  %.idx.i.i = mul nuw nsw i64 %i.e, 80
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i, %.lr.ph.i.preheader.i.i
  %.05.i.i.i = phi ptr [ %i.g, %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i ], [ %i.f, %.lr.ph.i.preheader.i.i ] ; 4 uses
  %i.g = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -80 ; 3 uses
  %i.h = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !40   ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -32 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !33
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #22, !inline_history !161
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !40   ; 2 uses
end_hunk_0
