Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/InstrProf?download=true
inline.NumInlined: 4936
inline.NumDeleted: 2214
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 40
loop-unroll.NumUnrolled: 54
begin_hunk_0_@_ZN4llvm14getPGOFuncNameB5cxx11ENS_9StringRefENS_11GlobalValue12LinkageTypesES0_m:bb.a
  store i8 0, ptr %i.o, align 1, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  %i.p = add i32 %3, -7
  %spec.select.i = icmp ult i32 %i.p, 2
  br i1 %spec.select.i, label %bb.e, label %bb.m

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit
  %i.q = icmp eq i64 %5, 0
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.15, i64 noundef 10) #32
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.r) #32
  br label %bb.m

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !72)
  %.not.i = icmp eq ptr %4, null
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  store ptr %i.s, ptr %8, align 8, !tbaa !24, !alias.scope !72
  br i1 %.not.i, label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit.thread, label %bb.h

_ZNK4llvm9StringRef3strB5cxx11Ev.exit.thread:     ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.t, align 8, !tbaa !27, !alias.scope !72
  store i8 0, ptr %i.s, align 8, !tbaa !30, !alias.scope !72
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32, !noalias !72
  store i64 %5, ptr %i.a, align 8, !tbaa !51, !noalias !72
  %i.u = icmp ugt i64 %5, 15
  br i1 %i.u, label %._crit_edge.i.i.i.thread, label %._crit_edge.i.i.i

._crit_edge.i.i.i.thread:                         ; preds = %bb.h
  %i.v = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #32 ; 2 uses
  store ptr %i.v, ptr %8, align 8, !tbaa !47, !alias.scope !72
  %i.w = load i64, ptr %i.a, align 8, !tbaa !51, !noalias !72
  store i64 %i.w, ptr %i.s, align 8, !tbaa !30, !alias.scope !72
  br label %bb.j

._crit_edge.i.i.i:                                ; preds = %bb.h
  %cond = icmp eq i64 %5, 1
  br i1 %cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i.i
  %i.x = load i8, ptr %4, align 1, !tbaa !30
  store i8 %i.x, ptr %i.s, align 8, !tbaa !30
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit

bb.j:                                             ; preds = %._crit_edge.i.i.i.thread, %._crit_edge.i.i.i
  %i.y = phi ptr [ %i.v, %._crit_edge.i.i.i.thread ], [ %i.s, %._crit_edge.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr nonnull align 1 %4, i64 %5, i1 false)
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit

_ZNK4llvm9StringRef3strB5cxx11Ev.exit:            ; preds = %bb.i, %bb.j
  %i.z = load i64, ptr %i.a, align 8, !tbaa !51, !noalias !72 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !27, !alias.scope !72
  %i.ab = load ptr, ptr %8, align 8, !tbaa !47, !alias.scope !72
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.z
  store i8 0, ptr %i.ac, align 1, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32, !noalias !72
  %.pre = load i64, ptr %i.aa, align 8, !tbaa !27, !noalias !75
  %i.ad = icmp eq i64 %.pre, 4611686018427387903
  call void @llvm.experimental.noalias.scope.decl(metadata !75)
  br i1 %i.ad, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.k:                                             ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.122) #33, !noalias !75
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit.thread, %_ZNK4llvm9StringRef3strB5cxx11Ev.exit
  %i.ae = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.16, i64 noundef 1) #32, !noalias !75 ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.af, ptr %7, align 8, !tbaa !24, !alias.scope !75
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !47 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 5 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !27 ; 3 uses
  %i.al = icmp ult i64 %i.ak, 16
  call void @llvm.assume(i1 %i.al)
  %i.am = add nuw nsw i64 %i.ak, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.af, ptr noundef nonnull align 8 dereferenceable(1) %i.ah, i64 %i.am, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.ag, ptr %7, align 8, !tbaa !47, !alias.scope !75
  %i.an = load i64, ptr %i.ah, align 8, !tbaa !30
  store i64 %i.an, ptr %i.af, align 8, !tbaa !30, !alias.scope !75
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !27
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ao = phi ptr [ %i.af, %bb.l ], [ %i.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ap = phi i64 [ %i.ak, %bb.l ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.ap, ptr %i.ar, align 8, !tbaa !27, !alias.scope !75
  store ptr %i.ah, ptr %i.ae, align 8, !tbaa !47
  store i64 0, ptr %i.aq, align 8, !tbaa !27
  store i8 0, ptr %i.ah, align 8, !tbaa !30
  %i.as = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.ao, i64 noundef %i.ap) #32
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.as) #32
  %i.at = load ptr, ptr %7, align 8, !tbaa !47    ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.af
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit
  %i.av = load i64, ptr %i.af, align 8, !tbaa !30
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  %i.ax = load ptr, ptr %8, align 8, !tbaa !47    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !30
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4, %bb.f
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm16getIRPGOFuncNameB5cxx11ERKNS_8FunctionEb(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(140) %1, i1 noundef zeroext %2) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !78
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZN4llvm22getPGOFuncNameMetadataERKNS_8FunctionE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZNK4llvm5Value11getMetadataENS_9StringRefE(ptr noundef nonnull readonly align 8 dereferenceable(140) %1, ptr nonnull @.str.134, i64 11) #35
  br label %_ZN4llvm22getPGOFuncNameMetadataERKNS_8FunctionE.exit

_ZN4llvm22getPGOFuncNameMetadataERKNS_8FunctionE.exit: ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  tail call fastcc void @_ZN4llvmL18getIRPGOObjectNameB5cxx11ERKNS_12GlobalObjectEbPNS_6MDNodeE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(60) %1, i1 noundef zeroext %2, ptr noundef %i.d)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4llvmL18getIRPGOObjectNameB5cxx11ERKNS_12GlobalObjectEbPNS_6MDNodeE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(60) %1, i1 noundef zeroext %2, ptr nofree noundef readonly captures(address_is_null) %3) unnamed_addr #3 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::optional.25", align 8  ; 9 uses
  br i1 %2, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val = load ptr, ptr %i.b, align 8, !tbaa !89  ; 2 uses
  %i.c = getelementptr i8, ptr %.val, i64 184
  %.val.val = load ptr, ptr %i.c, align 8, !tbaa !47 ; 4 uses
  %i.d = getelementptr i8, ptr %.val, i64 192
  %.val.val7 = load i64, ptr %i.d, align 8, !tbaa !27 ; 5 uses
  %i.e = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL26StaticFuncFullModulePrefix, i64 120), align 8, !tbaa !90, !range !18, !noundef !19 ; 2 uses
  %i.f = xor i8 %i.e, 1
  %i.g = zext nneg i8 %i.f to i32
  %i.h = sub nsw i32 0, %i.g
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL28StaticFuncStripDirNamePrefix, i64 120), align 8, !tbaa !96 ; 2 uses
  %i.j = icmp ugt i32 %i.i, %i.h
  br i1 %i.j, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.not.i, label %.thread.i, label %_ZN4llvmL25getStrippedSourceFileNameERKNS_12GlobalObjectE.exit

