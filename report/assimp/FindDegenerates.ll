inline.NumInlined: 570
inline.NumDeleted: 346
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6Assimp22FindDegeneratesProcess7ExecuteEP7aiScene:bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load i32, ptr %i.ap, align 4
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
  br label %bb.at

_ZNSt6vectorIbSaIbEE6resizeEmb.exit:              ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i32 0, ptr %i.a, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.n = load i32, ptr %i.m, align 8
  %.not190 = icmp eq i32 %i.n, 0
  br i1 %.not190, label %.critedge.thread, label %.lr.ph183

.lr.ph183:                                        ; preds = %_ZNSt6vectorIbSaIbEE6resizeEmb.exit
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 25
  br label %bb.d

._crit_edge184:                                   ; preds = %.thread150
  %i.s = load i8, ptr %i.f, align 8, !range !7, !noundef !8
  %i.t = trunc nuw i8 %i.s to i1
  %i.u = icmp ne i32 %i.eg, 0
  %or.cond = select i1 %i.t, i1 %i.u, i1 false
  br i1 %or.cond, label %.preheader, label %.critedge

.preheader:                                       ; preds = %._crit_edge184
  %i.v = icmp eq i32 %i.eh, 0
  br i1 %i.v, label %._crit_edge188.thread, label %.lr.ph187

.lr.ph187:                                        ; preds = %.preheader
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 208
  br label %bb.ad

bb.d:                                             ; preds = %.lr.ph183, %.thread150
  %i.x = phi i32 [ 0, %.lr.ph183 ], [ %i.eg, %.thread150 ] ; 2 uses
  %indvars.iv202 = phi i64 [ 0, %.lr.ph183 ], [ %indvars.iv.next203, %.thread150 ] ; 6 uses
  %i.y = load ptr, ptr %i.o, align 8
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %indvars.iv202 ; 8 uses
  %i.aa = load i32, ptr %i.p, align 4             ; 7 uses
  %i.ab = load i32, ptr %i.z, align 8             ; 2 uses
  %.not191 = icmp eq i32 %i.ab, 0
  br i1 %.not191, label %._crit_edge181.thread, label %.lr.ph180

.lr.ph180:                                        ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph180, %.thread146
  %i.ad = phi i32 [ %i.x, %.lr.ph180 ], [ %i.dt, %.thread146 ] ; 3 uses
  %indvars.iv199 = phi i64 [ 0, %.lr.ph180 ], [ %indvars.iv.next200.pre-phi, %.thread146 ] ; 4 uses
  %i.ae = phi i32 [ %i.ab, %.lr.ph180 ], [ %i.du, %.thread146 ] ; 6 uses
  %.090176 = phi i1 [ true, %.lr.ph180 ], [ %.5, %.thread146 ] ; 3 uses
  %i.af = load ptr, ptr %i.ac, align 8            ; 4 uses
  %i.ag = zext i32 %i.ae to i64                   ; 2 uses
  %.idx155 = shl nuw nsw i64 %i.ag, 2             ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %.idx155
  %i.ai = lshr i64 %i.ag, 2                       ; 2 uses
  %.not154 = icmp eq i64 %i.ai, 0
  br i1 %.not154, label %._crit_edge.i.i.i.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.e
  %i.aj = and i64 %.idx155, 17179869168
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
  br i1 %.not49.i.i.i.i, label %bb.g, label %.loopexit.loopexit.split.loop.exit236

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %.02962.i.i.i.i, i64 8
  %.val35.i.i.i.i = load i32, ptr %i.al, align 4
  %.not50.i.i.i.i = icmp ult i32 %.val35.i.i.i.i, %i.aa
  br i1 %.not50.i.i.i.i, label %bb.h, label %.loopexit.loopexit.split.loop.exit234

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
  %i.aq = and i32 %i.ae, 3
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.e
  %.pre-phi69.i.i.i.i = phi i32 [ %i.aq, %._crit_edge.loopexit.i.i.i.i ], [ %i.ae, %bb.e ]
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

.loopexit.loopexit.split.loop.exit234:            ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %.02962.i.i.i.i, i64 8
  br label %.loopexit

