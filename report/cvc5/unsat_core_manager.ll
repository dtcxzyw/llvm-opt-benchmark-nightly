Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/unsat_core_manager?download=true
inline.NumInlined: 1657
inline.NumDeleted: 767
begin_hunk_0_@_ZN4cvc58internal3smt16UnsatCoreManager27getRelevantQuantTermVectorsERSt3mapINS0_12NodeTemplateILb1EEENS0_17InstantiationListESt4lessIS5_ESaISt4pairIKS5_S6_EEERS3_IS5_St6vectorIS5_SaIS5_EES8_SaIS9_ISA_SH_EEEb:bb.a
  %i.bc = phi ptr [ %i.af, %_ZNSt6vectorISt10shared_ptrIN4cvc58internal9ProofNodeEESaIS4_EE9push_backERKS4_.exit ], [ %.pre433, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i ] ; 8 uses
  %i.bd = phi ptr [ %i.ab, %_ZNSt6vectorISt10shared_ptrIN4cvc58internal9ProofNodeEESaIS4_EE9push_backERKS4_.exit ], [ %.pre432, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i ]
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -16
  store ptr %i.be, ptr %i.j, align 8, !tbaa !130
  %.not.i.i.i87 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i87, label %_ZNSt6vectorISt10shared_ptrIN4cvc58internal9ProofNodeEESaIS4_EE8pop_backEv.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt10shared_ptrIN4cvc58internal9ProofNodeEEaSERKS3_.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 4 uses
  %i.bg = load atomic i64, ptr %i.bf acquire, align 8 ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 4294967297
  %i.bi = trunc i64 %i.bg to i32                  ; 2 uses
  br i1 %i.bh, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.bf, align 8, !tbaa !58
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  store i32 0, ptr %i.bj, align 4, !tbaa !59
  %i.bk = load ptr, ptr %i.bc, align 8, !tbaa !20
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(16) %i.bc) #20, !inline_history !389
  %i.bn = load ptr, ptr %i.bc, align 8, !tbaa !20
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8
  call void %i.bp(ptr noundef nonnull align 8 dereferenceable(16) %i.bc) #20, !inline_history !389
  br label %_ZNSt6vectorISt10shared_ptrIN4cvc58internal9ProofNodeEESaIS4_EE8pop_backEv.exit

bb.o:                                             ; preds = %bb.m
  %i.bq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !47
  %.not.i.i.i.i88 = icmp eq i8 %i.bq, 0
  br i1 %.not.i.i.i.i88, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.br = add nsw i32 %i.bi, -1
  store i32 %i.br, ptr %i.bf, align 8, !tbaa !56
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i89

bb.q:                                             ; preds = %bb.o
  %i.bs = atomicrmw volatile add ptr %i.bf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i89

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i89: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i90 = phi i32 [ %i.bi, %bb.p ], [ %i.bs, %bb.q ]
  %i.bt = icmp eq i32 %.0.i.i.i.i.i90, 1
  br i1 %i.bt, label %bb.r, label %_ZNSt6vectorISt10shared_ptrIN4cvc58internal9ProofNodeEESaIS4_EE8pop_backEv.exit, !prof !37

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i89
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bc) #20
  br label %_ZNSt6vectorISt10shared_ptrIN4cvc58internal9ProofNodeEESaIS4_EE8pop_backEv.exit

_ZNSt6vectorISt10shared_ptrIN4cvc58internal9ProofNodeEESaIS4_EE8pop_backEv.exit: ; preds = %_ZNSt10shared_ptrIN4cvc58internal9ProofNodeEEaSERKS3_.exit, %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i89, %bb.r
  %i.bu = load ptr, ptr %11, align 8, !tbaa !112  ; 13 uses
  %i.bv = load i64, ptr %i.m, align 8, !tbaa !131
  %.not.not.i.i = icmp eq i64 %i.bv, 0
  br i1 %.not.not.i.i, label %.preheader, label %bb.t

