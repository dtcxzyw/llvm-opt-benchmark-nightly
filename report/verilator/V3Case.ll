Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3Case?download=true
inline.NumInlined: 2331
inline.NumDeleted: 883
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN11CaseVisitor18analyzeCaseDetailsEP7AstCase:bb.a
select.unfold:                                    ; preds = %_ZN7AstNode4castI12AstEnumDType12AstNodeDTypeEEPT_PT0_.exit.i, %bb.de, %bb.df, %bb.dg
  %i.pq = call noundef zeroext i1 @_ZN11CaseVisitor21checkExhaustivePackedEP7AstCase(ptr noundef nonnull align 8 dereferenceable(1573112) %0, ptr noundef nonnull %1)
  %i.pr = zext i1 %i.pq to i8
  br label %bb.dh

bb.dh:                                            ; preds = %select.unfold, %_ZN11CaseVisitor27getEnumCompletionCheckDTypeEPK7AstCase.exit
  %storemerge = phi i8 [ %i.pr, %select.unfold ], [ %i.pp, %_ZN11CaseVisitor27getEnumCompletionCheckDTypeEPK7AstCase.exit ]
  store i8 %storemerge, ptr %i.q, align 8, !tbaa !137
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %._crit_edge576
  %i.ps = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i8 1, ptr %i.ps, align 8, !tbaa !136
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11CaseVisitor21analyzeDecoderPatternEP7AstCase(ptr noundef nonnull align 8 dereferenceable(1573112) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !101  ; 2 uses
  %.not9095 = icmp eq ptr %i.b, null
  br i1 %.not9095, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 105
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 241
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.v
  %.sroa.077.096 = phi ptr [ %i.b, %.lr.ph ], [ %.sroa.077.1, %bb.v ] ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.077.096, i64 32
  %i.l = load i64, ptr %i.k, align 8, !tbaa !252  ; 2 uses
  %.not = icmp eq i64 %i.l, 0                     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.077.096, i64 40
  %i.n = load i64, ptr %i.m, align 8, !tbaa !253  ; 2 uses
  %.not36 = icmp eq i64 %i.n, 0                   ; 2 uses
  br i1 %.not, label %bb.c, label %bb.n

bb.c:                                             ; preds = %bb.b
  br i1 %.not36, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.o = load i64, ptr %i.h, align 8, !tbaa !40   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.077.096, i64 64
  %i.q = load i64, ptr %i.p, align 8, !tbaa !255
  %i.r = urem i64 %i.q, %i.o                      ; 3 uses
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !39   ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.r ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !256  ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.0.i.i.i = phi ptr [ %i.u, %bb.d ], [ %i.v, %bb.e ] ; 4 uses
  %i.v = load ptr, ptr %.0.i.i.i, align 8, !tbaa !102 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, %.sroa.077.096
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableI5VNRefI11AstNodeExprESt4pairIKS2_N11CaseVisitor9LhsRecordEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE20_M_get_previous_nodeEmPNS9_10_Hash_nodeIS7_Lb1EEE.exit.i.i, label %bb.e, !llvm.loop !446

_ZNSt10_HashtableI5VNRefI11AstNodeExprESt4pairIKS2_N11CaseVisitor9LhsRecordEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE20_M_get_previous_nodeEmPNS9_10_Hash_nodeIS7_Lb1EEE.exit.i.i: ; preds = %bb.e
  %i.w = icmp eq ptr %.0.i.i.i, %i.u
  %i.x = load ptr, ptr %.sroa.077.096, align 8, !tbaa !102 ; 4 uses
  %.not18.i.i.i = icmp eq ptr %i.x, null          ; 2 uses
  br i1 %i.w, label %bb.f, label %bb.k

bb.f:                                             ; preds = %_ZNSt10_HashtableI5VNRefI11AstNodeExprESt4pairIKS2_N11CaseVisitor9LhsRecordEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE20_M_get_previous_nodeEmPNS9_10_Hash_nodeIS7_Lb1EEE.exit.i.i
  br i1 %.not18.i.i.i, label %._crit_edge.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %i.z = load i64, ptr %i.y, align 8, !tbaa !255
  %i.aa = urem i64 %i.z, %i.o                     ; 2 uses
  %.not9.i.i.i.i = icmp eq i64 %i.aa, %i.r
  br i1 %.not9.i.i.i.i, label %_ZNSt13unordered_mapI5VNRefI11AstNodeExprEN11CaseVisitor9LhsRecordESt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S4_EEE5eraseENSt8__detail20_Node_const_iteratorISB_Lb0ELb1EEE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.aa
  store ptr %i.u, ptr %i.ab, align 8, !tbaa !256
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.h, %bb.f
  %i.ac = icmp eq ptr %i.a, %i.u
  br i1 %i.ac, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  store ptr %i.x, ptr %i.a, align 8, !tbaa !101
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i.i
  store ptr null, ptr %i.t, align 8, !tbaa !256
  br label %_ZNSt13unordered_mapI5VNRefI11AstNodeExprEN11CaseVisitor9LhsRecordESt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S4_EEE5eraseENSt8__detail20_Node_const_iteratorISB_Lb0ELb1EEE.exit

bb.k:                                             ; preds = %_ZNSt10_HashtableI5VNRefI11AstNodeExprESt4pairIKS2_N11CaseVisitor9LhsRecordEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE20_M_get_previous_nodeEmPNS9_10_Hash_nodeIS7_Lb1EEE.exit.i.i
  br i1 %.not18.i.i.i, label %_ZNSt13unordered_mapI5VNRefI11AstNodeExprEN11CaseVisitor9LhsRecordESt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S4_EEE5eraseENSt8__detail20_Node_const_iteratorISB_Lb0ELb1EEE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !255
  %i.af = urem i64 %i.ae, %i.o                    ; 2 uses
  %.not17.i.i.i = icmp eq i64 %i.af, %i.r
  br i1 %.not17.i.i.i, label %_ZNSt13unordered_mapI5VNRefI11AstNodeExprEN11CaseVisitor9LhsRecordESt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S4_EEE5eraseENSt8__detail20_Node_const_iteratorISB_Lb0ELb1EEE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.af
  store ptr %.0.i.i.i, ptr %i.ag, align 8, !tbaa !256
  br label %_ZNSt13unordered_mapI5VNRefI11AstNodeExprEN11CaseVisitor9LhsRecordESt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S4_EEE5eraseENSt8__detail20_Node_const_iteratorISB_Lb0ELb1EEE.exit

_ZNSt13unordered_mapI5VNRefI11AstNodeExprEN11CaseVisitor9LhsRecordESt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S4_EEE5eraseENSt8__detail20_Node_const_iteratorISB_Lb0ELb1EEE.exit: ; preds = %bb.g, %bb.j, %bb.k, %bb.l, %bb.m
  %i.ah = load ptr, ptr %.sroa.077.096, align 8, !tbaa !102 ; 2 uses
  store ptr %i.ah, ptr %.0.i.i.i, align 8, !tbaa !102
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.077.096, i64 noundef 72) #23
  %i.ai = load i64, ptr %i.j, align 8, !tbaa !257
  %i.aj = add i64 %i.ai, -1
  store i64 %i.aj, ptr %i.j, align 8, !tbaa !257
  br label %bb.v, !llvm.loop !447

