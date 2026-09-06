Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/GenMesh?download=true
inline.NumInlined: 678
inline.NumDeleted: 216
begin_hunk_0_@_ZN7GenMeshC2EPK9InputFile:._crit_edge.i.i
  br i1 %i.el, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit67.thread
  %i.em = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.en = load double, ptr %i.em, align 8, !tbaa !19
  br label %bb.ad

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit67.thread83: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit67
  %i.eo = icmp samesign ugt i64 %i.dj, 2
  br i1 %i.eo, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit67.thread83
  %i.ep = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !19
  %i.er = fmul double %i.eq, f0x400921FB54442D18
  br label %bb.ac

bb.ac:                                            ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit67.thread83, %bb.ab
  %i.es = phi double [ %i.er, %bb.ab ], [ f0x4071ABE4B73FEFB5, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit67.thread83 ]
  %i.et = fdiv double %i.es, 1.800000e+02
  br label %bb.ad

bb.ad:                                            ; preds = %bb.aa, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit67.thread, %bb.ac
  %.sink = phi double [ %i.et, %bb.ac ], [ %i.en, %bb.aa ], [ 1.000000e+00, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit67.thread ] ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %.sink, ptr %i.eu, align 8, !tbaa !57
  %i.ev = icmp eq i64 %i.di, 32
  br i1 %i.ev, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ew = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !19
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %i.ey = phi double [ %i.ex, %bb.ae ], [ 1.000000e+00, %bb.ad ] ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 48
  store double %i.ey, ptr %i.ez, align 8, !tbaa !58
  %i.fa = icmp slt i32 %i.dq, 1
  %i.fb = icmp slt i32 %i.dx, 1
  %or.cond85 = select i1 %i.fa, i1 true, i1 %i.fb
  br i1 %or.cond85, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fc = fcmp ugt double %.sink, 0.000000e+00
  %i.fd = fcmp ugt double %i.ey, 0.000000e+00
  %or.cond = select i1 %i.fc, i1 %i.fd, i1 false
  br i1 %or.cond, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.fe = load i32, ptr @_ZN8Parallel4mypeE, align 4, !tbaa !9
  %i.ff = icmp eq i32 %i.fe, 0
  br i1 %i.ff, label %bb.ai, label %_ZNSolsEPFRSoS_E.exit71

bb.ai:                                            ; preds = %bb.ah
  %i.fg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.10, i64 noundef 42)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69 unwind label %bb.r ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69: ; preds = %bb.ai
  %i.fh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr)
          to label %_ZNSolsEPFRSoS_E.exit71 unwind label %bb.r, !inline_history !50 ; 0 uses

_ZNSolsEPFRSoS_E.exit71:                          ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69, %bb.ah
  call void @exit(i32 noundef 1) #17
  unreachable

bb.aj:                                            ; preds = %bb.ag
  br i1 %i.ea, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZNSt6vectorIdSaIdEED2Ev.exit77

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.aj
  %i.fi = load ptr, ptr %0, align 8, !tbaa !17    ; 2 uses
  %i.fj = load i16, ptr %i.fi, align 1
  %i.fk = xor i16 %i.fj, 26992
  %i.fl = getelementptr i8, ptr %i.fi, i64 2
  %i.fm = load i8, ptr %i.fl, align 1
  %i.fn = zext i8 %i.fm to i16
  %i.fo = xor i16 %i.fn, 101
  %i.fp = or i16 %i.fk, %i.fo
  %i.fq = icmp ne i16 %i.fp, 0                    ; 2 uses
  %i.fr = zext i1 %i.fq to i32                    ; 0 uses
  %i.fs = fcmp ult double %.sink, f0x401921FB54442D18
  %or.cond86 = or i1 %i.fs, %i.fq
  br i1 %or.cond86, label %_ZNSt6vectorIdSaIdEED2Ev.exit77, label %bb.ak

bb.ak:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ft = load i32, ptr @_ZN8Parallel4mypeE, align 4, !tbaa !9
  %i.fu = icmp eq i32 %i.ft, 0
  br i1 %i.fu, label %bb.al, label %_ZNSolsEPFRSoS_E.exit75

