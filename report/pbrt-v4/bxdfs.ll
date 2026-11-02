Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/bxdfs?download=true
inline.NumInlined: 4082
inline.NumDeleted: 875
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 81
begin_hunk_0_@_ZN4pbrt17PiecewiseLinear2DILm0EED2Ev:bb.a

bb.h:                                             ; preds = %_ZN4pstd3pmr21polymorphic_allocatorINS_6vectorIfNS1_IfEEEEE7destroyIS4_EEvPT_.exit.i.i, %.lr.ph.i.i
  %i.ar = phi i64 [ %i.ap, %.lr.ph.i.i ], [ %i.bg, %_ZN4pstd3pmr21polymorphic_allocatorINS_6vectorIfNS1_IfEEEEE7destroyIS4_EEvPT_.exit.i.i ]
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %_ZN4pstd3pmr21polymorphic_allocatorINS_6vectorIfNS1_IfEEEEE7destroyIS4_EEvPT_.exit.i.i ] ; 2 uses
  %i.as = load ptr, ptr %i.aq, align 8, !tbaa !156
  %i.at = getelementptr inbounds nuw [32 x i8], ptr %i.as, i64 %indvars.iv.i.i ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store i64 0, ptr %i.au, align 8, !tbaa !154
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !149 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4pstd3pmr21polymorphic_allocatorINS_6vectorIfNS1_IfEEEEE7destroyIS4_EEvPT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !155
  %i.az = shl i64 %i.ay, 2
  %i.ba = load ptr, ptr %i.at, align 8, !tbaa !160 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !118
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8
  invoke void %i.bd(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noundef nonnull %i.aw, i64 noundef %i.az, i64 noundef 4)
          to label %._ZN4pstd3pmr21polymorphic_allocatorINS_6vectorIfNS1_IfEEEEE7destroyIS4_EEvPT_.exit_crit_edge.i.i unwind label %bb.j, !inline_history !3

._ZN4pstd3pmr21polymorphic_allocatorINS_6vectorIfNS1_IfEEEEE7destroyIS4_EEvPT_.exit_crit_edge.i.i: ; preds = %bb.i
  %.pre.i.i = load i64, ptr %i.ao, align 8, !tbaa !162
  br label %_ZN4pstd3pmr21polymorphic_allocatorINS_6vectorIfNS1_IfEEEEE7destroyIS4_EEvPT_.exit.i.i

bb.j:                                             ; preds = %bb.i
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  tail call void @__clang_call_terminate(ptr %i.bf) #34
  unreachable

_ZN4pstd3pmr21polymorphic_allocatorINS_6vectorIfNS1_IfEEEEE7destroyIS4_EEvPT_.exit.i.i: ; preds = %._ZN4pstd3pmr21polymorphic_allocatorINS_6vectorIfNS1_IfEEEEE7destroyIS4_EEvPT_.exit_crit_edge.i.i, %bb.h
  %i.bg = phi i64 [ %.pre.i.i, %._ZN4pstd3pmr21polymorphic_allocatorINS_6vectorIfNS1_IfEEEEE7destroyIS4_EEvPT_.exit_crit_edge.i.i ], [ %i.ar, %bb.h ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.bh = icmp ugt i64 %i.bg, %indvars.iv.next.i.i
  br i1 %i.bh, label %bb.h, label %.loopexit.i, !llvm.loop !4

.loopexit.i:                                      ; preds = %_ZN4pstd3pmr21polymorphic_allocatorINS_6vectorIfNS1_IfEEEEE7destroyIS4_EEvPT_.exit.i.i, %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit4
  store i64 0, ptr %i.ao, align 8, !tbaa !162
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !156 ; 2 uses
  %.not.i.i.i.i5 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i5, label %_ZN4pstd6vectorINS0_IfNS_3pmr21polymorphic_allocatorIfEEEENS2_IS4_EEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %.loopexit.i
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !163
  %i.bm = shl i64 %i.bl, 5
  %i.bn = load ptr, ptr %i.an, align 8, !tbaa !164 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !118
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8
  invoke void %i.bq(ptr noundef nonnull align 8 dereferenceable(8) %i.bn, ptr noundef nonnull %i.bj, i64 noundef %i.bm, i64 noundef 8)
          to label %_ZN4pstd6vectorINS0_IfNS_3pmr21polymorphic_allocatorIfEEEENS2_IS4_EEED2Ev.exit unwind label %bb.l, !inline_history !5

bb.l:                                             ; preds = %bb.k
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  tail call void @__clang_call_terminate(ptr %i.bs) #34
  unreachable

_ZN4pstd6vectorINS0_IfNS_3pmr21polymorphic_allocatorIfEEEENS2_IS4_EEED2Ev.exit: ; preds = %.loopexit.i, %bb.k
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pbrt17PiecewiseLinear2DILm2EEC2EN4pstd3pmr21polymorphic_allocatorISt4byteEEPKfiiNS2_5arrayIiLi2EEENS9_IS8_Li2EEEbb(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i64 %5, ptr noundef byval(%"class.pstd::array.46") align 8 %6, i1 noundef zeroext %7, i1 noundef zeroext %8) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %9 = alloca %"class.pstd::array.45", align 8    ; 2 uses
  %10 = alloca %"class.pstd::vector", align 8     ; 10 uses
  %11 = alloca %"class.pstd::vector", align 8     ; 8 uses
  %12 = alloca %"class.pstd::vector", align 8     ; 8 uses
  %13 = alloca %"class.pstd::vector", align 8     ; 8 uses
  store i64 %5, ptr %9, align 8
  store i32 %3, ptr %0, align 8, !tbaa !157
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  store i32 %4, ptr %i.b, align 4, !tbaa !158
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = insertelement <2 x i32> poison, i32 %3, i64 0
  %i.e = insertelement <2 x i32> %i.d, i32 %4, i64 1
  %i.f = add nsw <2 x i32> %i.e, splat (i32 -1)
  %i.g = sitofp <2 x i32> %i.f to <2 x float>     ; 2 uses
  %i.h = fdiv <2 x float> splat (float 1.000000e+00), %i.g
  store <2 x float> %i.h, ptr %i.c, align 8, !tbaa !20
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store <2 x float> %i.g, ptr %i.i, align 8, !tbaa !20
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.k = ptrtoint ptr %1 to i64                   ; 6 uses
  store i64 %i.k, ptr %i.j, align 8, !tbaa !159
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  store i64 %i.k, ptr %i.m, align 8, !tbaa !159
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  store i64 %i.k, ptr %i.o, align 8, !tbaa !159
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i8 0, i64 24, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  store i64 %i.k, ptr %i.q, align 8, !tbaa !159
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  %.not = xor i1 %8, true
  %or.cond = or i1 %7, %.not
  br i1 %or.cond, label %bb.b, label %.invoke

.invoke:                                          ; preds = %bb.e, %bb.a
  %i.s = phi i32 [ 1348, %bb.a ], [ 1356, %bb.e ]
  %i.t = phi ptr [ @.str.115, %bb.a ], [ @.str.116, %bb.e ]
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef 2, ptr noundef nonnull @.str.114, i32 noundef %i.s, ptr noundef nonnull %i.t) #32
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  invoke void @_ZN4pstd6vectorINS0_IfNS_3pmr21polymorphic_allocatorIfEEEENS2_IS4_EEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 noundef 4)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre = load ptr, ptr %i.l, align 8, !tbaa !156
  %.pre.i = load i64, ptr %i.u, align 8, !tbaa !162
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %.pre, i64 %.pre.i ; 2 uses
  store i64 %i.k, ptr %i.w, align 8, !tbaa !159
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i8 0, i64 24, i1 false)
  %i.y = load i64, ptr %i.u, align 8, !tbaa !162
  %i.z = add i64 %i.y, 1                          ; 5 uses
  store i64 %i.z, ptr %i.u, align 8, !tbaa !162
  %i.aa = load i64, ptr %i.v, align 8, !tbaa !163
  %i.ab = icmp eq i64 %i.aa, %i.z
  br i1 %i.ab, label %bb.c, label %.preheader374

bb.c:                                             ; preds = %.noexc
  %i.ac = icmp eq i64 %i.z, 0
  %i.ad = shl i64 %i.z, 1
  %spec.select.i.1 = select i1 %i.ac, i64 4, i64 %i.ad
  invoke void @_ZN4pstd6vectorINS0_IfNS_3pmr21polymorphic_allocatorIfEEEENS2_IS4_EEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 noundef %spec.select.i.1)
          to label %.noexc.1 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc.1:                                         ; preds = %bb.c
  %.pre.i.1 = load i64, ptr %i.u, align 8, !tbaa !162
  br label %.preheader374

.preheader374:                                    ; preds = %.noexc.1, %.noexc
  %i.ae = phi i64 [ %.pre.i.1, %.noexc.1 ], [ %i.z, %.noexc ]
  %i.af = load ptr, ptr %i.l, align 8, !tbaa !156
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %i.af, i64 %i.ae ; 2 uses
  store i64 %i.k, ptr %i.ag, align 8, !tbaa !159
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false)
  %i.ai = load i64, ptr %i.u, align 8, !tbaa !162
  %i.aj = add i64 %i.ai, 1
  store i64 %i.aj, ptr %i.u, align 8, !tbaa !162
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.e

bb.d:                                             ; preds = %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit
  %i.ap = mul i32 %4, %3                          ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  %i.aq = mul i32 %i.hk, %i.ap                    ; 8 uses
  %i.ar = zext i32 %i.aq to i64                   ; 36 uses
  %i.as = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #31 ; 6 uses
  %i.at = ptrtoint ptr %i.as to i64
  store i64 %i.at, ptr %11, align 8, !tbaa !159
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  %.not.i.not.i.i = icmp eq i32 %i.aq, 0          ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, i8 0, i64 16, i1 false)
  br i1 %.not.i.not.i.i, label %bb.o, label %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i.i

_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i.i: ; preds = %bb.d
  %i.ax = shl nuw nsw i64 %i.ar, 2                ; 2 uses
  %i.ay = load ptr, ptr %i.as, align 8, !tbaa !118
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = invoke noundef ptr %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %i.as, i64 noundef %i.ax, i64 noundef 4)
          to label %.lr.ph.i.i unwind label %bb.af, !inline_history !2 ; 3 uses

.lr.ph.i.i:                                       ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i.i
  store i64 %i.ar, ptr %i.av, align 8, !tbaa !155
  store ptr %i.bb, ptr %i.au, align 8, !tbaa !149
  call void @llvm.memset.p0.i64(ptr align 4 %i.bb, i8 0, i64 %i.ax, i1 false), !tbaa !20
  br label %bb.o

bb.e:                                             ; preds = %.preheader374, %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit
  %.0146386 = phi i32 [ 1, %.preheader374 ], [ %i.hk, %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit ] ; 2 uses
  %.0153385 = phi i32 [ 1, %.preheader374 ], [ %15, %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit ] ; 3 uses
  %14 = zext nneg i32 %.0153385 to i64            ; 6 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %14 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !97 ; 3 uses
  %i.be = icmp slt i32 %i.bd, 1
  br i1 %i.be, label %.invoke, label %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i.i192

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.invoke, %bb.b, %bb.c
  %lpad.loopexit.split-lp446 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i.i192: ; preds = %bb.e
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %14 ; 2 uses
  store i32 %i.bd, ptr %i.bf, align 4, !tbaa !97
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  %i.bg = zext nneg i32 %i.bd to i64              ; 4 uses
  %i.bh = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #31 ; 4 uses
  %i.bi = ptrtoint ptr %i.bh to i64
  store i64 %i.bi, ptr %10, align 8, !tbaa !159
  %i.bj = shl nuw nsw i64 %i.bg, 2                ; 2 uses
  %i.bk = load ptr, ptr %i.bh, align 8, !tbaa !118
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = invoke noundef ptr %i.bm(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, i64 noundef %i.bj, i64 noundef 4)
          to label %._crit_edge.i.i.i203._crit_edge unwind label %bb.l, !inline_history !2 ; 4 uses

