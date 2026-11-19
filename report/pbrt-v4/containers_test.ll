Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/containers_test?download=true
inline.NumInlined: 1486
inline.NumDeleted: 583
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN24InternCache_BadHash_Test8TestBodyEv:bb.a
          to label %bb.db unwind label %bb.di

bb.db:                                            ; preds = %bb.da
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  %i.lo = load ptr, ptr %15, align 8, !tbaa !51
  %.not.i.i.i100 = icmp eq ptr %i.lo, null
  br i1 %.not.i.i.i100, label %_ZN7testing7MessageD2Ev.exit102, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.lp = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i101 unwind label %bb.df

.noexc.i.i101:                                    ; preds = %bb.dc
  br i1 %i.lp, label %bb.dd, label %_ZN7testing7MessageD2Ev.exit102

bb.dd:                                            ; preds = %.noexc.i.i101
  %i.lq = load ptr, ptr %15, align 8, !tbaa !51   ; 3 uses
  %i.lr = icmp eq ptr %i.lq, null
  br i1 %i.lr, label %_ZN7testing7MessageD2Ev.exit102, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.ls = load ptr, ptr %i.lq, align 8, !tbaa !26
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  %i.lu = load ptr, ptr %i.lt, align 8
  call void %i.lu(ptr noundef nonnull align 8 dereferenceable(128) %i.lq) #24, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit102

bb.df:                                            ; preds = %bb.dc
  %i.lv = landingpad { ptr, i32 }
          catch ptr null
  %i.lw = extractvalue { ptr, i32 } %i.lv, 0
  call void @__clang_call_terminate(ptr %i.lw) #25
  unreachable

_ZN7testing7MessageD2Ev.exit102:                  ; preds = %bb.db, %.noexc.i.i101, %bb.dd, %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  br label %bb.dl

bb.dg:                                            ; preds = %bb.cx
  %i.lx = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

bb.dh:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit99
  %i.ly = landingpad { ptr, i32 }
          cleanup
  br label %bb.dj

bb.di:                                            ; preds = %bb.da
  %i.lz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #24
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %.pn38 = phi { ptr, i32 } [ %i.lz, %bb.di ], [ %i.ly, %bb.dh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #24
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.dg
  %.pn38.pn = phi { ptr, i32 } [ %.pn38, %bb.dj ], [ %i.lx, %bb.dg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %14) #24
  br label %bb.dq

bb.dl:                                            ; preds = %_ZN7testing8internal8EqHelperILb0EE7CompareIimEENS_15AssertionResultEPKcS6_RKT_RKT0_.exit97, %_ZN7testing7MessageD2Ev.exit102
  %i.ma = load ptr, ptr %i.cf, align 8, !tbaa !43
  %.not.i.i.i103 = icmp eq ptr %i.ma, null
  br i1 %.not.i.i.i103, label %_ZN7testing15AssertionResultD2Ev.exit108, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.mb = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i104 unwind label %bb.dp

.noexc.i.i104:                                    ; preds = %bb.dm
  br i1 %i.mb, label %bb.dn, label %_ZN7testing15AssertionResultD2Ev.exit108

bb.dn:                                            ; preds = %.noexc.i.i104
  %i.mc = load ptr, ptr %i.cf, align 8, !tbaa !43 ; 4 uses
  %i.md = icmp eq ptr %i.mc, null
  br i1 %i.md, label %_ZN7testing15AssertionResultD2Ev.exit108, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.me = load ptr, ptr %i.mc, align 8, !tbaa !48 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.mc, i64 16 ; 2 uses
  %i.mg = icmp eq ptr %i.me, %i.mf
  br i1 %i.mg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i106, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i105: ; preds = %bb.do
  %i.mh = load i64, ptr %i.mf, align 8, !tbaa !52
  %i.mi = add i64 %i.mh, 1
  call void @_ZdlPvm(ptr noundef %i.me, i64 noundef %i.mi) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i106

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i106: ; preds = %bb.do, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i105
  call void @_ZdlPvm(ptr noundef nonnull %i.mc, i64 noundef 32) #26
  br label %_ZN7testing15AssertionResultD2Ev.exit108

bb.dp:                                            ; preds = %bb.dm
  %i.mj = landingpad { ptr, i32 }
          catch ptr null
  %i.mk = extractvalue { ptr, i32 } %i.mj, 0
  call void @__clang_call_terminate(ptr %i.mk) #25
  unreachable

_ZN7testing15AssertionResultD2Ev.exit108:         ; preds = %bb.dl, %.noexc.i.i104, %bb.dn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i106
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  %i.ml = add nuw nsw i32 %.0119, 1               ; 2 uses
  %i.mm = load i32, ptr %i.a, align 4, !tbaa !21  ; 2 uses
  %i.mn = icmp slt i32 %i.ml, %i.mm
  br i1 %i.mn, label %bb.bc, label %_ZNSt6vectorIPKiSaIS1_EED2Ev.exit, !llvm.loop !182

bb.dq:                                            ; preds = %bb.dk, %bb.cw
  %.pn38.pn.pn = phi { ptr, i32 } [ %.pn38.pn, %bb.dk ], [ %i.lk, %bb.cw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.cv, %bb.ca, %bb.bf
  %.pn38.pn.pn.pn = phi { ptr, i32 } [ %.pn38.pn.pn, %bb.dq ], [ %.pn34.pn.pn, %bb.cv ], [ %.pn.pn.pn, %bb.ca ], [ %i.ja, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  br label %_ZNSt6vectorIPKiSaIS1_EED2Ev.exit110

_ZNSt6vectorIPKiSaIS1_EED2Ev.exit110:             ; preds = %bb.dr, %bb.ay
  %.pn47.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn47.pn.pn.pn, %bb.ay ], [ %.pn38.pn.pn.pn, %bb.dr ]
  call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef 80000) #26
  br label %bb.ds

bb.ds:                                            ; preds = %_ZNSt6vectorIPKiSaIS1_EED2Ev.exit110, %bb.d
  %.pn47.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn47.pn.pn.pn.pn, %_ZNSt6vectorIPKiSaIS1_EED2Ev.exit110 ], [ %i.cg, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call fastcc void @_ZN4pbrt11InternCacheIiZN24InternCache_BadHash_Test8TestBodyEvE10BadIntHashED2Ev(ptr noundef nonnull align 64 dead_on_return(168) dereferenceable(168) %1) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZN4pbrt11InternCacheIiZN24InternCache_BadHash_Test8TestBodyEvE10BadIntHashE6LookupERKi(ptr noundef nonnull align 64 dereferenceable(168) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.pstd::vector.25", align 8   ; 8 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !21
  %i.b = srem i32 %i.a, 7
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 6 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !130
  %i.g = urem i64 %i.c, %i.f                      ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.i = tail call noundef i32 @pthread_rwlock_rdlock(ptr noundef nonnull align 8 dereferenceable(56) %i.h) #24
  switch i32 %i.i, label %_ZNSt12shared_mutex11lock_sharedEv.exit.preheader.i [
    i32 11, label %bb.b
    i32 35, label %bb.c
  ]

_ZNSt12shared_mutex11lock_sharedEv.exit.preheader.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !131  ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.g
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !133  ; 2 uses
  %.not59.i = icmp eq ptr %i.m, null
  br i1 %.not59.i, label %_ZNSt12shared_mutex11lock_sharedEv.exit._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt12shared_mutex11lock_sharedEv.exit.preheader.i
  %i.n = load i32, ptr %1, align 4, !tbaa !21
  br label %bb.p

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_system_errori(i32 noundef 35) #27
  unreachable

_ZNSt12shared_mutex11lock_sharedEv.exit._crit_edge.i: ; preds = %_ZNSt12shared_mutex11lock_sharedEv.exit.i, %_ZNSt12shared_mutex11lock_sharedEv.exit.preheader.i
  %i.o = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.h) #24 ; 0 uses
  %i.p = tail call noundef i32 @pthread_rwlock_wrlock(ptr noundef nonnull align 8 dereferenceable(56) %i.h) #24
  %i.q = icmp eq i32 %i.p, 35
  br i1 %i.q, label %bb.d, label %_ZNSt12shared_mutex4lockEv.exit.i

bb.d:                                             ; preds = %_ZNSt12shared_mutex11lock_sharedEv.exit._crit_edge.i
  tail call void @_ZSt20__throw_system_errori(i32 noundef 35) #27
  unreachable

_ZNSt12shared_mutex4lockEv.exit.i:                ; preds = %_ZNSt12shared_mutex11lock_sharedEv.exit._crit_edge.i
  %i.r = load i32, ptr %1, align 4, !tbaa !21     ; 2 uses
  %i.s = srem i32 %i.r, 7
  %i.t = sext i32 %i.s to i64
  %i.u = load i64, ptr %i.e, align 8, !tbaa !130  ; 7 uses
  %i.v = load ptr, ptr %i.j, align 8, !tbaa !131  ; 4 uses
  %.03662.i = urem i64 %i.t, %i.u                 ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.03662.i
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !133  ; 2 uses
  %.not4063.i = icmp eq ptr %i.x, null
  br i1 %.not4063.i, label %._crit_edge.i, label %.lr.ph66.i

.lr.ph66.i:                                       ; preds = %_ZNSt12shared_mutex4lockEv.exit.i, %bb.e
  %3 = phi ptr [ %i.ac, %bb.e ], [ %i.x, %_ZNSt12shared_mutex4lockEv.exit.i ] ; 2 uses
  %.03665.i = phi i64 [ %.036.i, %bb.e ], [ %.03662.i, %_ZNSt12shared_mutex4lockEv.exit.i ]
  %.03764.i = phi i32 [ %5, %bb.e ], [ 1, %_ZNSt12shared_mutex4lockEv.exit.i ] ; 2 uses
  %i.y = load i32, ptr %3, align 4, !tbaa !21
  %i.z = icmp eq i32 %i.y, %i.r
  br i1 %i.z, label %_ZN4pbrt11InternCacheIiZN24InternCache_BadHash_Test8TestBodyEvE10BadIntHashE6LookupIZNS3_6LookupERKiEUlN4pstd3pmr21polymorphic_allocatorISt4byteEES6_E_EEPS5_S6_T_.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph66.i
  %4 = zext nneg i32 %.03764.i to i64
  %i.aa = add i64 %.03665.i, %4
  %5 = add nuw nsw i32 %.03764.i, 1
  %.036.i = urem i64 %i.aa, %i.u                  ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.036.i
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !133 ; 2 uses
  %.not40.i = icmp eq ptr %i.ac, null
  br i1 %.not40.i, label %._crit_edge.i, label %.lr.ph66.i, !llvm.loop !183

._crit_edge.i:                                    ; preds = %bb.e, %_ZNSt12shared_mutex4lockEv.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !129 ; 2 uses
  %i.af = shl i64 %i.ae, 2
  %i.ag = icmp ugt i64 %i.af, %i.u
  br i1 %i.ag, label %bb.f, label %bb.o

bb.f:                                             ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.ah = shl i64 %i.u, 1                         ; 7 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.d, align 16, !tbaa !24 ; 6 uses
  %i.ai = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64
  store i64 %i.ai, ptr %2, align 8, !tbaa !24
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %.not.i.not.i.i.i = icmp eq i64 %i.ah, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i8 0, i64 16, i1 false)
  br i1 %.not.i.not.i.i.i, label %_ZN4pstd6vectorIPKiNS_3pmr21polymorphic_allocatorIS2_EEEC2EmRKS5_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = shl i64 %i.u, 4                         ; 3 uses
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i..lr.ph.i.i_crit_edge.i

