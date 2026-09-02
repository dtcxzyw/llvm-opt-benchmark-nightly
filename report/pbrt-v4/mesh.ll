Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/mesh?download=true
inline.NumInlined: 3598
inline.NumDeleted: 971
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN4pbrt12TriangleMeshC2ERKNS_9TransformEbSt6vectorIiSaIiEES4_INS_6Point3IfEESaIS8_EES4_INS_7Vector3IfEESaISC_EES4_INS_7Normal3IfEESaISG_EES4_INS_6Point2IfEESaISK_EES6_N4pstd3pmr21polymorphic_allocatorISt4byteEE:bb.a
  %i.im = tail call noundef ptr @_ZN4pbrt11BufferCacheIiE11LookupOrAddEN4pstd4spanIKiEENS2_3pmr21polymorphic_allocatorISt4byteEE(ptr noundef nonnull align 8 dereferenceable(7176) %i.il, ptr %i.ia, i64 %i.ii, ptr %i.o)
  store ptr %i.im, ptr %i.an, align 8, !tbaa !55
  br label %bb.s

bb.s:                                             ; preds = %bb.o, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #23
  %i.in = load ptr, ptr %i.aa, align 8, !tbaa !26
  %i.io = load ptr, ptr %4, align 8, !tbaa !27
  %i.ip = ptrtoint ptr %i.in to i64
  %i.iq = ptrtoint ptr %i.io to i64
  %i.ir = sub i64 %i.ip, %i.iq
  %i.is = sdiv exact i64 %i.ir, 12                ; 2 uses
  store i64 %i.is, ptr %i.k, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #23
  store i32 2147483647, ptr %i.l, align 4, !tbaa !31
  %.not = icmp ugt i64 %i.is, 2147483647
  br i1 %.not, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @_ZN4pbrt8LogFatalIJRA9_KcRA32_S1_S3_RmS5_RiEEEvNS_8LogLevelEPS1_iS9_DpOT_(i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 72, ptr noundef nonnull @.str.15, ptr noundef nonnull align 1 dereferenceable(9) @.str.16, ptr noundef nonnull align 1 dereferenceable(32) @.str.17, ptr noundef nonnull align 1 dereferenceable(9) @.str.16, ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 1 dereferenceable(32) @.str.17, ptr noundef nonnull align 4 dereferenceable(4) %i.l) #24
  unreachable

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #23
  %i.it = load ptr, ptr %i.q, align 8, !tbaa !16
  %i.iu = load ptr, ptr %3, align 8, !tbaa !17
  %i.iv = ptrtoint ptr %i.it to i64
  %i.iw = ptrtoint ptr %i.iu to i64
  %i.ix = sub i64 %i.iv, %i.iw
  %i.iy = ashr exact i64 %i.ix, 2                 ; 2 uses
  store i64 %i.iy, ptr %i.m, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #23
  store i32 2147483647, ptr %i.n, align 4, !tbaa !31
  %.not58 = icmp ugt i64 %i.iy, 2147483647
  br i1 %.not58, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @_ZN4pbrt8LogFatalIJRA15_KcRA32_S1_S3_RmS5_RiEEEvNS_8LogLevelEPS1_iS9_DpOT_(i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 76, ptr noundef nonnull @.str.15, ptr noundef nonnull align 1 dereferenceable(15) @.str.18, ptr noundef nonnull align 1 dereferenceable(32) @.str.17, ptr noundef nonnull align 1 dereferenceable(15) @.str.18, ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 1 dereferenceable(32) @.str.17, ptr noundef nonnull align 4 dereferenceable(4) %i.n) #24
  unreachable

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #23
  ret void
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZN4pbrt8LogFatalIJRA21_KcRA2_S1_S3_RmS5_RiEEEvNS_8LogLevelEPS1_iS9_DpOT_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(21) %4, ptr noundef nonnull align 1 dereferenceable(2) %5, ptr noundef nonnull align 1 dereferenceable(21) %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 1 dereferenceable(2) %8, ptr noundef nonnull align 4 dereferenceable(4) %9) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.a, ptr %10, align 8, !tbaa !58, !alias.scope !191
  %i.b = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !60, !alias.scope !191
  store i8 0, ptr %i.a, align 8, !tbaa !61, !alias.scope !191
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRA21_KcJRA2_S2_S4_RmS6_RiEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_(ptr noundef nonnull align 8 %10, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(21) %4, ptr noundef nonnull align 1 dereferenceable(2) %5, ptr noundef nonnull align 1 dereferenceable(21) %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 1 dereferenceable(2) %8, ptr noundef nonnull align 4 dereferenceable(4) %9)
          to label %_ZN4pbrt12StringPrintfIJRA21_KcRA2_S1_S3_RmS5_RiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = load ptr, ptr %10, align 8, !tbaa !62, !alias.scope !191 ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !61, !alias.scope !191
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #25
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_ZN4pbrt12StringPrintfIJRA21_KcRA2_S1_S3_RmS5_RiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %10, align 8, !tbaa !62
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %i.h) #24
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA21_KcRA2_S1_S3_RmS5_RiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  unreachable

