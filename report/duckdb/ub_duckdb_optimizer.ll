inline.NumInlined: 25580
inline.NumDeleted: 11329
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN6duckdb19CommonSubplanFinder21ConvertSubplansToCTEsERNS_9OptimizerERNS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS4_ELb1EEE:bb.a
_ZNSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_mESaIS4_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit30.i: ; preds = %.critedge28.i
  %i.qg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_mESaIS4_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit30.i.body

_ZNSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_mESaIS4_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit30.i.body: ; preds = %bb.bt, %_ZNSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_mESaIS4_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit30.i
  %eh.lpad-body1042 = phi { ptr, i32 } [ %i.qg, %_ZNSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_mESaIS4_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit30.i ], [ %i.po, %bb.bt ]
  call void @_ZdlPv(ptr noundef nonnull %i.mm) #34
  br label %.body241

_ZNKSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_mESaIS4_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS3_m.exit.i: ; preds = %bb.be, %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_mENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.mm) #34
  br label %bb.cb

bb.cb:                                            ; preds = %_ZNSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_mESaIS4_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS6_10_Hash_nodeIS4_Lb1EEEm.exit, %_ZNKSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_mESaIS4_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS3_m.exit.i
  %i.qh = add nuw i64 %storemerge2514, 1          ; 2 uses
  %i.qi = load ptr, ptr %i.ef, align 8, !tbaa !544
  %i.qj = load ptr, ptr %i.ee, align 8, !tbaa !545 ; 2 uses
  %i.qk = ptrtoint ptr %i.qi to i64
  %i.ql = ptrtoint ptr %i.qj to i64
  %i.qm = sub i64 %i.qk, %i.ql
  %i.qn = ashr exact i64 %i.qm, 4
  %i.qo = icmp ult i64 %i.qh, %i.qn
  br i1 %i.qo, label %.lr.ph, label %._crit_edge2516, !llvm.loop !623

bb.cc:                                            ; preds = %.lr.ph
  %i.qp = landingpad { ptr, i32 }
          cleanup
  br label %.body241

_ZN6duckdb6vectorINS0_ImLb1ESaImEEELb1ESaIS2_EECI2St6vectorIS2_S3_EEmRKS3_.exit: ; preds = %.lr.ph.preheader.i.i.i.i.i.i
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.mk, i8 0, i64 %i.mj, i1 false)
  %scevgep.i.i.i.i.i.i = getelementptr i8, ptr %i.mk, i64 %i.mj ; 17 uses
  %.pre3433 = load ptr, ptr %i.mb, align 8, !tbaa !509 ; 2 uses
  %.pre3434 = load ptr, ptr %i.ma, align 8, !tbaa !527 ; 2 uses
  %.pre3449 = ptrtoint ptr %.pre3433 to i64
  %.pre3450 = ptrtoint ptr %.pre3434 to i64
  %.pre3452 = sub i64 %.pre3449, %.pre3450        ; 2 uses
  %.pre3454 = sdiv exact i64 %.pre3452, 40        ; 3 uses
  %i.qq = icmp eq ptr %.pre3433, %.pre3434
  br i1 %i.qq, label %._crit_edge2522, label %bb.cd

bb.cd:                                            ; preds = %_ZN6duckdb6vectorINS0_ImLb1ESaImEEELb1ESaIS2_EECI2St6vectorIS2_S3_EEmRKS3_.exit
  %i.qr = add nsw i64 %.pre3454, 63               ; 2 uses
  %i.qs = lshr i64 %i.qr, 3
  %i.qt = and i64 %i.qs, 2305843009213693944
  %i.qu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qt) #36
          to label %_ZN6duckdb6vectorIbLb1ESaIbEECI2St6vectorIbS1_EEmRKbRKS1_.exit unwind label %bb.cs ; 20 uses

_ZN6duckdb6vectorIbLb1ESaIbEECI2St6vectorIbS1_EEmRKbRKS1_.exit: ; preds = %bb.cd
  %i.qv = lshr i64 %i.qr, 6                       ; 2 uses
  %i.qw = getelementptr inbounds nuw [8 x i8], ptr %i.qu, i64 %i.qv ; 15 uses
  %i.qx = sdiv i64 %.pre3452, 2560                ; 2 uses
  %i.qy = getelementptr inbounds [8 x i8], ptr %i.qu, i64 %i.qx
  %i.qz = and i64 %.pre3454, -9223372036854775745
  %i.ra = icmp ugt i64 %i.qz, -9223372036854775808
  %storemerge.idx.i.i.i.i.i.i = select i1 %i.ra, i64 -8, i64 0 ; 2 uses
  %storemerge.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.qy, i64 %storemerge.idx.i.i.i.i.i.i
  %i.rb = and i64 %.pre3454, 63                   ; 4 uses
  %.idx.i.i = shl nuw nsw i64 %i.qv, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.qu, i8 0, i64 %.idx.i.i, i1 false)
  %i.rc = ptrtoint ptr %storemerge.i.i.i.i.i.i to i64 ; 3 uses
  %.pre3435 = load ptr, ptr %i.mb, align 8, !tbaa !509
  %.pre3436 = load ptr, ptr %i.ma, align 8, !tbaa !527 ; 3 uses
  %i.rd = icmp eq ptr %.pre3435, %.pre3436
  br i1 %i.rd, label %._crit_edge2522, label %.lr.ph2521

.lr.ph2521:                                       ; preds = %_ZN6duckdb6vectorIbLb1ESaIbEECI2St6vectorIbS1_EEmRKbRKS1_.exit
  %i.re = shl nsw i64 %i.qx, 6
  %i.rf = shl nsw i64 %storemerge.idx.i.i.i.i.i.i, 3
  %i.rg = add nsw i64 %i.re, %i.rf
  %i.rh = or disjoint i64 %i.rg, %i.rb            ; 3 uses
  %injected.cond = icmp ule i64 %i.mh, %i.rh
  %injected.cond.fr = freeze i1 %injected.cond
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  store i64 0, ptr %i.ap, align 8, !tbaa !66
  store i64 %i.mh, ptr %i.aq, align 8, !tbaa !66
  br i1 %injected.cond.fr, label %.lr.ph5402, label %.lr.ph5388

.lr.ph2521.split.us:                              ; preds = %._crit_edge2519.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  store i64 %50, ptr %i.ap, align 8, !tbaa !66
  store i64 %i.mh, ptr %i.aq, align 8, !tbaa !66
  %exitcond3426.not = icmp eq i64 %50, %i.mh
  br i1 %exitcond3426.not, label %.noexc.i826, label %.lr.ph5402, !prof !624, !llvm.loop !625

.lr.ph5402:                                       ; preds = %.lr.ph2521, %.lr.ph2521.split.us
  %.01402520.us5401 = phi i64 [ %50, %.lr.ph2521.split.us ], [ 0, %.lr.ph2521 ] ; 6 uses
  %i.ri = phi ptr [ %52, %.lr.ph2521.split.us ], [ %.pre3436, %.lr.ph2521 ]
  %i.rj = getelementptr inbounds nuw [40 x i8], ptr %i.ri, i64 %.01402520.us5401 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  %i.rk = getelementptr inbounds nuw [24 x i8], ptr %i.mk, i64 %.01402520.us5401 ; 6 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rj, i64 16 ; 4 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rj, i64 24 ; 4 uses
  %i.rn = load ptr, ptr %i.rm, align 8, !tbaa !544
  %i.ro = load ptr, ptr %i.rl, align 8, !tbaa !545
  %i.rp = ptrtoint ptr %i.rn to i64
  %i.rq = ptrtoint ptr %i.ro to i64
  %i.rr = sub i64 %i.rp, %i.rq                    ; 2 uses
  %i.rs = ashr exact i64 %i.rr, 4                 ; 4 uses
  %i.rt = icmp ugt i64 %i.rs, 1152921504606846975
  br i1 %i.rt, label %.split.us, label %bb.ce

bb.ce:                                            ; preds = %.lr.ph5402
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rk, i64 16 ; 3 uses
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !211 ; 2 uses
  %i.rw = load ptr, ptr %i.rk, align 8, !tbaa !158 ; 5 uses
  %i.rx = ptrtoint ptr %i.rv to i64
  %i.ry = ptrtoint ptr %i.rw to i64               ; 2 uses
  %i.rz = sub i64 %i.rx, %i.ry
  %i.sa = ashr exact i64 %i.rz, 3
  %i.sb = icmp ult i64 %i.sa, %i.rs
  br i1 %i.sb, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.us, label %_ZNSt6vectorImSaImEE7reserveEm.exit.us

_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.us: ; preds = %bb.ce
  %i.sc = getelementptr inbounds nuw i8, ptr %i.rk, i64 8 ; 2 uses
  %i.sd = load ptr, ptr %i.sc, align 8, !tbaa !227
  %i.se = ptrtoint ptr %i.sd to i64
  %i.sf = sub i64 %i.se, %i.ry                    ; 3 uses
  %i.sg = ashr exact i64 %i.rr, 1
  %i.sh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.sg) #36
          to label %.noexc265.us unwind label %.loopexit1317.split.us ; 5 uses

.noexc265.us:                                     ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.us
  %i.si = icmp sgt i64 %i.sf, 0
  br i1 %i.si, label %bb.cf, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i.us

bb.cf:                                            ; preds = %.noexc265.us
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.sh, ptr align 8 %i.rw, i64 %i.sf, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i.us

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i.us: ; preds = %bb.cf, %.noexc265.us
  %.not.i8.i.us = icmp eq ptr %i.rw, null
  br i1 %.not.i8.i.us, label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i.us, label %bb.cg

bb.cg:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i.us
  call void @_ZdlPv(ptr noundef nonnull %i.rw) #34
  br label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i.us

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i.us: ; preds = %bb.cg, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i.us
  store ptr %i.sh, ptr %i.rk, align 8, !tbaa !158
  %i.sj = getelementptr inbounds nuw i8, ptr %i.sh, i64 %i.sf
  store ptr %i.sj, ptr %i.sc, align 8, !tbaa !227
  %i.sk = getelementptr inbounds nuw [8 x i8], ptr %i.sh, i64 %i.rs ; 2 uses
  store ptr %i.sk, ptr %i.ru, align 8, !tbaa !211
  %.pre3441 = load ptr, ptr %i.rm, align 8, !tbaa !544
  %.pre3442 = load ptr, ptr %i.rl, align 8, !tbaa !545
  %.pre3456 = ptrtoint ptr %.pre3441 to i64
  %.pre3458 = ptrtoint ptr %.pre3442 to i64
  %.pre3460 = sub i64 %.pre3456, %.pre3458
  %.pre3462 = ashr exact i64 %.pre3460, 4
  br label %_ZNSt6vectorImSaImEE7reserveEm.exit.us

