Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/type-inference?download=true
inline.NumInlined: 604
inline.NumDeleted: 368
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN2v88internal6torque21TypeArgumentInferenceC2ERKSt6vectorINS1_16GenericParameterESaIS4_EERKS3_IPKNS1_4TypeESaISB_EERKS3_IPNS1_14TypeExpressionESaISH_EERKS3_ISt8optionalISB_ESaISN_EE:bb.a
  %i.g = ashr exact i64 %i.f, 3
  store i64 %i.g, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = load ptr, ptr %1, align 8
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = sdiv exact i64 %i.n, 24
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store ptr %i.p, ptr %i.h, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store i64 1, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  %i.u = invoke noundef i64 @_ZNKSt8__detail20_Prime_rehash_policy11_M_next_bktEm(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 noundef %i.o)
          to label %bb.b unwind label %bb.i       ; 6 uses

bb.b:                                             ; preds = %bb.a
  %i.v = load i64, ptr %i.q, align 8
  %i.w = icmp ugt i64 %i.u, %i.v
  br i1 %i.w, label %bb.c, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_mEEEC2EmRKS7_RKS9_RKSD_.exit

bb.c:                                             ; preds = %bb.b
  %i.x = icmp eq i64 %i.u, 1
  br i1 %i.x, label %bb.d, label %bb.e, !prof !21

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %i.p, align 8
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.y = icmp ugt i64 %i.u, 1152921504606846975
  br i1 %i.y, label %bb.f, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEE19_M_allocate_bucketsEm.exit.i.i.i, !prof !21

bb.f:                                             ; preds = %bb.e
  %i.z = icmp ugt i64 %i.u, 2305843009213693951
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #19
          to label %.noexc.i.i unwind label %bb.i

.noexc.i.i:                                       ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  invoke void @_ZSt17__throw_bad_allocv() #19
          to label %.noexc9.i.i unwind label %bb.i

.noexc9.i.i:                                      ; preds = %bb.h
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEE19_M_allocate_bucketsEm.exit.i.i.i: ; preds = %bb.e
  %i.aa = shl nuw nsw i64 %i.u, 3                 ; 2 uses
  %i.ab = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #20
          to label %.noexc10.i.i unwind label %bb.i ; 2 uses

.noexc10.i.i:                                     ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEE19_M_allocate_bucketsEm.exit.i.i.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ab, i8 0, i64 %i.aa, i1 false)
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i: ; preds = %.noexc10.i.i, %bb.d
  %.0.i.i.i = phi ptr [ %i.p, %bb.d ], [ %i.ab, %.noexc10.i.i ]
  store ptr %.0.i.i.i, ptr %i.h, align 8
  store i64 %i.u, ptr %i.q, align 8
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_mEEEC2EmRKS7_RKS9_RKSD_.exit

bb.i:                                             ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEE19_M_allocate_bucketsEm.exit.i.i.i, %bb.h, %bb.g, %bb.a
  %i.ac = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.h) #21
  br label %.body

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_mEEEC2EmRKS7_RKS9_RKSD_.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i, %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.ae = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.af = load ptr, ptr %1, align 8               ; 2 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = sdiv exact i64 %i.ai, 24                ; 7 uses
  %i.ak = icmp ugt i64 %i.aj, 576460752303423487
  br i1 %i.ak, label %bb.j, label %_ZNSt6vectorISt8optionalIPKN2v88internal6torque4TypeEESaIS7_EE17_S_check_init_lenEmRKS8_.exit.i

bb.j:                                             ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_mEEEC2EmRKS7_RKS9_RKSD_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #19
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.j
  unreachable

_ZNSt6vectorISt8optionalIPKN2v88internal6torque4TypeEESaIS7_EE17_S_check_init_lenEmRKS8_.exit.i: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_mEEEC2EmRKS7_RKS9_RKSD_.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.ae, %i.af
  br i1 %.not.i.i.i.i, label %.loopexit103, label %_ZNSt12_Vector_baseISt8optionalIPKN2v88internal6torque4TypeEESaIS7_EEC2EmRKS8_.exit.i