._crit_edge.i.i.i203._crit_edge:                  ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i.i192
  %.pre476 = load ptr, ptr %i.l, align 8, !tbaa !156
  store i64 %i.bg, ptr %i.am, align 8, !tbaa !155
  store ptr %i.bn, ptr %i.al, align 8, !tbaa !149
  call void @llvm.memset.p0.i64(ptr align 4 %i.bn, i8 0, i64 %i.bj, i1 false), !tbaa !20
  store i64 %i.bg, ptr %i.an, align 8, !tbaa !154
  %i.bo = getelementptr inbounds nuw [32 x i8], ptr %.pre476, i64 %14 ; 11 uses
  %i.bp = icmp eq ptr %i.bo, %10
  br i1 %i.bp, label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEaSEOS4_.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i.i203._crit_edge
  %i.bq = load ptr, ptr %i.bo, align 8, !tbaa !160 ; 3 uses
  %i.br = icmp eq ptr %i.bq, %i.bh
  br i1 %i.br, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !148
  store ptr %i.bn, ptr %i.bs, align 8, !tbaa !148
  store ptr %i.bt, ptr %i.al, align 8, !tbaa !148
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 16 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !71
  store i64 %i.bg, ptr %i.bu, align 8, !tbaa !71
  store i64 %i.bv, ptr %i.am, align 8, !tbaa !71
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bx = load i64, ptr %i.an, align 8, !tbaa !71
  store i64 %i.bx, ptr %i.bw, align 8, !tbaa !71
  br label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEaSEOS4_.exitthread-pre-split

bb.h:                                             ; preds = %bb.f
  %i.by = getelementptr inbounds nuw i8, ptr %i.bo, i64 24 ; 3 uses
  store i64 0, ptr %i.by, align 8, !tbaa !154
  %i.bz = load i64, ptr %i.an, align 8, !tbaa !154 ; 5 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bo, i64 16 ; 3 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !155
  %.not.i.i = icmp ult i64 %i.cb, %i.bz
  br i1 %.not.i.i, label %bb.i, label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i

bb.i:                                             ; preds = %bb.h
  %i.cc = shl i64 %i.bz, 2                        ; 2 uses
  %i.cd = icmp eq i64 %i.cc, 0
  br i1 %i.cd, label %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.thread.i, label %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i

_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.thread.i: ; preds = %bb.i
  %.phi.trans.insert.i27.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 2 uses
  %.pre.i28.i = load ptr, ptr %.phi.trans.insert.i27.i, align 8, !tbaa !149
  br label %._crit_edge.i.i

_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i: ; preds = %bb.i
  %i.ce = load ptr, ptr %i.bq, align 8, !tbaa !118
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = invoke noundef ptr %i.cg(ptr noundef nonnull align 8 dereferenceable(8) %i.bq, i64 noundef %i.cc, i64 noundef 4)
          to label %.noexc210 unwind label %bb.m, !inline_history !161 ; 17 uses

.noexc210:                                        ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i
  %.pre.i208 = load i64, ptr %i.by, align 8, !tbaa !154 ; 11 uses
  %.not13.i.i = icmp eq i64 %.pre.i208, 0
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 6 uses
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !149 ; 17 uses
  br i1 %.not13.i.i, label %._crit_edge.i.i, label %iter.check541

iter.check541:                                    ; preds = %.noexc210
  %.pre.i.i524 = ptrtoaddr ptr %.pre.i.i to i64
  %i.ci = ptrtoaddr ptr %i.ch to i64
  %min.iters.check525 = icmp ult i64 %.pre.i208, 4
  %i.cj = sub i64 %.pre.i.i524, %i.ci
  %diff.check527 = icmp ugt i64 %i.cj, -128
  %or.cond910 = select i1 %min.iters.check525, i1 true, i1 %diff.check527
  br i1 %or.cond910, label %.lr.ph.i.i209.preheader, label %vector.main.loop.iter.check528

vector.main.loop.iter.check528:                   ; preds = %iter.check541
  %min.iters.check529 = icmp ult i64 %.pre.i208, 32
  br i1 %min.iters.check529, label %vec.epilog.ph545, label %vector.ph530

vector.ph530:                                     ; preds = %vector.main.loop.iter.check528
  %i.ck = and i64 %.pre.i208, 28
  %n.vec531 = and i64 %.pre.i208, -32             ; 4 uses
  br label %vector.body532

vector.body532:                                   ; preds = %vector.ph530, %vector.body532
  %index533 = phi i64 [ 0, %vector.ph530 ], [ %index.next538, %vector.body532 ] ; 3 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %index533 ; 4 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %index533 ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 64
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 96
  %wide.load534 = load <8 x float>, ptr %i.cm, align 4, !tbaa !20
  %wide.load535 = load <8 x float>, ptr %i.cn, align 4, !tbaa !20
  %wide.load536 = load <8 x float>, ptr %i.co, align 4, !tbaa !20
  %wide.load537 = load <8 x float>, ptr %i.cp, align 4, !tbaa !20
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cl, i64 64
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cl, i64 96
  store <8 x float> %wide.load534, ptr %i.cl, align 4, !tbaa !20
  store <8 x float> %wide.load535, ptr %i.cq, align 4, !tbaa !20
  store <8 x float> %wide.load536, ptr %i.cr, align 4, !tbaa !20
  store <8 x float> %wide.load537, ptr %i.cs, align 4, !tbaa !20
  %index.next538 = add nuw i64 %index533, 32      ; 2 uses
  %i.ct = icmp eq i64 %index.next538, %n.vec531
  br i1 %i.ct, label %middle.block539, label %vector.body532, !llvm.loop !422

middle.block539:                                  ; preds = %vector.body532
  %cmp.n540 = icmp eq i64 %.pre.i208, %n.vec531
  br i1 %cmp.n540, label %._crit_edge.thread.i.i, label %vec.epilog.iter.check542

vec.epilog.iter.check542:                         ; preds = %middle.block539
  %min.epilog.iters.check544 = icmp eq i64 %i.ck, 0
  br i1 %min.epilog.iters.check544, label %.lr.ph.i.i209.preheader, label %vec.epilog.ph545, !prof !152

vec.epilog.ph545:                                 ; preds = %vector.main.loop.iter.check528, %vec.epilog.iter.check542
  %vec.epilog.resume.val546 = phi i64 [ %n.vec531, %vec.epilog.iter.check542 ], [ 0, %vector.main.loop.iter.check528 ]
  %n.vec547 = and i64 %.pre.i208, -4              ; 3 uses
  br label %vec.epilog.vector.body548

vec.epilog.vector.body548:                        ; preds = %vec.epilog.vector.body548, %vec.epilog.ph545
  %index549 = phi i64 [ %vec.epilog.resume.val546, %vec.epilog.ph545 ], [ %index.next551, %vec.epilog.vector.body548 ] ; 3 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %index549
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %index549
  %wide.load550 = load <4 x float>, ptr %i.cv, align 4, !tbaa !20
  store <4 x float> %wide.load550, ptr %i.cu, align 4, !tbaa !20
  %index.next551 = add nuw i64 %index549, 4       ; 2 uses
  %i.cw = icmp eq i64 %index.next551, %n.vec547
  br i1 %i.cw, label %vec.epilog.middle.block552, label %vec.epilog.vector.body548, !llvm.loop !423

vec.epilog.middle.block552:                       ; preds = %vec.epilog.vector.body548
  %cmp.n553 = icmp eq i64 %.pre.i208, %n.vec547
  br i1 %cmp.n553, label %._crit_edge.thread.i.i, label %.lr.ph.i.i209.preheader

.lr.ph.i.i209.preheader:                          ; preds = %iter.check541, %vec.epilog.iter.check542, %vec.epilog.middle.block552
  %indvars.iv.i.i.ph = phi i64 [ 0, %iter.check541 ], [ %n.vec531, %vec.epilog.iter.check542 ], [ %n.vec547, %vec.epilog.middle.block552 ] ; 4 uses
  %i.cx = sub i64 %.pre.i208, %indvars.iv.i.i.ph
  %xtraiter = and i64 %i.cx, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i209.prol.loopexit, label %.lr.ph.i.i209.prol

.lr.ph.i.i209.prol:                               ; preds = %.lr.ph.i.i209.preheader, %.lr.ph.i.i209.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i209.prol ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i209.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i209.prol ], [ 0, %.lr.ph.i.i209.preheader ]
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv.i.i.prol
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.i.i.prol
  %i.da = load float, ptr %i.cz, align 4, !tbaa !20
  store float %i.da, ptr %i.cy, align 4, !tbaa !20
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i209.prol.loopexit, label %.lr.ph.i.i209.prol, !llvm.loop !424

.lr.ph.i.i209.prol.loopexit:                      ; preds = %.lr.ph.i.i209.prol, %.lr.ph.i.i209.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %.lr.ph.i.i209.preheader ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i209.prol ]
  %i.db = sub i64 %indvars.iv.i.i.ph, %.pre.i208
  %i.dc = icmp ugt i64 %i.db, -8
  br i1 %i.dc, label %._crit_edge.thread.i.i, label %.lr.ph.i.i209

._crit_edge.i.i:                                  ; preds = %.noexc210, %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.thread.i
  %.pre.i36.i = phi ptr [ %.pre.i28.i, %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.thread.i ], [ %.pre.i.i, %.noexc210 ] ; 2 uses
  %.phi.trans.insert.i34.i = phi ptr [ %.phi.trans.insert.i27.i, %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.thread.i ], [ %.phi.trans.insert.i.i, %.noexc210 ] ; 2 uses
  %.0.i.i.i.i31.i = phi ptr [ null, %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.thread.i ], [ %i.ch, %.noexc210 ] ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.pre.i36.i, null
  br i1 %.not.i.i.i.i.i, label %_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i, label %._crit_edge.thread.i.i

._crit_edge.thread.i.i:                           ; preds = %.lr.ph.i.i209.prol.loopexit, %.lr.ph.i.i209, %middle.block539, %vec.epilog.middle.block552, %._crit_edge.i.i
  %.pre.i35.i = phi ptr [ %.pre.i36.i, %._crit_edge.i.i ], [ %.pre.i.i, %middle.block539 ], [ %.pre.i.i, %vec.epilog.middle.block552 ], [ %.pre.i.i, %.lr.ph.i.i209 ], [ %.pre.i.i, %.lr.ph.i.i209.prol.loopexit ]
  %.phi.trans.insert.i32.i = phi ptr [ %.phi.trans.insert.i34.i, %._crit_edge.i.i ], [ %.phi.trans.insert.i.i, %middle.block539 ], [ %.phi.trans.insert.i.i, %vec.epilog.middle.block552 ], [ %.phi.trans.insert.i.i, %.lr.ph.i.i209 ], [ %.phi.trans.insert.i.i, %.lr.ph.i.i209.prol.loopexit ]
  %.0.i.i.i.i29.i = phi ptr [ %.0.i.i.i.i31.i, %._crit_edge.i.i ], [ %i.ch, %middle.block539 ], [ %i.ch, %vec.epilog.middle.block552 ], [ %i.ch, %.lr.ph.i.i209 ], [ %i.ch, %.lr.ph.i.i209.prol.loopexit ]
  %i.dd = load i64, ptr %i.ca, align 8, !tbaa !155
  %i.de = shl i64 %i.dd, 2
  %i.df = load ptr, ptr %i.bo, align 8, !tbaa !160 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !118
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.di = load ptr, ptr %i.dh, align 8
  invoke void %i.di(ptr noundef nonnull align 8 dereferenceable(8) %i.df, ptr noundef nonnull %.pre.i35.i, i64 noundef %i.de, i64 noundef 4)
          to label %._crit_edge.thread.i.i._ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i_crit_edge unwind label %bb.m, !inline_history !161

._crit_edge.thread.i.i._ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i_crit_edge: ; preds = %._crit_edge.thread.i.i
  %.pre18.i.pre = load i64, ptr %i.an, align 8, !tbaa !154
  br label %_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i

_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i: ; preds = %._crit_edge.thread.i.i._ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i_crit_edge, %._crit_edge.i.i
  %.pre18.i = phi i64 [ %i.bz, %._crit_edge.i.i ], [ %.pre18.i.pre, %._crit_edge.thread.i.i._ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i_crit_edge ]
  %.phi.trans.insert.i33.i = phi ptr [ %.phi.trans.insert.i34.i, %._crit_edge.i.i ], [ %.phi.trans.insert.i32.i, %._crit_edge.thread.i.i._ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i_crit_edge ]
  %.0.i.i.i.i30.i = phi ptr [ %.0.i.i.i.i31.i, %._crit_edge.i.i ], [ %.0.i.i.i.i29.i, %._crit_edge.thread.i.i._ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i_crit_edge ]
  store i64 %i.bz, ptr %i.ca, align 8, !tbaa !155
  store ptr %.0.i.i.i.i30.i, ptr %.phi.trans.insert.i33.i, align 8, !tbaa !149
  br label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i