.preheader:                                       ; preds = %_ZNSt6vectorISt10shared_ptrIN4cvc58internal9ProofNodeEESaIS4_EE8pop_backEv.exit, %bb.s
  %.sroa.06.0.in.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.s ], [ %i.g, %_ZNSt6vectorISt10shared_ptrIN4cvc58internal9ProofNodeEESaIS4_EE8pop_backEv.exit ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !103 ; 3 uses
  %.not.i.i = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %.not.i.i, label %.loopexit335.loopexit, label %bb.s

bb.s:                                             ; preds = %.preheader
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !132
  %i.by = icmp eq ptr %i.bu, %i.bx
  br i1 %i.by, label %_ZNSt13unordered_mapIPN4cvc58internal9ProofNodeEbSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_bEEE4findERS9_.exit, label %.preheader, !llvm.loop !390

bb.t:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN4cvc58internal9ProofNodeEESaIS4_EE8pop_backEv.exit
  %i.bz = ptrtoint ptr %i.bu to i64               ; 4 uses
  %i.ca = load i64, ptr %i.f, align 8, !tbaa !129 ; 5 uses
  %i.cb = urem i64 %i.bz, %i.ca                   ; 5 uses
  %i.cc = load ptr, ptr %9, align 8, !tbaa !128   ; 4 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.cb
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !107 ; 2 uses
  %.not.i.i.i.i91 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i91, label %.loopexit335, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !103 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !132
  %i.ci = icmp eq ptr %i.bu, %i.ch
  br i1 %i.ci, label %_ZNSt13unordered_mapIPN4cvc58internal9ProofNodeEbSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_bEEE4findERS9_.exit, label %.lr.ph.i.i.i.i

bb.v:                                             ; preds = %bb.w
  %i.cj = icmp eq ptr %i.bu, %i.cm
  br i1 %i.cj, label %_ZNSt13unordered_mapIPN4cvc58internal9ProofNodeEbSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_bEEE4findERS9_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !391

.lr.ph.i.i.i.i:                                   ; preds = %bb.u, %bb.v
  %.020.i.i.i.i = phi ptr [ %i.ck, %bb.v ], [ %i.cf, %bb.u ]
  %i.ck = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !103 ; 3 uses
  %.not18.i.i.i.i = icmp eq ptr %i.ck, null
  br i1 %.not18.i.i.i.i, label %.loopexit335, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !132 ; 2 uses
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = urem i64 %i.cn, %i.ca
  %.not19.i.i.i.i = icmp eq i64 %i.co, %i.cb
  br i1 %.not19.i.i.i.i, label %bb.v, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !391

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.w
  br label %.loopexit335, !llvm.loop !391

bb.x:                                             ; preds = %bb.a
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.gj

.loopexit335.loopexit:                            ; preds = %.preheader
  %.pre434 = load i64, ptr %i.f, align 8, !tbaa !129 ; 2 uses
  %.pre435 = load ptr, ptr %9, align 8, !tbaa !128
  %.pre438 = ptrtoint ptr %i.bu to i64            ; 2 uses
  %.pre439 = urem i64 %.pre438, %.pre434
  br label %.loopexit335

.loopexit335:                                     ; preds = %.lr.ph.i.i.i.i, %.loopexit335.loopexit, %..loopexit_crit_edge21.i.i.i.i, %bb.t
  %.pre-phi440 = phi i64 [ %i.cb, %bb.t ], [ %.pre439, %.loopexit335.loopexit ], [ %i.cb, %..loopexit_crit_edge21.i.i.i.i ], [ %i.cb, %.lr.ph.i.i.i.i ] ; 3 uses
  %.pre-phi = phi i64 [ %i.bz, %bb.t ], [ %.pre438, %.loopexit335.loopexit ], [ %i.bz, %..loopexit_crit_edge21.i.i.i.i ], [ %i.bz, %.lr.ph.i.i.i.i ]
  %i.cq = phi ptr [ %i.cc, %bb.t ], [ %.pre435, %.loopexit335.loopexit ], [ %i.cc, %..loopexit_crit_edge21.i.i.i.i ], [ %i.cc, %.lr.ph.i.i.i.i ]
  %i.cr = phi i64 [ %i.ca, %bb.t ], [ %.pre434, %.loopexit335.loopexit ], [ %i.ca, %..loopexit_crit_edge21.i.i.i.i ], [ %i.ca, %.lr.ph.i.i.i.i ]
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %.pre-phi440
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !107 ; 2 uses
  %.not.i.i.i.i92 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i.i92, label %.loopexit.i.i, label %bb.y

bb.y:                                             ; preds = %.loopexit335
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !103 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !132
  %i.cx = icmp eq ptr %i.bu, %i.cw
  br i1 %i.cx, label %.loopexit334, label %.lr.ph.i.i.i.i93

bb.z:                                             ; preds = %bb.aa
  %i.cy = icmp eq ptr %i.bu, %i.db
  br i1 %i.cy, label %.loopexit334, label %.lr.ph.i.i.i.i93, !llvm.loop !391

.lr.ph.i.i.i.i93:                                 ; preds = %bb.y, %bb.z
  %.020.i.i.i.i94 = phi ptr [ %i.cz, %bb.z ], [ %i.cu, %bb.y ]
  %i.cz = load ptr, ptr %.020.i.i.i.i94, align 8, !tbaa !103 ; 4 uses
  %.not18.i.i.i.i95 = icmp eq ptr %i.cz, null
  br i1 %.not18.i.i.i.i95, label %.loopexit.i.i, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i93
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !132 ; 2 uses
  %i.dc = ptrtoint ptr %i.db to i64
  %i.dd = urem i64 %i.dc, %i.cr
  %.not19.i.i.i.i96 = icmp eq i64 %i.dd, %.pre-phi440
  br i1 %.not19.i.i.i.i96, label %bb.z, label %..loopexit_crit_edge21.i.i.i.i97, !llvm.loop !391

..loopexit_crit_edge21.i.i.i.i97:                 ; preds = %bb.aa
  br label %.loopexit.i.i, !llvm.loop !391

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i93, %..loopexit_crit_edge21.i.i.i.i97, %.loopexit335
  %i.de = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24
          to label %.noexc98 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc98:                                         ; preds = %.loopexit.i.i
  store ptr null, ptr %i.de, align 8, !tbaa !103
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store ptr %i.bu, ptr %i.df, align 8, !tbaa !403
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  store i8 0, ptr %i.dg, align 8, !tbaa !404
  %i.dh = invoke ptr @_ZNSt10_HashtableIPN4cvc58internal9ProofNodeESt4pairIKS3_bESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS8_10_Hash_nodeIS6_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %9, i64 noundef %.pre-phi440, i64 noundef %.pre-phi, ptr noundef nonnull %i.de, i64 noundef 1)
          to label %.loopexit334 unwind label %_ZNSt10_HashtableIPN4cvc58internal9ProofNodeESt4pairIKS3_bESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i

