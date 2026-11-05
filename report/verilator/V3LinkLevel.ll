Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3LinkLevel?download=true
inline.NumInlined: 1751
inline.NumDeleted: 522
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN11V3LinkLevel11wrapTopCellEP10AstNetlist:bb.a
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !204 ; 2 uses
  %.not.i486 = icmp eq ptr %i.gh, null
  %i.gi = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  %i.gj = load ptr, ptr %i.gi, align 8
  %i.gk = select i1 %.not.i486, ptr %i.gj, ptr %i.gh ; 3 uses
  %.not.i487 = icmp eq ptr %i.gk, null
  br i1 %.not.i487, label %_ZN7AstNode2isI19AstUnpackArrayDType12AstNodeDTypeEEbPKT0_.exit.thread, label %_ZN7AstNode2isI16AstIfaceRefDType12AstNodeDTypeEEbPKT0_.exit489

_ZN7AstNode2isI16AstIfaceRefDType12AstNodeDTypeEEbPKT0_.exit489: ; preds = %bb.ao
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 64
  %.sroa.0.0.copyload.i.i.i488 = load i16, ptr %i.gl, align 8, !tbaa !107
  %i.gm = icmp eq i16 %.sroa.0.0.copyload.i.i.i488, 85
  br i1 %i.gm, label %_ZN7AstNode2asI16AstIfaceRefDType12AstNodeDTypeEEPKT_PKT0_.exit500, label %_ZN7AstNode2isI19AstUnpackArrayDType12AstNodeDTypeEEbPKT0_.exit.thread

_ZN7AstNode2asI16AstIfaceRefDType12AstNodeDTypeEEPKT_PKT0_.exit500: ; preds = %_ZN7AstNode2isI16AstIfaceRefDType12AstNodeDTypeEEbPKT0_.exit489
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gk, i64 288
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !369
  %.not384 = icmp eq ptr %i.go, null
  br i1 %.not384, label %bb.ap, label %_ZN7AstNode2isI19AstUnpackArrayDType12AstNodeDTypeEEbPKT0_.exit.thread

bb.ap:                                            ; preds = %_ZN7AstNode2asI16AstIfaceRefDType12AstNodeDTypeEEPKT_PKT0_.exit500
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !372)
  %i.gp = getelementptr inbounds nuw i8, ptr %.02821957, i64 152 ; 2 uses
  store ptr %i.bf, ptr %14, align 8, !tbaa !141, !alias.scope !372
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !24, !noalias !372 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.02821957, i64 160 ; 2 uses
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !25, !noalias !372 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #23, !noalias !372
  store i64 %i.gs, ptr %i.p, align 8, !tbaa !142, !noalias !372
  %i.gt = icmp ugt i64 %i.gs, 15
  br i1 %i.gt, label %.noexc.i.i502, label %._crit_edge.i.i.i501

.noexc.i.i502:                                    ; preds = %bb.ap
  %i.gu = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.p, i64 noundef 0)
          to label %.noexc503 unwind label %bb.az ; 2 uses

.noexc503:                                        ; preds = %.noexc.i.i502
  store ptr %i.gu, ptr %14, align 8, !tbaa !24, !alias.scope !372
  %i.gv = load i64, ptr %i.p, align 8, !tbaa !142, !noalias !372
  store i64 %i.gv, ptr %i.bf, align 8, !tbaa !26, !alias.scope !372
  br label %._crit_edge.i.i.i501

._crit_edge.i.i.i501:                             ; preds = %.noexc503, %bb.ap
  %i.gw = phi ptr [ %i.gu, %.noexc503 ], [ %i.bf, %bb.ap ] ; 2 uses
  switch i64 %i.gs, label %bb.ar [
    i64 1, label %bb.aq
    i64 0, label %bb.as
  ]

bb.aq:                                            ; preds = %._crit_edge.i.i.i501
  %i.gx = load i8, ptr %i.gq, align 1, !tbaa !26
  store i8 %i.gx, ptr %i.gw, align 1, !tbaa !26
  br label %bb.as

bb.ar:                                            ; preds = %._crit_edge.i.i.i501
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gw, ptr align 1 %i.gq, i64 %i.gs, i1 false)
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %._crit_edge.i.i.i501
  %i.gy = load i64, ptr %i.p, align 8, !tbaa !142, !noalias !372 ; 2 uses
  store i64 %i.gy, ptr %i.bg, align 8, !tbaa !25, !alias.scope !372
  %i.gz = load ptr, ptr %14, align 8, !tbaa !24, !alias.scope !372
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 %i.gy
  store i8 0, ptr %i.ha, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #23, !noalias !372
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %8, ptr %3, align 8, !tbaa !367
  %i.hb = invoke { ptr, i8 } @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIS5_S5_NS7_10_AllocNodeISaINS7_10_Hash_nodeIS5_Lb1EEEEEEEESt4pairINS7_14_Node_iteratorIS5_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.at unwind label %bb.ba

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %.fca.1.extract = extractvalue { ptr, i8 } %i.hb, 1
  %i.hc = trunc i8 %.fca.1.extract to i1
  %i.hd = load ptr, ptr %14, align 8, !tbaa !24   ; 2 uses
  %i.he = icmp eq ptr %i.hd, %i.bf
  br i1 %i.he, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit509, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i507

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i507: ; preds = %bb.at
  %i.hf = load i64, ptr %i.bf, align 8, !tbaa !26
  %i.hg = add i64 %i.hf, 1
  call void @_ZdlPvm(ptr noundef %i.hd, i64 noundef %i.hg) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit509

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit509: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i507
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br i1 %i.hc, label %_ZN7AstNode2isI19AstUnpackArrayDType12AstNodeDTypeEEbPKT0_.exit.thread, label %bb.au