.lr.ph.i.i209:                                    ; preds = %.lr.ph.i.i209.prol.loopexit, %.lr.ph.i.i209
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.7, %.lr.ph.i.i209 ], [ %indvars.iv.i.i.unr, %.lr.ph.i.i209.prol.loopexit ] ; 10 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv.i.i
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.i.i
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !20
  store float %i.dl, ptr %i.dj, align 4, !tbaa !20
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv.next.i.i
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i
  %i.do = load float, ptr %i.dn, align 4, !tbaa !20
  store float %i.do, ptr %i.dm, align 4, !tbaa !20
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv.next.i.i.1
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.1
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !20
  store float %i.dr, ptr %i.dp, align 4, !tbaa !20
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv.next.i.i.2
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.2
  %i.du = load float, ptr %i.dt, align 4, !tbaa !20
  store float %i.du, ptr %i.ds, align 4, !tbaa !20
end_hunk_0
begin_hunk_1_@_ZN4pbrt17PiecewiseLinear2DILm2EEC2EN4pstd3pmr21polymorphic_allocatorISt4byteEEPKfiiNS2_5arrayIiLi2EEENS9_IS8_Li2EEEbb:bb.a
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.3
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !20
  store float %i.dx, ptr %i.dv, align 4, !tbaa !20
  %indvars.iv.next.i.i.4 = add nuw nsw i64 %indvars.iv.i.i, 5 ; 2 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv.next.i.i.4
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.4
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !20
  store float %i.ea, ptr %i.dy, align 4, !tbaa !20
  %indvars.iv.next.i.i.5 = add nuw nsw i64 %indvars.iv.i.i, 6 ; 2 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv.next.i.i.5
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.5
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !20
  store float %i.ed, ptr %i.eb, align 4, !tbaa !20
  %indvars.iv.next.i.i.6 = add nuw nsw i64 %indvars.iv.i.i, 7 ; 2 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv.next.i.i.6
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.6
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !20
  store float %i.eg, ptr %i.ee, align 4, !tbaa !20
  %indvars.iv.next.i.i.7 = add nuw nsw i64 %indvars.iv.i.i, 8 ; 2 uses
  %exitcond.not.i.i.7 = icmp eq i64 %indvars.iv.next.i.i.7, %.pre.i208
  br i1 %exitcond.not.i.i.7, label %._crit_edge.thread.i.i, label %.lr.ph.i.i209, !llvm.loop !425

_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i: ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i, %bb.h
  %i.eh = phi i64 [ %i.bz, %bb.h ], [ %.pre18.i, %_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i ] ; 12 uses
  %.not.i = icmp eq i64 %i.eh, 0
  br i1 %.not.i, label %._crit_edge.i, label %iter.check