bb.d:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA21_KcRA2_S1_S3_RmS5_RiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %10, align 8, !tbaa !62    ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.a
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.a, align 8, !tbaa !61
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %common.resume
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #4

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN4pbrt11BufferCacheIiE11LookupOrAddEN4pstd4spanIKiEENS2_3pmr21polymorphic_allocatorISt4byteEE(ptr noundef nonnull align 8 dereferenceable(7176) %0, ptr %1, i64 %2, ptr %3) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %4 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %5 = alloca %"struct.pbrt::BufferCache<int>::Buffer", align 8 ; 7 uses
  %6 = alloca %"struct.pbrt::BufferCache<int>::Buffer", align 8 ; 7 uses
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4pbrtL19nBufferCacheLookupsE) ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !30
  %i.c = add nsw i64 %i.b, 1
  store i64 %i.c, ptr %i.a, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store ptr %1, ptr %5, align 8, !tbaa !64
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %2, ptr %i.d, align 8, !tbaa !65
  %i.e = shl i64 %2, 2                            ; 10 uses
  %i.f = mul i64 %2, 1914766847002519124          ; 6 uses
  %i.g = and i64 %i.e, -8                         ; 3 uses
  %i.h = getelementptr i8, ptr %1, i64 %i.g       ; 3 uses
  %.not37.i.i.i = icmp samesign eq i64 %i.g, 0    ; 2 uses
  br i1 %.not37.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.a
  %i.i = add i64 %i.e, -8                         ; 2 uses
  %i.j = lshr i64 %i.i, 3
  %i.k = add nuw nsw i64 %i.j, 1
  %xtraiter = and i64 %i.k, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.039.i.i.i.prol = phi ptr [ %i.l, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.03638.i.i.i.prol = phi i64 [ %i.r, %.lr.ph.i.i.i.prol ], [ %i.f, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %.0.copyload.i.i.i.prol = load i64, ptr %.039.i.i.i.prol, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %.039.i.i.i.prol, i64 8 ; 2 uses
  %i.m = mul i64 %.0.copyload.i.i.i.prol, -4132994306676758123 ; 2 uses
  %i.n = lshr i64 %i.m, 47
  %i.o = xor i64 %i.n, %i.m
  %i.p = mul i64 %i.o, -4132994306676758123
  %i.q = xor i64 %i.p, %.03638.i.i.i.prol
  %i.r = mul i64 %i.q, -4132994306676758123       ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !192

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa65.unr = phi i64 [ poison, %.lr.ph.i.i.i.preheader ], [ %i.r, %.lr.ph.i.i.i.prol ]
  %.039.i.i.i.unr = phi ptr [ %1, %.lr.ph.i.i.i.preheader ], [ %i.l, %.lr.ph.i.i.i.prol ]
  %.03638.i.i.i.unr = phi i64 [ %i.f, %.lr.ph.i.i.i.preheader ], [ %i.r, %.lr.ph.i.i.i.prol ]
  %i.s = icmp ult i64 %i.i, 24
  br i1 %i.s, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.039.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i ], [ %.039.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 5 uses
  %.03638.i.i.i = phi i64 [ %i.au, %.lr.ph.i.i.i ], [ %.03638.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %.0.copyload.i.i.i = load i64, ptr %.039.i.i.i, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %.039.i.i.i, i64 8
  %i.u = mul i64 %.0.copyload.i.i.i, -4132994306676758123 ; 2 uses
  %i.v = lshr i64 %i.u, 47
  %i.w = xor i64 %i.v, %i.u
  %i.x = mul i64 %i.w, -4132994306676758123
  %i.y = xor i64 %i.x, %.03638.i.i.i
  %i.z = mul i64 %i.y, -4132994306676758123
  %.0.copyload.i.i.i.1 = load i64, ptr %i.t, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %.039.i.i.i, i64 16
  %i.ab = mul i64 %.0.copyload.i.i.i.1, -4132994306676758123 ; 2 uses
  %i.ac = lshr i64 %i.ab, 47
  %i.ad = xor i64 %i.ac, %i.ab
  %i.ae = mul i64 %i.ad, -4132994306676758123
  %i.af = xor i64 %i.ae, %i.z
  %i.ag = mul i64 %i.af, -4132994306676758123
  %.0.copyload.i.i.i.2 = load i64, ptr %i.aa, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %.039.i.i.i, i64 24
  %i.ai = mul i64 %.0.copyload.i.i.i.2, -4132994306676758123 ; 2 uses
  %i.aj = lshr i64 %i.ai, 47
  %i.ak = xor i64 %i.aj, %i.ai
  %i.al = mul i64 %i.ak, -4132994306676758123
  %i.am = xor i64 %i.al, %i.ag
  %i.an = mul i64 %i.am, -4132994306676758123
  %.0.copyload.i.i.i.3 = load i64, ptr %i.ah, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %.039.i.i.i, i64 32 ; 2 uses
  %i.ap = mul i64 %.0.copyload.i.i.i.3, -4132994306676758123 ; 2 uses
  %i.aq = lshr i64 %i.ap, 47
  %i.ar = xor i64 %i.aq, %i.ap
  %i.as = mul i64 %i.ar, -4132994306676758123
  %i.at = xor i64 %i.as, %i.an
  %i.au = mul i64 %i.at, -4132994306676758123     ; 2 uses
  %.not.i.i.i.3 = icmp eq ptr %i.ao, %i.h
  br i1 %.not.i.i.i.3, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !0

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %bb.a
  %.036.lcssa.i.i.i = phi i64 [ %i.f, %bb.a ], [ %.lcssa65.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.au, %.lr.ph.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i = phi ptr [ %1, %bb.a ], [ %i.h, %.lr.ph.i.i.i ], [ %i.h, %.lr.ph.i.i.i.prol.loopexit ]
  %7 = and i64 %2, 1
  %8 = icmp eq i64 %7, 0                          ; 2 uses
  br i1 %8, label %_ZN4pbrt11BufferCacheIiE6BufferC2EPKim.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.av = load i32, ptr %.0.lcssa.i.i.i, align 1
  %i.aw = zext i32 %i.av to i64
  %i.ax = xor i64 %.036.lcssa.i.i.i, %i.aw
  %i.ay = mul i64 %i.ax, -4132994306676758123
  br label %_ZN4pbrt11BufferCacheIiE6BufferC2EPKim.exit

_ZN4pbrt11BufferCacheIiE6BufferC2EPKim.exit:      ; preds = %._crit_edge.i.i.i, %bb.b
  %.7.i.i.i = phi i64 [ %i.ay, %bb.b ], [ %.036.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.az = lshr i64 %.7.i.i.i, 47
  %i.ba = xor i64 %i.az, %.7.i.i.i
  %i.bb = mul i64 %i.ba, -4132994306676758123     ; 3 uses
  %i.bc = lshr i64 %i.bb, 47
  %i.bd = xor i64 %i.bc, %i.bb
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !68
  %i.bf = lshr i64 %i.bb, 26
  %i.bg = and i64 %i.bf, 63                       ; 2 uses
  %i.bh = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.bg ; 6 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %_ZN4pbrt11BufferCacheIiE6BufferC2EPKim.exit
  %i.bi = tail call noundef i32 @pthread_rwlock_rdlock(ptr noundef nonnull align 8 dereferenceable(56) %i.bh) #23
  switch i32 %i.bi, label %_ZNSt12shared_mutex11lock_sharedEv.exit [
    i32 11, label %bb.c
    i32 35, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_system_errori(i32 noundef 35) #24
  unreachable

_ZNSt12shared_mutex11lock_sharedEv.exit:          ; preds = %bb.c
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 3584
  %i.bk = getelementptr inbounds nuw [56 x i8], ptr %i.bj, i64 %i.bg ; 4 uses
  %i.bl = call ptr @_ZNSt10_HashtableIN4pbrt11BufferCacheIiE6BufferES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ENS2_12BufferHasherENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE4findERKS3_(ptr noundef nonnull align 8 dereferenceable(56) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %5) ; 2 uses
  %.not = icmp eq ptr %i.bl, null
  br i1 %.not, label %bb.e, label %.thread

.thread:                                          ; preds = %_ZNSt12shared_mutex11lock_sharedEv.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !64
  %i.bo = call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.bh) #23 ; 0 uses
  %i.bp = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4pbrtL16nBufferCacheHitsE) ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !30
  %i.br = add nsw i64 %i.bq, 1
  store i64 %i.br, ptr %i.bp, align 8, !tbaa !30
  %i.bs = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4pbrtL20redundantBufferBytesE) ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !30
  %i.bu = add i64 %i.bt, %i.e
  store i64 %i.bu, ptr %i.bs, align 8, !tbaa !30
  br label %bb.o

bb.e:                                             ; preds = %_ZNSt12shared_mutex11lock_sharedEv.exit
  %i.bv = call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.bh) #23 ; 0 uses
  %i.bw = icmp eq i64 %i.e, 0
  br i1 %i.bw, label %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE15allocate_objectIiEEPT_m.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bx = load ptr, ptr %3, align 8, !tbaa !70
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = call noundef ptr %i.bz(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %i.e, i64 noundef 4), !inline_history !193
  br label %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE15allocate_objectIiEEPT_m.exit

_ZN4pstd3pmr21polymorphic_allocatorISt4byteE15allocate_objectIiEEPT_m.exit: ; preds = %bb.e, %bb.f
  %.0.i.i.i = phi ptr [ %i.ca, %bb.f ], [ null, %bb.e ] ; 10 uses
  %i.cb = icmp ugt i64 %2, 1
  br i1 %i.cb, label %bb.g, label %bb.h, !prof !71

bb.g:                                             ; preds = %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE15allocate_objectIiEEPT_m.exit
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %.0.i.i.i, ptr align 4 %1, i64 %i.e, i1 false)
  br label %_ZSt4copyIPKiPiET0_T_S4_S3_.exit

bb.h:                                             ; preds = %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE15allocate_objectIiEEPT_m.exit
  %i.cc = icmp eq i64 %2, 1
  br i1 %i.cc, label %bb.i, label %_ZSt4copyIPKiPiET0_T_S4_S3_.exit

bb.i:                                             ; preds = %bb.h
  %i.cd = load i32, ptr %1, align 4, !tbaa !31
  store i32 %i.cd, ptr %.0.i.i.i, align 4, !tbaa !31
  br label %_ZSt4copyIPKiPiET0_T_S4_S3_.exit

_ZSt4copyIPKiPiET0_T_S4_S3_.exit:                 ; preds = %bb.g, %bb.h, %bb.i
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 7168
  %i.cf = atomicrmw add ptr %i.ce, i64 %i.e seq_cst, align 8 ; 0 uses
  %i.cg = call noundef i32 @pthread_rwlock_wrlock(ptr noundef nonnull align 8 dereferenceable(56) %i.bh) #23
  %i.ch = icmp eq i32 %i.cg, 35
  br i1 %i.ch, label %bb.j, label %_ZNSt12shared_mutex4lockEv.exit

bb.j:                                             ; preds = %_ZSt4copyIPKiPiET0_T_S4_S3_.exit
  call void @_ZSt20__throw_system_errori(i32 noundef 35) #24
  unreachable

_ZNSt12shared_mutex4lockEv.exit:                  ; preds = %_ZSt4copyIPKiPiET0_T_S4_S3_.exit
  %i.ci = call ptr @_ZNSt10_HashtableIN4pbrt11BufferCacheIiE6BufferES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ENS2_12BufferHasherENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE4findERKS3_(ptr noundef nonnull align 8 dereferenceable(56) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %5) ; 2 uses
  %.not55 = icmp eq ptr %i.ci, null
  br i1 %.not55, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_ZNSt12shared_mutex4lockEv.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !64
  %i.cl = call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.bh) #23 ; 0 uses
  %.not.i.i.i23 = icmp eq ptr %.0.i.i.i, null
  br i1 %.not.i.i.i23, label %.thread53, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cm = load ptr, ptr %3, align 8, !tbaa !70
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.co = load ptr, ptr %i.cn, align 8
  call void %i.co(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %.0.i.i.i, i64 noundef %i.e, i64 noundef 4), !inline_history !194
  br label %.thread53