.thread.i:                                        ; preds = %bb.c, %bb.b
  %.04.i = phi i32 [ -1, %bb.c ], [ %i.i, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %.val.val, i64 %.val.val7
  %.not23.i.i = icmp samesign eq i64 %.val.val7, 0
  br i1 %.not23.i.i, label %_ZN4llvmL14stripDirPrefixENS_9StringRefEj.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.thread.i, %.lr.ph.i.i
  %.01327.i.i = phi ptr [ %i.p, %.lr.ph.i.i ], [ %.val.val, %.thread.i ] ; 2 uses
  %.01426.i.i = phi i32 [ %spec.select19.i.i, %.lr.ph.i.i ], [ 0, %.thread.i ]
  %.01525.i.i = phi i32 [ %i.l, %.lr.ph.i.i ], [ 0, %.thread.i ]
  %.01624.i.i = phi i32 [ %spec.select.i.i, %.lr.ph.i.i ], [ %.04.i, %.thread.i ]
  %i.l = add nuw nsw i32 %.01525.i.i, 1           ; 2 uses
  %i.m = load i8, ptr %.01327.i.i, align 1, !tbaa !30
  %i.n = tail call noundef zeroext i1 @_ZN4llvm3sys4path12is_separatorEcNS1_5StyleE(i8 noundef signext %i.m, i32 noundef 0) #32 ; 2 uses
  %i.o = sext i1 %i.n to i32
  %spec.select.i.i = add i32 %.01624.i.i, %i.o    ; 2 uses
  %spec.select19.i.i = select i1 %i.n, i32 %i.l, i32 %.01426.i.i ; 2 uses
  %.not18.i.i = icmp eq i32 %spec.select.i.i, 0
  %i.p = getelementptr inbounds nuw i8, ptr %.01327.i.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, %i.k
  %or.cond.i.i = select i1 %.not18.i.i, i1 true, i1 %.not.i.i
  br i1 %or.cond.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %i.q = zext i32 %spec.select19.i.i to i64
  %i.r = tail call i64 @llvm.umin.i64(i64 %.val.val7, i64 %i.q)
  br label %_ZN4llvmL14stripDirPrefixENS_9StringRefEj.exit.i

_ZN4llvmL14stripDirPrefixENS_9StringRefEj.exit.i: ; preds = %._crit_edge.loopexit.i.i, %.thread.i
  %.2.i.i = phi i64 [ 0, %.thread.i ], [ %i.r, %._crit_edge.loopexit.i.i ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val.val, i64 %.2.i.i
  %i.t = sub i64 %.val.val7, %.2.i.i
  br label %_ZN4llvmL25getStrippedSourceFileNameERKNS_12GlobalObjectE.exit

_ZN4llvmL25getStrippedSourceFileNameERKNS_12GlobalObjectE.exit: ; preds = %bb.c, %_ZN4llvmL14stripDirPrefixENS_9StringRefEj.exit.i
  %.sroa.4.0.i = phi i64 [ %.val.val7, %bb.c ], [ %i.t, %_ZN4llvmL14stripDirPrefixENS_9StringRefEj.exit.i ]
  %.sroa.0.0.i = phi ptr [ %.val.val, %bb.c ], [ %i.s, %_ZN4llvmL14stripDirPrefixENS_9StringRefEj.exit.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.v = load i32, ptr %i.u, align 8
  %i.w = and i32 %i.v, 15
  %i.x = tail call { ptr, i64 } @_ZNK4llvm5Value7getNameEv(ptr noundef nonnull align 8 dereferenceable(60) %1) #32, !noalias !101 ; 2 uses
  %i.y = extractvalue { ptr, i64 } %i.x, 0
  %i.z = extractvalue { ptr, i64 } %i.x, 1
  tail call void @_ZN4llvm11GlobalValue19getGlobalIdentifierB5cxx11ENS_9StringRefENS0_12LinkageTypesES1_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr %i.y, i64 %i.z, i32 noundef %i.w, ptr %.sroa.0.0.i, i64 %.sroa.4.0.i) #32
  br label %bb.l

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  call fastcc void @_ZN4llvmL25lookupPGONameFromMetadataB5cxx11EPNS_6MDNodeE(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef %3)
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !104, !range !18, !noundef !19
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.ad, ptr %0, align 8, !tbaa !24
  %i.ae = load ptr, ptr %4, align 8, !tbaa !47    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !27 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store i64 %i.ag, ptr %i.a, align 8, !tbaa !51
  %i.ah = icmp ugt i64 %i.ag, 15
  br i1 %i.ah, label %bb.f, label %._crit_edge.i.i

bb.f:                                             ; preds = %bb.e
  %i.ai = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #32 ; 2 uses
  store ptr %i.ai, ptr %0, align 8, !tbaa !47
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !51
  store i64 %i.aj, ptr %i.ad, align 8, !tbaa !30
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.f, %bb.e
  %i.ak = phi ptr [ %i.ai, %bb.f ], [ %i.ad, %bb.e ] ; 2 uses
  switch i64 %i.ag, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %bb.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.al = load i8, ptr %i.ae, align 1, !tbaa !30
  store i8 %i.al, ptr %i.ak, align 1, !tbaa !30
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ak, ptr align 1 %i.ae, i64 %i.ag, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %._crit_edge.i.i
  %i.am = load i64, ptr %i.a, align 8, !tbaa !51  ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.am, ptr %i.an, align 8, !tbaa !27
  %i.ao = load ptr, ptr %0, align 8, !tbaa !47
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.am
  store i8 0, ptr %i.ap, align 1, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %.pre = load i8, ptr %i.aa, align 8, !tbaa !104, !range !18
  %i.aq = trunc nuw i8 %.pre to i1
  store i8 0, ptr %i.aa, align 8, !tbaa !104
  br i1 %i.aq, label %bb.j, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.ar = load ptr, ptr %4, align 8, !tbaa !47    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.j
  %i.au = load i64, ptr %i.as, align 8, !tbaa !30
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #34
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.thread

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.thread: ; preds = %bb.j, %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %bb.l

bb.k:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  %i.aw = call { ptr, i64 } @_ZNK4llvm5Value7getNameEv(ptr noundef nonnull align 8 dereferenceable(60) %1) #32, !noalias !106 ; 2 uses
  %i.ax = extractvalue { ptr, i64 } %i.aw, 0
  %i.ay = extractvalue { ptr, i64 } %i.aw, 1
  call void @_ZN4llvm11GlobalValue19getGlobalIdentifierB5cxx11ENS_9StringRefENS0_12LinkageTypesES1_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr %i.ax, i64 %i.ay, i32 noundef 0, ptr nonnull @.str.17, i64 0) #32
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.thread, %bb.k, %_ZN4llvmL25getStrippedSourceFileNameERKNS_12GlobalObjectE.exit
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local noundef ptr @_ZN4llvm22getPGOFuncNameMetadataERKNS_8FunctionE(ptr nofree noundef nonnull readonly align 8 dereferenceable(140) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !78
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZNK4llvm12GlobalObject11getMetadataENS_9StringRefE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZNK4llvm5Value11getMetadataENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr nonnull @.str.134, i64 11) #35
  br label %_ZNK4llvm12GlobalObject11getMetadataENS_9StringRefE.exit

_ZNK4llvm12GlobalObject11getMetadataENS_9StringRefE.exit: ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  ret ptr %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm14getPGOFuncNameB5cxx11ERKNS_8FunctionEbm(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(140) %1, i1 noundef zeroext %2, i64 %3) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::optional.25", align 8  ; 9 uses
  br i1 %2, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val = load ptr, ptr %i.c, align 8, !tbaa !89  ; 2 uses
  %i.d = getelementptr i8, ptr %.val, i64 184
  %.val.val = load ptr, ptr %i.d, align 8, !tbaa !47 ; 4 uses
  %i.e = getelementptr i8, ptr %.val, i64 192
  %.val.val12 = load i64, ptr %i.e, align 8, !tbaa !27 ; 5 uses
  %i.f = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL26StaticFuncFullModulePrefix, i64 120), align 8, !tbaa !90, !range !18, !noundef !19 ; 2 uses
  %i.g = xor i8 %i.f, 1
  %i.h = zext nneg i8 %i.g to i32
  %i.i = sub nsw i32 0, %i.h
  %i.j = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL28StaticFuncStripDirNamePrefix, i64 120), align 8, !tbaa !96 ; 2 uses
  %i.k = icmp ugt i32 %i.j, %i.i
  br i1 %i.k, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.not.i = icmp eq i8 %i.f, 0
  br i1 %.not.not.i, label %.thread.i, label %_ZN4llvmL25getStrippedSourceFileNameERKNS_12GlobalObjectE.exit