._crit_edge.i.i.i..lr.ph.i.i_crit_edge.i:         ; preds = %bb.g
  %i.ao = load ptr, ptr %.sroa.0.0.copyload.i.i, align 8, !tbaa !26
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = tail call noundef ptr %i.aq(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.0.copyload.i.i, i64 noundef %i.am, i64 noundef 8), !inline_history !184
  %.pre.pre.i = load ptr, ptr %i.j, align 8, !tbaa !131
  %.pre78.pre.i = load i64, ptr %i.e, align 8, !tbaa !130
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge.i.i.i..lr.ph.i.i_crit_edge.i, %bb.g
  %.pre78.i = phi i64 [ %.pre78.pre.i, %._crit_edge.i.i.i..lr.ph.i.i_crit_edge.i ], [ %i.u, %bb.g ]
  %.pre.i = phi ptr [ %.pre.pre.i, %._crit_edge.i.i.i..lr.ph.i.i_crit_edge.i ], [ %i.v, %bb.g ]
  %.0.i.i.i.i12.i.i.i = phi ptr [ %i.ar, %._crit_edge.i.i.i..lr.ph.i.i_crit_edge.i ], [ null, %bb.g ] ; 3 uses
  store i64 %i.ah, ptr %i.ak, align 8, !tbaa !134
  store ptr %.0.i.i.i.i12.i.i.i, ptr %i.aj, align 8, !tbaa !131
  tail call void @llvm.memset.p0.i64(ptr align 8 %.0.i.i.i.i12.i.i.i, i8 0, i64 %i.am, i1 false), !tbaa !133
  br label %_ZN4pstd6vectorIPKiNS_3pmr21polymorphic_allocatorIS2_EEEC2EmRKS5_.exit.i

_ZN4pstd6vectorIPKiNS_3pmr21polymorphic_allocatorIS2_EEEC2EmRKS5_.exit.i: ; preds = %.lr.ph.i.i.i, %bb.f
  %i.as = phi ptr [ null, %bb.f ], [ %.0.i.i.i.i12.i.i.i, %.lr.ph.i.i.i ] ; 4 uses
  %i.at = phi i64 [ %i.u, %bb.f ], [ %.pre78.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.au = phi ptr [ %i.v, %bb.f ], [ %.pre.i, %.lr.ph.i.i.i ] ; 5 uses
  store i64 %i.ah, ptr %i.al, align 8, !tbaa !130
  %.idx.i = shl nuw nsw i64 %i.at, 3
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %.idx.i
  %.not4167.i = icmp eq i64 %i.at, 0
  br i1 %.not4167.i, label %._crit_edge70.i, label %.lr.ph69.i

._crit_edge70.i:                                  ; preds = %bb.j, %_ZN4pstd6vectorIPKiNS_3pmr21polymorphic_allocatorIS2_EEEC2EmRKS5_.exit.i
  %i.aw = load ptr, ptr %i.d, align 16, !tbaa !135
  %i.ax = icmp eq ptr %i.aw, %.sroa.0.0.copyload.i.i
  br i1 %i.ax, label %bb.k, label %bb.h

bb.h:                                             ; preds = %._crit_edge70.i
  invoke void @_ZN4pbrt8LogFatalIJRA21_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.93, i32 noundef 992, ptr noundef nonnull @.str.94, ptr noundef nonnull align 1 dereferenceable(21) @.str.113) #27
          to label %.noexc.i unwind label %bb.n

