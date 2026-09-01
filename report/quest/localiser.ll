Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quest/original/localiser?download=true
inline.NumInlined: 2300
inline.NumDeleted: 618
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_Z39localiser_statevec_calcExpecPauliStrSum5Qureg11PauliStrSum:bb.a
  br i1 %i.bo, label %.loopexit217, label %.lr.ph.i.i.i.i

bb.e:                                             ; preds = %bb.f
  %i.bp = icmp eq i64 %i.bf, %i.bs
  br i1 %i.bp, label %.loopexit217, label %.lr.ph.i.i.i.i, !llvm.loop !200

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %bb.e
  %.020.i.i.i.i = phi ptr [ %i.bq, %bb.e ], [ %i.bl, %bb.d ]
  %i.bq = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !54 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not18.i.i.i.i, label %.loopexit.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !74 ; 2 uses
  %i.bt = urem i64 %i.bs, %i.bg
  %.not19.i.i.i.i = icmp eq i64 %i.bt, %i.bh
  br i1 %.not19.i.i.i.i, label %bb.e, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !200

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.f
  br label %.loopexit.i.i, !llvm.loop !200

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i, %..loopexit_crit_edge21.i.i.i.i, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  store ptr %4, ptr %2, align 8, !tbaa !201
  %i.bu = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #19
          to label %.noexc unwind label %.loopexit218 ; 5 uses

.noexc:                                           ; preds = %.loopexit.i.i
  store ptr null, ptr %i.bu, align 8, !tbaa !54
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store i64 %i.bf, ptr %i.bv, align 8, !tbaa !205
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bw, i8 0, i64 24, i1 false)
  store ptr %i.bu, ptr %i.o, align 8, !tbaa !212
  %i.bx = invoke ptr @_ZNSt10_HashtableIySt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS7_EEESaISA_ENSt8__detail10_Select1stESt8equal_toIyESt4hashIyENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSC_10_Hash_nodeISA_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %4, i64 noundef %i.bh, i64 noundef %i.bf, ptr noundef nonnull %i.bu, i64 noundef 1)
          to label %_ZNSt10_HashtableIySt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS7_EEESaISA_ENSt8__detail10_Select1stESt8equal_toIyESt4hashIyENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i unwind label %bb.g

_ZNSt10_HashtableIySt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS7_EEESaISA_ENSt8__detail10_Select1stESt8equal_toIyESt4hashIyENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i: ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %.loopexit217

bb.g:                                             ; preds = %.noexc
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableIySt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS7_EEESaISA_ENSt8__detail10_Select1stESt8equal_toIyESt4hashIyENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %.body

.loopexit217:                                     ; preds = %bb.e, %_ZNSt10_HashtableIySt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS7_EEESaISA_ENSt8__detail10_Select1stESt8equal_toIyESt4hashIyENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i, %bb.d
  %.pn.i.i = phi ptr [ %i.bx, %_ZNSt10_HashtableIySt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS7_EEESaISA_ENSt8__detail10_Select1stESt8equal_toIyESt4hashIyENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i ], [ %i.bl, %bb.d ], [ %i.bq, %bb.e ] ; 3 uses
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 24 ; 4 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !213 ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 32 ; 3 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !214
  %.not.i = icmp eq ptr %i.ca, %i.cc
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.loopexit217
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ca, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0179, i64 32, i1 false)
  %i.cd = load ptr, ptr %i.bz, align 8, !tbaa !213
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  store ptr %i.ce, ptr %i.bz, align 8, !tbaa !213
  br label %_ZNSt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS4_EE9push_backERKS4_.exit

bb.i:                                             ; preds = %.loopexit217
  %i.cf = load ptr, ptr %.1.i.i, align 8, !tbaa !215 ; 5 uses
  %i.cg = ptrtoint ptr %i.ca to i64
  %i.ch = ptrtoint ptr %i.cf to i64               ; 2 uses
  %i.ci = sub i64 %i.cg, %i.ch                    ; 3 uses
  %i.cj = icmp eq i64 %i.ci, 9223372036854775776
  br i1 %i.cj, label %bb.j, label %_ZNKSt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #18
          to label %.noexc66 unwind label %.loopexit.split-lp219

.noexc66:                                         ; preds = %bb.j
  unreachable

_ZNKSt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.i
  %i.ck = ashr exact i64 %i.ci, 5                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ck, i64 1)
  %i.cl = add nsw i64 %.sroa.speculated.i.i.i, %i.ck ; 2 uses
  %i.cm = icmp ult i64 %i.cl, %i.ck
  %i.cn = call i64 @llvm.umin.i64(i64 %i.cl, i64 288230376151711743)
  %i.co = select i1 %i.cm, i64 288230376151711743, i64 %i.cn ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.co, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.cp = shl nuw nsw i64 %i.co, 5
  %i.cq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cp) #19
          to label %.noexc67 unwind label %.loopexit218 ; 5 uses

.noexc67:                                         ; preds = %_ZNKSt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.ci
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cr, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0179, i64 32, i1 false)
  %.not10.i.i.i.i.i = icmp eq ptr %i.cf, %i.ca
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc67, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.cv, %.lr.ph.i.i.i.i.i ], [ %i.cq, %.noexc67 ] ; 3 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.i ], [ %i.cf, %.noexc67 ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !126, !alias.scope !216
  %i.cs = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16
  %i.ct = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cs, ptr noundef nonnull align 8 dereferenceable(16) %i.ct, i64 16, i1 false), !tbaa.struct !199, !alias.scope !216
  %i.cu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 32 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cu, %i.ca
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !220

_ZNSt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc67
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.cq, %.noexc67 ], [ %i.cv, %.lr.ph.i.i.i.i.i ]
  %i.cw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 32
  %.not.i23.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i
  %i.cx = load ptr, ptr %i.cb, align 8, !tbaa !214
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = sub i64 %i.cy, %i.ch
  call void @_ZdlPvm(ptr noundef nonnull %i.cf, i64 noundef %i.cz) #20
  br label %_ZNSt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.k, %_ZNSt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i
  store ptr %i.cq, ptr %.1.i.i, align 8, !tbaa !215
  store ptr %i.cw, ptr %i.bz, align 8, !tbaa !213
  %i.da = getelementptr inbounds nuw [32 x i8], ptr %i.cq, i64 %i.co
  store ptr %i.da, ptr %i.cb, align 8, !tbaa !214
  br label %_ZNSt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS4_EE9push_backERKS4_.exit

