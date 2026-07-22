inline.NumInlined: 1773
inline.NumDeleted: 898
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6hermes5irgen11ESTreeIRGen23genIdentifierExpressionEPNS_6ESTree14IdentifierNodeEb:bb.a
  br i1 %i.m, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread22, label %_ZNK6hermes15ScopedHashTableINS_10IdentifierEPNS_5ValueEE5countERKS1_.exit

_ZNK4llvh9StringRef6equalsES0_.exit.thread22:     ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !196  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.q = load i32, ptr %i.p, align 8, !tbaa !197  ; 2 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.thread22
  %i.s = ptrtoint ptr %i.b to i64
  %i.t = trunc i64 %i.s to i32                    ; 2 uses
  %i.u = lshr i32 %i.t, 4
  %i.v = lshr i32 %i.t, 9
  %i.w = xor i32 %i.u, %i.v
  %i.x = add i32 %i.q, -1                         ; 2 uses
  %.03649.i.i.i = and i32 %i.x, %i.w              ; 2 uses
  %i.y = zext nneg i32 %.03649.i.i.i to i64
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.y
  %.sroa.05.0.copyload50.i.i.i = load ptr, ptr %i.z, align 8, !tbaa !198 ; 2 uses
  %i.aa = icmp eq ptr %i.b, %.sroa.05.0.copyload50.i.i.i
  br i1 %i.aa, label %_ZNK6hermes15ScopedHashTableINS_10IdentifierEPNS_5ValueEE5countERKS1_.exit, label %.lr.ph.i.i.i, !prof !199

.lr.ph.i.i.i:                                     ; preds = %bb.b, %bb.c
  %.sroa.05.0.copyload54.i.i.i = phi ptr [ %.sroa.05.0.copyload.i.i.i, %bb.c ], [ %.sroa.05.0.copyload50.i.i.i, %bb.b ]
  %.03653.i.i.i = phi i32 [ %.036.i.i.i, %bb.c ], [ %.03649.i.i.i, %bb.b ]
  %.03851.i.i.i = phi i32 [ %i.ac, %bb.c ], [ 1, %bb.b ] ; 2 uses
  %i.ab = icmp eq ptr %.sroa.05.0.copyload54.i.i.i, inttoptr (i64 -8 to ptr)
  br i1 %i.ab, label %.loopexit, label %bb.c, !prof !200

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.ac = add i32 %.03851.i.i.i, 1
  %i.ad = add i32 %.03851.i.i.i, %.03653.i.i.i
  %.036.i.i.i = and i32 %i.ad, %i.x               ; 2 uses
  %i.ae = zext i32 %.036.i.i.i to i64
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.ae
  %.sroa.05.0.copyload.i.i.i = load ptr, ptr %i.af, align 8, !tbaa !198 ; 2 uses
  %i.ag = icmp eq ptr %i.b, %.sroa.05.0.copyload.i.i.i
  br i1 %i.ag, label %_ZNK6hermes15ScopedHashTableINS_10IdentifierEPNS_5ValueEE5countERKS1_.exit, label %.lr.ph.i.i.i, !prof !201, !llvm.loop !202

.loopexit:                                        ; preds = %.lr.ph.i.i.i, %_ZNK4llvh9StringRef6equalsES0_.exit.thread22
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !35 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 192
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !204 ; 2 uses
  %.not10 = icmp eq ptr %i.ak, null
  br i1 %.not10, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.loopexit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !119
  %i.ao = tail call noundef ptr @_ZN6hermes9IRBuilder19createLoadFrameInstEPNS_8VariableEPNS_17ScopeCreationInstE(ptr noundef nonnull align 8 dereferenceable(40) %i.al, ptr noundef nonnull %i.ak, ptr noundef %i.an) #16 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, null
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %spec.select = select i1 %i.ap, ptr null, ptr %i.aq
  br label %bb.g

bb.e:                                             ; preds = %.loopexit
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 168
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !205 ; 2 uses
  %i.at = icmp eq ptr %i.as, null
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %spec.select1 = select i1 %i.at, ptr null, ptr %i.au
  br label %bb.g

_ZNK6hermes15ScopedHashTableINS_10IdentifierEPNS_5ValueEE5countERKS1_.exit: ; preds = %bb.c, %bb.a, %_ZNK4llvh9StringRef6equalsES0_.exit, %bb.b
  %i.av = tail call noundef ptr @_ZN6hermes5irgen11ESTreeIRGen20ensureVariableExistsEPNS_6ESTree14IdentifierNodeE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %1) #16 ; 2 uses
  %i.aw = load i8, ptr %i.av, align 8, !tbaa !206
  %i.ax = icmp eq i8 %i.aw, 123
  br i1 %i.ax, label %bb.f, label %_ZNK4llvh9StringRef6equalsES0_.exit11.thread

