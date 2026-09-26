Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/hardwaretopology?download=true
inline.NumInlined: 1751
inline.NumDeleted: 847
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN3gmx12_GLOBAL__N_142translateCpuInfoLogicalProcessorsToMachineENS_8ArrayRefIKNS_7CpuInfo16LogicalProcessorEEEPNS_16HardwareTopology7MachineE:bb.a
bb.aq:                                            ; preds = %bb.ar
  %i.go = icmp eq i32 %i.gh, %i.gr
  br i1 %i.go, label %.loopexit286, label %.lr.ph.i.i.i.i139, !llvm.loop !275

.lr.ph.i.i.i.i139:                                ; preds = %bb.ap, %bb.aq
  %.020.i.i.i.i140 = phi ptr [ %i.gp, %bb.aq ], [ %i.gk, %bb.ap ]
  %i.gp = load ptr, ptr %.020.i.i.i.i140, align 8, !tbaa !135 ; 4 uses
  %.not18.i.i.i.i141 = icmp eq ptr %i.gp, null
  br i1 %.not18.i.i.i.i141, label %.loopexit.i.i144, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.i.i.i.i139
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !113 ; 2 uses
  %i.gs = sext i32 %i.gr to i64
  %i.gt = urem i64 %i.gs, %i.gg
  %.not19.i.i.i.i142 = icmp eq i64 %i.gt, %.pre-phi406
  br i1 %.not19.i.i.i.i142, label %bb.aq, label %..loopexit_crit_edge21.i.i.i.i143, !llvm.loop !275

..loopexit_crit_edge21.i.i.i.i143:                ; preds = %bb.ar
  br label %.loopexit.i.i144, !llvm.loop !275

.loopexit.i.i144:                                 ; preds = %.lr.ph.i.i.i.i139, %..loopexit_crit_edge21.i.i.i.i143, %.loopexit287
  %i.gu = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #26
          to label %.noexc148 unwind label %bb.aa ; 5 uses

.noexc148:                                        ; preds = %.loopexit.i.i144
  store ptr null, ptr %i.gu, align 8, !tbaa !135
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %i.gw = load i32, ptr %i.ff, align 4, !tbaa !113
  store i32 %i.gw, ptr %i.gv, align 8, !tbaa !290
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gu, i64 12
  store i32 0, ptr %i.gx, align 4, !tbaa !291
  %i.gy = invoke ptr @_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.fe, i64 noundef %.pre-phi406, i64 noundef %.pre-phi404, ptr noundef nonnull %i.gu, i64 noundef 1)
          to label %.noexc148..loopexit286_crit_edge unwind label %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i145

.noexc148..loopexit286_crit_edge:                 ; preds = %.noexc148
  %.pre387.pre = load ptr, ptr %6, align 8, !tbaa !140
  br label %.loopexit286

_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i145: ; preds = %.noexc148
  %i.gz = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.gu, i64 noundef 16) #22
  br label %.body99

.loopexit286:                                     ; preds = %bb.aq, %.noexc148..loopexit286_crit_edge, %bb.ap
  %.pre387 = phi ptr [ %.pre387.pre, %.noexc148..loopexit286_crit_edge ], [ %i.fd, %bb.ap ], [ %i.fd, %bb.aq ]
  %.pn.i.i146 = phi ptr [ %i.gy, %.noexc148..loopexit286_crit_edge ], [ %i.gk, %bb.ap ], [ %i.gp, %bb.aq ]
  %.1.i.i147 = getelementptr inbounds nuw i8, ptr %.pn.i.i146, i64 12
  %i.ha = trunc i64 %i.fh to i32
  store i32 %i.ha, ptr %.1.i.i147, align 4, !tbaa !113
  %.pre388 = load i32, ptr %i.ff, align 4, !tbaa !113
  br label %_ZNSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEE4findERS5_.exit137

_ZNSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEE4findERS5_.exit137: ; preds = %bb.an, %bb.ak, %bb.am, %.loopexit286
  %i.hb = phi i32 [ %i.fj, %bb.ak ], [ %.pre388, %.loopexit286 ], [ %i.fn, %bb.am ], [ %i.fn, %bb.an ] ; 3 uses
  %i.hc = phi ptr [ %i.fd, %bb.ak ], [ %.pre387, %.loopexit286 ], [ %i.fd, %bb.am ], [ %i.fd, %bb.an ]
  %i.hd = getelementptr inbounds nuw [56 x i8], ptr %i.hc, i64 %i.db ; 3 uses
  %i.he = sext i32 %i.hb to i64                   ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !128 ; 2 uses
  %i.hh = urem i64 %i.he, %i.hg                   ; 3 uses
  %i.hi = load ptr, ptr %i.hd, align 8, !tbaa !127
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %i.hh
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !136 ; 2 uses
  %.not.i.i.i.i152 = icmp eq ptr %i.hk, null
  br i1 %.not.i.i.i.i152, label %.loopexit.i.i158, label %bb.as

bb.as:                                            ; preds = %_ZNSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEE4findERS5_.exit137
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !135 ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !113
  %i.ho = icmp eq i32 %i.hb, %i.hn
  br i1 %i.ho, label %.loopexit285, label %.lr.ph.i.i.i.i153

bb.at:                                            ; preds = %bb.au
  %i.hp = icmp eq i32 %i.hb, %i.hs
  br i1 %i.hp, label %.loopexit285, label %.lr.ph.i.i.i.i153, !llvm.loop !275

.lr.ph.i.i.i.i153:                                ; preds = %bb.as, %bb.at
  %.020.i.i.i.i154 = phi ptr [ %i.hq, %bb.at ], [ %i.hl, %bb.as ]
  %i.hq = load ptr, ptr %.020.i.i.i.i154, align 8, !tbaa !135 ; 4 uses
  %.not18.i.i.i.i155 = icmp eq ptr %i.hq, null
  br i1 %.not18.i.i.i.i155, label %.loopexit.i.i158, label %bb.au

bb.au:                                            ; preds = %.lr.ph.i.i.i.i153
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !113 ; 2 uses
  %i.ht = sext i32 %i.hs to i64
  %i.hu = urem i64 %i.ht, %i.hg
  %.not19.i.i.i.i156 = icmp eq i64 %i.hu, %i.hh
  br i1 %.not19.i.i.i.i156, label %bb.at, label %..loopexit_crit_edge21.i.i.i.i157, !llvm.loop !275

..loopexit_crit_edge21.i.i.i.i157:                ; preds = %bb.au
  br label %.loopexit.i.i158, !llvm.loop !275

.loopexit.i.i158:                                 ; preds = %.lr.ph.i.i.i.i153, %..loopexit_crit_edge21.i.i.i.i157, %_ZNSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEE4findERS5_.exit137
  %i.hv = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #26
          to label %.noexc162 unwind label %bb.ba ; 5 uses

.noexc162:                                        ; preds = %.loopexit.i.i158
  store ptr null, ptr %i.hv, align 8, !tbaa !135
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %i.hx = load i32, ptr %i.ff, align 4, !tbaa !113
  store i32 %i.hx, ptr %i.hw, align 8, !tbaa !290
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hv, i64 12
  store i32 0, ptr %i.hy, align 4, !tbaa !291
  %i.hz = invoke ptr @_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.hd, i64 noundef %i.hh, i64 noundef %i.he, ptr noundef nonnull %i.hv, i64 noundef 1)
          to label %.loopexit285 unwind label %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i159

_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i159: ; preds = %.noexc162
  %i.ia = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.hv, i64 noundef 16) #22
  br label %.body99

