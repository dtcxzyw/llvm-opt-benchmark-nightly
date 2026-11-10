Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_execution_index_art?download=true
inline.NumInlined: 6663
inline.NumDeleted: 2963
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN6duckdb10BoundIndexD2Ev:bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !410 ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not5.i.i.i.i.i, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt6vectorIN6duckdb12PhysicalTypeESaIS1_EED2Ev.exit, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i ], [ %i.az, %_ZNSt6vectorIN6duckdb12PhysicalTypeESaIS1_EED2Ev.exit ] ; 2 uses
  %i.ba = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !395 ; 2 uses
  tail call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i.i) #29, !inline_history !987
  %.not.i.i.i.i.i23 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i.i.i23, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !6

_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNSt6vectorIN6duckdb12PhysicalTypeESaIS1_EED2Ev.exit
  %i.bb = load ptr, ptr %i.ax, align 8, !tbaa !411
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !412
  %i.be = shl i64 %i.bd, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bb, i8 0, i64 %i.be, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i8 0, i64 16, i1 false)
  %i.bf = load ptr, ptr %i.ax, align 8, !tbaa !411 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.bf) #29, !inline_history !987
  br label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit.i

_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit.i: ; preds = %bb.i, %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !302 ; 2 uses
  %.not.i.i.i.i24 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i24, label %_ZN6duckdb5IndexD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.bj) #29, !inline_history !987
  br label %_ZN6duckdb5IndexD2Ev.exit

_ZN6duckdb5IndexD2Ev.exit:                        ; preds = %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit.i, %bb.j
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb3ART17TryInitializeScanERKNS_10ExpressionES3_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.235") align 8 captures(none) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(433) %1, ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 8 dereferenceable(88) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !1020 {
bb.a:
  %4 = alloca %"class.duckdb::unique_ptr.337", align 8 ; 10 uses
  %5 = alloca %"class.duckdb::Value", align 8     ; 11 uses
  %6 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %7 = alloca %"class.duckdb::Value", align 8     ; 11 uses
  %8 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %9 = alloca %"class.duckdb::Value", align 8     ; 9 uses
  %10 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %11 = alloca %"class.duckdb::ComparisonExpressionMatcher", align 8 ; 15 uses
  %12 = alloca %"class.duckdb::vector.313", align 8 ; 9 uses
  %13 = alloca %"class.duckdb::Value", align 8    ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 noundef zeroext 1)
  invoke void @_ZN6duckdb5ValueC1ENS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull %6)
          to label %bb.b unwind label %bb.aa

bb.b:                                             ; preds = %bb.a
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 noundef zeroext 1)
          to label %bb.c unwind label %bb.ab

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb5ValueC1ENS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull %8)
          to label %bb.d unwind label %bb.ac

bb.d:                                             ; preds = %bb.c
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 noundef zeroext 1)
          to label %bb.e unwind label %bb.ad

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6duckdb5ValueC1ENS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(64) %9, ptr noundef nonnull %10)
          to label %bb.f unwind label %bb.ae

bb.f:                                             ; preds = %bb.e
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  %i.a = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i8 29, ptr %i.a, align 8, !tbaa !1036
  %i.b = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb27ComparisonExpressionMatcherE, i64 16), ptr %11, align 8, !tbaa !221
  %i.c = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %11, i64 56 ; 2 uses
  store i32 4, ptr %i.d, align 8, !tbaa !1043
  %i.e = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #32
          to label %bb.g unwind label %bb.af      ; 2 uses

bb.g:                                             ; preds = %bb.f
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb31ComparisonExpressionTypeMatcherE, i64 16), ptr %i.e, align 8, !tbaa !221, !noalias !1044
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !418  ; 3 uses
  store ptr %i.e, ptr %i.b, align 8, !tbaa !418
  %.not.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb31ComparisonExpressionTypeMatcherESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb21ExpressionTypeMatcherEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb21ExpressionTypeMatcherEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.g
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !221
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  call void %i.i(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.f) #30, !inline_history !990
  br label %_ZNSt10unique_ptrIN6duckdb31ComparisonExpressionTypeMatcherESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb31ComparisonExpressionTypeMatcherESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.g, %_ZNKSt14default_deleteIN6duckdb21ExpressionTypeMatcherEEclEPS1_.exit.i.i.i.i.i
  %i.j = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #32
          to label %bb.h unwind label %bb.af      ; 8 uses

bb.h:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb31ComparisonExpressionTypeMatcherESt14default_deleteIS1_EED2Ev.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i8 0, ptr %i.k, align 8, !tbaa !1036, !noalias !1045
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false), !noalias !1045
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb25ExpressionEqualityMatcherE, i64 16), ptr %i.j, align 8, !tbaa !221, !noalias !1045
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr %2, ptr %i.m, align 8, !tbaa !409, !noalias !1045
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 40 ; 7 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !419  ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1046
  %.not.i.i = icmp eq ptr %i.o, %i.q
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = ptrtoint ptr %i.j to i64
  store i64 %i.r, ptr %i.o, align 8, !tbaa !421
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.s, ptr %i.n, align 8, !tbaa !419
  br label %_ZNSt10unique_ptrIN6duckdb25ExpressionEqualityMatcherESt14default_deleteIS1_EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !422  ; 10 uses
  %i.u = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.v = ptrtoint ptr %i.t to i64                 ; 2 uses
  %i.w = sub i64 %i.u, %i.v                       ; 3 uses
  %i.x = icmp eq i64 %i.w, 9223372036854775800
  br i1 %i.x, label %bb.k, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17ExpressionMatcherESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.56) #31
          to label %.noexc unwind label %_ZNSt10unique_ptrIN6duckdb25ExpressionEqualityMatcherESt14default_deleteIS1_EED2Ev.exit90

