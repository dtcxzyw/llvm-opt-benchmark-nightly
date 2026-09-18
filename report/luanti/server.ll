Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/server?download=true
inline.NumInlined: 8811
inline.NumDeleted: 3490
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN6Server18SendSpawnParticlesEP12RemotePlayerRKSt6vectorI18ParticleParametersSaIS3_EE:bb.a
  %i.ih = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ih, align 8, !tbaa !96
  %i.ii = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !140 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.il = icmp eq ptr %i.ij, %i.ik
  br i1 %i.il, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit149, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i147

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i147: ; preds = %bb.bd
  %i.im = load i64, ptr %i.ik, align 8, !tbaa !120
  %i.in = add i64 %i.im, 1
  call void @_ZdlPvm(ptr noundef %i.ij, i64 noundef %i.in) #37
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit149

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit149: ; preds = %bb.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i147
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ih, align 8, !tbaa !96
  %i.io = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.io) #34
  %i.ip = getelementptr inbounds nuw i8, ptr %5, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ip) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br label %bb.be

bb.be:                                            ; preds = %bb.e, %bb.f, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit149
  ret void

bb.bf:                                            ; preds = %bb.ap
  %i.iq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.bg:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit105
  %i.ir = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.is = load ptr, ptr %11, align 8, !tbaa !140  ; 2 uses
  %i.it = icmp eq ptr %i.is, %i.ey
  br i1 %i.it, label %.body103, label %.body103.sink.split

.body103.sink.split:                              ; preds = %bb.bg, %bb.as
  %.sink243 = phi ptr [ %i.fm, %bb.as ], [ %i.is, %bb.bg ]
  %.pn46.ph = phi { ptr, i32 } [ %i.fl, %bb.as ], [ %i.ir, %bb.bg ]
  %i.iu = load i64, ptr %i.ey, align 8, !tbaa !120
  %i.iv = add i64 %i.iu, 1
  call void @_ZdlPvm(ptr noundef %.sink243, i64 noundef %i.iv) #37
  br label %.body103