bb.f:                                             ; preds = %_ZNK6hermes15ScopedHashTableINS_10IdentifierEPNS_5ValueEE5countERKS1_.exit
  %.sroa.2.0.copyload = load i64, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !22
  %i.ay = icmp eq i64 %.sroa.2.0.copyload, 9
  br i1 %i.ay, label %_ZNK4llvh9StringRef6equalsES0_.exit11, label %_ZNK4llvh9StringRef6equalsES0_.exit11.thread

_ZNK4llvh9StringRef6equalsES0_.exit11:            ; preds = %bb.f
  %.sroa.0.0.copyload = load ptr, ptr %i.b, align 8, !tbaa !7 ; 2 uses
  %i.az = load i64, ptr %.sroa.0.0.copyload, align 1
  %i.ba = xor i64 %i.az, 7308895133777555061
  %i.bb = getelementptr i8, ptr %.sroa.0.0.copyload, i64 8
  %i.bc = load i8, ptr %i.bb, align 1
  %i.bd = zext i8 %i.bc to i64
  %i.be = xor i64 %i.bd, 100
  %i.bf = or i64 %i.ba, %i.be
  %i.bg = icmp ne i64 %i.bf, 0
  %i.bh = zext i1 %i.bg to i32
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %_ZNK4llvh9StringRef6equalsES0_.exit11.thread26, label %_ZNK4llvh9StringRef6equalsES0_.exit11.thread

_ZNK4llvh9StringRef6equalsES0_.exit11.thread26:   ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit11
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bk = tail call noundef ptr @_ZN6hermes9IRBuilder19getLiteralUndefinedEv(ptr noundef nonnull align 8 dereferenceable(40) %i.bj) #16
  br label %bb.g

_ZNK4llvh9StringRef6equalsES0_.exit11.thread:     ; preds = %bb.f, %_ZNK6hermes15ScopedHashTableINS_10IdentifierEPNS_5ValueEE5countERKS1_.exit, %_ZNK4llvh9StringRef6equalsES0_.exit11
  %i.bl = tail call noundef ptr @_ZN6hermes5irgen11ESTreeIRGen8emitLoadEPNS_5ValueEb(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull %i.av, i1 noundef zeroext %2) #16 ; 2 uses
  %i.bm = icmp eq ptr %i.bl, null
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %spec.select2 = select i1 %i.bm, ptr null, ptr %i.bn
  br label %bb.g

bb.g:                                             ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit11.thread26, %_ZNK4llvh9StringRef6equalsES0_.exit11.thread, %bb.e, %bb.d
  %.1 = phi ptr [ %spec.select, %bb.d ], [ %spec.select1, %bb.e ], [ %i.bk, %_ZNK4llvh9StringRef6equalsES0_.exit11.thread26 ], [ %spec.select2, %_ZNK4llvh9StringRef6equalsES0_.exit11.thread ]
  ret ptr %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare noundef ptr @_ZN6hermes9IRBuilder14getLiteralNullEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes9IRBuilder16getLiteralStringEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(40), ptr, i64) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN6hermes5irgen11ESTreeIRGen16genRegExpLiteralEPNS_6ESTree17RegExpLiteralNodeE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %"class.llvh::SmallVector.263", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.llvh::ArrayRef.276", align 8 ; 5 uses
  %5 = alloca %"class.llvh::SmallVector.263", align 8 ; 12 uses
  %i.b = alloca [2 x ptr], align 16               ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !207
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !209
  %i.h = tail call noundef ptr @_ZN6hermes9IRBuilder16createRegExpInstENS_10IdentifierES1_(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr %i.e, ptr %i.g) #16 ; 3 uses
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !123
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !124  ; 2 uses
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !207  ; 4 uses
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !209  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 120
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !210  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 112 ; 6 uses
  %.not11.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not11.i.i.i.i, label %_ZN6hermes7Context17getCompiledRegExpEPNS_12UniqueStringES2_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZNKSt4lessISt4pairIPN6hermes12UniqueStringES3_EEclERKS4_S7_.exit.thread10.i.i.i.i
  %.013.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessISt4pairIPN6hermes12UniqueStringES3_EEclERKS4_S7_.exit.thread10.i.i.i.i ], [ %i.o, %bb.a ] ; 5 uses
  %.0812.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessISt4pairIPN6hermes12UniqueStringES3_EEclERKS4_S7_.exit.thread10.i.i.i.i ], [ %i.p, %bb.a ]
  %i.q = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !211  ; 2 uses
  %i.s = icmp ult ptr %i.r, %i.l
  br i1 %i.s, label %_ZNKSt4lessISt4pairIPN6hermes12UniqueStringES3_EEclERKS4_S7_.exit.thread.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.t = icmp ult ptr %i.l, %i.r
  br i1 %i.t, label %_ZNKSt4lessISt4pairIPN6hermes12UniqueStringES3_EEclERKS4_S7_.exit.thread10.i.i.i.i, label %_ZNKSt4lessISt4pairIPN6hermes12UniqueStringES3_EEclERKS4_S7_.exit.i.i.i.i