_ZNSt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS4_EE9push_backERKS4_.exit: ; preds = %_ZNSt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0179)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.f
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !221

bb.l:                                             ; preds = %bb.b
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit218:                                     ; preds = %.loopexit.i.i, %_ZNKSt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit220 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp219:                            ; preds = %bb.j
  %lpad.loopexit.split-lp221 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit218, %.loopexit.split-lp219, %bb.g, %bb.l
  %.pn63 = phi { ptr, i32 } [ %i.db, %bb.l ], [ %i.by, %bb.g ], [ %lpad.loopexit220, %.loopexit218 ], [ %lpad.loopexit.split-lp221, %.loopexit.split-lp219 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0179)
  br label %bb.db

._crit_edge311:                                   ; preds = %._crit_edge306, %bb.a, %._crit_edge
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !29
  %.not = icmp eq i32 %i.dd, 0
  br i1 %.not, label %bb.cy, label %bb.cw

bb.m:                                             ; preds = %.lr.ph310, %._crit_edge306
  %.sroa.0175.0308 = phi ptr [ %.pre, %.lr.ph310 ], [ %i.dq, %._crit_edge306 ] ; 4 uses
  %i.de = phi <2 x double> [ zeroinitializer, %.lr.ph310 ], [ %i.dp, %._crit_edge306 ] ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0175.0308, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.0175.0308, i64 16
  %i.dh = load i64, ptr %i.df, align 8, !tbaa !74
  %i.di = trunc i64 %i.dh to i32                  ; 2 uses
  %.not49 = icmp eq i32 %i.di, 0
  br i1 %.not49, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dj = load i32, ptr %i.p, align 4, !tbaa !98
  %i.dk = xor i32 %i.dj, %i.di
  invoke void @_Z26comm_exchangeAmpsToBuffers5Quregi(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, i32 noundef %i.dk)
          to label %bb.p unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

bb.p:                                             ; preds = %bb.n, %bb.m
  %_Z33getStateVecExpecAllSuffixPauliStr5QuregSt6vectorIiSaIiEES2_S2_._Z37accel_statevec_calcExpecPauliStr_subB5QuregSt6vectorIiSaIiEES2_S2_ = phi ptr [ @_Z37accel_statevec_calcExpecPauliStr_subB5QuregSt6vectorIiSaIiEES2_S2_, %bb.n ], [ @_Z33getStateVecExpecAllSuffixPauliStr5QuregSt6vectorIiSaIiEES2_S2_, %bb.m ]
  %i.dm = load ptr, ptr %i.dg, align 8, !tbaa !222 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.0175.0308, i64 24
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !222 ; 2 uses
  %.not181302 = icmp eq ptr %i.dm, %i.do
  br i1 %.not181302, label %._crit_edge306, label %.lr.ph305

._crit_edge306:                                   ; preds = %_ZNSt5arrayISt6vectorIiSaIiEELm3EED2Ev.exit, %bb.p
  %i.dp = phi <2 x double> [ %i.de, %bb.p ], [ %i.kt, %_ZNSt5arrayISt6vectorIiSaIiEELm3EED2Ev.exit ]
  %i.dq = load ptr, ptr %.sroa.0175.0308, align 8, !tbaa !54 ; 2 uses
  %.not180 = icmp eq ptr %i.dq, null
  br i1 %.not180, label %._crit_edge311, label %bb.m

.lr.ph305:                                        ; preds = %bb.p, %_ZNSt5arrayISt6vectorIiSaIiEELm3EED2Ev.exit
  %.sroa.0171.0303 = phi ptr [ %i.mn, %_ZNSt5arrayISt6vectorIiSaIiEELm3EED2Ev.exit ], [ %i.dm, %bb.p ] ; 4 uses
  %i.dr = phi <2 x double> [ %i.kt, %_ZNSt5arrayISt6vectorIiSaIiEELm3EED2Ev.exit ], [ %i.de, %bb.p ]
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.0171.0303, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %.sroa.0.0.copyload = load i64, ptr %i.ds, align 8, !tbaa !74
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0171.0303, i64 24
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !74
  invoke void @_Z22paulis_getSeparateInds8PauliStr(ptr dead_on_unwind nonnull writable sret(%"struct.std::array.46") align 8 %5, i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload)
          to label %bb.q unwind label %bb.ch

bb.q:                                             ; preds = %.lr.ph305
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.dt = load ptr, ptr %i.s, align 8, !tbaa !12  ; 2 uses
  %i.du = load ptr, ptr %5, align 8, !tbaa !14    ; 3 uses
  %i.dv = ptrtoint ptr %i.dt to i64               ; 2 uses
  %i.dw = ptrtoint ptr %i.du to i64               ; 2 uses
  %i.dx = sub i64 %i.dv, %i.dw                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %.not.i.i.i.i68 = icmp eq ptr %i.dt, %i.du
  br i1 %.not.i.i.i.i68, label %.noexc70, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dy = icmp ugt i64 %i.dx, 9223372036854775804
  br i1 %i.dy, label %.noexc.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, !prof !33

.noexc.i.i:                                       ; preds = %bb.r
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #18
          to label %.noexc69 unwind label %.loopexit.split-lp

.noexc69:                                         ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.r
  %i.dz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dx) #19
          to label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc70_crit_edge unwind label %.loopexit

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc70_crit_edge: ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i
  %.pre315 = load ptr, ptr %5, align 8, !tbaa !9  ; 2 uses
  %.pre316 = load ptr, ptr %i.s, align 8, !tbaa !9
  %.pre331 = ptrtoint ptr %.pre316 to i64
  %.pre332 = ptrtoint ptr %.pre315 to i64
  br label %.noexc70