.body103:                                         ; preds = %.body103.sink.split, %bb.bg, %bb.as
  %.pn46 = phi { ptr, i32 } [ %i.fl, %bb.as ], [ %i.ir, %bb.bg ], [ %.pn46.ph, %.body103.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  br label %bb.bm

bb.bh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %.body120

bb.bi:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit132
  %i.ix = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.iy = load ptr, ptr %13, align 8, !tbaa !140  ; 2 uses
  %i.iz = icmp eq ptr %i.iy, %i.gj
  br i1 %i.iz, label %.body130, label %.body130.sink.split

.body130.sink.split:                              ; preds = %bb.bi, %bb.ax
  %.sink246 = phi ptr [ %i.gx, %bb.ax ], [ %i.iy, %bb.bi ]
  %.pn48.ph = phi { ptr, i32 } [ %i.gw, %bb.ax ], [ %i.ix, %bb.bi ]
  %i.ja = load i64, ptr %i.gj, align 8, !tbaa !120
  %i.jb = add i64 %i.ja, 1
  call void @_ZdlPvm(ptr noundef %.sink246, i64 noundef %i.jb) #37
  br label %.body130

.body130:                                         ; preds = %.body130.sink.split, %bb.bi, %bb.ax
  %.pn48 = phi { ptr, i32 } [ %i.gw, %bb.ax ], [ %i.ix, %bb.bi ], [ %.pn48.ph, %.body130.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bb, %bb.ba
  %i.jc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %.body130
  %.pn50 = phi { ptr, i32 } [ %i.jc, %bb.bj ], [ %.pn48, %.body130 ] ; 2 uses
  %i.jd = load ptr, ptr %12, align 8, !tbaa !307  ; 3 uses
  %.not.i.i.i.i156 = icmp eq ptr %i.jd, null
  br i1 %.not.i.i.i.i156, label %.body120, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.je = load ptr, ptr %i.ge, align 8, !tbaa !308
  %i.jf = ptrtoint ptr %i.je to i64
  %i.jg = ptrtoint ptr %i.jd to i64
  %i.jh = sub i64 %i.jf, %i.jg
  call void @_ZdlPvm(ptr noundef nonnull %i.jd, i64 noundef %i.jh) #37
  br label %.body120

.body120:                                         ; preds = %bb.av, %bb.bl, %bb.bk, %bb.bh
  %.pn50.pn = phi { ptr, i32 } [ %i.gi, %bb.av ], [ %i.iw, %bb.bh ], [ %.pn50, %bb.bl ], [ %.pn50, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  br label %bb.bm

bb.bm:                                            ; preds = %.body120, %.body103
  %.pn50.pn.pn = phi { ptr, i32 } [ %.pn50.pn, %.body120 ], [ %.pn46, %.body103 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %10) #34
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bf
  %.pn50.pn.pn.pn = phi { ptr, i32 } [ %.pn50.pn.pn, %bb.bm ], [ %i.iq, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  br label %bb.bo

bb.bo:                                            ; preds = %bb.am, %bb.bn, %bb.ao
  %.pn57.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ex, %bb.ao ], [ %.pn50.pn.pn.pn, %bb.bn ], [ %.pn57.pn.pn.pn.pn, %bb.am ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68
  %.pn57.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn57.pn.pn.pn.pn.pn.pn, %bb.bo ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68 ]
  resume { ptr, i32 } %.pn57.pn.pn.pn.pn.pn.pn.pn
}

declare noundef signext i16 @_ZNK8Settings6getS16ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #8

declare void @_ZNK18ParticleParameters9serializeERSot(ptr noundef nonnull align 8 dereferenceable(328), ptr noundef nonnull align 8 dereferenceable(8), i16 noundef zeroext) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_Z15sanity_check_fnPKcS0_jS0_(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #11

declare void @_Z17serializeString32B5cxx11St17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i64, ptr) local_unnamed_addr #8

declare { i64, i64 } @_ZNSo5tellpEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6Server22SendAddParticleSpawnerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_RK25ParticleSpawnerParameterstj(ptr noundef nonnull align 8 dereferenceable(1880) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(1400) %3, i16 noundef zeroext %4, i32 noundef %5) local_unnamed_addr #20 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::allocator.2", align 1  ; 4 uses
  %8 = alloca %"class.std::vector.735", align 8   ; 10 uses
  %.b = load i1, ptr @_ZGVZN6Server22SendAddParticleSpawnerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_RK25ParticleSpawnerParameterstjE6radius, align 1
  br i1 %.b, label %._crit_edge113, label %bb.b, !prof !534

._crit_edge113:                                   ; preds = %bb.a
  %.pre = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZZN6Server22SendAddParticleSpawnerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_RK25ParticleSpawnerParameterstjE6radius)
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @g_settings, align 8, !tbaa !298
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.145, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.c unwind label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.b = invoke noundef signext i16 @_ZNK8Settings6getS16ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.d unwind label %bb.n

bb.d:                                             ; preds = %bb.c
  %i.c = sext i16 %i.b to i32
  %i.d = shl nsw i32 %i.c, 4
  %i.e = sitofp nsz i32 %i.d to float
  %i.f = fmul nnan nsz float %i.e, 1.000000e+01
  %i.g = load ptr, ptr %6, align 8, !tbaa !140    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.j = load i64, ptr %i.h, align 8, !tbaa !120
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  %i.l = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZZN6Server22SendAddParticleSpawnerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_RK25ParticleSpawnerParameterstjE6radius) ; 2 uses
  store float %i.f, ptr %i.l, align 4, !tbaa !427
  %i.m = call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZZN6Server22SendAddParticleSpawnerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_RK25ParticleSpawnerParameterstjE6radius) ; 0 uses
  store i1 true, ptr @_ZGVZN6Server22SendAddParticleSpawnerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_RK25ParticleSpawnerParameterstjE6radius, align 1
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge113, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pre-phi = phi ptr [ %.pre, %._crit_edge113 ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.n = load float, ptr %.pre-phi, align 4, !tbaa !427 ; 2 uses
  %i.o = fmul nsz float %i.n, %i.n                ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 216
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 240
  %i.r = load float, ptr %i.p, align 8, !tbaa !781
  %i.s = load float, ptr %i.q, align 8, !tbaa !781
  %i.t = fadd nsz float %i.r, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 220
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 244
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 272
  %i.x = load float, ptr %i.w, align 8, !tbaa !781
  %i.y = fadd nsz float %i.t, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 276
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 296
  %i.ab = load float, ptr %i.aa, align 8, !tbaa !781
  %i.ac = fadd nsz float %i.y, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 300
  %9 = fmul nsz float %i.ac, 2.500000e-01
  %i.ae = load <2 x float>, ptr %i.u, align 4, !tbaa !427
  %i.af = load <2 x float>, ptr %i.v, align 4, !tbaa !427
  %i.ag = fadd nsz <2 x float> %i.ae, %i.af
  %i.ah = load <2 x float>, ptr %i.z, align 4, !tbaa !427
  %i.ai = fadd nsz <2 x float> %i.ag, %i.ah
  %i.aj = load <2 x float>, ptr %i.ad, align 4, !tbaa !427
  %i.ak = fadd nsz <2 x float> %i.ai, %i.aj
  %i.al = fmul nsz <2 x float> %i.ak, splat (float 2.500000e-01) ; 2 uses
  %i.am = fmul nsz float %9, 1.000000e+01         ; 2 uses
  %i.an = extractelement <2 x float> %i.al, i64 0
  %i.ao = fmul nsz float %i.an, 1.000000e+01      ; 2 uses
  %i.ap = extractelement <2 x float> %i.al, i64 1
  %i.aq = fmul nsz float %i.ap, 1.000000e+01      ; 2 uses
  %.not = icmp eq i16 %4, 0
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 172
  %i.as = load float, ptr %i.ar, align 4, !tbaa !809 ; 2 uses
  %i.at = fcmp nsz ole float %i.as, 1.000000e+00
  %i.au = fcmp nsz une float %i.as, 0.000000e+00
  %spec.select = and i1 %i.at, %i.au
  %i.av = freeze i1 %spec.select
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.fr = phi i1 [ %i.av, %bb.f ], [ false, %bb.e ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !146
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %bb.o, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !297
  %i.bb = call noundef ptr @_ZN17ServerEnvironment9getPlayerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(3560) %i.ba, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext false) ; 4 uses
  %.not47 = icmp eq ptr %i.bb, null
  br i1 %.not47, label %"_ZZN6Server22SendAddParticleSpawnerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_RK25ParticleSpawnerParameterstjENK3$_0clEP12RemotePlayer.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  br i1 %.fr, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 424
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !484 ; 3 uses
  %.not.i = icmp eq ptr %i.bd, null
  br i1 %.not.i, label %"_ZZN6Server22SendAddParticleSpawnerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_RK25ParticleSpawnerParameterstjENK3$_0clEP12RemotePlayer.exit", label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 312
  %.sroa.01.0.copyload.i.i = load <2 x float>, ptr %i.be, align 8 ; 2 uses
  %.sroa.22.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 320
  %.sroa.22.0.copyload.i.i = load float, ptr %.sroa.22.0..sroa_idx.i.i, align 8, !tbaa !427
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %.sroa.01.0.copyload.i.i, i64 0
  %i.bf = fsub nsz float %.sroa.0.0.vec.extract.i, %i.am ; 2 uses
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %.sroa.01.0.copyload.i.i, i64 1
  %i.bg = fsub nsz float %.sroa.0.4.vec.extract.i, %i.ao ; 2 uses
  %i.bh = fsub nsz float %.sroa.22.0.copyload.i.i, %i.aq ; 2 uses
  %i.bi = fmul nsz float %i.bg, %i.bg
  %i.bj = call nsz float @llvm.fmuladd.f32(float %i.bf, float %i.bf, float %i.bi)
  %i.bk = call nsz noundef float @llvm.fmuladd.f32(float %i.bh, float %i.bh, float %i.bj)
  %i.bl = fcmp nsz ule float %i.bk, %i.o
  br i1 %i.bl, label %bb.l, label %"_ZZN6Server22SendAddParticleSpawnerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_RK25ParticleSpawnerParameterstjENK3$_0clEP12RemotePlayer.exit"

bb.l:                                             ; preds = %bb.k, %bb.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bb, i64 1000
  %i.bn = load i16, ptr %i.bm, align 8, !tbaa !741
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bb, i64 416
  %i.bp = load i16, ptr %i.bo, align 8, !tbaa !743
  call void @_ZN6Server22SendAddParticleSpawnerEttRK25ParticleSpawnerParameterstj(ptr noundef nonnull align 8 dereferenceable(1880) %0, i16 noundef zeroext %i.bn, i16 noundef zeroext %i.bp, ptr noundef nonnull align 8 dereferenceable(1400) %3, i16 noundef zeroext %4, i32 noundef %5)
  br label %"_ZZN6Server22SendAddParticleSpawnerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_RK25ParticleSpawnerParameterstjENK3$_0clEP12RemotePlayer.exit"

bb.m:                                             ; preds = %bb.b
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

bb.n:                                             ; preds = %bb.c
  %i.br = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bs = load ptr, ptr %6, align 8, !tbaa !140   ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %bb.n
  %i.bv = load i64, ptr %i.bt, align 8, !tbaa !120
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bw) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bq, %bb.m ], [ %i.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67 ], [ %i.br, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  br label %bb.aa

bb.o:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 1032
  call void @_ZN15ClientInterface12getClientIDsE11ClientState(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.735") align 8 %8, ptr noundef nonnull align 8 dereferenceable(152) %i.bx, i32 noundef 8)
  %i.by = load ptr, ptr %8, align 8, !tbaa !632   ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !632 ; 3 uses
  %.not109110 = icmp eq ptr %i.by, %i.ca
  br i1 %.not109110, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br i1 %.fr, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %"_ZZN6Server22SendAddParticleSpawnerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_RK25ParticleSpawnerParameterstjENK3$_0clEP12RemotePlayer.exit78.us"
  %.sroa.079.0111.us = phi ptr [ %i.dd, %"_ZZN6Server22SendAddParticleSpawnerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_RK25ParticleSpawnerParameterstjENK3$_0clEP12RemotePlayer.exit78.us" ], [ %i.by, %.lr.ph ] ; 2 uses
  %i.cd = load i16, ptr %.sroa.079.0111.us, align 2, !tbaa !491
  %i.ce = load ptr, ptr %i.cb, align 8, !tbaa !297
  %i.cf = invoke noundef ptr @_ZN17ServerEnvironment9getPlayerEt(ptr noundef nonnull align 8 dereferenceable(3560) %i.ce, i16 noundef zeroext %i.cd)
          to label %bb.p unwind label %.split.us  ; 6 uses

bb.p:                                             ; preds = %.lr.ph.split.us
  %.not48.us = icmp eq ptr %i.cf, null
  br i1 %.not48.us, label %"_ZZN6Server22SendAddParticleSpawnerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_RK25ParticleSpawnerParameterstjENK3$_0clEP12RemotePlayer.exit78.us", label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cg = load i64, ptr %i.cc, align 8, !tbaa !146 ; 3 uses
  %i.ch = icmp eq i64 %i.cg, 0
  br i1 %i.ch, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.us, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 336
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !146
  %i.ck = icmp eq i64 %i.cg, %i.cj
  br i1 %i.ck, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.us, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.us

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.us: ; preds = %bb.r
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cf, i64 328
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !140
  %i.cn = load ptr, ptr %2, align 8, !tbaa !140
  %bcmp.i.us = call i32 @bcmp(ptr %i.cn, ptr %i.cm, i64 %i.cg)
  %i.co = icmp eq i32 %bcmp.i.us, 0
  br i1 %i.co, label %"_ZZN6Server22SendAddParticleSpawnerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_RK25ParticleSpawnerParameterstjENK3$_0clEP12RemotePlayer.exit78.us", label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.us

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.us: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.us, %bb.r, %bb.q
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cf, i64 424
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !484 ; 3 uses
  %.not.i72.us = icmp eq ptr %i.cq, null
  br i1 %.not.i72.us, label %"_ZZN6Server22SendAddParticleSpawnerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_RK25ParticleSpawnerParameterstjENK3$_0clEP12RemotePlayer.exit78.us", label %bb.s

bb.s:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.us
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 312
  %.sroa.01.0.copyload.i.i73.us = load <2 x float>, ptr %i.cr, align 8 ; 2 uses
  %.sroa.22.0..sroa_idx.i.i74.us = getelementptr inbounds nuw i8, ptr %i.cq, i64 320
  %.sroa.22.0.copyload.i.i75.us = load float, ptr %.sroa.22.0..sroa_idx.i.i74.us, align 8, !tbaa !427
  %.sroa.0.0.vec.extract.i76.us = extractelement <2 x float> %.sroa.01.0.copyload.i.i73.us, i64 0
  %i.cs = fsub nsz float %.sroa.0.0.vec.extract.i76.us, %i.am ; 2 uses
  %.sroa.0.4.vec.extract.i77.us = extractelement <2 x float> %.sroa.01.0.copyload.i.i73.us, i64 1
  %i.ct = fsub nsz float %.sroa.0.4.vec.extract.i77.us, %i.ao ; 2 uses
  %i.cu = fsub nsz float %.sroa.22.0.copyload.i.i75.us, %i.aq ; 2 uses
  %i.cv = fmul nsz float %i.ct, %i.ct
  %i.cw = call nsz float @llvm.fmuladd.f32(float %i.cs, float %i.cs, float %i.cv)
  %i.cx = call nsz noundef float @llvm.fmuladd.f32(float %i.cu, float %i.cu, float %i.cw)
  %i.cy = fcmp nsz ule float %i.cx, %i.o
  br i1 %i.cy, label %bb.t, label %"_ZZN6Server22SendAddParticleSpawnerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_RK25ParticleSpawnerParameterstjENK3$_0clEP12RemotePlayer.exit78.us"

bb.t:                                             ; preds = %bb.s
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cf, i64 1000
  %i.da = load i16, ptr %i.cz, align 8, !tbaa !741
  %i.db = getelementptr inbounds nuw i8, ptr %i.cf, i64 416
  %i.dc = load i16, ptr %i.db, align 8, !tbaa !743
  invoke void @_ZN6Server22SendAddParticleSpawnerEttRK25ParticleSpawnerParameterstj(ptr noundef nonnull align 8 dereferenceable(1880) %0, i16 noundef zeroext %i.da, i16 noundef zeroext %i.dc, ptr noundef nonnull align 8 dereferenceable(1400) %3, i16 noundef zeroext %4, i32 noundef %5)
          to label %"_ZZN6Server22SendAddParticleSpawnerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_RK25ParticleSpawnerParameterstjENK3$_0clEP12RemotePlayer.exit78.us" unwind label %.split.us

"_ZZN6Server22SendAddParticleSpawnerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_RK25ParticleSpawnerParameterstjENK3$_0clEP12RemotePlayer.exit78.us": ; preds = %bb.t, %bb.s, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.us, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.us, %bb.p
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.079.0111.us, i64 2 ; 2 uses
  %.not109.us = icmp eq ptr %i.dd, %i.ca
  br i1 %.not109.us, label %._crit_edgethread-pre-split, label %.lr.ph.split.us

.split.us:                                        ; preds = %bb.t, %.lr.ph.split.us
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

._crit_edgethread-pre-split:                      ; preds = %"_ZZN6Server22SendAddParticleSpawnerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_RK25ParticleSpawnerParameterstjENK3$_0clEP12RemotePlayer.exit78", %"_ZZN6Server22SendAddParticleSpawnerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_RK25ParticleSpawnerParameterstjENK3$_0clEP12RemotePlayer.exit78.us"
  %.pr = load ptr, ptr %8, align 8, !tbaa !528
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edgethread-pre-split, %bb.o
  %i.df = phi ptr [ %.pr, %._crit_edgethread-pre-split ], [ %i.by, %bb.o ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.df, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorItSaItEED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %._crit_edge
  %i.dg = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !633
  %i.di = ptrtoint ptr %i.dh to i64
  %i.dj = ptrtoint ptr %i.df to i64
  %i.dk = sub i64 %i.di, %i.dj
  call void @_ZdlPvm(ptr noundef nonnull %i.df, i64 noundef %i.dk) #37
  br label %_ZNSt6vectorItSaItEED2Ev.exit

_ZNSt6vectorItSaItEED2Ev.exit:                    ; preds = %._crit_edge, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  br label %"_ZZN6Server22SendAddParticleSpawnerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_RK25ParticleSpawnerParameterstjENK3$_0clEP12RemotePlayer.exit"

.lr.ph.split:                                     ; preds = %.lr.ph, %"_ZZN6Server22SendAddParticleSpawnerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_RK25ParticleSpawnerParameterstjENK3$_0clEP12RemotePlayer.exit78"
  %.sroa.079.0111 = phi ptr [ %i.ei, %"_ZZN6Server22SendAddParticleSpawnerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_RK25ParticleSpawnerParameterstjENK3$_0clEP12RemotePlayer.exit78" ], [ %i.by, %.lr.ph ] ; 2 uses
  %i.dl = load i16, ptr %.sroa.079.0111, align 2, !tbaa !491
end_hunk_0