.loopexit.loopexit.split.loop.exit236:            ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %.02962.i.i.i.i, i64 4
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i, %.loopexit.loopexit.split.loop.exit, %.loopexit.loopexit.split.loop.exit234, %.loopexit.loopexit.split.loop.exit236, %bb.n, %bb.l, %bb.j
  %.028.i.i.i.i = phi ptr [ %.1.i.i.i.i, %bb.l ], [ %.029.lcssa.i.i.i.i, %bb.j ], [ %.2.i.i.i.i, %bb.n ], [ %i.av, %.loopexit.loopexit.split.loop.exit236 ], [ %i.au, %.loopexit.loopexit.split.loop.exit234 ], [ %i.at, %.loopexit.loopexit.split.loop.exit ], [ %.02962.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.aw = icmp eq ptr %i.ah, %.028.i.i.i.i
  br i1 %i.aw, label %.thread, label %.loopexit..thread146_crit_edge

.loopexit..thread146_crit_edge:                   ; preds = %.loopexit
  %.pre209 = add nuw nsw i64 %indvars.iv199, 1
  br label %.thread146

.thread:                                          ; preds = %bb.n, %._crit_edge.i.i.i.i, %.loopexit
  %i.ax = icmp ugt i32 %i.ae, 4
  %i.ay = trunc nuw i64 %indvars.iv199 to i32     ; 2 uses
  %i.az = add i32 %i.ay, 2
  %.sroa.speculated = call i32 @llvm.umin.i32(i32 %i.az, i32 %i.ae)
  %.0138 = select i1 %i.ax, i32 %.sroa.speculated, i32 %i.ae ; 2 uses
  %i.ba = add nuw nsw i64 %indvars.iv199, 1       ; 6 uses
  %i.bb = zext i32 %.0138 to i64
  %.not113169 = icmp samesign ult i64 %i.ba, %i.bb
  br i1 %.not113169, label %.lr.ph174, label %.thread142

.lr.ph174:                                        ; preds = %.thread
  %i.bc = trunc nuw i64 %i.ba to i32
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph174, %_ZNK10aiVector3tIfEeqERKS0_.exit.thread
  %i.bd = phi i32 [ %i.ad, %.lr.ph174 ], [ %i.ct, %_ZNK10aiVector3tIfEeqERKS0_.exit.thread ] ; 5 uses
  %.085173 = phi i32 [ %i.bc, %.lr.ph174 ], [ %.085, %_ZNK10aiVector3tIfEeqERKS0_.exit.thread ] ; 5 uses
  %.085.in172 = phi i32 [ %i.ay, %.lr.ph174 ], [ %.186, %_ZNK10aiVector3tIfEeqERKS0_.exit.thread ]
  %.191171 = phi i1 [ %.090176, %.lr.ph174 ], [ %.3, %_ZNK10aiVector3tIfEeqERKS0_.exit.thread ] ; 4 uses
  %.1139170 = phi i32 [ %.0138, %.lr.ph174 ], [ %.2140, %_ZNK10aiVector3tIfEeqERKS0_.exit.thread ] ; 4 uses
  %i.be = load ptr, ptr %i.q, align 8             ; 2 uses
  %i.bf = load ptr, ptr %i.ac, align 8            ; 3 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv199
  %i.bh = load i32, ptr %i.bg, align 4
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [12 x i8], ptr %i.be, i64 %i.bi ; 3 uses
  %i.bk = zext i32 %.085173 to i64                ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [12 x i8], ptr %i.be, i64 %i.bn ; 3 uses
  %i.bp = load float, ptr %i.bj, align 4
  %i.bq = load float, ptr %i.bo, align 4
  %i.br = fcmp oeq float %i.bp, %i.bq
  br i1 %i.br, label %bb.p, label %_ZNK10aiVector3tIfEeqERKS0_.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %i.bt = load float, ptr %i.bs, align 4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.bv = load float, ptr %i.bu, align 4
  %i.bw = fcmp oeq float %i.bt, %i.bv
  br i1 %i.bw, label %_ZNK10aiVector3tIfEeqERKS0_.exit, label %_ZNK10aiVector3tIfEeqERKS0_.exit.thread

_ZNK10aiVector3tIfEeqERKS0_.exit:                 ; preds = %bb.p
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.by = load float, ptr %i.bx, align 4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.ca = load float, ptr %i.bz, align 4
  %i.cb = fcmp oeq float %i.by, %i.ca
  br i1 %i.cb, label %bb.q, label %_ZNK10aiVector3tIfEeqERKS0_.exit.thread

bb.q:                                             ; preds = %_ZNK10aiVector3tIfEeqERKS0_.exit
  %i.cc = load i32, ptr %i.z, align 8
  %i.cd = add i32 %i.cc, -1                       ; 3 uses
  store i32 %i.cd, ptr %i.z, align 8
  %i.ce = add i32 %.1139170, -1
  %i.cf = icmp ult i32 %.085173, %i.cd
  br i1 %i.cf, label %.lr.ph, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.q
  %.pre208 = zext i32 %i.cd to i64
  br label %._crit_edge

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.ac, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %.._crit_edge_crit_edge, %._crit_edge.loopexit
  %.pre-phi = phi i64 [ %.pre208, %.._crit_edge_crit_edge ], [ %i.cn, %._crit_edge.loopexit ]
  %i.cg = phi ptr [ %i.bf, %.._crit_edge_crit_edge ], [ %.pre, %._crit_edge.loopexit ]
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %.pre-phi
  store i32 -559038737, ptr %i.ch, align 4
  br i1 %.191171, label %bb.r, label %bb.s

.lr.ph:                                           ; preds = %bb.q, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %i.bk, %bb.q ] ; 2 uses
  %i.ci = load ptr, ptr %i.ac, align 8            ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv.next
  %i.ck = load i32, ptr %i.cj, align 4
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv
  store i32 %i.ck, ptr %i.cl, align 4
  %i.cm = load i32, ptr %i.z, align 8
  %i.cn = zext i32 %i.cm to i64                   ; 2 uses
  %i.co = icmp samesign ult i64 %indvars.iv.next, %i.cn
  br i1 %i.co, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !10

