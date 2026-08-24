Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3Subst?download=true
inline.NumInlined: 933
inline.NumDeleted: 394
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZeqRK8VVarTypeNS_2enE:bb.a

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local i8 @_ZNK6AstVar7varTypeEv(ptr noundef nonnull align 8 dereferenceable(280) %0) #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248
  %.sroa.0.0.copyload = load i8, ptr %i.a, align 8, !tbaa !246
  ret i8 %.sroa.0.0.copyload
}

declare void @_ZN7AstNode10deleteTreeEv(ptr noundef nonnull align 8 dereferenceable(152)) local_unnamed_addr #4

declare noundef ptr @_ZN7AstNode12unlinkFrBackEP10VNRelinker(ptr noundef nonnull align 8 dereferenceable(152), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK9AstModule6stmtspEv(ptr noundef nonnull align 8 dereferenceable(312) %0) #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !140
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7AstNode2isI6AstVarS_EEbPKT0_(ptr noundef %0) #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.a, align 8, !tbaa !139
  %i.b = icmp eq i16 %.sroa.0.0.copyload.i.i, 68
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = phi i1 [ false, %bb.a ], [ %i.b, %bb.b ]
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7AstNode5nextpEv(ptr noundef nonnull align 8 dereferenceable(152) %0) #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !332
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10AstNetlist8modulespEv(ptr noundef nonnull align 8 dereferenceable(408) %0) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21
  ret ptr %i.b
}

declare void @_ZN7AstNode14iterateAndNextER9VNVisitor(ptr noundef nonnull align 8 dereferenceable(152), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN7AstNode15unsafePrivateAsI13AstNodeModuleS_EEPT_PT0_(ptr noundef %0) #2 comdat align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK13AstNodeAssign4lhspEv(ptr noundef nonnull align 8 dereferenceable(152) %0) #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !140
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7AstNode4castI10AstWordSel11AstNodeExprEEPT_PT0_(ptr noundef %0) #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.a, align 8, !tbaa !139
  %i.b = icmp eq i16 %.sroa.0.0.copyload.i.i, 282
  %spec.select = select i1 %i.b, ptr %0, ptr null
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = phi ptr [ null, %bb.a ], [ %spec.select, %bb.b ]
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN12SubstVisitor8simplifyEP11AstNodeExpr(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %_ZN7AstNode2isI8AstConst11AstNodeExprEEbPKT0_.exit.thread, label %_ZN7AstNode2isI8AstConst11AstNodeExprEEbPKT0_.exit

_ZN7AstNode2isI8AstConst11AstNodeExprEEbPKT0_.exit: ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.a, align 8, !tbaa !139
  %i.b = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 121
  br i1 %i.b, label %bb.e, label %_ZN7AstNode2isI8AstConst11AstNodeExprEEbPKT0_.exit.thread

_ZN7AstNode2isI8AstConst11AstNodeExprEEbPKT0_.exit.thread: ; preds = %bb.a, %_ZN7AstNode2isI8AstConst11AstNodeExprEEbPKT0_.exit
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !91
  %i.e = tail call noundef ptr @_ZN7AstNode25iterateSubtreeReturnEditsER9VNVisitor(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(32) %0) ; 4 uses
  %.not.i4 = icmp eq ptr %i.e, null
  br i1 %.not.i4, label %_ZN7AstNode2asI11AstNodeExprS_EEPT_PT0_.exit, label %bb.b

bb.b:                                             ; preds = %_ZN7AstNode2isI8AstConst11AstNodeExprEEbPKT0_.exit.thread
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  %.sroa.0.0.copyload.i.i.i5 = load i16, ptr %i.f, align 8, !tbaa !139
  %i.g = add i16 %.sroa.0.0.copyload.i.i.i5, -371
  %spec.select.i.i = icmp ult i16 %i.g, -269
  br i1 %spec.select.i.i, label %bb.c, label %_ZN7AstNode2asI11AstNodeExprS_EEPT_PT0_.exit, !prof !35

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.9, i32 noundef 1063) ; 0 uses
  %i.i = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.23)
  %.sroa.0.0.copyload.i.i5.i = load i16, ptr %i.f, align 8, !tbaa !139
  %i.k = zext i16 %.sroa.0.0.copyload.i.i5.i to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @_ZZNK6VNType5asciiEvE5names, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !302
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef %i.m)
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull @.str.24)
  tail call void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %i.e, ptr noundef nonnull align 8 dereferenceable(112) %i.o) #23
  unreachable