iter.check:                                       ; preds = %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i
  %i.ei = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !149 ; 12 uses
  %i.ek = load ptr, ptr %i.al, align 8, !tbaa !149 ; 12 uses
  %min.iters.check = icmp ult i64 %i.eh, 4
  %i.el = ptrtoaddr ptr %i.ek to i64
  %i.em = ptrtoaddr ptr %i.ej to i64
  %i.en = sub i64 %i.el, %i.em
  %diff.check = icmp ugt i64 %i.en, -128
  %or.cond913 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond913, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check512 = icmp ult i64 %i.eh, 32
  br i1 %min.iters.check512, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.eo = and i64 %i.eh, 28
  %n.vec = and i64 %i.eh, -32                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %index ; 4 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %index ; 4 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 32
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 64
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 96
  %wide.load = load <8 x float>, ptr %i.eq, align 4, !tbaa !20
  %wide.load513 = load <8 x float>, ptr %i.er, align 4, !tbaa !20
  %wide.load514 = load <8 x float>, ptr %i.es, align 4, !tbaa !20
  %wide.load515 = load <8 x float>, ptr %i.et, align 4, !tbaa !20
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ep, i64 32
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ep, i64 64
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ep, i64 96
  store <8 x float> %wide.load, ptr %i.ep, align 4, !tbaa !20
  store <8 x float> %wide.load513, ptr %i.eu, align 4, !tbaa !20
  store <8 x float> %wide.load514, ptr %i.ev, align 4, !tbaa !20
  store <8 x float> %wide.load515, ptr %i.ew, align 4, !tbaa !20
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ex = icmp eq i64 %index.next, %n.vec
  br i1 %i.ex, label %middle.block, label %vector.body, !llvm.loop !426

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.eh, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.eo, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !152

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec516 = and i64 %i.eh, -4                   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index517 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next519, %vec.epilog.vector.body ] ; 3 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %index517
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %index517
  %wide.load518 = load <4 x float>, ptr %i.ez, align 4, !tbaa !20
  store <4 x float> %wide.load518, ptr %i.ey, align 4, !tbaa !20
  %index.next519 = add nuw i64 %index517, 4       ; 2 uses
  %i.fa = icmp eq i64 %index.next519, %n.vec516
  br i1 %i.fa, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !427

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n520 = icmp eq i64 %i.eh, %n.vec516
  br i1 %cmp.n520, label %._crit_edge.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.017.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec516, %vec.epilog.middle.block ] ; 4 uses
  %i.fb = sub i64 %i.eh, %.017.i.ph
  %xtraiter933 = and i64 %i.fb, 7                 ; 2 uses
  %lcmp.mod934.not = icmp eq i64 %xtraiter933, 0
  br i1 %lcmp.mod934.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.017.i.prol = phi i64 [ %i.ff, %vec.epilog.scalar.ph.prol ], [ %.017.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter935 = phi i64 [ %prol.iter935.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %.017.i.prol
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %.017.i.prol
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !20
  store float %i.fe, ptr %i.fc, align 4, !tbaa !20
  %i.ff = add nuw i64 %.017.i.prol, 1             ; 2 uses
  %prol.iter935.next = add i64 %prol.iter935, 1   ; 2 uses
  %prol.iter935.cmp.not = icmp eq i64 %prol.iter935.next, %xtraiter933
  br i1 %prol.iter935.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !428

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.017.i.unr = phi i64 [ %.017.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ff, %vec.epilog.scalar.ph.prol ]
  %i.fg = sub i64 %.017.i.ph, %i.eh
  %i.fh = icmp ugt i64 %i.fg, -8
  br i1 %i.fh, label %._crit_edge.i, label %vec.epilog.scalar.ph

._crit_edge.i:                                    ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i
  store i64 %i.eh, ptr %i.by, align 8, !tbaa !154
  br label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEaSEOS4_.exitthread-pre-split

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.017.i = phi i64 [ %i.gn, %vec.epilog.scalar.ph ], [ %.017.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 10 uses
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %.017.i
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %.017.i
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !20
  store float %i.fk, ptr %i.fi, align 4, !tbaa !20
  %i.fl = add nuw i64 %.017.i, 1                  ; 2 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.fl
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %i.fl
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !20
  store float %i.fo, ptr %i.fm, align 4, !tbaa !20
  %i.fp = add nuw i64 %.017.i, 2                  ; 2 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.fp
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %i.fp
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !20
  store float %i.fs, ptr %i.fq, align 4, !tbaa !20
  %i.ft = add nuw i64 %.017.i, 3                  ; 2 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.ft
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %i.ft
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !20
  store float %i.fw, ptr %i.fu, align 4, !tbaa !20
  %i.fx = add nuw i64 %.017.i, 4                  ; 2 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.fx
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %i.fx
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !20
  store float %i.ga, ptr %i.fy, align 4, !tbaa !20
  %i.gb = add nuw i64 %.017.i, 5                  ; 2 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.gb
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %i.gb
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !20
  store float %i.ge, ptr %i.gc, align 4, !tbaa !20
  %i.gf = add nuw i64 %.017.i, 6                  ; 2 uses
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.gf
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %i.gf
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !20
  store float %i.gi, ptr %i.gg, align 4, !tbaa !20
  %i.gj = add nuw i64 %.017.i, 7                  ; 2 uses
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.gj
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %i.gj
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !20
  store float %i.gm, ptr %i.gk, align 4, !tbaa !20
  %i.gn = add nuw i64 %.017.i, 8                  ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %i.gn, %i.eh
  br i1 %exitcond.not.i.7, label %._crit_edge.i, label %vec.epilog.scalar.ph, !llvm.loop !429

_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEaSEOS4_.exitthread-pre-split: ; preds = %bb.g, %._crit_edge.i
  %.pr = load ptr, ptr %i.al, align 8, !tbaa !149
  br label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEaSEOS4_.exit

_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEaSEOS4_.exit: ; preds = %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEaSEOS4_.exitthread-pre-split, %._crit_edge.i.i.i203._crit_edge
  %i.go = phi ptr [ %.pr, %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEaSEOS4_.exitthread-pre-split ], [ %i.bn, %._crit_edge.i.i.i203._crit_edge ] ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.go, null
  br i1 %.not.i.i.i.i, label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEaSEOS4_.exit
  %i.gp = load i64, ptr %i.am, align 8, !tbaa !155
  %i.gq = shl i64 %i.gp, 2
  %i.gr = load ptr, ptr %10, align 8, !tbaa !160  ; 2 uses
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !118
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 24
  %i.gu = load ptr, ptr %i.gt, align 8
  invoke void %i.gu(ptr noundef nonnull align 8 dereferenceable(8) %i.gr, ptr noundef nonnull %i.go, i64 noundef %i.gq, i64 noundef 4)
          to label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit unwind label %bb.k, !inline_history !3

bb.k:                                             ; preds = %bb.j
  %i.gv = landingpad { ptr, i32 }
          catch ptr null
  %i.gw = extractvalue { ptr, i32 } %i.gv, 0
  call void @__clang_call_terminate(ptr %i.gw) #34
  unreachable

_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit: ; preds = %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEaSEOS4_.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  %i.gx = load ptr, ptr %i.l, align 8, !tbaa !156
  %i.gy = getelementptr inbounds nuw [32 x i8], ptr %i.gx, i64 %14
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !149
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %14
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !148
  %i.hd = load i32, ptr %i.bc, align 4, !tbaa !97 ; 2 uses
  %i.he = sext i32 %i.hd to i64
  %i.hf = shl nsw i64 %i.he, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ha, ptr align 4 %i.hc, i64 %i.hf, i1 false)
  %i.hg = icmp sgt i32 %i.hd, 1
  %i.hh = select i1 %i.hg, i32 %.0146386, i32 0
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %14
  store i32 %i.hh, ptr %i.hi, align 4, !tbaa !97
  %i.hj = load i32, ptr %i.bf, align 4, !tbaa !97
  %i.hk = mul i32 %i.hj, %.0146386                ; 7 uses
  %15 = add nsw i32 %.0153385, -1
  %.not505 = icmp eq i32 %.0153385, 0
  br i1 %.not505, label %bb.d, label %bb.e, !llvm.loop !430

bb.l:                                             ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i.i192
  %i.hl = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %._crit_edge.thread.i.i, %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i
  %i.hm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %10) #31
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn179 = phi { ptr, i32 } [ %i.hm, %bb.m ], [ %i.hl, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br label %.loopexit.split-lp

bb.o:                                             ; preds = %.lr.ph.i.i, %bb.d
  %i.hn = phi ptr [ %i.bb, %.lr.ph.i.i ], [ null, %bb.d ] ; 14 uses
  %i.ho = ptrtoaddr ptr %i.hn to i64
  store i64 %i.ar, ptr %i.aw, align 8, !tbaa !154
  %i.hp = load ptr, ptr %i.m, align 8, !tbaa !160 ; 3 uses
  %i.hq = icmp eq ptr %i.hp, %i.as
  br i1 %i.hq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.hr = load ptr, ptr %i.n, align 8, !tbaa !148 ; 2 uses
  store ptr %i.hn, ptr %i.n, align 8, !tbaa !148
  store ptr %i.hr, ptr %i.au, align 8, !tbaa !148
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !71 ; 2 uses
  store i64 %i.ar, ptr %i.hs, align 8, !tbaa !71
  store i64 %i.ht, ptr %i.av, align 8, !tbaa !71
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %i.ar, ptr %i.hu, align 8, !tbaa !71
  br label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEaSEOS4_.exit246

bb.q:                                             ; preds = %bb.o
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  store i64 0, ptr %i.hv, align 8, !tbaa !154
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !155
  %.not.i.i212 = icmp ult i64 %i.hx, %i.ar
  br i1 %.not.i.i212, label %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i219, label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i213

_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i219: ; preds = %bb.q
  %i.hy = shl nuw nsw i64 %i.ar, 2
  %i.hz = load ptr, ptr %i.hp, align 8, !tbaa !118
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  %i.ib = load ptr, ptr %i.ia, align 8
  %i.ic = invoke noundef ptr %i.ib(ptr noundef nonnull align 8 dereferenceable(8) %i.hp, i64 noundef %i.hy, i64 noundef 4)
          to label %.noexc244 unwind label %bb.ag, !inline_history !161 ; 13 uses

.noexc244:                                        ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i219
  %.pre.i220 = load i64, ptr %i.hv, align 8, !tbaa !154 ; 11 uses
  %.not13.i.i221 = icmp eq i64 %.pre.i220, 0
  %.pre.i.i223 = load ptr, ptr %i.n, align 8, !tbaa !149 ; 14 uses
  br i1 %.not13.i.i221, label %._crit_edge.i.i236, label %iter.check575

iter.check575:                                    ; preds = %.noexc244
  %.pre.i.i223558 = ptrtoaddr ptr %.pre.i.i223 to i64
  %i.id = ptrtoaddr ptr %i.ic to i64
  %min.iters.check559 = icmp ult i64 %.pre.i220, 4
  %i.ie = sub i64 %.pre.i.i223558, %i.id
  %diff.check561 = icmp ugt i64 %i.ie, -128
  %or.cond914 = select i1 %min.iters.check559, i1 true, i1 %diff.check561
  br i1 %or.cond914, label %.lr.ph.i.i224.preheader, label %vector.main.loop.iter.check562

vector.main.loop.iter.check562:                   ; preds = %iter.check575
  %min.iters.check563 = icmp ult i64 %.pre.i220, 32
  br i1 %min.iters.check563, label %vec.epilog.ph579, label %vector.ph564

vector.ph564:                                     ; preds = %vector.main.loop.iter.check562
  %i.if = and i64 %.pre.i220, 28
  %n.vec565 = and i64 %.pre.i220, -32             ; 4 uses
  br label %vector.body566

vector.body566:                                   ; preds = %vector.ph564, %vector.body566
  %index567 = phi i64 [ 0, %vector.ph564 ], [ %index.next572, %vector.body566 ] ; 3 uses
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %index567 ; 4 uses
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i223, i64 %index567 ; 4 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 32
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ih, i64 64
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ih, i64 96
  %wide.load568 = load <8 x float>, ptr %i.ih, align 4, !tbaa !20
  %wide.load569 = load <8 x float>, ptr %i.ii, align 4, !tbaa !20
  %wide.load570 = load <8 x float>, ptr %i.ij, align 4, !tbaa !20
  %wide.load571 = load <8 x float>, ptr %i.ik, align 4, !tbaa !20
  %i.il = getelementptr inbounds nuw i8, ptr %i.ig, i64 32
  %i.im = getelementptr inbounds nuw i8, ptr %i.ig, i64 64
  %i.in = getelementptr inbounds nuw i8, ptr %i.ig, i64 96
  store <8 x float> %wide.load568, ptr %i.ig, align 4, !tbaa !20
  store <8 x float> %wide.load569, ptr %i.il, align 4, !tbaa !20
  store <8 x float> %wide.load570, ptr %i.im, align 4, !tbaa !20
  store <8 x float> %wide.load571, ptr %i.in, align 4, !tbaa !20
  %index.next572 = add nuw i64 %index567, 32      ; 2 uses
  %i.io = icmp eq i64 %index.next572, %n.vec565
  br i1 %i.io, label %middle.block573, label %vector.body566, !llvm.loop !431

middle.block573:                                  ; preds = %vector.body566
  %cmp.n574 = icmp eq i64 %.pre.i220, %n.vec565
  br i1 %cmp.n574, label %._crit_edge.thread.i.i228, label %vec.epilog.iter.check576

vec.epilog.iter.check576:                         ; preds = %middle.block573
  %min.epilog.iters.check578 = icmp eq i64 %i.if, 0
  br i1 %min.epilog.iters.check578, label %.lr.ph.i.i224.preheader, label %vec.epilog.ph579, !prof !152

vec.epilog.ph579:                                 ; preds = %vector.main.loop.iter.check562, %vec.epilog.iter.check576
  %vec.epilog.resume.val580 = phi i64 [ %n.vec565, %vec.epilog.iter.check576 ], [ 0, %vector.main.loop.iter.check562 ]
  %n.vec581 = and i64 %.pre.i220, -4              ; 3 uses
  br label %vec.epilog.vector.body582

vec.epilog.vector.body582:                        ; preds = %vec.epilog.vector.body582, %vec.epilog.ph579
  %index583 = phi i64 [ %vec.epilog.resume.val580, %vec.epilog.ph579 ], [ %index.next585, %vec.epilog.vector.body582 ] ; 3 uses
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %index583
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i223, i64 %index583
  %wide.load584 = load <4 x float>, ptr %i.iq, align 4, !tbaa !20
  store <4 x float> %wide.load584, ptr %i.ip, align 4, !tbaa !20
  %index.next585 = add nuw i64 %index583, 4       ; 2 uses
  %i.ir = icmp eq i64 %index.next585, %n.vec581
  br i1 %i.ir, label %vec.epilog.middle.block586, label %vec.epilog.vector.body582, !llvm.loop !432

vec.epilog.middle.block586:                       ; preds = %vec.epilog.vector.body582
  %cmp.n587 = icmp eq i64 %.pre.i220, %n.vec581
  br i1 %cmp.n587, label %._crit_edge.thread.i.i228, label %.lr.ph.i.i224.preheader

.lr.ph.i.i224.preheader:                          ; preds = %iter.check575, %vec.epilog.iter.check576, %vec.epilog.middle.block586
  %indvars.iv.i.i225.ph = phi i64 [ 0, %iter.check575 ], [ %n.vec565, %vec.epilog.iter.check576 ], [ %n.vec581, %vec.epilog.middle.block586 ] ; 4 uses
  %i.is = sub i64 %.pre.i220, %indvars.iv.i.i225.ph
  %xtraiter936 = and i64 %i.is, 7                 ; 2 uses
  %lcmp.mod937.not = icmp eq i64 %xtraiter936, 0
  br i1 %lcmp.mod937.not, label %.lr.ph.i.i224.prol.loopexit, label %.lr.ph.i.i224.prol

.lr.ph.i.i224.prol:                               ; preds = %.lr.ph.i.i224.preheader, %.lr.ph.i.i224.prol
  %indvars.iv.i.i225.prol = phi i64 [ %indvars.iv.next.i.i226.prol, %.lr.ph.i.i224.prol ], [ %indvars.iv.i.i225.ph, %.lr.ph.i.i224.preheader ] ; 3 uses
  %prol.iter938 = phi i64 [ %prol.iter938.next, %.lr.ph.i.i224.prol ], [ 0, %.lr.ph.i.i224.preheader ]
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %indvars.iv.i.i225.prol
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i223, i64 %indvars.iv.i.i225.prol
  %i.iv = load float, ptr %i.iu, align 4, !tbaa !20
  store float %i.iv, ptr %i.it, align 4, !tbaa !20
  %indvars.iv.next.i.i226.prol = add nuw nsw i64 %indvars.iv.i.i225.prol, 1 ; 2 uses
  %prol.iter938.next = add i64 %prol.iter938, 1   ; 2 uses
  %prol.iter938.cmp.not = icmp eq i64 %prol.iter938.next, %xtraiter936
  br i1 %prol.iter938.cmp.not, label %.lr.ph.i.i224.prol.loopexit, label %.lr.ph.i.i224.prol, !llvm.loop !433

.lr.ph.i.i224.prol.loopexit:                      ; preds = %.lr.ph.i.i224.prol, %.lr.ph.i.i224.preheader
  %indvars.iv.i.i225.unr = phi i64 [ %indvars.iv.i.i225.ph, %.lr.ph.i.i224.preheader ], [ %indvars.iv.next.i.i226.prol, %.lr.ph.i.i224.prol ]
  %i.iw = sub i64 %indvars.iv.i.i225.ph, %.pre.i220
  %i.ix = icmp ugt i64 %i.iw, -8
  br i1 %i.ix, label %._crit_edge.thread.i.i228, label %.lr.ph.i.i224

._crit_edge.i.i236:                               ; preds = %.noexc244
  %.not.i.i.i.i.i240 = icmp eq ptr %.pre.i.i223, null
  br i1 %.not.i.i.i.i.i240, label %_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i232, label %._crit_edge.thread.i.i228

._crit_edge.thread.i.i228:                        ; preds = %.lr.ph.i.i224.prol.loopexit, %.lr.ph.i.i224, %middle.block573, %vec.epilog.middle.block586, %._crit_edge.i.i236
  %i.iy = load i64, ptr %i.hw, align 8, !tbaa !155
  %i.iz = shl i64 %i.iy, 2
  %i.ja = load ptr, ptr %i.m, align 8, !tbaa !160 ; 2 uses
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !118
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 24
  %i.jd = load ptr, ptr %i.jc, align 8
  invoke void %i.jd(ptr noundef nonnull align 8 dereferenceable(8) %i.ja, ptr noundef nonnull %.pre.i.i223, i64 noundef %i.iz, i64 noundef 4)
          to label %_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i232 unwind label %bb.ag, !inline_history !161

_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i232: ; preds = %._crit_edge.thread.i.i228, %._crit_edge.i.i236
  store i64 %i.ar, ptr %i.hw, align 8, !tbaa !155
  store ptr %i.ic, ptr %i.n, align 8, !tbaa !149
  br label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i213

.lr.ph.i.i224:                                    ; preds = %.lr.ph.i.i224.prol.loopexit, %.lr.ph.i.i224
  %indvars.iv.i.i225 = phi i64 [ %indvars.iv.next.i.i226.7, %.lr.ph.i.i224 ], [ %indvars.iv.i.i225.unr, %.lr.ph.i.i224.prol.loopexit ] ; 10 uses
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %indvars.iv.i.i225
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i223, i64 %indvars.iv.i.i225
  %i.jg = load float, ptr %i.jf, align 4, !tbaa !20
  store float %i.jg, ptr %i.je, align 4, !tbaa !20
  %indvars.iv.next.i.i226 = add nuw nsw i64 %indvars.iv.i.i225, 1 ; 2 uses
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %indvars.iv.next.i.i226
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i223, i64 %indvars.iv.next.i.i226
  %i.jj = load float, ptr %i.ji, align 4, !tbaa !20
  store float %i.jj, ptr %i.jh, align 4, !tbaa !20
  %indvars.iv.next.i.i226.1 = add nuw nsw i64 %indvars.iv.i.i225, 2 ; 2 uses
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %indvars.iv.next.i.i226.1
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i223, i64 %indvars.iv.next.i.i226.1
  %i.jm = load float, ptr %i.jl, align 4, !tbaa !20
  store float %i.jm, ptr %i.jk, align 4, !tbaa !20
  %indvars.iv.next.i.i226.2 = add nuw nsw i64 %indvars.iv.i.i225, 3 ; 2 uses
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %indvars.iv.next.i.i226.2
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i223, i64 %indvars.iv.next.i.i226.2
  %i.jp = load float, ptr %i.jo, align 4, !tbaa !20
  store float %i.jp, ptr %i.jn, align 4, !tbaa !20
  %indvars.iv.next.i.i226.3 = add nuw nsw i64 %indvars.iv.i.i225, 4 ; 2 uses
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %indvars.iv.next.i.i226.3
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i223, i64 %indvars.iv.next.i.i226.3
  %i.js = load float, ptr %i.jr, align 4, !tbaa !20
  store float %i.js, ptr %i.jq, align 4, !tbaa !20
  %indvars.iv.next.i.i226.4 = add nuw nsw i64 %indvars.iv.i.i225, 5 ; 2 uses
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %indvars.iv.next.i.i226.4
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i223, i64 %indvars.iv.next.i.i226.4
end_hunk_1
begin_hunk_2_@_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEE6resizeEm:bb.a
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %indvars.iv.next.i.2
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !20
  store float %i.bj, ptr %i.bh, align 4, !tbaa !20
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv.next.i.3
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %indvars.iv.next.i.3
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !20
  store float %i.bm, ptr %i.bk, align 4, !tbaa !20
  %indvars.iv.next.i.4 = add nuw nsw i64 %indvars.iv.i, 5 ; 2 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv.next.i.4
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %indvars.iv.next.i.4
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !20
  store float %i.bp, ptr %i.bn, align 4, !tbaa !20
  %indvars.iv.next.i.5 = add nuw nsw i64 %indvars.iv.i, 6 ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv.next.i.5
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %indvars.iv.next.i.5
  %i.bs = load float, ptr %i.br, align 4, !tbaa !20
  store float %i.bs, ptr %i.bq, align 4, !tbaa !20
  %indvars.iv.next.i.6 = add nuw nsw i64 %indvars.iv.i, 7 ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv.next.i.6
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %indvars.iv.next.i.6
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !20
  store float %i.bv, ptr %i.bt, align 4, !tbaa !20
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %indvars.iv.next.i.7, %i.x
  br i1 %exitcond.not.i.7, label %._crit_edge.thread.i, label %.lr.ph.i, !llvm.loop !486

_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEE7reserveEm.exit: ; preds = %bb.e, %_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i
  %i.bw = phi i64 [ %i.b, %bb.e ], [ %.pre16, %_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i ] ; 3 uses
  %i.bx = icmp ult i64 %i.bw, %1
  br i1 %i.bx, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEE7reserveEm.exit
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !149
  %i.ca = shl i64 %i.bw, 2
  %scevgep = getelementptr nuw i8, ptr %i.bz, i64 %i.ca
  %i.cb = sub nuw i64 %1, %i.bw
  %i.cc = shl i64 %i.cb, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %i.cc, i1 false), !tbaa !20
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEE7reserveEm.exit, %bb.d, %.preheader.preheader, %_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit
  store i64 %1, ptr %i.a, align 8, !tbaa !154
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pbrt17PiecewiseLinear2DILm3EEC2EN4pstd3pmr21polymorphic_allocatorISt4byteEEPKfiiNS2_5arrayIiLi3EEENS9_IS8_Li3EEEbb(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef byval(%"class.pstd::array.48") align 8 %5, ptr noundef byval(%"class.pstd::array.49") align 8 %6, i1 noundef zeroext %7, i1 noundef zeroext %8) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %9 = alloca %"class.pstd::vector", align 8      ; 10 uses
  %10 = alloca %"class.pstd::vector", align 8     ; 8 uses
  %11 = alloca %"class.pstd::vector", align 8     ; 8 uses
  %12 = alloca %"class.pstd::vector", align 8     ; 8 uses
  store i32 %3, ptr %0, align 8, !tbaa !157
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  store i32 %4, ptr %i.b, align 4, !tbaa !158
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = insertelement <2 x i32> poison, i32 %3, i64 0
  %i.e = insertelement <2 x i32> %i.d, i32 %4, i64 1
  %i.f = add nsw <2 x i32> %i.e, splat (i32 -1)
  %i.g = sitofp <2 x i32> %i.f to <2 x float>     ; 2 uses
  %i.h = fdiv <2 x float> splat (float 1.000000e+00), %i.g
  store <2 x float> %i.h, ptr %i.c, align 8, !tbaa !20
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store <2 x float> %i.g, ptr %i.i, align 8, !tbaa !20
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.k = ptrtoint ptr %1 to i64                   ; 7 uses
  store i64 %i.k, ptr %i.j, align 8, !tbaa !159
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  store i64 %i.k, ptr %i.m, align 8, !tbaa !159
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  store i64 %i.k, ptr %i.o, align 8, !tbaa !159
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i8 0, i64 24, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  store i64 %i.k, ptr %i.q, align 8, !tbaa !159
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  %.not = xor i1 %8, true
  %or.cond = or i1 %7, %.not
  br i1 %or.cond, label %bb.b, label %.invoke

.invoke:                                          ; preds = %bb.g, %bb.a
  %i.s = phi i32 [ 1348, %bb.a ], [ 1356, %bb.g ]
  %i.t = phi ptr [ @.str.115, %bb.a ], [ @.str.116, %bb.g ]
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef 2, ptr noundef nonnull @.str.114, i32 noundef %i.s, ptr noundef nonnull %i.t) #32
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 9 uses
  invoke void @_ZN4pstd6vectorINS0_IfNS_3pmr21polymorphic_allocatorIfEEEENS2_IS4_EEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 noundef 4)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.b
  %.pre = load ptr, ptr %i.l, align 8, !tbaa !156
  %.pre.i = load i64, ptr %i.v, align 8, !tbaa !162
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %.pre, i64 %.pre.i ; 2 uses
  store i64 %i.k, ptr %i.w, align 8, !tbaa !159
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i8 0, i64 24, i1 false)
  %i.y = load i64, ptr %i.v, align 8, !tbaa !162
  %i.z = add i64 %i.y, 1                          ; 5 uses
  store i64 %i.z, ptr %i.v, align 8, !tbaa !162
  %i.aa = load i64, ptr %i.u, align 8, !tbaa !163
  %i.ab = icmp eq i64 %i.aa, %i.z
  br i1 %i.ab, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.ac = icmp eq i64 %i.z, 0
  %i.ad = shl i64 %i.z, 1
  %spec.select.i.1 = select i1 %i.ac, i64 4, i64 %i.ad
  invoke void @_ZN4pstd6vectorINS0_IfNS_3pmr21polymorphic_allocatorIfEEEENS2_IS4_EEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 noundef %spec.select.i.1)
          to label %.noexc.1 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc.1:                                         ; preds = %bb.c
  %.pre.i.1 = load i64, ptr %i.v, align 8, !tbaa !162
  br label %bb.d