_ZNKSt4lessISt4pairIPN6hermes12UniqueStringES3_EEclERKS4_S7_.exit.i.i.i.i: ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !213
  %i.w = icmp ult ptr %i.v, %i.m
  br i1 %i.w, label %_ZNKSt4lessISt4pairIPN6hermes12UniqueStringES3_EEclERKS4_S7_.exit.thread.i.i.i.i, label %_ZNKSt4lessISt4pairIPN6hermes12UniqueStringES3_EEclERKS4_S7_.exit.thread10.i.i.i.i

_ZNKSt4lessISt4pairIPN6hermes12UniqueStringES3_EEclERKS4_S7_.exit.thread.i.i.i.i: ; preds = %_ZNKSt4lessISt4pairIPN6hermes12UniqueStringES3_EEclERKS4_S7_.exit.i.i.i.i, %.lr.ph.i.i.i.i
  br label %_ZNKSt4lessISt4pairIPN6hermes12UniqueStringES3_EEclERKS4_S7_.exit.thread10.i.i.i.i

_ZNKSt4lessISt4pairIPN6hermes12UniqueStringES3_EEclERKS4_S7_.exit.thread10.i.i.i.i: ; preds = %_ZNKSt4lessISt4pairIPN6hermes12UniqueStringES3_EEclERKS4_S7_.exit.thread.i.i.i.i, %_ZNKSt4lessISt4pairIPN6hermes12UniqueStringES3_EEclERKS4_S7_.exit.i.i.i.i, %bb.b
  %.sink.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessISt4pairIPN6hermes12UniqueStringES3_EEclERKS4_S7_.exit.thread.i.i.i.i ], [ 16, %bb.b ], [ 16, %_ZNKSt4lessISt4pairIPN6hermes12UniqueStringES3_EEclERKS4_S7_.exit.i.i.i.i ]
  %.19.i.i.i.i = phi ptr [ %.0812.i.i.i.i, %_ZNKSt4lessISt4pairIPN6hermes12UniqueStringES3_EEclERKS4_S7_.exit.thread.i.i.i.i ], [ %.013.i.i.i.i, %bb.b ], [ %.013.i.i.i.i, %_ZNKSt4lessISt4pairIPN6hermes12UniqueStringES3_EEclERKS4_S7_.exit.i.i.i.i ] ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.x, align 8, !tbaa !214 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt8_Rb_treeISt4pairIPN6hermes12UniqueStringES3_ES0_IKS4_NS1_14CompiledRegExpEESt10_Select1stIS7_ESt4lessIS4_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !215

_ZNSt8_Rb_treeISt4pairIPN6hermes12UniqueStringES3_ES0_IKS4_NS1_14CompiledRegExpEESt10_Select1stIS7_ESt4lessIS4_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i: ; preds = %_ZNKSt4lessISt4pairIPN6hermes12UniqueStringES3_EEclERKS4_S7_.exit.thread10.i.i.i.i
  %i.y = icmp eq ptr %.19.i.i.i.i, %i.p
  br i1 %i.y, label %_ZN6hermes7Context17getCompiledRegExpEPNS_12UniqueStringES2_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt8_Rb_treeISt4pairIPN6hermes12UniqueStringES3_ES0_IKS4_NS1_14CompiledRegExpEESt10_Select1stIS7_ESt4lessIS4_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !211 ; 2 uses
  %i.ab = icmp ult ptr %i.l, %i.aa
  br i1 %i.ab, label %_ZN6hermes7Context17getCompiledRegExpEPNS_12UniqueStringES2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = icmp ult ptr %i.aa, %i.l
  br i1 %i.ac, label %_ZNKSt4lessISt4pairIPN6hermes12UniqueStringES3_EEclERKS4_S7_.exit.thread6.i.i.i, label %_ZNKSt4lessISt4pairIPN6hermes12UniqueStringES3_EEclERKS4_S7_.exit.i.i.i

_ZNKSt4lessISt4pairIPN6hermes12UniqueStringES3_EEclERKS4_S7_.exit.i.i.i: ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !213
  %i.af = icmp ult ptr %i.m, %i.ae
  br i1 %i.af, label %_ZN6hermes7Context17getCompiledRegExpEPNS_12UniqueStringES2_.exit, label %_ZNKSt4lessISt4pairIPN6hermes12UniqueStringES3_EEclERKS4_S7_.exit.thread6.i.i.i

