Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/IOBufQueue?download=true
inline.NumInlined: 478
inline.NumDeleted: 169
begin_hunk_0_@_ZN5folly10IOBufQueue6appendERKNS_5IOBufEbb:bb.a
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !74 ; 2 uses
  %.not19 = icmp eq ptr %i.bm, %1
  br i1 %.not19, label %"_ZN12_GLOBAL__N_18packIntoIPKN5folly5IOBufEZNS1_10IOBufQueue6appendERS3_bbE3$_0EEvPS2_RT_T0_.exit.thread", label %"_ZN12_GLOBAL__N_18packIntoIPKN5folly5IOBufEZNS1_10IOBufQueue6appendERS3_bbE3$_0EEvPS2_RT_T0_.exit", !llvm.loop !104

"_ZN12_GLOBAL__N_18packIntoIPKN5folly5IOBufEZNS1_10IOBufQueue6appendERS3_bbE3$_0EEvPS2_RT_T0_.exit.thread": ; preds = %bb.o, %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit24
  %i.bn = load i8, ptr %5, align 8, !tbaa !52, !range !41, !noundef !42
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %_ZN5folly6detail14ScopeGuardImplIZNS_10IOBufQueue11updateGuardEbEUlvE_Lb1EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %"_ZN12_GLOBAL__N_18packIntoIPKN5folly5IOBufEZNS1_10IOBufQueue6appendERS3_bbE3$_0EEvPS2_RT_T0_.exit.thread"
  %i.bp = load ptr, ptr %i.y, align 8, !tbaa !82  ; 6 uses
  %i.bq = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i, label %.noexc.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN5folly10IOBufQueue14maybeReuseTailERNS_5IOBufE(ptr noundef nonnull align 8 dereferenceable(72) %i.bp, ptr noundef nonnull align 8 dereferenceable(56) %i.bq)
          to label %.noexc.i.i unwind label %bb.v

.noexc.i.i:                                       ; preds = %bb.r, %bb.q
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !33 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i.i.i, label %.thread.i.i.i.i, label %bb.s, !prof !60

bb.s:                                             ; preds = %.noexc.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 40
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !36 ; 5 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !61 ; 3 uses
  %.not.i4.i.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i4.i.i.i.i, label %.thread.i.i.i.i, label %bb.t, !prof !60

bb.t:                                             ; preds = %bb.s
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 28
  %i.by = load i8, ptr %i.bx, align 4, !tbaa !62, !range !41, !noundef !42
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %.thread.i.i.i.i, label %_ZNK5folly5IOBuf11isSharedOneEv.exit.i.i.i.i, !prof !60

_ZNK5folly5IOBuf11isSharedOneEv.exit.i.i.i.i:     ; preds = %bb.t
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.cb = load atomic i32, ptr %i.ca acquire, align 4
  %i.cc = icmp ugt i32 %i.cb, 1
  br i1 %i.cc, label %.thread.i.i.i.i, label %bb.u, !prof !69

bb.u:                                             ; preds = %_ZNK5folly5IOBuf11isSharedOneEv.exit.i.i.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !48
  %i.cf = load i64, ptr %i.bu, align 8, !tbaa !39
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cf ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !34
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !47
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !70
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cl
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = ptrtoint ptr %i.cg to i64
  %i.cp = sub i64 %i.cn, %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !14 ; 2 uses
  store ptr %i.cg, ptr %i.cs, align 8, !tbaa !71
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store ptr %i.cq, ptr %i.ct, align 8, !tbaa !72
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_10IOBufQueue11updateGuardEbEUlvE_Lb1EED2Ev.exit

.thread.i.i.i.i:                                  ; preds = %_ZNK5folly5IOBuf11isSharedOneEv.exit.i.i.i.i, %bb.t, %bb.s, %.noexc.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  store ptr null, ptr %i.cu, align 8, !tbaa !34
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cw, i8 0, i64 16, i1 false)
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_10IOBufQueue11updateGuardEbEUlvE_Lb1EED2Ev.exit

