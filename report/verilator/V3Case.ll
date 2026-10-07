Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3Case?download=true
inline.NumInlined: 2331
inline.NumDeleted: 883
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN11CaseVisitor18analyzeCaseDetailsEP7AstCase:bb.a
  %i.ne = icmp eq ptr %i.nd, %i.bj
  br i1 %i.ne, label %_ZNSt4pairI8V3NumberS0_ED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i2.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i2.i: ; preds = %bb.ct
  %i.nf = load i64, ptr %i.bj, align 8, !tbaa !23
  %i.ng = add i64 %i.nf, 1
  call void @_ZdlPvm(ptr noundef %i.nd, i64 noundef %i.ng) #23
  br label %_ZNSt4pairI8V3NumberS0_ED2Ev.exit

bb.cu:                                            ; preds = %_ZN8V3NumberD2Ev.exit.i
  %i.nh = load i32, ptr %i.w, align 8, !tbaa !222
  %i.ni = icmp sgt i32 %i.nh, 128
  %i.nj = icmp eq i8 %i.nb, 1
  %i.nk = and i1 %i.nj, %i.ni
  br i1 %i.nk, label %bb.cv, label %_ZNSt4pairI8V3NumberS0_ED2Ev.exit

bb.cv:                                            ; preds = %bb.cu
  %i.nl = load ptr, ptr %2, align 8, !tbaa !230   ; 3 uses
  %.not.i.i.i.i.i.i.i1.i = icmp eq ptr %i.nl, null
  br i1 %.not.i.i.i.i.i.i.i1.i, label %_ZNSt4pairI8V3NumberS0_ED2Ev.exit, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.nm = load ptr, ptr %i.bj, align 8, !tbaa !231
  %i.nn = ptrtoint ptr %i.nm to i64
  %i.no = ptrtoint ptr %i.nl to i64
  %i.np = sub i64 %i.nn, %i.no
  call void @_ZdlPvm(ptr noundef nonnull %i.nl, i64 noundef %i.np) #23
  br label %_ZNSt4pairI8V3NumberS0_ED2Ev.exit

_ZNSt4pairI8V3NumberS0_ED2Ev.exit:                ; preds = %bb.ct, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i2.i, %bb.cu, %bb.cv, %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.cx

bb.cx:                                            ; preds = %.split, %_ZNSt4pairI8V3NumberS0_ED2Ev.exit, %_ZN11CaseVisitor9neverItemEPK7AstCasePK11AstNodeExpr.exit
  %.4112 = phi i1 [ %.1109564, %_ZN11CaseVisitor9neverItemEPK7AstCasePK11AstNodeExpr.exit ], [ %.3111, %_ZNSt4pairI8V3NumberS0_ED2Ev.exit ], [ %.1109564, %.split ] ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %.0103565, i64 8
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !149 ; 5 uses
  %cond = icmp eq ptr %i.nr, null
  br i1 %cond, label %.loopexit, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 64
  %.sroa.0.0.copyload.i.i.i235 = load i16, ptr %i.ns, align 8, !tbaa !158
  %.not6.i236 = icmp eq i16 %.sroa.0.0.copyload.i.i.i235, 121
  br i1 %.not6.i236, label %_ZN7AstNode4castI8AstConst11AstNodeExprEEPKT_PKT0_.exit.i, label %bb.cz, !prof !134

bb.cz:                                            ; preds = %bb.cy
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nr, i64 64
  %i.nu = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.11, i32 noundef 1063) ; 0 uses
  %i.nv = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.nw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.nv, ptr noundef nonnull @.str.12)
  %.sroa.0.0.copyload.i.i5.i237 = load i16, ptr %i.nt, align 8, !tbaa !158
  %i.nx = zext i16 %.sroa.0.0.copyload.i.i5.i237 to i64
  %i.ny = getelementptr inbounds nuw [8 x i8], ptr @_ZZNK6VNType5asciiEvE5names, i64 %i.nx
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !159
  %i.oa = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.nw, ptr noundef %i.nz)
  %i.ob = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.oa, ptr noundef nonnull @.str.13)
  call void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %i.nr, ptr noundef nonnull align 8 dereferenceable(112) %i.ob) #26
  unreachable