.noexc.i:                                         ; preds = %bb.h
  unreachable

.lr.ph69.i:                                       ; preds = %_ZN4pstd6vectorIPKiNS_3pmr21polymorphic_allocatorIS2_EEEC2EmRKS5_.exit.i, %bb.j
  %.03868.i = phi ptr [ %i.bi, %bb.j ], [ %i.au, %_ZN4pstd6vectorIPKiNS_3pmr21polymorphic_allocatorIS2_EEEC2EmRKS5_.exit.i ] ; 2 uses
  %i.ay = load ptr, ptr %.03868.i, align 8, !tbaa !133 ; 3 uses
  %.not42.i = icmp eq ptr %i.ay, null
  br i1 %.not42.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph69.i
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !21
  %i.ba = srem i32 %i.az, 7
  %i.bb = sext i32 %i.ba to i64
  %.0112.i.i = urem i64 %i.bb, %i.ah              ; 3 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %.0112.i.i
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !133
  %.not3.i.i = icmp eq ptr %i.bd, null
  br i1 %.not3.i.i, label %_ZN4pbrt11InternCacheIiZN24InternCache_BadHash_Test8TestBodyEvE10BadIntHashE6InsertEPKiPN4pstd6vectorIS5_NS6_3pmr21polymorphic_allocatorIS5_EEEE.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ 1, %bb.i ] ; 2 uses
  %.0115.i.i = phi i64 [ %.011.i.i, %.lr.ph.i.i ], [ %.0112.i.i, %bb.i ]
  %i.be = add i64 %.0115.i.i, %indvars.iv.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %.011.i.i = urem i64 %i.be, %i.ah               ; 3 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %.011.i.i
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !133
  %.not.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i, label %_ZN4pbrt11InternCacheIiZN24InternCache_BadHash_Test8TestBodyEvE10BadIntHashE6InsertEPKiPN4pstd6vectorIS5_NS6_3pmr21polymorphic_allocatorIS5_EEEE.exit.i, label %.lr.ph.i.i, !llvm.loop !185

_ZN4pbrt11InternCacheIiZN24InternCache_BadHash_Test8TestBodyEvE10BadIntHashE6InsertEPKiPN4pstd6vectorIS5_NS6_3pmr21polymorphic_allocatorIS5_EEEE.exit.i: ; preds = %.lr.ph.i.i, %bb.i
  %.011.lcssa.i.i = phi i64 [ %.0112.i.i, %bb.i ], [ %.011.i.i, %.lr.ph.i.i ]
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %.011.lcssa.i.i
  store ptr %i.ay, ptr %i.bh, align 8, !tbaa !133
  br label %bb.j

bb.j:                                             ; preds = %_ZN4pbrt11InternCacheIiZN24InternCache_BadHash_Test8TestBodyEvE10BadIntHashE6InsertEPKiPN4pstd6vectorIS5_NS6_3pmr21polymorphic_allocatorIS5_EEEE.exit.i, %.lr.ph69.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.03868.i, i64 8 ; 2 uses
  %.not41.i = icmp eq ptr %i.bi, %i.av
  br i1 %.not41.i, label %._crit_edge70.i, label %.lr.ph69.i

bb.k:                                             ; preds = %._crit_edge70.i
  store ptr %i.as, ptr %i.j, align 8, !tbaa !188
  store ptr %i.au, ptr %i.aj, align 8, !tbaa !188
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 32, !tbaa !74 ; 2 uses
  store i64 %i.ah, ptr %i.bj, align 32, !tbaa !74
  store i64 %i.bk, ptr %i.ak, align 8, !tbaa !74
  store i64 %i.ah, ptr %i.e, align 8, !tbaa !74
  store i64 0, ptr %i.al, align 8, !tbaa !130
  %.not.i.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i, label %_ZN4pstd6vectorIPKiNS_3pmr21polymorphic_allocatorIS2_EEED2Ev.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bl = shl i64 %i.bk, 3
  %i.bm = load ptr, ptr %.sroa.0.0.copyload.i.i, align 8, !tbaa !26
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  invoke void %i.bo(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.0.copyload.i.i, ptr noundef nonnull %i.au, i64 noundef %i.bl, i64 noundef 8)
          to label %_ZN4pstd6vectorIPKiNS_3pmr21polymorphic_allocatorIS2_EEED2Ev.exit.i unwind label %bb.m, !inline_history !11

bb.m:                                             ; preds = %bb.l
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  tail call void @__clang_call_terminate(ptr %i.bq) #25
  unreachable

_ZN4pstd6vectorIPKiNS_3pmr21polymorphic_allocatorIS2_EEED2Ev.exit.i: ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %.pre79.i = load i64, ptr %i.ad, align 8, !tbaa !129
  br label %bb.o

bb.n:                                             ; preds = %bb.h
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4pstd6vectorIPKiNS_3pmr21polymorphic_allocatorIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %i.br

bb.o:                                             ; preds = %_ZN4pstd6vectorIPKiNS_3pmr21polymorphic_allocatorIS2_EEED2Ev.exit.i, %._crit_edge.i
  %i.bs = phi i64 [ %.pre79.i, %_ZN4pstd6vectorIPKiNS_3pmr21polymorphic_allocatorIS2_EEED2Ev.exit.i ], [ %i.ae, %._crit_edge.i ]
  %i.bt = add i64 %i.bs, 1
  store i64 %i.bt, ptr %i.ad, align 8, !tbaa !129
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i = load ptr, ptr %i.bu, align 64, !tbaa !24 ; 2 uses
  %i.bv = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !26
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = tail call noundef ptr %i.bx(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.0.copyload.i, i64 noundef 4, i64 noundef 4), !inline_history !186 ; 3 uses
  %i.bz = load i32, ptr %1, align 4, !tbaa !21    ; 2 uses
  store i32 %i.bz, ptr %i.by, align 4, !tbaa !21
  %i.ca = srem i32 %i.bz, 7
  %i.cb = sext i32 %i.ca to i64
  %i.cc = load i64, ptr %i.e, align 8, !tbaa !130 ; 2 uses
  %i.cd = load ptr, ptr %i.j, align 8, !tbaa !131 ; 3 uses
  %.0112.i43.i = urem i64 %i.cb, %i.cc            ; 3 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %.0112.i43.i
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !133
  %.not3.i44.i = icmp eq ptr %i.cf, null
  br i1 %.not3.i44.i, label %_ZN4pbrt11InternCacheIiZN24InternCache_BadHash_Test8TestBodyEvE10BadIntHashE6InsertEPKiPN4pstd6vectorIS5_NS6_3pmr21polymorphic_allocatorIS5_EEEE.exit52.i, label %.lr.ph.i45.i

.lr.ph.i45.i:                                     ; preds = %bb.o, %.lr.ph.i45.i
  %indvars.iv.i46.i = phi i64 [ %indvars.iv.next.i48.i, %.lr.ph.i45.i ], [ 1, %bb.o ] ; 2 uses
  %.0115.i47.i = phi i64 [ %.011.i49.i, %.lr.ph.i45.i ], [ %.0112.i43.i, %bb.o ]
  %i.cg = add i64 %.0115.i47.i, %indvars.iv.i46.i
  %indvars.iv.next.i48.i = add nuw nsw i64 %indvars.iv.i46.i, 1
  %.011.i49.i = urem i64 %i.cg, %i.cc             ; 3 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %.011.i49.i
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !133
  %.not.i50.i = icmp eq ptr %i.ci, null
  br i1 %.not.i50.i, label %_ZN4pbrt11InternCacheIiZN24InternCache_BadHash_Test8TestBodyEvE10BadIntHashE6InsertEPKiPN4pstd6vectorIS5_NS6_3pmr21polymorphic_allocatorIS5_EEEE.exit52.i, label %.lr.ph.i45.i, !llvm.loop !185

