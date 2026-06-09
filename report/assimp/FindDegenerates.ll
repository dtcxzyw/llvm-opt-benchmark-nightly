inline.NumInlined: 570
inline.NumDeleted: 346
begin_hunk_0_@_ZN6Assimp22FindDegeneratesProcess7ExecuteEP7aiScene:bb.a
  %i.ar = zext i32 %i.aq to i64                   ; 2 uses
  %i.as = urem i64 %i.ar, %i.ad
  %.not19.i.i.i.i = icmp eq i64 %i.as, %i.ae
  br i1 %.not19.i.i.i.i, label %bb.m, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !3

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.n
  br label %.loopexit.i.i, !llvm.loop !3

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i, %..loopexit_crit_edge21.i.i.i.i, %bb.k
  %i.at = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #19
          to label %.noexc unwind label %bb.j     ; 5 uses

.noexc:                                           ; preds = %.loopexit.i.i
  store ptr null, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = trunc nuw i64 %indvars.iv to i32
  store i32 %i.av, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  store i32 0, ptr %i.aw, align 4
  %i.ax = invoke ptr @_ZNSt10_HashtableIjSt4pairIKjjESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %2, i64 noundef %i.ae, i64 noundef %indvars.iv, ptr noundef nonnull %i.at, i64 noundef 1)
          to label %.loopexit unwind label %_ZNSt10_HashtableIjSt4pairIKjjESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i

_ZNSt10_HashtableIjSt4pairIKjjESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i: ; preds = %.noexc
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef 16) #18
  br label %.body

.loopexit:                                        ; preds = %bb.m, %.noexc, %bb.l
  %.pn.i.i = phi ptr [ %i.ax, %.noexc ], [ %i.ai, %bb.l ], [ %i.ao, %bb.m ]
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 12
  store i32 %.039, ptr %.1.i.i, align 4
  %i.az = load ptr, ptr %i.l, align 8             ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = zext i32 %.039 to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.bc
  store ptr %i.bb, ptr %i.bd, align 8
  %i.be = add i32 %.039, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.i, %.loopexit
  %.1 = phi i32 [ %.039, %bb.i ], [ %i.be, %.loopexit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bf = load i32, ptr %i.h, align 8
  %i.bg = zext i32 %i.bf to i64
  %i.bh = icmp samesign ult i64 %indvars.iv.next, %i.bg
  br i1 %i.bh, label %bb.d, label %._crit_edge, !llvm.loop !5

bb.p:                                             ; preds = %._crit_edge
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8
  call fastcc void @_ZL16updateSceneGraphP6aiNodeRKSt13unordered_mapIjjSt4hashIjESt8equal_toIjESaISt4pairIKjjEEE(ptr noundef %i.bj, ptr noundef nonnull align 8 dereferenceable(56) %2)
  br label %bb.r

bb.q:                                             ; preds = %bb.s, %bb.r
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.r:                                             ; preds = %bb.p, %._crit_edge
  %i.bl = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.s unwind label %bb.q

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.bl, ptr noundef nonnull @.str.3)
          to label %bb.t unwind label %bb.q

bb.t:                                             ; preds = %bb.s
  %i.bm = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIjSt4pairIKjjESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i28

.lr.ph.i.i.i.i28:                                 ; preds = %bb.t, %.lr.ph.i.i.i.i28
  %.06.i.i.i.i = phi ptr [ %i.bn, %.lr.ph.i.i.i.i28 ], [ %i.bm, %bb.t ] ; 2 uses
  %i.bn = load ptr, ptr %.06.i.i.i.i, align 8     ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 16) #18
  %.not.i.i.i.i29 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i29, label %_ZNSt10_HashtableIjSt4pairIKjjESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i28, !llvm.loop !6

