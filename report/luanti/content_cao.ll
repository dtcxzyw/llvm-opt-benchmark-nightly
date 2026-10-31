Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/content_cao?download=true
inline.NumInlined: 3123
inline.NumDeleted: 1535
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN10GenericCAO15processInitDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
bb.ag:                                            ; preds = %bb.ad
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92

bb.ah:                                            ; preds = %bb.ae
  %i.fs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ft = load ptr, ptr %4, align 8, !tbaa !134   ; 2 uses
  %i.fu = icmp eq ptr %i.ft, %i.fi
  br i1 %i.fu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90: ; preds = %bb.ah
  %i.fv = load i64, ptr %i.fi, align 8, !tbaa !61
  %i.fw = add i64 %i.fv, 1
  call void @_ZdlPvm(ptr noundef %i.ft, i64 noundef %i.fw) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90, %bb.ag
  %.pn = phi { ptr, i32 } [ %i.fr, %bb.ag ], [ %i.fs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90 ], [ %i.fs, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.aj

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, %_Z6readU8RSi.exit86
  %.sroa.011.0.copyload = load <2 x float>, ptr %i.dv, align 8, !tbaa !48
  %.sroa.212.0.copyload = load float, ptr %.sroa.523.0..sroa_idx, align 8, !tbaa !48
  %i.fx = frem nsz float %.sroa.212.0.copyload, 3.600000e+02 ; 3 uses
  %i.fy = frem nsz <2 x float> %.sroa.011.0.copyload, splat (float 3.600000e+02) ; 3 uses
  %i.fz = fcmp nsz olt <2 x float> %i.fy, zeroinitializer
  %i.ga = fadd nsz <2 x float> %i.fy, splat (float 3.600000e+02)
  %i.gb = select <2 x i1> %i.fz, <2 x float> %i.ga, <2 x float> %i.fy ; 4 uses
  %i.gc = fcmp nsz olt float %i.fx, 0.000000e+00
  %i.gd = fadd nsz float %i.fx, 3.600000e+02
  %i.ge = select nsz i1 %i.gc, float %i.gd, float %i.fx ; 4 uses
  store <2 x float> %i.gb, ptr %i.dv, align 8, !tbaa !48
  store float %i.ge, ptr %.sroa.523.0..sroa_idx, align 8, !tbaa !48
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 616
  %.sroa.05.0.copyload = load <2 x float>, ptr %i.dh, align 4, !tbaa !48 ; 3 uses
  %.sroa.26.0.copyload = load float, ptr %.sroa.529.0..sroa_idx, align 4, !tbaa !48 ; 3 uses
  store <2 x float> %.sroa.05.0.copyload, ptr %i.gf, align 8, !tbaa !48
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 624
  store float %.sroa.26.0.copyload, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !48
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 628
  store <2 x float> %.sroa.05.0.copyload, ptr %i.gg, align 4, !tbaa !48
  %.sroa.4.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %0, i64 636
  store float %.sroa.26.0.copyload, ptr %.sroa.4.0..sroa_idx4.i, align 4, !tbaa !48
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 640
  store <2 x float> %.sroa.05.0.copyload, ptr %i.gh, align 8, !tbaa !48
  %.sroa.4.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %0, i64 648
  store float %.sroa.26.0.copyload, ptr %.sroa.4.0..sroa_idx6.i, align 8, !tbaa !48
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 652
  store <2 x float> zeroinitializer, ptr %i.gi, align 4, !tbaa !48
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 660
  store i8 1, ptr %i.gj, align 4, !tbaa !53
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 664
  store <2 x float> %i.gb, ptr %i.gk, align 8, !tbaa !48
  %.sroa.4.0..sroa_idx.i93 = getelementptr inbounds nuw i8, ptr %0, i64 672
  store float %i.ge, ptr %.sroa.4.0..sroa_idx.i93, align 8, !tbaa !48
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 676
  store <2 x float> %i.gb, ptr %i.gl, align 4, !tbaa !48
  %.sroa.4.0..sroa_idx4.i94 = getelementptr inbounds nuw i8, ptr %0, i64 684
  store float %i.ge, ptr %.sroa.4.0..sroa_idx4.i94, align 4, !tbaa !48
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 688
  store <2 x float> %i.gb, ptr %i.gm, align 8, !tbaa !48
  %.sroa.4.0..sroa_idx6.i95 = getelementptr inbounds nuw i8, ptr %0, i64 696
  store float %i.ge, ptr %.sroa.4.0..sroa_idx6.i95, align 8, !tbaa !48
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 700
  store <2 x float> zeroinitializer, ptr %i.gn, align 4, !tbaa !48
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 708
  store i8 1, ptr %i.go, align 4, !tbaa !53
  invoke void @_ZN10GenericCAO13updateNodePosEv(ptr noundef nonnull align 8 dereferenceable(1076) %0)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit unwind label %bb.ai

_ZN11StreamProxylsEPFRSoS0_E.exit:                ; preds = %bb.e, %.noexc99, %._crit_edge
  %i.gp = load ptr, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.gp, ptr %2, align 8, !tbaa !55
  %i.gq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.gr = getelementptr i8, ptr %i.gp, i64 -24
  %i.gs = load i64, ptr %i.gr, align 8
  %i.gt = getelementptr inbounds i8, ptr %2, i64 %i.gs
  store ptr %i.gq, ptr %i.gt, align 8, !tbaa !55
  %i.gu = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.gu, align 8, !tbaa !55
  %i.gv = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !134 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.gy = icmp eq ptr %i.gw, %i.gx
  br i1 %i.gy, label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit
  %i.gz = load i64, ptr %i.gx, align 8, !tbaa !61
  %i.ha = add i64 %i.gz, 1
  call void @_ZdlPvm(ptr noundef %i.gw, i64 noundef %i.ha) #35
  br label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.gu, align 8, !tbaa !55
  %i.hb = getelementptr inbounds nuw i8, ptr %2, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.hb) #28
  %i.hc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  store ptr %i.hc, ptr %2, align 8, !tbaa !55
  %i.hd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8
  %i.he = getelementptr i8, ptr %i.hc, i64 -24
  %i.hf = load i64, ptr %i.he, align 8
  %i.hg = getelementptr inbounds i8, ptr %2, i64 %i.hf
  store ptr %i.hd, ptr %i.hg, align 8, !tbaa !55
  %i.hh = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.hh, align 8, !tbaa !258
  %i.hi = getelementptr inbounds nuw i8, ptr %2, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.hi) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void

bb.ai:                                            ; preds = %.invoke, %.noexc99, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc97, %bb.k, %bb.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread101, %bb.x, %.noexc74, %.noexc73, %bb.w, %bb.v, %.noexc64, %.noexc63, %bb.u, %bb.t, %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.g, %.noexc46, %_ZTW11errorstream.exit, %bb.a, %._crit_edge
  %i.hj = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, %bb.ai, %bb.ac
  %.pn42 = phi { ptr, i32 } [ %i.ey, %bb.ac ], [ %i.hj, %bb.ai ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92 ]
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %.pn42
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) unnamed_addr #4 align 2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i8 @_Z6readU8RSi(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i8 0, ptr %i.a, align 1
  %i.b = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, i64 noundef 1) ; 0 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !55
  %i.d = getelementptr i8, ptr %i.c, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %0, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !159
  %i.i = and i32 %i.h, 2
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call fastcc void @_ZL19serialize_throw_eofv()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = load i8, ptr %i.a, align 1, !tbaa !61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i8 %i.j
}

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #10

declare void @_Z19deSerializeString16B5cxx11RSi(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #5

declare void @_Z19deSerializeString32B5cxx11RSi(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10GenericCAO13updateNodePosEv(ptr noundef nonnull align 8 dereferenceable(1076) %0) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !55
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(1076) %0)
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !55
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef ptr %i.g(ptr noundef nonnull align 8 dereferenceable(1076) %0) ; 2 uses
  %.not22 = icmp eq ptr %i.h, null
  br i1 %.not22, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !187
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 408
  %.sroa.0.0.copyload.i = load i48, ptr %i.k, align 8, !tbaa !259 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 628
  %.sroa.3.0.extract.shift.i = lshr i48 %.sroa.0.0.copyload.i, 32
  %.sroa.3.0.extract.trunc.i = trunc nuw i48 %.sroa.3.0.extract.shift.i to i16
  %i.m = sitofp nsz i16 %.sroa.3.0.extract.trunc.i to float
  %i.n = fmul nnan nsz float %i.m, 1.000000e+01
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 636
  %i.p = load float, ptr %i.o, align 4, !tbaa !149
  %i.q = fsub nsz float %i.p, %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !260  ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !55
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 288
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = bitcast i48 %.sroa.0.0.copyload.i to <3 x i16>
  %i.x = shufflevector <3 x i16> %i.w, <3 x i16> poison, <2 x i32> <i32 0, i32 1>
  %i.y = sitofp nsz <2 x i16> %i.x to <2 x float>
  %i.z = fmul nnan nsz <2 x float> %i.y, splat (float 1.000000e+01)
  %i.aa = load <2 x float>, ptr %i.l, align 4, !tbaa !48
  %i.ab = fsub nsz <2 x float> %i.aa, %i.z
  %i.ac = tail call noundef nonnull align 4 dereferenceable(64) ptr %i.v(ptr noundef nonnull align 8 dereferenceable(218) %i.s), !inline_history !5 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  store <2 x float> %i.ab, ptr %i.ad, align 4, !tbaa !48
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  store float %i.q, ptr %i.ae, align 4, !tbaa !48
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !261
  %.not23 = icmp eq ptr %i.h, %i.ag
  br i1 %.not23, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 65
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !117, !range !46, !noundef !47
  %i.aj = trunc nuw i8 %i.ai to i1                ; 3 uses
  %. = select i1 %i.aj, i64 600, i64 676
  %.44 = select i1 %i.aj, i64 604, i64 680
  %.45 = select i1 %i.aj, i64 608, i64 684
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %.
  %i.al = load float, ptr %i.ak, align 4, !tbaa !262
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 %.44
  %i.an = load float, ptr %i.am, align 4, !tbaa !263
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 %.45
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !149
  %i.aq = load ptr, ptr %i.r, align 8, !tbaa !260 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !55
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 288
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = tail call noundef nonnull align 4 dereferenceable(64) ptr %i.at(ptr noundef nonnull align 8 dereferenceable(218) %i.aq), !inline_history !5
  %i.av = insertelement <2 x float> poison, float %i.al, i64 0
  %i.aw = insertelement <2 x float> %i.av, float %i.an, i64 1
  %i.ax = fmul nsz <2 x float> %i.aw, splat (float f0xBC8EFA35)
  %i.ay = fmul nsz float %i.ap, f0xBC8EFA35
  tail call void @_Z18setPitchYawRollRadRN4core8CMatrix4IfEENS_8vector3dIfEE(ptr noundef nonnull align 4 dereferenceable(64) %i.au, <2 x float> %i.ax, float %i.ay)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120)) unnamed_addr #12 align 2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN10GenericCAOD2Ev(ptr noundef nonnull align 8 dead_on_return(1076) dereferenceable(1076) initializes((0, 8)) %0) unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 240) (i8, ptr @_ZTV10GenericCAO, i64 16), ptr %0, align 8, !tbaa !55
  invoke void @_ZN10GenericCAO15removeFromSceneEb(ptr noundef nonnull align 8 dereferenceable(1076) %0, i1 noundef zeroext true)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !134  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1056 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.e = load i64, ptr %i.c, align 8, !tbaa !61
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !134  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !61
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 944 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !140  ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.p, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3 ] ; 4 uses
  %i.p = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !41 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !134  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 24 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.u = load i64, ptr %i.s, align 8, !tbaa !61
  %i.v = add i64 %i.u, 1
  tail call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #35
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 56) #35
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3
  %i.w = load ptr, ptr %i.m, align 8, !tbaa !130
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !131
  %i.z = shl i64 %i.y, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.w, i8 0, i64 %i.z, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  %i.aa = load ptr, ptr %i.m, align 8, !tbaa !130 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  %i.ad = load i64, ptr %i.x, align 8, !tbaa !131
  %i.ae = shl i64 %i.ad, 3
  tail call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #35
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEED2Ev.exit

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !134 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEED2Ev.exit
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !61
  %i.ak = add i64 %i.aj, 1
  tail call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 824 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !141 ; 2 uses
  %.not5.i.i.i.i7 = icmp eq ptr %i.an, null
  br i1 %.not5.i.i.i.i7, label %_ZNSt10_HashtableIttSaItENSt8__detail9_IdentityESt8equal_toItESt4hashItENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i8

.lr.ph.i.i.i.i8:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %.lr.ph.i.i.i.i8
  %.06.i.i.i.i9 = phi ptr [ %i.ao, %.lr.ph.i.i.i.i8 ], [ %i.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6 ] ; 2 uses
  %i.ao = load ptr, ptr %.06.i.i.i.i9, align 8, !tbaa !41 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i9, i64 noundef 16) #35
  %.not.i.i.i.i10 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i10, label %_ZNSt10_HashtableIttSaItENSt8__detail9_IdentityESt8equal_toItESt4hashItENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i8, !llvm.loop !1

_ZNSt10_HashtableIttSaItENSt8__detail9_IdentityESt8equal_toItESt4hashItENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i8, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.ap = load ptr, ptr %i.al, align 8, !tbaa !128
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !129
  %i.as = shl i64 %i.ar, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ap, i8 0, i64 %i.as, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, i8 0, i64 16, i1 false)
  %i.at = load ptr, ptr %i.al, align 8, !tbaa !128 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt10_HashtableIttSaItENSt8__detail9_IdentityESt8equal_toItESt4hashItENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i
  %i.aw = load i64, ptr %i.aq, align 8, !tbaa !129
  %i.ax = shl i64 %i.aw, 3
  tail call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #35
  br label %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEED2Ev.exit

_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEED2Ev.exit: ; preds = %_ZNSt10_HashtableIttSaItENSt8__detail9_IdentityESt8equal_toItESt4hashItENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, %bb.d
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 776 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !142 ; 2 uses
  %.not5.i.i.i.i11 = icmp eq ptr %i.ba, null
  br i1 %.not5.i.i.i.i11, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12BoneOverrideESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i12

.lr.ph.i.i.i.i12:                                 ; preds = %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEED2Ev.exit, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE12BoneOverrideELb1EEEEE18_M_deallocate_nodeEPSC_.exit.i.i.i.i
  %.06.i.i.i.i13 = phi ptr [ %i.bb, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE12BoneOverrideELb1EEEEE18_M_deallocate_nodeEPSC_.exit.i.i.i.i ], [ %i.ba, %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEED2Ev.exit ] ; 4 uses
  %i.bb = load ptr, ptr %.06.i.i.i.i13, align 8, !tbaa !41 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i13, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !134 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i13, i64 24 ; 2 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE12BoneOverrideELb1EEEEE18_M_deallocate_nodeEPSC_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i14: ; preds = %.lr.ph.i.i.i.i12
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !61
  %i.bh = add i64 %i.bg, 1
  tail call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bh) #35
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE12BoneOverrideELb1EEEEE18_M_deallocate_nodeEPSC_.exit.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE12BoneOverrideELb1EEEEE18_M_deallocate_nodeEPSC_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i14
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i13, i64 noundef 168) #35
  %.not.i.i.i.i15 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i.i15, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12BoneOverrideESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i12, !llvm.loop !2

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12BoneOverrideESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE12BoneOverrideELb1EEEEE18_M_deallocate_nodeEPSC_.exit.i.i.i.i, %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEED2Ev.exit
  %i.bi = load ptr, ptr %i.ay, align 8, !tbaa !125
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !126
  %i.bl = shl i64 %i.bk, 3
end_hunk_0
begin_hunk_1_@_ZNK10GenericCAO15getSelectionBoxEPN4core8aabbox3dIfEE:bb.a
  %i.b = load i8, ptr %i.a, align 1, !tbaa !264, !range !46, !noundef !47
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.e = load i8, ptr %i.d, align 8, !range !46
  %i.f = trunc nuw i8 %i.e to i1
  %or.cond = select i1 %i.c, i1 %i.f, i1 false
  %or.cond.not = xor i1 %or.cond, true
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 65
  %i.h = load i8, ptr %i.g, align 1, !range !46
  %i.i = trunc nuw i8 %i.h to i1
  %or.cond7 = select i1 %or.cond.not, i1 true, i1 %i.i ; 2 uses
  br i1 %or.cond7, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 440
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !tbaa.struct !265
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = xor i1 %or.cond7, true
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK10GenericCAO17updateParentChainEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1076) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !260  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EED2Ev.exit, label %.preheader24

.preheader24:                                     ; preds = %bb.a, %_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EE9push_backERKS2_.exit
  %storemerge41 = phi ptr [ %i.r, %_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EE9push_backERKS2_.exit ], [ %i.b, %bb.a ] ; 3 uses
  %.sroa.13.040 = phi ptr [ %.sroa.13.1, %_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EE9push_backERKS2_.exit ], [ null, %bb.a ] ; 4 uses
  %.sroa.9.039 = phi ptr [ %.sroa.9.1, %_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EE9push_backERKS2_.exit ], [ null, %bb.a ] ; 3 uses
  %.sroa.015.038 = phi ptr [ %.sroa.015.1, %_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EE9push_backERKS2_.exit ], [ null, %bb.a ] ; 6 uses
  %.not.i = icmp eq ptr %.sroa.9.039, %.sroa.13.040
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader24
  store ptr %storemerge41, ptr %.sroa.9.039, align 8, !tbaa !703
  br label %_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EE9push_backERKS2_.exit

bb.c:                                             ; preds = %.preheader24
  %i.c = ptrtoint ptr %.sroa.13.040 to i64
  %i.d = ptrtoint ptr %.sroa.015.038 to i64
  %i.e = sub i64 %i.c, %i.d                       ; 6 uses
  %i.f = icmp eq i64 %i.e, 9223372036854775800
  br i1 %i.f, label %bb.d, label %_ZNKSt6vectorIPN5scene10ISceneNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #36
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNKSt6vectorIPN5scene10ISceneNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.g = ashr exact i64 %i.e, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 1)
  %i.h = add nsw i64 %.sroa.speculated.i.i.i, %i.g ; 2 uses
  %i.i = icmp ult i64 %i.h, %i.g
  %i.j = tail call i64 @llvm.umin.i64(i64 %i.h, i64 1152921504606846975)
  %i.k = select i1 %i.i, i64 1152921504606846975, i64 %i.j ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.k, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.l = shl nuw nsw i64 %i.k, 3
  %i.m = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #37
          to label %.noexc8 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc8:                                          ; preds = %_ZNKSt6vectorIPN5scene10ISceneNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 %i.e ; 2 uses
  store ptr %storemerge41, ptr %i.n, align 8, !tbaa !703
  %i.o = icmp sgt i64 %i.e, 0
  br i1 %i.o, label %bb.e, label %_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.e:                                             ; preds = %.noexc8
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.m, ptr align 8 %.sroa.015.038, i64 %i.e, i1 false)
  br label %_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.e, %.noexc8
  %.not.i17.i.i = icmp eq ptr %.sroa.015.038, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.015.038, i64 noundef %i.e) #35
  br label %_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.k
  br label %_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.b
  %.sroa.015.1 = phi ptr [ %i.m, %_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.015.038, %bb.b ] ; 6 uses
  %.pn = phi ptr [ %i.n, %_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.9.039, %bb.b ]
  %.sroa.13.1 = phi ptr [ %i.p, %_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.13.040, %bb.b ] ; 3 uses
  %.sroa.9.1 = getelementptr inbounds nuw i8, ptr %.pn, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %storemerge41, i64 192
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !284  ; 2 uses
  %.not4 = icmp eq ptr %i.r, null
  br i1 %.not4, label %.preheader, label %.preheader24, !llvm.loop !701

.preheader:                                       ; preds = %_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EE9push_backERKS2_.exit, %bb.i
  %.sroa.012.0 = phi ptr [ %i.v, %bb.i ], [ %.sroa.9.1, %_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  %.not23 = icmp eq ptr %.sroa.012.0, %.sroa.015.1
  br i1 %.not23, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.preheader
  %.not.i.i.i9 = icmp eq ptr %.sroa.015.1, null
  br i1 %.not.i.i.i9, label %_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = ptrtoint ptr %.sroa.13.1 to i64
  %i.t = ptrtoint ptr %.sroa.015.1 to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.015.1, i64 noundef %i.u) #35
  br label %_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EED2Ev.exit

bb.i:                                             ; preds = %.preheader
  %i.v = getelementptr inbounds i8, ptr %.sroa.012.0, i64 -8 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !703  ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !55
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 256
  %i.z = load ptr, ptr %i.y, align 8
  invoke void %i.z(ptr noundef nonnull align 8 dereferenceable(218) %i.w)
          to label %.preheader unwind label %.loopexit, !llvm.loop !702

.loopexit:                                        ; preds = %bb.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIPN5scene10ISceneNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %bb.d
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %.sroa.015.036 = phi ptr [ %.sroa.015.1, %.loopexit ], [ %.sroa.015.038, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %.sroa.13.030 = phi ptr [ %.sroa.13.1, %.loopexit ], [ %.sroa.13.040, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.not.i.i.i10 = icmp eq ptr %.sroa.015.036, null
  br i1 %.not.i.i.i10, label %_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EED2Ev.exit11, label %bb.j

_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EED2Ev.exit: ; preds = %bb.h, %bb.g, %bb.a
  ret void

bb.j:                                             ; preds = %.loopexit.split-lp
  %i.aa = ptrtoint ptr %.sroa.13.030 to i64
  %i.ab = ptrtoint ptr %.sroa.015.036 to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.015.036, i64 noundef %i.ac) #35
  br label %_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EED2Ev.exit11

_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EED2Ev.exit11: ; preds = %.loopexit.split-lp, %bb.j
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: mustprogress uwtable
define dso_local { <2 x float>, float } @_ZNK10GenericCAO11getPositionEv(ptr noundef nonnull align 8 dereferenceable(1076) %0) unnamed_addr #11 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !55
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(1076) %0)
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 628
  %.sroa.013.0.copyload = load <2 x float>, ptr %i.e, align 4, !tbaa !48
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 636
  %.sroa.4.0.copyload = load float, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !48
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !260
  %.not17 = icmp eq ptr %i.g, null
  br i1 %.not17, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNK10GenericCAO17updateParentChainEv(ptr noundef nonnull align 8 dereferenceable(1076) %0)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !187
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 408
  %.sroa.0.0.copyload.i = load i48, ptr %i.j, align 8, !tbaa !259 ; 2 uses
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !260  ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !55
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 232
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call { <2 x float>, float } %i.n(ptr noundef nonnull align 8 dereferenceable(218) %i.k) ; 2 uses
  %.fca.0.extract8 = extractvalue { <2 x float>, float } %i.o, 0
  %.fca.1.extract9 = extractvalue { <2 x float>, float } %i.o, 1
  %.sroa.3.0.extract.shift.i = lshr i48 %.sroa.0.0.copyload.i, 32
  %.sroa.3.0.extract.trunc.i = trunc nuw i48 %.sroa.3.0.extract.shift.i to i16
  %i.p = sitofp nsz i16 %.sroa.3.0.extract.trunc.i to float
  %i.q = fmul nnan nsz float %i.p, 1.000000e+01
  %i.r = bitcast i48 %.sroa.0.0.copyload.i to <3 x i16>
  %i.s = shufflevector <3 x i16> %i.r, <3 x i16> poison, <2 x i32> <i32 0, i32 1>
  %i.t = sitofp nsz <2 x i16> %i.s to <2 x float>
  %i.u = fmul nnan nsz <2 x float> %i.t, splat (float 1.000000e+01)
  %i.v = fadd nsz <2 x float> %i.u, %.fca.0.extract8
  %i.w = fadd nsz float %i.q, %.fca.1.extract9
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 564
  %.sroa.013.0.copyload14 = load <2 x float>, ptr %i.x, align 4, !tbaa !48
  %.sroa.4.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %0, i64 572
  %.sroa.4.0.copyload16 = load float, ptr %.sroa.4.0..sroa_idx15, align 4, !tbaa !48
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.sroa.0.4.vec.insert.i.pn = phi <2 x float> [ %i.v, %bb.d ], [ %.sroa.013.0.copyload14, %bb.e ], [ %.sroa.013.0.copyload, %bb.b ]
  %.pn = phi float [ %i.w, %bb.d ], [ %.sroa.4.0.copyload16, %bb.e ], [ %.sroa.4.0.copyload, %bb.b ]
  %.fca.0.insert.i.pn = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.0.4.vec.insert.i.pn, 0
  %.fca.1.insert.merged = insertvalue { <2 x float>, float } %.fca.0.insert.i.pn, float %.pn, 1
  ret { <2 x float>, float } %.fca.1.insert.merged
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK10GenericCAO10isImmortalEv(ptr noundef nonnull align 8 dereferenceable(1076) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 944
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.b, ptr %1, align 8, !tbaa !58
  store i64 7809651263681686889, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 8, ptr %i.c, align 8, !tbaa !60
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i8 0, ptr %i.d, align 8, !tbaa !61
  %i.e = invoke ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %.noexc4 unwind label %bb.b    ; 2 uses

.noexc4:                                          ; preds = %._crit_edge.i.i
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit, label %bb.a

bb.a:                                             ; preds = %.noexc4
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.h = load i32, ptr %i.g, align 8, !tbaa !286
  %i.i = icmp ne i32 %i.h, 0
  br label %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit

_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit: ; preds = %bb.a, %.noexc4
  %.0.i = phi i1 [ %i.i, %bb.a ], [ false, %.noexc4 ]
  %i.j = load ptr, ptr %1, align 8, !tbaa !134    ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.b
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit
  %i.l = load i64, ptr %i.b, align 8, !tbaa !61
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  ret i1 %.0.i

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %1, align 8, !tbaa !134    ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.b
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.b
  %i.q = load i64, ptr %i.b, align 8, !tbaa !61
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  resume { ptr, i32 } %i.n
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK10GenericCAO12getSceneNodeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1076) %0) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !287  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !288  ; 2 uses
  %.not6 = icmp eq ptr %i.d, null
  br i1 %.not6, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !289  ; 2 uses
  %.not7 = icmp eq ptr %i.f, null
  br i1 %.not7, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !261
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ %i.f, %bb.c ], [ %i.b, %bb.a ], [ %i.d, %bb.b ], [ %i.h, %bb.d ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK10GenericCAO24getAnimatedMeshSceneNodeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1076) %0) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !288
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10GenericCAO18setChildrenVisibleEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1076) %0, i1 noundef zeroext %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 840
  %.sroa.07.011 = load ptr, ptr %i.a, align 8, !tbaa !41 ; 2 uses
  %.not1012 = icmp eq ptr %.sroa.07.011, null
  br i1 %.not1012, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = zext i1 %1 to i8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.sroa.07.013 = phi ptr [ %.sroa.07.011, %.lr.ph ], [ %.sroa.07.0, %bb.d ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.07.013, i64 8
  %i.e = load i16, ptr %i.d, align 2, !tbaa !259
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !187
  %i.g = tail call noundef ptr @_ZN17ClientEnvironment13getGenericCAOEt(ptr noundef nonnull align 8 dereferenceable(440) %i.f, i16 noundef zeroext %i.e) ; 3 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 937
  %i.i = load i8, ptr %i.h, align 1, !tbaa !290, !range !46, !noundef !47
  %i.j = or i8 %i.i, %i.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 528
  store i8 %i.j, ptr %i.k, align 8, !tbaa !119
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.07.0 = load ptr, ptr %.sroa.07.013, align 8, !tbaa !41 ; 2 uses
  %.not10 = icmp eq ptr %.sroa.07.0, null
  br i1 %.not10, label %._crit_edge, label %bb.b
}