bb.au:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit509
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !373)
  store ptr %i.bh, ptr %15, align 8, !tbaa !141, !alias.scope !373
  %i.hh = load ptr, ptr %i.gp, align 8, !tbaa !24, !noalias !373 ; 2 uses
  %i.hi = load i64, ptr %i.gr, align 8, !tbaa !25, !noalias !373 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #23, !noalias !373
  store i64 %i.hi, ptr %i.o, align 8, !tbaa !142, !noalias !373
  %i.hj = icmp ugt i64 %i.hi, 15
  br i1 %i.hj, label %.noexc.i.i511, label %._crit_edge.i.i.i510

.noexc.i.i511:                                    ; preds = %bb.au
  %i.hk = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.o, i64 noundef 0)
          to label %.noexc512 unwind label %bb.bb ; 2 uses

.noexc512:                                        ; preds = %.noexc.i.i511
  store ptr %i.hk, ptr %15, align 8, !tbaa !24, !alias.scope !373
  %i.hl = load i64, ptr %i.o, align 8, !tbaa !142, !noalias !373
  store i64 %i.hl, ptr %i.bh, align 8, !tbaa !26, !alias.scope !373
  br label %._crit_edge.i.i.i510

._crit_edge.i.i.i510:                             ; preds = %.noexc512, %bb.au
  %i.hm = phi ptr [ %i.hk, %.noexc512 ], [ %i.bh, %bb.au ] ; 2 uses
  switch i64 %i.hi, label %bb.aw [
    i64 1, label %bb.av
    i64 0, label %bb.ax
  ]

bb.av:                                            ; preds = %._crit_edge.i.i.i510
  %i.hn = load i8, ptr %i.hh, align 1, !tbaa !26
  store i8 %i.hn, ptr %i.hm, align 1, !tbaa !26
  br label %bb.ax

bb.aw:                                            ; preds = %._crit_edge.i.i.i510
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hm, ptr align 1 %i.hh, i64 %i.hi, i1 false)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %._crit_edge.i.i.i510
  %i.ho = load i64, ptr %i.o, align 8, !tbaa !142, !noalias !373 ; 2 uses
  store i64 %i.ho, ptr %i.bi, align 8, !tbaa !25, !alias.scope !373
  %i.hp = load ptr, ptr %15, align 8, !tbaa !24, !alias.scope !373
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 %i.ho
  store i8 0, ptr %i.hq, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #23, !noalias !373
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store ptr %9, ptr %2, align 8, !tbaa !367
  %i.hr = invoke { ptr, i8 } @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIS5_S5_NS7_10_AllocNodeISaINS7_10_Hash_nodeIS5_Lb1EEEEEEEESt4pairINS7_14_Node_iteratorIS5_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %9, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.ay unwind label %bb.bc     ; 0 uses

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.hs = load ptr, ptr %15, align 8, !tbaa !24   ; 2 uses
  %i.ht = icmp eq ptr %i.hs, %i.bh
  br i1 %i.ht, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit518, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i516

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i516: ; preds = %bb.ay
  %i.hu = load i64, ptr %i.bh, align 8, !tbaa !26
  %i.hv = add i64 %i.hu, 1
  call void @_ZdlPvm(ptr noundef %i.hs, i64 noundef %i.hv) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit518

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit518: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i516
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %_ZN7AstNode2isI19AstUnpackArrayDType12AstNodeDTypeEEbPKT0_.exit.thread

bb.az:                                            ; preds = %.noexc.i.i502
  %i.hw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit521