_ZNKSt4lessISt4pairIPN6hermes12UniqueStringES3_EEclERKS4_S7_.exit.thread6.i.i.i: ; preds = %_ZNKSt4lessISt4pairIPN6hermes12UniqueStringES3_EEclERKS4_S7_.exit.i.i.i, %bb.d
  br label %_ZN6hermes7Context17getCompiledRegExpEPNS_12UniqueStringES2_.exit

_ZN6hermes7Context17getCompiledRegExpEPNS_12UniqueStringES2_.exit: ; preds = %bb.a, %_ZNSt8_Rb_treeISt4pairIPN6hermes12UniqueStringES3_ES0_IKS4_NS1_14CompiledRegExpEESt10_Select1stIS7_ESt4lessIS4_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i, %bb.c, %_ZNKSt4lessISt4pairIPN6hermes12UniqueStringES3_EEclERKS4_S7_.exit.i.i.i, %_ZNKSt4lessISt4pairIPN6hermes12UniqueStringES3_EEclERKS4_S7_.exit.thread6.i.i.i
  %.sroa.0.0.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessISt4pairIPN6hermes12UniqueStringES3_EEclERKS4_S7_.exit.thread6.i.i.i ], [ %i.p, %bb.a ], [ %i.p, %_ZNSt8_Rb_treeISt4pairIPN6hermes12UniqueStringES3_ES0_IKS4_NS1_14CompiledRegExpEESt10_Select1stIS7_ESt4lessIS4_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i ], [ %i.p, %_ZNKSt4lessISt4pairIPN6hermes12UniqueStringES3_EEclERKS4_S7_.exit.i.i.i ], [ %i.p, %bb.c ] ; 7 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 216 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 224 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !216 ; 2 uses
  %.not = icmp eq i32 %i.ai, 0
  br i1 %.not, label %_ZN6hermes7Context17getCompiledRegExpEPNS_12UniqueStringES2_.exit._crit_edge, label %bb.e

bb.e:                                             ; preds = %_ZN6hermes7Context17getCompiledRegExpEPNS_12UniqueStringES2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.aj, ptr %2, align 8, !tbaa !219
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  store i32 0, ptr %i.ak, align 8, !tbaa !220
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 4, ptr %i.al, align 4, !tbaa !221
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 152
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !222, !noalias !227 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 184
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !222, !noalias !230 ; 2 uses
  %.not3132 = icmp eq ptr %i.an, %i.ap
  br i1 %.not3132, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.aq, ptr %5, align 8, !tbaa !219
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.ar, align 8, !tbaa !220
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 4, ptr %i.as, align 4, !tbaa !221
  br label %_ZN4llvh11SmallVectorISt4pairIPN6hermes7LiteralES4_ELj4EEC2ERKS6_.exit

.lr.ph:                                           ; preds = %bb.e
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 176
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !233, !noalias !227
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 168
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !234, !noalias !227
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 232
  br label %bb.i

._crit_edge:                                      ; preds = %_ZNSt15_Deque_iteratorIN4llvh11SmallVectorIDsLj5EEERS2_PS2_EppEv.exit
  %.pre = load i32, ptr %i.ah, align 8, !tbaa !216 ; 2 uses
  %.pre36.a = load i32, ptr %i.ak, align 8, !tbaa !220 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  store ptr %i.bb, ptr %5, align 8, !tbaa !219
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i32 0, ptr %i.bc, align 8, !tbaa !220
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 4, ptr %i.bd, align 4, !tbaa !221
  %.not.i.i = icmp eq i32 %.pre36.a, 0
  br i1 %.not.i.i, label %_ZN4llvh11SmallVectorISt4pairIPN6hermes7LiteralES4_ELj4EEC2ERKS6_.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.be = zext i32 %.pre36.a to i64               ; 2 uses
  %i.bf = icmp ugt i32 %.pre36.a, 4
  br i1 %i.bf, label %_ZSt4copyIPKSt4pairIPN6hermes7LiteralES3_EPS4_ET0_T_S9_S8_.exit35.i.i, label %_ZSt4copyIPKSt4pairIPN6hermes7LiteralES3_EPS4_ET0_T_S9_S8_.exit35.i.thread.i