_ZNSt12_Vector_baseISt8optionalIPKN2v88internal6torque4TypeEESaIS7_EEC2EmRKS8_.exit.i: ; preds = %_ZNSt6vectorISt8optionalIPKN2v88internal6torque4TypeEESaIS7_EE17_S_check_init_lenEmRKS8_.exit.i
  %i.al = shl nuw nsw i64 %i.aj, 4
  %i.am = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #20
          to label %.noexc52 unwind label %bb.m   ; 4 uses

.noexc52:                                         ; preds = %_ZNSt12_Vector_baseISt8optionalIPKN2v88internal6torque4TypeEESaIS7_EEC2EmRKS8_.exit.i
  store ptr %i.am, ptr %i.ad, align 8
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %i.aj
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.an, ptr %i.ao, align 8
  %xtraiter = and i64 %i.aj, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.noexc52, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i.prol ], [ %i.am, %.noexc52 ] ; 2 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.aq, %.lr.ph.i.i.i.i.i.prol ], [ %i.aj, %.noexc52 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.noexc52 ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8
  store i8 0, ptr %i.ap, align 8
  %i.aq = add nsw i64 %.057.i.i.i.i.i.prol, -1    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 16 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !25

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.noexc52
  %.lcssa.unr = phi ptr [ poison, %.noexc52 ], [ %i.ar, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.am, %.noexc52 ], [ %i.ar, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.aj, %.noexc52 ], [ %i.aq, %.lr.ph.i.i.i.i.i.prol ]
  %i.as = icmp ult i64 %i.aj, 8
  br i1 %i.as, label %.loopexit103, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.057.i.i.i.i.i = phi i64 [ %i.bb, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.at = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  store i8 0, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 24
  store i8 0, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store i8 0, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 56
  store i8 0, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  store i8 0, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 88
  store i8 0, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104
  store i8 0, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 120
  store i8 0, ptr %i.ba, align 8
  %i.bb = add nsw i64 %.057.i.i.i.i.i, -8         ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.7 = icmp eq i64 %i.bb, 0
  br i1 %.not.i.i.i.i.i.7, label %.loopexit103, label %.lr.ph.i.i.i.i.i, !llvm.loop !26

.loopexit103:                                     ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNSt6vectorISt8optionalIPKN2v88internal6torque4TypeEESaIS7_EE17_S_check_init_lenEmRKS8_.exit.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorISt8optionalIPKN2v88internal6torque4TypeEESaIS7_EE17_S_check_init_lenEmRKS8_.exit.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.bc, %.lr.ph.i.i.i.i.i ]
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  store i8 0, ptr %i.bf, align 8
  %i.bg = load i64, ptr %0, align 8               ; 2 uses
  %i.bh = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.bi = load ptr, ptr %1, align 8               ; 3 uses
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = sdiv exact i64 %i.bl, 24
  %i.bn = icmp ugt i64 %i.bg, %i.bm
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, label %bb.o

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %.loopexit103
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.bo, ptr %5, align 8
  %i.bp = invoke noalias noundef nonnull dereferenceable(43) ptr @_Znwm(i64 noundef 43) #20
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  store ptr %i.bp, ptr %5, align 8
  store i64 42, ptr %i.bo, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(42) %i.bp, ptr noundef nonnull align 1 dereferenceable(42) @.str, i64 42, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 42, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 42
  store i8 0, ptr %i.br, align 1
  invoke void @_ZN2v88internal6torque21TypeArgumentInference4FailENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 %5)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bs = load ptr, ptr %5, align 8               ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.bo
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.bu = load i64, ptr %i.bo, align 8
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85.a

bb.m:                                             ; preds = %_ZNSt12_Vector_baseISt8optionalIPKN2v88internal6torque4TypeEESaIS7_EEC2EmRKS8_.exit.i, %bb.j
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt8optionalIPKN2v88internal6torque4TypeEESaIS7_EED2Ev.exit

bb.n:                                             ; preds = %bb.k
  %i.bw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bx = load ptr, ptr %5, align 8               ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.bo
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %bb.n
  %i.bz = load i64, ptr %i.bo, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.sink.split