.noexc:                                           ; preds = %bb.k
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17ExpressionMatcherESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.j
  %i.y = ashr exact i64 %i.w, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.y, i64 1)
  %i.z = add nsw i64 %.sroa.speculated.i.i.i.i, %i.y ; 2 uses
  %i.aa = icmp ult i64 %i.z, %i.y
  %i.ab = call i64 @llvm.umin.i64(i64 %i.z, i64 1152921504606846975)
  %i.ac = select i1 %i.aa, i64 1152921504606846975, i64 %i.ab ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ac, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ad = shl nuw nsw i64 %i.ac, 3
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #32
          to label %.noexc61 unwind label %_ZNSt10unique_ptrIN6duckdb25ExpressionEqualityMatcherESt14default_deleteIS1_EED2Ev.exit90 ; 10 uses

.noexc61:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17ExpressionMatcherESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.w
  %i.ag = ptrtoint ptr %i.j to i64
  store i64 %i.ag, ptr %i.af, align 8, !tbaa !421
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.t, %i.o
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ExpressionMatcherESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc61
  %i.ah = add i64 %i.u, -8
  %i.ai = sub i64 %i.ah, %i.v                     ; 3 uses
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.aj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ai, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader179, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.al = and i64 %i.ai, -8
  %i.am = add i64 %i.al, 8                        ; 2 uses
  %i.an = getelementptr i8, ptr %i.ae, i64 %i.am
  %i.ao = getelementptr i8, ptr %i.t, i64 %i.am
  %bound0 = icmp ult ptr %i.ae, %i.ao
  %bound1 = icmp ult ptr %i.t, %i.an
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader179, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ak, 4611686018427387900     ; 3 uses
  %i.ap = shl i64 %n.vec, 3                       ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ae, i64 %i.ap  ; 2 uses
  %i.ar = getelementptr i8, ptr %i.t, i64 %i.ap
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.as = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ae, i64 %i.as ; 2 uses
  %next.gep151 = getelementptr i8, ptr %i.t, i64 %i.as ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1047)
  call void @llvm.experimental.noalias.scope.decl(metadata !1048)
  %i.at = getelementptr i8, ptr %next.gep151, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep151, align 8, !tbaa !421, !alias.scope !1049
  %wide.load152 = load <2 x i64>, ptr %i.at, align 8, !tbaa !421, !alias.scope !1049
  %i.au = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !421, !alias.scope !1050, !noalias !1051
  store <2 x i64> %wide.load152, ptr %i.au, align 8, !tbaa !421, !alias.scope !1050, !noalias !1051
  store <2 x ptr> splat (ptr null), ptr %next.gep151, align 8, !tbaa !421, !alias.scope !1049
  store <2 x ptr> splat (ptr null), ptr %i.at, align 8, !tbaa !421, !alias.scope !1049
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !999

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ak, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ExpressionMatcherESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader179

.lr.ph.i.i.i.i.i.i.i.preheader179:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ae, %vector.memcheck ], [ %i.ae, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.aq, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.t, %vector.memcheck ], [ %i.t, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ar, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader179, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader179 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader179 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1047)
  call void @llvm.experimental.noalias.scope.decl(metadata !1048)
  %i.aw = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !421, !alias.scope !1048
  store i64 %i.aw, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !421, !alias.scope !1047
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !421, !alias.scope !1048
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ax, %i.o
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ExpressionMatcherESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1000

_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ExpressionMatcherESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc61
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ae, %.noexc61 ], [ %i.aq, %middle.block ], [ %i.ay, %.lr.ph.i.i.i.i.i.i.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ExpressionMatcherESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ExpressionMatcherESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.t) #29
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ExpressionMatcherESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ExpressionMatcherESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.l, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ExpressionMatcherESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.ae, ptr %i.c, align 8, !tbaa !422
  store ptr %i.az, ptr %i.n, align 8, !tbaa !419
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ac
  store ptr %i.ba, ptr %i.p, align 8, !tbaa !1046
  br label %_ZNSt10unique_ptrIN6duckdb25ExpressionEqualityMatcherESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb25ExpressionEqualityMatcherESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ExpressionMatcherESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.i
  %i.bb = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #32
          to label %bb.m unwind label %bb.af      ; 7 uses

bb.m:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb25ExpressionEqualityMatcherESt14default_deleteIS1_EED2Ev.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i8 31, ptr %i.bc, align 8, !tbaa !1036, !noalias !1052
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i8 0, i64 16, i1 false), !noalias !1052
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb25ConstantExpressionMatcherE, i64 16), ptr %i.bb, align 8, !tbaa !221, !noalias !1052
  %i.be = load ptr, ptr %i.n, align 8, !tbaa !419 ; 6 uses
  %i.bf = load ptr, ptr %i.p, align 8, !tbaa !1046
  %.not.i.i65 = icmp eq ptr %i.be, %i.bf
  br i1 %.not.i.i65, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bg = ptrtoint ptr %i.bb to i64
  store i64 %i.bg, ptr %i.be, align 8, !tbaa !421
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr %i.bh, ptr %i.n, align 8, !tbaa !419
  br label %_ZNSt10unique_ptrIN6duckdb25ConstantExpressionMatcherESt14default_deleteIS1_EED2Ev.exit

bb.o:                                             ; preds = %bb.m
  %i.bi = load ptr, ptr %i.c, align 8, !tbaa !422 ; 10 uses
  %i.bj = ptrtoint ptr %i.be to i64               ; 2 uses
  %i.bk = ptrtoint ptr %i.bi to i64               ; 2 uses
  %i.bl = sub i64 %i.bj, %i.bk                    ; 3 uses
  %i.bm = icmp eq i64 %i.bl, 9223372036854775800
  br i1 %i.bm, label %bb.p, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17ExpressionMatcherESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i66

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.56) #31
          to label %.noexc78 unwind label %_ZNSt10unique_ptrIN6duckdb25ConstantExpressionMatcherESt14default_deleteIS1_EED2Ev.exit96