_ZNSt6vectorImSaImEE7reserveEm.exit.us:           ; preds = %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i.us, %bb.ce
  %.pre-phi3463 = phi i64 [ %.pre3462, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i.us ], [ %i.rs, %bb.ce ]
  %i.sl = phi ptr [ %i.sh, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i.us ], [ %i.rw, %bb.ce ]
  %i.sm = phi ptr [ %i.sk, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i.us ], [ %i.rv, %bb.ce ]
  %i.sn = load ptr, ptr %i.eb, align 8, !tbaa !75
  %i.so = load ptr, ptr %i.ea, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.sp = ptrtoint ptr %i.sn to i64
  %i.sq = ptrtoint ptr %i.so to i64
  %i.sr = sub i64 %i.sp, %i.sq
  %i.ss = sdiv exact i64 %i.sr, 24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %i.st = sdiv i64 %.01402520.us5401, 64
  %i.su = getelementptr inbounds [8 x i8], ptr %i.qu, i64 %i.st
  %i.sv = and i64 %.01402520.us5401, -9223372036854775745
  %i.sw = icmp ugt i64 %i.sv, -9223372036854775808
  %storemerge.idx.i.i.i.i.i.i835.us = select i1 %i.sw, i64 -8, i64 0
  %storemerge.i.i.i.i.i.i836.us = getelementptr inbounds i8, ptr %i.su, i64 %storemerge.idx.i.i.i.i.i.i835.us ; 5 uses
  %i.sx = and i64 %.01402520.us5401, 63
  %i.sy = shl nuw i64 1, %i.sx                    ; 5 uses
  %.not1299.us = icmp eq i64 %.pre-phi3463, %i.ss
  br i1 %.not1299.us, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %_ZNSt6vectorImSaImEE7reserveEm.exit.us
  %i.sz = load i64, ptr %storemerge.i.i.i.i.i.i836.us, align 8, !tbaa !66
  %i.ta = or i64 %i.sz, %i.sy
  br label %_ZNSt14_Bit_referenceaSEb.exit.us

bb.ci:                                            ; preds = %_ZNSt6vectorImSaImEE7reserveEm.exit.us
  %i.tb = xor i64 %i.sy, -1
  %i.tc = load i64, ptr %storemerge.i.i.i.i.i.i836.us, align 8, !tbaa !66
  %i.td = and i64 %i.tc, %i.tb
  br label %_ZNSt14_Bit_referenceaSEb.exit.us

_ZNSt14_Bit_referenceaSEb.exit.us:                ; preds = %bb.ci, %bb.ch
  %storemerge1300.us = phi i64 [ %i.td, %bb.ci ], [ %i.ta, %bb.ch ]
  store i64 %storemerge1300.us, ptr %storemerge.i.i.i.i.i.i836.us, align 8, !tbaa !66
  %i.te = load ptr, ptr %i.rm, align 8, !tbaa !544 ; 2 uses
  %i.tf = load ptr, ptr %i.rl, align 8, !tbaa !545 ; 2 uses
  %.not2632 = icmp eq ptr %i.te, %i.tf
  br i1 %.not2632, label %._crit_edge2519.us, label %.lr.ph2518.us

._crit_edge2519.us:                               ; preds = %_ZNSt14_Bit_referenceaSEb.exit295.us, %_ZNSt14_Bit_referenceaSEb.exit.us
  %50 = add nuw i64 %.01402520.us5401, 1          ; 4 uses
  %51 = load ptr, ptr %i.mb, align 8, !tbaa !509
  %52 = load ptr, ptr %i.ma, align 8, !tbaa !527  ; 2 uses
  %53 = ptrtoint ptr %51 to i64
  %54 = ptrtoint ptr %52 to i64
  %55 = sub i64 %53, %54
  %56 = sdiv exact i64 %55, 40
  %57 = icmp ult i64 %50, %56
  br i1 %57, label %.lr.ph2521.split.us, label %._crit_edge2522, !llvm.loop !625

bb.cj:                                            ; preds = %.lr.ph2518.us, %_ZNSt14_Bit_referenceaSEb.exit295.us
  %i.tg = phi ptr [ %i.tf, %.lr.ph2518.us ], [ %i.wb, %_ZNSt14_Bit_referenceaSEb.exit295.us ] ; 2 uses
  %i.th = phi ptr [ %i.te, %.lr.ph2518.us ], [ %i.wc, %_ZNSt14_Bit_referenceaSEb.exit295.us ]
  %i.ti = phi ptr [ %i.sl, %.lr.ph2518.us ], [ %i.wd, %_ZNSt14_Bit_referenceaSEb.exit295.us ] ; 5 uses
  %i.tj = phi ptr [ %i.sm, %.lr.ph2518.us ], [ %i.we, %_ZNSt14_Bit_referenceaSEb.exit295.us ] ; 3 uses
  %.01412517.us = phi i64 [ 0, %.lr.ph2518.us ], [ %i.wm, %_ZNSt14_Bit_referenceaSEb.exit295.us ] ; 3 uses
  %i.tk = getelementptr inbounds nuw [16 x i8], ptr %i.tg, i64 %.01412517.us ; 3 uses
  %i.tl = load i64, ptr %i.by, align 8, !tbaa !616
  %.not.not.i.i.us = icmp eq i64 %i.tl, 0
  %i.tm = load i64, ptr %i.tk, align 8            ; 4 uses
  br i1 %.not.not.i.i.us, label %bb.cm, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.tn = lshr i64 %i.tm, 32
  %i.to = xor i64 %i.tn, %i.tm
  %i.tp = mul i64 %i.to, -2960836687051489901     ; 2 uses
  %i.tq = lshr i64 %i.tp, 32
  %i.tr = xor i64 %i.tq, %i.tp
  %i.ts = mul i64 %i.tr, -2960836687051489901     ; 2 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tk, i64 8
  %i.tu = load i64, ptr %i.tt, align 8, !tbaa !250 ; 3 uses
  %i.tv = lshr i64 %i.tu, 32
  %i.tw = xor i64 %i.tv, %i.tu
  %i.tx = mul i64 %i.tw, -2960836687051489901     ; 2 uses
  %i.ty = lshr i64 %i.tx, 32
  %i.tz = xor i64 %i.ty, %i.tx
  %i.ua = mul i64 %i.tz, -2960836687051489901     ; 2 uses
  %i.ub = xor i64 %i.ua, %i.ts
  %i.uc = lshr i64 %i.ub, 32
  %i.ud = xor i64 %i.ts, %i.uc
  %i.ue = xor i64 %i.ud, %i.ua                    ; 2 uses
  %i.uf = load i64, ptr %i.bu, align 8, !tbaa !575 ; 2 uses
  %i.ug = urem i64 %i.ue, %i.uf                   ; 2 uses
  %i.uh = load ptr, ptr %44, align 8, !tbaa !573
  %i.ui = getelementptr inbounds nuw [8 x i8], ptr %i.uh, i64 %i.ug
  %i.uj = load ptr, ptr %i.ui, align 8, !tbaa !253, !nonnull !61, !noundef !61
  %i.uk = load ptr, ptr %i.uj, align 8, !tbaa !168 ; 2 uses
  %.phi.trans.insert.i.i.i.i.us = getelementptr inbounds nuw i8, ptr %i.uk, i64 32
  %.pre.i.i.i.i.us = load i64, ptr %.phi.trans.insert.i.i.i.i.us, align 8, !tbaa !254
  br label %bb.cl

bb.cl:                                            ; preds = %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_mENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i.us, %bb.ck
  %i.ul = phi i64 [ %.pre.i.i.i.i.us, %bb.ck ], [ %i.ux, %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_mENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i.us ]
  %i.um = phi ptr [ %i.uk, %bb.ck ], [ %i.uv, %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_mENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i.us ] ; 4 uses
  %i.un = icmp eq i64 %i.ue, %i.ul
  br i1 %i.un, label %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_mENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i.i.us, label %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_mENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i.us

_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_mENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i.i.us: ; preds = %bb.cl
  %i.uo = getelementptr inbounds nuw i8, ptr %i.um, i64 8
  %i.up = load i64, ptr %i.uo, align 8, !tbaa !239
  %i.uq = icmp eq i64 %i.tm, %i.up
  %i.ur = getelementptr inbounds nuw i8, ptr %i.um, i64 16
  %i.us = load i64, ptr %i.ur, align 8
  %i.ut = icmp eq i64 %i.tu, %i.us
  %i.uu = select i1 %i.uq, i1 %i.ut, i1 false
  br i1 %i.uu, label %.loopexit.us, label %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_mENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i.us

_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_mENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i.us: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_mENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i.i.us, %bb.cl
  %i.uv = load ptr, ptr %i.um, align 8, !tbaa !168, !nonnull !61, !noundef !61 ; 2 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uv, i64 32
  %i.ux = load i64, ptr %i.uw, align 8, !tbaa !254 ; 2 uses
  %i.uy = urem i64 %i.ux, %i.uf
  %.not19.i.i.i.i.us = icmp eq i64 %i.uy, %i.ug
  call void @llvm.assume(i1 %.not19.i.i.i.i.us)
  br label %bb.cl

bb.cm:                                            ; preds = %bb.cj
  %i.uz = getelementptr inbounds nuw i8, ptr %i.tk, i64 8
  %i.va = load i64, ptr %i.uz, align 8
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cn, %bb.cm
  %.sroa.06.0.in.i.i.us = phi ptr [ %i.bv, %bb.cm ], [ %.sroa.06.0.i.i.us, %bb.cn ]
  %.sroa.06.0.i.i.us = load ptr, ptr %.sroa.06.0.in.i.i.us, align 8, !tbaa !168, !nonnull !61, !noundef !61 ; 4 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.us, i64 8
  %i.vc = load i64, ptr %i.vb, align 8, !tbaa !239
  %i.vd = icmp eq i64 %i.tm, %i.vc
  %i.ve = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.us, i64 16
  %i.vf = load i64, ptr %i.ve, align 8
  %i.vg = icmp eq i64 %i.va, %i.vf
  %i.vh = select i1 %i.vd, i1 %i.vg, i1 false
  br i1 %i.vh, label %.loopexit.us, label %bb.cn, !llvm.loop !626