bb.o:                                             ; preds = %.loopexit103
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = load ptr, ptr %4, align 8
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = ashr exact i64 %i.cf, 4
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = load ptr, ptr %3, align 8
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = ashr exact i64 %i.cm, 3
  %i.co = icmp ugt i64 %i.cg, %i.cn
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i60, label %.preheader99

.preheader99:                                     ; preds = %bb.o
  %.not = icmp eq ptr %i.bh, %i.bi
  br i1 %.not, label %.preheader98, label %.lr.ph

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i60: ; preds = %bb.o
  %i.cp = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.cp, ptr %6, align 8
  %i.cq = invoke noalias noundef nonnull dereferenceable(29) ptr @_Znwm(i64 noundef 29) #20
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i60
  store ptr %i.cq, ptr %6, align 8
  store i64 28, ptr %i.cp, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.cq, ptr noundef nonnull align 1 dereferenceable(28) @.str.1, i64 28, i1 false)
  %i.cr = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 28, ptr %i.cr, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 28
  store i8 0, ptr %i.cs, align 1
  invoke void @_ZN2v88internal6torque21TypeArgumentInference4FailENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 %6)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ct = load ptr, ptr %6, align 8               ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.cp
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %bb.q
  %i.cv = load i64, ptr %i.cp, align 8
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85.a

bb.r:                                             ; preds = %bb.p
  %i.cw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cx = load ptr, ptr %6, align 8               ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.cp
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70: ; preds = %bb.r
  %i.cz = load i64, ptr %i.cp, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.sink.split

.preheader98.loopexit:                            ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_mEEEixERSB_.exit
  %.pre = load i64, ptr %0, align 8
  br label %.preheader98

.preheader98:                                     ; preds = %.preheader98.loopexit, %.preheader99
  %i.da = phi i64 [ %.pre, %.preheader98.loopexit ], [ %i.bg, %.preheader99 ]
  %.not111 = icmp eq i64 %i.da, 0
  br i1 %.not111, label %.preheader96, label %.lr.ph106

.lr.ph:                                           ; preds = %.preheader99, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_mEEEixERSB_.exit
  %i.db = phi ptr [ %i.di, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_mEEEixERSB_.exit ], [ %i.bi, %.preheader99 ]
  %.036104 = phi i64 [ %i.dg, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_mEEEixERSB_.exit ], [ 0, %.preheader99 ] ; 3 uses
  %i.dc = getelementptr inbounds nuw [24 x i8], ptr %i.db, i64 %.036104
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 40
  %i.df = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mESaIS9_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.de)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_mEEEixERSB_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_mEEEixERSB_.exit: ; preds = %.lr.ph
  store i64 %.036104, ptr %i.df, align 8
  %i.dg = add nuw i64 %.036104, 1                 ; 2 uses
  %i.dh = load ptr, ptr %i.i, align 8
  %i.di = load ptr, ptr %1, align 8               ; 2 uses
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = sdiv exact i64 %i.dl, 24
  %i.dn = icmp ult i64 %i.dg, %i.dm
  br i1 %i.dn, label %.lr.ph, label %.preheader98.loopexit, !llvm.loop !27

.preheader96:                                     ; preds = %.lr.ph106, %.preheader98
  %i.do = load ptr, ptr %i.ca, align 8
  %i.dp = load ptr, ptr %4, align 8               ; 2 uses
  %.not112 = icmp eq ptr %i.do, %i.dp
  br i1 %.not112, label %.preheader, label %.lr.ph108

.lr.ph106:                                        ; preds = %.preheader98, %.lr.ph106
  %.035105 = phi i64 [ %i.dv, %.lr.ph106 ], [ 0, %.preheader98 ] ; 3 uses
  %i.dq = load ptr, ptr %2, align 8
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %.035105
  %i.ds = load ptr, ptr %i.dr, align 8
  %i.dt = load ptr, ptr %i.ad, align 8
  %i.du = getelementptr inbounds nuw [16 x i8], ptr %i.dt, i64 %.035105 ; 2 uses
  store ptr %i.ds, ptr %i.du, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store i8 1, ptr %.sroa.4.0..sroa_idx, align 8
  %i.dv = add nuw i64 %.035105, 1                 ; 2 uses
  %i.dw = load i64, ptr %0, align 8
  %i.dx = icmp ult i64 %i.dv, %i.dw
  br i1 %i.dx, label %.lr.ph106, label %.preheader96, !llvm.loop !28