bb.al:                                            ; preds = %bb.ak
  %i.fv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.11, i64 noundef 38)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73 unwind label %bb.r ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73: ; preds = %bb.al
  %i.fw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr)
          to label %_ZNSolsEPFRSoS_E.exit75 unwind label %bb.r, !inline_history !50 ; 0 uses

_ZNSolsEPFRSoS_E.exit75:                          ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73, %bb.ak
  call void @exit(i32 noundef 1) #17
  unreachable

_ZNSt6vectorIdSaIdEED2Ev.exit77:                  ; preds = %bb.aj, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.fx = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !55
  %i.fz = ptrtoint ptr %i.fy to i64
  %i.ga = sub i64 %i.fz, %i.dh
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.ga) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  ret void

_ZNSt6vectorIdSaIdEED2Ev.exit61:                  ; preds = %bb.s, %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59
  %.pn13 = phi { ptr, i32 } [ %i.co, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59 ], [ %i.cz, %bb.r ], [ %i.cz, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit61, %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34
  %.pn15 = phi { ptr, i32 } [ %i.bb, %bb.j ], [ %.pn13, %_ZNSt6vectorIdSaIdEED2Ev.exit61 ], [ %i.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ]
  %i.gb = load ptr, ptr %0, align 8, !tbaa !17    ; 2 uses
  %i.gc = icmp eq ptr %i.gb, %i.a
  br i1 %i.gc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78: ; preds = %bb.am
  %i.gd = load i64, ptr %i.a, align 8, !tbaa !16
  %i.ge = add i64 %i.gd, 1
  call void @_ZdlPvm(ptr noundef %i.gb, i64 noundef %i.ge) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78
  resume { ptr, i32 } %.pn15
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZNK9InputFile9getStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #4

declare void @_ZNK9InputFile13getDoubleListERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIdSaIdEE(ptr dead_on_unwind writable sret(%"class.std::vector") align 8, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7GenMeshD2Ev(ptr nofree noundef nonnull readonly align 8 captures(address) dead_on_return(88) dereferenceable(88) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !17     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8, !tbaa !16
  %i.e = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7GenMesh8generateERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0, ptr noundef nonnull align 1 %1, ptr nofree noundef nonnull align 1 captures(none) %2, ptr nofree noundef nonnull align 1 captures(none) %3, ptr noundef nonnull align 1 %4, ptr nofree noundef nonnull align 1 captures(none) %5, ptr nofree noundef nonnull align 1 captures(none) %6, ptr nofree noundef nonnull align 1 captures(none) %7, ptr nofree noundef nonnull align 1 captures(none) %8, ptr nofree noundef nonnull align 1 captures(none) %9, ptr nofree noundef nonnull align 1 captures(none) %10) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.c = load <2 x i32>, ptr %i.a, align 8, !tbaa !9
  %i.d = sitofp <2 x i32> %i.c to <2 x double>    ; 4 uses
  %i.e = extractelement <2 x double> %i.d, i64 0
  %i.f = extractelement <2 x double> %i.d, i64 1
  %i.g = fcmp ogt double %i.e, %i.f               ; 2 uses
  %i.h = insertelement <2 x i1> poison, i1 %i.g, i64 0
  %i.i = shufflevector <2 x i1> %i.h, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.j = shufflevector <2 x double> %i.d, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.k = select <2 x i1> %i.i, <2 x double> %i.d, <2 x double> %i.j ; 4 uses
  %i.l = load i32, ptr @_ZN8Parallel5numpeE, align 4, !tbaa !9 ; 6 uses
  %i.m = sitofp i32 %i.l to double
  %i.n = extractelement <2 x double> %i.k, i64 1
  %i.o = fmul nnan double %i.n, %i.m
  %i.p = extractelement <2 x double> %i.k, i64 0
  %i.q = fdiv double %i.o, %i.p
  %i.r = tail call double @sqrt(double noundef %i.q) #15, !tbaa !9 ; 2 uses
  %i.s = fadd double %i.r, f0x3D719799812DEA11
  %i.t = tail call double @llvm.floor.f64(double %i.s)
  %i.u = fptosi double %i.t to i32
  %.sroa.speculated20.i = tail call i32 @llvm.smax.i32(i32 %i.u, i32 1)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.038.i = phi i32 [ %.sroa.speculated20.i, %bb.a ], [ %i.x, %bb.b ] ; 5 uses
  %i.v = srem i32 %i.l, %.038.i
  %i.w = sdiv i32 %i.l, %.038.i
  %.not.i = icmp eq i32 %i.v, 0
  %i.x = add nsw i32 %.038.i, -1
  br i1 %.not.i, label %bb.c, label %bb.b, !llvm.loop !0

bb.c:                                             ; preds = %bb.b
  %i.y = fadd double %i.r, f0xBD719799812DEA11
  %i.z = tail call double @llvm.ceil.f64(double %i.y)
  %i.aa = fptosi double %i.z to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i32 [ %i.aa, %bb.c ], [ %i.ad, %bb.d ] ; 5 uses
  %i.ab = srem i32 %i.l, %.0.i
  %i.ac = sdiv i32 %i.l, %.0.i
  %.not11.i = icmp eq i32 %i.ab, 0
  %i.ad = add nsw i32 %.0.i, 1
  br i1 %.not11.i, label %bb.e, label %bb.d, !llvm.loop !1

bb.e:                                             ; preds = %bb.d
  %i.ae = insertelement <2 x i32> poison, i32 %.0.i, i64 0
  %i.af = insertelement <2 x i32> %i.ae, i32 %.038.i, i64 1
  %i.ag = sitofp <2 x i32> %i.af to <2 x double>
  %i.ah = shufflevector <2 x double> %i.k, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ai = fdiv <2 x double> %i.ah, %i.ag          ; 2 uses
  %i.aj = insertelement <2 x i32> poison, i32 %i.ac, i64 0
  %i.ak = insertelement <2 x i32> %i.aj, i32 %i.w, i64 1
  %i.al = sitofp <2 x i32> %i.ak to <2 x double>
  %i.am = shufflevector <2 x double> %i.k, <2 x double> poison, <2 x i32> zeroinitializer
  %i.an = fdiv <2 x double> %i.am, %i.al          ; 2 uses
  %i.ao = fcmp olt <2 x double> %i.ai, %i.an
  %i.ap = select <2 x i1> %i.ao, <2 x double> %i.an, <2 x double> %i.ai ; 2 uses
  %i.aq = extractelement <2 x double> %i.ap, i64 0
  %i.ar = extractelement <2 x double> %i.ap, i64 1
  %i.as = fcmp ole double %i.ar, %i.aq
  %i.at = select i1 %i.as, i32 %.038.i, i32 %.0.i ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i32 %i.at, ptr %i.au, align 8, !tbaa !24
  %i.av = sdiv i32 %i.l, %i.at                    ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !25
  br i1 %i.g, label %bb.f, label %_ZN7GenMesh9calcNumPEEv.exit

bb.f:                                             ; preds = %bb.e
  store i32 %i.av, ptr %i.au, align 8, !tbaa !9
  store i32 %i.at, ptr %i.aw, align 4, !tbaa !9
  br label %_ZN7GenMesh9calcNumPEEv.exit

_ZN7GenMesh9calcNumPEEv.exit:                     ; preds = %bb.e, %bb.f
  %i.ax = phi i32 [ %i.at, %bb.f ], [ %i.av, %bb.e ] ; 2 uses
  %i.ay = phi i32 [ %i.av, %bb.f ], [ %i.at, %bb.e ] ; 4 uses
  %i.az = load i32, ptr @_ZN8Parallel4mypeE, align 4, !tbaa !9 ; 2 uses
  %i.ba = srem i32 %i.az, %i.ay                   ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !26
  %i.bc = sdiv i32 %i.az, %i.ay                   ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !27
  %i.be = load i32, ptr %i.a, align 8, !tbaa !21  ; 2 uses
  %i.bf = mul nsw i32 %i.be, %i.ba
  %i.bg = sdiv i32 %i.bf, %i.ay                   ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %i.bg, ptr %i.bh, align 8, !tbaa !28
  %i.bi = add nsw i32 %i.ba, 1
  %i.bj = mul nsw i32 %i.be, %i.bi
  %i.bk = sdiv i32 %i.bj, %i.ay
  %i.bl = sub nsw i32 %i.bk, %i.bg
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %i.bl, ptr %i.bm, align 8, !tbaa !29
  %i.bn = load i32, ptr %i.b, align 4, !tbaa !22  ; 2 uses
  %i.bo = mul nsw i32 %i.bn, %i.bc
  %i.bp = sdiv i32 %i.bo, %i.ax                   ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !30
  %i.br = add nsw i32 %i.bc, 1
  %i.bs = mul nsw i32 %i.bn, %i.br
  %i.bt = sdiv i32 %i.bs, %i.ax
  %i.bu = sub nsw i32 %i.bt, %i.bp
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !31
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !15 ; 3 uses
  switch i64 %i.bx, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit35.thread38 [
    i64 3, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 4, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit33
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZN7GenMesh9calcNumPEEv.exit
  %i.by = load ptr, ptr %0, align 8, !tbaa !17    ; 3 uses
  %i.bz = load i16, ptr %i.by, align 1
  %i.ca = xor i16 %i.bz, 26992
  %i.cb = getelementptr i8, ptr %i.by, i64 2
  %i.cc = load i8, ptr %i.cb, align 1
  %i.cd = zext i8 %i.cc to i16
  %i.ce = xor i16 %i.cd, 101
  %i.cf = or i16 %i.ca, %i.ce
  %i.cg = icmp ne i16 %i.cf, 0
  %i.ch = zext i1 %i.cg to i32
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit35

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  tail call void @_ZN7GenMesh11generatePieERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %2, ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %5, ptr noundef nonnull align 1 %6, ptr noundef nonnull align 1 %7, ptr noundef nonnull align 1 %8, ptr noundef nonnull align 1 %9, ptr noundef nonnull align 1 %10)
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit35.thread38

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit33: ; preds = %_ZN7GenMesh9calcNumPEEv.exit
  %.pre = load ptr, ptr %0, align 8, !tbaa !17
  %bcmp.i32 = tail call i32 @bcmp(ptr %.pre, ptr nonnull @.str.4, i64 %i.bx)
  %i.cj = icmp eq i32 %bcmp.i32, 0
  br i1 %i.cj, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit33.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit35.thread38

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit33.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit33
  tail call void @_ZN7GenMesh12generateRectERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %2, ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %5, ptr noundef nonnull align 1 %6, ptr noundef nonnull align 1 %7, ptr noundef nonnull align 1 %8, ptr noundef nonnull align 1 %9, ptr noundef nonnull align 1 %10)
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit35.thread38

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit35: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %bcmp.i34 = tail call i32 @bcmp(ptr nonnull %i.by, ptr nonnull @.str.5, i64 %i.bx)
  %i.ck = icmp eq i32 %bcmp.i34, 0
  br i1 %i.ck, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit35.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit35.thread38

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit35.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit35
  tail call void @_ZN7GenMesh11generateHexERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %2, ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %5, ptr noundef nonnull align 1 %6, ptr noundef nonnull align 1 %7, ptr noundef nonnull align 1 %8, ptr noundef nonnull align 1 %9, ptr noundef nonnull align 1 %10)
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit35.thread38

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit35.thread38: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit33, %_ZN7GenMesh9calcNumPEEv.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit33.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit35.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit35, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define dso_local void @_ZN7GenMesh9calcNumPEEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load <2 x i32>, ptr %i.a, align 8, !tbaa !9
  %i.c = sitofp <2 x i32> %i.b to <2 x double>    ; 4 uses
  %i.d = extractelement <2 x double> %i.c, i64 0
  %i.e = extractelement <2 x double> %i.c, i64 1
  %i.f = fcmp ogt double %i.d, %i.e               ; 2 uses
  %i.g = insertelement <2 x i1> poison, i1 %i.f, i64 0
  %i.h = shufflevector <2 x i1> %i.g, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.i = shufflevector <2 x double> %i.c, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.j = select <2 x i1> %i.h, <2 x double> %i.c, <2 x double> %i.i ; 4 uses
  %i.k = load i32, ptr @_ZN8Parallel5numpeE, align 4, !tbaa !9 ; 6 uses
  %i.l = sitofp i32 %i.k to double
  %i.m = extractelement <2 x double> %i.j, i64 1
  %i.n = fmul nnan double %i.m, %i.l
  %i.o = extractelement <2 x double> %i.j, i64 0
  %i.p = fdiv double %i.n, %i.o
  %i.q = tail call double @sqrt(double noundef %i.p) #15, !tbaa !9 ; 2 uses
  %i.r = fadd double %i.q, f0x3D719799812DEA11
  %i.s = tail call double @llvm.floor.f64(double %i.r)
  %i.t = fptosi double %i.s to i32
  %.sroa.speculated20 = tail call i32 @llvm.smax.i32(i32 %i.t, i32 1)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.038 = phi i32 [ %.sroa.speculated20, %bb.a ], [ %i.w, %bb.b ] ; 5 uses
  %i.u = srem i32 %i.k, %.038
  %i.v = sdiv i32 %i.k, %.038
  %.not = icmp eq i32 %i.u, 0
  %i.w = add nsw i32 %.038, -1
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !0

