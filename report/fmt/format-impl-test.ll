Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fmt/original/format-impl-test?download=true
inline.NumInlined: 4849
inline.NumDeleted: 1078
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEEfTnNSt9enable_ifIXsr13is_fast_floatIT1_EE5valueEiE4typeELi0EEET0_S9_S6_:bb.a
  %.1.i.i = phi ptr [ %i.dh, %bb.u ], [ %.028.lcssa.i.i, %._crit_edge.i.i ] ; 2 uses
  %i.dj = getelementptr inbounds i8, ptr %.1.i.i, i64 -1
  store i8 46, ptr %i.dj, align 1, !tbaa !71
  %i.dk = getelementptr inbounds i8, ptr %.1.i.i, i64 -2
  %i.dl = call noundef ptr @_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i(ptr noundef nonnull %i.dk, i32 noundef %.130.i.i, i32 noundef 1) ; 0 uses
  br label %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEjcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_.exit

_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEjcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_.exit: ; preds = %bb.s, %bb.v
  %.027.i.i = phi ptr [ %i.cq, %bb.v ], [ %i.cn, %bb.s ]
  %i.dm = call ptr @_ZN3fmt3v126detail13copy_noinlineIcPcNS0_14basic_appenderIcEEEET1_T0_S7_S6_(ptr noundef nonnull %i.a, ptr noundef %.027.i.i, ptr nonnull %0) ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8 ; 3 uses
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !95 ; 2 uses
  %i.dp = add i64 %i.do, 1                        ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !92
  %i.ds = icmp ugt i64 %i.dp, %i.dr
  br i1 %i.ds, label %bb.w, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit74

bb.w:                                             ; preds = %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEjcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_.exit
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !90
  call void %i.du(ptr noundef nonnull align 8 dereferenceable(32) %i.dm, i64 noundef %i.dp), !inline_history !11
  %.pre.i.i72 = load i64, ptr %i.dn, align 8, !tbaa !95 ; 2 uses
  %.pre2.i.i73 = add i64 %.pre.i.i72, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit74

_ZN3fmt3v1214basic_appenderIcEaSEc.exit74:        ; preds = %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEjcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_.exit, %bb.w
  %.pre-phi.i.i71 = phi i64 [ %i.dp, %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEjcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_.exit ], [ %.pre2.i.i73, %bb.w ]
  %i.dv = phi i64 [ %i.do, %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEjcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_.exit ], [ %.pre.i.i72, %bb.w ]
  %i.dw = load ptr, ptr %i.dm, align 8, !tbaa !91
  store i64 %.pre-phi.i.i71, ptr %i.dn, align 8, !tbaa !95
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.dv
  store i8 101, ptr %i.dx, align 1, !tbaa !71
  %i.dy = call ptr @_ZN3fmt3v126detail14write_exponentIcNS0_14basic_appenderIcEEEET0_iS5_(i32 noundef %i.aa, ptr nonnull %i.dm)
  br label %bb.x

bb.x:                                             ; preds = %bb.o, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit74, %bb.c
  %.sroa.057.2 = phi ptr [ %i.af, %bb.c ], [ %i.dy, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit74 ], [ %0, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN3fmt3v126detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signE.exit
  %.sroa.057.3 = phi ptr [ %i.k, %_ZN3fmt3v126detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signE.exit ], [ %.sroa.057.2, %bb.x ]
  ret ptr %.sroa.057.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN3fmt3v126detail9dragonbox10to_decimalIfEENS2_10decimal_fpIT_EES5_(float noundef %0) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = bitcast float %0 to i32                  ; 2 uses
  %i.c = and i32 %i.b, 8388607                    ; 4 uses
  %i.d = lshr i32 %i.b, 23
  %i.e = and i32 %i.d, 255                        ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i32 %i.e, -150                   ; 5 uses
  %i.g = icmp eq i32 %i.c, 0
  br i1 %i.g, label %_ZN3fmt3v126detail9dragonbox37floor_log10_pow2_minus_log10_4_over_3Ei.exit, label %bb.l

_ZN3fmt3v126detail9dragonbox37floor_log10_pow2_minus_log10_4_over_3Ei.exit: ; preds = %bb.b
  %i.h = mul nsw i32 %i.f, 631305
  %i.i = add nsw i32 %i.h, -261663
  %i.j = ashr i32 %i.i, 21                        ; 5 uses
  %i.k = sub nsw i32 0, %i.j
  %i.l = mul nsw i32 %i.j, -1741647
  %i.m = ashr i32 %i.l, 19
  %i.n = add nsw i32 %i.m, %i.f                   ; 2 uses
  %i.o = sext i32 %i.k to i64
  %i.p = getelementptr [8 x i8], ptr @_ZZN3fmt3v126detail9dragonbox14cache_accessorIfE16get_cached_powerEiE18pow10_significands, i64 %i.o
  %i.q = getelementptr i8, ptr %i.p, i64 248
  %i.r = load i64, ptr %i.q, align 8, !tbaa !97   ; 5 uses
  %i.s = lshr i64 %i.r, 25
  %i.t = sub nuw i64 %i.r, %i.s
  %i.u = sub nsw i32 40, %i.n
  %i.v = zext nneg i32 %i.u to i64                ; 2 uses
  %i.w = lshr i64 %i.t, %i.v
  %i.x = trunc i64 %i.w to i32
  %i.y = lshr i64 %i.r, 24
  %i.z = add i64 %i.y, %i.r
  %i.aa = lshr i64 %i.z, %i.v
  %i.ab = trunc i64 %i.aa to i32                  ; 2 uses
  %i.ac = and i32 %i.f, -2
  %i.ad = icmp ne i32 %i.ac, 2
  %i.ae = zext i1 %i.ad to i32
  %spec.select.i = add i32 %i.x, %i.ae            ; 2 uses
  %i.af = udiv i32 %i.ab, 10                      ; 2 uses
  %i.ag = mul nuw i32 %i.af, 10
  %.not.i = icmp ult i32 %i.ag, %spec.select.i
  br i1 %.not.i, label %bb.h, label %bb.c

bb.c:                                             ; preds = %_ZN3fmt3v126detail9dragonbox37floor_log10_pow2_minus_log10_4_over_3Ei.exit
  %.not.i54 = icmp ult i32 %i.ab, 10
  br i1 %.not.i54, label %bb.d, label %.preheader136

bb.d:                                             ; preds = %bb.c
  %i.ah = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 4 uses
  invoke void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull @.str.5)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17assertion_failure, i64 16), ptr %i.ah, align 8, !tbaa !45
  invoke void @__cxa_throw(ptr nonnull %i.ah, ptr nonnull @_ZTI17assertion_failure, ptr nonnull @_ZNSt11logic_errorD2Ev) #32
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  tail call void @__cxa_free_exception(ptr nonnull %i.ah) #30
  br label %.body

.preheader136:                                    ; preds = %bb.c, %.preheader136
  %.sroa.0107.1 = phi i32 [ %i.ak, %.preheader136 ], [ %i.af, %bb.c ] ; 3 uses
  %.012.i = phi i32 [ %i.am, %.preheader136 ], [ 0, %bb.c ] ; 2 uses
  %i.aj = mul i32 %.sroa.0107.1, -1030792151      ; 2 uses
  %i.ak = tail call i32 @llvm.fshl.i32(i32 %i.aj, i32 %i.aj, i32 30) ; 2 uses
  %i.al = icmp ugt i32 %i.ak, 42949672
  %i.am = add nuw nsw i32 %.012.i, 2
  br i1 %i.al, label %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERji.exit, label %.preheader136

_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERji.exit: ; preds = %.preheader136
  %i.an = mul i32 %.sroa.0107.1, -858993459       ; 2 uses
  %i.ao = tail call i32 @llvm.fshl.i32(i32 %i.an, i32 %i.an, i32 31) ; 2 uses
  %.not15.i = icmp ult i32 %i.ao, 429496730       ; 2 uses
  %spec.select = select i1 %.not15.i, i32 %i.ao, i32 %.sroa.0107.1
  %i.ap = zext i1 %.not15.i to i32
  %spec.select130 = add nsw i32 %i.j, 1
  %i.aq = add i32 %spec.select130, %.012.i
  %i.ar = add i32 %i.aq, %i.ap
  br label %_ZN3fmt3v126detail9dragonbox21shorter_interval_caseIfEENS2_10decimal_fpIT_EEi.exit

bb.g:                                             ; preds = %bb.e
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.f, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.as, %bb.g ], [ %i.ai, %bb.f ]
  %i.at = extractvalue { ptr, i32 } %eh.lpad-body, 0
  tail call void @__clang_call_terminate(ptr %i.at) #33
  unreachable

bb.h:                                             ; preds = %_ZN3fmt3v126detail9dragonbox37floor_log10_pow2_minus_log10_4_over_3Ei.exit
  %i.au = sub nsw i32 39, %i.n
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = lshr i64 %i.r, %i.av
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = add i32 %i.ax, 1
  %i.az = lshr i32 %i.ay, 1                       ; 3 uses
  %or.cond.i = icmp eq i32 %i.f, -35
  br i1 %or.cond.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ba = and i32 %i.az, 2147483646
  br label %_ZN3fmt3v126detail9dragonbox21shorter_interval_caseIfEENS2_10decimal_fpIT_EEi.exit

bb.j:                                             ; preds = %bb.h
  %i.bb = icmp ult i32 %i.az, %spec.select.i
  %i.bc = zext i1 %i.bb to i32
  %spec.select131 = add nuw i32 %i.az, %i.bc
  br label %_ZN3fmt3v126detail9dragonbox21shorter_interval_caseIfEENS2_10decimal_fpIT_EEi.exit

bb.k:                                             ; preds = %bb.a
  %i.bd = icmp eq i32 %i.c, 0
  br i1 %i.bd, label %_ZN3fmt3v126detail9dragonbox21shorter_interval_caseIfEENS2_10decimal_fpIT_EEi.exit, label %_ZN3fmt3v126detail9dragonbox16floor_log10_pow2Ei.exit

bb.l:                                             ; preds = %bb.b
  %i.be = or disjoint i32 %i.c, 8388608
  br label %_ZN3fmt3v126detail9dragonbox16floor_log10_pow2Ei.exit

_ZN3fmt3v126detail9dragonbox16floor_log10_pow2Ei.exit: ; preds = %bb.k, %bb.l
  %.041123 = phi i32 [ %i.f, %bb.l ], [ -149, %bb.k ] ; 2 uses
  %.042122 = phi i32 [ %i.be, %bb.l ], [ %i.c, %bb.k ] ; 3 uses
  %i.bf = mul nsw i32 %.041123, 315653
  %i.bg = ashr i32 %i.bf, 20                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.bh = sub nsw i32 1, %i.bg                    ; 2 uses
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr [8 x i8], ptr @_ZZN3fmt3v126detail9dragonbox14cache_accessorIfE16get_cached_powerEiE18pow10_significands, i64 %i.bi
  %i.bk = getelementptr i8, ptr %i.bj, i64 248
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !97 ; 3 uses
  store i64 %i.bl, ptr %i.a, align 8, !tbaa !97
  %i.bm = mul nsw i32 %i.bh, 1741647
  %i.bn = ashr i32 %i.bm, 19
  %i.bo = add nsw i32 %i.bn, %.041123             ; 4 uses
  %i.bp = sub nsw i32 63, %i.bo
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = lshr i64 %i.bl, %i.bq
  %i.bs = trunc i64 %i.br to i32                  ; 3 uses
  %i.bt = shl nuw nsw i32 %.042122, 1             ; 3 uses
  %i.bu = or disjoint i32 %i.bt, 1
  %i.bv = shl i32 %i.bu, %i.bo
  %i.bw = zext i32 %i.bv to i64
  %i.bx = shl nuw i64 %i.bw, 32
  %1 = tail call noundef i64 @llvm.umulh.i64(i64 %i.bx, i64 %i.bl) ; 2 uses
  %i.by = lshr i64 %1, 32                         ; 2 uses
  %i.bz = and i64 %1, 4294967295
  %i.ca = icmp ne i64 %i.bz, 0
  %.sroa.08.0.extract.trunc = trunc nuw i64 %i.by to i32
  %i.cb = mul nuw nsw i64 %i.by, 1374389535
  %i.cc = lshr i64 %i.cb, 37                      ; 2 uses
  %i.cd = trunc nuw nsw i64 %i.cc to i32          ; 5 uses
  %.neg = mul i32 %i.cd, -100
  %i.ce = add i32 %.neg, %.sroa.08.0.extract.trunc ; 5 uses
  %i.cf = icmp ult i32 %i.ce, %i.bs
  br i1 %i.cf, label %bb.m, label %bb.p

bb.m:                                             ; preds = %_ZN3fmt3v126detail9dragonbox16floor_log10_pow2Ei.exit
  %i.cg = icmp eq i32 %i.ce, 0
  br i1 %i.cg, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.ch = and i32 %.042122, 1
  %.not50135 = icmp eq i32 %i.ch, 0
  %.not50 = select i1 %i.ca, i1 true, i1 %.not50135
  br i1 %.not50, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ci = add nsw i32 %i.cd, -1
  br label %bb.w