bb.s:                                             ; preds = %bb.u
  %i.dy = add nuw i64 %.034107, 1                 ; 2 uses
  %i.dz = load ptr, ptr %i.ca, align 8
  %i.ea = load ptr, ptr %4, align 8               ; 2 uses
  %i.eb = ptrtoint ptr %i.dz to i64
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = sub i64 %i.eb, %i.ec
  %i.ee = ashr exact i64 %i.ed, 4
  %i.ef = icmp ult i64 %i.dy, %i.ee
  br i1 %i.ef, label %.lr.ph108, label %.preheader, !llvm.loop !29

.preheader:                                       ; preds = %bb.s, %.preheader96
  %i.eg = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.eh = load ptr, ptr %1, align 8               ; 2 uses
  %.not113 = icmp eq ptr %i.eg, %i.eh
  br i1 %.not113, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %.lr.ph110

.lr.ph110:                                        ; preds = %.preheader
  %i.ei = ptrtoint ptr %i.eg to i64
  %i.ej = ptrtoint ptr %i.eh to i64
  %i.ek = sub i64 %i.ei, %i.ej
  %i.el = sdiv exact i64 %i.ek, 24
  %i.em = load ptr, ptr %i.ad, align 8
  br label %bb.w

.lr.ph108:                                        ; preds = %.preheader96, %bb.s
  %i.en = phi ptr [ %i.ea, %bb.s ], [ %i.dp, %.preheader96 ]
  %.034107 = phi i64 [ %i.dy, %bb.s ], [ 0, %.preheader96 ] ; 3 uses
  %i.eo = getelementptr inbounds nuw [16 x i8], ptr %i.en, i64 %.034107 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.eq = load i8, ptr %i.ep, align 8, !range !23, !noundef !24
  %i.er = trunc nuw i8 %i.eq to i1
  br i1 %i.er, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph108
  %i.es = load ptr, ptr %3, align 8
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %.034107
  %i.eu = load ptr, ptr %i.et, align 8
  %i.ev = load ptr, ptr %i.eo, align 8
  invoke void @_ZN2v88internal6torque21TypeArgumentInference5MatchEPNS1_14TypeExpressionEPKNS1_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %i.eu, ptr noundef %i.ev)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %bb.t, %.lr.ph108
  %i.ew = load i8, ptr %i.bf, align 8, !range !23, !noundef !24
  %i.ex = trunc nuw i8 %i.ew to i1
  br i1 %i.ex, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %bb.s

bb.v:                                             ; preds = %bb.w
  %i.ey = add nuw i64 %.0109, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.ey, %i.el
  br i1 %exitcond.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %bb.w, !llvm.loop !30

bb.w:                                             ; preds = %.lr.ph110, %bb.v
  %.0109 = phi i64 [ 0, %.lr.ph110 ], [ %i.ey, %bb.v ] ; 2 uses
  %i.ez = getelementptr inbounds nuw [16 x i8], ptr %i.em, i64 %.0109
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fb = load i8, ptr %i.fa, align 8, !range !23, !noundef !24
  %i.fc = trunc nuw i8 %i.fb to i1
  br i1 %i.fc, label %bb.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i75

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i75: ; preds = %bb.w
  %i.fd = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.fd, ptr %7, align 8
  %i.fe = invoke noalias noundef nonnull dereferenceable(50) ptr @_Znwm(i64 noundef 50) #20
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i75
  store ptr %i.fe, ptr %7, align 8
  store i64 49, ptr %i.fd, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.fe, ptr noundef nonnull align 1 dereferenceable(49) @.str.2, i64 49, i1 false)
  %i.ff = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 49, ptr %i.ff, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 49
  store i8 0, ptr %i.fg, align 1
  invoke void @_ZN2v88internal6torque21TypeArgumentInference4FailENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 %7)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.fh = load ptr, ptr %7, align 8               ; 2 uses
  %i.fi = icmp eq ptr %i.fh, %i.fd
  br i1 %i.fi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82: ; preds = %bb.y
  %i.fj = load i64, ptr %i.fd, align 8
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85.a

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.t, %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i60, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i75
  %lpad.loopexit.split-lp146 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