bb.c:                                             ; preds = %bb.b
  %i.x = fadd double %i.q, f0xBD719799812DEA11
  %i.y = tail call double @llvm.ceil.f64(double %i.x)
  %i.z = fptosi double %i.y to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i32 [ %i.z, %bb.c ], [ %i.ac, %bb.d ] ; 5 uses
  %i.aa = srem i32 %i.k, %.0
  %i.ab = sdiv i32 %i.k, %.0
  %.not11 = icmp eq i32 %i.aa, 0
  %i.ac = add nsw i32 %.0, 1
  br i1 %.not11, label %bb.e, label %bb.d, !llvm.loop !1

bb.e:                                             ; preds = %bb.d
  %i.ad = insertelement <2 x i32> poison, i32 %.0, i64 0
  %i.ae = insertelement <2 x i32> %i.ad, i32 %.038, i64 1
  %i.af = sitofp <2 x i32> %i.ae to <2 x double>
  %i.ag = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ah = fdiv <2 x double> %i.ag, %i.af          ; 2 uses
  %i.ai = insertelement <2 x i32> poison, i32 %i.ab, i64 0
  %i.aj = insertelement <2 x i32> %i.ai, i32 %i.v, i64 1
  %i.ak = sitofp <2 x i32> %i.aj to <2 x double>
  %i.al = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> zeroinitializer
  %i.am = fdiv <2 x double> %i.al, %i.ak          ; 2 uses
  %i.an = fcmp olt <2 x double> %i.ah, %i.am
  %i.ao = select <2 x i1> %i.an, <2 x double> %i.am, <2 x double> %i.ah ; 2 uses
  %i.ap = extractelement <2 x double> %i.ao, i64 0
  %i.aq = extractelement <2 x double> %i.ao, i64 1
  %i.ar = fcmp ole double %i.aq, %i.ap
  %i.as = select i1 %i.ar, i32 %.038, i32 %.0     ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i32 %i.as, ptr %i.at, align 8, !tbaa !24
  %i.au = sdiv i32 %i.k, %i.as                    ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  store i32 %i.au, ptr %i.av, align 4, !tbaa !25
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 %i.au, ptr %i.at, align 8, !tbaa !9
  store i32 %i.as, ptr %i.av, align 4, !tbaa !9
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.aw = phi i32 [ %i.au, %bb.f ], [ %i.as, %bb.e ] ; 2 uses
  %i.ax = load i32, ptr @_ZN8Parallel4mypeE, align 4, !tbaa !9 ; 2 uses
  %i.ay = srem i32 %i.ax, %i.aw
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.ay, ptr %i.az, align 8, !tbaa !26
  %i.ba = sdiv i32 %i.ax, %i.aw
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !27
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7GenMesh11generatePieERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, ptr noundef nonnull align 1 %1, ptr nofree noundef nonnull align 1 captures(none) %2, ptr nofree noundef nonnull align 1 captures(none) %3, ptr nofree noundef nonnull align 1 captures(none) %4, ptr nofree noundef nonnull align 1 captures(none) %5, ptr nofree noundef nonnull align 1 captures(none) %6, ptr nofree noundef nonnull align 1 captures(none) %7, ptr nofree noundef nonnull align 1 captures(none) %8, ptr nofree noundef nonnull align 1 captures(none) %9, ptr nofree noundef nonnull align 1 captures(none) %10) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %11 = alloca %struct.double2, align 8           ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !29   ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !31   ; 9 uses
  %i.e = mul nsw i32 %i.d, %i.b                   ; 3 uses
  %i.f = add nsw i32 %i.b, 1                      ; 11 uses
  %i.g = add i32 %i.d, 1                          ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 13 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !27
  %i.j = icmp eq i32 %i.i, 0
  %i.k = mul nsw i32 %i.f, %i.d                   ; 2 uses
  %i.l = add nsw i32 %i.k, 1
  %i.m = mul nsw i32 %i.g, %i.f                   ; 2 uses
  %i.n = select i1 %i.j, i32 %i.l, i32 %i.m       ; 2 uses
  %i.o = sext i32 %i.n to i64                     ; 3 uses
  %i.p = icmp slt i32 %i.n, 0
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !34
  %i.s = load ptr, ptr %1, align 8, !tbaa !35     ; 11 uses
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64                 ; 4 uses
  %i.v = sub i64 %i.t, %i.u
  %i.w = ashr exact i64 %i.v, 4
  %i.x = icmp ult i64 %i.w, %i.o
  br i1 %i.x, label %_ZNSt12_Vector_baseI7double2SaIS0_EE11_M_allocateEm.exit.i.i, label %_ZNSt6vectorI7double2SaIS0_EE7reserveEm.exit