.thread.i:                                        ; preds = %bb.c, %bb.b
  %.04.i = phi i32 [ -1, %bb.c ], [ %i.j, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %.val.val, i64 %.val.val12
  %.not23.i.i = icmp samesign eq i64 %.val.val12, 0
  br i1 %.not23.i.i, label %_ZN4llvmL14stripDirPrefixENS_9StringRefEj.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.thread.i, %.lr.ph.i.i
  %.01327.i.i = phi ptr [ %i.q, %.lr.ph.i.i ], [ %.val.val, %.thread.i ] ; 2 uses
  %.01426.i.i = phi i32 [ %spec.select19.i.i, %.lr.ph.i.i ], [ 0, %.thread.i ]
  %.01525.i.i = phi i32 [ %i.m, %.lr.ph.i.i ], [ 0, %.thread.i ]
  %.01624.i.i = phi i32 [ %spec.select.i.i, %.lr.ph.i.i ], [ %.04.i, %.thread.i ]
  %i.m = add nuw nsw i32 %.01525.i.i, 1           ; 2 uses
  %i.n = load i8, ptr %.01327.i.i, align 1, !tbaa !30
  %i.o = tail call noundef zeroext i1 @_ZN4llvm3sys4path12is_separatorEcNS1_5StyleE(i8 noundef signext %i.n, i32 noundef 0) #32 ; 2 uses
  %i.p = sext i1 %i.o to i32
  %spec.select.i.i = add i32 %.01624.i.i, %i.p    ; 2 uses
  %spec.select19.i.i = select i1 %i.o, i32 %i.m, i32 %.01426.i.i ; 2 uses
  %.not18.i.i = icmp eq i32 %spec.select.i.i, 0
  %i.q = getelementptr inbounds nuw i8, ptr %.01327.i.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, %i.l
  %or.cond.i.i = select i1 %.not18.i.i, i1 true, i1 %.not.i.i
  br i1 %or.cond.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %i.r = zext i32 %spec.select19.i.i to i64
  %i.s = tail call i64 @llvm.umin.i64(i64 %.val.val12, i64 %i.r)
  br label %_ZN4llvmL14stripDirPrefixENS_9StringRefEj.exit.i

_ZN4llvmL14stripDirPrefixENS_9StringRefEj.exit.i: ; preds = %._crit_edge.loopexit.i.i, %.thread.i
  %.2.i.i = phi i64 [ 0, %.thread.i ], [ %i.s, %._crit_edge.loopexit.i.i ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val.val, i64 %.2.i.i
  %i.u = sub i64 %.val.val12, %.2.i.i
  br label %_ZN4llvmL25getStrippedSourceFileNameERKNS_12GlobalObjectE.exit

_ZN4llvmL25getStrippedSourceFileNameERKNS_12GlobalObjectE.exit: ; preds = %bb.c, %_ZN4llvmL14stripDirPrefixENS_9StringRefEj.exit.i
  %.sroa.4.0.i = phi i64 [ %.val.val12, %bb.c ], [ %i.u, %_ZN4llvmL14stripDirPrefixENS_9StringRefEj.exit.i ]
  %.sroa.0.0.i = phi ptr [ %.val.val, %bb.c ], [ %i.t, %_ZN4llvmL14stripDirPrefixENS_9StringRefEj.exit.i ]
  %i.v = tail call { ptr, i64 } @_ZNK4llvm5Value7getNameEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #32 ; 2 uses
  %i.w = extractvalue { ptr, i64 } %i.v, 0
  %i.x = extractvalue { ptr, i64 } %i.v, 1
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.z = load i32, ptr %i.y, align 8
  %i.aa = and i32 %i.z, 15
  tail call void @_ZN4llvm14getPGOFuncNameB5cxx11ENS_9StringRefENS_11GlobalValue12LinkageTypesES0_m(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr %i.w, i64 %i.x, i32 noundef %i.aa, ptr %.sroa.0.0.i, i64 %.sroa.4.0.i, i64 poison)
  br label %bb.p

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !78
  %.not.i.i13 = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i13, label %_ZN4llvm22getPGOFuncNameMetadataERKNS_8FunctionE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = tail call noundef ptr @_ZNK4llvm5Value11getMetadataENS_9StringRefE(ptr noundef nonnull readonly align 8 dereferenceable(140) %1, ptr nonnull @.str.134, i64 11) #35
  br label %_ZN4llvm22getPGOFuncNameMetadataERKNS_8FunctionE.exit

_ZN4llvm22getPGOFuncNameMetadataERKNS_8FunctionE.exit: ; preds = %bb.d, %bb.e
  %i.ae = phi ptr [ %i.ad, %bb.e ], [ null, %bb.d ]
  call fastcc void @_ZN4llvmL25lookupPGONameFromMetadataB5cxx11EPNS_6MDNodeE(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef %i.ae)
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !104, !range !18, !noundef !19
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.f, label %bb.l

bb.f:                                             ; preds = %_ZN4llvm22getPGOFuncNameMetadataERKNS_8FunctionE.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.ai, ptr %0, align 8, !tbaa !24
  %i.aj = load ptr, ptr %4, align 8, !tbaa !47    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !27 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  store i64 %i.al, ptr %i.b, align 8, !tbaa !51
  %i.am = icmp ugt i64 %i.al, 15
  br i1 %i.am, label %bb.g, label %._crit_edge.i.i

bb.g:                                             ; preds = %bb.f
  %i.an = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #32 ; 2 uses
  store ptr %i.an, ptr %0, align 8, !tbaa !47
  %i.ao = load i64, ptr %i.b, align 8, !tbaa !51
  store i64 %i.ao, ptr %i.ai, align 8, !tbaa !30
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.g, %bb.f
  %i.ap = phi ptr [ %i.an, %bb.g ], [ %i.ai, %bb.f ] ; 2 uses
  switch i64 %i.al, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.aq = load i8, ptr %i.aj, align 1, !tbaa !30
  store i8 %i.aq, ptr %i.ap, align 1, !tbaa !30
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ap, ptr align 1 %i.aj, i64 %i.al, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i
  %i.ar = load i64, ptr %i.b, align 8, !tbaa !51  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !27
  %i.at = load ptr, ptr %0, align 8, !tbaa !47
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ar
  store i8 0, ptr %i.au, align 1, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  %.pre = load i8, ptr %i.af, align 8, !tbaa !104, !range !18
  %i.av = trunc nuw i8 %.pre to i1
  store i8 0, ptr %i.af, align 8, !tbaa !104
  br i1 %i.av, label %bb.k, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.aw = load ptr, ptr %4, align 8, !tbaa !47    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.k
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !30
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #34
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.thread

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.thread: ; preds = %bb.k, %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %bb.p

bb.l:                                             ; preds = %_ZN4llvm22getPGOFuncNameMetadataERKNS_8FunctionE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  %i.bb = call { ptr, i64 } @_ZNK4llvm5Value7getNameEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #32 ; 2 uses
  %i.bc = extractvalue { ptr, i64 } %i.bb, 0      ; 2 uses
  %i.bd = extractvalue { ptr, i64 } %i.bb, 1      ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !109)
  %i.be = load i8, ptr %i.bc, align 1, !tbaa !30, !noalias !109
  %i.bf = icmp eq i8 %i.be, 1
  %i.bg = icmp ne i64 %i.bd, 0
  %narrow.i = and i1 %i.bg, %i.bf
  %.sroa.07.0.idx.i = zext i1 %narrow.i to i64    ; 2 uses
  %.sroa.07.0.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.sroa.07.0.idx.i ; 2 uses
  %.sroa.5.0.i = sub i64 %i.bd, %.sroa.07.0.idx.i ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.bh, ptr %0, align 8, !tbaa !24, !alias.scope !109
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32, !noalias !109
  store i64 %.sroa.5.0.i, ptr %i.a, align 8, !tbaa !51, !noalias !109
  %i.bi = icmp ugt i64 %.sroa.5.0.i, 15
  br i1 %i.bi, label %bb.m, label %._crit_edge.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.bj = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #32 ; 2 uses
  store ptr %i.bj, ptr %0, align 8, !tbaa !47, !alias.scope !109
  %i.bk = load i64, ptr %i.a, align 8, !tbaa !51, !noalias !109
  store i64 %i.bk, ptr %i.bh, align 8, !tbaa !30, !alias.scope !109
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.m, %bb.l
  %i.bl = phi ptr [ %i.bj, %bb.m ], [ %i.bh, %bb.l ] ; 2 uses
  switch i64 %.sroa.5.0.i, label %bb.o [
    i64 1, label %bb.n
    i64 0, label %_ZN4llvm14getPGOFuncNameB5cxx11ENS_9StringRefENS_11GlobalValue12LinkageTypesES0_m.exit
  ]

bb.n:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.bm = load i8, ptr %.sroa.07.0.i, align 1, !tbaa !30, !noalias !109
  store i8 %i.bm, ptr %i.bl, align 1, !tbaa !30
  br label %_ZN4llvm14getPGOFuncNameB5cxx11ENS_9StringRefENS_11GlobalValue12LinkageTypesES0_m.exit

bb.o:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bl, ptr nonnull readonly align 1 %.sroa.07.0.i, i64 %.sroa.5.0.i, i1 false)
  br label %_ZN4llvm14getPGOFuncNameB5cxx11ENS_9StringRefENS_11GlobalValue12LinkageTypesES0_m.exit

_ZN4llvm14getPGOFuncNameB5cxx11ENS_9StringRefENS_11GlobalValue12LinkageTypesES0_m.exit: ; preds = %._crit_edge.i.i.i.i.i, %bb.n, %bb.o
  %i.bn = load i64, ptr %i.a, align 8, !tbaa !51, !noalias !109 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bn, ptr %i.bo, align 8, !tbaa !27, !alias.scope !109
  %i.bp = load ptr, ptr %0, align 8, !tbaa !47, !alias.scope !109
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bn
  store i8 0, ptr %i.bq, align 1, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32, !noalias !109
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.thread, %_ZN4llvm14getPGOFuncNameB5cxx11ENS_9StringRefENS_11GlobalValue12LinkageTypesES0_m.exit, %_ZN4llvmL25getStrippedSourceFileNameERKNS_12GlobalObjectE.exit
  ret void
}

declare { ptr, i64 } @_ZNK4llvm5Value7getNameEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4llvmL25lookupPGONameFromMetadataB5cxx11EPNS_6MDNodeE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds i8, ptr %1, i64 -16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = and i64 %i.c, 2
  %.not.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds i8, ptr %1, i64 -32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !21
  br label %_ZNK4llvm6MDNode10getOperandEj.exit

bb.d:                                             ; preds = %bb.b
  %i.g = lshr i64 %i.c, 2
  %i.h = and i64 %i.g, 15
  %i.i = sub nsw i64 0, %i.h
  %i.j = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.i