bb.v:                                             ; preds = %bb.r
  %i.cx = landingpad { ptr, i32 }
          catch ptr null
  %i.cy = extractvalue { ptr, i32 } %i.cx, 0
  %i.cz = call ptr @__cxa_begin_catch(ptr %i.cy) #17 ; 0 uses
  call void @_ZN5folly6detail18ScopeGuardImplBase9terminateEv() #17, !inline_history !73
  unreachable

_ZN5folly6detail14ScopeGuardImplIZNS_10IOBufQueue11updateGuardEbEUlvE_Lb1EED2Ev.exit: ; preds = %"_ZN12_GLOBAL__N_18packIntoIPKN5folly5IOBufEZNS1_10IOBufQueue6appendERS3_bbE3$_0EEvPS2_RT_T0_.exit.thread", %bb.u, %.thread.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.w

bb.w:                                             ; preds = %_ZN5folly6detail14ScopeGuardImplIZNS_10IOBufQueue11updateGuardEbEUlvE_Lb1EED2Ev.exit, %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit
  ret void

bb.x:                                             ; preds = %"_ZN12_GLOBAL__N_18packIntoIPKN5folly5IOBufEZNS1_10IOBufQueue6appendERS3_bbE3$_0EEvPS2_RT_T0_.exit"
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.y:                                             ; preds = %_ZNK5folly5IOBuf8cloneOneEv.exit
  %i.db = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #17
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pn = phi { ptr, i32 } [ %i.db, %bb.y ], [ %i.da, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @_ZN5folly6detail14ScopeGuardImplIZNS_10IOBufQueue11updateGuardEbEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.d
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn, %bb.z ], [ %i.e, %bb.d ]
  resume { ptr, i32 } %.pn.pn.pn
}

declare void @_ZNK5folly5IOBuf9cloneImplEPNSt3pmr15memory_resourceE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8, ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) local_unnamed_addr #8

declare void @_ZNK5folly5IOBuf12cloneOneImplEPNSt3pmr15memory_resourceE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8, ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define void @_ZN5folly10IOBufQueue6appendEONS_5IOBufEbb(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.folly::detail::ScopeGuardImpl", align 8 ; 8 uses
  %5 = alloca %"class.std::unique_ptr", align 8   ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !105)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34, !noalias !105 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14, !noalias !105
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !35, !noalias !105 ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, %i.e
  br i1 %.not.i.i, label %_ZNK5folly10IOBufQueue10flushCacheEv.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !33, !noalias !105
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !36, !noalias !105 ; 2 uses
  %i.j = ptrtoint ptr %i.e to i64
  %i.k = ptrtoint ptr %i.b to i64
  %i.l = sub i64 %i.j, %i.k                       ; 3 uses
  %i.m = load i64, ptr %i.i, align 8, !tbaa !39, !noalias !105
  %i.n = add i64 %i.m, %i.l
  store i64 %i.n, ptr %i.i, align 8, !tbaa !39, !noalias !105
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !31, !noalias !105
  %i.q = add i64 %i.p, %i.l
  store i64 %i.q, ptr %i.o, align 8, !tbaa !31, !noalias !105
  %i.r = getelementptr inbounds i8, ptr %i.b, i64 %i.l
  store ptr %i.r, ptr %i.a, align 8, !tbaa !34, !noalias !105
  br label %_ZNK5folly10IOBufQueue10flushCacheEv.exit.i

_ZNK5folly10IOBufQueue10flushCacheEv.exit.i:      ; preds = %bb.b, %bb.a
  br i1 %3, label %bb.c, label %_ZN5folly10IOBufQueue11updateGuardEb.exit

bb.c:                                             ; preds = %_ZNK5folly10IOBufQueue10flushCacheEv.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !33, !noalias !105 ; 2 uses
  %.not.i2.i = icmp eq ptr %i.t, null
  br i1 %.not.i2.i, label %_ZN5folly10IOBufQueue11updateGuardEb.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !36, !noalias !105
  br label %_ZN5folly10IOBufQueue11updateGuardEb.exit