.noexc78:                                         ; preds = %bb.p
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17ExpressionMatcherESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i66: ; preds = %bb.o
  %i.bn = ashr exact i64 %i.bl, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i67 = call i64 @llvm.umax.i64(i64 %i.bn, i64 1)
  %i.bo = add nsw i64 %.sroa.speculated.i.i.i.i67, %i.bn ; 2 uses
  %i.bp = icmp ult i64 %i.bo, %i.bn
  %i.bq = call i64 @llvm.umin.i64(i64 %i.bo, i64 1152921504606846975)
  %i.br = select i1 %i.bp, i64 1152921504606846975, i64 %i.bq ; 3 uses
  %.not.i.i.i.i68 = icmp ne i64 %i.br, 0
  call void @llvm.assume(i1 %.not.i.i.i.i68)
  %i.bs = shl nuw nsw i64 %i.br, 3
  %i.bt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bs) #32
          to label %.noexc79 unwind label %_ZNSt10unique_ptrIN6duckdb25ConstantExpressionMatcherESt14default_deleteIS1_EED2Ev.exit96 ; 10 uses

.noexc79:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17ExpressionMatcherESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i66
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bl
  %i.bv = ptrtoint ptr %i.bb to i64
  store i64 %i.bv, ptr %i.bu, align 8, !tbaa !421
  %.not10.i.i.i.i.i.i.i69 = icmp eq ptr %i.bi, %i.be
  br i1 %.not10.i.i.i.i.i.i.i69, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ExpressionMatcherESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i74, label %.lr.ph.i.i.i.i.i.i.i70.preheader

.lr.ph.i.i.i.i.i.i.i70.preheader:                 ; preds = %.noexc79
  %i.bw = add i64 %i.bj, -8
  %i.bx = sub i64 %i.bw, %i.bk                    ; 3 uses
  %i.by = lshr i64 %i.bx, 3
  %i.bz = add nuw nsw i64 %i.by, 1                ; 2 uses
  %min.iters.check160 = icmp ult i64 %i.bx, 136
  br i1 %min.iters.check160, label %.lr.ph.i.i.i.i.i.i.i70.preheader178, label %vector.memcheck161

vector.memcheck161:                               ; preds = %.lr.ph.i.i.i.i.i.i.i70.preheader
  %i.ca = and i64 %i.bx, -8
  %i.cb = add i64 %i.ca, 8                        ; 2 uses
  %i.cc = getelementptr i8, ptr %i.bt, i64 %i.cb
  %i.cd = getelementptr i8, ptr %i.bi, i64 %i.cb
  %bound0162 = icmp ult ptr %i.bt, %i.cd
  %bound1163 = icmp ult ptr %i.bi, %i.cc
  %found.conflict164 = and i1 %bound0162, %bound1163
  br i1 %found.conflict164, label %.lr.ph.i.i.i.i.i.i.i70.preheader178, label %vector.ph165

vector.ph165:                                     ; preds = %vector.memcheck161
  %n.vec166 = and i64 %i.bz, 4611686018427387900  ; 3 uses
  %i.ce = shl i64 %n.vec166, 3                    ; 2 uses
  %i.cf = getelementptr i8, ptr %i.bt, i64 %i.ce  ; 2 uses
  %i.cg = getelementptr i8, ptr %i.bi, i64 %i.ce
  br label %vector.body167

vector.body167:                                   ; preds = %vector.body167, %vector.ph165
  %index168 = phi i64 [ 0, %vector.ph165 ], [ %index.next173, %vector.body167 ] ; 2 uses
  %i.ch = shl i64 %index168, 3                    ; 2 uses
  %next.gep169 = getelementptr i8, ptr %i.bt, i64 %i.ch ; 2 uses
  %next.gep170 = getelementptr i8, ptr %i.bi, i64 %i.ch ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1053)
  call void @llvm.experimental.noalias.scope.decl(metadata !1054)
  %i.ci = getelementptr i8, ptr %next.gep170, i64 16 ; 2 uses
  %wide.load171 = load <2 x i64>, ptr %next.gep170, align 8, !tbaa !421, !alias.scope !1055
  %wide.load172 = load <2 x i64>, ptr %i.ci, align 8, !tbaa !421, !alias.scope !1055
  %i.cj = getelementptr i8, ptr %next.gep169, i64 16
  store <2 x i64> %wide.load171, ptr %next.gep169, align 8, !tbaa !421, !alias.scope !1056, !noalias !1057
  store <2 x i64> %wide.load172, ptr %i.cj, align 8, !tbaa !421, !alias.scope !1056, !noalias !1057
  store <2 x ptr> splat (ptr null), ptr %next.gep170, align 8, !tbaa !421, !alias.scope !1055
  store <2 x ptr> splat (ptr null), ptr %i.ci, align 8, !tbaa !421, !alias.scope !1055
  %index.next173 = add nuw i64 %index168, 4       ; 2 uses
  %i.ck = icmp eq i64 %index.next173, %n.vec166
  br i1 %i.ck, label %middle.block174, label %vector.body167, !llvm.loop !1009

middle.block174:                                  ; preds = %vector.body167
  %cmp.n175 = icmp eq i64 %i.bz, %n.vec166
  br i1 %cmp.n175, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ExpressionMatcherESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i74, label %.lr.ph.i.i.i.i.i.i.i70.preheader178

.lr.ph.i.i.i.i.i.i.i70.preheader178:              ; preds = %vector.memcheck161, %.lr.ph.i.i.i.i.i.i.i70.preheader, %middle.block174
  %.012.i.i.i.i.i.i.i71.ph = phi ptr [ %i.bt, %vector.memcheck161 ], [ %i.bt, %.lr.ph.i.i.i.i.i.i.i70.preheader ], [ %i.cf, %middle.block174 ]
  %.0911.i.i.i.i.i.i.i72.ph = phi ptr [ %i.bi, %vector.memcheck161 ], [ %i.bi, %.lr.ph.i.i.i.i.i.i.i70.preheader ], [ %i.cg, %middle.block174 ]
  br label %.lr.ph.i.i.i.i.i.i.i70

