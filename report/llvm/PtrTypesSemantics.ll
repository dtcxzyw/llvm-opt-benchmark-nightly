Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/PtrTypesSemantics?download=true
inline.NumInlined: 3179
inline.NumDeleted: 1723
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN5clang30TrivialFunctionAnalysisVisitor22VisitCXXMemberCallExprEPKNS_17CXXMemberCallExprE:bb.a
.critedge.i:                                      ; preds = %bb.b, %.lr.ph.i
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.012.018.i, i64 8 ; 2 uses
  %.not16.i = icmp eq ptr %i.o, %i.l
  br i1 %.not16.i, label %.loopexit, label %.lr.ph.i

.loopexit:                                        ; preds = %.critedge.i, %bb.a
  %i.p = tail call noundef ptr @_ZNK5clang17CXXMemberCallExpr25getImplicitObjectArgumentEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #18
  %i.q = tail call noundef zeroext i1 @_ZN5clang15StmtVisitorBaseIN4llvm14make_const_ptrENS_30TrivialFunctionAnalysisVisitorEbJEE5VisitEPKNS_4StmtE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.p)
  br i1 %i.q, label %bb.c, label %_ZN5clang30TrivialFunctionAnalysisVisitor14checkArgumentsEPKNS_8CallExprE.exit

bb.c:                                             ; preds = %.loopexit
  %i.r = tail call noundef ptr @_ZNK5clang17CXXMemberCallExpr13getMethodDeclEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #18 ; 6 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %_ZN5clang30TrivialFunctionAnalysisVisitor14checkArgumentsEPKNS_8CallExprE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 28
  %i.t = load i32, ptr %i.s, align 4
  %i.u = and i32 %i.t, 127
  %i.v = icmp eq i32 %i.u, 37
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = tail call i64 @_ZNK5clang17CXXMemberCallExpr13getObjectTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #18
  %i.x = tail call noundef zeroext i1 @_ZN5clang30TrivialFunctionAnalysisVisitor20CanTriviallyDestructENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 %i.w)
  br i1 %i.x, label %bb.f, label %_ZN5clang30TrivialFunctionAnalysisVisitor14checkArgumentsEPKNS_8CallExprE.exit

bb.f:                                             ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !646)
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.y, align 8, !tbaa !104, !noalias !646 ; 3 uses
  %i.z = and i64 %.sroa.0.0.copyload.i.i, 7
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.g, label %_ZN5clang11safeGetNameINS_13CXXMethodDeclEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKT_.exit.thread

_ZN5clang11safeGetNameINS_13CXXMethodDeclEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKT_.exit.thread: ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.ab, ptr %2, align 8, !tbaa !106, !alias.scope !646
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.ac, align 8, !tbaa !108, !alias.scope !646
  store i8 0, ptr %i.ab, align 8, !tbaa !27, !alias.scope !646
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit7.thread12

bb.g:                                             ; preds = %bb.f
  %.not2.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not2.i.i, label %._crit_edge.i.i.i.thread.i, label %bb.h

._crit_edge.i.i.i.thread.i:                       ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !647)
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.ad, ptr %2, align 8, !tbaa !106, !alias.scope !648
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18, !noalias !648
  store i64 0, ptr %i.b, align 8, !tbaa !104, !noalias !648
  br label %_ZN5clang11safeGetNameINS_13CXXMethodDeclEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKT_.exit

bb.h:                                             ; preds = %bb.g
  %i.ae = inttoptr i64 %.sroa.0.0.copyload.i.i to ptr
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !111, !noalias !646 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !113, !noalias !646 ; 2 uses
  %i.aj = and i64 %i.ai, 4294967295               ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !649)
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.ak, ptr %2, align 8, !tbaa !106, !alias.scope !650
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18, !noalias !650
  store i64 %i.aj, ptr %i.b, align 8, !tbaa !104, !noalias !650
  %i.al = icmp samesign ugt i64 %i.aj, 15
  br i1 %i.al, label %bb.i, label %._crit_edge.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.am = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #18 ; 2 uses
  store ptr %i.am, ptr %2, align 8, !tbaa !114, !alias.scope !650
  %i.an = load i64, ptr %i.b, align 8, !tbaa !104, !noalias !650
  store i64 %i.an, ptr %i.ak, align 8, !tbaa !27, !alias.scope !650
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.i, %bb.h
  %i.ao = phi ptr [ %i.am, %bb.i ], [ %i.ak, %bb.h ] ; 2 uses
  %trunc.i = trunc i64 %i.ai to i32
  switch i32 %trunc.i, label %bb.k [
    i32 1, label %bb.j
    i32 0, label %_ZN5clang11safeGetNameINS_13CXXMethodDeclEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKT_.exit
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ap = load i8, ptr %i.ah, align 8, !tbaa !27
  store i8 %i.ap, ptr %i.ao, align 1, !tbaa !27
  br label %_ZN5clang11safeGetNameINS_13CXXMethodDeclEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKT_.exit

bb.k:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ao, ptr nonnull align 8 %i.ah, i64 %i.aj, i1 false)
  br label %_ZN5clang11safeGetNameINS_13CXXMethodDeclEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKT_.exit