bb.z:                                             ; preds = %bb.x
  %i.fk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fl = load ptr, ptr %7, align 8               ; 2 uses
  %i.fm = icmp eq ptr %i.fl, %i.fd
  br i1 %i.fm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85: ; preds = %bb.z
  %8 = load i64, ptr %i.fd, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85.a: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82
  %.sink143 = phi i64 [ %i.fj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82 ], [ %i.cv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67 ], [ %i.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %.sink = phi ptr [ %i.fh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82 ], [ %i.ct, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67 ], [ %i.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.fn = add i64 %.sink143, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.fn) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.u, %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85.a, %bb.y, %bb.q, %bb.l, %.preheader
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.sink.split: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85
  %.sink143.a = phi i64 [ %8, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85 ], [ %i.cz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70 ], [ %i.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56 ]
  %.sink.a = phi ptr [ %i.fl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85 ], [ %i.cx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70 ], [ %i.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56 ]
  %.pn47.pn.ph = phi { ptr, i32 } [ %i.fk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85 ], [ %i.cw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70 ], [ %i.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56 ]
  %i.fo = add i64 %.sink143.a, 1
  call void @_ZdlPvm(ptr noundef %.sink.a, i64 noundef %i.fo) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.sink.split, %bb.z, %bb.r, %bb.n
  %.pn47.pn = phi { ptr, i32 } [ %i.cw, %bb.r ], [ %.pn47.pn.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.sink.split ], [ %i.bw, %bb.n ], [ %i.fk, %bb.z ], [ %lpad.loopexit.split-lp146, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  call void @_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.be) #21
  %i.fp = load ptr, ptr %i.ad, align 8            ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.fp, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt8optionalIPKN2v88internal6torque4TypeEESaIS7_EED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.fr = load ptr, ptr %i.fq, align 8
  %i.fs = ptrtoint ptr %i.fr to i64
  %i.ft = ptrtoint ptr %i.fp to i64
  %i.fu = sub i64 %i.fs, %i.ft
  call void @_ZdlPvm(ptr noundef nonnull %i.fp, i64 noundef %i.fu) #22
  br label %_ZNSt6vectorISt8optionalIPKN2v88internal6torque4TypeEESaIS7_EED2Ev.exit

_ZNSt6vectorISt8optionalIPKN2v88internal6torque4TypeEESaIS7_EED2Ev.exit: ; preds = %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, %bb.m
  %.pn47.pn.pn = phi { ptr, i32 } [ %i.bv, %bb.m ], [ %.pn47.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58 ], [ %.pn47.pn, %bb.aa ]
  call void @_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_mEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.h) #21
  br label %.body