.lr.ph.i.i.i.i.i.i.i70:                           ; preds = %.lr.ph.i.i.i.i.i.i.i70.preheader178, %.lr.ph.i.i.i.i.i.i.i70
  %.012.i.i.i.i.i.i.i71 = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i.i.i70 ], [ %.012.i.i.i.i.i.i.i71.ph, %.lr.ph.i.i.i.i.i.i.i70.preheader178 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i72 = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i.i.i70 ], [ %.0911.i.i.i.i.i.i.i72.ph, %.lr.ph.i.i.i.i.i.i.i70.preheader178 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1053)
  call void @llvm.experimental.noalias.scope.decl(metadata !1054)
  %i.cl = load i64, ptr %.0911.i.i.i.i.i.i.i72, align 8, !tbaa !421, !alias.scope !1054
  store i64 %i.cl, ptr %.012.i.i.i.i.i.i.i71, align 8, !tbaa !421, !alias.scope !1053
  store ptr null, ptr %.0911.i.i.i.i.i.i.i72, align 8, !tbaa !421, !alias.scope !1054
  %i.cm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i72, i64 8 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i71, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i73 = icmp eq ptr %i.cm, %i.be
  br i1 %.not.i.i.i.i.i.i.i73, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ExpressionMatcherESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i74, label %.lr.ph.i.i.i.i.i.i.i70, !llvm.loop !1010

_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ExpressionMatcherESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i74: ; preds = %.lr.ph.i.i.i.i.i.i.i70, %middle.block174, %.noexc79
  %.0.lcssa.i.i.i.i.i.i.i75 = phi ptr [ %i.bt, %.noexc79 ], [ %i.cf, %middle.block174 ], [ %i.cn, %.lr.ph.i.i.i.i.i.i.i70 ]
  %i.co = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i75, i64 8
  %.not.i23.i.i.i76 = icmp eq ptr %i.bi, null
  br i1 %.not.i23.i.i.i76, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ExpressionMatcherESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i77, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ExpressionMatcherESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i74
  call void @_ZdlPv(ptr noundef nonnull %i.bi) #29
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ExpressionMatcherESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i77

_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ExpressionMatcherESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i77: ; preds = %bb.q, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ExpressionMatcherESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i74
  store ptr %i.bt, ptr %i.c, align 8, !tbaa !422
  store ptr %i.co, ptr %i.n, align 8, !tbaa !419
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.br
  store ptr %i.cp, ptr %i.p, align 8, !tbaa !1046
  br label %_ZNSt10unique_ptrIN6duckdb25ConstantExpressionMatcherESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb25ConstantExpressionMatcherESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ExpressionMatcherESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i77, %bb.n
  store i32 1, ptr %i.d, align 8, !tbaa !1043
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %i.cq = invoke noundef zeroext i1 @_ZN6duckdb27ComparisonExpressionMatcher5MatchERNS_10ExpressionERNS_6vectorISt17reference_wrapperIS1_ELb1ESaIS5_EEE(ptr noundef nonnull align 8 dereferenceable(60) %11, ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %bb.r unwind label %bb.ag

bb.r:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb25ConstantExpressionMatcherESt14default_deleteIS1_EED2Ev.exit
  br i1 %i.cq, label %bb.s, label %bb.aq

bb.s:                                             ; preds = %bb.r
  %i.cr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperINS_10ExpressionEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %12, i64 noundef 0)
          to label %bb.t unwind label %bb.ag

bb.t:                                             ; preds = %bb.s
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !1059
  %i.ct = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb14BaseExpression4CastINS_25BoundComparisonExpressionEEERT_v(ptr noundef nonnull align 8 dereferenceable(56) %i.cs)
          to label %bb.u unwind label %bb.ag      ; 2 uses

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  %i.cu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperINS_10ExpressionEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %12, i64 noundef 2)
          to label %bb.v unwind label %bb.ah

bb.v:                                             ; preds = %bb.u
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !1059
  %i.cw = invoke noundef nonnull align 8 dereferenceable(152) ptr @_ZN6duckdb14BaseExpression4CastINS_23BoundConstantExpressionEEERT_v(ptr noundef nonnull align 8 dereferenceable(56) %i.cv)
          to label %bb.w unwind label %bb.ah

bb.w:                                             ; preds = %bb.v
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 88
  invoke void @_ZN6duckdb5ValueC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %13, ptr noundef nonnull align 8 dereferenceable(64) %i.cx)
          to label %bb.x unwind label %bb.ah

bb.x:                                             ; preds = %bb.w
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cz = load i8, ptr %i.cy, align 8, !tbaa !1060 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.ct, i64 88
  %i.db = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.da)
          to label %bb.y unwind label %bb.ai

bb.y:                                             ; preds = %bb.x
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dd = load i8, ptr %i.dc, align 8, !tbaa !1060
  %i.de = icmp eq i8 %i.dd, 75
  br i1 %i.de, label %bb.z, label %bb.aj

bb.z:                                             ; preds = %bb.y
  %i.df = invoke noundef zeroext i8 @_ZN6duckdb24FlipComparisonExpressionENS_14ExpressionTypeE(i8 noundef zeroext %i.cz)
          to label %bb.aj unwind label %bb.ai

bb.aa:                                            ; preds = %bb.a
  %i.dg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #30
  br label %bb.ca

bb.ab:                                            ; preds = %bb.b
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.ac:                                            ; preds = %bb.c
  %i.di = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #30
  br label %bb.bz

bb.ad:                                            ; preds = %bb.d
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.ae:                                            ; preds = %bb.e
  %i.dk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #30
  br label %bb.by

_ZNSt10unique_ptrIN6duckdb25ExpressionEqualityMatcherESt14default_deleteIS1_EED2Ev.exit90: ; preds = %bb.k, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17ExpressionMatcherESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.dl = landingpad { ptr, i32 }
          cleanup
  %i.dm = load ptr, ptr %i.j, align 8, !tbaa !221
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.do = load ptr, ptr %i.dn, align 8
  call void %i.do(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.j) #30, !inline_history !1011
  br label %bb.bx

