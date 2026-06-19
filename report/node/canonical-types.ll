inline.NumInlined: 939
inline.NumDeleted: 544
begin_hunk_0_@_ZN2v88internal4wasm17TypeCanonicalizer19CanonicalizeTypeDefEPKNS1_10WasmModuleENS1_15ModuleTypeIndexENS1_18CanonicalTypeIndexEj:bb.a
  store i32 -1, ptr %i.nq, align 8
  %i.nr = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 3, ptr %i.nr, align 4
  %i.ns = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 %i.nm, ptr %i.ns, align 1
  %i.nt = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i8 %i.nn, ptr %i.nt, align 2
  %i.nu = getelementptr inbounds nuw i8, ptr %0, i64 23
  store i8 0, ptr %i.nu, align 1
  br label %bb.ay

bb.ax:                                            ; preds = %"_ZZN2v88internal4wasm17TypeCanonicalizer19CanonicalizeTypeDefEPKNS1_10WasmModuleENS1_15ModuleTypeIndexENS1_18CanonicalTypeIndexEjENK3$_0clES6_.exit"
  unreachable

bb.ay:                                            ; preds = %_ZN2v88internal4Zone3NewINS0_4wasm17CanonicalContTypeEJRNS3_18CanonicalTypeIndexEEEEPT_DpOT0_.exit, %_ZN2v88internal4Zone3NewINS0_4wasm18CanonicalArrayTypeEJRNS3_18CanonicalValueTypeEbEEEPT_DpOT0_.exit, %"_ZZN2v88internal4wasm17TypeCanonicalizer19CanonicalizeTypeDefEPKNS1_10WasmModuleENS1_15ModuleTypeIndexENS1_18CanonicalTypeIndexEjENK3$_0clES6_.exit95", %._crit_edge162
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nounwind uwtable
define hidden i32 @_ZNK2v88internal4wasm17TypeCanonicalizer18FindCanonicalGroupERKNS2_14CanonicalGroupE(ptr noundef nonnull align 8 dereferenceable(8056) %0, ptr noundef nonnull align 8 dereferenceable(20) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = tail call ptr @_ZNKSt10_HashtableIN2v88internal4wasm17TypeCanonicalizer14CanonicalGroupES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ENS0_4base4hashIS4_EENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE4findERKS4_(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(20) %1) ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.0.0.copyload = load i32, ptr %i.d, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i32 [ %.sroa.0.0.copyload, %bb.b ], [ -1, %bb.a ]
  ret i32 %.sroa.0.0
}

