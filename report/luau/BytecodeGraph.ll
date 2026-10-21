Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/BytecodeGraph?download=true
inline.NumInlined: 3821
inline.NumDeleted: 1895
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN4Luau8Bytecode19BytecodeGraphParserINS0_9BcVmConstEE13rebuildBlocksEPKjj:bb.a
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !129
  %i.ba = icmp eq i32 %.071188, %i.az
  br i1 %i.ba, label %_ZNKSt13unordered_mapIjN4Luau8Bytecode4BcOpESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE5countERS8_.exit, label %.lr.ph.i.i.i.i.i

bb.l:                                             ; preds = %bb.m
  %i.bb = icmp eq i32 %.071188, %i.be
  br i1 %i.bb, label %_ZNKSt13unordered_mapIjN4Luau8Bytecode4BcOpESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE5countERS8_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !3

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.k, %bb.l
  %.020.i.i.i.i.i = phi ptr [ %i.bc, %bb.l ], [ %i.ax, %bb.k ]
  %i.bc = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !245 ; 3 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit224, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !129 ; 2 uses
  %i.bf = zext i32 %i.be to i64
  %i.bg = urem i64 %i.bf, %i.as
  %.not19.i.i.i.i.i = icmp eq i64 %i.bg, %i.at
  br i1 %.not19.i.i.i.i.i, label %bb.l, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !3

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.m
  br label %.loopexit224, !llvm.loop !3

.loopexit224:                                     ; preds = %.lr.ph.i.i.i.i.i, %.preheader270, %..loopexit_crit_edge21.i.i.i.i.i, %bb.j
  %i.bh = tail call i32 @_ZN4Luau8Bytecode19BytecodeGraphParserINS0_9BcVmConstEE9makeBlockEj(ptr noundef nonnull align 8 dereferenceable(152) %0, i32 noundef %.071188) ; 11 uses
  %i.bi = icmp slt i32 %.071188, %.0185251
  br i1 %i.bi, label %.preheader, label %_ZNKSt13unordered_mapIjN4Luau8Bytecode4BcOpESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE5countERS8_.exit

.preheader:                                       ; preds = %.loopexit224
  %i.bj = load i64, ptr %i.h, align 8, !tbaa !188
  %.not.not.i.i.i85 = icmp eq i64 %i.bj, 0
  br i1 %.not.not.i.i.i85, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %.loopexit.us
  %.0184.in.us = phi i32 [ %.0184.us, %.loopexit.us ], [ %.071188, %.preheader ]
  %.0184.us = add i32 %.0184.in.us, -1            ; 4 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %.preheader.split.us
  %.sroa.06.0.in.i.i.i95.us = phi ptr [ %i.j, %.preheader.split.us ], [ %.sroa.06.0.i.i.i96.us, %bb.o ]
  %.sroa.06.0.i.i.i96.us = load ptr, ptr %.sroa.06.0.in.i.i.i95.us, align 8, !tbaa !245 ; 3 uses
  %.not.i.i.i97.us = icmp eq ptr %.sroa.06.0.i.i.i96.us, null
  br i1 %.not.i.i.i97.us, label %.loopexit.us, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i96.us, i64 8
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !129
  %i.bm = icmp eq i32 %.0184.us, %i.bl
  br i1 %i.bm, label %.critedge, label %bb.n, !llvm.loop !2

.loopexit.us:                                     ; preds = %bb.n
  %.not.us = icmp eq i32 %.0184.us, 0
  br i1 %.not.us, label %.critedge, label %.preheader.split.us, !llvm.loop !584

.preheader.split:                                 ; preds = %.preheader
  %i.bn = load i64, ptr %i.i, align 8, !tbaa !175 ; 2 uses
  %i.bo = load ptr, ptr %i.g, align 8, !tbaa !174
  br label %bb.p