bb.r:                                             ; preds = %._crit_edge
  %i.cp = add i32 %i.bd, 1                        ; 2 uses
  store i32 %i.cp, ptr %i.a, align 4
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge
  %i.cq = phi i32 [ %i.cp, %bb.r ], [ %i.bd, %._crit_edge ] ; 2 uses
  %i.cr = load i8, ptr %i.f, align 8, !range !7, !noundef !8
  %i.cs = trunc nuw i8 %i.cr to i1
  br i1 %i.cs, label %bb.t, label %_ZNK10aiVector3tIfEeqERKS0_.exit.thread

_ZNK10aiVector3tIfEeqERKS0_.exit.thread:          ; preds = %bb.o, %bb.p, %_ZNK10aiVector3tIfEeqERKS0_.exit, %bb.s
  %i.ct = phi i32 [ %i.cq, %bb.s ], [ %i.bd, %_ZNK10aiVector3tIfEeqERKS0_.exit ], [ %i.bd, %bb.p ], [ %i.bd, %bb.o ] ; 2 uses
  %.2140 = phi i32 [ %i.ce, %bb.s ], [ %.1139170, %_ZNK10aiVector3tIfEeqERKS0_.exit ], [ %.1139170, %bb.p ], [ %.1139170, %bb.o ] ; 2 uses
  %.3 = phi i1 [ false, %bb.s ], [ %.191171, %_ZNK10aiVector3tIfEeqERKS0_.exit ], [ %.191171, %bb.p ], [ %.191171, %bb.o ] ; 2 uses
  %.186 = phi i32 [ %.085.in172, %bb.s ], [ %.085173, %_ZNK10aiVector3tIfEeqERKS0_.exit ], [ %.085173, %bb.p ], [ %.085173, %bb.o ] ; 2 uses
  %.085 = add i32 %.186, 1                        ; 2 uses
  %.not113 = icmp ult i32 %.085, %.2140
  br i1 %.not113, label %bb.o, label %.thread142, !llvm.loop !11

bb.t:                                             ; preds = %bb.s
  %i.cu = load ptr, ptr %2, align 8
  %i.cv = lshr i64 %indvars.iv202, 6
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.cv ; 2 uses
  %i.cx = and i64 %indvars.iv202, 63
  %i.cy = shl nuw i64 1, %i.cx
  %i.cz = load i64, ptr %i.cw, align 8
  %i.da = or i64 %i.cz, %i.cy
  store i64 %i.da, ptr %i.cw, align 8
  br label %.thread150

.thread142:                                       ; preds = %_ZNK10aiVector3tIfEeqERKS0_.exit.thread, %.thread
  %i.db = phi i32 [ %i.ad, %.thread ], [ %i.ct, %_ZNK10aiVector3tIfEeqERKS0_.exit.thread ] ; 5 uses
  %.191.lcssa = phi i1 [ %.090176, %.thread ], [ %.3, %_ZNK10aiVector3tIfEeqERKS0_.exit.thread ] ; 4 uses
  %i.dc = load i8, ptr %i.r, align 1, !range !7, !noundef !8
  %i.dd = trunc nuw i8 %i.dc to i1
  br i1 %i.dd, label %bb.u, label %.thread146

bb.u:                                             ; preds = %.thread142
  %i.de = load i32, ptr %i.z, align 8
  %i.df = icmp eq i32 %i.de, 3
  br i1 %i.df, label %bb.v, label %.thread146

bb.v:                                             ; preds = %bb.u
  %i.dg = invoke noundef float @_ZN6Assimp13GeometryUtils23calculateAreaOfTriangleERK6aiFaceP6aiMesh(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull %1)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.dh = fcmp olt float %i.dg, f0x358637BD
  br i1 %i.dh, label %bb.x, label %.thread146

bb.x:                                             ; preds = %bb.w
  %i.di = load i8, ptr %i.f, align 8, !range !7, !noundef !8
  %i.dj = trunc nuw i8 %i.di to i1
  br i1 %i.dj, label %bb.z, label %.thread146

