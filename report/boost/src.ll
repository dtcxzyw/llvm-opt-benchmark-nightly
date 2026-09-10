Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/src?download=true
inline.NumInlined: 7222
inline.NumDeleted: 1430
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 62
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN5boost4json12basic_parserINS0_6detail7handlerEE12parse_numberILb1ELc48ELNS0_16number_precisionE1EEEPKcS8_St17integral_constantIbXT_EES9_IcXT0_EES9_IS6_XT1_EE:bb.a

.sink.split:                                      ; preds = %bb.au, %bb.ar
  store i32 0, ptr %i.d, align 8, !tbaa !352
  store i32 2147483647, ptr %i.e, align 4, !tbaa !359
  br label %bb.bf

bb.bf:                                            ; preds = %.sink.split, %.critedge._crit_edge, %._crit_edge, %bb.at, %bb.aq, %bb.i, %.loopexit, %bb.z
  %.17 = phi ptr [ %.7347.lcssa, %._crit_edge ], [ %.12407, %bb.aq ], [ %.2342432.lcssa, %.loopexit ], [ %.12407, %bb.at ], [ %i.ch, %bb.i ], [ %.2342.lcssa, %.critedge._crit_edge ], [ %.7347429, %bb.z ], [ %.12407, %.sink.split ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #47
  %i.kh = ptrtoint ptr %.17 to i64
  %i.ki = sub i64 %i.kh, %i.j
  %i.kj = getelementptr inbounds nuw i8, ptr %1, i64 %i.ki
  %i.kk = call { ptr, i32 } @_ZN5boost4json6detail8charconv6detail10fast_float19from_chars_advancedIdcEENS2_19from_chars_result_tIT0_EEPKS7_SA_RT_NS4_15parse_options_tIS7_EE(ptr noundef %1, ptr noundef %i.kj, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 197568495619) #47 ; 0 uses
  %i.kl = load double, ptr %i.a, align 8, !tbaa !315
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !224 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !323 ; 2 uses
  %.not.i.i.i140 = icmp ult ptr %i.ko, %i.kq
  br i1 %.not.i.i.i140, label %bb.bl, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !225
  %i.kt = ptrtoint ptr %i.kq to i64
  %i.ku = ptrtoint ptr %i.ks to i64
  %i.kv = sub i64 %i.kt, %i.ku                    ; 2 uses
  %i.kw = sdiv exact i64 %i.kv, 24
  %i.kx = add nsw i64 %i.kw, 1
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bh, %bb.bg
  %.0.i.i.i.i141 = phi i64 [ 16, %bb.bg ], [ %i.kz, %bb.bh ] ; 4 uses
  %i.ky = icmp ult i64 %.0.i.i.i.i141, %i.kx
  %i.kz = shl i64 %.0.i.i.i.i141, 1
  br i1 %i.ky, label %bb.bh, label %bb.bi, !llvm.loop !49

bb.bi:                                            ; preds = %bb.bh
  %i.la = load i64, ptr %0, align 8, !tbaa !96    ; 2 uses
  %.not.i.i.i.i.i.i142 = icmp eq i64 %i.la, 0
  %i.lb = and i64 %i.la, -4
  %i.lc = inttoptr i64 %i.lb to ptr
  %.0.i.i.i.i.i.i143 = select i1 %.not.i.i.i.i.i.i142, ptr @_ZN5boost4json6detail16default_resource9instance_E, ptr %i.lc ; 2 uses
  %i.ld = mul i64 %.0.i.i.i.i141, 24
  %i.le = load ptr, ptr %.0.i.i.i.i.i.i143, align 8, !tbaa !98
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 16
  %i.lg = load ptr, ptr %i.lf, align 8
  %i.lh = call noundef ptr %i.lg(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i.i.i.i.i143, i64 noundef %i.ld, i64 noundef 16), !inline_history !64 ; 4 uses
  %i.li = load ptr, ptr %i.kn, align 8, !tbaa !224
  %i.lj = load ptr, ptr %i.kr, align 8, !tbaa !225 ; 3 uses
  %.not.i.i.i.i144 = icmp eq ptr %i.lj, null
  %.pre.i.i.i.i145 = ptrtoint ptr %i.li to i64    ; 2 uses
  br i1 %.not.i.i.i.i144, label %_ZN5boost4json11value_stack5stack8grow_oneEv.exit.i.i.i149, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.lk = ptrtoint ptr %i.lj to i64
  %i.ll = sub i64 %.pre.i.i.i.i145, %i.lk         ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lh, ptr nonnull align 1 %i.lj, i64 %i.ll, i1 false)
  %i.lm = load ptr, ptr %i.kr, align 8, !tbaa !225 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !322
  %.not12.i.i.i.i146 = icmp eq ptr %i.lm, %i.lo
  br i1 %.not12.i.i.i.i146, label %_ZN5boost4json11value_stack5stack8grow_oneEv.exit.i.i.i149, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.lp = load i64, ptr %0, align 8, !tbaa !96    ; 2 uses
  %.not.i.i13.i.i.i.i147 = icmp eq i64 %i.lp, 0
  %i.lq = and i64 %i.lp, -4
  %i.lr = inttoptr i64 %i.lq to ptr
  %.0.i.i14.i.i.i.i148 = select i1 %.not.i.i13.i.i.i.i147, ptr @_ZN5boost4json6detail16default_resource9instance_E, ptr %i.lr ; 2 uses
  %i.ls = load ptr, ptr %.0.i.i14.i.i.i.i148, align 8, !tbaa !98
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 24
  %i.lu = load ptr, ptr %i.lt, align 8
  call void %i.lu(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i14.i.i.i.i148, ptr noundef %i.lm, i64 noundef %i.kv, i64 noundef 16), !inline_history !65
  br label %_ZN5boost4json11value_stack5stack8grow_oneEv.exit.i.i.i149

_ZN5boost4json11value_stack5stack8grow_oneEv.exit.i.i.i149: ; preds = %bb.bk, %bb.bj, %bb.bi
  %.pre-phi18.i.i.i.i150 = phi i64 [ %i.ll, %bb.bk ], [ %i.ll, %bb.bj ], [ %.pre.i.i.i.i145, %bb.bi ]
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lh, i64 %.pre-phi18.i.i.i.i150 ; 2 uses
  store ptr %i.lv, ptr %i.kn, align 8, !tbaa !224
  %i.lw = getelementptr inbounds nuw [24 x i8], ptr %i.lh, i64 %.0.i.i.i.i141
  store ptr %i.lw, ptr %i.kp, align 8, !tbaa !323
  store ptr %i.lh, ptr %i.kr, align 8, !tbaa !225
  br label %bb.bl