bb.af:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb31ComparisonExpressionTypeMatcherESt14default_deleteIS1_EED2Ev.exit, %bb.f, %_ZNSt10unique_ptrIN6duckdb25ExpressionEqualityMatcherESt14default_deleteIS1_EED2Ev.exit
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

_ZNSt10unique_ptrIN6duckdb25ConstantExpressionMatcherESt14default_deleteIS1_EED2Ev.exit96: ; preds = %bb.p, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17ExpressionMatcherESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i66
  %i.dq = landingpad { ptr, i32 }
          cleanup
  %i.dr = load ptr, ptr %i.bb, align 8, !tbaa !221
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8
  call void %i.dt(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.bb) #30, !inline_history !1011
  br label %bb.bx

bb.ag:                                            ; preds = %.invoke, %bb.bm, %bb.ar, %bb.as, %bb.at, %bb.aw, %bb.ay, %bb.bb, %bb.bc, %bb.bd, %bb.be, %bb.bf, %bb.bg, %_ZNSt10unique_ptrIN6duckdb25ConstantExpressionMatcherESt14default_deleteIS1_EED2Ev.exit, %bb.t, %bb.s
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ah:                                            ; preds = %bb.w, %bb.v, %bb.u
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ai:                                            ; preds = %bb.an, %bb.am, %bb.ak, %bb.z, %bb.x
  %i.dw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %13) #30
  br label %bb.ap

bb.aj:                                            ; preds = %bb.z, %bb.y
  %.028 = phi i8 [ %i.cz, %bb.y ], [ %i.df, %bb.z ] ; 4 uses
  %i.dx = icmp eq i8 %.028, 25
  br i1 %i.dx, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.dy = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6duckdb5ValueaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %9, ptr noundef nonnull align 8 dereferenceable(64) %13)
          to label %bb.ao unwind label %bb.ai     ; 0 uses

bb.al:                                            ; preds = %bb.aj
  %i.dz = and i8 %.028, -3
  %or.cond = icmp eq i8 %i.dz, 28
  br i1 %or.cond, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ea = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6duckdb5ValueaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(64) %13)
          to label %bb.ao unwind label %bb.ai     ; 0 uses

bb.an:                                            ; preds = %bb.al
  %i.eb = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6duckdb5ValueaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(64) %13)
          to label %bb.ao unwind label %bb.ai     ; 0 uses

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.ak
  %.030 = phi i8 [ 0, %bb.ak ], [ %.028, %bb.am ], [ 0, %bb.an ]
  %.029 = phi i8 [ 0, %bb.ak ], [ 0, %bb.am ], [ %.028, %bb.an ]
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %13) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  br label %bb.bi

bb.ap:                                            ; preds = %bb.ai, %bb.ah
  %.pn50 = phi { ptr, i32 } [ %i.dw, %bb.ai ], [ %i.dv, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  br label %.body

bb.aq:                                            ; preds = %bb.r
  %i.ec = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ed = load i8, ptr %i.ec, align 8, !tbaa !1060
  %i.ee = icmp eq i8 %i.ed, 38
  br i1 %i.ee, label %bb.ar, label %bb.bi
end_hunk_0
begin_hunk_1_@_ZN6duckdb6Node169GrowNode4ERNS_3ARTERNS_4NodeES4_:bb.a
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.sink.split.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  br label %bb.i

._crit_edge:                                      ; preds = %bb.i, %.sink.split.i
  %i.v = load ptr, ptr %4, align 8, !tbaa !325
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %_ZN6duckdb10NodeHandleINS_8BaseNodeILh16ELNS_5NTypeE4EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.w = load ptr, ptr %4, align 8, !tbaa !325
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = atomicrmw add ptr %i.x, i64 -1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb10NodeHandleINS_8BaseNodeILh16ELNS_5NTypeE4EEEED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #33
  unreachable

_ZN6duckdb10NodeHandleINS_8BaseNodeILh16ELNS_5NTypeE4EEEED2Ev.exit: ; preds = %._crit_edge, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.ab = load ptr, ptr %3, align 8, !tbaa !325
  %.not.i.i27 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i27, label %_ZN6duckdb10NodeHandleINS_5Node4EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN6duckdb10NodeHandleINS_8BaseNodeILh16ELNS_5NTypeE4EEEED2Ev.exit
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ac = load ptr, ptr %3, align 8, !tbaa !325
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = atomicrmw add ptr %i.ad, i64 -1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb10NodeHandleINS_5Node4EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  call void @__clang_call_terminate(ptr %i.ag) #33
  unreachable

_ZN6duckdb10NodeHandleINS_5Node4EED2Ev.exit:      ; preds = %_ZN6duckdb10NodeHandleINS_8BaseNodeILh16ELNS_5NTypeE4EEEED2Ev.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.ah = load i64, ptr %2, align 8, !tbaa !298
  %i.ai = lshr i64 %i.ah, 56
  %i.aj = trunc nuw i64 %i.ai to i8
  %i.ak = and i8 %i.aj, 127
  %i.al = call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6duckdb10shared_ptrISt5arrayINS_10unique_ptrINS_18FixedSizeAllocatorESt14default_deleteIS3_ELb0EEELm9EELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c)
  %i.am = call noundef zeroext i8 @_ZN6duckdb4Node15GetAllocatorIdxENS_5NTypeE(i8 noundef zeroext %i.ak)
  %i.an = zext nneg i8 %i.am to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.an
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !297
  %.sroa.0.0.copyload.i = load i64, ptr %2, align 8, !tbaa !199
  call void @_ZN6duckdb18FixedSizeAllocator4FreeENS_12IndexPointerE(ptr noundef nonnull align 8 dereferenceable(240) %i.ap, i64 %.sroa.0.0.copyload.i)
  store i64 0, ptr %2, align 8, !tbaa !298
  ret void

bb.h:                                             ; preds = %.noexc25, %.noexc, %bb.a
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @_ZN6duckdb10NodeHandleINS_5Node4EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %i.aq