.noexc70:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc70_crit_edge, %bb.q
  %.pre-phi333 = phi i64 [ %.pre332, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc70_crit_edge ], [ %i.dw, %bb.q ]
  %.pre-phi = phi i64 [ %.pre331, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc70_crit_edge ], [ %i.dv, %bb.q ]
  %i.ea = phi ptr [ %.pre315, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc70_crit_edge ], [ %i.du, %bb.q ] ; 2 uses
  %i.eb = phi ptr [ %i.dz, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc70_crit_edge ], [ null, %bb.q ] ; 6 uses
  store ptr %i.eb, ptr %7, align 8, !tbaa !14
  store ptr %i.eb, ptr %i.t, align 8, !tbaa !12
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.dx
  store ptr %i.ec, ptr %i.u, align 8, !tbaa !16
  %i.ed = sub i64 %.pre-phi, %.pre-phi333         ; 4 uses
  %i.ee = icmp sgt i64 %i.ed, 4
  br i1 %i.ee, label %bb.s, label %bb.t, !prof !17

bb.s:                                             ; preds = %.noexc70
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.eb, ptr align 4 %i.ea, i64 %i.ed, i1 false)
  br label %bb.v

bb.t:                                             ; preds = %.noexc70
  %i.ef = icmp eq i64 %i.ed, 4
  br i1 %i.ef, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.eg = load i32, ptr %i.ea, align 4, !tbaa !15
  store i32 %i.eg, ptr %i.eb, align 4, !tbaa !15
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %i.eh = getelementptr inbounds i8, ptr %i.eb, i64 %i.ed
  store ptr %i.eh, ptr %i.t, align 8, !tbaa !12
  invoke void @_Z29util_getPrefixAndSuffixQubitsSt6vectorIiSaIiEE5Qureg(ptr dead_on_unwind nonnull writable sret(%"struct.std::array") align 8 %6, ptr nofree noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull byval(%struct.Qureg) align 8 %0)
          to label %bb.w unwind label %bb.ci

bb.w:                                             ; preds = %bb.v
  %i.ei = load ptr, ptr %7, align 8, !tbaa !14    ; 3 uses
  %.not.i.i.i71 = icmp eq ptr %i.ei, null
  br i1 %.not.i.i.i71, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ej = load ptr, ptr %i.u, align 8, !tbaa !16
  %i.ek = ptrtoint ptr %i.ej to i64
  %i.el = ptrtoint ptr %i.ei to i64
  %i.em = sub i64 %i.ek, %i.el
  call void @_ZdlPvm(ptr noundef nonnull %i.ei, i64 noundef %i.em) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.en = load ptr, ptr %i.w, align 8, !tbaa !12  ; 2 uses
  %i.eo = load ptr, ptr %i.q, align 8, !tbaa !14  ; 3 uses
  %i.ep = ptrtoint ptr %i.en to i64               ; 2 uses
  %i.eq = ptrtoint ptr %i.eo to i64               ; 2 uses
  %i.er = sub i64 %i.ep, %i.eq                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %.not.i.i.i.i72 = icmp eq ptr %i.en, %i.eo
  br i1 %.not.i.i.i.i72, label %.noexc76, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.es = icmp ugt i64 %i.er, 9223372036854775804
  br i1 %i.es, label %.noexc.i.i74, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i73, !prof !33

.noexc.i.i74:                                     ; preds = %bb.y
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #18
          to label %.noexc75 unwind label %.loopexit.split-lp183

.noexc75:                                         ; preds = %.noexc.i.i74
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i73: ; preds = %bb.y
  %i.et = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.er) #19
          to label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i73..noexc76_crit_edge unwind label %.loopexit182

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i73..noexc76_crit_edge: ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i73
  %.pre317 = load ptr, ptr %i.q, align 8, !tbaa !9 ; 2 uses
  %.pre318 = load ptr, ptr %i.w, align 8, !tbaa !9
  %.pre334 = ptrtoint ptr %.pre318 to i64
  %.pre336 = ptrtoint ptr %.pre317 to i64
  br label %.noexc76

.noexc76:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i73..noexc76_crit_edge, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %.pre-phi337 = phi i64 [ %.pre336, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i73..noexc76_crit_edge ], [ %i.eq, %_ZNSt6vectorIiSaIiEED2Ev.exit ]
  %.pre-phi335 = phi i64 [ %.pre334, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i73..noexc76_crit_edge ], [ %i.ep, %_ZNSt6vectorIiSaIiEED2Ev.exit ]
  %i.eu = phi ptr [ %.pre317, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i73..noexc76_crit_edge ], [ %i.eo, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 2 uses
  %i.ev = phi ptr [ %i.et, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i73..noexc76_crit_edge ], [ null, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 6 uses
  store ptr %i.ev, ptr %9, align 8, !tbaa !14
  store ptr %i.ev, ptr %i.x, align 8, !tbaa !12
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.er
  store ptr %i.ew, ptr %i.y, align 8, !tbaa !16
  %i.ex = sub i64 %.pre-phi335, %.pre-phi337      ; 4 uses
  %i.ey = icmp sgt i64 %i.ex, 4
  br i1 %i.ey, label %bb.z, label %bb.aa, !prof !17

bb.z:                                             ; preds = %.noexc76
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ev, ptr align 4 %i.eu, i64 %i.ex, i1 false)
  br label %bb.ac

bb.aa:                                            ; preds = %.noexc76
  %i.ez = icmp eq i64 %i.ex, 4
  br i1 %i.ez, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.fa = load i32, ptr %i.eu, align 4, !tbaa !15
  store i32 %i.fa, ptr %i.ev, align 4, !tbaa !15
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %i.fb = getelementptr inbounds i8, ptr %i.ev, i64 %i.ex
  store ptr %i.fb, ptr %i.x, align 8, !tbaa !12
  invoke void @_Z29util_getPrefixAndSuffixQubitsSt6vectorIiSaIiEE5Qureg(ptr dead_on_unwind nonnull writable sret(%"struct.std::array") align 8 %8, ptr nofree noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull byval(%struct.Qureg) align 8 %0)
          to label %bb.ad unwind label %bb.ck

bb.ad:                                            ; preds = %bb.ac
  %i.fc = load ptr, ptr %9, align 8, !tbaa !14    ; 3 uses
  %.not.i.i.i78 = icmp eq ptr %i.fc, null
  br i1 %.not.i.i.i78, label %_ZNSt6vectorIiSaIiEED2Ev.exit79, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fd = load ptr, ptr %i.y, align 8, !tbaa !16
  %i.fe = ptrtoint ptr %i.fd to i64
  %i.ff = ptrtoint ptr %i.fc to i64
  %i.fg = sub i64 %i.fe, %i.ff
  call void @_ZdlPvm(ptr noundef nonnull %i.fc, i64 noundef %i.fg) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit79

_ZNSt6vectorIiSaIiEED2Ev.exit79:                  ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  %i.fh = load ptr, ptr %i.aa, align 8, !tbaa !12 ; 2 uses
  %i.fi = load ptr, ptr %i.r, align 8, !tbaa !14  ; 3 uses
  %i.fj = ptrtoint ptr %i.fh to i64               ; 2 uses
  %i.fk = ptrtoint ptr %i.fi to i64               ; 2 uses
  %i.fl = sub i64 %i.fj, %i.fk                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %.not.i.i.i.i80 = icmp eq ptr %i.fh, %i.fi
  br i1 %.not.i.i.i.i80, label %.noexc84, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit79
  %i.fm = icmp ugt i64 %i.fl, 9223372036854775804
  br i1 %i.fm, label %.noexc.i.i82, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i81, !prof !33

.noexc.i.i82:                                     ; preds = %bb.af
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #18
          to label %.noexc83 unwind label %.loopexit.split-lp188

.noexc83:                                         ; preds = %.noexc.i.i82
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i81: ; preds = %bb.af
  %i.fn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fl) #19
          to label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i81..noexc84_crit_edge unwind label %.loopexit187

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i81..noexc84_crit_edge: ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i81
  %.pre319 = load ptr, ptr %i.r, align 8, !tbaa !9 ; 2 uses
  %.pre320 = load ptr, ptr %i.aa, align 8, !tbaa !9
  %.pre338 = ptrtoint ptr %.pre320 to i64
  %.pre340 = ptrtoint ptr %.pre319 to i64
  br label %.noexc84