.body:                                            ; preds = %bb.bb, %bb.av, %bb.ai, %bb.co, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172, %bb.ah
  %.pn131.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fp, %bb.ah ], [ %i.fq, %bb.ai ], [ %.pn131.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.co ], [ %i.ht, %bb.bb ], [ %i.gi, %bb.av ]
  call void @_ZNSt4pairI8V3NumberS0_ED2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %common.resume

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.e
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph567
  %indvars.iv618.epil.init = phi i64 [ 0, %.lr.ph567 ], [ %indvars.iv.next619.1, %.loopexit.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod826)
  %i.oc = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %indvars.iv618.epil.init ; 3 uses
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !218
  %.not142.epil = icmp eq ptr %i.od, null
  br i1 %.not142.epil, label %bb.da, label %.loopexit

bb.da:                                            ; preds = %.epil.preheader
  store ptr %.0105573, ptr %i.oc, align 8, !tbaa !218
  %i.oe = load ptr, ptr %i.bq, align 8, !tbaa !150
  %i.of = getelementptr inbounds nuw i8, ptr %i.oc, i64 16
  store ptr %i.oe, ptr %i.of, align 8, !tbaa !219
  br label %.loopexit

.loopexit:                                        ; preds = %bb.cx, %.loopexit.loopexit.unr-lcssa, %bb.da, %.epil.preheader, %.preheader272
  %.5113 = phi i1 [ %.0108571, %.preheader272 ], [ %.0108571, %.loopexit.loopexit.unr-lcssa ], [ %.0108571, %.epil.preheader ], [ %.0108571, %bb.da ], [ %.4112, %bb.cx ]
  %.1107 = phi i8 [ 1, %.preheader272 ], [ 1, %.loopexit.loopexit.unr-lcssa ], [ 1, %.epil.preheader ], [ 1, %bb.da ], [ %.0106572, %bb.cx ] ; 3 uses
  %i.og = getelementptr inbounds nuw i8, ptr %.0105573, i64 8
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !149 ; 5 uses
  %cond579 = icmp eq ptr %i.oh, null
  br i1 %cond579, label %._crit_edge576, label %bb.db

bb.db:                                            ; preds = %.loopexit
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 64
  %.sroa.0.0.copyload.i.i.i239 = load i16, ptr %i.oi, align 8, !tbaa !158
  %.not6.i240 = icmp eq i16 %.sroa.0.0.copyload.i.i.i239, 8
  br i1 %.not6.i240, label %_ZN7AstNode2asI11AstCaseItemS_EEPT_PT0_.exit, label %bb.dc, !prof !134

bb.dc:                                            ; preds = %bb.db
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oh, i64 64
  %i.ok = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.11, i32 noundef 1063) ; 0 uses
  %i.ol = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.om = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.ol, ptr noundef nonnull @.str.12)
  %.sroa.0.0.copyload.i.i5.i241 = load i16, ptr %i.oj, align 8, !tbaa !158
  %i.on = zext i16 %.sroa.0.0.copyload.i.i5.i241 to i64
  %i.oo = getelementptr inbounds nuw [8 x i8], ptr @_ZZNK6VNType5asciiEvE5names, i64 %i.on
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !159
  %i.oq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.om, ptr noundef %i.op)
  %i.or = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.oq, ptr noundef nonnull @.str.13)
  call void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %i.oh, ptr noundef nonnull align 8 dereferenceable(112) %i.or) #26
  unreachable