bb.p:                                             ; preds = %.preheader.split, %.loopexit215
  %.0184.in = phi i32 [ %.0184, %.loopexit215 ], [ %.071188, %.preheader.split ]
  %.0184 = add i32 %.0184.in, -1                  ; 7 uses
  %i.bp = zext i32 %.0184 to i64
  %i.bq = urem i64 %i.bp, %i.bn                   ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bq
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !244 ; 2 uses
  %.not.i.i.i.i.i86 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i.i.i86, label %.loopexit215, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !245 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !129
  %i.bw = icmp eq i32 %.0184, %i.bv
  br i1 %i.bw, label %.critedge, label %.lr.ph.i.i.i.i.i87

bb.r:                                             ; preds = %bb.s
  %i.bx = icmp eq i32 %.0184, %i.ca
  br i1 %i.bx, label %.critedge, label %.lr.ph.i.i.i.i.i87, !llvm.loop !3

.lr.ph.i.i.i.i.i87:                               ; preds = %bb.q, %bb.r
  %.020.i.i.i.i.i88 = phi ptr [ %i.by, %bb.r ], [ %i.bt, %bb.q ]
  %i.by = load ptr, ptr %.020.i.i.i.i.i88, align 8, !tbaa !245 ; 3 uses
  %.not18.i.i.i.i.i89 = icmp eq ptr %i.by, null
  br i1 %.not18.i.i.i.i.i89, label %.loopexit215, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.i87
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !129 ; 2 uses
  %i.cb = zext i32 %i.ca to i64
  %i.cc = urem i64 %i.cb, %i.bn
  %.not19.i.i.i.i.i90 = icmp eq i64 %i.cc, %i.bq
  br i1 %.not19.i.i.i.i.i90, label %bb.r, label %..loopexit_crit_edge21.i.i.i.i.i91, !llvm.loop !3

..loopexit_crit_edge21.i.i.i.i.i91:               ; preds = %bb.s
  br label %.loopexit215, !llvm.loop !3

.loopexit215:                                     ; preds = %.lr.ph.i.i.i.i.i87, %..loopexit_crit_edge21.i.i.i.i.i91, %bb.p
  %.not = icmp eq i32 %.0184, 0
  br i1 %.not, label %.critedge, label %bb.p, !llvm.loop !584

.critedge:                                        ; preds = %.loopexit215, %bb.q, %.loopexit.us, %bb.r, %bb.o
  %.1 = phi i32 [ %.0184, %bb.r ], [ -1, %.loopexit.us ], [ %.0184.us, %bb.o ], [ %.0184, %bb.q ], [ -1, %.loopexit215 ] ; 4 uses
  %i.cd = zext i32 %.1 to i64                     ; 2 uses
  %i.ce = load i64, ptr %i.i, align 8, !tbaa !175 ; 2 uses
  %i.cf = urem i64 %i.cd, %i.ce                   ; 3 uses
  %i.cg = load ptr, ptr %i.g, align 8, !tbaa !174
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.cf
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !244 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i.i, label %.loopexit.i.i, label %bb.t

bb.t:                                             ; preds = %.critedge
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !245 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !129
  %i.cm = icmp eq i32 %.1, %i.cl
  br i1 %i.cm, label %_ZNSt13unordered_mapIjN4Luau8Bytecode4BcOpESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEEixERS8_.exit, label %.lr.ph.i.i.i.i

bb.u:                                             ; preds = %bb.v
  %i.cn = icmp eq i32 %.1, %i.cq
  br i1 %i.cn, label %_ZNSt13unordered_mapIjN4Luau8Bytecode4BcOpESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEEixERS8_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !3