declare noundef ptr @_ZN17ClientEnvironment13getGenericCAOEt(ptr noundef nonnull align 8 dereferenceable(440), i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: uwtable
define dso_local void @_ZN10GenericCAO13setAttachmentEtRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4core8vector3dIfEESA_b(ptr noundef nonnull align 8 dereferenceable(1076) %0, i16 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(32) %2, <2 x float> %3, float %4, <2 x float> %5, float %6, i1 noundef zeroext %7) unnamed_addr #9 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = zext i1 %7 to i8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !187  ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 232
  %i.i = load i32, ptr %i.h, align 8, !tbaa !291
  %.not.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i, label %.thread.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 200
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !292  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 192 ; 2 uses
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not10.i.i.i.i.i.i, label %.thread.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.k, %bb.b ] ; 3 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.l, %bb.b ]
  %i.m = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 32
  %i.n = load i16, ptr %i.m, align 2, !tbaa !259
  %i.o = icmp ult i16 %i.n, %1                    ; 2 uses
  %.19.i.i.i.i.i.i = select i1 %i.o, ptr %.0811.i.i.i.i.i.i, ptr %.012.i.i.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i.i.i = select i1 %i.o, i64 24, i64 16
  %.1.in.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i.i
  %.1.i.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i.i, align 8, !tbaa !293 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNKSt8_Rb_treeItSt4pairIKtSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS3_EEESt10_Select1stIS7_ESt4lessItESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !6

_ZNKSt8_Rb_treeItSt4pairIKtSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS3_EEESt10_Select1stIS7_ESt4lessItESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.p = icmp eq ptr %.19.i.i.i.i.i.i, %i.l
  br i1 %i.p, label %.thread.i.i.i, label %_ZNKSt3mapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EESt4lessItESaISt4pairIKtS4_EEE4findERS8_.exit.i.i.i

_ZNKSt3mapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EESt4lessItESaISt4pairIKtS4_EEE4findERS8_.exit.i.i.i: ; preds = %_ZNKSt8_Rb_treeItSt4pairIKtSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS3_EEESt10_Select1stIS7_ESt4lessItESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i, i64 32
end_hunk_1
begin_hunk_2_@_ZN10GenericCAO4stepEfP17ClientEnvironment:bb.a
  %i.fw = getelementptr inbounds nuw i8, ptr %.19.i.i.i9.i.i.i, i64 32
  %i.fx = load i16, ptr %i.fw, align 2, !tbaa !259
  %i.fy = icmp ult i16 %i.fa, %i.fx
  %i.fz = getelementptr inbounds nuw i8, ptr %.19.i.i.i9.i.i.i, i64 40
  %spec.select.i.i.i = select i1 %i.fy, ptr @_ZN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE, ptr %i.fz
  br label %_ZN17ClientEnvironment15getActiveObjectEt.exit

_ZN17ClientEnvironment15getActiveObjectEt.exit:   ; preds = %bb.am, %.thread.i.i.i, %_ZNKSt8_Rb_treeItSt4pairIKtSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS3_EEESt10_Select1stIS7_ESt4lessItESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i14.i.i.i, %_ZNKSt3mapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EESt4lessItESaISt4pairIKtS4_EEE4findERS8_.exit17.i.i.i
  %.2.i.i.i = phi ptr [ %i.fo, %bb.am ], [ @_ZN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE, %_ZNKSt8_Rb_treeItSt4pairIKtSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS3_EEESt10_Select1stIS7_ESt4lessItESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i14.i.i.i ], [ %spec.select.i.i.i, %_ZNKSt3mapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EESt4lessItESaISt4pairIKtS4_EEE4findERS8_.exit17.i.i.i ], [ @_ZN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE, %.thread.i.i.i ]
  %i.ga = load ptr, ptr %.2.i.i.i, align 8, !tbaa !294 ; 3 uses
  %.not225 = icmp eq ptr %i.ga, null
  br i1 %.not225, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %_ZN17ClientEnvironment15getActiveObjectEt.exit
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !55
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 136
  %i.gd = load ptr, ptr %i.gc, align 8
  %i.ge = call noundef ptr %i.gd(ptr noundef nonnull align 8 dereferenceable(32) %i.ga) ; 2 uses
  %.not226 = icmp eq ptr %i.ge, null
  br i1 %.not226, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 192
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !284 ; 2 uses
  %i.gh = load ptr, ptr %i.ek, align 8, !tbaa !471 ; 2 uses
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !55
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 72
  %i.gk = load ptr, ptr %i.gj, align 8
  %i.gl = call noundef ptr %i.gk(ptr noundef nonnull align 8 dereferenceable(8) %i.gh)
  %i.gm = load ptr, ptr %i.gg, align 8, !tbaa !55
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 248
  %i.go = load ptr, ptr %i.gn, align 8
  call void %i.go(ptr noundef nonnull align 8 dereferenceable(218) %i.gg, ptr noundef %i.gl)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.ao, %_ZN17ClientEnvironment15getActiveObjectEt.exit
  %.sroa.0406.0 = load ptr, ptr %.sroa.0406.0439, align 8, !tbaa !41 ; 2 uses
  %.not435 = icmp eq ptr %.sroa.0406.0, null
  br i1 %.not435, label %._crit_edge, label %bb.ak

bb.aq:                                            ; preds = %.lr.ph444, %bb.au
  %.sroa.0402.0442 = phi ptr [ %.sroa.0402.0440, %.lr.ph444 ], [ %.sroa.0402.0, %bb.au ] ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.0402.0442, i64 8
  %i.gq = load i16, ptr %i.gp, align 2, !tbaa !259 ; 4 uses
  %i.gr = load ptr, ptr %i.ey, align 8, !tbaa !187 ; 5 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 232
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !291
  %.not.i.i.i268 = icmp eq i32 %i.gt, 0
  br i1 %.not.i.i.i268, label %.thread.i.i.i281, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gr, i64 200
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !292 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gr, i64 192 ; 2 uses
  %.not10.i.i.i.i.i.i269 = icmp eq ptr %i.gv, null
  br i1 %.not10.i.i.i.i.i.i269, label %.thread.i.i.i281, label %.lr.ph.i.i.i.i.i.i270

.lr.ph.i.i.i.i.i.i270:                            ; preds = %bb.ar, %.lr.ph.i.i.i.i.i.i270
  %.012.i.i.i.i.i.i271 = phi ptr [ %.1.i.i.i.i.i.i276, %.lr.ph.i.i.i.i.i.i270 ], [ %i.gv, %bb.ar ] ; 3 uses
  %.0811.i.i.i.i.i.i272 = phi ptr [ %.19.i.i.i.i.i.i273, %.lr.ph.i.i.i.i.i.i270 ], [ %i.gw, %bb.ar ]
  %i.gx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i271, i64 32
  %i.gy = load i16, ptr %i.gx, align 2, !tbaa !259
  %i.gz = icmp ult i16 %i.gy, %i.gq               ; 2 uses
  %.19.i.i.i.i.i.i273 = select i1 %i.gz, ptr %.0811.i.i.i.i.i.i272, ptr %.012.i.i.i.i.i.i271 ; 4 uses
  %.1.in.v.i.i.i.i.i.i274 = select i1 %i.gz, i64 24, i64 16
  %.1.in.i.i.i.i.i.i275 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i271, i64 %.1.in.v.i.i.i.i.i.i274
  %.1.i.i.i.i.i.i276 = load ptr, ptr %.1.in.i.i.i.i.i.i275, align 8, !tbaa !293 ; 2 uses
  %.not.i.i.i.i.i.i277 = icmp eq ptr %.1.i.i.i.i.i.i276, null
  br i1 %.not.i.i.i.i.i.i277, label %_ZNKSt8_Rb_treeItSt4pairIKtSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS3_EEESt10_Select1stIS7_ESt4lessItESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i.i278, label %.lr.ph.i.i.i.i.i.i270, !llvm.loop !6

_ZNKSt8_Rb_treeItSt4pairIKtSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS3_EEESt10_Select1stIS7_ESt4lessItESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i.i278: ; preds = %.lr.ph.i.i.i.i.i.i270
  %i.ha = icmp eq ptr %.19.i.i.i.i.i.i273, %i.gw
  br i1 %i.ha, label %.thread.i.i.i281, label %_ZNKSt3mapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EESt4lessItESaISt4pairIKtS4_EEE4findERS8_.exit.i.i.i279

_ZNKSt3mapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EESt4lessItESaISt4pairIKtS4_EEE4findERS8_.exit.i.i.i279: ; preds = %_ZNKSt8_Rb_treeItSt4pairIKtSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS3_EEESt10_Select1stIS7_ESt4lessItESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i.i278
  %i.hb = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i273, i64 32
  %i.hc = load i16, ptr %i.hb, align 2, !tbaa !259
  %i.hd = icmp ult i16 %i.gq, %i.hc
  br i1 %i.hd, label %.thread.i.i.i281, label %bb.as

bb.as:                                            ; preds = %_ZNKSt3mapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EESt4lessItESaISt4pairIKtS4_EEE4findERS8_.exit.i.i.i279
  %i.he = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i273, i64 40
  br label %_ZN17ClientEnvironment15getActiveObjectEt.exit294

.thread.i.i.i281:                                 ; preds = %_ZNKSt3mapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EESt4lessItESaISt4pairIKtS4_EEE4findERS8_.exit.i.i.i279, %_ZNKSt8_Rb_treeItSt4pairIKtSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS3_EEESt10_Select1stIS7_ESt4lessItESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i.i278, %bb.ar, %bb.aq
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gr, i64 152
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !292 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gr, i64 144 ; 2 uses
  %.not10.i.i.i5.i.i.i282 = icmp eq ptr %i.hg, null
  br i1 %.not10.i.i.i5.i.i.i282, label %_ZN17ClientEnvironment15getActiveObjectEt.exit294, label %.lr.ph.i.i.i6.i.i.i283

.lr.ph.i.i.i6.i.i.i283:                           ; preds = %.thread.i.i.i281, %.lr.ph.i.i.i6.i.i.i283
  %.012.i.i.i7.i.i.i284 = phi ptr [ %.1.i.i.i12.i.i.i289, %.lr.ph.i.i.i6.i.i.i283 ], [ %i.hg, %.thread.i.i.i281 ] ; 3 uses
  %.0811.i.i.i8.i.i.i285 = phi ptr [ %.19.i.i.i9.i.i.i286, %.lr.ph.i.i.i6.i.i.i283 ], [ %i.hh, %.thread.i.i.i281 ]
  %i.hi = getelementptr inbounds nuw i8, ptr %.012.i.i.i7.i.i.i284, i64 32
  %i.hj = load i16, ptr %i.hi, align 2, !tbaa !259
  %i.hk = icmp ult i16 %i.hj, %i.gq               ; 2 uses
  %.19.i.i.i9.i.i.i286 = select i1 %i.hk, ptr %.0811.i.i.i8.i.i.i285, ptr %.012.i.i.i7.i.i.i284 ; 4 uses
  %.1.in.v.i.i.i10.i.i.i287 = select i1 %i.hk, i64 24, i64 16
  %.1.in.i.i.i11.i.i.i288 = getelementptr inbounds nuw i8, ptr %.012.i.i.i7.i.i.i284, i64 %.1.in.v.i.i.i10.i.i.i287
  %.1.i.i.i12.i.i.i289 = load ptr, ptr %.1.in.i.i.i11.i.i.i288, align 8, !tbaa !293 ; 2 uses
  %.not.i.i.i13.i.i.i290 = icmp eq ptr %.1.i.i.i12.i.i.i289, null
  br i1 %.not.i.i.i13.i.i.i290, label %_ZNKSt8_Rb_treeItSt4pairIKtSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS3_EEESt10_Select1stIS7_ESt4lessItESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i14.i.i.i291, label %.lr.ph.i.i.i6.i.i.i283, !llvm.loop !6

_ZNKSt8_Rb_treeItSt4pairIKtSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS3_EEESt10_Select1stIS7_ESt4lessItESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i14.i.i.i291: ; preds = %.lr.ph.i.i.i6.i.i.i283
  %i.hl = icmp eq ptr %.19.i.i.i9.i.i.i286, %i.hh
  br i1 %i.hl, label %_ZN17ClientEnvironment15getActiveObjectEt.exit294, label %_ZNKSt3mapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EESt4lessItESaISt4pairIKtS4_EEE4findERS8_.exit17.i.i.i292

_ZNKSt3mapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EESt4lessItESaISt4pairIKtS4_EEE4findERS8_.exit17.i.i.i292: ; preds = %_ZNKSt8_Rb_treeItSt4pairIKtSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS3_EEESt10_Select1stIS7_ESt4lessItESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i14.i.i.i291
  %i.hm = getelementptr inbounds nuw i8, ptr %.19.i.i.i9.i.i.i286, i64 32
  %i.hn = load i16, ptr %i.hm, align 2, !tbaa !259
  %i.ho = icmp ult i16 %i.gq, %i.hn
  %i.hp = getelementptr inbounds nuw i8, ptr %.19.i.i.i9.i.i.i286, i64 40
  %spec.select.i.i.i293 = select i1 %i.ho, ptr @_ZN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE, ptr %i.hp
  br label %_ZN17ClientEnvironment15getActiveObjectEt.exit294

_ZN17ClientEnvironment15getActiveObjectEt.exit294: ; preds = %bb.as, %.thread.i.i.i281, %_ZNKSt8_Rb_treeItSt4pairIKtSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS3_EEESt10_Select1stIS7_ESt4lessItESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i14.i.i.i291, %_ZNKSt3mapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EESt4lessItESaISt4pairIKtS4_EEE4findERS8_.exit17.i.i.i292
  %.2.i.i.i280 = phi ptr [ %i.he, %bb.as ], [ @_ZN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE, %_ZNKSt8_Rb_treeItSt4pairIKtSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS3_EEESt10_Select1stIS7_ESt4lessItESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i14.i.i.i291 ], [ %spec.select.i.i.i293, %_ZNKSt3mapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EESt4lessItESaISt4pairIKtS4_EEE4findERS8_.exit17.i.i.i292 ], [ @_ZN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE, %.thread.i.i.i281 ]
  %i.hq = load ptr, ptr %.2.i.i.i280, align 8, !tbaa !294 ; 3 uses
  %.not224 = icmp eq ptr %i.hq, null
  br i1 %.not224, label %bb.au, label %bb.at

bb.at:                                            ; preds = %_ZN17ClientEnvironment15getActiveObjectEt.exit294
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !55
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 176
  %i.ht = load ptr, ptr %i.hs, align 8
  call void %i.ht(ptr noundef nonnull align 8 dereferenceable(32) %i.hq)
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %_ZN17ClientEnvironment15getActiveObjectEt.exit294
  %.sroa.0402.0 = load ptr, ptr %.sroa.0402.0442, align 8, !tbaa !41 ; 2 uses
  %.not436 = icmp eq ptr %.sroa.0402.0, null
  br i1 %.not436, label %.loopexit, label %bb.aq

.loopexit:                                        ; preds = %bb.au, %._crit_edge, %bb.ai, %bb.ah
  %i.hu = load ptr, ptr %0, align 8, !tbaa !55
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 136
  %i.hw = load ptr, ptr %i.hv, align 8
  %i.hx = call noundef ptr %i.hw(ptr noundef nonnull align 8 dereferenceable(1076) %0) ; 7 uses
  %.not214 = icmp eq ptr %i.hx, null              ; 2 uses
  br i1 %.not214, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %.loopexit
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.hz = load i8, ptr %i.hy, align 8, !tbaa !119, !range !46, !noundef !47
  %i.ia = trunc nuw i8 %i.hz to i1
  %i.ib = load ptr, ptr %i.hx, align 8, !tbaa !55
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 112
  %i.id = load ptr, ptr %i.ic, align 8
  call void %i.id(ptr noundef nonnull align 8 dereferenceable(218) %i.hx, i1 noundef zeroext %i.ia)
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %.loopexit
  %i.ie = load ptr, ptr %0, align 8, !tbaa !55
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 160
  %i.ig = load ptr, ptr %i.if, align 8
  %i.ih = call noundef ptr %i.ig(ptr noundef nonnull align 8 dereferenceable(1076) %0)
  %.not215 = icmp eq ptr %i.ih, null
  br i1 %.not215, label %bb.bc, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ii = load ptr, ptr %0, align 8, !tbaa !55
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 160
  %i.ik = load ptr, ptr %i.ij, align 8
  %i.il = call noundef ptr %i.ik(ptr noundef nonnull align 8 dereferenceable(1076) %0), !inline_history !601
  %.not.i = icmp eq ptr %i.il, null
  br i1 %.not.i, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 628
  %.sroa.013.0.copyload.i = load <2 x float>, ptr %i.im, align 4, !tbaa !48
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 636
  %.sroa.4.0.copyload.i = load float, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !48
  br label %_ZNK10GenericCAO11getPositionEv.exit

bb.az:                                            ; preds = %bb.ax
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !260
  %.not17.i = icmp eq ptr %i.io, null
  br i1 %.not17.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @_ZNK10GenericCAO17updateParentChainEv(ptr noundef nonnull align 8 dereferenceable(1076) %0)
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !187
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 408
  %.sroa.0.0.copyload.i.i = load i48, ptr %i.ir, align 8, !tbaa !259 ; 2 uses
  %i.is = load ptr, ptr %i.in, align 8, !tbaa !260 ; 2 uses
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !55
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 232
  %i.iv = load ptr, ptr %i.iu, align 8
  %i.iw = call { <2 x float>, float } %i.iv(ptr noundef nonnull align 8 dereferenceable(218) %i.is), !inline_history !601 ; 2 uses
  %.fca.0.extract8.i = extractvalue { <2 x float>, float } %i.iw, 0
  %.fca.1.extract9.i = extractvalue { <2 x float>, float } %i.iw, 1
  %.sroa.3.0.extract.shift.i.i = lshr i48 %.sroa.0.0.copyload.i.i, 32
  %.sroa.3.0.extract.trunc.i.i = trunc nuw i48 %.sroa.3.0.extract.shift.i.i to i16
  %i.ix = sitofp nsz i16 %.sroa.3.0.extract.trunc.i.i to float
  %i.iy = fmul nnan nsz float %i.ix, 1.000000e+01
  %i.iz = bitcast i48 %.sroa.0.0.copyload.i.i to <3 x i16>
  %i.ja = shufflevector <3 x i16> %i.iz, <3 x i16> poison, <2 x i32> <i32 0, i32 1>
  %i.jb = sitofp nsz <2 x i16> %i.ja to <2 x float>
  %i.jc = fmul nnan nsz <2 x float> %i.jb, splat (float 1.000000e+01)
  %i.jd = fadd nsz <2 x float> %i.jc, %.fca.0.extract8.i
  %i.je = fadd nsz float %i.iy, %.fca.1.extract9.i
  br label %_ZNK10GenericCAO11getPositionEv.exit

bb.bb:                                            ; preds = %bb.az
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 564
  %.sroa.013.0.copyload14.i = load <2 x float>, ptr %i.jf, align 4, !tbaa !48
  %.sroa.4.0..sroa_idx15.i = getelementptr inbounds nuw i8, ptr %0, i64 572
  %.sroa.4.0.copyload16.i = load float, ptr %.sroa.4.0..sroa_idx15.i, align 4, !tbaa !48
  br label %_ZNK10GenericCAO11getPositionEv.exit

_ZNK10GenericCAO11getPositionEv.exit:             ; preds = %bb.ay, %bb.ba, %bb.bb
  %.sroa.0.4.vec.insert.i.pn.i = phi <2 x float> [ %i.jd, %bb.ba ], [ %.sroa.013.0.copyload14.i, %bb.bb ], [ %.sroa.013.0.copyload.i, %bb.ay ]
  %.pn.i = phi float [ %i.je, %bb.ba ], [ %.sroa.4.0.copyload16.i, %bb.bb ], [ %.sroa.4.0.copyload.i, %bb.ay ]
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 564 ; 3 uses
  store <2 x float> %.sroa.0.4.vec.insert.i.pn.i, ptr %i.jg, align 4, !tbaa !48
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 572
  store float %.pn.i, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !48
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 628
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jh, i8 0, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ji, ptr noundef nonnull align 4 dereferenceable(12) %i.jg, i64 12, i1 false), !tbaa.struct !457
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 640
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.jj, ptr noundef nonnull align 4 dereferenceable(12) %i.jg, i64 12, i1 false), !tbaa.struct !457
  br label %bb.bz

bb.bc:                                            ; preds = %bb.aw
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 664
  call void @_ZN26SmoothTranslatorWrappedv3f9translateEf(ptr noundef nonnull align 4 dereferenceable(45) %i.jk, float noundef %1)
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 3 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 628 ; 6 uses
  %.sroa.0392.0.copyload = load float, ptr %i.jm, align 4, !tbaa !48
  %.sroa.5393.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 2 uses
  %.sroa.5393.0.copyload = load float, ptr %.sroa.5393.0..sroa_idx, align 8, !tbaa !48
  %.sroa.6394.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 636 ; 4 uses
  %.sroa.6394.0.copyload = load float, ptr %.sroa.6394.0..sroa_idx, align 4, !tbaa !48
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 410
  %i.jo = load i8, ptr %i.jn, align 2, !tbaa !148, !range !46, !noundef !47
  %i.jp = trunc nuw i8 %i.jo to i1
  br i1 %i.jp, label %_ZN19collisionMoveResultaSEOS_.exit, label %bb.bg

_ZN19collisionMoveResultaSEOS_.exit:              ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %i.jq, i64 24, i1 false), !tbaa.struct !265
  %i.jr = load <4 x float>, ptr %9, align 16, !tbaa !48
  %i.js = fmul nsz <4 x float> %i.jr, splat (float 1.000000e+01)
  store <4 x float> %i.js, ptr %9, align 16, !tbaa !48
  %i.jt = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ju = load <2 x float>, ptr %i.jt, align 16, !tbaa !48
  %i.jv = fmul nsz <2 x float> %i.ju, splat (float 1.000000e+01)
  store <2 x float> %i.jv, ptr %i.jt, align 16, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 564 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %10, ptr noundef nonnull align 4 dereferenceable(12) %i.jw, i64 12, i1 false), !tbaa.struct !457
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %11, ptr noundef nonnull align 8 dereferenceable(12) %i.jx, i64 12, i1 false), !tbaa.struct !457
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  %i.jy = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !840 ; 2 uses
  %i.ka = icmp eq ptr %i.jz, null
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jz, i64 16
  %i.kc = select i1 %i.ka, ptr null, ptr %i.kb
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.ke = load float, ptr %i.kd, align 8, !tbaa !841
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 588
  %.sroa.058.0.copyload = load <2 x float>, ptr %i.kf, align 4, !tbaa !48
  %.sroa.259.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 596
  %.sroa.259.0.copyload = load float, ptr %.sroa.259.0..sroa_idx, align 4, !tbaa !48
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 411
  %i.kh = load i8, ptr %i.kg, align 1, !tbaa !150, !range !46, !noundef !47
  %i.ki = trunc nuw i8 %i.kh to i1
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 422
  %i.kk = load i8, ptr %i.kj, align 2, !tbaa !842
  call void @_Z19collisionMoveSimpleP11EnvironmentP8IGameDefRKN4core8aabbox3dIfEEffPNS3_8vector3dIfEESA_S9_P12ActiveObjectb10StepUpMode(ptr dead_on_unwind nonnull writable sret(%struct.collisionMoveResult) align 8 %12, ptr noundef nonnull %2, ptr noundef %i.kc, ptr noundef nonnull align 4 dereferenceable(24) %9, float noundef %i.ke, float noundef %1, ptr noundef nonnull %10, ptr noundef nonnull %11, <2 x float> %.sroa.058.0.copyload, float %.sroa.259.0.copyload, ptr noundef nonnull %0, i1 noundef zeroext %i.ki, i8 noundef zeroext %i.kk)
  %.sroa.0385.0.copyload = load i8, ptr %12, align 8 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !845 ; 3 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !846
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.jw, ptr noundef nonnull align 4 dereferenceable(12) %10, i64 12, i1 false), !tbaa.struct !457
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.jx, ptr noundef nonnull align 4 dereferenceable(12) %11, i64 12, i1 false), !tbaa.struct !457
  %.sroa.053.0.copyload = load <2 x float>, ptr %i.jw, align 4, !tbaa !48 ; 2 uses
  %.sroa.254.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 572
  %.sroa.254.0.copyload = load float, ptr %.sroa.254.0..sroa_idx, align 4, !tbaa !48 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 660 ; 2 uses
  store i8 %.sroa.0385.0.copyload, ptr %i.kp, align 4, !tbaa !53
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(45) %i.jl, ptr noundef nonnull align 4 dereferenceable(12) %i.jm, i64 12, i1 false), !tbaa.struct !457
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  store <2 x float> %.sroa.053.0.copyload, ptr %i.kq, align 8, !tbaa !48
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 2 uses
  store float %.sroa.254.0.copyload, ptr %.sroa.24.0..sroa_idx.i, align 8, !tbaa !48
  %i.kr = fcmp nsz ogt float %1, 0.000000e+00
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 652 ; 3 uses
  br i1 %i.kr, label %_ZN16SmoothTranslatorIN4core8vector3dIfEEE6updateES2_bf.exit, label %bb.bd

bb.bd:                                            ; preds = %_ZN19collisionMoveResultaSEOS_.exit
  %i.kt = load float, ptr %i.ks, align 4, !tbaa !52 ; 2 uses
  %i.ku = fpext nsz float %i.kt to double         ; 2 uses
  %i.kv = fcmp nsz olt double %i.ku, 1.000000e-03
  %i.kw = fcmp nsz ogt float %i.kt, 1.000000e+00
  %or.cond.i = or i1 %i.kw, %i.kv
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.ky = load float, ptr %i.kx, align 8, !tbaa !51 ; 2 uses
  br i1 %or.cond.i, label %_ZN16SmoothTranslatorIN4core8vector3dIfEEE6updateES2_bf.exit, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.kz = fpext nsz float %i.ky to double
  %i.la = fmul nsz double %i.kz, 1.000000e-01
  %i.lb = call nsz double @llvm.fmuladd.f64(double %i.ku, double 9.000000e-01, double %i.la)
  %i.lc = fptrunc nsz double %i.lb to float
  br label %_ZN16SmoothTranslatorIN4core8vector3dIfEEE6updateES2_bf.exit

_ZN16SmoothTranslatorIN4core8vector3dIfEEE6updateES2_bf.exit: ; preds = %_ZN19collisionMoveResultaSEOS_.exit, %bb.bd, %bb.be
  %.sink.i = phi float [ %1, %_ZN19collisionMoveResultaSEOS_.exit ], [ %i.lc, %bb.be ], [ %i.ky, %bb.bd ] ; 2 uses
  store float %.sink.i, ptr %i.ks, align 4, !tbaa !52
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 2 uses
  store float 0.000000e+00, ptr %i.ld, align 8, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  %.not.i.i.i.i297 = icmp eq ptr %i.km, null
  br i1 %.not.i.i.i.i297, label %_ZN19collisionMoveResultD2Ev.exit298, label %bb.bf