bb.dd:                                            ; preds = %._crit_edge576.thread, %._crit_edge576
  %i.os = phi ptr [ %i.u, %._crit_edge576.thread ], [ %i.bl, %._crit_edge576 ]
  %i.ot = getelementptr inbounds nuw i8, ptr %1, i64 155
  %i.ou = load i8, ptr %i.ot, align 1, !tbaa !445, !range !95, !noundef !96
  %i.ov = trunc nuw i8 %i.ou to i1
  br i1 %i.ov, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.ow = getelementptr inbounds nuw i8, ptr %1, i64 156
  %i.ox = load i8, ptr %i.ow, align 4, !tbaa !244, !range !95, !noundef !96
  %i.oy = trunc nuw i8 %i.ox to i1
  br i1 %i.oy, label %bb.df, label %select.unfold

bb.df:                                            ; preds = %bb.de, %bb.dd
  %i.oz = load ptr, ptr %i.c, align 8, !tbaa !133
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 72
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !143
  %i.pc = call noundef ptr @_ZNK12AstNodeDType12skipRefIterpEbbb(ptr noundef nonnull align 8 dereferenceable(162) %i.pb, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext true) ; 5 uses
  %.not.i.i242 = icmp eq ptr %i.pc, null
  br i1 %.not.i.i242, label %select.unfold, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 64
  %.sroa.0.0.copyload.i.i.i.i243 = load i16, ptr %i.pd, align 8, !tbaa !158
  %i.pe = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i243, 83
  br i1 %i.pe, label %_ZN7AstNode4castI12AstEnumDType12AstNodeDTypeEEPT_PT0_.exit.i, label %select.unfold

_ZN7AstNode4castI12AstEnumDType12AstNodeDTypeEEPT_PT0_.exit.i: ; preds = %bb.dg
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pc, i64 256
  %i.pg = load ptr, ptr %i.pf, align 8, !tbaa !251 ; 2 uses
  %.not.i10.i = icmp eq ptr %i.pg, null
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pc, i64 24
  %i.pi = load ptr, ptr %i.ph, align 8
  %i.pj = select i1 %.not.i10.i, ptr %i.pi, ptr %i.pg ; 2 uses
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !25
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 352
  %i.pm = load ptr, ptr %i.pl, align 8
  %i.pn = call noundef ptr %i.pm(ptr noundef nonnull align 8 dereferenceable(162) %i.pj), !inline_history !431
  %.not9.i = icmp eq ptr %i.pn, null
  br i1 %.not9.i, label %select.unfold, label %_ZN11CaseVisitor27getEnumCompletionCheckDTypeEPK7AstCase.exit

_ZN11CaseVisitor27getEnumCompletionCheckDTypeEPK7AstCase.exit: ; preds = %_ZN7AstNode4castI12AstEnumDType12AstNodeDTypeEEPT_PT0_.exit.i
  %i.po = call noundef zeroext i1 @_ZN11CaseVisitor19checkExhaustiveEnumEPK7AstCasePK12AstEnumDType(ptr noundef nonnull align 8 dereferenceable(1573112) %0, ptr noundef nonnull %1, ptr noundef nonnull %i.pc)
  %i.pp = zext i1 %i.po to i8                     ; 2 uses
  store i8 %i.pp, ptr %i.os, align 1, !tbaa !214
  br label %bb.dh

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
  %2 = phi i64 [ %i.n, %bb.c ], [ 0, %bb.n ]      ; 2 uses
  %i.ak = load ptr, ptr %.sroa.077.096, align 8, !tbaa !102 ; 3 uses
  %i.al = load i8, ptr %i.c, align 1, !tbaa !141, !range !95, !noundef !96
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.r, label %bb.o

bb.o:                                             ; preds = %.thread
  %i.an = load i8, ptr %i.d, align 8, !tbaa !136, !range !95, !noundef !96
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.ap = load i8, ptr %i.e, align 8, !tbaa !137, !range !95, !noundef !96
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.ar = load i8, ptr %i.f, align 1, !tbaa !214, !range !95, !noundef !96
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q, %.thread
  %i.at = load i64, ptr %i.g, align 8, !tbaa !164 ; 2 uses
  %i.au = icmp eq i64 %i.l, %i.at
  %i.av = icmp eq i64 %2, %i.at
  %or.cond = select i1 %i.au, i1 true, i1 %i.av
  br i1 %or.cond, label %bb.v, label %bb.s, !llvm.loop !447

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.o
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.077.096, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !157 ; 3 uses
  %.not39 = icmp eq ptr %i.ax, null
  br i1 %.not39, label %_ZZN11CaseVisitor21analyzeDecoderPatternEP7AstCaseENKUlmmE_clEmm.exit58, label %bb.t