_ZN7AstNode2asI11AstNodeExprS_EEPT_PT0_.exit:     ; preds = %_ZN7AstNode2isI8AstConst11AstNodeExprEEbPKT0_.exit.thread, %bb.b
  %i.p = load i64, ptr %i.c, align 8, !tbaa !91
  %.not = icmp eq i64 %i.d, %i.p
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN7AstNode2asI11AstNodeExprS_EEPT_PT0_.exit
  %i.q = tail call noundef ptr @_ZN7V3Const15constifyEditCppEP11AstNodeExpr(ptr noundef %i.e) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZN7AstNode2asI11AstNodeExprS_EEPT_PT0_.exit, %bb.d, %_ZN7AstNode2isI8AstConst11AstNodeExprEEbPKT0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7AstNode2isI8AstConst11AstNodeExprEEbPKT0_(ptr noundef %0) #2 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.a, align 8, !tbaa !139
  %i.b = icmp eq i16 %.sroa.0.0.copyload.i.i, 121
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = phi i1 [ false, %bb.a ], [ %i.b, %bb.b ]
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7AstNode6user1pEv(ptr noundef nonnull align 8 dereferenceable(152) %0) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load i32, ptr %i.a, align 8, !tbaa !211
  %i.c = load i32, ptr @_ZN12VNUser1InUse12s_userCntGblE, align 4, !tbaa !45
  %i.d = icmp eq i32 %i.b, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load i64, ptr %i.e, align 8
  %i.g = inttoptr i64 %i.f to ptr
  %.sroa.0.0.i = select i1 %i.d, ptr %i.g, ptr null
  ret ptr %.sroa.0.0.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(48) ptr @_ZNSt5dequeI13SubstVarEntrySaIS0_EE12emplace_backIJRKP6AstVarEEERS0_DpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !326  ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !333
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -48
  %.not = icmp eq ptr %i.b, %i.e
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !277    ; 2 uses
  store ptr %i.f, ptr %i.b, align 8, !tbaa !245
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr null, ptr %i.g, align 8, !tbaa !9
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 0, ptr %i.h, align 8, !tbaa !16
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i8 0, ptr %i.i, align 4, !tbaa !282
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !293  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIN13SubstVarEntry6RecordESaIS1_EEC2EmRKS2_.exit.thread.i.i, label %_ZNK7AstNode10widthWordsEv.exit.i

_ZNK7AstNode10widthWordsEv.exit.i:                ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 152
  %i.n = load i32, ptr %i.m, align 8, !tbaa !294  ; 3 uses
  %i.o = add i32 %i.n, 31
  %i.p = sdiv i32 %i.o, 32                        ; 2 uses
  %i.q = sext i32 %i.p to i64                     ; 6 uses
  %i.r = icmp slt i32 %i.n, -62
  br i1 %i.r, label %.noexc.i, label %_ZNSt6vectorIN13SubstVarEntry6RecordESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i

.noexc.i:                                         ; preds = %_ZNK7AstNode10widthWordsEv.exit.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #23
  unreachable

_ZNSt6vectorIN13SubstVarEntry6RecordESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i: ; preds = %_ZNK7AstNode10widthWordsEv.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  %i.s = icmp slt i32 %i.n, 1
  br i1 %i.s, label %_ZNSt12_Vector_baseIN13SubstVarEntry6RecordESaIS1_EEC2EmRKS2_.exit.thread.i.i, label %_ZNSt12_Vector_baseIN13SubstVarEntry6RecordESaIS1_EEC2EmRKS2_.exit.i.i

