Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/JitInliner?download=true
inline.NumInlined: 5860
inline.NumDeleted: 2545
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 41
loop-unroll.NumUnrolled: 42
begin_hunk_0_@_ZN4Luau8Bytecode19BytecodeGraphParserIP10lua_TValueE13rebuildBlocksEPKjj:bb.a
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !158
  %i.ba = icmp eq i32 %.071188, %i.az
  br i1 %i.ba, label %_ZNKSt13unordered_mapIjN4Luau8Bytecode4BcOpESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE5countERS8_.exit, label %.lr.ph.i.i.i.i.i

bb.l:                                             ; preds = %bb.m
  %i.bb = icmp eq i32 %.071188, %i.be
  br i1 %i.bb, label %_ZNKSt13unordered_mapIjN4Luau8Bytecode4BcOpESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE5countERS8_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !3

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.k, %bb.l
  %.020.i.i.i.i.i = phi ptr [ %i.bc, %bb.l ], [ %i.ax, %bb.k ]
  %i.bc = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !229 ; 3 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit224, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !158 ; 2 uses
  %i.bf = zext i32 %i.be to i64
  %i.bg = urem i64 %i.bf, %i.as
  %.not19.i.i.i.i.i = icmp eq i64 %i.bg, %i.at
  br i1 %.not19.i.i.i.i.i, label %bb.l, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !3

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.m
  br label %.loopexit224, !llvm.loop !3

.loopexit224:                                     ; preds = %.lr.ph.i.i.i.i.i, %.preheader270, %..loopexit_crit_edge21.i.i.i.i.i, %bb.j
  %i.bh = tail call i32 @_ZN4Luau8Bytecode19BytecodeGraphParserIP10lua_TValueE9makeBlockEj(ptr noundef nonnull align 8 dereferenceable(152) %0, i32 noundef %.071188) ; 11 uses
  %i.bi = icmp slt i32 %.071188, %.0185251
  br i1 %i.bi, label %.preheader, label %_ZNKSt13unordered_mapIjN4Luau8Bytecode4BcOpESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE5countERS8_.exit

.preheader:                                       ; preds = %.loopexit224
  %i.bj = load i64, ptr %i.h, align 8, !tbaa !172
  %.not.not.i.i.i85 = icmp eq i64 %i.bj, 0
  br i1 %.not.not.i.i.i85, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %.loopexit.us
  %.0184.in.us = phi i32 [ %.0184.us, %.loopexit.us ], [ %.071188, %.preheader ]
  %.0184.us = add i32 %.0184.in.us, -1            ; 4 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %.preheader.split.us
  %.sroa.06.0.in.i.i.i95.us = phi ptr [ %i.j, %.preheader.split.us ], [ %.sroa.06.0.i.i.i96.us, %bb.o ]
  %.sroa.06.0.i.i.i96.us = load ptr, ptr %.sroa.06.0.in.i.i.i95.us, align 8, !tbaa !229 ; 3 uses
  %.not.i.i.i97.us = icmp eq ptr %.sroa.06.0.i.i.i96.us, null
  br i1 %.not.i.i.i97.us, label %.loopexit.us, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i96.us, i64 8
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !158
  %i.bm = icmp eq i32 %.0184.us, %i.bl
  br i1 %i.bm, label %.critedge, label %bb.n, !llvm.loop !2

.loopexit.us:                                     ; preds = %bb.n
  %.not.us = icmp eq i32 %.0184.us, 0
  br i1 %.not.us, label %.critedge, label %.preheader.split.us, !llvm.loop !815

.preheader.split:                                 ; preds = %.preheader
  %i.bn = load i64, ptr %i.i, align 8, !tbaa !165 ; 2 uses
  %i.bo = load ptr, ptr %i.g, align 8, !tbaa !164
  br label %bb.p

bb.p:                                             ; preds = %.preheader.split, %.loopexit215
  %.0184.in = phi i32 [ %.0184, %.loopexit215 ], [ %.071188, %.preheader.split ]
  %.0184 = add i32 %.0184.in, -1                  ; 7 uses
  %i.bp = zext i32 %.0184 to i64
  %i.bq = urem i64 %i.bp, %i.bn                   ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bq
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !228 ; 2 uses
  %.not.i.i.i.i.i86 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i.i.i86, label %.loopexit215, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !229 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !158
  %i.bw = icmp eq i32 %.0184, %i.bv
  br i1 %i.bw, label %.critedge, label %.lr.ph.i.i.i.i.i87

bb.r:                                             ; preds = %bb.s
  %i.bx = icmp eq i32 %.0184, %i.ca
  br i1 %i.bx, label %.critedge, label %.lr.ph.i.i.i.i.i87, !llvm.loop !3

.lr.ph.i.i.i.i.i87:                               ; preds = %bb.q, %bb.r
  %.020.i.i.i.i.i88 = phi ptr [ %i.by, %bb.r ], [ %i.bt, %bb.q ]
  %i.by = load ptr, ptr %.020.i.i.i.i.i88, align 8, !tbaa !229 ; 3 uses
  %.not18.i.i.i.i.i89 = icmp eq ptr %i.by, null
  br i1 %.not18.i.i.i.i.i89, label %.loopexit215, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.i87
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !158 ; 2 uses
  %i.cb = zext i32 %i.ca to i64
  %i.cc = urem i64 %i.cb, %i.bn
  %.not19.i.i.i.i.i90 = icmp eq i64 %i.cc, %i.bq
  br i1 %.not19.i.i.i.i.i90, label %bb.r, label %..loopexit_crit_edge21.i.i.i.i.i91, !llvm.loop !3

..loopexit_crit_edge21.i.i.i.i.i91:               ; preds = %bb.s
  br label %.loopexit215, !llvm.loop !3

.loopexit215:                                     ; preds = %.lr.ph.i.i.i.i.i87, %..loopexit_crit_edge21.i.i.i.i.i91, %bb.p
  %.not = icmp eq i32 %.0184, 0
  br i1 %.not, label %.critedge, label %bb.p, !llvm.loop !815

.critedge:                                        ; preds = %.loopexit215, %bb.q, %.loopexit.us, %bb.r, %bb.o
  %.1 = phi i32 [ %.0184, %bb.r ], [ -1, %.loopexit.us ], [ %.0184.us, %bb.o ], [ %.0184, %bb.q ], [ -1, %.loopexit215 ] ; 4 uses
  %i.cd = zext i32 %.1 to i64                     ; 2 uses
  %i.ce = load i64, ptr %i.i, align 8, !tbaa !165 ; 2 uses
  %i.cf = urem i64 %i.cd, %i.ce                   ; 3 uses
  %i.cg = load ptr, ptr %i.g, align 8, !tbaa !164
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.cf
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !228 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i.i, label %.loopexit.i.i, label %bb.t

bb.t:                                             ; preds = %.critedge
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !229 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !158
  %i.cm = icmp eq i32 %.1, %i.cl
  br i1 %i.cm, label %_ZNSt13unordered_mapIjN4Luau8Bytecode4BcOpESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEEixERS8_.exit, label %.lr.ph.i.i.i.i

bb.u:                                             ; preds = %bb.v
  %i.cn = icmp eq i32 %.1, %i.cq
  br i1 %i.cn, label %_ZNSt13unordered_mapIjN4Luau8Bytecode4BcOpESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEEixERS8_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !3

.lr.ph.i.i.i.i:                                   ; preds = %bb.t, %bb.u
  %.020.i.i.i.i = phi ptr [ %i.co, %bb.u ], [ %i.cj, %bb.t ]
  %i.co = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !229 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.co, null
  br i1 %.not18.i.i.i.i, label %.loopexit.i.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !158 ; 2 uses
  %i.cr = zext i32 %i.cq to i64
  %i.cs = urem i64 %i.cr, %i.ce
  %.not19.i.i.i.i = icmp eq i64 %i.cs, %i.cf
  br i1 %.not19.i.i.i.i, label %bb.u, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !3

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.v
  br label %.loopexit.i.i, !llvm.loop !3

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i, %..loopexit_crit_edge21.i.i.i.i, %.critedge
  %i.ct = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #24 ; 5 uses
  store ptr null, ptr %i.ct, align 8, !tbaa !229
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store i32 %.1, ptr %i.cu, align 8, !tbaa !239
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 12
  store i32 0, ptr %i.cv, align 4
  %i.cw = invoke ptr @_ZNSt10_HashtableIjSt4pairIKjN4Luau8Bytecode4BcOpEESaIS5_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.g, i64 noundef %i.cf, i64 noundef %i.cd, ptr noundef nonnull %i.ct, i64 noundef 1)
          to label %_ZNSt13unordered_mapIjN4Luau8Bytecode4BcOpESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEEixERS8_.exit unwind label %_ZNSt10_HashtableIjSt4pairIKjN4Luau8Bytecode4BcOpEESaIS5_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i