bb.bl:                                            ; preds = %_ZN5boost4json11value_stack5stack8grow_oneEv.exit.i.i.i149, %bb.bf
  %i.lx = phi ptr [ %i.lv, %_ZN5boost4json11value_stack5stack8grow_oneEv.exit.i.i.i149 ], [ %i.ko, %bb.bf ] ; 3 uses
  %i.ly = load i64, ptr %i.km, align 8, !tbaa !96 ; 3 uses
  %i.lz = trunc i64 %i.ly to i1
  br i1 %i.lz, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.ma = and i64 %i.ly, -4
  %i.mb = inttoptr i64 %i.ma to ptr
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 8
  %i.md = atomicrmw add ptr %i.mc, i64 1 monotonic, align 8 ; 0 uses
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bl, %bb.bm
  store i64 %i.ly, ptr %i.lx, align 8, !tbaa !96
  %i.me = getelementptr inbounds nuw i8, ptr %i.lx, i64 8
  store i8 4, ptr %i.me, align 8, !tbaa !136
  %i.mf = getelementptr inbounds nuw i8, ptr %i.lx, i64 16
  store double %i.kl, ptr %i.mf, align 8, !tbaa !93
  %i.mg = load ptr, ptr %i.kn, align 8, !tbaa !224
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 24
  store ptr %i.mh, ptr %i.kn, align 8, !tbaa !224
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #47
  br label %bb.bo

bb.bo:                                            ; preds = %.thread399, %.thread387, %bb.u, %.thread353, %bb.bn, %bb.be, %bb.av, %bb.as, %bb.al, %bb.ai, %bb.ah, %bb.ab, %bb.v, %bb.s, %bb.r, %bb.m, %bb.k
  %.10 = phi ptr [ %i.z, %.thread353 ], [ %i.dw, %bb.m ], [ %i.ei, %bb.r ], [ %i.ej, %bb.s ], [ %.16, %bb.be ], [ %i.fc, %bb.v ], [ %.17, %bb.bn ], [ %i.hn, %bb.al ], [ %i.ik, %bb.av ], [ %i.cv, %bb.k ], [ %i.ie, %bb.as ], [ %i.fw, %.thread387 ], [ %i.gk, %bb.ab ], [ %i.hb, %.thread399 ], [ %i.gw, %bb.ah ], [ %i.gx, %bb.ai ], [ %i.en, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #47
  ret ptr %.10
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost4json6detail10sbo_bufferILm34EE6appendEPKcm(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %.not.i = icmp eq i64 %2, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %.pre5 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !229 ; 3 uses
  br i1 %.not.i, label %._ZN5boost4json6detail10sbo_bufferILm34EE4growEm.exit.thread_crit_edge, label %bb.b

._ZN5boost4json6detail10sbo_bufferILm34EE4growEm.exit.thread_crit_edge: ; preds = %bb.a
  %.phi.trans.insert6 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre7 = load ptr, ptr %.phi.trans.insert6, align 8, !tbaa !203
  br label %_ZN5boost4json6detail10sbo_bufferILm34EE4growEm.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.a = sub i64 2147483646, %.pre5
  %i.b = icmp ult i64 %i.a, %2
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost4json6detail18throw_system_errorENS0_5errorEPKNS_15source_locationE(i32 noundef 14, ptr noundef nonnull @_ZZN5boost4json6detail10sbo_bufferILm34EE4growEmE3loc) #48
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !203
  %i.e = icmp eq ptr %i.d, %0
  %i.f = load i64, ptr %0, align 8
  %spec.select.i.i = select i1 %i.e, i64 34, i64 %i.f ; 3 uses
  %i.g = add i64 %.pre5, %2                       ; 2 uses
  %i.h = sub i64 2147483646, %spec.select.i.i
  %.not9.i = icmp ugt i64 %spec.select.i.i, %i.h
  %i.i = shl i64 %spec.select.i.i, 1
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 %i.g)
  %.0.i = select i1 %.not9.i, i64 %i.g, i64 %.sroa.speculated.i ; 2 uses
  %i.j = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %.0.i) #53 ; 4 uses
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !203  ; 4 uses
  %i.l = load i64, ptr %.phi.trans.insert, align 8, !tbaa !229 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr align 1 %i.k, i64 %i.l, i1 false)
  %i.m = icmp eq ptr %i.k, %0
  br i1 %i.m, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = icmp eq ptr %i.k, null
  br i1 %i.n, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdaPv(ptr noundef nonnull %i.k) #50
  %.pre.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !229
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pre = phi i64 [ %.pre.pre, %bb.f ], [ %i.l, %bb.e ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(26) %i.o, i8 0, i64 26, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %i.p = phi i64 [ %.pre, %bb.g ], [ %i.l, %bb.d ] ; 2 uses
  store ptr %i.j, ptr %i.c, align 8, !tbaa !203
  store i64 %.0.i, ptr %0, align 8, !tbaa !93
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr align 1 %1, i64 %2, i1 false)
  br label %_ZN5boost4json6detail10sbo_bufferILm34EE4growEm.exit.thread

_ZN5boost4json6detail10sbo_bufferILm34EE4growEm.exit.thread: ; preds = %._ZN5boost4json6detail10sbo_bufferILm34EE4growEm.exit.thread_crit_edge, %bb.h
  %i.r = phi ptr [ %.pre7, %._ZN5boost4json6detail10sbo_bufferILm34EE4growEm.exit.thread_crit_edge ], [ %i.j, %bb.h ]
  %i.s = phi i64 [ %.pre5, %._ZN5boost4json6detail10sbo_bufferILm34EE4growEm.exit.thread_crit_edge ], [ %i.p, %bb.h ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.u = add i64 %i.s, %2
  store i64 %i.u, ptr %i.t, align 8, !tbaa !229
  ret ptr %i.r
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #25

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE12parse_numberILb1ELc48ELNS0_16number_precisionE2EEEPKcS8_St17integral_constantIbXT_EES9_IcXT0_EES9_IS6_XT1_EE(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef %1) local_unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.boost::json::basic_parser<boost::json::detail::handler>::number", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !250  ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #47
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 0, ptr %i.f, align 8, !tbaa !229
  %i.g = ptrtoint ptr %i.b to i64                 ; 5 uses
  %i.h = ptrtoint ptr %1 to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp ugt i64 %i.i, 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.c, i8 0, i64 10, i1 false)
  br i1 %i.j, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %2, align 8, !tbaa !351
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !93    ; 2 uses
  %.not = icmp eq i8 %i.l, 46
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = and i8 %i.l, -33
  %i.n = icmp eq i8 %i.m, 69
  br i1 %i.n, label %.thread321, label %bb.ai

.thread321:                                       ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 2
  br label %bb.u