.body:                                            ; preds = %bb.i, %_ZNSt6vectorISt8optionalIPKN2v88internal6torque4TypeEESaIS7_EED2Ev.exit
  %.pn47.pn.pn.pn = phi { ptr, i32 } [ %.pn47.pn.pn, %_ZNSt6vectorISt8optionalIPKN2v88internal6torque4TypeEESaIS7_EED2Ev.exit ], [ %i.ac, %bb.i ]
  resume { ptr, i32 } %.pn47.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2v88internal6torque21TypeArgumentInference4FailENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef align 8 %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !33 {
bb.a:
  %2 = alloca %"class.std::optional", align 8     ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.a, ptr %2, align 8
  %i.b = load ptr, ptr %1, align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8              ; 8 uses
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %bb.b, label %._crit_edge.i.i.i.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.f = icmp slt i64 %i.d, 0
  br i1 %i.f, label %.noexc.i.i.i.i.i.i.i, label %bb.c

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.b
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #19
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = add nuw i64 %i.d, 1                      ; 2 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %.noexc6.i.i.i.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i, !prof !21

.noexc6.i.i.i.i.i.i.i:                            ; preds = %bb.c
  call void @_ZSt17__throw_bad_allocv() #19
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.i = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #20 ; 2 uses
  store ptr %i.i, ptr %2, align 8
  store i64 %i.d, ptr %i.a, align 8
  br label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i, %bb.a
  %i.j = phi ptr [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i ], [ %i.a, %bb.a ] ; 3 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESA_ISB_ISt10in_place_tSI_EESt16is_constructibleIS5_JSE_EESt14is_convertibleISE_S5_EEEbE4typeELb1EEEOSE_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.k = load i8, ptr %i.b, align 1
  store i8 %i.k, ptr %i.j, align 1
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESA_ISB_ISt10in_place_tSI_EESt16is_constructibleIS5_JSE_EESt14is_convertibleISE_S5_EEEbE4typeELb1EEEOSE_.exit

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr align 1 %i.b, i64 %i.d, i1 false)
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESA_ISB_ISt10in_place_tSI_EESt16is_constructibleIS5_JSE_EESt14is_convertibleISE_S5_EEEbE4typeELb1EEEOSE_.exit

_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESA_ISB_ISt10in_place_tSI_EESt16is_constructibleIS5_JSE_EESt14is_convertibleISE_S5_EEEbE4typeELb1EEEOSE_.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i, %bb.d, %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.d, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.d
  store i8 0, ptr %i.m, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  store i8 1, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_move_assignEOS6_(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull align 8 dereferenceable(40) %2) #21
  %i.p = load i8, ptr %i.n, align 8, !range !23, !noundef !24
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.f, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.f:                                             ; preds = %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESA_ISB_ISt10in_place_tSI_EESt16is_constructibleIS5_JSE_EESt14is_convertibleISE_S5_EEEbE4typeELb1EEEOSE_.exit
  store i8 0, ptr %i.n, align 8
  %i.r = load ptr, ptr %2, align 8                ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.a
  br i1 %i.s, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.f
  %i.t = load i64, ptr %i.a, align 8
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #22
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.f, %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESA_ISB_ISt10in_place_tSI_EESt16is_constructibleIS5_JSE_EESt14is_convertibleISE_S5_EEEbE4typeELb1EEEOSE_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !34 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.9) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #21 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 15
  br i1 %i.d, label %bb.d, label %._crit_edge.i

bb.d:                                             ; preds = %bb.c
  %i.e = icmp slt i64 %i.c, 0
  br i1 %i.e, label %.noexc, label %bb.e

.noexc:                                           ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #19
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.f = add nuw i64 %i.c, 1                      ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc11, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, !prof !21

.noexc11:                                         ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #19
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %bb.e
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #20 ; 2 uses
  store ptr %i.h, ptr %0, align 8
  store i64 %i.c, ptr %i.a, align 8
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  %i.i = phi ptr [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i ], [ %i.a, %bb.c ] ; 3 uses
  switch i64 %i.c, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i
  %i.j = load i8, ptr %1, align 1
  store i8 %i.j, ptr %i.i, align 1
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %1, i64 %i.c, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.c
  store i8 0, ptr %i.l, align 1
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2v88internal6torque21TypeArgumentInference5MatchEPNS1_14TypeExpressionEPKNS1_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !35 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.6", align 1  ; 4 uses
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %_ZN2v88internal6torque19BasicTypeExpression11DynamicCastEPNS1_7AstNodeE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8
  %.not5.i = icmp eq i32 %i.b, 21
  br i1 %.not5.i, label %_ZN2v88internal6torque19BasicTypeExpression11DynamicCastEPNS1_7AstNodeE.exit, label %_ZN2v88internal6torque19BasicTypeExpression11DynamicCastEPNS1_7AstNodeE.exit.thread

_ZN2v88internal6torque19BasicTypeExpression11DynamicCastEPNS1_7AstNodeE.exit: ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.f = load ptr, ptr %i.e, align 8
end_hunk_0