bb.d:                                             ; preds = %.noexc.1, %.noexc
  %i.ae = phi i64 [ %.pre.i.1, %.noexc.1 ], [ %i.z, %.noexc ]
  %i.af = load ptr, ptr %i.l, align 8, !tbaa !156
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %i.af, i64 %i.ae ; 2 uses
  store i64 %i.k, ptr %i.ag, align 8, !tbaa !159
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false)
  %i.ai = load i64, ptr %i.v, align 8, !tbaa !162
  %i.aj = add i64 %i.ai, 1                        ; 5 uses
  store i64 %i.aj, ptr %i.v, align 8, !tbaa !162
  %i.ak = load i64, ptr %i.u, align 8, !tbaa !163
  %i.al = icmp eq i64 %i.ak, %i.aj
  br i1 %i.al, label %bb.e, label %.preheader374

bb.e:                                             ; preds = %bb.d
  %i.am = icmp eq i64 %i.aj, 0
  %i.an = shl i64 %i.aj, 1
  %spec.select.i.2 = select i1 %i.am, i64 4, i64 %i.an
  invoke void @_ZN4pstd6vectorINS0_IfNS_3pmr21polymorphic_allocatorIfEEEENS2_IS4_EEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 noundef %spec.select.i.2)
          to label %.noexc.2 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc.2:                                         ; preds = %bb.e
  %.pre.i.2 = load i64, ptr %i.v, align 8, !tbaa !162
  br label %.preheader374

.preheader374:                                    ; preds = %.noexc.2, %bb.d
  %i.ao = phi i64 [ %.pre.i.2, %.noexc.2 ], [ %i.aj, %bb.d ]
  %i.ap = load ptr, ptr %i.l, align 8, !tbaa !156
  %i.aq = getelementptr inbounds nuw [32 x i8], ptr %i.ap, i64 %i.ao ; 2 uses
  store i64 %i.k, ptr %i.aq, align 8, !tbaa !159
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i8 0, i64 24, i1 false)
  %i.as = load i64, ptr %i.v, align 8, !tbaa !162
  %i.at = add i64 %i.as, 1
  store i64 %i.at, ptr %i.v, align 8, !tbaa !162
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.av = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 36
  br label %bb.g

bb.f:                                             ; preds = %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit
  %i.az = mul i32 %4, %3                          ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  %i.ba = mul i32 %i.hu, %i.az                    ; 8 uses
  %i.bb = zext i32 %i.ba to i64                   ; 36 uses
  %i.bc = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #31 ; 6 uses
  %i.bd = ptrtoint ptr %i.bc to i64
  store i64 %i.bd, ptr %10, align 8, !tbaa !159
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  %.not.i.not.i.i = icmp eq i32 %i.ba, 0          ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.be, i8 0, i64 16, i1 false)
  br i1 %.not.i.not.i.i, label %bb.q, label %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i.i

_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i.i: ; preds = %bb.f
  %i.bh = shl nuw nsw i64 %i.bb, 2                ; 2 uses
  %i.bi = load ptr, ptr %i.bc, align 8, !tbaa !118
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = invoke noundef ptr %i.bk(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, i64 noundef %i.bh, i64 noundef 4)
          to label %.lr.ph.i.i unwind label %bb.ah, !inline_history !2 ; 3 uses

.lr.ph.i.i:                                       ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i.i
  store i64 %i.bb, ptr %i.bf, align 8, !tbaa !155
  store ptr %i.bl, ptr %i.be, align 8, !tbaa !149
  call void @llvm.memset.p0.i64(ptr align 4 %i.bl, i8 0, i64 %i.bh, i1 false), !tbaa !20
  br label %bb.q

bb.g:                                             ; preds = %.preheader374, %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit
  %.0146386 = phi i32 [ 1, %.preheader374 ], [ %i.hu, %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit ] ; 2 uses
  %.0153385 = phi i32 [ 2, %.preheader374 ], [ %14, %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit ] ; 3 uses
  %13 = zext nneg i32 %.0153385 to i64            ; 6 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %13 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !97 ; 3 uses
  %i.bo = icmp slt i32 %i.bn, 1
  br i1 %i.bo, label %.invoke, label %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i.i192

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.invoke, %bb.b, %bb.c, %bb.e
  %lpad.loopexit.split-lp446 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i.i192: ; preds = %bb.g
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %13 ; 2 uses
  store i32 %i.bn, ptr %i.bp, align 4, !tbaa !97
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  %i.bq = zext nneg i32 %i.bn to i64              ; 4 uses
  %i.br = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #31 ; 4 uses
  %i.bs = ptrtoint ptr %i.br to i64
  store i64 %i.bs, ptr %9, align 8, !tbaa !159
  %i.bt = shl nuw nsw i64 %i.bq, 2                ; 2 uses
  %i.bu = load ptr, ptr %i.br, align 8, !tbaa !118
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = invoke noundef ptr %i.bw(ptr noundef nonnull align 8 dereferenceable(8) %i.br, i64 noundef %i.bt, i64 noundef 4)
          to label %._crit_edge.i.i.i203._crit_edge unwind label %bb.n, !inline_history !2 ; 4 uses

._crit_edge.i.i.i203._crit_edge:                  ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i.i192
  %.pre476 = load ptr, ptr %i.l, align 8, !tbaa !156
  store i64 %i.bq, ptr %i.aw, align 8, !tbaa !155
  store ptr %i.bx, ptr %i.av, align 8, !tbaa !149
  call void @llvm.memset.p0.i64(ptr align 4 %i.bx, i8 0, i64 %i.bt, i1 false), !tbaa !20
  store i64 %i.bq, ptr %i.ax, align 8, !tbaa !154
  %i.by = getelementptr inbounds nuw [32 x i8], ptr %.pre476, i64 %13 ; 11 uses
  %i.bz = icmp eq ptr %i.by, %9
  br i1 %i.bz, label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEaSEOS4_.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge.i.i.i203._crit_edge
  %i.ca = load ptr, ptr %i.by, align 8, !tbaa !160 ; 3 uses
  %i.cb = icmp eq ptr %i.ca, %i.br
  br i1 %i.cb, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !148
  store ptr %i.bx, ptr %i.cc, align 8, !tbaa !148
  store ptr %i.cd, ptr %i.av, align 8, !tbaa !148
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !71
  store i64 %i.bq, ptr %i.ce, align 8, !tbaa !71
  store i64 %i.cf, ptr %i.aw, align 8, !tbaa !71
  %i.cg = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ch = load i64, ptr %i.ax, align 8, !tbaa !71
  store i64 %i.ch, ptr %i.cg, align 8, !tbaa !71
  br label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEaSEOS4_.exitthread-pre-split