common.resume:                                    ; preds = %_ZNSt10_HashtableIjSt4pairIKjN4Luau8Bytecode4BcOpEESaIS5_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i158, %_ZNSt10_HashtableIjSt4pairIKjN4Luau8Bytecode4BcOpEESaIS5_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i147, %_ZNSt10_HashtableIjSt4pairIKjN4Luau8Bytecode4BcOpEESaIS5_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i106, %_ZNSt10_HashtableIjSt4pairIKjN4Luau8Bytecode4BcOpEESaIS5_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i
  %.lcssa336.sink = phi ptr [ %i.jv, %_ZNSt10_HashtableIjSt4pairIKjN4Luau8Bytecode4BcOpEESaIS5_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i158 ], [ %i.ja, %_ZNSt10_HashtableIjSt4pairIKjN4Luau8Bytecode4BcOpEESaIS5_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i147 ], [ %i.gh, %_ZNSt10_HashtableIjSt4pairIKjN4Luau8Bytecode4BcOpEESaIS5_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i106 ], [ %i.ct, %_ZNSt10_HashtableIjSt4pairIKjN4Luau8Bytecode4BcOpEESaIS5_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ]
  %common.resume.op = phi { ptr, i32 } [ %i.jz, %_ZNSt10_HashtableIjSt4pairIKjN4Luau8Bytecode4BcOpEESaIS5_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i158 ], [ %i.je, %_ZNSt10_HashtableIjSt4pairIKjN4Luau8Bytecode4BcOpEESaIS5_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i147 ], [ %i.gl, %_ZNSt10_HashtableIjSt4pairIKjN4Luau8Bytecode4BcOpEESaIS5_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i106 ], [ %i.cx, %_ZNSt10_HashtableIjSt4pairIKjN4Luau8Bytecode4BcOpEESaIS5_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.lcssa336.sink, i64 noundef 16) #25
  resume { ptr, i32 } %common.resume.op

_ZNSt10_HashtableIjSt4pairIKjN4Luau8Bytecode4BcOpEESaIS5_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i: ; preds = %.loopexit.i.i
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt13unordered_mapIjN4Luau8Bytecode4BcOpESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEEixERS8_.exit: ; preds = %bb.u, %bb.t, %.loopexit.i.i
  %.pn.i.i = phi ptr [ %i.cw, %.loopexit.i.i ], [ %i.cj, %bb.t ], [ %i.co, %bb.u ]
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 12
  %i.cy = load i32, ptr %.1.i.i, align 4, !tbaa !48 ; 4 uses
  %i.cz = load ptr, ptr %0, align 8, !tbaa !181, !nonnull !182, !align !183
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.db = lshr i32 %i.cy, 4
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = load ptr, ptr %i.da, align 8, !tbaa !185 ; 2 uses
  %i.de = getelementptr inbounds nuw [136 x i8], ptr %i.dd, i64 %i.dc ; 2 uses
  %i.df = lshr i32 %i.bh, 4
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw [136 x i8], ptr %i.dd, i64 %i.dg ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 56
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 56 ; 2 uses
  %i.dk = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %i.dj, ptr noundef nonnull align 8 dereferenceable(32) %i.di) ; 0 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.de, i64 64 ; 2 uses
  %.promoted.i = load i32, ptr %i.dl, align 8, !tbaa !191
  %.not1.i = icmp eq i32 %.promoted.i, 0
  br i1 %.not1.i, label %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE5clearEv.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZNSt13unordered_mapIjN4Luau8Bytecode4BcOpESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEEixERS8_.exit
  store i32 0, ptr %i.dl, align 8, !tbaa !191
  br label %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE5clearEv.exit

_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE5clearEv.exit: ; preds = %_ZNSt13unordered_mapIjN4Luau8Bytecode4BcOpESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEEixERS8_.exit, %.lr.ph.preheader.i
  tail call void @_ZN4Luau8Bytecode19BytecodeGraphParserIP10lua_TValueE12addSuccessorENS0_4BcOpES5_NS0_15BcBlockEdgeKindE(ptr noundef nonnull align 8 dereferenceable(152) %0, i32 %i.cy, i32 %i.bh, i32 noundef 1)
  %i.dm = load ptr, ptr %i.dj, align 8, !tbaa !195 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dh, i64 64
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !191 ; 2 uses
  %i.dp = zext i32 %i.do to i64
  %.idx = shl nuw nsw i64 %i.dp, 3
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 %.idx
  %.not81248 = icmp eq i32 %i.do, 0
  br i1 %.not81248, label %_ZNKSt13unordered_mapIjN4Luau8Bytecode4BcOpESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE5countERS8_.exit, label %.lr.ph250.preheader

.lr.ph250.preheader:                              ; preds = %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE5clearEv.exit
  %.pre288 = load ptr, ptr %0, align 8, !tbaa !181
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.cy, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph250

.lr.ph250:                                        ; preds = %.lr.ph250.preheader, %._crit_edge
  %.073249.a = phi ptr [ %3, %._crit_edge ], [ %.pre288, %.lr.ph250.preheader ] ; 2 uses
  %.073249 = phi ptr [ %i.fm, %._crit_edge ], [ %i.dm, %.lr.ph250.preheader ] ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.073249, i64 4
  %.sroa.013.0.copyload = load i32, ptr %i.dr, align 4, !tbaa !48
  %i.ds = getelementptr inbounds nuw i8, ptr %.073249.a, i64 8
  %i.dt = lshr i32 %.sroa.013.0.copyload, 4
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = load ptr, ptr %i.ds, align 8, !tbaa !185
  %i.dw = getelementptr inbounds nuw [136 x i8], ptr %i.dv, i64 %i.du ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 88
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !195 ; 11 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 96
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !191 ; 2 uses
  %i.eb = zext i32 %i.ea to i64
  %.idx260 = shl nuw nsw i64 %i.eb, 3             ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dy, i64 %.idx260
  %.not83246 = icmp eq i32 %i.ea, 0
  br i1 %.not83246, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph250
  %i.ed = add nsw i64 %.idx260, -8                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ed, 64
  br i1 %min.iters.check, label %.lr.ph.preheader385, label %vector.ph

.lr.ph.preheader385:                              ; preds = %pred.store.continue383, %.lr.ph.preheader
  %.072247.ph = phi ptr [ %i.dy, %.lr.ph.preheader ], [ %i.ek, %pred.store.continue383 ]
  br label %.lr.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %i.ee = lshr exact i64 %i.ed, 3
  %i.ef = add nuw nsw i64 %i.ee, 1                ; 2 uses
  %i.eg = and i64 %i.ef, 7                        ; 2 uses
  %i.eh = icmp eq i64 %i.eg, 0
  %i.ei = select i1 %i.eh, i64 8, i64 %i.eg
  %n.vec = sub nsw i64 %i.ef, %i.ei               ; 2 uses
  %i.ej = shl i64 %n.vec, 3
  %i.ek = getelementptr i8, ptr %i.dy, i64 %i.ej
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue383, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue383 ] ; 2 uses
  %i.el = shl i64 %index, 3                       ; 8 uses
  %next.gep = getelementptr i8, ptr %i.dy, i64 %i.el
  %i.em = getelementptr i8, ptr %i.dy, i64 %i.el
  %i.en = getelementptr i8, ptr %i.dy, i64 %i.el
  %i.eo = getelementptr i8, ptr %i.dy, i64 %i.el
  %i.ep = getelementptr i8, ptr %i.dy, i64 %i.el
  %i.eq = getelementptr i8, ptr %i.dy, i64 %i.el
  %i.er = getelementptr i8, ptr %i.dy, i64 %i.el
  %i.es = getelementptr i8, ptr %i.dy, i64 %i.el
  %i.et = getelementptr inbounds nuw i8, ptr %next.gep, i64 4 ; 2 uses
  %i.eu = getelementptr i8, ptr %i.ep, i64 36     ; 2 uses
  %wide.vec = load <8 x i32>, ptr %i.et, align 4
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec368 = load <8 x i32>, ptr %i.eu, align 4
  %strided.vec369 = shufflevector <8 x i32> %wide.vec368, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ev = icmp eq <4 x i32> %strided.vec, %broadcast.splat ; 4 uses
  %i.ew = icmp eq <4 x i32> %strided.vec369, %broadcast.splat ; 4 uses
  %i.ex = extractelement <4 x i1> %i.ev, i64 0
  br i1 %i.ex, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i32 %i.bh, ptr %i.et, align 4, !tbaa !48
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.ey = extractelement <4 x i1> %i.ev, i64 1
  br i1 %i.ey, label %pred.store.if370, label %pred.store.continue371

pred.store.if370:                                 ; preds = %pred.store.continue
  %i.ez = getelementptr i8, ptr %i.em, i64 12
  store i32 %i.bh, ptr %i.ez, align 4, !tbaa !48
  br label %pred.store.continue371

pred.store.continue371:                           ; preds = %pred.store.if370, %pred.store.continue
  %i.fa = extractelement <4 x i1> %i.ev, i64 2
  br i1 %i.fa, label %pred.store.if372, label %pred.store.continue373