bb.y:                                             ; preds = %bb.v
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.z:                                             ; preds = %bb.x
  %i.dl = load ptr, ptr %2, align 8
  %i.dm = lshr i64 %indvars.iv202, 6
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.dm ; 2 uses
  %i.do = and i64 %indvars.iv202, 63
  %i.dp = shl nuw i64 1, %i.do
  %i.dq = load i64, ptr %i.dn, align 8
  %i.dr = or i64 %i.dq, %i.dp
  store i64 %i.dr, ptr %i.dn, align 8
  %i.ds = add i32 %i.db, 1                        ; 2 uses
  store i32 %i.ds, ptr %i.a, align 4
  br label %.thread150

.thread146:                                       ; preds = %.loopexit..thread146_crit_edge, %bb.w, %bb.x, %.thread142, %bb.u
  %indvars.iv.next200.pre-phi = phi i64 [ %.pre209, %.loopexit..thread146_crit_edge ], [ %i.ba, %bb.w ], [ %i.ba, %bb.x ], [ %i.ba, %.thread142 ], [ %i.ba, %bb.u ] ; 2 uses
  %i.dt = phi i32 [ %i.ad, %.loopexit..thread146_crit_edge ], [ %i.db, %bb.w ], [ %i.db, %bb.x ], [ %i.db, %.thread142 ], [ %i.db, %bb.u ] ; 5 uses
  %.5 = phi i1 [ %.090176, %.loopexit..thread146_crit_edge ], [ %.191.lcssa, %bb.w ], [ %.191.lcssa, %bb.x ], [ %.191.lcssa, %.thread142 ], [ %.191.lcssa, %bb.u ]
  %i.du = load i32, ptr %i.z, align 8             ; 3 uses
  %i.dv = zext i32 %i.du to i64
  %i.dw = icmp samesign ult i64 %indvars.iv.next200.pre-phi, %i.dv
  br i1 %i.dw, label %bb.e, label %._crit_edge181, !llvm.loop !12

._crit_edge181:                                   ; preds = %.thread146
  switch i32 %i.du, label %._crit_edge181.thread [
    i32 1, label %bb.aa
    i32 2, label %bb.ab
    i32 3, label %bb.ac
  ]

bb.aa:                                            ; preds = %._crit_edge181
  %i.dx = load i32, ptr %1, align 8
  %i.dy = or i32 %i.dx, 1
  store i32 %i.dy, ptr %1, align 8
  br label %.thread150

bb.ab:                                            ; preds = %._crit_edge181
  %i.dz = load i32, ptr %1, align 8
  %i.ea = or i32 %i.dz, 2
  store i32 %i.ea, ptr %1, align 8
  br label %.thread150

bb.ac:                                            ; preds = %._crit_edge181
  %i.eb = load i32, ptr %1, align 8
  %i.ec = or i32 %i.eb, 4
  store i32 %i.ec, ptr %1, align 8
  br label %.thread150

._crit_edge181.thread:                            ; preds = %bb.d, %._crit_edge181
  %i.ed = phi i32 [ %i.dt, %._crit_edge181 ], [ %i.x, %bb.d ]
  %i.ee = load i32, ptr %1, align 8
  %i.ef = or i32 %i.ee, 8
  store i32 %i.ef, ptr %1, align 8
  br label %.thread150

.thread150:                                       ; preds = %bb.t, %bb.z, %._crit_edge181.thread, %bb.ac, %bb.ab, %bb.aa
  %i.eg = phi i32 [ %i.cq, %bb.t ], [ %i.ds, %bb.z ], [ %i.ed, %._crit_edge181.thread ], [ %i.dt, %bb.ac ], [ %i.dt, %bb.ab ], [ %i.dt, %bb.aa ] ; 3 uses
  %indvars.iv.next203 = add nuw nsw i64 %indvars.iv202, 1 ; 2 uses
  %i.eh = load i32, ptr %i.m, align 8             ; 2 uses
  %i.ei = zext i32 %i.eh to i64
  %i.ej = icmp samesign ult i64 %indvars.iv.next203, %i.ei
  br i1 %i.ej, label %bb.d, label %._crit_edge184, !llvm.loop !13

._crit_edge188:                                   ; preds = %bb.aj
  store i32 %.1, ptr %i.m, align 8
  %.not.not = icmp eq i32 %.1, 0
  br i1 %.not.not, label %._crit_edge188.thread, label %.critedge

bb.ad:                                            ; preds = %.lr.ph187, %bb.aj
  %indvars.iv205 = phi i64 [ 0, %.lr.ph187 ], [ %indvars.iv.next206, %bb.aj ] ; 5 uses
end_hunk_0