_ZSt4copyIPKSt4pairIPN6hermes7LiteralES3_EPS4_ET0_T_S9_S8_.exit35.i.i: ; preds = %bb.f
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %5, ptr noundef nonnull %i.bb, i64 noundef %i.be, i64 noundef 16) #16
  %.pre.i.i = load i32, ptr %i.ak, align 8, !tbaa !220 ; 2 uses
  %.not.i.i.i = icmp eq i32 %.pre.i.i, 0
  br i1 %.not.i.i.i, label %.sink.split.i.i, label %_ZSt4copyIPKSt4pairIPN6hermes7LiteralES3_EPS4_ET0_T_S9_S8_.exit35.i.i._ZSt4copyIPKSt4pairIPN6hermes7LiteralES3_EPS4_ET0_T_S9_S8_.exit35.i.thread.i_crit_edge

_ZSt4copyIPKSt4pairIPN6hermes7LiteralES3_EPS4_ET0_T_S9_S8_.exit35.i.i._ZSt4copyIPKSt4pairIPN6hermes7LiteralES3_EPS4_ET0_T_S9_S8_.exit35.i.thread.i_crit_edge: ; preds = %_ZSt4copyIPKSt4pairIPN6hermes7LiteralES3_EPS4_ET0_T_S9_S8_.exit35.i.i
  %.pre37.i.i = zext i32 %.pre.i.i to i64
  %.pre37 = load ptr, ptr %5, align 8, !tbaa !219
  br label %_ZSt4copyIPKSt4pairIPN6hermes7LiteralES3_EPS4_ET0_T_S9_S8_.exit35.i.thread.i

_ZSt4copyIPKSt4pairIPN6hermes7LiteralES3_EPS4_ET0_T_S9_S8_.exit35.i.thread.i: ; preds = %_ZSt4copyIPKSt4pairIPN6hermes7LiteralES3_EPS4_ET0_T_S9_S8_.exit35.i.i._ZSt4copyIPKSt4pairIPN6hermes7LiteralES3_EPS4_ET0_T_S9_S8_.exit35.i.thread.i_crit_edge, %bb.f
  %i.bg = phi ptr [ %.pre37, %_ZSt4copyIPKSt4pairIPN6hermes7LiteralES3_EPS4_ET0_T_S9_S8_.exit35.i.i._ZSt4copyIPKSt4pairIPN6hermes7LiteralES3_EPS4_ET0_T_S9_S8_.exit35.i.thread.i_crit_edge ], [ %i.bb, %bb.f ]
  %.pre-phi.i8.i = phi i64 [ %.pre37.i.i, %_ZSt4copyIPKSt4pairIPN6hermes7LiteralES3_EPS4_ET0_T_S9_S8_.exit35.i.i._ZSt4copyIPKSt4pairIPN6hermes7LiteralES3_EPS4_ET0_T_S9_S8_.exit35.i.thread.i_crit_edge ], [ %i.be, %bb.f ]
  %i.bh = load ptr, ptr %2, align 8, !tbaa !219
  %gepdiff.i.i = shl nuw nsw i64 %.pre-phi.i8.i, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bg, ptr align 8 %i.bh, i64 %gepdiff.i.i, i1 false)
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %_ZSt4copyIPKSt4pairIPN6hermes7LiteralES3_EPS4_ET0_T_S9_S8_.exit35.i.thread.i, %_ZSt4copyIPKSt4pairIPN6hermes7LiteralES3_EPS4_ET0_T_S9_S8_.exit35.i.i
  store i32 %.pre36.a, ptr %i.bc, align 8, !tbaa !220
  br label %_ZN4llvh11SmallVectorISt4pairIPN6hermes7LiteralES4_ELj4EEC2ERKS6_.exit

_ZN4llvh11SmallVectorISt4pairIPN6hermes7LiteralES4_ELj4EEC2ERKS6_.exit: ; preds = %._crit_edge.thread, %._crit_edge, %.sink.split.i.i
  %i.bi = phi ptr [ %i.aq, %._crit_edge.thread ], [ %i.bb, %._crit_edge ], [ %i.bb, %.sink.split.i.i ]
  %i.bj = phi i32 [ %i.ai, %._crit_edge.thread ], [ %.pre, %._crit_edge ], [ %.pre, %.sink.split.i.i ]
  %i.bk = call noundef ptr @_ZN6hermes9IRBuilder34createHBCAllocObjectFromBufferInstEN4llvh11SmallVectorISt4pairIPNS_7LiteralES5_ELj4EEEj(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull %5, i32 noundef %i.bj) #16
  %i.bl = load ptr, ptr %5, align 8, !tbaa !219   ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.bi
  br i1 %i.bm, label %_ZN4llvh11SmallVectorISt4pairIPN6hermes7LiteralES4_ELj4EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvh11SmallVectorISt4pairIPN6hermes7LiteralES4_ELj4EEC2ERKS6_.exit
  call void @free(ptr noundef %i.bl) #16
  br label %_ZN4llvh11SmallVectorISt4pairIPN6hermes7LiteralES4_ELj4EED2Ev.exit