.noexc84:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i81..noexc84_crit_edge, %_ZNSt6vectorIiSaIiEED2Ev.exit79
  %.pre-phi341 = phi i64 [ %.pre340, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i81..noexc84_crit_edge ], [ %i.fk, %_ZNSt6vectorIiSaIiEED2Ev.exit79 ]
end_hunk_0
begin_hunk_1_@_Z39localiser_statevec_calcExpecPauliStrSum5Qureg11PauliStrSum:bb.a
_ZNSt6vectorIiSaIiEED2Ev.exit101:                 ; preds = %bb.aw, %bb.ax
  %i.hn = load ptr, ptr %12, align 8, !tbaa !14   ; 3 uses
  %.not.i.i.i102 = icmp eq ptr %i.hn, null
  br i1 %.not.i.i.i102, label %_ZNSt6vectorIiSaIiEED2Ev.exit103, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit101
  %i.ho = load ptr, ptr %i.ag, align 8, !tbaa !16
  %i.hp = ptrtoint ptr %i.ho to i64
  %i.hq = ptrtoint ptr %i.hn to i64
  %i.hr = sub i64 %i.hp, %i.hq
  call void @_ZdlPvm(ptr noundef nonnull %i.hn, i64 noundef %i.hr) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit103

_ZNSt6vectorIiSaIiEED2Ev.exit103:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit101, %bb.ay
  %i.hs = load ptr, ptr %i.ak, align 8, !tbaa !12 ; 2 uses
  %i.ht = load ptr, ptr %i.v, align 8, !tbaa !14  ; 3 uses
  %i.hu = ptrtoint ptr %i.hs to i64               ; 2 uses
  %i.hv = ptrtoint ptr %i.ht to i64               ; 2 uses
  %i.hw = sub i64 %i.hu, %i.hv                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %.not.i.i.i.i104 = icmp eq ptr %i.hs, %i.ht
  br i1 %.not.i.i.i.i104, label %.noexc108, label %bb.az

bb.az:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit103
  %i.hx = icmp ugt i64 %i.hw, 9223372036854775804
  br i1 %i.hx, label %.noexc.i.i106, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i105, !prof !33

.noexc.i.i106:                                    ; preds = %bb.az
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #18
          to label %.noexc107 unwind label %.loopexit.split-lp203

.noexc107:                                        ; preds = %.noexc.i.i106
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i105: ; preds = %bb.az
  %i.hy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hw) #19
          to label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i105..noexc108_crit_edge unwind label %.loopexit202

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i105..noexc108_crit_edge: ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i105
  %.pre325 = load ptr, ptr %i.v, align 8, !tbaa !9 ; 2 uses
  %.pre326 = load ptr, ptr %i.ak, align 8, !tbaa !9
  %.pre350 = ptrtoint ptr %.pre326 to i64
  %.pre352 = ptrtoint ptr %.pre325 to i64
  br label %.noexc108

.noexc108:                                        ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i105..noexc108_crit_edge, %_ZNSt6vectorIiSaIiEED2Ev.exit103
  %.pre-phi353 = phi i64 [ %.pre352, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i105..noexc108_crit_edge ], [ %i.hv, %_ZNSt6vectorIiSaIiEED2Ev.exit103 ]
  %.pre-phi351 = phi i64 [ %.pre350, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i105..noexc108_crit_edge ], [ %i.hu, %_ZNSt6vectorIiSaIiEED2Ev.exit103 ]
  %i.hz = phi ptr [ %.pre325, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i105..noexc108_crit_edge ], [ %i.ht, %_ZNSt6vectorIiSaIiEED2Ev.exit103 ] ; 2 uses
  %i.ia = phi ptr [ %i.hy, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i105..noexc108_crit_edge ], [ null, %_ZNSt6vectorIiSaIiEED2Ev.exit103 ] ; 6 uses
  store ptr %i.ia, ptr %14, align 8, !tbaa !14
  store ptr %i.ia, ptr %i.al, align 8, !tbaa !12
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 %i.hw
  store ptr %i.ib, ptr %i.am, align 8, !tbaa !16
  %i.ic = sub i64 %.pre-phi351, %.pre-phi353      ; 4 uses
  %i.id = icmp sgt i64 %i.ic, 4
  br i1 %i.id, label %bb.ba, label %bb.bb, !prof !17