pred.store.if372:                                 ; preds = %pred.store.continue371
  %i.fb = getelementptr i8, ptr %i.en, i64 20
  store i32 %i.bh, ptr %i.fb, align 4, !tbaa !48
  br label %pred.store.continue373

pred.store.continue373:                           ; preds = %pred.store.if372, %pred.store.continue371
  %i.fc = extractelement <4 x i1> %i.ev, i64 3
  br i1 %i.fc, label %pred.store.if374, label %pred.store.continue375

pred.store.if374:                                 ; preds = %pred.store.continue373
  %i.fd = getelementptr i8, ptr %i.eo, i64 28
  store i32 %i.bh, ptr %i.fd, align 4, !tbaa !48
  br label %pred.store.continue375

pred.store.continue375:                           ; preds = %pred.store.if374, %pred.store.continue373
  %i.fe = extractelement <4 x i1> %i.ew, i64 0
  br i1 %i.fe, label %pred.store.if376, label %pred.store.continue377

pred.store.if376:                                 ; preds = %pred.store.continue375
  store i32 %i.bh, ptr %i.eu, align 4, !tbaa !48
  br label %pred.store.continue377

pred.store.continue377:                           ; preds = %pred.store.if376, %pred.store.continue375
  %i.ff = extractelement <4 x i1> %i.ew, i64 1
  br i1 %i.ff, label %pred.store.if378, label %pred.store.continue379

pred.store.if378:                                 ; preds = %pred.store.continue377
  %i.fg = getelementptr i8, ptr %i.eq, i64 44
  store i32 %i.bh, ptr %i.fg, align 4, !tbaa !48
  br label %pred.store.continue379

pred.store.continue379:                           ; preds = %pred.store.if378, %pred.store.continue377
  %i.fh = extractelement <4 x i1> %i.ew, i64 2
  br i1 %i.fh, label %pred.store.if380, label %pred.store.continue381

pred.store.if380:                                 ; preds = %pred.store.continue379
  %i.fi = getelementptr i8, ptr %i.er, i64 52
  store i32 %i.bh, ptr %i.fi, align 4, !tbaa !48
  br label %pred.store.continue381

pred.store.continue381:                           ; preds = %pred.store.if380, %pred.store.continue379
  %i.fj = extractelement <4 x i1> %i.ew, i64 3
  br i1 %i.fj, label %pred.store.if382, label %pred.store.continue383

pred.store.if382:                                 ; preds = %pred.store.continue381
  %i.fk = getelementptr i8, ptr %i.es, i64 60
  store i32 %i.bh, ptr %i.fk, align 4, !tbaa !48
  br label %pred.store.continue383

pred.store.continue383:                           ; preds = %pred.store.if382, %pred.store.continue381
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fl = icmp eq i64 %index.next, %n.vec
  br i1 %i.fl, label %.lr.ph.preheader385, label %vector.body, !llvm.loop !816

._crit_edge.loopexit:                             ; preds = %bb.x
  %.pre = load ptr, ptr %0, align 8, !tbaa !181
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph250
  %3 = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %.073249.a, %.lr.ph250 ]
  %i.fm = getelementptr inbounds nuw i8, ptr %.073249, i64 8 ; 2 uses
  %.not81 = icmp eq ptr %i.fm, %i.dq
  br i1 %.not81, label %_ZNKSt13unordered_mapIjN4Luau8Bytecode4BcOpESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE5countERS8_.exit, label %.lr.ph250

.lr.ph:                                           ; preds = %.lr.ph.preheader385, %bb.x
  %.072247 = phi ptr [ %i.fq, %bb.x ], [ %.072247.ph, %.lr.ph.preheader385 ] ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.072247, i64 4 ; 2 uses
  %i.fo = load i32, ptr %i.fn, align 4
  %i.fp = icmp eq i32 %i.fo, %i.cy
  br i1 %i.fp, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.lr.ph
  store i32 %i.bh, ptr %i.fn, align 4, !tbaa !48
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.lr.ph
  %i.fq = getelementptr inbounds nuw i8, ptr %.072247, i64 8 ; 2 uses
  %.not83 = icmp eq ptr %i.fq, %i.ec
  br i1 %.not83, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !817

_ZNKSt13unordered_mapIjN4Luau8Bytecode4BcOpESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE5countERS8_.exit: ; preds = %bb.l, %bb.i, %._crit_edge, %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE5clearEv.exit, %bb.k, %.loopexit224
  %i.fr = zext nneg i32 %.071188 to i64           ; 2 uses
  %i.fs = load i64, ptr %i.i, align 8, !tbaa !165 ; 2 uses
  %i.ft = urem i64 %i.fr, %i.fs                   ; 3 uses
  %i.fu = load ptr, ptr %i.g, align 8, !tbaa !164
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %i.ft
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !228 ; 2 uses
  %.not.i.i.i.i99 = icmp eq ptr %i.fw, null
  br i1 %.not.i.i.i.i99, label %.loopexit.i.i105, label %bb.y

bb.y:                                             ; preds = %_ZNKSt13unordered_mapIjN4Luau8Bytecode4BcOpESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE5countERS8_.exit
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !229 ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !158
  %i.ga = icmp eq i32 %.071188, %i.fz
  br i1 %i.ga, label %_ZNSt13unordered_mapIjN4Luau8Bytecode4BcOpESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEEixEOj.exit, label %.lr.ph.i.i.i.i100

bb.z:                                             ; preds = %bb.aa
  %i.gb = icmp eq i32 %.071188, %i.ge
  br i1 %i.gb, label %_ZNSt13unordered_mapIjN4Luau8Bytecode4BcOpESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEEixEOj.exit, label %.lr.ph.i.i.i.i100, !llvm.loop !3

.lr.ph.i.i.i.i100:                                ; preds = %bb.y, %bb.z
  %.020.i.i.i.i101 = phi ptr [ %i.gc, %bb.z ], [ %i.fx, %bb.y ]
  %i.gc = load ptr, ptr %.020.i.i.i.i101, align 8, !tbaa !229 ; 4 uses
  %.not18.i.i.i.i102 = icmp eq ptr %i.gc, null
  br i1 %.not18.i.i.i.i102, label %.loopexit.i.i105, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i100
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !158 ; 2 uses
  %i.gf = zext i32 %i.ge to i64
  %i.gg = urem i64 %i.gf, %i.fs
  %.not19.i.i.i.i103 = icmp eq i64 %i.gg, %i.ft
  br i1 %.not19.i.i.i.i103, label %bb.z, label %..loopexit_crit_edge21.i.i.i.i104, !llvm.loop !3

..loopexit_crit_edge21.i.i.i.i104:                ; preds = %bb.aa
  br label %.loopexit.i.i105, !llvm.loop !3

.loopexit.i.i105:                                 ; preds = %.lr.ph.i.i.i.i100, %..loopexit_crit_edge21.i.i.i.i104, %_ZNKSt13unordered_mapIjN4Luau8Bytecode4BcOpESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE5countERS8_.exit
  %i.gh = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #24 ; 5 uses
  store ptr null, ptr %i.gh, align 8, !tbaa !229
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  store i32 %.071188, ptr %i.gi, align 8, !tbaa !239
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 12
  store i32 0, ptr %i.gj, align 4
  %i.gk = invoke ptr @_ZNSt10_HashtableIjSt4pairIKjN4Luau8Bytecode4BcOpEESaIS5_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.g, i64 noundef %i.ft, i64 noundef %i.fr, ptr noundef nonnull %i.gh, i64 noundef 1)
          to label %_ZNSt13unordered_mapIjN4Luau8Bytecode4BcOpESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEEixEOj.exit unwind label %_ZNSt10_HashtableIjSt4pairIKjN4Luau8Bytecode4BcOpEESaIS5_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i106

_ZNSt10_HashtableIjSt4pairIKjN4Luau8Bytecode4BcOpEESaIS5_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i106: ; preds = %.loopexit.i.i105
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt13unordered_mapIjN4Luau8Bytecode4BcOpESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEEixEOj.exit: ; preds = %bb.z, %bb.y, %.loopexit.i.i105
  %.pn.i.i107 = phi ptr [ %i.gk, %.loopexit.i.i105 ], [ %i.fx, %bb.y ], [ %i.gc, %bb.z ]
  %.1.i.i108 = getelementptr inbounds nuw i8, ptr %.pn.i.i107, i64 12
  %.sroa.06.0.copyload = load i32, ptr %.1.i.i108, align 4, !tbaa !48
  switch i8 %trunc, label %_ZN4Luau10isLoopJumpE10LuauOpcode.exit [
    i8 24, label %bb.ab
    i8 58, label %bb.ab
    i8 57, label %bb.ab
  ]

bb.ab:                                            ; preds = %_ZNSt13unordered_mapIjN4Luau8Bytecode4BcOpESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEEixEOj.exit, %_ZNSt13unordered_mapIjN4Luau8Bytecode4BcOpESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEEixEOj.exit, %_ZNSt13unordered_mapIjN4Luau8Bytecode4BcOpESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEEixEOj.exit
  br label %_ZN4Luau10isLoopJumpE10LuauOpcode.exit