_ZN4llvh11SmallVectorISt4pairIPN6hermes7LiteralES4_ELj4EED2Ev.exit: ; preds = %_ZN4llvh11SmallVectorISt4pairIPN6hermes7LiteralES4_ELj4EEC2ERKS6_.exit, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.bn = insertelement <2 x ptr> poison, ptr %i.h, i64 0
  %i.bo = insertelement <2 x ptr> %i.bn, ptr %i.bk, i64 1 ; 2 uses
  %i.bp = icmp eq <2 x ptr> %i.bo, splat (ptr null)
  %i.bq = getelementptr inbounds nuw i8, <2 x ptr> %i.bo, i64 16
  %i.br = select <2 x i1> %i.bp, <2 x ptr> splat (ptr null), <2 x ptr> %i.bq
  store <2 x ptr> %i.br, ptr %i.b, align 16, !tbaa !235
  %i.bs = call noundef ptr @_ZN6hermes9IRBuilder21createCallBuiltinInstENS_13BuiltinMethod4EnumEN4llvh8ArrayRefIPNS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.c, i8 noundef zeroext 50, ptr nonnull %i.b, i64 2) #16 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  %i.bt = load ptr, ptr %2, align 8, !tbaa !219   ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.aj
  br i1 %i.bu, label %_ZN4llvh11SmallVectorISt4pairIPN6hermes7LiteralES4_ELj4EED2Ev.exit19, label %bb.h

bb.h:                                             ; preds = %_ZN4llvh11SmallVectorISt4pairIPN6hermes7LiteralES4_ELj4EED2Ev.exit
  call void @free(ptr noundef %i.bt) #16
  br label %_ZN4llvh11SmallVectorISt4pairIPN6hermes7LiteralES4_ELj4EED2Ev.exit19

_ZN4llvh11SmallVectorISt4pairIPN6hermes7LiteralES4_ELj4EED2Ev.exit19: ; preds = %_ZN4llvh11SmallVectorISt4pairIPN6hermes7LiteralES4_ELj4EED2Ev.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %_ZN6hermes7Context17getCompiledRegExpEPNS_12UniqueStringES2_.exit._crit_edge

bb.i:                                             ; preds = %.lr.ph, %_ZNSt15_Deque_iteratorIN4llvh11SmallVectorIDsLj5EEERS2_PS2_EppEv.exit
  %.sroa.13.035 = phi ptr [ %i.au, %.lr.ph ], [ %.sroa.13.1, %_ZNSt15_Deque_iteratorIN4llvh11SmallVectorIDsLj5EEERS2_PS2_EppEv.exit ] ; 2 uses
  %.sroa.10.034 = phi ptr [ %i.aw, %.lr.ph ], [ %.sroa.10.1, %_ZNSt15_Deque_iteratorIN4llvh11SmallVectorIDsLj5EEERS2_PS2_EppEv.exit ] ; 2 uses
  %.sroa.028.033 = phi ptr [ %i.an, %.lr.ph ], [ %.sroa.028.1, %_ZNSt15_Deque_iteratorIN4llvh11SmallVectorIDsLj5EEERS2_PS2_EppEv.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  store ptr %i.ax, ptr %3, align 8, !tbaa !236
  store i64 0, ptr %i.ay, align 8, !tbaa !238
  store i8 0, ptr %i.ax, align 8, !tbaa !192
  %i.bv = load ptr, ptr %.sroa.028.033, align 8, !tbaa !219
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.028.033, i64 8 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !220
  %i.by = zext i32 %i.bx to i64
  call void @_ZN6hermes38convertUTF16ToUTF8WithSingleSurrogatesERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4llvh8ArrayRefIDsEE(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr %i.bv, i64 %i.by) #16
  %i.bz = load ptr, ptr %3, align 8, !tbaa !240
  %i.ca = load i64, ptr %i.ay, align 8, !tbaa !238
  %i.cb = call noundef ptr @_ZN6hermes9IRBuilder16getLiteralStringEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr %i.bz, i64 %i.ca) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.cc = load ptr, ptr %.sroa.028.033, align 8, !tbaa !219
  store ptr %i.cc, ptr %4, align 8, !tbaa !241
  %i.cd = load i32, ptr %i.bw, align 8, !tbaa !220
  %i.ce = zext i32 %i.cd to i64
  store i64 %i.ce, ptr %i.az, align 8, !tbaa !244
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.cf = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_8DenseMapINS_8ArrayRefIDsEEjNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E15LookupBucketForIS3_EEbRKT_RPKS8_(ptr noundef nonnull align 1 dereferenceable(1) %i.ag, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.cg = load ptr, ptr %i.a, align 8, !tbaa !245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.ch = load ptr, ptr %i.ag, align 8, !tbaa !246
  %i.ci = load i32, ptr %i.ba, align 8, !tbaa !247
  %i.cj = zext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [24 x i8], ptr %i.ch, i64 %i.cj
  %..i = select i1 %i.cf, ptr %i.cg, ptr %i.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.cl = getelementptr inbounds nuw i8, ptr %..i, i64 16
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !248
  %i.cn = uitofp i32 %i.cm to double
  %i.co = call noundef ptr @_ZN6hermes9IRBuilder16getLiteralNumberEd(ptr noundef nonnull align 8 dereferenceable(40) %i.c, double noundef %i.cn) #16
  %i.cp = load i32, ptr %i.ak, align 8, !tbaa !220 ; 2 uses
  %i.cq = load i32, ptr %i.al, align 4, !tbaa !221
  %.not.i = icmp ult i32 %i.cp, %i.cq
  br i1 %.not.i, label %_ZN4llvh15SmallVectorImplISt4pairIPN6hermes7LiteralES4_EE12emplace_backIJRPNS2_13LiteralStringERPNS2_13LiteralNumberEEEEvDpOT_.exit, label %bb.j, !prof !200

bb.j:                                             ; preds = %bb.i
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.aj, i64 noundef 0, i64 noundef 16) #16
  %.pre.i = load i32, ptr %i.ak, align 8, !tbaa !220
  br label %_ZN4llvh15SmallVectorImplISt4pairIPN6hermes7LiteralES4_EE12emplace_backIJRPNS2_13LiteralStringERPNS2_13LiteralNumberEEEEvDpOT_.exit