end_hunk_0
begin_hunk_1_@_ZN4llvm15InstrProfSymtab17addVTableWithNameERNS_14GlobalVariableENS_9StringRefE:bb.a
.critedge:                                        ; preds = %.critedge.sink.split, %bb.a, %_ZN4llvmneENS_9StringRefES0_.exit.thread
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm15InstrProfSymtab14finalizeSymtabEv(ptr noundef nonnull align 8 dereferenceable(369) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !248, !range !18, !noundef !19
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !304  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !304  ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, %i.g
  br i1 %.not.i.i.i.i, label %_ZN4llvm4sortIRSt6vectorISt4pairImNS_9StringRefEESaIS4_EENS_10less_firstEEEvOT_T0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 24
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = shl nuw nsw i64 %i.l, 1
  %i.n = xor i64 %i.m, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm9StringRefEESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SF_T0_T1_(ptr %i.e, ptr %i.g, i64 noundef %i.n)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm9StringRefEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SF_T0_(ptr %i.e, ptr %i.g)
  br label %_ZN4llvm4sortIRSt6vectorISt4pairImNS_9StringRefEESaIS4_EENS_10less_firstEEEvOT_T0_.exit

_ZN4llvm4sortIRSt6vectorISt4pairImNS_9StringRefEESaIS4_EENS_10less_firstEEEvOT_T0_.exit: ; preds = %bb.b, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !305
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !305
  tail call void @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_(ptr %i.p, ptr %i.r)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !306  ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !306  ; 4 uses
  %.not.i.i.i.i1 = icmp eq ptr %i.t, %i.v
  br i1 %.not.i.i.i.i1, label %_ZNSt6vectorISt4pairImmESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit, label %_ZN4llvm4sortIRSt6vectorISt4pairImmESaIS3_EENS_10less_firstEEEvOT_T0_.exit

_ZN4llvm4sortIRSt6vectorISt4pairImmESaIS3_EENS_10less_firstEEEvOT_T0_.exit: ; preds = %_ZN4llvm4sortIRSt6vectorISt4pairImNS_9StringRefEESaIS4_EENS_10less_firstEEEvOT_T0_.exit
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 4
  %i.aa = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.z, i1 true)
  %i.ab = shl nuw nsw i64 %i.aa, 1
  %i.ac = xor i64 %i.ab, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIN4llvm10less_firstEEEEvT_SE_T0_T1_(ptr %i.t, ptr %i.v, i64 noundef %i.ac)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIN4llvm10less_firstEEEEvT_SE_T0_(ptr %i.t, ptr %i.v)
  %.pre = load ptr, ptr %i.s, align 8, !tbaa !306 ; 4 uses
  %.pre15 = load ptr, ptr %i.u, align 8, !tbaa !306 ; 5 uses
  %i.ad = icmp eq ptr %.pre, %.pre15
  br i1 %i.ad, label %_ZNSt6vectorISt4pairImmESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %_ZN4llvm4sortIRSt6vectorISt4pairImmESaIS3_EENS_10less_firstEEEvOT_T0_.exit, %bb.d
  %.sroa.09.0.i.i.i.i = phi ptr [ %i.ae, %bb.d ], [ %.pre, %_ZN4llvm4sortIRSt6vectorISt4pairImmESaIS3_EENS_10less_firstEEEvOT_T0_.exit ] ; 7 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i.i, i64 16 ; 4 uses
  %.not.i.i.i.i2 = icmp eq ptr %i.ae, %.pre15
  br i1 %.not.i.i.i.i2, label %_ZNSt6vectorISt4pairImmESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i.i.i
  %i.af = load i64, ptr %.sroa.09.0.i.i.i.i, align 8, !tbaa !307 ; 2 uses
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !307
  %i.ah = icmp eq i64 %i.af, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i.i, i64 8
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i.i, i64 24
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = icmp eq i64 %i.aj, %i.al
  %i.an = select i1 %i.ah, i1 %i.am, i1 false
  br i1 %i.an, label %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops19_Iter_equal_to_iterEET_SB_SB_T0_.exit.i.i.i, label %.preheader.i.i.i.i, !llvm.loop !309

_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops19_Iter_equal_to_iterEET_SB_SB_T0_.exit.i.i.i: ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i.i, i64 32 ; 2 uses
  %.not18.i.i.i = icmp eq ptr %i.ao, %.pre15
  br i1 %.not18.i.i.i, label %_ZN4llvm6uniqueIRSt6vectorISt4pairImmESaIS3_EEEEDaOT_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops19_Iter_equal_to_iterEET_SB_SB_T0_.exit.i.i.i, %bb.f
  %i.ap = phi i64 [ %i.ar, %bb.f ], [ %i.af, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops19_Iter_equal_to_iterEET_SB_SB_T0_.exit.i.i.i ]
  %i.aq = phi ptr [ %i.bc, %bb.f ], [ %i.ao, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops19_Iter_equal_to_iterEET_SB_SB_T0_.exit.i.i.i ] ; 3 uses
  %.sroa.0.020.i.i.i = phi ptr [ %.sroa.0.1.i.i.i, %bb.f ], [ %.sroa.09.0.i.i.i.i, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops19_Iter_equal_to_iterEET_SB_SB_T0_.exit.i.i.i ] ; 4 uses
  %.sroa.011.019.i.i.i = phi ptr [ %i.aq, %bb.f ], [ %i.ae, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops19_Iter_equal_to_iterEET_SB_SB_T0_.exit.i.i.i ]
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !307 ; 3 uses
  %i.as = icmp eq i64 %i.ap, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i.i.i, i64 8
  %i.au = load i64, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.011.019.i.i.i, i64 24 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = icmp eq i64 %i.au, %i.aw
  %i.ay = select i1 %i.as, i1 %i.ax, i1 false
  br i1 %i.ay, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i.i.i, i64 16 ; 2 uses
  store i64 %i.ar, ptr %i.az, align 8, !tbaa !307
  %i.ba = load i64, ptr %i.av, align 8, !tbaa !51
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i.i.i, i64 24
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !310
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i.i.i
  %.sroa.0.1.i.i.i = phi ptr [ %.sroa.0.020.i.i.i, %.lr.ph.i.i.i ], [ %i.az, %bb.e ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bc, %.pre15
  br i1 %.not.i.i.i, label %_ZN4llvm6uniqueIRSt6vectorISt4pairImmESaIS3_EEEEDaOT_.exit, label %.lr.ph.i.i.i, !llvm.loop !311

_ZN4llvm6uniqueIRSt6vectorISt4pairImmESaIS3_EEEEDaOT_.exit: ; preds = %bb.f, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops19_Iter_equal_to_iterEET_SB_SB_T0_.exit.i.i.i
  %.sroa.0.0.lcssa.i.i.i = phi ptr [ %.sroa.09.0.i.i.i.i, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops19_Iter_equal_to_iterEET_SB_SB_T0_.exit.i.i.i ], [ %.sroa.0.1.i.i.i, %bb.f ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i3 = icmp eq ptr %.pre15, %i.bd
  br i1 %.not.i.i.i3, label %_ZNSt6vectorISt4pairImmESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm6uniqueIRSt6vectorISt4pairImmESaIS3_EEEEDaOT_.exit
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = ptrtoint ptr %.pre to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = getelementptr inbounds i8, ptr %.pre, i64 %i.bg
  store ptr %i.bh, ptr %i.u, align 8, !tbaa !312
  br label %_ZNSt6vectorISt4pairImmESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit

_ZNSt6vectorISt4pairImmESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit: ; preds = %.preheader.i.i.i.i, %_ZN4llvm4sortIRSt6vectorISt4pairImNS_9StringRefEESaIS4_EENS_10less_firstEEEvOT_T0_.exit, %_ZN4llvm4sortIRSt6vectorISt4pairImmESaIS3_EENS_10less_firstEEEvOT_T0_.exit, %_ZN4llvm6uniqueIRSt6vectorISt4pairImmESaIS3_EEEEDaOT_.exit, %bb.g
  store i8 1, ptr %i.a, align 8, !tbaa !248
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZNSt6vectorISt4pairImmESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i64 } @_ZN4llvm15InstrProfSymtab16getCanonicalNameENS_9StringRefE(ptr %0, i64 %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.179", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 3, ptr %i.c, align 4, !tbaa !284
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) @constinit, i64 32, i1 false)
  store i32 2, ptr %i.b, align 8, !tbaa !285
  %i.d = call { ptr, i64 } @_ZN4llvm10sampleprof15FunctionSamples18getCanonicalFnNameENS_9StringRefENS_8ArrayRefIS2_EES2_(ptr %0, i64 %1, ptr nonnull %i.a, i64 2, ptr nonnull @.str.20, i64 8)
  %i.e = load ptr, ptr %2, align 8, !tbaa !21     ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.a
  br i1 %i.f, label %_ZN4llvm11SmallVectorINS_9StringRefELj3EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @free(ptr noundef %i.e) #32
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj3EED2Ev.exit