_ZNSt10_HashtableIPN4cvc58internal9ProofNodeESt4pairIKS3_bESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i: ; preds = %.noexc98
  %i.di = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.de, i64 noundef 24) #22
  br label %.body

.loopexit334:                                     ; preds = %bb.z, %.noexc98, %bb.y
  %.pn.i.i = phi ptr [ %i.dh, %.noexc98 ], [ %i.cu, %bb.y ], [ %i.cz, %bb.z ]
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  store i8 1, ptr %.1.i.i, align 1, !tbaa !50
  %i.dj = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK4cvc58internal9ProofNode11getChildrenEv(ptr noundef nonnull align 8 dereferenceable(65) %i.bu)
          to label %bb.ab unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.ab:                                            ; preds = %.loopexit334
  %i.dk = invoke noundef i32 @_ZNK4cvc58internal9ProofNode7getRuleEv(ptr noundef nonnull align 8 dereferenceable(65) %i.bu)
          to label %bb.ac unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ac:                                            ; preds = %bb.ab
  switch i32 %i.dk, label %bb.fd [
    i32 95, label %bb.ad
    i32 94, label %bb.dk
  ]

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  %i.dl = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK4cvc58internal9ProofNode12getArgumentsEv(ptr noundef nonnull align 8 dereferenceable(65) %i.bu)
          to label %bb.ae unwind label %bb.az