declare void @_ZNK2v88internal12ZoneSnapshot7RestoreEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden i32 @_ZNK2v88internal4wasm17TypeCanonicalizer18FindCanonicalGroupERKNS2_23CanonicalSingletonGroupE(ptr noundef nonnull align 8 dereferenceable(8056) %0, ptr noundef nonnull align 8 dereferenceable(28) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = tail call ptr @_ZNKSt10_HashtableIN2v88internal4wasm17TypeCanonicalizer23CanonicalSingletonGroupES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ENS0_4base4hashIS4_EENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE4findERKS4_(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(28) %1) ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.0.0.copyload = load i32, ptr %i.d, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i32 [ %.sroa.0.0.copyload, %bb.b ], [ -1, %bb.a ]
  ret i32 %.sroa.0.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i32 @_ZN2v88internal4wasm17TypeCanonicalizer17AddRecursiveGroupEPKNS0_9SignatureINS1_9ValueTypeEEE(ptr noundef nonnull align 8 dereferenceable(8056) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.v8::internal::wasm::TypeCanonicalizer::CanonicalSingletonGroup", align 8 ; 10 uses
  %3 = alloca %"class.v8::internal::wasm::CanonicalSig::Builder", align 8 ; 11 uses
  %4 = alloca %"struct.v8::internal::wasm::TypeCanonicalizer::CanonicalSingletonGroup", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8048 ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %0, align 8
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  %i.h = icmp eq i64 %i.g, 4000000
  br i1 %i.h, label %bb.b, label %bb.c, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v88internal2V823FatalProcessOutOfMemoryEPNS0_7IsolateEPKcRKNS_10OOMDetailsE(ptr noundef null, ptr noundef nonnull @.str.1, ptr noundef nonnull align 8 dereferenceable(16) @_ZN2v88internal2V813kNoOOMDetailsE) #13
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = lshr i64 %i.g, 2                         ; 3 uses
  %i.j = trunc i64 %i.i to i32                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  store ptr %1, ptr %2, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 -1, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 -1, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 -1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 20
  store <4 x i8> <i8 0, i8 1, i8 0, i8 0>, ptr %.sroa.9.0..sroa_idx, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %i.j, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.m = call ptr @_ZNKSt10_HashtableIN2v88internal4wasm17TypeCanonicalizer23CanonicalSingletonGroupES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ENS0_4base4hashIS4_EENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE4findERKS4_(ptr noundef nonnull align 8 dereferenceable(56) %i.l, ptr noundef nonnull align 8 dereferenceable(28) %2) ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZNK2v88internal4wasm17TypeCanonicalizer18FindCanonicalGroupERKNS2_23CanonicalSingletonGroupE.exit.thread, label %_ZNK2v88internal4wasm17TypeCanonicalizer18FindCanonicalGroupERKNS2_23CanonicalSingletonGroupE.exit

_ZNK2v88internal4wasm17TypeCanonicalizer18FindCanonicalGroupERKNS2_23CanonicalSingletonGroupE.exit.thread: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br label %bb.d

_ZNK2v88internal4wasm17TypeCanonicalizer18FindCanonicalGroupERKNS2_23CanonicalSingletonGroupE.exit: ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %.sroa.0.0.copyload.i = load i32, ptr %i.o, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  %.not66 = icmp eq i32 %.sroa.0.0.copyload.i, -1
  br i1 %.not66, label %bb.d, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit

bb.d:                                             ; preds = %_ZNK2v88internal4wasm17TypeCanonicalizer18FindCanonicalGroupERKNS2_23CanonicalSingletonGroupE.exit.thread, %_ZNK2v88internal4wasm17TypeCanonicalizer18FindCanonicalGroupERKNS2_23CanonicalSingletonGroupE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 7984 ; 2 uses
  %i.q = load i64, ptr %1, align 8                ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8              ; 3 uses
  store i64 %i.q, ptr %3, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.s, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.v = add i64 %i.s, %i.q
  %i.w = shl i64 %i.v, 2
  %i.x = add i64 %i.w, 44
  %i.y = and i64 %i.x, -8                         ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8008 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8000 ; 6 uses
  %i.ac = load i64, ptr %i.ab, align 8            ; 2 uses
  %i.ad = sub i64 %i.aa, %i.ac
  %i.ae = icmp ugt i64 %i.y, %i.ad
  br i1 %i.ae, label %bb.e, label %_ZN2v88internal4wasm12CanonicalSig7BuilderC2EPNS0_4ZoneEmm.exit, !prof !5

bb.e:                                             ; preds = %bb.d
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.y) #12
  %.pre.i.i.i = load i64, ptr %i.ab, align 8
  br label %_ZN2v88internal4wasm12CanonicalSig7BuilderC2EPNS0_4ZoneEmm.exit

_ZN2v88internal4wasm12CanonicalSig7BuilderC2EPNS0_4ZoneEmm.exit: ; preds = %bb.d, %bb.e
  %i.af = phi i64 [ %.pre.i.i.i, %bb.e ], [ %i.ac, %bb.d ] ; 2 uses
  %i.ag = inttoptr i64 %i.af to ptr               ; 7 uses
  %i.ah = add i64 %i.af, %i.y
  store i64 %i.ah, ptr %i.ab, align 8
  %i.ai = getelementptr i8, ptr %i.ag, i64 40     ; 7 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %i.ai, ptr %i.aj, align 8
  store i64 %i.q, ptr %i.ag, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i64 %i.s, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store ptr %i.ai, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.ag, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8            ; 8 uses
  %i.ap = load i64, ptr %1, align 8               ; 2 uses
  %.idx = shl i64 %i.ap, 2                        ; 3 uses
  %i.aq = getelementptr i8, ptr %i.ao, i64 %.idx  ; 3 uses
  %.not67 = icmp eq i64 %i.ap, 0
  br i1 %.not67, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN2v88internal4wasm12CanonicalSig7BuilderC2EPNS0_4ZoneEmm.exit
  %i.ar = add i64 %.idx, -4                       ; 2 uses
  %i.as = lshr exact i64 %i.ar, 2
  %i.at = add nuw nsw i64 %i.as, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ar, 92
  br i1 %min.iters.check, label %.lr.ph.preheader124, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %scevgep = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.au = getelementptr i8, ptr %i.ag, i64 %.idx
  %scevgep81 = getelementptr i8, ptr %i.au, i64 40 ; 2 uses
  %bound0 = icmp ult ptr %i.u, %scevgep81
  %bound1 = icmp ult ptr %i.ai, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound082 = icmp ult ptr %i.u, %i.aq
  %bound183 = icmp ult ptr %i.ao, %scevgep
  %found.conflict84 = and i1 %bound082, %bound183
  %conflict.rdx = or i1 %found.conflict, %found.conflict84
  %bound085 = icmp ult ptr %i.ai, %i.aq
  %bound186 = icmp ult ptr %i.ao, %scevgep81
  %found.conflict87 = and i1 %bound085, %bound186
  %conflict.rdx88 = or i1 %conflict.rdx, %found.conflict87
  br i1 %conflict.rdx88, label %.lr.ph.preheader124, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.at, 9223372036854775804     ; 4 uses
  %i.av = shl i64 %n.vec, 2
  %i.aw = getelementptr i8, ptr %i.ao, i64 %i.av
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ax = phi i64 [ 1, %vector.ph ], [ %i.bc, %vector.body ] ; 2 uses
  %i.ay = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.ao, i64 %i.ay ; 2 uses
  %i.az = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <2 x i32>, ptr %next.gep, align 4, !alias.scope !17
  %wide.load89 = load <2 x i32>, ptr %i.az, align 4, !alias.scope !17
  %5 = add i64 %i.ax, 3
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %index ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store <2 x i32> %wide.load, ptr %i.ba, align 4, !alias.scope !20, !noalias !17
  store <2 x i32> %wide.load89, ptr %i.bb, align 4, !alias.scope !20, !noalias !17
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bc = add i64 %i.ax, 4
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !22

middle.block:                                     ; preds = %vector.body
  store i64 %5, ptr %i.u, align 8, !alias.scope !25, !noalias !27
  %cmp.n = icmp eq i64 %i.at, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %.lr.ph.preheader124

.lr.ph.preheader124:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.ph125 = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.068.ph = phi ptr [ %i.ao, %vector.memcheck ], [ %i.ao, %.lr.ph.preheader ], [ %i.aw, %middle.block ]
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph, %middle.block
  %.pre = load ptr, ptr %i.an, align 8
  %.pre75 = load i64, ptr %1, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN2v88internal4wasm12CanonicalSig7BuilderC2EPNS0_4ZoneEmm.exit
  %i.be = phi i64 [ %.pre75, %._crit_edge.loopexit ], [ 0, %_ZN2v88internal4wasm12CanonicalSig7BuilderC2EPNS0_4ZoneEmm.exit ]
  %i.bf = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.ao, %_ZN2v88internal4wasm12CanonicalSig7BuilderC2EPNS0_4ZoneEmm.exit ]
  %i.bg = getelementptr [4 x i8], ptr %i.bf, i64 %i.be ; 7 uses
  %i.bh = load i64, ptr %i.r, align 8             ; 3 uses
  %.idx74 = shl i64 %i.bh, 2                      ; 2 uses
  %i.bi = getelementptr i8, ptr %i.bg, i64 %.idx74 ; 3 uses
  %.not3369 = icmp eq i64 %i.bh, 0
  br i1 %.not3369, label %._crit_edge73, label %.lr.ph72