_ZN4llvm11SmallVectorINS_9StringRefELj3EED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  ret { ptr, i64 } %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm20readAndDecodeStringsENS_9StringRefESt8functionIFNS_5ErrorES0_EE(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr %1, i64 %2, ptr nofree noundef align 8 dereferenceable(32) %3) local_unnamed_addr #3 {
bb.a:
  %4 = alloca %"class.llvm::StringRef", align 8   ; 5 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 5 uses
  %6 = alloca %"class.llvm::Error", align 8       ; 3 uses
  %7 = alloca %"class.llvm::Error", align 8       ; 5 uses
  %8 = alloca %class.anon.369, align 1            ; 3 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 5 uses
  %10 = alloca %"class.llvm::SmallVector.167", align 8 ; 13 uses
  %11 = alloca %"class.llvm::StringRef", align 8  ; 8 uses
  %12 = alloca %"class.llvm::Error", align 8      ; 7 uses
  %13 = alloca %"class.llvm::SmallVector.170", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 3 uses
  %.not104 = icmp eq i64 %2, 0
  br i1 %.not104, label %_ZN4llvm5ErrorD2Ev.exit72, label %.lr.ph103

.lr.ph103:                                        ; preds = %bb.a
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %13, i64 12
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph103, %_ZN4llvm11SmallVectorIhLj128EED2Ev.exit
  %.0102 = phi ptr [ %1, %.lr.ph103 ], [ %.2.lcssa, %_ZN4llvm11SmallVectorIhLj128EED2Ev.exit ] ; 8 uses
  %i.l = ptrtoaddr ptr %.0102 to i64              ; 2 uses
  %i.m = sub i64 0, %i.l
  %scevgep.i = getelementptr i8, ptr %.0102, i64 %i.m
  %i.n = icmp eq ptr %.0102, null
  br i1 %i.n, label %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit, label %.lr.ph121, !prof !313

bb.c:                                             ; preds = %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv122, 7
  br label %.lr.ph121, !llvm.loop !314

.lr.ph121:                                        ; preds = %bb.b, %bb.c
  %.029.i124 = phi i64 [ %.130.i, %bb.c ], [ 0, %bb.b ]
  %.031.i123 = phi ptr [ %i.w, %bb.c ], [ %.0102, %bb.b ] ; 3 uses
  %indvars.iv122 = phi i64 [ %indvars.iv.next, %bb.c ], [ 0, %bb.b ] ; 5 uses
  %i.o = load i8, ptr %.031.i123, align 1, !tbaa !30 ; 2 uses
  %i.p = and i8 %i.o, 127                         ; 3 uses
  %i.q = zext nneg i8 %i.p to i64
  %i.r = icmp samesign ugt i64 %indvars.iv122, 62
  br i1 %i.r, label %bb.d, label %bb.e, !prof !315

bb.d:                                             ; preds = %.lr.ph121
  %.not44.i = icmp eq i64 %indvars.iv122, 63
  %.not.i = icmp samesign ugt i8 %i.p, 1
  %i.s = icmp ne i8 %i.p, 0
  %or.cond43.i = select i1 %.not44.i, i1 %.not.i, i1 %i.s
  br i1 %or.cond43.i, label %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph121
  %i.t = icmp samesign ult i64 %indvars.iv122, 64
  %i.u = shl i64 %i.q, %indvars.iv122
  %i.v = select i1 %i.t, i64 %i.u, i64 0, !prof !316
  %.130.i = add i64 %i.v, %.029.i124              ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.031.i123, i64 1 ; 2 uses
  %i.x = icmp slt i8 %i.o, 0
  br i1 %i.x, label %bb.c, label %._ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit_crit_edge126, !llvm.loop !314

._ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit_crit_edge126: ; preds = %bb.e
  br label %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit, !llvm.loop !314

_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit:        ; preds = %bb.d, %._ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit_crit_edge126, %bb.b
  %.132.i = phi ptr [ %i.w, %._ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit_crit_edge126 ], [ %scevgep.i, %bb.b ], [ %.031.i123, %bb.d ]
  %.3.i = phi i64 [ %.130.i, %._ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit_crit_edge126 ], [ 0, %bb.b ], [ 0, %bb.d ] ; 3 uses
  %i.y = ptrtoint ptr %.132.i to i64
  %i.z = ptrtoint ptr %.0102 to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = and i64 %i.aa, 4294967295
  %i.ac = getelementptr inbounds nuw i8, ptr %.0102, i64 %i.ab ; 5 uses
  %i.ad = ptrtoaddr ptr %i.ac to i64
  %i.ae = sub i64 0, %i.ad
  %scevgep.i58 = getelementptr i8, ptr %i.ac, i64 %i.ae
  %i.af = icmp eq ptr %.0102, null
  br i1 %i.af, label %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit68, label %.lr.ph132, !prof !313

bb.f:                                             ; preds = %bb.h
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106133, 7
  br label %.lr.ph132, !llvm.loop !314

.lr.ph132:                                        ; preds = %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit, %bb.f
  %.029.i60135 = phi i64 [ %.130.i62, %bb.f ], [ 0, %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit ]
  %.031.i59134 = phi ptr [ %i.ao, %bb.f ], [ %i.ac, %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit ] ; 3 uses
  %indvars.iv106133 = phi i64 [ %indvars.iv.next107, %bb.f ], [ 0, %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit ] ; 5 uses
  %i.ag = load i8, ptr %.031.i59134, align 1, !tbaa !30 ; 2 uses
  %i.ah = and i8 %i.ag, 127                       ; 3 uses
  %i.ai = zext nneg i8 %i.ah to i64
  %i.aj = icmp samesign ugt i64 %indvars.iv106133, 62
  br i1 %i.aj, label %bb.g, label %bb.h, !prof !315

bb.g:                                             ; preds = %.lr.ph132
  %.not44.i65 = icmp eq i64 %indvars.iv106133, 63
  %.not.i66 = icmp samesign ugt i8 %i.ah, 1
  %i.ak = icmp ne i8 %i.ah, 0
  %or.cond43.i67 = select i1 %.not44.i65, i1 %.not.i66, i1 %i.ak
  br i1 %or.cond43.i67, label %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit68, label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph132
  %i.al = icmp samesign ult i64 %indvars.iv106133, 64
  %i.am = shl i64 %i.ai, %indvars.iv106133
  %i.an = select i1 %i.al, i64 %i.am, i64 0, !prof !316
  %.130.i62 = add i64 %i.an, %.029.i60135         ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.031.i59134, i64 1 ; 2 uses
  %i.ap = icmp slt i8 %i.ag, 0
  br i1 %i.ap, label %bb.f, label %._ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit68_crit_edge138, !llvm.loop !314

._ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit68_crit_edge138: ; preds = %bb.h
  br label %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit68, !llvm.loop !314

_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit68:      ; preds = %bb.g, %._ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit68_crit_edge138, %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit
  %.132.i63 = phi ptr [ %i.ao, %._ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit68_crit_edge138 ], [ %scevgep.i58, %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit ], [ %.031.i59134, %bb.g ]
  %.3.i64 = phi i64 [ %.130.i62, %._ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit68_crit_edge138 ], [ 0, %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit ], [ 0, %bb.g ] ; 3 uses
  %i.aq = ptrtoint ptr %.132.i63 to i64
  %i.ar = ptrtoint ptr %i.ac to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = and i64 %i.as, 4294967295
  %i.au = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.at ; 3 uses
  %.not = icmp eq i64 %.3.i64, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  store ptr %i.c, ptr %10, align 8, !tbaa !317
  store i64 0, ptr %i.d, align 8, !tbaa !318
  store i64 128, ptr %i.e, align 8, !tbaa !319
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  br i1 %.not, label %bb.o, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit68
  %i.av = call noundef zeroext i1 @_ZN4llvm11compression4zlib11isAvailableEv() #32
  br i1 %i.av, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !320)
  %i.aw = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #36, !noalias !323 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32, !noalias !323
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i8 1, ptr %i.ax, align 8, !tbaa !234, !noalias !323
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 1, ptr %i.ay, align 1, !tbaa !237, !noalias !323
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvm14InstrProfErrorE, i64 16), ptr %i.aw, align 8, !tbaa !8, !noalias !323
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i32 23, ptr %i.az, align 8, !tbaa !32, !noalias !323
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %i.ba, ptr noundef nonnull align 8 dereferenceable(34) %9) #32, !noalias !323
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32, !noalias !323
  store ptr %i.aw, ptr %0, align 8, !tbaa !242, !alias.scope !320
  br label %.critedge56

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #32
  call void @_ZN4llvm11compression4zlib10decompressENS_8ArrayRefIhEERNS_15SmallVectorImplIhEEm(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %12, ptr %i.au, i64 %.3.i64, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 noundef %.3.i) #32
  %i.bb = load ptr, ptr %12, align 8, !tbaa !242  ; 2 uses
  %.not89 = icmp eq ptr %i.bb, null
  br i1 %.not89, label %_ZN4llvm5ErrorD2Ev.exit70, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr null, ptr %12, align 8, !tbaa !242
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %i.bb, ptr %7, align 8, !tbaa !242
  call void @_ZN4llvm12handleErrorsIJZNS_12consumeErrorENS_5ErrorEEUlRKNS_13ErrorInfoBaseEE_EEES1_S1_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %6, ptr nofree noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 1 dereferenceable(1) %8)
  %i.bc = load ptr, ptr %7, align 8, !tbaa !242   ; 3 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %_ZN4llvm5ErrorD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.be = load ptr, ptr %i.bc, align 8, !tbaa !8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(8) %i.bc) #32, !inline_history !326
  br label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !327)
  %i.bh = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #36, !noalias !330 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32, !noalias !330
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 1, ptr %i.bi, align 8, !tbaa !234, !noalias !330
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 1, ptr %i.bj, align 1, !tbaa !237, !noalias !330
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvm14InstrProfErrorE, i64 16), ptr %i.bh, align 8, !tbaa !8, !noalias !330
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i32 21, ptr %i.bk, align 8, !tbaa !32, !noalias !330
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %i.bl, ptr noundef nonnull align 8 dereferenceable(34) %5) #32, !noalias !330
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32, !noalias !330
  store ptr %i.bh, ptr %0, align 8, !tbaa !242, !alias.scope !327
  %i.bm = load ptr, ptr %12, align 8, !tbaa !242  ; 3 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %_ZN4llvm5ErrorD2Ev.exit69, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit
  %i.bo = load ptr, ptr %i.bm, align 8, !tbaa !8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(8) %i.bm) #32, !inline_history !333
  br label %_ZN4llvm5ErrorD2Ev.exit69