_ZN5folly10IOBufQueue11updateGuardEb.exit:        ; preds = %_ZNK5folly10IOBufQueue10flushCacheEv.exit.i, %bb.c, %bb.d
  %i.w = phi ptr [ %i.v, %bb.d ], [ null, %bb.c ], [ null, %_ZNK5folly10IOBufQueue10flushCacheEv.exit.i ]
  store i8 0, ptr %4, align 8, !tbaa !52, !alias.scope !108
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %0, ptr %i.x, align 8, !tbaa !57, !alias.scope !105
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.w, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !33, !alias.scope !105
  %i.y = load i8, ptr %0, align 8, !tbaa !59, !range !41, !noundef !42
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN5folly10IOBufQueue11updateGuardEb.exit
  %i.aa = tail call noundef i64 @_ZNK5folly5IOBuf22computeChainDataLengthEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #17
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !31
  %i.ad = add i64 %i.ac, %i.aa
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !31
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN5folly10IOBufQueue11updateGuardEb.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  store ptr null, ptr %5, align 8, !tbaa !85
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !33 ; 2 uses
  %i.ag = icmp ne ptr %i.af, null
  %or.cond = and i1 %2, %i.ag
  br i1 %or.cond, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !36 ; 7 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !61 ; 3 uses
  %.not.i.i13 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i13, label %.thread, label %bb.h, !prof !60

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 28
  %i.am = load i8, ptr %i.al, align 4, !tbaa !62, !range !41, !noundef !42
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %.thread, label %_ZNK5folly5IOBuf11isSharedOneEv.exit.i, !prof !60

_ZNK5folly5IOBuf11isSharedOneEv.exit.i:           ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.ap = load atomic i32, ptr %i.ao acquire, align 4
  %i.aq = icmp ugt i32 %i.ap, 1
  br i1 %i.aq, label %_ZNK5folly5IOBuf11isSharedOneEv.exit.i._crit_edge, label %.lr.ph.i

_ZNK5folly5IOBuf11isSharedOneEv.exit.i._crit_edge: ; preds = %_ZNK5folly5IOBuf11isSharedOneEv.exit.i
  %.pr.pre = load ptr, ptr %5, align 8, !tbaa !33
  br label %bb.n

.lr.ph.i:                                         ; preds = %_ZNK5folly5IOBuf11isSharedOneEv.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.promoted = load ptr, ptr %5, align 8
  br label %bb.i

bb.i:                                             ; preds = %"_ZZN5folly10IOBufQueue6appendEONS_5IOBufEbbENK3$_0clIS1_EEDaPT_.exit.i", %.lr.ph.i
  %.pre.i.i28 = phi ptr [ %.promoted, %.lr.ph.i ], [ %i.bk, %"_ZZN5folly10IOBufQueue6appendEONS_5IOBufEbbENK3$_0clIS1_EEDaPT_.exit.i" ] ; 5 uses
  %.0 = phi ptr [ %1, %.lr.ph.i ], [ %i.bk, %"_ZZN5folly10IOBufQueue6appendEONS_5IOBufEbbENK3$_0clIS1_EEDaPT_.exit.i" ] ; 7 uses
  %.022.i = phi i64 [ 4096, %.lr.ph.i ], [ %.1.i, %"_ZZN5folly10IOBufQueue6appendEONS_5IOBufEbbENK3$_0clIS1_EEDaPT_.exit.i" ] ; 3 uses
  %i.au = load i64, ptr %.0, align 8, !tbaa !39   ; 6 uses
  %.not17.i = icmp ugt i64 %i.au, %.022.i
  br i1 %.not17.i, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !47
  %i.aw = load i64, ptr %i.as, align 8, !tbaa !70
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.aw
  %i.ay = load ptr, ptr %i.at, align 8, !tbaa !48
  %i.az = load i64, ptr %i.ai, align 8, !tbaa !39
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.az ; 2 uses
  %i.bb = ptrtoint ptr %i.ax to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %.not18.i = icmp ugt i64 %i.au, %i.bd
  br i1 %.not18.i, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not19.i = icmp eq i64 %i.au, 0
  br i1 %.not19.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !48
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ba, ptr align 1 %i.bf, i64 %i.au, i1 false)
  %i.bg = load i64, ptr %i.ai, align 8, !tbaa !39
  %i.bh = add i64 %i.bg, %i.au
  store i64 %i.bh, ptr %i.ai, align 8, !tbaa !39
  %i.bi = sub i64 %.022.i, %i.au
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.1.i = phi i64 [ %i.bi, %bb.l ], [ %.022.i, %bb.k ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.0, i64 32 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !74, !noalias !111 ; 6 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.0, i64 40 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !36, !noalias !111 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !36, !noalias !111
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  store ptr %i.bk, ptr %i.bo, align 8, !tbaa !74, !noalias !111
  store ptr %.0, ptr %i.bl, align 8, !tbaa !36, !noalias !111
  store ptr %.0, ptr %i.bj, align 8, !tbaa !74, !noalias !111
  %i.bp = icmp eq ptr %i.bk, %.0
  %.not.i.i.i.i.i.i = icmp eq ptr %.pre.i.i28, null
  br i1 %.not.i.i.i.i.i.i, label %"_ZZN5folly10IOBufQueue6appendEONS_5IOBufEbbENK3$_0clIS1_EEDaPT_.exit.i", label %_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %bb.m
  tail call void @_ZN5folly5IOBufD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %.pre.i.i28) #17
  tail call void @_ZN5folly5IOBufdlEPv(ptr noundef nonnull %.pre.i.i28) #17
  br label %"_ZZN5folly10IOBufQueue6appendEONS_5IOBufEbbENK3$_0clIS1_EEDaPT_.exit.i"