.thread53:                                        ; preds = %bb.l, %bb.k
  %i.cp = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4pbrtL16nBufferCacheHitsE) ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !30
  %i.cr = add nsw i64 %i.cq, 1
  store i64 %i.cr, ptr %i.cp, align 8, !tbaa !30
  %i.cs = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4pbrtL20redundantBufferBytesE) ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !30
  %i.cu = add i64 %i.ct, %i.e
  store i64 %i.cu, ptr %i.cs, align 8, !tbaa !30
  br label %bb.o

bb.m:                                             ; preds = %_ZNSt12shared_mutex4lockEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  store ptr %.0.i.i.i, ptr %6, align 8, !tbaa !64
  %i.cv = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %2, ptr %i.cv, align 8, !tbaa !65
  %i.cw = getelementptr i8, ptr %.0.i.i.i, i64 %i.g ; 3 uses
  br i1 %.not37.i.i.i, label %._crit_edge.i.i.i30, label %.lr.ph.i.i.i25.preheader

.lr.ph.i.i.i25.preheader:                         ; preds = %bb.m
  %i.cx = add i64 %i.e, -8                        ; 2 uses
  %i.cy = lshr i64 %i.cx, 3
  %i.cz = add nuw nsw i64 %i.cy, 1
  %xtraiter66 = and i64 %i.cz, 3                  ; 2 uses
  %lcmp.mod67.not = icmp eq i64 %xtraiter66, 0
  br i1 %lcmp.mod67.not, label %.lr.ph.i.i.i25.prol.loopexit, label %.lr.ph.i.i.i25.prol