_ZN4llvm5ErrorD2Ev.exit69:                        ; preds = %_ZN4llvm5ErrorD2Ev.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  br label %.critedge56

_ZN4llvm5ErrorD2Ev.exit70:                        ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  %i.br = load ptr, ptr %10, align 8, !tbaa !317
  %i.bs = load i64, ptr %i.d, align 8, !tbaa !318
  br label %bb.o

bb.o:                                             ; preds = %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit68, %_ZN4llvm5ErrorD2Ev.exit70
  %storemerge117 = phi ptr [ %i.br, %_ZN4llvm5ErrorD2Ev.exit70 ], [ %i.au, %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit68 ]
  %storemerge = phi i64 [ %i.bs, %_ZN4llvm5ErrorD2Ev.exit70 ], [ %.3.i, %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit68 ]
  %.pn = phi i64 [ %.3.i64, %_ZN4llvm5ErrorD2Ev.exit70 ], [ %.3.i, %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit68 ]
  store ptr %storemerge117, ptr %11, align 8, !tbaa !31
  store i64 %storemerge, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !51
  %.1 = getelementptr inbounds nuw i8, ptr %i.au, i64 %.pn ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #32
  store ptr %i.f, ptr %13, align 8, !tbaa !21
  store i32 0, ptr %i.g, align 8, !tbaa !285
  store i32 0, ptr %i.h, align 4, !tbaa !284
  call void @_ZNK4llvm9StringRef5splitERNS_15SmallVectorImplIS0_EES0_ib(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr nonnull @.str.128, i64 1, i32 noundef -1, i1 noundef zeroext true) #32
  %i.bt = load ptr, ptr %13, align 8, !tbaa !21   ; 2 uses
  %i.bu = load i32, ptr %i.g, align 8, !tbaa !285 ; 2 uses
  %i.bv = zext i32 %i.bu to i64
  %.idx = shl nuw nsw i64 %i.bv, 4
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.idx
  %.not4997 = icmp eq i32 %i.bu, 0
  br i1 %.not4997, label %.critedge54.preheader, label %.lr.ph

bb.p:                                             ; preds = %_ZNKSt8functionIFN4llvm5ErrorENS0_9StringRefEEEclES2_.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %.04198, i64 16 ; 2 uses
  %.not49 = icmp eq ptr %i.bx, %i.bw
  br i1 %.not49, label %.critedge54.preheader, label %.lr.ph

.critedge54.preheader:                            ; preds = %bb.p, %bb.o
  %i.by = icmp ult ptr %.1, %i.a
  br i1 %i.by, label %.lr.ph100.preheader, label %.critedge

.lr.ph100.preheader:                              ; preds = %.critedge54.preheader
  %i.bz = getelementptr i8, ptr %.0102, i64 %2
  %scevgep = getelementptr i8, ptr %i.bz, i64 %i.b
  %i.ca = sub i64 0, %i.l
  %scevgep105 = getelementptr i8, ptr %scevgep, i64 %i.ca
  br label %.lr.ph100

.lr.ph:                                           ; preds = %bb.o, %bb.p
  %.04198 = phi ptr [ %i.bx, %bb.p ], [ %i.bt, %bb.o ] ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %.04198, align 8, !tbaa !31
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.04198, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %.sroa.0.0.copyload, ptr %4, align 8, !noalias !334
  store i64 %.sroa.2.0.copyload, ptr %i.i, align 8, !noalias !334
  %i.cb = load ptr, ptr %i.j, align 8, !tbaa !10, !noalias !334
  %.not.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i, label %bb.q, label %_ZNKSt8functionIFN4llvm5ErrorENS0_9StringRefEEEclES2_.exit

bb.q:                                             ; preds = %.lr.ph
  call void @_ZSt25__throw_bad_function_callv() #33, !noalias !334
  unreachable

_ZNKSt8functionIFN4llvm5ErrorENS0_9StringRefEEEclES2_.exit: ; preds = %.lr.ph
  %i.cc = load ptr, ptr %i.k, align 8, !tbaa !337, !noalias !334
  call void %i.cc(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) #32, !inline_history !339
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.cd = load ptr, ptr %0, align 8, !tbaa !242
  %.not90 = icmp eq ptr %i.cd, null
  br i1 %.not90, label %bb.p, label %.critedge57

.lr.ph100:                                        ; preds = %.lr.ph100.preheader, %.critedge54
  %.299 = phi ptr [ %i.cg, %.critedge54 ], [ %.1, %.lr.ph100.preheader ] ; 3 uses
  %i.ce = load i8, ptr %.299, align 1, !tbaa !30
  %i.cf = icmp eq i8 %i.ce, 0
  br i1 %i.cf, label %.critedge54, label %.critedge

.critedge54:                                      ; preds = %.lr.ph100
  %i.cg = getelementptr inbounds nuw i8, ptr %.299, i64 1 ; 2 uses
  %i.ch = icmp ult ptr %i.cg, %i.a
  br i1 %i.ch, label %.lr.ph100, label %.critedge, !llvm.loop !340

.critedge:                                        ; preds = %.critedge54, %.lr.ph100, %.critedge54.preheader
  %.2.lcssa = phi ptr [ %.1, %.critedge54.preheader ], [ %.299, %.lr.ph100 ], [ %scevgep105, %.critedge54 ] ; 2 uses
  %i.ci = load ptr, ptr %13, align 8, !tbaa !21   ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.f
  br i1 %i.cj, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.ci) #32
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit: ; preds = %.critedge, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  %i.ck = load ptr, ptr %10, align 8, !tbaa !317  ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.c
  br i1 %i.cl, label %_ZN4llvm11SmallVectorIhLj128EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit
  call void @free(ptr noundef %i.ck) #32
  br label %_ZN4llvm11SmallVectorIhLj128EED2Ev.exit

_ZN4llvm11SmallVectorIhLj128EED2Ev.exit:          ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  %i.cm = icmp ult ptr %.2.lcssa, %i.a
  br i1 %i.cm, label %bb.b, label %_ZN4llvm5ErrorD2Ev.exit72, !llvm.loop !341

_ZN4llvm5ErrorD2Ev.exit72:                        ; preds = %_ZN4llvm11SmallVectorIhLj128EED2Ev.exit, %bb.a
  store ptr null, ptr %0, align 8, !tbaa !242
  br label %bb.w
end_hunk_1
begin_hunk_2_@_ZN4llvm25collectPGOFuncNameStringsENS_8ArrayRefIPNS_14GlobalVariableEEERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb:bb.a