"_ZZN5folly10IOBufQueue6appendEONS_5IOBufEbbENK3$_0clIS1_EEDaPT_.exit.i": ; preds = %_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i.i.i.i.i.i, %bb.m
  %.not.i50 = icmp eq ptr %i.bk, null
  %.not.i = or i1 %i.bp, %.not.i50
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit20, label %bb.i, !llvm.loop !114

.loopexit:                                        ; preds = %bb.j, %bb.i
  store ptr %.pre.i.i28, ptr %5, align 8
  br label %bb.n

bb.n:                                             ; preds = %_ZNK5folly5IOBuf11isSharedOneEv.exit.i._crit_edge, %.loopexit
  %.pr = phi ptr [ %.pr.pre, %_ZNK5folly5IOBuf11isSharedOneEv.exit.i._crit_edge ], [ %.pre.i.i28, %.loopexit ] ; 2 uses
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %.thread, label %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit

.thread:                                          ; preds = %bb.h, %bb.g, %bb.f, %bb.n
  %i.bq = invoke noundef ptr @_ZN5folly5IOBufnwEm(i64 noundef 56)
          to label %bb.o unwind label %bb.p       ; 4 uses

bb.o:                                             ; preds = %.thread
  tail call void @_ZN5folly5IOBufC1EOS0_(ptr noundef nonnull align 8 dereferenceable(56) %i.bq, ptr noundef nonnull align 8 dereferenceable(56) %1) #17, !noalias !115
  %i.br = load ptr, ptr %5, align 8, !tbaa !33    ; 3 uses
  store ptr %i.bq, ptr %5, align 8, !tbaa !33
  %.not.i.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i.i.i.i: ; preds = %bb.o
  tail call void @_ZN5folly5IOBufD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.br) #17
  tail call void @_ZN5folly5IOBufdlEPv(ptr noundef nonnull %i.br) #17
  br label %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit

bb.p:                                             ; preds = %.thread
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.o, %_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i.i.i.i, %bb.n
  %i.bt = phi ptr [ %i.bq, %bb.o ], [ %i.bq, %_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i.i.i.i ], [ %.pr, %bb.n ]
  %i.bu = load ptr, ptr %i.ae, align 8, !tbaa !33 ; 2 uses
  %.not27 = icmp eq ptr %i.bu, null
  br i1 %.not27, label %"_ZN12_GLOBAL__N_18packIntoIPN5folly5IOBufEZNS1_10IOBufQueue6appendEOS2_bbE3$_0EEvS3_RT_T0_.exit.thread25", label %bb.q