_ZN4llvh15SmallVectorImplISt4pairIPN6hermes7LiteralES4_EE12emplace_backIJRPNS2_13LiteralStringERPNS2_13LiteralNumberEEEEvDpOT_.exit: ; preds = %bb.i, %bb.j
  %i.cr = phi i32 [ %.pre.i, %bb.j ], [ %i.cp, %bb.i ] ; 2 uses
  %i.cs = load ptr, ptr %2, align 8, !tbaa !219
  %i.ct = zext i32 %i.cr to i64
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr %i.cs, i64 %i.ct ; 2 uses
  store ptr %i.cb, ptr %i.cu, align 8, !tbaa !250
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store ptr %i.co, ptr %i.cv, align 8, !tbaa !253
  %i.cw = add i32 %i.cr, 1
  store i32 %i.cw, ptr %i.ak, align 8, !tbaa !220
  %i.cx = load ptr, ptr %3, align 8, !tbaa !240   ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.ax
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4llvh15SmallVectorImplISt4pairIPN6hermes7LiteralES4_EE12emplace_backIJRPNS2_13LiteralStringERPNS2_13LiteralNumberEEEEvDpOT_.exit
  %i.cz = load i64, ptr %i.ax, align 8, !tbaa !192
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.da) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4llvh15SmallVectorImplISt4pairIPN6hermes7LiteralES4_EE12emplace_backIJRPNS2_13LiteralStringERPNS2_13LiteralNumberEEEEvDpOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.028.033, i64 32 ; 2 uses
  %i.dc = icmp eq ptr %i.db, %.sroa.10.034
  br i1 %i.dc, label %bb.k, label %_ZNSt15_Deque_iteratorIN4llvh11SmallVectorIDsLj5EEERS2_PS2_EppEv.exit

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.13.035, i64 8 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !254 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 512
  br label %_ZNSt15_Deque_iteratorIN4llvh11SmallVectorIDsLj5EEERS2_PS2_EppEv.exit