.lr.ph.i.i.i25.prol:                              ; preds = %.lr.ph.i.i.i25.preheader, %.lr.ph.i.i.i25.prol
  %.039.i.i.i26.prol = phi ptr [ %i.da, %.lr.ph.i.i.i25.prol ], [ %.0.i.i.i, %.lr.ph.i.i.i25.preheader ] ; 2 uses
  %.03638.i.i.i27.prol = phi i64 [ %i.dg, %.lr.ph.i.i.i25.prol ], [ %i.f, %.lr.ph.i.i.i25.preheader ]
  %prol.iter68 = phi i64 [ %prol.iter68.next, %.lr.ph.i.i.i25.prol ], [ 0, %.lr.ph.i.i.i25.preheader ]
  %.0.copyload.i.i.i28.prol = load i64, ptr %.039.i.i.i26.prol, align 1
  %i.da = getelementptr inbounds nuw i8, ptr %.039.i.i.i26.prol, i64 8 ; 2 uses
  %i.db = mul i64 %.0.copyload.i.i.i28.prol, -4132994306676758123 ; 2 uses
  %i.dc = lshr i64 %i.db, 47
  %i.dd = xor i64 %i.dc, %i.db
  %i.de = mul i64 %i.dd, -4132994306676758123
  %i.df = xor i64 %i.de, %.03638.i.i.i27.prol
  %i.dg = mul i64 %i.df, -4132994306676758123     ; 3 uses
  %prol.iter68.next = add i64 %prol.iter68, 1     ; 2 uses
  %prol.iter68.cmp.not = icmp eq i64 %prol.iter68.next, %xtraiter66
  br i1 %prol.iter68.cmp.not, label %.lr.ph.i.i.i25.prol.loopexit, label %.lr.ph.i.i.i25.prol, !llvm.loop !195