bb.n:                                             ; preds = %bb.b
  br i1 %.not36, label %.thread, label %_ZZN11CaseVisitor21analyzeDecoderPatternEP7AstCaseENKUlmmE_clEmm.exit58

.thread:                                          ; preds = %bb.c, %bb.n
  %i.ak = phi i64 [ %i.n, %bb.c ], [ 0, %bb.n ]   ; 2 uses
  %i.al = load ptr, ptr %.sroa.077.096, align 8, !tbaa !102 ; 3 uses
  %i.am = load i8, ptr %i.c, align 1, !tbaa !141, !range !95, !noundef !96
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.r, label %bb.o

bb.o:                                             ; preds = %.thread
  %i.ao = load i8, ptr %i.d, align 8, !tbaa !136, !range !95, !noundef !96
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.aq = load i8, ptr %i.e, align 8, !tbaa !137, !range !95, !noundef !96
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.as = load i8, ptr %i.f, align 1, !tbaa !214, !range !95, !noundef !96
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q, %.thread
  %i.au = load i64, ptr %i.g, align 8, !tbaa !164 ; 2 uses
  %i.av = icmp eq i64 %i.l, %i.au
  %i.aw = icmp eq i64 %i.ak, %i.au
  %or.cond = select i1 %i.av, i1 true, i1 %i.aw
  br i1 %or.cond, label %bb.v, label %bb.s, !llvm.loop !447

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.o
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.077.096, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !157 ; 3 uses
  %.not39 = icmp eq ptr %i.ay, null
  br i1 %.not39, label %_ZZN11CaseVisitor21analyzeDecoderPatternEP7AstCaseENKUlmmE_clEmm.exit58, label %bb.t

bb.t:                                             ; preds = %bb.s
  br i1 %.not, label %bb.u, label %_ZN7AstNode2isI9AstAssignS_EEbPKT0_.exit