.loopexit285:                                     ; preds = %bb.at, %.noexc162, %bb.as
  %.pn.i.i160 = phi ptr [ %i.hz, %.noexc162 ], [ %i.hl, %bb.as ], [ %i.hq, %bb.at ]
  %.1.i.i161 = getelementptr inbounds nuw i8, ptr %.pn.i.i160, i64 12
  %i.ib = load i32, ptr %.1.i.i161, align 4, !tbaa !113 ; 2 uses
  %i.ic = load ptr, ptr %i.i, align 8, !tbaa !143
  %i.id = getelementptr inbounds nuw [32 x i8], ptr %i.ic, i64 %i.db ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 8 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.id, i64 16 ; 2 uses
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !147 ; 3 uses
  %i.ih = load ptr, ptr %i.ie, align 8, !tbaa !146 ; 3 uses
  %i.ii = ptrtoint ptr %i.ig to i64
  %i.ij = ptrtoint ptr %i.ih to i64
  %i.ik = sub i64 %i.ii, %i.ij
  %i.il = ashr exact i64 %i.ik, 5                 ; 4 uses
  %i.im = sext i32 %i.ib to i64                   ; 3 uses
  %.not86 = icmp ugt i64 %i.il, %i.im
  br i1 %.not86, label %bb.bb, label %bb.av

bb.av:                                            ; preds = %.loopexit285
  %i.in = add nsw i32 %i.ib, 1
  %i.io = sext i32 %i.in to i64                   ; 4 uses
  %i.ip = icmp ult i64 %i.il, %i.io
  br i1 %i.ip, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.iq = sub nuw nsw i64 %i.io, %i.il
  invoke void @_ZNSt6vectorIN3gmx16HardwareTopology4CoreESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ie, i64 noundef %i.iq)
          to label %_ZNSt6vectorIN3gmx16HardwareTopology4CoreESaIS2_EE6resizeEm.exit unwind label %bb.ba

bb.ax:                                            ; preds = %bb.av
  %i.ir = icmp ugt i64 %i.il, %i.io
  br i1 %i.ir, label %bb.ay, label %_ZNSt6vectorIN3gmx16HardwareTopology4CoreESaIS2_EE6resizeEm.exit

bb.ay:                                            ; preds = %bb.ax
  %i.is = getelementptr inbounds nuw [32 x i8], ptr %i.ih, i64 %i.io ; 3 uses
  %.not.i.i166 = icmp eq ptr %i.ig, %i.is
  br i1 %.not.i.i166, label %_ZNSt6vectorIN3gmx16HardwareTopology4CoreESaIS2_EE6resizeEm.exit, label %.lr.ph.i.i.i.i167

.lr.ph.i.i.i.i167:                                ; preds = %bb.ay, %_ZSt8_DestroyIN3gmx16HardwareTopology4CoreEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i168 = phi ptr [ %i.ja, %_ZSt8_DestroyIN3gmx16HardwareTopology4CoreEEvPT_.exit.i.i.i.i ], [ %i.is, %bb.ay ] ; 3 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i168, i64 8
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !150 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i169 = icmp eq ptr %i.iu, null
  br i1 %.not.i.i.i.i.i.i.i.i.i169, label %_ZSt8_DestroyIN3gmx16HardwareTopology4CoreEEvPT_.exit.i.i.i.i, label %bb.az

bb.az:                                            ; preds = %.lr.ph.i.i.i.i167
  %i.iv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i168, i64 24
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !151
  %i.ix = ptrtoint ptr %i.iw to i64
  %i.iy = ptrtoint ptr %i.iu to i64
  %i.iz = sub i64 %i.ix, %i.iy
  call void @_ZdlPvm(ptr noundef nonnull %i.iu, i64 noundef %i.iz) #22
  br label %_ZSt8_DestroyIN3gmx16HardwareTopology4CoreEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN3gmx16HardwareTopology4CoreEEvPT_.exit.i.i.i.i: ; preds = %bb.az, %.lr.ph.i.i.i.i167
  %i.ja = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i168, i64 32 ; 2 uses
  %.not.i.i.i.i170 = icmp eq ptr %i.ja, %i.ig
  br i1 %.not.i.i.i.i170, label %_ZSt8_DestroyIPN3gmx16HardwareTopology4CoreES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i167, !llvm.loop !5