_ZN4pbrt11InternCacheIiZN24InternCache_BadHash_Test8TestBodyEvE10BadIntHashE6InsertEPKiPN4pstd6vectorIS5_NS6_3pmr21polymorphic_allocatorIS5_EEEE.exit52.i: ; preds = %.lr.ph.i45.i, %bb.o
  %.011.lcssa.i51.i = phi i64 [ %.0112.i43.i, %bb.o ], [ %.011.i49.i, %.lr.ph.i45.i ]
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %.011.lcssa.i51.i
  store ptr %i.by, ptr %i.cj, align 8, !tbaa !133
  br label %_ZN4pbrt11InternCacheIiZN24InternCache_BadHash_Test8TestBodyEvE10BadIntHashE6LookupIZNS3_6LookupERKiEUlN4pstd3pmr21polymorphic_allocatorISt4byteEES6_E_EEPS5_S6_T_.exit

bb.p:                                             ; preds = %_ZNSt12shared_mutex11lock_sharedEv.exit.i, %.lr.ph.i
  %6 = phi ptr [ %i.m, %.lr.ph.i ], [ %i.cq, %_ZNSt12shared_mutex11lock_sharedEv.exit.i ] ; 2 uses
  %.03461.i = phi i64 [ %i.g, %.lr.ph.i ], [ %i.co, %_ZNSt12shared_mutex11lock_sharedEv.exit.i ]
  %.03560.i = phi i32 [ 1, %.lr.ph.i ], [ %8, %_ZNSt12shared_mutex11lock_sharedEv.exit.i ] ; 2 uses
  %i.ck = load i32, ptr %6, align 4, !tbaa !21
  %i.cl = icmp eq i32 %i.ck, %i.n
  br i1 %i.cl, label %_ZN4pbrt11InternCacheIiZN24InternCache_BadHash_Test8TestBodyEvE10BadIntHashE6LookupIZNS3_6LookupERKiEUlN4pstd3pmr21polymorphic_allocatorISt4byteEES6_E_EEPS5_S6_T_.exit, label %_ZNSt12shared_mutex11lock_sharedEv.exit.i

_ZNSt12shared_mutex11lock_sharedEv.exit.i:        ; preds = %bb.p
  %7 = zext nneg i32 %.03560.i to i64
  %i.cm = add i64 %.03461.i, %7
  %8 = add nuw nsw i32 %.03560.i, 1
  %i.cn = load i64, ptr %i.e, align 8, !tbaa !130
  %i.co = urem i64 %i.cm, %i.cn                   ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.co
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !133 ; 2 uses
  %.not.i = icmp eq ptr %i.cq, null
  br i1 %.not.i, label %_ZNSt12shared_mutex11lock_sharedEv.exit._crit_edge.i, label %bb.p, !llvm.loop !187

_ZN4pbrt11InternCacheIiZN24InternCache_BadHash_Test8TestBodyEvE10BadIntHashE6LookupIZNS3_6LookupERKiEUlN4pstd3pmr21polymorphic_allocatorISt4byteEES6_E_EEPS5_S6_T_.exit: ; preds = %bb.p, %.lr.ph66.i, %_ZN4pbrt11InternCacheIiZN24InternCache_BadHash_Test8TestBodyEvE10BadIntHashE6InsertEPKiPN4pstd6vectorIS5_NS6_3pmr21polymorphic_allocatorIS5_EEEE.exit52.i
  %.1.i = phi ptr [ %3, %.lr.ph66.i ], [ %i.by, %_ZN4pbrt11InternCacheIiZN24InternCache_BadHash_Test8TestBodyEvE10BadIntHashE6InsertEPKiPN4pstd6vectorIS5_NS6_3pmr21polymorphic_allocatorIS5_EEEE.exit52.i ], [ %6, %bb.p ]
  %i.cr = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.h) #24 ; 0 uses
  ret ptr %.1.i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZN4pbrt11InternCacheIiZN24InternCache_BadHash_Test8TestBodyEvE10BadIntHashED2Ev(ptr noundef nonnull align 64 dead_on_return(168) dereferenceable(168) initializes((104, 112)) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 0, ptr %i.a, align 8, !tbaa !130
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !131  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZN4pstd6vectorIPKiNS_3pmr21polymorphic_allocatorIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.f = load i64, ptr %i.e, align 32, !tbaa !134
  %i.g = shl i64 %i.f, 3
  %i.h = load ptr, ptr %i.d, align 16, !tbaa !135 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !26
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  invoke void %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull %i.c, i64 noundef %i.g, i64 noundef 8)
          to label %_ZN4pstd6vectorIPKiNS_3pmr21polymorphic_allocatorIS2_EEED2Ev.exit unwind label %bb.c, !inline_history !11

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #25
  unreachable

_ZN4pstd6vectorIPKiNS_3pmr21polymorphic_allocatorIS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4pstd3pmr25monotonic_buffer_resourceE, i64 16), ptr %0, align 64, !tbaa !26
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !120  ; 2 uses
  %.not5.i.i = icmp eq ptr %i.o, null
  br i1 %.not5.i.i, label %_ZN4pstd3pmr25monotonic_buffer_resourceD2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4pstd6vectorIPKiNS_3pmr21polymorphic_allocatorIS2_EEED2Ev.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.d

bb.d:                                             ; preds = %.noexc.i, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.o, %.lr.ph.i.i ], [ %i.r, %.noexc.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !122  ; 2 uses
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !101  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !123
  %i.v = add i64 %i.u, 24
  %i.w = load ptr, ptr %i.s, align 8, !tbaa !26
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  invoke void %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull %.06.i.i, i64 noundef %i.v, i64 noundef 16)
          to label %.noexc.i unwind label %bb.e, !inline_history !9

.noexc.i:                                         ; preds = %bb.d
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %_ZN4pstd3pmr25monotonic_buffer_resourceD2Ev.exit, label %bb.d, !llvm.loop !10

bb.e:                                             ; preds = %bb.d
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #25
  unreachable

_ZN4pstd3pmr25monotonic_buffer_resourceD2Ev.exit: ; preds = %.noexc.i, %_ZN4pstd6vectorIPKiNS_3pmr21polymorphic_allocatorIS2_EEED2Ev.exit
  store ptr null, ptr %i.n, align 8, !tbaa !120
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.ab, align 8, !tbaa !124
  tail call void @_ZN4pstd3pmr15memory_resourceD2Ev(ptr noundef nonnull align 64 dead_on_return(8) dereferenceable(48) %0) #24
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN19Array2D_Basics_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #26
  ret void
}

declare void @_ZN7testing4Test5SetUpEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #0

declare void @_ZN7testing4Test8TearDownEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing4Test5SetupEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN19Array2D_Bounds_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #26
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN19HashMap_Basics_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #26
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN20HashMap_Randoms_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #26
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN19TypePack_Index_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #26
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN21TypePack_HasType_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #26
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN24TypePack_TakeRemove_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #26
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17TypePack_Map_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #26
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN28InternCache_BasicString_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #26
  ret void
}