bb.bf:                                            ; preds = %_ZN16SmoothTranslatorIN4core8vector3dIfEEE6updateES2_bf.exit
  %i.le = ptrtoint ptr %i.ko to i64
  %i.lf = ptrtoint ptr %i.km to i64
  %i.lg = sub i64 %i.le, %i.lf
  call void @_ZdlPvm(ptr noundef nonnull %i.km, i64 noundef %i.lg) #35
  %.pre.pre = load float, ptr %i.ld, align 8, !tbaa !51
  %i.lh = load <2 x float>, ptr %i.kq, align 8, !tbaa !48
  %.pre450.pre = load float, ptr %.sroa.24.0..sroa_idx.i, align 8, !tbaa !149
  %.pre452.pre = load float, ptr %i.ks, align 4, !tbaa !52
  %.pre454.pre = load i8, ptr %i.kp, align 4, !tbaa !53, !range !46
  %i.li = fadd nsz float %1, %.pre.pre
  br label %_ZN19collisionMoveResultD2Ev.exit298

_ZN19collisionMoveResultD2Ev.exit298:             ; preds = %_ZN16SmoothTranslatorIN4core8vector3dIfEEE6updateES2_bf.exit, %bb.bf
  %.pre454 = phi i8 [ %.sroa.0385.0.copyload, %_ZN16SmoothTranslatorIN4core8vector3dIfEEE6updateES2_bf.exit ], [ %.pre454.pre, %bb.bf ]
  %.pre452 = phi float [ %.sink.i, %_ZN16SmoothTranslatorIN4core8vector3dIfEEE6updateES2_bf.exit ], [ %.pre452.pre, %bb.bf ]
  %.pre450 = phi float [ %.sroa.254.0.copyload, %_ZN16SmoothTranslatorIN4core8vector3dIfEEE6updateES2_bf.exit ], [ %.pre450.pre, %bb.bf ]
  %.pre = phi float [ %1, %_ZN16SmoothTranslatorIN4core8vector3dIfEEE6updateES2_bf.exit ], [ %i.li, %bb.bf ]
  %i.lj = phi <2 x float> [ %.sroa.053.0.copyload, %_ZN16SmoothTranslatorIN4core8vector3dIfEEE6updateES2_bf.exit ], [ %i.lh, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.bj

bb.bg:                                            ; preds = %bb.bc
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.ll = getelementptr inbounds nuw i8, ptr %0, i64 580
  %i.lm = fpext nsz float %1 to double            ; 2 uses
  %i.ln = fmul nsz double %i.lm, 5.000000e-01
  %i.lo = fmul nsz double %i.ln, %i.lm
  %i.lp = fptrunc nsz double %i.lo to float
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 596
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 564 ; 3 uses
  %i.lt = load <4 x float>, ptr %i.lk, align 8, !tbaa !48 ; 3 uses
  %i.lu = load <2 x float>, ptr %i.lq, align 8, !tbaa !48 ; 2 uses
  %i.lv = load float, ptr %i.lr, align 4, !tbaa !149
  %i.lw = shufflevector <2 x float> %i.lu, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.lx = shufflevector <4 x float> %i.lt, <4 x float> %i.lw, <4 x i32> <i32 3, i32 4, i32 5, i32 poison>
  %i.ly = insertelement <4 x float> %i.lx, float -0.000000e+00, i64 3
  %i.lz = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.lp, i64 0
  %i.ma = shufflevector <4 x float> %i.lz, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.mb = fmul <4 x float> %i.ly, %i.ma
  %i.mc = load <4 x float>, ptr %i.ls, align 4, !tbaa !48
  %i.md = insertelement <4 x float> poison, float %1, i64 0
  %i.me = shufflevector <4 x float> %i.md, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mf = fmul nsz <4 x float> %i.me, %i.lt
  %i.mg = fadd nsz <4 x float> %i.mf, %i.mb
  %i.mh = fadd nsz <4 x float> %i.mc, %i.mg       ; 2 uses
  store <4 x float> %i.mh, ptr %i.ls, align 4, !tbaa !48
  %i.mi = insertelement <2 x float> poison, float %1, i64 0
  %i.mj = shufflevector <2 x float> %i.mi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mk = insertelement <2 x float> %i.lu, float %i.lv, i64 1
  %i.ml = fmul nsz <2 x float> %i.mj, %i.mk
  %i.mm = shufflevector <4 x float> %i.lt, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.mn = fadd nsz <2 x float> %i.mm, %i.ml
  store <2 x float> %i.mn, ptr %i.ll, align 4, !tbaa !48
  %.sroa.033.0.copyload = load <2 x float>, ptr %i.ls, align 4, !tbaa !48 ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 660
  %i.mp = load i8, ptr %i.mo, align 4, !tbaa !847, !range !46, !noundef !47
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 652 ; 2 uses
  %i.mr = load float, ptr %i.mq, align 4, !tbaa !848 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(45) %i.jl, ptr noundef nonnull align 4 dereferenceable(12) %i.jm, i64 12, i1 false), !tbaa.struct !457
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 640
  store <2 x float> %.sroa.033.0.copyload, ptr %i.ms, align 8, !tbaa !48
  %.sroa.24.0..sroa_idx.i313 = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.mt = extractelement <4 x float> %i.mh, i64 2 ; 2 uses
  store float %i.mt, ptr %.sroa.24.0..sroa_idx.i313, align 8, !tbaa !48
  %i.mu = fcmp nsz ogt float %i.mr, 0.000000e+00
  br i1 %i.mu, label %_ZN16SmoothTranslatorIN4core8vector3dIfEEE6updateES2_bf.exit316, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.mv = fpext nsz float %i.mr to double         ; 2 uses
  %i.mw = fcmp nsz olt double %i.mv, 1.000000e-03
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.my = load float, ptr %i.mx, align 8, !tbaa !51 ; 2 uses
  br i1 %i.mw, label %_ZN16SmoothTranslatorIN4core8vector3dIfEEE6updateES2_bf.exit316, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.mz = fpext nsz float %i.my to double
  %i.na = fmul nsz double %i.mz, 1.000000e-01
  %i.nb = call nsz double @llvm.fmuladd.f64(double %i.mv, double 9.000000e-01, double %i.na)
  %i.nc = fptrunc nsz double %i.nb to float
  br label %_ZN16SmoothTranslatorIN4core8vector3dIfEEE6updateES2_bf.exit316

_ZN16SmoothTranslatorIN4core8vector3dIfEEE6updateES2_bf.exit316: ; preds = %bb.bg, %bb.bh, %bb.bi
  %.sink.i315 = phi float [ %i.mr, %bb.bg ], [ %i.nc, %bb.bi ], [ %i.my, %bb.bh ] ; 2 uses
  store float %.sink.i315, ptr %i.mq, align 4, !tbaa !52
  %i.nd = getelementptr inbounds nuw i8, ptr %0, i64 656
  store float 0.000000e+00, ptr %i.nd, align 8, !tbaa !51
  br label %bb.bj

bb.bj:                                            ; preds = %_ZN16SmoothTranslatorIN4core8vector3dIfEEE6updateES2_bf.exit316, %_ZN19collisionMoveResultD2Ev.exit298
  %i.ne = phi i8 [ %i.mp, %_ZN16SmoothTranslatorIN4core8vector3dIfEEE6updateES2_bf.exit316 ], [ %.pre454, %_ZN19collisionMoveResultD2Ev.exit298 ]
  %i.nf = phi float [ %.sink.i315, %_ZN16SmoothTranslatorIN4core8vector3dIfEEE6updateES2_bf.exit316 ], [ %.pre452, %_ZN19collisionMoveResultD2Ev.exit298 ] ; 2 uses
  %i.ng = phi float [ %i.mt, %_ZN16SmoothTranslatorIN4core8vector3dIfEEE6updateES2_bf.exit316 ], [ %.pre450, %_ZN19collisionMoveResultD2Ev.exit298 ]
  %i.nh = phi float [ %1, %_ZN16SmoothTranslatorIN4core8vector3dIfEEE6updateES2_bf.exit316 ], [ %.pre, %_ZN19collisionMoveResultD2Ev.exit298 ] ; 2 uses
  %i.ni = phi <2 x float> [ %.sroa.033.0.copyload, %_ZN16SmoothTranslatorIN4core8vector3dIfEEE6updateES2_bf.exit316 ], [ %i.lj, %_ZN19collisionMoveResultD2Ev.exit298 ]
  %i.nj = getelementptr inbounds nuw i8, ptr %0, i64 656
  store float %i.nh, ptr %i.nj, align 8, !tbaa !51
  %i.nk = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.nl = load float, ptr %i.nk, align 8, !tbaa !149 ; 2 uses
  %i.nm = fsub nsz float %i.ng, %i.nl
  %i.nn = fpext nsz float %i.nf to double
  %i.no = fcmp nsz ogt double %i.nn, 1.000000e-03
  %i.np = fdiv nsz float %i.nh, %i.nf
  %i.nq = fmul nsz float %i.np, 8.000000e-01
  %.0.i = select i1 %i.no, float %i.nq, float 8.000000e-01 ; 2 uses
  %i.nr = trunc nuw i8 %i.ne to i1
  %i.ns = select i1 %i.nr, float 1.000000e+00, float 1.500000e+00 ; 2 uses
  %i.nt = fcmp nsz olt float %i.ns, %.0.i
  %.sroa.speculated.i = select i1 %i.nt, float %i.ns, float %.0.i ; 2 uses
  %i.nu = fmul nsz float %i.nm, %.sroa.speculated.i
  %i.nv = load <2 x float>, ptr %i.jl, align 8, !tbaa !48 ; 2 uses
  %i.nw = fsub nsz <2 x float> %i.ni, %i.nv
  %i.nx = insertelement <2 x float> poison, float %.sroa.speculated.i, i64 0
  %i.ny = shufflevector <2 x float> %i.nx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nz = fmul nsz <2 x float> %i.nw, %i.ny
  %i.oa = fadd nsz <2 x float> %i.nv, %i.nz
  %i.ob = fadd nsz float %i.nl, %i.nu
  store <2 x float> %i.oa, ptr %i.jm, align 4, !tbaa !48
  store float %i.ob, ptr %.sroa.6394.0..sroa_idx, align 4, !tbaa !48
  call void @_ZN10GenericCAO13updateNodePosEv(ptr noundef nonnull align 8 dereferenceable(1076) %0)
  %i.oc = load float, ptr %i.jm, align 4, !tbaa !262
  %i.od = fsub nsz float %.sroa.0392.0.copyload, %i.oc ; 2 uses
  %i.oe = load float, ptr %.sroa.5393.0..sroa_idx, align 8, !tbaa !263
  %i.of = fsub nsz float %.sroa.5393.0.copyload, %i.oe ; 2 uses
  %i.og = load float, ptr %.sroa.6394.0..sroa_idx, align 4, !tbaa !149
  %i.oh = fsub nsz float %.sroa.6394.0.copyload, %i.og ; 2 uses
  %i.oi = fmul nsz float %i.of, %i.of
  %i.oj = call nsz float @llvm.fmuladd.f32(float %i.od, float %i.od, float %i.oi)
  %i.ok = call nsz float @llvm.fmuladd.f32(float %i.oh, float %i.oh, float %i.oj)
  %i.ol = call nsz noundef float @llvm.sqrt.f32(float %i.ok)
  %i.om = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 3 uses
  %i.on = load float, ptr %i.om, align 8, !tbaa !133
  %i.oo = fadd nsz float %i.on, %i.ol             ; 2 uses
  store float %i.oo, ptr %i.om, align 8, !tbaa !133
  %i.op = fcmp nsz ogt float %i.oo, 1.500000e+01
  br i1 %i.op, label %bb.bk, label %bb.bz

bb.bk:                                            ; preds = %bb.bj
  store float 0.000000e+00, ptr %i.om, align 8, !tbaa !133
  %i.oq = load i8, ptr %i.c, align 1, !tbaa !117, !range !46, !noundef !47
  %i.or = trunc nuw i8 %i.oq to i1
  br i1 %i.or, label %bb.bz, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.os = getelementptr inbounds nuw i8, ptr %0, i64 414
  %i.ot = load i8, ptr %i.os, align 2, !tbaa !602, !range !46, !noundef !47
  %i.ou = trunc nuw i8 %i.ot to i1
  br i1 %i.ou, label %bb.bm, label %bb.bz

bb.bm:                                            ; preds = %bb.bl
  %i.ov = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !135
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 16 ; 2 uses
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !55
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 8
  %i.pa = load ptr, ptr %i.oz, align 8
  %i.pb = call noundef ptr %i.pa(ptr noundef nonnull align 8 dereferenceable(8) %i.ox), !inline_history !14 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  %i.pc = load ptr, ptr %0, align 8, !tbaa !55
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 160
  %i.pe = load ptr, ptr %i.pd, align 8
  %i.pf = call noundef ptr %i.pe(ptr noundef nonnull align 8 dereferenceable(1076) %0), !inline_history !601
  %.not.i318 = icmp eq ptr %i.pf, null
  br i1 %.not.i318, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %.sroa.013.0.copyload.i339 = load <2 x float>, ptr %i.jm, align 4, !tbaa !48
  %.sroa.4.0.copyload.i341 = load float, ptr %.sroa.6394.0..sroa_idx, align 4, !tbaa !48
  br label %_ZNK10GenericCAO11getPositionEv.exit342

bb.bo:                                            ; preds = %bb.bm
  %i.pg = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.ph = load ptr, ptr %i.pg, align 8, !tbaa !260
  %.not17.i319 = icmp eq ptr %i.ph, null
  br i1 %.not17.i319, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  call void @_ZNK10GenericCAO17updateParentChainEv(ptr noundef nonnull align 8 dereferenceable(1076) %0)
  %i.pi = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !187
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 408
  %.sroa.0.0.copyload.i.i320 = load i48, ptr %i.pk, align 8, !tbaa !259 ; 2 uses
  %i.pl = load ptr, ptr %i.pg, align 8, !tbaa !260 ; 2 uses
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !55
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 232
  %i.po = load ptr, ptr %i.pn, align 8
  %i.pp = call { <2 x float>, float } %i.po(ptr noundef nonnull align 8 dereferenceable(218) %i.pl), !inline_history !601 ; 2 uses
  %.fca.0.extract8.i321 = extractvalue { <2 x float>, float } %i.pp, 0
  %.fca.1.extract9.i322 = extractvalue { <2 x float>, float } %i.pp, 1
  %.sroa.3.0.extract.shift.i.i326 = lshr i48 %.sroa.0.0.copyload.i.i320, 32
  %.sroa.3.0.extract.trunc.i.i327 = trunc nuw i48 %.sroa.3.0.extract.shift.i.i326 to i16
  %i.pq = sitofp nsz i16 %.sroa.3.0.extract.trunc.i.i327 to float
  %i.pr = fmul nnan nsz float %i.pq, 1.000000e+01
  %i.ps = bitcast i48 %.sroa.0.0.copyload.i.i320 to <3 x i16>
  %i.pt = shufflevector <3 x i16> %i.ps, <3 x i16> poison, <2 x i32> <i32 0, i32 1>
  %i.pu = sitofp nsz <2 x i16> %i.pt to <2 x float>
  %i.pv = fmul nnan nsz <2 x float> %i.pu, splat (float 1.000000e+01)
  %i.pw = fadd nsz <2 x float> %i.pv, %.fca.0.extract8.i321
  %i.px = fadd nsz float %i.pr, %.fca.1.extract9.i322
  br label %_ZNK10GenericCAO11getPositionEv.exit342

bb.bq:                                            ; preds = %bb.bo
  %i.py = getelementptr inbounds nuw i8, ptr %0, i64 564
  %.sroa.013.0.copyload14.i336 = load <2 x float>, ptr %i.py, align 4, !tbaa !48
  %.sroa.4.0..sroa_idx15.i337 = getelementptr inbounds nuw i8, ptr %0, i64 572
  %.sroa.4.0.copyload16.i338 = load float, ptr %.sroa.4.0..sroa_idx15.i337, align 4, !tbaa !48
  br label %_ZNK10GenericCAO11getPositionEv.exit342

_ZNK10GenericCAO11getPositionEv.exit342:          ; preds = %bb.bn, %bb.bp, %bb.bq
  %.sroa.0.4.vec.insert.i.pn.i332 = phi <2 x float> [ %i.pw, %bb.bp ], [ %.sroa.013.0.copyload14.i336, %bb.bq ], [ %.sroa.013.0.copyload.i339, %bb.bn ] ; 2 uses
  %.pn.i333 = phi float [ %i.px, %bb.bp ], [ %.sroa.4.0.copyload16.i338, %bb.bq ], [ %.sroa.4.0.copyload.i341, %bb.bn ]
  %.sroa.0374.0.vec.extract = extractelement <2 x float> %.sroa.0.4.vec.insert.i.pn.i332, i64 0
  %i.pz = fmul nsz float %.sroa.0374.0.vec.extract, 1.000000e-01 ; 3 uses
  %.sroa.0374.4.vec.extract = extractelement <2 x float> %.sroa.0.4.vec.insert.i.pn.i332, i64 1
  %i.qa = fmul nsz float %.sroa.0374.4.vec.extract, 1.000000e-01
  %.sroa.0.0.vec.insert.i343 = insertelement <2 x float> poison, float %i.pz, i64 0
  %i.qb = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.qc = load float, ptr %i.qb, align 4, !tbaa !849
  %i.qd = fadd nsz float %i.qa, %i.qc             ; 2 uses
  %.sroa.0.4.vec.insert.i348 = insertelement <2 x float> %.sroa.0.0.vec.insert.i343, float %i.qd, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i348, ptr %13, align 8
  %.sroa.220.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.qe = fcmp nsz ogt float %i.pz, 0.000000e+00
  %i.qf = select nsz i1 %i.qe, float 5.000000e-01, float -5.000000e-01
  %i.qg = fadd nsz float %i.pz, %i.qf
  %i.qh = fptosi float %i.qg to i16
  %i.qi = fmul nsz float %.pn.i333, 1.000000e-01  ; 2 uses
  store float %i.qi, ptr %.sroa.220.0..sroa_idx, align 8
  %i.qj = fadd nsz float %i.qd, -5.000000e-01
  %i.qk = insertelement <2 x float> poison, float %i.qj, i64 0
  %i.ql = insertelement <2 x float> %i.qk, float %i.qi, i64 1 ; 2 uses
  %i.qm = fcmp nsz ogt <2 x float> %i.ql, zeroinitializer
  %i.qn = select <2 x i1> %i.qm, <2 x float> splat (float 5.000000e-01), <2 x float> splat (float -5.000000e-01)
  %i.qo = fadd nsz <2 x float> %i.ql, %i.qn
  %i.qp = fptosi <2 x float> %i.qo to <2 x i16>
  %i.qq = zext <2 x i16> %i.qp to <2 x i48>
  %i.qr = shl nuw <2 x i48> %i.qq, <i48 16, i48 32>
  %.sroa.2.0.insert.insert.i = call i48 @llvm.vector.reduce.or.v2i48(<2 x i48> %i.qr)
  %.sroa.0.0.insert.ext.i = zext i16 %i.qh to i48
  %.sroa.0.0.insert.insert.i = or disjoint i48 %.sroa.2.0.insert.insert.i, %.sroa.0.0.insert.ext.i
  %i.qs = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !187 ; 2 uses
  %i.qu = load ptr, ptr %i.qt, align 8, !tbaa !55
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 24
  %i.qw = load ptr, ptr %i.qv, align 8
  %i.qx = call noundef nonnull align 8 dereferenceable(144) ptr %i.qw(ptr noundef nonnull align 8 dereferenceable(440) %i.qt)
  %i.qy = call i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %i.qx, i48 %.sroa.0.0.insert.insert.i, ptr noundef null)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  %i.qz = and i32 %i.qy, 65535
  %i.ra = zext nneg i32 %i.qz to i64              ; 2 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %i.pb, i64 24
  %i.rc = getelementptr inbounds nuw i8, ptr %i.pb, i64 32
  %i.rd = load ptr, ptr %i.rc, align 8, !tbaa !538
  %i.re = load ptr, ptr %i.rb, align 8, !tbaa !539 ; 3 uses
  %i.rf = ptrtoint ptr %i.rd to i64
  %i.rg = ptrtoint ptr %i.re to i64
  %i.rh = sub i64 %i.rf, %i.rg
  %i.ri = sdiv exact i64 %i.rh, 2080
  %i.rj = icmp ugt i64 %i.ri, %i.ra
  br i1 %i.rj, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %_ZNK10GenericCAO11getPositionEv.exit342
  %i.rk = getelementptr inbounds nuw [2080 x i8], ptr %i.re, i64 %i.ra ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 16
  %i.rm = load i64, ptr %i.rl, align 8, !tbaa !60
  %i.rn = icmp eq i64 %i.rm, 0
  br i1 %i.rn, label %bb.bs, label %_ZNK14NodeDefManager3getERK7MapNode.exit

bb.bs:                                            ; preds = %bb.br, %_ZNK10GenericCAO11getPositionEv.exit342
  %i.ro = getelementptr inbounds nuw i8, ptr %i.re, i64 260000
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit

_ZNK14NodeDefManager3getERK7MapNode.exit:         ; preds = %bb.br, %bb.bs
  %i.rp = phi ptr [ %i.ro, %bb.bs ], [ %i.rk, %bb.br ] ; 3 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 1904
  %i.rr = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 7 uses
  store ptr %i.rr, ptr %14, align 8, !tbaa !58
  %i.rs = load ptr, ptr %i.rq, align 8, !tbaa !134 ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rp, i64 1912
  %i.ru = load i64, ptr %i.rt, align 8, !tbaa !60 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i64 %i.ru, ptr %i.b, align 8, !tbaa !138
  %i.rv = icmp ugt i64 %i.ru, 15
  br i1 %i.rv, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit
  %i.rw = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(50) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.rw, ptr %14, align 8, !tbaa !134
  %i.rx = load i64, ptr %i.b, align 8, !tbaa !138
  store i64 %i.rx, ptr %i.rr, align 8, !tbaa !61
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %_ZNK14NodeDefManager3getERK7MapNode.exit
  %i.ry = phi ptr [ %i.rw, %.noexc.i.i ], [ %i.rr, %_ZNK14NodeDefManager3getERK7MapNode.exit ] ; 2 uses
  switch i64 %i.ru, label %bb.bu [
    i64 1, label %bb.bt
    i64 0, label %_ZN9SoundSpecC2ERKS_.exit
  ]

bb.bt:                                            ; preds = %._crit_edge.i.i.i
  %i.rz = load i8, ptr %i.rs, align 1, !tbaa !61
  store i8 %i.rz, ptr %i.ry, align 1, !tbaa !61
  br label %_ZN9SoundSpecC2ERKS_.exit

bb.bu:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ry, ptr align 1 %i.rs, i64 %i.ru, i1 false)
  br label %_ZN9SoundSpecC2ERKS_.exit

_ZN9SoundSpecC2ERKS_.exit:                        ; preds = %._crit_edge.i.i.i, %bb.bt, %bb.bu
  %i.sa = load i64, ptr %i.b, align 8, !tbaa !138 ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %i.sa, ptr %i.sb, align 8, !tbaa !60
  %i.sc = load ptr, ptr %14, align 8, !tbaa !134
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 %i.sa
  store i8 0, ptr %i.sd, align 1, !tbaa !61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %i.se = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 3 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %i.rp, i64 1936
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.se, ptr noundef nonnull align 8 dereferenceable(18) %i.sf, i64 18, i1 false)
  %i.sg = load float, ptr %i.se, align 8, !tbaa !850
  %i.sh = fmul nsz float %i.sg, 6.000000e-01
  store float %i.sh, ptr %i.se, align 8, !tbaa !850
  %i.si = load ptr, ptr %i.ov, align 8, !tbaa !135 ; 2 uses
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !55
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 112
  %i.sl = load ptr, ptr %i.sk, align 8
  %i.sm = invoke noundef ptr %i.sl(ptr noundef nonnull align 8 dereferenceable(1674) %i.si)
          to label %_ZN6Client5soundEv.exit unwind label %bb.bw, !inline_history !830 ; 2 uses

_ZN6Client5soundEv.exit:                          ; preds = %_ZN9SoundSpecC2ERKS_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  store <2 x float> zeroinitializer, ptr %15, align 8, !tbaa !48
  %i.sn = getelementptr inbounds nuw i8, ptr %15, i64 8
  store float 0.000000e+00, ptr %i.sn, align 8, !tbaa !149
  %i.so = load ptr, ptr %i.sm, align 8, !tbaa !55
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 88
  %i.sq = load ptr, ptr %i.sp, align 8
  invoke void %i.sq(ptr noundef nonnull align 8 dereferenceable(96) %i.sm, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(50) %14, ptr noundef nonnull align 4 dereferenceable(12) %13, ptr noundef nonnull align 4 dereferenceable(12) %15)
          to label %bb.bv unwind label %bb.bx

bb.bv:                                            ; preds = %_ZN6Client5soundEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  %i.sr = load ptr, ptr %14, align 8, !tbaa !134  ; 2 uses
  %i.ss = icmp eq ptr %i.sr, %i.rr
  br i1 %i.ss, label %_ZN9SoundSpecD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.bv
  %i.st = load i64, ptr %i.rr, align 8, !tbaa !61
  %i.su = add i64 %i.st, 1
  call void @_ZdlPvm(ptr noundef %i.sr, i64 noundef %i.su) #35
  br label %_ZN9SoundSpecD2Ev.exit

_ZN9SoundSpecD2Ev.exit:                           ; preds = %bb.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %bb.bz

bb.bw:                                            ; preds = %_ZN9SoundSpecC2ERKS_.exit
  %i.sv = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.bx:                                            ; preds = %_ZN6Client5soundEv.exit
  %i.sw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %.pn216 = phi { ptr, i32 } [ %i.sw, %bb.bx ], [ %i.sv, %bb.bw ]
  %i.sx = load ptr, ptr %14, align 8, !tbaa !134  ; 2 uses
  %i.sy = icmp eq ptr %i.sx, %i.rr
  br i1 %i.sy, label %_ZN9SoundSpecD2Ev.exit358, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i356

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i356: ; preds = %bb.by
  %i.sz = load i64, ptr %i.rr, align 8, !tbaa !61
  %i.ta = add i64 %i.sz, 1
  call void @_ZdlPvm(ptr noundef %i.sx, i64 noundef %i.ta) #35
  br label %_ZN9SoundSpecD2Ev.exit358

_ZN9SoundSpecD2Ev.exit358:                        ; preds = %bb.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i356
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366

bb.bz:                                            ; preds = %bb.bj, %_ZN9SoundSpecD2Ev.exit, %bb.bl, %bb.bk, %_ZNK10GenericCAO11getPositionEv.exit
  %i.tb = getelementptr inbounds nuw i8, ptr %0, i64 756 ; 3 uses
  %i.tc = load float, ptr %i.tb, align 4, !tbaa !851
  %i.td = fadd nsz float %1, %i.tc                ; 3 uses
  store float %i.td, ptr %i.tb, align 4, !tbaa !851
  %i.te = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.tf = load float, ptr %i.te, align 8, !tbaa !603 ; 2 uses
  %i.tg = fcmp nsz ult float %i.td, %i.tf
  br i1 %i.tg, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