_ZNSt10_HashtableIjSt4pairIKjjESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i28, %bb.t
  %i.bo = load ptr, ptr %2, align 8
  %i.bp = load i64, ptr %i.d, align 8
  %i.bq = shl i64 %i.bp, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.bo, i8 0, i64 %i.bq, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.br = load ptr, ptr %2, align 8               ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.c
  br i1 %i.bs, label %_ZNSt13unordered_mapIjjSt4hashIjESt8equal_toIjESaISt4pairIKjjEEED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZNSt10_HashtableIjSt4pairIKjjESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i
  %i.bt = load i64, ptr %i.d, align 8
  %i.bu = shl i64 %i.bt, 3
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bu) #18
  br label %_ZNSt13unordered_mapIjjSt4hashIjESt8equal_toIjESaISt4pairIKjjEEED2Ev.exit

_ZNSt13unordered_mapIjjSt4hashIjESt8equal_toIjESaISt4pairIKjjEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIjSt4pairIKjjESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.v

bb.v:                                             ; preds = %bb.a, %_ZNSt13unordered_mapIjjSt4hashIjESt8equal_toIjESaISt4pairIKjjEEED2Ev.exit
  ret void

.body:                                            ; preds = %bb.j, %_ZNSt10_HashtableIjSt4pairIKjjESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i, %bb.q, %bb.c
  %.pn.pn = phi { ptr, i32 } [ %i.q, %bb.c ], [ %i.bk, %bb.q ], [ %i.ac, %bb.j ], [ %i.ay, %_ZNSt10_HashtableIjSt4pairIKjjESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ]
  call void @_ZNSt13unordered_mapIjjSt4hashIjESt8equal_toIjESaISt4pairIKjjEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  resume { ptr, i32 } %.pn.pn
}

declare noundef ptr @_ZN6Assimp13DefaultLogger3getEv() local_unnamed_addr #4