_ZNSt12_Vector_baseI7double2SaIS0_EE11_M_allocateEm.exit.i.i: ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !36   ; 3 uses
  %i.aa = ptrtoint ptr %i.z to i64                ; 3 uses
  %i.ab = sub i64 %i.aa, %i.u
  %i.ac = shl nuw nsw i64 %i.o, 4
  %i.ad = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #19 ; 12 uses
  %.not13.i.i.i.i.i.i = icmp eq ptr %i.s, %i.z
  br i1 %.not13.i.i.i.i.i.i, label %_ZNSt6vectorI7double2SaIS0_EE20_M_allocate_and_copyIPKS0_EEPS0_mT_S7_.exit.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNSt12_Vector_baseI7double2SaIS0_EE11_M_allocateEm.exit.i.i
  %i.ae = add i64 %i.aa, -16
  %i.af = sub i64 %i.ae, %i.u                     ; 2 uses
  %i.ag = lshr i64 %i.af, 4
  %i.ah = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.af, 368
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader838, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.ai = add i64 %i.aa, -16
  %i.aj = sub i64 %i.ai, %i.u
  %i.ak = and i64 %i.aj, -16                      ; 2 uses
  %i.al = or disjoint i64 %i.ak, 8                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ad, i64 %i.al
  %scevgep786 = getelementptr i8, ptr %i.s, i64 %i.al
  %scevgep787 = getelementptr i8, ptr %i.ad, i64 8
  %i.am = add i64 %i.ak, 16                       ; 2 uses
  %scevgep788 = getelementptr i8, ptr %i.ad, i64 %i.am
  %scevgep789 = getelementptr i8, ptr %i.s, i64 8
  %scevgep790 = getelementptr i8, ptr %i.s, i64 %i.am
  %bound0 = icmp ult ptr %i.ad, %scevgep786
  %bound1 = icmp ult ptr %i.s, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0791 = icmp ult ptr %scevgep787, %scevgep790
  %bound1792 = icmp ult ptr %scevgep789, %scevgep788
  %found.conflict793 = and i1 %bound0791, %bound1792
  %conflict.rdx = or i1 %found.conflict, %found.conflict793
  br i1 %conflict.rdx, label %.lr.ph.i.i.i.i.i.i.preheader838, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ah, 2305843009213693950     ; 3 uses
  %i.an = shl i64 %n.vec, 4                       ; 2 uses
  %i.ao = getelementptr i8, ptr %i.ad, i64 %i.an
  %i.ap = getelementptr i8, ptr %i.s, i64 %i.an
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aq = shl i64 %index, 4                       ; 3 uses
  %i.ar = or disjoint i64 %i.aq, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ad, i64 %i.aq
  %next.gep794 = getelementptr i8, ptr %i.ad, i64 %i.ar
  %next.gep795 = getelementptr i8, ptr %i.s, i64 %i.aq
  %next.gep796 = getelementptr i8, ptr %i.s, i64 %i.ar
  %wide.load = load <2 x double>, ptr %next.gep795, align 8
  %wide.load797 = load <2 x double>, ptr %next.gep796, align 8
  store <2 x double> %wide.load, ptr %next.gep, align 8
  store <2 x double> %wide.load797, ptr %next.gep794, align 8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !59

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorI7double2SaIS0_EE20_M_allocate_and_copyIPKS0_EEPS0_mT_S7_.exit.i, label %.lr.ph.i.i.i.i.i.i.preheader838