end_hunk_2
begin_hunk_3_@_ZN10GenericCAO4stepEfP17ClientEnvironment:bb.a
  %.fca.1.extract = extractvalue { <2 x float>, float } %i.uw, 1
  store <2 x float> %.fca.0.extract, ptr %17, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 8
  store float %.fca.1.extract, ptr %.sroa.2.0..sroa_idx, align 8
  %i.ux = getelementptr inbounds nuw i8, ptr %17, i64 4
  %i.uy = extractelement <2 x float> %.fca.0.extract, i64 1
  %i.uz = load float, ptr %i.up, align 4, !tbaa !852
  %i.va = fmul nsz float %1, f0xC2652EE0
  %i.vb = call nsz float @llvm.fmuladd.f32(float %i.va, float %i.uz, float %i.uy)
  %i.vc = frem nsz float %i.vb, 3.600000e+02
  store float %i.vc, ptr %i.ux, align 4, !tbaa !263
  %i.vd = load ptr, ptr %i.hx, align 8, !tbaa !55
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 208
  %i.vf = load ptr, ptr %i.ve, align 8
  call void %i.vf(ptr noundef nonnull align 8 dereferenceable(218) %i.hx, ptr noundef nonnull align 4 dereferenceable(12) %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363
  %i.vg = load ptr, ptr %0, align 8, !tbaa !55
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 160
  %i.vi = load ptr, ptr %i.vh, align 8
  %i.vj = call noundef ptr %i.vi(ptr noundef nonnull align 8 dereferenceable(1076) %0)
  %.not223 = icmp eq ptr %i.vj, null
  br i1 %.not223, label %bb.cl, label %bb.cr

bb.cl:                                            ; preds = %bb.ck
  %i.vk = getelementptr inbounds nuw i8, ptr %0, i64 415
  %i.vl = load i8, ptr %i.vk, align 1, !tbaa !853, !range !46, !noundef !47
  %i.vm = trunc nuw i8 %i.vl to i1
  br i1 %i.vm, label %bb.cm, label %bb.cr

bb.cm:                                            ; preds = %bb.cl
  %i.vn = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.vo = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.vp = load float, ptr %i.vo, align 8, !tbaa !854 ; 2 uses
  %i.vq = call nsz float @llvm.fabs.f32(float %i.vp)
  %i.vr = fcmp nsz ogt float %i.vq, 1.000000e-03
  %.pre455 = load float, ptr %i.vn, align 8, !tbaa !855 ; 2 uses
  %i.vs = call nsz float @llvm.fabs.f32(float %.pre455)
  %i.vt = fcmp nsz ogt float %i.vs, 1.000000e-03
  %or.cond523 = select i1 %i.vr, i1 true, i1 %i.vt
  br i1 %or.cond523, label %bb.cn, label %bb.cr

bb.cn:                                            ; preds = %bb.cm
  %i.vu = fpext nsz float %i.vp to double
  %i.vv = fpext nsz float %.pre455 to double
  %i.vw = call nsz double @llvm.atan2.f64(double %i.vu, double %i.vv)
  %i.vx = fmul nsz double %i.vw, 1.800000e+02
  %i.vy = fdiv nsz double %i.vx, f0x400921FB54442D18
  %i.vz = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.wa = load float, ptr %i.vz, align 8, !tbaa !856
  %i.wb = fpext nsz float %i.wa to double
  %i.wc = fadd nsz double %i.vy, %i.wb
  %i.wd = fptrunc nsz double %i.wc to float       ; 3 uses
  %i.we = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.wf = load float, ptr %i.we, align 4, !tbaa !857 ; 2 uses
  %i.wg = fcmp nsz ogt float %i.wf, 0.000000e+00
  %i.wh = getelementptr inbounds nuw i8, ptr %0, i64 604 ; 3 uses
  br i1 %i.wg, label %bb.co, label %_Z23wrappedApproachShortestIfEvRT_S0_S0_S0_.exit.sink.split

bb.co:                                            ; preds = %bb.cn
  %i.wi = fmul nsz float %1, %i.wf                ; 4 uses
  %i.wj = load float, ptr %i.wh, align 4, !tbaa !48 ; 2 uses
  %i.wk = fsub nsz float %i.wd, %i.wj             ; 3 uses
  %i.wl = fcmp nsz olt float %i.wk, 0.000000e+00
  %i.wm = fadd nsz float %i.wk, 3.600000e+02
  %.0.i367 = select nsz i1 %i.wl, float %i.wm, float %i.wk ; 3 uses
  %i.wn = fcmp nsz ogt float %.0.i367, %i.wi
  %i.wo = fsub nsz float 3.600000e+02, %.0.i367
  %i.wp = fcmp nsz ogt float %i.wo, %i.wi
  %or.cond.i368 = and i1 %i.wn, %i.wp
  br i1 %or.cond.i368, label %bb.cp, label %_Z23wrappedApproachShortestIfEvRT_S0_S0_S0_.exit.sink.split

bb.cp:                                            ; preds = %bb.co
  %i.wq = fcmp nsz olt float %.0.i367, 1.800000e+02
  %i.wr = fneg nsz float %i.wi
  %i.ws = select nsz i1 %i.wq, float %i.wi, float %i.wr
  %i.wt = fadd nsz float %i.wj, %i.ws             ; 3 uses
  store float %i.wt, ptr %i.wh, align 4, !tbaa !48
  %i.wu = fcmp nsz ult float %i.wt, 3.600000e+02
  br i1 %i.wu, label %_Z23wrappedApproachShortestIfEvRT_S0_S0_S0_.exit, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.wv = fadd nsz float %i.wt, -3.600000e+02
  br label %_Z23wrappedApproachShortestIfEvRT_S0_S0_S0_.exit.sink.split

_Z23wrappedApproachShortestIfEvRT_S0_S0_S0_.exit.sink.split: ; preds = %bb.cn, %bb.co, %bb.cq
  %.sink.i369.sink = phi float [ %i.wd, %bb.co ], [ %i.wv, %bb.cq ], [ %i.wd, %bb.cn ]
  store float %.sink.i369.sink, ptr %i.wh, align 4, !tbaa !48
  br label %_Z23wrappedApproachShortestIfEvRT_S0_S0_S0_.exit

_Z23wrappedApproachShortestIfEvRT_S0_S0_S0_.exit: ; preds = %_Z23wrappedApproachShortestIfEvRT_S0_S0_S0_.exit.sink.split, %bb.cp
  %i.ww = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.wx = getelementptr inbounds nuw i8, ptr %0, i64 676
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.wx, ptr noundef nonnull align 8 dereferenceable(12) %i.ww, i64 12, i1 false), !tbaa.struct !457
  call void @_ZN10GenericCAO13updateNodePosEv(ptr noundef nonnull align 8 dereferenceable(1076) %0)
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cm, %_Z23wrappedApproachShortestIfEvRT_S0_S0_S0_.exit, %bb.cl, %bb.ck
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366: ; preds = %bb.ch, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i364, %_ZN9SoundSpecD2Ev.exit358, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit267
  %.pn220.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit267 ], [ %i.uk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i364 ], [ %.pn216, %_ZN9SoundSpecD2Ev.exit358 ], [ %i.uk, %bb.ch ]
  resume { ptr, i32 } %.pn220.pn
}

declare noundef zeroext i1 @_ZNK8Settings7getBoolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

declare void @_Z19collisionMoveSimpleP11EnvironmentP8IGameDefRKN4core8aabbox3dIfEEffPNS3_8vector3dIfEESA_S9_P12ActiveObjectb10StepUpMode(ptr dead_on_unwind writable sret(%struct.collisionMoveResult) align 8, ptr noundef, ptr noundef, ptr noundef nonnull align 4 dereferenceable(24), float noundef, float noundef, ptr noundef, ptr noundef, <2 x float>, float, ptr noundef, i1 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN16SmoothTranslatorIN4core8vector3dIfEEE6updateES2_bf(ptr noundef nonnull align 4 dereferenceable(45) %0, <2 x float> %1, float %2, i1 noundef zeroext %3, float noundef %4) local_unnamed_addr #18 comdat align 2 {
bb.a:
  %i.a = zext i1 %3 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 %i.a, ptr %i.b, align 4, !tbaa !53
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %i.c, i64 12, i1 false), !tbaa.struct !457
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x float> %1, ptr %i.d, align 4, !tbaa !48
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %2, ptr %.sroa.24.0..sroa_idx, align 4, !tbaa !48
  %i.e = fcmp nsz ogt float %4, 0.000000e+00
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load float, ptr %i.f, align 4, !tbaa !52 ; 2 uses
  %i.h = fpext nsz float %i.g to double           ; 2 uses
  %i.i = fcmp nsz olt double %i.h, 1.000000e-03
  %i.j = fcmp nsz ogt float %i.g, 1.000000e+00
  %or.cond = or i1 %i.j, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load float, ptr %i.k, align 4, !tbaa !51 ; 2 uses
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = fpext nsz float %i.l to double
  %i.n = fmul nsz double %i.m, 1.000000e-01
  %i.o = tail call nsz double @llvm.fmuladd.f64(double %i.h, double 9.000000e-01, double %i.n)
  %i.p = fptrunc nsz double %i.o to float
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.sink = phi float [ %4, %bb.a ], [ %i.p, %bb.c ], [ %i.l, %bb.b ]
  store float %.sink, ptr %i.f, align 4, !tbaa !52
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float 0.000000e+00, ptr %i.q, align 4, !tbaa !51
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10GenericCAO17updateTextureAnimEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1076) %0) local_unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !261  ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 280
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(218) %i.b) ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !55
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef ptr %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f) ; 3 uses
  %.not66 = icmp eq ptr %i.j, null
  br i1 %.not66, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !261  ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !55
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 232
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call { <2 x float>, float } %i.n(ptr noundef nonnull align 8 dereferenceable(218) %i.k) ; 2 uses
  %.fca.0.extract51 = extractvalue { <2 x float>, float } %i.o, 0
  %.fca.1.extract52 = extractvalue { <2 x float>, float } %i.o, 1
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !55
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 232
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call { <2 x float>, float } %i.r(ptr noundef nonnull align 8 dereferenceable(218) %i.j) ; 2 uses
  %.fca.0.extract47 = extractvalue { <2 x float>, float } %i.s, 0
  %.fca.1.extract48 = extractvalue { <2 x float>, float } %i.s, 1
  %i.t = fsub nsz <2 x float> %.fca.0.extract51, %.fca.0.extract47 ; 5 uses
  %i.u = fsub nsz float %.fca.1.extract52, %.fca.1.extract48 ; 4 uses
  %foldExtExtBinop = fmul nsz <2 x float> %i.t, %i.t
  %i.v = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.w = extractelement <2 x float> %i.t, i64 0   ; 2 uses
  %i.x = tail call nsz float @llvm.fmuladd.f32(float %i.w, float %i.w, float %i.v)
  %i.y = tail call nsz float @llvm.fmuladd.f32(float %i.u, float %i.u, float %i.x) ; 2 uses
  %i.z = fcmp nsz oeq float %i.y, 0.000000e+00
  br i1 %i.z, label %_ZN4core8vector3dIfE9normalizeEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = fpext nsz float %i.y to double
  %i.ab = tail call nsz double @llvm.sqrt.f64(double %i.aa)
  %i.ac = fdiv nsz double 1.000000e+00, %i.ab     ; 2 uses
  %i.ad = fpext nsz <2 x float> %i.t to <2 x double>
  %i.ae = insertelement <2 x double> poison, double %i.ac, i64 0
  %i.af = shufflevector <2 x double> %i.ae, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ag = fmul nsz <2 x double> %i.af, %i.ad
  %i.ah = fptrunc nsz <2 x double> %i.ag to <2 x float>
  %i.ai = fpext nsz float %i.u to double
  %i.aj = fmul nsz double %i.ac, %i.ai
  %i.ak = fptrunc nsz double %i.aj to float
  br label %_ZN4core8vector3dIfE9normalizeEv.exit

_ZN4core8vector3dIfE9normalizeEv.exit:            ; preds = %bb.c, %bb.d
  %.sroa.098.0 = phi nsz <2 x float> [ %i.t, %bb.c ], [ %i.ah, %bb.d ] ; 2 uses
  %.sroa.9.0 = phi nsz float [ %i.u, %bb.c ], [ %i.ak, %bb.d ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 722
  %i.an = load i16, ptr %i.am, align 2, !tbaa !860
  %i.ao = sext i16 %i.an to i32
  %i.ap = load i16, ptr %i.al, align 8, !tbaa !861
  %i.aq = sext i16 %i.ap to i32                   ; 8 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 725
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !604, !range !46, !noundef !47
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.e, label %bb.q

bb.e:                                             ; preds = %_ZN4core8vector3dIfE9normalizeEv.exit
  %.sroa.098.4.vec.extract = extractelement <2 x float> %.sroa.098.0, i64 1 ; 2 uses
  %i.au = fcmp nsz ogt float %.sroa.098.4.vec.extract, 7.500000e-01
  br i1 %i.au, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.av = add nsw i32 %i.aq, 5
  br label %bb.q

bb.g:                                             ; preds = %bb.e
  %i.aw = fcmp nsz olt float %.sroa.098.4.vec.extract, -7.500000e-01
  br i1 %i.aw, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ax = add nsw i32 %i.aq, 4
  br label %bb.q

bb.i:                                             ; preds = %bb.g
  %i.ay = fpext nsz float %.sroa.9.0 to double
  %.sroa.098.0.vec.extract = extractelement <2 x float> %.sroa.098.0, i64 0
  %i.az = fpext nsz float %.sroa.098.0.vec.extract to double
  %i.ba = tail call nsz double @llvm.atan2.f64(double %i.ay, double %i.az)
  %i.bb = fdiv nsz double %i.ba, f0x400921FB54442D18
  %i.bc = fmul nsz double %i.bb, 1.800000e+02
  %i.bd = fptrunc nsz double %i.bc to float
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 604
  %i.bf = load float, ptr %i.be, align 4, !tbaa !597
  %i.bg = fsub nsz float %i.bd, %i.bf
  %i.bh = fadd nsz float %i.bg, 1.800000e+02
  %i.bi = frem nsz float %i.bh, 3.600000e+02      ; 3 uses
  %i.bj = fcmp nsz olt float %i.bi, 0.000000e+00
  %i.bk = fadd nsz float %i.bi, 3.600000e+02
  %.0.i = select nsz i1 %i.bj, float %i.bk, float %i.bi
  %i.bl = fadd nsz float %.0.i, -1.800000e+02     ; 4 uses
  %i.bm = fadd nsz float %i.bl, 1.800000e+02
  %i.bn = frem nsz float %i.bm, 3.600000e+02      ; 3 uses
  %i.bo = fcmp nsz olt float %i.bn, 0.000000e+00
  %i.bp = fadd nsz float %i.bn, 3.600000e+02
  %.0.i67 = select nsz i1 %i.bo, float %i.bp, float %i.bn
  %i.bq = fadd nsz float %.0.i67, -1.800000e+02
  %i.br = tail call nsz noundef float @llvm.fabs.f32(float %i.bq)
  %i.bs = fcmp nsz ugt float %i.br, 4.510000e+01
  br i1 %i.bs, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bt = add nsw i32 %i.aq, 2
  br label %bb.q

bb.k:                                             ; preds = %bb.i
  %i.bu = fadd nsz float %i.bl, -9.000000e+01
  %i.bv = fadd nsz float %i.bu, 1.800000e+02
  %i.bw = frem nsz float %i.bv, 3.600000e+02      ; 3 uses
  %i.bx = fcmp nsz olt float %i.bw, 0.000000e+00
  %i.by = fadd nsz float %i.bw, 3.600000e+02
  %.0.i68 = select nsz i1 %i.bx, float %i.by, float %i.bw
  %i.bz = fadd nsz float %.0.i68, -1.800000e+02
  %i.ca = tail call nsz noundef float @llvm.fabs.f32(float %i.bz)
  %i.cb = fcmp nsz ugt float %i.ca, 4.510000e+01
  br i1 %i.cb, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cc = add nsw i32 %i.aq, 3
  br label %bb.q

bb.m:                                             ; preds = %bb.k
  %i.cd = fadd nsz float %i.bl, -1.800000e+02
  %i.ce = fadd nsz float %i.cd, 1.800000e+02
  %i.cf = frem nsz float %i.ce, 3.600000e+02      ; 3 uses
  %i.cg = fcmp nsz olt float %i.cf, 0.000000e+00
  %i.ch = fadd nsz float %i.cf, 3.600000e+02
  %.0.i69 = select nsz i1 %i.cg, float %i.ch, float %i.cf
  %i.ci = fadd nsz float %.0.i69, -1.800000e+02
  %i.cj = tail call nsz noundef float @llvm.fabs.f32(float %i.ci)
  %i.ck = fcmp nsz ugt float %i.cj, 4.510000e+01
  br i1 %i.ck, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.cl = fadd nsz float %i.bl, 9.000000e+01
  %i.cm = fadd nsz float %i.cl, 1.800000e+02
  %i.cn = frem nsz float %i.cm, 3.600000e+02      ; 3 uses
  %i.co = fcmp nsz olt float %i.cn, 0.000000e+00
  %i.cp = fadd nsz float %i.cn, 3.600000e+02
  %.0.i70 = select nsz i1 %i.co, float %i.cp, float %i.cn
  %i.cq = fadd nsz float %.0.i70, -1.800000e+02
  %i.cr = tail call nsz noundef float @llvm.fabs.f32(float %i.cq)
  %i.cs = fcmp nsz ugt float %i.cr, 4.510000e+01
  br i1 %i.cs, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ct = add nsw i32 %i.aq, 1
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.cu = add nsw i32 %i.aq, 4
  br label %bb.q

bb.q:                                             ; preds = %bb.j, %bb.p, %bb.o, %bb.l, %bb.m, %bb.f, %bb.h, %_ZN4core8vector3dIfE9normalizeEv.exit
  %.1 = phi i32 [ %i.av, %bb.f ], [ %i.ax, %bb.h ], [ %i.aq, %_ZN4core8vector3dIfE9normalizeEv.exit ], [ %i.bt, %bb.j ], [ %i.cc, %bb.l ], [ %i.cu, %bb.p ], [ %i.ct, %bb.o ], [ %i.aq, %bb.m ]
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !123
  %i.cx = add nsw i32 %i.cw, %i.ao
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.cz = load <2 x float>, ptr %i.cy, align 8, !tbaa !48 ; 3 uses
  %i.da = load ptr, ptr %i.a, align 8, !tbaa !261 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !55
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 168
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = tail call noundef nonnull align 8 dereferenceable(127) ptr %i.dd(ptr noundef nonnull align 8 dereferenceable(218) %i.da, i32 noundef 0), !inline_history !11
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !567 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.dg, null
  br i1 %.not.i.i.i, label %bb.r, label %_ZL25setBillboardTextureMatrixPN5scene19IBillboardSceneNodeEffii.exit

bb.r:                                             ; preds = %bb.q
  %i.dh = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #37 ; 7 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.di, i8 0, i64 56, i1 false)
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 60
  store float 1.000000e+00, ptr %i.dj, align 4, !tbaa !48
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 40
  store float 1.000000e+00, ptr %i.dk, align 4, !tbaa !48
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 20
  store float 1.000000e+00, ptr %i.dl, align 4, !tbaa !48
  store float 1.000000e+00, ptr %i.dh, align 4, !tbaa !48
  store ptr %i.dh, ptr %i.df, align 8, !tbaa !567
  br label %_ZL25setBillboardTextureMatrixPN5scene19IBillboardSceneNodeEffii.exit

_ZL25setBillboardTextureMatrixPN5scene19IBillboardSceneNodeEffii.exit: ; preds = %bb.q, %bb.r
  %i.dm = phi ptr [ %i.dh, %bb.r ], [ %i.dg, %bb.q ] ; 3 uses
  %i.dn = insertelement <2 x i32> poison, i32 %.1, i64 0
  %i.do = insertelement <2 x i32> %i.dn, i32 %i.cx, i64 1
  %i.dp = sitofp nsz <2 x i32> %i.do to <2 x float>
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  %i.dr = fmul nsz <2 x float> %i.cz, %i.dp
  store <2 x float> %i.dr, ptr %i.dq, align 4, !tbaa !48
  %i.ds = extractelement <2 x float> %i.cz, i64 0
  store float %i.ds, ptr %i.dm, align 4, !tbaa !48
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dm, i64 20
  %i.du = extractelement <2 x float> %i.cz, i64 1
  store float %i.du, ptr %i.dt, align 4, !tbaa !48
  br label %.loopexit

bb.s:                                             ; preds = %bb.a
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !287 ; 3 uses
  %.not65 = icmp eq ptr %i.dw, null
  br i1 %.not65, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.dy = load i8, ptr %i.dx, align 8, !tbaa !473
  switch i8 %i.dy, label %.loopexit [
    i8 2, label %bb.u
    i8 7, label %bb.v
  ]

bb.u:                                             ; preds = %bb.t
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 722
  %i.eb = load i16, ptr %i.ea, align 2, !tbaa !860
  %i.ec = sext i16 %i.eb to i32
  %i.ed = load i16, ptr %i.dz, align 8, !tbaa !861 ; 2 uses
  %i.ee = sext i16 %i.ed to i32
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !123
  %i.eh = add nsw i32 %i.eg, %i.ec                ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.ej = add nsw i32 %i.ee, 1
  %i.ek = sitofp nsz i32 %i.ej to float
  %i.el = add nsw i32 %i.eh, 1
  %i.em = sitofp nsz i32 %i.el to float
  %i.en = load float, ptr %i.ei, align 8, !tbaa !862 ; 2 uses
  %i.eo = fmul nsz float %i.en, %i.ek
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 716
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !605 ; 2 uses
  %i.er = fmul nsz float %i.eq, %i.em             ; 2 uses
  %.sroa.0.0.vec.insert.i71 = insertelement <2 x float> poison, float %i.eo, i64 0 ; 2 uses
  %.sroa.0.4.vec.insert.i72 = insertelement <2 x float> %.sroa.0.0.vec.insert.i71, float %i.er, i64 1 ; 2 uses
  %i.es = sitofp i16 %i.ed to float
  %i.et = fmul nsz float %i.en, %i.es
  %.sroa.0.0.vec.insert.i73 = insertelement <2 x float> poison, float %i.et, i64 0 ; 2 uses
  %.sroa.0.4.vec.insert.i74 = insertelement <2 x float> %.sroa.0.0.vec.insert.i73, float %i.er, i64 1 ; 2 uses
  %i.eu = sitofp nsz i32 %i.eh to float
  %i.ev = fmul nsz float %i.eq, %i.eu             ; 2 uses
  %.sroa.0.4.vec.insert.i76 = insertelement <2 x float> %.sroa.0.0.vec.insert.i73, float %i.ev, i64 1 ; 2 uses
  %.sroa.0.4.vec.insert.i78 = insertelement <2 x float> %.sroa.0.0.vec.insert.i71, float %i.ev, i64 1 ; 2 uses
  %i.ew = load ptr, ptr %i.dw, align 8, !tbaa !55
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 296
  %i.ey = load ptr, ptr %i.ex, align 8
  %i.ez = tail call noundef ptr %i.ey(ptr noundef nonnull align 8 dereferenceable(218) %i.dw) ; 4 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !55
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8
  %i.fd = tail call noundef ptr %i.fc(ptr noundef nonnull align 8 dereferenceable(8) %i.ez, i32 noundef 0) ; 4 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !55
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 24
  %i.fg = load ptr, ptr %i.ff, align 8
  %i.fh = tail call noundef ptr %i.fg(ptr noundef nonnull align 8 dereferenceable(8) %i.fd), !inline_history !858 ; 2 uses
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !55
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 56
  %i.fk = load ptr, ptr %i.fj, align 8
  %i.fl = tail call noundef ptr %i.fk(ptr noundef nonnull align 8 dereferenceable(28) %i.fh), !inline_history !858 ; 4 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 28
  store <2 x float> %.sroa.0.4.vec.insert.i72, ptr %i.fm, align 4, !tbaa !48
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 68
  store <2 x float> %.sroa.0.4.vec.insert.i74, ptr %i.fn, align 4, !tbaa !48
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 108
  store <2 x float> %.sroa.0.4.vec.insert.i76, ptr %i.fo, align 4, !tbaa !48
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fl, i64 148
  store <2 x float> %.sroa.0.4.vec.insert.i78, ptr %i.fp, align 4, !tbaa !48
  %i.fq = load ptr, ptr %i.fd, align 8, !tbaa !55
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 24
  %i.fs = load ptr, ptr %i.fr, align 8
  %i.ft = tail call noundef ptr %i.fs(ptr noundef nonnull align 8 dereferenceable(8) %i.fd), !inline_history !859
  tail call void @_ZN5scene8HWBuffer8setDirtyEv(ptr noundef nonnull align 8 dereferenceable(28) %i.ft)
  %i.fu = load ptr, ptr %i.ez, align 8, !tbaa !55
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8
  %i.fx = tail call noundef ptr %i.fw(ptr noundef nonnull align 8 dereferenceable(8) %i.ez, i32 noundef 1) ; 4 uses
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !55
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 24
  %i.ga = load ptr, ptr %i.fz, align 8
  %i.gb = tail call noundef ptr %i.ga(ptr noundef nonnull align 8 dereferenceable(8) %i.fx), !inline_history !858 ; 2 uses
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !55
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 56
  %i.ge = load ptr, ptr %i.gd, align 8
  %i.gf = tail call noundef ptr %i.ge(ptr noundef nonnull align 8 dereferenceable(28) %i.gb), !inline_history !858 ; 4 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 28
  store <2 x float> %.sroa.0.4.vec.insert.i72, ptr %i.gg, align 4, !tbaa !48
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 68
  store <2 x float> %.sroa.0.4.vec.insert.i74, ptr %i.gh, align 4, !tbaa !48
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gf, i64 108
  store <2 x float> %.sroa.0.4.vec.insert.i76, ptr %i.gi, align 4, !tbaa !48
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gf, i64 148
  store <2 x float> %.sroa.0.4.vec.insert.i78, ptr %i.gj, align 4, !tbaa !48
  %i.gk = load ptr, ptr %i.fx, align 8, !tbaa !55
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 24
  %i.gm = load ptr, ptr %i.gl, align 8
  %i.gn = tail call noundef ptr %i.gm(ptr noundef nonnull align 8 dereferenceable(8) %i.fx), !inline_history !859
  tail call void @_ZN5scene8HWBuffer8setDirtyEv(ptr noundef nonnull align 8 dereferenceable(28) %i.gn)
  br label %.loopexit

bb.v:                                             ; preds = %bb.t
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !863 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !863 ; 2 uses
  %.not106107 = icmp eq ptr %i.gp, %i.gr
  br i1 %.not106107, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.v
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !135
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 712
  %i.gv = load float, ptr %i.gu, align 8, !tbaa !571
  %i.gw = fmul nsz float %i.gv, 1.000000e+03
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph, %bb.y
  %.sroa.079.0108 = phi ptr [ %i.gp, %.lr.ph ], [ %i.id, %bb.y ] ; 6 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.079.0108, i64 24
  %i.gy = load i16, ptr %i.gx, align 8, !tbaa !864
  %i.gz = uitofp i16 %i.gy to float
  %i.ha = fdiv nsz float %i.gw, %i.gz
  %i.hb = fptosi float %i.ha to i32
  %i.hc = getelementptr inbounds nuw i8, ptr %.sroa.079.0108, i64 26
  %i.hd = load i16, ptr %i.hc, align 2, !tbaa !865
  %i.he = zext i16 %i.hd to i32
  %i.hf = srem i32 %i.hb, %i.he                   ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.079.0108, i64 4 ; 2 uses
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !867
  %i.hi = icmp eq i32 %i.hf, %i.hh
  br i1 %i.hi, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i32 %i.hf, ptr %i.hg, align 4, !tbaa !867
  %i.hj = load ptr, ptr %i.dv, align 8, !tbaa !287 ; 2 uses
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !55
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 296
  %i.hm = load ptr, ptr %i.hl, align 8
  %i.hn = tail call noundef ptr %i.hm(ptr noundef nonnull align 8 dereferenceable(218) %i.hj) ; 2 uses
  %i.ho = load i32, ptr %.sroa.079.0108, align 8, !tbaa !868
  %i.hp = load ptr, ptr %i.hn, align 8, !tbaa !55
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  %i.hr = load ptr, ptr %i.hq, align 8
  %i.hs = tail call noundef ptr %i.hr(ptr noundef nonnull align 8 dereferenceable(8) %i.hn, i32 noundef %i.ho) ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.sroa.079.0108, i64 40
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !869
  %i.hv = sext i32 %i.hf to i64
  %i.hw = load ptr, ptr %i.hu, align 8, !tbaa !872
  %i.hx = getelementptr inbounds nuw [16 x i8], ptr %i.hw, i64 %i.hv
  %i.hy = load ptr, ptr %i.hs, align 8, !tbaa !55
  %i.hz = load ptr, ptr %i.hy, align 8
  %i.ia = tail call noundef nonnull align 8 dereferenceable(127) ptr %i.hz(ptr noundef nonnull align 8 dereferenceable(8) %i.hs)
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !874
  store ptr %i.ic, ptr %i.ia, align 8, !tbaa !568
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %i.id = getelementptr inbounds nuw i8, ptr %.sroa.079.0108, i64 56 ; 2 uses
  %.not106 = icmp eq ptr %i.id, %i.gr
  br i1 %.not106, label %.loopexit, label %bb.w

.loopexit:                                        ; preds = %bb.y, %bb.v, %bb.t, %_ZL25setBillboardTextureMatrixPN5scene19IBillboardSceneNodeEffii.exit, %bb.b, %bb.s, %bb.u
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.atan2.f64(double, double) #20

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL28setMaterialTextureAndFiltersRN5video9SMaterialERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP14ITextureSource(ptr noundef nonnull align 8 dereferenceable(127) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.c = load ptr, ptr @g_settings, align 8, !tbaa !600
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.d, ptr %3, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i64 16, ptr %i.b, align 8, !tbaa !138
  %i.e = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
end_hunk_3
begin_hunk_4_@_ZL28setMaterialTextureAndFiltersRN5video9SMaterialERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP14ITextureSource:.noexc.i
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

bb.e:                                             ; preds = %.noexc
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.am = load ptr, ptr %3, align 8, !tbaa !134   ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.d
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %bb.e
  %i.ao = load i64, ptr %i.d, align 8, !tbaa !61
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45, %bb.d
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.d ], [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45 ], [ %i.al, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.k

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aq = landingpad { ptr, i32 }
          cleanup
  %i.ar = load ptr, ptr %4, align 8, !tbaa !134   ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.p
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %bb.f
  %i.at = load i64, ptr %i.p, align 8, !tbaa !61
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.k

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

bb.h:                                             ; preds = %.noexc40
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ax = load ptr, ptr %5, align 8, !tbaa !134   ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.y
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %bb.h
  %i.az = load i64, ptr %i.y, align 8, !tbaa !61
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51, %bb.g
  %.pn26 = phi { ptr, i32 } [ %i.av, %bb.g ], [ %i.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51 ], [ %i.aw, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.k

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44
  store ptr %i.aj, ptr %0, align 8, !tbaa !568
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aj, i64 72
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aj, i64 76
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !486
  %i.be = load i32, ptr %i.bb, align 4, !tbaa !486
  %i.bf = call i32 @llvm.umin.i32(i32 %i.bd, i32 %i.be)
  %i.bg = icmp ugt i32 %i.bf, 191                 ; 2 uses
  %spec.select = and i1 %i.j, %i.bg               ; 4 uses
  %spec.select30 = and i1 %i.s, %i.bg             ; 4 uses
  call void @_Z18setMaterialFiltersRN5video14SMaterialLayerEbbb(ptr noundef nonnull align 8 dereferenceable(127) %0, i1 noundef zeroext %spec.select30, i1 noundef zeroext %spec.select, i1 noundef zeroext %i.ae)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @_Z18setMaterialFiltersRN5video14SMaterialLayerEbbb(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i1 noundef zeroext %spec.select30, i1 noundef zeroext %spec.select, i1 noundef zeroext %i.ae)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @_Z18setMaterialFiltersRN5video14SMaterialLayerEbbb(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, i1 noundef zeroext %spec.select30, i1 noundef zeroext %spec.select, i1 noundef zeroext %i.ae)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @_Z18setMaterialFiltersRN5video14SMaterialLayerEbbb(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, i1 noundef zeroext %spec.select30, i1 noundef zeroext %spec.select, i1 noundef zeroext %i.ae)
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, %bb.i
  ret void

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47
  %.pn26.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47 ], [ %.pn26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53 ], [ %i.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50 ]
  resume { ptr, i32 } %.pn26.pn.pn
}

declare noundef zeroext i1 @_ZN5scene21AnimatedMeshSceneNode12setFrameLoopEff(ptr noundef nonnull align 8 dereferenceable(432), float noundef, float noundef) local_unnamed_addr #5

declare noundef float @_ZNK5scene21AnimatedMeshSceneNode17getAnimationSpeedEv(ptr noundef nonnull align 8 dereferenceable(432)) local_unnamed_addr #5

declare void @_ZN5scene21AnimatedMeshSceneNode17setAnimationSpeedEf(ptr noundef nonnull align 8 dereferenceable(432), float noundef) local_unnamed_addr #5

declare void @_ZN5scene21AnimatedMeshSceneNode17setTransitionTimeEf(ptr noundef nonnull align 8 dereferenceable(432), float noundef) local_unnamed_addr #5

declare noundef zeroext i1 @_ZNK5scene21AnimatedMeshSceneNode11getLoopModeEv(ptr noundef nonnull align 8 dereferenceable(432)) local_unnamed_addr #5

declare void @_ZN5scene21AnimatedMeshSceneNode11setLoopModeEb(ptr noundef nonnull align 8 dereferenceable(432), i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10GenericCAO20updateAnimationSpeedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1076) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !288  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.d = load float, ptr %i.c, align 8, !tbaa !589
  tail call void @_ZN5scene21AnimatedMeshSceneNode17setAnimationSpeedEf(ptr noundef nonnull align 8 dereferenceable(432) %i.b, float noundef %i.d)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10GenericCAO17updateAttachmentsEv(ptr noundef nonnull align 8 dereferenceable(1076) %0) unnamed_addr #11 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !55
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(1076) %0) ; 9 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !55
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(32) %i.d)
  %i.i = zext i1 %i.h to i8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 936
  store i8 %i.i, ptr %i.j, align 8, !tbaa !296
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !55
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 176
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(32) %i.d)
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !55
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 136
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef ptr %i.p(ptr noundef nonnull align 8 dereferenceable(32) %i.d) ; 2 uses
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !55
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 144
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef ptr %i.t(ptr noundef nonnull align 8 dereferenceable(32) %i.d) ; 2 uses
  %.not27 = icmp eq ptr %i.u, null
  br i1 %.not27, label %bb.j, label %bb.h