bb.g:                                             ; preds = %bb.f
  %i.ap = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #32 ; 2 uses
  store ptr %i.ap, ptr %6, align 8, !tbaa !47
  %i.aq = load i64, ptr %i.a, align 8, !tbaa !51
  store i64 %i.aq, ptr %i.c, align 8, !tbaa !30
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.g, %bb.f
  %i.ar = phi ptr [ %i.ap, %bb.g ], [ %i.c, %bb.f ] ; 2 uses
  switch i64 %i.al, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.as = load i8, ptr %i.ak, align 1, !tbaa !30
  store i8 %i.as, ptr %i.ar, align 1, !tbaa !30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ar, ptr align 1 %i.ak, i64 %i.al, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.h, %bb.i
  %i.at = load i64, ptr %i.a, align 8, !tbaa !51  ; 2 uses
  store i64 %i.at, ptr %i.d, align 8, !tbaa !27
  %i.au = load ptr, ptr %6, align 8, !tbaa !47
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.at
  store i8 0, ptr %i.av, align 1, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %i.aw = load ptr, ptr %i.e, align 8, !tbaa !394 ; 7 uses
  %i.ax = load ptr, ptr %i.f, align 8, !tbaa !396
  %.not.i.i = icmp eq ptr %i.aw, %i.ax
  br i1 %.not.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 3 uses
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !24
  %i.az = load ptr, ptr %6, align 8, !tbaa !47    ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.c
  br i1 %i.ba, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.bb = load i64, ptr %i.d, align 8, !tbaa !27  ; 3 uses
  %i.bc = icmp ult i64 %i.bb, 16
  call void @llvm.assume(i1 %i.bc)
  %i.bd = add nuw nsw i64 %i.bb, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ay, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.bd, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.j
  store ptr %i.az, ptr %i.aw, align 8, !tbaa !47
  %i.be = load i64, ptr %i.c, align 8, !tbaa !30
  store i64 %i.be, ptr %i.ay, align 8, !tbaa !30
  %.pre = load i64, ptr %i.d, align 8, !tbaa !27
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.bf = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bb, %bb.k ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !27
  store ptr %i.c, ptr %6, align 8, !tbaa !47
  store i64 0, ptr %i.d, align 8, !tbaa !27
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  store ptr %i.bh, ptr %i.e, align 8, !tbaa !394
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr %i.aw, ptr noundef nonnull align 8 dereferenceable(32) %6)
  %.pre14 = load ptr, ptr %6, align 8, !tbaa !47  ; 2 uses
  %i.bi = icmp eq ptr %.pre14, %i.c
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.bj = load i64, ptr %i.c, align 8, !tbaa !30
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %.pre14, i64 noundef %i.bk) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  %i.bl = getelementptr inbounds nuw i8, ptr %.013, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bl, %i.b
  br i1 %.not, label %._crit_edge.loopexit, label %bb.c
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm20collectVTableStringsENS_8ArrayRefIPNS_14GlobalVariableEEERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvm::Error") align 8 captures(none) %0, ptr nofree readonly captures(address) %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i1 noundef zeroext %4) local_unnamed_addr #3 {
bb.a:
  %5 = alloca %"class.std::vector.196", align 8   ; 11 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %.idx = shl nuw nsw i64 %2, 3
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %.not13 = icmp eq i64 %2, 0
  br i1 %.not13, label %._crit_edge, label %_ZN4llvm10getPGONameB5cxx11ERKNS_14GlobalVariableEb.exit.lr.ph

_ZN4llvm10getPGONameB5cxx11ERKNS_14GlobalVariableEb.exit.lr.ph: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  br label %_ZN4llvm10getPGONameB5cxx11ERKNS_14GlobalVariableEb.exit

._crit_edge.loopexit:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pre16 = load ptr, ptr %5, align 8, !tbaa !392
  %.pre17 = load ptr, ptr %i.b, align 8, !tbaa !394
  %i.f = ptrtoint ptr %.pre17 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.g = phi i64 [ %i.f, %._crit_edge.loopexit ], [ 0, %bb.a ]
  %i.h = phi ptr [ %.pre16, %._crit_edge.loopexit ], [ null, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.g, %i.j
  %i.l = ashr exact i64 %i.k, 5
  %i.m = call noundef zeroext i1 @_ZN4llvm11compression4zlib11isAvailableEv() #32
  %i.n = and i1 %4, %i.m
  call void @_ZN4llvm30collectGlobalObjectNameStringsENS_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRS6_(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8 %0, ptr %i.h, i64 %i.l, i1 noundef zeroext %i.n, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %i.o = load ptr, ptr %5, align 8, !tbaa !392    ; 3 uses
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !394  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.o, %i.p
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.v, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.o, %._crit_edge ] ; 3 uses
  %i.q = load ptr, ptr %.05.i.i.i, align 8, !tbaa !47 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.t = load i64, ptr %i.r, align 8, !tbaa !30
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #34
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, %i.p
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !395

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %5, align 8, !tbaa !392
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i, %._crit_edge
  %i.w = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i ], [ %i.o, %._crit_edge ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !396
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #34
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  ret void

_ZN4llvm10getPGONameB5cxx11ERKNS_14GlobalVariableEb.exit: ; preds = %_ZN4llvm10getPGONameB5cxx11ERKNS_14GlobalVariableEb.exit.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.014 = phi ptr [ %1, %_ZN4llvm10getPGONameB5cxx11ERKNS_14GlobalVariableEb.exit.lr.ph ], [ %i.br, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %i.ac = load ptr, ptr %.014, align 8, !tbaa !289 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %.val.i = load ptr, ptr %i.ad, align 8, !tbaa !89, !noalias !397 ; 2 uses
  %i.ae = getelementptr i8, ptr %.val.i, i64 184
  %.val.val.i = load ptr, ptr %i.ae, align 8, !tbaa !47, !noalias !397 ; 4 uses
  %i.af = getelementptr i8, ptr %.val.i, i64 192
  %.val.val7.i = load i64, ptr %i.af, align 8, !tbaa !27, !noalias !397 ; 5 uses
  %i.ag = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL26StaticFuncFullModulePrefix, i64 120), align 8, !tbaa !90, !range !18, !noalias !397, !noundef !19 ; 2 uses
  %i.ah = xor i8 %i.ag, 1
  %i.ai = zext nneg i8 %i.ah to i32
  %i.aj = sub nsw i32 0, %i.ai
  %i.ak = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL28StaticFuncStripDirNamePrefix, i64 120), align 8, !tbaa !96, !noalias !397 ; 2 uses
  %i.al = icmp ugt i32 %i.ak, %i.aj
  br i1 %i.al, label %.thread.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm10getPGONameB5cxx11ERKNS_14GlobalVariableEb.exit
  %.not.not.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.not.i.i, label %.thread.i.i, label %_ZN4llvmL18getIRPGOObjectNameB5cxx11ERKNS_12GlobalObjectEbPNS_6MDNodeE.exit

.thread.i.i:                                      ; preds = %bb.c, %_ZN4llvm10getPGONameB5cxx11ERKNS_14GlobalVariableEb.exit
  %.04.i.i = phi i32 [ -1, %bb.c ], [ %i.ak, %_ZN4llvm10getPGONameB5cxx11ERKNS_14GlobalVariableEb.exit ]
  %i.am = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 %.val.val7.i
  %.not23.i.i.i = icmp samesign eq i64 %.val.val7.i, 0
  br i1 %.not23.i.i.i, label %_ZN4llvmL14stripDirPrefixENS_9StringRefEj.exit.i.i, label %.lr.ph.i.i.i9

.lr.ph.i.i.i9:                                    ; preds = %.thread.i.i, %.lr.ph.i.i.i9
  %.01327.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i9 ], [ %.val.val.i, %.thread.i.i ] ; 2 uses
  %.01426.i.i.i = phi i32 [ %spec.select19.i.i.i, %.lr.ph.i.i.i9 ], [ 0, %.thread.i.i ]
  %.01525.i.i.i = phi i32 [ %i.an, %.lr.ph.i.i.i9 ], [ 0, %.thread.i.i ]
  %.01624.i.i.i = phi i32 [ %spec.select.i.i.i, %.lr.ph.i.i.i9 ], [ %.04.i.i, %.thread.i.i ]
  %i.an = add nuw nsw i32 %.01525.i.i.i, 1        ; 2 uses
  %i.ao = load i8, ptr %.01327.i.i.i, align 1, !tbaa !30, !noalias !397
  %i.ap = call noundef zeroext i1 @_ZN4llvm3sys4path12is_separatorEcNS1_5StyleE(i8 noundef signext %i.ao, i32 noundef 0) #32, !noalias !397 ; 2 uses
  %i.aq = sext i1 %i.ap to i32
  %spec.select.i.i.i = add i32 %.01624.i.i.i, %i.aq ; 2 uses
  %spec.select19.i.i.i = select i1 %i.ap, i32 %i.an, i32 %.01426.i.i.i ; 2 uses
  %.not18.i.i.i = icmp eq i32 %spec.select.i.i.i, 0
  %i.ar = getelementptr inbounds nuw i8, ptr %.01327.i.i.i, i64 1 ; 2 uses
  %.not.i.i.i10 = icmp eq ptr %i.ar, %i.am
  %or.cond.i.i.i = select i1 %.not18.i.i.i, i1 true, i1 %.not.i.i.i10
  br i1 %or.cond.i.i.i, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i9

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i.i.i9
  %i.as = zext i32 %spec.select19.i.i.i to i64
  %i.at = call i64 @llvm.umin.i64(i64 %.val.val7.i, i64 %i.as)
  br label %_ZN4llvmL14stripDirPrefixENS_9StringRefEj.exit.i.i

