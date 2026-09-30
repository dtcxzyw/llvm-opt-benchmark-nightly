Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/FindDegenerates?download=true
inline.NumInlined: 570
inline.NumDeleted: 346
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6Assimp22FindDegeneratesProcess7ExecuteEP7aiScene:bb.a
  br label %.body

bb.k:                                             ; preds = %bb.f, %bb.d
  %i.ad = load i64, ptr %i.d, align 8             ; 2 uses
  %i.ae = urem i64 %indvars.iv, %i.ad             ; 3 uses
  %i.af = load ptr, ptr %2, align 8
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ae
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i, label %.loopexit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = load ptr, ptr %i.ah, align 8            ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = zext i32 %i.ak to i64
  %i.am = icmp eq i64 %indvars.iv, %i.al
  br i1 %i.am, label %.loopexit, label %.lr.ph.i.i.i.i

bb.m:                                             ; preds = %bb.n
  %i.an = icmp eq i64 %indvars.iv, %i.ar
  br i1 %i.an, label %.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !0

.lr.ph.i.i.i.i:                                   ; preds = %bb.l, %bb.m
  %.020.i.i.i.i = phi ptr [ %i.ao, %bb.m ], [ %i.ai, %bb.l ]
  %i.ao = load ptr, ptr %.020.i.i.i.i, align 8    ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not18.i.i.i.i, label %.loopexit.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = zext i32 %i.aq to i64                   ; 2 uses
  %i.as = urem i64 %i.ar, %i.ad
  %.not19.i.i.i.i = icmp eq i64 %i.as, %i.ae
  br i1 %.not19.i.i.i.i, label %bb.m, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !0

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.n
  br label %.loopexit.i.i, !llvm.loop !0

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
  store i32 %.040, ptr %.1.i.i, align 4
  %i.az = load ptr, ptr %i.l, align 8             ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = zext i32 %.040 to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.bc
  store ptr %i.bb, ptr %i.bd, align 8
  %i.be = add i32 %.040, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.i, %.loopexit
  %.1 = phi i32 [ %.040, %bb.i ], [ %i.be, %.loopexit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bf = load i32, ptr %i.h, align 8
  %i.bg = zext i32 %i.bf to i64
  %i.bh = icmp samesign ult i64 %indvars.iv.next, %i.bg
  br i1 %i.bh, label %bb.d, label %._crit_edge, !llvm.loop !7

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
  br i1 %.not.i.i.i.i29, label %_ZNSt10_HashtableIjSt4pairIKjjESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i28, !llvm.loop !1

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
  %i.g = load i8, ptr %i.f, align 8, !range !14, !noundef !15
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
  %i.s = load i8, ptr %i.f, align 8, !range !14, !noundef !15
  %i.t = trunc nuw i8 %i.s to i1
  %3 = icmp ne i32 %i.ef, 0
  %or.cond = select i1 %i.t, i1 %3, i1 false
  br i1 %or.cond, label %.preheader, label %.critedge

.preheader:                                       ; preds = %._crit_edge184
  %i.u = icmp eq i32 %i.eg, 0
  br i1 %i.u, label %._crit_edge188.thread, label %.lr.ph187

.lr.ph187:                                        ; preds = %.preheader
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 208
  br label %bb.ad

bb.d:                                             ; preds = %.lr.ph183, %.thread150
  %i.w = phi i32 [ 0, %.lr.ph183 ], [ %i.ef, %.thread150 ] ; 2 uses
  %indvars.iv202 = phi i64 [ 0, %.lr.ph183 ], [ %indvars.iv.next203, %.thread150 ] ; 6 uses
  %i.x = load ptr, ptr %i.o, align 8
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %indvars.iv202 ; 8 uses
  %i.z = load i32, ptr %i.p, align 4              ; 7 uses
  %i.aa = load i32, ptr %i.y, align 8             ; 2 uses
  %.not191 = icmp eq i32 %i.aa, 0
  br i1 %.not191, label %._crit_edge181.thread, label %.lr.ph180

.lr.ph180:                                        ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph180, %.thread146
  %i.ac = phi i32 [ %i.w, %.lr.ph180 ], [ %i.ds, %.thread146 ] ; 3 uses
  %indvars.iv199 = phi i64 [ 0, %.lr.ph180 ], [ %indvars.iv.next200.pre-phi, %.thread146 ] ; 4 uses
  %i.ad = phi i32 [ %i.aa, %.lr.ph180 ], [ %i.dt, %.thread146 ] ; 6 uses
  %.090176 = phi i1 [ true, %.lr.ph180 ], [ %.5, %.thread146 ] ; 3 uses
  %i.ae = load ptr, ptr %i.ab, align 8            ; 4 uses
  %i.af = zext i32 %i.ad to i64                   ; 2 uses
  %.idx155 = shl nuw nsw i64 %i.af, 2             ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.idx155
  %i.ah = lshr i64 %i.af, 2                       ; 2 uses
  %.not154 = icmp eq i64 %i.ah, 0
  br i1 %.not154, label %._crit_edge.i.i.i.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.e
  %i.ai = and i64 %.idx155, 17179869168
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.ae, i64 %i.ai
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.i, %.lr.ph.preheader.i.i.i.i
  %.063.i.i.i.i = phi i64 [ %i.an, %bb.i ], [ %i.ah, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %.02962.i.i.i.i = phi ptr [ %i.am, %bb.i ], [ %i.ae, %.lr.ph.preheader.i.i.i.i ] ; 9 uses
  %.029.val39.i.i.i.i = load i32, ptr %.02962.i.i.i.i, align 4
  %.not48.i.i.i.i = icmp ult i32 %.029.val39.i.i.i.i, %i.z
  br i1 %.not48.i.i.i.i, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.02962.i.i.i.i, i64 4
  %.val37.i.i.i.i = load i32, ptr %i.aj, align 4
  %.not49.i.i.i.i = icmp ult i32 %.val37.i.i.i.i, %i.z
  br i1 %.not49.i.i.i.i, label %bb.g, label %.loopexit.loopexit.split.loop.exit236

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %.02962.i.i.i.i, i64 8
  %.val35.i.i.i.i = load i32, ptr %i.ak, align 4
  %.not50.i.i.i.i = icmp ult i32 %.val35.i.i.i.i, %i.z
  br i1 %.not50.i.i.i.i, label %bb.h, label %.loopexit.loopexit.split.loop.exit234

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %.02962.i.i.i.i, i64 12
  %.val33.i.i.i.i = load i32, ptr %i.al, align 4
  %.not51.i.i.i.i = icmp ult i32 %.val33.i.i.i.i, %i.z
  br i1 %.not51.i.i.i.i, label %bb.i, label %.loopexit.loopexit.split.loop.exit

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %.02962.i.i.i.i, i64 16
  %i.an = add nsw i64 %.063.i.i.i.i, -1
  %i.ao = icmp sgt i64 %.063.i.i.i.i, 1
  br i1 %i.ao, label %.lr.ph.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !8

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.i
  %i.ap = and i32 %i.ad, 3
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.e
  %.pre-phi69.i.i.i.i = phi i32 [ %i.ap, %._crit_edge.loopexit.i.i.i.i ], [ %i.ad, %bb.e ]
  %.029.lcssa.i.i.i.i = phi ptr [ %scevgep.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.ae, %bb.e ] ; 5 uses
  switch i32 %.pre-phi69.i.i.i.i, label %.thread [
    i32 3, label %bb.j
    i32 2, label %bb.l
    i32 1, label %bb.n
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i.i
  %.029.val.i.i.i.i = load i32, ptr %.029.lcssa.i.i.i.i, align 4
  %.not.i.i.i.i = icmp ult i32 %.029.val.i.i.i.i, %i.z
  br i1 %.not.i.i.i.i, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i, i64 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi ptr [ %i.aq, %bb.k ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %.1.val.i.i.i.i = load i32, ptr %.1.i.i.i.i, align 4
  %.not46.i.i.i.i = icmp ult i32 %.1.val.i.i.i.i, %i.z
  br i1 %.not46.i.i.i.i, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %bb.l
  %i.ar = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i.i.i.i
  %.2.i.i.i.i = phi ptr [ %i.ar, %bb.m ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %.2.val.i.i.i.i = load i32, ptr %.2.i.i.i.i, align 4
  %.not47.i.i.i.i = icmp ult i32 %.2.val.i.i.i.i, %i.z
  br i1 %.not47.i.i.i.i, label %.thread, label %.loopexit

.loopexit.loopexit.split.loop.exit:               ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %.02962.i.i.i.i, i64 12
  br label %.loopexit

.loopexit.loopexit.split.loop.exit234:            ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %.02962.i.i.i.i, i64 8
  br label %.loopexit

.loopexit.loopexit.split.loop.exit236:            ; preds = %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %.02962.i.i.i.i, i64 4
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i, %.loopexit.loopexit.split.loop.exit, %.loopexit.loopexit.split.loop.exit234, %.loopexit.loopexit.split.loop.exit236, %bb.n, %bb.l, %bb.j
  %.028.i.i.i.i = phi ptr [ %.1.i.i.i.i, %bb.l ], [ %.029.lcssa.i.i.i.i, %bb.j ], [ %.2.i.i.i.i, %bb.n ], [ %i.au, %.loopexit.loopexit.split.loop.exit236 ], [ %i.at, %.loopexit.loopexit.split.loop.exit234 ], [ %i.as, %.loopexit.loopexit.split.loop.exit ], [ %.02962.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.av = icmp eq ptr %i.ag, %.028.i.i.i.i
  br i1 %i.av, label %.thread, label %.loopexit..thread146_crit_edge

.loopexit..thread146_crit_edge:                   ; preds = %.loopexit
  %.pre209.a = add nuw nsw i64 %indvars.iv199, 1
  br label %.thread146

.thread:                                          ; preds = %bb.n, %._crit_edge.i.i.i.i, %.loopexit
  %i.aw = icmp ugt i32 %i.ad, 4
  %i.ax = trunc nuw i64 %indvars.iv199 to i32     ; 2 uses
  %i.ay = add i32 %i.ax, 2
  %.sroa.speculated = call i32 @llvm.umin.i32(i32 %i.ay, i32 %i.ad)
  %.0138 = select i1 %i.aw, i32 %.sroa.speculated, i32 %i.ad ; 2 uses
  %i.az = add nuw nsw i64 %indvars.iv199, 1       ; 6 uses
  %i.ba = zext i32 %.0138 to i64
  %.not113169 = icmp samesign ult i64 %i.az, %i.ba
  br i1 %.not113169, label %.lr.ph174, label %.thread142

.lr.ph174:                                        ; preds = %.thread
  %i.bb = trunc nuw i64 %i.az to i32
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph174, %_ZNK10aiVector3tIfEeqERKS0_.exit.thread
  %i.bc = phi i32 [ %i.ac, %.lr.ph174 ], [ %i.cs, %_ZNK10aiVector3tIfEeqERKS0_.exit.thread ] ; 5 uses
  %.085173 = phi i32 [ %i.bb, %.lr.ph174 ], [ %.085, %_ZNK10aiVector3tIfEeqERKS0_.exit.thread ] ; 5 uses
  %.085.in172 = phi i32 [ %i.ax, %.lr.ph174 ], [ %.186, %_ZNK10aiVector3tIfEeqERKS0_.exit.thread ]
  %.191171 = phi i1 [ %.090176, %.lr.ph174 ], [ %.3, %_ZNK10aiVector3tIfEeqERKS0_.exit.thread ] ; 4 uses
  %.1139170 = phi i32 [ %.0138, %.lr.ph174 ], [ %.2140, %_ZNK10aiVector3tIfEeqERKS0_.exit.thread ] ; 4 uses
  %i.bd = load ptr, ptr %i.q, align 8             ; 2 uses
  %i.be = load ptr, ptr %i.ab, align 8            ; 3 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv199
  %i.bg = load i32, ptr %i.bf, align 4
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [12 x i8], ptr %i.bd, i64 %i.bh ; 3 uses
  %i.bj = zext i32 %.085173 to i64                ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [12 x i8], ptr %i.bd, i64 %i.bm ; 3 uses
  %i.bo = load float, ptr %i.bi, align 4
  %i.bp = load float, ptr %i.bn, align 4
  %i.bq = fcmp oeq float %i.bo, %i.bp
  br i1 %i.bq, label %bb.p, label %_ZNK10aiVector3tIfEeqERKS0_.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.br = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.bs = load float, ptr %i.br, align 4
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.bu = load float, ptr %i.bt, align 4
  %i.bv = fcmp oeq float %i.bs, %i.bu
  br i1 %i.bv, label %_ZNK10aiVector3tIfEeqERKS0_.exit, label %_ZNK10aiVector3tIfEeqERKS0_.exit.thread

_ZNK10aiVector3tIfEeqERKS0_.exit:                 ; preds = %bb.p
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bx = load float, ptr %i.bw, align 4
  %i.by = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bz = load float, ptr %i.by, align 4
  %i.ca = fcmp oeq float %i.bx, %i.bz
  br i1 %i.ca, label %bb.q, label %_ZNK10aiVector3tIfEeqERKS0_.exit.thread

bb.q:                                             ; preds = %_ZNK10aiVector3tIfEeqERKS0_.exit
  %i.cb = load i32, ptr %i.y, align 8
  %i.cc = add i32 %i.cb, -1                       ; 3 uses
  store i32 %i.cc, ptr %i.y, align 8
  %i.cd = add i32 %.1139170, -1
  %i.ce = icmp ult i32 %.085173, %i.cc
  br i1 %i.ce, label %.lr.ph, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.q
  %.pre208 = zext i32 %i.cc to i64
  br label %._crit_edge

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.ab, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %.._crit_edge_crit_edge, %._crit_edge.loopexit
  %.pre-phi = phi i64 [ %.pre208, %.._crit_edge_crit_edge ], [ %i.cm, %._crit_edge.loopexit ]
  %i.cf = phi ptr [ %i.be, %.._crit_edge_crit_edge ], [ %.pre, %._crit_edge.loopexit ]
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %.pre-phi
  store i32 -559038737, ptr %i.cg, align 4
  br i1 %.191171, label %bb.r, label %bb.s

.lr.ph:                                           ; preds = %bb.q, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %i.bj, %bb.q ] ; 2 uses
  %i.ch = load ptr, ptr %i.ab, align 8            ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv.next
  %i.cj = load i32, ptr %i.ci, align 4
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv
  store i32 %i.cj, ptr %i.ck, align 4
  %i.cl = load i32, ptr %i.y, align 8
  %i.cm = zext i32 %i.cl to i64                   ; 2 uses
  %i.cn = icmp samesign ult i64 %indvars.iv.next, %i.cm
  br i1 %i.cn, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !9

bb.r:                                             ; preds = %._crit_edge
  %i.co = add i32 %i.bc, 1                        ; 2 uses
  store i32 %i.co, ptr %i.a, align 4
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge
  %i.cp = phi i32 [ %i.co, %bb.r ], [ %i.bc, %._crit_edge ] ; 2 uses
  %i.cq = load i8, ptr %i.f, align 8, !range !14, !noundef !15
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %bb.t, label %_ZNK10aiVector3tIfEeqERKS0_.exit.thread

_ZNK10aiVector3tIfEeqERKS0_.exit.thread:          ; preds = %bb.o, %bb.p, %_ZNK10aiVector3tIfEeqERKS0_.exit, %bb.s
  %i.cs = phi i32 [ %i.cp, %bb.s ], [ %i.bc, %_ZNK10aiVector3tIfEeqERKS0_.exit ], [ %i.bc, %bb.p ], [ %i.bc, %bb.o ] ; 2 uses
  %.2140 = phi i32 [ %i.cd, %bb.s ], [ %.1139170, %_ZNK10aiVector3tIfEeqERKS0_.exit ], [ %.1139170, %bb.p ], [ %.1139170, %bb.o ] ; 2 uses
  %.3 = phi i1 [ false, %bb.s ], [ %.191171, %_ZNK10aiVector3tIfEeqERKS0_.exit ], [ %.191171, %bb.p ], [ %.191171, %bb.o ] ; 2 uses
  %.186 = phi i32 [ %.085.in172, %bb.s ], [ %.085173, %_ZNK10aiVector3tIfEeqERKS0_.exit ], [ %.085173, %bb.p ], [ %.085173, %bb.o ] ; 2 uses
  %.085 = add i32 %.186, 1                        ; 2 uses
  %.not113 = icmp ult i32 %.085, %.2140
  br i1 %.not113, label %bb.o, label %.thread142, !llvm.loop !10

bb.t:                                             ; preds = %bb.s
  %i.ct = load ptr, ptr %2, align 8
  %i.cu = lshr i64 %indvars.iv202, 6
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.cu ; 2 uses
  %i.cw = and i64 %indvars.iv202, 63
  %i.cx = shl nuw i64 1, %i.cw
  %i.cy = load i64, ptr %i.cv, align 8
  %i.cz = or i64 %i.cy, %i.cx
  store i64 %i.cz, ptr %i.cv, align 8
  br label %.thread150

.thread142:                                       ; preds = %_ZNK10aiVector3tIfEeqERKS0_.exit.thread, %.thread
  %i.da = phi i32 [ %i.ac, %.thread ], [ %i.cs, %_ZNK10aiVector3tIfEeqERKS0_.exit.thread ] ; 5 uses
  %.191.lcssa = phi i1 [ %.090176, %.thread ], [ %.3, %_ZNK10aiVector3tIfEeqERKS0_.exit.thread ] ; 4 uses
  %i.db = load i8, ptr %i.r, align 1, !range !14, !noundef !15
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %bb.u, label %.thread146

bb.u:                                             ; preds = %.thread142
  %i.dd = load i32, ptr %i.y, align 8
  %i.de = icmp eq i32 %i.dd, 3
  br i1 %i.de, label %bb.v, label %.thread146

bb.v:                                             ; preds = %bb.u
  %i.df = invoke noundef float @_ZN6Assimp13GeometryUtils23calculateAreaOfTriangleERK6aiFaceP6aiMesh(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull %1)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.dg = fcmp olt float %i.df, f0x358637BD
  br i1 %i.dg, label %bb.x, label %.thread146

bb.x:                                             ; preds = %bb.w
  %i.dh = load i8, ptr %i.f, align 8, !range !14, !noundef !15
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %bb.z, label %.thread146

bb.y:                                             ; preds = %bb.v
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.z:                                             ; preds = %bb.x
  %i.dk = load ptr, ptr %2, align 8
  %i.dl = lshr i64 %indvars.iv202, 6
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.dl ; 2 uses
  %i.dn = and i64 %indvars.iv202, 63
  %i.do = shl nuw i64 1, %i.dn
  %i.dp = load i64, ptr %i.dm, align 8
  %i.dq = or i64 %i.dp, %i.do
  store i64 %i.dq, ptr %i.dm, align 8
  %i.dr = add i32 %i.da, 1                        ; 2 uses
  store i32 %i.dr, ptr %i.a, align 4
  br label %.thread150

.thread146:                                       ; preds = %.loopexit..thread146_crit_edge, %bb.w, %bb.x, %.thread142, %bb.u
  %indvars.iv.next200.pre-phi = phi i64 [ %.pre209.a, %.loopexit..thread146_crit_edge ], [ %i.az, %bb.w ], [ %i.az, %bb.x ], [ %i.az, %.thread142 ], [ %i.az, %bb.u ] ; 2 uses
  %i.ds = phi i32 [ %i.ac, %.loopexit..thread146_crit_edge ], [ %i.da, %bb.w ], [ %i.da, %bb.x ], [ %i.da, %.thread142 ], [ %i.da, %bb.u ] ; 5 uses
  %.5 = phi i1 [ %.090176, %.loopexit..thread146_crit_edge ], [ %.191.lcssa, %bb.w ], [ %.191.lcssa, %bb.x ], [ %.191.lcssa, %.thread142 ], [ %.191.lcssa, %bb.u ]
  %i.dt = load i32, ptr %i.y, align 8             ; 3 uses
  %i.du = zext i32 %i.dt to i64
  %i.dv = icmp samesign ult i64 %indvars.iv.next200.pre-phi, %i.du
  br i1 %i.dv, label %bb.e, label %._crit_edge181, !llvm.loop !11

._crit_edge181:                                   ; preds = %.thread146
  switch i32 %i.dt, label %._crit_edge181.thread [
    i32 1, label %bb.aa
    i32 2, label %bb.ab
    i32 3, label %bb.ac
  ]

bb.aa:                                            ; preds = %._crit_edge181
  %i.dw = load i32, ptr %1, align 8
  %i.dx = or i32 %i.dw, 1
  store i32 %i.dx, ptr %1, align 8
  br label %.thread150

bb.ab:                                            ; preds = %._crit_edge181
  %i.dy = load i32, ptr %1, align 8
  %i.dz = or i32 %i.dy, 2
  store i32 %i.dz, ptr %1, align 8
  br label %.thread150

bb.ac:                                            ; preds = %._crit_edge181
  %i.ea = load i32, ptr %1, align 8
  %i.eb = or i32 %i.ea, 4
  store i32 %i.eb, ptr %1, align 8
  br label %.thread150

._crit_edge181.thread:                            ; preds = %bb.d, %._crit_edge181
  %i.ec = phi i32 [ %i.ds, %._crit_edge181 ], [ %i.w, %bb.d ]
  %i.ed = load i32, ptr %1, align 8
  %i.ee = or i32 %i.ed, 8
  store i32 %i.ee, ptr %1, align 8
  br label %.thread150

.thread150:                                       ; preds = %bb.t, %bb.z, %._crit_edge181.thread, %bb.ac, %bb.ab, %bb.aa
  %i.ef = phi i32 [ %i.cp, %bb.t ], [ %i.dr, %bb.z ], [ %i.ec, %._crit_edge181.thread ], [ %i.ds, %bb.ac ], [ %i.ds, %bb.ab ], [ %i.ds, %bb.aa ] ; 3 uses
  %indvars.iv.next203 = add nuw nsw i64 %indvars.iv202, 1 ; 2 uses
  %i.eg = load i32, ptr %i.m, align 8             ; 2 uses
  %i.eh = zext i32 %i.eg to i64
  %i.ei = icmp samesign ult i64 %indvars.iv.next203, %i.eh
  br i1 %i.ei, label %bb.d, label %._crit_edge184, !llvm.loop !12

._crit_edge188:                                   ; preds = %bb.aj
  store i32 %.1, ptr %i.m, align 8
  %.not.not = icmp eq i32 %.1, 0
  br i1 %.not.not, label %._crit_edge188.thread, label %.critedge

bb.ad:                                            ; preds = %.lr.ph187, %bb.aj
  %indvars.iv205 = phi i64 [ 0, %.lr.ph187 ], [ %indvars.iv.next206, %bb.aj ] ; 5 uses
  %.083185 = phi i32 [ 0, %.lr.ph187 ], [ %.1, %bb.aj ] ; 3 uses
  %i.ej = load ptr, ptr %i.v, align 8             ; 2 uses
  %i.ek = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %indvars.iv205 ; 5 uses
  %i.el = load ptr, ptr %2, align 8
  %i.em = lshr i64 %indvars.iv205, 6
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %i.em
  %i.eo = and i64 %indvars.iv205, 63
  %i.ep = shl nuw i64 1, %i.eo
  %i.eq = load i64, ptr %i.en, align 8
  %i.er = and i64 %i.eq, %i.ep
  %.not153 = icmp eq i64 %i.er, 0
  br i1 %.not153, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.es = add i32 %.083185, 1                     ; 2 uses
  %i.et = zext i32 %.083185 to i64                ; 2 uses
  %i.eu = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %i.et ; 2 uses
  %i.ev = load i32, ptr %i.ek, align 8
  store i32 %i.ev, ptr %i.eu, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ek, i64 8 ; 2 uses
  %i.ex = load ptr, ptr %i.ew, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  store ptr %i.ex, ptr %i.ey, align 8
  %.not112 = icmp eq i64 %indvars.iv205, %i.et
  br i1 %.not112, label %bb.aj, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store i32 0, ptr %i.ek, align 8
  store ptr null, ptr %i.ew, align 8
  br label %bb.aj

bb.ag:                                            ; preds = %bb.ad
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ek, i64 8 ; 2 uses
  %i.fa = load ptr, ptr %i.ez, align 8            ; 2 uses
  %i.fb = icmp eq ptr %i.fa, null
  br i1 %i.fb, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_ZdaPv(ptr noundef nonnull %i.fa) #18
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  store ptr null, ptr %i.ez, align 8
  store i32 0, ptr %i.ek, align 8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ae, %bb.af, %bb.ai
  %.1 = phi i32 [ %.083185, %bb.ai ], [ %i.es, %bb.af ], [ %i.es, %bb.ae ] ; 3 uses
  %indvars.iv.next206 = add nuw nsw i64 %indvars.iv205, 1 ; 2 uses
  %i.fc = load i32, ptr %i.m, align 8
  %i.fd = zext i32 %i.fc to i64
  %i.fe = icmp samesign ult i64 %indvars.iv.next206, %i.fd
  br i1 %i.fe, label %bb.ad, label %._crit_edge188, !llvm.loop !13

._crit_edge188.thread:                            ; preds = %.preheader, %._crit_edge188
  %i.ff = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.ak unwind label %bb.al

bb.ak:                                            ; preds = %._crit_edge188.thread
  invoke void @_ZN6Assimp6Logger12verboseDebugEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.ff, ptr noundef nonnull @.str.4)
          to label %.critedge.thread unwind label %bb.al

bb.al:                                            ; preds = %bb.ak, %._crit_edge188.thread
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

.critedge:                                        ; preds = %._crit_edge188, %._crit_edge184
  %.not = icmp eq i32 %i.ef, 0
  br i1 %.not, label %.critedge.thread, label %bb.am

bb.am:                                            ; preds = %.critedge
  %i.fh = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %bb.an unwind label %bb.aq

bb.an:                                            ; preds = %bb.am
  br i1 %i.fh, label %.critedge.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fi = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.ap unwind label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZN6Assimp6Logger4warnIJRA7_KcRjRA24_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.fi, ptr noundef nonnull align 1 dereferenceable(7) @.str.5, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(24) @.str.6)
          to label %.critedge.thread unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.am
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

.critedge.thread:                                 ; preds = %_ZNSt6vectorIbSaIbEE6resizeEmb.exit, %bb.ak, %.critedge, %bb.an, %bb.ap
  %.188 = phi i1 [ false, %.critedge ], [ false, %bb.ap ], [ false, %bb.an ], [ true, %bb.ak ], [ false, %_ZNSt6vectorIbSaIbEE6resizeEmb.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.fk = load ptr, ptr %2, align 8               ; 2 uses
  %.not.i.i = icmp eq ptr %i.fk, null
  br i1 %.not.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %.critedge.thread
  %i.fl = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.fm = ptrtoint ptr %i.fl to i64
  %i.fn = ptrtoint ptr %i.fk to i64
  %i.fo = sub i64 %i.fm, %i.fn                    ; 2 uses
  %i.fp = ashr exact i64 %i.fo, 3
  %i.fq = sub nsw i64 0, %i.fp
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.fl, i64 %i.fq
  call void @_ZdlPvm(ptr noundef %i.fr, i64 noundef %i.fo) #18
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %.critedge.thread, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret i1 %.188

bb.as:                                            ; preds = %bb.al, %bb.y, %bb.aq
  %.pn114.pn.pn = phi { ptr, i32 } [ %i.fj, %bb.aq ], [ %i.dj, %bb.y ], [ %i.fg, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.c
  %.pn114.pn.pn.pn = phi { ptr, i32 } [ %.pn114.pn.pn, %bb.as ], [ %i.l, %bb.c ]
  %i.fs = load ptr, ptr %2, align 8               ; 2 uses
  %.not.i.i127 = icmp eq ptr %i.fs, null
  br i1 %.not.i.i127, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit128, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ft = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.fu = ptrtoint ptr %i.ft to i64
  %i.fv = ptrtoint ptr %i.fs to i64
  %i.fw = sub i64 %i.fu, %i.fv                    ; 2 uses
  %i.fx = ashr exact i64 %i.fw, 3
  %i.fy = sub nsw i64 0, %i.fx
  %i.fz = getelementptr inbounds [8 x i8], ptr %i.ft, i64 %i.fy
  call void @_ZdlPvm(ptr noundef %i.fz, i64 noundef %i.fw) #18
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit128

_ZNSt13_Bvector_baseISaIbEED2Ev.exit128:          ; preds = %bb.at, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  resume { ptr, i32 } %.pn114.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6aiMeshD2Ev(ptr noundef nonnull align 8 dead_on_return(1320) dereferenceable(1320) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %2 = alloca %"class.std::unordered_set", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #18
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #18
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdaPv(ptr noundef nonnull %i.h) #18
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdaPv(ptr noundef nonnull %i.k) #18
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.k, label %bb.j

.preheader47.preheader:                           ; preds = %bb.y
  %i.p = load ptr, ptr %i.an, align 8             ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %.preheader47.1, label %bb.z

bb.j:                                             ; preds = %bb.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.n) #18
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZdaPv(ptr noundef nonnull %i.s) #18
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_ZdaPv(ptr noundef nonnull %i.v) #18
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @_ZdaPv(ptr noundef nonnull %i.y) #18
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @_ZdaPv(ptr noundef nonnull %i.ab) #18
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @_ZdaPv(ptr noundef nonnull %i.ae) #18
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @_ZdaPv(ptr noundef nonnull %i.ah) #18
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @_ZdaPv(ptr noundef nonnull %i.ak) #18
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
end_hunk_0
