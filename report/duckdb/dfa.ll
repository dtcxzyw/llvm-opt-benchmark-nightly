Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/dfa?download=true
inline.NumInlined: 1354
inline.NumDeleted: 544
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN10duckdb_re23DFA18WorkqToCachedStateEPNS0_5WorkqES2_j:bb.a

bb.ah:                                            ; preds = %.lr.ph196.new
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 4
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !111
  %i.ev = sext i32 %.7193 to i64
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.ev
  %i.ex = add nsw i32 %.7193, 1
  store i32 %i.eu, ptr %i.ew, align 4, !tbaa !17
  br label %bb.ai

_ZN10duckdb_re28PODArrayIiED2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc, %bb.ac, %.noexc136, %bb.ae, %.loopexit
  %lpad.loopexit.split-lp232 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #22
  resume { ptr, i32 } %lpad.loopexit.split-lp232

bb.ai:                                            ; preds = %bb.ah, %.lr.ph196.new
  %.8 = phi i32 [ %i.ex, %bb.ah ], [ %.7193, %.lr.ph196.new ] ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.0194, i64 4
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !17
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.fa ; 2 uses
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !120
  %i.fd = and i32 %i.fc, 7
  %i.fe = icmp eq i32 %i.fd, 5
  br i1 %i.fe, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fb, i64 4
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !111
  %i.fh = sext i32 %.8 to i64
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.fh
  %i.fj = add nsw i32 %.8, 1
  store i32 %i.fg, ptr %i.fi, align 4, !tbaa !17
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.8.1 = phi i32 [ %i.fj, %bb.aj ], [ %.8, %bb.ai ] ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.0194, i64 8 ; 2 uses
  %.not124.1 = icmp eq ptr %i.fk, %i.du
  br i1 %.not124.1, label %.loopexit, label %.lr.ph196.new, !llvm.loop !214

.loopexit:                                        ; preds = %.prol.loopexit, %bb.ak, %bb.af, %_ZSt4sortIPiEvT_S1_.exit138
  %.9 = phi i32 [ %.6227, %_ZSt4sortIPiEvT_S1_.exit138 ], [ %i.dn, %bb.af ], [ %.8.lcssa.unr, %.prol.loopexit ], [ %.8.1, %bb.ak ]
  %i.fl = invoke noundef ptr @_ZN10duckdb_re23DFA11CachedStateEPiij(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef nonnull %i.i, i32 noundef %.9, i32 noundef %.098.lcssa220225)
          to label %_ZN10duckdb_re28PODArrayIiED2Ev.exit141 unwind label %_ZN10duckdb_re28PODArrayIiED2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN10duckdb_re28PODArrayIiED2Ev.exit141:          ; preds = %_ZN10duckdb_re24Prog4Inst6greedyEPS0_.exit.thread, %_ZN10duckdb_re24Prog4Inst6greedyEPS0_.exit.peel, %_ZN10duckdb_re24Prog4Inst6greedyEPS0_.exit.thread.peel, %.loopexit, %bb.x
  %.4112 = phi ptr [ %i.fl, %.loopexit ], [ inttoptr (i64 1 to ptr), %bb.x ], [ inttoptr (i64 2 to ptr), %_ZN10duckdb_re24Prog4Inst6greedyEPS0_.exit.thread.peel ], [ inttoptr (i64 2 to ptr), %_ZN10duckdb_re24Prog4Inst6greedyEPS0_.exit.peel ], [ inttoptr (i64 2 to ptr), %_ZN10duckdb_re24Prog4Inst6greedyEPS0_.exit.thread ]
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #22
  ret ptr %.4112
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN10duckdb_re23DFA11CachedStateEPiij(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %5 = alloca %"struct.duckdb_re2::DFA::State", align 8 ; 6 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store ptr %1, ptr %5, align 8, !tbaa !117
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %2, ptr %i.c, align 8, !tbaa !115
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 %3, ptr %i.d, align 4, !tbaa !116
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store ptr %5, ptr %i.a, align 8, !tbaa !106
  %i.f = call ptr @_ZNSt10_HashtableIPN10duckdb_re23DFA5StateES3_SaIS3_ENSt8__detail9_IdentityENS1_10StateEqualENS1_9StateHashENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE4findERKS3_(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %.not29 = icmp eq ptr %i.f, null
  br i1 %.not29, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !106
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !46
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !90   ; 2 uses
  %i.l = add nsw i32 %i.k, 1                      ; 3 uses
  %i.m = sext i32 %i.l to i64                     ; 2 uses
  %i.n = sext i32 %2 to i64                       ; 2 uses
  %i.o = shl nsw i64 %i.n, 2
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !49   ; 2 uses
  %i.r = shl i64 %i.m, 35
  %i.s = shl i64 %i.n, 34
  %i.t = add i64 %i.s, 103079215104
  %i.u = add i64 %i.r, %i.t                       ; 2 uses
  %sext = add i64 %i.u, 171798691840
  %i.v = ashr exact i64 %sext, 32                 ; 2 uses
  %i.w = icmp slt i64 %i.q, %i.v
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i64 -1, ptr %i.p, align 8, !tbaa !49
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.x = sub nsw i64 %i.q, %i.v
  store i64 %i.x, ptr %i.p, align 8, !tbaa !49
  %i.y = ashr exact i64 %i.u, 32                  ; 2 uses
  %i.z = icmp slt i64 %i.y, 0
  br i1 %i.z, label %.noexc, label %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit, !prof !93

.noexc:                                           ; preds = %bb.e
  call void @_ZSt17__throw_bad_allocv() #20
  unreachable

_ZNSt15__new_allocatorIcE8allocateEmPKv.exit:     ; preds = %bb.e
  %i.aa = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #21 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store ptr %i.aa, ptr %i.b, align 8, !tbaa !106
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !124
  %.not30 = icmp slt i32 %i.k, 0
  br i1 %.not30, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit
  %wide.trip.count = zext nneg i32 %i.l to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.l, 4
  br i1 %min.iters.check, label %.lr.ph.preheader36, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %index ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store <2 x ptr> splat (ptr null), ptr %i.ad, align 8, !tbaa !219
  store <2 x ptr> splat (ptr null), ptr %i.ae, align 8, !tbaa !219
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !216

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader36

.lr.ph.preheader36:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.m ; 2 uses
  store ptr %i.ag, ptr %i.aa, align 8, !tbaa !117
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ag, ptr align 4 %1, i64 %i.o, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i32 %2, ptr %i.ah, align 8, !tbaa !115
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 %3, ptr %i.ai, align 4, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store ptr %i.e, ptr %4, align 8, !tbaa !223
  %i.aj = call { ptr, i8 } @_ZNSt10_HashtableIPN10duckdb_re23DFA5StateES3_SaIS3_ENSt8__detail9_IdentityENS1_10StateEqualENS1_9StateHashENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS3_SH_NS5_10_AllocNodeISaINS5_10_Hash_nodeIS3_Lb1EEEEEEEESt4pairINS5_14_Node_iteratorIS3_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.ak = load ptr, ptr %i.b, align 8, !tbaa !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %bb.f

.lr.ph:                                           ; preds = %.lr.ph.preheader36, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader36 ] ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv
  store ptr null, ptr %i.al, align 8, !tbaa !219
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !217

bb.f:                                             ; preds = %bb.d, %._crit_edge, %bb.b
  %.1 = phi ptr [ %i.h, %bb.b ], [ null, %bb.d ], [ %i.ak, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  ret ptr %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10duckdb_re23DFA12StateToWorkqEPNS0_5StateEPNS0_5WorkqE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(296) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) initializes((0, 4), (48, 52)) %2) local_unnamed_addr #1 align 2 {