_ZSt8_DestroyIPN3gmx16HardwareTopology4CoreES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIN3gmx16HardwareTopology4CoreEEvPT_.exit.i.i.i.i
  store ptr %i.is, ptr %i.if, align 8, !tbaa !147
  br label %_ZNSt6vectorIN3gmx16HardwareTopology4CoreESaIS2_EE6resizeEm.exit

_ZNSt6vectorIN3gmx16HardwareTopology4CoreESaIS2_EE6resizeEm.exit: ; preds = %_ZSt8_DestroyIPN3gmx16HardwareTopology4CoreES2_EvT_S4_RSaIT0_E.exit.i.i, %bb.ay, %bb.ax, %bb.aw
  %i.jb = load ptr, ptr %i.i, align 8, !tbaa !143
  %i.jc = getelementptr inbounds nuw [32 x i8], ptr %i.jb, i64 %i.db
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !146 ; 2 uses
  %i.jf = getelementptr inbounds nuw [32 x i8], ptr %i.je, i64 %i.im
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 4
  store i32 -1, ptr %i.jg, align 4, !tbaa !296
  br label %bb.bb

bb.ba:                                            ; preds = %bb.aw, %.loopexit.i.i158
  %i.jh = landingpad { ptr, i32 }
          cleanup
  br label %.body99

bb.bb:                                            ; preds = %_ZNSt6vectorIN3gmx16HardwareTopology4CoreESaIS2_EE6resizeEm.exit, %.loopexit285
  %i.ji = phi ptr [ %i.je, %_ZNSt6vectorIN3gmx16HardwareTopology4CoreESaIS2_EE6resizeEm.exit ], [ %i.ih, %.loopexit285 ]
  %i.jj = getelementptr inbounds nuw [32 x i8], ptr %i.ji, i64 %i.im ; 3 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 8 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %.sroa.0277.0328, i64 12
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !297 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jj, i64 16 ; 4 uses
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !298 ; 3 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jj, i64 24 ; 3 uses
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !151
  %.not.i.i172 = icmp eq ptr %i.jo, %i.jq
  br i1 %.not.i.i172, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %.sroa.6260.0.insert.ext = zext i32 %i.jm to i64
  %.sroa.6260.0.insert.shift = shl nuw i64 %.sroa.6260.0.insert.ext, 32
  %.sroa.0255.0.insert.insert = or disjoint i64 %.sroa.6260.0.insert.shift, 4294967295
  store i64 %.sroa.0255.0.insert.insert, ptr %i.jo, align 4
  %8 = load ptr, ptr %i.jn, align 8, !tbaa !298
  %i.jr = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.jr, ptr %i.jn, align 8, !tbaa !298
  br label %_ZNSt6vectorIN3gmx16HardwareTopology14ProcessingUnitESaIS2_EE9push_backEOS2_.exit

bb.bd:                                            ; preds = %bb.bb
  %i.js = load ptr, ptr %i.jk, align 8, !tbaa !150 ; 4 uses
  %i.jt = ptrtoint ptr %i.jo to i64
  %i.ju = ptrtoint ptr %i.js to i64               ; 2 uses
  %i.jv = sub i64 %i.jt, %i.ju                    ; 5 uses
  %i.jw = icmp eq i64 %i.jv, 9223372036854775800
  br i1 %i.jw, label %bb.be, label %_ZNKSt6vectorIN3gmx16HardwareTopology14ProcessingUnitESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.be:                                            ; preds = %bb.bd
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #24
          to label %.noexc174 unwind label %.loopexit.split-lp297

.noexc174:                                        ; preds = %bb.be
  unreachable