.loopexit.us:                                     ; preds = %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_mENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i.i.us, %bb.cn
  %.sroa.06.1.i.i.us = phi ptr [ %.sroa.06.0.i.i.us, %bb.cn ], [ %i.um, %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_mENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i.i.us ]
  %i.vi = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.us, i64 24
  %i.vj = load i64, ptr %i.vi, align 8, !tbaa !614 ; 3 uses
  %i.vk = load ptr, ptr %i.ws, align 8, !tbaa !227 ; 3 uses
  %.not.i287.us = icmp eq ptr %i.vk, %i.tj
  br i1 %.not.i287.us, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %.loopexit.us
  store i64 %i.vj, ptr %i.vk, align 8, !tbaa !66
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 8
  store ptr %i.vl, ptr %i.ws, align 8, !tbaa !227
  br label %_ZNSt14_Bit_referenceaSEb.exit295.us

bb.cp:                                            ; preds = %.loopexit.us
  %i.vm = ptrtoint ptr %i.tj to i64
  %i.vn = ptrtoint ptr %i.ti to i64
  %i.vo = sub i64 %i.vm, %i.vn                    ; 5 uses
  %i.vp = icmp eq i64 %i.vo, 9223372036854775800
  br i1 %i.vp, label %.split2551.us, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.us

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.us: ; preds = %bb.cp
  %i.vq = ashr exact i64 %i.vo, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.us = call i64 @llvm.umax.i64(i64 %i.vq, i64 1)
  %i.vr = add nsw i64 %.sroa.speculated.i.i.i.us, %i.vq ; 2 uses
  %i.vs = icmp ult i64 %i.vr, %i.vq
  %i.vt = call i64 @llvm.umin.i64(i64 %i.vr, i64 1152921504606846975)
  %i.vu = select i1 %i.vs, i64 1152921504606846975, i64 %i.vt ; 3 uses
  %.not.i.i.i288.us = icmp ne i64 %i.vu, 0
  call void @llvm.assume(i1 %.not.i.i.i288.us)
  %i.vv = shl nuw nsw i64 %i.vu, 3
  %i.vw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.vv) #36
          to label %.noexc290.us unwind label %.body284.loopexit.split.us ; 5 uses

.noexc290.us:                                     ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.us
  %i.vx = getelementptr inbounds i8, ptr %i.vw, i64 %i.vo ; 2 uses
  store i64 %i.vj, ptr %i.vx, align 8, !tbaa !66
  %i.vy = icmp sgt i64 %i.vo, 0
  br i1 %i.vy, label %bb.cq, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.us

bb.cq:                                            ; preds = %.noexc290.us
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.vw, ptr align 8 %i.ti, i64 %i.vo, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.us

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.us: ; preds = %bb.cq, %.noexc290.us
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vx, i64 8
  %.not.i17.i.i.us = icmp eq ptr %i.ti, null
  br i1 %.not.i17.i.i.us, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.us, label %bb.cr

bb.cr:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.us
  call void @_ZdlPv(ptr noundef nonnull %i.ti) #34
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.us

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.us: ; preds = %bb.cr, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.us
  store ptr %i.vw, ptr %i.rk, align 8, !tbaa !158
  store ptr %i.vz, ptr %i.ws, align 8, !tbaa !227
  %i.wa = getelementptr inbounds nuw [8 x i8], ptr %i.vw, i64 %i.vu ; 2 uses
  store ptr %i.wa, ptr %i.ru, align 8, !tbaa !211
  %.pre3443 = load ptr, ptr %i.rm, align 8, !tbaa !544
  %.pre3444 = load ptr, ptr %i.rl, align 8, !tbaa !545
  br label %_ZNSt14_Bit_referenceaSEb.exit295.us

_ZNSt14_Bit_referenceaSEb.exit295.us:             ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.us, %bb.co
  %i.wb = phi ptr [ %.pre3444, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.us ], [ %i.tg, %bb.co ] ; 2 uses
  %i.wc = phi ptr [ %.pre3443, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.us ], [ %i.th, %bb.co ] ; 2 uses
  %i.wd = phi ptr [ %i.vw, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.us ], [ %i.ti, %bb.co ]
  %i.we = phi ptr [ %i.wa, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.us ], [ %i.tj, %bb.co ]
  %i.wf = load i64, ptr %storemerge.i.i.i.i.i.i836.us, align 8, !tbaa !66 ; 3 uses
  %i.wg = and i64 %i.wf, %i.sy
  %i.wh = icmp ne i64 %i.wg, 0
  %i.wi = icmp ne i64 %i.vj, %.01412517.us
  %i.wj = select i1 %i.wh, i1 true, i1 %i.wi
  %i.wk = and i64 %i.wf, %i.wt
  %i.wl = or i64 %i.wf, %i.sy
  %storemerge1301.us = select i1 %i.wj, i64 %i.wl, i64 %i.wk
  store i64 %storemerge1301.us, ptr %storemerge.i.i.i.i.i.i836.us, align 8, !tbaa !66
  %i.wm = add nuw i64 %.01412517.us, 1            ; 2 uses
  %i.wn = ptrtoint ptr %i.wc to i64
  %i.wo = ptrtoint ptr %i.wb to i64
  %i.wp = sub i64 %i.wn, %i.wo
  %i.wq = ashr exact i64 %i.wp, 4
  %i.wr = icmp ult i64 %i.wm, %i.wq
  br i1 %i.wr, label %bb.cj, label %._crit_edge2519.us, !llvm.loop !627

.lr.ph2518.us:                                    ; preds = %_ZNSt14_Bit_referenceaSEb.exit.us
  %i.ws = getelementptr inbounds nuw i8, ptr %i.rk, i64 8 ; 3 uses
  %i.wt = xor i64 %i.sy, -1
  br label %bb.cj

.loopexit1317.split.us:                           ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.us
  %lpad.loopexit1319.us = landingpad { ptr, i32 }
          cleanup
  br label %.body253.thread

.body284.loopexit.split.us:                       ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.us
  %lpad.loopexit1303.us = landingpad { ptr, i32 }
          cleanup
  br label %.body253.thread

._crit_edge2522:                                  ; preds = %._crit_edge2519, %._crit_edge2519.us, %_ZNSt6vectorIN6duckdb6vectorImLb1ESaImEEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i, %_ZN6duckdb6vectorINS0_ImLb1ESaImEEELb1ESaIS2_EECI2St6vectorIS2_S3_EEmRKS3_.exit, %_ZN6duckdb6vectorIbLb1ESaIbEECI2St6vectorIbS1_EEmRKbRKS1_.exit
  %.sroa.251184.03741 = phi ptr [ %i.qw, %._crit_edge2519.us ], [ null, %_ZNSt6vectorIN6duckdb6vectorImLb1ESaImEEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i ], [ %i.qw, %_ZN6duckdb6vectorIbLb1ESaIbEECI2St6vectorIbS1_EEmRKbRKS1_.exit ], [ null, %_ZN6duckdb6vectorINS0_ImLb1ESaImEEELb1ESaIS2_EECI2St6vectorIS2_S3_EEmRKS3_.exit ], [ %i.qw, %._crit_edge2519 ] ; 3 uses
  %.sroa.19.03740 = phi i64 [ %i.rb, %._crit_edge2519.us ], [ 0, %_ZNSt6vectorIN6duckdb6vectorImLb1ESaImEEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i ], [ %i.rb, %_ZN6duckdb6vectorIbLb1ESaIbEECI2St6vectorIbS1_EEmRKbRKS1_.exit ], [ 0, %_ZN6duckdb6vectorINS0_ImLb1ESaImEEELb1ESaIS2_EECI2St6vectorIS2_S3_EEmRKS3_.exit ], [ %i.rb, %._crit_edge2519 ]
  %.sroa.131177.03739 = phi i64 [ %i.rc, %._crit_edge2519.us ], [ 0, %_ZNSt6vectorIN6duckdb6vectorImLb1ESaImEEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i ], [ %i.rc, %_ZN6duckdb6vectorIbLb1ESaIbEECI2St6vectorIbS1_EEmRKbRKS1_.exit ], [ 0, %_ZN6duckdb6vectorINS0_ImLb1ESaImEEELb1ESaIS2_EECI2St6vectorIS2_S3_EEmRKS3_.exit ], [ %i.rc, %._crit_edge2519 ]
  %.sroa.01171.03729 = phi ptr [ %i.qu, %._crit_edge2519.us ], [ null, %_ZNSt6vectorIN6duckdb6vectorImLb1ESaImEEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i ], [ %i.qu, %_ZN6duckdb6vectorIbLb1ESaIbEECI2St6vectorIbS1_EEmRKbRKS1_.exit ], [ null, %_ZN6duckdb6vectorINS0_ImLb1ESaImEEELb1ESaIS2_EECI2St6vectorIS2_S3_EEmRKS3_.exit ], [ %i.qu, %._crit_edge2519 ] ; 6 uses
  %.sroa.01187.036983728 = phi ptr [ %i.mk, %._crit_edge2519.us ], [ null, %_ZNSt6vectorIN6duckdb6vectorImLb1ESaImEEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i ], [ %i.mk, %_ZN6duckdb6vectorIbLb1ESaIbEECI2St6vectorIbS1_EEmRKbRKS1_.exit ], [ %i.mk, %_ZN6duckdb6vectorINS0_ImLb1ESaImEEELb1ESaIS2_EECI2St6vectorIS2_S3_EEmRKS3_.exit ], [ %i.mk, %._crit_edge2519 ] ; 8 uses
  %.0.lcssa.i.i.i.i.i.i37093727 = phi ptr [ %scevgep.i.i.i.i.i.i, %._crit_edge2519.us ], [ null, %_ZNSt6vectorIN6duckdb6vectorImLb1ESaImEEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i ], [ %scevgep.i.i.i.i.i.i, %_ZN6duckdb6vectorIbLb1ESaIbEECI2St6vectorIbS1_EEmRKbRKS1_.exit ], [ %scevgep.i.i.i.i.i.i, %_ZN6duckdb6vectorINS0_ImLb1ESaImEEELb1ESaIS2_EECI2St6vectorIS2_S3_EEmRKS3_.exit ], [ %scevgep.i.i.i.i.i.i, %._crit_edge2519 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #33
  invoke void @_ZN6duckdb21ColumnBindingReplacerC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %45)
          to label %.preheader unwind label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i757.thread