; Function Attrs: nounwind
declare void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN24InternCache_BadHash_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #26
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplI19Array2D_Basics_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplI19Array2D_Basics_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #29 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV19Array2D_Basics_Test, i64 16), ptr %i.a, align 8, !tbaa !26
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #26
  resume { ptr, i32 } %i.b
}

declare void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
bb.a:
end_hunk_0
begin_hunk_1_@_ZN7testing13PrintToStringISt23_Rb_tree_const_iteratorIiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_:bb.a
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  invoke void @_ZN7testing9internal220PrintBytesInObjectToEPKhmPSo(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 8, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN7testing8internal21UniversalTersePrinterISt23_Rb_tree_const_iteratorIiEE5PrintERKS3_PSo.exit unwind label %bb.e

_ZN7testing8internal21UniversalTersePrinterISt23_Rb_tree_const_iteratorIiEE5PrintERKS3_PSo.exit: ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !316)
  call void @llvm.experimental.noalias.scope.decl(metadata !317)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !72, !alias.scope !318
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !73, !alias.scope !318
  store i8 0, ptr %i.b, align 8, !tbaa !52, !alias.scope !318
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !139, !noalias !318 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.e, null
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !noalias !318 ; 2 uses
  %i.h = icmp ugt ptr %i.e, %i.g
  %.08.i.i.i = select i1 %i.h, ptr %i.e, ptr %i.g ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZN7testing8internal21UniversalTersePrinterISt23_Rb_tree_const_iteratorIiEE5PrintERKS3_PSo.exit
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !140, !noalias !318 ; 2 uses
  %i.k = ptrtoint ptr %.08.i.i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.j, i64 noundef %i.m)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !48, !alias.scope !318 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.b
  br i1 %i.q, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.r = load i64, ptr %i.b, align 8, !tbaa !52, !alias.scope !318
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #26
  br label %.body

bb.d:                                             ; preds = %_ZN7testing8internal21UniversalTersePrinterISt23_Rb_tree_const_iteratorIiEE5PrintERKS3_PSo.exit
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.u = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.u, ptr %2, align 8, !tbaa !26
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.w = getelementptr i8, ptr %i.u, i64 -24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr %2, i64 %i.x
  store ptr %i.v, ptr %i.y, align 8, !tbaa !26
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.z, ptr %i.a, align 8, !tbaa !26
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aa, align 8, !tbaa !26
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !48 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !52
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #26
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aa, align 8, !tbaa !26
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ah) #24
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.ai, ptr %2, align 8, !tbaa !26
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ak = getelementptr i8, ptr %i.ai, i64 -24
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = getelementptr inbounds i8, ptr %2, i64 %i.al
  store ptr %i.aj, ptr %i.am, align 8, !tbaa !26
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.an, align 8, !tbaa !142
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ao) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void

bb.e:                                             ; preds = %bb.a
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.ap, %bb.e ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.o, %bb.c ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %eh.lpad-body
}

declare void @_ZN7testing9internal220PrintBytesInObjectToEPKhmPSo(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN4pbrt11InternCacheINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_EE6LookupIZNS9_6LookupERKS6_EUlN4pstd3pmr21polymorphic_allocatorISt4byteEESC_E_EEPSB_SC_T_(ptr noundef nonnull align 64 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.pstd::vector.21", align 8   ; 8 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !48
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !73
  %i.e = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %i.b, i64 noundef %i.d, i64 noundef 3339675911)
          to label %_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #25
  unreachable

_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 6 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !111
  %i.k = urem i64 %i.e, %i.j                      ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 6 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit
  %i.m = tail call noundef i32 @pthread_rwlock_rdlock(ptr noundef nonnull align 8 dereferenceable(56) %i.l) #24
  switch i32 %i.m, label %_ZNSt12shared_mutex11lock_sharedEv.exit.preheader [
    i32 11, label %bb.c
    i32 35, label %bb.d
  ]

_ZNSt12shared_mutex11lock_sharedEv.exit.preheader: ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 6 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !112  ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.k
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !113  ; 2 uses
  %.not65 = icmp eq ptr %i.q, null
  br i1 %.not65, label %_ZNSt12shared_mutex11lock_sharedEv.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt12shared_mutex11lock_sharedEv.exit.preheader
  %i.r = load i64, ptr %i.c, align 8, !tbaa !73   ; 3 uses
  %i.s = icmp eq i64 %i.r, 0
  br label %bb.w

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_system_errori(i32 noundef 35) #27
  unreachable

_ZNSt12shared_mutex11lock_sharedEv.exit._crit_edge: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit56.thread60, %_ZNSt12shared_mutex11lock_sharedEv.exit.preheader
  %i.t = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.l) #24 ; 0 uses
  %i.u = tail call noundef i32 @pthread_rwlock_wrlock(ptr noundef nonnull align 8 dereferenceable(56) %i.l) #24
  %i.v = icmp eq i32 %i.u, 35
  br i1 %i.v, label %bb.e, label %_ZNSt12shared_mutex4lockEv.exit

bb.e:                                             ; preds = %_ZNSt12shared_mutex11lock_sharedEv.exit._crit_edge
  tail call void @_ZSt20__throw_system_errori(i32 noundef 35) #27
  unreachable

_ZNSt12shared_mutex4lockEv.exit:                  ; preds = %_ZNSt12shared_mutex11lock_sharedEv.exit._crit_edge
  %i.w = load ptr, ptr %1, align 8, !tbaa !48
  %i.x = load i64, ptr %i.c, align 8, !tbaa !73
  %i.y = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %i.w, i64 noundef %i.x, i64 noundef 3339675911)
          to label %_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit43 unwind label %bb.f

bb.f:                                             ; preds = %_ZNSt12shared_mutex4lockEv.exit
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #25
  unreachable

_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit43: ; preds = %_ZNSt12shared_mutex4lockEv.exit
  %i.ab = load i64, ptr %i.i, align 8, !tbaa !111 ; 7 uses
  %i.ac = load ptr, ptr %i.n, align 8, !tbaa !112 ; 4 uses
  %.03668 = urem i64 %i.y, %i.ab                  ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.03668
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !113 ; 2 uses
  %.not4069 = icmp eq ptr %i.ae, null
  br i1 %.not4069, label %._crit_edge, label %.lr.ph72

.lr.ph72:                                         ; preds = %_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit43
  %i.af = load i64, ptr %i.c, align 8, !tbaa !73  ; 3 uses
  %i.ag = icmp eq i64 %i.af, 0
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph72, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread59
  %3 = phi ptr [ %i.ae, %.lr.ph72 ], [ %i.aq, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread59 ] ; 3 uses
  %.03671 = phi i64 [ %.03668, %.lr.ph72 ], [ %.036, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread59 ]
  %.03770 = phi i32 [ 1, %.lr.ph72 ], [ %5, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread59 ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !73
  %i.aj = icmp eq i64 %i.ai, %i.af
  br i1 %i.aj, label %bb.h, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread59

bb.h:                                             ; preds = %bb.g
  br i1 %i.ag, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.h
  %i.ak = load ptr, ptr %1, align 8, !tbaa !48
  %i.al = load ptr, ptr %3, align 8, !tbaa !48
  %bcmp.i = tail call i32 @bcmp(ptr %i.al, ptr %i.ak, i64 %i.af)
  %i.am = icmp eq i32 %bcmp.i, 0
  br i1 %i.am, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread59

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.h, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.an = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.l) #24 ; 0 uses
  br label %bb.y

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread59: ; preds = %bb.g, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %4 = zext nneg i32 %.03770 to i64
  %i.ao = add i64 %.03671, %4
  %5 = add nuw nsw i32 %.03770, 1
  %.036 = urem i64 %i.ao, %i.ab                   ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.036
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !113 ; 2 uses
  %.not40 = icmp eq ptr %i.aq, null
  br i1 %.not40, label %._crit_edge, label %bb.g, !llvm.loop !319