bb.d:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 3 uses
  %i.q = load <16 x i8>, ptr %i.p, align 1, !tbaa !93
  %i.r = add <16 x i8> %i.q, splat (i8 70)
  %i.s = icmp slt <16 x i8> %i.r, splat (i8 118)
  %i.t = bitcast <16 x i1> %i.s to i16
  %i.u = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.t, i1 false) ; 3 uses
  %i.v = icmp eq i16 %i.u, 0
  br i1 %i.v, label %.thread305, label %bb.e

.thread305:                                       ; preds = %bb.d
  %i.w = tail call noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE4failEPKcNS0_5errorEPKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef nonnull %i.p, i32 noundef 1, ptr noundef nonnull @_ZZN5boost4json12basic_parserINS0_6detail7handlerEE12parse_numberILb1ELc48ELNS0_16number_precisionE2EEEPKcS8_St17integral_constantIbXT_EES9_IcXT0_EES9_IS6_XT1_EEE3loc_0) #47
  br label %bb.az

bb.e:                                             ; preds = %bb.d
  %i.x = zext nneg i16 %i.u to i32
  %i.y = sub nsw i32 0, %i.x
  store i32 %i.y, ptr %i.c, align 8, !tbaa !352
  %i.z = zext nneg i16 %i.u to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.z ; 4 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !93  ; 2 uses
  %i.ac = and i8 %i.ab, -33
  %i.ad = icmp eq i8 %i.ac, 69
  br i1 %i.ad, label %.thread313, label %bb.f

.thread313:                                       ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  br label %bb.u

bb.f:                                             ; preds = %bb.e
  %i.af = add i8 %i.ab, -48
  %or.cond = icmp ult i8 %i.af, 10
  br i1 %or.cond, label %.thread309, label %.thread317

bb.g:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 5 uses
  store i64 0, ptr %2, align 8, !tbaa !351
  %i.ah = icmp ult ptr %i.ag, %i.b
  br i1 %i.ah, label %bb.k, label %bb.i, !prof !251

.preheader:                                       ; preds = %.lr.ph392
  %.2296 = getelementptr inbounds nuw i8, ptr %.2296391, i64 1
  %i.ai = load i8, ptr %.2296, align 1, !tbaa !93 ; 2 uses
  %i.aj = add i8 %i.ai, -48
  %i.ak = icmp ult i8 %i.aj, 10
  br i1 %i.ak, label %.preheader.1, label %.loopexit.split.loop.exit415, !prof !251

.preheader.1:                                     ; preds = %.preheader
  %.2296.1 = getelementptr inbounds nuw i8, ptr %.2296391, i64 2
  %i.al = load i8, ptr %.2296.1, align 1, !tbaa !93 ; 2 uses
  %i.am = add i8 %i.al, -48
  %i.an = icmp ult i8 %i.am, 10
  br i1 %i.an, label %.preheader.2, label %.loopexit.split.loop.exit411, !prof !251

.preheader.2:                                     ; preds = %.preheader.1
  %.2296.2 = getelementptr inbounds nuw i8, ptr %.2296391, i64 3 ; 3 uses
  %i.ao = load i8, ptr %.2296.2, align 1, !tbaa !93 ; 2 uses
  %i.ap = add i8 %i.ao, -48
  %i.aq = icmp ult i8 %i.ap, 10
  br i1 %i.aq, label %.preheader.3, label %.loopexit.split.loop.exit, !prof !251

.preheader.3:                                     ; preds = %.preheader.2
  %.2296.3 = getelementptr inbounds nuw i8, ptr %.2296391, i64 4 ; 2 uses
  %i.ar = icmp ult ptr %.2296.3, %i.b
  br i1 %i.ar, label %.lr.ph392, label %.preheader._crit_edge, !prof !277, !llvm.loop !914

.preheader._crit_edge:                            ; preds = %.lr.ph392.prol.loopexit, %.preheader.3, %.preheader.preheader
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.at = load i8, ptr %i.as, align 8, !tbaa !226, !range !231, !noundef !125
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.h, label %.thread317, !prof !252