.preheader:                                       ; preds = %._crit_edge2522
  %i.wu = load ptr, ptr %i.mb, align 8, !tbaa !509
  %i.wv = load ptr, ptr %i.ma, align 8, !tbaa !527 ; 2 uses
  %.not2633 = icmp eq ptr %i.wu, %i.wv
  br i1 %.not2633, label %._crit_edge2591, label %.lr.ph2590

.lr.ph2590:                                       ; preds = %.preheader
  %i.ww = ptrtoint ptr %.sroa.111206.0.lcssa to i64
  %i.wx = ptrtoint ptr %.sroa.01202.0.lcssa to i64
  %i.wy = sub i64 %i.ww, %i.wx                    ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.sroa.111206.0.lcssa, %.sroa.01202.0.lcssa
  %i.wz = icmp ugt i64 %i.wy, 9223372036854775776
  %i.xa = getelementptr inbounds nuw i8, ptr null, i64 %i.wy ; 2 uses
  %i.xb = ptrtoint ptr %.sroa.01171.03729 to i64
  %i.xc = sub i64 %.sroa.131177.03739, %i.xb
  %i.xd = shl i64 %i.xc, 3
  %i.xe = add i64 %i.xd, %.sroa.19.03740          ; 2 uses
  %i.xf = ptrtoint ptr %.0.lcssa.i.i.i.i.i.i37093727 to i64
  %i.xg = ptrtoint ptr %.sroa.01187.036983728 to i64
  %i.xh = sub i64 %i.xf, %i.xg
  %i.xi = sdiv exact i64 %i.xh, 24                ; 2 uses
  br label %bb.dq

.loopexit1342:                                    ; preds = %.lr.ph.preheader.i.i.i.i.i.i
  %lpad.loopexit1344 = landingpad { ptr, i32 }
          cleanup
  br label %.body241

.loopexit.split-lp1343:                           ; preds = %bb.bb
  %lpad.loopexit.split-lp1345 = landingpad { ptr, i32 }
          cleanup
  br label %.body241

bb.cs:                                            ; preds = %bb.cd
  %i.xj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit761

.lr.ph2521.split:                                 ; preds = %._crit_edge2519
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  store i64 %i.aak, ptr %i.ap, align 8, !tbaa !66
  store i64 %i.mh, ptr %i.aq, align 8, !tbaa !66
  %exitcond.not = icmp eq i64 %i.aak, %i.mh
  br i1 %exitcond.not, label %.noexc.i826, label %.lr.ph5388, !prof !624, !llvm.loop !628

.noexc.i826:                                      ; preds = %.lr.ph2521.split, %.lr.ph2521.split.us
  %i.xk = call ptr @__cxa_allocate_exception(i64 16) #33 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #33
  %i.xl = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 3 uses
  store ptr %i.xl, ptr %34, align 8, !tbaa !387
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #33
  store i64 55, ptr %i.y, align 8, !tbaa !66
  %i.xm = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull align 8 dereferenceable(8) %i.y, i64 noundef 0)
          to label %.noexc827 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i256 ; 3 uses

.noexc827:                                        ; preds = %.noexc.i826
  store ptr %i.xm, ptr %34, align 8, !tbaa !124
  %i.xn = load i64, ptr %i.y, align 8, !tbaa !66  ; 3 uses
  store i64 %i.xn, ptr %i.xl, align 8, !tbaa !241
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.xm, ptr noundef nonnull align 1 dereferenceable(55) @.str.60, i64 55, i1 false)
  %i.xo = getelementptr inbounds nuw i8, ptr %34, i64 8
  store i64 %i.xn, ptr %i.xo, align 8, !tbaa !388
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xm, i64 %i.xn
  store i8 0, ptr %i.xp, align 1, !tbaa !241
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #33
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.xk, ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull align 8 dereferenceable(8) %i.ap, ptr noundef nonnull align 8 dereferenceable(8) %i.aq)
          to label %bb.ct unwind label %bb.cu

bb.ct:                                            ; preds = %.noexc827
  invoke void @__cxa_throw(ptr nonnull %i.xk, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #35
          to label %bb.cw unwind label %bb.cu

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i256: ; preds = %.noexc.i826
  %i.xq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #33
  br label %bb.cv

bb.cu:                                            ; preds = %bb.ct, %.noexc827
  %.0.i.i.i259 = phi i1 [ false, %bb.ct ], [ true, %.noexc827 ] ; 2 uses
  %i.xr = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.xs = load ptr, ptr %34, align 8, !tbaa !124  ; 2 uses
  %i.xt = icmp eq ptr %i.xs, %i.xl
  br i1 %i.xt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i261, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i260

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i260: ; preds = %bb.cu
  call void @_ZdlPv(ptr noundef %i.xs) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #33
  br i1 %.0.i.i.i259, label %bb.cv, label %.body253.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i261: ; preds = %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #33
  br i1 %.0.i.i.i259, label %bb.cv, label %.body253.thread

bb.cv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i261, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i260, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i256
  %.pn8.i.i.i257 = phi { ptr, i32 } [ %i.xq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i256 ], [ %i.xr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i261 ], [ %i.xr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i260 ]
  call void @__cxa_free_exception(ptr %i.xk) #33
  br label %.body253.thread

bb.cw:                                            ; preds = %bb.ct
  unreachable

.lr.ph5388:                                       ; preds = %.lr.ph2521, %.lr.ph2521.split
  %.014025205387 = phi i64 [ %i.aak, %.lr.ph2521.split ], [ 0, %.lr.ph2521 ] ; 8 uses
  %i.xu = phi ptr [ %i.aam, %.lr.ph2521.split ], [ %.pre3436, %.lr.ph2521 ]
  %i.xv = getelementptr inbounds nuw [40 x i8], ptr %i.xu, i64 %.014025205387 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  %i.xw = getelementptr inbounds nuw [24 x i8], ptr %i.mk, i64 %.014025205387 ; 6 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xv, i64 16 ; 4 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xv, i64 24 ; 4 uses
  %i.xz = load ptr, ptr %i.xy, align 8, !tbaa !544 ; 2 uses
  %i.ya = load ptr, ptr %i.xx, align 8, !tbaa !545 ; 2 uses
  %i.yb = ptrtoint ptr %i.xz to i64
  %i.yc = ptrtoint ptr %i.ya to i64
  %i.yd = sub i64 %i.yb, %i.yc                    ; 2 uses
  %i.ye = ashr exact i64 %i.yd, 4                 ; 3 uses
  %i.yf = icmp ugt i64 %i.ye, 1152921504606846975
  br i1 %i.yf, label %.split.us, label %bb.cx

.split.us:                                        ; preds = %.lr.ph5388, %.lr.ph5402
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.68) #35
          to label %.noexc264 unwind label %.loopexit.split-lp1318

.noexc264:                                        ; preds = %.split.us
  unreachable

bb.cx:                                            ; preds = %.lr.ph5388
  %i.yg = getelementptr inbounds nuw i8, ptr %i.xw, i64 16 ; 3 uses
  %i.yh = load ptr, ptr %i.yg, align 8, !tbaa !211 ; 2 uses
  %i.yi = load ptr, ptr %i.xw, align 8, !tbaa !158 ; 5 uses
  %i.yj = ptrtoint ptr %i.yh to i64
  %i.yk = ptrtoint ptr %i.yi to i64               ; 2 uses
  %i.yl = sub i64 %i.yj, %i.yk
  %i.ym = ashr exact i64 %i.yl, 3
  %i.yn = icmp ult i64 %i.ym, %i.ye
  br i1 %i.yn, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i, label %_ZNSt6vectorImSaImEE7reserveEm.exit

_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i: ; preds = %bb.cx
  %i.yo = getelementptr inbounds nuw i8, ptr %i.xw, i64 8 ; 2 uses
  %i.yp = load ptr, ptr %i.yo, align 8, !tbaa !227
  %i.yq = ptrtoint ptr %i.yp to i64
  %i.yr = sub i64 %i.yq, %i.yk                    ; 3 uses
  %i.ys = ashr exact i64 %i.yd, 1
  %i.yt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ys) #36
          to label %.noexc265 unwind label %.loopexit1317.split ; 5 uses

.noexc265:                                        ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  %i.yu = icmp sgt i64 %i.yr, 0
  br i1 %i.yu, label %bb.cy, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i

bb.cy:                                            ; preds = %.noexc265
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.yt, ptr align 8 %i.yi, i64 %i.yr, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i: ; preds = %bb.cy, %.noexc265
  %.not.i8.i = icmp eq ptr %i.yi, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i, label %bb.cz

bb.cz:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.yi) #34
  br label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i: ; preds = %bb.cz, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i
  store ptr %i.yt, ptr %i.xw, align 8, !tbaa !158
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yt, i64 %i.yr
  store ptr %i.yv, ptr %i.yo, align 8, !tbaa !227
  %i.yw = getelementptr inbounds nuw [8 x i8], ptr %i.yt, i64 %i.ye ; 2 uses
  store ptr %i.yw, ptr %i.yg, align 8, !tbaa !211
  %.pre3437 = load ptr, ptr %i.xy, align 8, !tbaa !544
  %.pre3438 = load ptr, ptr %i.xx, align 8, !tbaa !545
  br label %_ZNSt6vectorImSaImEE7reserveEm.exit
end_hunk_0
begin_hunk_1_@_ZN6duckdb21TopNWindowElimination11CanOptimizeERNS_15LogicalOperatorE:bb.a
  br label %.loopexit

bb.x:                                             ; preds = %bb.v
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.084.0, i64 8
  %i.bw = load ptr, ptr %i.as, align 8, !tbaa !2281
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !2549
  call void @_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_16ReferencedColumnENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S2_EEE5clearEv(ptr noundef nonnull align 8 dereferenceable(56) %i.aq) #33
  %i.bz = load i8, ptr %i.bv, align 8, !tbaa !15
  %.not59 = icmp eq i8 %i.bz, 4
  br i1 %.not59, label %bb.y, label %.loopexit