._crit_edge:                                      ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread59, %_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit43
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !110 ; 2 uses
  %i.at = shl i64 %i.as, 2
  %i.au = icmp ugt i64 %i.at, %i.ab
  br i1 %i.au, label %bb.i, label %bb.s

bb.i:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.av = shl i64 %i.ab, 1                        ; 6 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.h, align 16, !tbaa !24 ; 6 uses
  %i.aw = ptrtoint ptr %.sroa.0.0.copyload.i to i64
  store i64 %i.aw, ptr %2, align 8, !tbaa !24
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %.not.i.not.i.i = icmp eq i64 %i.av, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i8 0, i64 16, i1 false)
  br i1 %.not.i.not.i.i, label %_ZN4pstd6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3pmr21polymorphic_allocatorIS8_EEEC2EmRKSB_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = shl i64 %i.ab, 4                        ; 3 uses
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %.lr.ph.i.i, label %._crit_edge.i.i.i..lr.ph.i.i_crit_edge

._crit_edge.i.i.i..lr.ph.i.i_crit_edge:           ; preds = %bb.j
  %i.bc = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !26
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = tail call noundef ptr %i.be(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.0.copyload.i, i64 noundef %i.ba, i64 noundef 8), !inline_history !320
  %.pre.pre = load ptr, ptr %i.n, align 8, !tbaa !112
  %.pre84.pre = load i64, ptr %i.i, align 8, !tbaa !111
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge.i.i.i..lr.ph.i.i_crit_edge, %bb.j
  %.pre84 = phi i64 [ %.pre84.pre, %._crit_edge.i.i.i..lr.ph.i.i_crit_edge ], [ %i.ab, %bb.j ]
  %.pre = phi ptr [ %.pre.pre, %._crit_edge.i.i.i..lr.ph.i.i_crit_edge ], [ %i.ac, %bb.j ]
  %.0.i.i.i.i12.i.i = phi ptr [ %i.bf, %._crit_edge.i.i.i..lr.ph.i.i_crit_edge ], [ null, %bb.j ] ; 3 uses
  store i64 %i.av, ptr %i.ay, align 8, !tbaa !118
  store ptr %.0.i.i.i.i12.i.i, ptr %i.ax, align 8, !tbaa !112
  tail call void @llvm.memset.p0.i64(ptr align 8 %.0.i.i.i.i12.i.i, i8 0, i64 %i.ba, i1 false), !tbaa !113
  br label %_ZN4pstd6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3pmr21polymorphic_allocatorIS8_EEEC2EmRKSB_.exit

_ZN4pstd6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3pmr21polymorphic_allocatorIS8_EEEC2EmRKSB_.exit: ; preds = %bb.i, %.lr.ph.i.i
  %i.bg = phi ptr [ null, %bb.i ], [ %.0.i.i.i.i12.i.i, %.lr.ph.i.i ] ; 3 uses
  %i.bh = phi i64 [ %i.ab, %bb.i ], [ %.pre84, %.lr.ph.i.i ] ; 2 uses
  %i.bi = phi ptr [ %i.ac, %bb.i ], [ %.pre, %.lr.ph.i.i ] ; 2 uses
  store i64 %i.av, ptr %i.az, align 8, !tbaa !111
  %.idx = shl nuw nsw i64 %i.bh, 3
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.idx
  %.not4173 = icmp eq i64 %i.bh, 0
  br i1 %.not4173, label %._crit_edge76, label %.lr.ph75

._crit_edge76:                                    ; preds = %bb.n, %_ZN4pstd6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3pmr21polymorphic_allocatorIS8_EEEC2EmRKSB_.exit
  %i.bk = load ptr, ptr %i.h, align 16, !tbaa !119
  %i.bl = icmp eq ptr %i.bk, %.sroa.0.0.copyload.i
  br i1 %i.bl, label %bb.o, label %bb.k

bb.k:                                             ; preds = %._crit_edge76
  invoke void @_ZN4pbrt8LogFatalIJRA21_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.93, i32 noundef 992, ptr noundef nonnull @.str.94, ptr noundef nonnull align 1 dereferenceable(21) @.str.113) #27
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.k
  unreachable

.lr.ph75:                                         ; preds = %_ZN4pstd6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3pmr21polymorphic_allocatorIS8_EEEC2EmRKSB_.exit, %bb.n
  %.03874 = phi ptr [ %i.bz, %bb.n ], [ %i.bi, %_ZN4pstd6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3pmr21polymorphic_allocatorIS8_EEEC2EmRKSB_.exit ] ; 2 uses
  %i.bm = load ptr, ptr %.03874, align 8, !tbaa !113 ; 4 uses
  %.not42 = icmp eq ptr %i.bm, null
  br i1 %.not42, label %bb.n, label %bb.l

bb.l:                                             ; preds = %.lr.ph75
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !48
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !73
  %i.bq = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %i.bn, i64 noundef %i.bp, i64 noundef 3339675911)
          to label %_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit.i unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  tail call void @__clang_call_terminate(ptr %i.bs) #25
  unreachable

_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit.i: ; preds = %bb.l
  %.01113.i = urem i64 %i.bq, %i.av               ; 3 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %.01113.i
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !113
  %.not14.i = icmp eq ptr %i.bu, null
  br i1 %.not14.i, label %_ZN4pbrt11InternCacheINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_EE6InsertEPKS6_PN4pstd6vectorISB_NSC_3pmr21polymorphic_allocatorISB_EEEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 1, %_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit.i ] ; 2 uses
  %.01116.i = phi i64 [ %.011.i, %.lr.ph.i ], [ %.01113.i, %_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit.i ]
  %i.bv = add i64 %.01116.i, %indvars.iv.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %.011.i = urem i64 %i.bv, %i.av                 ; 3 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %.011.i
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !113
  %.not.i = icmp eq ptr %i.bx, null
  br i1 %.not.i, label %_ZN4pbrt11InternCacheINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_EE6InsertEPKS6_PN4pstd6vectorISB_NSC_3pmr21polymorphic_allocatorISB_EEEE.exit, label %.lr.ph.i, !llvm.loop !321

_ZN4pbrt11InternCacheINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_EE6InsertEPKS6_PN4pstd6vectorISB_NSC_3pmr21polymorphic_allocatorISB_EEEE.exit: ; preds = %.lr.ph.i, %_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit.i
  %.011.lcssa.i = phi i64 [ %.01113.i, %_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit.i ], [ %.011.i, %.lr.ph.i ]
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %.011.lcssa.i
  store ptr %i.bm, ptr %i.by, align 8, !tbaa !113
  br label %bb.n

bb.n:                                             ; preds = %_ZN4pbrt11InternCacheINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_EE6InsertEPKS6_PN4pstd6vectorISB_NSC_3pmr21polymorphic_allocatorISB_EEEE.exit, %.lr.ph75
  %i.bz = getelementptr inbounds nuw i8, ptr %.03874, i64 8 ; 2 uses
  %.not41 = icmp eq ptr %i.bz, %i.bj
  br i1 %.not41, label %._crit_edge76, label %.lr.ph75