_ZNKSt6vectorIN3gmx16HardwareTopology14ProcessingUnitESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.bd
  %i.jx = ashr exact i64 %i.jv, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.jx, i64 1)
  %i.jy = add nsw i64 %.sroa.speculated.i.i.i.i, %i.jx ; 2 uses
  %i.jz = icmp ult i64 %i.jy, %i.jx
  %i.ka = call i64 @llvm.umin.i64(i64 %i.jy, i64 1152921504606846975)
  %i.kb = select i1 %i.jz, i64 1152921504606846975, i64 %i.ka ; 3 uses
  %.not.i.i.i.i173 = icmp ne i64 %i.kb, 0
  call void @llvm.assume(i1 %.not.i.i.i.i173)
  %i.kc = shl nuw nsw i64 %i.kb, 3
  %i.kd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kc) #26
          to label %.noexc175 unwind label %.loopexit296 ; 4 uses

.noexc175:                                        ; preds = %_ZNKSt6vectorIN3gmx16HardwareTopology14ProcessingUnitESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ke = getelementptr inbounds i8, ptr %i.kd, i64 %i.jv ; 2 uses
  %.sroa.6260.0.insert.ext262 = zext i32 %i.jm to i64
  %.sroa.6260.0.insert.shift263 = shl nuw i64 %.sroa.6260.0.insert.ext262, 32
  %.sroa.0255.0.insert.insert259 = or disjoint i64 %.sroa.6260.0.insert.shift263, 4294967295
  store i64 %.sroa.0255.0.insert.insert259, ptr %i.ke, align 4
  %i.kf = icmp sgt i64 %i.jv, 0
  br i1 %i.kf, label %bb.bf, label %_ZNSt6vectorIN3gmx16HardwareTopology14ProcessingUnitESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.bf:                                            ; preds = %.noexc175
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.kd, ptr align 4 %i.js, i64 %i.jv, i1 false)
  br label %_ZNSt6vectorIN3gmx16HardwareTopology14ProcessingUnitESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIN3gmx16HardwareTopology14ProcessingUnitESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.bf, %.noexc175
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.js, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIN3gmx16HardwareTopology14ProcessingUnitESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt6vectorIN3gmx16HardwareTopology14ProcessingUnitESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  %i.kh = load ptr, ptr %i.jp, align 8, !tbaa !151
  %i.ki = ptrtoint ptr %i.kh to i64
  %i.kj = sub i64 %i.ki, %i.ju
  call void @_ZdlPvm(ptr noundef nonnull %i.js, i64 noundef %i.kj) #22
  br label %_ZNSt6vectorIN3gmx16HardwareTopology14ProcessingUnitESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN3gmx16HardwareTopology14ProcessingUnitESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.bg, %_ZNSt6vectorIN3gmx16HardwareTopology14ProcessingUnitESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  store ptr %i.kd, ptr %i.jk, align 8, !tbaa !150
  store ptr %i.kg, ptr %i.jn, align 8, !tbaa !298
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %i.kb
  store ptr %i.kk, ptr %i.jp, align 8, !tbaa !151
  br label %_ZNSt6vectorIN3gmx16HardwareTopology14ProcessingUnitESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIN3gmx16HardwareTopology14ProcessingUnitESaIS2_EE9push_backEOS2_.exit: ; preds = %_ZNSt6vectorIN3gmx16HardwareTopology14ProcessingUnitESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.bc
  %i.kl = getelementptr inbounds nuw i8, ptr %.sroa.0277.0328, i64 16 ; 2 uses
  %.not282 = icmp eq ptr %i.kl, %1
  br i1 %.not282, label %._crit_edge, label %bb.i

.loopexit296:                                     ; preds = %_ZNKSt6vectorIN3gmx16HardwareTopology14ProcessingUnitESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit298 = landingpad { ptr, i32 }
          cleanup
  br label %.body99

.loopexit.split-lp297:                            ; preds = %bb.be
  %lpad.loopexit.split-lp299 = landingpad { ptr, i32 }
          cleanup
  br label %.body99