.lr.ph72:                                         ; preds = %._crit_edge
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.bk = getelementptr [4 x i8], ptr %i.ai, i64 %i.q ; 4 uses
  %i.bl = add i64 %.idx74, -4                     ; 2 uses
  %i.bm = lshr exact i64 %i.bl, 2
  %i.bn = add nuw nsw i64 %i.bm, 1                ; 2 uses
  %min.iters.check106 = icmp ult i64 %i.bl, 108
  br i1 %min.iters.check106, label %scalar.ph105.preheader, label %vector.memcheck91

vector.memcheck91:                                ; preds = %.lr.ph72
  %scevgep92 = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %.idx74123 = add i64 %i.bh, %i.q
  %i.bo = shl i64 %.idx74123, 2
  %i.bp = getelementptr i8, ptr %i.ag, i64 %i.bo
  %scevgep93 = getelementptr i8, ptr %i.bp, i64 40 ; 2 uses
  %bound094 = icmp ult ptr %i.bj, %scevgep93
  %bound195 = icmp ult ptr %i.bk, %scevgep92
  %found.conflict96 = and i1 %bound094, %bound195
  %bound097 = icmp ult ptr %i.bj, %i.bi
  %bound198 = icmp ult ptr %i.bg, %scevgep92
  %found.conflict99 = and i1 %bound097, %bound198
  %conflict.rdx100 = or i1 %found.conflict96, %found.conflict99
  %bound0101 = icmp ult ptr %i.bk, %i.bi
  %bound1102 = icmp ult ptr %i.bg, %scevgep93
  %found.conflict103 = and i1 %bound0101, %bound1102
  %conflict.rdx104 = or i1 %conflict.rdx100, %found.conflict103
  br i1 %conflict.rdx104, label %scalar.ph105.preheader, label %vector.ph107