.lr.ph.i.i.i.i:                                   ; preds = %bb.t, %bb.u
  %.020.i.i.i.i = phi ptr [ %i.co, %bb.u ], [ %i.cj, %bb.t ]
  %i.co = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !245 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.co, null
  br i1 %.not18.i.i.i.i, label %.loopexit.i.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !129 ; 2 uses
  %i.cr = zext i32 %i.cq to i64
  %i.cs = urem i64 %i.cr, %i.ce
  %.not19.i.i.i.i = icmp eq i64 %i.cs, %i.cf
  br i1 %.not19.i.i.i.i, label %bb.u, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !3

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.v
  br label %.loopexit.i.i, !llvm.loop !3

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i, %..loopexit_crit_edge21.i.i.i.i, %.critedge
  %i.ct = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #20 ; 5 uses
  store ptr null, ptr %i.ct, align 8, !tbaa !245
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store i32 %.1, ptr %i.cu, align 8, !tbaa !255
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 12
  store i32 0, ptr %i.cv, align 4
  %i.cw = invoke ptr @_ZNSt10_HashtableIjSt4pairIKjN4Luau8Bytecode4BcOpEESaIS5_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.g, i64 noundef %i.cf, i64 noundef %i.cd, ptr noundef nonnull %i.ct, i64 noundef 1)
          to label %_ZNSt13unordered_mapIjN4Luau8Bytecode4BcOpESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEEixERS8_.exit unwind label %_ZNSt10_HashtableIjSt4pairIKjN4Luau8Bytecode4BcOpEESaIS5_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i

common.resume:                                    ; preds = %_ZNSt10_HashtableIjSt4pairIKjN4Luau8Bytecode4BcOpEESaIS5_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i158, %_ZNSt10_HashtableIjSt4pairIKjN4Luau8Bytecode4BcOpEESaIS5_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i147, %_ZNSt10_HashtableIjSt4pairIKjN4Luau8Bytecode4BcOpEESaIS5_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i106, %_ZNSt10_HashtableIjSt4pairIKjN4Luau8Bytecode4BcOpEESaIS5_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i
  %.lcssa336.sink = phi ptr [ %i.jv, %_ZNSt10_HashtableIjSt4pairIKjN4Luau8Bytecode4BcOpEESaIS5_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i158 ], [ %i.ja, %_ZNSt10_HashtableIjSt4pairIKjN4Luau8Bytecode4BcOpEESaIS5_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i147 ], [ %i.gh, %_ZNSt10_HashtableIjSt4pairIKjN4Luau8Bytecode4BcOpEESaIS5_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i106 ], [ %i.ct, %_ZNSt10_HashtableIjSt4pairIKjN4Luau8Bytecode4BcOpEESaIS5_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ]
  %common.resume.op = phi { ptr, i32 } [ %i.jz, %_ZNSt10_HashtableIjSt4pairIKjN4Luau8Bytecode4BcOpEESaIS5_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i158 ], [ %i.je, %_ZNSt10_HashtableIjSt4pairIKjN4Luau8Bytecode4BcOpEESaIS5_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i147 ], [ %i.gl, %_ZNSt10_HashtableIjSt4pairIKjN4Luau8Bytecode4BcOpEESaIS5_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i106 ], [ %i.cx, %_ZNSt10_HashtableIjSt4pairIKjN4Luau8Bytecode4BcOpEESaIS5_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.lcssa336.sink, i64 noundef 16) #19
  resume { ptr, i32 } %common.resume.op

_ZNSt10_HashtableIjSt4pairIKjN4Luau8Bytecode4BcOpEESaIS5_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i: ; preds = %.loopexit.i.i
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt13unordered_mapIjN4Luau8Bytecode4BcOpESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEEixERS8_.exit: ; preds = %bb.u, %bb.t, %.loopexit.i.i
  %.pn.i.i = phi ptr [ %i.cw, %.loopexit.i.i ], [ %i.cj, %bb.t ], [ %i.co, %bb.u ]
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 12
  %i.cy = load i32, ptr %.1.i.i, align 4, !tbaa !33 ; 4 uses
  %i.cz = load ptr, ptr %0, align 8, !tbaa !197, !nonnull !170, !align !198
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.db = lshr i32 %i.cy, 4
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = load ptr, ptr %i.da, align 8, !tbaa !200 ; 2 uses
  %i.de = getelementptr inbounds nuw [136 x i8], ptr %i.dd, i64 %i.dc ; 2 uses
  %i.df = lshr i32 %i.bh, 4
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw [136 x i8], ptr %i.dd, i64 %i.dg ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 56
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 56 ; 2 uses
  %i.dk = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %i.dj, ptr noundef nonnull align 8 dereferenceable(32) %i.di) ; 0 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.de, i64 64 ; 2 uses
  %.promoted.i = load i32, ptr %i.dl, align 8, !tbaa !206
  %.not1.i = icmp eq i32 %.promoted.i, 0
  br i1 %.not1.i, label %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE5clearEv.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZNSt13unordered_mapIjN4Luau8Bytecode4BcOpESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEEixERS8_.exit
  store i32 0, ptr %i.dl, align 8, !tbaa !206
  br label %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE5clearEv.exit