bb.ba:                                            ; preds = %bb.as
  %i.hx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hy = load ptr, ptr %14, align 8, !tbaa !24   ; 2 uses
  %i.hz = icmp eq ptr %i.hy, %i.bf
  br i1 %i.hz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit521, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i519

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i519: ; preds = %bb.ba
  %i.ia = load i64, ptr %i.bf, align 8, !tbaa !26
  %i.ib = add i64 %i.ia, 1
  call void @_ZdlPvm(ptr noundef %i.hy, i64 noundef %i.ib) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit521

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit521: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i519, %bb.az
  %.pn385 = phi { ptr, i32 } [ %i.hw, %bb.az ], [ %i.hx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i519 ], [ %i.hx, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %.loopexit.split-lp.loopexit.split-lp

bb.bb:                                            ; preds = %.noexc.i.i511
  %i.ic = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit524

bb.bc:                                            ; preds = %bb.ax
  %i.id = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ie = load ptr, ptr %15, align 8, !tbaa !24   ; 2 uses
  %i.if = icmp eq ptr %i.ie, %i.bh
  br i1 %i.if, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit524, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i522

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i522: ; preds = %bb.bc
  %i.ig = load i64, ptr %i.bh, align 8, !tbaa !26
  %i.ih = add i64 %i.ig, 1
  call void @_ZdlPvm(ptr noundef %i.ie, i64 noundef %i.ih) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit524

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit524: ; preds = %bb.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i522, %bb.bb
  %.pn387 = phi { ptr, i32 } [ %i.ic, %bb.bb ], [ %i.id, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i522 ], [ %i.id, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %.loopexit.split-lp.loopexit.split-lp

_ZN7AstNode2isI19AstUnpackArrayDType12AstNodeDTypeEEbPKT0_.exit.thread: ; preds = %bb.ao, %bb.z, %_ZN7AstNode2isI19AstUnpackArrayDType12AstNodeDTypeEEbPKT0_.exit, %_ZN7AstNode2asI16AstIfaceRefDType12AstNodeDTypeEEPKT_PKT0_.exit500, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit518, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit509, %_ZN7AstNode2isI16AstIfaceRefDType12AstNodeDTypeEEbPKT0_.exit489, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit431, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.y, %bb.x, %.lr.ph
  %i.ii = getelementptr inbounds nuw i8, ptr %.02821957, i64 8
  %.0282 = load ptr, ptr %i.ii, align 8, !tbaa !181 ; 2 uses
  %.not376 = icmp eq ptr %.0282, null
  br i1 %.not376, label %._crit_edge, label %.lr.ph, !llvm.loop !305

._crit_edge1962:                                  ; preds = %._crit_edge, %_ZN7AstNode2asI13AstNodeModuleS_EEPT_PT0_.exit418
  %.pre = load ptr, ptr %i.u, align 8, !tbaa !101
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.pre2245 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !111 ; 4 uses
  %cond1985 = icmp eq ptr %.pre2245, null
  br i1 %cond1985, label %.critedge2, label %bb.bd

bb.bd:                                            ; preds = %._crit_edge1962
  %i.ij = getelementptr inbounds nuw i8, ptr %.pre2245, i64 64 ; 2 uses
  %.sroa.0.0.copyload.i.i.i526 = load i16, ptr %i.ij, align 8, !tbaa !107 ; 2 uses
  %i.ik = add i16 %.sroa.0.0.copyload.i.i.i526, -391
  %spec.select.i.i527 = icmp ult i16 %i.ik, -7
  br i1 %spec.select.i.i527, label %bb.be, label %.lr.ph1979, !prof !18

bb.be:                                            ; preds = %bb.bd
  %i.il = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.41, i32 noundef 1063)
          to label %.noexc529 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc529:                                        ; preds = %bb.be
  %i.im = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
          to label %.noexc530 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc530:                                        ; preds = %.noexc529
  %i.in = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.im, ptr noundef nonnull @.str.42, i64 noundef 55)
          to label %.noexc531 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc531:                                        ; preds = %.noexc530
  %.sroa.0.0.copyload.i.i5.i528 = load i16, ptr %i.ij, align 8, !tbaa !107
  %i.io = zext i16 %.sroa.0.0.copyload.i.i5.i528 to i64
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr @_ZZNK6VNType5asciiEvE5names, i64 %i.io
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !112
  %i.ir = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.im, ptr noundef %i.iq)
          to label %.noexc532 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc532:                                        ; preds = %.noexc531
  %i.is = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ir, ptr noundef nonnull @.str.35, i64 noundef 1)
          to label %.noexc1016.invoke unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.lr.ph1979:                                       ; preds = %bb.bd
  %i.it = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.iu = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.iw = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 4 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.iz = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 4 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.v, i64 88 ; 8 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 7 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 7 uses
  %i.je = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.jf = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 4 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.jh = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 4 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 7 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.jk = getelementptr inbounds nuw i8, ptr %24, i64 48 ; 3 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %24, i64 32 ; 3 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %24, i64 40 ; 3 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %24, i64 80 ; 4 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 6 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 7 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 2 uses
  %i.js = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.jt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ju = getelementptr i8, ptr %i.js, i64 -24
  %i.jv = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %24, i64 96 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %24, i64 64
  %i.jy = getelementptr inbounds nuw i8, ptr %24, i64 112
  %i.jz = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 9 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 8 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.kc = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.kd = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 7 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 9 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 6 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 4 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.kk = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 4 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 7 uses
  %i.km = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %45, i64 16 ; 9 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %45, i64 8 ; 6 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %48, i64 8
  %i.kq = getelementptr inbounds nuw i8, ptr %47, i64 16 ; 7 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %47, i64 8 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %46, i64 16 ; 9 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %46, i64 8 ; 6 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %48, i64 16 ; 4 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %49, i64 16 ; 7 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %49, i64 8
  %i.kx = getelementptr inbounds nuw i8, ptr %50, i64 16 ; 7 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %50, i64 8
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  %i.la = getelementptr inbounds nuw i8, ptr %51, i64 16 ; 7 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %51, i64 8 ; 3 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %52, i64 16 ; 7 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %52, i64 8
  %i.le = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 9 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 6 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.lh = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 7 uses
  %i.li = getelementptr inbounds nuw i8, ptr %38, i64 8 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 9 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 6 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 4 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 7 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.lo = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 7 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.lq = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 7 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %42, i64 8 ; 3 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 7 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %43, i64 8
  br label %_ZN7AstNode2asI13AstNodeModuleS_EEPT_PT0_.exit1018