bb.ae:                                            ; preds = %bb.ad
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !32
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !36 ; 11 uses
  store ptr %i.dn, ptr %12, align 8, !tbaa !36
  %i.do = load i64, ptr %i.dn, align 8            ; 3 uses
  %i.dp = lshr i64 %i.do, 40
  %i.dq = trunc nuw nsw i64 %i.dp to i32
  %i.dr = and i32 %i.dq, 1048575                  ; 3 uses
  %i.ds = icmp samesign ult i32 %i.dr, 1048574
  br i1 %i.ds, label %bb.af, label %bb.ag, !prof !51

bb.af:                                            ; preds = %bb.ae
  %i.dt = add nuw nsw i32 %i.dr, 1
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = shl nuw nsw i64 %i.du, 40
  %i.dw = and i64 %i.do, -1152920405095219201
  %i.dx = or i64 %i.dv, %i.dw
  store i64 %i.dx, ptr %i.dn, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

bb.ag:                                            ; preds = %bb.ae
  %i.dy = icmp eq i32 %i.dr, 1048574
  br i1 %i.dy, label %bb.ah, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit, !prof !37

bb.ah:                                            ; preds = %bb.ag
  %i.dz = or i64 %i.do, 1152920405095219200
  store i64 %i.dz, ptr %i.dn, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dn)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit unwind label %bb.az

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit: ; preds = %bb.ag, %bb.af, %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  %i.ea = load ptr, ptr %i.dj, align 8, !tbaa !115
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !112
  invoke void @_ZNK4cvc58internal9ProofNode9getResultEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %13, ptr noundef nonnull align 8 dereferenceable(65) %i.eb)
          to label %bb.ai unwind label %bb.ba

bb.ai:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dn, i64 8 ; 2 uses
  %i.ed = load i64, ptr %i.ec, align 8
  %i.ee = trunc i64 %i.ed to i32
  %i.ef = and i32 %i.ee, 1023                     ; 2 uses
  %i.eg = icmp eq i32 %i.ef, 1023
  %i.eh = select i1 %i.eg, i32 -1, i32 %i.ef
  %i.ei = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.eh)
          to label %bb.aj unwind label %bb.bb

bb.aj:                                            ; preds = %bb.ai
  %i.ej = icmp eq i32 %i.ei, 2
  %spec.select.v.i.i = select i1 %i.ej, i64 32, i64 24 ; 3 uses
  %spec.select.i.i.a = getelementptr inbounds nuw i8, ptr %i.dn, i64 %spec.select.v.i.i
  %23 = load i64, ptr %i.ec, align 8
  %24 = lshr i64 %23, 29
  %.idx = and i64 %24, 536870904
  %25 = add nuw nsw i64 %.idx, 24                 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dn, i64 %25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %gepdiff = sub nsw i64 %25, %spec.select.v.i.i  ; 3 uses
  %i.el = icmp ugt i64 %gepdiff, 9223372036854775800
  br i1 %i.el, label %bb.ak, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #23
          to label %.noexc.i unwind label %.loopexit.split-lp343.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i:                                         ; preds = %bb.ak
  unreachable

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i: ; preds = %bb.aj
  %.not.i.i.i101 = icmp samesign eq i64 %25, %spec.select.v.i.i
  br i1 %.not.i.i.i101, label %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i, label %_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i

_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i
  %i.em = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %gepdiff) #24
          to label %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i unwind label %.loopexit.split-lp343.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i
  %i.en = phi ptr [ null, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i ], [ %i.em, %_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i ] ; 3 uses
  store ptr %i.en, ptr %14, align 8, !tbaa !32
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 %gepdiff
  store ptr %i.eo, ptr %i.r, align 8, !tbaa !39
  %i.ep = invoke noundef ptr @_ZSt16__do_uninit_copyIN4cvc58internal4expr9NodeValue8iteratorINS1_12NodeTemplateILb1EEEEEPS6_ET0_T_SA_S9_(ptr nonnull %spec.select.i.i.a, ptr nonnull %i.ek, ptr noundef %i.en)
          to label %bb.am unwind label %.loopexit.split-lp343.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp343.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i, %_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i, %bb.ak
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eq = load ptr, ptr %14, align 8, !tbaa !32   ; 3 uses
  %.not.i.i7.i = icmp eq ptr %i.eq, null
  br i1 %.not.i.i7.i, label %.body102, label %bb.al