_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE5clearEv.exit: ; preds = %_ZNSt13unordered_mapIjN4Luau8Bytecode4BcOpESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEEixERS8_.exit, %.lr.ph.preheader.i
  tail call void @_ZN4Luau8Bytecode19BytecodeGraphParserINS0_9BcVmConstEE12addSuccessorENS0_4BcOpES4_NS0_15BcBlockEdgeKindE(ptr noundef nonnull align 8 dereferenceable(152) %0, i32 %i.cy, i32 %i.bh, i32 noundef 1)
  %i.dm = load ptr, ptr %i.dj, align 8, !tbaa !210 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dh, i64 64
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !206 ; 2 uses
  %i.dp = zext i32 %i.do to i64
  %.idx = shl nuw nsw i64 %i.dp, 3
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 %.idx
  %.not81248 = icmp eq i32 %i.do, 0
  br i1 %.not81248, label %_ZNKSt13unordered_mapIjN4Luau8Bytecode4BcOpESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE5countERS8_.exit, label %.lr.ph250.preheader

.lr.ph250.preheader:                              ; preds = %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE5clearEv.exit
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.cy, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph250

.lr.ph250:                                        ; preds = %.lr.ph250.preheader, %._crit_edge
  %.073249.a = phi ptr [ %i.fm, %._crit_edge ], [ %i.dm, %.lr.ph250.preheader ] ; 2 uses
  %3 = load ptr, ptr %0, align 8, !tbaa !197, !nonnull !170, !align !198
  %i.dr = getelementptr inbounds nuw i8, ptr %.073249.a, i64 4
  %.sroa.013.0.copyload = load i32, ptr %i.dr, align 4, !tbaa !33
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dt = lshr i32 %.sroa.013.0.copyload, 4
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = load ptr, ptr %i.ds, align 8, !tbaa !200
  %i.dw = getelementptr inbounds nuw [136 x i8], ptr %i.dv, i64 %i.du ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 88
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !210 ; 11 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 96
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !206 ; 2 uses
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
  store i32 %i.bh, ptr %i.et, align 4, !tbaa !33
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.ey = extractelement <4 x i1> %i.ev, i64 1
  br i1 %i.ey, label %pred.store.if370, label %pred.store.continue371

pred.store.if370:                                 ; preds = %pred.store.continue
  %i.ez = getelementptr i8, ptr %i.em, i64 12
  store i32 %i.bh, ptr %i.ez, align 4, !tbaa !33
  br label %pred.store.continue371

pred.store.continue371:                           ; preds = %pred.store.if370, %pred.store.continue
  %i.fa = extractelement <4 x i1> %i.ev, i64 2
  br i1 %i.fa, label %pred.store.if372, label %pred.store.continue373

pred.store.if372:                                 ; preds = %pred.store.continue371
  %i.fb = getelementptr i8, ptr %i.en, i64 20
  store i32 %i.bh, ptr %i.fb, align 4, !tbaa !33
  br label %pred.store.continue373

pred.store.continue373:                           ; preds = %pred.store.if372, %pred.store.continue371
  %i.fc = extractelement <4 x i1> %i.ev, i64 3
  br i1 %i.fc, label %pred.store.if374, label %pred.store.continue375

pred.store.if374:                                 ; preds = %pred.store.continue373
  %i.fd = getelementptr i8, ptr %i.eo, i64 28
  store i32 %i.bh, ptr %i.fd, align 4, !tbaa !33
  br label %pred.store.continue375

pred.store.continue375:                           ; preds = %pred.store.if374, %pred.store.continue373
  %i.fe = extractelement <4 x i1> %i.ew, i64 0
  br i1 %i.fe, label %pred.store.if376, label %pred.store.continue377