bb.ba:                                            ; preds = %.noexc108
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ia, ptr align 4 %i.hz, i64 %i.ic, i1 false)
  br label %bb.bd

bb.bb:                                            ; preds = %.noexc108
  %i.ie = icmp eq i64 %i.ic, 4
  br i1 %i.ie, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.if = load i32, ptr %i.hz, align 4, !tbaa !15
  store i32 %i.if, ptr %i.ia, align 4, !tbaa !15
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb, %bb.ba
  %i.ig = getelementptr inbounds i8, ptr %i.ia, i64 %i.ic
  store ptr %i.ig, ptr %i.al, align 8, !tbaa !12
  %i.ih = load ptr, ptr %i.an, align 8, !tbaa !12 ; 2 uses
  %i.ii = load ptr, ptr %i.z, align 8, !tbaa !14  ; 3 uses
  %i.ij = ptrtoint ptr %i.ih to i64               ; 2 uses
  %i.ik = ptrtoint ptr %i.ii to i64               ; 2 uses
  %i.il = sub i64 %i.ij, %i.ik                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  %.not.i.i.i.i110 = icmp eq ptr %i.ih, %i.ii
  br i1 %.not.i.i.i.i110, label %.noexc114, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.im = icmp ugt i64 %i.il, 9223372036854775804
  br i1 %i.im, label %.noexc.i.i112, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i111, !prof !33

.noexc.i.i112:                                    ; preds = %bb.be
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #18
          to label %.noexc113 unwind label %.loopexit.split-lp208

.noexc113:                                        ; preds = %.noexc.i.i112
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i111: ; preds = %bb.be
  %i.in = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.il) #19
          to label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i111..noexc114_crit_edge unwind label %.loopexit207

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i111..noexc114_crit_edge: ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i111
  %.pre327 = load ptr, ptr %i.z, align 8, !tbaa !9 ; 2 uses
  %.pre328 = load ptr, ptr %i.an, align 8, !tbaa !9
  %.pre354 = ptrtoint ptr %.pre328 to i64
  %.pre356 = ptrtoint ptr %.pre327 to i64
  br label %.noexc114

.noexc114:                                        ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i111..noexc114_crit_edge, %bb.bd
  %.pre-phi357 = phi i64 [ %.pre356, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i111..noexc114_crit_edge ], [ %i.ik, %bb.bd ]
  %.pre-phi355 = phi i64 [ %.pre354, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i111..noexc114_crit_edge ], [ %i.ij, %bb.bd ]
  %i.io = phi ptr [ %.pre327, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i111..noexc114_crit_edge ], [ %i.ii, %bb.bd ] ; 2 uses
  %i.ip = phi ptr [ %i.in, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i111..noexc114_crit_edge ], [ null, %bb.bd ] ; 6 uses
  store ptr %i.ip, ptr %15, align 8, !tbaa !14
  store ptr %i.ip, ptr %i.ao, align 8, !tbaa !12
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.il
  store ptr %i.iq, ptr %i.ap, align 8, !tbaa !16
  %i.ir = sub i64 %.pre-phi355, %.pre-phi357      ; 4 uses
  %i.is = icmp sgt i64 %i.ir, 4
  br i1 %i.is, label %bb.bf, label %bb.bg, !prof !17

bb.bf:                                            ; preds = %.noexc114
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ip, ptr align 4 %i.io, i64 %i.ir, i1 false)
  br label %bb.bi

bb.bg:                                            ; preds = %.noexc114
  %i.it = icmp eq i64 %i.ir, 4
  br i1 %i.it, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.iu = load i32, ptr %i.io, align 4, !tbaa !15
  store i32 %i.iu, ptr %i.ip, align 4, !tbaa !15
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg, %bb.bf
  %i.iv = getelementptr inbounds i8, ptr %i.ip, i64 %i.ir
  store ptr %i.iv, ptr %i.ao, align 8, !tbaa !12
  %i.iw = load ptr, ptr %i.aq, align 8, !tbaa !12 ; 2 uses
  %i.ix = load ptr, ptr %i.ad, align 8, !tbaa !14 ; 3 uses
  %i.iy = ptrtoint ptr %i.iw to i64               ; 2 uses
  %i.iz = ptrtoint ptr %i.ix to i64               ; 2 uses
  %i.ja = sub i64 %i.iy, %i.iz                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  %.not.i.i.i.i116 = icmp eq ptr %i.iw, %i.ix
  br i1 %.not.i.i.i.i116, label %.noexc120, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.jb = icmp ugt i64 %i.ja, 9223372036854775804
  br i1 %i.jb, label %.noexc.i.i118, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i117, !prof !33

.noexc.i.i118:                                    ; preds = %bb.bj
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #18
          to label %.noexc119 unwind label %.loopexit.split-lp213

.noexc119:                                        ; preds = %.noexc.i.i118
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i117: ; preds = %bb.bj
  %i.jc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ja) #19
          to label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i117..noexc120_crit_edge unwind label %.loopexit212

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i117..noexc120_crit_edge: ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i117
  %.pre329 = load ptr, ptr %i.ad, align 8, !tbaa !9 ; 2 uses
  %.pre330 = load ptr, ptr %i.aq, align 8, !tbaa !9
  %.pre358 = ptrtoint ptr %.pre330 to i64
  %.pre360 = ptrtoint ptr %.pre329 to i64
  br label %.noexc120

.noexc120:                                        ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i117..noexc120_crit_edge, %bb.bi
  %.pre-phi361 = phi i64 [ %.pre360, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i117..noexc120_crit_edge ], [ %i.iz, %bb.bi ]
  %.pre-phi359 = phi i64 [ %.pre358, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i117..noexc120_crit_edge ], [ %i.iy, %bb.bi ]
  %i.jd = phi ptr [ %.pre329, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i117..noexc120_crit_edge ], [ %i.ix, %bb.bi ] ; 2 uses
  %i.je = phi ptr [ %i.jc, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i117..noexc120_crit_edge ], [ null, %bb.bi ] ; 6 uses
  store ptr %i.je, ptr %16, align 8, !tbaa !14
  store ptr %i.je, ptr %i.ar, align 8, !tbaa !12
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 %i.ja
  store ptr %i.jf, ptr %i.as, align 8, !tbaa !16
  %i.jg = sub i64 %.pre-phi359, %.pre-phi361      ; 4 uses
  %i.jh = icmp sgt i64 %i.jg, 4
  br i1 %i.jh, label %bb.bk, label %bb.bl, !prof !17