bb.p:                                             ; preds = %_ZN3fmt3v126detail9dragonbox16floor_log10_pow2Ei.exit
  %i.cj = icmp ugt i32 %i.ce, %i.bs
  br i1 %i.cj, label %bb.w, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ck = add nsw i32 %i.bt, -1
  %i.cl = call i16 @_ZN3fmt3v126detail9dragonbox14cache_accessorIfE18compute_mul_parityEjRKmi(i32 noundef %i.ck, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef %i.bo) #30 ; 2 uses
  %i.cm = and i16 %i.cl, 1
  %i.cn = zext nneg i16 %i.cm to i32
  %i.co = lshr i16 %i.cl, 8
  %.lobit = and i16 %i.co, 1
  %i.cp = zext nneg i16 %.lobit to i32
  %i.cq = xor i32 %.042122, -1
  %i.cr = and i32 %i.cp, %i.cq
  %i.cs = or i32 %i.cr, %i.cn
  %.not48 = icmp eq i32 %i.cs, 0
  br i1 %.not48, label %bb.w, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.m, %bb.n
  %.not.i55 = icmp eq i64 %i.cc, 0
  br i1 %.not.i55, label %bb.s, label %.preheader

bb.s:                                             ; preds = %bb.r
  %i.ct = call ptr @__cxa_allocate_exception(i64 16) #30 ; 4 uses
  invoke void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ct, ptr noundef nonnull @.str.5)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17assertion_failure, i64 16), ptr %i.ct, align 8, !tbaa !45
  invoke void @__cxa_throw(ptr nonnull %i.ct, ptr nonnull @_ZTI17assertion_failure, ptr nonnull @_ZNSt11logic_errorD2Ev) #32
          to label %.noexc85 unwind label %bb.v

.noexc85:                                         ; preds = %bb.t
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.cu = landingpad { ptr, i32 }
          catch ptr null
  call void @__cxa_free_exception(ptr nonnull %i.ct) #30
  br label %.body86

.preheader:                                       ; preds = %bb.r, %.preheader
  %.sroa.0.4 = phi i32 [ %i.cw, %.preheader ], [ %i.cd, %bb.r ] ; 3 uses
  %.012.i56 = phi i32 [ %i.cy, %.preheader ], [ 0, %bb.r ] ; 2 uses
  %i.cv = mul i32 %.sroa.0.4, -1030792151         ; 2 uses
  %i.cw = call i32 @llvm.fshl.i32(i32 %i.cv, i32 %i.cv, i32 30) ; 2 uses
  %i.cx = icmp ugt i32 %i.cw, 42949672
  %i.cy = add nuw nsw i32 %.012.i56, 2
  br i1 %i.cx, label %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERji.exit61, label %.preheader

_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERji.exit61: ; preds = %.preheader
  %i.cz = mul i32 %.sroa.0.4, -858993459          ; 2 uses
  %i.da = call i32 @llvm.fshl.i32(i32 %i.cz, i32 %i.cz, i32 31) ; 2 uses
  %.not15.i59 = icmp ult i32 %i.da, 429496730     ; 2 uses
  %spec.select132 = select i1 %.not15.i59, i32 %i.da, i32 %.sroa.0.4
  %i.db = zext i1 %.not15.i59 to i32
  %spec.select133 = add nsw i32 %i.bg, 1
  %i.dc = add i32 %spec.select133, %.012.i56
  %i.dd = add i32 %i.dc, %i.db
  br label %bb.ae

bb.v:                                             ; preds = %bb.t
  %i.de = landingpad { ptr, i32 }
          catch ptr null
  br label %.body86

.body86:                                          ; preds = %bb.u, %bb.v
  %eh.lpad-body87 = phi { ptr, i32 } [ %i.de, %bb.v ], [ %i.cu, %bb.u ]
  %i.df = extractvalue { ptr, i32 } %eh.lpad-body87, 0
  call void @__clang_call_terminate(ptr %i.df) #33
  unreachable

bb.w:                                             ; preds = %bb.q, %bb.p, %bb.o
  %.sroa.0.0 = phi i32 [ %i.ci, %bb.o ], [ %i.cd, %bb.p ], [ %i.cd, %bb.q ]
  %.0 = phi i32 [ 100, %bb.o ], [ %i.ce, %bb.p ], [ %i.ce, %bb.q ]
  %i.dg = lshr i32 %i.bs, 1
  %i.dh = sub i32 %.0, %i.dg                      ; 2 uses
  %i.di = add i32 %i.dh, 5                        ; 2 uses
  %i.dj = icmp ult i32 %i.di, 101
  br i1 %i.dj, label %_ZN3fmt3v126detail9dragonbox38check_divisibility_and_divide_by_pow10ILi1EEEbRj.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dk = call ptr @__cxa_allocate_exception(i64 16) #30 ; 4 uses
  invoke void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.dk, ptr noundef nonnull @.str.205)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %bb.x
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17assertion_failure, i64 16), ptr %i.dk, align 8, !tbaa !45
  invoke void @__cxa_throw(ptr nonnull %i.dk, ptr nonnull @_ZTI17assertion_failure, ptr nonnull @_ZNSt11logic_errorD2Ev) #32
          to label %.noexc.i91 unwind label %bb.aa

.noexc.i91:                                       ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.dl = landingpad { ptr, i32 }
          catch ptr null
  call void @__cxa_free_exception(ptr nonnull %i.dk) #30
  br label %.body.i89

bb.aa:                                            ; preds = %bb.y
  %i.dm = landingpad { ptr, i32 }
          catch ptr null
  br label %.body.i89

.body.i89:                                        ; preds = %bb.aa, %bb.z
  %eh.lpad-body.i90 = phi { ptr, i32 } [ %i.dm, %bb.aa ], [ %i.dl, %bb.z ]
  %i.dn = extractvalue { ptr, i32 } %eh.lpad-body.i90, 0
  call void @__clang_call_terminate(ptr %i.dn) #33
  unreachable

_ZN3fmt3v126detail9dragonbox38check_divisibility_and_divide_by_pow10ILi1EEEbRj.exit: ; preds = %bb.w
  %i.do = mul nsw i32 %.sroa.0.0, 10
  %i.dp = mul nuw nsw i32 %i.di, 6554             ; 2 uses
  %i.dq = and i32 %i.dp, 65534
  %i.dr = icmp samesign ult i32 %i.dq, 6554
  %i.ds = lshr i32 %i.dp, 16                      ; 2 uses
  %i.dt = add nsw i32 %i.ds, %i.do                ; 3 uses
  br i1 %i.dr, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %_ZN3fmt3v126detail9dragonbox38check_divisibility_and_divide_by_pow10ILi1EEEbRj.exit
  %i.du = call i16 @_ZN3fmt3v126detail9dragonbox14cache_accessorIfE18compute_mul_parityEjRKmi(i32 noundef %i.bt, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef %i.bo) #30 ; 2 uses
  %i.dv = and i16 %i.du, 1
  %i.dw = zext nneg i16 %i.dv to i32
  %i.dx = and i32 %i.dh, 1
  %.not51 = icmp eq i32 %i.dx, %i.dw
  br i1 %.not51, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dy = add nsw i32 %i.dt, -1
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.dz = lshr i16 %i.du, 8
  %i.ea = zext nneg i16 %i.dz to i32
  %i.eb = and i32 %i.ds, 1
  %i.ec = and i32 %i.eb, %i.ea
  %spec.select134 = sub nsw i32 %i.dt, %i.ec
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %_ZN3fmt3v126detail9dragonbox38check_divisibility_and_divide_by_pow10ILi1EEEbRj.exit, %bb.ac, %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERji.exit61
  %.sroa.18.0 = phi i32 [ %i.dd, %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERji.exit61 ], [ %i.bg, %bb.ac ], [ %i.bg, %_ZN3fmt3v126detail9dragonbox38check_divisibility_and_divide_by_pow10ILi1EEEbRj.exit ], [ %i.bg, %bb.ad ]
  %.sroa.0.2 = phi i32 [ %spec.select132, %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERji.exit61 ], [ %i.dy, %bb.ac ], [ %i.dt, %_ZN3fmt3v126detail9dragonbox38check_divisibility_and_divide_by_pow10ILi1EEEbRj.exit ], [ %spec.select134, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %_ZN3fmt3v126detail9dragonbox21shorter_interval_caseIfEENS2_10decimal_fpIT_EEi.exit

_ZN3fmt3v126detail9dragonbox21shorter_interval_caseIfEENS2_10decimal_fpIT_EEi.exit: ; preds = %bb.i, %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERji.exit, %bb.j, %bb.k, %bb.ae
  %.sroa.18.1 = phi i32 [ 0, %bb.k ], [ %.sroa.18.0, %bb.ae ], [ %i.j, %bb.i ], [ %i.ar, %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERji.exit ], [ %i.j, %bb.j ]
  %.sroa.0.3 = phi i32 [ 0, %bb.k ], [ %.sroa.0.2, %bb.ae ], [ %i.ba, %bb.i ], [ %spec.select, %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERji.exit ], [ %spec.select131, %bb.j ]
  %.sroa.18.0.insert.ext = zext i32 %.sroa.18.1 to i64
  %.sroa.18.0.insert.shift = shl nuw i64 %.sroa.18.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %.sroa.0.3 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.18.0.insert.shift, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail11write_fixedIcNS1_23fallback_digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refE(ptr %0, ptr noundef nonnull align 4 dereferenceable(8) %1, i32 noundef %2, i8 noundef signext %3, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 noundef %5, i64 %6) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %7 = alloca %"class.fmt::v12::detail::fallback_digit_grouping", align 1 ; 3 uses
  %8 = alloca %class.anon.82, align 8             ; 10 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %9 = alloca %"class.fmt::v12::detail::fallback_digit_grouping", align 1 ; 3 uses
  %10 = alloca %class.anon.83, align 8            ; 10 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i8, align 1                       ; 6 uses
  %11 = alloca %class.anon.84, align 8            ; 9 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !87
  store i8 %3, ptr %i.b, align 1, !tbaa !71
  store i32 %5, ptr %i.c, align 4, !tbaa !182
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
end_hunk_0
begin_hunk_1_@_ZN3fmt3v126detail9dragonbox10to_decimalIdEENS2_10decimal_fpIT_EES5_:bb.a
  %1 = alloca %"class.fmt::v12::detail::uint128", align 8 ; 6 uses
  %i.a = bitcast double %0 to i64                 ; 3 uses
  %i.b = and i64 %i.a, 4503599627370495           ; 4 uses
  %i.c = lshr i64 %i.a, 52
  %i.d = trunc nuw nsw i64 %i.c to i32
  %i.e = and i32 %i.d, 2047                       ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i32 %i.e, -1075                  ; 5 uses
  %i.g = icmp eq i64 %i.b, 0
  br i1 %i.g, label %_ZN3fmt3v126detail9dragonbox37floor_log10_pow2_minus_log10_4_over_3Ei.exit, label %bb.r

_ZN3fmt3v126detail9dragonbox37floor_log10_pow2_minus_log10_4_over_3Ei.exit: ; preds = %bb.b
  %i.h = mul nsw i32 %i.f, 631305
  %i.i = add nsw i32 %i.h, -261663
  %i.j = ashr i32 %i.i, 21                        ; 5 uses
  %i.k = sub nsw i32 0, %i.j
  %i.l = mul nsw i32 %i.j, -1741647
  %i.m = ashr i32 %i.l, 19
  %i.n = add nsw i32 %i.m, %i.f                   ; 2 uses
  %i.o = sext i32 %i.k to i64
  %i.p = getelementptr [16 x i8], ptr @_ZZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEiE18pow10_significands, i64 %i.o
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.p, i64 4680
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !97 ; 5 uses
  %i.q = lshr i64 %.sroa.2.0.copyload.i, 54
  %i.r = sub nuw i64 %.sroa.2.0.copyload.i, %i.q
  %i.s = sub nsw i32 11, %i.n
  %i.t = zext nneg i32 %i.s to i64                ; 2 uses
  %i.u = lshr i64 %i.r, %i.t
  %i.v = lshr i64 %.sroa.2.0.copyload.i, 53
  %i.w = add i64 %i.v, %.sroa.2.0.copyload.i
  %i.x = lshr i64 %i.w, %i.t                      ; 3 uses
  %i.y = and i32 %i.f, -2
  %i.z = icmp ne i32 %i.y, 2
  %i.aa = zext i1 %i.z to i64
  %spec.select.i = add i64 %i.u, %i.aa            ; 2 uses
  %i.ab = udiv i64 %i.x, 10                       ; 3 uses
  %i.ac = mul nuw i64 %i.ab, 10
  %.not.i = icmp ult i64 %i.ac, %spec.select.i
  br i1 %.not.i, label %bb.n, label %bb.c

bb.c:                                             ; preds = %_ZN3fmt3v126detail9dragonbox37floor_log10_pow2_minus_log10_4_over_3Ei.exit
  %i.ad = add nsw i32 %i.j, 1
  %.not.i53 = icmp ult i64 %i.x, 10
  br i1 %.not.i53, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.ae = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 4 uses
  invoke void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull @.str.5)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17assertion_failure, i64 16), ptr %i.ae, align 8, !tbaa !45
  invoke void @__cxa_throw(ptr nonnull %i.ae, ptr nonnull @_ZTI17assertion_failure, ptr nonnull @_ZNSt11logic_errorD2Ev) #32
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  tail call void @__cxa_free_exception(ptr nonnull %i.ae) #30
  br label %.body