_ZN4Luau10isLoopJumpE10LuauOpcode.exit:           ; preds = %_ZNSt13unordered_mapIjN4Luau8Bytecode4BcOpESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEEixEOj.exit, %bb.ab
  %i.gm = phi i32 [ 2, %bb.ab ], [ 0, %_ZNSt13unordered_mapIjN4Luau8Bytecode4BcOpESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEEixEOj.exit ]
  tail call void @_ZN4Luau8Bytecode19BytecodeGraphParserIP10lua_TValueE12addSuccessorENS0_4BcOpES5_NS0_15BcBlockEdgeKindE(ptr noundef nonnull align 8 dereferenceable(152) %0, i32 %.sroa.055.0255, i32 %.sroa.06.0.copyload, i32 noundef %i.gm)
  br label %.thread193

.thread193:                                       ; preds = %bb.b, %bb.d, %_ZN4Luau10isLoopJumpE10LuauOpcode.exit, %bb.h
  %i.gn = phi i1 [ false, %bb.h ], [ true, %_ZN4Luau10isLoopJumpE10LuauOpcode.exit ], [ false, %bb.b ], [ false, %bb.d ] ; 2 uses
  %i.go = icmp eq i32 %i.n, 22
  br i1 %i.go, label %.split75, label %.split

switch.hole_check:                                ; preds = %.thread
  %switch.maskindex = zext nneg i8 %switch.tableidx to i16
  %switch.shifted = lshr i16 -7935, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %i.gp = icmp eq i32 %i.n, 67
  %or.cond384 = or i1 %i.gp, %switch.lobit
  br i1 %or.cond384, label %.split, label %bb.e

.split:                                           ; preds = %switch.hole_check, %_ZN4Luau10isFastCallE10LuauOpcode.exit, %.thread193
  %i.gq = phi i1 [ %i.gn, %.thread193 ], [ false, %_ZN4Luau10isFastCallE10LuauOpcode.exit ], [ false, %switch.hole_check ]
  %i.gr = tail call noundef i32 @_ZN4Luau11getOpLengthE10LuauOpcode(i32 noundef %i.n)
  br label %bb.ac

.split75:                                         ; preds = %.thread193
  tail call void @_ZN4Luau8Bytecode19BytecodeGraphParserIP10lua_TValueE12addSuccessorENS0_4BcOpES5_NS0_15BcBlockEdgeKindE(ptr noundef nonnull align 8 dereferenceable(152) %0, i32 %.sroa.055.0255, i32 %i.d, i32 noundef 1)
  br label %bb.ac

bb.ac:                                            ; preds = %.split, %.split75
  %i.gs = phi i1 [ false, %.split ], [ true, %.split75 ]
  %i.gt = phi i1 [ %i.gq, %.split ], [ %i.gn, %.split75 ]
  %phi.call = phi i32 [ %i.gr, %.split ], [ 1, %.split75 ]
  %i.gu = add i32 %phi.call, %.0185251            ; 19 uses
  %i.gv = icmp ult i32 %i.gu, %2                  ; 2 uses
  %or.cond = and i1 %i.gs, %i.gv
  %or.cond84 = or i1 %i.gt, %or.cond
  %.pre288.a = load i64, ptr %i.h, align 8, !tbaa !172 ; 2 uses
  br i1 %or.cond84, label %bb.ad, label %_ZNKSt13unordered_mapIjN4Luau8Bytecode4BcOpESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE5countERS8_.exit124

bb.ad:                                            ; preds = %bb.ac
  %.not.not.i.i.i111 = icmp eq i64 %.pre288.a, 0
  br i1 %.not.not.i.i.i111, label %.preheader265, label %bb.af

.preheader265:                                    ; preds = %bb.ad, %bb.ae
  %.sroa.06.0.in.i.i.i121 = phi ptr [ %.sroa.06.0.i.i.i122, %bb.ae ], [ %i.j, %bb.ad ]
  %.sroa.06.0.i.i.i122 = load ptr, ptr %.sroa.06.0.in.i.i.i121, align 8, !tbaa !229 ; 3 uses
  %.not.i.i.i123 = icmp eq ptr %.sroa.06.0.i.i.i122, null
  br i1 %.not.i.i.i123, label %.loopexit220, label %bb.ae

bb.ae:                                            ; preds = %.preheader265
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i122, i64 8
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !158
  %i.gy = icmp eq i32 %i.gu, %i.gx
  br i1 %i.gy, label %.preheader262.preheader, label %.preheader265, !llvm.loop !2

bb.af:                                            ; preds = %bb.ad
  %i.gz = zext i32 %i.gu to i64
  %i.ha = load i64, ptr %i.i, align 8, !tbaa !165 ; 2 uses
  %i.hb = urem i64 %i.gz, %i.ha                   ; 2 uses
  %i.hc = load ptr, ptr %i.g, align 8, !tbaa !164
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %i.hb
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !228 ; 2 uses
  %.not.i.i.i.i.i112 = icmp eq ptr %i.he, null
  br i1 %.not.i.i.i.i.i112, label %.loopexit220, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !229 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !158
  %i.hi = icmp eq i32 %i.gu, %i.hh
  br i1 %i.hi, label %_ZNKSt13unordered_mapIjN4Luau8Bytecode4BcOpESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE5countERS8_.exit124.thread, label %.lr.ph.i.i.i.i.i113

bb.ah:                                            ; preds = %bb.ai
  %i.hj = icmp eq i32 %i.gu, %i.hm
  br i1 %i.hj, label %_ZNKSt13unordered_mapIjN4Luau8Bytecode4BcOpESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE5countERS8_.exit124.thread, label %.lr.ph.i.i.i.i.i113, !llvm.loop !3

.lr.ph.i.i.i.i.i113:                              ; preds = %bb.ag, %bb.ah
  %.020.i.i.i.i.i114 = phi ptr [ %i.hk, %bb.ah ], [ %i.hf, %bb.ag ]
  %i.hk = load ptr, ptr %.020.i.i.i.i.i114, align 8, !tbaa !229 ; 3 uses
  %.not18.i.i.i.i.i115 = icmp eq ptr %i.hk, null
  br i1 %.not18.i.i.i.i.i115, label %.loopexit220, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.i.i.i.i.i113
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !158 ; 2 uses
  %i.hn = zext i32 %i.hm to i64
  %i.ho = urem i64 %i.hn, %i.ha
  %.not19.i.i.i.i.i116 = icmp eq i64 %i.ho, %i.hb
  br i1 %.not19.i.i.i.i.i116, label %bb.ah, label %..loopexit_crit_edge21.i.i.i.i.i117, !llvm.loop !3

..loopexit_crit_edge21.i.i.i.i.i117:              ; preds = %bb.ai
  br label %.loopexit220, !llvm.loop !3

.loopexit220:                                     ; preds = %.lr.ph.i.i.i.i.i113, %.preheader265, %..loopexit_crit_edge21.i.i.i.i.i117, %bb.af
  %i.hp = tail call i32 @_ZN4Luau8Bytecode19BytecodeGraphParserIP10lua_TValueE9makeBlockEj(ptr noundef nonnull align 8 dereferenceable(152) %0, i32 noundef %i.gu) ; 0 uses
  %.pre.a = load i64, ptr %i.h, align 8, !tbaa !172
  br label %_ZNKSt13unordered_mapIjN4Luau8Bytecode4BcOpESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE5countERS8_.exit124

_ZNKSt13unordered_mapIjN4Luau8Bytecode4BcOpESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE5countERS8_.exit124: ; preds = %bb.ac, %.loopexit220
  %i.hq = phi i64 [ %.pre288.a, %bb.ac ], [ %.pre.a, %.loopexit220 ]
  %.not.not.i.i.i125 = icmp eq i64 %i.hq, 0
  br i1 %.not.not.i.i.i125, label %.preheader262.preheader, label %_ZNKSt13unordered_mapIjN4Luau8Bytecode4BcOpESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE5countERS8_.exit124.thread

.preheader262.preheader:                          ; preds = %bb.ae, %_ZNKSt13unordered_mapIjN4Luau8Bytecode4BcOpESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE5countERS8_.exit124
  br label %.preheader262

.preheader262:                                    ; preds = %.preheader262.preheader, %bb.aj
  %.sroa.06.0.in.i.i.i135 = phi ptr [ %.sroa.06.0.i.i.i136, %bb.aj ], [ %i.j, %.preheader262.preheader ]
  %.sroa.06.0.i.i.i136 = load ptr, ptr %.sroa.06.0.in.i.i.i135, align 8, !tbaa !229 ; 3 uses
  %.not.i.i.i137 = icmp eq ptr %.sroa.06.0.i.i.i136, null
  br i1 %.not.i.i.i137, label %_ZNKSt13unordered_mapIjN4Luau8Bytecode4BcOpESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE5countERS8_.exit138.thread, label %bb.aj