.critedge:                                        ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 936
  store i8 0, ptr %i.v, align 8, !tbaa !296
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 6 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !260
  %.not26 = icmp eq ptr %i.x, null
  br i1 %.not26, label %bb.l, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !187
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 408
  %.sroa.0.0.copyload.i = load i48, ptr %i.aa, align 8, !tbaa !259 ; 2 uses
  %i.ab = load ptr, ptr %0, align 8, !tbaa !55
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 160
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = tail call noundef ptr %i.ad(ptr noundef nonnull align 8 dereferenceable(1076) %0), !inline_history !601
  %.not.i = icmp eq ptr %i.ae, null
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 628
  %.sroa.013.0.copyload.i = load <2 x float>, ptr %i.af, align 4, !tbaa !48
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 636
  %.sroa.4.0.copyload.i = load float, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !48
  br label %_ZNK10GenericCAO11getPositionEv.exit

bb.e:                                             ; preds = %bb.c
  %i.ag = load ptr, ptr %i.w, align 8, !tbaa !260
  %.not17.i = icmp eq ptr %i.ag, null
  br i1 %.not17.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZNK10GenericCAO17updateParentChainEv(ptr noundef nonnull align 8 dereferenceable(1076) %0)
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !187
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 408
  %.sroa.0.0.copyload.i.i = load i48, ptr %i.ai, align 8, !tbaa !259 ; 2 uses
  %i.aj = load ptr, ptr %i.w, align 8, !tbaa !260 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !55
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 232
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = tail call { <2 x float>, float } %i.am(ptr noundef nonnull align 8 dereferenceable(218) %i.aj), !inline_history !601 ; 2 uses
  %.fca.0.extract8.i = extractvalue { <2 x float>, float } %i.an, 0
  %.fca.1.extract9.i = extractvalue { <2 x float>, float } %i.an, 1
  %.sroa.3.0.extract.shift.i.i = lshr i48 %.sroa.0.0.copyload.i.i, 32
  %.sroa.3.0.extract.trunc.i.i = trunc nuw i48 %.sroa.3.0.extract.shift.i.i to i16
  %i.ao = sitofp nsz i16 %.sroa.3.0.extract.trunc.i.i to float
  %i.ap = fmul nnan nsz float %i.ao, 1.000000e+01
  %i.aq = bitcast i48 %.sroa.0.0.copyload.i.i to <3 x i16>
  %i.ar = shufflevector <3 x i16> %i.aq, <3 x i16> poison, <2 x i32> <i32 0, i32 1>
  %i.as = sitofp nsz <2 x i16> %i.ar to <2 x float>
  %i.at = fmul nnan nsz <2 x float> %i.as, splat (float 1.000000e+01)
  %i.au = fadd nsz <2 x float> %i.at, %.fca.0.extract8.i
  %i.av = fadd nsz float %i.ap, %.fca.1.extract9.i
  br label %_ZNK10GenericCAO11getPositionEv.exit

bb.g:                                             ; preds = %bb.e
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 564
  %.sroa.013.0.copyload14.i = load <2 x float>, ptr %i.aw, align 4, !tbaa !48
  %.sroa.4.0..sroa_idx15.i = getelementptr inbounds nuw i8, ptr %0, i64 572
  %.sroa.4.0.copyload16.i = load float, ptr %.sroa.4.0..sroa_idx15.i, align 4, !tbaa !48
  br label %_ZNK10GenericCAO11getPositionEv.exit

_ZNK10GenericCAO11getPositionEv.exit:             ; preds = %bb.d, %bb.f, %bb.g
  %.sroa.0.4.vec.insert.i.pn.i = phi <2 x float> [ %i.au, %bb.f ], [ %.sroa.013.0.copyload14.i, %bb.g ], [ %.sroa.013.0.copyload.i, %bb.d ]
  %.pn.i = phi float [ %i.av, %bb.f ], [ %.sroa.4.0.copyload16.i, %bb.g ], [ %.sroa.4.0.copyload.i, %bb.d ]
  %i.ax = load ptr, ptr %i.w, align 8, !tbaa !260 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !471 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !55
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 72
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = tail call noundef ptr %i.bc(ptr noundef nonnull align 8 dereferenceable(8) %i.az)
  %i.be = load ptr, ptr %i.ax, align 8, !tbaa !55
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 248
  %i.bg = load ptr, ptr %i.bf, align 8
  tail call void %i.bg(ptr noundef nonnull align 8 dereferenceable(218) %i.ax, ptr noundef %i.bd)
  %i.bh = load ptr, ptr %i.w, align 8, !tbaa !260 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !55
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 288
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = tail call noundef nonnull align 4 dereferenceable(64) ptr %i.bk(ptr noundef nonnull align 8 dereferenceable(218) %i.bh), !inline_history !5 ; 2 uses
  %.sroa.3.0.extract.shift.i = lshr i48 %.sroa.0.0.copyload.i, 32
  %.sroa.3.0.extract.trunc.i = trunc nuw i48 %.sroa.3.0.extract.shift.i to i16
  %i.bm = sitofp nsz i16 %.sroa.3.0.extract.trunc.i to float
  %i.bn = fmul nnan nsz float %i.bm, 1.000000e+01
  %i.bo = fsub nsz float %.pn.i, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  %i.bq = bitcast i48 %.sroa.0.0.copyload.i to <3 x i16>
  %i.br = shufflevector <3 x i16> %i.bq, <3 x i16> poison, <2 x i32> <i32 0, i32 1>
  %i.bs = sitofp nsz <2 x i16> %i.br to <2 x float>
  %i.bt = fmul nnan nsz <2 x float> %i.bs, splat (float 1.000000e+01)
  %i.bu = fsub nsz <2 x float> %.sroa.0.4.vec.insert.i.pn.i, %i.bt
  store <2 x float> %i.bu, ptr %i.bp, align 4, !tbaa !48
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bl, i64 56
  store float %i.bo, ptr %i.bv, align 4, !tbaa !48
  br label %.sink.split

bb.h:                                             ; preds = %bb.b
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 888
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !60
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !134
  %i.cb = tail call noundef ptr @_ZN5scene21AnimatedMeshSceneNode12getJointNodeEPKc(ptr noundef nonnull align 8 dereferenceable(432) %i.u, ptr noundef %i.ca)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.b
  %.0 = phi ptr [ %i.q, %bb.h ], [ %i.cb, %bb.i ], [ %i.q, %bb.b ] ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 4 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !260 ; 3 uses
  %i.ce = icmp ne ptr %i.cd, null
  %i.cf = icmp ne ptr %.0, null
  %or.cond = and i1 %i.cf, %i.ce
  br i1 %or.cond, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cg = load ptr, ptr %i.cd, align 8, !tbaa !55
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 248
  %i.ci = load ptr, ptr %i.ch, align 8
  tail call void %i.ci(ptr noundef nonnull align 8 dereferenceable(218) %i.cd, ptr noundef nonnull %.0)
  %i.cj = load ptr, ptr %.0, align 8, !tbaa !55
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 256
  %i.cl = load ptr, ptr %i.ck, align 8
  tail call void %i.cl(ptr noundef nonnull align 8 dereferenceable(218) %.0)
  %i.cm = load ptr, ptr %i.cc, align 8, !tbaa !260 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !55
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 288
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = tail call noundef nonnull align 4 dereferenceable(64) ptr %i.cp(ptr noundef nonnull align 8 dereferenceable(218) %i.cm), !inline_history !5 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.cs = load float, ptr %i.cr, align 8, !tbaa !262
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 48
  store float %i.cs, ptr %i.ct, align 4, !tbaa !48
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 916
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !263
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cq, i64 52
  store float %i.cv, ptr %i.cw, align 4, !tbaa !48
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.cy = load float, ptr %i.cx, align 8, !tbaa !149
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cq, i64 56
  store float %i.cy, ptr %i.cz, align 4, !tbaa !48
  %i.da = load ptr, ptr %i.cc, align 8, !tbaa !260 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !55
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 288
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = tail call noundef nonnull align 4 dereferenceable(64) ptr %i.dd(ptr noundef nonnull align 8 dereferenceable(218) %i.da), !inline_history !5 ; 7 uses
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 924
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 932
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !149
  %i.di = fmul nsz float %i.dh, f0x3C8EFA35
  %i.dj = fpext nsz float %i.di to double
  %sincos39.i.i = tail call nsz { double, double } @llvm.sincos.f64(double %i.dj) ; 2 uses
  %sin40.i.i = extractvalue { double, double } %sincos39.i.i, 0 ; 5 uses
  %cos41.i.i = extractvalue { double, double } %sincos39.i.i, 1 ; 5 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  %i.dl = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dm = load <2 x float>, ptr %i.df, align 4, !tbaa !48
  %i.dn = fmul nsz <2 x float> %i.dm, splat (float f0x3C8EFA35)
  %i.do = fpext nsz <2 x float> %i.dn to <2 x double>
  %i.dp = tail call nsz { <2 x double>, <2 x double> } @llvm.sincos.v2f64(<2 x double> %i.do) ; 2 uses
  %i.dq = extractvalue { <2 x double>, <2 x double> } %i.dp, 0 ; 5 uses
  %i.dr = extractvalue { <2 x double>, <2 x double> } %i.dp, 1 ; 5 uses
  %i.ds = extractelement <2 x double> %i.dr, i64 1 ; 2 uses
  %i.dt = fmul nsz double %i.ds, %cos41.i.i
  %i.du = fptrunc nsz double %i.dt to float
  store float %i.du, ptr %i.de, align 4, !tbaa !48
  %i.dv = fmul nsz double %i.ds, %sin40.i.i
  %i.dw = fptrunc nsz double %i.dv to float
  store float %i.dw, ptr %i.dk, align 4, !tbaa !48
  %i.dx = extractelement <2 x double> %i.dq, i64 1
  %i.dy = fptrunc nsz double %i.dx to float
  %i.dz = fneg nsz float %i.dy
  store float %i.dz, ptr %i.dl, align 4, !tbaa !48
  %i.ea = shufflevector <2 x double> %i.dq, <2 x double> %i.dr, <2 x i32> <i32 1, i32 2>
  %i.eb = fmul nsz <2 x double> %i.ea, %i.dq      ; 2 uses
  %i.ec = fneg nsz double %sin40.i.i
  %i.ed = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.ee = shufflevector <2 x double> %i.dr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ef = insertelement <2 x double> poison, double %i.ec, i64 0
  %i.eg = insertelement <2 x double> %i.ef, double %cos41.i.i, i64 1
  %i.eh = fmul nsz <2 x double> %i.ee, %i.eg
  %i.ei = shufflevector <2 x double> %i.eb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ej = insertelement <2 x double> poison, double %cos41.i.i, i64 0
  %i.ek = insertelement <2 x double> %i.ej, double %sin40.i.i, i64 1
  %i.el = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ei, <2 x double> %i.ek, <2 x double> %i.eh)
  %i.em = fptrunc nsz <2 x double> %i.el to <2 x float>
  store <2 x float> %i.em, ptr %i.ed, align 4, !tbaa !48
  %i.en = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.eo = getelementptr inbounds nuw i8, ptr %i.de, i64 32
  %i.ep = fneg nsz double %cos41.i.i
  %i.eq = shufflevector <2 x double> %i.dq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.er = insertelement <2 x double> poison, double %sin40.i.i, i64 0
  %i.es = insertelement <2 x double> %i.er, double %i.ep, i64 1
  %i.et = fmul nsz <2 x double> %i.eq, %i.es
  %i.eu = shufflevector <2 x double> %i.eb, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ev = insertelement <2 x double> poison, double %cos41.i.i, i64 0
  %i.ew = insertelement <2 x double> %i.ev, double %sin40.i.i, i64 1
  %i.ex = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eu, <2 x double> %i.ew, <2 x double> %i.et)
  %i.ey = fptrunc nsz <2 x double> %i.ex to <2 x float>
  store <2 x float> %i.ey, ptr %i.eo, align 4, !tbaa !48
  %i.ez = shufflevector <2 x double> %i.dr, <2 x double> %i.dq, <2 x i32> <i32 1, i32 2>
  %i.fa = fmul nsz <2 x double> %i.dr, %i.ez      ; 2 uses
  %i.fb = extractelement <2 x double> %i.fa, i64 1
  %i.fc = fptrunc nsz double %i.fb to float
  store float %i.fc, ptr %i.en, align 4, !tbaa !48
  %i.fd = extractelement <2 x double> %i.fa, i64 0
  %i.fe = fptrunc nsz double %i.fd to float
  %i.ff = getelementptr inbounds nuw i8, ptr %i.de, i64 40
  store float %i.fe, ptr %i.ff, align 4, !tbaa !48
  br label %.sink.split

.sink.split:                                      ; preds = %_ZNK10GenericCAO11getPositionEv.exit, %bb.k
  %.sink38.in = phi ptr [ %i.cc, %bb.k ], [ %i.w, %_ZNK10GenericCAO11getPositionEv.exit ]
  %.sink38 = load ptr, ptr %.sink38.in, align 8, !tbaa !260 ; 2 uses
  %i.fg = load ptr, ptr %.sink38, align 8, !tbaa !55
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 256
  %i.fi = load ptr, ptr %i.fh, align 8
  tail call void %i.fi(ptr noundef nonnull align 8 dereferenceable(218) %.sink38)
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.j, %.critedge
  ret void
}

declare noundef ptr @_ZN5scene21AnimatedMeshSceneNode12getJointNodeEPKc(ptr noundef nonnull align 8 dereferenceable(432), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK10GenericCAO20visualExpiryRequiredERK16ObjectProperties(ptr noundef nonnull align 8 dereferenceable(1076) %0, ptr noundef nonnull align 8 dereferenceable(351) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.d = load i64, ptr %i.c, align 8, !tbaa !60
  %i.e = icmp ne i64 %i.d, 0
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.g = load i8, ptr %i.f, align 8               ; 2 uses
  %i.h = add i8 %i.g, -7
  %spec.select = icmp ult i8 %i.h, -2
  %.not30 = select i1 %i.e, i1 true, i1 %spec.select
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.j = load i8, ptr %i.i, align 8, !tbaa !876, !range !46, !noundef !47
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.l = load i8, ptr %i.k, align 8, !tbaa !876, !range !46, !noundef !47
  %.not = icmp eq i8 %i.j, %i.l
  br i1 %.not, label %bb.b, label %_ZNK7MapNodeneERKS_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 413
  %i.n = load i8, ptr %i.m, align 1, !tbaa !877, !range !46, !noundef !47
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 341
  %i.p = load i8, ptr %i.o, align 1, !tbaa !877, !range !46, !noundef !47
  %.not26 = icmp eq i8 %i.n, %i.p
  br i1 %.not26, label %bb.c, label %_ZNK7MapNodeneERKS_.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 419
  %i.r = load i8, ptr %i.q, align 1, !tbaa !878, !range !46, !noundef !47
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 347
  %i.t = load i8, ptr %i.s, align 1, !tbaa !878, !range !46, !noundef !47
  %.not27 = icmp eq i8 %i.r, %i.t
  br i1 %.not27, label %bb.d, label %_ZNK7MapNodeneERKS_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 418
  %i.v = load i8, ptr %i.u, align 2, !tbaa !879, !range !46, !noundef !47
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 346
  %i.x = load i8, ptr %i.w, align 2, !tbaa !879, !range !46, !noundef !47
  %.not28 = icmp eq i8 %i.v, %i.x
  br i1 %.not28, label %bb.e, label %_ZNK7MapNodeneERKS_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.aa = load i16, ptr %i.y, align 8, !tbaa !880
  %i.ab = load i16, ptr %i.z, align 8, !tbaa !880
  %i.ac = icmp eq i16 %i.aa, %i.ab
  br i1 %i.ac, label %bb.f, label %_ZNK7MapNodeneERKS_.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 402
  %i.ae = load i8, ptr %i.ad, align 2, !tbaa !881
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 330
  %i.ag = load i8, ptr %i.af, align 2, !tbaa !881
  %i.ah = icmp eq i8 %i.ae, %i.ag
  br i1 %i.ah, label %_ZNK7MapNodeneERKS_.exit, label %_ZNK7MapNodeneERKS_.exit.thread

_ZNK7MapNodeneERKS_.exit:                         ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 403
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !882
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 331
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !882
  %.not34 = icmp eq i8 %i.aj, %i.al
  br i1 %.not34, label %bb.g, label %_ZNK7MapNodeneERKS_.exit.thread

bb.g:                                             ; preds = %_ZNK7MapNodeneERKS_.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !60 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !60
  %i.as = icmp eq i64 %i.ap, %i.ar
  br i1 %i.as, label %bb.h, label %_ZNK7MapNodeneERKS_.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.at = icmp eq i64 %i.ap, 0
  br i1 %i.at, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread31, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.h
  %i.au = load ptr, ptr %i.an, align 8, !tbaa !134
  %i.av = load ptr, ptr %i.am, align 8, !tbaa !134
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.av, ptr %i.au, i64 %i.ap)
  %.not35 = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not35, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread31, label %_ZNK7MapNodeneERKS_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread31: ; preds = %bb.h, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ax = load i8, ptr %i.aw, align 8, !tbaa !883
  %.not29 = icmp eq i8 %i.ax, %i.g
  br i1 %.not29, label %bb.i, label %_ZNK7MapNodeneERKS_.exit.thread

bb.i:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread31
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.ba = load float, ptr %i.ay, align 8, !tbaa !262
  %i.bb = load float, ptr %i.az, align 8, !tbaa !262
  %i.bc = fcmp nsz oeq float %i.ba, %i.bb
  br i1 %i.bc, label %bb.j, label %_ZNK7MapNodeneERKS_.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 340
  %i.be = load float, ptr %i.bd, align 4, !tbaa !263
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 268
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !263
  %i.bh = fcmp nsz oeq float %i.be, %i.bg
  br i1 %i.bh, label %_ZNK4core8vector3dIfEneERKS1_.exit, label %_ZNK7MapNodeneERKS_.exit.thread

_ZNK4core8vector3dIfEneERKS1_.exit:               ; preds = %bb.j
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.bj = load float, ptr %i.bi, align 8, !tbaa !149
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.bl = load float, ptr %i.bk, align 8, !tbaa !149
  %i.bm = fcmp nsz une float %i.bj, %i.bl
  br i1 %i.bm, label %_ZNK7MapNodeneERKS_.exit.thread, label %bb.k

bb.k:                                             ; preds = %_ZNK4core8vector3dIfEneERKS1_.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.bo = tail call noundef zeroext i1 @_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_(ptr noundef nonnull align 8 dereferenceable(32) %i.bn, ptr noundef nonnull align 8 dereferenceable(32) %i.b) #28
  br i1 %i.bo, label %_ZNK7MapNodeneERKS_.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !884 ; 3 uses
  %i.bt = load ptr, ptr %i.bp, align 8, !tbaa !143 ; 3 uses
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !884
  %i.bz = load ptr, ptr %i.bq, align 8, !tbaa !143 ; 2 uses
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = sub i64 %i.ca, %i.cb
  %i.cd = icmp eq i64 %i.bw, %i.cc
  br i1 %i.cd, label %bb.m, label %_ZNK7MapNodeneERKS_.exit.thread

bb.m:                                             ; preds = %bb.l
  %.not9.i.i.i.i.i.i = icmp eq ptr %i.bt, %i.bs
  br i1 %.not9.i.i.i.i.i.i, label %_ZStneIN5video6SColorESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.m, %bb.n
  %.011.i.i.i.i.i.i = phi ptr [ %i.ch, %bb.n ], [ %i.bz, %bb.m ] ; 2 uses
  %.0810.i.i.i.i.i.i = phi ptr [ %i.cg, %bb.n ], [ %i.bt, %bb.m ] ; 2 uses
  %i.ce = load i32, ptr %.011.i.i.i.i.i.i, align 4, !tbaa !118
  %i.cf = load i32, ptr %.0810.i.i.i.i.i.i, align 4, !tbaa !118
  %.not.i = icmp eq i32 %i.ce, %i.cf
  br i1 %.not.i, label %bb.n, label %_ZNK7MapNodeneERKS_.exit.thread

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cg, %i.bs
  br i1 %.not.i.i.i.i.i.i, label %_ZStneIN5video6SColorESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !875

_ZStneIN5video6SColorESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit: ; preds = %bb.n, %bb.m
  br i1 %.not30, label %_ZNK7MapNodeneERKS_.exit.thread, label %bb.o

bb.o:                                             ; preds = %_ZStneIN5video6SColorESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit
  %i.ci = tail call noundef zeroext i1 @_ZStneINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEbRKSt6vectorIT_T0_ESC_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZNK7MapNodeneERKS_.exit.thread

_ZNK7MapNodeneERKS_.exit.thread:                  ; preds = %.lr.ph.i.i.i.i.i.i, %bb.l, %bb.i, %bb.j, %bb.g, %bb.e, %bb.f, %_ZStneIN5video6SColorESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit, %bb.o, %bb.k, %_ZNK4core8vector3dIfEneERKS1_.exit, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread31, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %_ZNK7MapNodeneERKS_.exit, %bb.d, %bb.c, %bb.b, %bb.a
  %i.cj = phi i1 [ false, %_ZStneIN5video6SColorESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit ], [ true, %bb.k ], [ true, %_ZNK4core8vector3dIfEneERKS1_.exit ], [ true, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread31 ], [ true, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ], [ true, %_ZNK7MapNodeneERKS_.exit ], [ true, %bb.d ], [ true, %bb.c ], [ true, %bb.b ], [ true, %bb.a ], [ %i.ci, %bb.o ], [ true, %bb.i ], [ true, %bb.e ], [ true, %bb.g ], [ true, %bb.f ], [ true, %bb.j ], [ true, %bb.l ], [ true, %.lr.ph.i.i.i.i.i.i ]
  ret i1 %i.cj
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
end_hunk_4
begin_hunk_5_@_ZN10GenericCAO14processMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.xh = getelementptr inbounds nuw i8, ptr %i.wq, i64 156
  %i.xi = load float, ptr %i.xh, align 4, !tbaa !605 ; 2 uses
  %i.xj = fcmp nsz une float %i.xd, %i.xi
  %i.xk = getelementptr inbounds nuw i8, ptr %i.wq, i64 164
  %i.xl = load float, ptr %i.xk, align 4, !tbaa !605
  %i.xm = fcmp nsz une float %i.xd, %i.xl
  %.not763 = select i1 %i.xm, i1 %i.xj, i1 false
  %spec.select.2.not760 = select i1 %.not763, i1 %i.xg, i1 false
  %i.xn = fadd nsz float %i.xf, %i.xi
  %i.xo = fcmp nsz olt float %i.xn, 1.000000e+00
  %or.cond = select i1 %spec.select.2.not760, i1 true, i1 %i.xo
  br i1 %or.cond, label %.invoke755, label %.critedge

.invoke755:                                       ; preds = %bb.ds, %bb.dm
  invoke void @_ZN10GenericCAO15updateAnimationEv(ptr noundef nonnull align 8 dereferenceable(1076) %0)
          to label %.critedge unwind label %bb.gy

bb.dt:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #28
  store i32 0, ptr %i.t, align 4
  %i.xp = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.t, i64 noundef 4)
          to label %.noexc424 unwind label %bb.gy ; 0 uses