_ZN5clang11safeGetNameINS_13CXXMethodDeclEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKT_.exit: ; preds = %._crit_edge.i.i.i.thread.i, %._crit_edge.i.i.i.i, %bb.j, %bb.k
  %i.aq = load i64, ptr %i.b, align 8, !tbaa !104, !noalias !650 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !108, !alias.scope !650
  %i.as = load ptr, ptr %2, align 8, !tbaa !114, !alias.scope !650
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aq
  store i8 0, ptr %i.at, align 1, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18, !noalias !650
  %.pre = load i64, ptr %i.ar, align 8, !tbaa !108
  switch i64 %.pre, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit7.thread12 [
    i64 3, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 24, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit7
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZN5clang11safeGetNameINS_13CXXMethodDeclEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKT_.exit
  %i.au = load ptr, ptr %2, align 8, !tbaa !114   ; 2 uses
  %i.av = load i16, ptr %i.au, align 1
  %i.aw = xor i16 %i.av, 25970
  %i.ax = getelementptr i8, ptr %i.au, i64 2
  %i.ay = load i8, ptr %i.ax, align 1
  %i.az = zext i8 %i.ay to i16
  %i.ba = xor i16 %i.az, 102
  %i.bb = or i16 %i.aw, %i.ba
  %i.bc = icmp ne i16 %i.bb, 0
  %i.bd = zext i1 %i.bc to i32
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit7.thread12

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit7: ; preds = %_ZN5clang11safeGetNameINS_13CXXMethodDeclEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKT_.exit
  %i.bf = load ptr, ptr %2, align 8, !tbaa !114   ; 2 uses
  %i.bg = load i128, ptr %i.bf, align 1
  %i.bh = xor i128 %i.bg, 133449399654003317345294393065232100969
  %i.bi = getelementptr i8, ptr %i.bf, i64 16
  %i.bj = load i64, ptr %i.bi, align 1
  %i.bk = zext i64 %i.bj to i128
  %i.bl = xor i128 %i.bk, 8389772276571206736
  %i.bm = or i128 %i.bh, %i.bl
  %i.bn = icmp ne i128 %i.bm, 0
  %i.bo = zext i1 %i.bn to i32
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit7.thread12

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit7.thread12: ; preds = %_ZN5clang11safeGetNameINS_13CXXMethodDeclEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKT_.exit.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZN5clang11safeGetNameINS_13CXXMethodDeclEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKT_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit7
  %i.bq = call i16 @_ZN5clang17isGetterOfSafePtrEPKNS_13CXXMethodDeclE(ptr noundef nonnull %i.r)
  %i.br = trunc i16 %i.bq to i1
  br i1 %i.br, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.l

bb.l:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit7.thread12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.r, ptr %i.a, align 8, !tbaa !200
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !202
  store ptr null, ptr %i.bs, align 8, !tbaa !202
  %i.bu = call noundef zeroext i1 @_ZN5clang30TrivialFunctionAnalysisVisitor16WithCachedResultINS_4DeclEZNS0_17IsFunctionTrivialEPKS2_EUlvE_EEbPKT_T0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %i.r, ptr nonnull %i.a, ptr nonnull align 8 dereferenceable(64) %0), !inline_history !3
  store ptr %i.bt, ptr %i.bs, align 8, !tbaa !206
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit7.thread12, %bb.l, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit7
  %.1 = phi i1 [ %i.bu, %bb.l ], [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit7 ], [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit7.thread12 ]
  %i.bv = load ptr, ptr %2, align 8, !tbaa !114   ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.by = load i64, ptr %i.bw, align 8, !tbaa !27
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.bz) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %_ZN5clang30TrivialFunctionAnalysisVisitor14checkArgumentsEPKNS_8CallExprE.exit