bb.t:                                             ; preds = %bb.s
  br i1 %.not, label %bb.u, label %_ZN7AstNode2isI9AstAssignS_EEbPKT0_.exit

_ZN7AstNode2isI9AstAssignS_EEbPKT0_.exit:         ; preds = %bb.t
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.ay, align 8, !tbaa !158
  %i.az = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 466
  br i1 %i.az, label %bb.u, label %_ZZN11CaseVisitor21analyzeDecoderPatternEP7AstCaseENKUlmmE_clEmm.exit58

bb.u:                                             ; preds = %_ZN7AstNode2isI9AstAssignS_EEbPKT0_.exit, %bb.t
  %.not41 = icmp eq i64 %2, 0
  br i1 %.not41, label %bb.v, label %_ZN7AstNode2isI12AstAssignDlyS_EEbPKT0_.exit

_ZN7AstNode2isI12AstAssignDlyS_EEbPKT0_.exit:     ; preds = %bb.u
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  %.sroa.0.0.copyload.i.i.i44 = load i16, ptr %i.ba, align 8, !tbaa !158
  %i.bb = icmp eq i16 %.sroa.0.0.copyload.i.i.i44, 469
  br i1 %i.bb, label %bb.v, label %_ZZN11CaseVisitor21analyzeDecoderPatternEP7AstCaseENKUlmmE_clEmm.exit58

bb.v:                                             ; preds = %bb.u, %_ZN7AstNode2isI12AstAssignDlyS_EEbPKT0_.exit, %bb.r, %_ZNSt13unordered_mapI5VNRefI11AstNodeExprEN11CaseVisitor9LhsRecordESt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S4_EEE5eraseENSt8__detail20_Node_const_iteratorISB_Lb0ELb1EEE.exit
  %.sroa.077.1 = phi ptr [ %i.ah, %_ZNSt13unordered_mapI5VNRefI11AstNodeExprEN11CaseVisitor9LhsRecordESt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S4_EEE5eraseENSt8__detail20_Node_const_iteratorISB_Lb0ELb1EEE.exit ], [ %i.ak, %bb.r ], [ %i.ak, %bb.u ], [ %i.ak, %_ZN7AstNode2isI12AstAssignDlyS_EEbPKT0_.exit ] ; 2 uses
  %.not90 = icmp eq ptr %.sroa.077.1, null
  br i1 %.not90, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.v, %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !257 ; 5 uses
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %_ZZN11CaseVisitor21analyzeDecoderPatternEP7AstCaseENKUlmmE_clEmm.exit58, label %bb.w

bb.w:                                             ; preds = %._crit_edge
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 7 uses
  %i.bg = icmp ugt i64 %i.bd, 192153584101141162
  br i1 %i.bg, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.530) #26
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 6 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !48 ; 2 uses
  %i.bj = load ptr, ptr %i.bf, align 8, !tbaa !47 ; 2 uses
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %i.bj to i64               ; 2 uses
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = sdiv exact i64 %i.bm, 48
  %i.bo = icmp ult i64 %i.bn, %i.bd
  br i1 %i.bo, label %_ZNSt12_Vector_baseIN11CaseVisitor9LhsRecordESaIS1_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN11CaseVisitor9LhsRecordESaIS1_EE7reserveEm.exit