_ZNSt15_Deque_iteratorIN4llvh11SmallVectorIDsLj5EEERS2_PS2_EppEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.k
  %.sroa.028.1 = phi ptr [ %i.de, %bb.k ], [ %i.db, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %.sroa.10.1 = phi ptr [ %i.df, %bb.k ], [ %.sroa.10.034, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %.sroa.13.1 = phi ptr [ %i.dd, %bb.k ], [ %.sroa.13.035, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %.not31 = icmp eq ptr %.sroa.028.1, %i.ap
  br i1 %.not31, label %._crit_edge, label %bb.i

_ZN6hermes7Context17getCompiledRegExpEPNS_12UniqueStringES2_.exit._crit_edge: ; preds = %_ZN6hermes7Context17getCompiledRegExpEPNS_12UniqueStringES2_.exit, %_ZN4llvh11SmallVectorISt4pairIPN6hermes7LiteralES4_ELj4EED2Ev.exit19
  %i.dg = icmp eq ptr %i.h, null
  %i.dh = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %spec.select = select i1 %i.dg, ptr null, ptr %i.dh
  ret ptr %spec.select
}

declare noundef ptr @_ZN6hermes9IRBuilder14getLiteralBoolEb(ptr noundef nonnull align 8 dereferenceable(40), i1 noundef zeroext) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes9IRBuilder16getLiteralNumberEd(ptr noundef nonnull align 8 dereferenceable(40), double noundef) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes9IRBuilder16getLiteralBigIntEPNS_12UniqueStringE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN6hermes5irgen11ESTreeIRGen17genAssignmentExprEPNS_6ESTree24AssignmentExpressionNodeE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvh::SmallVector.236", align 8 ; 12 uses
  %3 = alloca [1 x %"class.llvh::StringRef"], align 8 ; 7 uses
  %4 = alloca %"class.llvh::SmallVector.242", align 8 ; 17 uses
  %5 = alloca %"class.hermes::irgen::LReference", align 8 ; 4 uses
  %6 = alloca %"class.hermes::irgen::LReference", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !255  ; 2 uses
  %.sroa.047.0.copyload = load ptr, ptr %i.b, align 8, !tbaa !7 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !22 ; 2 uses
  %i.c = icmp eq i64 %.sroa.5.0.copyload, 1
  br i1 %i.c, label %_ZNK4llvh9StringRef6equalsES0_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread

_ZNK4llvh9StringRef6equalsES0_.exit:              ; preds = %bb.a
  %lhsc = load i8, ptr %.sroa.047.0.copyload, align 1
  %i.d = icmp eq i8 %lhsc, 61
  br i1 %i.d, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread85, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread

_ZNK4llvh9StringRef6equalsES0_.exit.thread85:     ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  store ptr @.str.24, ptr %3, align 8, !tbaa !257
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 1, ptr %i.e, align 8, !tbaa !259
  tail call void @llvm.experimental.noalias.scope.decl(metadata !260)
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !219, !alias.scope !260
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 1, ptr %i.h, align 4, !tbaa !221, !alias.scope !260
  %i.i = ptrtoint ptr %1 to i64
  store i64 %i.i, ptr %i.f, align 8, !alias.scope !260
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i32 1, ptr %i.g, align 8, !tbaa !220, !alias.scope !260
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !263, !noalias !260 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !10
  %i.n = icmp ne i32 %i.m, 54
  %.not12.i15.i = icmp eq ptr %i.k, null
  %.not.i616.i = or i1 %.not12.i15.i, %i.n
  br i1 %.not.i616.i, label %_ZN4llvh15SmallVectorImplIN6hermes5irgen10LReferenceEE7reserveEm.exit.thread, label %.lr.ph.i

_ZN4llvh15SmallVectorImplIN6hermes5irgen10LReferenceEE7reserveEm.exit.thread: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.thread85
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.o, ptr %4, align 8, !tbaa !219
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 0, ptr %i.p, align 8, !tbaa !220
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  store i32 1, ptr %i.q, align 4, !tbaa !221
  %i.r = load ptr, ptr %2, align 8, !tbaa !219    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  br label %.lr.ph.preheader

.lr.ph.i:                                         ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.thread85, %bb.c
  %i.t = phi ptr [ %i.ag, %bb.c ], [ %i.k, %_ZNK4llvh9StringRef6equalsES0_.exit.thread85 ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !255
  %i.w = call noundef ptr @_ZSt9__find_ifIPKN4llvh9StringRefEN9__gnu_cxx5__ops16_Iter_equals_valIS2_EEET_S8_S8_T0_St26random_access_iterator_tag(ptr noundef nonnull %3, ptr noundef nonnull %.sroa.gep, ptr nonnull align 8 dereferenceable(16) %i.v)
  %.not7.i.i = icmp eq ptr %i.w, %.sroa.gep
  %.pre.pre = load i32, ptr %i.g, align 8, !tbaa !220 ; 3 uses
  br i1 %.not7.i.i, label %_ZN6hermes6ESTreeL14linearizeRightINS0_24AssignmentExpressionNodeEEEN4llvh11SmallVectorIPT_Lj1EEES6_NS3_8ArrayRefINS3_9StringRefEEE.exit, label %_ZN6hermes6ESTreeL17checkExprOperatorINS0_24AssignmentExpressionNodeEEEPT_PNS0_4NodeEN4llvh8ArrayRefINS7_9StringRefEEE.exit.i

_ZN6hermes6ESTreeL17checkExprOperatorINS0_24AssignmentExpressionNodeEEEPT_PNS0_4NodeEN4llvh8ArrayRefINS7_9StringRefEEE.exit.i: ; preds = %.lr.ph.i
  %i.x = load i32, ptr %i.h, align 4, !tbaa !221, !alias.scope !260
  %.not.i7.i = icmp ult i32 %.pre.pre, %i.x
end_hunk_0