bb.bh:                                            ; preds = %bb.d, %bb.b
  %i.km = phi i1 [ %i.v, %bb.d ], [ true, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21, !noalias !284
  %i.kn = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ko = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !142 ; 2 uses
  %i.kr = load ptr, ptr %i.ko, align 8, !tbaa !143 ; 2 uses
  %.not345 = icmp eq ptr %i.kq, %i.kr
  br i1 %.not345, label %._crit_edge344, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.bh
  %i.ks = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.kx = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.kz = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge338
  %i.la = phi ptr [ %i.kr, %.preheader.lr.ph ], [ %i.na, %._crit_edge338 ] ; 4 uses
  %i.lb = phi ptr [ %i.kq, %.preheader.lr.ph ], [ %i.nb, %._crit_edge338 ]
  %indvars.iv381 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next382, %._crit_edge338 ] ; 6 uses
  %.069343 = phi i32 [ 0, %.preheader.lr.ph ], [ %.170.lcssa, %._crit_edge338 ] ; 2 uses
  %.0341 = phi i32 [ 0, %.preheader.lr.ph ], [ %.1.lcssa, %._crit_edge338 ] ; 2 uses
  %i.lc = getelementptr inbounds nuw [32 x i8], ptr %i.la, i64 %indvars.iv381 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 8
  %i.le = getelementptr inbounds nuw i8, ptr %i.lc, i64 16
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !147
  %i.lg = load ptr, ptr %i.ld, align 8, !tbaa !146 ; 2 uses
  %.not346 = icmp eq ptr %i.lf, %i.lg
  br i1 %.not346, label %._crit_edge338, label %.lr.ph337.preheader

.lr.ph337.preheader:                              ; preds = %.preheader
  %i.lh = trunc nuw nsw i64 %indvars.iv381 to i32
  %i.li = trunc nuw nsw i64 %indvars.iv381 to i32
  br label %.lr.ph337

._crit_edge344:                                   ; preds = %._crit_edge338, %bb.bh
  %i.lj = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !158 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.lk, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i176

.lr.ph.i.i.i.i176:                                ; preds = %._crit_edge344, %.lr.ph.i.i.i.i176
  %.06.i.i.i.i = phi ptr [ %i.ll, %.lr.ph.i.i.i.i176 ], [ %i.lk, %._crit_edge344 ] ; 2 uses
  %i.ll = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !135 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 16) #22
  %.not.i.i.i.i177 = icmp eq ptr %i.ll, null
  br i1 %.not.i.i.i.i177, label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i176, !llvm.loop !7

_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i176, %._crit_edge344
  %i.lm = load ptr, ptr %7, align 8, !tbaa !131
  %i.ln = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.lo = load i64, ptr %i.ln, align 8, !tbaa !132
  %i.lp = shl i64 %i.lo, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.lm, i8 0, i64 %i.lp, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lj, i8 0, i64 16, i1 false)
  %i.lq = load ptr, ptr %7, align 8, !tbaa !131   ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.ls = icmp eq ptr %i.lq, %i.lr
  br i1 %i.ls, label %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEED2Ev.exit, label %bb.bi

bb.bi:                                            ; preds = %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i
  %i.lt = load i64, ptr %i.ln, align 8, !tbaa !132
  %i.lu = shl i64 %i.lt, 3
  call void @_ZdlPvm(ptr noundef %i.lq, i64 noundef %i.lu) #22
  br label %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEED2Ev.exit

_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEED2Ev.exit: ; preds = %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.lv = load ptr, ptr %6, align 8, !tbaa !140   ; 3 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !139 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.lv, %i.lx
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEES9_EvT_SB_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEED2Ev.exit, %_ZSt8_DestroyISt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.mk, %_ZSt8_DestroyISt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEEEvPT_.exit.i.i.i ], [ %i.lv, %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEED2Ev.exit ] ; 6 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !141 ; 2 uses
  %.not5.i.i.i.i.i.i.i.i = icmp eq ptr %i.lz, null
  br i1 %.not5.i.i.i.i.i.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i = phi ptr [ %i.ma, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.lz, %.lr.ph.i.i.i ] ; 2 uses
  %i.ma = load ptr, ptr %.06.i.i.i.i.i.i.i.i, align 8, !tbaa !135 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i.i.i.i, i64 noundef 16) #22
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ma, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !276