"_ZN12_GLOBAL__N_18packIntoIPN5folly5IOBufEZNS1_10IOBufQueue6appendEOS2_bbE3$_0EEvS3_RT_T0_.exit.thread25": ; preds = %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit
  store ptr %i.bt, ptr %i.ae, align 8, !tbaa !33
  br label %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit20

bb.q:                                             ; preds = %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit
  invoke void @_ZN5folly5IOBuf13appendToChainEOSt10unique_ptrIS0_St14default_deleteIS0_EE(ptr noundef nonnull align 8 dereferenceable(56) %i.bu, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %"_ZN12_GLOBAL__N_18packIntoIPN5folly5IOBufEZNS1_10IOBufQueue6appendEOS2_bbE3$_0EEvS3_RT_T0_.exit" unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

"_ZN12_GLOBAL__N_18packIntoIPN5folly5IOBufEZNS1_10IOBufQueue6appendEOS2_bbE3$_0EEvS3_RT_T0_.exit": ; preds = %bb.q
  %.pr24.pre = load ptr, ptr %5, align 8, !tbaa !33 ; 3 uses
  %.not.i18 = icmp eq ptr %.pr24.pre, null
  br i1 %.not.i18, label %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit20, label %_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i19

_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i19: ; preds = %"_ZN12_GLOBAL__N_18packIntoIPN5folly5IOBufEZNS1_10IOBufQueue6appendEOS2_bbE3$_0EEvS3_RT_T0_.exit"
  call void @_ZN5folly5IOBufD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %.pr24.pre) #17
  call void @_ZN5folly5IOBufdlEPv(ptr noundef nonnull %.pr24.pre) #17
  br label %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit20

_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit20: ; preds = %"_ZZN5folly10IOBufQueue6appendEONS_5IOBufEbbENK3$_0clIS1_EEDaPT_.exit.i", %"_ZN12_GLOBAL__N_18packIntoIPN5folly5IOBufEZNS1_10IOBufQueue6appendEOS2_bbE3$_0EEvS3_RT_T0_.exit.thread25", %"_ZN12_GLOBAL__N_18packIntoIPN5folly5IOBufEZNS1_10IOBufQueue6appendEOS2_bbE3$_0EEvS3_RT_T0_.exit", %_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.bw = load i8, ptr %4, align 8, !tbaa !52, !range !41, !noundef !42
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %_ZN5folly6detail14ScopeGuardImplIZNS_10IOBufQueue11updateGuardEbEUlvE_Lb1EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit20
  %i.by = load ptr, ptr %i.x, align 8, !tbaa !82  ; 6 uses
  %i.bz = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i, label %.noexc.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN5folly10IOBufQueue14maybeReuseTailERNS_5IOBufE(ptr noundef nonnull align 8 dereferenceable(72) %i.by, ptr noundef nonnull align 8 dereferenceable(56) %i.bz)
          to label %.noexc.i.i unwind label %bb.x

.noexc.i.i:                                       ; preds = %bb.t, %bb.s
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !33 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i.i.i, label %.thread.i.i.i.i, label %bb.u, !prof !60

bb.u:                                             ; preds = %.noexc.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 40
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !36 ; 5 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 48
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !61 ; 3 uses
  %.not.i4.i.i.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i4.i.i.i.i, label %.thread.i.i.i.i, label %bb.v, !prof !60

bb.v:                                             ; preds = %bb.u
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 28
  %i.ch = load i8, ptr %i.cg, align 4, !tbaa !62, !range !41, !noundef !42
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %.thread.i.i.i.i, label %_ZNK5folly5IOBuf11isSharedOneEv.exit.i.i.i.i, !prof !60

_ZNK5folly5IOBuf11isSharedOneEv.exit.i.i.i.i:     ; preds = %bb.v
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.ck = load atomic i32, ptr %i.cj acquire, align 4
  %i.cl = icmp ugt i32 %i.ck, 1
  br i1 %i.cl, label %.thread.i.i.i.i, label %bb.w, !prof !69