bb.a:
  store i32 0, ptr %2, align 8, !tbaa !92
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !96
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  store i32 %i.b, ptr %i.c, align 8, !tbaa !98
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !115
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN10duckdb_re23DFA5Workq4markEv.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN10duckdb_re23DFA5Workq4markEv.exit ] ; 2 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !117
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv
  %i.n = load i32, ptr %i.m, align 4, !tbaa !17   ; 2 uses
  switch i32 %i.n, label %bb.f [
    i32 -1, label %bb.c
    i32 -2, label %._crit_edge
  ]

bb.c:                                             ; preds = %bb.b
  %i.o = load i8, ptr %i.g, align 4, !tbaa !99, !range !122, !noundef !123
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %_ZN10duckdb_re23DFA5Workq4markEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load i32, ptr %i.c, align 8, !tbaa !98   ; 4 uses
  %i.r = add nsw i32 %i.q, 1
  store i32 %i.r, ptr %i.c, align 8, !tbaa !98
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !94   ; 2 uses
  %.not.i.i.i.i = icmp ne ptr %i.s, null
  %i.t = load i32, ptr %i.h, align 8
  %.not10.i.i.i = icmp ugt i32 %i.t, %i.q
  %.not.i.i.i = select i1 %.not.i.i.i.i, i1 %.not10.i.i.i, i1 false
  br i1 %.not.i.i.i, label %bb.e, label %_ZN10duckdb_re23DFA5Workq4markEv.exit

bb.e:                                             ; preds = %bb.d
  %i.u = load i32, ptr %2, align 8, !tbaa !92     ; 2 uses
  %i.v = sext i32 %i.q to i64
  %i.w = load ptr, ptr %i.j, align 8, !tbaa !94
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.v
  store i32 %i.u, ptr %i.x, align 4, !tbaa !17
  %i.y = sext i32 %i.u to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.y
  store i32 %i.q, ptr %i.z, align 4, !tbaa !17
  %i.aa = load i32, ptr %2, align 8, !tbaa !92
  %i.ab = add nsw i32 %i.aa, 1
  store i32 %i.ab, ptr %2, align 8, !tbaa !92
  br label %_ZN10duckdb_re23DFA5Workq4markEv.exit

bb.f:                                             ; preds = %bb.b
  %i.ac = load i32, ptr %i.k, align 4, !tbaa !116
  %i.ad = and i32 %i.ac, 255
  tail call void @_ZN10duckdb_re23DFA10AddToQueueEPNS0_5WorkqEij(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef nonnull %2, i32 noundef %i.n, i32 noundef %i.ad)
  br label %_ZN10duckdb_re23DFA5Workq4markEv.exit

_ZN10duckdb_re23DFA5Workq4markEv.exit:            ; preds = %bb.e, %bb.d, %bb.c, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ae = load i32, ptr %i.d, align 8, !tbaa !115
  %i.af = sext i32 %i.ae to i64
  %i.ag = icmp slt i64 %indvars.iv.next, %i.af
  br i1 %i.ag, label %bb.b, label %._crit_edge, !llvm.loop !2