bb.aj:                                            ; preds = %.preheader262
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i136, i64 8
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !158
  %i.ht = icmp eq i32 %i.gu, %i.hs
  br i1 %i.ht, label %.loopexit217, label %.preheader262, !llvm.loop !2

_ZNKSt13unordered_mapIjN4Luau8Bytecode4BcOpESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE5countERS8_.exit124.thread: ; preds = %bb.ah, %bb.ag, %_ZNKSt13unordered_mapIjN4Luau8Bytecode4BcOpESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE5countERS8_.exit124
  %i.hu = zext i32 %i.gu to i64
  %i.hv = load i64, ptr %i.i, align 8, !tbaa !165 ; 2 uses
  %i.hw = urem i64 %i.hu, %i.hv                   ; 2 uses
  %i.hx = load ptr, ptr %i.g, align 8, !tbaa !164
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %i.hw
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !228 ; 2 uses
  %.not.i.i.i.i.i126 = icmp eq ptr %i.hz, null
  br i1 %.not.i.i.i.i.i126, label %_ZNKSt13unordered_mapIjN4Luau8Bytecode4BcOpESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE5countERS8_.exit138.thread, label %bb.ak

bb.ak:                                            ; preds = %_ZNKSt13unordered_mapIjN4Luau8Bytecode4BcOpESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE5countERS8_.exit124.thread
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !229 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !158
  %i.id = icmp eq i32 %i.gu, %i.ic
  br i1 %i.id, label %.loopexit217, label %.lr.ph.i.i.i.i.i127
end_hunk_0
begin_hunk_1_@_ZN4Luau8Bytecode11CallInlinerIP10lua_TValueED2Ev:bb.a

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !235
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #25
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4Luau8Bytecode4BcOpESt6vectorIS5_SaIS5_EEELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4Luau8Bytecode4BcOpESt6vectorIS5_SaIS5_EEELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 48) #25
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_St6vectorIS2_SaIS2_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1028

_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_St6vectorIS2_SaIS2_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4Luau8Bytecode4BcOpESt6vectorIS5_SaIS5_EEELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i, %_ZN4Luau12DenseHashMapINS_8Bytecode4BcOpES2_NS1_8BcOpHashESt8equal_toIS2_EED2Ev.exit
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !449
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !450
  %i.q = shl i64 %i.p, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.n, i8 0, i64 %i.q, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !449  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt13unordered_mapIN4Luau8Bytecode4BcOpESt6vectorIS2_SaIS2_EENS1_8BcOpHashESt8equal_toIS2_ESaISt4pairIKS2_S5_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_St6vectorIS2_SaIS2_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  %i.u = load i64, ptr %i.o, align 8, !tbaa !450
  %i.v = shl i64 %i.u, 3
  tail call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #25
  br label %_ZNSt13unordered_mapIN4Luau8Bytecode4BcOpESt6vectorIS2_SaIS2_EENS1_8BcOpHashESt8equal_toIS2_ESaISt4pairIKS2_S5_EEED2Ev.exit

_ZNSt13unordered_mapIN4Luau8Bytecode4BcOpESt6vectorIS2_SaIS2_EENS1_8BcOpHashESt8equal_toIS2_ESaISt4pairIKS2_S5_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_St6vectorIS2_SaIS2_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !536  ; 2 uses
  %.not5.i.i.i.i1 = icmp eq ptr %i.y, null
  br i1 %.not5.i.i.i.i1, label %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS1_8BcOpHashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i2

.lr.ph.i.i.i.i2:                                  ; preds = %_ZNSt13unordered_mapIN4Luau8Bytecode4BcOpESt6vectorIS2_SaIS2_EENS1_8BcOpHashESt8equal_toIS2_ESaISt4pairIKS2_S5_EEED2Ev.exit, %.lr.ph.i.i.i.i2
  %.06.i.i.i.i3 = phi ptr [ %i.z, %.lr.ph.i.i.i.i2 ], [ %i.y, %_ZNSt13unordered_mapIN4Luau8Bytecode4BcOpESt6vectorIS2_SaIS2_EENS1_8BcOpHashESt8equal_toIS2_ESaISt4pairIKS2_S5_EEED2Ev.exit ] ; 2 uses
  %i.z = load ptr, ptr %.06.i.i.i.i3, align 8, !tbaa !229 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i3, i64 noundef 24) #25
  %.not.i.i.i.i4 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i4, label %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS1_8BcOpHashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i2, !llvm.loop !1029

_ZNSt10_HashtableIN4Luau8Bytecode4BcOpES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS1_8BcOpHashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i2, %_ZNSt13unordered_mapIN4Luau8Bytecode4BcOpESt6vectorIS2_SaIS2_EENS1_8BcOpHashESt8equal_toIS2_ESaISt4pairIKS2_S5_EEED2Ev.exit
  %i.aa = load ptr, ptr %i.w, align 8, !tbaa !447
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !448
  %i.ad = shl i64 %i.ac, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.aa, i8 0, i64 %i.ad, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  %i.ae = load ptr, ptr %i.w, align 8, !tbaa !447 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt13unordered_setIN4Luau8Bytecode4BcOpENS1_8BcOpHashESt8equal_toIS2_ESaIS2_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS1_8BcOpHashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i
  %i.ah = load i64, ptr %i.ab, align 8, !tbaa !448
  %i.ai = shl i64 %i.ah, 3
  tail call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #25
  br label %_ZNSt13unordered_setIN4Luau8Bytecode4BcOpENS1_8BcOpHashESt8equal_toIS2_ESaIS2_EED2Ev.exit