_ZN7AstNode2asI13AstNodeModuleS_EEPT_PT0_.exit1018: ; preds = %bb.kr, %.lr.ph1979
  %.sroa.0.0.copyload.i.i.i546 = phi i16 [ %.sroa.0.0.copyload.i.i.i526, %.lr.ph1979 ], [ %.sroa.0.0.copyload.i.i.i1009, %bb.kr ]
  %.02051978 = phi ptr [ %.pre2245, %.lr.ph1979 ], [ %i.ayb, %bb.kr ] ; 15 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %.02051978, i64 284
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !106
  %i.lw = icmp eq i32 %i.lv, 1
  br i1 %i.lw, label %bb.bh, label %.critedge2

.critedge2:                                       ; preds = %.loopexit, %_ZN7AstNode2asI13AstNodeModuleS_EEPT_PT0_.exit1018, %bb.c, %._crit_edge1962
  %i.lx = load ptr, ptr %i.ai, align 8, !tbaa !205 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.lx, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.critedge2, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.ly, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i ], [ %i.lx, %.critedge2 ] ; 4 uses
  %i.ly = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !206 ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !24 ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 24 ; 2 uses
  %i.mc = icmp eq ptr %i.ma, %i.mb
  br i1 %i.mc, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.md = load i64, ptr %i.mb, align 8, !tbaa !26
  %i.me = add i64 %i.md, 1
  call void @_ZdlPvm(ptr noundef %i.ma, i64 noundef %i.me) #24
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 48) #24
  %.not.i.i.i.i = icmp eq ptr %i.ly, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i, %.critedge2
  %i.mf = load ptr, ptr %9, align 8, !tbaa !186
  %i.mg = load i64, ptr %i.ah, align 8, !tbaa !187
  %i.mh = shl i64 %i.mg, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.mf, i8 0, i64 %i.mh, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false)
  %i.mi = load ptr, ptr %9, align 8, !tbaa !186   ; 2 uses
  %i.mj = icmp eq ptr %i.mi, %i.ag
  br i1 %i.mj, label %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EED2Ev.exit, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i
  %i.mk = load i64, ptr %i.ah, align 8, !tbaa !187
  %i.ml = shl i64 %i.mk, 3
  call void @_ZdlPvm(ptr noundef %i.mi, i64 noundef %i.ml) #24
  br label %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EED2Ev.exit

_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %i.mm = load ptr, ptr %i.ad, align 8, !tbaa !205 ; 2 uses
  %.not5.i.i.i.i536 = icmp eq ptr %i.mm, null
  br i1 %.not5.i.i.i.i536, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i542, label %.lr.ph.i.i.i.i537

.lr.ph.i.i.i.i537:                                ; preds = %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EED2Ev.exit, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i540
  %.06.i.i.i.i538 = phi ptr [ %i.mn, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i540 ], [ %i.mm, %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EED2Ev.exit ] ; 4 uses
  %i.mn = load ptr, ptr %.06.i.i.i.i538, align 8, !tbaa !206 ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i538, i64 8
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !24 ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i538, i64 24 ; 2 uses
  %i.mr = icmp eq ptr %i.mp, %i.mq
  br i1 %i.mr, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i540, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i539

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i539: ; preds = %.lr.ph.i.i.i.i537
  %i.ms = load i64, ptr %i.mq, align 8, !tbaa !26
  %i.mt = add i64 %i.ms, 1
  call void @_ZdlPvm(ptr noundef %i.mp, i64 noundef %i.mt) #24
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i540

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i540: ; preds = %.lr.ph.i.i.i.i537, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i539
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i538, i64 noundef 48) #24
  %.not.i.i.i.i541 = icmp eq ptr %i.mn, null
  br i1 %.not.i.i.i.i541, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i542, label %.lr.ph.i.i.i.i537, !llvm.loop !1

end_hunk_0
begin_hunk_1_@_ZN11V3LinkLevel11wrapTopCellEP10AstNetlist:bb.a
  br label %bb.kb

bb.kb:                                            ; preds = %bb.ka, %bb.jz, %._crit_edge.i.i.i978
  %i.awe = load i64, ptr %i.a, align 8, !tbaa !142, !noalias !412 ; 2 uses
  store i64 %i.awe, ptr %i.ld, align 8, !tbaa !25, !alias.scope !412
  %i.awf = load ptr, ptr %52, align 8, !tbaa !24, !alias.scope !412
  %i.awg = getelementptr inbounds nuw i8, ptr %i.awf, i64 %i.awe
  store i8 0, ptr %i.awg, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23, !noalias !412
  %i.awh = invoke noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #26
          to label %bb.kc unwind label %bb.km     ; 3 uses