bb.bk:                                            ; preds = %.noexc120
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.je, ptr align 4 %i.jd, i64 %i.jg, i1 false)
  br label %bb.bn

bb.bl:                                            ; preds = %.noexc120
  %i.ji = icmp eq i64 %i.jg, 4
  br i1 %i.ji, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.jj = load i32, ptr %i.jd, align 4, !tbaa !15
  store i32 %i.jj, ptr %i.je, align 4, !tbaa !15
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl, %bb.bk
  %i.jk = getelementptr inbounds i8, ptr %i.je, i64 %i.jg
  store ptr %i.jk, ptr %i.ar, align 8, !tbaa !12
  %i.jl = invoke { double, double } %_Z33getStateVecExpecAllSuffixPauliStr5QuregSt6vectorIiSaIiEES2_S2_._Z37accel_statevec_calcExpecPauliStr_subB5QuregSt6vectorIiSaIiEES2_S2_(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr nofree noundef nonnull align 8 dereferenceable(24) %14, ptr nofree noundef nonnull align 8 dereferenceable(24) %15, ptr nofree noundef nonnull align 8 dereferenceable(24) %16)
          to label %bb.bo unwind label %bb.cr     ; 2 uses

bb.bo:                                            ; preds = %bb.bn
  %i.jm = extractvalue { double, double } %i.jl, 0 ; 3 uses
  %i.jn = extractvalue { double, double } %i.jl, 1 ; 3 uses
  %i.jo = fmul double %i.hg, %i.jm
  %i.jp = fmul double %i.hh, %i.jn
  %i.jq = fmul double %i.hg, %i.jn
  %i.jr = fmul double %i.hh, %i.jm
  %17 = fsub double %i.jo, %i.jp                  ; 3 uses
  %18 = fadd double %i.jr, %i.jq                  ; 3 uses
  %i.js = fcmp uno double %17, 0.000000e+00
  br i1 %i.js, label %bb.bp, label %bb.br, !prof !171

bb.bp:                                            ; preds = %bb.bo
  %i.jt = fcmp uno double %18, 0.000000e+00
  br i1 %i.jt, label %bb.bq, label %bb.br, !prof !171

bb.bq:                                            ; preds = %bb.bp
  %i.ju = call noundef { double, double } @__muldc3(double noundef %i.hg, double noundef %i.hh, double noundef %i.jm, double noundef %i.jn) #17 ; 2 uses
  %i.jv = extractvalue { double, double } %i.ju, 0
  %i.jw = extractvalue { double, double } %i.ju, 1
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp, %bb.bo
  %i.jx = phi double [ %17, %bb.bo ], [ %17, %bb.bp ], [ %i.jv, %bb.bq ] ; 2 uses
  %i.jy = phi double [ %18, %bb.bo ], [ %18, %bb.bp ], [ %i.jw, %bb.bq ] ; 2 uses
  %i.jz = load ptr, ptr %16, align 8, !tbaa !14   ; 3 uses
  %.not.i.i.i122 = icmp eq ptr %i.jz, null
  br i1 %.not.i.i.i122, label %_ZNSt6vectorIiSaIiEED2Ev.exit123, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ka = load ptr, ptr %i.as, align 8, !tbaa !16
  %i.kb = ptrtoint ptr %i.ka to i64
  %i.kc = ptrtoint ptr %i.jz to i64
  %i.kd = sub i64 %i.kb, %i.kc
  call void @_ZdlPvm(ptr noundef nonnull %i.jz, i64 noundef %i.kd) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit123

_ZNSt6vectorIiSaIiEED2Ev.exit123:                 ; preds = %bb.br, %bb.bs
  %i.ke = load ptr, ptr %15, align 8, !tbaa !14   ; 3 uses
  %.not.i.i.i124 = icmp eq ptr %i.ke, null
  br i1 %.not.i.i.i124, label %_ZNSt6vectorIiSaIiEED2Ev.exit125, label %bb.bt

bb.bt:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit123
  %i.kf = load ptr, ptr %i.ap, align 8, !tbaa !16
  %i.kg = ptrtoint ptr %i.kf to i64
  %i.kh = ptrtoint ptr %i.ke to i64
  %i.ki = sub i64 %i.kg, %i.kh
  call void @_ZdlPvm(ptr noundef nonnull %i.ke, i64 noundef %i.ki) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit125

_ZNSt6vectorIiSaIiEED2Ev.exit125:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit123, %bb.bt
  %i.kj = load ptr, ptr %14, align 8, !tbaa !14   ; 3 uses
  %.not.i.i.i126 = icmp eq ptr %i.kj, null
  br i1 %.not.i.i.i126, label %_ZNSt6vectorIiSaIiEED2Ev.exit127, label %bb.bu

bb.bu:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit125
  %i.kk = load ptr, ptr %i.am, align 8, !tbaa !16
  %i.kl = ptrtoint ptr %i.kk to i64
  %i.km = ptrtoint ptr %i.kj to i64
  %i.kn = sub i64 %i.kl, %i.km
  call void @_ZdlPvm(ptr noundef nonnull %i.kj, i64 noundef %i.kn) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit127

_ZNSt6vectorIiSaIiEED2Ev.exit127:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit125, %bb.bu
  %19 = load <2 x double>, ptr %.sroa.0171.0303, align 8 ; 4 uses
  %20 = insertelement <2 x double> poison, double %i.jy, i64 0
  %21 = shufflevector <2 x double> %20, <2 x double> poison, <2 x i32> zeroinitializer
  %22 = shufflevector <2 x double> %19, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %23 = fmul <2 x double> %21, %22                ; 2 uses
  %24 = insertelement <2 x double> poison, double %i.jx, i64 0
  %25 = shufflevector <2 x double> %24, <2 x double> poison, <2 x i32> zeroinitializer
  %26 = fmul <2 x double> %25, %19                ; 2 uses
  %27 = fsub <2 x double> %26, %23                ; 2 uses
  %28 = fadd <2 x double> %26, %23                ; 2 uses
  %29 = shufflevector <2 x double> %27, <2 x double> %28, <2 x i32> <i32 0, i32 3> ; 2 uses
  %30 = extractelement <2 x double> %27, i64 0
  %i.ko = fcmp uno double %30, 0.000000e+00
  br i1 %i.ko, label %bb.bv, label %bb.bx, !prof !171