pred.store.if376:                                 ; preds = %pred.store.continue375
  store i32 %i.bh, ptr %i.eu, align 4, !tbaa !33
  br label %pred.store.continue377

pred.store.continue377:                           ; preds = %pred.store.if376, %pred.store.continue375
  %i.ff = extractelement <4 x i1> %i.ew, i64 1
  br i1 %i.ff, label %pred.store.if378, label %pred.store.continue379

pred.store.if378:                                 ; preds = %pred.store.continue377
  %i.fg = getelementptr i8, ptr %i.eq, i64 44
  store i32 %i.bh, ptr %i.fg, align 4, !tbaa !33
  br label %pred.store.continue379

pred.store.continue379:                           ; preds = %pred.store.if378, %pred.store.continue377
  %i.fh = extractelement <4 x i1> %i.ew, i64 2
  br i1 %i.fh, label %pred.store.if380, label %pred.store.continue381

pred.store.if380:                                 ; preds = %pred.store.continue379
  %i.fi = getelementptr i8, ptr %i.er, i64 52
  store i32 %i.bh, ptr %i.fi, align 4, !tbaa !33
  br label %pred.store.continue381

pred.store.continue381:                           ; preds = %pred.store.if380, %pred.store.continue379
  %i.fj = extractelement <4 x i1> %i.ew, i64 3
  br i1 %i.fj, label %pred.store.if382, label %pred.store.continue383

pred.store.if382:                                 ; preds = %pred.store.continue381
  %i.fk = getelementptr i8, ptr %i.es, i64 60
  store i32 %i.bh, ptr %i.fk, align 4, !tbaa !33
  br label %pred.store.continue383

pred.store.continue383:                           ; preds = %pred.store.if382, %pred.store.continue381
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fl = icmp eq i64 %index.next, %n.vec
  br i1 %i.fl, label %.lr.ph.preheader385, label %vector.body, !llvm.loop !585

._crit_edge:                                      ; preds = %bb.x, %.lr.ph250
  %i.fm = getelementptr inbounds nuw i8, ptr %.073249.a, i64 8 ; 2 uses
  %.not81 = icmp eq ptr %i.fm, %i.dq
  br i1 %.not81, label %_ZNKSt13unordered_mapIjN4Luau8Bytecode4BcOpESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE5countERS8_.exit, label %.lr.ph250

.lr.ph:                                           ; preds = %.lr.ph.preheader385, %bb.x
  %.072247 = phi ptr [ %i.fq, %bb.x ], [ %.072247.ph, %.lr.ph.preheader385 ] ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.072247, i64 4 ; 2 uses
  %i.fo = load i32, ptr %i.fn, align 4
  %i.fp = icmp eq i32 %i.fo, %i.cy
  br i1 %i.fp, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.lr.ph
  store i32 %i.bh, ptr %i.fn, align 4, !tbaa !33
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.lr.ph
  %i.fq = getelementptr inbounds nuw i8, ptr %.072247, i64 8 ; 2 uses
  %.not83 = icmp eq ptr %i.fq, %i.ec
  br i1 %.not83, label %._crit_edge, label %.lr.ph, !llvm.loop !586

_ZNKSt13unordered_mapIjN4Luau8Bytecode4BcOpESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE5countERS8_.exit: ; preds = %bb.l, %bb.i, %._crit_edge, %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE5clearEv.exit, %bb.k, %.loopexit224
  %i.fr = zext nneg i32 %.071188 to i64           ; 2 uses
  %i.fs = load i64, ptr %i.i, align 8, !tbaa !175 ; 2 uses
  %i.ft = urem i64 %i.fr, %i.fs                   ; 3 uses
  %i.fu = load ptr, ptr %i.g, align 8, !tbaa !174
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %i.ft
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !244 ; 2 uses
  %.not.i.i.i.i99 = icmp eq ptr %i.fw, null
  br i1 %.not.i.i.i.i99, label %.loopexit.i.i105, label %bb.y