bb.g:                                             ; preds = %bb.c
  %i.ag = urem i64 %i.ab, 100000000
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.h, label %.preheader195

bb.h:                                             ; preds = %bb.g
  %i.ai = udiv i64 %i.x, 1000000000
  %i.aj = trunc i64 %i.ai to i32                  ; 2 uses
  %.not.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i, label %bb.i, label %.preheader203

bb.i:                                             ; preds = %bb.h
  invoke void @_Z23throw_assertion_failurePKc(ptr noundef nonnull @.str.5)
          to label %.preheader203 unwind label %bb.k

.preheader203:                                    ; preds = %bb.i, %bb.h
  br label %bb.j

bb.j:                                             ; preds = %.preheader203, %bb.j
  %.0152 = phi i32 [ %i.al, %bb.j ], [ %i.aj, %.preheader203 ] ; 3 uses
  %.012.i.i = phi i32 [ %i.an, %bb.j ], [ 8, %.preheader203 ] ; 2 uses
  %i.ak = mul i32 %.0152, -1030792151             ; 2 uses
  %i.al = tail call i32 @llvm.fshl.i32(i32 %i.ak, i32 %i.ak, i32 30) ; 2 uses
  %i.am = icmp ugt i32 %i.al, 42949672
  %i.an = add nuw nsw i32 %.012.i.i, 2
  br i1 %i.am, label %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERji.exit.i, label %bb.j

_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERji.exit.i: ; preds = %bb.j
  %i.ao = mul i32 %.0152, -858993459              ; 2 uses
  %i.ap = tail call i32 @llvm.fshl.i32(i32 %i.ao, i32 %i.ao, i32 31) ; 2 uses
  %.not15.i.i = icmp ult i32 %i.ap, 429496730     ; 2 uses
  %spec.select = select i1 %.not15.i.i, i32 %i.ap, i32 %.0152
  %i.aq = zext i1 %.not15.i.i to i32
  %spec.select184 = or disjoint i32 %.012.i.i, %i.aq
  %i.ar = zext i32 %spec.select to i64
  br label %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERm.exit

bb.k:                                             ; preds = %bb.i
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  tail call void @__clang_call_terminate(ptr %i.at) #33
  unreachable

.preheader195:                                    ; preds = %bb.g, %.preheader195
  %.sroa.0134.1 = phi i64 [ %i.av, %.preheader195 ], [ %i.ab, %bb.g ] ; 5 uses
  %.0.i = phi i32 [ %i.ax, %.preheader195 ], [ 0, %bb.g ] ; 2 uses
  %i.au = mul i64 %.sroa.0134.1, -8116567392432202711
  %i.av = tail call i64 @llvm.fshl.i64(i64 %.sroa.0134.1, i64 %i.au, i64 62) ; 2 uses
  %i.aw = icmp ugt i64 %i.av, 184467440737095516
  %i.ax = add nuw nsw i32 %.0.i, 2
  br i1 %i.aw, label %bb.l, label %.preheader195

bb.l:                                             ; preds = %.preheader195
  %i.ay = mul i64 %.sroa.0134.1, -3689348814741910323
  %i.az = tail call i64 @llvm.fshl.i64(i64 %.sroa.0134.1, i64 %i.ay, i64 63) ; 2 uses
  %.not21.i = icmp ult i64 %i.az, 1844674407370955162 ; 2 uses
  %spec.select185 = select i1 %.not21.i, i64 %i.az, i64 %.sroa.0134.1
  %i.ba = zext i1 %.not21.i to i32
  %spec.select186 = or disjoint i32 %.0.i, %i.ba
  br label %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERm.exit

bb.m:                                             ; preds = %bb.e
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.f, %bb.m
  %eh.lpad-body = phi { ptr, i32 } [ %i.bb, %bb.m ], [ %i.af, %bb.f ]
  %i.bc = extractvalue { ptr, i32 } %eh.lpad-body, 0
  tail call void @__clang_call_terminate(ptr %i.bc) #33
  unreachable

_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERm.exit: ; preds = %bb.l, %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERji.exit.i
  %.sroa.0134.3 = phi i64 [ %i.ar, %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERji.exit.i ], [ %spec.select185, %bb.l ]
  %.018.i = phi i32 [ %spec.select184, %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERji.exit.i ], [ %spec.select186, %bb.l ]
  %i.bd = add nsw i32 %i.ad, %.018.i
  br label %_ZN3fmt3v126detail9dragonbox21shorter_interval_caseIdEENS2_10decimal_fpIT_EEi.exit

bb.n:                                             ; preds = %_ZN3fmt3v126detail9dragonbox37floor_log10_pow2_minus_log10_4_over_3Ei.exit
  %i.be = sub nsw i32 10, %i.n
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = lshr i64 %.sroa.2.0.copyload.i, %i.bf
  %i.bh = add i64 %i.bg, 1
  %i.bi = lshr i64 %i.bh, 1                       ; 3 uses
  %or.cond.i = icmp eq i32 %i.f, -77
  br i1 %or.cond.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bj = and i64 %i.bi, 9223372036854775806
  br label %_ZN3fmt3v126detail9dragonbox21shorter_interval_caseIdEENS2_10decimal_fpIT_EEi.exit

bb.p:                                             ; preds = %bb.n
  %i.bk = icmp ult i64 %i.bi, %spec.select.i
  %i.bl = zext i1 %i.bk to i64
  %spec.select187 = add nuw i64 %i.bi, %i.bl
  br label %_ZN3fmt3v126detail9dragonbox21shorter_interval_caseIdEENS2_10decimal_fpIT_EEi.exit

bb.q:                                             ; preds = %bb.a
  %i.bm = icmp eq i64 %i.b, 0
  br i1 %i.bm, label %_ZN3fmt3v126detail9dragonbox21shorter_interval_caseIdEENS2_10decimal_fpIT_EEi.exit, label %_ZN3fmt3v126detail9dragonbox16floor_log10_pow2Ei.exit

bb.r:                                             ; preds = %bb.b
  %i.bn = or disjoint i64 %i.b, 4503599627370496
  br label %_ZN3fmt3v126detail9dragonbox16floor_log10_pow2Ei.exit

_ZN3fmt3v126detail9dragonbox16floor_log10_pow2Ei.exit: ; preds = %bb.q, %bb.r
  %.041171 = phi i32 [ %i.f, %bb.r ], [ -1074, %bb.q ] ; 2 uses
  %.042170 = phi i64 [ %i.bn, %bb.r ], [ %i.b, %bb.q ]
  %i.bo = trunc i64 %i.a to i32                   ; 2 uses
  %i.bp = mul nsw i32 %.041171, 315653
  %i.bq = ashr i32 %i.bp, 20                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  %i.br = sub nsw i32 2, %i.bq                    ; 2 uses
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr [16 x i8], ptr @_ZZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEiE18pow10_significands, i64 %i.bs ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bt, i64 4672
  %.sroa.0.0.copyload.i87 = load i64, ptr %i.bu, align 16, !tbaa !97 ; 2 uses
  %.sroa.2.0..sroa_idx.i88 = getelementptr i8, ptr %i.bt, i64 4680
  %.sroa.2.0.copyload.i89 = load i64, ptr %.sroa.2.0..sroa_idx.i88, align 8, !tbaa !97 ; 3 uses
  store i64 %.sroa.0.0.copyload.i87, ptr %1, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %.sroa.2.0.copyload.i89, ptr %i.bv, align 8
  %i.bw = mul nsw i32 %i.br, 1741647
  %i.bx = ashr i32 %i.bw, 19
  %i.by = add nsw i32 %i.bx, %.041171             ; 4 uses
  %i.bz = sub nsw i32 63, %i.by
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = lshr i64 %.sroa.2.0.copyload.i89, %i.ca
  %i.cc = trunc i64 %i.cb to i32                  ; 3 uses
  %i.cd = shl nuw nsw i64 %.042170, 1             ; 3 uses
  %i.ce = or disjoint i64 %i.cd, 1
  %i.cf = zext nneg i32 %i.by to i64
  %i.cg = shl i64 %i.ce, %i.cf                    ; 2 uses
  %i.ch = zext i64 %i.cg to i128
  %i.ci = zext i64 %.sroa.2.0.copyload.i89 to i128
  %i.cj = mul nuw i128 %i.ch, %i.ci               ; 2 uses
  %i.ck = lshr i128 %i.cj, 64
  %i.cl = trunc nuw i128 %i.ck to i64
  %i.cm = trunc i128 %i.cj to i64
  %2 = tail call noundef i64 @llvm.umulh.i64(i64 %i.cg, i64 %.sroa.0.0.copyload.i87)
  %i.cn = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.cm, i64 %2) ; 2 uses
  %i.co = extractvalue { i64, i1 } %i.cn, 1
  %i.cp = extractvalue { i64, i1 } %i.cn, 0
  %i.cq = zext i1 %i.co to i64
  %i.cr = add nuw i64 %i.cq, %i.cl                ; 2 uses
  %i.cs = icmp ne i64 %i.cp, 0
  %3 = tail call noundef i64 @llvm.umulh.i64(i64 %i.cr, i64 2361183241434822607) ; 3 uses
  %4 = lshr i64 %3, 7                             ; 7 uses
  %.neg = mul i64 %4, 4294966296
  %i.ct = add i64 %.neg, %i.cr
  %i.cu = trunc i64 %i.ct to i32                  ; 5 uses
  %i.cv = icmp ugt i32 %i.cc, %i.cu
  br i1 %i.cv, label %bb.s, label %bb.v

bb.s:                                             ; preds = %_ZN3fmt3v126detail9dragonbox16floor_log10_pow2Ei.exit
  %i.cw = icmp eq i32 %i.cu, 0
  br i1 %i.cw, label %bb.t, label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.cx = and i32 %i.bo, 1
  %.not49193 = icmp eq i32 %i.cx, 0
  %.not49 = or i1 %.not49193, %i.cs
  br i1 %.not49, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cy = add nsw i64 %4, -1
  br label %bb.aj

bb.v:                                             ; preds = %_ZN3fmt3v126detail9dragonbox16floor_log10_pow2Ei.exit
  %i.cz = icmp ult i32 %i.cc, %i.cu
  br i1 %i.cz, label %bb.aj, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.da = add nsw i64 %i.cd, -1
  %i.db = call i16 @_ZN3fmt3v126detail9dragonbox14cache_accessorIdE18compute_mul_parityEmRKNS1_7uint128Ei(i64 noundef %i.da, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.by) #30 ; 2 uses
  %i.dc = and i16 %i.db, 1
  %i.dd = zext nneg i16 %i.dc to i32
  %i.de = lshr i16 %i.db, 8
  %.lobit = and i16 %i.de, 1
  %i.df = zext nneg i16 %.lobit to i32
  %i.dg = xor i32 %i.bo, -1
  %i.dh = and i32 %i.df, %i.dg
  %i.di = or i32 %i.dh, %i.dd
  %.not48 = icmp eq i32 %i.di, 0
  br i1 %.not48, label %bb.aj, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.s, %bb.t
  %i.dj = add nsw i32 %i.bq, 1
  %.not.i54 = icmp eq i64 %4, 0
  br i1 %.not.i54, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.dk = call ptr @__cxa_allocate_exception(i64 16) #30 ; 4 uses
  invoke void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.dk, ptr noundef nonnull @.str.5)
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %bb.y
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17assertion_failure, i64 16), ptr %i.dk, align 8, !tbaa !45
  invoke void @__cxa_throw(ptr nonnull %i.dk, ptr nonnull @_ZTI17assertion_failure, ptr nonnull @_ZNSt11logic_errorD2Ev) #32
          to label %.noexc103 unwind label %bb.ai

.noexc103:                                        ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.dl = landingpad { ptr, i32 }
          catch ptr null
  call void @__cxa_free_exception(ptr nonnull %i.dk) #30
  br label %.body104

bb.ab:                                            ; preds = %bb.x
  %i.dm = urem i64 %4, 100000000
  %i.dn = icmp eq i64 %i.dm, 0
  br i1 %i.dn, label %bb.ac, label %.preheader194

bb.ac:                                            ; preds = %bb.ab
  %.not.i.i60 = icmp samesign ult i64 %3, 12800000000
  br i1 %.not.i.i60, label %bb.ad, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.ac
  %5 = udiv i64 %3, 12800000000
  %i.do = trunc nuw nsw i64 %5 to i32
  br label %.preheader

bb.ad:                                            ; preds = %bb.ac
  %i.dp = call ptr @__cxa_allocate_exception(i64 16) #30 ; 4 uses
  invoke void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.dp, ptr noundef nonnull @.str.5)
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17assertion_failure, i64 16), ptr %i.dp, align 8, !tbaa !45
  invoke void @__cxa_throw(ptr nonnull %i.dp, ptr nonnull @_ZTI17assertion_failure, ptr nonnull @_ZNSt11logic_errorD2Ev) #32
          to label %.noexc107 unwind label %bb.ag

.noexc107:                                        ; preds = %bb.ae
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.dq = landingpad { ptr, i32 }
          catch ptr null
  call void @__cxa_free_exception(ptr nonnull %i.dp) #30
  br label %.body108

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %.0151 = phi i32 [ %i.ds, %.preheader ], [ %i.do, %.preheader.preheader ] ; 3 uses
  %.012.i.i61 = phi i32 [ %i.du, %.preheader ], [ 8, %.preheader.preheader ] ; 2 uses
  %i.dr = mul i32 %.0151, -1030792151             ; 2 uses
  %i.ds = call i32 @llvm.fshl.i32(i32 %i.dr, i32 %i.dr, i32 30) ; 2 uses
  %i.dt = icmp ugt i32 %i.ds, 42949672
  %i.du = add nuw nsw i32 %.012.i.i61, 2
  br i1 %i.dt, label %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERji.exit.i65, label %.preheader