.lr.ph.i.i.i.i.i.i.preheader838:                  ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.015.i.i.i.i.i.i.ph = phi ptr [ %i.ad, %vector.memcheck ], [ %i.ad, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ao, %middle.block ]
  %.01214.i.i.i.i.i.i.ph = phi ptr [ %i.s, %vector.memcheck ], [ %i.s, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ap, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader838, %.lr.ph.i.i.i.i.i.i
  %.015.i.i.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i.i ], [ %.015.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader838 ] ; 2 uses
  %.01214.i.i.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i.i ], [ %.01214.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader838 ] ; 2 uses
  %i.at = load <2 x double>, ptr %.01214.i.i.i.i.i.i, align 8, !tbaa !19
  store <2 x double> %i.at, ptr %.015.i.i.i.i.i.i, align 8, !tbaa !19
  %i.au = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.i = icmp eq ptr %i.au, %i.z
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorI7double2SaIS0_EE20_M_allocate_and_copyIPKS0_EEPS0_mT_S7_.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !60

_ZNSt6vectorI7double2SaIS0_EE20_M_allocate_and_copyIPKS0_EEPS0_mT_S7_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseI7double2SaIS0_EE11_M_allocateEm.exit.i.i
  %i.aw = load ptr, ptr %1, align 8, !tbaa !35    ; 3 uses
  %.not.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseI7double2SaIS0_EE13_M_deallocateEPS0_m.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorI7double2SaIS0_EE20_M_allocate_and_copyIPKS0_EEPS0_mT_S7_.exit.i
  %i.ax = load ptr, ptr %i.q, align 8, !tbaa !34
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = sub i64 %i.ay, %i.az
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.ba) #16
  br label %_ZNSt12_Vector_baseI7double2SaIS0_EE13_M_deallocateEPS0_m.exit.i