_ZNSt13unordered_setIN4Luau8Bytecode4BcOpENS1_8BcOpHashESt8equal_toIS2_ESaIS2_EED2Ev.exit: ; preds = %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS1_8BcOpHashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !234 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt13unordered_setIN4Luau8Bytecode4BcOpENS1_8BcOpHashESt8equal_toIS2_ESaIS2_EED2Ev.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !235
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = sub i64 %i.an, %i.ao
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.ap) #25
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EED2Ev.exit

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EED2Ev.exit: ; preds = %_ZNSt13unordered_setIN4Luau8Bytecode4BcOpENS1_8BcOpHashESt8equal_toIS2_ESaIS2_EED2Ev.exit, %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !234 ; 3 uses
  %.not.i.i.i5 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i5, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EED2Ev.exit6, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EED2Ev.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !235
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.aw) #25
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EED2Ev.exit6

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EED2Ev.exit6: ; preds = %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EED2Ev.exit, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau8Bytecode11CallInlinerIP10lua_TValueE14splitBlockOnOpENS0_4BcOpE(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.416") align 8 %0, ptr noundef nonnull align 8 dereferenceable(264) %1, i32 %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !524, !nonnull !182, !align !183 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = lshr i32 %2, 4
  %i.d = zext nneg i32 %i.c to i64                ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !204
  %i.f = getelementptr inbounds nuw [80 x i8], ptr %i.e, i64 %i.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %.sroa.047.0.copyload = load i32, ptr %i.g, align 4, !tbaa !48 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 11 uses
  %i.i = tail call i32 @_ZN4Luau8Bytecode10BcFunctionIP10lua_TValueE8addBlockEv(ptr noundef nonnull align 8 dereferenceable(456) %i.a) ; 4 uses
  %i.j = lshr i32 %.sroa.047.0.copyload, 4
  %i.k = zext nneg i32 %i.j to i64                ; 7 uses
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !185  ; 2 uses
  %i.m = getelementptr inbounds nuw [136 x i8], ptr %i.l, i64 %i.k
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 120
  %i.o = lshr i32 %i.i, 4
  %i.p = zext nneg i32 %i.o to i64                ; 3 uses
  %i.q = getelementptr inbounds nuw [136 x i8], ptr %i.l, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 120
  %i.s = load <2 x i32>, ptr %i.n, align 8, !tbaa !158
  %i.t = add <2 x i32> %i.s, <i32 0, i32 1>
  store <2 x i32> %i.t, ptr %i.r, align 8, !tbaa !158
  %i.u = load ptr, ptr %1, align 8, !tbaa !524, !nonnull !182, !align !183 ; 2 uses
  %i.v = tail call i32 @_ZN4Luau8Bytecode10BcFunctionIP10lua_TValueE8addBlockEv(ptr noundef nonnull align 8 dereferenceable(456) %i.u) ; 13 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 5 uses
  %i.x = load ptr, ptr %i.h, align 8, !tbaa !185  ; 4 uses
  %i.y = getelementptr inbounds nuw [136 x i8], ptr %i.x, i64 %i.p
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 120
  %i.aa = lshr i32 %i.v, 4
  %i.ab = zext nneg i32 %i.aa to i64              ; 3 uses
  %i.ac = load ptr, ptr %i.w, align 8, !tbaa !185
  %i.ad = getelementptr inbounds nuw [136 x i8], ptr %i.ac, i64 %i.ab
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 120
  %i.af = load <2 x i32>, ptr %i.z, align 8, !tbaa !158
  %i.ag = add <2 x i32> %i.af, <i32 0, i32 1>
  store <2 x i32> %i.ag, ptr %i.ae, align 8, !tbaa !158
  %i.ah = getelementptr inbounds nuw [136 x i8], ptr %i.x, i64 %i.k ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !504 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load i32, ptr %i.ak, align 4            ; 2 uses
  %.not114115 = icmp eq i32 %i.al, %2
  br i1 %.not114115, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.am = phi i32 [ %i.bo, %.lr.ph ], [ %i.al, %bb.a ] ; 2 uses
  %i.an = phi ptr [ %i.bm, %.lr.ph ], [ %i.aj, %bb.a ] ; 2 uses
  %i.ao = phi ptr [ %i.bj, %.lr.ph ], [ %i.x, %bb.a ]
  %i.ap = getelementptr inbounds nuw [136 x i8], ptr %i.ao, i64 %i.k
  %i.aq = load ptr, ptr %1, align 8, !tbaa !524, !nonnull !182, !align !183
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 48 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !203
  %i.au = add i64 %i.at, -1
  store i64 %i.au, ptr %i.as, align 8, !tbaa !203
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16) %i.an) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef 24) #25
  %i.av = load ptr, ptr %i.w, align 8, !tbaa !185
  %i.aw = getelementptr inbounds nuw [136 x i8], ptr %i.av, i64 %i.ab ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !387
  %i.az = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store i32 %i.am, ptr %i.ba, align 4, !tbaa !48
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.az, ptr noundef %i.ay) #23
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 48 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !203
  %i.bd = add i64 %i.bc, 1
  store i64 %i.bd, ptr %i.bb, align 8, !tbaa !203
  %i.be = lshr i32 %i.am, 4
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = load ptr, ptr %i.ar, align 8, !tbaa !204
  %i.bh = getelementptr inbounds nuw [80 x i8], ptr %i.bg, i64 %i.bf
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  store i32 %i.v, ptr %i.bi, align 4, !tbaa !48
  %i.bj = load ptr, ptr %i.h, align 8, !tbaa !185 ; 3 uses
  %i.bk = getelementptr inbounds nuw [136 x i8], ptr %i.bj, i64 %i.k ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !504 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load i32, ptr %i.bn, align 4            ; 2 uses
  %.not114 = icmp eq i32 %i.bo, %2
  br i1 %.not114, label %._crit_edge, label %.lr.ph, !llvm.loop !1030

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.bp = phi ptr [ %i.x, %bb.a ], [ %i.bj, %.lr.ph ]
  %.lcssa = phi ptr [ %i.ah, %bb.a ], [ %i.bk, %.lr.ph ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.lcssa, i64 56
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !195 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.lcssa, i64 64
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !191 ; 2 uses
  %i.bu = zext i32 %i.bt to i64
  %.idx = shl nuw nsw i64 %i.bu, 3
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 %.idx
  %.not121 = icmp eq i32 %i.bt, 0
  br i1 %.not121, label %._crit_edge125, label %.lr.ph124.preheader

.lr.ph124.preheader:                              ; preds = %._crit_edge
  %.pre128 = load ptr, ptr %1, align 8, !tbaa !524
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.sroa.047.0.copyload, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph124

._crit_edge125.loopexit:                          ; preds = %._crit_edge120
  %.pre.a = load ptr, ptr %i.h, align 8, !tbaa !185
  br label %._crit_edge125

._crit_edge125:                                   ; preds = %._crit_edge125.loopexit, %._crit_edge
  %i.bw = phi ptr [ %.pre.a, %._crit_edge125.loopexit ], [ %i.bp, %._crit_edge ]
  %i.bx = getelementptr inbounds nuw [136 x i8], ptr %i.bw, i64 %i.k
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 56
  %i.bz = load ptr, ptr %i.w, align 8, !tbaa !185
  %i.ca = getelementptr inbounds nuw [136 x i8], ptr %i.bz, i64 %i.ab
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 56
  %i.cc = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %i.cb, ptr noundef nonnull align 8 dereferenceable(32) %i.by) ; 0 uses
  %i.cd = load ptr, ptr %i.h, align 8, !tbaa !185
  %i.ce = getelementptr inbounds nuw [136 x i8], ptr %i.cd, i64 %i.k
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 64 ; 2 uses
  %.promoted.i = load i32, ptr %i.cf, align 8, !tbaa !191
  %.not1.i = icmp eq i32 %.promoted.i, 0
  br i1 %.not1.i, label %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE5clearEv.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %._crit_edge125
  store i32 0, ptr %i.cf, align 8, !tbaa !191
  br label %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE5clearEv.exit

_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE5clearEv.exit: ; preds = %._crit_edge125, %.lr.ph.preheader.i
  tail call void @_ZN4Luau8Bytecode11CallInlinerIP10lua_TValueE12addSuccessorENS0_5BcRefINS0_7BcBlockEEES7_NS0_15BcBlockEdgeKindE(ptr noundef nonnull align 8 dereferenceable(264) %1, ptr nonnull %i.h, i32 %.sroa.047.0.copyload, ptr nonnull %i.h, i32 %i.i, i32 noundef 1)
  tail call void @_ZN4Luau8Bytecode11CallInlinerIP10lua_TValueE12addSuccessorENS0_5BcRefINS0_7BcBlockEEES7_NS0_15BcBlockEdgeKindE(ptr noundef nonnull align 8 dereferenceable(264) %1, ptr nonnull %i.h, i32 %i.i, ptr nonnull %i.w, i32 %i.v, i32 noundef 1)
  %i.cg = load ptr, ptr %i.h, align 8, !tbaa !185
  %i.ch = getelementptr inbounds nuw [136 x i8], ptr %i.cg, i64 %i.k ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 40
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !504 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 48 ; 2 uses
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !203
  %i.cm = add i64 %i.cl, -1
  store i64 %i.cm, ptr %i.ck, align 8, !tbaa !203
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cj) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef 24) #25
  %i.cn = load ptr, ptr %i.h, align 8, !tbaa !185
  %i.co = getelementptr inbounds nuw [136 x i8], ptr %i.cn, i64 %i.p ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  %i.cq = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  store i32 %2, ptr %i.cr, align 4, !tbaa !48
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.cq, ptr noundef nonnull align 8 dereferenceable(24) %i.cp) #23
  %i.cs = getelementptr inbounds nuw i8, ptr %i.co, i64 48 ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !203
  %i.cu = add i64 %i.ct, 1
  store i64 %i.cu, ptr %i.cs, align 8, !tbaa !203
  %i.cv = load ptr, ptr %1, align 8, !tbaa !524, !nonnull !182, !align !183
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 32
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !204
  %i.cy = getelementptr inbounds nuw [80 x i8], ptr %i.cx, i64 %i.d
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  store i32 %i.i, ptr %i.cz, align 4, !tbaa !48
  store ptr %i.h, ptr %0, align 8, !tbaa !531
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.047.0.copyload, ptr %.sroa.14.0..sroa_idx, align 8, !tbaa !48
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.w, ptr %i.da, align 8, !tbaa !531
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.v, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !48
  ret void

.lr.ph124:                                        ; preds = %.lr.ph124.preheader, %._crit_edge120
  %.0122.a = phi ptr [ %3, %._crit_edge120 ], [ %.pre128, %.lr.ph124.preheader ] ; 2 uses
  %.0122 = phi ptr [ %i.ew, %._crit_edge120 ], [ %i.br, %.lr.ph124.preheader ] ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.0122, i64 4
  %.sroa.020.0.copyload = load i32, ptr %i.db, align 4, !tbaa !48
  %i.dc = getelementptr inbounds nuw i8, ptr %.0122.a, i64 8
  %i.dd = lshr i32 %.sroa.020.0.copyload, 4
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = load ptr, ptr %i.dc, align 8, !tbaa !185
  %i.dg = getelementptr inbounds nuw [136 x i8], ptr %i.df, i64 %i.de ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 88
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !195 ; 11 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 96
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !191 ; 2 uses
  %i.dl = zext i32 %i.dk to i64
  %.idx126 = shl nuw nsw i64 %i.dl, 3             ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 %.idx126
  %.not55116 = icmp eq i32 %i.dk, 0
  br i1 %.not55116, label %._crit_edge120, label %.lr.ph119.preheader

.lr.ph119.preheader:                              ; preds = %.lr.ph124
  %i.dn = add nsw i64 %.idx126, -8                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dn, 64
  br i1 %min.iters.check, label %.lr.ph119.preheader158, label %vector.ph

.lr.ph119.preheader158:                           ; preds = %pred.store.continue157, %.lr.ph119.preheader
  %.054117.ph = phi ptr [ %i.di, %.lr.ph119.preheader ], [ %i.du, %pred.store.continue157 ]
  br label %.lr.ph119