.noexc424:                                        ; preds = %bb.dt
  %i.xq = load ptr, ptr %2, align 8, !tbaa !55
  %i.xr = getelementptr i8, ptr %i.xq, i64 -24
  %i.xs = load i64, ptr %i.xr, align 8
  %i.xt = getelementptr inbounds i8, ptr %2, i64 %i.xs
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 32
  %i.xv = load i32, ptr %i.xu, align 8, !tbaa !159
  %i.xw = and i32 %i.xv, 2
  %.not.i423 = icmp eq i32 %i.xw, 0
  br i1 %.not.i423, label %bb.du, label %.invoke756

bb.du:                                            ; preds = %.noexc424
  %i.xx = invoke noundef float @_Z7readF32PKh(ptr noundef nonnull %i.t)
          to label %bb.dv unwind label %bb.gy     ; 2 uses

bb.dv:                                            ; preds = %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #28
  %i.xy = getelementptr inbounds nuw i8, ptr %0, i64 736
  store float %i.xx, ptr %i.xy, align 8, !tbaa !589
  %i.xz = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.ya = load ptr, ptr %i.xz, align 8, !tbaa !288 ; 2 uses
  %.not.i428 = icmp eq ptr %i.ya, null
  br i1 %.not.i428, label %.critedge, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  invoke void @_ZN5scene21AnimatedMeshSceneNode17setAnimationSpeedEf(ptr noundef nonnull align 8 dereferenceable(432) %i.ya, float noundef %i.xx)
          to label %.critedge unwind label %bb.gy

bb.dx:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  invoke void @_Z19deSerializeString16B5cxx11RSi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.dy unwind label %bb.eb

bb.dy:                                            ; preds = %bb.dx
  %i.yb = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 2 uses
  %i.yc = invoke ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12BoneOverrideESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.yb, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.dz unwind label %bb.ec     ; 14 uses

bb.dz:                                            ; preds = %bb.dy
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.29)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.44)
  %.not688 = icmp eq ptr %i.yc, null
  br i1 %.not688, label %bb.ed, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %.sroa.7602.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yc, i64 52
  %.sroa.7602.sroa.0.0.copyload = load <2 x float>, ptr %.sroa.7602.0..sroa_idx, align 4, !tbaa !48
  %.sroa.7602.sroa.8.0..sroa.7602.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.yc, i64 60
  %.sroa.7602.sroa.8.0.copyload = load float, ptr %.sroa.7602.sroa.8.0..sroa.7602.0..sroa_idx.sroa_idx, align 4, !tbaa !48
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yc, i64 65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.12, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.12.0..sroa_idx, i64 3, i1 false), !tbaa.struct !890
  %.sroa.12607.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yc, i64 68
  %.sroa.12607.0.copyload = load float, ptr %.sroa.12607.0..sroa_idx, align 4, !tbaa !48
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yc, i64 88
  %i.yd = load <4 x float>, ptr %.sroa.17.0..sroa_idx, align 8, !tbaa !48
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yc, i64 104
  %.sroa.26.sroa.0.0.copyload = load <3 x float>, ptr %.sroa.26.0..sroa_idx, align 8, !tbaa !48
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yc, i64 117
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.29, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.29.0..sroa_idx, i64 3, i1 false), !tbaa.struct !891
  %.sroa.29621.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yc, i64 120
  %.sroa.29621.0.copyload = load float, ptr %.sroa.29621.0..sroa_idx, align 8, !tbaa !48
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yc, i64 136
  %.sroa.36.sroa.0.0.copyload = load <2 x float>, ptr %.sroa.36.0..sroa_idx, align 8, !tbaa !48
  %.sroa.36.sroa.9.0..sroa.36.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.yc, i64 144
  %.sroa.36.sroa.9.0.copyload = load float, ptr %.sroa.36.sroa.9.0..sroa.36.0..sroa_idx.sroa_idx, align 8, !tbaa !48
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yc, i64 148
  %.sroa.42.0.copyload = load i8, ptr %.sroa.42.0..sroa_idx, align 4, !tbaa !458
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yc, i64 149
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.44, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.44.0..sroa_idx, i64 3, i1 false), !tbaa.struct !892
  %.sroa.44630.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yc, i64 152
  %.sroa.44630.0.copyload = load float, ptr %.sroa.44630.0..sroa_idx, align 8, !tbaa !48
  br label %bb.ed

bb.eb:                                            ; preds = %bb.dx
  %i.ye = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit494

bb.ec:                                            ; preds = %bb.dy
  %i.yf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ev

bb.ed:                                            ; preds = %bb.dz, %bb.ea
  %.sroa.26.sroa.0.0 = phi nsz <3 x float> [ zeroinitializer, %bb.dz ], [ %.sroa.26.sroa.0.0.copyload, %bb.ea ]
  %.sroa.0601.sroa.7.0 = phi nsz float [ 0.000000e+00, %bb.dz ], [ %.sroa.7602.sroa.8.0.copyload, %bb.ea ]
  %.sroa.0601.sroa.0.0 = phi nsz <2 x float> [ zeroinitializer, %bb.dz ], [ %.sroa.7602.sroa.0.0.copyload, %bb.ea ]
  %.sroa.12607.0 = phi nsz float [ 0.000000e+00, %bb.dz ], [ %.sroa.12607.0.copyload, %bb.ea ]
  %.sroa.32.sroa.8.0 = phi nsz float [ 1.000000e+00, %bb.dz ], [ %.sroa.36.sroa.9.0.copyload, %bb.ea ] ; 2 uses
  %.sroa.32.sroa.0.0 = phi nsz <2 x float> [ splat (float 1.000000e+00), %bb.dz ], [ %.sroa.36.sroa.0.0.copyload, %bb.ea ] ; 2 uses
  %.sroa.44630.0 = phi nsz float [ 0.000000e+00, %bb.dz ], [ %.sroa.44630.0.copyload, %bb.ea ]
  %.sroa.42.0 = phi i8 [ 0, %bb.dz ], [ %.sroa.42.0.copyload, %bb.ea ]
  %.sroa.29621.0 = phi nsz float [ 0.000000e+00, %bb.dz ], [ %.sroa.29621.0.copyload, %bb.ea ]
  %i.yg = phi <4 x float> [ <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, %bb.dz ], [ %i.yd, %bb.ea ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.s, i8 0, i64 12, i1 false)
  %i.yh = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.s, i64 noundef 12)
          to label %.noexc436 unwind label %bb.et ; 0 uses

.noexc436:                                        ; preds = %bb.ed
  %i.yi = load ptr, ptr %2, align 8, !tbaa !55
  %i.yj = getelementptr i8, ptr %i.yi, i64 -24
  %i.yk = load i64, ptr %i.yj, align 8
  %i.yl = getelementptr inbounds i8, ptr %2, i64 %i.yk
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yl, i64 32
  %i.yn = load i32, ptr %i.ym, align 8, !tbaa !159
  %i.yo = and i32 %i.yn, 2
  %.not.i431 = icmp eq i32 %i.yo, 0
  br i1 %.not.i431, label %bb.ee, label %.invoke

bb.ee:                                            ; preds = %.noexc436
  %i.yp = invoke noundef float @_Z7readF32PKh(ptr noundef nonnull %i.s)
          to label %.noexc438 unwind label %bb.et

.noexc438:                                        ; preds = %bb.ee
  %i.yq = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.yr = invoke noundef float @_Z7readF32PKh(ptr noundef nonnull %i.yq)
          to label %.noexc439 unwind label %bb.et

.noexc439:                                        ; preds = %.noexc438
  %.sroa.0.0.vec.insert.i.i432 = insertelement <2 x float> poison, float %i.yp, i64 0
  %.sroa.0.4.vec.insert.i.i433 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i432, float %i.yr, i64 1
  %i.ys = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.yt = invoke noundef float @_Z7readF32PKh(ptr noundef nonnull %i.ys)
          to label %bb.ef unwind label %bb.et

bb.ef:                                            ; preds = %.noexc439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.r, i8 0, i64 12, i1 false)
  %i.yu = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.r, i64 noundef 12)
          to label %.noexc447 unwind label %bb.et ; 0 uses

.noexc447:                                        ; preds = %bb.ef
  %i.yv = load ptr, ptr %2, align 8, !tbaa !55
  %i.yw = getelementptr i8, ptr %i.yv, i64 -24
  %i.yx = load i64, ptr %i.yw, align 8
  %i.yy = getelementptr inbounds i8, ptr %2, i64 %i.yx
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yy, i64 32
  %i.za = load i32, ptr %i.yz, align 8, !tbaa !159
  %i.zb = and i32 %i.za, 2
  %.not.i442 = icmp eq i32 %i.zb, 0
  br i1 %.not.i442, label %bb.eg, label %.invoke

.invoke:                                          ; preds = %.noexc463, %.noexc470, %.noexc475, %.noexc480, %.noexc485, %.noexc447, %.noexc436
  invoke fastcc void @_ZL19serialize_throw_eofv()
          to label %.cont unwind label %bb.et

.cont:                                            ; preds = %.invoke
  unreachable

bb.eg:                                            ; preds = %.noexc447
  %i.zc = invoke noundef float @_Z7readF32PKh(ptr noundef nonnull %i.r)
          to label %.noexc449 unwind label %bb.et

.noexc449:                                        ; preds = %bb.eg
  %i.zd = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.ze = invoke noundef float @_Z7readF32PKh(ptr noundef nonnull %i.zd)
          to label %.noexc450 unwind label %bb.et

.noexc450:                                        ; preds = %.noexc449
  %i.zf = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.zg = invoke noundef float @_Z7readF32PKh(ptr noundef nonnull %i.zf)
          to label %bb.eh unwind label %bb.et

bb.eh:                                            ; preds = %.noexc450
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #28
  %i.zh = fmul nsz float %i.zc, f0x3C8EFA35
  %i.zi = insertelement <2 x float> poison, float %i.ze, i64 0
  %i.zj = insertelement <2 x float> %i.zi, float %i.zg, i64 1
  %i.zk = fmul nsz <2 x float> %i.zj, splat (float f0x3C8EFA35)
  %i.zl = fpext nsz float %i.zh to double
  %i.zm = fmul nsz double %i.zl, 5.000000e-01
  %sincos.i.i = call nsz { double, double } @llvm.sincos.f64(double %i.zm) ; 2 uses
  %sin.i.i = extractvalue { double, double } %sincos.i.i, 0
  %cos.i.i = extractvalue { double, double } %sincos.i.i, 1
  %i.zn = fpext nsz <2 x float> %i.zk to <2 x double>
  %i.zo = fmul nsz <2 x double> %i.zn, splat (double 5.000000e-01)
  %i.zp = call nsz { <2 x double>, <2 x double> } @llvm.sincos.v2f64(<2 x double> %i.zo) ; 2 uses
  %i.zq = extractvalue { <2 x double>, <2 x double> } %i.zp, 0 ; 3 uses
  %i.zr = shufflevector <2 x double> %i.zq, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.zs = extractelement <2 x double> %i.zq, i64 0
  %i.zt = extractvalue { <2 x double>, <2 x double> } %i.zp, 1 ; 2 uses
  %i.zu = shufflevector <2 x double> %i.zt, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.zv = extractelement <2 x double> %i.zq, i64 1
  %i.zw = shufflevector <2 x double> %i.zt, <2 x double> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 0>
  %i.zx = shufflevector <4 x double> %i.zw, <4 x double> %i.zr, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.zy = fmul nsz <4 x double> %i.zx, %i.zu      ; 3 uses
  %i.zz = fmul nsz double %i.zs, %i.zv            ; 2 uses
  %i.aaa = fneg nsz double %i.zz
  %i.aab = insertelement <4 x double> poison, double %cos.i.i, i64 0
  %i.aac = insertelement <4 x double> %i.aab, double %sin.i.i, i64 1 ; 2 uses
  %i.aad = shufflevector <4 x double> %i.aac, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.aae = shufflevector <4 x double> %i.zy, <4 x double> poison, <4 x i32> <i32 poison, i32 2, i32 poison, i32 poison>
  %i.aaf = insertelement <4 x double> %i.aae, double %i.aaa, i64 0
  %i.aag = fneg nsz <4 x double> %i.zy
  %i.aah = shufflevector <4 x double> %i.aaf, <4 x double> %i.aag, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.aai = insertelement <4 x double> %i.aah, double %i.zz, i64 3
  %i.aaj = fmul nsz <4 x double> %i.aad, %i.aai
  %i.aak = shufflevector <4 x double> %i.aac, <4 x double> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 0>
  %i.aal = call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.aak, <4 x double> %i.zy, <4 x double> %i.aaj)
  %i.aam = fptrunc nsz <4 x double> %i.aal to <4 x float> ; 6 uses
  %foldExtExtBinop = fmul nsz <4 x float> %i.aam, %i.aam
  %i.aan = extractelement <4 x float> %foldExtExtBinop, i64 1
  %i.aao = extractelement <4 x float> %i.aam, i64 0 ; 2 uses
  %i.aap = call nsz float @llvm.fmuladd.f32(float %i.aao, float %i.aao, float %i.aan)
  %i.aaq = extractelement <4 x float> %i.aam, i64 2 ; 2 uses
  %i.aar = call nsz float @llvm.fmuladd.f32(float %i.aaq, float %i.aaq, float %i.aap)
  %i.aas = extractelement <4 x float> %i.aam, i64 3 ; 2 uses
  %i.aat = call nsz float @llvm.fmuladd.f32(float %i.aas, float %i.aas, float %i.aar)
  %i.aau = fpext nsz float %i.aat to double
  %i.aav = call nsz double @llvm.sqrt.f64(double %i.aau)
  %i.aaw = fdiv nsz double 1.000000e+00, %i.aav
  %i.aax = fptrunc nsz double %i.aaw to float
  %i.aay = insertelement <4 x float> poison, float %i.aax, i64 0
  %i.aaz = shufflevector <4 x float> %i.aay, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aba = fmul nsz <4 x float> %i.aaz, %i.aam
  %i.abb = invoke noundef i32 @_ZNSi4peekEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.ei unwind label %bb.et

bb.ei:                                            ; preds = %bb.eh
  %.not689 = icmp eq i32 %i.abb, -1
  br i1 %.not689, label %bb.eu, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.q, i8 0, i64 12, i1 false)
  %i.abc = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.q, i64 noundef 12)
          to label %.noexc463 unwind label %bb.et ; 0 uses

.noexc463:                                        ; preds = %bb.ej
  %i.abd = load ptr, ptr %2, align 8, !tbaa !55
  %i.abe = getelementptr i8, ptr %i.abd, i64 -24
  %i.abf = load i64, ptr %i.abe, align 8
  %i.abg = getelementptr inbounds i8, ptr %2, i64 %i.abf
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abg, i64 32
  %i.abi = load i32, ptr %i.abh, align 8, !tbaa !159
  %i.abj = and i32 %i.abi, 2
  %.not.i458 = icmp eq i32 %i.abj, 0
  br i1 %.not.i458, label %bb.ek, label %.invoke

bb.ek:                                            ; preds = %.noexc463
  %i.abk = invoke noundef float @_Z7readF32PKh(ptr noundef nonnull %i.q)
          to label %.noexc465 unwind label %bb.et

.noexc465:                                        ; preds = %bb.ek
  %i.abl = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.abm = invoke noundef float @_Z7readF32PKh(ptr noundef nonnull %i.abl)
          to label %.noexc466 unwind label %bb.et

.noexc466:                                        ; preds = %.noexc465
  %.sroa.0.0.vec.insert.i.i459 = insertelement <2 x float> poison, float %i.abk, i64 0
  %.sroa.0.4.vec.insert.i.i460 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i459, float %i.abm, i64 1
  %i.abn = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.abo = invoke noundef float @_Z7readF32PKh(ptr noundef nonnull %i.abn)
          to label %bb.el unwind label %bb.et

bb.el:                                            ; preds = %.noexc466
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #28
  store i32 0, ptr %i.p, align 4
  %i.abp = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.p, i64 noundef 4)
          to label %.noexc470 unwind label %bb.et ; 0 uses

.noexc470:                                        ; preds = %bb.el
  %i.abq = load ptr, ptr %2, align 8, !tbaa !55
  %i.abr = getelementptr i8, ptr %i.abq, i64 -24
  %i.abs = load i64, ptr %i.abr, align 8
  %i.abt = getelementptr inbounds i8, ptr %2, i64 %i.abs
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abt, i64 32
  %i.abv = load i32, ptr %i.abu, align 8, !tbaa !159
  %i.abw = and i32 %i.abv, 2
  %.not.i469 = icmp eq i32 %i.abw, 0
  br i1 %.not.i469, label %bb.em, label %.invoke

bb.em:                                            ; preds = %.noexc470
  %i.abx = invoke noundef float @_Z7readF32PKh(ptr noundef nonnull %i.p)
          to label %bb.en unwind label %bb.et

bb.en:                                            ; preds = %bb.em
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #28
  store i32 0, ptr %i.o, align 4
  %i.aby = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.o, i64 noundef 4)
          to label %.noexc475 unwind label %bb.et ; 0 uses

.noexc475:                                        ; preds = %bb.en
  %i.abz = load ptr, ptr %2, align 8, !tbaa !55
  %i.aca = getelementptr i8, ptr %i.abz, i64 -24
  %i.acb = load i64, ptr %i.aca, align 8
  %i.acc = getelementptr inbounds i8, ptr %2, i64 %i.acb
  %i.acd = getelementptr inbounds nuw i8, ptr %i.acc, i64 32
  %i.ace = load i32, ptr %i.acd, align 8, !tbaa !159
  %i.acf = and i32 %i.ace, 2
  %.not.i474 = icmp eq i32 %i.acf, 0
  br i1 %.not.i474, label %bb.eo, label %.invoke

bb.eo:                                            ; preds = %.noexc475
  %i.acg = invoke noundef float @_Z7readF32PKh(ptr noundef nonnull %i.o)
          to label %bb.ep unwind label %bb.et

bb.ep:                                            ; preds = %bb.eo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #28
  store i32 0, ptr %i.n, align 4
  %i.ach = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.n, i64 noundef 4)
          to label %.noexc480 unwind label %bb.et ; 0 uses

.noexc480:                                        ; preds = %bb.ep
  %i.aci = load ptr, ptr %2, align 8, !tbaa !55
  %i.acj = getelementptr i8, ptr %i.aci, i64 -24
  %i.ack = load i64, ptr %i.acj, align 8
  %i.acl = getelementptr inbounds i8, ptr %2, i64 %i.ack
  %i.acm = getelementptr inbounds nuw i8, ptr %i.acl, i64 32
  %i.acn = load i32, ptr %i.acm, align 8, !tbaa !159
  %i.aco = and i32 %i.acn, 2
  %.not.i479 = icmp eq i32 %i.aco, 0
  br i1 %.not.i479, label %bb.eq, label %.invoke

bb.eq:                                            ; preds = %.noexc480
  %i.acp = invoke noundef float @_Z7readF32PKh(ptr noundef nonnull %i.n)
          to label %bb.er unwind label %bb.et

bb.er:                                            ; preds = %bb.eq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #28
  store i8 0, ptr %i.m, align 1
  %i.acq = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.m, i64 noundef 1)
          to label %.noexc485 unwind label %bb.et ; 0 uses

.noexc485:                                        ; preds = %bb.er
  %i.acr = load ptr, ptr %2, align 8, !tbaa !55
  %i.acs = getelementptr i8, ptr %i.acr, i64 -24
  %i.act = load i64, ptr %i.acs, align 8
  %i.acu = getelementptr inbounds i8, ptr %2, i64 %i.act
  %i.acv = getelementptr inbounds nuw i8, ptr %i.acu, i64 32
  %i.acw = load i32, ptr %i.acv, align 8, !tbaa !159
  %i.acx = and i32 %i.acw, 2
  %.not.i484 = icmp eq i32 %i.acx, 0
  br i1 %.not.i484, label %bb.es, label %.invoke

bb.es:                                            ; preds = %.noexc485
  %i.acy = load i8, ptr %i.m, align 1, !tbaa !61  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #28
  %i.acz = and i8 %i.acy, 1
  %i.ada = lshr i8 %i.acy, 1
  %.lobit = and i8 %i.ada, 1
  %i.adb = lshr i8 %i.acy, 2
  %.lobit193 = and i8 %i.adb, 1
  br label %bb.eu

bb.et:                                            ; preds = %.invoke, %bb.ef, %bb.eg, %.noexc449, %.noexc450, %bb.eu, %bb.er, %bb.eq, %bb.ep, %bb.eo, %bb.en, %bb.em, %bb.el, %.noexc466, %.noexc465, %bb.ek, %bb.ej, %bb.eh, %.noexc439, %.noexc438, %bb.ee, %bb.ed
  %i.adc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.29)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.44)
  br label %bb.ev

bb.eu:                                            ; preds = %bb.ei, %bb.es
  %.sroa.10.0 = phi i8 [ %i.acz, %bb.es ], [ 1, %bb.ei ]
  %.sroa.12607.1 = phi nsz float [ %i.abx, %bb.es ], [ %.sroa.12607.0, %bb.ei ]
  %.sroa.27.0 = phi i8 [ %.lobit, %bb.es ], [ 1, %bb.ei ]
  %.sroa.36.sroa.9.1 = phi nsz float [ %i.abo, %bb.es ], [ %.sroa.32.sroa.8.0, %bb.ei ]
  %.sroa.36.sroa.0.1 = phi nsz <2 x float> [ %.sroa.0.4.vec.insert.i.i460, %bb.es ], [ %.sroa.32.sroa.0.0, %bb.ei ]
  %.sroa.44630.1 = phi nsz float [ %i.acp, %bb.es ], [ %.sroa.44630.0, %bb.ei ]
  %.sroa.42.1 = phi i8 [ %.lobit193, %bb.es ], [ %.sroa.42.0, %bb.ei ]
  %.sroa.29621.1 = phi nsz float [ %i.acg, %bb.es ], [ %.sroa.29621.0, %bb.ei ]
  %i.add = invoke noundef nonnull align 4 dereferenceable(120) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_12BoneOverrideESaISA_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(56) %i.yb, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE12BoneOverrideSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEEixERSC_.exit unwind label %bb.et ; 21 uses

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE12BoneOverrideSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEEixERSC_.exit: ; preds = %bb.eu
  store <2 x float> %.sroa.0601.sroa.0.0, ptr %i.add, align 4, !tbaa !48
  %.sroa.0601.sroa.7.0..sroa_idx658 = getelementptr inbounds nuw i8, ptr %i.add, i64 8
  store float %.sroa.0601.sroa.7.0, ptr %.sroa.0601.sroa.7.0..sroa_idx658, align 4, !tbaa !48
  %.sroa.7602.0..sroa_idx603 = getelementptr inbounds nuw i8, ptr %i.add, i64 12
  store <2 x float> %.sroa.0.4.vec.insert.i.i433, ptr %.sroa.7602.0..sroa_idx603, align 4, !tbaa !48
  %.sroa.7602.sroa.8.0..sroa.7602.0..sroa_idx603.sroa_idx = getelementptr inbounds nuw i8, ptr %i.add, i64 20
  store float %i.yt, ptr %.sroa.7602.sroa.8.0..sroa.7602.0..sroa_idx603.sroa_idx, align 4, !tbaa !48
  %.sroa.10.0..sroa_idx604 = getelementptr inbounds nuw i8, ptr %i.add, i64 24
  store i8 %.sroa.10.0, ptr %.sroa.10.0..sroa_idx604, align 4, !tbaa !458
  %.sroa.12.0..sroa_idx606 = getelementptr inbounds nuw i8, ptr %i.add, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.12.0..sroa_idx606, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.12, i64 3, i1 false), !tbaa.struct !890
  %.sroa.12607.0..sroa_idx608 = getelementptr inbounds nuw i8, ptr %i.add, i64 28
  store float %.sroa.12607.1, ptr %.sroa.12607.0..sroa_idx608, align 4, !tbaa !48
  %.sroa.15.0..sroa_idx610 = getelementptr inbounds nuw i8, ptr %i.add, i64 32
  store <4 x float> %i.yg, ptr %.sroa.15.0..sroa_idx610, align 4, !tbaa !48
  %.sroa.17.0..sroa_idx611 = getelementptr inbounds nuw i8, ptr %i.add, i64 48
  store <4 x float> %i.aba, ptr %.sroa.17.0..sroa_idx611, align 4, !tbaa !48
  %.sroa.26.0..sroa_idx615 = getelementptr inbounds nuw i8, ptr %i.add, i64 64
  store <3 x float> %.sroa.26.sroa.0.0, ptr %.sroa.26.0..sroa_idx615, align 4, !tbaa !48
  %.sroa.27.0..sroa_idx618 = getelementptr inbounds nuw i8, ptr %i.add, i64 76
  store i8 %.sroa.27.0, ptr %.sroa.27.0..sroa_idx618, align 4, !tbaa !458
  %.sroa.29.0..sroa_idx620 = getelementptr inbounds nuw i8, ptr %i.add, i64 77
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.29.0..sroa_idx620, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.29, i64 3, i1 false), !tbaa.struct !891
  %.sroa.29621.0..sroa_idx622 = getelementptr inbounds nuw i8, ptr %i.add, i64 80
  store float %.sroa.29621.1, ptr %.sroa.29621.0..sroa_idx622, align 4, !tbaa !48
  %.sroa.32.0..sroa_idx624 = getelementptr inbounds nuw i8, ptr %i.add, i64 84
  store <2 x float> %.sroa.32.sroa.0.0, ptr %.sroa.32.0..sroa_idx624, align 4, !tbaa !48
  %.sroa.32.sroa.8.0..sroa.32.0..sroa_idx624.sroa_idx = getelementptr inbounds nuw i8, ptr %i.add, i64 92
  store float %.sroa.32.sroa.8.0, ptr %.sroa.32.sroa.8.0..sroa.32.0..sroa_idx624.sroa_idx, align 4, !tbaa !48
  %.sroa.36.0..sroa_idx625 = getelementptr inbounds nuw i8, ptr %i.add, i64 96