bb.al:                                            ; preds = %.loopexit.split-lp343.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.er = load ptr, ptr %i.r, align 8, !tbaa !39
  %i.es = ptrtoint ptr %i.er to i64
  %i.et = ptrtoint ptr %i.eq to i64
  %i.eu = sub i64 %i.es, %i.et
  call void @_ZdlPvm(ptr noundef nonnull %i.eq, i64 noundef %i.eu) #22
  br label %.body102

bb.am:                                            ; preds = %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i
  store ptr %i.ep, ptr %i.s, align 8, !tbaa !33
  %i.ev = load ptr, ptr %i.t, align 8, !tbaa !120 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.ev, null
  br i1 %.not10.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.am
  %i.ew = load ptr, ptr %13, align 8, !tbaa !36   ; 2 uses
  %i.ex = load i64, ptr %i.ew, align 8
  %i.ey = and i64 %i.ex, 1099511627775            ; 4 uses
  br label %bb.an

bb.an:                                            ; preds = %bb.an, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ev, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.an ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i ], [ %.19.i.i.i, %bb.an ]
  %i.ez = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !36
  %i.fb = load i64, ptr %i.fa, align 8
  %i.fc = and i64 %i.fb, 1099511627775
  %i.fd = icmp samesign ult i64 %i.fc, %i.ey      ; 2 uses
  %.19.i.i.i = select i1 %i.fd, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.fd, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !133 ; 2 uses
  %.not.i.i.i104 = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i104, label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_17InstantiationListEESt10_Select1stIS7_ESt4lessIS3_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS5_.exit.i.i, label %bb.an, !llvm.loop !392

_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_17InstantiationListEESt10_Select1stIS7_ESt4lessIS3_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS5_.exit.i.i: ; preds = %bb.an
  %i.fe = icmp eq ptr %.19.i.i.i, %i.u
  br i1 %i.fe, label %.lr.ph.i.i.i.i106.preheader, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_17InstantiationListESt4lessIS3_ESaISt4pairIKS3_S4_EEE4findERS8_.exit

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_17InstantiationListESt4lessIS3_ESaISt4pairIKS3_S4_EEE4findERS8_.exit: ; preds = %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_17InstantiationListEESt10_Select1stIS7_ESt4lessIS3_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS5_.exit.i.i
  %i.ff = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !36
  %i.fh = load i64, ptr %i.fg, align 8
  %i.fi = and i64 %i.fh, 1099511627775
  %i.fj = icmp samesign ult i64 %i.ey, %i.fi
  br i1 %i.fj, label %.lr.ph.i.i.i.i106.preheader, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_17InstantiationListESt4lessIS3_ESaISt4pairIKS3_S4_EEE4findERS8_.exit124

.lr.ph.i.i.i.i106.preheader:                      ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_17InstantiationListESt4lessIS3_ESaISt4pairIKS3_S4_EEE4findERS8_.exit, %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_17InstantiationListEESt10_Select1stIS7_ESt4lessIS3_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS5_.exit.i.i
  br label %.lr.ph.i.i.i.i106