._crit_edge:                                      ; preds = %_ZN10duckdb_re23DFA5Workq4markEv.exit, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10duckdb_re23DFA10AddToQueueEPNS0_5WorkqEij(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(296) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.LogMessage, align 8          ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !94   ; 5 uses
  store i32 %2, ptr %i.b, align 4, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = xor i32 %3, -1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.j = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.l = getelementptr i8, ptr %i.j, i64 -24
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.backedge
  %.04157 = phi i32 [ 1, %bb.a ], [ %.041.be, %.backedge ]
  %i.s = add nsw i32 %.04157, -1                  ; 2 uses
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !17
  br label %.outer

.outer:                                           ; preds = %.outer.backedge, %bb.b
  %.142.ph = phi i32 [ %i.s, %bb.b ], [ %.142.ph.be, %.outer.backedge ] ; 13 uses
  %.040.ph = phi i32 [ %i.v, %bb.b ], [ %i.cv, %.outer.backedge ]
  br label %.backedge72

.backedge72:                                      ; preds = %.backedge72.backedge, %.outer
  %.040 = phi i32 [ %.040.ph, %.outer ], [ %.040.be, %.backedge72.backedge ] ; 12 uses
  switch i32 %.040, label %bb.f [
    i32 -1, label %bb.c
    i32 0, label %.backedge
  ]

bb.c:                                             ; preds = %.backedge72
  %i.w = load i8, ptr %i.e, align 4, !tbaa !99, !range !122, !noundef !123
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %.backedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = load i32, ptr %i.r, align 8, !tbaa !98   ; 4 uses
  %i.z = add nsw i32 %i.y, 1
  store i32 %i.z, ptr %i.r, align 8, !tbaa !98
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !94  ; 2 uses
  %.not.i.i.i.i = icmp ne ptr %i.aa, null
  %i.ab = load i32, ptr %i.c, align 8
  %.not10.i.i.i = icmp ugt i32 %i.ab, %i.y
  %.not.i.i.i = select i1 %.not.i.i.i.i, i1 %.not10.i.i.i, i1 false
  br i1 %.not.i.i.i, label %bb.e, label %.backedge

bb.e:                                             ; preds = %bb.d
  %i.ac = load i32, ptr %1, align 8, !tbaa !92    ; 2 uses
  %i.ad = sext i32 %i.y to i64
  %i.ae = load ptr, ptr %i.f, align 8, !tbaa !94
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ad
  store i32 %i.ac, ptr %i.af, align 4, !tbaa !17
  %i.ag = sext i32 %i.ac to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ag
  store i32 %i.y, ptr %i.ah, align 4, !tbaa !17
  %i.ai = load i32, ptr %1, align 8, !tbaa !92
  %i.aj = add nsw i32 %i.ai, 1
  store i32 %i.aj, ptr %1, align 8, !tbaa !92
  br label %.backedge

.backedge:                                        ; preds = %bb.u, %select.unfold, %.backedge72, %_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit, %_ZN10LogMessageD2Ev.exit, %bb.e, %bb.d, %bb.c
  %.041.be = phi i32 [ %.142.ph, %bb.c ], [ %.142.ph, %bb.d ], [ %.142.ph, %bb.e ], [ %.142.ph, %_ZN10LogMessageD2Ev.exit ], [ %.142.ph, %select.unfold ], [ %.142.ph, %_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit ], [ %.142.ph, %.backedge72 ], [ %.4, %bb.u ] ; 2 uses
  %i.ak = icmp sgt i32 %.041.be, 0
  br i1 %i.ak, label %bb.b, label %bb.v, !llvm.loop !224

bb.f:                                             ; preds = %.backedge72
  %i.al = load ptr, ptr %i.d, align 8, !tbaa !94  ; 3 uses
  %.not.i.i = icmp ne ptr %i.al, null
  %i.am = load i32, ptr %i.c, align 8
  %.not6.i = icmp ugt i32 %i.am, %.040
  %.not.i = select i1 %.not.i.i, i1 %.not6.i, i1 false
  br i1 %.not.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.an = sext i32 %.040 to i64                   ; 2 uses
  %i.ao = load ptr, ptr %i.f, align 8, !tbaa !94
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.an ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !17 ; 2 uses
  %i.ar = load i32, ptr %1, align 8, !tbaa !92    ; 3 uses
  %i.as = icmp ult i32 %i.aq, %i.ar
  br i1 %i.as, label %_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit, label %.thread52

_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit:  ; preds = %bb.g
  %i.at = sext i32 %i.aq to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !17
  %i.aw = icmp eq i32 %i.av, %.040
  br i1 %i.aw, label %.backedge, label %.thread52, !llvm.loop !224

bb.h:                                             ; preds = %bb.f
  store i8 0, ptr %i.e, align 4, !tbaa !99
  %.pre = sext i32 %.040 to i64
  br label %_ZN10duckdb_re23DFA5Workq10insert_newEi.exit

.thread52:                                        ; preds = %_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit, %bb.g
  store i8 0, ptr %i.e, align 4, !tbaa !99
  store i32 %i.ar, ptr %i.ap, align 4, !tbaa !17
  %i.ax = sext i32 %i.ar to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.ax
  store i32 %.040, ptr %i.ay, align 4, !tbaa !17
  %i.az = load i32, ptr %1, align 8, !tbaa !92
  %i.ba = add nsw i32 %i.az, 1
  store i32 %i.ba, ptr %1, align 8, !tbaa !92
  br label %_ZN10duckdb_re23DFA5Workq10insert_newEi.exit

_ZN10duckdb_re23DFA5Workq10insert_newEi.exit:     ; preds = %bb.h, %.thread52
  %.pre-phi = phi i64 [ %.pre, %bb.h ], [ %i.an, %.thread52 ] ; 4 uses
  %i.bb = load ptr, ptr %0, align 8, !tbaa !46    ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 120
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !118 ; 4 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %.pre-phi
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !120 ; 5 uses
  %i.bg = and i32 %i.bf, 7
  switch i32 %i.bg, label %bb.i [
    i32 2, label %select.unfold
    i32 5, label %select.unfold
    i32 3, label %bb.l
    i32 6, label %bb.l
    i32 1, label %.split70
    i32 4, label %bb.s
  ]

bb.i:                                             ; preds = %_ZN10duckdb_re23DFA5Workq10insert_newEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store i8 0, ptr %4, align 8, !tbaa !133
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.i)
  %i.bh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.11, i64 noundef 18)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.i
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %.pre-phi
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !120
  %i.bk = and i32 %i.bj, 7
  %i.bl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i32 noundef %i.bk)
          to label %bb.j unwind label %bb.k       ; 0 uses

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  store ptr %i.j, ptr %i.i, align 8, !tbaa !135
  %i.bm = load i64, ptr %i.l, align 8
  %i.bn = getelementptr inbounds i8, ptr %i.i, i64 %i.bm
  store ptr %i.k, ptr %i.bn, align 8, !tbaa !135
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.m, align 8, !tbaa !135
  %i.bo = load ptr, ptr %i.n, align 8, !tbaa !112 ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.o
  br i1 %i.bp, label %_ZN10LogMessageD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.j
  call void @_ZdlPv(ptr noundef %i.bo) #22
  br label %_ZN10LogMessageD2Ev.exit

_ZN10LogMessageD2Ev.exit:                         ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.m, align 8, !tbaa !135
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.p) #19
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.q) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %.backedge

bb.k:                                             ; preds = %bb.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  resume { ptr, i32 } %i.bq

bb.l:                                             ; preds = %_ZN10duckdb_re23DFA5Workq10insert_newEi.exit, %_ZN10duckdb_re23DFA5Workq10insert_newEi.exit
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %.pre-phi ; 2 uses
  %i.bs = and i32 %i.bf, 8
  %.not44 = icmp eq i32 %i.bs, 0
  br i1 %.not44, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bt = add nuw nsw i32 %.040, 1
  %i.bu = add nsw i32 %.142.ph, 1
  %i.bv = sext i32 %.142.ph to i64
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.bv
  store i32 %i.bt, ptr %i.bw, align 4, !tbaa !17
  %.pre60 = load i32, ptr %i.br, align 4, !tbaa !120
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bx = phi i32 [ %i.bf, %bb.l ], [ %.pre60, %bb.m ] ; 5 uses
  %.2 = phi i32 [ %.142.ph, %bb.l ], [ %i.bu, %bb.m ] ; 6 uses
  %i.by = and i32 %i.bx, 7
  %i.bz = icmp eq i32 %i.by, 6
  br i1 %i.bz, label %bb.o, label %.outer.backedge

bb.o:                                             ; preds = %bb.n
  %i.ca = load i32, ptr %i.h, align 4, !tbaa !97
  %i.cb = icmp sgt i32 %i.ca, 0
  br i1 %i.cb, label %bb.p, label %.outer.backedge

bb.p:                                             ; preds = %bb.o
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !225
  %i.ce = icmp eq i32 %.040, %i.cd
  br i1 %i.ce, label %bb.q, label %.outer.backedge

bb.q:                                             ; preds = %bb.p
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !226
  %.not45 = icmp eq i32 %.040, %i.cg
  br i1 %.not45, label %.outer.backedge, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ch = add nsw i32 %.2, 1
  %i.ci = sext i32 %.2 to i64
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ci
  store i32 -1, ptr %i.cj, align 4, !tbaa !17
  %.pre61 = load i32, ptr %i.br, align 4, !tbaa !120
  br label %.outer.backedge