bb.bv:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit127
  %31 = extractelement <2 x double> %28, i64 1
  %i.kp = fcmp uno double %31, 0.000000e+00
  br i1 %i.kp, label %bb.bw, label %bb.bx, !prof !171

bb.bw:                                            ; preds = %bb.bv
  %32 = extractelement <2 x double> %19, i64 0
  %33 = extractelement <2 x double> %19, i64 1
  %i.kq = call noundef { double, double } @__muldc3(double noundef %32, double noundef %33, double noundef %i.jx, double noundef %i.jy) #17 ; 2 uses
  %i.kr = extractvalue { double, double } %i.kq, 0
  %i.ks = extractvalue { double, double } %i.kq, 1
  %34 = insertelement <2 x double> poison, double %i.kr, i64 0
  %35 = insertelement <2 x double> %34, double %i.ks, i64 1
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv, %_ZNSt6vectorIiSaIiEED2Ev.exit127
  %36 = phi <2 x double> [ %29, %_ZNSt6vectorIiSaIiEED2Ev.exit127 ], [ %29, %bb.bv ], [ %35, %bb.bw ]
  %i.kt = fadd <2 x double> %36, %i.dr            ; 3 uses
  store <2 x double> %i.kt, ptr %3, align 16
  %i.ku = load ptr, ptr %i.ad, align 8, !tbaa !14 ; 3 uses
  %.not.i.i.i.i134 = icmp eq ptr %i.ku, null
  br i1 %.not.i.i.i.i134, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.kv = load ptr, ptr %i.at, align 8, !tbaa !16
  %i.kw = ptrtoint ptr %i.kv to i64
  %i.kx = ptrtoint ptr %i.ku to i64
  %i.ky = sub i64 %i.kw, %i.kx
  call void @_ZdlPvm(ptr noundef nonnull %i.ku, i64 noundef %i.ky) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i:                  ; preds = %bb.by, %bb.bx
  %i.kz = load ptr, ptr %10, align 8, !tbaa !14   ; 3 uses
  %.not.i.i.i.1.i = icmp eq ptr %i.kz, null
  br i1 %.not.i.i.i.1.i, label %_ZNSt5arrayISt6vectorIiSaIiEELm2EED2Ev.exit, label %bb.bz

bb.bz:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.la = load ptr, ptr %i.au, align 8, !tbaa !16
  %i.lb = ptrtoint ptr %i.la to i64
  %i.lc = ptrtoint ptr %i.kz to i64
  %i.ld = sub i64 %i.lb, %i.lc
  call void @_ZdlPvm(ptr noundef nonnull %i.kz, i64 noundef %i.ld) #20
  br label %_ZNSt5arrayISt6vectorIiSaIiEELm2EED2Ev.exit

_ZNSt5arrayISt6vectorIiSaIiEELm2EED2Ev.exit:      ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  %i.le = load ptr, ptr %i.z, align 8, !tbaa !14  ; 3 uses
  %.not.i.i.i.i135 = icmp eq ptr %i.le, null
  br i1 %.not.i.i.i.i135, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i136, label %bb.ca

bb.ca:                                            ; preds = %_ZNSt5arrayISt6vectorIiSaIiEELm2EED2Ev.exit
  %i.lf = load ptr, ptr %i.av, align 8, !tbaa !16
  %i.lg = ptrtoint ptr %i.lf to i64
  %i.lh = ptrtoint ptr %i.le to i64
  %i.li = sub i64 %i.lg, %i.lh
  call void @_ZdlPvm(ptr noundef nonnull %i.le, i64 noundef %i.li) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i136

_ZNSt6vectorIiSaIiEED2Ev.exit.i136:               ; preds = %bb.ca, %_ZNSt5arrayISt6vectorIiSaIiEELm2EED2Ev.exit
  %i.lj = load ptr, ptr %8, align 8, !tbaa !14    ; 3 uses
  %.not.i.i.i.1.i137 = icmp eq ptr %i.lj, null
  br i1 %.not.i.i.i.1.i137, label %_ZNSt5arrayISt6vectorIiSaIiEELm2EED2Ev.exit138, label %bb.cb

bb.cb:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i136
  %i.lk = load ptr, ptr %i.aw, align 8, !tbaa !16
  %i.ll = ptrtoint ptr %i.lk to i64
  %i.lm = ptrtoint ptr %i.lj to i64
  %i.ln = sub i64 %i.ll, %i.lm
  call void @_ZdlPvm(ptr noundef nonnull %i.lj, i64 noundef %i.ln) #20
  br label %_ZNSt5arrayISt6vectorIiSaIiEELm2EED2Ev.exit138

_ZNSt5arrayISt6vectorIiSaIiEELm2EED2Ev.exit138:   ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i136, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  %i.lo = load ptr, ptr %i.v, align 8, !tbaa !14  ; 3 uses
  %.not.i.i.i.i139 = icmp eq ptr %i.lo, null
  br i1 %.not.i.i.i.i139, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i140, label %bb.cc

bb.cc:                                            ; preds = %_ZNSt5arrayISt6vectorIiSaIiEELm2EED2Ev.exit138
  %i.lp = load ptr, ptr %i.ax, align 8, !tbaa !16
  %i.lq = ptrtoint ptr %i.lp to i64
  %i.lr = ptrtoint ptr %i.lo to i64
  %i.ls = sub i64 %i.lq, %i.lr
  call void @_ZdlPvm(ptr noundef nonnull %i.lo, i64 noundef %i.ls) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i140

_ZNSt6vectorIiSaIiEED2Ev.exit.i140:               ; preds = %bb.cc, %_ZNSt5arrayISt6vectorIiSaIiEELm2EED2Ev.exit138
  %i.lt = load ptr, ptr %6, align 8, !tbaa !14    ; 3 uses
  %.not.i.i.i.1.i141 = icmp eq ptr %i.lt, null
  br i1 %.not.i.i.i.1.i141, label %_ZNSt5arrayISt6vectorIiSaIiEELm2EED2Ev.exit142, label %bb.cd