_ZN7AstNode2isI9AstAssignS_EEbPKT0_.exit:         ; preds = %bb.t
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.az, align 8, !tbaa !158
  %i.ba = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 466
  br i1 %i.ba, label %bb.u, label %_ZZN11CaseVisitor21analyzeDecoderPatternEP7AstCaseENKUlmmE_clEmm.exit58

bb.u:                                             ; preds = %_ZN7AstNode2isI9AstAssignS_EEbPKT0_.exit, %bb.t
  %.not41 = icmp eq i64 %i.ak, 0
  br i1 %.not41, label %bb.v, label %_ZN7AstNode2isI12AstAssignDlyS_EEbPKT0_.exit

_ZN7AstNode2isI12AstAssignDlyS_EEbPKT0_.exit:     ; preds = %bb.u
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  %.sroa.0.0.copyload.i.i.i44 = load i16, ptr %i.bb, align 8, !tbaa !158
  %i.bc = icmp eq i16 %.sroa.0.0.copyload.i.i.i44, 469
  br i1 %i.bc, label %bb.v, label %_ZZN11CaseVisitor21analyzeDecoderPatternEP7AstCaseENKUlmmE_clEmm.exit58

bb.v:                                             ; preds = %bb.u, %_ZN7AstNode2isI12AstAssignDlyS_EEbPKT0_.exit, %bb.r, %_ZNSt13unordered_mapI5VNRefI11AstNodeExprEN11CaseVisitor9LhsRecordESt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S4_EEE5eraseENSt8__detail20_Node_const_iteratorISB_Lb0ELb1EEE.exit
  %.sroa.077.1 = phi ptr [ %i.ah, %_ZNSt13unordered_mapI5VNRefI11AstNodeExprEN11CaseVisitor9LhsRecordESt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S4_EEE5eraseENSt8__detail20_Node_const_iteratorISB_Lb0ELb1EEE.exit ], [ %i.al, %bb.r ], [ %i.al, %bb.u ], [ %i.al, %_ZN7AstNode2isI12AstAssignDlyS_EEbPKT0_.exit ] ; 2 uses
  %.not90 = icmp eq ptr %.sroa.077.1, null
  br i1 %.not90, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.v, %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !257 ; 5 uses
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %_ZZN11CaseVisitor21analyzeDecoderPatternEP7AstCaseENKUlmmE_clEmm.exit58, label %bb.w

bb.w:                                             ; preds = %._crit_edge
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 7 uses
  %i.bh = icmp ugt i64 %i.be, 192153584101141162
  br i1 %i.bh, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.530) #26
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 6 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !48 ; 2 uses
  %i.bk = load ptr, ptr %i.bg, align 8, !tbaa !47 ; 2 uses
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = ptrtoint ptr %i.bk to i64               ; 2 uses
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = sdiv exact i64 %i.bn, 48
  %i.bp = icmp ult i64 %i.bo, %i.be
  br i1 %i.bp, label %_ZNSt12_Vector_baseIN11CaseVisitor9LhsRecordESaIS1_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN11CaseVisitor9LhsRecordESaIS1_EE7reserveEm.exit

_ZNSt12_Vector_baseIN11CaseVisitor9LhsRecordESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.y
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !142
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = sub i64 %i.bs, %i.bm
  %i.bu = mul nuw nsw i64 %i.be, 48
  %i.bv = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bu) #27 ; 5 uses
  %i.bw = load ptr, ptr %i.bg, align 8, !tbaa !47 ; 5 uses
  %i.bx = load ptr, ptr %i.bq, align 8, !tbaa !142 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.bw, %i.bx
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN11CaseVisitor9LhsRecordESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseIN11CaseVisitor9LhsRecordESaIS1_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bz, %.lr.ph.i.i.i.i ], [ %i.bv, %_ZNSt12_Vector_baseIN11CaseVisitor9LhsRecordESaIS1_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.by, %.lr.ph.i.i.i.i ], [ %i.bw, %_ZNSt12_Vector_baseIN11CaseVisitor9LhsRecordESaIS1_EE11_M_allocateEm.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.0911.i.i.i.i, i64 48, i1 false), !tbaa.struct !260, !alias.scope !456
  %i.by = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 48 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 48
  %.not.i.i.i.i = icmp eq ptr %i.by, %i.bx
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN11CaseVisitor9LhsRecordESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !451