.split70:                                         ; preds = %_ZN10duckdb_re23DFA5Workq10insert_newEi.exit
  %i.ck = add nuw nsw i32 %.040, 1
  br label %.backedge72.backedge

bb.s:                                             ; preds = %_ZN10duckdb_re23DFA5Workq10insert_newEi.exit
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %.pre-phi ; 2 uses
  %i.cm = and i32 %i.bf, 8
  %.not = icmp eq i32 %i.cm, 0
  br i1 %.not, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cn = add nuw nsw i32 %.040, 1
  %i.co = add nsw i32 %.142.ph, 1
  %i.cp = sext i32 %.142.ph to i64
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.cp
  store i32 %i.cn, ptr %i.cq, align 4, !tbaa !17
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.4 = phi i32 [ %.142.ph, %bb.s ], [ %i.co, %bb.t ] ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !111
  %i.ct = and i32 %i.cs, %i.g
  %.not43 = icmp eq i32 %i.ct, 0
  br i1 %.not43, label %.split, label %.backedge

.split:                                           ; preds = %bb.u
  %i.cu = load i32, ptr %i.cl, align 4, !tbaa !120
  br label %.outer.backedge

.outer.backedge:                                  ; preds = %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %.split
  %.sink = phi i32 [ %i.cu, %.split ], [ %.pre61, %bb.r ], [ %i.bx, %bb.q ], [ %i.bx, %bb.p ], [ %i.bx, %bb.o ], [ %i.bx, %bb.n ]
  %.142.ph.be = phi i32 [ %.4, %.split ], [ %i.ch, %bb.r ], [ %.2, %bb.q ], [ %.2, %bb.p ], [ %.2, %bb.o ], [ %.2, %bb.n ]
  %i.cv = lshr i32 %.sink, 4
  br label %.outer

select.unfold:                                    ; preds = %_ZN10duckdb_re23DFA5Workq10insert_newEi.exit, %_ZN10duckdb_re23DFA5Workq10insert_newEi.exit
  %i.cw = and i32 %i.bf, 8                        ; 2 uses
  %.lobit = lshr exact i32 %i.cw, 3
  %i.cx = xor i32 %.lobit, 1
  %spec.select53 = add nuw nsw i32 %i.cx, %.040
  %.not93 = icmp eq i32 %i.cw, 0
  br i1 %.not93, label %.backedge72.backedge, label %.backedge

.backedge72.backedge:                             ; preds = %select.unfold, %.split70
  %.040.be = phi i32 [ %i.ck, %.split70 ], [ %spec.select53, %select.unfold ]
  br label %.backedge72

bb.v:                                             ; preds = %.backedge
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !135
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.d = getelementptr i8, ptr %i.b, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 %i.e
  store ptr %i.c, ptr %i.f, align 8, !tbaa !135
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.g, align 8, !tbaa !135
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !112  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef %i.i) #22
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.g, align 8, !tbaa !135
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.l) #19
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.m) #19
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10duckdb_re23DFA21RunWorkqOnEmptyStringEPNS0_5WorkqES2_j(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(296) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) initializes((0, 4), (48, 52)) %2, i32 noundef %3) local_unnamed_addr #1 align 2 {
bb.a:
  store i32 0, ptr %2, align 8, !tbaa !92
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !96
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i32 %i.b, ptr %i.c, align 8, !tbaa !98
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.e = load i32, ptr %1, align 8, !tbaa !92
  %.not13 = icmp eq i32 %i.e, 0
  br i1 %.not13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !94
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.014 = phi ptr [ %i.f, %.lr.ph ], [ %i.j, %bb.b ] ; 2 uses
  %i.h = load i32, ptr %.014, align 4, !tbaa !17  ; 2 uses
  %i.i = load i32, ptr %i.g, align 8, !tbaa !96
  %.not12 = icmp slt i32 %i.h, %i.i
  %. = select i1 %.not12, i32 %i.h, i32 -1
  tail call void @_ZN10duckdb_re23DFA10AddToQueueEPNS0_5WorkqEij(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef nonnull %2, i32 noundef %., i32 noundef %3)
  %i.j = getelementptr inbounds nuw i8, ptr %.014, i64 4 ; 2 uses
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !94
  %i.l = load i32, ptr %1, align 8, !tbaa !92
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.m
  %.not = icmp eq ptr %i.j, %i.n
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !3
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10duckdb_re23DFA14RunWorkqOnByteEPNS0_5WorkqES2_ijPb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(296) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) initializes((0, 4), (48, 52)) %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %class.LogMessage, align 8          ; 11 uses
  store i32 0, ptr %2, align 8, !tbaa !92
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !96
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  store i32 %i.b, ptr %i.c, align 8, !tbaa !98
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.e = load i32, ptr %1, align 8, !tbaa !92
  %.not39 = icmp eq i32 %i.e, 0
  br i1 %.not39, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !94
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.m = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.o = getelementptr i8, ptr %i.m, i64 -24
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 88
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 104
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 120
  %i.u = icmp ne i32 %3, 256
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = add i32 %3, -65
  %i.x = icmp ult i32 %i.w, 26
  %i.y = or disjoint i32 %3, 32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN10duckdb_re23DFA5Workq4markEv.exit
  %.040 = phi ptr [ %i.f, %.lr.ph ], [ %i.ck, %_ZN10duckdb_re23DFA5Workq4markEv.exit ] ; 16 uses
  %i.z = load i32, ptr %.040, align 4, !tbaa !17  ; 2 uses
  %i.aa = load i32, ptr %i.g, align 8, !tbaa !96
  %.not38 = icmp slt i32 %i.z, %i.aa
  br i1 %.not38, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = load i8, ptr %5, align 1, !tbaa !19, !range !122, !noundef !123
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = load i8, ptr %i.h, align 4, !tbaa !99, !range !122, !noundef !123
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %_ZN10duckdb_re23DFA5Workq4markEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = load i32, ptr %i.c, align 8, !tbaa !98  ; 4 uses
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.c, align 8, !tbaa !98
  %i.ah = load ptr, ptr %i.j, align 8, !tbaa !94  ; 2 uses
  %.not.i.i.i.i = icmp ne ptr %i.ah, null
  %i.ai = load i32, ptr %i.i, align 8
  %.not10.i.i.i = icmp ugt i32 %i.ai, %i.af
  %.not.i.i.i = select i1 %.not.i.i.i.i, i1 %.not10.i.i.i, i1 false
  br i1 %.not.i.i.i, label %bb.f, label %_ZN10duckdb_re23DFA5Workq4markEv.exit