bb.o:                                             ; preds = %._crit_edge76
  %i.ca = load ptr, ptr %i.n, align 8, !tbaa !324 ; 2 uses
  %i.cb = load ptr, ptr %i.ax, align 8, !tbaa !324
  store ptr %i.cb, ptr %i.n, align 8, !tbaa !324
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 32, !tbaa !74
  store i64 %i.av, ptr %i.cc, align 32, !tbaa !74
  %i.ce = load i64, ptr %i.az, align 8, !tbaa !74
  store i64 %i.ce, ptr %i.i, align 8, !tbaa !74
  %.not.i.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i.i, label %_ZN4pstd6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3pmr21polymorphic_allocatorIS8_EEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cf = shl i64 %i.cd, 3
  %i.cg = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !26
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8
  invoke void %i.ci(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.0.copyload.i, ptr noundef nonnull %i.ca, i64 noundef %i.cf, i64 noundef 8)
          to label %_ZN4pstd6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3pmr21polymorphic_allocatorIS8_EEED2Ev.exit unwind label %bb.q, !inline_history !8

bb.q:                                             ; preds = %bb.p
  %i.cj = landingpad { ptr, i32 }
          catch ptr null
  %i.ck = extractvalue { ptr, i32 } %i.cj, 0
  tail call void @__clang_call_terminate(ptr %i.ck) #25
  unreachable

_ZN4pstd6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3pmr21polymorphic_allocatorIS8_EEED2Ev.exit: ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %.pre85 = load i64, ptr %i.ar, align 8, !tbaa !110
  br label %bb.s

bb.r:                                             ; preds = %bb.k
  %i.cl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4pstd6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3pmr21polymorphic_allocatorIS8_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %i.cl

bb.s:                                             ; preds = %_ZN4pstd6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3pmr21polymorphic_allocatorIS8_EEED2Ev.exit, %._crit_edge
  %i.cm = phi i64 [ %.pre85, %_ZN4pstd6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3pmr21polymorphic_allocatorIS8_EEED2Ev.exit ], [ %i.as, %._crit_edge ]
  %i.cn = add i64 %i.cm, 1
  store i64 %i.cn, ptr %i.ar, align 8, !tbaa !110
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload = load ptr, ptr %i.co, align 64, !tbaa !24 ; 2 uses
  %i.cp = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !26
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = tail call noundef ptr %i.cr(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.0.copyload, i64 noundef 32, i64 noundef 8), !inline_history !322 ; 9 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16 ; 3 uses
  store ptr %i.ct, ptr %i.cs, align 8, !tbaa !72
  %i.cu = load ptr, ptr %1, align 8, !tbaa !48    ; 2 uses
  %i.cv = load i64, ptr %i.c, align 8, !tbaa !73  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.cv, ptr %i.a, align 8, !tbaa !74
  %i.cw = icmp ugt i64 %i.cv, 15
  br i1 %i.cw, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.s
  %i.cx = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.cs, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.cx, ptr %i.cs, align 8, !tbaa !48
  %i.cy = load i64, ptr %i.a, align 8, !tbaa !74
  store i64 %i.cy, ptr %i.ct, align 8, !tbaa !52
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc.i.i.i.i, %bb.s
  %i.cz = phi ptr [ %i.cx, %.noexc.i.i.i.i ], [ %i.ct, %bb.s ] ; 2 uses
  switch i64 %i.cv, label %bb.u [
    i64 1, label %bb.t
    i64 0, label %_ZZN4pbrt11InternCacheINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_EE6LookupERKS6_ENKUlN4pstd3pmr21polymorphic_allocatorISt4byteEESB_E_clB5cxx11ESG_SB_.exit
  ]

bb.t:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.da = load i8, ptr %i.cu, align 1, !tbaa !52
  store i8 %i.da, ptr %i.cz, align 1, !tbaa !52
  br label %_ZZN4pbrt11InternCacheINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_EE6LookupERKS6_ENKUlN4pstd3pmr21polymorphic_allocatorISt4byteEESB_E_clB5cxx11ESG_SB_.exit

bb.u:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cz, ptr align 1 %i.cu, i64 %i.cv, i1 false)
  br label %_ZZN4pbrt11InternCacheINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_EE6LookupERKS6_ENKUlN4pstd3pmr21polymorphic_allocatorISt4byteEESB_E_clB5cxx11ESG_SB_.exit

_ZZN4pbrt11InternCacheINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_EE6LookupERKS6_ENKUlN4pstd3pmr21polymorphic_allocatorISt4byteEESB_E_clB5cxx11ESG_SB_.exit: ; preds = %._crit_edge.i.i.i.i.i, %bb.t, %bb.u
  %i.db = load i64, ptr %i.a, align 8, !tbaa !74  ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 2 uses
  store i64 %i.db, ptr %i.dc, align 8, !tbaa !73
  %i.dd = load ptr, ptr %i.cs, align 8, !tbaa !48
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.db
  store i8 0, ptr %i.de, align 1, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.df = load ptr, ptr %i.cs, align 8, !tbaa !48
  %i.dg = load i64, ptr %i.dc, align 8, !tbaa !73
  %i.dh = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %i.df, i64 noundef %i.dg, i64 noundef 3339675911)
          to label %_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit.i44 unwind label %bb.v

bb.v:                                             ; preds = %_ZZN4pbrt11InternCacheINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_EE6LookupERKS6_ENKUlN4pstd3pmr21polymorphic_allocatorISt4byteEESB_E_clB5cxx11ESG_SB_.exit
  %i.di = landingpad { ptr, i32 }
          catch ptr null
  %i.dj = extractvalue { ptr, i32 } %i.di, 0
  call void @__clang_call_terminate(ptr %i.dj) #25
  unreachable

_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit.i44: ; preds = %_ZZN4pbrt11InternCacheINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_EE6LookupERKS6_ENKUlN4pstd3pmr21polymorphic_allocatorISt4byteEESB_E_clB5cxx11ESG_SB_.exit
  %i.dk = load i64, ptr %i.i, align 8, !tbaa !111 ; 2 uses
  %i.dl = load ptr, ptr %i.n, align 8, !tbaa !112 ; 3 uses
  %.01113.i45 = urem i64 %i.dh, %i.dk             ; 3 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %.01113.i45
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !113
  %.not14.i46 = icmp eq ptr %i.dn, null
  br i1 %.not14.i46, label %_ZN4pbrt11InternCacheINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_EE6InsertEPKS6_PN4pstd6vectorISB_NSC_3pmr21polymorphic_allocatorISB_EEEE.exit54, label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit.i44, %.lr.ph.i47
  %indvars.iv.i48 = phi i64 [ %indvars.iv.next.i50, %.lr.ph.i47 ], [ 1, %_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit.i44 ] ; 2 uses
  %.01116.i49 = phi i64 [ %.011.i51, %.lr.ph.i47 ], [ %.01113.i45, %_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit.i44 ]
  %i.do = add i64 %.01116.i49, %indvars.iv.i48
  %indvars.iv.next.i50 = add nuw nsw i64 %indvars.iv.i48, 1
  %.011.i51 = urem i64 %i.do, %i.dk               ; 3 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %.011.i51
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !113
  %.not.i52 = icmp eq ptr %i.dq, null
  br i1 %.not.i52, label %_ZN4pbrt11InternCacheINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_EE6InsertEPKS6_PN4pstd6vectorISB_NSC_3pmr21polymorphic_allocatorISB_EEEE.exit54, label %.lr.ph.i47, !llvm.loop !321