.lr.ph.i.i.i25.prol.loopexit:                     ; preds = %.lr.ph.i.i.i25.prol, %.lr.ph.i.i.i25.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i25.preheader ], [ %i.dg, %.lr.ph.i.i.i25.prol ]
  %.039.i.i.i26.unr = phi ptr [ %.0.i.i.i, %.lr.ph.i.i.i25.preheader ], [ %i.da, %.lr.ph.i.i.i25.prol ]
  %.03638.i.i.i27.unr = phi i64 [ %i.f, %.lr.ph.i.i.i25.preheader ], [ %i.dg, %.lr.ph.i.i.i25.prol ]
  %i.dh = icmp ult i64 %i.cx, 24
  br i1 %i.dh, label %._crit_edge.i.i.i30, label %.lr.ph.i.i.i25

.lr.ph.i.i.i25:                                   ; preds = %.lr.ph.i.i.i25.prol.loopexit, %.lr.ph.i.i.i25
  %.039.i.i.i26 = phi ptr [ %i.ed, %.lr.ph.i.i.i25 ], [ %.039.i.i.i26.unr, %.lr.ph.i.i.i25.prol.loopexit ] ; 5 uses
  %.03638.i.i.i27 = phi i64 [ %i.ej, %.lr.ph.i.i.i25 ], [ %.03638.i.i.i27.unr, %.lr.ph.i.i.i25.prol.loopexit ]
  %.0.copyload.i.i.i28 = load i64, ptr %.039.i.i.i26, align 1
  %i.di = getelementptr inbounds nuw i8, ptr %.039.i.i.i26, i64 8
  %i.dj = mul i64 %.0.copyload.i.i.i28, -4132994306676758123 ; 2 uses
  %i.dk = lshr i64 %i.dj, 47
  %i.dl = xor i64 %i.dk, %i.dj
  %i.dm = mul i64 %i.dl, -4132994306676758123
  %i.dn = xor i64 %i.dm, %.03638.i.i.i27
  %i.do = mul i64 %i.dn, -4132994306676758123
  %.0.copyload.i.i.i28.1 = load i64, ptr %i.di, align 1
  %i.dp = getelementptr inbounds nuw i8, ptr %.039.i.i.i26, i64 16
  %i.dq = mul i64 %.0.copyload.i.i.i28.1, -4132994306676758123 ; 2 uses
  %i.dr = lshr i64 %i.dq, 47
  %i.ds = xor i64 %i.dr, %i.dq
  %i.dt = mul i64 %i.ds, -4132994306676758123
  %i.du = xor i64 %i.dt, %i.do
  %i.dv = mul i64 %i.du, -4132994306676758123
  %.0.copyload.i.i.i28.2 = load i64, ptr %i.dp, align 1
  %i.dw = getelementptr inbounds nuw i8, ptr %.039.i.i.i26, i64 24
  %i.dx = mul i64 %.0.copyload.i.i.i28.2, -4132994306676758123 ; 2 uses
  %i.dy = lshr i64 %i.dx, 47
  %i.dz = xor i64 %i.dy, %i.dx
  %i.ea = mul i64 %i.dz, -4132994306676758123
  %i.eb = xor i64 %i.ea, %i.dv
  %i.ec = mul i64 %i.eb, -4132994306676758123
  %.0.copyload.i.i.i28.3 = load i64, ptr %i.dw, align 1
  %i.ed = getelementptr inbounds nuw i8, ptr %.039.i.i.i26, i64 32 ; 2 uses
  %i.ee = mul i64 %.0.copyload.i.i.i28.3, -4132994306676758123 ; 2 uses
  %i.ef = lshr i64 %i.ee, 47
  %i.eg = xor i64 %i.ef, %i.ee
  %i.eh = mul i64 %i.eg, -4132994306676758123
  %i.ei = xor i64 %i.eh, %i.ec
  %i.ej = mul i64 %i.ei, -4132994306676758123     ; 2 uses
  %.not.i.i.i29.3 = icmp eq ptr %i.ed, %i.cw
  br i1 %.not.i.i.i29.3, label %._crit_edge.i.i.i30, label %.lr.ph.i.i.i25, !llvm.loop !0