_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERji.exit.i65: ; preds = %.preheader
  %i.dv = mul i32 %.0151, -858993459              ; 2 uses
  %i.dw = call i32 @llvm.fshl.i32(i32 %i.dv, i32 %i.dv, i32 31) ; 2 uses
  %.not15.i.i64 = icmp ult i32 %i.dw, 429496730   ; 2 uses
  %spec.select188 = select i1 %.not15.i.i64, i32 %i.dw, i32 %.0151
  %i.dx = zext i1 %.not15.i.i64 to i32
  %spec.select189 = or disjoint i32 %.012.i.i61, %i.dx
  %i.dy = zext nneg i32 %spec.select188 to i64
  br label %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERm.exit67

bb.ag:                                            ; preds = %bb.ae
  %i.dz = landingpad { ptr, i32 }
          catch ptr null
  br label %.body108

.body108:                                         ; preds = %bb.af, %bb.ag
  %eh.lpad-body109 = phi { ptr, i32 } [ %i.dz, %bb.ag ], [ %i.dq, %bb.af ]
  %i.ea = extractvalue { ptr, i32 } %eh.lpad-body109, 0
  call void @__clang_call_terminate(ptr %i.ea) #33
  unreachable

.preheader194:                                    ; preds = %bb.ab, %.preheader194
  %.sroa.0.4 = phi i64 [ %i.ec, %.preheader194 ], [ %4, %bb.ab ] ; 5 uses
  %.0.i55 = phi i32 [ %i.ee, %.preheader194 ], [ 0, %bb.ab ] ; 2 uses
  %i.eb = mul i64 %.sroa.0.4, -8116567392432202711
  %i.ec = call i64 @llvm.fshl.i64(i64 %.sroa.0.4, i64 %i.eb, i64 62) ; 2 uses
  %i.ed = icmp ugt i64 %i.ec, 184467440737095516
  %i.ee = add nuw nsw i32 %.0.i55, 2
  br i1 %i.ed, label %bb.ah, label %.preheader194

bb.ah:                                            ; preds = %.preheader194
  %i.ef = mul i64 %.sroa.0.4, -3689348814741910323
  %i.eg = call i64 @llvm.fshl.i64(i64 %.sroa.0.4, i64 %i.ef, i64 63) ; 2 uses
  %.not21.i58 = icmp ult i64 %i.eg, 1844674407370955162 ; 2 uses
  %spec.select190 = select i1 %.not21.i58, i64 %i.eg, i64 %.sroa.0.4
  %i.eh = zext i1 %.not21.i58 to i32
  %spec.select191 = or disjoint i32 %.0.i55, %i.eh
  br label %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERm.exit67

bb.ai:                                            ; preds = %bb.z
  %i.ei = landingpad { ptr, i32 }
          catch ptr null
  br label %.body104

.body104:                                         ; preds = %bb.aa, %bb.ai
  %eh.lpad-body105 = phi { ptr, i32 } [ %i.ei, %bb.ai ], [ %i.dl, %bb.aa ]
  %i.ej = extractvalue { ptr, i32 } %eh.lpad-body105, 0
  call void @__clang_call_terminate(ptr %i.ej) #33
  unreachable

_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERm.exit67: ; preds = %bb.ah, %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERji.exit.i65
  %.sroa.0.6 = phi i64 [ %i.dy, %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERji.exit.i65 ], [ %spec.select190, %bb.ah ]
  %.018.i59 = phi i32 [ %spec.select189, %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERji.exit.i65 ], [ %spec.select191, %bb.ah ]
  %i.ek = add nsw i32 %i.dj, %.018.i59
  br label %bb.ar

bb.aj:                                            ; preds = %bb.w, %bb.v, %bb.u
  %.sroa.0.0 = phi i64 [ %i.cy, %bb.u ], [ %4, %bb.v ], [ %4, %bb.w ]
  %.0 = phi i32 [ 1000, %bb.u ], [ %i.cu, %bb.v ], [ %i.cu, %bb.w ]
  %i.el = lshr i32 %i.cc, 1
  %i.em = sub i32 %.0, %i.el                      ; 2 uses
  %i.en = add i32 %i.em, 50                       ; 2 uses
  %i.eo = icmp ult i32 %i.en, 1001
  br i1 %i.eo, label %_ZN3fmt3v126detail9dragonbox38check_divisibility_and_divide_by_pow10ILi2EEEbRj.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ep = call ptr @__cxa_allocate_exception(i64 16) #30 ; 4 uses
  invoke void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ep, ptr noundef nonnull @.str.205)
          to label %bb.al unwind label %bb.am

bb.al:                                            ; preds = %bb.ak
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17assertion_failure, i64 16), ptr %i.ep, align 8, !tbaa !45
  invoke void @__cxa_throw(ptr nonnull %i.ep, ptr nonnull @_ZTI17assertion_failure, ptr nonnull @_ZNSt11logic_errorD2Ev) #32
          to label %.noexc.i113 unwind label %bb.an

.noexc.i113:                                      ; preds = %bb.al
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.eq = landingpad { ptr, i32 }
          catch ptr null
  call void @__cxa_free_exception(ptr nonnull %i.ep) #30
  br label %.body.i111

bb.an:                                            ; preds = %bb.al
  %i.er = landingpad { ptr, i32 }
          catch ptr null
  br label %.body.i111

.body.i111:                                       ; preds = %bb.an, %bb.am
  %eh.lpad-body.i112 = phi { ptr, i32 } [ %i.er, %bb.an ], [ %i.eq, %bb.am ]
  %i.es = extractvalue { ptr, i32 } %eh.lpad-body.i112, 0
  call void @__clang_call_terminate(ptr %i.es) #33
  unreachable

_ZN3fmt3v126detail9dragonbox38check_divisibility_and_divide_by_pow10ILi2EEEbRj.exit: ; preds = %bb.aj
  %i.et = mul nsw i64 %.sroa.0.0, 10
  %i.eu = mul nuw nsw i32 %i.en, 656              ; 2 uses
  %i.ev = and i32 %i.eu, 65520
  %i.ew = icmp samesign ult i32 %i.ev, 656
  %i.ex = lshr i32 %i.eu, 16                      ; 2 uses
  %i.ey = zext nneg i32 %i.ex to i64
  %i.ez = add nsw i64 %i.et, %i.ey                ; 3 uses
  br i1 %i.ew, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %_ZN3fmt3v126detail9dragonbox38check_divisibility_and_divide_by_pow10ILi2EEEbRj.exit
  %i.fa = call i16 @_ZN3fmt3v126detail9dragonbox14cache_accessorIdE18compute_mul_parityEmRKNS1_7uint128Ei(i64 noundef %i.cd, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.by) #30 ; 2 uses
  %i.fb = and i16 %i.fa, 1
  %i.fc = zext nneg i16 %i.fb to i32
  %i.fd = and i32 %i.em, 1
  %.not50 = icmp eq i32 %i.fd, %i.fc
  br i1 %.not50, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fe = add nsw i64 %i.ez, -1
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %i.ff = lshr i16 %i.fa, 8
  %i.fg = zext nneg i16 %i.ff to i32
  %i.fh = and i32 %i.ex, 1
  %i.fi = and i32 %i.fh, %i.fg
  %sext = sub nsw i32 0, %i.fi
  %i.fj = sext i32 %sext to i64
  %spec.select192 = add nsw i64 %i.ez, %i.fj
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %_ZN3fmt3v126detail9dragonbox38check_divisibility_and_divide_by_pow10ILi2EEEbRj.exit, %bb.ap, %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERm.exit67
  %.sroa.21.0 = phi i32 [ %i.ek, %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERm.exit67 ], [ %i.bq, %bb.ap ], [ %i.bq, %_ZN3fmt3v126detail9dragonbox38check_divisibility_and_divide_by_pow10ILi2EEEbRj.exit ], [ %i.bq, %bb.aq ]
  %.sroa.0.2 = phi i64 [ %.sroa.0.6, %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERm.exit67 ], [ %i.fe, %bb.ap ], [ %i.ez, %_ZN3fmt3v126detail9dragonbox38check_divisibility_and_divide_by_pow10ILi2EEEbRj.exit ], [ %spec.select192, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %_ZN3fmt3v126detail9dragonbox21shorter_interval_caseIdEENS2_10decimal_fpIT_EEi.exit

_ZN3fmt3v126detail9dragonbox21shorter_interval_caseIdEENS2_10decimal_fpIT_EEi.exit: ; preds = %bb.o, %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERm.exit, %bb.p, %bb.q, %bb.ar
  %.sroa.21.1 = phi i32 [ 0, %bb.q ], [ %.sroa.21.0, %bb.ar ], [ %i.j, %bb.o ], [ %i.bd, %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERm.exit ], [ %i.j, %bb.p ]
  %.sroa.0.3 = phi i64 [ 0, %bb.q ], [ %.sroa.0.2, %bb.ar ], [ %i.bj, %bb.o ], [ %.sroa.0134.3, %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERm.exit ], [ %spec.select187, %bb.p ]
  %.fca.0.insert = insertvalue { i64, i32 } poison, i64 %.sroa.0.3, 0
  %.fca.1.insert = insertvalue { i64, i32 } %.fca.0.insert, i32 %.sroa.21.1, 1
  ret { i64, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail11write_fixedIcNS1_23fallback_digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refE(ptr %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2, i8 noundef signext %3, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 noundef %5, i64 %6) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %7 = alloca %"class.fmt::v12::detail::fallback_digit_grouping", align 1 ; 3 uses
  %8 = alloca %class.anon.86, align 8             ; 10 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %9 = alloca %"class.fmt::v12::detail::fallback_digit_grouping", align 1 ; 3 uses
  %10 = alloca %class.anon.87, align 8            ; 10 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i8, align 1                       ; 6 uses
  %11 = alloca %class.anon.88, align 8            ; 9 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !87
  store i8 %3, ptr %i.b, align 1, !tbaa !71
  store i32 %5, ptr %i.c, align 4, !tbaa !182
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !194  ; 3 uses
  %i.k = add nsw i32 %i.j, %2                     ; 4 uses
  store i32 %i.k, ptr %i.d, align 4, !tbaa !87
  %.not = icmp ne i32 %5, 0
  %i.l = zext i1 %.not to i32
  %i.m = add nsw i32 %2, %i.l
  %i.n = sext i32 %i.m to i64                     ; 3 uses
  %i.o = icmp sgt i32 %i.j, -1
  br i1 %i.o, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.p = zext nneg i32 %i.j to i64
  %i.q = add nsw i64 %i.p, %i.n                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #30
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !117
  %i.t = sub nsw i32 %i.s, %i.k                   ; 3 uses
  store i32 %i.t, ptr %i.e, align 4, !tbaa !87
  %i.u = load i32, ptr %4, align 4, !tbaa !110    ; 2 uses
  %i.v = and i32 %i.u, 8192
  %.not53 = icmp eq i32 %i.v, 0
  br i1 %.not53, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = add nsw i64 %i.q, 1                      ; 3 uses
  %i.x = icmp sgt i32 %i.t, 0                     ; 2 uses
  %i.y = and i32 %i.u, 7
  %.not41 = icmp eq i32 %i.y, 2
  %or.cond48 = or i1 %i.x, %.not41
  br i1 %or.cond48, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.c
  store i32 0, ptr %i.e, align 4, !tbaa !87
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = zext nneg i32 %i.t to i64
  %i.aa = add nsw i64 %i.w, %i.z
  br label %bb.f

bb.f:                                             ; preds = %.thread, %bb.d, %bb.e, %bb.b
  %.0 = phi i64 [ %i.aa, %bb.e ], [ %i.w, %bb.d ], [ %i.q, %bb.b ], [ %i.w, %.thread ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  store ptr %i.c, ptr %8, align 8, !tbaa !108
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %1, ptr %i.ab, align 8, !tbaa !196
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.a, ptr %i.ac, align 8, !tbaa !162
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %7, ptr %i.ad, align 8, !tbaa !188
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr %4, ptr %i.ae, align 8, !tbaa !154
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 40
  store ptr %i.b, ptr %i.af, align 8, !tbaa !104
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 48
  store ptr %i.e, ptr %i.ag, align 8, !tbaa !162
  %i.ah = call ptr @_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_11write_fixedIcNS1_23fallback_digit_groupingIcEES5_NS1_9dragonbox10decimal_fpIdEEEET1_SC_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEEUlS5_E_EESC_SC_SJ_mmOSD_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %4, i64 noundef %.0, i64 noundef %.0, ptr noundef nonnull align 8 dereferenceable(56) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  br label %bb.o

bb.g:                                             ; preds = %bb.a
  %i.ai = icmp sgt i32 %i.k, 0
  br i1 %i.ai, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #30
  %i.aj = load i32, ptr %4, align 4, !tbaa !110
  %i.ak = and i32 %i.aj, 8192
  %.not52 = icmp eq i32 %i.ak, 0
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.am = load i32, ptr %i.al, align 4
  %i.an = sub nsw i32 %i.am, %2
  %i.ao = select i1 %.not52, i32 0, i32 %i.an     ; 2 uses
  store i32 %i.ao, ptr %i.f, align 4, !tbaa !87
  %i.ap = tail call noundef i32 @llvm.smax.i32(i32 %i.ao, i32 0)
  %i.aq = add nuw nsw i32 %i.ap, 1
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = add nsw i64 %i.ar, %i.n                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  store ptr %i.c, ptr %10, align 8, !tbaa !108
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %1, ptr %i.at, align 8, !tbaa !196
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.a, ptr %i.au, align 8, !tbaa !162
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %i.d, ptr %i.av, align 8, !tbaa !162
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 32
  store ptr %i.b, ptr %i.aw, align 8, !tbaa !104
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 40
end_hunk_1
begin_hunk_2_@_ZN3fmt3v126detail15format_hexfloatIdTnNSt9enable_ifIXntsr16is_double_doubleIT_EE5valueEiE4typeELi0EEEvS4_NS0_12format_specsERNS1_6bufferIcEE:bb.a
  %.pre2.i57 = add i64 %.pre.i56, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit58

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit58: ; preds = %._crit_edge, %bb.m
  %.pre-phi.i55 = phi i64 [ %i.cp, %._crit_edge ], [ %.pre2.i57, %bb.m ]
  %i.cu = phi i64 [ %i.co, %._crit_edge ], [ %.pre.i56, %bb.m ]
  %i.cv = load ptr, ptr %3, align 8, !tbaa !91
  store i64 %.pre-phi.i55, ptr %i.aj, align 8, !tbaa !95
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cu
  store i8 %i.cn, ptr %i.cw, align 1, !tbaa !71
  %i.cx = icmp slt i32 %i.j, 0
  %i.cy = load i64, ptr %i.aj, align 8, !tbaa !95 ; 3 uses
  %i.cz = add i64 %i.cy, 1                        ; 5 uses
  %i.da = load i64, ptr %i.am, align 8, !tbaa !92
  %i.db = icmp ugt i64 %i.cz, %i.da               ; 2 uses
  br i1 %i.cx, label %bb.n, label %bb.p

bb.n:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit58
  br i1 %i.db, label %bb.o, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit62

bb.o:                                             ; preds = %bb.n
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !90
  call void %i.dd(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.cz), !inline_history !24
  %.pre.i60 = load i64, ptr %i.aj, align 8, !tbaa !95 ; 2 uses
  %.pre2.i61 = add i64 %.pre.i60, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit62

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit62: ; preds = %bb.n, %bb.o
  %.pre-phi.i59 = phi i64 [ %i.cz, %bb.n ], [ %.pre2.i61, %bb.o ]
  %i.de = phi i64 [ %i.cy, %bb.n ], [ %.pre.i60, %bb.o ]
  %i.df = load ptr, ptr %3, align 8, !tbaa !91
  store i64 %.pre-phi.i59, ptr %i.aj, align 8, !tbaa !95
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.de
  store i8 45, ptr %i.dg, align 1, !tbaa !71
  %i.dh = sub nsw i32 0, %i.j
  br label %bb.r

bb.p:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit58
  br i1 %i.db, label %bb.q, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit66

bb.q:                                             ; preds = %bb.p
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !90
  call void %i.dj(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.cz), !inline_history !24
  %.pre.i64 = load i64, ptr %i.aj, align 8, !tbaa !95 ; 2 uses
  %.pre2.i65 = add i64 %.pre.i64, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit66

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit66: ; preds = %bb.p, %bb.q
  %.pre-phi.i63 = phi i64 [ %i.cz, %bb.p ], [ %.pre2.i65, %bb.q ]
  %i.dk = phi i64 [ %i.cy, %bb.p ], [ %.pre.i64, %bb.q ]
  %i.dl = load ptr, ptr %3, align 8, !tbaa !91
  store i64 %.pre-phi.i63, ptr %i.aj, align 8, !tbaa !95
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dk
  store i8 43, ptr %i.dm, align 1, !tbaa !71
  br label %bb.r

bb.r:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit66, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit62
  %.0 = phi i32 [ %i.dh, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit62 ], [ %i.i, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit66 ] ; 3 uses
  %i.dn = or i32 %.0, 1
  %i.do = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.dn, i1 true)
  %i.dp = xor i32 %i.do, 31
  %i.dq = zext nneg i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail15do_count_digitsEjE5table, i64 %i.dq
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !97
  %i.dt = zext nneg i32 %.0 to i64
  %i.du = add i64 %i.ds, %i.dt
  %i.dv = lshr i64 %i.du, 32
  %i.dw = trunc nuw i64 %i.dv to i32
  %i.dx = call ptr @_ZN3fmt3v126detail14format_decimalIcjNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr nonnull %3, i32 noundef %.0, i32 noundef %i.dw) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEE(double noundef %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 10 uses
  %5 = alloca %"struct.fmt::v12::detail::basic_fp.89", align 16 ; 3 uses
  %i.b = load i32, ptr %2, align 4, !tbaa !110
  %i.c = and i32 %i.b, 7
  %i.d = icmp eq i32 %i.c, 2                      ; 5 uses
  %i.e = fcmp oeq double %0, 0.000000e+00
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.f = icmp sgt i32 %1, 0
  %or.cond = and i1 %i.f, %i.d
  br i1 %or.cond, label %_ZN3fmt3v126detail11to_unsignedIiEENSt13make_unsignedIT_E4typeES4_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !95   ; 2 uses
  %i.i = add i64 %i.h, 1                          ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !92
  %i.l = icmp ugt i64 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !90
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.i), !inline_history !24
  %.pre.i = load i64, ptr %i.g, align 8, !tbaa !95 ; 2 uses
  %.pre2.i = add i64 %.pre.i, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit:  ; preds = %bb.c, %bb.d
  %.pre-phi.i = phi i64 [ %i.i, %bb.c ], [ %.pre2.i, %bb.d ]
  %i.o = phi i64 [ %i.h, %bb.c ], [ %.pre.i, %bb.d ]
  %i.p = load ptr, ptr %4, align 8, !tbaa !91
  store i64 %.pre-phi.i, ptr %i.g, align 8, !tbaa !95
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.o
  store i8 48, ptr %i.q, align 1, !tbaa !71
  br label %bb.bd

_ZN3fmt3v126detail11to_unsignedIiEENSt13make_unsignedIT_E4typeES4_.exit: ; preds = %bb.b
  %i.r = zext nneg i32 %1 to i64                  ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !92   ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.r
  br i1 %i.u, label %bb.e, label %_ZN3fmt3v126detail6fill_nIciEEPT_S4_T0_c.exit

bb.e:                                             ; preds = %_ZN3fmt3v126detail11to_unsignedIiEENSt13make_unsignedIT_E4typeES4_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !90
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.r), !inline_history !25
  %.pre.i141 = load i64, ptr %i.s, align 8, !tbaa !92
  br label %_ZN3fmt3v126detail6fill_nIciEEPT_S4_T0_c.exit