bb.h:                                             ; preds = %.preheader._crit_edge
  %i.av = call noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE7suspendEPKcNS4_5stateERKNS4_6numberE(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef nonnull %scevgep, i8 noundef signext 42, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.az

.lr.ph392:                                        ; preds = %.lr.ph392.prol.loopexit, %.preheader.3
  %.2296391 = phi ptr [ %.2296.3, %.preheader.3 ], [ %.2296391.unr, %.lr.ph392.prol.loopexit ] ; 11 uses
  %.6300.pn390 = phi ptr [ %.2296.2, %.preheader.3 ], [ %.6300.pn390.unr, %.lr.ph392.prol.loopexit ]
  %i.aw = load i8, ptr %.2296391, align 1, !tbaa !93 ; 2 uses
  %i.ax = add i8 %i.aw, -48
  %i.ay = icmp ult i8 %i.ax, 10
  br i1 %i.ay, label %.preheader, label %.loopexit, !prof !251

.loopexit.split.loop.exit:                        ; preds = %.preheader.2
  %.2296.1.le424 = getelementptr inbounds nuw i8, ptr %.2296391, i64 2
  br label %.loopexit

.loopexit.split.loop.exit411:                     ; preds = %.preheader.1
  %.2296.le427 = getelementptr inbounds nuw i8, ptr %.2296391, i64 1
  %.2296.1.le = getelementptr inbounds nuw i8, ptr %.2296391, i64 2
  br label %.loopexit

.loopexit.split.loop.exit415:                     ; preds = %.preheader
  %.2296.le = getelementptr inbounds nuw i8, ptr %.2296391, i64 1
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph392.prol, %.loopexit.split.loop.exit, %.loopexit.split.loop.exit411, %.loopexit.split.loop.exit415, %.lr.ph392
  %.2296391.lcssa = phi ptr [ %.2296391, %.lr.ph392 ], [ %.2296.le, %.loopexit.split.loop.exit415 ], [ %.2296.1.le, %.loopexit.split.loop.exit411 ], [ %.2296.2, %.loopexit.split.loop.exit ], [ %.2296391.prol, %.lr.ph392.prol ]
  %.6300.pn390.lcssa = phi ptr [ %.6300.pn390, %.lr.ph392 ], [ %.2296391, %.loopexit.split.loop.exit415 ], [ %.2296.le427, %.loopexit.split.loop.exit411 ], [ %.2296.1.le424, %.loopexit.split.loop.exit ], [ %.6300.pn390.prol, %.lr.ph392.prol ]
  %.lcssa = phi i8 [ %i.aw, %.lr.ph392 ], [ %i.ai, %.loopexit.split.loop.exit415 ], [ %i.al, %.loopexit.split.loop.exit411 ], [ %i.ao, %.loopexit.split.loop.exit ], [ %i.ch, %.lr.ph392.prol ]
  %i.az = and i8 %.lcssa, -33
  %i.ba = icmp eq i8 %i.az, 69
  br i1 %i.ba, label %.thread324, label %.thread317

.thread324:                                       ; preds = %.loopexit
  %i.bb = getelementptr inbounds nuw i8, ptr %.6300.pn390.lcssa, i64 2
  br label %bb.u

bb.i:                                             ; preds = %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bd = load i8, ptr %i.bc, align 8, !tbaa !226, !range !231, !noundef !125
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %bb.j, label %bb.ai, !prof !252

bb.j:                                             ; preds = %bb.i
  %i.bf = call noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE7suspendEPKcNS4_5stateERKNS4_6numberE(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef nonnull %i.ag, i8 noundef signext 43, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.az

bb.k:                                             ; preds = %bb.g
  %i.bg = load i8, ptr %i.ag, align 1, !tbaa !93  ; 2 uses
  %i.bh = icmp eq i8 %i.bg, 46
  br i1 %i.bh, label %bb.m, label %bb.l, !prof !251

bb.l:                                             ; preds = %bb.k
  %i.bi = and i8 %i.bg, -33
  %i.bj = icmp eq i8 %i.bi, 69
  br i1 %i.bj, label %.thread334, label %bb.ai

.thread334:                                       ; preds = %bb.l
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 2
  br label %bb.u

bb.m:                                             ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 6 uses
  %i.bm = icmp ult ptr %i.bl, %i.b
  br i1 %i.bm, label %bb.q, label %bb.n, !prof !251

bb.n:                                             ; preds = %bb.m
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bo = load i8, ptr %i.bn, align 8, !tbaa !226, !range !231, !noundef !125
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.o, label %bb.p, !prof !252

bb.o:                                             ; preds = %bb.n
  %i.bq = call noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE7suspendEPKcNS4_5stateERKNS4_6numberE(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef nonnull %i.bl, i8 noundef signext 44, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.az

bb.p:                                             ; preds = %bb.n
  %i.br = tail call noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE4failEPKcNS0_5errorEPKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef nonnull %i.bl, i32 noundef 1, ptr noundef nonnull @_ZZN5boost4json12basic_parserINS0_6detail7handlerEE12parse_numberILb1ELc48ELNS0_16number_precisionE2EEEPKcS8_St17integral_constantIbXT_EES9_IcXT0_EES9_IS6_XT1_EEE3loc_4) #47
  br label %bb.az

bb.q:                                             ; preds = %bb.m
  %i.bs = load i8, ptr %i.bl, align 1, !tbaa !93
  %i.bt = add i8 %i.bs, -48
  %i.bu = icmp ult i8 %i.bt, 10
  br i1 %i.bu, label %.thread309, label %bb.r, !prof !251

bb.r:                                             ; preds = %bb.q
  %i.bv = tail call noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE4failEPKcNS0_5errorEPKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef nonnull %i.bl, i32 noundef 1, ptr noundef nonnull @_ZZN5boost4json12basic_parserINS0_6detail7handlerEE12parse_numberILb1ELc48ELNS0_16number_precisionE2EEEPKcS8_St17integral_constantIbXT_EES9_IcXT0_EES9_IS6_XT1_EEE3loc_5) #47
  br label %bb.az

.thread309:                                       ; preds = %bb.q, %bb.f
  %.6300 = phi ptr [ %i.aa, %bb.f ], [ %i.bl, %bb.q ] ; 8 uses
  %i.bw = icmp ult ptr %.6300, %i.b
  br i1 %i.bw, label %.preheader.preheader, label %bb.s, !prof !251

bb.s:                                             ; preds = %.thread309
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.by = load i8, ptr %i.bx, align 8, !tbaa !226, !range !231, !noundef !125
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %bb.t, label %.thread317, !prof !252

bb.t:                                             ; preds = %bb.s
  %i.ca = call noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE7suspendEPKcNS4_5stateERKNS4_6numberE(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef nonnull %.6300, i8 noundef signext 45, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.az

.preheader.preheader:                             ; preds = %.thread309
  %.6300361 = ptrtoaddr ptr %.6300 to i64         ; 2 uses
  %i.cb = sub i64 %i.g, %.6300361
  %scevgep = getelementptr i8, ptr %.6300, i64 %i.cb ; 2 uses
  %.2296389 = getelementptr inbounds nuw i8, ptr %.6300, i64 1 ; 3 uses
  %i.cc = icmp ult ptr %.2296389, %i.b
  br i1 %i.cc, label %.lr.ph392.preheader, label %.preheader._crit_edge, !prof !276

.lr.ph392.preheader:                              ; preds = %.preheader.preheader
  %i.cd = xor i64 %.6300361, -1
  %i.ce = add i64 %i.cd, %i.g
  %i.cf = freeze i64 %i.ce                        ; 2 uses
  %i.cg = add i64 %i.cf, -1
  %xtraiter = and i64 %i.cf, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph392.prol.loopexit, label %.lr.ph392.prol, !prof !276

.lr.ph392.prol:                                   ; preds = %.lr.ph392.preheader, %.preheader.prol
  %.2296391.prol = phi ptr [ %.2296.prol, %.preheader.prol ], [ %.2296389, %.lr.ph392.preheader ] ; 5 uses
  %.6300.pn390.prol = phi ptr [ %.2296391.prol, %.preheader.prol ], [ %.6300, %.lr.ph392.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.prol ], [ 0, %.lr.ph392.preheader ]
  %i.ch = load i8, ptr %.2296391.prol, align 1, !tbaa !93 ; 2 uses
  %i.ci = add i8 %i.ch, -48
  %i.cj = icmp ult i8 %i.ci, 10
  br i1 %i.cj, label %.preheader.prol, label %.loopexit, !prof !251

.preheader.prol:                                  ; preds = %.lr.ph392.prol
  %.2296.prol = getelementptr inbounds nuw i8, ptr %.2296391.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph392.prol.loopexit, label %.lr.ph392.prol, !prof !355, !llvm.loop !915

.lr.ph392.prol.loopexit:                          ; preds = %.preheader.prol, %.lr.ph392.preheader
  %.2296391.unr = phi ptr [ %.2296389, %.lr.ph392.preheader ], [ %.2296.prol, %.preheader.prol ]
  %.6300.pn390.unr = phi ptr [ %.6300, %.lr.ph392.preheader ], [ %.2296391.prol, %.preheader.prol ]
  %i.ck = icmp ult i64 %i.cg, 3
  br i1 %i.ck, label %.preheader._crit_edge, label %.lr.ph392, !prof !357

bb.u:                                             ; preds = %.thread334, %.thread324, %.thread321, %.thread313
  %.8301 = phi ptr [ %i.bb, %.thread324 ], [ %i.ae, %.thread313 ], [ %i.o, %.thread321 ], [ %i.bk, %.thread334 ] ; 6 uses
  %i.cl = icmp ult ptr %.8301, %i.b
  br i1 %i.cl, label %bb.w, label %bb.v, !prof !251

bb.v:                                             ; preds = %bb.u
  %i.cm = call noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE13maybe_suspendEPKcNS4_5stateERKNS4_6numberE(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef nonnull %.8301, i8 noundef signext 46, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.az

bb.w:                                             ; preds = %bb.u
  %i.cn = load i8, ptr %.8301, align 1, !tbaa !93
  switch i8 %i.cn, label %bb.z [
    i8 43, label %bb.x
    i8 45, label %bb.y
  ]

bb.x:                                             ; preds = %bb.w
  %i.co = getelementptr inbounds nuw i8, ptr %.8301, i64 1
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.cp = getelementptr inbounds nuw i8, ptr %.8301, i64 1
  store i8 1, ptr %i.e, align 8, !tbaa !358
  br label %bb.z

bb.z:                                             ; preds = %bb.w, %bb.x, %bb.y
  %.9302 = phi ptr [ %i.co, %bb.x ], [ %i.cp, %bb.y ], [ %.8301, %bb.w ] ; 8 uses
  %.9302362 = ptrtoaddr ptr %.9302 to i64         ; 2 uses
  %i.cq = icmp ult ptr %.9302, %i.b
  br i1 %i.cq, label %bb.ad, label %bb.aa, !prof !251

bb.aa:                                            ; preds = %bb.z
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.cs = load i8, ptr %i.cr, align 8, !tbaa !226, !range !231, !noundef !125
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %bb.ab, label %bb.ac, !prof !252

bb.ab:                                            ; preds = %bb.aa
  %i.cu = call noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE7suspendEPKcNS4_5stateERKNS4_6numberE(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef nonnull %.9302, i8 noundef signext 47, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.az

bb.ac:                                            ; preds = %bb.aa
  %i.cv = tail call noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE4failEPKcNS0_5errorEPKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef nonnull %.9302, i32 noundef 1, ptr noundef nonnull @_ZZN5boost4json12basic_parserINS0_6detail7handlerEE12parse_numberILb1ELc48ELNS0_16number_precisionE2EEEPKcS8_St17integral_constantIbXT_EES9_IcXT0_EES9_IS6_XT1_EEE3loc_7) #47
  br label %bb.az

bb.ad:                                            ; preds = %bb.z
  %i.cw = load i8, ptr %.9302, align 1, !tbaa !93 ; 2 uses
  %i.cx = add i8 %i.cw, -48
  %i.cy = icmp ult i8 %i.cx, 10
  br i1 %i.cy, label %bb.ae, label %.thread345, !prof !251

.thread345:                                       ; preds = %bb.ad
  %i.cz = tail call noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE4failEPKcNS0_5errorEPKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef nonnull %.9302, i32 noundef 1, ptr noundef nonnull @_ZZN5boost4json12basic_parserINS0_6detail7handlerEE12parse_numberILb1ELc48ELNS0_16number_precisionE2EEEPKcS8_St17integral_constantIbXT_EES9_IcXT0_EES9_IS6_XT1_EEE3loc_8) #47
  br label %bb.az

bb.ae:                                            ; preds = %bb.ad
  %i.da = zext nneg i8 %i.cw to i32
  %i.db = add nsw i32 %i.da, -48
  store i32 %i.db, ptr %i.d, align 4, !tbaa !359
  %.11355 = getelementptr inbounds nuw i8, ptr %.9302, i64 1 ; 4 uses
  %i.dc = icmp ult ptr %.11355, %i.b
  br i1 %i.dc, label %.lr.ph.preheader, label %._crit_edge, !prof !276

.lr.ph.preheader:                                 ; preds = %bb.ae
  %i.dd = sub i64 %i.g, %.9302362
  %scevgep363 = getelementptr i8, ptr %.9302, i64 %i.dd ; 2 uses
  %i.de = xor i64 %.9302362, -1
  %i.df = add i64 %i.de, %i.g
  %i.dg = freeze i64 %i.df                        ; 2 uses
  %i.dh = add i64 %i.dg, -1
  %xtraiter401 = and i64 %i.dg, 3                 ; 2 uses
  %lcmp.mod402.not = icmp eq i64 %xtraiter401, 0
  br i1 %lcmp.mod402.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !prof !276

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %bb.af
  %.11356.prol = phi ptr [ %.11.prol, %bb.af ], [ %.11355, %.lr.ph.preheader ] ; 3 uses
  %prol.iter403 = phi i64 [ %prol.iter403.next, %bb.af ], [ 0, %.lr.ph.preheader ]
  %i.di = load i8, ptr %.11356.prol, align 1, !tbaa !93
  %i.dj = add i8 %i.di, -48
  %i.dk = icmp ult i8 %i.dj, 10
  br i1 %i.dk, label %bb.af, label %.thread317, !prof !251

bb.af:                                            ; preds = %.lr.ph.prol
  %.11.prol = getelementptr inbounds nuw i8, ptr %.11356.prol, i64 1 ; 2 uses
  %prol.iter403.next = add i64 %prol.iter403, 1   ; 2 uses
  %prol.iter403.cmp.not = icmp eq i64 %prol.iter403.next, %xtraiter401
  br i1 %prol.iter403.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !prof !355, !llvm.loop !916

.lr.ph.prol.loopexit:                             ; preds = %bb.af, %.lr.ph.preheader
  %.11356.unr = phi ptr [ %.11355, %.lr.ph.preheader ], [ %.11.prol, %bb.af ]
  %i.dl = icmp ult i64 %i.dh, 3
  br i1 %i.dl, label %._crit_edge, label %.lr.ph, !prof !357

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %bb.ah, %bb.ae
  %.11.lcssa = phi ptr [ %.11355, %bb.ae ], [ %scevgep363, %bb.ah ], [ %scevgep363, %.lr.ph.prol.loopexit ] ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.dn = load i8, ptr %i.dm, align 8, !tbaa !226, !range !231, !noundef !125
  %i.do = trunc nuw i8 %i.dn to i1
  br i1 %i.do, label %bb.ag, label %.thread317, !prof !252

bb.ag:                                            ; preds = %._crit_edge
  %i.dp = call noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE7suspendEPKcNS4_5stateERKNS4_6numberE(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef nonnull %.11.lcssa, i8 noundef signext 48, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.az

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %bb.ah
  %.11356 = phi ptr [ %.11.3, %bb.ah ], [ %.11356.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.dq = load i8, ptr %.11356, align 1, !tbaa !93
  %i.dr = add i8 %i.dq, -48
  %i.ds = icmp ult i8 %i.dr, 10
  br i1 %i.ds, label %.lr.ph.1, label %.thread317, !prof !251

.lr.ph.1:                                         ; preds = %.lr.ph
  %.11 = getelementptr inbounds nuw i8, ptr %.11356, i64 1
  %i.dt = load i8, ptr %.11, align 1, !tbaa !93
  %i.du = add i8 %i.dt, -48
  %i.dv = icmp ult i8 %i.du, 10
  br i1 %i.dv, label %.lr.ph.2, label %.thread317.loopexit.loopexit.split.loop.exit429, !prof !251

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %.11.1 = getelementptr inbounds nuw i8, ptr %.11356, i64 2
  %i.dw = load i8, ptr %.11.1, align 1, !tbaa !93
  %i.dx = add i8 %i.dw, -48
  %i.dy = icmp ult i8 %i.dx, 10
  br i1 %i.dy, label %.lr.ph.3, label %.thread317.loopexit.loopexit.split.loop.exit427, !prof !251

.lr.ph.3:                                         ; preds = %.lr.ph.2
  %.11.2 = getelementptr inbounds nuw i8, ptr %.11356, i64 3
  %i.dz = load i8, ptr %.11.2, align 1, !tbaa !93
  %i.ea = add i8 %i.dz, -48
  %i.eb = icmp ult i8 %i.ea, 10
  br i1 %i.eb, label %bb.ah, label %.thread317.loopexit.loopexit.split.loop.exit, !prof !251

bb.ah:                                            ; preds = %.lr.ph.3
  %.11.3 = getelementptr inbounds nuw i8, ptr %.11356, i64 4 ; 2 uses
  %exitcond.not.3 = icmp eq ptr %.11.3, %i.b
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !prof !353, !llvm.loop !917

bb.ai:                                            ; preds = %bb.i, %bb.l, %bb.c
  %.15 = phi ptr [ %i.k, %bb.c ], [ %i.ag, %bb.i ], [ %i.ag, %bb.l ]
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !224 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !323 ; 2 uses
  %.not.i.i.i = icmp ult ptr %i.ee, %i.eg
  br i1 %.not.i.i.i, label %bb.ao, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !225
  %i.ej = ptrtoint ptr %i.eg to i64
  %i.ek = ptrtoint ptr %i.ei to i64
  %i.el = sub i64 %i.ej, %i.ek                    ; 2 uses
  %i.em = sdiv exact i64 %i.el, 24
  %i.en = add nsw i64 %i.em, 1
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ak, %bb.aj
  %.0.i.i.i.i = phi i64 [ 16, %bb.aj ], [ %i.ep, %bb.ak ] ; 4 uses
  %i.eo = icmp ult i64 %.0.i.i.i.i, %i.en
  %i.ep = shl i64 %.0.i.i.i.i, 1
  br i1 %i.eo, label %bb.ak, label %bb.al, !llvm.loop !49

bb.al:                                            ; preds = %bb.ak
  %i.eq = load i64, ptr %0, align 8, !tbaa !96    ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.eq, 0
  %i.er = and i64 %i.eq, -4
  %i.es = inttoptr i64 %i.er to ptr
  %.0.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, ptr @_ZN5boost4json6detail16default_resource9instance_E, ptr %i.es ; 2 uses
  %i.et = mul i64 %.0.i.i.i.i, 24
  %i.eu = load ptr, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !98
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %i.ew = load ptr, ptr %i.ev, align 8
  %i.ex = tail call noundef ptr %i.ew(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i.i.i.i.i, i64 noundef %i.et, i64 noundef 16), !inline_history !69 ; 4 uses
  %i.ey = load ptr, ptr %i.ed, align 8, !tbaa !224
  %i.ez = load ptr, ptr %i.eh, align 8, !tbaa !225 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ez, null
  %.pre.i.i.i.i = ptrtoint ptr %i.ey to i64       ; 2 uses
  br i1 %.not.i.i.i.i, label %_ZN5boost4json11value_stack5stack8grow_oneEv.exit.i.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fa = ptrtoint ptr %i.ez to i64
  %i.fb = sub i64 %.pre.i.i.i.i, %i.fa            ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ex, ptr nonnull align 1 %i.ez, i64 %i.fb, i1 false)
  %i.fc = load ptr, ptr %i.eh, align 8, !tbaa !225 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !322
  %.not12.i.i.i.i = icmp eq ptr %i.fc, %i.fe
  br i1 %.not12.i.i.i.i, label %_ZN5boost4json11value_stack5stack8grow_oneEv.exit.i.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ff = load i64, ptr %0, align 8, !tbaa !96    ; 2 uses
  %.not.i.i13.i.i.i.i = icmp eq i64 %i.ff, 0
  %i.fg = and i64 %i.ff, -4
  %i.fh = inttoptr i64 %i.fg to ptr
  %.0.i.i14.i.i.i.i = select i1 %.not.i.i13.i.i.i.i, ptr @_ZN5boost4json6detail16default_resource9instance_E, ptr %i.fh ; 2 uses
  %i.fi = load ptr, ptr %.0.i.i14.i.i.i.i, align 8, !tbaa !98
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 24
  %i.fk = load ptr, ptr %i.fj, align 8
  tail call void %i.fk(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i14.i.i.i.i, ptr noundef %i.fc, i64 noundef %i.el, i64 noundef 16), !inline_history !70
  br label %_ZN5boost4json11value_stack5stack8grow_oneEv.exit.i.i.i

_ZN5boost4json11value_stack5stack8grow_oneEv.exit.i.i.i: ; preds = %bb.an, %bb.am, %bb.al
  %.pre-phi18.i.i.i.i = phi i64 [ %i.fb, %bb.an ], [ %i.fb, %bb.am ], [ %.pre.i.i.i.i, %bb.al ]
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ex, i64 %.pre-phi18.i.i.i.i ; 2 uses
  store ptr %i.fl, ptr %i.ed, align 8, !tbaa !224
  %i.fm = getelementptr inbounds nuw [24 x i8], ptr %i.ex, i64 %.0.i.i.i.i
  store ptr %i.fm, ptr %i.ef, align 8, !tbaa !323
  store ptr %i.ex, ptr %i.eh, align 8, !tbaa !225
  br label %bb.ao

bb.ao:                                            ; preds = %_ZN5boost4json11value_stack5stack8grow_oneEv.exit.i.i.i, %bb.ai
  %i.fn = phi ptr [ %i.fl, %_ZN5boost4json11value_stack5stack8grow_oneEv.exit.i.i.i ], [ %i.ee, %bb.ai ] ; 3 uses
  %i.fo = load i64, ptr %i.ec, align 8, !tbaa !96 ; 3 uses
  %i.fp = trunc i64 %i.fo to i1
  br i1 %i.fp, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.fq = and i64 %i.fo, -4
  %i.fr = inttoptr i64 %i.fq to ptr
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.ft = atomicrmw add ptr %i.fs, i64 1 monotonic, align 8 ; 0 uses
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  store i64 %i.fo, ptr %i.fn, align 8, !tbaa !96
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  store i8 2, ptr %i.fu, align 8, !tbaa !136
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  store i64 0, ptr %i.fv, align 8, !tbaa !93
  %i.fw = load ptr, ptr %i.ed, align 8, !tbaa !224
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 24
  store ptr %i.fx, ptr %i.ed, align 8, !tbaa !224
  br label %bb.az

.thread317.loopexit.loopexit.split.loop.exit:     ; preds = %.lr.ph.3
  %.11.2.le = getelementptr inbounds nuw i8, ptr %.11356, i64 3
  br label %.thread317

.thread317.loopexit.loopexit.split.loop.exit427:  ; preds = %.lr.ph.2
  %.11.1.le = getelementptr inbounds nuw i8, ptr %.11356, i64 2
  br label %.thread317

.thread317.loopexit.loopexit.split.loop.exit429:  ; preds = %.lr.ph.1
  %.11.le = getelementptr inbounds nuw i8, ptr %.11356, i64 1
  br label %.thread317

.thread317:                                       ; preds = %.lr.ph, %.thread317.loopexit.loopexit.split.loop.exit429, %.thread317.loopexit.loopexit.split.loop.exit427, %.thread317.loopexit.loopexit.split.loop.exit, %.lr.ph.prol, %._crit_edge, %.loopexit, %bb.f, %bb.s, %.preheader._crit_edge
  %.16 = phi ptr [ %.2296391.lcssa, %.loopexit ], [ %scevgep, %.preheader._crit_edge ], [ %.6300, %bb.s ], [ %i.aa, %bb.f ], [ %.11.lcssa, %._crit_edge ], [ %.11356, %.lr.ph ], [ %.11.le, %.thread317.loopexit.loopexit.split.loop.exit429 ], [ %.11.1.le, %.thread317.loopexit.loopexit.split.loop.exit427 ], [ %.11.2.le, %.thread317.loopexit.loopexit.split.loop.exit ], [ %.11356.prol, %.lr.ph.prol ]
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !224 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !323 ; 2 uses
  %.not.i.i.i112 = icmp ult ptr %i.ga, %i.gc
  br i1 %.not.i.i.i112, label %bb.aw, label %bb.ar

bb.ar:                                            ; preds = %.thread317
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !225
  %i.gf = ptrtoint ptr %i.gc to i64
  %i.gg = ptrtoint ptr %i.ge to i64
  %i.gh = sub i64 %i.gf, %i.gg                    ; 2 uses
  %i.gi = sdiv exact i64 %i.gh, 24
  %i.gj = add nsw i64 %i.gi, 1
  br label %bb.as

bb.as:                                            ; preds = %bb.as, %bb.ar
  %.0.i.i.i.i113 = phi i64 [ 16, %bb.ar ], [ %i.gl, %bb.as ] ; 4 uses
  %i.gk = icmp ult i64 %.0.i.i.i.i113, %i.gj
  %i.gl = shl i64 %.0.i.i.i.i113, 1
  br i1 %i.gk, label %bb.as, label %bb.at, !llvm.loop !49

bb.at:                                            ; preds = %bb.as
  %i.gm = load i64, ptr %0, align 8, !tbaa !96    ; 2 uses
  %.not.i.i.i.i.i.i114 = icmp eq i64 %i.gm, 0
  %i.gn = and i64 %i.gm, -4
  %i.go = inttoptr i64 %i.gn to ptr
  %.0.i.i.i.i.i.i115 = select i1 %.not.i.i.i.i.i.i114, ptr @_ZN5boost4json6detail16default_resource9instance_E, ptr %i.go ; 2 uses
  %i.gp = mul i64 %.0.i.i.i.i113, 24
  %i.gq = load ptr, ptr %.0.i.i.i.i.i.i115, align 8, !tbaa !98
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  %i.gs = load ptr, ptr %i.gr, align 8
  %i.gt = tail call noundef ptr %i.gs(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i.i.i.i.i115, i64 noundef %i.gp, i64 noundef 16), !inline_history !64 ; 4 uses
  %i.gu = load ptr, ptr %i.fz, align 8, !tbaa !224
  %i.gv = load ptr, ptr %i.gd, align 8, !tbaa !225 ; 3 uses
  %.not.i.i.i.i116 = icmp eq ptr %i.gv, null
  %.pre.i.i.i.i117 = ptrtoint ptr %i.gu to i64    ; 2 uses
  br i1 %.not.i.i.i.i116, label %_ZN5boost4json11value_stack5stack8grow_oneEv.exit.i.i.i121, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gw = ptrtoint ptr %i.gv to i64
  %i.gx = sub i64 %.pre.i.i.i.i117, %i.gw         ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gt, ptr nonnull align 1 %i.gv, i64 %i.gx, i1 false)
  %i.gy = load ptr, ptr %i.gd, align 8, !tbaa !225 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !322
  %.not12.i.i.i.i118 = icmp eq ptr %i.gy, %i.ha
  br i1 %.not12.i.i.i.i118, label %_ZN5boost4json11value_stack5stack8grow_oneEv.exit.i.i.i121, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hb = load i64, ptr %0, align 8, !tbaa !96    ; 2 uses
  %.not.i.i13.i.i.i.i119 = icmp eq i64 %i.hb, 0
  %i.hc = and i64 %i.hb, -4
  %i.hd = inttoptr i64 %i.hc to ptr
  %.0.i.i14.i.i.i.i120 = select i1 %.not.i.i13.i.i.i.i119, ptr @_ZN5boost4json6detail16default_resource9instance_E, ptr %i.hd ; 2 uses
  %i.he = load ptr, ptr %.0.i.i14.i.i.i.i120, align 8, !tbaa !98
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 24
  %i.hg = load ptr, ptr %i.hf, align 8
  tail call void %i.hg(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i14.i.i.i.i120, ptr noundef %i.gy, i64 noundef %i.gh, i64 noundef 16), !inline_history !65
  br label %_ZN5boost4json11value_stack5stack8grow_oneEv.exit.i.i.i121

_ZN5boost4json11value_stack5stack8grow_oneEv.exit.i.i.i121: ; preds = %bb.av, %bb.au, %bb.at
  %.pre-phi18.i.i.i.i122 = phi i64 [ %i.gx, %bb.av ], [ %i.gx, %bb.au ], [ %.pre.i.i.i.i117, %bb.at ]
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gt, i64 %.pre-phi18.i.i.i.i122 ; 2 uses
  store ptr %i.hh, ptr %i.fz, align 8, !tbaa !224
  %i.hi = getelementptr inbounds nuw [24 x i8], ptr %i.gt, i64 %.0.i.i.i.i113
  store ptr %i.hi, ptr %i.gb, align 8, !tbaa !323
  store ptr %i.gt, ptr %i.gd, align 8, !tbaa !225
  br label %bb.aw

bb.aw:                                            ; preds = %_ZN5boost4json11value_stack5stack8grow_oneEv.exit.i.i.i121, %.thread317
  %i.hj = phi ptr [ %i.hh, %_ZN5boost4json11value_stack5stack8grow_oneEv.exit.i.i.i121 ], [ %i.ga, %.thread317 ] ; 3 uses
  %i.hk = load i64, ptr %i.fy, align 8, !tbaa !96 ; 3 uses
  %i.hl = trunc i64 %i.hk to i1
  br i1 %i.hl, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.hm = and i64 %i.hk, -4
  %i.hn = inttoptr i64 %i.hm to ptr
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %i.hp = atomicrmw add ptr %i.ho, i64 1 monotonic, align 8 ; 0 uses
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  store i64 %i.hk, ptr %i.hj, align 8, !tbaa !96
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  store i8 4, ptr %i.hq, align 8, !tbaa !136
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  store double 0.000000e+00, ptr %i.hr, align 8, !tbaa !93
  %i.hs = load ptr, ptr %i.fz, align 8, !tbaa !224
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 24
  store ptr %i.ht, ptr %i.fz, align 8, !tbaa !224
  br label %bb.az

bb.az:                                            ; preds = %.thread345, %bb.r, %.thread305, %bb.ay, %bb.aq, %bb.ag, %bb.ac, %bb.ab, %bb.v, %bb.t, %bb.p, %bb.o, %bb.j, %bb.h
  %.8 = phi ptr [ %i.w, %.thread305 ], [ %i.cz, %.thread345 ], [ %i.bq, %bb.o ], [ %i.br, %bb.p ], [ %.15, %bb.aq ], [ %i.ca, %bb.t ], [ %i.bf, %bb.j ], [ %i.cv, %bb.ac ], [ %.16, %bb.ay ], [ %i.av, %bb.h ], [ %i.dp, %bb.ag ], [ %i.cu, %bb.ab ], [ %i.cm, %bb.v ], [ %i.bv, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #47
  ret ptr %.8
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE12parse_numberILb1ELc45ELNS0_16number_precisionE0EEEPKcS8_St17integral_constantIbXT_EES9_IcXT0_EES9_IS6_XT1_EE(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef %1) local_unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.boost::json::basic_parser<boost::json::detail::handler>::number", align 8 ; 24 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !250  ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #47
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 0, ptr %i.g, align 8, !tbaa !229
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 12 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 17
  store i8 1, ptr %i.i, align 1, !tbaa !362
  %i.j = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.l, 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.d, i8 0, i64 9, i1 false)
  br i1 %i.m, label %bb.b, label %bb.u

bb.b:                                             ; preds = %bb.a
  %i.n = load i8, ptr %i.h, align 1, !tbaa !93
  %.not = icmp eq i8 %i.n, 48
  br i1 %.not, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load <16 x i8>, ptr %i.h, align 1, !tbaa !93
  %i.p = add <16 x i8> %i.o, splat (i8 70)
  %i.q = icmp slt <16 x i8> %i.p, splat (i8 118)
  %i.r = bitcast <16 x i1> %i.q to i16            ; 2 uses
  %i.s = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.r, i1 false) ; 4 uses
  %i.t = zext nneg i16 %i.s to i32
  %i.u = icmp eq i16 %i.s, 0
  br i1 %i.u, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 261
  %i.w = load i8, ptr %i.v, align 1, !tbaa !342, !range !231, !noundef !125
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = tail call noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE13parse_literalISt17integral_constantINS2_8literalsELS7_4EEEEPKcSA_T_(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef nonnull %1)
  br label %.thread461

bb.f:                                             ; preds = %bb.d
  %i.z = tail call noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE4failEPKcNS0_5errorEPKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef nonnull %i.h, i32 noundef 1, ptr noundef nonnull @_ZZN5boost4json12basic_parserINS0_6detail7handlerEE12parse_numberILb1ELc45ELNS0_16number_precisionE0EEEPKcS8_St17integral_constantIbXT_EES9_IcXT0_EES9_IS6_XT1_EEE3loc) #47
  br label %.thread461