bb.y:                                             ; preds = %bb.x
  %i.ca = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN6duckdb15LogicalOperator4CastINS_13LogicalWindowEEERT_v(ptr noundef nonnull align 8 dereferenceable(97) %.sroa.084.0) ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 104
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !3533
  %.not60 = icmp eq i64 %i.cc, %i.by
  br i1 %.not60, label %bb.z, label %.loopexit

bb.z:                                             ; preds = %bb.y
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 40 ; 6 uses
  %i.ce = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.cd, i64 noundef 0)
  %i.cf = call noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ce)
  %i.cg = call noundef nonnull align 8 dereferenceable(296) ptr @_ZN6duckdb14BaseExpression4CastINS_21BoundWindowExpressionEEERT_v(ptr noundef nonnull align 8 dereferenceable(56) %i.cf) ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 128
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !314 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 136
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !314 ; 2 uses
  %.not8999 = icmp eq ptr %i.ci, %i.ck
  br i1 %.not8999, label %.critedge, label %.lr.ph

bb.aa:                                            ; preds = %.lr.ph
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.078.0100, i64 8 ; 2 uses
  %.not89 = icmp eq ptr %i.cl, %i.ck
  br i1 %.not89, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.z, %bb.aa
  %.sroa.078.0100 = phi ptr [ %i.cl, %bb.aa ], [ %i.ci, %bb.z ] ; 2 uses
  %i.cm = call noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.078.0100)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 9
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !233
  %.not61 = icmp eq i8 %i.co, 28
  br i1 %.not61, label %bb.aa, label %.loopexit

.critedge:                                        ; preds = %bb.aa, %bb.z
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ca, i64 48 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !326
  %i.cr = load ptr, ptr %i.cd, align 8, !tbaa !325
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = sub i64 %i.cs, %i.ct
  %.not63101 = icmp ugt i64 %i.cu, 8
  br i1 %.not63101, label %.lr.ph103, label %.critedge71

bb.ab:                                            ; preds = %.lr.ph103
  %i.cv = add nuw i64 %.049102, 1                 ; 2 uses
  %i.cw = load ptr, ptr %i.cp, align 8, !tbaa !326
  %i.cx = load ptr, ptr %i.cd, align 8, !tbaa !325
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = sub i64 %i.cy, %i.cz
  %i.db = ashr exact i64 %i.da, 3
  %.not63 = icmp ult i64 %i.cv, %i.db
  br i1 %.not63, label %.lr.ph103, label %.critedge71, !llvm.loop !3540

.lr.ph103:                                        ; preds = %.critedge, %bb.ab
  %.049102 = phi i64 [ %i.cv, %bb.ab ], [ 1, %.critedge ] ; 2 uses
  %i.dc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.cd, i64 noundef %.049102)
  %i.dd = call noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dc) ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !7
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 80
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = call noundef zeroext i1 %i.dg(ptr noundef nonnull align 8 dereferenceable(88) %i.dd, ptr noundef nonnull align 8 dereferenceable(56) %i.cg)
  br i1 %i.dh, label %bb.ab, label %.loopexit

.critedge71:                                      ; preds = %bb.ab, %.critedge
  %i.di = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.cd, i64 noundef 0)
  %i.dj = call noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.di)
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = load i8, ptr %i.dk, align 8, !tbaa !1343
  %.not64 = icmp eq i8 %i.dl, 125
  br i1 %.not64, label %bb.ac, label %.loopexit

bb.ac:                                            ; preds = %.critedge71
  %i.dm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.cd, i64 noundef 0)
  %i.dn = call noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dm)
  %i.do = call noundef nonnull align 8 dereferenceable(296) ptr @_ZN6duckdb14BaseExpression4CastINS_21BoundWindowExpressionEEERT_v(ptr noundef nonnull align 8 dereferenceable(56) %i.dn) ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 176 ; 4 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 184
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !2340
  %i.ds = load ptr, ptr %i.dp, align 8, !tbaa !2435
  %i.dt = ptrtoint ptr %i.dr to i64
  %i.du = ptrtoint ptr %i.ds to i64
  %i.dv = sub i64 %i.dt, %i.du
  %.not65 = icmp eq i64 %i.dv, 24
  br i1 %.not65, label %bb.ad, label %.loopexit

bb.ad:                                            ; preds = %bb.ac
  %i.dw = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_16BoundOrderByNodeELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.dp, i64 noundef 0)
  %i.dx = load i8, ptr %i.dw, align 8, !tbaa !3367
  %.not66 = icmp eq i8 %i.dx, 3
  br i1 %.not66, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dy = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_16BoundOrderByNodeELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.dp, i64 noundef 0)
  %i.dz = load i8, ptr %i.dy, align 8, !tbaa !3367
  %.not67 = icmp eq i8 %i.dz, 2
  br i1 %.not67, label %bb.af, label %.loopexit

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.ea = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_16BoundOrderByNodeELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.dp, i64 noundef 0)
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 1
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !3369
  %.not68 = icmp eq i8 %i.ec, 3
  br label %.loopexit

.loopexit:                                        ; preds = %bb.u, %.lr.ph, %.lr.ph103, %bb.w, %bb.y, %bb.ac, %bb.ae, %bb.af, %.critedge71, %bb.x, %bb.b, %bb.d, %bb.j, %bb.k, %bb.l, %bb.i, %bb.m, %bb.h, %bb.f, %bb.c, %bb.a
  %.16 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.c ], [ false, %bb.d ], [ false, %bb.h ], [ false, %bb.f ], [ false, %bb.l ], [ false, %bb.k ], [ false, %bb.i ], [ false, %bb.m ], [ false, %bb.j ], [ false, %.lr.ph103 ], [ false, %bb.w ], [ false, %bb.x ], [ false, %bb.y ], [ %.not68, %bb.af ], [ false, %.critedge71 ], [ false, %.lr.ph ], [ false, %bb.ae ], [ false, %bb.ac ], [ false, %bb.u ]
  ret i1 %.16
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb21TopNWindowElimination26TraverseProjectionBindingsERKSt6vectorINS_13ColumnBindingESaIS2_EERSt17reference_wrapperINS_15LogicalOperatorEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::vector") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !63   ; 3 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !12     ; 3 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EEC2ERKS3_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ugt i64 %i.i, 9223372036854775792
  br i1 %i.j, label %.noexc.i.i, label %bb.c, !prof !117

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #35
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #36 ; 14 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.m, %.lr.ph.i.i.i.i.i ], [ %i.k, %bb.c ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i.i.i ], [ %i.f, %bb.c ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.08.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !65
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 16 ; 2 uses
  %i.m = getelementptr i8, ptr %.09.i.i.i.i.i, i64 16 ; 6 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.l, %i.e
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EEC2ERKS3_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !3541

_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EEC2ERKS3_.exit: ; preds = %.lr.ph.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i ; 3 uses
  %i.o = load ptr, ptr %3, align 8, !tbaa !1156   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i8, ptr %i.p, align 8, !tbaa !15
  %i.r = icmp eq i8 %i.q, 1
  br i1 %i.r, label %.lr.ph37, label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit20

_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EEC2ERKS3_.exit.thread: ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr null, i64 %i.i ; 2 uses
  %i.t = load ptr, ptr %3, align 8, !tbaa !1156   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i8, ptr %i.u, align 8, !tbaa !15
  %i.w = icmp eq i8 %i.v, 1
  br i1 %i.w, label %.lr.ph37.split.preheader, label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit20

.lr.ph37:                                         ; preds = %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EEC2ERKS3_.exit
  %.not = icmp eq ptr %i.m, %i.k
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  br i1 %.not, label %.lr.ph37.split.preheader, label %.lr.ph37.split.us.preheader

.lr.ph37.split.us.preheader:                      ; preds = %.lr.ph37
  %i.aa = ptrtoint ptr %i.m to i64
  %i.ab = ptrtoint ptr %i.k to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = ashr exact i64 %i.ac, 4
  br label %.lr.ph37.split.us

.lr.ph37.split.preheader:                         ; preds = %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EEC2ERKS3_.exit.thread, %.lr.ph37
  %i.ae = phi ptr [ %i.n, %.lr.ph37 ], [ %i.s, %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EEC2ERKS3_.exit.thread ]
  %i.af = phi ptr [ %i.k, %.lr.ph37 ], [ null, %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EEC2ERKS3_.exit.thread ] ; 3 uses
  %.0.lcssa.i.i.i.i.i7680 = phi ptr [ %i.m, %.lr.ph37 ], [ null, %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EEC2ERKS3_.exit.thread ]
  %i.ag = phi ptr [ %i.o, %.lr.ph37 ], [ %i.t, %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EEC2ERKS3_.exit.thread ]
  br label %.lr.ph37.split

.lr.ph37.split.us:                                ; preds = %.lr.ph37.split.us.preheader, %7
  %i.ah = phi ptr [ %6, %7 ], [ %i.o, %.lr.ph37.split.us.preheader ]
  %i.ai = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN6duckdb15LogicalOperator4CastINS_17LogicalProjectionEEERT_v(ptr noundef nonnull align 8 dereferenceable(97) %i.ah)
          to label %.preheader.us unwind label %.split.us ; 2 uses

5:                                                ; preds = %._crit_edge.us
  %6 = invoke noundef nonnull align 8 dereferenceable(97) ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.de)
          to label %7 unwind label %.split39.us   ; 3 uses

7:                                                ; preds = %5
  %8 = ptrtoint ptr %6 to i64
  store i64 %8, ptr %3, align 8
  %9 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %10 = load i8, ptr %9, align 8, !tbaa !15
  %11 = icmp eq i8 %10, 1
  br i1 %11, label %.lr.ph37.split.us, label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit20, !llvm.loop !3542