bb.f:                                             ; preds = %bb.e
  %i.aj = load i32, ptr %2, align 8, !tbaa !92    ; 2 uses
  %i.ak = sext i32 %i.af to i64
  %i.al = load ptr, ptr %i.k, align 8, !tbaa !94
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.ak
  store i32 %i.aj, ptr %i.am, align 4, !tbaa !17
  %i.an = sext i32 %i.aj to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.an
  store i32 %i.af, ptr %i.ao, align 4, !tbaa !17
  %i.ap = load i32, ptr %2, align 8, !tbaa !92
  %i.aq = add nsw i32 %i.ap, 1
  store i32 %i.aq, ptr %2, align 8, !tbaa !92
  br label %_ZN10duckdb_re23DFA5Workq4markEv.exit

bb.g:                                             ; preds = %bb.b
  %i.ar = load ptr, ptr %0, align 8, !tbaa !46    ; 2 uses
  %i.as = sext i32 %i.z to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 120
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !118
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.as ; 7 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !120 ; 2 uses
  %i.ax = and i32 %i.aw, 7
  switch i32 %i.ax, label %default.unreachable [
    i32 7, label %_ZN10duckdb_re23DFA5Workq4markEv.exit
    i32 3, label %_ZN10duckdb_re23DFA5Workq4markEv.exit
    i32 6, label %_ZN10duckdb_re23DFA5Workq4markEv.exit
    i32 1, label %_ZN10duckdb_re23DFA5Workq4markEv.exit
    i32 4, label %_ZN10duckdb_re23DFA5Workq4markEv.exit
    i32 2, label %bb.k
    i32 5, label %bb.o
    i32 0, label %bb.h
  ]

default.unreachable:                              ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  store i8 0, ptr %6, align 8, !tbaa !133
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.l)
  %i.ay = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull @.str.11, i64 noundef 18)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.h
  %i.az = load i32, ptr %i.av, align 4, !tbaa !120
  %i.ba = and i32 %i.az, 7
  %i.bb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.l, i32 noundef %i.ba)
          to label %bb.i unwind label %bb.j       ; 0 uses

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  store ptr %i.m, ptr %i.l, align 8, !tbaa !135
  %i.bc = load i64, ptr %i.o, align 8
  %i.bd = getelementptr inbounds i8, ptr %i.l, i64 %i.bc
  store ptr %i.n, ptr %i.bd, align 8, !tbaa !135
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.p, align 8, !tbaa !135
  %i.be = load ptr, ptr %i.q, align 8, !tbaa !112 ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.r
  br i1 %i.bf, label %_ZN10LogMessageD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.i
  call void @_ZdlPv(ptr noundef %i.be) #22
  br label %_ZN10LogMessageD2Ev.exit

_ZN10LogMessageD2Ev.exit:                         ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.p, align 8, !tbaa !135
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.s) #19
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.t) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %_ZN10duckdb_re23DFA5Workq4markEv.exit

bb.j:                                             ; preds = %bb.h, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  resume { ptr, i32 } %i.bg

bb.k:                                             ; preds = %bb.g
  %i.bh = getelementptr inbounds nuw i8, ptr %i.av, i64 6 ; 2 uses
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !111
  %i.bj = trunc i16 %i.bi to i1
  %or.cond3.i = and i1 %i.x, %i.bj
  %spec.select.i = select i1 %or.cond3.i, i32 %i.y, i32 %3 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.bl = load i8, ptr %i.bk, align 4, !tbaa !111
  %i.bm = zext i8 %i.bl to i32
  %.not.i = icmp sge i32 %spec.select.i, %i.bm
  %i.bn = getelementptr inbounds nuw i8, ptr %i.av, i64 5
  %i.bo = load i8, ptr %i.bn, align 1
  %i.bp = zext i8 %i.bo to i32
  %i.bq = icmp samesign ule i32 %spec.select.i, %i.bp
  %i.br = select i1 %.not.i, i1 %i.bq, i1 false
  br i1 %i.br, label %bb.l, label %_ZN10duckdb_re23DFA5Workq4markEv.exit

bb.l:                                             ; preds = %bb.k
  %i.bs = lshr i32 %i.aw, 4
  call void @_ZN10duckdb_re23DFA10AddToQueueEPNS0_5WorkqEij(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef nonnull %2, i32 noundef %i.bs, i32 noundef %4)
  %i.bt = load i16, ptr %i.bh, align 2, !tbaa !111
  %i.bu = lshr i16 %i.bt, 1                       ; 2 uses
  %.not36 = icmp eq i16 %i.bu, 0
  br i1 %.not36, label %.preheader, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bv = zext nneg i16 %i.bu to i64
  %i.bw = getelementptr [4 x i8], ptr %.040, i64 %i.bv
  %i.bx = getelementptr i8, ptr %i.bw, i64 -4
  br label %_ZN10duckdb_re23DFA5Workq4markEv.exit

.preheader:                                       ; preds = %bb.l, %.preheader
  %.034 = phi ptr [ %i.ca, %.preheader ], [ %i.av, %bb.l ] ; 3 uses
  %i.by = load i32, ptr %.034, align 4, !tbaa !120
  %i.bz = and i32 %i.by, 8
  %.not37 = icmp eq i32 %i.bz, 0
  %i.ca = getelementptr inbounds nuw i8, ptr %.034, i64 8
  br i1 %.not37, label %.preheader, label %bb.n, !llvm.loop !227

bb.n:                                             ; preds = %.preheader
  %i.cb = ptrtoint ptr %.034 to i64
  %i.cc = ptrtoint ptr %i.av to i64
  %i.cd = sub i64 %i.cb, %i.cc
  %i.ce = ashr exact i64 %i.cd, 1
  %i.cf = getelementptr inbounds i8, ptr %.040, i64 %i.ce
  br label %_ZN10duckdb_re23DFA5Workq4markEv.exit

bb.o:                                             ; preds = %bb.g
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !121, !range !122, !noundef !123
  %i.ci = trunc nuw i8 %i.ch to i1
  %or.cond = and i1 %i.u, %i.ci
  %.pre = load i32, ptr %i.v, align 8, !tbaa !47  ; 2 uses
  br i1 %or.cond, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.not35 = icmp eq i32 %.pre, 3
  br i1 %.not35, label %.thread, label %_ZN10duckdb_re23DFA5Workq4markEv.exit

.thread:                                          ; preds = %bb.p
  store i8 1, ptr %5, align 1, !tbaa !19
  br label %_ZN10duckdb_re23DFA5Workq4markEv.exit

bb.q:                                             ; preds = %bb.o
  store i8 1, ptr %5, align 1, !tbaa !19
  %i.cj = icmp eq i32 %.pre, 0
  br i1 %i.cj, label %.critedge, label %_ZN10duckdb_re23DFA5Workq4markEv.exit