_ZNSt6vectorIN11CaseVisitor9LhsRecordESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt12_Vector_baseIN11CaseVisitor9LhsRecordESaIS1_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.bw, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN11CaseVisitor9LhsRecordESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIN11CaseVisitor9LhsRecordESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %i.ca = load ptr, ptr %i.bi, align 8, !tbaa !48
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = ptrtoint ptr %i.bw to i64
  %i.cd = sub i64 %i.cb, %i.cc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bw, i64 noundef %i.cd) #23
  br label %_ZNSt12_Vector_baseIN11CaseVisitor9LhsRecordESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseIN11CaseVisitor9LhsRecordESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.z, %_ZNSt6vectorIN11CaseVisitor9LhsRecordESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.bv, ptr %i.bg, align 8, !tbaa !47
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bt
  store ptr %i.ce, ptr %i.bq, align 8, !tbaa !142
  %i.cf = getelementptr inbounds nuw [48 x i8], ptr %i.bv, i64 %i.be ; 2 uses
  store ptr %i.cf, ptr %i.bi, align 8, !tbaa !48
  br label %_ZNSt6vectorIN11CaseVisitor9LhsRecordESaIS1_EE7reserveEm.exit

_ZNSt6vectorIN11CaseVisitor9LhsRecordESaIS1_EE7reserveEm.exit: ; preds = %bb.y, %_ZNSt12_Vector_baseIN11CaseVisitor9LhsRecordESaIS1_EE13_M_deallocateEPS1_m.exit.i
  %.pre117 = phi ptr [ %i.bj, %bb.y ], [ %i.cf, %_ZNSt12_Vector_baseIN11CaseVisitor9LhsRecordESaIS1_EE13_M_deallocateEPS1_m.exit.i ]
  %i.cg = phi ptr [ %i.bk, %bb.y ], [ %i.bv, %_ZNSt12_Vector_baseIN11CaseVisitor9LhsRecordESaIS1_EE13_M_deallocateEPS1_m.exit.i ]
  %.sroa.071.097 = load ptr, ptr %i.a, align 8, !tbaa !102 ; 2 uses
  %.not9198 = icmp eq ptr %.sroa.071.097, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 4 uses
  %.pre117.a = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !170 ; 2 uses
  br i1 %.not9198, label %._crit_edge101, label %.lr.ph100

._crit_edge101.loopexit:                          ; preds = %_ZNSt6vectorIN11CaseVisitor9LhsRecordESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit
  %.pre116.a = load ptr, ptr %i.bg, align 8, !tbaa !170
  br label %._crit_edge101

._crit_edge101:                                   ; preds = %_ZNSt6vectorIN11CaseVisitor9LhsRecordESaIS1_EE7reserveEm.exit, %._crit_edge101.loopexit
  %i.ch = phi ptr [ %i.dy, %._crit_edge101.loopexit ], [ %.pre117.a, %_ZNSt6vectorIN11CaseVisitor9LhsRecordESaIS1_EE7reserveEm.exit ] ; 4 uses
  %i.ci = phi ptr [ %.pre116.a, %._crit_edge101.loopexit ], [ %i.cg, %_ZNSt6vectorIN11CaseVisitor9LhsRecordESaIS1_EE7reserveEm.exit ] ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 200
  %.not.i.i = icmp eq ptr %i.ci, %i.ch
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN11CaseVisitor9LhsRecordESt6vectorIS3_SaIS3_EEEEZNS2_21analyzeDecoderPatternEP7AstCaseEUlRKS3_SC_E_EvT_SE_T0_.exit, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge101
  %i.ck = ptrtoint ptr %i.ch to i64
  %i.cl = ptrtoint ptr %i.ci to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = sdiv exact i64 %i.cm, 48
  %i.co = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cn, i1 true)
  %i.cp = shl nuw nsw i64 %i.co, 1
  %i.cq = xor i64 %i.cp, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN11CaseVisitor9LhsRecordESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_21analyzeDecoderPatternEP7AstCaseEUlRKS3_SE_E_EEEvT_SH_T0_T1_(ptr %i.ci, ptr %i.ch, i64 noundef %i.cq)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN11CaseVisitor9LhsRecordESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21analyzeDecoderPatternEP7AstCaseEUlRKS3_SE_E_EEEvT_SH_T0_(ptr %i.ci, ptr %i.ch)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN11CaseVisitor9LhsRecordESt6vectorIS3_SaIS3_EEEEZNS2_21analyzeDecoderPatternEP7AstCaseEUlRKS3_SC_E_EvT_SE_T0_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN11CaseVisitor9LhsRecordESt6vectorIS3_SaIS3_EEEEZNS2_21analyzeDecoderPatternEP7AstCaseEUlRKS3_SC_E_EvT_SE_T0_.exit: ; preds = %._crit_edge101, %bb.aa
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !133
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 72
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !143 ; 2 uses
  %.not.i45 = icmp eq ptr %i.cu, null
  br i1 %.not.i45, label %_ZNK7AstNode5widthEv.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN11CaseVisitor9LhsRecordESt6vectorIS3_SaIS3_EEEEZNS2_21analyzeDecoderPatternEP7AstCaseEUlRKS3_SC_E_EvT_SE_T0_.exit
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 152
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !168
  br label %_ZNK7AstNode5widthEv.exit