_ZN3fmt3v126detail6fill_nIciEEPT_S4_T0_c.exit:    ; preds = %bb.e, %_ZN3fmt3v126detail11to_unsignedIiEENSt13make_unsignedIT_E4typeES4_.exit
  %i.x = phi i64 [ %i.t, %_ZN3fmt3v126detail11to_unsignedIiEENSt13make_unsignedIT_E4typeES4_.exit ], [ %.pre.i141, %bb.e ]
  %i.y = tail call noundef i64 @llvm.umin.i64(i64 %i.r, i64 %i.x)
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.y, ptr %i.z, align 8, !tbaa !95
  %i.aa = load ptr, ptr %4, align 8, !tbaa !91
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.aa, i8 48, i64 %i.r, i1 false)
  %i.ab = sub nsw i32 0, %1
  br label %bb.bd

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.ac = bitcast double %0 to i64                ; 2 uses
  %i.ad = and i64 %i.ac, 4503599627370495         ; 6 uses
  %i.ae = and i64 %i.ac, 9218868437227405312      ; 3 uses
  %i.af = lshr exact i64 %i.ae, 52
  %i.ag = trunc nuw nsw i64 %i.af to i32          ; 2 uses
  %.not = icmp eq i64 %i.ae, 0                    ; 3 uses
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = add nsw i32 %i.ag, -1075
  %i.ai = shl nuw nsw i64 %i.ad, 1
  %i.aj = or disjoint i64 %i.ai, 9007199254740992
  br label %_ZN3fmt3v126detail9dragonbox16floor_log10_pow2Ei.exit

bb.h:                                             ; preds = %bb.f
  %.not126 = icmp eq i64 %i.ad, 0
  br i1 %.not126, label %.split, label %.thread

.thread:                                          ; preds = %bb.h
  %i.ak = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ad, i1 true) ; 2 uses
  %i.al = trunc nuw nsw i64 %i.ak to i32
  %i.am = add nsw i64 %i.ak, -10
  %i.an = sub nuw nsw i32 -1063, %i.al
  %i.ao = shl i64 %i.ad, %i.am
  br label %_ZN3fmt3v126detail9dragonbox16floor_log10_pow2Ei.exit

.split:                                           ; preds = %bb.h
  %i.ap = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZN17assertion_failureC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull @.str.224)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %.split
  tail call void @__cxa_throw(ptr nonnull %i.ap, ptr nonnull @_ZTI17assertion_failure, ptr nonnull @_ZNSt11logic_errorD2Ev) #32
  unreachable

common.resume:                                    ; preds = %bb.n, %bb.j
  %.sink = phi ptr [ %i.bu, %bb.n ], [ %i.ap, %bb.j ]
  %common.resume.op = phi { ptr, i32 } [ %i.bv, %bb.n ], [ %i.aq, %bb.j ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #30
  resume { ptr, i32 } %common.resume.op

bb.j:                                             ; preds = %.split
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN3fmt3v126detail9dragonbox16floor_log10_pow2Ei.exit: ; preds = %.thread, %bb.g
  %.0109 = phi i64 [ %i.aj, %bb.g ], [ %i.ao, %.thread ]
  %.0108 = phi i32 [ %i.ah, %bb.g ], [ %i.an, %.thread ] ; 2 uses
  %i.ar = mul nsw i32 %.0108, 315653
  %i.as = ashr i32 %i.ar, 20                      ; 2 uses
  %.neg129 = add nsw i32 %i.as, -2                ; 3 uses
  %i.at = sub nsw i32 2, %i.as                    ; 2 uses
  %i.au = mul nsw i32 %i.at, 1741647
  %i.av = ashr i32 %i.au, 19
  %i.aw = add nsw i32 %i.av, %.0108
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = shl i64 %.0109, %i.ax                   ; 2 uses
  %i.az = sext i32 %i.at to i64
  %i.ba = getelementptr [16 x i8], ptr @_ZZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEiE18pow10_significands, i64 %i.az ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 4672
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.bb, align 16, !tbaa !97
  %.sroa.2.0..sroa_idx.i.i = getelementptr i8, ptr %i.ba, i64 4680
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !97
  %i.bc = zext i64 %i.ay to i128
  %i.bd = zext i64 %.sroa.2.0.copyload.i.i to i128
  %i.be = mul nuw i128 %i.bc, %i.bd               ; 2 uses
  %i.bf = lshr i128 %i.be, 64
  %i.bg = trunc nuw i128 %i.bf to i64
  %i.bh = trunc i128 %i.be to i64
  %6 = tail call noundef i64 @llvm.umulh.i64(i64 %i.ay, i64 %.sroa.0.0.copyload.i.i)
  %i.bi = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.bh, i64 %6) ; 2 uses
  %i.bj = extractvalue { i64, i1 } %i.bi, 1
  %i.bk = extractvalue { i64, i1 } %i.bi, 0       ; 2 uses
  %i.bl = zext i1 %i.bj to i64
  %i.bm = add nuw i64 %i.bl, %i.bg                ; 3 uses
  %i.bn = icmp ne i64 %i.bk, 0                    ; 4 uses
  %i.bo = icmp ugt i64 %i.bm, 999999999999999999  ; 2 uses
  %i.bp = mul nuw i64 %i.bm, 10
  %.0107 = select i1 %i.bo, i64 %i.bm, i64 %i.bp  ; 3 uses
  %.0106 = select i1 %i.bo, i32 19, i32 18        ; 4 uses
  br i1 %i.d, label %bb.k, label %bb.o

bb.k:                                             ; preds = %_ZN3fmt3v126detail9dragonbox16floor_log10_pow2Ei.exit
  %i.bq = add nsw i32 %.0106, %.neg129            ; 3 uses
  %i.br = icmp sgt i32 %i.bq, 0
  %i.bs = sub nuw nsw i32 2147483647, %i.bq
  %i.bt = icmp sgt i32 %1, %i.bs
  %or.cond.i148 = select i1 %i.br, i1 %i.bt, i1 false
  br i1 %or.cond.i148, label %bb.l, label %_ZN3fmt3v126detail16adjust_precisionERii.exit