_ZN10duckdb_re23DFA5Workq4markEv.exit:            ; preds = %.thread, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.f, %bb.e, %bb.d, %bb.q, %bb.p, %bb.m, %bb.n, %bb.k, %_ZN10LogMessageD2Ev.exit
  %.3 = phi ptr [ %.040, %bb.q ], [ %.040, %bb.p ], [ %.040, %_ZN10LogMessageD2Ev.exit ], [ %.040, %bb.g ], [ %.040, %bb.g ], [ %.040, %bb.g ], [ %.040, %bb.g ], [ %.040, %bb.g ], [ %i.bx, %bb.m ], [ %i.cf, %bb.n ], [ %.040, %bb.k ], [ %.040, %bb.d ], [ %.040, %bb.e ], [ %.040, %bb.f ], [ %.040, %.thread ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.3, i64 4 ; 2 uses
  %i.cl = load ptr, ptr %i.d, align 8, !tbaa !94
  %i.cm = load i32, ptr %1, align 8, !tbaa !92
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds [4 x i8], ptr %i.cl, i64 %i.cn
  %.not = icmp eq ptr %i.ck, %i.co
  br i1 %.not, label %.critedge, label %bb.b, !llvm.loop !228

.critedge:                                        ; preds = %_ZN10duckdb_re23DFA5Workq4markEv.exit, %bb.c, %bb.q, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN10duckdb_re23DFA22RunStateOnByteUnlockedEPNS0_5StateEi(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb_re2::MutexLock", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !138
  %i.b = tail call i32 @pthread_rwlock_wrlock(ptr noundef nonnull align 8 dereferenceable(56) %i.a) #19
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZN10duckdb_re29MutexLockC2EPNS_5MutexE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull @.str.18)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #20
  unreachable

common.resume:                                    ; preds = %bb.j, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.d ], [ %i.k, %bb.j ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.c) #19
  br label %common.resume

_ZN10duckdb_re29MutexLockC2EPNS_5MutexE.exit:     ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_ZN10duckdb_re23DFA22RunStateOnByteUnlockedEPNS0_5StateEi:bb.a
bb.j:                                             ; preds = %_ZN10duckdb_re29MutexLockC2EPNS_5MutexE.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10duckdb_re29MutexLockD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN10duckdb_re23DFA14RunStateOnByteEPNS0_5StateEi(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.LogMessage, align 8          ; 11 uses
  %4 = alloca %class.LogMessage, align 8          ; 11 uses
  %5 = alloca %class.LogMessage, align 8          ; 11 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %.not = icmp ugt ptr %1, inttoptr (i64 2 to ptr)
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %magicptr58 = ptrtoint ptr %1 to i64
  switch i64 %magicptr58, label %bb.g [
    i64 2, label %bb.aa
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store i8 0, ptr %3, align 8, !tbaa !133
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.b)
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.12, i64 noundef 27)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.c
  %i.d = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !135
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.f = getelementptr i8, ptr %i.d, i64 -24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds i8, ptr %i.b, i64 %i.g
  store ptr %i.e, ptr %i.h, align 8, !tbaa !135
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.i, align 8, !tbaa !135
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !112  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZN10LogMessageD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @_ZdlPv(ptr noundef %i.k) #22
  br label %_ZN10LogMessageD2Ev.exit

_ZN10LogMessageD2Ev.exit:                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.i, align 8, !tbaa !135
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.n) #19
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.o) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.aa

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.ab

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store i8 0, ptr %4, align 8, !tbaa !133
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.q)
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull @.str.13, i64 noundef 28)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit61 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit61: ; preds = %bb.e
  %i.s = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.s, ptr %i.q, align 8, !tbaa !135
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.u = getelementptr i8, ptr %i.s, i64 -24
  %i.v = load i64, ptr %i.u, align 8
  %i.w = getelementptr inbounds i8, ptr %i.q, i64 %i.v
  store ptr %i.t, ptr %i.w, align 8, !tbaa !135
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.x, align 8, !tbaa !135
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !112  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZN10LogMessageD2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i62: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit61
  call void @_ZdlPv(ptr noundef %i.z) #22
  br label %_ZN10LogMessageD2Ev.exit64

_ZN10LogMessageD2Ev.exit64:                       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit61, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i62
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.x, align 8, !tbaa !135
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ac) #19
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ad) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.aa

bb.f:                                             ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.ab

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store i8 0, ptr %5, align 8, !tbaa !133
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.af)
  %i.ag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull @.str.14, i64 noundef 42)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit65 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit65: ; preds = %bb.g
  %i.ah = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !135
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.aj = getelementptr i8, ptr %i.ah, i64 -24
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = getelementptr inbounds i8, ptr %i.af, i64 %i.ak
  store ptr %i.ai, ptr %i.al, align 8, !tbaa !135
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.am, align 8, !tbaa !135
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !112 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 104
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZN10LogMessageD2Ev.exit68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i66: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit65
  call void @_ZdlPv(ptr noundef %i.ao) #22
  br label %_ZN10LogMessageD2Ev.exit68

_ZN10LogMessageD2Ev.exit68:                       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit65, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i66
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.am, align 8, !tbaa !135
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ar) #19
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.as) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.aa

bb.h:                                             ; preds = %bb.g
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.ab

bb.i:                                             ; preds = %bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !124
  %i.aw = icmp eq i32 %2, 256                     ; 4 uses
  %i.ax = load ptr, ptr %0, align 8, !tbaa !46    ; 2 uses
  br i1 %i.aw, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 20
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !90
  br label %_ZN10duckdb_re23DFA7ByteMapEi.exit

bb.k:                                             ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 168
  %i.bb = sext i32 %2 to i64
  %i.bc = getelementptr inbounds i8, ptr %i.ba, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !111
  %i.be = zext i8 %i.bd to i32
  br label %_ZN10duckdb_re23DFA7ByteMapEi.exit

_ZN10duckdb_re23DFA7ByteMapEi.exit:               ; preds = %bb.j, %bb.k
  %.0.i = phi i32 [ %i.az, %bb.j ], [ %i.be, %bb.k ]
  %i.bf = sext i32 %.0.i to i64
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.bf
  %i.bh = load atomic ptr, ptr %i.bg monotonic, align 8 ; 2 uses
  %.not54 = icmp eq ptr %i.bh, null
  br i1 %.not54, label %bb.l, label %bb.aa

bb.l:                                             ; preds = %_ZN10duckdb_re23DFA7ByteMapEi.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !100 ; 11 uses
  store i32 0, ptr %i.bj, align 8, !tbaa !92
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !96
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 48 ; 3 uses
  store i32 %i.bl, ptr %i.bm, align 8, !tbaa !98
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !115
  %i.bp = icmp sgt i32 %i.bo, 0
  br i1 %i.bp, label %.lr.ph.i, label %_ZN10duckdb_re23DFA12StateToWorkqEPNS0_5StateEPNS0_5WorkqE.exit