_ZN5clang30TrivialFunctionAnalysisVisitor14checkArgumentsEPKNS_8CallExprE.exit: ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.c, %bb.e, %.loopexit
  %.4 = phi i1 [ false, %bb.e ], [ false, %.loopexit ], [ %.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ false, %bb.c ], [ false, %bb.b ]
  ret i1 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5clang30TrivialFunctionAnalysisVisitor22VisitCXXDefaultArgExprEPKNS_17CXXDefaultArgExprE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN5clang17CXXDefaultArgExpr7getExprEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #18 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZN5clang15StmtVisitorBaseIN4llvm14make_const_ptrENS_30TrivialFunctionAnalysisVisitorEbJEE5VisitEPKNS_4StmtE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %i.a)
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.1 = phi i1 [ true, %bb.c ], [ false, %bb.b ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5clang30TrivialFunctionAnalysisVisitor21VisitCXXConstructExprEPKNS_16CXXConstructExprE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = load i16, ptr %1, align 8
  %i.c = and i16 %i.b, 511
  %.not.i.i.i.i = icmp eq i16 %i.c, 118           ; 2 uses
  %spec.select.i.i.i.i.i.i = select i1 %.not.i.i.i.i, ptr %1, ptr null
  %2 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i.i, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i, ptr %2, ptr %i.d ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !652  ; 2 uses
  %i.g = zext i32 %i.f to i64
  %.idx = shl nuw nsw i64 %i.g, 3
  %i.h = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i, i64 %.idx
  %.not1819 = icmp eq i32 %i.f, 0
  br i1 %.not1819, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.critedge
  %.sroa.013.020 = phi ptr [ %i.k, %.critedge ], [ %spec.select.i.i.i.i, %bb.a ] ; 2 uses
  %i.i = load ptr, ptr %.sroa.013.020, align 8, !tbaa !248 ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = tail call noundef zeroext i1 @_ZN5clang15StmtVisitorBaseIN4llvm14make_const_ptrENS_30TrivialFunctionAnalysisVisitorEbJEE5VisitEPKNS_4StmtE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %i.i)
  br i1 %i.j, label %.critedge, label %.loopexit

.critedge:                                        ; preds = %bb.b, %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.013.020, i64 8 ; 2 uses
  %.not18 = icmp eq ptr %i.k, %i.h
  br i1 %.not18, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.critedge, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !653  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.m, ptr %i.a, align 8, !tbaa !200
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !202
  store ptr null, ptr %i.n, align 8, !tbaa !202
  %i.p = call noundef zeroext i1 @_ZN5clang30TrivialFunctionAnalysisVisitor16WithCachedResultINS_4DeclEZNS0_17IsFunctionTrivialEPKS2_EUlvE_EEbPKT_T0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %i.m, ptr nonnull %i.a, ptr nonnull align 8 dereferenceable(64) %0), !inline_history !3
  store ptr %i.o, ptr %i.n, align 8, !tbaa !206
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %._crit_edge
  %.3 = phi i1 [ %i.p, %._crit_edge ], [ false, %bb.b ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5clang30TrivialFunctionAnalysisVisitor25VisitCXXBindTemporaryExprEPKNS_20CXXBindTemporaryExprE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !654  ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !657  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8, !tbaa !200
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !202
  store ptr null, ptr %i.e, align 8, !tbaa !202
  %i.g = call noundef zeroext i1 @_ZN5clang30TrivialFunctionAnalysisVisitor16WithCachedResultINS_4DeclEZNS0_17IsFunctionTrivialEPKS2_EUlvE_EEbPKT_T0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %i.d, ptr nonnull %i.a, ptr nonnull align 8 dereferenceable(64) %0), !inline_history !3
  store ptr %i.f, ptr %i.e, align 8, !tbaa !206
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !251
  %i.j = call noundef zeroext i1 @_ZN5clang15StmtVisitorBaseIN4llvm14make_const_ptrENS_30TrivialFunctionAnalysisVisitorEbJEE5VisitEPKNS_4StmtE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.i)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.1 = phi i1 [ %i.j, %bb.c ], [ false, %bb.b ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5clang30TrivialFunctionAnalysisVisitor19VisitBinaryOperatorEPKNS_14BinaryOperatorE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !248
  %i.c = tail call noundef zeroext i1 @_ZN5clang15StmtVisitorBaseIN4llvm14make_const_ptrENS_30TrivialFunctionAnalysisVisitorEbJEE5VisitEPKNS_4StmtE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.b)
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !248
  %i.f = tail call noundef zeroext i1 @_ZN5clang15StmtVisitorBaseIN4llvm14make_const_ptrENS_30TrivialFunctionAnalysisVisitorEbJEE5VisitEPKNS_4StmtE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.e)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = phi i1 [ false, %bb.a ], [ %i.f, %bb.b ]
  ret i1 %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5clang30TrivialFunctionAnalysisVisitor22VisitArrayInitLoopExprEPKNS_17ArrayInitLoopExprE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !248
  %i.c = tail call noundef zeroext i1 @_ZN5clang15StmtVisitorBaseIN4llvm14make_const_ptrENS_30TrivialFunctionAnalysisVisitorEbJEE5VisitEPKNS_4StmtE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.b)
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !248
  %i.f = tail call noundef zeroext i1 @_ZN5clang15StmtVisitorBaseIN4llvm14make_const_ptrENS_30TrivialFunctionAnalysisVisitorEbJEE5VisitEPKNS_4StmtE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.e)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = phi i1 [ false, %bb.a ], [ %i.f, %bb.b ]
  ret i1 %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5clang30TrivialFunctionAnalysisVisitor13VisitDeclStmtEPKNS_8DeclStmtE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !659  ; 2 uses
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = and i64 %i.d, 1
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i = icmp eq ptr %i.c, null            ; 2 uses
  %i.g = select i1 %.not.i.i.i, ptr null, ptr %i.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = select i1 %.not.i.i.i, ptr null, ptr %i.h
  br label %_ZNK5clang8DeclStmt5declsEv.exit