bb.l:                                             ; preds = %bb.k
  %i.bu = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bu, ptr noundef nonnull @.str.207)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @__cxa_throw(ptr nonnull %i.bu, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN3fmt3v126detail16adjust_precisionERii.exit:    ; preds = %bb.k
  %i.bw = add nsw i32 %i.bq, %1
  br label %bb.o

bb.o:                                             ; preds = %_ZN3fmt3v126detail16adjust_precisionERii.exit, %_ZN3fmt3v126detail9dragonbox16floor_log10_pow2Ei.exit
  %.0198 = phi i32 [ %i.bw, %_ZN3fmt3v126detail16adjust_precisionERii.exit ], [ %1, %_ZN3fmt3v126detail9dragonbox16floor_log10_pow2Ei.exit ] ; 20 uses
  %.not135 = icmp sgt i32 %.0106, %.0198
  br i1 %.not135, label %bb.p, label %.thread235

bb.p:                                             ; preds = %bb.o
  %i.bx = icmp slt i32 %.0198, 1
  %i.by = add nsw i32 %.0106, %.neg129            ; 2 uses
  br i1 %i.bx, label %bb.q, label %bb.w

bb.q:                                             ; preds = %bb.p
  store i32 %i.by, ptr %i.a, align 4, !tbaa !87
  %i.bz = icmp slt i32 %.0198, 0
  br i1 %i.bz, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.ca, align 8, !tbaa !95
  br label %.thread233

bb.s:                                             ; preds = %bb.q
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !92
  %i.cd = icmp eq i64 %i.cc, 0
  br i1 %i.cd, label %bb.t, label %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit151

bb.t:                                             ; preds = %bb.s
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !90
  tail call void %i.cf(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 1), !inline_history !25
  %.pre.i150 = load i64, ptr %i.cb, align 8, !tbaa !92
  %i.cg = icmp ne i64 %.pre.i150, 0
  %i.ch = zext i1 %i.cg to i64
  br label %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit151

_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit151: ; preds = %bb.s, %bb.t
  %i.ci = phi i64 [ 1, %bb.s ], [ %i.ch, %bb.t ]
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ci, ptr %i.cj, align 8, !tbaa !95
  %i.ck = zext i1 %i.bn to i64
  %i.cl = or i64 %.0107, %i.ck
  %i.cm = icmp ugt i64 %i.cl, 5000000000000000000
  %i.cn = load ptr, ptr %4, align 8, !tbaa !91    ; 2 uses
  br i1 %i.cm, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit151
  store i8 49, ptr %i.cn, align 1, !tbaa !71
  br label %.thread233

bb.v:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit151
  store i8 48, ptr %i.cn, align 1, !tbaa !71
  br label %.thread233

bb.w:                                             ; preds = %bb.p
  %i.co = sub nsw i32 %i.by, %.0198               ; 2 uses
  store i32 %i.co, ptr %i.a, align 4, !tbaa !87
  %7 = tail call noundef i64 @llvm.umulh.i64(i64 %.0107, i64 7922816251426433760)
  %8 = lshr i64 %7, 32                            ; 3 uses
  %.neg130 = mul i64 %8, -10000000000
  %i.cp = add i64 %.neg130, %.0107                ; 5 uses
  %i.cq = tail call i32 @llvm.umin.i32(i32 %.0198, i32 9) ; 3 uses
  %i.cr = load ptr, ptr %4, align 8, !tbaa !91    ; 6 uses
  %i.cs = and i32 %i.cq, 1
  %.not.i = icmp eq i32 %i.cs, 0
  br i1 %.not.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ct = mul nuw nsw i64 %8, 720575941
  %i.cu = lshr i64 %i.ct, 24
  %i.cv = add nuw nsw i64 %i.cu, 1                ; 2 uses
  %i.cw = lshr i64 %i.cv, 32                      ; 2 uses
  %i.cx = trunc nuw nsw i64 %i.cw to i8
  %i.cy = add nuw nsw i8 %i.cx, 48
  store i8 %i.cy, ptr %i.cr, align 1, !tbaa !71
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.cz = mul nuw nsw i64 %8, 450359963
  %i.da = lshr i64 %i.cz, 20
  %i.db = add nuw nsw i64 %i.da, 1                ; 2 uses
  %i.dc = lshr i64 %i.db, 32                      ; 2 uses
  %i.dd = shl nuw nsw i64 %i.dc, 1
  %i.de = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.dd
  %i.df = load i16, ptr %i.de, align 2
  store i16 %i.df, ptr %i.cr, align 1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.0219 = phi i64 [ %i.db, %bb.y ], [ %i.cv, %bb.x ] ; 2 uses
  %.0215.in = phi i64 [ %i.dc, %bb.y ], [ %i.cw, %bb.x ]
  %.0.i = phi i32 [ 2, %bb.y ], [ 1, %bb.x ]      ; 2 uses
  %i.dg = icmp samesign ugt i32 %.0198, %.0.i
  br i1 %i.dg, label %.lr.ph.i, label %.thread282

.lr.ph.i:                                         ; preds = %bb.z
  %i.dh = zext nneg i32 %.0.i to i64              ; 4 uses
  %i.di = zext nneg i32 %i.cq to i64              ; 3 uses
  %i.dj = and i64 %.0219, 4294967295
  %i.dk = mul nuw nsw i64 %i.dj, 100              ; 3 uses
  %i.dl = lshr i64 %i.dk, 32                      ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.dh
  %i.dn = shl nuw nsw i64 %i.dl, 1
  %i.do = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.dn
  %i.dp = load i16, ptr %i.do, align 2
  store i16 %i.dp, ptr %i.dm, align 1
  %indvars.iv.next.i = add nuw nsw i64 %i.dh, 2   ; 2 uses
  %i.dq = icmp samesign ult i64 %indvars.iv.next.i, %i.di
  br i1 %i.dq, label %bb.aa, label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit

bb.aa:                                            ; preds = %.lr.ph.i
  %i.dr = and i64 %i.dk, 4294967292
  %i.ds = mul nuw nsw i64 %i.dr, 100              ; 3 uses
  %i.dt = lshr i64 %i.ds, 32                      ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.cr, i64 %indvars.iv.next.i
  %i.dv = shl nuw nsw i64 %i.dt, 1
  %i.dw = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.dv
  %i.dx = load i16, ptr %i.dw, align 2
  store i16 %i.dx, ptr %i.du, align 1
  %indvars.iv.next.i.1 = or disjoint i64 %i.dh, 4 ; 2 uses
  %i.dy = icmp samesign ult i64 %indvars.iv.next.i.1, %i.di
  br i1 %i.dy, label %bb.ab, label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit

bb.ab:                                            ; preds = %bb.aa
  %i.dz = and i64 %i.ds, 4294967280
  %i.ea = mul nuw nsw i64 %i.dz, 100              ; 3 uses
  %i.eb = lshr i64 %i.ea, 32                      ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cr, i64 %indvars.iv.next.i.1
  %i.ed = shl nuw nsw i64 %i.eb, 1
  %i.ee = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.ed
  %i.ef = load i16, ptr %i.ee, align 2
  store i16 %i.ef, ptr %i.ec, align 1
  %indvars.iv.next.i.2 = add nuw nsw i64 %i.dh, 6 ; 2 uses
  %i.eg = icmp samesign ult i64 %indvars.iv.next.i.2, %i.di
  br i1 %i.eg, label %bb.ac, label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit

bb.ac:                                            ; preds = %bb.ab
  %i.eh = and i64 %i.ea, 4294967232
  %i.ei = mul nuw nsw i64 %i.eh, 100              ; 2 uses
  %i.ej = lshr i64 %i.ei, 32                      ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.cr, i64 %indvars.iv.next.i.2
  %i.el = shl nuw nsw i64 %i.ej, 1
  %i.em = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.el
  %i.en = load i16, ptr %i.em, align 2
  store i16 %i.en, ptr %i.ek, align 1
  br label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit

_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit: ; preds = %bb.ac, %bb.ab, %bb.aa, %.lr.ph.i
  %.lcssa303 = phi i64 [ %i.dk, %.lr.ph.i ], [ %i.ds, %bb.aa ], [ %i.ea, %bb.ab ], [ %i.ei, %bb.ac ]
  %.lcssa302 = phi i64 [ %i.dl, %.lr.ph.i ], [ %i.dt, %bb.aa ], [ %i.eb, %bb.ab ], [ %i.ej, %bb.ac ] ; 2 uses
  %i.eo = icmp samesign ult i32 %.0198, 10
  br i1 %i.eo, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit
  %.not133 = icmp eq i32 %.0198, 9
  br i1 %.not133, label %bb.ae, label %.thread282

.thread282:                                       ; preds = %bb.z, %bb.ad
  %.2221279288 = phi i64 [ %.lcssa303, %bb.ad ], [ %.0219, %bb.z ]
  %.1216281287.in = phi i64 [ %.lcssa302, %bb.ad ], [ %.0215.in, %bb.z ]
  %i.ep = trunc i64 %.2221279288 to i32           ; 2 uses
  %i.eq = sub nuw nsw i32 8, %i.cq
  %i.er = zext nneg i32 %i.eq to i64              ; 2 uses
  %i.es = getelementptr inbounds nuw [2 x i8], ptr @.str.225, i64 %i.er
  %i.et = load i16, ptr %i.es, align 2, !tbaa !771
  %i.eu = zext i16 %i.et to i32
  %i.ev = shl nuw i32 %i.eu, 16
  %i.ew = getelementptr inbounds nuw [2 x i8], ptr @.str.226, i64 %i.er
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !771
  %i.ey = zext i16 %i.ex to i32
  %i.ez = or disjoint i32 %i.ev, %i.ey
  %.not134 = icmp ugt i32 %i.ez, %i.ep
  br i1 %.not134, label %bb.an, label %.critedge138

bb.ae:                                            ; preds = %bb.ad
  %i.fa = icmp ugt i64 %i.cp, 5000000000
  br i1 %i.fa, label %.critedge138.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fb = icmp eq i64 %i.cp, 5000000000
  %i.fc = trunc i64 %.lcssa302 to i1
  %i.fd = or i1 %i.bn, %i.fc
  %or.cond239 = select i1 %i.fb, i1 %i.fd, i1 false
  br i1 %or.cond239, label %.critedge138.thread, label %_ZN3fmt3v126detail11to_unsignedIiEENSt13make_unsignedIT_E4typeES4_.exit158

bb.ag:                                            ; preds = %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit
  %9 = tail call noundef i64 @llvm.umulh.i64(i64 %i.cp, i64 1844674407370955162) ; 2 uses
  %i.fe = trunc i64 %9 to i32
  %i.ff = trunc i64 %i.cp to i32
  %.neg131 = mul i32 %i.fe, -10
  %i.fg = add i32 %.neg131, %i.ff                 ; 3 uses
  %i.fh = add nsw i32 %.0198, -9                  ; 3 uses
  %i.fi = load ptr, ptr %4, align 8, !tbaa !91
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 9 ; 3 uses
  %i.fk = and i32 %i.fh, 1
  %.not.i152 = icmp eq i32 %i.fk, 0
  %i.fl = and i64 %9, 4294967295                  ; 2 uses
  br i1 %.not.i152, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fm = mul nuw nsw i64 %i.fl, 720575941
  %i.fn = lshr i64 %i.fm, 24
  %i.fo = add nuw nsw i64 %i.fn, 1                ; 2 uses
  %i.fp = lshr i64 %i.fo, 32                      ; 2 uses
  %i.fq = trunc nuw nsw i64 %i.fp to i8
  %i.fr = add nuw nsw i8 %i.fq, 48
  store i8 %i.fr, ptr %i.fj, align 1, !tbaa !71
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.fs = mul nuw nsw i64 %i.fl, 450359963
  %i.ft = lshr i64 %i.fs, 20
  %i.fu = add nuw nsw i64 %i.ft, 1                ; 2 uses
  %i.fv = lshr i64 %i.fu, 32                      ; 2 uses
  %i.fw = shl nuw nsw i64 %i.fv, 1
  %i.fx = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.fw
  %i.fy = load i16, ptr %i.fx, align 2
  store i16 %i.fy, ptr %i.fj, align 1
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.3222 = phi i64 [ %i.fu, %bb.ai ], [ %i.fo, %bb.ah ] ; 2 uses
  %.2217.in = phi i64 [ %i.fv, %bb.ai ], [ %i.fp, %bb.ah ]
  %.0.i153 = phi i32 [ 2, %bb.ai ], [ 1, %bb.ah ] ; 2 uses
  %i.fz = icmp samesign ult i32 %.0.i153, %i.fh
  br i1 %i.fz, label %.lr.ph.i154, label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit157.thread

.lr.ph.i154:                                      ; preds = %bb.aj
  %i.ga = zext nneg i32 %.0.i153 to i64
  %i.gb = zext nneg i32 %i.fh to i64
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ak, %.lr.ph.i154
  %.4 = phi i64 [ %.3222, %.lr.ph.i154 ], [ %i.gd, %bb.ak ]
  %indvars.iv.i155 = phi i64 [ %i.ga, %.lr.ph.i154 ], [ %indvars.iv.next.i156, %bb.ak ] ; 2 uses
  %i.gc = and i64 %.4, 4294967295
  %i.gd = mul nuw nsw i64 %i.gc, 100              ; 3 uses
  %i.ge = lshr i64 %i.gd, 32                      ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fj, i64 %indvars.iv.i155
  %i.gg = shl nuw nsw i64 %i.ge, 1
  %i.gh = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.gg
  %i.gi = load i16, ptr %i.gh, align 2
  store i16 %i.gi, ptr %i.gf, align 1
  %indvars.iv.next.i156 = add nuw nsw i64 %indvars.iv.i155, 2 ; 2 uses
  %i.gj = icmp samesign ult i64 %indvars.iv.next.i156, %i.gb
  br i1 %i.gj, label %bb.ak, label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit157, !llvm.loop !767

_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit157: ; preds = %bb.ak
  %i.gk = icmp samesign ult i32 %.0198, 18
  br i1 %i.gk, label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit157.thread, label %bb.al

_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit157.thread: ; preds = %bb.aj, %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit157
  %.3218227.in = phi i64 [ %i.ge, %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit157 ], [ %.2217.in, %bb.aj ]
  %.5226 = phi i64 [ %i.gd, %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit157 ], [ %.3222, %bb.aj ]
  %i.gl = trunc i64 %.5226 to i32                 ; 2 uses
  %i.gm = sub nuw nsw i32 17, %.0198
  %i.gn = zext nneg i32 %i.gm to i64              ; 2 uses
  %i.go = getelementptr inbounds nuw [2 x i8], ptr @.str.225, i64 %i.gn
  %i.gp = load i16, ptr %i.go, align 2, !tbaa !771
  %i.gq = zext i16 %i.gp to i32
  %i.gr = shl nuw i32 %i.gq, 16
  %i.gs = getelementptr inbounds nuw [2 x i8], ptr @.str.226, i64 %i.gn
  %i.gt = load i16, ptr %i.gs, align 2, !tbaa !771
  %i.gu = zext i16 %i.gt to i32
  %i.gv = or disjoint i32 %i.gr, %i.gu
  %.not132 = icmp ugt i32 %i.gv, %i.gl
  br i1 %.not132, label %.split230, label %.critedge138.thread

.split230:                                        ; preds = %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit157.thread
  %.3218227 = trunc nuw nsw i64 %.3218227.in to i32
  %i.gw = lshr i32 %i.gl, 31
  %i.gx = icmp ne i32 %i.fg, 0
  %i.gy = or i1 %i.gx, %i.bn
  %i.gz = zext i1 %i.gy to i32
  %i.ha = or i32 %i.gz, %.3218227
  %i.hb = and i32 %i.gw, %i.ha
  %i.hc = trunc nuw i32 %i.hb to i1
  br i1 %i.hc, label %.critedge138.thread, label %_ZN3fmt3v126detail11to_unsignedIiEENSt13make_unsignedIT_E4typeES4_.exit158

bb.al:                                            ; preds = %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit157
  %i.hd = icmp ugt i32 %i.fg, 5
  br i1 %i.hd, label %.critedge138.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.he = icmp eq i32 %i.fg, 5
  %i.hf = trunc i64 %i.ge to i1
  %i.hg = or i1 %i.bn, %i.hf
  %or.cond241 = select i1 %i.he, i1 %i.hg, i1 false
  br i1 %or.cond241, label %.critedge138.thread, label %_ZN3fmt3v126detail11to_unsignedIiEENSt13make_unsignedIT_E4typeES4_.exit158

bb.an:                                            ; preds = %.thread282
  %.1216281287 = trunc nsw i64 %.1216281287.in to i32
  %i.hh = lshr i32 %i.ep, 31
  %i.hi = or i64 %i.cp, %i.bk
  %i.hj = icmp ne i64 %i.hi, 0
  %i.hk = zext i1 %i.hj to i32
  %i.hl = or i32 %.1216281287, %i.hk
  %i.hm = and i32 %i.hl, %i.hh
  %i.hn = trunc nuw i32 %i.hm to i1
  br i1 %i.hn, label %.critedge138, label %_ZN3fmt3v126detail11to_unsignedIiEENSt13make_unsignedIT_E4typeES4_.exit158

.critedge138.thread:                              ; preds = %bb.am, %bb.af, %.split230, %bb.ae, %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit157.thread, %bb.al
  %i.ho = load ptr, ptr %4, align 8, !tbaa !91
  %i.hp = zext nneg i32 %.0198 to i64             ; 2 uses
  %i.hq = getelementptr i8, ptr %i.ho, i64 %i.hp
  %i.hr = getelementptr i8, ptr %i.hq, i64 -1     ; 2 uses
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !71
  %i.ht = add i8 %i.hs, 1
  store i8 %i.ht, ptr %i.hr, align 1, !tbaa !71
  br label %.lr.ph.preheader

.critedge138:                                     ; preds = %.thread282, %bb.an
  %i.hu = load ptr, ptr %4, align 8, !tbaa !91
  %i.hv = zext nneg i32 %.0198 to i64             ; 2 uses
  %i.hw = getelementptr i8, ptr %i.hu, i64 %i.hv
  %i.hx = getelementptr i8, ptr %i.hw, i64 -1     ; 2 uses
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !71
  %i.hz = add i8 %i.hy, 1
  store i8 %i.hz, ptr %i.hx, align 1, !tbaa !71
  %.not256 = icmp eq i32 %.0198, 1
  br i1 %.not256, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.critedge138.thread, %.critedge138
  %i.ia = phi i64 [ %i.hp, %.critedge138.thread ], [ %i.hv, %.critedge138 ] ; 3 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ao
  %indvars.iv = phi i64 [ %i.ia, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.ao ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.ib = load ptr, ptr %4, align 8, !tbaa !91
  %i.ic = and i64 %indvars.iv.next, 4294967295
  %i.id = getelementptr inbounds nuw i8, ptr %i.ib, i64 %i.ic ; 2 uses
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !71
  %i.if = icmp sgt i8 %i.ie, 57
  br i1 %i.if, label %bb.ao, label %.critedge

.critedge:                                        ; preds = %.lr.ph, %bb.ao, %.critedge138
  %i.ig = phi i64 [ 1, %.critedge138 ], [ %i.ia, %bb.ao ], [ %i.ia, %.lr.ph ]
  %i.ih = load ptr, ptr %4, align 8, !tbaa !91    ; 2 uses
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !71
  %i.ij = icmp sgt i8 %i.ii, 57
  br i1 %i.ij, label %bb.ap, label %_ZN3fmt3v126detail11to_unsignedIiEENSt13make_unsignedIT_E4typeES4_.exit158

bb.ao:                                            ; preds = %.lr.ph
  store i8 48, ptr %i.id, align 1, !tbaa !71
  %i.ik = load ptr, ptr %4, align 8, !tbaa !91
  %i.il = getelementptr i8, ptr %i.ik, i64 %indvars.iv
  %i.im = getelementptr i8, ptr %i.il, i64 -2     ; 2 uses
  %i.in = load i8, ptr %i.im, align 1, !tbaa !71
  %i.io = add i8 %i.in, 1
  store i8 %i.io, ptr %i.im, align 1, !tbaa !71
  %i.ip = trunc nuw i64 %indvars.iv to i32
  %i.iq = icmp sgt i32 %i.ip, 2
  br i1 %i.iq, label %.lr.ph, label %.critedge, !llvm.loop !768

bb.ap:                                            ; preds = %.critedge
  store i8 49, ptr %i.ih, align 1, !tbaa !71
  br i1 %i.d, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.ir = add nuw nsw i32 %.0198, 1
  %i.is = load ptr, ptr %4, align 8, !tbaa !91
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 %i.ig
  store i8 48, ptr %i.it, align 1, !tbaa !71
  br label %_ZN3fmt3v126detail11to_unsignedIiEENSt13make_unsignedIT_E4typeES4_.exit158

bb.ar:                                            ; preds = %bb.ap
  %i.iu = add nsw i32 %i.co, 1
  store i32 %i.iu, ptr %i.a, align 4, !tbaa !87
  br label %_ZN3fmt3v126detail11to_unsignedIiEENSt13make_unsignedIT_E4typeES4_.exit158

_ZN3fmt3v126detail11to_unsignedIiEENSt13make_unsignedIT_E4typeES4_.exit158: ; preds = %bb.aq, %bb.ar, %.critedge, %.split230, %bb.am, %bb.af, %bb.an
  %.1199232 = phi i32 [ %.0198, %.split230 ], [ %.0198, %bb.an ], [ 9, %bb.af ], [ 18, %bb.am ], [ %i.ir, %bb.aq ], [ %.0198, %bb.ar ], [ %.0198, %.critedge ]
  %i.iv = zext nneg i32 %.1199232 to i64          ; 3 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !92 ; 2 uses
  %i.iy = icmp ult i64 %i.ix, %i.iv
  br i1 %i.iy, label %bb.as, label %bb.at

bb.as:                                            ; preds = %_ZN3fmt3v126detail11to_unsignedIiEENSt13make_unsignedIT_E4typeES4_.exit158
  %i.iz = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !90
  tail call void %i.ja(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.iv), !inline_history !25
  %.pre.i159 = load i64, ptr %i.iw, align 8, !tbaa !92
  br label %bb.at

.thread235:                                       ; preds = %bb.o
  %i.jb = add nsw i32 %.0106, %.neg129
  %i.jc = add nsw i32 %i.jb, -1
  store i32 %i.jc, ptr %i.a, align 4, !tbaa !87
  br i1 %3, label %bb.au, label %bb.av

bb.at:                                            ; preds = %bb.as, %_ZN3fmt3v126detail11to_unsignedIiEENSt13make_unsignedIT_E4typeES4_.exit158
  %i.jd = phi i64 [ %i.ix, %_ZN3fmt3v126detail11to_unsignedIiEENSt13make_unsignedIT_E4typeES4_.exit158 ], [ %.pre.i159, %bb.as ]
  %i.je = tail call noundef i64 @llvm.umin.i64(i64 %i.iv, i64 %i.jd)
  %i.jf = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.je, ptr %i.jf, align 8, !tbaa !95
end_hunk_2
begin_hunk_3_@_GLOBAL__sub_I_format_impl_test.cc:bb.a
  %i.ani = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.anj = load ptr, ptr %2, align 8, !tbaa !70   ; 2 uses
  %i.ank = icmp eq ptr %i.anj, %i.amh
  br i1 %i.ank, label %_ZN7testing8internal12CodeLocationD2Ev.exit8.i325, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6.i324

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6.i324: ; preds = %bb.ig
  %i.anl = load i64, ptr %i.amh, align 8, !tbaa !71
  %i.anm = add i64 %i.anl, 1
  call void @_ZdlPvm(ptr noundef %i.anj, i64 noundef %i.anm) #31
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit8.i325

_ZN7testing8internal12CodeLocationD2Ev.exit8.i325: ; preds = %bb.ig, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6.i324, %bb.if
  %.pn.i326 = phi { ptr, i32 } [ %i.anh, %bb.if ], [ %i.ani, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6.i324 ], [ %i.ani, %bb.ig ]
  %i.ann = load ptr, ptr %3, align 8, !tbaa !70   ; 2 uses
  %i.ano = icmp eq ptr %i.ann, %i.amc
  br i1 %i.ano, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i328, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i327

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i327: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit8.i325
  %i.anp = load i64, ptr %i.amc, align 8, !tbaa !71
  %i.anq = add i64 %i.anp, 1
  call void @_ZdlPvm(ptr noundef %i.ann, i64 noundef %i.anq) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i328

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i328: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit8.i325, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i327
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %common.resume

__cxx_global_var_init.170.exit:                   ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit.i332, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i333
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  store ptr %i.amy, ptr @_ZN54format_impl_test_utf8_decode_bogus_byte_sequences_Test10test_info_E, align 8, !tbaa !1075
  %i.anr = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN54format_impl_test_utf8_decode_bogus_byte_sequences_Test10test_info_E) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  %i.ans = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.ans, ptr %1, align 8, !tbaa !96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store i64 48, ptr %i.b, align 8, !tbaa !97
  %i.ant = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 3 uses
  store ptr %i.ant, ptr %1, align 8, !tbaa !70
  %i.anu = load i64, ptr %i.b, align 8, !tbaa !97 ; 3 uses
  store i64 %i.anu, ptr %i.ans, align 8, !tbaa !71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.ant, ptr noundef nonnull align 1 dereferenceable(48) @.str.2, i64 48, i1 false)
  %i.anv = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 %i.anu, ptr %i.anv, align 8, !tbaa !69
  %i.anw = getelementptr inbounds nuw i8, ptr %i.ant, i64 %i.anu
  store i8 0, ptr %i.anw, align 1, !tbaa !71
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  %i.anx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  store ptr %i.anx, ptr %0, align 8, !tbaa !96
  %i.any = load ptr, ptr %1, align 8, !tbaa !70   ; 2 uses
  %i.anz = load i64, ptr %i.anv, align 8, !tbaa !69 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.anz, ptr %i.a, align 8, !tbaa !97
  %i.aoa = icmp ugt i64 %i.anz, 15
  br i1 %i.aoa, label %.noexc.i.i.i351, label %._crit_edge.i.i.i.i338