_ZNK7AstNode5widthEv.exit:                        ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN11CaseVisitor9LhsRecordESt6vectorIS3_SaIS3_EEEEZNS2_21analyzeDecoderPatternEP7AstCaseEUlRKS3_SC_E_EvT_SE_T0_.exit, %bb.ab
  %i.cx = phi i32 [ %i.cw, %bb.ab ], [ 0, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN11CaseVisitor9LhsRecordESt6vectorIS3_SaIS3_EEEEZNS2_21analyzeDecoderPatternEP7AstCaseEUlRKS3_SC_E_EvT_SE_T0_.exit ] ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  store i64 0, ptr %i.cy, align 8, !tbaa !261
  %i.cz = load ptr, ptr %i.bg, align 8, !tbaa !170 ; 3 uses
  %i.da = load ptr, ptr %i.cj, align 8, !tbaa !170 ; 3 uses
  %.not92102 = icmp eq ptr %i.cz, %i.da           ; 2 uses
  br i1 %.not92102, label %bb.ag, label %.lr.ph104

.lr.ph100:                                        ; preds = %_ZNSt6vectorIN11CaseVisitor9LhsRecordESaIS1_EE7reserveEm.exit, %_ZNSt6vectorIN11CaseVisitor9LhsRecordESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit
  %i.db = phi ptr [ %3, %_ZNSt6vectorIN11CaseVisitor9LhsRecordESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit ], [ %.pre117, %_ZNSt6vectorIN11CaseVisitor9LhsRecordESaIS1_EE7reserveEm.exit ] ; 4 uses
  %.sroa.071.099.a = phi ptr [ %i.dy, %_ZNSt6vectorIN11CaseVisitor9LhsRecordESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit ], [ %.pre117.a, %_ZNSt6vectorIN11CaseVisitor9LhsRecordESaIS1_EE7reserveEm.exit ] ; 2 uses
  %.sroa.071.099 = phi ptr [ %.sroa.071.0, %_ZNSt6vectorIN11CaseVisitor9LhsRecordESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit ], [ %.sroa.071.097, %_ZNSt6vectorIN11CaseVisitor9LhsRecordESaIS1_EE7reserveEm.exit ] ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %.sroa.071.099, i64 16 ; 2 uses
  %.not.i46 = icmp eq ptr %.sroa.071.099.a, %i.db
  br i1 %.not.i46, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph100
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.071.099.a, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false), !tbaa.struct !260
  %i.dc = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !142
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 48 ; 2 uses
  store ptr %i.dd, ptr %.phi.trans.insert, align 8, !tbaa !142
  %.pre116 = load ptr, ptr %i.bi, align 8, !tbaa !48
  br label %_ZNSt6vectorIN11CaseVisitor9LhsRecordESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit

bb.ad:                                            ; preds = %.lr.ph100
  %i.de = load ptr, ptr %i.bg, align 8, !tbaa !47 ; 5 uses
  %i.df = ptrtoint ptr %i.db to i64
  %i.dg = ptrtoint ptr %i.de to i64               ; 2 uses
  %i.dh = sub i64 %i.df, %i.dg                    ; 3 uses
  %i.di = icmp eq i64 %i.dh, 9223372036854775776
  br i1 %i.di, label %bb.ae, label %_ZNKSt6vectorIN11CaseVisitor9LhsRecordESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.ae:                                            ; preds = %bb.ad
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.531) #26
  unreachable

_ZNKSt6vectorIN11CaseVisitor9LhsRecordESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ad
  %i.dj = sdiv exact i64 %i.dh, 48                ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.dj, i64 1)
  %i.dk = add nsw i64 %.sroa.speculated.i.i.i, %i.dj ; 2 uses
  %i.dl = icmp ult i64 %i.dk, %i.dj
  %i.dm = tail call i64 @llvm.umin.i64(i64 %i.dk, i64 192153584101141162)
  %i.dn = select i1 %i.dl, i64 192153584101141162, i64 %i.dm ; 3 uses
  %.not.i.i.i47 = icmp ne i64 %i.dn, 0
  tail call void @llvm.assume(i1 %.not.i.i.i47)
  %i.do = mul nuw nsw i64 %i.dn, 48
  %i.dp = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.do) #27 ; 5 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.dh
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dq, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false), !tbaa.struct !260
  %.not10.i.i.i.i.i = icmp eq ptr %i.de, %i.db
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN11CaseVisitor9LhsRecordESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN11CaseVisitor9LhsRecordESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ds, %.lr.ph.i.i.i.i.i ], [ %i.dp, %_ZNKSt6vectorIN11CaseVisitor9LhsRecordESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.dr, %.lr.ph.i.i.i.i.i ], [ %i.de, %_ZNKSt6vectorIN11CaseVisitor9LhsRecordESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.0911.i.i.i.i.i, i64 48, i1 false), !tbaa.struct !260, !alias.scope !457
  %i.dr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 48 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dr, %i.db
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN11CaseVisitor9LhsRecordESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !451