.lr.ph.i:                                         ; preds = %bb.l
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 52
  %i.br = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 12
  br label %bb.m

bb.m:                                             ; preds = %_ZN10duckdb_re23DFA5Workq4markEv.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZN10duckdb_re23DFA5Workq4markEv.exit.i ] ; 2 uses
  %i.bv = load ptr, ptr %1, align 8, !tbaa !117
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv.i
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !17 ; 2 uses
  switch i32 %i.bx, label %bb.q [
    i32 -1, label %bb.n
    i32 -2, label %_ZN10duckdb_re23DFA12StateToWorkqEPNS0_5StateEPNS0_5WorkqE.exit
  ]

bb.n:                                             ; preds = %bb.m
  %i.by = load i8, ptr %i.bq, align 4, !tbaa !99, !range !122, !noundef !123
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %_ZN10duckdb_re23DFA5Workq4markEv.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ca = load i32, ptr %i.bm, align 8, !tbaa !98 ; 4 uses
  %i.cb = add nsw i32 %i.ca, 1
  store i32 %i.cb, ptr %i.bm, align 8, !tbaa !98
  %i.cc = load ptr, ptr %i.bs, align 8, !tbaa !94 ; 2 uses
  %.not.i.i.i.i.i = icmp ne ptr %i.cc, null
  %i.cd = load i32, ptr %i.br, align 8
  %.not10.i.i.i.i = icmp ugt i32 %i.cd, %i.ca
  %.not.i.i.i.i = select i1 %.not.i.i.i.i.i, i1 %.not10.i.i.i.i, i1 false
  br i1 %.not.i.i.i.i, label %bb.p, label %_ZN10duckdb_re23DFA5Workq4markEv.exit.i

bb.p:                                             ; preds = %bb.o
  %i.ce = load i32, ptr %i.bj, align 8, !tbaa !92 ; 2 uses
  %i.cf = sext i32 %i.ca to i64
  %i.cg = load ptr, ptr %i.bt, align 8, !tbaa !94
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.cf
  store i32 %i.ce, ptr %i.ch, align 4, !tbaa !17
  %i.ci = sext i32 %i.ce to i64
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.ci
  store i32 %i.ca, ptr %i.cj, align 4, !tbaa !17
  %i.ck = load i32, ptr %i.bj, align 8, !tbaa !92
  %i.cl = add nsw i32 %i.ck, 1
  store i32 %i.cl, ptr %i.bj, align 8, !tbaa !92
  br label %_ZN10duckdb_re23DFA5Workq4markEv.exit.i

bb.q:                                             ; preds = %bb.m
  %i.cm = load i32, ptr %i.bu, align 4, !tbaa !116
  %i.cn = and i32 %i.cm, 255
  tail call void @_ZN10duckdb_re23DFA10AddToQueueEPNS0_5WorkqEij(ptr noundef nonnull readonly align 8 dereferenceable(296) %0, ptr noundef nonnull %i.bj, i32 noundef %i.bx, i32 noundef %i.cn)
  br label %_ZN10duckdb_re23DFA5Workq4markEv.exit.i

_ZN10duckdb_re23DFA5Workq4markEv.exit.i:          ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.co = load i32, ptr %i.bn, align 8, !tbaa !115
  %i.cp = sext i32 %i.co to i64
  %i.cq = icmp slt i64 %indvars.iv.next.i, %i.cp
  br i1 %i.cq, label %bb.m, label %_ZN10duckdb_re23DFA12StateToWorkqEPNS0_5StateEPNS0_5WorkqE.exit, !llvm.loop !2

_ZN10duckdb_re23DFA12StateToWorkqEPNS0_5StateEPNS0_5WorkqE.exit: ; preds = %bb.m, %_ZN10duckdb_re23DFA5Workq4markEv.exit.i, %bb.l
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !116 ; 3 uses
  %i.ct = lshr i32 %i.cs, 16
  %i.cu = and i32 %i.cs, 255                      ; 3 uses
  %i.cv = icmp eq i32 %2, 10                      ; 2 uses
  %i.cw = or i32 %i.cu, 2
  %spec.select = select i1 %i.cv, i32 %i.cw, i32 %i.cu ; 2 uses
  %spec.select59 = zext i1 %i.cv to i32           ; 3 uses
  %i.cx = or i32 %spec.select, 10
  %.145 = select i1 %i.aw, i32 %i.cx, i32 %spec.select
  br i1 %i.aw, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZN10duckdb_re23DFA12StateToWorkqEPNS0_5StateEPNS0_5WorkqE.exit
  %i.cy = trunc i32 %2 to i8                      ; 3 uses
  %i.cz = and i8 %i.cy, -33
  %i.da = add i8 %i.cz, -65
  %or.cond15.i = icmp ult i8 %i.da, 26
  %i.db = add i8 %i.cy, -48
  %or.cond8.i = icmp ult i8 %i.db, 10
  %or.cond16.i = or i1 %or.cond8.i, %or.cond15.i
  %i.dc = icmp eq i8 %i.cy, 95
  %i.dd = or i1 %i.dc, %or.cond16.i
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZN10duckdb_re23DFA12StateToWorkqEPNS0_5StateEPNS0_5WorkqE.exit
  %i.de = phi i1 [ false, %_ZN10duckdb_re23DFA12StateToWorkqEPNS0_5StateEPNS0_5WorkqE.exit ], [ %i.dd, %bb.r ] ; 2 uses
  %i.df = and i32 %i.cs, 512
  %i.dg = icmp eq i32 %i.df, 0
  %i.dh = xor i1 %i.dg, %i.de
  %.2.v = select i1 %i.dh, i32 32, i32 16
  %.2 = or i32 %.2.v, %.145                       ; 2 uses
  %i.di = xor i32 %i.cu, -1
  %i.dj = and i32 %i.ct, %i.di
  %i.dk = and i32 %i.dj, %.2
  %.not56 = icmp eq i32 %i.dk, 0
  %.pre = load ptr, ptr %i.bi, align 8, !tbaa !100 ; 5 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %.pre72 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !101 ; 5 uses
  br i1 %.not56, label %._crit_edge, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %.pre72, align 8, !tbaa !92
  %i.dl = getelementptr inbounds nuw i8, ptr %.pre72, i64 40
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !96
  %i.dn = getelementptr inbounds nuw i8, ptr %.pre72, i64 48
  store i32 %i.dm, ptr %i.dn, align 8, !tbaa !98
  %i.do = getelementptr inbounds nuw i8, ptr %.pre, i64 32 ; 2 uses
  %i.dp = load i32, ptr %.pre, align 8, !tbaa !92
  %.not13.i = icmp eq i32 %i.dp, 0
  br i1 %.not13.i, label %_ZN10duckdb_re23DFA21RunWorkqOnEmptyStringEPNS0_5WorkqES2_j.exit, label %.lr.ph.i69