.noexc.i.i.i351:                                  ; preds = %__cxx_global_var_init.170.exit
  %i.aob = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc5.i352 unwind label %bb.ip ; 2 uses

.noexc5.i352:                                     ; preds = %.noexc.i.i.i351
  store ptr %i.aob, ptr %0, align 8, !tbaa !70
  %i.aoc = load i64, ptr %i.a, align 8, !tbaa !97
  store i64 %i.aoc, ptr %i.anx, align 8, !tbaa !71
  br label %._crit_edge.i.i.i.i338

._crit_edge.i.i.i.i338:                           ; preds = %.noexc5.i352, %__cxx_global_var_init.170.exit
  %i.aod = phi ptr [ %i.aob, %.noexc5.i352 ], [ %i.anx, %__cxx_global_var_init.170.exit ] ; 2 uses
  switch i64 %i.anz, label %bb.ii [
    i64 1, label %bb.ih
    i64 0, label %bb.ij
  ]

bb.ih:                                            ; preds = %._crit_edge.i.i.i.i338
  %i.aoe = load i8, ptr %i.any, align 1, !tbaa !71
  store i8 %i.aoe, ptr %i.aod, align 1, !tbaa !71
  br label %bb.ij

bb.ii:                                            ; preds = %._crit_edge.i.i.i.i338
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aod, ptr align 1 %i.any, i64 %i.anz, i1 false)
  br label %bb.ij