_ZNSt6vectorIN11CaseVisitor9LhsRecordESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN11CaseVisitor9LhsRecordESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.dp, %_ZNKSt6vectorIN11CaseVisitor9LhsRecordESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ds, %.lr.ph.i.i.i.i.i ]
  %i.dt = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.de, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN11CaseVisitor9LhsRecordESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIN11CaseVisitor9LhsRecordESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  %i.du = load ptr, ptr %i.bi, align 8, !tbaa !48
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = sub i64 %i.dv, %i.dg
  tail call void @_ZdlPvm(ptr noundef nonnull %i.de, i64 noundef %i.dw) #23
  br label %_ZNSt6vectorIN11CaseVisitor9LhsRecordESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN11CaseVisitor9LhsRecordESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.af, %_ZNSt6vectorIN11CaseVisitor9LhsRecordESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.dp, ptr %i.bg, align 8, !tbaa !47
  store ptr %i.dt, ptr %.phi.trans.insert, align 8, !tbaa !142
  %i.dx = getelementptr inbounds nuw [48 x i8], ptr %i.dp, i64 %i.dn ; 2 uses
  store ptr %i.dx, ptr %i.bi, align 8, !tbaa !48
  br label %_ZNSt6vectorIN11CaseVisitor9LhsRecordESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit

_ZNSt6vectorIN11CaseVisitor9LhsRecordESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit: ; preds = %bb.ac, %_ZNSt6vectorIN11CaseVisitor9LhsRecordESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %3 = phi ptr [ %.pre116, %bb.ac ], [ %i.dx, %_ZNSt6vectorIN11CaseVisitor9LhsRecordESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ]
  %i.dy = phi ptr [ %i.dd, %bb.ac ], [ %i.dt, %_ZNSt6vectorIN11CaseVisitor9LhsRecordESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 2 uses
  %.sroa.071.0 = load ptr, ptr %.sroa.071.099, align 8, !tbaa !102 ; 2 uses
  %.not91 = icmp eq ptr %.sroa.071.0, null
  br i1 %.not91, label %._crit_edge101.loopexit, label %.lr.ph100

._crit_edge105:                                   ; preds = %_ZNK7AstNode5widthEv.exit50
  store i64 %i.el, ptr %i.cy, align 8, !tbaa !261
  br label %bb.ag

bb.ag:                                            ; preds = %._crit_edge105, %_ZNK7AstNode5widthEv.exit
  %i.dz = phi i64 [ %i.el, %._crit_edge105 ], [ 0, %_ZNK7AstNode5widthEv.exit ] ; 3 uses
  %.not12.i = icmp slt i32 %i.cx, 1
  br i1 %.not12.i, label %_ZZN11CaseVisitor21analyzeDecoderPatternEP7AstCaseENKUlmmE_clEmm.exit58.sink.split, label %.lr.ph.i

bb.ah:                                            ; preds = %.lr.ph.i
  %i.ea = add nuw nsw i32 %.0814.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ea, %i.cx
  br i1 %exitcond.not.i, label %_ZZN11CaseVisitor21analyzeDecoderPatternEP7AstCaseENKUlmmE_clEmm.exit58.sink.split, label %.lr.ph.i, !llvm.loop !455

.lr.ph.i:                                         ; preds = %bb.ag, %bb.ah
  %.0814.i = phi i32 [ %i.ea, %bb.ah ], [ 0, %bb.ag ]
  %.0913.i = phi i64 [ %i.eb, %bb.ah ], [ %i.dz, %bb.ag ]
  %i.eb = shl i64 %.0913.i, 1                     ; 2 uses
  %.not.i48 = icmp ugt i64 %i.eb, 32
  br i1 %.not.i48, label %_ZZN11CaseVisitor21analyzeDecoderPatternEP7AstCaseENKUlmmE_clEmm.exit, label %bb.ah

.lr.ph104:                                        ; preds = %_ZNK7AstNode5widthEv.exit, %_ZNK7AstNode5widthEv.exit50
  %i.ec = phi i64 [ %i.el, %_ZNK7AstNode5widthEv.exit50 ], [ 0, %_ZNK7AstNode5widthEv.exit ] ; 2 uses
  %.sroa.065.0103 = phi ptr [ %i.em, %_ZNK7AstNode5widthEv.exit50 ], [ %i.cz, %_ZNK7AstNode5widthEv.exit ] ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.065.0103, i64 32
  store i64 %i.ec, ptr %i.ed, align 8, !tbaa !262
  %i.ee = load ptr, ptr %.sroa.065.0103, align 8, !tbaa !156
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 72
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !143 ; 2 uses
  %.not.i49 = icmp eq ptr %i.eg, null
  br i1 %.not.i49, label %_ZNK7AstNode5widthEv.exit50, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph104
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 152
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !168
  %i.ej = sext i32 %i.ei to i64
  br label %_ZNK7AstNode5widthEv.exit50

_ZNK7AstNode5widthEv.exit50:                      ; preds = %.lr.ph104, %bb.ai
  %i.ek = phi i64 [ %i.ej, %bb.ai ], [ 0, %.lr.ph104 ]
  %i.el = add i64 %i.ek, %i.ec                    ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.065.0103, i64 48 ; 2 uses
  %.not92 = icmp eq ptr %i.em, %i.da
  br i1 %.not92, label %._crit_edge105, label %.lr.ph104

_ZZN11CaseVisitor21analyzeDecoderPatternEP7AstCaseENKUlmmE_clEmm.exit: ; preds = %.lr.ph.i
  store i64 0, ptr %i.cy, align 8, !tbaa !261
  br i1 %.not92102, label %bb.aj, label %.lr.ph109

._crit_edge110:                                   ; preds = %_ZNK7AstNode5widthEv.exit60
  store i64 %i.fg, ptr %i.cy, align 8, !tbaa !261
  %i.en = add i64 %i.fg, 31
  %i.eo = and i64 %i.en, -32
  br label %bb.aj

bb.aj:                                            ; preds = %._crit_edge110, %_ZZN11CaseVisitor21analyzeDecoderPatternEP7AstCaseENKUlmmE_clEmm.exit
  %i.ep = phi i64 [ %i.eo, %._crit_edge110 ], [ 0, %_ZZN11CaseVisitor21analyzeDecoderPatternEP7AstCaseENKUlmmE_clEmm.exit ] ; 2 uses
  br label %.lr.ph.i52

bb.ak:                                            ; preds = %.lr.ph.i52
  %i.eq = add nuw nsw i32 %.0814.i53, 1           ; 2 uses
  %exitcond.not.i56 = icmp eq i32 %i.eq, %i.cx
  br i1 %exitcond.not.i56, label %_ZZN11CaseVisitor21analyzeDecoderPatternEP7AstCaseENKUlmmE_clEmm.exit58.sink.split, label %.lr.ph.i52, !llvm.loop !455

.lr.ph.i52:                                       ; preds = %bb.aj, %bb.ak
  %.0814.i53 = phi i32 [ %i.eq, %bb.ak ], [ 0, %bb.aj ]
  %.0913.i54 = phi i64 [ %i.er, %bb.ak ], [ %i.ep, %bb.aj ]
  %i.er = shl i64 %.0913.i54, 1                   ; 2 uses
  %.not.i55 = icmp ugt i64 %i.er, 65536
  br i1 %.not.i55, label %_ZZN11CaseVisitor21analyzeDecoderPatternEP7AstCaseENKUlmmE_clEmm.exit58, label %bb.ak

.lr.ph109:                                        ; preds = %_ZZN11CaseVisitor21analyzeDecoderPatternEP7AstCaseENKUlmmE_clEmm.exit, %_ZNK7AstNode5widthEv.exit60
  %i.es = phi i64 [ %i.fg, %_ZNK7AstNode5widthEv.exit60 ], [ 0, %_ZZN11CaseVisitor21analyzeDecoderPatternEP7AstCaseENKUlmmE_clEmm.exit ] ; 4 uses
  %.sroa.061.0108 = phi ptr [ %i.fh, %_ZNK7AstNode5widthEv.exit60 ], [ %i.cz, %_ZZN11CaseVisitor21analyzeDecoderPatternEP7AstCaseENKUlmmE_clEmm.exit ] ; 3 uses
  %i.et = load ptr, ptr %.sroa.061.0108, align 8, !tbaa !156
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 72
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !143 ; 2 uses
  %.not.i59 = icmp eq ptr %i.ev, null
  br i1 %.not.i59, label %_ZNK7AstNode5widthEv.exit60, label %bb.al

bb.al:                                            ; preds = %.lr.ph109
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 152
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !168
  %i.ey = sext i32 %i.ex to i64
  br label %_ZNK7AstNode5widthEv.exit60

_ZNK7AstNode5widthEv.exit60:                      ; preds = %.lr.ph109, %bb.al
  %i.ez = phi i64 [ %i.ey, %bb.al ], [ 0, %.lr.ph109 ] ; 2 uses
  %i.fa = add nsw i64 %i.ez, -1
  %i.fb = add i64 %i.fa, %i.es
  %.not42.unshifted = xor i64 %i.fb, %i.es
  %.not42 = icmp ult i64 %.not42.unshifted, 32
  %i.fc = add i64 %i.es, 31
  %i.fd = and i64 %i.fc, -32
  %i.fe = select i1 %.not42, i64 %i.es, i64 %i.fd ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.061.0108, i64 32
  store i64 %i.fe, ptr %i.ff, align 8, !tbaa !262
  %i.fg = add i64 %i.fe, %i.ez                    ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.061.0108, i64 48 ; 2 uses
  %.not93 = icmp eq ptr %i.fh, %i.da
  br i1 %.not93, label %._crit_edge110, label %.lr.ph109

_ZZN11CaseVisitor21analyzeDecoderPatternEP7AstCaseENKUlmmE_clEmm.exit58.sink.split: ; preds = %bb.ah, %bb.ak, %bb.ag
  %.sink155 = phi i64 [ %i.dz, %bb.ag ], [ %i.ep, %bb.ak ], [ %i.dz, %bb.ah ]
  %i.fi = zext nneg i32 %i.cx to i64
  %i.fj = shl i64 %.sink155, %i.fi
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 %i.fj, ptr %i.fk, align 8, !tbaa !169
  br label %_ZZN11CaseVisitor21analyzeDecoderPatternEP7AstCaseENKUlmmE_clEmm.exit58

_ZZN11CaseVisitor21analyzeDecoderPatternEP7AstCaseENKUlmmE_clEmm.exit58: ; preds = %_ZN7AstNode2isI12AstAssignDlyS_EEbPKT0_.exit, %bb.s, %_ZN7AstNode2isI9AstAssignS_EEbPKT0_.exit, %bb.n, %.lr.ph.i52, %_ZZN11CaseVisitor21analyzeDecoderPatternEP7AstCaseENKUlmmE_clEmm.exit58.sink.split, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7AstNode6dtypepEv(ptr noundef nonnull align 8 dereferenceable(152) %0) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !143
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK13AstBasicDType8isDoubleEv(ptr noundef nonnull align 8 dereferenceable(184) %0) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 164
  %.sroa.0.0.copyload.i = load i8, ptr %i.a, align 4, !tbaa !146
  %i.b = icmp eq i8 %.sroa.0.0.copyload.i, 10
  ret i1 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local i8 @_ZNK13AstBasicDType7keywordEv(ptr noundef nonnull align 8 dereferenceable(184) %0) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 164
  %.sroa.0.0.copyload = load i8, ptr %i.a, align 4, !tbaa !146
  ret i8 %.sroa.0.0.copyload
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK14VBasicDTypeKwd8isDoubleEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #4 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !264
  %i.b = icmp eq i8 %i.a, 10
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK13AstBasicDType8isStringEv(ptr noundef nonnull align 8 dereferenceable(184) %0) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 164
  %.sroa.0.0.copyload.i = load i8, ptr %i.a, align 4, !tbaa !146
  %i.b = icmp eq i8 %.sroa.0.0.copyload.i, 13
  ret i1 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK14VBasicDTypeKwd8isStringEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #4 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !264
  %i.b = icmp eq i8 %i.a, 13
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN15VNUserInUseBase8allocateEiRjRb(i32 noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  store i32 %0, ptr %i.a, align 4, !tbaa !50
  %i.b = load i8, ptr %2, align 1, !tbaa !265, !range !95, !noundef !96
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.h, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.501, i64 noundef 16) ; 0 uses
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.11, i64 noundef 47) ; 0 uses
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.2, i64 noundef 1) ; 0 uses
  %i.g = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !25
  %i.h = getelementptr i8, ptr %i.g, i64 -24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !240
  %i.m = and i32 %i.l, -75
  %i.n = or disjoint i32 %i.m, 2
  store i32 %i.n, ptr %i.k, align 8, !tbaa !241
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef 182) ; 2 uses
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.2, i64 noundef 1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @_Z8cvtToStrIiENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull @.str.502, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.c unwind label %bb.e
end_hunk_0