bb.kc:                                            ; preds = %bb.kb
  %i.awi = getelementptr inbounds nuw i8, ptr %i.aus, i64 88
  %i.awj = load ptr, ptr %i.awi, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #23
  %i.awk = load i8, ptr %i.vn, align 1, !tbaa !190
  %.off.i.i982 = add i8 %i.awk, -2
  %switch.i.i983 = icmp ult i8 %.off.i.i982, 3
  %i.awl = zext i1 %switch.i.i983 to i8
  store i8 %i.awl, ptr %53, align 1, !tbaa !390
  invoke void @_ZN9AstVarRefC2EP8FileLineP6AstVarRK7VAccess(ptr noundef nonnull align 8 dereferenceable(232) %i.awh, ptr noundef %i.awj, ptr noundef nonnull %i.aus, ptr noundef nonnull align 1 dereferenceable(1) %53)
          to label %bb.kd unwind label %bb.ko

bb.kd:                                            ; preds = %bb.kc
  invoke void @_ZN6AstPinC2EP8FileLineiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7AstNode(ptr noundef nonnull align 8 dereferenceable(248) %i.avs, ptr noundef %i.avu, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %52, ptr noundef nonnull %i.awh)
          to label %bb.ke unwind label %bb.kn

bb.ke:                                            ; preds = %bb.kd
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #23
  %i.awm = load ptr, ptr %52, align 8, !tbaa !24  ; 2 uses
  %i.awn = icmp eq ptr %i.awm, %i.lc
  br i1 %i.awn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit986, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i984

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i984: ; preds = %bb.ke
  %i.awo = load i64, ptr %i.lc, align 8, !tbaa !26
  %i.awp = add i64 %i.awo, 1
  call void @_ZdlPvm(ptr noundef %i.awm, i64 noundef %i.awp) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit986

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit986: ; preds = %bb.ke, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i984
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #23
  %i.awq = getelementptr inbounds nuw i8, ptr %i.avs, i64 232
  store ptr %.02041974, ptr %i.awq, align 8, !tbaa !391
  invoke void @_ZN7AstNode7addOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(272) %i.pe, ptr noundef nonnull %i.avs)
          to label %_ZN7AstCell8addPinspEP6AstPin.exit989 unwind label %.loopexit.split-lp1118.loopexit.split-lp.loopexit.split-lp

_ZN7AstCell8addPinspEP6AstPin.exit989:            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit986
  %i.awr = load ptr, ptr %45, align 8, !tbaa !24  ; 2 uses
  %i.aws = icmp eq ptr %i.awr, %i.kn
  br i1 %i.aws, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit992, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i990

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i990: ; preds = %_ZN7AstCell8addPinspEP6AstPin.exit989
  %i.awt = load i64, ptr %i.kn, align 8, !tbaa !26
  %i.awu = add i64 %i.awt, 1
  call void @_ZdlPvm(ptr noundef %i.awr, i64 noundef %i.awu) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit992

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit992: ; preds = %_ZN7AstCell8addPinspEP6AstPin.exit989, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i990
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #23
  br label %_ZN7AstNode2isI19AstUnpackArrayDType12AstNodeDTypeEEbPKT0_.exit853.thread

bb.kf:                                            ; preds = %.noexc.i.i934
  %i.awv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit995

bb.kg:                                            ; preds = %bb.ji, %_ZN8AstRange9cloneTreeEbb.exit
  %i.aww = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.awx = load ptr, ptr %49, align 8, !tbaa !24  ; 2 uses
  %i.awy = icmp eq ptr %i.awx, %i.kv
  br i1 %i.awy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit995, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i993

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i993: ; preds = %bb.kg
  %i.awz = load i64, ptr %i.kv, align 8, !tbaa !26
  %i.axa = add i64 %i.awz, 1
  call void @_ZdlPvm(ptr noundef %i.awx, i64 noundef %i.axa) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit995

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit995: ; preds = %bb.kg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i993, %bb.kf
  %.pn315 = phi { ptr, i32 } [ %i.awv, %bb.kf ], [ %i.aww, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i993 ], [ %i.aww, %bb.kg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #23
  call void @_ZdlPvm(ptr noundef nonnull %i.ash, i64 noundef 272) #24
  br label %bb.kq

bb.kh:                                            ; preds = %.noexc.i.i945
  %i.axb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit998

bb.ki:                                            ; preds = %bb.jn
  %i.axc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.axd = load ptr, ptr %50, align 8, !tbaa !24  ; 2 uses
  %i.axe = icmp eq ptr %i.axd, %i.kx
  br i1 %i.axe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit998, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i996

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i996: ; preds = %bb.ki
  %i.axf = load i64, ptr %i.kx, align 8, !tbaa !26
  %i.axg = add i64 %i.axf, 1
  call void @_ZdlPvm(ptr noundef %i.axd, i64 noundef %i.axg) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit998

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit998: ; preds = %bb.ki, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i996, %bb.kh
  %.pn317 = phi { ptr, i32 } [ %i.axb, %bb.kh ], [ %i.axc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i996 ], [ %i.axc, %bb.ki ]
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #23
  call void @_ZdlPvm(ptr noundef nonnull %i.atf, i64 noundef 304) #24
  br label %bb.kq

bb.kj:                                            ; preds = %bb.jr, %_ZN8AstRange9cloneTreeEbb.exit957, %bb.jq
  %i.axh = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.auc, i64 noundef 184) #24
  br label %bb.kq