bb.ij:                                            ; preds = %bb.ii, %bb.ih, %._crit_edge.i.i.i.i338
  %i.aof = load i64, ptr %i.a, align 8, !tbaa !97 ; 2 uses
  %i.aog = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.aof, ptr %i.aog, align 8, !tbaa !69
  %i.aoh = load ptr, ptr %0, align 8, !tbaa !70
  %i.aoi = getelementptr inbounds nuw i8, ptr %i.aoh, i64 %i.aof
  store i8 0, ptr %i.aoi, align 1, !tbaa !71
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.aoj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 470, ptr %i.aoj, align 8, !tbaa !1073
  %i.aok = invoke noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
          to label %bb.ik unwind label %bb.iq

bb.ik:                                            ; preds = %bb.ij
  %i.aol = invoke noundef ptr @_ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci(ptr noundef nonnull @.str.2, i32 noundef 470)
          to label %bb.il unwind label %bb.iq

bb.il:                                            ; preds = %bb.ik
  %i.aom = invoke noundef ptr @_ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci(ptr noundef nonnull @.str.2, i32 noundef 470)
          to label %bb.im unwind label %bb.iq

bb.im:                                            ; preds = %bb.il
  %i.aon = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #34
          to label %bb.in unwind label %bb.iq     ; 2 uses

bb.in:                                            ; preds = %bb.im
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI29format_impl_test_to_utf8_TestEE, i64 16), ptr %i.aon, align 8, !tbaa !45
  %i.aoo = invoke noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_NS0_12CodeLocationEPKvPFvvES7_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.176, ptr noundef null, ptr noundef null, ptr nofree noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %i.aok, ptr noundef %i.aol, ptr noundef %i.aom, ptr noundef nonnull %i.aon)
          to label %bb.io unwind label %bb.iq

bb.io:                                            ; preds = %bb.in
  %i.aop = load ptr, ptr %0, align 8, !tbaa !70   ; 2 uses
  %i.aoq = icmp eq ptr %i.aop, %i.anx
  br i1 %i.aoq, label %_ZN7testing8internal12CodeLocationD2Ev.exit.i347, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i346

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i346: ; preds = %bb.io
  %i.aor = load i64, ptr %i.anx, align 8, !tbaa !71
  %i.aos = add i64 %i.aor, 1
  call void @_ZdlPvm(ptr noundef %i.aop, i64 noundef %i.aos) #31
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit.i347

_ZN7testing8internal12CodeLocationD2Ev.exit.i347: ; preds = %bb.io, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i346
  %i.aot = load ptr, ptr %1, align 8, !tbaa !70   ; 2 uses
  %i.aou = icmp eq ptr %i.aot, %i.ans
  br i1 %i.aou, label %__cxx_global_var_init.175.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i348

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i348: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit.i347
  %i.aov = load i64, ptr %i.ans, align 8, !tbaa !71
  %i.aow = add i64 %i.aov, 1
  call void @_ZdlPvm(ptr noundef %i.aot, i64 noundef %i.aow) #31
  br label %__cxx_global_var_init.175.exit

bb.ip:                                            ; preds = %.noexc.i.i.i351
  %i.aox = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit8.i340

bb.iq:                                            ; preds = %bb.in, %bb.im, %bb.il, %bb.ik, %bb.ij
  %i.aoy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aoz = load ptr, ptr %0, align 8, !tbaa !70   ; 2 uses
  %i.apa = icmp eq ptr %i.aoz, %i.anx
  br i1 %i.apa, label %_ZN7testing8internal12CodeLocationD2Ev.exit8.i340, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6.i339

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6.i339: ; preds = %bb.iq
  %i.apb = load i64, ptr %i.anx, align 8, !tbaa !71
  %i.apc = add i64 %i.apb, 1
  call void @_ZdlPvm(ptr noundef %i.aoz, i64 noundef %i.apc) #31
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit8.i340

_ZN7testing8internal12CodeLocationD2Ev.exit8.i340: ; preds = %bb.iq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6.i339, %bb.ip
  %.pn.i341 = phi { ptr, i32 } [ %i.aox, %bb.ip ], [ %i.aoy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6.i339 ], [ %i.aoy, %bb.iq ]
  %i.apd = load ptr, ptr %1, align 8, !tbaa !70   ; 2 uses
  %i.ape = icmp eq ptr %i.apd, %i.ans
  br i1 %i.ape, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i343, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i342

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i342: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit8.i340
  %i.apf = load i64, ptr %i.ans, align 8, !tbaa !71
  %i.apg = add i64 %i.apf, 1
  call void @_ZdlPvm(ptr noundef %i.apd, i64 noundef %i.apg) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i343

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i343: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit8.i340, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i342
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %common.resume

__cxx_global_var_init.175.exit:                   ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit.i347, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i348
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  store ptr %i.aoo, ptr @_ZN29format_impl_test_to_utf8_Test10test_info_E, align 8, !tbaa !1075
  %i.aph = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN29format_impl_test_to_utf8_Test10test_info_E) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0)
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umulh.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #29

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.abs.i128(i128, i1 immarg) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.ctlz.i128(i128, i1 immarg) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v2f64(double, <2 x double>) #25

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind memory(none) }
attributes #10 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold noreturn }
attributes #17 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #25 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #30 = { nounwind }
attributes #31 = { builtin nounwind }
attributes #32 = { noreturn }
attributes #33 = { noreturn nounwind }
attributes #34 = { builtin allocsize(0) }
attributes #35 = { nounwind allocsize(0) }

!llvm.module.flags = !{!34, !35, !36, !37}
!llvm.ident = !{!38}
!llvm.errno.tbaa = !{!43}

!0 = distinct !{null, null, null}
!1 = distinct !{!1, !98}
!2 = distinct !{!2, !98}
!3 = distinct !{null}
!4 = distinct !{!4, !98}
!5 = distinct !{!5, !98}
!6 = distinct !{!6, !98}
!7 = distinct !{null, null}
!8 = distinct !{!8, !98}
!9 = distinct !{!9, !98}
!10 = distinct !{null, null}
!11 = distinct !{null, null, null}
!12 = distinct !{!12, !98}
!13 = distinct !{null, null}
!14 = distinct !{null}
!15 = distinct !{null}
!16 = distinct !{!16, !98}
!17 = distinct !{null}
!18 = distinct !{!18, !98}
!19 = distinct !{!19, !98}
!20 = distinct !{!20, !98}
!21 = distinct !{!21, !98}
!22 = distinct !{null, null, null, null}
!23 = distinct !{!23, !98}
!24 = distinct !{null, null}
!25 = distinct !{null, null}
!26 = distinct !{null}
!27 = distinct !{null, null, null, null}
!28 = distinct !{null}
!29 = distinct !{null}
!30 = distinct !{!30, !98}
!31 = distinct !{null, null, null, null}
!32 = distinct !{null, null, null, null, null}
!33 = distinct !{!33, !98}
!34 = !{i32 1, !"long-double-type", !"x86_fp80"}
!35 = !{i32 8, !"PIC Level", i32 2}
!36 = !{i32 7, !"PIE Level", i32 2}
!37 = !{i32 7, !"uwtable", i32 2}
!38 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!39 = !{!"Simple C++ TBAA"}
!40 = !{!"omnipotent char", !39, i64 0}
!41 = !{!"int", !40, i64 0}
!42 = !{!"__libc_errno", !41, i64 0}
!43 = !{!42, !41, i64 0}
!44 = !{!"vtable pointer", !39, i64 0}
!45 = !{!44, !44, i64 0}
!46 = !{!"long", !40, i64 0}
!47 = !{!"_ZTSSt13_Ios_Fmtflags", !40, i64 0}
!48 = !{!"_ZTSSt12_Ios_Iostate", !40, i64 0}
!49 = !{!"any pointer", !40, i64 0}
!50 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !49, i64 0}
!51 = !{!"_ZTSNSt8ios_base6_WordsE", !49, i64 0, !46, i64 8}
!52 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !49, i64 0}
!53 = !{!"p1 _ZTSNSt6locale5_ImplE", !49, i64 0}
!54 = !{!"_ZTSSt6locale", !53, i64 0}
!55 = !{!"_ZTSSt8ios_base", !46, i64 8, !46, i64 16, !47, i64 24, !48, i64 28, !48, i64 32, !50, i64 40, !51, i64 48, !40, i64 64, !41, i64 192, !52, i64 200, !54, i64 208}
!56 = !{!55, !48, i64 32}
!57 = !{!"p1 int", !49, i64 0}
!58 = !{!"_ZTSN3fmt3v126detail6bufferIjEE", !57, i64 0, !46, i64 8, !46, i64 16, !49, i64 24}
!59 = !{!58, !49, i64 24}
!60 = !{!58, !57, i64 0}
!61 = !{!58, !46, i64 16}
!62 = !{!"_ZTSN3fmt3v126detail9allocatorIjEE"}
!63 = !{!"_ZTSN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEEE", !58, i64 0, !40, i64 32, !62, i64 160}
!64 = !{!"_ZTSN3fmt3v126detail6bigintE", !63, i64 0, !41, i64 168}
!65 = !{!64, !41, i64 168}
!66 = !{!"p1 omnipotent char", !49, i64 0}
!67 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !66, i64 0}
!68 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !67, i64 0, !46, i64 8, !40, i64 16}
!69 = !{!68, !46, i64 8}
!70 = !{!68, !66, i64 0}
!71 = !{!40, !40, i64 0}
!72 = !{!"bool", !40, i64 0}
!73 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !49, i64 0}
!74 = !{!"_ZTSSt10_Head_baseILm0EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE", !73, i64 0}
!75 = !{!"_ZTSSt11_Tuple_implILm0EJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EEE", !74, i64 0}
!76 = !{!"_ZTSSt5tupleIJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EEE", !75, i64 0}
!77 = !{!"_ZTSSt15__uniq_ptr_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EE", !76, i64 0}
!78 = !{!"_ZTSSt15__uniq_ptr_dataINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_ELb1ELb1EE", !77, i64 0}
!79 = !{!"_ZTSSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EE", !78, i64 0}
!80 = !{!"_ZTSN7testing15AssertionResultE", !72, i64 0, !79, i64 8}
!81 = !{!80, !72, i64 0}
!82 = !{i8 0, i8 2}
!83 = !{}
!84 = !{!73, !73, i64 0}
!85 = !{!"p1 _ZTSNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE", !49, i64 0}
!86 = !{!85, !85, i64 0}
!87 = !{!41, !41, i64 0}
!88 = !{!58, !46, i64 8}
!89 = !{!"_ZTSN3fmt3v126detail6bufferIcEE", !66, i64 0, !46, i64 8, !46, i64 16, !49, i64 24}
!90 = !{!89, !49, i64 24}
!91 = !{!89, !66, i64 0}
!92 = !{!89, !46, i64 16}
!93 = !{!"p1 _ZTSN3fmt3v126detail6bufferIcEE", !49, i64 0}
!94 = !{!93, !93, i64 0}
!95 = !{!89, !46, i64 8}
!96 = !{!67, !66, i64 0}
!97 = !{!46, !46, i64 0}
!98 = !{!"llvm.loop.mustprogress"}
!99 = !{!"llvm.loop.isvectorized", i32 1}
!100 = !{!"llvm.loop.unroll.runtime.disable"}
!101 = !{ptr @_ZN3fmt3v126detail6bigintlSEi}
!102 = !{!"long long", !40, i64 0}
!103 = !{!102, !102, i64 0}
!104 = !{!66, !66, i64 0}
!105 = !{!"_ZTSN3fmt3v1217basic_string_viewIcEE", !66, i64 0, !46, i64 8}
!106 = !{!"_ZTSN3fmt3v1213parse_contextIcEE", !105, i64 0, !41, i64 16}
!107 = !{!106, !41, i64 16}
!108 = !{!49, !49, i64 0}
!109 = !{!"_ZTSN3fmt3v1211basic_specsE", !41, i64 0, !40, i64 4}
!110 = !{!109, !41, i64 0}
!111 = !{!"_ZTSN3fmt3v124signE", !40, i64 0}
!112 = !{!"_ZTSZN3fmt3v126detail15write_nonfiniteIcSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEET0_SB_bNS0_12format_specsENS0_4signEEUlSA_E_", !111, i64 0, !66, i64 8}
!113 = !{!112, !111, i64 0}
!114 = !{!112, !66, i64 8}
!115 = !{!"_ZTSN3fmt3v1212format_specsE", !109, i64 0, !41, i64 8, !41, i64 12}
!116 = !{!115, !41, i64 8}
!117 = !{!115, !41, i64 12}
end_hunk_3