bb.j:                                             ; preds = %bb.h
  %i.ci = getelementptr inbounds nuw i8, ptr %i.by, i64 24 ; 3 uses
  store i64 0, ptr %i.ci, align 8, !tbaa !154
  %i.cj = load i64, ptr %i.ax, align 8, !tbaa !154 ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 3 uses
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !155
  %.not.i.i = icmp ult i64 %i.cl, %i.cj
  br i1 %.not.i.i, label %bb.k, label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i

bb.k:                                             ; preds = %bb.j
  %i.cm = shl i64 %i.cj, 2                        ; 2 uses
  %i.cn = icmp eq i64 %i.cm, 0
  br i1 %i.cn, label %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.thread.i, label %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i

_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.thread.i: ; preds = %bb.k
  %.phi.trans.insert.i27.i = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 2 uses
  %.pre.i28.i = load ptr, ptr %.phi.trans.insert.i27.i, align 8, !tbaa !149
  br label %._crit_edge.i.i

_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i: ; preds = %bb.k
  %i.co = load ptr, ptr %i.ca, align 8, !tbaa !118
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = invoke noundef ptr %i.cq(ptr noundef nonnull align 8 dereferenceable(8) %i.ca, i64 noundef %i.cm, i64 noundef 4)
          to label %.noexc210 unwind label %bb.o, !inline_history !161 ; 17 uses

.noexc210:                                        ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i
  %.pre.i208 = load i64, ptr %i.ci, align 8, !tbaa !154 ; 11 uses
  %.not13.i.i = icmp eq i64 %.pre.i208, 0
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 6 uses
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !149 ; 17 uses
  br i1 %.not13.i.i, label %._crit_edge.i.i, label %iter.check543

iter.check543:                                    ; preds = %.noexc210
  %.pre.i.i526 = ptrtoaddr ptr %.pre.i.i to i64
  %i.cs = ptrtoaddr ptr %i.cr to i64
  %min.iters.check527 = icmp ult i64 %.pre.i208, 4
  %i.ct = sub i64 %.pre.i.i526, %i.cs
  %diff.check529 = icmp ugt i64 %i.ct, -128
  %or.cond912 = select i1 %min.iters.check527, i1 true, i1 %diff.check529
  br i1 %or.cond912, label %.lr.ph.i.i209.preheader, label %vector.main.loop.iter.check530

vector.main.loop.iter.check530:                   ; preds = %iter.check543
  %min.iters.check531 = icmp ult i64 %.pre.i208, 32
  br i1 %min.iters.check531, label %vec.epilog.ph547, label %vector.ph532

vector.ph532:                                     ; preds = %vector.main.loop.iter.check530
  %i.cu = and i64 %.pre.i208, 28
  %n.vec533 = and i64 %.pre.i208, -32             ; 4 uses
  br label %vector.body534

vector.body534:                                   ; preds = %vector.ph532, %vector.body534
  %index535 = phi i64 [ 0, %vector.ph532 ], [ %index.next540, %vector.body534 ] ; 3 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %index535 ; 4 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %index535 ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 64
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 96
  %wide.load536 = load <8 x float>, ptr %i.cw, align 4, !tbaa !20
  %wide.load537 = load <8 x float>, ptr %i.cx, align 4, !tbaa !20
  %wide.load538 = load <8 x float>, ptr %i.cy, align 4, !tbaa !20
  %wide.load539 = load <8 x float>, ptr %i.cz, align 4, !tbaa !20
  %i.da = getelementptr inbounds nuw i8, ptr %i.cv, i64 32
  %i.db = getelementptr inbounds nuw i8, ptr %i.cv, i64 64
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cv, i64 96
  store <8 x float> %wide.load536, ptr %i.cv, align 4, !tbaa !20
  store <8 x float> %wide.load537, ptr %i.da, align 4, !tbaa !20
  store <8 x float> %wide.load538, ptr %i.db, align 4, !tbaa !20
  store <8 x float> %wide.load539, ptr %i.dc, align 4, !tbaa !20
  %index.next540 = add nuw i64 %index535, 32      ; 2 uses
  %i.dd = icmp eq i64 %index.next540, %n.vec533
  br i1 %i.dd, label %middle.block541, label %vector.body534, !llvm.loop !487

middle.block541:                                  ; preds = %vector.body534
  %cmp.n542 = icmp eq i64 %.pre.i208, %n.vec533
  br i1 %cmp.n542, label %._crit_edge.thread.i.i, label %vec.epilog.iter.check544

vec.epilog.iter.check544:                         ; preds = %middle.block541
  %min.epilog.iters.check546 = icmp eq i64 %i.cu, 0
  br i1 %min.epilog.iters.check546, label %.lr.ph.i.i209.preheader, label %vec.epilog.ph547, !prof !152

vec.epilog.ph547:                                 ; preds = %vector.main.loop.iter.check530, %vec.epilog.iter.check544
  %vec.epilog.resume.val548 = phi i64 [ %n.vec533, %vec.epilog.iter.check544 ], [ 0, %vector.main.loop.iter.check530 ]
  %n.vec549 = and i64 %.pre.i208, -4              ; 3 uses
  br label %vec.epilog.vector.body550

vec.epilog.vector.body550:                        ; preds = %vec.epilog.vector.body550, %vec.epilog.ph547
  %index551 = phi i64 [ %vec.epilog.resume.val548, %vec.epilog.ph547 ], [ %index.next553, %vec.epilog.vector.body550 ] ; 3 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %index551
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %index551
  %wide.load552 = load <4 x float>, ptr %i.df, align 4, !tbaa !20
  store <4 x float> %wide.load552, ptr %i.de, align 4, !tbaa !20
  %index.next553 = add nuw i64 %index551, 4       ; 2 uses
  %i.dg = icmp eq i64 %index.next553, %n.vec549
  br i1 %i.dg, label %vec.epilog.middle.block554, label %vec.epilog.vector.body550, !llvm.loop !488

vec.epilog.middle.block554:                       ; preds = %vec.epilog.vector.body550
  %cmp.n555 = icmp eq i64 %.pre.i208, %n.vec549
  br i1 %cmp.n555, label %._crit_edge.thread.i.i, label %.lr.ph.i.i209.preheader

.lr.ph.i.i209.preheader:                          ; preds = %iter.check543, %vec.epilog.iter.check544, %vec.epilog.middle.block554
  %indvars.iv.i.i.ph = phi i64 [ 0, %iter.check543 ], [ %n.vec533, %vec.epilog.iter.check544 ], [ %n.vec549, %vec.epilog.middle.block554 ] ; 4 uses
  %i.dh = sub i64 %.pre.i208, %indvars.iv.i.i.ph
  %xtraiter = and i64 %i.dh, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i209.prol.loopexit, label %.lr.ph.i.i209.prol

.lr.ph.i.i209.prol:                               ; preds = %.lr.ph.i.i209.preheader, %.lr.ph.i.i209.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i209.prol ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i209.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i209.prol ], [ 0, %.lr.ph.i.i209.preheader ]
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %indvars.iv.i.i.prol
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.i.i.prol
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !20
  store float %i.dk, ptr %i.di, align 4, !tbaa !20
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i209.prol.loopexit, label %.lr.ph.i.i209.prol, !llvm.loop !489

.lr.ph.i.i209.prol.loopexit:                      ; preds = %.lr.ph.i.i209.prol, %.lr.ph.i.i209.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %.lr.ph.i.i209.preheader ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i209.prol ]
  %i.dl = sub i64 %indvars.iv.i.i.ph, %.pre.i208
  %i.dm = icmp ugt i64 %i.dl, -8
  br i1 %i.dm, label %._crit_edge.thread.i.i, label %.lr.ph.i.i209

._crit_edge.i.i:                                  ; preds = %.noexc210, %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.thread.i
  %.pre.i36.i = phi ptr [ %.pre.i28.i, %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.thread.i ], [ %.pre.i.i, %.noexc210 ] ; 2 uses
  %.phi.trans.insert.i34.i = phi ptr [ %.phi.trans.insert.i27.i, %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.thread.i ], [ %.phi.trans.insert.i.i, %.noexc210 ] ; 2 uses
  %.0.i.i.i.i31.i = phi ptr [ null, %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.thread.i ], [ %i.cr, %.noexc210 ] ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.pre.i36.i, null
  br i1 %.not.i.i.i.i.i, label %_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i, label %._crit_edge.thread.i.i

._crit_edge.thread.i.i:                           ; preds = %.lr.ph.i.i209.prol.loopexit, %.lr.ph.i.i209, %middle.block541, %vec.epilog.middle.block554, %._crit_edge.i.i
  %.pre.i35.i = phi ptr [ %.pre.i36.i, %._crit_edge.i.i ], [ %.pre.i.i, %middle.block541 ], [ %.pre.i.i, %vec.epilog.middle.block554 ], [ %.pre.i.i, %.lr.ph.i.i209 ], [ %.pre.i.i, %.lr.ph.i.i209.prol.loopexit ]
  %.phi.trans.insert.i32.i = phi ptr [ %.phi.trans.insert.i34.i, %._crit_edge.i.i ], [ %.phi.trans.insert.i.i, %middle.block541 ], [ %.phi.trans.insert.i.i, %vec.epilog.middle.block554 ], [ %.phi.trans.insert.i.i, %.lr.ph.i.i209 ], [ %.phi.trans.insert.i.i, %.lr.ph.i.i209.prol.loopexit ]
  %.0.i.i.i.i29.i = phi ptr [ %.0.i.i.i.i31.i, %._crit_edge.i.i ], [ %i.cr, %middle.block541 ], [ %i.cr, %vec.epilog.middle.block554 ], [ %i.cr, %.lr.ph.i.i209 ], [ %i.cr, %.lr.ph.i.i209.prol.loopexit ]
  %i.dn = load i64, ptr %i.ck, align 8, !tbaa !155
  %i.do = shl i64 %i.dn, 2
  %i.dp = load ptr, ptr %i.by, align 8, !tbaa !160 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !118
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8
  invoke void %i.ds(ptr noundef nonnull align 8 dereferenceable(8) %i.dp, ptr noundef nonnull %.pre.i35.i, i64 noundef %i.do, i64 noundef 4)
          to label %._crit_edge.thread.i.i._ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i_crit_edge unwind label %bb.o, !inline_history !161

._crit_edge.thread.i.i._ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i_crit_edge: ; preds = %._crit_edge.thread.i.i
  %.pre18.i.pre = load i64, ptr %i.ax, align 8, !tbaa !154
  br label %_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i

_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i: ; preds = %._crit_edge.thread.i.i._ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i_crit_edge, %._crit_edge.i.i
  %.pre18.i = phi i64 [ %i.cj, %._crit_edge.i.i ], [ %.pre18.i.pre, %._crit_edge.thread.i.i._ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i_crit_edge ]
  %.phi.trans.insert.i33.i = phi ptr [ %.phi.trans.insert.i34.i, %._crit_edge.i.i ], [ %.phi.trans.insert.i32.i, %._crit_edge.thread.i.i._ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i_crit_edge ]
  %.0.i.i.i.i30.i = phi ptr [ %.0.i.i.i.i31.i, %._crit_edge.i.i ], [ %.0.i.i.i.i29.i, %._crit_edge.thread.i.i._ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i_crit_edge ]
  store i64 %i.cj, ptr %i.ck, align 8, !tbaa !155
  store ptr %.0.i.i.i.i30.i, ptr %.phi.trans.insert.i33.i, align 8, !tbaa !149
  br label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i