_ZNSt12_Vector_baseIN11CaseVisitor9LhsRecordESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.y
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !142
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = sub i64 %i.br, %i.bl
  %i.bt = mul nuw nsw i64 %i.bd, 48
  %i.bu = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bt) #27 ; 5 uses
  %i.bv = load ptr, ptr %i.bf, align 8, !tbaa !47 ; 5 uses
  %i.bw = load ptr, ptr %i.bp, align 8, !tbaa !142 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.bv, %i.bw
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN11CaseVisitor9LhsRecordESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseIN11CaseVisitor9LhsRecordESaIS1_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.by, %.lr.ph.i.i.i.i ], [ %i.bu, %_ZNSt12_Vector_baseIN11CaseVisitor9LhsRecordESaIS1_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.bx, %.lr.ph.i.i.i.i ], [ %i.bv, %_ZNSt12_Vector_baseIN11CaseVisitor9LhsRecordESaIS1_EE11_M_allocateEm.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.0911.i.i.i.i, i64 48, i1 false), !tbaa.struct !260, !alias.scope !456
  %i.bx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 48 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 48
  %.not.i.i.i.i = icmp eq ptr %i.bx, %i.bw
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN11CaseVisitor9LhsRecordESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !451

_ZNSt6vectorIN11CaseVisitor9LhsRecordESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt12_Vector_baseIN11CaseVisitor9LhsRecordESaIS1_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.bv, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN11CaseVisitor9LhsRecordESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIN11CaseVisitor9LhsRecordESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %i.bz = load ptr, ptr %i.bh, align 8, !tbaa !48
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = ptrtoint ptr %i.bv to i64
  %i.cc = sub i64 %i.ca, %i.cb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef %i.cc) #23
  br label %_ZNSt12_Vector_baseIN11CaseVisitor9LhsRecordESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseIN11CaseVisitor9LhsRecordESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.z, %_ZNSt6vectorIN11CaseVisitor9LhsRecordESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.bu, ptr %i.bf, align 8, !tbaa !47
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bs
  store ptr %i.cd, ptr %i.bp, align 8, !tbaa !142
  %i.ce = getelementptr inbounds nuw [48 x i8], ptr %i.bu, i64 %i.bd ; 2 uses
  store ptr %i.ce, ptr %i.bh, align 8, !tbaa !48
  br label %_ZNSt6vectorIN11CaseVisitor9LhsRecordESaIS1_EE7reserveEm.exit

_ZNSt6vectorIN11CaseVisitor9LhsRecordESaIS1_EE7reserveEm.exit: ; preds = %bb.y, %_ZNSt12_Vector_baseIN11CaseVisitor9LhsRecordESaIS1_EE13_M_deallocateEPS1_m.exit.i
  %.pre117 = phi ptr [ %i.bi, %bb.y ], [ %i.ce, %_ZNSt12_Vector_baseIN11CaseVisitor9LhsRecordESaIS1_EE13_M_deallocateEPS1_m.exit.i ]
  %i.cf = phi ptr [ %i.bj, %bb.y ], [ %i.bu, %_ZNSt12_Vector_baseIN11CaseVisitor9LhsRecordESaIS1_EE13_M_deallocateEPS1_m.exit.i ]
  %.sroa.071.097 = load ptr, ptr %i.a, align 8, !tbaa !102 ; 2 uses
  %.not9198 = icmp eq ptr %.sroa.071.097, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 4 uses
  %.pre119 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !170 ; 2 uses
  br i1 %.not9198, label %._crit_edge101, label %.lr.ph100

._crit_edge101.loopexit:                          ; preds = %_ZNSt6vectorIN11CaseVisitor9LhsRecordESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit
  %.pre118 = load ptr, ptr %i.bf, align 8, !tbaa !170
  br label %._crit_edge101