._crit_edge.i.i.i30:                              ; preds = %.lr.ph.i.i.i25.prol.loopexit, %.lr.ph.i.i.i25, %bb.m
  %.036.lcssa.i.i.i31 = phi i64 [ %i.f, %bb.m ], [ %.lcssa.unr, %.lr.ph.i.i.i25.prol.loopexit ], [ %i.ej, %.lr.ph.i.i.i25 ] ; 2 uses
  %.0.lcssa.i.i.i32 = phi ptr [ %.0.i.i.i, %bb.m ], [ %i.cw, %.lr.ph.i.i.i25 ], [ %i.cw, %.lr.ph.i.i.i25.prol.loopexit ]
  br i1 %8, label %_ZN4pbrt11BufferCacheIiE6BufferC2EPKim.exit34, label %bb.n

bb.n:                                             ; preds = %._crit_edge.i.i.i30
  %i.ek = load i32, ptr %.0.lcssa.i.i.i32, align 1
  %i.el = zext i32 %i.ek to i64
  %i.em = xor i64 %.036.lcssa.i.i.i31, %i.el
  %i.en = mul i64 %i.em, -4132994306676758123
  br label %_ZN4pbrt11BufferCacheIiE6BufferC2EPKim.exit34

_ZN4pbrt11BufferCacheIiE6BufferC2EPKim.exit34:    ; preds = %._crit_edge.i.i.i30, %bb.n
  %.7.i.i.i33 = phi i64 [ %i.en, %bb.n ], [ %.036.lcssa.i.i.i31, %._crit_edge.i.i.i30 ] ; 2 uses
  %i.eo = lshr i64 %.7.i.i.i33, 47
  %i.ep = xor i64 %i.eo, %.7.i.i.i33
  %i.eq = mul i64 %i.ep, -4132994306676758123     ; 2 uses
  %i.er = lshr i64 %i.eq, 47
  %i.es = xor i64 %i.er, %i.eq
  %i.et = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %i.es, ptr %i.et, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr %i.bk, ptr %4, align 8, !tbaa !197
  %i.eu = call { ptr, i8 } @_ZNSt10_HashtableIN4pbrt11BufferCacheIiE6BufferES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ENS2_12BufferHasherENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIS3_S3_NS5_10_AllocNodeISaINS5_10_Hash_nodeIS3_Lb1EEEEEEEESt4pairINS5_14_Node_iteratorIS3_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(8) %4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.ev = call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.bh) #23 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %.thread53, %.thread, %_ZN4pbrt11BufferCacheIiE6BufferC2EPKim.exit34
  %.3 = phi ptr [ %i.bn, %.thread ], [ %.0.i.i.i, %_ZN4pbrt11BufferCacheIiE6BufferC2EPKim.exit34 ], [ %i.ck, %.thread53 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret ptr %.3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN4pbrt11BufferCacheINS_6Point3IfEEE11LookupOrAddEN4pstd4spanIKS2_EENS4_3pmr21polymorphic_allocatorISt4byteEE(ptr noundef nonnull align 8 dereferenceable(7176) %0, ptr %1, i64 %2, ptr %3) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %4 = alloca %"struct.std::__detail::_AllocNode.141", align 8 ; 4 uses
  %5 = alloca %"struct.pbrt::BufferCache<pbrt::Point3<float>>::Buffer", align 8 ; 7 uses
  %6 = alloca %"struct.pbrt::BufferCache<pbrt::Point3<float>>::Buffer", align 8 ; 7 uses
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4pbrtL19nBufferCacheLookupsE) ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !30
  %i.c = add nsw i64 %i.b, 1
  store i64 %i.c, ptr %i.a, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store ptr %1, ptr %5, align 8, !tbaa !73
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %2, ptr %i.d, align 8, !tbaa !74
  %i.e = mul i64 %2, 12                           ; 11 uses
  %i.f = mul i64 %2, 5744300541007557372          ; 6 uses
  %i.g = and i64 %i.e, -8                         ; 3 uses
  %i.h = getelementptr i8, ptr %1, i64 %i.g       ; 3 uses
  %.not37.i.i.i = icmp samesign eq i64 %i.g, 0    ; 2 uses
  br i1 %.not37.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.a
  %i.i = add i64 %i.e, -8                         ; 2 uses
  %i.j = lshr i64 %i.i, 3
  %i.k = add nuw nsw i64 %i.j, 1
  %xtraiter = and i64 %i.k, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.039.i.i.i.prol = phi ptr [ %i.l, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.03638.i.i.i.prol = phi i64 [ %i.r, %.lr.ph.i.i.i.prol ], [ %i.f, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %.0.copyload.i.i.i.prol = load i64, ptr %.039.i.i.i.prol, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %.039.i.i.i.prol, i64 8 ; 2 uses
  %i.m = mul i64 %.0.copyload.i.i.i.prol, -4132994306676758123 ; 2 uses
  %i.n = lshr i64 %i.m, 47
  %i.o = xor i64 %i.n, %i.m
  %i.p = mul i64 %i.o, -4132994306676758123
  %i.q = xor i64 %i.p, %.03638.i.i.i.prol
  %i.r = mul i64 %i.q, -4132994306676758123       ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !198

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa65.unr = phi i64 [ poison, %.lr.ph.i.i.i.preheader ], [ %i.r, %.lr.ph.i.i.i.prol ]
  %.039.i.i.i.unr = phi ptr [ %1, %.lr.ph.i.i.i.preheader ], [ %i.l, %.lr.ph.i.i.i.prol ]
  %.03638.i.i.i.unr = phi i64 [ %i.f, %.lr.ph.i.i.i.preheader ], [ %i.r, %.lr.ph.i.i.i.prol ]
  %i.s = icmp ult i64 %i.i, 24
  br i1 %i.s, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.039.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i ], [ %.039.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 5 uses
  %.03638.i.i.i = phi i64 [ %i.au, %.lr.ph.i.i.i ], [ %.03638.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %.0.copyload.i.i.i = load i64, ptr %.039.i.i.i, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %.039.i.i.i, i64 8
  %i.u = mul i64 %.0.copyload.i.i.i, -4132994306676758123 ; 2 uses
  %i.v = lshr i64 %i.u, 47
  %i.w = xor i64 %i.v, %i.u
  %i.x = mul i64 %i.w, -4132994306676758123
  %i.y = xor i64 %i.x, %.03638.i.i.i
  %i.z = mul i64 %i.y, -4132994306676758123
  %.0.copyload.i.i.i.1 = load i64, ptr %i.t, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %.039.i.i.i, i64 16
  %i.ab = mul i64 %.0.copyload.i.i.i.1, -4132994306676758123 ; 2 uses
  %i.ac = lshr i64 %i.ab, 47
  %i.ad = xor i64 %i.ac, %i.ab
  %i.ae = mul i64 %i.ad, -4132994306676758123
  %i.af = xor i64 %i.ae, %i.z
  %i.ag = mul i64 %i.af, -4132994306676758123
  %.0.copyload.i.i.i.2 = load i64, ptr %i.aa, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %.039.i.i.i, i64 24
  %i.ai = mul i64 %.0.copyload.i.i.i.2, -4132994306676758123 ; 2 uses
  %i.aj = lshr i64 %i.ai, 47
  %i.ak = xor i64 %i.aj, %i.ai
  %i.al = mul i64 %i.ak, -4132994306676758123
  %i.am = xor i64 %i.al, %i.ag
  %i.an = mul i64 %i.am, -4132994306676758123
  %.0.copyload.i.i.i.3 = load i64, ptr %i.ah, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %.039.i.i.i, i64 32 ; 2 uses
  %i.ap = mul i64 %.0.copyload.i.i.i.3, -4132994306676758123 ; 2 uses
  %i.aq = lshr i64 %i.ap, 47
  %i.ar = xor i64 %i.aq, %i.ap
  %i.as = mul i64 %i.ar, -4132994306676758123
  %i.at = xor i64 %i.as, %i.an
  %i.au = mul i64 %i.at, -4132994306676758123     ; 2 uses
  %.not.i.i.i.3 = icmp eq ptr %i.ao, %i.h
  br i1 %.not.i.i.i.3, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !0

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %bb.a
  %.036.lcssa.i.i.i = phi i64 [ %i.f, %bb.a ], [ %.lcssa65.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.au, %.lr.ph.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i = phi ptr [ %1, %bb.a ], [ %i.h, %.lr.ph.i.i.i ], [ %i.h, %.lr.ph.i.i.i.prol.loopexit ]
  %i.av = and i64 %i.e, 4
  %i.aw = icmp eq i64 %i.av, 0                    ; 2 uses
  br i1 %i.aw, label %_ZN4pbrt11BufferCacheINS_6Point3IfEEE6BufferC2EPKS2_m.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.ax = load i32, ptr %.0.lcssa.i.i.i, align 1
  %i.ay = zext i32 %i.ax to i64
  %i.az = xor i64 %.036.lcssa.i.i.i, %i.ay
  %i.ba = mul i64 %i.az, -4132994306676758123
  br label %_ZN4pbrt11BufferCacheINS_6Point3IfEEE6BufferC2EPKS2_m.exit

_ZN4pbrt11BufferCacheINS_6Point3IfEEE6BufferC2EPKS2_m.exit: ; preds = %._crit_edge.i.i.i, %bb.b
  %.7.i.i.i = phi i64 [ %i.ba, %bb.b ], [ %.036.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.bb = lshr i64 %.7.i.i.i, 47
  %i.bc = xor i64 %i.bb, %.7.i.i.i
  %i.bd = mul i64 %i.bc, -4132994306676758123     ; 3 uses
  %i.be = lshr i64 %i.bd, 47
  %i.bf = xor i64 %i.be, %i.bd
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !75
  %i.bh = lshr i64 %i.bd, 26
  %i.bi = and i64 %i.bh, 63                       ; 2 uses
  %i.bj = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.bi ; 6 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %_ZN4pbrt11BufferCacheINS_6Point3IfEEE6BufferC2EPKS2_m.exit
  %i.bk = tail call noundef i32 @pthread_rwlock_rdlock(ptr noundef nonnull align 8 dereferenceable(56) %i.bj) #23
  switch i32 %i.bk, label %_ZNSt12shared_mutex11lock_sharedEv.exit [
    i32 11, label %bb.c
    i32 35, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_system_errori(i32 noundef 35) #24
  unreachable

_ZNSt12shared_mutex11lock_sharedEv.exit:          ; preds = %bb.c
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 3584
  %i.bm = getelementptr inbounds nuw [56 x i8], ptr %i.bl, i64 %i.bi ; 4 uses
  %i.bn = call ptr @_ZNSt10_HashtableIN4pbrt11BufferCacheINS0_6Point3IfEEE6BufferES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ENS4_12BufferHasherENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE4findERKS5_(ptr noundef nonnull align 8 dereferenceable(56) %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %5) ; 2 uses
  %.not = icmp eq ptr %i.bn, null
  br i1 %.not, label %bb.e, label %.thread

.thread:                                          ; preds = %_ZNSt12shared_mutex11lock_sharedEv.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !73
  %i.bq = call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.bj) #23 ; 0 uses
  %i.br = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4pbrtL16nBufferCacheHitsE) ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !30
  %i.bt = add nsw i64 %i.bs, 1
  store i64 %i.bt, ptr %i.br, align 8, !tbaa !30
  %i.bu = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4pbrtL20redundantBufferBytesE) ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !30
  %i.bw = add i64 %i.bv, %i.e
  store i64 %i.bw, ptr %i.bu, align 8, !tbaa !30
  br label %bb.o

bb.e:                                             ; preds = %_ZNSt12shared_mutex11lock_sharedEv.exit
  %i.bx = call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.bj) #23 ; 0 uses
  %i.by = icmp eq i64 %i.e, 0
  br i1 %i.by, label %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE15allocate_objectIN4pbrt6Point3IfEEEEPT_m.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bz = load ptr, ptr %3, align 8, !tbaa !70
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = call noundef ptr %i.cb(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %i.e, i64 noundef 4), !inline_history !199
  br label %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE15allocate_objectIN4pbrt6Point3IfEEEEPT_m.exit

_ZN4pstd3pmr21polymorphic_allocatorISt4byteE15allocate_objectIN4pbrt6Point3IfEEEEPT_m.exit: ; preds = %bb.e, %bb.f
  %.0.i.i.i = phi ptr [ %i.cc, %bb.f ], [ null, %bb.e ] ; 10 uses
  %i.cd = icmp ugt i64 %2, 1
  br i1 %i.cd, label %bb.g, label %bb.h, !prof !71
end_hunk_0