_ZNSt12_Vector_baseIN13SubstVarEntry6RecordESaIS1_EEC2EmRKS2_.exit.thread.i.i: ; preds = %_ZNSt6vectorIN13SubstVarEntry6RecordESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i, %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  br label %_ZN13SubstVarEntryC2EP6AstVar.exit

_ZNSt12_Vector_baseIN13SubstVarEntry6RecordESaIS1_EEC2EmRKS2_.exit.i.i: ; preds = %_ZNSt6vectorIN13SubstVarEntry6RecordESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i
  %i.t = shl nuw nsw i64 %i.q, 4
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #25 ; 4 uses
  store ptr %i.u, ptr %i.j, align 8, !tbaa !141
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %i.q
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %i.v, ptr %i.w, align 8, !tbaa !327
  %i.x = add nsw i64 %i.q, -1
  %xtraiter = and i64 %i.q, 3
  %i.y = and i32 %i.p, 3
  %lcmp.mod.not = icmp eq i32 %i.y, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %_ZNSt12_Vector_baseIN13SubstVarEntry6RecordESaIS1_EEC2EmRKS2_.exit.i.i, %.lr.ph.i.i.i.i.i.i.i.prol
  %.09.i.i.i.i.i.i.i.prol = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.u, %_ZNSt12_Vector_baseIN13SubstVarEntry6RecordESaIS1_EEC2EmRKS2_.exit.i.i ] ; 4 uses
  %.068.i.i.i.i.i.i.i.prol = phi i64 [ %i.z, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.q, %_ZNSt12_Vector_baseIN13SubstVarEntry6RecordESaIS1_EEC2EmRKS2_.exit.i.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseIN13SubstVarEntry6RecordESaIS1_EEC2EmRKS2_.exit.i.i ]
  store ptr null, ptr %.09.i.i.i.i.i.i.i.prol, align 8, !tbaa !334
  %.sroa.5.0..09.i.i.i.i.i.i.sroa_idx.i.prol = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.prol, i64 8
  store i32 0, ptr %.sroa.5.0..09.i.i.i.i.i.i.sroa_idx.i.prol, align 8, !tbaa !45
  %.sroa.6.0..09.i.i.i.i.i.i.sroa_idx.i.prol = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.prol, i64 12
  store i8 0, ptr %.sroa.6.0..09.i.i.i.i.i.i.sroa_idx.i.prol, align 4, !tbaa !305
  %i.z = add i64 %.068.i.i.i.i.i.i.i.prol, -1     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.prol, i64 16 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol, !llvm.loop !335

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %_ZNSt12_Vector_baseIN13SubstVarEntry6RecordESaIS1_EEC2EmRKS2_.exit.i.i
  %.lcssa.unr = phi ptr [ poison, %_ZNSt12_Vector_baseIN13SubstVarEntry6RecordESaIS1_EEC2EmRKS2_.exit.i.i ], [ %i.aa, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.09.i.i.i.i.i.i.i.unr = phi ptr [ %i.u, %_ZNSt12_Vector_baseIN13SubstVarEntry6RecordESaIS1_EEC2EmRKS2_.exit.i.i ], [ %i.aa, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.068.i.i.i.i.i.i.i.unr = phi i64 [ %i.q, %_ZNSt12_Vector_baseIN13SubstVarEntry6RecordESaIS1_EEC2EmRKS2_.exit.i.i ], [ %i.z, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.ab = icmp ult i64 %i.x, 3
  br i1 %i.ab, label %_ZN13SubstVarEntryC2EP6AstVar.exit, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 13 uses
  %.068.i.i.i.i.i.i.i = phi i64 [ %i.af, %.lr.ph.i.i.i.i.i.i.i ], [ %.068.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  store ptr null, ptr %.09.i.i.i.i.i.i.i, align 8, !tbaa !334
  %.sroa.5.0..09.i.i.i.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 8
  store i32 0, ptr %.sroa.5.0..09.i.i.i.i.i.i.sroa_idx.i, align 8, !tbaa !45
  %.sroa.6.0..09.i.i.i.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 12
  store i8 0, ptr %.sroa.6.0..09.i.i.i.i.i.i.sroa_idx.i, align 4, !tbaa !305
  %i.ac = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 16
  store ptr null, ptr %i.ac, align 8, !tbaa !334
  %.sroa.5.0..09.i.i.i.i.i.i.sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 24
  store i32 0, ptr %.sroa.5.0..09.i.i.i.i.i.i.sroa_idx.i.1, align 8, !tbaa !45
  %.sroa.6.0..09.i.i.i.i.i.i.sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 28
  store i8 0, ptr %.sroa.6.0..09.i.i.i.i.i.i.sroa_idx.i.1, align 4, !tbaa !305
  %i.ad = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 32
  store ptr null, ptr %i.ad, align 8, !tbaa !334
  %.sroa.5.0..09.i.i.i.i.i.i.sroa_idx.i.2 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 40
  store i32 0, ptr %.sroa.5.0..09.i.i.i.i.i.i.sroa_idx.i.2, align 8, !tbaa !45
  %.sroa.6.0..09.i.i.i.i.i.i.sroa_idx.i.2 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 44
  store i8 0, ptr %.sroa.6.0..09.i.i.i.i.i.i.sroa_idx.i.2, align 4, !tbaa !305
  %i.ae = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 48
  store ptr null, ptr %i.ae, align 8, !tbaa !334
  %.sroa.5.0..09.i.i.i.i.i.i.sroa_idx.i.3 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 56
  store i32 0, ptr %.sroa.5.0..09.i.i.i.i.i.i.sroa_idx.i.3, align 8, !tbaa !45
  %.sroa.6.0..09.i.i.i.i.i.i.sroa_idx.i.3 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 60
  store i8 0, ptr %.sroa.6.0..09.i.i.i.i.i.i.sroa_idx.i.3, align 4, !tbaa !305
  %i.af = add i64 %.068.i.i.i.i.i.i.i, -4         ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i.3 = icmp eq i64 %i.af, 0
  br i1 %.not.i.i.i.i.i.i.i.3, label %_ZN13SubstVarEntryC2EP6AstVar.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !337

_ZN13SubstVarEntryC2EP6AstVar.exit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %_ZNSt12_Vector_baseIN13SubstVarEntry6RecordESaIS1_EEC2EmRKS2_.exit.thread.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN13SubstVarEntry6RecordESaIS1_EEC2EmRKS2_.exit.thread.i.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ], [ %i.ag, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %.0.lcssa.i.i.i.i.i.i.i, ptr %i.ah, align 8, !tbaa !338
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !326
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 48 ; 2 uses
  store ptr %i.aj, ptr %i.a, align 8, !tbaa !326
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_ZNSt5dequeI13SubstVarEntrySaIS0_EE16_M_push_back_auxIJRKP6AstVarEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !113, !noalias !339
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN13SubstVarEntryC2EP6AstVar.exit
  %i.ak = phi ptr [ %.pre, %bb.c ], [ %i.aj, %_ZN13SubstVarEntryC2EP6AstVar.exit ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !241, !noalias !339
  %i.an = icmp eq ptr %i.ak, %i.am
  br i1 %i.an, label %bb.e, label %_ZNSt5dequeI13SubstVarEntrySaIS0_EE4backEv.exit

bb.e:                                             ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !234, !noalias !339
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !213
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 480
  br label %_ZNSt5dequeI13SubstVarEntrySaIS0_EE4backEv.exit

_ZNSt5dequeI13SubstVarEntrySaIS0_EE4backEv.exit:  ; preds = %bb.d, %bb.e
  %i.at = phi ptr [ %i.as, %bb.e ], [ %i.ak, %bb.d ]
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 -48
  ret ptr %i.au
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK6VNUser7toNodepEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !42
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK6VNUser2toIP7AstNodeEENSt9enable_ifIXsr3std10is_pointerIT_EE5valueES4_E4typeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !42
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt5dequeI13SubstVarEntrySaIS0_EE16_M_push_back_auxIJRKP6AstVarEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !234  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !234
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = mul nsw i64 %i.l, 10
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !113
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !241
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = sdiv exact i64 %i.s, 48
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !233
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !113
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = sdiv exact i64 %i.aa, 48
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 192153584101141162
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !225
  %i.ag = load ptr, ptr %0, align 8, !tbaa !221
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.g, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = sub i64 %i.af, %i.aj
  %i.al = icmp ult i64 %i.ak, 2
  br i1 %i.al, label %bb.d, label %_ZNSt5dequeI13SubstVarEntrySaIS0_EE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeI13SubstVarEntrySaIS0_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %_ZNSt5dequeI13SubstVarEntrySaIS0_EE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeI13SubstVarEntrySaIS0_EE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %i.am = tail call noalias noundef nonnull dereferenceable(480) ptr @_Znwm(i64 noundef 480) #25
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !223
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !213
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !326 ; 7 uses
  %i.aq = load ptr, ptr %1, align 8, !tbaa !277   ; 2 uses
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !245
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr null, ptr %i.ar, align 8, !tbaa !9
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i32 0, ptr %i.as, align 8, !tbaa !16
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 20
  store i8 0, ptr %i.at, align 4, !tbaa !282
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 24 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 72
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !293 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIN13SubstVarEntry6RecordESaIS1_EEC2EmRKS2_.exit.thread.i.i, label %_ZNK7AstNode10widthWordsEv.exit.i

_ZNK7AstNode10widthWordsEv.exit.i:                ; preds = %_ZNSt5dequeI13SubstVarEntrySaIS0_EE22_M_reserve_map_at_backEm.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 152
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !294 ; 3 uses
  %i.az = add i32 %i.ay, 31
  %i.ba = sdiv i32 %i.az, 32                      ; 2 uses
  %i.bb = sext i32 %i.ba to i64                   ; 6 uses
  %i.bc = icmp slt i32 %i.ay, -62
  br i1 %i.bc, label %.noexc.i, label %_ZNSt6vectorIN13SubstVarEntry6RecordESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i

.noexc.i:                                         ; preds = %_ZNK7AstNode10widthWordsEv.exit.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #23
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %.noexc.i
  unreachable

_ZNSt6vectorIN13SubstVarEntry6RecordESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i: ; preds = %_ZNK7AstNode10widthWordsEv.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, i8 0, i64 24, i1 false)
  %i.bd = icmp slt i32 %i.ay, 1
  br i1 %i.bd, label %_ZNSt12_Vector_baseIN13SubstVarEntry6RecordESaIS1_EEC2EmRKS2_.exit.thread.i.i, label %_ZNSt12_Vector_baseIN13SubstVarEntry6RecordESaIS1_EEC2EmRKS2_.exit.i.i

_ZNSt12_Vector_baseIN13SubstVarEntry6RecordESaIS1_EEC2EmRKS2_.exit.thread.i.i: ; preds = %_ZNSt6vectorIN13SubstVarEntry6RecordESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i, %_ZNSt5dequeI13SubstVarEntrySaIS0_EE22_M_reserve_map_at_backEm.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, i8 0, i64 24, i1 false)
  br label %.loopexit

_ZNSt12_Vector_baseIN13SubstVarEntry6RecordESaIS1_EEC2EmRKS2_.exit.i.i: ; preds = %_ZNSt6vectorIN13SubstVarEntry6RecordESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i
  %i.be = shl nuw nsw i64 %i.bb, 4
  %i.bf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.be) #25
          to label %.noexc4 unwind label %bb.e    ; 4 uses

.noexc4:                                          ; preds = %_ZNSt12_Vector_baseIN13SubstVarEntry6RecordESaIS1_EEC2EmRKS2_.exit.i.i
  store ptr %i.bf, ptr %i.au, align 8, !tbaa !141
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %i.bb
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !327
  %i.bi = add nsw i64 %i.bb, -1
  %xtraiter = and i64 %i.bb, 3
  %i.bj = and i32 %i.ba, 3
  %lcmp.mod.not = icmp eq i32 %i.bj, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.noexc4, %.lr.ph.i.i.i.i.i.i.i.prol
  %.09.i.i.i.i.i.i.i.prol = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.bf, %.noexc4 ] ; 4 uses
  %.068.i.i.i.i.i.i.i.prol = phi i64 [ %i.bk, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.bb, %.noexc4 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.prol ], [ 0, %.noexc4 ]
  store ptr null, ptr %.09.i.i.i.i.i.i.i.prol, align 8, !tbaa !334
  %.sroa.5.0..09.i.i.i.i.i.i.sroa_idx.i.prol = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.prol, i64 8
  store i32 0, ptr %.sroa.5.0..09.i.i.i.i.i.i.sroa_idx.i.prol, align 8, !tbaa !45
  %.sroa.6.0..09.i.i.i.i.i.i.sroa_idx.i.prol = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.prol, i64 12
  store i8 0, ptr %.sroa.6.0..09.i.i.i.i.i.i.sroa_idx.i.prol, align 4, !tbaa !305
  %i.bk = add i64 %.068.i.i.i.i.i.i.i.prol, -1    ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.prol, i64 16 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol, !llvm.loop !342

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.noexc4
  %.lcssa.unr = phi ptr [ poison, %.noexc4 ], [ %i.bl, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.09.i.i.i.i.i.i.i.unr = phi ptr [ %i.bf, %.noexc4 ], [ %i.bl, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.068.i.i.i.i.i.i.i.unr = phi i64 [ %i.bb, %.noexc4 ], [ %i.bk, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.bm = icmp ult i64 %i.bi, 3
  br i1 %i.bm, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i = phi ptr [ %i.br, %.lr.ph.i.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 13 uses
  %.068.i.i.i.i.i.i.i = phi i64 [ %i.bq, %.lr.ph.i.i.i.i.i.i.i ], [ %.068.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  store ptr null, ptr %.09.i.i.i.i.i.i.i, align 8, !tbaa !334
  %.sroa.5.0..09.i.i.i.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 8
  store i32 0, ptr %.sroa.5.0..09.i.i.i.i.i.i.sroa_idx.i, align 8, !tbaa !45
  %.sroa.6.0..09.i.i.i.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 12
  store i8 0, ptr %.sroa.6.0..09.i.i.i.i.i.i.sroa_idx.i, align 4, !tbaa !305
  %i.bn = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 16
  store ptr null, ptr %i.bn, align 8, !tbaa !334
  %.sroa.5.0..09.i.i.i.i.i.i.sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 24
  store i32 0, ptr %.sroa.5.0..09.i.i.i.i.i.i.sroa_idx.i.1, align 8, !tbaa !45
  %.sroa.6.0..09.i.i.i.i.i.i.sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 28
  store i8 0, ptr %.sroa.6.0..09.i.i.i.i.i.i.sroa_idx.i.1, align 4, !tbaa !305
  %i.bo = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 32
  store ptr null, ptr %i.bo, align 8, !tbaa !334
  %.sroa.5.0..09.i.i.i.i.i.i.sroa_idx.i.2 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 40
  store i32 0, ptr %.sroa.5.0..09.i.i.i.i.i.i.sroa_idx.i.2, align 8, !tbaa !45
  %.sroa.6.0..09.i.i.i.i.i.i.sroa_idx.i.2 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 44
  store i8 0, ptr %.sroa.6.0..09.i.i.i.i.i.i.sroa_idx.i.2, align 4, !tbaa !305
  %i.bp = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 48
  store ptr null, ptr %i.bp, align 8, !tbaa !334
  %.sroa.5.0..09.i.i.i.i.i.i.sroa_idx.i.3 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 56
  store i32 0, ptr %.sroa.5.0..09.i.i.i.i.i.i.sroa_idx.i.3, align 8, !tbaa !45
  %.sroa.6.0..09.i.i.i.i.i.i.sroa_idx.i.3 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 60
  store i8 0, ptr %.sroa.6.0..09.i.i.i.i.i.i.sroa_idx.i.3, align 4, !tbaa !305
  %i.bq = add i64 %.068.i.i.i.i.i.i.i, -4         ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i.3 = icmp eq i64 %i.bq, 0
  br i1 %.not.i.i.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !337

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %_ZNSt12_Vector_baseIN13SubstVarEntry6RecordESaIS1_EEC2EmRKS2_.exit.thread.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN13SubstVarEntry6RecordESaIS1_EEC2EmRKS2_.exit.thread.i.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ], [ %i.br, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  store ptr %.0.lcssa.i.i.i.i.i.i.i, ptr %i.bs, align 8, !tbaa !338
  %i.bt = load ptr, ptr %i.c, align 8, !tbaa !223
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 2 uses
  store ptr %i.bu, ptr %i.c, align 8, !tbaa !234
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !213 ; 3 uses
  store ptr %i.bv, ptr %i.o, align 8, !tbaa !241
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 480
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bw, ptr %i.bx, align 8, !tbaa !233
  store ptr %i.bv, ptr %i.a, align 8, !tbaa !326
  ret void

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIN13SubstVarEntry6RecordESaIS1_EEC2EmRKS2_.exit.i.i, %.noexc.i
  %i.by = landingpad { ptr, i32 }
          catch ptr null
  %i.bz = extractvalue { ptr, i32 } %i.by, 0
  %i.ca = tail call ptr @__cxa_begin_catch(ptr %i.bz) #20 ; 0 uses
  %i.cb = load ptr, ptr %i.c, align 8, !tbaa !223
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !213
  tail call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef 480) #21
  invoke void @__cxa_rethrow() #23
          to label %bb.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.ce

bb.h:                                             ; preds = %bb.f
  %i.cf = landingpad { ptr, i32 }
          catch ptr null
  %i.cg = extractvalue { ptr, i32 } %i.cf, 0
  tail call void @__clang_call_terminate(ptr %i.cg) #24
  unreachable

bb.i:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZNK7AstNode5widthEv(ptr noundef nonnull align 8 dereferenceable(152) %0) #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !293  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.d = load i32, ptr %i.c, align 8, !tbaa !294
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ]
  ret i32 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7AstNode6dtypepEv(ptr noundef nonnull align 8 dereferenceable(152) %0) #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !293
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK12AstNodeDType5widthEv(ptr noundef nonnull align 8 dereferenceable(162) %0) #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load i32, ptr %i.a, align 8, !tbaa !294
  ret i32 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt5dequeI13SubstVarEntrySaIS0_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !223  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !222  ; 8 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = add nsw i64 %i.h, 1                      ; 3 uses
  %i.j = add i64 %i.i, %1                         ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !225  ; 5 uses
  %i.m = shl i64 %i.j, 1
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %0, align 8, !tbaa !221
  %i.p = sub i64 %i.l, %i.j
  %i.q = lshr i64 %i.p, 1
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.q
  %i.s = select i1 %2, i64 %1, i64 0
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s ; 10 uses
  %i.u = icmp ult ptr %i.t, %i.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.u, label %bb.c, label %bb.g
end_hunk_0