vector.ph107:                                     ; preds = %vector.memcheck91
  %n.vec109 = and i64 %i.bn, 9223372036854775804  ; 4 uses
  %i.bq = shl i64 %n.vec109, 2
  %i.br = getelementptr i8, ptr %i.bg, i64 %i.bq
  br label %vector.body110

vector.body110:                                   ; preds = %vector.body110, %vector.ph107
  %index111 = phi i64 [ 0, %vector.ph107 ], [ %index.next117, %vector.body110 ] ; 3 uses
  %i.bs = phi i64 [ 1, %vector.ph107 ], [ %i.bx, %vector.body110 ] ; 2 uses
  %i.bt = shl i64 %index111, 2
  %next.gep114 = getelementptr i8, ptr %i.bg, i64 %i.bt ; 2 uses
  %i.bu = getelementptr i8, ptr %next.gep114, i64 8
  %wide.load115 = load <2 x i32>, ptr %next.gep114, align 4, !alias.scope !28
  %wide.load116 = load <2 x i32>, ptr %i.bu, align 4, !alias.scope !28
  %6 = add i64 %i.bs, 3
  %i.bv = getelementptr [4 x i8], ptr %i.bk, i64 %index111 ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bv, i64 8
  store <2 x i32> %wide.load115, ptr %i.bv, align 4, !alias.scope !31, !noalias !28
  store <2 x i32> %wide.load116, ptr %i.bw, align 4, !alias.scope !31, !noalias !28
  %index.next117 = add nuw i64 %index111, 4       ; 2 uses
  %i.bx = add i64 %i.bs, 4
  %i.by = icmp eq i64 %index.next117, %n.vec109
  br i1 %i.by, label %middle.block119, label %vector.body110, !llvm.loop !33

middle.block119:                                  ; preds = %vector.body110
  store i64 %6, ptr %i.bj, align 8, !alias.scope !34, !noalias !36
  %cmp.n120 = icmp eq i64 %i.bn, %n.vec109
  br i1 %cmp.n120, label %._crit_edge73, label %scalar.ph105.preheader