bb.i:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !218
  %i.at = getelementptr inbounds nuw i8, ptr %i.s, i64 %indvars.iv
  store i8 %i.as, ptr %i.at, align 1, !tbaa !218
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv
  %i.aw = load i64, ptr %i.au, align 8
  store i64 %i.aw, ptr %i.av, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ax = load i8, ptr %i.b, align 8, !tbaa !341
  %i.ay = zext i8 %i.ax to i64
  %i.az = icmp samesign ult i64 %indvars.iv.next, %i.ay
  br i1 %i.az, label %bb.i, label %._crit_edge, !llvm.loop !1873
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb6Node1611InsertChildERNS_3ARTERNS_4NodeEhS3_(ptr noundef nonnull align 8 dereferenceable(433) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1, i8 noundef zeroext %2, i64 %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !1884 {
bb.a:
  %4 = alloca %"class.duckdb::NodeHandle.660", align 8 ; 7 uses
  %5 = alloca %"class.duckdb::Node", align 8      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %.sroa.03.0.copyload = load i64, ptr %1, align 8
  call void @_ZN6duckdb10NodeHandleINS_6Node16EEC2ERNS_3ARTENS_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(433) %0, i64 %.sroa.03.0.copyload)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !809, !nonnull !209, !align !210 ; 15 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !616   ; 6 uses
  %.not.not = icmp eq i8 %i.c, 16                 ; 2 uses
  br i1 %.not.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 4 uses
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %_ZN6duckdb8BaseNodeILh16ELNS_5NTypeE4EE19InsertChildInternalERS2_hNS_4NodeE.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %wide.trip.count.i = zext i8 %i.c to i64        ; 9 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.c ] ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv.i
  %i.f = load i8, ptr %i.e, align 1, !tbaa !218
  %i.g = icmp ult i8 %i.f, %2
  br i1 %i.g, label %bb.c, label %.critedge.i