bb.kk:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit971
  %i.axi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.axj = load ptr, ptr %51, align 8, !tbaa !24  ; 2 uses
  %i.axk = icmp eq ptr %i.axj, %i.la
  br i1 %i.axk, label %.body969, label %.body969.sink.split

.body969.sink.split:                              ; preds = %bb.kk, %.loopexit.split-lp1133.loopexit.split-lp
  %.sink2886 = phi ptr [ %i.avf, %.loopexit.split-lp1133.loopexit.split-lp ], [ %i.axj, %bb.kk ]
  %.pn319.ph = phi { ptr, i32 } [ %lpad.loopexit.split-lp2911, %.loopexit.split-lp1133.loopexit.split-lp ], [ %i.axi, %bb.kk ]
  %i.axl = load i64, ptr %i.la, align 8, !tbaa !26
  %i.axm = add i64 %i.axl, 1
  call void @_ZdlPvm(ptr noundef %.sink2886, i64 noundef %i.axm) #24
  br label %.body969

.body969:                                         ; preds = %.body969.sink.split, %bb.kk, %.loopexit.split-lp1133.loopexit.split-lp
  %.pn319 = phi { ptr, i32 } [ %lpad.loopexit.split-lp2911, %.loopexit.split-lp1133.loopexit.split-lp ], [ %i.axi, %bb.kk ], [ %.pn319.ph, %.body969.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #23
  call void @_ZdlPvm(ptr noundef nonnull %i.aus, i64 noundef 280) #24
  br label %bb.kq

.loopexit.split-lp1118.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.im, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit986, %bb.jx, %_ZN7AstNode6dtypepEP12AstNodeDType.exit952, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit940, %bb.jt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit974, %_ZN7AstNode2asI19AstUnpackArrayDType12AstNodeDTypeEEPT_PT0_.exit, %_ZN13AstNodeModule9addStmtspEP7AstNode.exit943, %_ZN12AstTypeTable9addTypespEP12AstNodeDType.exit955, %_ZN12AstTypeTable9addTypespEP12AstNodeDType.exit977, %bb.je, %.noexc927, %.noexc929, %.noexc931, %.noexc930, %.noexc928
  %lpad.loopexit.split-lp2902 = landingpad { ptr, i32 }
          cleanup
  br label %bb.kq

bb.kl:                                            ; preds = %.noexc.i.i979
  %i.axn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1004

bb.km:                                            ; preds = %bb.kb
  %i.axo = landingpad { ptr, i32 }
          cleanup
  br label %bb.kp

bb.kn:                                            ; preds = %bb.kd
  %i.axp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #23
  br label %bb.kp

bb.ko:                                            ; preds = %bb.kc
  %i.axq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #23
  call void @_ZdlPvm(ptr noundef nonnull %i.awh, i64 noundef 232) #24
  br label %bb.kp

bb.kp:                                            ; preds = %bb.kn, %bb.ko, %bb.km
  %.pn321 = phi { ptr, i32 } [ %i.axq, %bb.ko ], [ %i.axp, %bb.kn ], [ %i.axo, %bb.km ] ; 2 uses
  %i.axr = load ptr, ptr %52, align 8, !tbaa !24  ; 2 uses
  %i.axs = icmp eq ptr %i.axr, %i.lc
  br i1 %i.axs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1004, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1002

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1002: ; preds = %bb.kp
  %i.axt = load i64, ptr %i.lc, align 8, !tbaa !26
  %i.axu = add i64 %i.axt, 1
  call void @_ZdlPvm(ptr noundef %i.axr, i64 noundef %i.axu) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1004

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1004: ; preds = %bb.kp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1002, %bb.kl
  %.pn321.pn = phi { ptr, i32 } [ %i.axn, %bb.kl ], [ %.pn321, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1002 ], [ %.pn321, %bb.kp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #23
  call void @_ZdlPvm(ptr noundef nonnull %i.avs, i64 noundef 248) #24
  br label %bb.kq

bb.kq:                                            ; preds = %.loopexit.split-lp1118.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit998, %.body969, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1004, %bb.kj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit995, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit922
  %.pn324.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn319, %.body969 ], [ %.pn312.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit922 ], [ %.pn321.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1004 ], [ %.pn315, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit995 ], [ %i.axh, %bb.kj ], [ %.pn317, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit998 ], [ %lpad.loopexit.split-lp2902, %.loopexit.split-lp1118.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.axv = load ptr, ptr %45, align 8, !tbaa !24  ; 2 uses
  %i.axw = icmp eq ptr %i.axv, %i.kn
  br i1 %i.axw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1007, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1005

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1005: ; preds = %bb.kq
  %i.axx = load i64, ptr %i.kn, align 8, !tbaa !26
  %i.axy = add i64 %i.axx, 1
  call void @_ZdlPvm(ptr noundef %i.axv, i64 noundef %i.axy) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1007

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1007: ; preds = %bb.kq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1005, %bb.ja
  %.pn324.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.arm, %bb.ja ], [ %.pn324.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1005 ], [ %.pn324.pn.pn.pn.pn.pn.pn, %bb.kq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #23
  br label %.loopexit.split-lp.loopexit.split-lp

_ZN7AstNode2isI19AstUnpackArrayDType12AstNodeDTypeEEbPKT0_.exit853.thread: ; preds = %_ZN7AstNode2isI16AstIfaceRefDType12AstNodeDTypeEEbPKT0_.exit740, %bb.ii, %bb.gf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit835, %_ZN7AstNode2asI16AstIfaceRefDType12AstNodeDTypeEEPKT_PKT0_.exit751, %_ZN7AstNode2asI16AstIfaceRefDType12AstNodeDTypeEEPKT_PKT0_.exit879, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit992, %_ZN7AstNode2isI16AstIfaceRefDType12AstNodeDTypeEEbPKT0_.exit868, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit729, %bb.ge, %bb.gd, %.lr.ph1975
  %i.axz = getelementptr inbounds nuw i8, ptr %.02041974, i64 8
  %.0204 = load ptr, ptr %i.axz, align 8, !tbaa !181 ; 2 uses
  %.not300 = icmp eq ptr %.0204, null
  br i1 %.not300, label %.loopexit, label %.lr.ph1975, !llvm.loop !364

.loopexit:                                        ; preds = %_ZN7AstNode2isI19AstUnpackArrayDType12AstNodeDTypeEEbPKT0_.exit853.thread, %_ZN13AstNodeModule9addStmtspEP7AstNode.exit, %bb.bh
  %i.aya = getelementptr inbounds nuw i8, ptr %.02051978, i64 8
  %i.ayb = load ptr, ptr %i.aya, align 8, !tbaa !111 ; 5 uses
  %cond1986 = icmp eq ptr %i.ayb, null
  br i1 %cond1986, label %.critedge2, label %bb.kr

bb.kr:                                            ; preds = %.loopexit
  %i.ayc = getelementptr inbounds nuw i8, ptr %i.ayb, i64 64
  %.sroa.0.0.copyload.i.i.i1009 = load i16, ptr %i.ayc, align 8, !tbaa !107 ; 2 uses
  %i.ayd = add i16 %.sroa.0.0.copyload.i.i.i1009, -391
  %spec.select.i.i1010 = icmp ult i16 %i.ayd, -7
  br i1 %spec.select.i.i1010, label %bb.ks, label %_ZN7AstNode2asI13AstNodeModuleS_EEPT_PT0_.exit1018, !prof !18

bb.ks:                                            ; preds = %bb.kr
  %i.aye = getelementptr inbounds nuw i8, ptr %i.ayb, i64 64
  %i.ayf = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.41, i32 noundef 1063)
          to label %.noexc1012 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc1012:                                       ; preds = %bb.ks
  %i.ayg = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
          to label %.noexc1013 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc1013:                                       ; preds = %.noexc1012
  %i.ayh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ayg, ptr noundef nonnull @.str.42, i64 noundef 55)
          to label %.noexc1014 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc1014:                                       ; preds = %.noexc1013
  %.sroa.0.0.copyload.i.i5.i1011 = load i16, ptr %i.aye, align 8, !tbaa !107
  %i.ayi = zext i16 %.sroa.0.0.copyload.i.i5.i1011 to i64
  %i.ayj = getelementptr inbounds nuw [8 x i8], ptr @_ZZNK6VNType5asciiEvE5names, i64 %i.ayi
  %i.ayk = load ptr, ptr %i.ayj, align 8, !tbaa !112
  %i.ayl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.ayg, ptr noundef %i.ayk)
          to label %.noexc1015 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc1015:                                       ; preds = %.noexc1014
  %i.aym = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ayl, ptr noundef nonnull @.str.35, i64 noundef 1)
          to label %.noexc1016.invoke unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc1016.invoke:                                ; preds = %.noexc532, %.noexc415, %.noexc405, %.noexc1015
  %i.ayn = phi ptr [ %i.ayb, %.noexc1015 ], [ %i.bo, %.noexc415 ], [ %i.am, %.noexc405 ], [ %.pre2245, %.noexc532 ]
  %i.ayo = phi ptr [ %i.ayl, %.noexc1015 ], [ %i.by, %.noexc415 ], [ %i.av, %.noexc405 ], [ %i.ir, %.noexc532 ]
  invoke void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %i.ayn, ptr noundef nonnull align 8 dereferenceable(112) %i.ayo) #25
          to label %.noexc1016.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1016.cont:                                  ; preds = %.noexc1016.invoke
  unreachable

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.cc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit850, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1007, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit735, %bb.dt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit599, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit434, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit437, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit521, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit524, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit470, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit473
  %.pn395.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn366.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit735 ], [ %.pn387, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit524 ], [ %.pn324.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1007 ], [ %.pn395, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit437 ], [ %.pn393, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit434 ], [ %.pn385, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit521 ], [ %.pn349.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit850 ], [ %.pn307.pn.pn, %bb.dt ], [ %.pn381, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit473 ], [ %.pn379, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit470 ], [ %.pn292.pn.pn, %bb.cc ], [ %.pn296.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit599 ], [ %lpad.loopexit.split-lp2923, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  resume { ptr, i32 } %.pn395.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7AstNode2isI10AstPackage13AstNodeModuleEEbPKT0_(ptr noundef %0) #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.a, align 8, !tbaa !107
  %i.b = icmp eq i16 %.sroa.0.0.copyload.i.i, 389
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = phi i1 [ false, %bb.a ], [ %i.b, %bb.b ]
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7AstCellC2EP8FileLineS1_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_P6AstPinSB_P8AstRange(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  tail call void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(152) %0, i16 9, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 320) (i8, ptr @_ZTV7AstCell, i64 16), ptr %0, align 8, !tbaa !151
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %2, ptr %i.d, align 8, !tbaa !413
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 5 uses
  store ptr %i.f, ptr %i.e, align 8, !tbaa !141
  %i.g = load ptr, ptr %3, align 8, !tbaa !24     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !25   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store i64 %i.i, ptr %i.c, align 8, !tbaa !142
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 2 uses
  store ptr %i.k, ptr %i.e, align 8, !tbaa !24
  %i.l = load i64, ptr %i.c, align 8, !tbaa !142
  store i64 %i.l, ptr %i.f, align 8, !tbaa !26
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.m = phi ptr [ %i.k, %.noexc.i ], [ %i.f, %bb.a ] ; 2 uses
  switch i64 %i.i, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.n = load i8, ptr %i.g, align 1, !tbaa !26
  store i8 %i.n, ptr %i.m, align 1, !tbaa !26
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.g, i64 %i.i, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.o = load i64, ptr %i.c, align 8, !tbaa !142  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 %i.o, ptr %i.p, align 8, !tbaa !25
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 5 uses
  store ptr %i.t, ptr %i.s, align 8, !tbaa !141
  %i.u = load ptr, ptr %3, align 8, !tbaa !24     ; 2 uses
  %i.v = load i64, ptr %i.h, align 8, !tbaa !25   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 %i.v, ptr %i.b, align 8, !tbaa !142
  %i.w = icmp ugt i64 %i.v, 15
  br i1 %i.w, label %.noexc.i17, label %._crit_edge.i.i16

.noexc.i17:                                       ; preds = %bb.d
  %i.x = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc18 unwind label %bb.n   ; 2 uses

.noexc18:                                         ; preds = %.noexc.i17
  store ptr %i.x, ptr %i.s, align 8, !tbaa !24
  %i.y = load i64, ptr %i.b, align 8, !tbaa !142
  store i64 %i.y, ptr %i.t, align 8, !tbaa !26
  br label %._crit_edge.i.i16

._crit_edge.i.i16:                                ; preds = %.noexc18, %bb.d
  %i.z = phi ptr [ %i.x, %.noexc18 ], [ %i.t, %bb.d ] ; 2 uses
  switch i64 %i.v, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i16
  %i.aa = load i8, ptr %i.u, align 1, !tbaa !26
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !26
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i16
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr align 1 %i.u, i64 %i.v, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i16
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !142 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !25
  %i.ad = load ptr, ptr %i.s, align 8, !tbaa !24
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  store i8 0, ptr %i.ae, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 5 uses
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !141
  %i.ah = load ptr, ptr %4, align 8, !tbaa !24    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !25 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.aj, ptr %i.a, align 8, !tbaa !142
  %i.ak = icmp ugt i64 %i.aj, 15
  br i1 %i.ak, label %.noexc.i21, label %._crit_edge.i.i20

.noexc.i21:                                       ; preds = %bb.g
  %i.al = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc22 unwind label %bb.o   ; 2 uses

.noexc22:                                         ; preds = %.noexc.i21
  store ptr %i.al, ptr %i.af, align 8, !tbaa !24
  %i.am = load i64, ptr %i.a, align 8, !tbaa !142
  store i64 %i.am, ptr %i.ag, align 8, !tbaa !26
  br label %._crit_edge.i.i20

._crit_edge.i.i20:                                ; preds = %.noexc22, %bb.g
  %i.an = phi ptr [ %i.al, %.noexc22 ], [ %i.ag, %bb.g ] ; 2 uses
  switch i64 %i.aj, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
end_hunk_1