bb.d:                                             ; preds = %.preheader.us, %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_16ReferencedColumnENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S2_EEE5clearEv.exit.us
  %.01336.us = phi i64 [ 0, %.preheader.us ], [ %i.cz, %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_16ReferencedColumnENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S2_EEE5clearEv.exit.us ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %.01336.us ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !250 ; 3 uses
  %i.am = load ptr, ptr %i.db, align 8, !tbaa !326
  %i.an = load ptr, ptr %i.da, align 8, !tbaa !325 ; 2 uses
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 3                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.al, ptr %i.b, align 8, !tbaa !66
  store i64 %i.ar, ptr %i.c, align 8, !tbaa !66
  %.not.i.i.i.us = icmp ult i64 %i.al, %i.ar
  br i1 %.not.i.i.i.us, label %bb.e, label %.noexc.i, !prof !155

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.al
  %i.at = load ptr, ptr %1, align 8, !tbaa !7
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8
  invoke void %i.av(ptr noundef nonnull align 8 dereferenceable(65) %1, ptr noundef nonnull %i.as)
          to label %bb.f unwind label %.split42.us

bb.f:                                             ; preds = %bb.e
  %i.aw = load ptr, ptr %i.y, align 8, !tbaa !2281 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i64 16, i1 false), !tbaa.struct !65
  br label %.lr.ph.i.i.i.us

.lr.ph.i.i.i.us:                                  ; preds = %.noexc.i.i16.us, %bb.f
  %.06.i.i.i.us = phi ptr [ %i.ay, %.noexc.i.i16.us ], [ %i.aw, %bb.f ] ; 11 uses
  %i.ay = load ptr, ptr %.06.i.i.i.us, align 8, !tbaa !168 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.06.i.i.i.us, i64 24
  %i.ba = getelementptr inbounds nuw i8, ptr %.06.i.i.i.us, i64 104 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.06.i.i.i.us, i64 120 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !2282 ; 2 uses
  %.not5.i.i.us = icmp eq ptr %i.bc, null
  br i1 %.not5.i.i.us, label %_ZNSt10_HashtableIN6duckdb11ColumnIndexES1_SaIS1_ENSt8__detail9_IdentityENS0_19ColumnIndexEqualityENS0_23ColumnIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.us, label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.i.i.i.us, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN6duckdb11ColumnIndexELb1EEEEE18_M_deallocate_nodeEPS4_.exit.i.i.us
  %.06.i.i.us = phi ptr [ %i.bd, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN6duckdb11ColumnIndexELb1EEEEE18_M_deallocate_nodeEPS4_.exit.i.i.us ], [ %i.bc, %.lr.ph.i.i.i.us ] ; 7 uses
  %i.bd = load ptr, ptr %.06.i.i.us, align 8, !tbaa !168 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.06.i.i.us, i64 88 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !1656 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.06.i.i.us, i64 96
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !1657 ; 2 uses
  %.not.i.i2.i.i.i.i.i.us = icmp eq ptr %i.bf, %i.bh
  br i1 %.not.i.i2.i.i.i.i.i.us, label %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.us, label %.lr.ph.i.i.i.i.i23.us

.lr.ph.i.i.i.i.i23.us:                            ; preds = %.lr.ph.i.i.us, %.lr.ph.i.i.i.i.i23.us
  %.0.i.i3.i.i.i.i.i.us = phi ptr [ %i.bi, %.lr.ph.i.i.i.i.i23.us ], [ %i.bf, %.lr.ph.i.i.us ] ; 2 uses
  tail call void @_ZSt8_DestroyIN6duckdb11ColumnIndexEEvPT_(ptr noundef %.0.i.i3.i.i.i.i.i.us), !inline_history !1658
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.i.i3.i.i.i.i.i.us, i64 104 ; 2 uses
  %.not.i.i.i.i.i.i.i.us = icmp eq ptr %i.bi, %i.bh
  br i1 %.not.i.i.i.i.i.i.i.us, label %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i.i.i.us, label %.lr.ph.i.i.i.i.i23.us, !llvm.loop !1659

_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i.i.i.us: ; preds = %.lr.ph.i.i.i.i.i23.us
  %.pre.i.i.i.i.i.us = load ptr, ptr %i.be, align 8, !tbaa !1656
  br label %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.us

_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.us: ; preds = %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i.i.i.us, %.lr.ph.i.i.us
  %i.bj = phi ptr [ %.pre.i.i.i.i.i.us, %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i.i.i.us ], [ %i.bf, %.lr.ph.i.i.us ] ; 2 uses
  %.not.i.i1.i.i.i.i.i.us = icmp eq ptr %i.bj, null
  br i1 %.not.i.i1.i.i.i.i.i.us, label %_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EED2Ev.exit.i.i.i.i.us, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.us
  tail call void @_ZdlPv(ptr noundef nonnull %i.bj) #34, !inline_history !1660
  br label %_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EED2Ev.exit.i.i.i.i.us

_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EED2Ev.exit.i.i.i.i.us: ; preds = %bb.g, %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.us
  %i.bk = getelementptr inbounds nuw i8, ptr %.06.i.i.us, i64 56
  tail call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bk) #33, !inline_history !1661
  %i.bl = getelementptr inbounds nuw i8, ptr %.06.i.i.us, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !124 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.06.i.i.us, i64 40
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN6duckdb11ColumnIndexELb1EEEEE18_M_deallocate_nodeEPS4_.exit.i.i.us, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.us

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.us: ; preds = %_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EED2Ev.exit.i.i.i.i.us
  tail call void @_ZdlPv(ptr noundef %i.bm) #34, !inline_history !1661
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN6duckdb11ColumnIndexELb1EEEEE18_M_deallocate_nodeEPS4_.exit.i.i.us

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN6duckdb11ColumnIndexELb1EEEEE18_M_deallocate_nodeEPS4_.exit.i.i.us: ; preds = %_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EED2Ev.exit.i.i.i.i.us, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.us
  tail call void @_ZdlPv(ptr noundef nonnull %.06.i.i.us) #34
  %.not.i.i.us = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.us, label %_ZNSt10_HashtableIN6duckdb11ColumnIndexES1_SaIS1_ENSt8__detail9_IdentityENS0_19ColumnIndexEqualityENS0_23ColumnIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.us, label %.lr.ph.i.i.us, !llvm.loop !2284

_ZNSt10_HashtableIN6duckdb11ColumnIndexES1_SaIS1_ENSt8__detail9_IdentityENS0_19ColumnIndexEqualityENS0_23ColumnIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.us: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN6duckdb11ColumnIndexELb1EEEEE18_M_deallocate_nodeEPS4_.exit.i.i.us, %.lr.ph.i.i.i.us
  %i.bp = load ptr, ptr %i.ba, align 8, !tbaa !2285
  %i.bq = getelementptr inbounds nuw i8, ptr %.06.i.i.i.us, i64 112
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !2286
  %i.bs = shl i64 %i.br, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bp, i8 0, i64 %i.bs, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, i8 0, i64 16, i1 false)
  %i.bt = load ptr, ptr %i.ba, align 8, !tbaa !2285 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.06.i.i.i.us, i64 152
  %i.bv = icmp eq ptr %i.bt, %i.bu
  br i1 %i.bv, label %_ZNSt13unordered_setIN6duckdb11ColumnIndexENS0_23ColumnIndexHashFunctionENS0_19ColumnIndexEqualityESaIS1_EED2Ev.exit.i.i.i.us, label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableIN6duckdb11ColumnIndexES1_SaIS1_ENSt8__detail9_IdentityENS0_19ColumnIndexEqualityENS0_23ColumnIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.us
  tail call void @_ZdlPv(ptr noundef %i.bt) #34
  br label %_ZNSt13unordered_setIN6duckdb11ColumnIndexENS0_23ColumnIndexHashFunctionENS0_19ColumnIndexEqualityESaIS1_EED2Ev.exit.i.i.i.us

_ZNSt13unordered_setIN6duckdb11ColumnIndexENS0_23ColumnIndexHashFunctionENS0_19ColumnIndexEqualityESaIS1_EED2Ev.exit.i.i.i.us: ; preds = %bb.h, %_ZNSt10_HashtableIN6duckdb11ColumnIndexES1_SaIS1_ENSt8__detail9_IdentityENS0_19ColumnIndexEqualityENS0_23ColumnIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.us
  %i.bw = getelementptr inbounds nuw i8, ptr %.06.i.i.i.us, i64 72 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !1656 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.06.i.i.i.us, i64 80
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !1657 ; 2 uses
  %.not.i.i2.i.i.i.i.us = icmp eq ptr %i.bx, %i.bz
  br i1 %.not.i.i2.i.i.i.i.us, label %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.us, label %.lr.ph.i.i.i.i.us

.lr.ph.i.i.i.i.us:                                ; preds = %_ZNSt13unordered_setIN6duckdb11ColumnIndexENS0_23ColumnIndexHashFunctionENS0_19ColumnIndexEqualityESaIS1_EED2Ev.exit.i.i.i.us, %.lr.ph.i.i.i.i.us
  %.0.i.i3.i.i.i.i.us = phi ptr [ %i.ca, %.lr.ph.i.i.i.i.us ], [ %i.bx, %_ZNSt13unordered_setIN6duckdb11ColumnIndexENS0_23ColumnIndexHashFunctionENS0_19ColumnIndexEqualityESaIS1_EED2Ev.exit.i.i.i.us ] ; 2 uses
  tail call void @_ZSt8_DestroyIN6duckdb11ColumnIndexEEvPT_(ptr noundef %.0.i.i3.i.i.i.i.us), !inline_history !1666
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.i.i3.i.i.i.i.us, i64 104 ; 2 uses
  %.not.i.i.i.i.i.i.us = icmp eq ptr %i.ca, %i.bz
  br i1 %.not.i.i.i.i.i.i.us, label %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i.i.us, label %.lr.ph.i.i.i.i.us, !llvm.loop !1659

_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i.i.us: ; preds = %.lr.ph.i.i.i.i.us
  %.pre.i.i.i.i.us = load ptr, ptr %i.bw, align 8, !tbaa !1656
  br label %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.us

_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.us: ; preds = %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i.i.us, %_ZNSt13unordered_setIN6duckdb11ColumnIndexENS0_23ColumnIndexHashFunctionENS0_19ColumnIndexEqualityESaIS1_EED2Ev.exit.i.i.i.us
  %i.cb = phi ptr [ %.pre.i.i.i.i.us, %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i.i.us ], [ %i.bx, %_ZNSt13unordered_setIN6duckdb11ColumnIndexENS0_23ColumnIndexHashFunctionENS0_19ColumnIndexEqualityESaIS1_EED2Ev.exit.i.i.i.us ] ; 2 uses
  %.not.i.i1.i.i.i.i.us = icmp eq ptr %i.cb, null
  br i1 %.not.i.i1.i.i.i.i.us, label %_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EED2Ev.exit.i.i.i.us, label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.us
  tail call void @_ZdlPv(ptr noundef nonnull %i.cb) #34, !inline_history !1667
  br label %_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EED2Ev.exit.i.i.i.us