vector.ph:                                        ; preds = %.lr.ph119.preheader
  %i.do = lshr exact i64 %i.dn, 3
  %i.dp = add nuw nsw i64 %i.do, 1                ; 2 uses
  %i.dq = and i64 %i.dp, 7                        ; 2 uses
  %i.dr = icmp eq i64 %i.dq, 0
  %i.ds = select i1 %i.dr, i64 8, i64 %i.dq
  %n.vec = sub nsw i64 %i.dp, %i.ds               ; 2 uses
  %i.dt = shl i64 %n.vec, 3
  %i.du = getelementptr i8, ptr %i.di, i64 %i.dt
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue157, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue157 ] ; 2 uses
  %i.dv = shl i64 %index, 3                       ; 8 uses
  %next.gep = getelementptr i8, ptr %i.di, i64 %i.dv
  %i.dw = getelementptr i8, ptr %i.di, i64 %i.dv
  %i.dx = getelementptr i8, ptr %i.di, i64 %i.dv
  %i.dy = getelementptr i8, ptr %i.di, i64 %i.dv
  %i.dz = getelementptr i8, ptr %i.di, i64 %i.dv
  %i.ea = getelementptr i8, ptr %i.di, i64 %i.dv
  %i.eb = getelementptr i8, ptr %i.di, i64 %i.dv
  %i.ec = getelementptr i8, ptr %i.di, i64 %i.dv
  %i.ed = getelementptr inbounds nuw i8, ptr %next.gep, i64 4 ; 2 uses
  %i.ee = getelementptr i8, ptr %i.dz, i64 36     ; 2 uses
  %wide.vec = load <8 x i32>, ptr %i.ed, align 4
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec142 = load <8 x i32>, ptr %i.ee, align 4
  %strided.vec143 = shufflevector <8 x i32> %wide.vec142, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ef = icmp eq <4 x i32> %strided.vec, %broadcast.splat ; 4 uses
  %i.eg = icmp eq <4 x i32> %strided.vec143, %broadcast.splat ; 4 uses
  %i.eh = extractelement <4 x i1> %i.ef, i64 0
  br i1 %i.eh, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i32 %i.v, ptr %i.ed, align 4, !tbaa !48
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.ei = extractelement <4 x i1> %i.ef, i64 1
  br i1 %i.ei, label %pred.store.if144, label %pred.store.continue145

pred.store.if144:                                 ; preds = %pred.store.continue
  %i.ej = getelementptr i8, ptr %i.dw, i64 12
  store i32 %i.v, ptr %i.ej, align 4, !tbaa !48
  br label %pred.store.continue145

pred.store.continue145:                           ; preds = %pred.store.if144, %pred.store.continue
  %i.ek = extractelement <4 x i1> %i.ef, i64 2
  br i1 %i.ek, label %pred.store.if146, label %pred.store.continue147

pred.store.if146:                                 ; preds = %pred.store.continue145
  %i.el = getelementptr i8, ptr %i.dx, i64 20
  store i32 %i.v, ptr %i.el, align 4, !tbaa !48
  br label %pred.store.continue147

pred.store.continue147:                           ; preds = %pred.store.if146, %pred.store.continue145
  %i.em = extractelement <4 x i1> %i.ef, i64 3
  br i1 %i.em, label %pred.store.if148, label %pred.store.continue149

pred.store.if148:                                 ; preds = %pred.store.continue147
  %i.en = getelementptr i8, ptr %i.dy, i64 28
  store i32 %i.v, ptr %i.en, align 4, !tbaa !48
  br label %pred.store.continue149

pred.store.continue149:                           ; preds = %pred.store.if148, %pred.store.continue147
  %i.eo = extractelement <4 x i1> %i.eg, i64 0
  br i1 %i.eo, label %pred.store.if150, label %pred.store.continue151

pred.store.if150:                                 ; preds = %pred.store.continue149
  store i32 %i.v, ptr %i.ee, align 4, !tbaa !48
  br label %pred.store.continue151

pred.store.continue151:                           ; preds = %pred.store.if150, %pred.store.continue149
  %i.ep = extractelement <4 x i1> %i.eg, i64 1
  br i1 %i.ep, label %pred.store.if152, label %pred.store.continue153

pred.store.if152:                                 ; preds = %pred.store.continue151
  %i.eq = getelementptr i8, ptr %i.ea, i64 44
  store i32 %i.v, ptr %i.eq, align 4, !tbaa !48
  br label %pred.store.continue153

pred.store.continue153:                           ; preds = %pred.store.if152, %pred.store.continue151
  %i.er = extractelement <4 x i1> %i.eg, i64 2
  br i1 %i.er, label %pred.store.if154, label %pred.store.continue155

pred.store.if154:                                 ; preds = %pred.store.continue153
  %i.es = getelementptr i8, ptr %i.eb, i64 52
  store i32 %i.v, ptr %i.es, align 4, !tbaa !48
  br label %pred.store.continue155

pred.store.continue155:                           ; preds = %pred.store.if154, %pred.store.continue153
  %i.et = extractelement <4 x i1> %i.eg, i64 3
  br i1 %i.et, label %pred.store.if156, label %pred.store.continue157

pred.store.if156:                                 ; preds = %pred.store.continue155
  %i.eu = getelementptr i8, ptr %i.ec, i64 60
  store i32 %i.v, ptr %i.eu, align 4, !tbaa !48
  br label %pred.store.continue157

pred.store.continue157:                           ; preds = %pred.store.if156, %pred.store.continue155
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ev = icmp eq i64 %index.next, %n.vec
  br i1 %i.ev, label %.lr.ph119.preheader158, label %vector.body, !llvm.loop !1031

._crit_edge120.loopexit:                          ; preds = %bb.c
  %.pre = load ptr, ptr %1, align 8, !tbaa !524
  br label %._crit_edge120

._crit_edge120:                                   ; preds = %._crit_edge120.loopexit, %.lr.ph124
  %3 = phi ptr [ %.pre, %._crit_edge120.loopexit ], [ %.0122.a, %.lr.ph124 ]
  %i.ew = getelementptr inbounds nuw i8, ptr %.0122, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ew, %i.bv
  br i1 %.not, label %._crit_edge125.loopexit, label %.lr.ph124

.lr.ph119:                                        ; preds = %.lr.ph119.preheader158, %bb.c
  %.054117 = phi ptr [ %i.fa, %bb.c ], [ %.054117.ph, %.lr.ph119.preheader158 ] ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.054117, i64 4 ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 4
  %i.ez = icmp eq i32 %i.ey, %.sroa.047.0.copyload
  br i1 %i.ez, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph119
  store i32 %i.v, ptr %i.ex, align 4, !tbaa !48
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph119
  %i.fa = getelementptr inbounds nuw i8, ptr %.054117, i64 8 ; 2 uses
  %.not55 = icmp eq ptr %i.fa, %i.dm
  br i1 %.not55, label %._crit_edge120.loopexit, label %.lr.ph119, !llvm.loop !1032
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local i32 @_ZN4Luau8Bytecode11CallInlinerIP10lua_TValueE15replaceNamecallENS0_10BcNamecallIS3_EERNS0_5BcRefINS0_7BcBlockEEE(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef byval(%"struct.Luau::Bytecode::BcNamecall") align 8 %1, ptr noundef nonnull align 8 dereferenceable(12) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Luau::Bytecode::BcMove", align 8 ; 8 uses
  %4 = alloca %"struct.Luau::Bytecode::BcGetTableKS", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !530, !nonnull !182, !align !183
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i32, ptr %i.c, align 8
  %i.e = lshr i32 %i.d, 4
  %i.f = zext nneg i32 %i.e to i64
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !204
  %i.h = getelementptr inbounds nuw [80 x i8], ptr %i.g, i64 %i.f
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %.sroa.07.0.copyload = load i32, ptr %i.i, align 4, !tbaa !48 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !207, !nonnull !182, !align !183
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8              ; 6 uses
  %i.n = lshr i32 %i.m, 4
  %i.o = zext nneg i32 %i.n to i64
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !204
  %i.q = getelementptr inbounds nuw [80 x i8], ptr %i.p, i64 %i.o
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  store i32 %.sroa.07.0.copyload, ptr %i.r, align 4, !tbaa !48
  %i.s = load ptr, ptr %1, align 8, !tbaa !538, !nonnull !182, !align !183 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = lshr i32 %.sroa.07.0.copyload, 4
  %i.v = zext nneg i32 %i.u to i64
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !185
  %i.x = getelementptr inbounds nuw [136 x i8], ptr %i.w, i64 %i.v ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !387
  %i.aa = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i32 %i.m, ptr %i.ab, align 4, !tbaa !48
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef %i.z) #23
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 48 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !203
  %i.ae = add i64 %i.ad, 1
  store i64 %i.ae, ptr %i.ac, align 8, !tbaa !203
  %i.af = load ptr, ptr %2, align 8, !tbaa !528, !nonnull !182, !align !183
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ah = load i32, ptr %i.ag, align 8
  %i.ai = lshr i32 %i.ah, 4
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = load ptr, ptr %i.af, align 8, !tbaa !185
  %i.al = getelementptr inbounds nuw [136 x i8], ptr %i.ak, i64 %i.aj ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !504 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 48 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !203
  %i.aq = add i64 %i.ap, -1
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !203
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16) %i.an) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef 24) #25
  %i.ar = getelementptr inbounds nuw i8, ptr %i.s, i64 424
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !433
  %.not.not.i.i.i = icmp eq i64 %i.as, 0
  br i1 %.not.not.i.i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %i.s, i64 416
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.at, %bb.b ], [ %.sroa.06.0.i.i.i, %bb.c ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !229, !nonnull !182, !noundef !182 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = icmp eq i32 %i.m, %i.av
  br i1 %i.aw, label %_ZN4Luau8Bytecode12BcInstHelperIP10lua_TValueNS0_10BcNamecallIS3_EEE9getOutRegEv.exit, label %bb.c, !llvm.loop !9

bb.d:                                             ; preds = %bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %i.s, i64 400
  %.0.insert.ext.i.i.i.i.i = zext i32 %i.m to i64 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.s, i64 408
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !57 ; 2 uses
  %i.ba = urem i64 %.0.insert.ext.i.i.i.i.i, %i.az ; 2 uses
  %i.bb = load ptr, ptr %i.ax, align 8, !tbaa !56
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.ba
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !228, !nonnull !182, !noundef !182
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !229 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !231
  %i.bi = icmp eq i64 %i.bh, %.0.insert.ext.i.i.i.i.i
  %i.bj = load i32, ptr %i.bf, align 8
  %i.bk = icmp eq i32 %i.m, %i.bj
  %i.bl = select i1 %i.bi, i1 %i.bk, i1 false
  br i1 %i.bl, label %_ZN4Luau8Bytecode12BcInstHelperIP10lua_TValueNS0_10BcNamecallIS3_EEE9getOutRegEv.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %.020.i.i.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i ], [ %i.be, %bb.d ]
  %i.bm = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !229, !nonnull !182, !noundef !182 ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !231 ; 2 uses
  %i.bp = urem i64 %i.bo, %i.az
  %.not19.i.i.i.i.i = icmp eq i64 %i.bp, %i.ba
  tail call void @llvm.assume(i1 %.not19.i.i.i.i.i)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.br = icmp eq i64 %i.bo, %.0.insert.ext.i.i.i.i.i
  %i.bs = load i32, ptr %i.bq, align 8
  %i.bt = icmp eq i32 %i.m, %i.bs
  %i.bu = select i1 %i.br, i1 %i.bt, i1 false
  br i1 %i.bu, label %_ZN4Luau8Bytecode12BcInstHelperIP10lua_TValueNS0_10BcNamecallIS3_EEE9getOutRegEv.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