scalar.ph105.preheader:                           ; preds = %vector.memcheck91, %.lr.ph72, %middle.block119
  %.ph = phi i64 [ 0, %vector.memcheck91 ], [ 0, %.lr.ph72 ], [ %n.vec109, %middle.block119 ]
  %.03270.ph = phi ptr [ %i.bg, %vector.memcheck91 ], [ %i.bg, %.lr.ph72 ], [ %i.br, %middle.block119 ]
  br label %scalar.ph105

.lr.ph:                                           ; preds = %.lr.ph.preheader124, %.lr.ph
  %i.bz = phi i64 [ %i.ca, %.lr.ph ], [ %.ph125, %.lr.ph.preheader124 ] ; 2 uses
  %.068 = phi ptr [ %i.cc, %.lr.ph ], [ %.068.ph, %.lr.ph.preheader124 ] ; 2 uses
  %.sroa.012.0.copyload = load i32, ptr %.068, align 4
  %i.ca = add i64 %i.bz, 1                        ; 2 uses
  store i64 %i.ca, ptr %i.u, align 8
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.bz
  store i32 %.sroa.012.0.copyload, ptr %i.cb, align 4
  %i.cc = getelementptr inbounds nuw i8, ptr %.068, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.cc, %i.aq
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !37

._crit_edge73:                                    ; preds = %scalar.ph105, %middle.block119, %._crit_edge
  %i.cd = call noundef ptr @_ZNK2v88internal4wasm12CanonicalSig7Builder3GetENS1_18CanonicalTypeIndexE(ptr noundef nonnull align 8 dereferenceable(48) %3, i32 %i.j) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  store ptr %i.cd, ptr %4, align 8
  %.sroa.6.0..sroa_idx51 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 -1, ptr %.sroa.6.0..sroa_idx51, align 8
  %.sroa.7.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 -1, ptr %.sroa.7.0..sroa_idx53, align 4
  %.sroa.8.0..sroa_idx55 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 -1, ptr %.sroa.8.0..sroa_idx55, align 8
  %.sroa.9.0..sroa_idx57 = getelementptr inbounds nuw i8, ptr %4, i64 20
  store <4 x i8> <i8 0, i8 1, i8 0, i8 0>, ptr %.sroa.9.0..sroa_idx57, align 4
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 %i.j, ptr %i.ce, align 8
  %i.cf = call { ptr, i8 } @_ZNSt10_HashtableIN2v88internal4wasm17TypeCanonicalizer23CanonicalSingletonGroupES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ENS0_4base4hashIS4_EENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE10_M_emplaceIJRS4_EEESt4pairINS6_14_Node_iteratorIS4_Lb1ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.l, ptr noundef nonnull align 8 dereferenceable(28) %4)
  %.fca.0.extract = extractvalue { ptr, i8 } %i.cf, 0
  %i.cg = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 8
  %i.ch = load ptr, ptr %i.b, align 8             ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8
  %.not.i.i = icmp eq ptr %i.ch, %i.cj
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge73
  store i32 -1, ptr %i.ch, align 4
  %i.ck = load ptr, ptr %i.b, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  store ptr %i.cl, ptr %i.b, align 8
  br label %_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE9push_backEOS3_.exit

bb.g:                                             ; preds = %._crit_edge73
  %i.cm = load ptr, ptr %0, align 8               ; 4 uses
  %i.cn = ptrtoint ptr %i.ch to i64
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = sub i64 %i.cn, %i.co                    ; 6 uses
  %i.cq = icmp eq i64 %i.cp, 9223372036854775804
  br i1 %i.cq, label %bb.h, label %_ZNKSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #13
  unreachable

_ZNKSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.cr = ashr exact i64 %i.cp, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.cr, i64 1)
  %i.cs = add nsw i64 %.sroa.speculated.i.i.i.i, %i.cr ; 2 uses
  %i.ct = icmp ult i64 %i.cs, %i.cr
  %i.cu = call i64 @llvm.umin.i64(i64 %i.cs, i64 2305843009213693951)
  %i.cv = select i1 %i.ct, i64 2305843009213693951, i64 %i.cu ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.cv, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.cw = shl nuw nsw i64 %i.cv, 2
  %i.cx = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cw) #14 ; 4 uses
  %i.cy = getelementptr inbounds i8, ptr %i.cx, i64 %i.cp ; 2 uses
  store i32 -1, ptr %i.cy, align 4
  %i.cz = icmp sgt i64 %i.cp, 0
  br i1 %i.cz, label %bb.i, label %_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.i:                                             ; preds = %_ZNKSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cx, ptr align 4 %i.cm, i64 %i.cp, i1 false)
  br label %_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.i, %_ZNKSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cm, i64 noundef %i.cp) #15
  br label %_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  store ptr %i.cx, ptr %0, align 8
  store ptr %i.da, ptr %i.b, align 8
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.cv
  store ptr %i.db, ptr %i.ci, align 8
  br label %_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.f, %_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.dd = add nuw nsw i64 %i.i, 1
  %i.de = lshr i64 %i.dd, 10
  %i.df = and i64 %i.de, 4194303
  br label %bb.k

bb.k:                                             ; preds = %_ZN2v88internal4Zone3NewINS0_4wasm17TypeCanonicalizer19CanonicalTypeVector7SegmentEJEEEPT_DpOT0_.exit.i, %_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE9push_backEOS3_.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN2v88internal4Zone3NewINS0_4wasm17TypeCanonicalizer19CanonicalTypeVector7SegmentEJEEEPT_DpOT0_.exit.i ], [ %i.df, %_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE9push_backEOS3_.exit ] ; 3 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %indvars.iv ; 2 uses
  %i.dh = load atomic ptr, ptr %i.dg monotonic, align 8
  %.not.i = icmp eq ptr %i.dh, null
  br i1 %.not.i, label %bb.l, label %_ZN2v88internal4wasm17TypeCanonicalizer19CanonicalTypeVector7reserveEjPNS0_4ZoneE.exit

bb.l:                                             ; preds = %bb.k
  %i.di = load i64, ptr %i.z, align 8
  %i.dj = load i64, ptr %i.ab, align 8            ; 2 uses
  %i.dk = sub i64 %i.di, %i.dj
  %i.dl = icmp ult i64 %i.dk, 8192
  br i1 %i.dl, label %bb.m, label %_ZN2v88internal4Zone3NewINS0_4wasm17TypeCanonicalizer19CanonicalTypeVector7SegmentEJEEEPT_DpOT0_.exit.i, !prof !5

bb.m:                                             ; preds = %bb.l
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef 8192) #12
  %.pre.i.i.i36 = load i64, ptr %i.ab, align 8
  br label %_ZN2v88internal4Zone3NewINS0_4wasm17TypeCanonicalizer19CanonicalTypeVector7SegmentEJEEEPT_DpOT0_.exit.i

_ZN2v88internal4Zone3NewINS0_4wasm17TypeCanonicalizer19CanonicalTypeVector7SegmentEJEEEPT_DpOT0_.exit.i: ; preds = %bb.m, %bb.l
  %i.dm = phi i64 [ %.pre.i.i.i36, %bb.m ], [ %i.dj, %bb.l ] ; 2 uses
  %i.dn = inttoptr i64 %i.dm to ptr               ; 2 uses
  %i.do = add i64 %i.dm, 8192
  store i64 %i.do, ptr %i.ab, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(8192) %i.dn, i8 0, i64 8192, i1 false)
  store atomic ptr %i.dn, ptr %i.dg monotonic, align 8
  %i.dp = icmp eq i64 %indvars.iv, 0
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  br i1 %i.dp, label %_ZN2v88internal4wasm17TypeCanonicalizer19CanonicalTypeVector7reserveEjPNS0_4ZoneE.exit, label %bb.k, !llvm.loop !9