.lr.ph.i.i209:                                    ; preds = %.lr.ph.i.i209.prol.loopexit, %.lr.ph.i.i209
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.7, %.lr.ph.i.i209 ], [ %indvars.iv.i.i.unr, %.lr.ph.i.i209.prol.loopexit ] ; 10 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %indvars.iv.i.i
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.i.i
  %i.dv = load float, ptr %i.du, align 4, !tbaa !20
  store float %i.dv, ptr %i.dt, align 4, !tbaa !20
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %indvars.iv.next.i.i
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !20
  store float %i.dy, ptr %i.dw, align 4, !tbaa !20
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %indvars.iv.next.i.i.1
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.1
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !20
  store float %i.eb, ptr %i.dz, align 4, !tbaa !20
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %indvars.iv.next.i.i.2
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.2
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !20
  store float %i.ee, ptr %i.ec, align 4, !tbaa !20
end_hunk_2
begin_hunk_3_@_ZN4pbrt17PiecewiseLinear2DILm3EEC2EN4pstd3pmr21polymorphic_allocatorISt4byteEEPKfiiNS2_5arrayIiLi3EEENS9_IS8_Li3EEEbb:bb.a
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.3
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !20
  store float %i.eh, ptr %i.ef, align 4, !tbaa !20
  %indvars.iv.next.i.i.4 = add nuw nsw i64 %indvars.iv.i.i, 5 ; 2 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %indvars.iv.next.i.i.4
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.4
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !20
  store float %i.ek, ptr %i.ei, align 4, !tbaa !20
  %indvars.iv.next.i.i.5 = add nuw nsw i64 %indvars.iv.i.i, 6 ; 2 uses
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %indvars.iv.next.i.i.5
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.5
  %i.en = load float, ptr %i.em, align 4, !tbaa !20
  store float %i.en, ptr %i.el, align 4, !tbaa !20
  %indvars.iv.next.i.i.6 = add nuw nsw i64 %indvars.iv.i.i, 7 ; 2 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %indvars.iv.next.i.i.6
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.6
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !20
  store float %i.eq, ptr %i.eo, align 4, !tbaa !20
  %indvars.iv.next.i.i.7 = add nuw nsw i64 %indvars.iv.i.i, 8 ; 2 uses
  %exitcond.not.i.i.7 = icmp eq i64 %indvars.iv.next.i.i.7, %.pre.i208
  br i1 %exitcond.not.i.i.7, label %._crit_edge.thread.i.i, label %.lr.ph.i.i209, !llvm.loop !490

_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i: ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i, %bb.j
  %i.er = phi i64 [ %i.cj, %bb.j ], [ %.pre18.i, %_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i ] ; 12 uses
  %.not.i = icmp eq i64 %i.er, 0
  br i1 %.not.i, label %._crit_edge.i, label %iter.check