._crit_edge101:                                   ; preds = %_ZNSt6vectorIN11CaseVisitor9LhsRecordESaIS1_EE7reserveEm.exit, %._crit_edge101.loopexit
  %i.cg = phi ptr [ %i.ea, %._crit_edge101.loopexit ], [ %.pre119, %_ZNSt6vectorIN11CaseVisitor9LhsRecordESaIS1_EE7reserveEm.exit ] ; 4 uses
  %i.ch = phi ptr [ %.pre118, %._crit_edge101.loopexit ], [ %i.cf, %_ZNSt6vectorIN11CaseVisitor9LhsRecordESaIS1_EE7reserveEm.exit ] ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 200
  %.not.i.i = icmp eq ptr %i.ch, %i.cg
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN11CaseVisitor9LhsRecordESt6vectorIS3_SaIS3_EEEEZNS2_21analyzeDecoderPatternEP7AstCaseEUlRKS3_SC_E_EvT_SE_T0_.exit, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge101
  %i.cj = ptrtoint ptr %i.cg to i64
  %i.ck = ptrtoint ptr %i.ch to i64
  %i.cl = sub i64 %i.cj, %i.ck
  %i.cm = sdiv exact i64 %i.cl, 48
  %i.cn = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cm, i1 true)
  %i.co = shl nuw nsw i64 %i.cn, 1
  %i.cp = xor i64 %i.co, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN11CaseVisitor9LhsRecordESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_21analyzeDecoderPatternEP7AstCaseEUlRKS3_SE_E_EEEvT_SH_T0_T1_(ptr %i.ch, ptr %i.cg, i64 noundef %i.cp)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN11CaseVisitor9LhsRecordESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21analyzeDecoderPatternEP7AstCaseEUlRKS3_SE_E_EEEvT_SH_T0_(ptr %i.ch, ptr %i.cg)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN11CaseVisitor9LhsRecordESt6vectorIS3_SaIS3_EEEEZNS2_21analyzeDecoderPatternEP7AstCaseEUlRKS3_SC_E_EvT_SE_T0_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN11CaseVisitor9LhsRecordESt6vectorIS3_SaIS3_EEEEZNS2_21analyzeDecoderPatternEP7AstCaseEUlRKS3_SC_E_EvT_SE_T0_.exit: ; preds = %._crit_edge101, %bb.aa
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !133
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 72
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !143 ; 2 uses
  %.not.i45 = icmp eq ptr %i.ct, null
  br i1 %.not.i45, label %_ZNK7AstNode5widthEv.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN11CaseVisitor9LhsRecordESt6vectorIS3_SaIS3_EEEEZNS2_21analyzeDecoderPatternEP7AstCaseEUlRKS3_SC_E_EvT_SE_T0_.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 152
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !168
  br label %_ZNK7AstNode5widthEv.exit

_ZNK7AstNode5widthEv.exit:                        ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN11CaseVisitor9LhsRecordESt6vectorIS3_SaIS3_EEEEZNS2_21analyzeDecoderPatternEP7AstCaseEUlRKS3_SC_E_EvT_SE_T0_.exit, %bb.ab
  %i.cw = phi i32 [ %i.cv, %bb.ab ], [ 0, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN11CaseVisitor9LhsRecordESt6vectorIS3_SaIS3_EEEEZNS2_21analyzeDecoderPatternEP7AstCaseEUlRKS3_SC_E_EvT_SE_T0_.exit ] ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  store i64 0, ptr %i.cx, align 8, !tbaa !261
  %i.cy = load ptr, ptr %i.bf, align 8, !tbaa !170 ; 3 uses
  %i.cz = load ptr, ptr %i.ci, align 8, !tbaa !170 ; 3 uses
  %.not92102 = icmp eq ptr %i.cy, %i.cz           ; 2 uses
  br i1 %.not92102, label %bb.ag, label %.lr.ph104