_ZN2v88internal4wasm17TypeCanonicalizer19CanonicalTypeVector7reserveEjPNS0_4ZoneE.exit: ; preds = %bb.k, %_ZN2v88internal4Zone3NewINS0_4wasm17TypeCanonicalizer19CanonicalTypeVector7SegmentEJEEEPT_DpOT0_.exit.i
  %i.dq = lshr i64 %i.g, 12
  %i.dr = and i64 %i.dq, 4194303
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.dr
  %i.dt = load atomic ptr, ptr %i.ds monotonic, align 8
  %i.du = and i64 %i.i, 1023
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.du
  store atomic ptr %i.cg, ptr %i.dv monotonic, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit

scalar.ph105:                                     ; preds = %scalar.ph105.preheader, %scalar.ph105
  %i.dw = phi i64 [ %i.dx, %scalar.ph105 ], [ %.ph, %scalar.ph105.preheader ] ; 2 uses
  %.03270 = phi ptr [ %i.dz, %scalar.ph105 ], [ %.03270.ph, %scalar.ph105.preheader ] ; 2 uses
  %.sroa.04.0.copyload = load i32, ptr %.03270, align 4
  %i.dx = add i64 %i.dw, 1                        ; 2 uses
  store i64 %i.dx, ptr %i.bj, align 8
  %i.dy = getelementptr [4 x i8], ptr %i.bk, i64 %i.dw
  store i32 %.sroa.04.0.copyload, ptr %i.dy, align 4
  %i.dz = getelementptr inbounds nuw i8, ptr %.03270, i64 4 ; 2 uses
  %.not33 = icmp eq ptr %i.dz, %i.bi
  br i1 %.not33, label %._crit_edge73, label %scalar.ph105, !llvm.loop !38

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit:      ; preds = %_ZNK2v88internal4wasm17TypeCanonicalizer18FindCanonicalGroupERKNS2_23CanonicalSingletonGroupE.exit, %_ZN2v88internal4wasm17TypeCanonicalizer19CanonicalTypeVector7reserveEjPNS0_4ZoneE.exit
  %.sroa.031.0 = phi i32 [ %i.j, %_ZN2v88internal4wasm17TypeCanonicalizer19CanonicalTypeVector7reserveEjPNS0_4ZoneE.exit ], [ %.sroa.0.0.copyload.i, %_ZNK2v88internal4wasm17TypeCanonicalizer18FindCanonicalGroupERKNS2_23CanonicalSingletonGroupE.exit ]
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #12
  ret i32 %.sroa.031.0
}

declare noundef ptr @_ZNK2v88internal4wasm12CanonicalSig7Builder3GetENS1_18CanonicalTypeIndexE(ptr noundef nonnull align 8 dereferenceable(48), i32) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZNK2v88internal4wasm17TypeCanonicalizer23LookupFunctionSignatureENS1_18CanonicalTypeIndexE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8056) %0, i32 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp ult i32 %1, 1000448
  br i1 %i.a, label %_ZNK2v88internal4wasm17TypeCanonicalizer19CanonicalTypeVectorixENS1_18CanonicalTypeIndexE.exit, label %bb.b, !prof !39

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.15) #13
  unreachable

_ZNK2v88internal4wasm17TypeCanonicalizer19CanonicalTypeVectorixENS1_18CanonicalTypeIndexE.exit: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.c = lshr i32 %1, 10
  %i.d = zext nneg i32 %i.c to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.d
  %i.f = load atomic ptr, ptr %i.e monotonic, align 8
  %i.g = and i32 %1, 1023
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  %i.j = load atomic ptr, ptr %i.i monotonic, align 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.l = load i8, ptr %i.k, align 4
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %bb.d, label %bb.c, !prof !39

bb.c:                                             ; preds = %_ZNK2v88internal4wasm17TypeCanonicalizer19CanonicalTypeVectorixENS1_18CanonicalTypeIndexE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #13
  unreachable

bb.d:                                             ; preds = %_ZNK2v88internal4wasm17TypeCanonicalizer19CanonicalTypeVectorixENS1_18CanonicalTypeIndexE.exit
  %i.n = load ptr, ptr %i.j, align 8
  ret ptr %i.n
end_hunk_0