bb.c:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN6duckdb8BaseNodeILh16ELNS_5NTypeE4EE19InsertChildInternalERS2_hNS_4NodeE.exit.loopexit17, label %.lr.ph.i, !llvm.loop !1876

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.h = trunc nuw i64 %indvars.iv.i to i8        ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.j = add i8 %i.c, -1
  %i.k = call i8 @llvm.usub.sat.i8(i8 %i.j, i8 %i.h) ; 2 uses
  %i.l = zext i8 %i.k to i64                      ; 4 uses
  %i.m = add nuw nsw i64 %i.l, 1                  ; 2 uses
  %min.iters.check = icmp ult i8 %i.k, 55
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.critedge.i
  %i.n = add nuw nsw i64 %wide.trip.count.i, 1    ; 2 uses
  %i.o = sub nsw i64 %i.n, %i.l
  %i.p = getelementptr i8, ptr %i.b, i64 %i.o     ; 3 uses
  %i.q = getelementptr i8, ptr %i.b, i64 %wide.trip.count.i
  %i.r = getelementptr i8, ptr %i.q, i64 2        ; 3 uses
  %i.s = shl nuw nsw i64 %wide.trip.count.i, 3    ; 3 uses
  %i.t = shl nuw nsw i64 %i.l, 3                  ; 2 uses
  %i.u = add nuw nsw i64 %i.s, 24                 ; 2 uses
  %i.v = sub nsw i64 %i.u, %i.t
  %i.w = getelementptr i8, ptr %i.b, i64 %i.v     ; 3 uses
  %i.x = getelementptr i8, ptr %i.b, i64 %i.s
  %i.y = getelementptr i8, ptr %i.x, i64 32       ; 3 uses
  %i.z = sub nsw i64 %wide.trip.count.i, %i.l
  %i.aa = getelementptr i8, ptr %i.b, i64 %i.z    ; 2 uses
  %i.ab = getelementptr i8, ptr %i.b, i64 %i.n    ; 2 uses
  %i.ac = add nuw nsw i64 %i.s, 16
  %i.ad = sub nsw i64 %i.ac, %i.t
  %i.ae = getelementptr i8, ptr %i.b, i64 %i.ad   ; 2 uses
  %i.af = getelementptr i8, ptr %i.b, i64 %i.u    ; 2 uses
  %bound0 = icmp ult ptr %i.p, %i.y
  %bound1 = icmp ult ptr %i.w, %i.r
  %found.conflict = and i1 %bound0, %bound1
  %bound050 = icmp ult ptr %i.p, %i.ab
  %bound151 = icmp ult ptr %i.aa, %i.r
  %found.conflict52 = and i1 %bound050, %bound151
  %conflict.rdx = or i1 %found.conflict, %found.conflict52
  %bound053 = icmp ult ptr %i.p, %i.af
  %bound154 = icmp ult ptr %i.ae, %i.r
  %found.conflict55 = and i1 %bound053, %bound154
  %conflict.rdx56 = or i1 %conflict.rdx, %found.conflict55
  %bound057 = icmp ult ptr %i.w, %i.ab
  %bound158 = icmp ult ptr %i.aa, %i.y
  %found.conflict59 = and i1 %bound057, %bound158
  %conflict.rdx60 = or i1 %conflict.rdx56, %found.conflict59
  %bound061 = icmp ult ptr %i.w, %i.af
  %bound162 = icmp ult ptr %i.ae, %i.y
  %found.conflict63 = and i1 %bound061, %bound162
  %conflict.rdx64 = or i1 %conflict.rdx60, %found.conflict63
  br i1 %conflict.rdx64, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.m, 508                      ; 3 uses
  %i.ag = sub nsw i64 %wide.trip.count.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = sub i64 %wide.trip.count.i, %index      ; 3 uses
  %i.ai = getelementptr i8, ptr %i.b, i64 %i.ah   ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 -1
  %i.ak = getelementptr i8, ptr %i.ai, i64 -3
  %wide.load = load <2 x i8>, ptr %i.aj, align 1, !tbaa !218, !alias.scope !1885
  %wide.load65 = load <2 x i8>, ptr %i.ak, align 1, !tbaa !218, !alias.scope !1885
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ah ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -1
  %i.an = getelementptr inbounds i8, ptr %i.al, i64 -3
  store <2 x i8> %wide.load, ptr %i.am, align 1, !tbaa !218, !alias.scope !1886, !noalias !1887
  store <2 x i8> %wide.load65, ptr %i.an, align 1, !tbaa !218, !alias.scope !1886, !noalias !1887
  %i.ao = getelementptr [8 x i8], ptr %i.i, i64 %i.ah ; 4 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 -8
  %i.aq = getelementptr i8, ptr %i.ao, i64 -16
  %6 = getelementptr i8, ptr %i.ao, i64 -32
  %wide.load67.a = load <2 x i64>, ptr %i.aq, align 8, !alias.scope !1888
  %wide.load67 = load <2 x i64>, ptr %6, align 8, !alias.scope !1888
  %i.ar = getelementptr i8, ptr %i.ao, i64 -24
  store <2 x i64> %wide.load67.a, ptr %i.ap, align 8, !alias.scope !1889, !noalias !1890
  store <2 x i64> %wide.load67, ptr %i.ar, align 8, !alias.scope !1889, !noalias !1890
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !1882

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.m, %n.vec
  br i1 %cmp.n, label %_ZN6duckdb8BaseNodeILh16ELNS_5NTypeE4EE19InsertChildInternalERS2_hNS_4NodeE.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.critedge.i, %middle.block
  %indvars.iv33.i.ph = phi i64 [ %wide.trip.count.i, %vector.memcheck ], [ %wide.trip.count.i, %.critedge.i ], [ %i.ag, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv33.i = phi i64 [ %indvars.iv.next34.i, %scalar.ph ], [ %indvars.iv33.i.ph, %scalar.ph.preheader ] ; 4 uses
  %i.at = getelementptr i8, ptr %i.b, i64 %indvars.iv33.i
  %i.au = load i8, ptr %i.at, align 1, !tbaa !218
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv33.i
  store i8 %i.au, ptr %i.av, align 1, !tbaa !218
  %i.aw = getelementptr [8 x i8], ptr %i.i, i64 %indvars.iv33.i ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 -8
  %i.ay = load i64, ptr %i.ax, align 8
  store i64 %i.ay, ptr %i.aw, align 8
  %indvars.iv.next34.i = add nsw i64 %indvars.iv33.i, -1 ; 2 uses
  %indvars.i = trunc i64 %indvars.iv.next34.i to i8
  %i.az = icmp ult i8 %i.h, %indvars.i
  br i1 %i.az, label %scalar.ph, label %_ZN6duckdb8BaseNodeILh16ELNS_5NTypeE4EE19InsertChildInternalERS2_hNS_4NodeE.exit, !llvm.loop !1883

_ZN6duckdb8BaseNodeILh16ELNS_5NTypeE4EE19InsertChildInternalERS2_hNS_4NodeE.exit.loopexit17: ; preds = %bb.c
  %i.ba = zext i8 %i.c to i64
  br label %_ZN6duckdb8BaseNodeILh16ELNS_5NTypeE4EE19InsertChildInternalERS2_hNS_4NodeE.exit

_ZN6duckdb8BaseNodeILh16ELNS_5NTypeE4EE19InsertChildInternalERS2_hNS_4NodeE.exit: ; preds = %scalar.ph, %middle.block, %_ZN6duckdb8BaseNodeILh16ELNS_5NTypeE4EE19InsertChildInternalERS2_hNS_4NodeE.exit.loopexit17, %bb.b
  %.023.lcssa37.i = phi i64 [ 0, %bb.b ], [ %i.ba, %_ZN6duckdb8BaseNodeILh16ELNS_5NTypeE4EE19InsertChildInternalERS2_hNS_4NodeE.exit.loopexit17 ], [ %indvars.iv.i, %middle.block ], [ %indvars.iv.i, %scalar.ph ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 %.023.lcssa37.i
  store i8 %2, ptr %i.bb, align 1, !tbaa !218
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %.023.lcssa37.i
  store i64 %3, ptr %i.bd, align 8
  %i.be = add i8 %i.c, 1
  store i8 %i.be, ptr %i.b, align 8, !tbaa !616
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN6duckdb8BaseNodeILh16ELNS_5NTypeE4EE19InsertChildInternalERS2_hNS_4NodeE.exit
  %i.bf = load ptr, ptr %4, align 8, !tbaa !325
  %.not.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i, label %_ZN6duckdb10NodeHandleINS_6Node16EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bg = load ptr, ptr %4, align 8, !tbaa !325
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = atomicrmw add ptr %i.bh, i64 -1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb10NodeHandleINS_6Node16EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  %i.bk = extractvalue { ptr, i32 } %i.bj, 0
  call void @__clang_call_terminate(ptr %i.bk) #33
  unreachable

_ZN6duckdb10NodeHandleINS_6Node16EED2Ev.exit:     ; preds = %bb.d, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br i1 %.not.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN6duckdb10NodeHandleINS_6Node16EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.bl = load i64, ptr %1, align 8
  store i64 %i.bl, ptr %5, align 8
  call void @_ZN6duckdb6Node4810GrowNode16ERNS_3ARTERNS_4NodeES4_(ptr noundef nonnull align 8 dereferenceable(433) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %5)
  call void @_ZN6duckdb6Node4811InsertChildERNS_3ARTERNS_4NodeEhS3_(ptr noundef nonnull align 8 dereferenceable(433) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef zeroext %2, i64 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.i

bb.i:                                             ; preds = %_ZN6duckdb10NodeHandleINS_6Node16EED2Ev.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb5Node411DeleteChildERNS_3ARTERNS_4NodeES4_hNS_10GateStatusE(ptr noundef nonnull align 8 dereferenceable(433) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !1901 {
bb.a:
  %5 = alloca %"class.duckdb::NodeHandle", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1902)
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !noalias !1902
  call void @_ZN6duckdb10NodeHandleINS_8BaseNodeILh4ELNS_5NTypeE3EEEEC2ERNS_3ARTENS_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(433) %0, i64 %.sroa.0.0.copyload.i)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !339, !alias.scope !1902, !nonnull !209, !align !210 ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 9 uses
  %i.d = load i8, ptr %i.b, align 8, !tbaa !341   ; 3 uses
  %.not.i = icmp eq i8 %i.d, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext i8 %i.d to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.b ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i
  %i.f = load i8, ptr %i.e, align 1, !tbaa !218
  %i.g = icmp eq i8 %i.f, %3
  br i1 %i.g, label %._crit_edge.loopexit.split.loop.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1893

._crit_edge.loopexit.split.loop.exit.i:           ; preds = %.lr.ph.i
  %i.h = trunc nuw i64 %indvars.iv.i to i8
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.b, %._crit_edge.loopexit.split.loop.exit.i, %bb.a
  %.026.lcssa.i = phi i8 [ 0, %bb.a ], [ %i.h, %._crit_edge.loopexit.split.loop.exit.i ], [ %i.d, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 9 uses
  %i.j = zext i8 %.026.lcssa.i to i64             ; 9 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.j
  invoke void @_ZN6duckdb4Node8FreeTreeERNS_3ARTERS0_(ptr noundef nonnull align 8 dereferenceable(433) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %._crit_edge.i
  %i.l = load i8, ptr %i.b, align 8, !tbaa !341
  %i.m = add i8 %i.l, -1                          ; 3 uses
  store i8 %i.m, ptr %i.b, align 8, !tbaa !341
  %i.n = icmp ult i8 %.026.lcssa.i, %i.m
  br i1 %i.n, label %.lr.ph33.i, label %_ZN6duckdb8BaseNodeILh4ELNS_5NTypeE3EE19DeleteChildInternalERNS_3ARTERNS_4NodeEh.exit

.lr.ph33.i:                                       ; preds = %bb.c
  %wide.trip.count39.i = zext i8 %i.m to i64      ; 7 uses
  %i.o = sub nsw i64 %wide.trip.count39.i, %i.j   ; 3 uses
  %min.iters.check = icmp ult i64 %i.o, 50
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph33.i
  %i.p = getelementptr i8, ptr %i.b, i64 %i.j
  %i.q = getelementptr i8, ptr %i.p, i64 1        ; 3 uses
  %i.r = getelementptr i8, ptr %i.b, i64 %wide.trip.count39.i
  %i.s = getelementptr i8, ptr %i.r, i64 1        ; 3 uses
  %i.t = shl nuw nsw i64 %i.j, 3                  ; 2 uses
  %i.u = getelementptr i8, ptr %i.b, i64 %i.t
  %i.v = getelementptr i8, ptr %i.u, i64 8        ; 3 uses
  %i.w = shl nuw nsw i64 %wide.trip.count39.i, 3  ; 2 uses
  %i.x = getelementptr i8, ptr %i.b, i64 %i.w
  %i.y = getelementptr i8, ptr %i.x, i64 8        ; 3 uses
  %i.z = getelementptr i8, ptr %i.b, i64 %i.j
  %i.aa = getelementptr i8, ptr %i.z, i64 2       ; 2 uses
  %i.ab = getelementptr i8, ptr %i.b, i64 %wide.trip.count39.i
  %i.ac = getelementptr i8, ptr %i.ab, i64 2      ; 2 uses
  %i.ad = getelementptr i8, ptr %i.b, i64 %i.t
  %i.ae = getelementptr i8, ptr %i.ad, i64 16     ; 2 uses
  %i.af = getelementptr i8, ptr %i.b, i64 %i.w
  %i.ag = getelementptr i8, ptr %i.af, i64 16     ; 2 uses
  %bound0 = icmp ult ptr %i.q, %i.y
  %bound1 = icmp ult ptr %i.v, %i.s
  %found.conflict = and i1 %bound0, %bound1
  %bound049 = icmp ult ptr %i.q, %i.ac
  %bound150 = icmp ult ptr %i.aa, %i.s
  %found.conflict51 = and i1 %bound049, %bound150
  %conflict.rdx = or i1 %found.conflict, %found.conflict51
  %bound052 = icmp ult ptr %i.q, %i.ag
  %bound153 = icmp ult ptr %i.ae, %i.s
  %found.conflict54 = and i1 %bound052, %bound153
  %conflict.rdx55 = or i1 %conflict.rdx, %found.conflict54
  %bound056 = icmp ult ptr %i.v, %i.ac
  %bound157 = icmp ult ptr %i.aa, %i.y
  %found.conflict58 = and i1 %bound056, %bound157
  %conflict.rdx59 = or i1 %conflict.rdx55, %found.conflict58
  %bound060 = icmp ult ptr %i.v, %i.ag
  %bound161 = icmp ult ptr %i.ae, %i.y
  %found.conflict62 = and i1 %bound060, %bound161
  %conflict.rdx63 = or i1 %conflict.rdx59, %found.conflict62
  br i1 %conflict.rdx63, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.o, -4                       ; 3 uses
  %i.ah = add nsw i64 %n.vec, %i.j
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = add nuw i64 %index, %i.j                ; 3 uses
  %i.aj = add nuw nsw i64 %i.ai, 1                ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.aj ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 2
  %wide.load = load <2 x i8>, ptr %i.ak, align 1, !tbaa !218, !alias.scope !1903
  %wide.load64 = load <2 x i8>, ptr %i.al, align 1, !tbaa !218, !alias.scope !1903
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ai ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  store <2 x i8> %wide.load, ptr %i.am, align 1, !tbaa !218, !alias.scope !1904, !noalias !1905
  store <2 x i8> %wide.load64, ptr %i.an, align 1, !tbaa !218, !alias.scope !1904, !noalias !1905
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.aj ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.ai ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %wide.load65 = load <2 x i64>, ptr %i.ao, align 8, !alias.scope !1906
  %wide.load66 = load <2 x i64>, ptr %i.aq, align 8, !alias.scope !1906
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
end_hunk_1