_ZN4pbrt11InternCacheINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_EE6InsertEPKS6_PN4pstd6vectorISB_NSC_3pmr21polymorphic_allocatorISB_EEEE.exit54: ; preds = %.lr.ph.i47, %_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit.i44
  %.011.lcssa.i53 = phi i64 [ %.01113.i45, %_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit.i44 ], [ %.011.i51, %.lr.ph.i47 ]
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %.011.lcssa.i53
  store ptr %i.cs, ptr %i.dr, align 8, !tbaa !113
  %i.ds = call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.l) #24 ; 0 uses
  br label %bb.y

bb.w:                                             ; preds = %.lr.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit56.thread60
  %6 = phi ptr [ %i.q, %.lr.ph ], [ %i.ee, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit56.thread60 ] ; 3 uses
  %.03467 = phi i64 [ %i.k, %.lr.ph ], [ %i.ec, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit56.thread60 ]
  %.03566 = phi i32 [ 1, %.lr.ph ], [ %8, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit56.thread60 ] ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !73
  %i.dv = icmp eq i64 %i.du, %i.r
  br i1 %i.dv, label %bb.x, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit56.thread60

bb.x:                                             ; preds = %bb.w
  br i1 %i.s, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit56.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit56

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit56: ; preds = %bb.x
  %i.dw = load ptr, ptr %1, align 8, !tbaa !48
  %i.dx = load ptr, ptr %6, align 8, !tbaa !48
  %bcmp.i55 = tail call i32 @bcmp(ptr %i.dx, ptr %i.dw, i64 %i.r)
  %i.dy = icmp eq i32 %bcmp.i55, 0
  br i1 %i.dy, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit56.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit56.thread60

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit56.thread: ; preds = %bb.x, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit56
  %i.dz = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.l) #24 ; 0 uses
  br label %bb.y

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit56.thread60: ; preds = %bb.w, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit56
  %7 = zext nneg i32 %.03566 to i64
  %i.ea = add i64 %.03467, %7
  %8 = add nuw nsw i32 %.03566, 1
  %i.eb = load i64, ptr %i.i, align 8, !tbaa !111
  %i.ec = urem i64 %i.ea, %i.eb                   ; 2 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ec
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !113 ; 2 uses
  %.not = icmp eq ptr %i.ee, null
  br i1 %.not, label %_ZNSt12shared_mutex11lock_sharedEv.exit._crit_edge, label %bb.w, !llvm.loop !323

bb.y:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, %_ZN4pbrt11InternCacheINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_EE6InsertEPKS6_PN4pstd6vectorISB_NSC_3pmr21polymorphic_allocatorISB_EEEE.exit54, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit56.thread
  %.1 = phi ptr [ %6, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit56.thread ], [ %3, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread ], [ %i.cs, %_ZN4pbrt11InternCacheINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_EE6InsertEPKS6_PN4pstd6vectorISB_NSC_3pmr21polymorphic_allocatorISB_EEEE.exit54 ]
  ret ptr %.1
}

declare noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #12

; Function Attrs: nounwind
declare i32 @pthread_rwlock_rdlock(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @pthread_rwlock_unlock(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @pthread_rwlock_wrlock(ptr noundef) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZN4pbrt8LogFatalIJRA21_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(21) %4) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.a, ptr %5, align 8, !tbaa !72, !alias.scope !327
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !73, !alias.scope !327
  store i8 0, ptr %i.a, align 8, !tbaa !52, !alias.scope !327
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRA21_KcJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_(ptr noundef nonnull align 8 %5, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(21) %4)
          to label %_ZN4pbrt12StringPrintfIJRA21_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = load ptr, ptr %5, align 8, !tbaa !48, !alias.scope !327 ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !52, !alias.scope !327
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #26
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_ZN4pbrt12StringPrintfIJRA21_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %5, align 8, !tbaa !48
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %i.h) #27
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA21_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  unreachable

bb.d:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA21_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %5, align 8, !tbaa !48     ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.a
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.a, align 8, !tbaa !52
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pbrt6detail21stringPrintfRecursiveIRA21_KcJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(21) %2) local_unnamed_addr #13 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %4 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @_ZN4pbrt6detail18copyToFormatStringEPPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull %i.a, ptr noundef %0)
  %i.b = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 noundef signext 42, i64 noundef 0) #24
  %.not = icmp eq i64 %i.b, -1
  %i.c = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 noundef signext 115, i64 noundef 0) #24
  %.not16 = icmp eq i64 %i.c, -1
  %i.d = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 noundef signext 100, i64 noundef 0) #24
  br i1 %.not, label %bb.c, label %.invoke

bb.b:                                             ; preds = %.invoke, %bb.x
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.c:                                             ; preds = %bb.a
  %.not17 = icmp eq i64 %i.d, -1
  br i1 %.not17, label %bb.d, label %.invoke

bb.d:                                             ; preds = %bb.c
  br i1 %.not16, label %bb.r, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.g = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #24
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull %2, i64 noundef %i.g)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.i = load ptr, ptr %3, align 8, !tbaa !48     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !336)
  call void @llvm.experimental.noalias.scope.decl(metadata !337)
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.j, ptr %6, align 8, !tbaa !72, !alias.scope !338
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !73, !alias.scope !338
  store i8 0, ptr %i.j, align 8, !tbaa !52, !alias.scope !338
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !139, !noalias !338 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !noalias !338 ; 2 uses
  %i.p = icmp ugt ptr %i.m, %i.o
  %.08.i.i.i = select i1 %i.p, ptr %i.m, ptr %i.o ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !140, !noalias !338 ; 2 uses
  %i.s = ptrtoint ptr %.08.i.i.i to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef %i.r, i64 noundef %i.u)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = load ptr, ptr %6, align 8, !tbaa !48, !alias.scope !338 ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.j
  br i1 %i.y, label %.body, label %.body.sink.split

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.h

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.i, %bb.g
  %i.aa = load ptr, ptr %6, align 8, !tbaa !48    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !339)
  %i.ab = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef %i.i, ptr noundef %i.aa) #24, !noalias !339
  %i.ac = add nsw i32 %i.ab, 1
  %i.ad = sext i32 %i.ac to i64                   ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.ae, ptr %5, align 8, !tbaa !72, !alias.scope !339
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 0, ptr %i.af, align 8, !tbaa !73, !alias.scope !339
  store i8 0, ptr %i.ae, align 8, !tbaa !52, !alias.scope !339
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.ad, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i unwind label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ag = load ptr, ptr %5, align 8, !tbaa !48, !alias.scope !339
  %i.ah = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.ag, i64 noundef %i.ad, ptr noundef %i.i, ptr noundef %i.aa) #24 ; 0 uses
  %i.ai = load i64, ptr %i.af, align 8, !tbaa !73, !alias.scope !339
  %i.aj = add i64 %i.ai, -1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.aj, i64 noundef 1)
          to label %_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_.exit unwind label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  call void @__clang_call_terminate(ptr %i.al) #25
  unreachable

bb.k:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = load ptr, ptr %5, align 8, !tbaa !48, !alias.scope !339 ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.ae
  br i1 %i.ao, label %.body26, label %.body26.sink.split

_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i
  %i.ap = load i64, ptr %i.af, align 8, !tbaa !73 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !73
  %i.as = sub i64 4611686018427387903, %i.ar
  %i.at = icmp ult i64 %i.as, %i.ap
end_hunk_1