declare void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6Assimp22FindDegeneratesProcess13ExecuteOnMeshEP6aiMesh(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(26) %0, ptr noundef initializes((0, 4)) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector", align 8       ; 14 uses
  %i.a = alloca i32, align 4                      ; 7 uses
  store i32 0, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  store ptr null, ptr %2, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr null, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  store ptr null, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.g = load i8, ptr %i.f, align 8, !range !7, !noundef !8
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.b, label %_ZNSt6vectorIbSaIbEE6resizeEmb.exit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i32, ptr %i.i, align 8
  %i.k = zext i32 %i.j to i64
  invoke void @_ZNSt6vectorIbSaIbEE14_M_fill_insertESt13_Bit_iteratormb(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr null, i32 0, i64 noundef %i.k, i1 noundef zeroext false)
          to label %_ZNSt6vectorIbSaIbEE6resizeEmb.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

_ZNSt6vectorIbSaIbEE6resizeEmb.exit:              ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i32 0, ptr %i.a, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.n = load i32, ptr %i.m, align 8
  %.not188 = icmp eq i32 %i.n, 0
  br i1 %.not188, label %.critedge.thread, label %.lr.ph181

.lr.ph181:                                        ; preds = %_ZNSt6vectorIbSaIbEE6resizeEmb.exit
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 25
  br label %bb.d

._crit_edge182:                                   ; preds = %.thread148
  %i.s = load i8, ptr %i.f, align 8, !range !7, !noundef !8
  %i.t = trunc nuw i8 %i.s to i1
  %i.u = icmp ne i32 %i.ed, 0
  %or.cond = select i1 %i.t, i1 %i.u, i1 false
  br i1 %or.cond, label %.preheader, label %.critedge

.preheader:                                       ; preds = %._crit_edge182
  %i.v = icmp eq i32 %i.ee, 0
  br i1 %i.v, label %._crit_edge186.thread, label %.lr.ph185

.lr.ph185:                                        ; preds = %.preheader
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 208
  br label %bb.ab

bb.d:                                             ; preds = %.lr.ph181, %.thread148
  %i.x = phi i32 [ 0, %.lr.ph181 ], [ %i.ed, %.thread148 ] ; 2 uses
  %indvars.iv200 = phi i64 [ 0, %.lr.ph181 ], [ %indvars.iv.next201, %.thread148 ] ; 6 uses
  %i.y = load ptr, ptr %i.o, align 8
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %indvars.iv200 ; 8 uses
  %i.aa = load i32, ptr %i.p, align 4             ; 7 uses
  %i.ab = load i32, ptr %i.z, align 8             ; 3 uses
  %.not189 = icmp eq i32 %i.ab, 0
  br i1 %.not189, label %._crit_edge179.thread, label %.lr.ph178

.lr.ph178:                                        ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph178, %.thread145
  %.pre207208 = phi i32 [ %i.ab, %.lr.ph178 ], [ %.pre207209, %.thread145 ] ; 2 uses
  %i.ad = phi i32 [ %i.ab, %.lr.ph178 ], [ %i.dq, %.thread145 ] ; 7 uses
  %i.ae = phi i32 [ %i.x, %.lr.ph178 ], [ %i.dr, %.thread145 ] ; 3 uses
  %indvars.iv197 = phi i64 [ 0, %.lr.ph178 ], [ %indvars.iv.next198.pre-phi, %.thread145 ] ; 5 uses
  %.0102174 = phi i1 [ true, %.lr.ph178 ], [ %.5, %.thread145 ] ; 3 uses
  %i.af = load ptr, ptr %i.ac, align 8            ; 4 uses
  %i.ag = zext i32 %i.ad to i64                   ; 3 uses
  %.idx153 = shl nuw nsw i64 %i.ag, 2             ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %.idx153
  %i.ai = lshr i64 %i.ag, 2                       ; 2 uses
  %.not152 = icmp eq i64 %i.ai, 0
  br i1 %.not152, label %._crit_edge.i.i.i.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.e
  %i.aj = and i64 %.idx153, 17179869168
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.af, i64 %i.aj
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.i, %.lr.ph.preheader.i.i.i.i
  %.063.i.i.i.i = phi i64 [ %i.ao, %bb.i ], [ %i.ai, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %.02962.i.i.i.i = phi ptr [ %i.an, %bb.i ], [ %i.af, %.lr.ph.preheader.i.i.i.i ] ; 9 uses
  %.029.val39.i.i.i.i = load i32, ptr %.02962.i.i.i.i, align 4
  %.not48.i.i.i.i = icmp ult i32 %.029.val39.i.i.i.i, %i.aa
  br i1 %.not48.i.i.i.i, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.02962.i.i.i.i, i64 4
  %.val37.i.i.i.i = load i32, ptr %i.ak, align 4
  %.not49.i.i.i.i = icmp ult i32 %.val37.i.i.i.i, %i.aa
  br i1 %.not49.i.i.i.i, label %bb.g, label %.loopexit.loopexit.split.loop.exit240

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %.02962.i.i.i.i, i64 8
  %.val35.i.i.i.i = load i32, ptr %i.al, align 4
  %.not50.i.i.i.i = icmp ult i32 %.val35.i.i.i.i, %i.aa
  br i1 %.not50.i.i.i.i, label %bb.h, label %.loopexit.loopexit.split.loop.exit238

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %.02962.i.i.i.i, i64 12
  %.val33.i.i.i.i = load i32, ptr %i.am, align 4
  %.not51.i.i.i.i = icmp ult i32 %.val33.i.i.i.i, %i.aa
  br i1 %.not51.i.i.i.i, label %bb.i, label %.loopexit.loopexit.split.loop.exit

bb.i:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %.02962.i.i.i.i, i64 16
  %i.ao = add nsw i64 %.063.i.i.i.i, -1
  %i.ap = icmp sgt i64 %.063.i.i.i.i, 1
  br i1 %i.ap, label %.lr.ph.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !9

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.i
  %i.aq = and i32 %i.ad, 3
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.e
  %.pre-phi69.i.i.i.i = phi i32 [ %i.aq, %._crit_edge.loopexit.i.i.i.i ], [ %i.ad, %bb.e ]
  %.029.lcssa.i.i.i.i = phi ptr [ %scevgep.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.af, %bb.e ] ; 5 uses
  switch i32 %.pre-phi69.i.i.i.i, label %.thread [
    i32 3, label %bb.j
    i32 2, label %bb.l
    i32 1, label %bb.n
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i.i
  %.029.val.i.i.i.i = load i32, ptr %.029.lcssa.i.i.i.i, align 4
  %.not.i.i.i.i = icmp ult i32 %.029.val.i.i.i.i, %i.aa
  br i1 %.not.i.i.i.i, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i, i64 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi ptr [ %i.ar, %bb.k ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %.1.val.i.i.i.i = load i32, ptr %.1.i.i.i.i, align 4
  %.not46.i.i.i.i = icmp ult i32 %.1.val.i.i.i.i, %i.aa
  br i1 %.not46.i.i.i.i, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %bb.l
  %i.as = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i.i.i.i
  %.2.i.i.i.i = phi ptr [ %i.as, %bb.m ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %.2.val.i.i.i.i = load i32, ptr %.2.i.i.i.i, align 4
  %.not47.i.i.i.i = icmp ult i32 %.2.val.i.i.i.i, %i.aa
  br i1 %.not47.i.i.i.i, label %.thread, label %.loopexit

.loopexit.loopexit.split.loop.exit:               ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %.02962.i.i.i.i, i64 12
  br label %.loopexit

.loopexit.loopexit.split.loop.exit238:            ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %.02962.i.i.i.i, i64 8
  br label %.loopexit

.loopexit.loopexit.split.loop.exit240:            ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %.02962.i.i.i.i, i64 4
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i, %.loopexit.loopexit.split.loop.exit, %.loopexit.loopexit.split.loop.exit238, %.loopexit.loopexit.split.loop.exit240, %bb.n, %bb.l, %bb.j
  %.028.i.i.i.i = phi ptr [ %.1.i.i.i.i, %bb.l ], [ %.029.lcssa.i.i.i.i, %bb.j ], [ %.2.i.i.i.i, %bb.n ], [ %i.av, %.loopexit.loopexit.split.loop.exit240 ], [ %i.au, %.loopexit.loopexit.split.loop.exit238 ], [ %i.at, %.loopexit.loopexit.split.loop.exit ], [ %.02962.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.aw = icmp eq ptr %i.ah, %.028.i.i.i.i
  br i1 %i.aw, label %.thread, label %.loopexit..thread145_crit_edge

.loopexit..thread145_crit_edge:                   ; preds = %.loopexit
  %.pre212.a = add nuw nsw i64 %indvars.iv197, 1
  br label %.thread145

.thread:                                          ; preds = %bb.n, %._crit_edge.i.i.i.i, %.loopexit
  %i.ax = icmp ugt i32 %i.ad, 4                   ; 2 uses
  %i.ay = trunc nuw i64 %indvars.iv197 to i32
  %i.az = add i32 %i.ay, 2
  %.sroa.speculated = call i32 @llvm.umin.i32(i32 %i.az, i32 %i.ad) ; 2 uses
  %.pre211 = zext i32 %.sroa.speculated to i64
  %.pre-phi = select i1 %i.ax, i64 %.pre211, i64 %i.ag
  %3 = add nuw nsw i64 %indvars.iv197, 1          ; 4 uses
  %.not112167 = icmp samesign ult i64 %3, %.pre-phi
  br i1 %.not112167, label %.lr.ph172, label %.thread141

.lr.ph172:                                        ; preds = %.thread
  %.lcssa161173 = select i1 %i.ax, i32 %.sroa.speculated, i32 %i.ad
  %4 = trunc nuw i64 %indvars.iv197 to i32
  %i.ba = trunc nuw i64 %3 to i32
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph172, %_ZNK10aiVector3tIfEeqERKS0_.exit.thread
  %i.bb = phi i32 [ %i.ae, %.lr.ph172 ], [ %i.cr, %_ZNK10aiVector3tIfEeqERKS0_.exit.thread ] ; 5 uses
  %.094171 = phi i32 [ %i.ba, %.lr.ph172 ], [ %.094, %_ZNK10aiVector3tIfEeqERKS0_.exit.thread ] ; 5 uses
  %.094.in170 = phi i32 [ %4, %.lr.ph172 ], [ %.195, %_ZNK10aiVector3tIfEeqERKS0_.exit.thread ]
  %.1103169 = phi i1 [ %.0102174, %.lr.ph172 ], [ %.3105, %_ZNK10aiVector3tIfEeqERKS0_.exit.thread ] ; 4 uses
  %.1139168 = phi i32 [ %.lcssa161173, %.lr.ph172 ], [ %.2, %_ZNK10aiVector3tIfEeqERKS0_.exit.thread ] ; 4 uses
  %i.bc = load ptr, ptr %i.q, align 8             ; 2 uses
  %i.bd = load ptr, ptr %i.ac, align 8            ; 3 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv197
  %i.bf = load i32, ptr %i.be, align 4
  %i.bg = zext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [12 x i8], ptr %i.bc, i64 %i.bg ; 3 uses
  %i.bi = zext i32 %.094171 to i64                ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4
  %i.bl = zext i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [12 x i8], ptr %i.bc, i64 %i.bl ; 3 uses
  %i.bn = load float, ptr %i.bh, align 4
  %i.bo = load float, ptr %i.bm, align 4
  %i.bp = fcmp oeq float %i.bn, %i.bo
  br i1 %i.bp, label %bb.p, label %_ZNK10aiVector3tIfEeqERKS0_.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.br = load float, ptr %i.bq, align 4
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bt = load float, ptr %i.bs, align 4
  %i.bu = fcmp oeq float %i.br, %i.bt
  br i1 %i.bu, label %_ZNK10aiVector3tIfEeqERKS0_.exit, label %_ZNK10aiVector3tIfEeqERKS0_.exit.thread

_ZNK10aiVector3tIfEeqERKS0_.exit:                 ; preds = %bb.p
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bw = load float, ptr %i.bv, align 4
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.by = load float, ptr %i.bx, align 4
  %i.bz = fcmp oeq float %i.bw, %i.by
  br i1 %i.bz, label %bb.q, label %_ZNK10aiVector3tIfEeqERKS0_.exit.thread

bb.q:                                             ; preds = %_ZNK10aiVector3tIfEeqERKS0_.exit
  %i.ca = load i32, ptr %i.z, align 8
  %i.cb = add i32 %i.ca, -1                       ; 3 uses
  store i32 %i.cb, ptr %i.z, align 8
  %i.cc = add i32 %.1139168, -1
  %i.cd = icmp ult i32 %.094171, %i.cb
  br i1 %i.cd, label %.lr.ph, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.q
  %.pre211.a = zext i32 %i.cb to i64
  br label %._crit_edge

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.ac, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %.._crit_edge_crit_edge, %._crit_edge.loopexit
  %.pre-phi.a = phi i64 [ %.pre211.a, %.._crit_edge_crit_edge ], [ %i.cl, %._crit_edge.loopexit ]
  %i.ce = phi ptr [ %i.bd, %.._crit_edge_crit_edge ], [ %.pre, %._crit_edge.loopexit ]
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %.pre-phi.a
  store i32 -559038737, ptr %i.cf, align 4
  br i1 %.1103169, label %bb.r, label %bb.s

.lr.ph:                                           ; preds = %bb.q, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %i.bi, %bb.q ] ; 2 uses
  %i.cg = load ptr, ptr %i.ac, align 8            ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv.next
  %i.ci = load i32, ptr %i.ch, align 4
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv
  store i32 %i.ci, ptr %i.cj, align 4
  %i.ck = load i32, ptr %i.z, align 8
  %i.cl = zext i32 %i.ck to i64                   ; 2 uses
  %i.cm = icmp samesign ult i64 %indvars.iv.next, %i.cl
  br i1 %i.cm, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !10

bb.r:                                             ; preds = %._crit_edge
  %i.cn = add i32 %i.bb, 1                        ; 2 uses
  store i32 %i.cn, ptr %i.a, align 4
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge
  %i.co = phi i32 [ %i.cn, %bb.r ], [ %i.bb, %._crit_edge ] ; 2 uses
  %i.cp = load i8, ptr %i.f, align 8, !range !7, !noundef !8
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %bb.t, label %_ZNK10aiVector3tIfEeqERKS0_.exit.thread

_ZNK10aiVector3tIfEeqERKS0_.exit.thread:          ; preds = %bb.o, %bb.p, %_ZNK10aiVector3tIfEeqERKS0_.exit, %bb.s
  %i.cr = phi i32 [ %i.co, %bb.s ], [ %i.bb, %_ZNK10aiVector3tIfEeqERKS0_.exit ], [ %i.bb, %bb.p ], [ %i.bb, %bb.o ] ; 2 uses
  %.2 = phi i32 [ %i.cc, %bb.s ], [ %.1139168, %_ZNK10aiVector3tIfEeqERKS0_.exit ], [ %.1139168, %bb.p ], [ %.1139168, %bb.o ] ; 2 uses
  %.3105 = phi i1 [ false, %bb.s ], [ %.1103169, %_ZNK10aiVector3tIfEeqERKS0_.exit ], [ %.1103169, %bb.p ], [ %.1103169, %bb.o ] ; 2 uses
  %.195 = phi i32 [ %.094.in170, %bb.s ], [ %.094171, %_ZNK10aiVector3tIfEeqERKS0_.exit ], [ %.094171, %bb.p ], [ %.094171, %bb.o ] ; 2 uses
  %.094 = add i32 %.195, 1                        ; 2 uses
  %.not112 = icmp ult i32 %.094, %.2
  br i1 %.not112, label %bb.o, label %.thread141.loopexit, !llvm.loop !11

bb.t:                                             ; preds = %bb.s
  %i.cs = load ptr, ptr %2, align 8
  %i.ct = lshr i64 %indvars.iv200, 6
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.ct ; 2 uses
  %i.cv = and i64 %indvars.iv200, 63
  %i.cw = shl nuw i64 1, %i.cv
  %i.cx = load i64, ptr %i.cu, align 8
  %i.cy = or i64 %i.cx, %i.cw
  store i64 %i.cy, ptr %i.cu, align 8
  br label %.thread148

.thread141.loopexit:                              ; preds = %_ZNK10aiVector3tIfEeqERKS0_.exit.thread
  %.pre207.pre = load i32, ptr %i.z, align 8
  br label %.thread141

.thread141:                                       ; preds = %.thread141.loopexit, %.thread
  %.pre207 = phi i32 [ %.pre207208, %.thread ], [ %.pre207.pre, %.thread141.loopexit ] ; 3 uses
  %i.cz = phi i32 [ %i.ae, %.thread ], [ %i.cr, %.thread141.loopexit ] ; 3 uses
  %.1103.lcssa = phi i1 [ %.0102174, %.thread ], [ %.3105, %.thread141.loopexit ] ; 2 uses
  %i.da = load i8, ptr %i.r, align 1, !range !7, !noundef !8
  %i.db = trunc nuw i8 %i.da to i1
  %i.dc = icmp eq i32 %.pre207, 3
  %or.cond246 = select i1 %i.db, i1 %i.dc, i1 false
  br i1 %or.cond246, label %bb.u, label %.thread145

bb.u:                                             ; preds = %.thread141
  %i.dd = invoke noundef float @_ZN6Assimp13GeometryUtils23calculateAreaOfTriangleERK6aiFaceP6aiMesh(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull %1)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.de = fcmp olt float %i.dd, f0x358637BD
  %i.df = load i8, ptr %i.f, align 8, !range !7
  %i.dg = trunc nuw i8 %i.df to i1
  %or.cond119 = select i1 %i.de, i1 %i.dg, i1 false
  br i1 %or.cond119, label %bb.x, label %..thread145_crit_edge

..thread145_crit_edge:                            ; preds = %bb.v
  %.pre206 = load i32, ptr %i.z, align 8          ; 2 uses
  br label %.thread145

bb.w:                                             ; preds = %bb.u
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.x:                                             ; preds = %bb.v
  %i.di = load ptr, ptr %2, align 8
  %i.dj = lshr i64 %indvars.iv200, 6
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.dj ; 2 uses
  %i.dl = and i64 %indvars.iv200, 63
  %i.dm = shl nuw i64 1, %i.dl
  %i.dn = load i64, ptr %i.dk, align 8
  %i.do = or i64 %i.dn, %i.dm
  store i64 %i.do, ptr %i.dk, align 8
  %i.dp = add i32 %i.cz, 1                        ; 2 uses
  store i32 %i.dp, ptr %i.a, align 4
  br label %.thread148

.thread145:                                       ; preds = %.loopexit..thread145_crit_edge, %..thread145_crit_edge, %.thread141
  %indvars.iv.next198.pre-phi = phi i64 [ %.pre212.a, %.loopexit..thread145_crit_edge ], [ %3, %..thread145_crit_edge ], [ %3, %.thread141 ] ; 2 uses
  %.pre207209 = phi i32 [ %.pre207208, %.loopexit..thread145_crit_edge ], [ %.pre206, %..thread145_crit_edge ], [ %.pre207, %.thread141 ]
  %i.dq = phi i32 [ %i.ad, %.loopexit..thread145_crit_edge ], [ %.pre206, %..thread145_crit_edge ], [ %.pre207, %.thread141 ] ; 3 uses
  %i.dr = phi i32 [ %i.ae, %.loopexit..thread145_crit_edge ], [ %i.cz, %..thread145_crit_edge ], [ %i.cz, %.thread141 ] ; 5 uses
  %.5 = phi i1 [ %.0102174, %.loopexit..thread145_crit_edge ], [ %.1103.lcssa, %..thread145_crit_edge ], [ %.1103.lcssa, %.thread141 ]
  %i.ds = zext i32 %i.dq to i64
  %i.dt = icmp samesign ult i64 %indvars.iv.next198.pre-phi, %i.ds
  br i1 %i.dt, label %bb.e, label %._crit_edge179, !llvm.loop !12

._crit_edge179:                                   ; preds = %.thread145
  switch i32 %i.dq, label %._crit_edge179.thread [
    i32 1, label %bb.y
    i32 2, label %bb.z
    i32 3, label %bb.aa
  ]

bb.y:                                             ; preds = %._crit_edge179
  %i.du = load i32, ptr %1, align 8
  %i.dv = or i32 %i.du, 1
  store i32 %i.dv, ptr %1, align 8
  br label %.thread148

bb.z:                                             ; preds = %._crit_edge179
  %i.dw = load i32, ptr %1, align 8
  %i.dx = or i32 %i.dw, 2
  store i32 %i.dx, ptr %1, align 8
  br label %.thread148

bb.aa:                                            ; preds = %._crit_edge179
  %i.dy = load i32, ptr %1, align 8
  %i.dz = or i32 %i.dy, 4
  store i32 %i.dz, ptr %1, align 8
  br label %.thread148

._crit_edge179.thread:                            ; preds = %bb.d, %._crit_edge179
  %i.ea = phi i32 [ %i.dr, %._crit_edge179 ], [ %i.x, %bb.d ]
  %i.eb = load i32, ptr %1, align 8
  %i.ec = or i32 %i.eb, 8
  store i32 %i.ec, ptr %1, align 8
  br label %.thread148

.thread148:                                       ; preds = %bb.t, %bb.x, %._crit_edge179.thread, %bb.aa, %bb.z, %bb.y
  %i.ed = phi i32 [ %i.co, %bb.t ], [ %i.dp, %bb.x ], [ %i.ea, %._crit_edge179.thread ], [ %i.dr, %bb.aa ], [ %i.dr, %bb.z ], [ %i.dr, %bb.y ] ; 3 uses
  %indvars.iv.next201 = add nuw nsw i64 %indvars.iv200, 1 ; 2 uses
  %i.ee = load i32, ptr %i.m, align 8             ; 2 uses
  %i.ef = zext i32 %i.ee to i64
  %i.eg = icmp samesign ult i64 %indvars.iv.next201, %i.ef
  br i1 %i.eg, label %bb.d, label %._crit_edge182, !llvm.loop !13

._crit_edge186:                                   ; preds = %bb.ah
  store i32 %.187, ptr %i.m, align 8
  %.not.not = icmp eq i32 %.187, 0
  br i1 %.not.not, label %._crit_edge186.thread, label %.critedge
end_hunk_0