.lr.ph.i.i.i.i106:                                ; preds = %.lr.ph.i.i.i.i106.preheader, %.lr.ph.i.i.i.i106
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i106 ], [ %i.ev, %.lr.ph.i.i.i.i106.preheader ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i106 ], [ %i.u, %.lr.ph.i.i.i.i106.preheader ]
  %i.fk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !36
  %i.fm = load i64, ptr %i.fl, align 8
  %i.fn = and i64 %i.fm, 1099511627775
  %i.fo = icmp samesign ult i64 %i.fn, %i.ey      ; 2 uses
  %.19.i.i.i.i = select i1 %i.fo, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i = select i1 %i.fo, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !133 ; 2 uses
  %.not.i.i.i.i107 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i107, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_17InstantiationListESt4lessIS3_ESaISt4pairIKS3_S4_EEE11lower_boundERS8_.exit.i, label %.lr.ph.i.i.i.i106, !llvm.loop !392

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_17InstantiationListESt4lessIS3_ESaISt4pairIKS3_S4_EEE11lower_boundERS8_.exit.i: ; preds = %.lr.ph.i.i.i.i106
  %i.fp = icmp eq ptr %.19.i.i.i.i, %i.u
  br i1 %i.fp, label %.critedge.i, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_17InstantiationListESt4lessIS3_ESaISt4pairIKS3_S4_EEE11lower_boundERS8_.exit.i
  %i.fq = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !36
  %i.fs = load i64, ptr %i.fr, align 8
  %i.ft = and i64 %i.fs, 1099511627775
  %i.fu = icmp samesign ult i64 %i.ey, %i.ft
  br i1 %i.fu, label %.critedge.i, label %bb.ap

.critedge.i:                                      ; preds = %bb.am, %bb.ao, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_17InstantiationListESt4lessIS3_ESaISt4pairIKS3_S4_EEE11lower_boundERS8_.exit.i
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.ao ], [ %.19.i.i.i.i, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_17InstantiationListESt4lessIS3_ESaISt4pairIKS3_S4_EEE11lower_boundERS8_.exit.i ], [ %i.u, %bb.am ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store ptr %13, ptr %6, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.fv = invoke ptr @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_17InstantiationListEESt10_Select1stIS7_ESt4lessIS3_ESaIS7_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS5_EESI_IJEEEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %.noexc108 unwind label %bb.ci

.noexc108:                                        ; preds = %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %.pre436 = load ptr, ptr %13, align 8, !tbaa !36
  br label %bb.ap

bb.ap:                                            ; preds = %.noexc108, %bb.ao
  %i.fw = phi ptr [ %.pre436, %.noexc108 ], [ %i.ew, %bb.ao ] ; 5 uses
  %.sroa.06.0.i = phi ptr [ %i.fv, %.noexc108 ], [ %.19.i.i.i.i, %bb.ao ]
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40
  store ptr %i.fw, ptr %15, align 8, !tbaa !36
  %i.fy = load i64, ptr %i.fw, align 8            ; 3 uses
  %i.fz = lshr i64 %i.fy, 40
  %i.ga = trunc nuw nsw i64 %i.fz to i32
  %i.gb = and i32 %i.ga, 1048575                  ; 3 uses
  %i.gc = icmp samesign ult i32 %i.gb, 1048574
  br i1 %i.gc, label %bb.aq, label %bb.ar, !prof !51

bb.aq:                                            ; preds = %bb.ap
  %i.gd = add nuw nsw i32 %i.gb, 1
  %i.ge = zext nneg i32 %i.gd to i64
  %i.gf = shl nuw nsw i64 %i.ge, 40
  %i.gg = and i64 %i.fy, -1152920405095219201
  %i.gh = or i64 %i.gf, %i.gg
  store i64 %i.gh, ptr %i.fw, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit110

bb.ar:                                            ; preds = %bb.ap
  %i.gi = icmp eq i32 %i.gb, 1048574
  br i1 %i.gi, label %bb.as, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit110, !prof !37

bb.as:                                            ; preds = %bb.ar
  %i.gj = or i64 %i.fy, 1152920405095219200
  store i64 %i.gj, ptr %i.fw, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fw)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit110 unwind label %bb.ci

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit110: ; preds = %bb.ar, %bb.aq, %bb.as
  invoke void @_ZN4cvc58internal17InstantiationList10initializeENS0_12NodeTemplateILb1EEE(ptr noundef nonnull align 8 dereferenceable(32) %i.fx, ptr noundef nonnull align 8 %15)
          to label %bb.at unwind label %bb.bc

bb.at:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit110
  %i.gk = load ptr, ptr %15, align 8, !tbaa !36   ; 3 uses
  %i.gl = load i64, ptr %i.gk, align 8            ; 3 uses
  %i.gm = and i64 %i.gl, 1152920405095219200
  %.not.i.i111 = icmp eq i64 %i.gm, 1152920405095219200
  br i1 %.not.i.i111, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.au, !prof !37