_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EED2Ev.exit.i.i.i.us: ; preds = %bb.i, %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.us
  %i.cc = getelementptr inbounds nuw i8, ptr %.06.i.i.i.us, i64 48 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !2287 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.06.i.i.i.us, i64 56
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !2290 ; 2 uses
  %.not4.i.i.i.us = icmp eq ptr %i.cd, %i.cf
  br i1 %.not4.i.i.i.us, label %_ZSt8_DestroyIPN6duckdb23ReferencedStructExtractES1_EvT_S3_RSaIT0_E.exit.i.us, label %.lr.ph.i.i.i21.us

.lr.ph.i.i.i21.us:                                ; preds = %_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EED2Ev.exit.i.i.i.us, %_ZSt8_DestroyIN6duckdb23ReferencedStructExtractEEvPT_.exit.i.i.i.us
  %.05.i.i.i.us = phi ptr [ %i.ct, %_ZSt8_DestroyIN6duckdb23ReferencedStructExtractEEvPT_.exit.i.i.i.us ], [ %i.cd, %_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EED2Ev.exit.i.i.i.us ] ; 7 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.05.i.i.i.us, i64 112 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !1656 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.05.i.i.i.us, i64 120
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !1657 ; 2 uses
  %.not.i.i2.i.i.i.i.i.i.i.us = icmp eq ptr %i.ch, %i.cj
  br i1 %.not.i.i2.i.i.i.i.i.i.i.us, label %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i.i.us, label %.lr.ph.i.i.i.i.i.i.i.us

.lr.ph.i.i.i.i.i.i.i.us:                          ; preds = %.lr.ph.i.i.i21.us, %.lr.ph.i.i.i.i.i.i.i.us
  %.0.i.i3.i.i.i.i.i.i.i.us = phi ptr [ %i.ck, %.lr.ph.i.i.i.i.i.i.i.us ], [ %i.ch, %.lr.ph.i.i.i21.us ] ; 2 uses
  tail call void @_ZSt8_DestroyIN6duckdb11ColumnIndexEEvPT_(ptr noundef %.0.i.i3.i.i.i.i.i.i.i.us), !inline_history !1658
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.i.i3.i.i.i.i.i.i.i.us, i64 104 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.us = icmp eq ptr %i.ck, %i.cj
  br i1 %.not.i.i.i.i.i.i.i.i.i.us, label %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i.i.i.i.i.us, label %.lr.ph.i.i.i.i.i.i.i.us, !llvm.loop !1659

_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i.i.i.i.i.us: ; preds = %.lr.ph.i.i.i.i.i.i.i.us
  %.pre.i.i.i.i.i.i.i.us = load ptr, ptr %i.cg, align 8, !tbaa !1656
  br label %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i.i.us

_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i.i.us: ; preds = %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i.i.i.i.i.us, %.lr.ph.i.i.i21.us
  %i.cl = phi ptr [ %.pre.i.i.i.i.i.i.i.us, %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i.i.i.i.i.us ], [ %i.ch, %.lr.ph.i.i.i21.us ] ; 2 uses
  %.not.i.i1.i.i.i.i.i.i.i.us = icmp eq ptr %i.cl, null
  br i1 %.not.i.i1.i.i.i.i.i.i.i.us, label %_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EED2Ev.exit.i.i.i.i.i.i.us, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i.i.us
  tail call void @_ZdlPv(ptr noundef nonnull %i.cl) #34, !inline_history !1660
  br label %_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EED2Ev.exit.i.i.i.i.i.i.us

_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EED2Ev.exit.i.i.i.i.i.i.us: ; preds = %bb.j, %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i.i.us
  %i.cm = getelementptr inbounds nuw i8, ptr %.05.i.i.i.us, i64 80
  tail call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.cm) #33, !inline_history !1661
  %i.cn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.us, i64 48
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !124 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.us, i64 64
  %i.cq = icmp eq ptr %i.co, %i.cp
  br i1 %i.cq, label %_ZN6duckdb11ColumnIndexD2Ev.exit.i.i.i.i.i.us, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.us

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.us: ; preds = %_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EED2Ev.exit.i.i.i.i.i.i.us
  tail call void @_ZdlPv(ptr noundef %i.co) #34, !inline_history !1661
  br label %_ZN6duckdb11ColumnIndexD2Ev.exit.i.i.i.i.i.us

_ZN6duckdb11ColumnIndexD2Ev.exit.i.i.i.i.i.us:    ; preds = %_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EED2Ev.exit.i.i.i.i.i.i.us, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.us
  %i.cr = getelementptr inbounds nuw i8, ptr %.05.i.i.i.us, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !2291 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.us = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i.i.i.i.i.i.us, label %_ZSt8_DestroyIN6duckdb23ReferencedStructExtractEEvPT_.exit.i.i.i.us, label %bb.k

bb.k:                                             ; preds = %_ZN6duckdb11ColumnIndexD2Ev.exit.i.i.i.i.i.us
  tail call void @_ZdlPv(ptr noundef nonnull %i.cs) #34
  br label %_ZSt8_DestroyIN6duckdb23ReferencedStructExtractEEvPT_.exit.i.i.i.us

_ZSt8_DestroyIN6duckdb23ReferencedStructExtractEEvPT_.exit.i.i.i.us: ; preds = %bb.k, %_ZN6duckdb11ColumnIndexD2Ev.exit.i.i.i.i.i.us
  %i.ct = getelementptr inbounds nuw i8, ptr %.05.i.i.i.us, i64 136 ; 2 uses
  %.not.i.i.i22.us = icmp eq ptr %i.ct, %i.cf
  br i1 %.not.i.i.i22.us, label %_ZSt8_DestroyIPN6duckdb23ReferencedStructExtractES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.us, label %.lr.ph.i.i.i21.us, !llvm.loop !2294

_ZSt8_DestroyIPN6duckdb23ReferencedStructExtractES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.us: ; preds = %_ZSt8_DestroyIN6duckdb23ReferencedStructExtractEEvPT_.exit.i.i.i.us
  %.pr.i.us = load ptr, ptr %i.cc, align 8, !tbaa !2287
  br label %_ZSt8_DestroyIPN6duckdb23ReferencedStructExtractES1_EvT_S3_RSaIT0_E.exit.i.us

_ZSt8_DestroyIPN6duckdb23ReferencedStructExtractES1_EvT_S3_RSaIT0_E.exit.i.us: ; preds = %_ZSt8_DestroyIPN6duckdb23ReferencedStructExtractES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.us, %_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EED2Ev.exit.i.i.i.us
  %i.cu = phi ptr [ %.pr.i.us, %_ZSt8_DestroyIPN6duckdb23ReferencedStructExtractES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.us ], [ %i.cd, %_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EED2Ev.exit.i.i.i.us ] ; 2 uses
  %.not.i.i1.i.us = icmp eq ptr %i.cu, null
  br i1 %.not.i.i1.i.us, label %_ZNSt6vectorIN6duckdb23ReferencedStructExtractESaIS1_EED2Ev.exit.us, label %bb.l

bb.l:                                             ; preds = %_ZSt8_DestroyIPN6duckdb23ReferencedStructExtractES1_EvT_S3_RSaIT0_E.exit.i.us
  tail call void @_ZdlPv(ptr noundef nonnull %i.cu) #34
  br label %_ZNSt6vectorIN6duckdb23ReferencedStructExtractESaIS1_EED2Ev.exit.us

_ZNSt6vectorIN6duckdb23ReferencedStructExtractESaIS1_EED2Ev.exit.us: ; preds = %bb.l, %_ZSt8_DestroyIPN6duckdb23ReferencedStructExtractES1_EvT_S3_RSaIT0_E.exit.i.us
  %i.cv = load ptr, ptr %i.az, align 8, !tbaa !2295 ; 2 uses
  %.not.i.i.i1.i.i.i.us = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i1.i.i.i.us, label %.noexc.i.i16.us, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN6duckdb23ReferencedStructExtractESaIS1_EED2Ev.exit.us
  tail call void @_ZdlPv(ptr noundef nonnull %i.cv) #34
  br label %.noexc.i.i16.us

.noexc.i.i16.us:                                  ; preds = %bb.m, %_ZNSt6vectorIN6duckdb23ReferencedStructExtractESaIS1_EED2Ev.exit.us
  tail call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.us) #34
  %.not.i.i.i17.us = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i17.us, label %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_16ReferencedColumnENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S2_EEE5clearEv.exit.us, label %.lr.ph.i.i.i.us, !llvm.loop !2298

_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_16ReferencedColumnENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S2_EEE5clearEv.exit.us: ; preds = %.noexc.i.i16.us
  %i.cw = load ptr, ptr %i.x, align 8, !tbaa !2222
  %i.cx = load i64, ptr %i.z, align 8, !tbaa !2224
  %i.cy = shl i64 %i.cx, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.cw, i8 0, i64 %i.cy, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  %i.cz = add nuw i64 %.01336.us, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.cz, %i.ad
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.d, !llvm.loop !3543

.preheader.us:                                    ; preds = %.lr.ph37.split.us
  %i.da = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %i.db = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  br label %bb.d

._crit_edge.us:                                   ; preds = %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_16ReferencedColumnENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S2_EEE5clearEv.exit.us
  %i.dc = load ptr, ptr %3, align 8, !tbaa !1156
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.de = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.dd, i64 noundef 0)
          to label %5 unwind label %.split39.us

.split.us:                                        ; preds = %.lr.ph37.split.us
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.split39.us:                                      ; preds = %5, %._crit_edge.us
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.split42.us:                                      ; preds = %bb.e
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.lr.ph37.split:                                   ; preds = %.lr.ph37.split.preheader, %bb.s
  %i.di = phi ptr [ %i.dy, %bb.s ], [ %i.ag, %.lr.ph37.split.preheader ]
  %i.dj = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN6duckdb15LogicalOperator4CastINS_17LogicalProjectionEEERT_v(ptr noundef nonnull align 8 dereferenceable(97) %i.di)
          to label %.preheader unwind label %.split ; 0 uses