iter.check:                                       ; preds = %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i
  %i.es = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !149 ; 12 uses
  %i.eu = load ptr, ptr %i.av, align 8, !tbaa !149 ; 12 uses
  %min.iters.check = icmp ult i64 %i.er, 4
  %i.ev = ptrtoaddr ptr %i.eu to i64
  %i.ew = ptrtoaddr ptr %i.et to i64
  %i.ex = sub i64 %i.ev, %i.ew
  %diff.check = icmp ugt i64 %i.ex, -128
  %or.cond915 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond915, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check514 = icmp ult i64 %i.er, 32
  br i1 %min.iters.check514, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ey = and i64 %i.er, 28
  %n.vec = and i64 %i.er, -32                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %index ; 4 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %index ; 4 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 32
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 64
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 96
  %wide.load = load <8 x float>, ptr %i.fa, align 4, !tbaa !20
  %wide.load515 = load <8 x float>, ptr %i.fb, align 4, !tbaa !20
  %wide.load516 = load <8 x float>, ptr %i.fc, align 4, !tbaa !20
  %wide.load517 = load <8 x float>, ptr %i.fd, align 4, !tbaa !20
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ez, i64 32
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ez, i64 64
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ez, i64 96
  store <8 x float> %wide.load, ptr %i.ez, align 4, !tbaa !20
  store <8 x float> %wide.load515, ptr %i.fe, align 4, !tbaa !20
  store <8 x float> %wide.load516, ptr %i.ff, align 4, !tbaa !20
  store <8 x float> %wide.load517, ptr %i.fg, align 4, !tbaa !20
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.fh = icmp eq i64 %index.next, %n.vec
  br i1 %i.fh, label %middle.block, label %vector.body, !llvm.loop !491

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.er, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ey, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !152

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec518 = and i64 %i.er, -4                   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index519 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next521, %vec.epilog.vector.body ] ; 3 uses
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %index519
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %index519
  %wide.load520 = load <4 x float>, ptr %i.fj, align 4, !tbaa !20
  store <4 x float> %wide.load520, ptr %i.fi, align 4, !tbaa !20
  %index.next521 = add nuw i64 %index519, 4       ; 2 uses
  %i.fk = icmp eq i64 %index.next521, %n.vec518
  br i1 %i.fk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !492

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n522 = icmp eq i64 %i.er, %n.vec518
  br i1 %cmp.n522, label %._crit_edge.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.017.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec518, %vec.epilog.middle.block ] ; 4 uses
  %i.fl = sub i64 %i.er, %.017.i.ph
  %xtraiter935 = and i64 %i.fl, 7                 ; 2 uses
  %lcmp.mod936.not = icmp eq i64 %xtraiter935, 0
  br i1 %lcmp.mod936.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.017.i.prol = phi i64 [ %i.fp, %vec.epilog.scalar.ph.prol ], [ %.017.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter937 = phi i64 [ %prol.iter937.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %.017.i.prol
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %.017.i.prol
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !20
  store float %i.fo, ptr %i.fm, align 4, !tbaa !20
  %i.fp = add nuw i64 %.017.i.prol, 1             ; 2 uses
  %prol.iter937.next = add i64 %prol.iter937, 1   ; 2 uses
  %prol.iter937.cmp.not = icmp eq i64 %prol.iter937.next, %xtraiter935
  br i1 %prol.iter937.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !493

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.017.i.unr = phi i64 [ %.017.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.fp, %vec.epilog.scalar.ph.prol ]
  %i.fq = sub i64 %.017.i.ph, %i.er
  %i.fr = icmp ugt i64 %i.fq, -8
  br i1 %i.fr, label %._crit_edge.i, label %vec.epilog.scalar.ph

._crit_edge.i:                                    ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i
  store i64 %i.er, ptr %i.ci, align 8, !tbaa !154
  br label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEaSEOS4_.exitthread-pre-split

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.017.i = phi i64 [ %i.gx, %vec.epilog.scalar.ph ], [ %.017.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 10 uses
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %.017.i
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %.017.i
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !20
  store float %i.fu, ptr %i.fs, align 4, !tbaa !20
  %i.fv = add nuw i64 %.017.i, 1                  ; 2 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %i.fv
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %i.fv
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !20
  store float %i.fy, ptr %i.fw, align 4, !tbaa !20
  %i.fz = add nuw i64 %.017.i, 2                  ; 2 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %i.fz
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %i.fz
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !20
  store float %i.gc, ptr %i.ga, align 4, !tbaa !20
  %i.gd = add nuw i64 %.017.i, 3                  ; 2 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %i.gd
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %i.gd
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !20
  store float %i.gg, ptr %i.ge, align 4, !tbaa !20
  %i.gh = add nuw i64 %.017.i, 4                  ; 2 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %i.gh
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %i.gh
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !20
  store float %i.gk, ptr %i.gi, align 4, !tbaa !20
  %i.gl = add nuw i64 %.017.i, 5                  ; 2 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %i.gl
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %i.gl
  %i.go = load float, ptr %i.gn, align 4, !tbaa !20
  store float %i.go, ptr %i.gm, align 4, !tbaa !20
  %i.gp = add nuw i64 %.017.i, 6                  ; 2 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %i.gp
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %i.gp
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !20
  store float %i.gs, ptr %i.gq, align 4, !tbaa !20
  %i.gt = add nuw i64 %.017.i, 7                  ; 2 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %i.gt
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %i.gt
  %i.gw = load float, ptr %i.gv, align 4, !tbaa !20
  store float %i.gw, ptr %i.gu, align 4, !tbaa !20
  %i.gx = add nuw i64 %.017.i, 8                  ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %i.gx, %i.er
  br i1 %exitcond.not.i.7, label %._crit_edge.i, label %vec.epilog.scalar.ph, !llvm.loop !494

_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEaSEOS4_.exitthread-pre-split: ; preds = %bb.i, %._crit_edge.i
  %.pr = load ptr, ptr %i.av, align 8, !tbaa !149
  br label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEaSEOS4_.exit

_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEaSEOS4_.exit: ; preds = %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEaSEOS4_.exitthread-pre-split, %._crit_edge.i.i.i203._crit_edge
  %i.gy = phi ptr [ %.pr, %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEaSEOS4_.exitthread-pre-split ], [ %i.bx, %._crit_edge.i.i.i203._crit_edge ] ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.gy, null
  br i1 %.not.i.i.i.i, label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEaSEOS4_.exit
  %i.gz = load i64, ptr %i.aw, align 8, !tbaa !155
  %i.ha = shl i64 %i.gz, 2
  %i.hb = load ptr, ptr %9, align 8, !tbaa !160   ; 2 uses
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !118
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 24
  %i.he = load ptr, ptr %i.hd, align 8
  invoke void %i.he(ptr noundef nonnull align 8 dereferenceable(8) %i.hb, ptr noundef nonnull %i.gy, i64 noundef %i.ha, i64 noundef 4)
          to label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit unwind label %bb.m, !inline_history !3

bb.m:                                             ; preds = %bb.l
  %i.hf = landingpad { ptr, i32 }
          catch ptr null
  %i.hg = extractvalue { ptr, i32 } %i.hf, 0
  call void @__clang_call_terminate(ptr %i.hg) #34
  unreachable

_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit: ; preds = %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEaSEOS4_.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  %i.hh = load ptr, ptr %i.l, align 8, !tbaa !156
  %i.hi = getelementptr inbounds nuw [32 x i8], ptr %i.hh, i64 %13
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !149
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %13
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !148
  %i.hn = load i32, ptr %i.bm, align 4, !tbaa !97 ; 2 uses
  %i.ho = sext i32 %i.hn to i64
  %i.hp = shl nsw i64 %i.ho, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.hk, ptr align 4 %i.hm, i64 %i.hp, i1 false)
  %i.hq = icmp sgt i32 %i.hn, 1
  %i.hr = select i1 %i.hq, i32 %.0146386, i32 0
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %13
  store i32 %i.hr, ptr %i.hs, align 4, !tbaa !97
  %i.ht = load i32, ptr %i.bp, align 4, !tbaa !97
  %i.hu = mul i32 %i.ht, %.0146386                ; 7 uses
  %14 = add nsw i32 %.0153385, -1
  %.not507 = icmp eq i32 %.0153385, 0
  br i1 %.not507, label %bb.f, label %bb.g, !llvm.loop !495

bb.n:                                             ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i.i192
  %i.hv = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %._crit_edge.thread.i.i, %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i
  %i.hw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %9) #31
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn179 = phi { ptr, i32 } [ %i.hw, %bb.o ], [ %i.hv, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %.loopexit.split-lp

bb.q:                                             ; preds = %.lr.ph.i.i, %bb.f
  %i.hx = phi ptr [ %i.bl, %.lr.ph.i.i ], [ null, %bb.f ] ; 14 uses
  %i.hy = ptrtoaddr ptr %i.hx to i64
  store i64 %i.bb, ptr %i.bg, align 8, !tbaa !154
  %i.hz = load ptr, ptr %i.m, align 8, !tbaa !160 ; 3 uses
  %i.ia = icmp eq ptr %i.hz, %i.bc
  br i1 %i.ia, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ib = load ptr, ptr %i.n, align 8, !tbaa !148 ; 2 uses
  store ptr %i.hx, ptr %i.n, align 8, !tbaa !148
  store ptr %i.ib, ptr %i.be, align 8, !tbaa !148
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.id = load i64, ptr %i.ic, align 8, !tbaa !71 ; 2 uses
  store i64 %i.bb, ptr %i.ic, align 8, !tbaa !71
  store i64 %i.id, ptr %i.bf, align 8, !tbaa !71
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %i.bb, ptr %i.ie, align 8, !tbaa !71
  br label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEaSEOS4_.exit246

bb.s:                                             ; preds = %bb.q
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  store i64 0, ptr %i.if, align 8, !tbaa !154
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.ih = load i64, ptr %i.ig, align 8, !tbaa !155
  %.not.i.i212 = icmp ult i64 %i.ih, %i.bb
  br i1 %.not.i.i212, label %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i219, label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i213

_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i219: ; preds = %bb.s
  %i.ii = shl nuw nsw i64 %i.bb, 2
  %i.ij = load ptr, ptr %i.hz, align 8, !tbaa !118
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  %i.il = load ptr, ptr %i.ik, align 8
  %i.im = invoke noundef ptr %i.il(ptr noundef nonnull align 8 dereferenceable(8) %i.hz, i64 noundef %i.ii, i64 noundef 4)
          to label %.noexc244 unwind label %bb.ai, !inline_history !161 ; 13 uses

.noexc244:                                        ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i219
  %.pre.i220 = load i64, ptr %i.if, align 8, !tbaa !154 ; 11 uses
  %.not13.i.i221 = icmp eq i64 %.pre.i220, 0
  %.pre.i.i223 = load ptr, ptr %i.n, align 8, !tbaa !149 ; 14 uses
  br i1 %.not13.i.i221, label %._crit_edge.i.i236, label %iter.check577

iter.check577:                                    ; preds = %.noexc244
  %.pre.i.i223560 = ptrtoaddr ptr %.pre.i.i223 to i64
  %i.in = ptrtoaddr ptr %i.im to i64
  %min.iters.check561 = icmp ult i64 %.pre.i220, 4
  %i.io = sub i64 %.pre.i.i223560, %i.in
  %diff.check563 = icmp ugt i64 %i.io, -128
  %or.cond916 = select i1 %min.iters.check561, i1 true, i1 %diff.check563
  br i1 %or.cond916, label %.lr.ph.i.i224.preheader, label %vector.main.loop.iter.check564

vector.main.loop.iter.check564:                   ; preds = %iter.check577
  %min.iters.check565 = icmp ult i64 %.pre.i220, 32
  br i1 %min.iters.check565, label %vec.epilog.ph581, label %vector.ph566

vector.ph566:                                     ; preds = %vector.main.loop.iter.check564
  %i.ip = and i64 %.pre.i220, 28
  %n.vec567 = and i64 %.pre.i220, -32             ; 4 uses
  br label %vector.body568

vector.body568:                                   ; preds = %vector.ph566, %vector.body568
  %index569 = phi i64 [ 0, %vector.ph566 ], [ %index.next574, %vector.body568 ] ; 3 uses
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %index569 ; 4 uses
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i223, i64 %index569 ; 4 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 32
  %i.it = getelementptr inbounds nuw i8, ptr %i.ir, i64 64
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ir, i64 96
  %wide.load570 = load <8 x float>, ptr %i.ir, align 4, !tbaa !20
  %wide.load571 = load <8 x float>, ptr %i.is, align 4, !tbaa !20
  %wide.load572 = load <8 x float>, ptr %i.it, align 4, !tbaa !20
  %wide.load573 = load <8 x float>, ptr %i.iu, align 4, !tbaa !20
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iq, i64 32
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iq, i64 64
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iq, i64 96
  store <8 x float> %wide.load570, ptr %i.iq, align 4, !tbaa !20
  store <8 x float> %wide.load571, ptr %i.iv, align 4, !tbaa !20
  store <8 x float> %wide.load572, ptr %i.iw, align 4, !tbaa !20
  store <8 x float> %wide.load573, ptr %i.ix, align 4, !tbaa !20
  %index.next574 = add nuw i64 %index569, 32      ; 2 uses
  %i.iy = icmp eq i64 %index.next574, %n.vec567
  br i1 %i.iy, label %middle.block575, label %vector.body568, !llvm.loop !496

middle.block575:                                  ; preds = %vector.body568
  %cmp.n576 = icmp eq i64 %.pre.i220, %n.vec567
  br i1 %cmp.n576, label %._crit_edge.thread.i.i228, label %vec.epilog.iter.check578

vec.epilog.iter.check578:                         ; preds = %middle.block575
  %min.epilog.iters.check580 = icmp eq i64 %i.ip, 0
  br i1 %min.epilog.iters.check580, label %.lr.ph.i.i224.preheader, label %vec.epilog.ph581, !prof !152

vec.epilog.ph581:                                 ; preds = %vector.main.loop.iter.check564, %vec.epilog.iter.check578
  %vec.epilog.resume.val582 = phi i64 [ %n.vec567, %vec.epilog.iter.check578 ], [ 0, %vector.main.loop.iter.check564 ]
  %n.vec583 = and i64 %.pre.i220, -4              ; 3 uses
  br label %vec.epilog.vector.body584

vec.epilog.vector.body584:                        ; preds = %vec.epilog.vector.body584, %vec.epilog.ph581
  %index585 = phi i64 [ %vec.epilog.resume.val582, %vec.epilog.ph581 ], [ %index.next587, %vec.epilog.vector.body584 ] ; 3 uses
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %index585
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i223, i64 %index585
  %wide.load586 = load <4 x float>, ptr %i.ja, align 4, !tbaa !20
  store <4 x float> %wide.load586, ptr %i.iz, align 4, !tbaa !20
  %index.next587 = add nuw i64 %index585, 4       ; 2 uses
  %i.jb = icmp eq i64 %index.next587, %n.vec583
  br i1 %i.jb, label %vec.epilog.middle.block588, label %vec.epilog.vector.body584, !llvm.loop !497

vec.epilog.middle.block588:                       ; preds = %vec.epilog.vector.body584
  %cmp.n589 = icmp eq i64 %.pre.i220, %n.vec583
  br i1 %cmp.n589, label %._crit_edge.thread.i.i228, label %.lr.ph.i.i224.preheader

.lr.ph.i.i224.preheader:                          ; preds = %iter.check577, %vec.epilog.iter.check578, %vec.epilog.middle.block588
  %indvars.iv.i.i225.ph = phi i64 [ 0, %iter.check577 ], [ %n.vec567, %vec.epilog.iter.check578 ], [ %n.vec583, %vec.epilog.middle.block588 ] ; 4 uses
  %i.jc = sub i64 %.pre.i220, %indvars.iv.i.i225.ph
  %xtraiter938 = and i64 %i.jc, 7                 ; 2 uses
  %lcmp.mod939.not = icmp eq i64 %xtraiter938, 0
  br i1 %lcmp.mod939.not, label %.lr.ph.i.i224.prol.loopexit, label %.lr.ph.i.i224.prol

.lr.ph.i.i224.prol:                               ; preds = %.lr.ph.i.i224.preheader, %.lr.ph.i.i224.prol
  %indvars.iv.i.i225.prol = phi i64 [ %indvars.iv.next.i.i226.prol, %.lr.ph.i.i224.prol ], [ %indvars.iv.i.i225.ph, %.lr.ph.i.i224.preheader ] ; 3 uses
  %prol.iter940 = phi i64 [ %prol.iter940.next, %.lr.ph.i.i224.prol ], [ 0, %.lr.ph.i.i224.preheader ]
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %indvars.iv.i.i225.prol
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i223, i64 %indvars.iv.i.i225.prol
  %i.jf = load float, ptr %i.je, align 4, !tbaa !20
  store float %i.jf, ptr %i.jd, align 4, !tbaa !20
  %indvars.iv.next.i.i226.prol = add nuw nsw i64 %indvars.iv.i.i225.prol, 1 ; 2 uses
  %prol.iter940.next = add i64 %prol.iter940, 1   ; 2 uses
  %prol.iter940.cmp.not = icmp eq i64 %prol.iter940.next, %xtraiter938
  br i1 %prol.iter940.cmp.not, label %.lr.ph.i.i224.prol.loopexit, label %.lr.ph.i.i224.prol, !llvm.loop !498

.lr.ph.i.i224.prol.loopexit:                      ; preds = %.lr.ph.i.i224.prol, %.lr.ph.i.i224.preheader
  %indvars.iv.i.i225.unr = phi i64 [ %indvars.iv.i.i225.ph, %.lr.ph.i.i224.preheader ], [ %indvars.iv.next.i.i226.prol, %.lr.ph.i.i224.prol ]
  %i.jg = sub i64 %indvars.iv.i.i225.ph, %.pre.i220
  %i.jh = icmp ugt i64 %i.jg, -8
  br i1 %i.jh, label %._crit_edge.thread.i.i228, label %.lr.ph.i.i224

._crit_edge.i.i236:                               ; preds = %.noexc244
  %.not.i.i.i.i.i240 = icmp eq ptr %.pre.i.i223, null
  br i1 %.not.i.i.i.i.i240, label %_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i232, label %._crit_edge.thread.i.i228

._crit_edge.thread.i.i228:                        ; preds = %.lr.ph.i.i224.prol.loopexit, %.lr.ph.i.i224, %middle.block575, %vec.epilog.middle.block588, %._crit_edge.i.i236
  %i.ji = load i64, ptr %i.ig, align 8, !tbaa !155
  %i.jj = shl i64 %i.ji, 2
  %i.jk = load ptr, ptr %i.m, align 8, !tbaa !160 ; 2 uses
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !118
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 24
  %i.jn = load ptr, ptr %i.jm, align 8
  invoke void %i.jn(ptr noundef nonnull align 8 dereferenceable(8) %i.jk, ptr noundef nonnull %.pre.i.i223, i64 noundef %i.jj, i64 noundef 4)
          to label %_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i232 unwind label %bb.ai, !inline_history !161

_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i232: ; preds = %._crit_edge.thread.i.i228, %._crit_edge.i.i236
  store i64 %i.bb, ptr %i.ig, align 8, !tbaa !155
  store ptr %i.im, ptr %i.n, align 8, !tbaa !149
  br label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i213

.lr.ph.i.i224:                                    ; preds = %.lr.ph.i.i224.prol.loopexit, %.lr.ph.i.i224
  %indvars.iv.i.i225 = phi i64 [ %indvars.iv.next.i.i226.7, %.lr.ph.i.i224 ], [ %indvars.iv.i.i225.unr, %.lr.ph.i.i224.prol.loopexit ] ; 10 uses
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %indvars.iv.i.i225
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i223, i64 %indvars.iv.i.i225
  %i.jq = load float, ptr %i.jp, align 4, !tbaa !20
  store float %i.jq, ptr %i.jo, align 4, !tbaa !20
  %indvars.iv.next.i.i226 = add nuw nsw i64 %indvars.iv.i.i225, 1 ; 2 uses
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %indvars.iv.next.i.i226
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i223, i64 %indvars.iv.next.i.i226
  %i.jt = load float, ptr %i.js, align 4, !tbaa !20
  store float %i.jt, ptr %i.jr, align 4, !tbaa !20
  %indvars.iv.next.i.i226.1 = add nuw nsw i64 %indvars.iv.i.i225, 2 ; 2 uses
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %indvars.iv.next.i.i226.1
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i223, i64 %indvars.iv.next.i.i226.1
  %i.jw = load float, ptr %i.jv, align 4, !tbaa !20
  store float %i.jw, ptr %i.ju, align 4, !tbaa !20
  %indvars.iv.next.i.i226.2 = add nuw nsw i64 %indvars.iv.i.i225, 3 ; 2 uses
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %indvars.iv.next.i.i226.2
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i223, i64 %indvars.iv.next.i.i226.2
  %i.jz = load float, ptr %i.jy, align 4, !tbaa !20
  store float %i.jz, ptr %i.jx, align 4, !tbaa !20
  %indvars.iv.next.i.i226.3 = add nuw nsw i64 %indvars.iv.i.i225, 4 ; 2 uses
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %indvars.iv.next.i.i226.3
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i223, i64 %indvars.iv.next.i.i226.3
  %i.kc = load float, ptr %i.kb, align 4, !tbaa !20
  store float %i.kc, ptr %i.ka, align 4, !tbaa !20
  %indvars.iv.next.i.i226.4 = add nuw nsw i64 %indvars.iv.i.i225, 5 ; 2 uses
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %indvars.iv.next.i.i226.4
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i223, i64 %indvars.iv.next.i.i226.4
end_hunk_3