.lr.ph100:                                        ; preds = %_ZNSt6vectorIN11CaseVisitor9LhsRecordESaIS1_EE7reserveEm.exit, %_ZNSt6vectorIN11CaseVisitor9LhsRecordESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit
  %i.da = phi ptr [ %i.dz, %_ZNSt6vectorIN11CaseVisitor9LhsRecordESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit ], [ %.pre117, %_ZNSt6vectorIN11CaseVisitor9LhsRecordESaIS1_EE7reserveEm.exit ] ; 4 uses
  %i.db = phi ptr [ %i.ea, %_ZNSt6vectorIN11CaseVisitor9LhsRecordESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit ], [ %.pre119, %_ZNSt6vectorIN11CaseVisitor9LhsRecordESaIS1_EE7reserveEm.exit ] ; 2 uses
  %.sroa.071.099 = phi ptr [ %.sroa.071.0, %_ZNSt6vectorIN11CaseVisitor9LhsRecordESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit ], [ %.sroa.071.097, %_ZNSt6vectorIN11CaseVisitor9LhsRecordESaIS1_EE7reserveEm.exit ] ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.071.099, i64 16 ; 2 uses
  %.not.i46 = icmp eq ptr %i.db, %i.da
  br i1 %.not.i46, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph100
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.db, ptr noundef nonnull align 8 dereferenceable(48) %i.dc, i64 48, i1 false), !tbaa.struct !260
  %i.dd = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !142
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 48 ; 2 uses
  store ptr %i.de, ptr %.phi.trans.insert, align 8, !tbaa !142
  %.pre116 = load ptr, ptr %i.bh, align 8, !tbaa !48
  br label %_ZNSt6vectorIN11CaseVisitor9LhsRecordESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit

bb.ad:                                            ; preds = %.lr.ph100
  %i.df = load ptr, ptr %i.bf, align 8, !tbaa !47 ; 5 uses
  %i.dg = ptrtoint ptr %i.da to i64
  %i.dh = ptrtoint ptr %i.df to i64               ; 2 uses
  %i.di = sub i64 %i.dg, %i.dh                    ; 3 uses
  %i.dj = icmp eq i64 %i.di, 9223372036854775776
  br i1 %i.dj, label %bb.ae, label %_ZNKSt6vectorIN11CaseVisitor9LhsRecordESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.ae:                                            ; preds = %bb.ad
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.531) #26
  unreachable

_ZNKSt6vectorIN11CaseVisitor9LhsRecordESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ad
  %i.dk = sdiv exact i64 %i.di, 48                ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.dk, i64 1)
  %i.dl = add nsw i64 %.sroa.speculated.i.i.i, %i.dk ; 2 uses
  %i.dm = icmp ult i64 %i.dl, %i.dk
  %i.dn = tail call i64 @llvm.umin.i64(i64 %i.dl, i64 192153584101141162)
  %i.do = select i1 %i.dm, i64 192153584101141162, i64 %i.dn ; 3 uses
  %.not.i.i.i47 = icmp ne i64 %i.do, 0
  tail call void @llvm.assume(i1 %.not.i.i.i47)
  %i.dp = mul nuw nsw i64 %i.do, 48
  %i.dq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dp) #27 ; 5 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.di
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dr, ptr noundef nonnull align 8 dereferenceable(48) %i.dc, i64 48, i1 false), !tbaa.struct !260
  %.not10.i.i.i.i.i = icmp eq ptr %i.df, %i.da
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN11CaseVisitor9LhsRecordESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN11CaseVisitor9LhsRecordESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.dt, %.lr.ph.i.i.i.i.i ], [ %i.dq, %_ZNKSt6vectorIN11CaseVisitor9LhsRecordESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ds, %.lr.ph.i.i.i.i.i ], [ %i.df, %_ZNKSt6vectorIN11CaseVisitor9LhsRecordESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.0911.i.i.i.i.i, i64 48, i1 false), !tbaa.struct !260, !alias.scope !457
  %i.ds = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 48 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ds, %i.da
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN11CaseVisitor9LhsRecordESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !451

_ZNSt6vectorIN11CaseVisitor9LhsRecordESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN11CaseVisitor9LhsRecordESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.dq, %_ZNKSt6vectorIN11CaseVisitor9LhsRecordESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.dt, %.lr.ph.i.i.i.i.i ]
  %i.du = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.df, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN11CaseVisitor9LhsRecordESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIN11CaseVisitor9LhsRecordESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  %i.dv = load ptr, ptr %i.bh, align 8, !tbaa !48
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = sub i64 %i.dw, %i.dh
  tail call void @_ZdlPvm(ptr noundef nonnull %i.df, i64 noundef %i.dx) #23
  br label %_ZNSt6vectorIN11CaseVisitor9LhsRecordESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

end_hunk_0