.lr.ph.i69:                                       ; preds = %bb.t
  %i.dq = load ptr, ptr %i.do, align 8, !tbaa !94
  %i.dr = getelementptr inbounds nuw i8, ptr %.pre, i64 40
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.lr.ph.i69
  %.014.i = phi ptr [ %i.dq, %.lr.ph.i69 ], [ %i.du, %bb.u ] ; 2 uses
  %i.ds = load i32, ptr %.014.i, align 4, !tbaa !17 ; 2 uses
  %i.dt = load i32, ptr %i.dr, align 8, !tbaa !96
  %.not12.i = icmp slt i32 %i.ds, %i.dt
  %..i = select i1 %.not12.i, i32 %i.ds, i32 -1
  tail call void @_ZN10duckdb_re23DFA10AddToQueueEPNS0_5WorkqEij(ptr noundef nonnull readonly align 8 dereferenceable(296) %0, ptr noundef nonnull %.pre72, i32 noundef %..i, i32 noundef %.2)
  %i.du = getelementptr inbounds nuw i8, ptr %.014.i, i64 4 ; 2 uses
  %i.dv = load ptr, ptr %i.do, align 8, !tbaa !94
  %i.dw = load i32, ptr %.pre, align 8, !tbaa !92
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.dv, i64 %i.dx
  %.not.i = icmp eq ptr %i.du, %i.dy
  br i1 %.not.i, label %_ZN10duckdb_re23DFA21RunWorkqOnEmptyStringEPNS0_5WorkqES2_j.exit, label %bb.u, !llvm.loop !3

_ZN10duckdb_re23DFA21RunWorkqOnEmptyStringEPNS0_5WorkqES2_j.exit: ; preds = %bb.u, %bb.t
  %i.dz = load ptr, ptr %i.bi, align 8, !tbaa !229 ; 2 uses
  %i.ea = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !229 ; 2 uses
  store ptr %i.ea, ptr %i.bi, align 8, !tbaa !229
  store ptr %i.dz, ptr %.phi.trans.insert, align 8, !tbaa !229
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.s, %_ZN10duckdb_re23DFA21RunWorkqOnEmptyStringEPNS0_5WorkqES2_j.exit
  %i.eb = phi ptr [ %i.dz, %_ZN10duckdb_re23DFA21RunWorkqOnEmptyStringEPNS0_5WorkqES2_j.exit ], [ %.pre72, %bb.s ]
  %i.ec = phi ptr [ %i.ea, %_ZN10duckdb_re23DFA21RunWorkqOnEmptyStringEPNS0_5WorkqES2_j.exit ], [ %.pre, %bb.s ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i8 0, ptr %i.a, align 1, !tbaa !19
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  call void @_ZN10duckdb_re23DFA14RunWorkqOnByteEPNS0_5WorkqES2_ijPb(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef %i.ec, ptr noundef %i.eb, i32 noundef %2, i32 noundef %spec.select59, ptr noundef nonnull %i.a)
  %i.ee = load ptr, ptr %i.bi, align 8, !tbaa !229 ; 2 uses
  %i.ef = load ptr, ptr %i.ed, align 8, !tbaa !229 ; 2 uses
  store ptr %i.ef, ptr %i.bi, align 8, !tbaa !229
  store ptr %i.ee, ptr %i.ed, align 8, !tbaa !229
  %i.eg = load i8, ptr %i.a, align 1, !tbaa !19, !range !122, !noundef !123
  %i.eh = trunc nuw i8 %i.eg to i1                ; 2 uses
  %i.ei = or disjoint i32 %spec.select59, 256
  %spec.select60 = select i1 %i.eh, i32 %i.ei, i32 %spec.select59 ; 2 uses
  %i.ej = or disjoint i32 %spec.select60, 512
  %.1 = select i1 %i.de, i32 %i.ej, i32 %spec.select60
  br i1 %i.eh, label %bb.v, label %bb.w

bb.v:                                             ; preds = %._crit_edge
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !47
  %i.em = icmp eq i32 %i.el, 3
  br i1 %i.em, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v, %._crit_edge
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %.sink = phi ptr [ null, %bb.w ], [ %i.ee, %bb.v ]
  %i.en = tail call noundef ptr @_ZN10duckdb_re23DFA18WorkqToCachedStateEPNS0_5WorkqES2_j(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef %i.ef, ptr noundef %.sink, i32 noundef %.1) ; 2 uses
  %i.eo = load ptr, ptr %i.au, align 8, !tbaa !124
  %i.ep = load ptr, ptr %0, align 8, !tbaa !46    ; 2 uses
  br i1 %i.aw, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 20
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !90
  br label %_ZN10duckdb_re23DFA7ByteMapEi.exit71

bb.z:                                             ; preds = %bb.x
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 168
  %i.et = sext i32 %2 to i64
  %i.eu = getelementptr inbounds i8, ptr %i.es, i64 %i.et
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !111
  %i.ew = zext i8 %i.ev to i32
  br label %_ZN10duckdb_re23DFA7ByteMapEi.exit71

_ZN10duckdb_re23DFA7ByteMapEi.exit71:             ; preds = %bb.y, %bb.z
  %.0.i70 = phi i32 [ %i.er, %bb.y ], [ %i.ew, %bb.z ]
  %i.ex = sext i32 %.0.i70 to i64
  %i.ey = getelementptr inbounds [8 x i8], ptr %i.eo, i64 %i.ex
  store atomic ptr %i.en, ptr %i.ey release, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN10duckdb_re23DFA7ByteMapEi.exit71, %_ZN10duckdb_re23DFA7ByteMapEi.exit, %bb.b, %_ZN10LogMessageD2Ev.exit68, %_ZN10LogMessageD2Ev.exit64, %_ZN10LogMessageD2Ev.exit
  %.150 = phi ptr [ inttoptr (i64 2 to ptr), %bb.b ], [ null, %_ZN10LogMessageD2Ev.exit ], [ null, %_ZN10LogMessageD2Ev.exit64 ], [ null, %_ZN10LogMessageD2Ev.exit68 ], [ %i.en, %_ZN10duckdb_re23DFA7ByteMapEi.exit71 ], [ %i.bh, %_ZN10duckdb_re23DFA7ByteMapEi.exit ]
  ret ptr %.150

bb.ab:                                            ; preds = %bb.h, %bb.f, %bb.d
  %.pn = phi { ptr, i32 } [ %i.p, %bb.d ], [ %i.ae, %bb.f ], [ %i.at, %bb.h ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN10duckdb_re29MutexLockD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !138
  %i.b = tail call i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.a) #19
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZN10duckdb_re25Mutex6UnlockEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull @.str.18)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #20
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.c
  unreachable
end_hunk_1