bb.c:                                             ; preds = %bb.a
  %i.j = and i64 %i.d, -2
  %i.k = inttoptr i64 %i.j to ptr                 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.m = load i32, ptr %i.k, align 8, !tbaa !661
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.n
  br label %_ZNK5clang8DeclStmt5declsEv.exit

_ZNK5clang8DeclStmt5declsEv.exit:                 ; preds = %bb.b, %bb.c
  %.0.i.i.i = phi ptr [ %i.g, %bb.b ], [ %i.l, %bb.c ] ; 2 uses
  %.0.i.i1.i = phi ptr [ %i.i, %bb.b ], [ %i.o, %bb.c ] ; 2 uses
  %.not23 = icmp eq ptr %.0.i.i.i, %.0.i.i1.i
  br i1 %.not23, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK5clang8DeclStmt5declsEv.exit, %.critedge
  %.01624 = phi ptr [ %i.w, %.critedge ], [ %.0.i.i.i, %_ZNK5clang8DeclStmt5declsEv.exit ] ; 2 uses
  %i.p = load ptr, ptr %.01624, align 8, !tbaa !200 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 28
  %i.r = load i32, ptr %i.q, align 4
  %i.s = and i32 %i.r, 127
  %i.t = add nsw i32 %i.s, -48
  %i.u = icmp ult i32 %i.t, -7
  %.not2022 = icmp eq ptr %i.p, null
  %.not20 = or i1 %.not2022, %i.u
  br i1 %.not20, label %.critedge, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.p, ptr %i.a, align 8, !tbaa !219
  %i.v = call noundef zeroext i1 @_ZN5clang30TrivialFunctionAnalysisVisitor16WithCachedResultINS_7VarDeclEZNS0_20HasTrivialDestructorEPKS2_EUlvE_EEbPKT_T0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %i.p, ptr nonnull align 8 dereferenceable(64) %0, ptr nonnull %i.a), !inline_history !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.v, label %.critedge, label %.loopexit

.critedge:                                        ; preds = %bb.d, %.lr.ph
  %i.w = getelementptr inbounds nuw i8, ptr %.01624, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.w, %.0.i.i1.i
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.critedge, %_ZNK5clang8DeclStmt5declsEv.exit
  %i.x = call noundef zeroext i1 @_ZN5clang30TrivialFunctionAnalysisVisitor13VisitChildrenEPKNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %1)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %._crit_edge
  %.3 = phi i1 [ %i.x, %._crit_edge ], [ false, %bb.d ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5clang30TrivialFunctionAnalysisVisitor15VisitGCCAsmStmtEPKNS_10GCCAsmStmtE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @_ZNK5clang10GCCAsmStmt12getAsmStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(84) %1) #18
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !108  ; 2 uses
  %i.c = icmp eq i64 %i.b, 11
  %.pre = load ptr, ptr %2, align 8, !tbaa !114   ; 4 uses
  br i1 %i.c, label %bb.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %.pre, align 1
  %i.e = xor i64 %i.d, 7167531734386045538
  %i.f = getelementptr i8, ptr %.pre, i64 3
  %i.g = load i64, ptr %i.f, align 1
  %i.h = xor i64 %i.g, 3546360833400382240
  %i.i = or i64 %i.e, %i.h
  %i.j = icmp ne i64 %i.i, 0
  %i.k = zext i1 %i.j to i32
  %i.l = icmp eq i32 %i.k, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a, %bb.b
  %i.m = phi i1 [ false, %bb.a ], [ %i.l, %bb.b ]
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.o = icmp eq ptr %.pre, %i.n
  br i1 %i.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.p = icmp ult i64 %i.b, 16
  call void @llvm.assume(i1 %i.p)
end_hunk_0