bb.y:                                             ; preds = %_ZNKSt13unordered_mapIjN4Luau8Bytecode4BcOpESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE5countERS8_.exit
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !245 ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !129
  %i.ga = icmp eq i32 %.071188, %i.fz
  br i1 %i.ga, label %_ZNSt13unordered_mapIjN4Luau8Bytecode4BcOpESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEEixEOj.exit, label %.lr.ph.i.i.i.i100

bb.z:                                             ; preds = %bb.aa
  %i.gb = icmp eq i32 %.071188, %i.ge
  br i1 %i.gb, label %_ZNSt13unordered_mapIjN4Luau8Bytecode4BcOpESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEEixEOj.exit, label %.lr.ph.i.i.i.i100, !llvm.loop !3

.lr.ph.i.i.i.i100:                                ; preds = %bb.y, %bb.z
  %.020.i.i.i.i101 = phi ptr [ %i.gc, %bb.z ], [ %i.fx, %bb.y ]
  %i.gc = load ptr, ptr %.020.i.i.i.i101, align 8, !tbaa !245 ; 4 uses
  %.not18.i.i.i.i102 = icmp eq ptr %i.gc, null
  br i1 %.not18.i.i.i.i102, label %.loopexit.i.i105, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i100
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !129 ; 2 uses
  %i.gf = zext i32 %i.ge to i64
  %i.gg = urem i64 %i.gf, %i.fs
  %.not19.i.i.i.i103 = icmp eq i64 %i.gg, %i.ft
  br i1 %.not19.i.i.i.i103, label %bb.z, label %..loopexit_crit_edge21.i.i.i.i104, !llvm.loop !3

..loopexit_crit_edge21.i.i.i.i104:                ; preds = %bb.aa
  br label %.loopexit.i.i105, !llvm.loop !3

.loopexit.i.i105:                                 ; preds = %.lr.ph.i.i.i.i100, %..loopexit_crit_edge21.i.i.i.i104, %_ZNKSt13unordered_mapIjN4Luau8Bytecode4BcOpESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE5countERS8_.exit
  %i.gh = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #20 ; 5 uses
  store ptr null, ptr %i.gh, align 8, !tbaa !245
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  store i32 %.071188, ptr %i.gi, align 8, !tbaa !255
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
  %.sroa.06.0.copyload = load i32, ptr %.1.i.i108, align 4, !tbaa !33
  switch i8 %trunc, label %_ZN4Luau10isLoopJumpE10LuauOpcode.exit [
    i8 24, label %bb.ab
    i8 58, label %bb.ab
    i8 57, label %bb.ab
  ]

bb.ab:                                            ; preds = %_ZNSt13unordered_mapIjN4Luau8Bytecode4BcOpESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEEixEOj.exit, %_ZNSt13unordered_mapIjN4Luau8Bytecode4BcOpESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEEixEOj.exit, %_ZNSt13unordered_mapIjN4Luau8Bytecode4BcOpESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEEixEOj.exit
  br label %_ZN4Luau10isLoopJumpE10LuauOpcode.exit

_ZN4Luau10isLoopJumpE10LuauOpcode.exit:           ; preds = %_ZNSt13unordered_mapIjN4Luau8Bytecode4BcOpESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEEixEOj.exit, %bb.ab
  %i.gm = phi i32 [ 2, %bb.ab ], [ 0, %_ZNSt13unordered_mapIjN4Luau8Bytecode4BcOpESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEEixEOj.exit ]
  tail call void @_ZN4Luau8Bytecode19BytecodeGraphParserINS0_9BcVmConstEE12addSuccessorENS0_4BcOpES4_NS0_15BcBlockEdgeKindE(ptr noundef nonnull align 8 dereferenceable(152) %0, i32 %.sroa.055.0255, i32 %.sroa.06.0.copyload, i32 noundef %i.gm)
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
  tail call void @_ZN4Luau8Bytecode19BytecodeGraphParserINS0_9BcVmConstEE12addSuccessorENS0_4BcOpES4_NS0_15BcBlockEdgeKindE(ptr noundef nonnull align 8 dereferenceable(152) %0, i32 %.sroa.055.0255, i32 %i.d, i32 noundef 1)
  br label %bb.ac