end_hunk_5
begin_hunk_6_@"_ZNSt17_Function_handlerIFvfEZN10GenericCAO10addToSceneEP14ITextureSourcePN5scene13ISceneManagerEE3$_0E9_M_invokeERKSt9_Any_dataOf":bb.a
  %i.r = select i1 %i.p, float %i.o, float %i.n   ; 2 uses
  %i.s = load float, ptr %i.q, align 4, !tbaa !48 ; 2 uses
  %i.t = fcmp nsz olt float %i.r, %i.s
  %i.u = select i1 %i.t, float %i.s, float %i.r
  %i.v = fcmp nsz ult float %i.k, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.01.07.i.i.i, i64 64 ; 2 uses
  %i.x = load i8, ptr %i.w, align 4, !range !46
  %i.y = trunc nuw i8 %i.x to i1
  %or.cond.i.i.i.i = select i1 %i.v, i1 true, i1 %i.y
  br i1 %or.cond.i.i.i.i, label %_ZNK12BoneOverride10isIdentityEv.exit.thread.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.01.07.i.i.i, i64 52
  %i.aa = load float, ptr %i.z, align 4, !tbaa !262
  %i.ab = fcmp nsz une float %i.aa, 0.000000e+00
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.01.07.i.i.i, i64 56
  %i.ad = load float, ptr %i.ac, align 4
  %i.ae = fcmp nsz une float %i.ad, 0.000000e+00
  %or.cond12.not22.i.i.i.i = select i1 %i.ab, i1 true, i1 %i.ae
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.01.07.i.i.i, i64 60
  %i.ag = load float, ptr %i.af, align 4
  %i.ah = fcmp nsz une float %i.ag, 0.000000e+00
  %or.cond15.not19.i.i.i.i = select i1 %or.cond12.not22.i.i.i.i, i1 true, i1 %i.ah
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.01.07.i.i.i, i64 116
  %i.aj = load i8, ptr %i.ai, align 4, !range !46
  %i.ak = trunc nuw i8 %i.aj to i1
  %or.cond18.i.i.i.i = select i1 %or.cond15.not19.i.i.i.i, i1 true, i1 %i.ak
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.01.07.i.i.i, i64 88
  %i.am = load float, ptr %i.al, align 4
  %i.an = fcmp nsz une float %i.am, 0.000000e+00
  %or.cond25.not.i.i.i.i = select i1 %or.cond18.i.i.i.i, i1 true, i1 %i.an
  br i1 %or.cond25.not.i.i.i.i, label %_ZNK12BoneOverride10isIdentityEv.exit.thread.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.01.07.i.i.i, i64 92
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !1002
  %i.aq = fcmp nsz oeq float %i.ap, 0.000000e+00
  br i1 %i.aq, label %bb.e, label %_ZNK12BoneOverride10isIdentityEv.exit.thread.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.01.07.i.i.i, i64 96
  %i.as = load float, ptr %i.ar, align 4, !tbaa !1003
  %i.at = fcmp nsz oeq float %i.as, 0.000000e+00
  br i1 %i.at, label %_ZNK4core10quaternioneqERKS0_.exit.i.i.i.i, label %_ZNK12BoneOverride10isIdentityEv.exit.thread.i.i.i

_ZNK4core10quaternioneqERKS0_.exit.i.i.i.i:       ; preds = %bb.e
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.01.07.i.i.i, i64 100
  %i.av = load float, ptr %i.au, align 4, !tbaa !672
  %i.aw = fcmp nsz oeq float %i.av, 1.000000e+00
  br i1 %i.aw, label %bb.f, label %_ZNK12BoneOverride10isIdentityEv.exit.thread.i.i.i

bb.f:                                             ; preds = %_ZNK4core10quaternioneqERKS0_.exit.i.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.01.07.i.i.i, i64 148
  %i.ay = load i8, ptr %i.ax, align 4, !tbaa !1004, !range !46, !noundef !47
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %_ZNK12BoneOverride10isIdentityEv.exit.thread.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.01.07.i.i.i, i64 136
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !262
  %i.bc = fcmp nsz oeq float %i.bb, 1.000000e+00
  br i1 %i.bc, label %bb.h, label %_ZNK12BoneOverride10isIdentityEv.exit.thread.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.01.07.i.i.i, i64 140
  %i.be = load float, ptr %i.bd, align 4, !tbaa !263
  %i.bf = fcmp nsz oeq float %i.be, 1.000000e+00
  br i1 %i.bf, label %_ZNK12BoneOverride10isIdentityEv.exit.i.i.i, label %_ZNK12BoneOverride10isIdentityEv.exit.thread.i.i.i

_ZNK12BoneOverride10isIdentityEv.exit.i.i.i:      ; preds = %bb.h
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.01.07.i.i.i, i64 144
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !149
  %i.bi = fcmp nsz oeq float %i.bh, 1.000000e+00
  br i1 %i.bi, label %bb.i, label %_ZNK12BoneOverride10isIdentityEv.exit.thread.i.i.i

bb.i:                                             ; preds = %_ZNK12BoneOverride10isIdentityEv.exit.i.i.i
  %i.bj = load i64, ptr %i.d, align 8, !tbaa !126 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.01.07.i.i.i, i64 160
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !611
  %i.bm = urem i64 %i.bl, %i.bj                   ; 3 uses
  %i.bn = load ptr, ptr %i.a, align 8, !tbaa !125 ; 3 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bm ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !609 ; 4 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.bp, %bb.i ], [ %i.bq, %bb.j ] ; 4 uses
  %i.bq = load ptr, ptr %.0.i.i.i.i.i.i.i, align 8, !tbaa !41 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bq, %.sroa.01.07.i.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12BoneOverrideESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE20_M_get_previous_nodeEmPNSB_10_Hash_nodeIS9_Lb1EEE.exit.i.i.i.i.i.i, label %bb.j, !llvm.loop !997

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12BoneOverrideESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE20_M_get_previous_nodeEmPNSB_10_Hash_nodeIS9_Lb1EEE.exit.i.i.i.i.i.i: ; preds = %bb.j
  %i.br = icmp eq ptr %.0.i.i.i.i.i.i.i, %i.bp
  %i.bs = load ptr, ptr %.sroa.01.07.i.i.i, align 8, !tbaa !41 ; 4 uses
  %.not18.i.i.i.i.i.i.i = icmp eq ptr %i.bs, null ; 2 uses
  br i1 %i.br, label %bb.k, label %bb.p

bb.k:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12BoneOverrideESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE20_M_get_previous_nodeEmPNSB_10_Hash_nodeIS9_Lb1EEE.exit.i.i.i.i.i.i
  br i1 %.not18.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 160
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !611
  %i.bv = urem i64 %i.bu, %i.bj                   ; 2 uses
  %.not9.i.i.i.i.i.i.i.i = icmp eq i64 %i.bv, %i.bm
  br i1 %.not9.i.i.i.i.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12BoneOverrideESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSB_10_Hash_nodeIS9_Lb1EEEm.exit.i.i.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bv
  store ptr %i.bp, ptr %i.bw, align 8, !tbaa !609
  br label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %bb.m, %bb.k
  %i.bx = icmp eq ptr %i.b, %i.bp
  br i1 %i.bx, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  store ptr %i.bs, ptr %i.b, align 8, !tbaa !142
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge.i.i.i.i.i.i.i.i
  store ptr null, ptr %i.bo, align 8, !tbaa !609
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12BoneOverrideESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSB_10_Hash_nodeIS9_Lb1EEEm.exit.i.i.i.i.i.i.i

bb.p:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12BoneOverrideESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE20_M_get_previous_nodeEmPNSB_10_Hash_nodeIS9_Lb1EEE.exit.i.i.i.i.i.i
  br i1 %.not18.i.i.i.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12BoneOverrideESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSB_10_Hash_nodeIS9_Lb1EEEm.exit.i.i.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.by = getelementptr inbounds nuw i8, ptr %i.bs, i64 160
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !611
  %i.ca = urem i64 %i.bz, %i.bj                   ; 2 uses
  %.not17.i.i.i.i.i.i.i = icmp eq i64 %i.ca, %i.bm
  br i1 %.not17.i.i.i.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12BoneOverrideESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSB_10_Hash_nodeIS9_Lb1EEEm.exit.i.i.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.ca
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.cb, align 8, !tbaa !609
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12BoneOverrideESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSB_10_Hash_nodeIS9_Lb1EEEm.exit.i.i.i.i.i.i.i

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12BoneOverrideESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSB_10_Hash_nodeIS9_Lb1EEEm.exit.i.i.i.i.i.i.i: ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %bb.l
  %i.cc = load ptr, ptr %.sroa.01.07.i.i.i, align 8, !tbaa !41 ; 2 uses
  store ptr %i.cc, ptr %.0.i.i.i.i.i.i.i, align 8, !tbaa !41
  %i.cd = load ptr, ptr %i.g, align 8, !tbaa !134 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.01.07.i.i.i, i64 24 ; 2 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE12BoneOverrideSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEE5eraseENSt8__detail14_Node_iteratorISD_Lb0ELb1EEE.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12BoneOverrideESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSB_10_Hash_nodeIS9_Lb1EEEm.exit.i.i.i.i.i.i.i
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !61
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.ch) #35
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE12BoneOverrideSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEE5eraseENSt8__detail14_Node_iteratorISD_Lb0ELb1EEE.exit.i.i.i

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE12BoneOverrideSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEE5eraseENSt8__detail14_Node_iteratorISD_Lb0ELb1EEE.exit.i.i.i: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12BoneOverrideESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSB_10_Hash_nodeIS9_Lb1EEEm.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01.07.i.i.i, i64 noundef 168) #35
  %i.ci = load i64, ptr %i.e, align 8, !tbaa !673
  %i.cj = add i64 %i.ci, -1
  store i64 %i.cj, ptr %i.e, align 8, !tbaa !673
  br label %bb.u, !llvm.loop !998

_ZNK12BoneOverride10isIdentityEv.exit.thread.i.i.i: ; preds = %_ZNK12BoneOverride10isIdentityEv.exit.i.i.i, %bb.h, %bb.g, %bb.f, %_ZNK4core10quaternioneqERKS0_.exit.i.i.i.i, %bb.e, %bb.d, %bb.c, %bb.b
  %i.ck = load ptr, ptr %i.f, align 8, !tbaa !288
  %i.cl = load ptr, ptr %i.g, align 8, !tbaa !134
  %i.cm = call noundef ptr @_ZN5scene21AnimatedMeshSceneNode12getJointNodeEPKc(ptr noundef nonnull align 8 dereferenceable(432) %i.ck, ptr noundef %i.cl) ; 13 uses
  %.not.i.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNK12BoneOverride10isIdentityEv.exit.thread.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !55
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 216
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = call noundef nonnull align 4 dereferenceable(12) ptr %i.cp(ptr noundef nonnull align 8 dereferenceable(218) %i.cm), !inline_history !999 ; 2 uses
  %.sroa.023.0.copyload.i.i.i = load <2 x float>, ptr %i.cq, align 4, !tbaa !48
  %.sroa.224.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %.sroa.224.0.copyload.i.i.i = load float, ptr %.sroa.224.0..sroa_idx.i.i.i, align 4, !tbaa !48
  %i.cr = load float, ptr %i.i, align 4, !tbaa !671
  %i.cs = load float, ptr %i.l, align 4, !tbaa !1005 ; 2 uses
  %i.ct = fdiv nsz float %i.cr, %i.cs             ; 2 uses
  %i.cu = fcmp nsz ogt float %i.ct, 1.000000e+00
  %i.cv = fcmp nsz oeq float %i.cs, 0.000000e+00
  %or.cond.i40.i.i.i = or i1 %i.cv, %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.01.07.i.i.i, i64 52
  %i.cx = fpext nsz float %i.ct to double
  %i.cy = select i1 %or.cond.i40.i.i.i, double 1.000000e+00, double %i.cx ; 3 uses
  %i.cz = fsub nsz double 1.000000e+00, %i.cy     ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.01.07.i.i.i, i64 48
  %i.db = load float, ptr %i.da, align 8, !tbaa !149
  %i.dc = fpext nsz float %i.db to double
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.01.07.i.i.i, i64 60
  %i.de = load float, ptr %i.dd, align 4, !tbaa !149
  %i.df = fpext nsz float %i.de to double
  %i.dg = fmul nsz double %i.cy, %i.df
  %i.dh = call nsz double @llvm.fmuladd.f64(double %i.dc, double %i.cz, double %i.dg)
  %i.di = fptrunc nsz double %i.dh to float
  %i.dj = load i8, ptr %i.w, align 8, !tbaa !1006, !range !46, !noundef !47
  %i.dk = trunc nuw i8 %i.dj to i1                ; 2 uses
  %.sroa.7.0.i.i.i.i = select nsz i1 %i.dk, float 0.000000e+00, float %.sroa.224.0.copyload.i.i.i
  %.sroa.0.0.i.i.i.i = select nsz i1 %i.dk, <2 x float> zeroinitializer, <2 x float> %.sroa.023.0.copyload.i.i.i
  %i.dl = load <2 x float>, ptr %i.h, align 8, !tbaa !48
  %i.dm = fpext nsz <2 x float> %i.dl to <2 x double>
  %i.dn = load <2 x float>, ptr %i.cw, align 4, !tbaa !48
  %i.do = fpext nsz <2 x float> %i.dn to <2 x double>
  %i.dp = insertelement <2 x double> poison, double %i.cy, i64 0
  %i.dq = shufflevector <2 x double> %i.dp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dr = fmul nsz <2 x double> %i.dq, %i.do
  %i.ds = insertelement <2 x double> poison, double %i.cz, i64 0
  %i.dt = shufflevector <2 x double> %i.ds, <2 x double> poison, <2 x i32> zeroinitializer
  %i.du = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dm, <2 x double> %i.dt, <2 x double> %i.dr)
  %i.dv = fptrunc nsz <2 x double> %i.du to <2 x float>
  %i.dw = fadd nsz <2 x float> %.sroa.0.0.i.i.i.i, %i.dv
  %i.dx = fadd nsz float %.sroa.7.0.i.i.i.i, %i.di
  store <2 x float> %i.dw, ptr %2, align 8
  store float %i.dx, ptr %.sroa.220.0..sroa_idx.i.i.i, align 8
  %i.dy = load ptr, ptr %i.cm, align 8, !tbaa !55
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 224
  %i.ea = load ptr, ptr %i.dz, align 8
  call void %i.ea(ptr noundef nonnull align 8 dereferenceable(218) %i.cm, ptr noundef nonnull align 4 dereferenceable(12) %2), !inline_history !999
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.eb = load ptr, ptr %i.cm, align 8, !tbaa !55
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 200
  %i.ed = load ptr, ptr %i.ec, align 8
  %i.ee = call { <2 x float>, float } %i.ed(ptr noundef nonnull align 8 dereferenceable(308) %i.cm), !inline_history !999 ; 2 uses
  %.fca.0.extract11.i.i.i = extractvalue { <2 x float>, float } %i.ee, 0
  %.fca.1.extract12.i.i.i = extractvalue { <2 x float>, float } %i.ee, 1
  %i.ef = call { <2 x float>, float } @_ZNK12BoneOverride19getRotationEulerDegEN4core8vector3dIfEE(ptr noundef nonnull align 4 dereferenceable(120) %i.h, <2 x float> %.fca.0.extract11.i.i.i, float %.fca.1.extract12.i.i.i) ; 2 uses
  %.fca.0.extract5.i.i.i = extractvalue { <2 x float>, float } %i.ef, 0
  %.fca.1.extract6.i.i.i = extractvalue { <2 x float>, float } %i.ef, 1
  store <2 x float> %.fca.0.extract5.i.i.i, ptr %3, align 8
  store float %.fca.1.extract6.i.i.i, ptr %.sroa.28.0..sroa_idx.i.i.i, align 8
  %i.eg = load ptr, ptr %i.cm, align 8, !tbaa !55
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 208
  %i.ei = load ptr, ptr %i.eh, align 8
  call void %i.ei(ptr noundef nonnull align 8 dereferenceable(308) %i.cm, ptr noundef nonnull align 4 dereferenceable(12) %3), !inline_history !999
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.ej = load ptr, ptr %i.cm, align 8, !tbaa !55
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 184
  %i.el = load ptr, ptr %i.ek, align 8
  %i.em = call noundef nonnull align 4 dereferenceable(12) ptr %i.el(ptr noundef nonnull align 8 dereferenceable(218) %i.cm), !inline_history !999 ; 2 uses
  %.sroa.03.0.copyload.i.i.i = load <2 x float>, ptr %i.em, align 4, !tbaa !48
  %.sroa.24.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %.sroa.24.0.copyload.i.i.i = load float, ptr %.sroa.24.0..sroa_idx.i.i.i, align 4, !tbaa !48
  %i.en = load float, ptr %i.i, align 4, !tbaa !671
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.01.07.i.i.i, i64 124
  %i.ep = load float, ptr %i.q, align 8, !tbaa !1007 ; 2 uses
  %i.eq = fdiv nsz float %i.en, %i.ep             ; 2 uses
  %i.er = fcmp nsz ogt float %i.eq, 1.000000e+00
  %i.es = fcmp nsz oeq float %i.ep, 0.000000e+00
  %or.cond.i41.i.i.i = or i1 %i.es, %i.er
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.01.07.i.i.i, i64 136
  %i.eu = fpext nsz float %i.eq to double
  %i.ev = select i1 %or.cond.i41.i.i.i, double 1.000000e+00, double %i.eu ; 3 uses
  %i.ew = fsub nsz double 1.000000e+00, %i.ev     ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.01.07.i.i.i, i64 132
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !149
  %i.ez = fpext nsz float %i.ey to double
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.01.07.i.i.i, i64 144
  %i.fb = load float, ptr %i.fa, align 8, !tbaa !149
  %i.fc = fpext nsz float %i.fb to double
  %i.fd = fmul nsz double %i.ev, %i.fc
  %i.fe = call nsz double @llvm.fmuladd.f64(double %i.ez, double %i.ew, double %i.fd)
  %i.ff = fptrunc nsz double %i.fe to float
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.01.07.i.i.i, i64 148
  %i.fh = load i8, ptr %i.fg, align 4, !tbaa !1004, !range !46, !noundef !47
  %i.fi = trunc nuw i8 %i.fh to i1                ; 2 uses
  %.sroa.7.0.i42.i.i.i = select nsz i1 %i.fi, float 1.000000e+00, float %.sroa.24.0.copyload.i.i.i
  %.sroa.0.0.i43.i.i.i = select nsz i1 %i.fi, <2 x float> splat (float 1.000000e+00), <2 x float> %.sroa.03.0.copyload.i.i.i
  %i.fj = load <2 x float>, ptr %i.eo, align 4, !tbaa !48
  %i.fk = fpext nsz <2 x float> %i.fj to <2 x double>
  %i.fl = load <2 x float>, ptr %i.et, align 8, !tbaa !48
  %i.fm = fpext nsz <2 x float> %i.fl to <2 x double>
  %i.fn = insertelement <2 x double> poison, double %i.ev, i64 0
  %i.fo = shufflevector <2 x double> %i.fn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fp = fmul nsz <2 x double> %i.fo, %i.fm
  %i.fq = insertelement <2 x double> poison, double %i.ew, i64 0
  %i.fr = shufflevector <2 x double> %i.fq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fs = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fk, <2 x double> %i.fr, <2 x double> %i.fp)
  %i.ft = fptrunc nsz <2 x double> %i.fs to <2 x float>
  %i.fu = fmul nsz <2 x float> %.sroa.0.0.i43.i.i.i, %i.ft
  %i.fv = fmul nsz float %.sroa.7.0.i42.i.i.i, %i.ff
  store <2 x float> %i.fu, ptr %4, align 8
  store float %i.fv, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  %i.fw = load ptr, ptr %i.cm, align 8, !tbaa !55
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 192
  %i.fy = load ptr, ptr %i.fx, align 8
  call void %i.fy(ptr noundef nonnull align 8 dereferenceable(218) %i.cm, ptr noundef nonnull align 4 dereferenceable(12) %4), !inline_history !999
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNK12BoneOverride10isIdentityEv.exit.thread.i.i.i
  %i.fz = load ptr, ptr %.sroa.01.07.i.i.i, align 8, !tbaa !41
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE12BoneOverrideSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEE5eraseENSt8__detail14_Node_iteratorISD_Lb0ELb1EEE.exit.i.i.i
  %.sroa.01.1.i.i.i = phi ptr [ %i.cc, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE12BoneOverrideSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEE5eraseENSt8__detail14_Node_iteratorISD_Lb0ELb1EEE.exit.i.i.i ], [ %i.fz, %bb.t ] ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.sroa.01.1.i.i.i, null
  br i1 %.not5.i.i.i, label %"_ZSt10__invoke_rIvRZN10GenericCAO10addToSceneEP14ITextureSourcePN5scene13ISceneManagerEE3$_0JfEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES9_E4typeEOSA_DpOSB_.exit", label %bb.b

"_ZSt10__invoke_rIvRZN10GenericCAO10addToSceneEP14ITextureSourcePN5scene13ISceneManagerEE3$_0JfEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES9_E4typeEOSA_DpOSB_.exit": ; preds = %bb.u, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvfEZN10GenericCAO10addToSceneEP14ITextureSourcePN5scene13ISceneManagerEE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN10GenericCAO10addToSceneEP14ITextureSourcePN5scene13ISceneManagerEE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN10GenericCAO10addToSceneEP14ITextureSourcePN5scene13ISceneManagerEE3$_0", ptr %0, align 8, !tbaa !1009
  br label %"_ZNSt14_Function_base13_Base_managerIZN10GenericCAO10addToSceneEP14ITextureSourcePN5scene13ISceneManagerEE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !587
  br label %"_ZNSt14_Function_base13_Base_managerIZN10GenericCAO10addToSceneEP14ITextureSourcePN5scene13ISceneManagerEE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !527
  store i64 %.val.i, ptr %0, align 8, !tbaa !527
  br label %"_ZNSt14_Function_base13_Base_managerIZN10GenericCAO10addToSceneEP14ITextureSourcePN5scene13ISceneManagerEE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN10GenericCAO10addToSceneEP14ITextureSourcePN5scene13ISceneManagerEE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { <2 x float>, float } @_ZNK12BoneOverride19getRotationEulerDegEN4core8vector3dIfEE(ptr noundef nonnull align 4 dereferenceable(120) %0, <2 x float> %1, float %2) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.b = load float, ptr %i.a, align 4, !tbaa !671
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load float, ptr %i.d, align 4, !tbaa !1010 ; 2 uses
  %i.f = fdiv nsz float %i.b, %i.e                ; 2 uses
  %i.g = fcmp nsz ogt float %i.f, 1.000000e+00
  %i.h = fcmp nsz oeq float %i.e, 0.000000e+00
  %or.cond = or i1 %i.h, %i.g
  %.0 = select nsz i1 %or.cond, float 1.000000e+00, float %i.f ; 4 uses
  %.sroa.010.0.copyload = load <2 x float>, ptr %i.c, align 4, !tbaa !48 ; 4 uses
  %.sroa.211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.211.0.copyload = load <2 x float>, ptr %.sroa.211.0..sroa_idx, align 4, !tbaa !48 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.08.0.copyload = load <2 x float>, ptr %i.i, align 4, !tbaa !48 ; 4 uses
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.29.0.copyload = load <2 x float>, ptr %.sroa.29.0..sroa_idx, align 4, !tbaa !48 ; 4 uses
  %.sroa.047.0.vec.extract.i = extractelement <2 x float> %.sroa.010.0.copyload, i64 0
  %.sroa.036.0.vec.extract.i = extractelement <2 x float> %.sroa.08.0.copyload, i64 0
  %foldExtExtBinop = fmul nsz <2 x float> %.sroa.010.0.copyload, %.sroa.08.0.copyload
  %i.j = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.k = tail call nsz float @llvm.fmuladd.f32(float %.sroa.047.0.vec.extract.i, float %.sroa.036.0.vec.extract.i, float %i.j)
  %.sroa.10.8.vec.extract.i = extractelement <2 x float> %.sroa.211.0.copyload, i64 0
  %.sroa.6.8.vec.extract.i = extractelement <2 x float> %.sroa.29.0.copyload, i64 0
  %i.l = tail call nsz float @llvm.fmuladd.f32(float %.sroa.10.8.vec.extract.i, float %.sroa.6.8.vec.extract.i, float %i.k)
  %.sroa.10.12.vec.extract.i = extractelement <2 x float> %.sroa.211.0.copyload, i64 1
  %.sroa.6.12.vec.extract.i = extractelement <2 x float> %.sroa.29.0.copyload, i64 1
  %i.m = tail call nsz noundef float @llvm.fmuladd.f32(float %.sroa.10.12.vec.extract.i, float %.sroa.6.12.vec.extract.i, float %i.l) ; 3 uses
  %i.n = fcmp nsz olt float %i.m, 0.000000e+00    ; 3 uses
  %i.o = fneg nsz <2 x float> %.sroa.010.0.copyload
  %i.p = fneg nsz <2 x float> %.sroa.211.0.copyload
  %i.q = fneg nsz float %i.m
  %.sroa.047.0.i = select nsz i1 %i.n, <2 x float> %i.o, <2 x float> %.sroa.010.0.copyload ; 2 uses
  %.sroa.10.0.i = select nsz i1 %i.n, <2 x float> %i.p, <2 x float> %.sroa.211.0.copyload ; 2 uses
  %.020.i = select nsz i1 %i.n, float %i.q, float %i.m ; 2 uses
  %i.r = fcmp nsz ugt float %.020.i, 9.990000e-01
  br i1 %i.r, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = tail call nsz float @llvm.acos.f32(float %.020.i) ; 3 uses
  %i.t = tail call nsz float @llvm.sin.f32(float %i.s)
  %i.u = fdiv nsz float 1.000000e+00, %i.t        ; 2 uses
  %i.v = fsub nsz float 1.000000e+00, %.0
  %i.w = fmul nsz float %i.v, %i.s
  %i.x = tail call nsz float @llvm.sin.f32(float %i.w)
  %i.y = fmul nsz float %i.x, %i.u
  %i.z = fmul nsz float %.0, %i.s
  %i.aa = tail call nsz float @llvm.sin.f32(float %i.z)
  %i.ab = fmul nsz float %i.aa, %i.u
  %i.ac = insertelement <2 x float> poison, float %i.y, i64 0
  %i.ad = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ae = fmul nsz <2 x float> %.sroa.047.0.i, %i.ad
  %i.af = fmul nsz <2 x float> %.sroa.10.0.i, %i.ad
  %i.ag = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.ah = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ai = fmul nsz <2 x float> %.sroa.08.0.copyload, %i.ah
  %i.aj = fmul nsz <2 x float> %.sroa.29.0.copyload, %i.ah
  %i.ak = fadd nsz <2 x float> %i.ae, %i.ai
  %i.al = fadd nsz <2 x float> %i.af, %i.aj
  br label %_ZN4core10quaternion5slerpES0_S0_ff.exit