bb.cd:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i140
  %i.lu = load ptr, ptr %i.ay, align 8, !tbaa !16
  %i.lv = ptrtoint ptr %i.lu to i64
  %i.lw = ptrtoint ptr %i.lt to i64
  %i.lx = sub i64 %i.lv, %i.lw
  call void @_ZdlPvm(ptr noundef nonnull %i.lt, i64 noundef %i.lx) #20
  br label %_ZNSt5arrayISt6vectorIiSaIiEELm2EED2Ev.exit142

_ZNSt5arrayISt6vectorIiSaIiEELm2EED2Ev.exit142:   ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i140, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.ly = load ptr, ptr %i.r, align 8, !tbaa !14  ; 3 uses
  %.not.i.i.i.i143 = icmp eq ptr %i.ly, null
  br i1 %.not.i.i.i.i143, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i144, label %bb.ce

bb.ce:                                            ; preds = %_ZNSt5arrayISt6vectorIiSaIiEELm2EED2Ev.exit142
  %i.lz = load ptr, ptr %i.az, align 8, !tbaa !16
  %i.ma = ptrtoint ptr %i.lz to i64
  %i.mb = ptrtoint ptr %i.ly to i64
  %i.mc = sub i64 %i.ma, %i.mb
  call void @_ZdlPvm(ptr noundef nonnull %i.ly, i64 noundef %i.mc) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i144

_ZNSt6vectorIiSaIiEED2Ev.exit.i144:               ; preds = %bb.ce, %_ZNSt5arrayISt6vectorIiSaIiEELm2EED2Ev.exit142
  %i.md = load ptr, ptr %i.q, align 8, !tbaa !14  ; 3 uses
  %.not.i.i.i.1.i145 = icmp eq ptr %i.md, null
  br i1 %.not.i.i.i.1.i145, label %_ZNSt6vectorIiSaIiEED2Ev.exit.1.i, label %bb.cf

bb.cf:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i144
  %i.me = load ptr, ptr %i.ba, align 8, !tbaa !16
  %i.mf = ptrtoint ptr %i.me to i64
  %i.mg = ptrtoint ptr %i.md to i64
  %i.mh = sub i64 %i.mf, %i.mg
  call void @_ZdlPvm(ptr noundef nonnull %i.md, i64 noundef %i.mh) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.1.i

_ZNSt6vectorIiSaIiEED2Ev.exit.1.i:                ; preds = %bb.cf, %_ZNSt6vectorIiSaIiEED2Ev.exit.i144
  %i.mi = load ptr, ptr %5, align 8, !tbaa !14    ; 3 uses
  %.not.i.i.i.2.i = icmp eq ptr %i.mi, null
  br i1 %.not.i.i.i.2.i, label %_ZNSt5arrayISt6vectorIiSaIiEELm3EED2Ev.exit, label %bb.cg

bb.cg:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.1.i
  %i.mj = load ptr, ptr %i.bb, align 8, !tbaa !16
  %i.mk = ptrtoint ptr %i.mj to i64
  %i.ml = ptrtoint ptr %i.mi to i64
  %i.mm = sub i64 %i.mk, %i.ml
  call void @_ZdlPvm(ptr noundef nonnull %i.mi, i64 noundef %i.mm) #20
  br label %_ZNSt5arrayISt6vectorIiSaIiEELm3EED2Ev.exit

_ZNSt5arrayISt6vectorIiSaIiEELm3EED2Ev.exit:      ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.1.i, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.mn = getelementptr inbounds nuw i8, ptr %.sroa.0171.0303, i64 32 ; 2 uses
  %.not181 = icmp eq ptr %i.mn, %i.do
  br i1 %.not181, label %._crit_edge306, label %.lr.ph305

bb.ch:                                            ; preds = %.lr.ph305
  %i.mo = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

.loopexit:                                        ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit147

.loopexit.split-lp:                               ; preds = %.noexc.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit147

bb.ci:                                            ; preds = %bb.v
  %i.mp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mq = load ptr, ptr %7, align 8, !tbaa !14    ; 3 uses
  %.not.i.i.i146 = icmp eq ptr %i.mq, null
  br i1 %.not.i.i.i146, label %_ZNSt6vectorIiSaIiEED2Ev.exit147, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.mr = load ptr, ptr %i.u, align 8, !tbaa !16
  %i.ms = ptrtoint ptr %i.mr to i64
  %i.mt = ptrtoint ptr %i.mq to i64
  %i.mu = sub i64 %i.ms, %i.mt
  call void @_ZdlPvm(ptr noundef nonnull %i.mq, i64 noundef %i.mu) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit147

.loopexit182:                                     ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i73
  %lpad.loopexit184 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit149

.loopexit.split-lp183:                            ; preds = %.noexc.i.i74
  %lpad.loopexit.split-lp185 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit149

bb.ck:                                            ; preds = %bb.ac
  %i.mv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mw = load ptr, ptr %9, align 8, !tbaa !14    ; 3 uses
  %.not.i.i.i148 = icmp eq ptr %i.mw, null
  br i1 %.not.i.i.i148, label %_ZNSt6vectorIiSaIiEED2Ev.exit149, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.mx = load ptr, ptr %i.y, align 8, !tbaa !16
  %i.my = ptrtoint ptr %i.mx to i64
  %i.mz = ptrtoint ptr %i.mw to i64
  %i.na = sub i64 %i.my, %i.mz
  call void @_ZdlPvm(ptr noundef nonnull %i.mw, i64 noundef %i.na) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit149

.loopexit187:                                     ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i81
  %lpad.loopexit189 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit151

.loopexit.split-lp188:                            ; preds = %.noexc.i.i82
  %lpad.loopexit.split-lp190 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit151

bb.cm:                                            ; preds = %bb.aj
  %i.nb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nc = load ptr, ptr %11, align 8, !tbaa !14   ; 3 uses
  %.not.i.i.i150 = icmp eq ptr %i.nc, null
  br i1 %.not.i.i.i150, label %_ZNSt6vectorIiSaIiEED2Ev.exit151, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.nd = load ptr, ptr %i.ac, align 8, !tbaa !16
end_hunk_1