_ZN4llvmL14stripDirPrefixENS_9StringRefEj.exit.i.i: ; preds = %._crit_edge.loopexit.i.i.i, %.thread.i.i
  %.2.i.i.i = phi i64 [ 0, %.thread.i.i ], [ %i.at, %._crit_edge.loopexit.i.i.i ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 %.2.i.i.i
  %i.av = sub i64 %.val.val7.i, %.2.i.i.i
  br label %_ZN4llvmL18getIRPGOObjectNameB5cxx11ERKNS_12GlobalObjectEbPNS_6MDNodeE.exit

_ZN4llvmL18getIRPGOObjectNameB5cxx11ERKNS_12GlobalObjectEbPNS_6MDNodeE.exit: ; preds = %bb.c, %_ZN4llvmL14stripDirPrefixENS_9StringRefEj.exit.i.i
  %.sroa.4.0.i.i = phi i64 [ %.val.val7.i, %bb.c ], [ %i.av, %_ZN4llvmL14stripDirPrefixENS_9StringRefEj.exit.i.i ]
  %.sroa.0.0.i.i = phi ptr [ %.val.val.i, %bb.c ], [ %i.au, %_ZN4llvmL14stripDirPrefixENS_9StringRefEj.exit.i.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ax = load i32, ptr %i.aw, align 8, !noalias !397
  %i.ay = and i32 %i.ax, 15
  %i.az = call { ptr, i64 } @_ZNK4llvm5Value7getNameEv(ptr noundef nonnull align 8 dereferenceable(89) %i.ac) #32, !noalias !400 ; 2 uses
  %i.ba = extractvalue { ptr, i64 } %i.az, 0
  %i.bb = extractvalue { ptr, i64 } %i.az, 1
  call void @_ZN4llvm11GlobalValue19getGlobalIdentifierB5cxx11ENS_9StringRefENS0_12LinkageTypesES1_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr %i.ba, i64 %i.bb, i32 noundef %i.ay, ptr %.sroa.0.0.i.i, i64 %.sroa.4.0.i.i) #32
  %i.bc = load ptr, ptr %i.b, align 8, !tbaa !394 ; 7 uses
  %i.bd = load ptr, ptr %i.c, align 8, !tbaa !396
  %.not.i.i8 = icmp eq ptr %i.bc, %i.bd
  br i1 %.not.i.i8, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvmL18getIRPGOObjectNameB5cxx11ERKNS_12GlobalObjectEbPNS_6MDNodeE.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 3 uses
  store ptr %i.be, ptr %i.bc, align 8, !tbaa !24
  %i.bf = load ptr, ptr %6, align 8, !tbaa !47    ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.d
  br i1 %i.bg, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.bh = load i64, ptr %i.e, align 8, !tbaa !27  ; 3 uses
  %i.bi = icmp ult i64 %i.bh, 16
  call void @llvm.assume(i1 %i.bi)
  %i.bj = add nuw nsw i64 %i.bh, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.be, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %i.bj, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  store ptr %i.bf, ptr %i.bc, align 8, !tbaa !47
  %i.bk = load i64, ptr %i.d, align 8, !tbaa !30
  store i64 %i.bk, ptr %i.be, align 8, !tbaa !30
  %.pre = load i64, ptr %i.e, align 8, !tbaa !27
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.bl = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bh, %bb.e ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !27
  store ptr %i.d, ptr %6, align 8, !tbaa !47
  store i64 0, ptr %i.e, align 8, !tbaa !27
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  store ptr %i.bn, ptr %i.b, align 8, !tbaa !394
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZN4llvmL18getIRPGOObjectNameB5cxx11ERKNS_12GlobalObjectEbPNS_6MDNodeE.exit
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr %i.bc, ptr noundef nonnull align 8 dereferenceable(32) %6)
  %.pre15 = load ptr, ptr %6, align 8, !tbaa !47  ; 2 uses
  %i.bo = icmp eq ptr %.pre15, %i.d
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.bp = load i64, ptr %i.d, align 8, !tbaa !30
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %.pre15, i64 noundef %i.bq) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  %i.br = getelementptr inbounds nuw i8, ptr %.014, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.br, %i.a
  br i1 %.not, label %._crit_edge.loopexit, label %_ZN4llvm10getPGONameB5cxx11ERKNS_14GlobalVariableEb.exit
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZNK4llvm15InstrProfRecord16accumulateCountsERNS_17CountSumOrPercentE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %1) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !403  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !405    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 3
  %i.h = load i64, ptr %1, align 8, !tbaa !406
  %i.i = add i64 %i.g, %i.h
  store i64 %i.i, ptr %1, align 8, !tbaa !406
  %.not3536 = icmp eq ptr %i.c, %i.b
  br i1 %.not3536, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.j = add i64 %i.d, -8
  %i.k = sub i64 %i.j, %i.e                       ; 2 uses
  %i.l = lshr i64 %i.k, 3
  %i.m = add nuw nsw i64 %i.l, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.k, 24
  br i1 %min.iters.check, label %.lr.ph.preheader87, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.m, 4611686018427387900      ; 3 uses
  %i.n = shl i64 %n.vec, 3
  %i.o = getelementptr i8, ptr %i.c, i64 %i.n
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.r, %vector.body ]
  %vec.phi83 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.s, %vector.body ]
  %i.p = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.c, i64 %i.p ; 2 uses
  %i.q = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !51
  %wide.load84 = load <2 x i64>, ptr %i.q, align 8, !tbaa !51
  %i.r = add <2 x i64> %wide.load, %vec.phi       ; 2 uses
  %i.s = add <2 x i64> %wide.load84, %vec.phi83   ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !410

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.s, %i.r
  %i.u = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.m, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %.lr.ph.preheader87

.lr.ph.preheader87:                               ; preds = %.lr.ph.preheader, %middle.block
  %.038.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %i.u, %middle.block ]
  %.sroa.032.037.ph = phi ptr [ %i.c, %.lr.ph.preheader ], [ %i.o, %middle.block ]
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph, %middle.block
  %.lcssa82 = phi i64 [ %i.u, %middle.block ], [ %i.ao, %.lr.ph ]
  %i.v = uitofp i64 %.lcssa82 to double
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.v, %._crit_edge.loopexit ]
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.x = load double, ptr %i.w, align 8, !tbaa !413
  %i.y = fadd double %i.x, %.0.lcssa
  store double %i.y, ptr %i.w, align 8, !tbaa !413
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !414 ; 7 uses
  %.not.i.i = icmp eq ptr %i.aa, null
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  br i1 %.not.i.i, label %.split.us, label %_ZNK4llvm15InstrProfRecord16getNumValueSitesEj.exit.preheader

_ZNK4llvm15InstrProfRecord16getNumValueSitesEj.exit.preheader: ; preds = %._crit_edge
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !416 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !419
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = sdiv exact i64 %i.ah, 24                ; 4 uses
  %i.aj = and i64 %i.ai, 4294967295               ; 2 uses
  %.not54 = icmp eq i64 %i.aj, 0
  br i1 %.not54, label %._crit_edge49, label %.lr.ph48.preheader

.lr.ph48.preheader:                               ; preds = %_ZNK4llvm15InstrProfRecord16getNumValueSitesEj.exit.preheader
  %xtraiter = and i64 %i.ai, 1
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %.lr.ph48.epil.preheader, label %.lr.ph48.preheader.new

.lr.ph48.preheader.new:                           ; preds = %.lr.ph48.preheader
  %unroll_iter = and i64 %i.ai, 4294967294
  br label %.lr.ph48

.split.us:                                        ; preds = %._crit_edge
  %i.al = load <2 x double>, ptr %i.ab, align 8, !tbaa !420
  %i.am = fadd <2 x double> %i.al, zeroinitializer
  store <2 x double> %i.am, ptr %i.ab, align 8, !tbaa !420
  br label %.split53.us

.lr.ph:                                           ; preds = %.lr.ph.preheader87, %.lr.ph
  %.038 = phi i64 [ %i.ao, %.lr.ph ], [ %.038.ph, %.lr.ph.preheader87 ]
  %.sroa.032.037 = phi ptr [ %i.ap, %.lr.ph ], [ %.sroa.032.037.ph, %.lr.ph.preheader87 ] ; 2 uses
  %i.an = load i64, ptr %.sroa.032.037, align 8, !tbaa !51
  %i.ao = add i64 %i.an, %.038                    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.032.037, i64 8 ; 2 uses
  %.not35 = icmp eq ptr %i.ap, %i.b
  br i1 %.not35, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !421

.split53.us:                                      ; preds = %._crit_edge49.1, %._crit_edge49.loopexit.2, %.split.us
  %.028.lcssa.2.sink = phi double [ 0.000000e+00, %.split.us ], [ 0.000000e+00, %._crit_edge49.1 ], [ %i.ec, %._crit_edge49.loopexit.2 ]
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
end_hunk_2