_ZN4Luau8Bytecode12BcInstHelperIP10lua_TValueNS0_10BcNamecallIS3_EEE9getOutRegEv.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.c, %bb.d
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.c ], [ %i.be, %bb.d ], [ %i.bm, %.lr.ph.i.i.i.i.i ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 12
  %i.bw = load i8, ptr %i.bv, align 4, !tbaa !233
  %i.bx = add i8 %i.bw, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.by = load ptr, ptr %0, align 8, !tbaa !524, !nonnull !182, !align !183 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1037)
  %i.bz = tail call i32 @_ZN4Luau8Bytecode10BcFunctionIP10lua_TValueE7addInstEv(ptr noundef nonnull align 8 dereferenceable(456) %i.by), !noalias !1037 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 32 ; 2 uses
  %i.cb = lshr i32 %i.bz, 4
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = load ptr, ptr %i.ca, align 8, !tbaa !204, !noalias !1037
  %i.ce = getelementptr inbounds nuw [80 x i8], ptr %i.cd, i64 %i.cc
  store i32 6, ptr %i.ce, align 8, !tbaa !217, !noalias !1037
  store ptr %i.by, ptr %3, align 8, !tbaa !162, !alias.scope !1037
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %i.ca, ptr %i.cf, align 8, !tbaa !224, !alias.scope !1037
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store i32 %i.bz, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !48, !alias.scope !1037
  %i.cg = call i32 @_ZN4Luau8Bytecode12BcInstHelperIP10lua_TValueNS0_10BcNamecallIS3_EEE7getBcOpEj(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 0)
  call void @_ZN4Luau8Bytecode12BcInstHelperIP10lua_TValueNS0_6BcMoveIS3_EEE7setBcOpEjNS0_4BcOpE(ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef 0, i32 %i.cg)
  %i.ch = load ptr, ptr %3, align 8, !tbaa !540, !nonnull !182, !align !183 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 400 ; 2 uses
  %.0.copyload.i.i.i = load i32, ptr %.sroa.5.0..sroa_idx.i, align 8 ; 3 uses
  %.0.insert.ext.i.i.i = zext i32 %.0.copyload.i.i.i to i64 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 408
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !57 ; 2 uses
  %i.cl = urem i64 %.0.insert.ext.i.i.i, %i.ck    ; 3 uses
  %i.cm = load ptr, ptr %i.ci, align 8, !tbaa !56
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cl
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !228 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i, label %.loopexit.i, label %bb.e

bb.e:                                             ; preds = %_ZN4Luau8Bytecode12BcInstHelperIP10lua_TValueNS0_10BcNamecallIS3_EEE9getOutRegEv.exit
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !229 ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !231
  %i.ct = icmp eq i64 %i.cs, %.0.insert.ext.i.i.i
  %i.cu = load i32, ptr %i.cq, align 8
  %i.cv = icmp eq i32 %.0.copyload.i.i.i, %i.cu
  %i.cw = select i1 %i.ct, i1 %i.cv, i1 false
  br i1 %i.cw, label %_ZNSt8__detail9_Map_baseIN4Luau8Bytecode4BcOpESt4pairIKS3_hESaIS6_ENS_10_Select1stESt8equal_toIS3_ENS2_8BcOpHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS5_.exit, label %.lr.ph.i.i.i

bb.f:                                             ; preds = %bb.g
  %i.cx = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.cy = icmp eq i64 %i.de, %.0.insert.ext.i.i.i
  %i.cz = load i32, ptr %i.cx, align 8
  %i.da = icmp eq i32 %.0.copyload.i.i.i, %i.cz
  %i.db = select i1 %i.cy, i1 %i.da, i1 false
  br i1 %i.db, label %_ZNSt8__detail9_Map_baseIN4Luau8Bytecode4BcOpESt4pairIKS3_hESaIS6_ENS_10_Select1stESt8equal_toIS3_ENS2_8BcOpHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !1

.lr.ph.i.i.i:                                     ; preds = %bb.e, %bb.f
  %.020.i.i.i = phi ptr [ %i.dc, %bb.f ], [ %i.cp, %bb.e ]
  %i.dc = load ptr, ptr %.020.i.i.i, align 8, !tbaa !229 ; 5 uses
  %.not18.i.i.i = icmp eq ptr %i.dc, null
  br i1 %.not18.i.i.i, label %.loopexit.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !231 ; 2 uses
  %i.df = urem i64 %i.de, %i.ck
  %.not19.i.i.i = icmp eq i64 %i.df, %i.cl
  br i1 %.not19.i.i.i, label %bb.f, label %..loopexit_crit_edge21.i.i.i, !llvm.loop !1

..loopexit_crit_edge21.i.i.i:                     ; preds = %bb.g
  br label %.loopexit.i, !llvm.loop !1

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i, %..loopexit_crit_edge21.i.i.i, %_ZN4Luau8Bytecode12BcInstHelperIP10lua_TValueNS0_10BcNamecallIS3_EEE9getOutRegEv.exit
  %i.dg = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24 ; 5 uses
  store ptr null, ptr %i.dg, align 8, !tbaa !229
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = load i32, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !48
  store i32 %i.di, ptr %i.dh, align 8, !tbaa !48
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 12
  store i8 0, ptr %i.dj, align 4, !tbaa !233
  %i.dk = invoke ptr @_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_hESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.ci, i64 noundef %i.cl, i64 noundef %.0.insert.ext.i.i.i, ptr noundef nonnull %i.dg, i64 noundef 1)
          to label %_ZNSt8__detail9_Map_baseIN4Luau8Bytecode4BcOpESt4pairIKS3_hESaIS6_ENS_10_Select1stESt8equal_toIS3_ENS2_8BcOpHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS5_.exit unwind label %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_hESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i

common.resume:                                    ; preds = %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_hESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i26, %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_hESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i
  %.sink = phi ptr [ %i.gi, %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_hESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i26 ], [ %i.dg, %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_hESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i ]
  %common.resume.op = phi { ptr, i32 } [ %i.gn, %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_hESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i26 ], [ %i.dl, %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_hESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i ]
  call void @_ZdlPvm(ptr noundef nonnull %.sink, i64 noundef 24) #25
  resume { ptr, i32 } %common.resume.op

_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_hESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i: ; preds = %.loopexit.i
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %common.resume
end_hunk_1