bb.ac:                                            ; preds = %.split, %.split75
  %i.gs = phi i1 [ false, %.split ], [ true, %.split75 ]
  %i.gt = phi i1 [ %i.gq, %.split ], [ %i.gn, %.split75 ]
  %phi.call = phi i32 [ %i.gr, %.split ], [ 1, %.split75 ]
  %i.gu = add i32 %phi.call, %.0185251            ; 19 uses
  %i.gv = icmp ult i32 %i.gu, %2                  ; 2 uses
  %or.cond = and i1 %i.gs, %i.gv
  %or.cond84 = or i1 %i.gt, %or.cond
  %.pre288.a = load i64, ptr %i.h, align 8, !tbaa !188 ; 2 uses
  br i1 %or.cond84, label %bb.ad, label %_ZNKSt13unordered_mapIjN4Luau8Bytecode4BcOpESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE5countERS8_.exit124

bb.ad:                                            ; preds = %bb.ac
  %.not.not.i.i.i111 = icmp eq i64 %.pre288.a, 0
  br i1 %.not.not.i.i.i111, label %.preheader265, label %bb.af

.preheader265:                                    ; preds = %bb.ad, %bb.ae
  %.sroa.06.0.in.i.i.i121 = phi ptr [ %.sroa.06.0.i.i.i122, %bb.ae ], [ %i.j, %bb.ad ]
  %.sroa.06.0.i.i.i122 = load ptr, ptr %.sroa.06.0.in.i.i.i121, align 8, !tbaa !245 ; 3 uses
  %.not.i.i.i123 = icmp eq ptr %.sroa.06.0.i.i.i122, null
  br i1 %.not.i.i.i123, label %.loopexit220, label %bb.ae

bb.ae:                                            ; preds = %.preheader265
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i122, i64 8
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !129
  %i.gy = icmp eq i32 %i.gu, %i.gx
  br i1 %i.gy, label %.preheader262.preheader, label %.preheader265, !llvm.loop !2

bb.af:                                            ; preds = %bb.ad
  %i.gz = zext i32 %i.gu to i64
  %i.ha = load i64, ptr %i.i, align 8, !tbaa !175 ; 2 uses
  %i.hb = urem i64 %i.gz, %i.ha                   ; 2 uses
  %i.hc = load ptr, ptr %i.g, align 8, !tbaa !174
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %i.hb
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !244 ; 2 uses
  %.not.i.i.i.i.i112 = icmp eq ptr %i.he, null
  br i1 %.not.i.i.i.i.i112, label %.loopexit220, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !245 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !129
  %i.hi = icmp eq i32 %i.gu, %i.hh
  br i1 %i.hi, label %_ZNKSt13unordered_mapIjN4Luau8Bytecode4BcOpESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE5countERS8_.exit124.thread, label %.lr.ph.i.i.i.i.i113

bb.ah:                                            ; preds = %bb.ai
  %i.hj = icmp eq i32 %i.gu, %i.hm
  br i1 %i.hj, label %_ZNKSt13unordered_mapIjN4Luau8Bytecode4BcOpESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE5countERS8_.exit124.thread, label %.lr.ph.i.i.i.i.i113, !llvm.loop !3

.lr.ph.i.i.i.i.i113:                              ; preds = %bb.ag, %bb.ah
  %.020.i.i.i.i.i114 = phi ptr [ %i.hk, %bb.ah ], [ %i.hf, %bb.ag ]
  %i.hk = load ptr, ptr %.020.i.i.i.i.i114, align 8, !tbaa !245 ; 3 uses
  %.not18.i.i.i.i.i115 = icmp eq ptr %i.hk, null
  br i1 %.not18.i.i.i.i.i115, label %.loopexit220, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.i.i.i.i.i113
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !129 ; 2 uses
  %i.hn = zext i32 %i.hm to i64
  %i.ho = urem i64 %i.hn, %i.ha
  %.not19.i.i.i.i.i116 = icmp eq i64 %i.ho, %i.hb
  br i1 %.not19.i.i.i.i.i116, label %bb.ah, label %..loopexit_crit_edge21.i.i.i.i.i117, !llvm.loop !3