.critedge:                                        ; preds = %bb.c
  %i.aa = zext nneg i16 %i.s to i64               ; 3 uses
  %i.ab = icmp samesign ugt i16 %i.s, 3
  br i1 %i.ab, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.critedge, %.lr.ph.i
  %.028.i = phi i64 [ %i.az, %.lr.ph.i ], [ %i.aa, %.critedge ]
  %.02427.i = phi ptr [ %i.ay, %.lr.ph.i ], [ %i.h, %.critedge ] ; 5 uses
  %.02526.i = phi i64 [ %i.ax, %.lr.ph.i ], [ 0, %.critedge ]
  %i.ac = mul i64 %.02526.i, 10
  %i.ad = load i8, ptr %.02427.i, align 1, !tbaa !93
  %i.ae = sext i8 %i.ad to i64
  %i.af = add i64 %i.ac, %i.ae
  %i.ag = mul i64 %i.af, 10
  %i.ah = getelementptr inbounds nuw i8, ptr %.02427.i, i64 1
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !93
  %i.aj = sext i8 %i.ai to i64
  %i.ak = add nsw i64 %i.aj, -480
  %i.al = add i64 %i.ak, %i.ag
  %i.am = mul i64 %i.al, 10
  %i.an = getelementptr inbounds nuw i8, ptr %.02427.i, i64 2
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !93
  %i.ap = sext i8 %i.ao to i64
  %i.aq = add nsw i64 %i.ap, -480
  %i.ar = add i64 %i.aq, %i.am
  %i.as = mul i64 %i.ar, 10
  %i.at = getelementptr inbounds nuw i8, ptr %.02427.i, i64 3
  %i.au = load i8, ptr %i.at, align 1, !tbaa !93
  %i.av = sext i8 %i.au to i64
  %i.aw = add nsw i64 %i.av, -528
  %i.ax = add i64 %i.aw, %i.as                    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.02427.i, i64 4 ; 2 uses
  %i.az = add i64 %.028.i, -4                     ; 3 uses
  %i.ba = icmp ugt i64 %i.az, 3
  br i1 %i.ba, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !68

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.critedge
  %.025.lcssa.i = phi i64 [ 0, %.critedge ], [ %i.ax, %.lr.ph.i ] ; 4 uses
  %.024.lcssa.i = phi ptr [ %i.h, %.critedge ], [ %i.ay, %.lr.ph.i ] ; 6 uses
  %.0.lcssa.i = phi i64 [ %i.aa, %.critedge ], [ %i.az, %.lr.ph.i ]
  switch i64 %.0.lcssa.i, label %default.unreachable.i [
    i64 3, label %bb.i
    i64 1, label %bb.g
    i64 2, label %bb.h
    i64 0, label %_ZN5boost4json6detail14parse_unsignedEmPKcm.exit
  ]
end_hunk_0