.preheader:                                       ; preds = %.lr.ph37.split
  %i.dk = load ptr, ptr %3, align 8, !tbaa !1156
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.dl, i64 noundef 0)
          to label %bb.r unwind label %.split39

.split:                                           ; preds = %.lr.ph37.split
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %.body

.noexc.i:                                         ; preds = %bb.d
  %i.do = tail call ptr @__cxa_allocate_exception(i64 16) #33 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.dp, ptr %4, align 8, !tbaa !387
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i64 55, ptr %i.a, align 8, !tbaa !66
  %i.dq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.dq, ptr %4, align 8, !tbaa !124
  %i.dr = load i64, ptr %i.a, align 8, !tbaa !66  ; 3 uses
  store i64 %i.dr, ptr %i.dp, align 8, !tbaa !241
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.dq, ptr noundef nonnull align 1 dereferenceable(55) @.str.60, i64 55, i1 false)
  %i.ds = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.dr, ptr %i.ds, align 8, !tbaa !388
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.dr
  store i8 0, ptr %i.dt, align 1, !tbaa !241
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.do, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %.noexc
  invoke void @__cxa_throw(ptr nonnull %i.do, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #35
          to label %bb.q unwind label %bb.o

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i: ; preds = %.noexc.i
  %i.du = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %bb.p

bb.o:                                             ; preds = %bb.n, %.noexc
  %.0.i.i.i = phi i1 [ false, %bb.n ], [ true, %.noexc ] ; 2 uses
  %i.dv = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.dw = load ptr, ptr %4, align 8, !tbaa !124   ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %i.dp
  br i1 %i.dx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.o
  call void @_ZdlPv(ptr noundef %i.dw) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br i1 %.0.i.i.i, label %bb.p, label %.body.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br i1 %.0.i.i.i, label %bb.p, label %.body.thread

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i
  %.pn8.i.i.i = phi { ptr, i32 } [ %i.du, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ], [ %i.dv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.dv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.do) #33
  br label %.body.thread

bb.q:                                             ; preds = %bb.n
  unreachable

bb.r:                                             ; preds = %.preheader
  %i.dy = invoke noundef nonnull align 8 dereferenceable(97) ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dm)
          to label %bb.s unwind label %.split39   ; 3 uses

bb.s:                                             ; preds = %bb.r
  %i.dz = ptrtoint ptr %i.dy to i64
  store i64 %i.dz, ptr %3, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.eb = load i8, ptr %i.ea, align 8, !tbaa !15
  %i.ec = icmp eq i8 %i.eb, 1
  br i1 %i.ec, label %.lr.ph37.split, label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit20, !llvm.loop !3542

.split39:                                         ; preds = %bb.r, %.preheader
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.split39, %.split
  %.pn = phi { ptr, i32 } [ %i.ed, %.split39 ], [ %i.dn, %.split ] ; 2 uses
  %.not.i.i.i18 = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i18, label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit, label %.body.thread

.body.thread:                                     ; preds = %.split39.us, %.split.us, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %bb.p, %.split42.us, %.body
  %i.ee = phi ptr [ %i.af, %.body ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.k, %bb.p ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.k, %.split42.us ], [ %i.k, %.split.us ], [ %i.k, %.split39.us ]
  %.pn34 = phi { ptr, i32 } [ %.pn, %.body ], [ %i.dv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %.pn8.i.i.i, %bb.p ], [ %i.dv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.dh, %.split42.us ], [ %i.df, %.split.us ], [ %i.dg, %.split39.us ]
  call void @_ZdlPv(ptr noundef nonnull %i.ee) #34
  br label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit: ; preds = %.body, %.body.thread
  %.pn35 = phi { ptr, i32 } [ %.pn, %.body ], [ %.pn34, %.body.thread ]
  resume { ptr, i32 } %.pn35

_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit20: ; preds = %7, %bb.s, %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EEC2ERKS3_.exit.thread, %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EEC2ERKS3_.exit
  %.0.lcssa.i.i.i.i.i77 = phi ptr [ null, %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EEC2ERKS3_.exit.thread ], [ %.0.lcssa.i.i.i.i.i7680, %bb.s ], [ %i.m, %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EEC2ERKS3_.exit ], [ %i.m, %7 ]
  %i.ef = phi ptr [ null, %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EEC2ERKS3_.exit.thread ], [ %i.af, %bb.s ], [ %i.k, %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EEC2ERKS3_.exit ], [ %i.k, %7 ]
  %i.eg = phi ptr [ %i.s, %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EEC2ERKS3_.exit.thread ], [ %i.ae, %bb.s ], [ %i.n, %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EEC2ERKS3_.exit ], [ %i.n, %7 ]
  store ptr %i.ef, ptr %0, align 8, !tbaa !12
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.lcssa.i.i.i.i.i77, ptr %i.eh, align 8, !tbaa !63
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.eg, ptr %i.ei, align 8, !tbaa !64
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb21TopNWindowElimination24GenerateAggregatePayloadERKNS_6vectorINS_13ColumnBindingELb1ESaIS2_EEERKNS_13LogicalWindowERSt3mapImmSt4lessImESaISt4pairIKmmEEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::vector.74") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(112) %3, ptr noundef nonnull align 8 dereferenceable(48) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.duckdb::vector.74", align 16 ; 22 uses
  %6 = alloca %"class.duckdb::vector", align 8    ; 9 uses
  %7 = alloca %"class.std::unordered_map.715", align 8 ; 15 uses
  %i.a = alloca i64, align 8                      ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.duckdb::unique_ptr.321", align 8 ; 8 uses
  %10 = alloca %"class.duckdb::unique_ptr.321", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !63   ; 2 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !12     ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr exact i64 %i.g, 4                   ; 2 uses
  %i.i = icmp ugt i64 %i.h, 1152921504606846975
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.68) #35
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  %.not249 = icmp eq ptr %i.c, %i.d
  br i1 %.not249, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.k = ashr exact i64 %i.g, 1
  %i.l = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #36
          to label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i unwind label %bb.o ; 3 uses

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i: ; preds = %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.l, ptr %5, align 16, !tbaa !325
  store ptr %i.l, ptr %i.m, align 8, !tbaa !326
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.h
  store ptr %i.n, ptr %i.j, align 16, !tbaa !327
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 noundef 0)
          to label %bb.d unwind label %bb.o

bb.d:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit
  %i.q = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %bb.e unwind label %bb.o

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6duckdb15LogicalOperator20ResolveOperatorTypesEv(ptr noundef nonnull align 8 dereferenceable(97) %i.q)
          to label %bb.f unwind label %bb.o

bb.f:                                             ; preds = %bb.e
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 noundef 0)
          to label %bb.g unwind label %bb.p

bb.g:                                             ; preds = %bb.f
  %i.s = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.r)
          to label %bb.h unwind label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 noundef 0)
          to label %bb.i unwind label %bb.q

bb.i:                                             ; preds = %bb.h
  %i.v = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.u)
          to label %bb.j unwind label %bb.q       ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !7
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  invoke void %i.y(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::vector") align 8 %6, ptr noundef nonnull align 8 dereferenceable(97) %i.v)
          to label %bb.k unwind label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 noundef 0)
          to label %bb.l unwind label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.ab = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
          to label %bb.m unwind label %bb.r

bb.m:                                             ; preds = %bb.l
  %i.ac = invoke noundef nonnull align 8 dereferenceable(296) ptr @_ZN6duckdb14BaseExpression4CastINS_21BoundWindowExpressionEEERT_v(ptr noundef nonnull align 8 dereferenceable(56) %i.ab)
          to label %bb.n unwind label %bb.r       ; 3 uses

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  store ptr %i.ad, ptr %7, align 8, !tbaa !573
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store i64 1, ptr %i.ae, align 8, !tbaa !575
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ag, align 8, !tbaa !275
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 128 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 136 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !326
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !325
  %.not175 = icmp eq ptr %i.ak, %i.al
  br i1 %.not175, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.n
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.s

._crit_edge:                                      ; preds = %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_16ReferencedColumnENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S2_EEE5clearEv.exit, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i64 0, ptr %i.a, align 8, !tbaa !66
  %i.ap = load ptr, ptr %i.b, align 8, !tbaa !63
  %i.aq = load ptr, ptr %2, align 8, !tbaa !12
  %.not176 = icmp eq ptr %i.ap, %i.aq
  br i1 %.not176, label %._crit_edge174, label %.lr.ph173

.lr.ph173:                                        ; preds = %._crit_edge
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 8 uses
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  br label %bb.ae

bb.o:                                             ; preds = %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i, %bb.b, %bb.e, %bb.d, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.p:                                             ; preds = %bb.g, %bb.f
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.q:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit127

bb.r:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.s:                                             ; preds = %.lr.ph, %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_16ReferencedColumnENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S2_EEE5clearEv.exit
  %.046170 = phi i64 [ 0, %.lr.ph ], [ %i.dj, %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_16ReferencedColumnENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S2_EEE5clearEv.exit ] ; 3 uses
  %i.ba = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 noundef %.046170)
          to label %bb.t unwind label %bb.ac

bb.t:                                             ; preds = %bb.s
  %i.bb = load ptr, ptr %1, align 8, !tbaa !7
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8
  invoke void %i.bd(ptr noundef nonnull align 8 dereferenceable(65) %1, ptr noundef nonnull %i.ba)
          to label %bb.u unwind label %bb.ac

bb.u:                                             ; preds = %bb.t
  %i.be = load ptr, ptr %i.an, align 8, !tbaa !2281
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseIN6duckdb13ColumnBindingESt4pairIKS2_mESaIS5_ENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS4_(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(16) %i.bf)
          to label %_ZNSt13unordered_mapIN6duckdb13ColumnBindingEmNS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_mEEEixERS5_.exit unwind label %bb.ad

_ZNSt13unordered_mapIN6duckdb13ColumnBindingEmNS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_mEEEixERS5_.exit: ; preds = %bb.u
  store i64 %.046170, ptr %i.bg, align 8, !tbaa !66
  %i.bh = load ptr, ptr %i.an, align 8, !tbaa !2281 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.bh, null
end_hunk_1