bb.au:                                            ; preds = %bb.at
  %i.gn = add i64 %i.gl, 1152920405095219200
  %i.go = and i64 %i.gn, 1152920405095219200      ; 2 uses
  %i.gp = and i64 %i.gl, -1152920405095219201
  %i.gq = or disjoint i64 %i.go, %i.gp
  store i64 %i.gq, ptr %i.gk, align 8
  %i.gr = icmp eq i64 %i.go, 0
  br i1 %i.gr, label %bb.av, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !37

bb.av:                                            ; preds = %bb.au
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.gk)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gs = landingpad { ptr, i32 }
          catch ptr null
  %i.gt = extractvalue { ptr, i32 } %i.gs, 0
  call void @__clang_call_terminate(ptr %i.gt) #21
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %bb.at, %bb.au, %bb.av
  %i.gu = load ptr, ptr %i.t, align 8, !tbaa !120 ; 2 uses
  %.not10.i.i.i112 = icmp eq ptr %i.gu, null
  br i1 %.not10.i.i.i112, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_17InstantiationListESt4lessIS3_ESaISt4pairIKS3_S4_EEE4findERS8_.exit124, label %.lr.ph.i.i.i113

.lr.ph.i.i.i113:                                  ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.gv = load ptr, ptr %13, align 8, !tbaa !36
  %i.gw = load i64, ptr %i.gv, align 8
  %i.gx = and i64 %i.gw, 1099511627775            ; 2 uses
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ax, %.lr.ph.i.i.i113
  %.012.i.i.i114 = phi ptr [ %i.gu, %.lr.ph.i.i.i113 ], [ %.1.i.i.i119, %bb.ax ] ; 3 uses
  %.0811.i.i.i115 = phi ptr [ %i.u, %.lr.ph.i.i.i113 ], [ %.19.i.i.i116, %bb.ax ]
  %i.gy = getelementptr inbounds nuw i8, ptr %.012.i.i.i114, i64 32
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !36
  %i.ha = load i64, ptr %i.gz, align 8
  %i.hb = and i64 %i.ha, 1099511627775
  %i.hc = icmp samesign ult i64 %i.hb, %i.gx      ; 2 uses
  %.19.i.i.i116 = select i1 %i.hc, ptr %.0811.i.i.i115, ptr %.012.i.i.i114 ; 4 uses
  %.1.in.v.i.i.i117 = select i1 %i.hc, i64 24, i64 16
  %.1.in.i.i.i118 = getelementptr inbounds nuw i8, ptr %.012.i.i.i114, i64 %.1.in.v.i.i.i117
  %.1.i.i.i119 = load ptr, ptr %.1.in.i.i.i118, align 8, !tbaa !133 ; 2 uses
  %.not.i.i.i120 = icmp eq ptr %.1.i.i.i119, null
  br i1 %.not.i.i.i120, label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_17InstantiationListEESt10_Select1stIS7_ESt4lessIS3_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS5_.exit.i.i121, label %bb.ax, !llvm.loop !392

_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_17InstantiationListEESt10_Select1stIS7_ESt4lessIS3_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS5_.exit.i.i121: ; preds = %bb.ax
  %i.hd = icmp eq ptr %.19.i.i.i116, %i.u
  br i1 %i.hd, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_17InstantiationListESt4lessIS3_ESaISt4pairIKS3_S4_EEE4findERS8_.exit124, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_17InstantiationListEESt10_Select1stIS7_ESt4lessIS3_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS5_.exit.i.i121
  %i.he = getelementptr inbounds nuw i8, ptr %.19.i.i.i116, i64 32
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !36
  %i.hg = load i64, ptr %i.hf, align 8
  %i.hh = and i64 %i.hg, 1099511627775
  %i.hi = icmp samesign ult i64 %i.gx, %i.hh
  %spec.select.i.i122 = select i1 %i.hi, ptr %i.u, ptr %.19.i.i.i116
  br label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_17InstantiationListESt4lessIS3_ESaISt4pairIKS3_S4_EEE4findERS8_.exit124
end_hunk_0