bb.w:                                             ; preds = %_ZNK5folly5IOBuf11isSharedOneEv.exit.i.i.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !48
  %i.co = load i64, ptr %i.cd, align 8, !tbaa !39
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.co ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !34
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !47
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !70
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cu
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = ptrtoint ptr %i.cp to i64
  %i.cy = sub i64 %i.cw, %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !14 ; 2 uses
  store ptr %i.cp, ptr %i.db, align 8, !tbaa !71
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store ptr %i.cz, ptr %i.dc, align 8, !tbaa !72
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_10IOBufQueue11updateGuardEbEUlvE_Lb1EED2Ev.exit

.thread.i.i.i.i:                                  ; preds = %_ZNK5folly5IOBuf11isSharedOneEv.exit.i.i.i.i, %bb.v, %bb.u, %.noexc.i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  store ptr null, ptr %i.dd, align 8, !tbaa !34
  %i.de = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.df, i8 0, i64 16, i1 false)
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_10IOBufQueue11updateGuardEbEUlvE_Lb1EED2Ev.exit

bb.x:                                             ; preds = %bb.t
  %i.dg = landingpad { ptr, i32 }
          catch ptr null
  %i.dh = extractvalue { ptr, i32 } %i.dg, 0
  %i.di = call ptr @__cxa_begin_catch(ptr %i.dh) #17 ; 0 uses
  call void @_ZN5folly6detail18ScopeGuardImplBase9terminateEv() #17, !inline_history !73
  unreachable

_ZN5folly6detail14ScopeGuardImplIZNS_10IOBufQueue11updateGuardEbEUlvE_Lb1EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit20, %bb.w, %.thread.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  ret void

bb.y:                                             ; preds = %bb.r, %bb.p
  %.pn = phi { ptr, i32 } [ %i.bv, %bb.r ], [ %i.bs, %bb.p ]
  call void @_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @_ZN5folly6detail14ScopeGuardImplIZNS_10IOBufQueue11updateGuardEbEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  resume { ptr, i32 } %.pn
}

declare noundef ptr @_ZN5folly5IOBufnwEm(i64 noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZN5folly5IOBufC1EOS0_(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN5folly10IOBufQueue6appendERS0_bb(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.folly::detail::ScopeGuardImpl", align 8 ; 8 uses
  %5 = alloca %"class.folly::detail::ScopeGuardImpl", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !34, !noalias !118 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14, !noalias !118
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !35, !noalias !118 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.g
  br i1 %.not.i.i, label %_ZNK5folly10IOBufQueue10flushCacheEv.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !36, !noalias !118 ; 2 uses
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = sub i64 %i.j, %i.k                       ; 3 uses
  %i.m = load i64, ptr %i.i, align 8, !tbaa !39, !noalias !118
  %i.n = add i64 %i.m, %i.l
  store i64 %i.n, ptr %i.i, align 8, !tbaa !39, !noalias !118
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !31, !noalias !118
  %i.q = add i64 %i.p, %i.l
  store i64 %i.q, ptr %i.o, align 8, !tbaa !31, !noalias !118
  %i.r = getelementptr inbounds i8, ptr %i.d, i64 %i.l
  store ptr %i.r, ptr %i.c, align 8, !tbaa !34, !noalias !118
  br label %_ZNK5folly10IOBufQueue10flushCacheEv.exit.i

_ZNK5folly10IOBufQueue10flushCacheEv.exit.i:      ; preds = %bb.c, %bb.b
  br i1 %3, label %bb.d, label %_ZN5folly10IOBufQueue11updateGuardEb.exit

bb.d:                                             ; preds = %_ZNK5folly10IOBufQueue10flushCacheEv.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !36, !noalias !118
  br label %_ZN5folly10IOBufQueue11updateGuardEb.exit

_ZN5folly10IOBufQueue11updateGuardEb.exit:        ; preds = %_ZNK5folly10IOBufQueue10flushCacheEv.exit.i, %bb.d
  %i.u = phi ptr [ %i.t, %bb.d ], [ null, %_ZNK5folly10IOBufQueue10flushCacheEv.exit.i ]
  store i8 0, ptr %4, align 8, !tbaa !52, !alias.scope !121
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %1, ptr %i.v, align 8, !tbaa !57, !alias.scope !118
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
end_hunk_0