..loopexit_crit_edge21.i.i.i.i.i117:              ; preds = %bb.ai
  br label %.loopexit220, !llvm.loop !3

.loopexit220:                                     ; preds = %.lr.ph.i.i.i.i.i113, %.preheader265, %..loopexit_crit_edge21.i.i.i.i.i117, %bb.af
  %i.hp = tail call i32 @_ZN4Luau8Bytecode19BytecodeGraphParserINS0_9BcVmConstEE9makeBlockEj(ptr noundef nonnull align 8 dereferenceable(152) %0, i32 noundef %i.gu) ; 0 uses
  %.pre.a = load i64, ptr %i.h, align 8, !tbaa !188
  br label %_ZNKSt13unordered_mapIjN4Luau8Bytecode4BcOpESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE5countERS8_.exit124

_ZNKSt13unordered_mapIjN4Luau8Bytecode4BcOpESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE5countERS8_.exit124: ; preds = %bb.ac, %.loopexit220
  %i.hq = phi i64 [ %.pre288.a, %bb.ac ], [ %.pre.a, %.loopexit220 ]
  %.not.not.i.i.i125 = icmp eq i64 %i.hq, 0
  br i1 %.not.not.i.i.i125, label %.preheader262.preheader, label %_ZNKSt13unordered_mapIjN4Luau8Bytecode4BcOpESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE5countERS8_.exit124.thread

.preheader262.preheader:                          ; preds = %bb.ae, %_ZNKSt13unordered_mapIjN4Luau8Bytecode4BcOpESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE5countERS8_.exit124
  br label %.preheader262

.preheader262:                                    ; preds = %.preheader262.preheader, %bb.aj
  %.sroa.06.0.in.i.i.i135 = phi ptr [ %.sroa.06.0.i.i.i136, %bb.aj ], [ %i.j, %.preheader262.preheader ]
  %.sroa.06.0.i.i.i136 = load ptr, ptr %.sroa.06.0.in.i.i.i135, align 8, !tbaa !245 ; 3 uses
  %.not.i.i.i137 = icmp eq ptr %.sroa.06.0.i.i.i136, null
  br i1 %.not.i.i.i137, label %_ZNKSt13unordered_mapIjN4Luau8Bytecode4BcOpESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE5countERS8_.exit138.thread, label %bb.aj

bb.aj:                                            ; preds = %.preheader262
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i136, i64 8
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !129
  %i.ht = icmp eq i32 %i.gu, %i.hs
  br i1 %i.ht, label %.loopexit217, label %.preheader262, !llvm.loop !2

_ZNKSt13unordered_mapIjN4Luau8Bytecode4BcOpESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE5countERS8_.exit124.thread: ; preds = %bb.ah, %bb.ag, %_ZNKSt13unordered_mapIjN4Luau8Bytecode4BcOpESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE5countERS8_.exit124
  %i.hu = zext i32 %i.gu to i64
  %i.hv = load i64, ptr %i.i, align 8, !tbaa !175 ; 2 uses
  %i.hw = urem i64 %i.hu, %i.hv                   ; 2 uses
  %i.hx = load ptr, ptr %i.g, align 8, !tbaa !174
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %i.hw
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !244 ; 2 uses
  %.not.i.i.i.i.i126 = icmp eq ptr %i.hz, null
  br i1 %.not.i.i.i.i.i126, label %_ZNKSt13unordered_mapIjN4Luau8Bytecode4BcOpESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE5countERS8_.exit138.thread, label %bb.ak

bb.ak:                                            ; preds = %_ZNKSt13unordered_mapIjN4Luau8Bytecode4BcOpESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE5countERS8_.exit124.thread
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !245 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !129
  %i.id = icmp eq i32 %i.gu, %i.ic
  br i1 %i.id, label %.loopexit217, label %.lr.ph.i.i.i.i.i127
end_hunk_0