bb.c:                                             ; preds = %bb.a
  %i.am = fsub nsz float 1.000000e+00, %.0
  %i.an = insertelement <2 x float> poison, float %.0, i64 0
  %i.ao = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ap = fmul nsz <2 x float> %.sroa.08.0.copyload, %i.ao
  %i.aq = fmul nsz <2 x float> %i.ao, %.sroa.29.0.copyload
  %i.ar = insertelement <2 x float> poison, float %i.am, i64 0
  %i.as = shufflevector <2 x float> %i.ar, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.at = fmul nsz <2 x float> %i.as, %.sroa.10.0.i
  %i.au = fadd nsz <2 x float> %i.aq, %i.at       ; 3 uses
  %i.av = extractelement <2 x float> %i.au, i64 0 ; 2 uses
  %i.aw = extractelement <2 x float> %i.au, i64 1 ; 2 uses
  %i.ax = fmul nsz <2 x float> %i.as, %.sroa.047.0.i
  %i.ay = fadd nsz <2 x float> %i.ap, %i.ax       ; 4 uses
  %foldExtExtBinop46 = fmul nsz <2 x float> %i.ay, %i.ay
  %i.az = extractelement <2 x float> %foldExtExtBinop46, i64 1
  %i.ba = extractelement <2 x float> %i.ay, i64 0 ; 2 uses
  %i.bb = tail call nsz float @llvm.fmuladd.f32(float %i.ba, float %i.ba, float %i.az)
  %i.bc = tail call nsz float @llvm.fmuladd.f32(float %i.av, float %i.av, float %i.bb)
  %i.bd = tail call nsz float @llvm.fmuladd.f32(float %i.aw, float %i.aw, float %i.bc)
  %i.be = fpext nsz float %i.bd to double
  %i.bf = tail call nsz double @llvm.sqrt.f64(double %i.be)
  %i.bg = fdiv nsz double 1.000000e+00, %i.bf
  %i.bh = fptrunc nsz double %i.bg to float
  %i.bi = insertelement <2 x float> poison, float %i.bh, i64 0
  %i.bj = shufflevector <2 x float> %i.bi, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bk = fmul nsz <2 x float> %i.ay, %i.bj
  %i.bl = fmul nsz <2 x float> %i.au, %i.bj
  br label %_ZN4core10quaternion5slerpES0_S0_ff.exit

_ZN4core10quaternion5slerpES0_S0_ff.exit:         ; preds = %bb.b, %bb.c
  %.sroa.0.4.vec.insert.i29.sink.i = phi <2 x float> [ %i.bk, %bb.c ], [ %i.ak, %bb.b ] ; 4 uses
  %.sroa.3.12.vec.insert.i31.sink.i = phi <2 x float> [ %i.bl, %bb.c ], [ %i.al, %bb.b ] ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.bn = load i8, ptr %i.bm, align 4, !tbaa !1011, !range !46, !noundef !47
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4core10quaternion5slerpES0_S0_ff.exit
  %i.bp = fmul nsz float %2, f0x3C8EFA35
  %i.bq = fmul nsz <2 x float> %1, splat (float f0x3C8EFA35)
  %i.br = fpext nsz <2 x float> %i.bq to <2 x double>
  %i.bs = fmul nsz <2 x double> %i.br, splat (double 5.000000e-01)
  %i.bt = tail call nsz { <2 x double>, <2 x double> } @llvm.sincos.v2f64(<2 x double> %i.bs) ; 2 uses
  %i.bu = extractvalue { <2 x double>, <2 x double> } %i.bt, 0 ; 5 uses
  %i.bv = extractelement <2 x double> %i.bu, i64 0 ; 2 uses
  %i.bw = extractvalue { <2 x double>, <2 x double> } %i.bt, 1 ; 5 uses
  %i.bx = extractelement <2 x double> %i.bw, i64 0 ; 2 uses
  %i.by = extractelement <2 x double> %i.bu, i64 1
  %i.bz = extractelement <2 x double> %i.bw, i64 1
  %i.ca = fpext nsz float %i.bp to double
  %i.cb = fmul nsz double %i.ca, 5.000000e-01
  %sincos37.i.i = tail call nsz { double, double } @llvm.sincos.f64(double %i.cb) ; 2 uses
  %sin38.i.i = extractvalue { double, double } %sincos37.i.i, 0 ; 2 uses
  %cos39.i.i = extractvalue { double, double } %sincos37.i.i, 1
  %i.cc = fmul nsz double %i.bz, %sin38.i.i       ; 2 uses
  %i.cd = fmul nsz double %i.by, %sin38.i.i       ; 2 uses
  %i.ce = fneg nsz double %i.cd
  %.sroa.1036.12.vec.extract = extractelement <2 x float> %.sroa.3.12.vec.insert.i31.sink.i, i64 1 ; 4 uses
  %.sroa.029.0.vec.extract = extractelement <2 x float> %.sroa.0.4.vec.insert.i29.sink.i, i64 0 ; 3 uses
  %i.cf = fneg nsz float %.sroa.029.0.vec.extract
  %.sroa.029.4.vec.extract = extractelement <2 x float> %.sroa.0.4.vec.insert.i29.sink.i, i64 1 ; 3 uses
  %.sroa.1036.8.vec.extract = extractelement <2 x float> %.sroa.3.12.vec.insert.i31.sink.i, i64 0 ; 2 uses
  %i.cg = shufflevector <2 x double> %i.bw, <2 x double> %i.bu, <2 x i32> <i32 1, i32 3>
  %i.ch = insertelement <2 x double> poison, double %cos39.i.i, i64 0
  %i.ci = shufflevector <2 x double> %i.ch, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cj = fmul nsz <2 x double> %i.cg, %i.ci      ; 3 uses
  %i.ck = shufflevector <2 x double> %i.bw, <2 x double> %i.bu, <2 x i32> <i32 0, i32 2>
  %i.cl = insertelement <2 x double> poison, double %i.ce, i64 0
  %i.cm = insertelement <2 x double> %i.cl, double %i.cc, i64 1
  %i.cn = fmul nsz <2 x double> %i.ck, %i.cm
  %i.co = shufflevector <2 x double> %i.bu, <2 x double> %i.bw, <2 x i32> <i32 0, i32 2>
  %i.cp = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.co, <2 x double> %i.cj, <2 x double> %i.cn) ; 2 uses
  %i.cq = extractelement <2 x double> %i.cp, i64 1
  %i.cr = fptrunc nsz double %i.cq to float       ; 3 uses
  %i.cs = extractelement <2 x double> %i.cj, i64 1
  %i.ct = fneg nsz double %i.cs
  %i.cu = fmul nsz double %i.bv, %i.ct
  %i.cv = tail call nsz double @llvm.fmuladd.f64(double %i.bx, double %i.cc, double %i.cu)
  %i.cw = fptrunc nsz double %i.cv to float       ; 3 uses
  %i.cx = fmul nsz float %i.cr, %i.cr
  %i.cy = extractelement <2 x double> %i.cp, i64 0
  %i.cz = fptrunc nsz double %i.cy to float       ; 3 uses
  %i.da = fmul nsz double %i.bv, %i.cd
  %i.db = extractelement <2 x double> %i.cj, i64 0
  %i.dc = tail call nsz double @llvm.fmuladd.f64(double %i.bx, double %i.db, double %i.da)
  %i.dd = fptrunc nsz double %i.dc to float       ; 3 uses
  %i.de = tail call nsz float @llvm.fmuladd.f32(float %i.cz, float %i.cz, float %i.cx)
  %i.df = tail call nsz float @llvm.fmuladd.f32(float %i.cw, float %i.cw, float %i.de)
  %i.dg = tail call nsz float @llvm.fmuladd.f32(float %i.dd, float %i.dd, float %i.df)
  %i.dh = fpext nsz float %i.dg to double
  %i.di = tail call nsz double @llvm.sqrt.f64(double %i.dh)
  %i.dj = fdiv nsz double 1.000000e+00, %i.di
  %i.dk = fptrunc nsz double %i.dj to float       ; 4 uses
  %i.dl = fmul nsz float %i.cz, %i.dk             ; 4 uses
  %i.dm = fmul nsz float %i.cr, %i.dk             ; 3 uses
  %i.dn = fmul nsz float %i.cw, %i.dk             ; 3 uses
  %i.do = fmul nsz float %i.dd, %i.dk             ; 4 uses
  %i.dp = fmul nsz float %i.dl, %i.cf
  %i.dq = tail call nsz float @llvm.fmuladd.f32(float %i.do, float %.sroa.1036.12.vec.extract, float %i.dp)
  %i.dr = fneg nsz float %i.dm                    ; 2 uses
  %i.ds = fneg nsz float %i.dn                    ; 2 uses
  %i.dt = fmul nsz float %i.dl, %.sroa.1036.12.vec.extract
  %i.du = insertelement <2 x float> poison, float %i.do, i64 0
  %i.dv = insertelement <2 x float> %i.du, float %i.dr, i64 1
  %i.dw = insertelement <2 x float> poison, float %i.dt, i64 0
  %i.dx = insertelement <2 x float> %i.dw, float %i.dq, i64 1
  %i.dy = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dv, <2 x float> %.sroa.0.4.vec.insert.i29.sink.i, <2 x float> %i.dx)
  %i.dz = insertelement <2 x float> poison, float %i.dm, i64 0
  %i.ea = insertelement <2 x float> %i.dz, float %i.ds, i64 1
  %i.eb = shufflevector <2 x float> %.sroa.3.12.vec.insert.i31.sink.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ec = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ea, <2 x float> %i.eb, <2 x float> %i.dy) ; 2 uses
  %i.ed = extractelement <2 x float> %i.ec, i64 0
  %i.ee = tail call nsz float @llvm.fmuladd.f32(float %i.ds, float %.sroa.029.4.vec.extract, float %i.ed)
  %.sroa.0.0.vec.insert.i19 = insertelement <2 x float> poison, float %i.ee, i64 0
  %i.ef = fmul nsz float %i.dm, %.sroa.1036.12.vec.extract
  %i.eg = tail call nsz float @llvm.fmuladd.f32(float %i.do, float %.sroa.029.4.vec.extract, float %i.ef)
  %i.eh = tail call nsz float @llvm.fmuladd.f32(float %i.dn, float %.sroa.029.0.vec.extract, float %i.eg)
  %i.ei = fneg nsz float %i.dl
  %i.ej = tail call nsz float @llvm.fmuladd.f32(float %i.ei, float %.sroa.1036.8.vec.extract, float %i.eh)
  %.sroa.0.4.vec.insert.i20 = insertelement <2 x float> %.sroa.0.0.vec.insert.i19, float %i.ej, i64 1
  %i.ek = fmul nsz float %i.dn, %.sroa.1036.12.vec.extract
  %i.el = tail call nsz float @llvm.fmuladd.f32(float %i.do, float %.sroa.1036.8.vec.extract, float %i.ek)
  %i.em = tail call nsz float @llvm.fmuladd.f32(float %i.dl, float %.sroa.029.4.vec.extract, float %i.el)
  %i.en = tail call nsz float @llvm.fmuladd.f32(float %i.dr, float %.sroa.029.0.vec.extract, float %i.em)
  %i.eo = insertelement <2 x float> %i.ec, float %i.en, i64 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN4core10quaternion5slerpES0_S0_ff.exit
  %.sroa.029.0 = phi nsz <2 x float> [ %.sroa.0.4.vec.insert.i29.sink.i, %_ZN4core10quaternion5slerpES0_S0_ff.exit ], [ %.sroa.0.4.vec.insert.i20, %bb.d ] ; 7 uses
  %.sroa.1036.0 = phi nsz <2 x float> [ %.sroa.3.12.vec.insert.i31.sink.i, %_ZN4core10quaternion5slerpES0_S0_ff.exit ], [ %i.eo, %bb.d ] ; 7 uses
  %.sroa.1036.12.vec.extract42 = extractelement <2 x float> %.sroa.1036.0, i64 1 ; 5 uses
  %i.ep = fmul nsz float %.sroa.1036.12.vec.extract42, %.sroa.1036.12.vec.extract42
  %i.eq = fpext nsz float %i.ep to double         ; 2 uses
  %.sroa.029.0.vec.extract32 = extractelement <2 x float> %.sroa.029.0, i64 0 ; 3 uses
  %foldExtExtBinop48 = fmul nsz <2 x float> %.sroa.029.0, %.sroa.029.0
  %i.er = extractelement <2 x float> %foldExtExtBinop48, i64 0
  %i.es = fpext nsz float %i.er to double         ; 2 uses
  %.sroa.029.4.vec.extract35 = extractelement <2 x float> %.sroa.029.0, i64 1 ; 3 uses
  %i.et = fmul nsz float %.sroa.029.4.vec.extract35, %.sroa.029.4.vec.extract35
  %i.eu = fpext nsz float %i.et to double         ; 2 uses
  %.sroa.1036.8.vec.extract39 = extractelement <2 x float> %.sroa.1036.0, i64 0
  %foldExtExtBinop50 = fmul nsz <2 x float> %.sroa.1036.0, %.sroa.1036.0
  %i.ev = extractelement <2 x float> %foldExtExtBinop50, i64 0
  %i.ew = fpext nsz float %i.ev to double         ; 2 uses
  %i.ex = fneg nsz float %.sroa.1036.8.vec.extract39
  %i.ey = fmul nsz float %.sroa.029.0.vec.extract32, %i.ex
  %i.ez = tail call nsz float @llvm.fmuladd.f32(float %.sroa.029.4.vec.extract35, float %.sroa.1036.12.vec.extract42, float %i.ey)
  %i.fa = fpext nsz float %i.ez to double
  %i.fb = fmul nsz double %i.fa, 2.000000e+00     ; 4 uses
  %i.fc = fadd nsz double %i.fb, -1.000000e+00
  %i.fd = tail call nsz noundef double @llvm.fabs.f64(double %i.fc)
  %i.fe = fcmp nsz ugt double %i.fd, f0x3EB0C6F7A0B5ED8D
  br i1 %i.fe, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ff = fpext nsz float %.sroa.029.0.vec.extract32 to double
  %i.fg = fpext nsz float %.sroa.1036.12.vec.extract42 to double
  %i.fh = tail call nsz double @llvm.atan2.f64(double %i.ff, double %i.fg)
  %i.fi = fmul nsz double %i.fh, -2.000000e+00
  br label %_ZNK4core10quaternion7toEulerERNS_8vector3dIfEE.exit

bb.g:                                             ; preds = %bb.e
  %i.fj = fadd nsz double %i.fb, 1.000000e+00
  %i.fk = tail call nsz noundef double @llvm.fabs.f64(double %i.fj)
  %i.fl = fcmp nsz ugt double %i.fk, f0x3EB0C6F7A0B5ED8D
  br i1 %i.fl, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.fm = fpext nsz float %.sroa.029.0.vec.extract32 to double
  %i.fn = fpext nsz float %.sroa.1036.12.vec.extract42 to double
  %i.fo = tail call nsz double @llvm.atan2.f64(double %i.fm, double %i.fn)
  %i.fp = fmul nsz double %i.fo, 2.000000e+00
  br label %_ZNK4core10quaternion7toEulerERNS_8vector3dIfEE.exit

bb.i:                                             ; preds = %bb.g
  %i.fq = shufflevector <2 x float> %.sroa.1036.0, <2 x float> %.sroa.029.0, <2 x i32> <i32 1, i32 2>
  %i.fr = fmul nsz <2 x float> %i.fq, %.sroa.1036.0
  %i.fs = fsub nsz double %i.es, %i.eu
  %i.ft = fsub nsz double %i.fs, %i.ew
  %i.fu = fadd nsz double %i.ft, %i.eq
  %i.fv = shufflevector <2 x float> %.sroa.029.0, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fw = shufflevector <2 x float> %.sroa.029.0, <2 x float> %.sroa.1036.0, <2 x i32> <i32 0, i32 2>
  %i.fx = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fv, <2 x float> %i.fw, <2 x float> %i.fr)
  %i.fy = fpext nsz <2 x float> %i.fx to <2 x double>
  %i.fz = fmul nsz <2 x double> %i.fy, splat (double 2.000000e+00) ; 2 uses
  %i.ga = extractelement <2 x double> %i.fz, i64 0
  %i.gb = tail call nsz double @llvm.atan2.f64(double %i.ga, double %i.fu)
  %i.gc = fadd nsz double %i.es, %i.eu
  %i.gd = fsub nsz double %i.ew, %i.gc
  %i.ge = fadd nsz double %i.gd, %i.eq
  %i.gf = extractelement <2 x double> %i.fz, i64 1
  %i.gg = tail call nsz double @llvm.atan2.f64(double %i.gf, double %i.ge)
  %i.gh = fcmp nsz olt double %i.fb, -1.000000e+00
  %i.gi = select i1 %i.gh, double -1.000000e+00, double %i.fb ; 2 uses
  %i.gj = fcmp nsz olt double %i.gi, 1.000000e+00
  %i.gk = select i1 %i.gj, double %i.gi, double 1.000000e+00
  %i.gl = tail call nsz double @llvm.asin.f64(double %i.gk)
  %i.gm = insertelement <2 x double> poison, double %i.gg, i64 0
  %i.gn = insertelement <2 x double> %i.gm, double %i.gl, i64 1
  %i.go = fptrunc nsz <2 x double> %i.gn to <2 x float>
  %i.gp = fmul nsz <2 x float> %i.go, splat (float f0x42652EE0)
  br label %_ZNK4core10quaternion7toEulerERNS_8vector3dIfEE.exit

_ZNK4core10quaternion7toEulerERNS_8vector3dIfEE.exit: ; preds = %bb.f, %bb.h, %bb.i
  %.sroa.10.0.in = phi double [ %i.gb, %bb.i ], [ %i.fp, %bb.h ], [ %i.fi, %bb.f ]
  %i.gq = phi <2 x float> [ %i.gp, %bb.i ], [ <float 0.000000e+00, float -9.000000e+01>, %bb.h ], [ <float 0.000000e+00, float 9.000000e+01>, %bb.f ]
  %.sroa.10.0 = fptrunc double %.sroa.10.0.in to float
  %i.gr = fmul nsz float %.sroa.10.0, f0x42652EE0
  %.fca.0.insert.i25 = insertvalue { <2 x float>, float } poison, <2 x float> %i.gq, 0
  %.fca.1.insert.i26 = insertvalue { <2 x float>, float } %.fca.0.insert.i25, float %i.gr, 1
  ret { <2 x float>, float } %.fca.1.insert.i26
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.acos.f32(float) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sin.f32(float) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.asin.f64(double) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #19

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12BoneOverrideESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !673
  %.not = icmp ugt i64 %i.b, 20
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.06.016 = load ptr, ptr %i.c, align 8, !tbaa !41 ; 3 uses
  %.not1117 = icmp eq ptr %.sroa.06.016, null
  br i1 %.not1117, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12BoneOverrideESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !60
  %.fr24 = freeze i64 %i.e                        ; 3 uses
  %i.f = icmp eq i64 %.fr24, 0
  %i.g = load ptr, ptr %1, align 8
  br i1 %i.f, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_12BoneOverrideENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread10.us
  %.sroa.06.018.us = phi ptr [ %.sroa.06.0.us, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_12BoneOverrideENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread10.us ], [ %.sroa.06.016, %.lr.ph ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.06.018.us, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !60
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12BoneOverrideESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_12BoneOverrideENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread10.us

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_12BoneOverrideENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread10.us: ; preds = %.lr.ph.split.us
  %.sroa.06.0.us = load ptr, ptr %.sroa.06.018.us, align 8, !tbaa !41 ; 2 uses
  %.not11.us = icmp eq ptr %.sroa.06.0.us, null
  br i1 %.not11.us, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12BoneOverrideESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %.lr.ph.split.us, !llvm.loop !1012

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_12BoneOverrideENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread10
  %.sroa.06.018 = phi ptr [ %.sroa.06.0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_12BoneOverrideENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread10 ], [ %.sroa.06.016, %.lr.ph ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.06.018, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !60
  %i.m = icmp eq i64 %.fr24, %i.l
  br i1 %i.m, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_12BoneOverrideENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISA_Lb1EEE.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_12BoneOverrideENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread10

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_12BoneOverrideENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISA_Lb1EEE.exit: ; preds = %.lr.ph.split
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.06.018, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !134
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.g, ptr %i.o, i64 %.fr24)
  %i.p = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.p, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12BoneOverrideESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_12BoneOverrideENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread10

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_12BoneOverrideENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread10: ; preds = %.lr.ph.split, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_12BoneOverrideENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISA_Lb1EEE.exit
  %.sroa.06.0 = load ptr, ptr %.sroa.06.018, align 8, !tbaa !41 ; 2 uses
  %.not11 = icmp eq ptr %.sroa.06.0, null
  br i1 %.not11, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12BoneOverrideESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %.lr.ph.split, !llvm.loop !1012

bb.c:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %1, align 8, !tbaa !134
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !60
  %i.t = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %i.q, i64 noundef %i.s, i64 noundef 3339675911)
          to label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_12BoneOverrideENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit unwind label %bb.d ; 3 uses

bb.d:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #38
  unreachable

_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_12BoneOverrideENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit: ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !126  ; 3 uses
  %i.y = urem i64 %i.t, %i.x                      ; 3 uses
  %i.z = load ptr, ptr %0, align 8, !tbaa !125
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.y
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !609 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12BoneOverrideESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_12BoneOverrideENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !41 ; 3 uses
  %i.ad = load i64, ptr %i.r, align 8
  %.fr22.i.i = freeze i64 %i.ad                   ; 3 uses
  %i.ae = icmp eq i64 %.fr22.i.i, 0
  %i.af = load ptr, ptr %1, align 8
  %.phi.trans.insert25.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 160
  %.pre26.i.i = load i64, ptr %.phi.trans.insert25.i.i, align 8, !tbaa !611 ; 2 uses
  br i1 %i.ae, label %.split.us.i.i, label %.split.i.i

.split.us.i.i:                                    ; preds = %bb.e, %bb.g
  %i.ag = phi i64 [ %i.an, %bb.g ], [ %.pre26.i.i, %bb.e ]
  %.0.us.i.i = phi ptr [ %i.al, %bb.g ], [ %i.ac, %bb.e ] ; 3 uses
  %i.ah = icmp eq i64 %i.t, %i.ag
  br i1 %i.ah, label %bb.f, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_12BoneOverrideENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread.us.i.i

bb.f:                                             ; preds = %.split.us.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.us.i.i, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !60
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12BoneOverrideESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_12BoneOverrideENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread.us.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_12BoneOverrideENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread.us.i.i: ; preds = %bb.f, %.split.us.i.i
  %i.al = load ptr, ptr %.0.us.i.i, align 8, !tbaa !41 ; 3 uses
  %.not18.us.i.i = icmp eq ptr %i.al, null
  br i1 %.not18.us.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12BoneOverrideESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_12BoneOverrideENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread.us.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 160
  %i.an = load i64, ptr %i.am, align 8, !tbaa !611 ; 2 uses
  %i.ao = urem i64 %i.an, %i.x
  %.not19.us.i.i = icmp eq i64 %i.ao, %i.y
  br i1 %.not19.us.i.i, label %.split.us.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12BoneOverrideESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, !llvm.loop !22

.split.i.i:                                       ; preds = %bb.e, %bb.i
  %i.ap = phi i64 [ %i.az, %bb.i ], [ %.pre26.i.i, %bb.e ]
  %.0.i.i = phi ptr [ %i.ax, %bb.i ], [ %i.ac, %bb.e ] ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.ar = icmp eq i64 %i.t, %i.ap
  br i1 %i.ar, label %bb.h, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_12BoneOverrideENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread.i.i

bb.h:                                             ; preds = %.split.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !60
  %i.au = icmp eq i64 %.fr22.i.i, %i.at
  br i1 %i.au, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_12BoneOverrideENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISA_Lb1EEE.exit.i.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_12BoneOverrideENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_12BoneOverrideENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISA_Lb1EEE.exit.i.i: ; preds = %bb.h
  %i.av = load ptr, ptr %i.aq, align 8, !tbaa !134
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.af, ptr %i.av, i64 %.fr22.i.i)
  %i.aw = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.aw, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12BoneOverrideESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_12BoneOverrideENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_12BoneOverrideENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_12BoneOverrideENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISA_Lb1EEE.exit.i.i, %bb.h, %.split.i.i
  %i.ax = load ptr, ptr %.0.i.i, align 8, !tbaa !41 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.ax, null
  br i1 %.not18.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12BoneOverrideESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %bb.i

bb.i:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_12BoneOverrideENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 160
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !611 ; 2 uses
  %i.ba = urem i64 %i.az, %i.x
  %.not19.i.i = icmp eq i64 %i.ba, %i.y
  br i1 %.not19.i.i, label %.split.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12BoneOverrideESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, !llvm.loop !22

_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12BoneOverrideESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_12BoneOverrideENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISA_Lb1EEE.exit, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_12BoneOverrideENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread10, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_12BoneOverrideENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread10.us, %.lr.ph.split.us, %bb.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_12BoneOverrideENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_12BoneOverrideENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISA_Lb1EEE.exit.i.i, %bb.g, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_12BoneOverrideENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread.us.i.i, %bb.f, %bb.b, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_12BoneOverrideENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit
  %.sroa.06.1 = phi ptr [ null, %bb.b ], [ null, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_12BoneOverrideENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_12BoneOverrideENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread10.us ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_12BoneOverrideENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread.i.i ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_12BoneOverrideENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread.us.i.i ], [ %.0.us.i.i, %bb.f ], [ null, %bb.g ], [ %.0.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_12BoneOverrideENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISA_Lb1EEE.exit.i.i ], [ null, %bb.i ], [ %.sroa.06.018.us, %.lr.ph.split.us ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_12BoneOverrideENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread10 ], [ %.sroa.06.018, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_12BoneOverrideENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISA_Lb1EEE.exit ]
  ret ptr %.sroa.06.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(120) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_12BoneOverrideESaISA_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Hashtable<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, BoneOverride>, std::allocator<std::pair<const std::__cxx11::basic_string<char>, BoneOverride>>, std::__detail::_Select1st, std::equal_to<std::__cxx11::basic_string<char>>, std::hash<std::__cxx11::basic_string<char>>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, false, true>>::_Scoped_node", align 8 ; 6 uses
  %3 = alloca %"class.std::tuple.798", align 8    ; 4 uses
  %4 = alloca %"class.std::tuple.801", align 1    ; 3 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !134
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !60
  %i.d = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %i.a, i64 noundef %i.c, i64 noundef 3339675911)
          to label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_12BoneOverrideENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit unwind label %bb.b ; 4 uses

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #38
  unreachable

_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_12BoneOverrideENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !126  ; 3 uses
  %i.i = urem i64 %i.d, %i.h                      ; 4 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !125
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !609  ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %.loopexit26, label %bb.c
end_hunk_6