_ZNSt12_Vector_baseI7double2SaIS0_EE13_M_deallocateEPS0_m.exit.i: ; preds = %bb.d, %_ZNSt6vectorI7double2SaIS0_EE20_M_allocate_and_copyIPKS0_EEPS0_mT_S7_.exit.i
  store ptr %i.ad, ptr %1, align 8, !tbaa !35
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  store ptr %i.bb, ptr %i.y, align 8, !tbaa !36
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %i.o
  store ptr %i.bc, ptr %i.q, align 8, !tbaa !34
  br label %_ZNSt6vectorI7double2SaIS0_EE7reserveEm.exit

_ZNSt6vectorI7double2SaIS0_EE7reserveEm.exit:     ; preds = %bb.c, %_ZNSt12_Vector_baseI7double2SaIS0_EE13_M_deallocateEPS0_m.exit.i
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bf = load <2 x double>, ptr %i.bd, align 8, !tbaa !19
  %i.bg = load <2 x i32>, ptr %i.be, align 8, !tbaa !9
  %i.bh = sitofp <2 x i32> %i.bg to <2 x double>
  %i.bi = fdiv <2 x double> %i.bf, %i.bh          ; 2 uses
  %.not532 = icmp slt i32 %i.d, 0
  br i1 %.not532, label %._crit_edge, label %.lr.ph534

.lr.ph534:                                        ; preds = %_ZNSt6vectorI7double2SaIS0_EE7reserveEm.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 84
  %.not152530 = icmp slt i32 %i.b, 0
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.bm = extractelement <2 x double> %i.bi, i64 1
end_hunk_0