_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.mb = load ptr, ptr %.05.i.i.i, align 8, !tbaa !127
  %i.mc = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %i.md = load i64, ptr %i.mc, align 8, !tbaa !128
  %i.me = shl i64 %i.md, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.mb, i8 0, i64 %i.me, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ly, i8 0, i64 16, i1 false)
  %i.mf = load ptr, ptr %.05.i.i.i, align 8, !tbaa !127 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48
  %i.mh = icmp eq ptr %i.mf, %i.mg
  br i1 %i.mh, label %_ZSt8_DestroyISt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEEEvPT_.exit.i.i.i, label %bb.bj

bb.bj:                                            ; preds = %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i.i
  %i.mi = load i64, ptr %i.mc, align 8, !tbaa !128
  %i.mj = shl i64 %i.mi, 3
  call void @_ZdlPvm(ptr noundef %i.mf, i64 noundef %i.mj) #22
  br label %_ZSt8_DestroyISt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEEEvPT_.exit.i.i.i: ; preds = %bb.bj, %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i.i
  %i.mk = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.mk, %i.lx
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !277

_ZSt8_DestroyIPSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %6, align 8, !tbaa !140
  br label %_ZSt8_DestroyIPSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEES9_EvT_SB_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEES9_EvT_SB_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i, %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEED2Ev.exit
  %i.ml = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i ], [ %i.lv, %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ml, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEESaIS9_EED2Ev.exit, label %bb.bk

bb.bk:                                            ; preds = %_ZSt8_DestroyIPSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEES9_EvT_SB_RSaIT0_E.exit.i
  %i.mm = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !159
  %i.mo = ptrtoint ptr %i.mn to i64
  %i.mp = ptrtoint ptr %i.ml to i64
  %i.mq = sub i64 %i.mo, %i.mp
  call void @_ZdlPvm(ptr noundef nonnull %i.ml, i64 noundef %i.mq) #22
  br label %_ZNSt6vectorISt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEESaIS9_EED2Ev.exit

_ZNSt6vectorISt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEESaIS9_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEES9_EvT_SB_RSaIT0_E.exit.i, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.mr = load ptr, ptr %i.d, align 8, !tbaa !141 ; 2 uses
  %.not5.i.i.i.i178 = icmp eq ptr %i.mr, null
  br i1 %.not5.i.i.i.i178, label %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i179

.lr.ph.i.i.i.i179:                                ; preds = %_ZNSt6vectorISt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEESaIS9_EED2Ev.exit, %.lr.ph.i.i.i.i179
  %.06.i.i.i.i180 = phi ptr [ %i.ms, %.lr.ph.i.i.i.i179 ], [ %i.mr, %_ZNSt6vectorISt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEESaIS9_EED2Ev.exit ] ; 2 uses
  %i.ms = load ptr, ptr %.06.i.i.i.i180, align 8, !tbaa !135 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i180, i64 noundef 16) #22
  %.not.i.i.i.i181 = icmp eq ptr %i.ms, null
  br i1 %.not.i.i.i.i181, label %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i179, !llvm.loop !276

_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i179, %_ZNSt6vectorISt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEESaIS9_EED2Ev.exit
  %i.mt = load ptr, ptr %5, align 8, !tbaa !127
  %i.mu = load i64, ptr %i.c, align 8, !tbaa !128
  %i.mv = shl i64 %i.mu, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.mt, i8 0, i64 %i.mv, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.mw = load ptr, ptr %5, align 8, !tbaa !127   ; 2 uses
  %i.mx = icmp eq ptr %i.mw, %i.b
  br i1 %i.mx, label %_ZNSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEED2Ev.exit, label %bb.bl

bb.bl:                                            ; preds = %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i
end_hunk_0
