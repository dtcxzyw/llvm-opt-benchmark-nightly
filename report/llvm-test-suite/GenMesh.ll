Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/GenMesh?download=true
inline.NumInlined: 678
inline.NumDeleted: 216
begin_hunk_0_@_ZN7GenMeshC2EPK9InputFile:._crit_edge.i.i
  br i1 %i.ea, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit67, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit67.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit67: ; preds = %bb.z
  %i.eb = load ptr, ptr %0, align 8, !tbaa !16    ; 2 uses
  %i.ec = load i16, ptr %i.eb, align 1
  %i.ed = xor i16 %i.ec, 26992
  %i.ee = getelementptr i8, ptr %i.eb, i64 2
  %i.ef = load i8, ptr %i.ee, align 1
  %i.eg = zext i8 %i.ef to i16
  %i.eh = xor i16 %i.eg, 101
  %i.ei = or i16 %i.ed, %i.eh
  %i.ej = icmp ne i16 %i.ei, 0
  %i.ek = zext i1 %i.ej to i32
  %.not89 = icmp eq i32 %i.ek, 0
  br i1 %.not89, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit67.thread83, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit67.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit67.thread: ; preds = %bb.z, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit67
  %i.el = icmp samesign ugt i64 %i.dj, 2
  br i1 %i.el, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit67.thread
  %i.em = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.en = load double, ptr %i.em, align 8, !tbaa !23
  br label %bb.ad

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit67.thread83: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit67
  %i.eo = icmp samesign ugt i64 %i.dj, 2
  br i1 %i.eo, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit67.thread83
  %i.ep = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !23
  %i.er = fmul double %i.eq, f0x400921FB54442D18
  br label %bb.ac

bb.ac:                                            ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit67.thread83, %bb.ab
  %i.es = phi double [ %i.er, %bb.ab ], [ f0x4071ABE4B73FEFB5, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit67.thread83 ]
  %i.et = fdiv double %i.es, 1.800000e+02
  br label %bb.ad

bb.ad:                                            ; preds = %bb.aa, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit67.thread, %bb.ac
  %.sink = phi double [ %i.et, %bb.ac ], [ %i.en, %bb.aa ], [ 1.000000e+00, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit67.thread ] ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %.sink, ptr %i.eu, align 8, !tbaa !28
  %i.ev = icmp eq i64 %i.di, 32
  br i1 %i.ev, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ew = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !23
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %i.ey = phi double [ %i.ex, %bb.ae ], [ 1.000000e+00, %bb.ad ] ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 48
  store double %i.ey, ptr %i.ez, align 8, !tbaa !29
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
  %i.fe = load i32, ptr @_ZN8Parallel4mypeE, align 4, !tbaa !4
  %i.ff = icmp eq i32 %i.fe, 0
  br i1 %i.ff, label %bb.ai, label %_ZNSolsEPFRSoS_E.exit71

bb.ai:                                            ; preds = %bb.ah
  %i.fg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.10, i64 noundef 42)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69 unwind label %bb.r ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69: ; preds = %bb.ai
  %i.fh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr)
          to label %_ZNSolsEPFRSoS_E.exit71 unwind label %bb.r, !inline_history !17 ; 0 uses

_ZNSolsEPFRSoS_E.exit71:                          ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69, %bb.ah
  call void @exit(i32 noundef 1) #17
  unreachable

bb.aj:                                            ; preds = %bb.ag
  br i1 %i.ea, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZNSt6vectorIdSaIdEED2Ev.exit77

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.aj
  %i.fi = load ptr, ptr %0, align 8, !tbaa !16    ; 2 uses
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
  %i.ft = load i32, ptr @_ZN8Parallel4mypeE, align 4, !tbaa !4
  %i.fu = icmp eq i32 %i.ft, 0
  br i1 %i.fu, label %bb.al, label %_ZNSolsEPFRSoS_E.exit75

bb.al:                                            ; preds = %bb.ak
  %i.fv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.11, i64 noundef 38)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73 unwind label %bb.r ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73: ; preds = %bb.al
  %i.fw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr)
          to label %_ZNSolsEPFRSoS_E.exit75 unwind label %bb.r, !inline_history !17 ; 0 uses

_ZNSolsEPFRSoS_E.exit75:                          ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73, %bb.ak
  call void @exit(i32 noundef 1) #17
  unreachable

_ZNSt6vectorIdSaIdEED2Ev.exit77:                  ; preds = %bb.aj, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.fx = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !21
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
  %i.gb = load ptr, ptr %0, align 8, !tbaa !16    ; 2 uses
  %i.gc = icmp eq ptr %i.gb, %i.a
  br i1 %i.gc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78: ; preds = %bb.am
  %i.gd = load i64, ptr %i.a, align 8, !tbaa !15
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
  %i.a = load ptr, ptr %0, align 8, !tbaa !16     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8, !tbaa !15
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
  %i.c = load <2 x i32>, ptr %i.a, align 8, !tbaa !4
  %i.d = sitofp <2 x i32> %i.c to <2 x double>    ; 2 uses
  %i.e = extractelement <2 x double> %i.d, i64 0  ; 3 uses
  %i.f = extractelement <2 x double> %i.d, i64 1  ; 3 uses
  %i.g = fcmp ogt double %i.e, %i.f               ; 3 uses
  %.037.i = select i1 %i.g, double %i.e, double %i.f ; 2 uses
  %.036.i = select i1 %i.g, double %i.f, double %i.e ; 2 uses
  %i.h = load i32, ptr @_ZN8Parallel5numpeE, align 4, !tbaa !4 ; 6 uses
  %i.i = sitofp i32 %i.h to double
  %i.j = fmul nnan double %.036.i, %i.i
  %i.k = fdiv double %i.j, %.037.i
  %i.l = tail call double @sqrt(double noundef %i.k) #15, !tbaa !4 ; 2 uses
  %i.m = fadd double %i.l, f0x3D719799812DEA11
  %i.n = tail call double @llvm.floor.f64(double %i.m)
  %i.o = fptosi double %i.n to i32
  %.sroa.speculated20.i = tail call i32 @llvm.smax.i32(i32 %i.o, i32 1)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.038.i = phi i32 [ %.sroa.speculated20.i, %bb.a ], [ %i.r, %bb.b ] ; 5 uses
  %i.p = srem i32 %i.h, %.038.i
  %i.q = sdiv i32 %i.h, %.038.i
  %.not.i = icmp eq i32 %i.p, 0
  %i.r = add nsw i32 %.038.i, -1
  br i1 %.not.i, label %bb.c, label %bb.b, !llvm.loop !30

bb.c:                                             ; preds = %bb.b
  %i.s = fadd double %i.l, f0xBD719799812DEA11
  %i.t = tail call double @llvm.ceil.f64(double %i.s)
  %i.u = fptosi double %i.t to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i32 [ %i.u, %bb.c ], [ %i.x, %bb.d ] ; 5 uses
  %i.v = srem i32 %i.h, %.0.i
  %i.w = sdiv i32 %i.h, %.0.i
  %.not11.i = icmp eq i32 %i.v, 0
  %i.x = add nsw i32 %.0.i, 1
  br i1 %.not11.i, label %bb.e, label %bb.d, !llvm.loop !32

bb.e:                                             ; preds = %bb.d
  %i.y = insertelement <2 x i32> poison, i32 %.038.i, i64 0
  %i.z = insertelement <2 x i32> %i.y, i32 %.0.i, i64 1
  %i.aa = sitofp <2 x i32> %i.z to <2 x double>
  %i.ab = insertelement <2 x double> poison, double %.036.i, i64 0
  %i.ac = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ad = fdiv <2 x double> %i.ac, %i.aa          ; 2 uses
  %i.ae = insertelement <2 x i32> poison, i32 %i.q, i64 0
  %i.af = insertelement <2 x i32> %i.ae, i32 %i.w, i64 1
  %i.ag = sitofp <2 x i32> %i.af to <2 x double>
  %i.ah = insertelement <2 x double> poison, double %.037.i, i64 0
  %i.ai = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aj = fdiv <2 x double> %i.ai, %i.ag          ; 2 uses
  %i.ak = fcmp olt <2 x double> %i.ad, %i.aj
  %i.al = select <2 x i1> %i.ak, <2 x double> %i.aj, <2 x double> %i.ad ; 2 uses
  %i.am = extractelement <2 x double> %i.al, i64 0
  %i.an = extractelement <2 x double> %i.al, i64 1
  %i.ao = fcmp ole double %i.am, %i.an
  %i.ap = select i1 %i.ao, i32 %.038.i, i32 %.0.i ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i32 %i.ap, ptr %i.aq, align 8, !tbaa !33
  %i.ar = sdiv i32 %i.h, %i.ap                    ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !34
  br i1 %i.g, label %bb.f, label %_ZN7GenMesh9calcNumPEEv.exit

bb.f:                                             ; preds = %bb.e
  store i32 %i.ar, ptr %i.aq, align 8, !tbaa !4
  store i32 %i.ap, ptr %i.as, align 4, !tbaa !4
  br label %_ZN7GenMesh9calcNumPEEv.exit

_ZN7GenMesh9calcNumPEEv.exit:                     ; preds = %bb.e, %bb.f
  %i.at = phi i32 [ %i.ap, %bb.f ], [ %i.ar, %bb.e ] ; 2 uses
  %i.au = phi i32 [ %i.ar, %bb.f ], [ %i.ap, %bb.e ] ; 4 uses
  %i.av = load i32, ptr @_ZN8Parallel4mypeE, align 4, !tbaa !4 ; 2 uses
  %i.aw = srem i32 %i.av, %i.au                   ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.aw, ptr %i.ax, align 8, !tbaa !35
  %i.ay = sdiv i32 %i.av, %i.au                   ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !36
  %i.ba = load i32, ptr %i.a, align 8, !tbaa !25  ; 2 uses
  %i.bb = mul nsw i32 %i.ba, %i.aw
  %i.bc = sdiv i32 %i.bb, %i.au                   ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %i.bc, ptr %i.bd, align 8, !tbaa !37
  %i.be = add nsw i32 %i.aw, 1
  %i.bf = mul nsw i32 %i.ba, %i.be
  %i.bg = sdiv i32 %i.bf, %i.au
  %i.bh = sub nsw i32 %i.bg, %i.bc
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %i.bh, ptr %i.bi, align 8, !tbaa !38
  %i.bj = load i32, ptr %i.b, align 4, !tbaa !27  ; 2 uses
  %i.bk = mul nsw i32 %i.bj, %i.ay
  %i.bl = sdiv i32 %i.bk, %i.at                   ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 %i.bl, ptr %i.bm, align 4, !tbaa !39
  %i.bn = add nsw i32 %i.ay, 1
  %i.bo = mul nsw i32 %i.bj, %i.bn
  %i.bp = sdiv i32 %i.bo, %i.at
  %i.bq = sub nsw i32 %i.bp, %i.bl
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 %i.bq, ptr %i.br, align 4, !tbaa !40
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !12 ; 3 uses
  switch i64 %i.bt, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit35.thread38 [
    i64 3, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 4, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit33
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZN7GenMesh9calcNumPEEv.exit
  %i.bu = load ptr, ptr %0, align 8, !tbaa !16    ; 3 uses
  %i.bv = load i16, ptr %i.bu, align 1
  %i.bw = xor i16 %i.bv, 26992
  %i.bx = getelementptr i8, ptr %i.bu, i64 2
  %i.by = load i8, ptr %i.bx, align 1
  %i.bz = zext i8 %i.by to i16
  %i.ca = xor i16 %i.bz, 101
  %i.cb = or i16 %i.bw, %i.ca
  %i.cc = icmp ne i16 %i.cb, 0
  %i.cd = zext i1 %i.cc to i32
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit35

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  tail call void @_ZN7GenMesh11generatePieERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %2, ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %5, ptr noundef nonnull align 1 %6, ptr noundef nonnull align 1 %7, ptr noundef nonnull align 1 %8, ptr noundef nonnull align 1 %9, ptr noundef nonnull align 1 %10)
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit35.thread38

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit33: ; preds = %_ZN7GenMesh9calcNumPEEv.exit
  %.pre = load ptr, ptr %0, align 8, !tbaa !16
  %bcmp.i32 = tail call i32 @bcmp(ptr %.pre, ptr nonnull @.str.4, i64 %i.bt)
  %i.cf = icmp eq i32 %bcmp.i32, 0
  br i1 %i.cf, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit33.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit35.thread38

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit33.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit33
  tail call void @_ZN7GenMesh12generateRectERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %2, ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %5, ptr noundef nonnull align 1 %6, ptr noundef nonnull align 1 %7, ptr noundef nonnull align 1 %8, ptr noundef nonnull align 1 %9, ptr noundef nonnull align 1 %10)
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit35.thread38

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit35: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %bcmp.i34 = tail call i32 @bcmp(ptr nonnull %i.bu, ptr nonnull @.str.5, i64 %i.bt)
  %i.cg = icmp eq i32 %bcmp.i34, 0
  br i1 %i.cg, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit35.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit35.thread38

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
  %i.b = load <2 x i32>, ptr %i.a, align 8, !tbaa !4
  %i.c = sitofp <2 x i32> %i.b to <2 x double>    ; 2 uses
  %i.d = extractelement <2 x double> %i.c, i64 0  ; 3 uses
  %i.e = extractelement <2 x double> %i.c, i64 1  ; 3 uses
  %i.f = fcmp ogt double %i.d, %i.e               ; 3 uses
  %.037 = select i1 %i.f, double %i.d, double %i.e ; 2 uses
  %.036 = select i1 %i.f, double %i.e, double %i.d ; 2 uses
  %i.g = load i32, ptr @_ZN8Parallel5numpeE, align 4, !tbaa !4 ; 6 uses
  %i.h = sitofp i32 %i.g to double
  %i.i = fmul nnan double %.036, %i.h
  %i.j = fdiv double %i.i, %.037
  %i.k = tail call double @sqrt(double noundef %i.j) #15, !tbaa !4 ; 2 uses
  %i.l = fadd double %i.k, f0x3D719799812DEA11
  %i.m = tail call double @llvm.floor.f64(double %i.l)
  %i.n = fptosi double %i.m to i32
  %.sroa.speculated20 = tail call i32 @llvm.smax.i32(i32 %i.n, i32 1)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.038 = phi i32 [ %.sroa.speculated20, %bb.a ], [ %i.q, %bb.b ] ; 5 uses
  %i.o = srem i32 %i.g, %.038
  %i.p = sdiv i32 %i.g, %.038
  %.not = icmp eq i32 %i.o, 0
  %i.q = add nsw i32 %.038, -1
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !30

bb.c:                                             ; preds = %bb.b
  %i.r = fadd double %i.k, f0xBD719799812DEA11
  %i.s = tail call double @llvm.ceil.f64(double %i.r)
  %i.t = fptosi double %i.s to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i32 [ %i.t, %bb.c ], [ %i.w, %bb.d ]  ; 5 uses
  %i.u = srem i32 %i.g, %.0
  %i.v = sdiv i32 %i.g, %.0
  %.not11 = icmp eq i32 %i.u, 0
  %i.w = add nsw i32 %.0, 1
  br i1 %.not11, label %bb.e, label %bb.d, !llvm.loop !32

bb.e:                                             ; preds = %bb.d
  %i.x = insertelement <2 x i32> poison, i32 %.038, i64 0
  %i.y = insertelement <2 x i32> %i.x, i32 %.0, i64 1
  %i.z = sitofp <2 x i32> %i.y to <2 x double>
  %i.aa = insertelement <2 x double> poison, double %.036, i64 0
  %i.ab = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ac = fdiv <2 x double> %i.ab, %i.z           ; 2 uses
  %i.ad = insertelement <2 x i32> poison, i32 %i.p, i64 0
  %i.ae = insertelement <2 x i32> %i.ad, i32 %i.v, i64 1
  %i.af = sitofp <2 x i32> %i.ae to <2 x double>
  %i.ag = insertelement <2 x double> poison, double %.037, i64 0
  %i.ah = shufflevector <2 x double> %i.ag, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ai = fdiv <2 x double> %i.ah, %i.af          ; 2 uses
  %i.aj = fcmp olt <2 x double> %i.ac, %i.ai
  %i.ak = select <2 x i1> %i.aj, <2 x double> %i.ai, <2 x double> %i.ac ; 2 uses
  %i.al = extractelement <2 x double> %i.ak, i64 0
  %i.am = extractelement <2 x double> %i.ak, i64 1
  %i.an = fcmp ole double %i.al, %i.am
  %i.ao = select i1 %i.an, i32 %.038, i32 %.0     ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i32 %i.ao, ptr %i.ap, align 8, !tbaa !33
  %i.aq = sdiv i32 %i.g, %i.ao                    ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !34
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 %i.aq, ptr %i.ap, align 8, !tbaa !4
  store i32 %i.ao, ptr %i.ar, align 4, !tbaa !4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.as = phi i32 [ %i.aq, %bb.f ], [ %i.ao, %bb.e ] ; 2 uses
  %i.at = load i32, ptr @_ZN8Parallel4mypeE, align 4, !tbaa !4 ; 2 uses
  %i.au = srem i32 %i.at, %i.as
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.au, ptr %i.av, align 8, !tbaa !35
  %i.aw = sdiv i32 %i.at, %i.as
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %i.aw, ptr %i.ax, align 4, !tbaa !36
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7GenMesh11generatePieERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, ptr noundef nonnull align 1 %1, ptr nofree noundef nonnull align 1 captures(none) %2, ptr nofree noundef nonnull align 1 captures(none) %3, ptr nofree noundef nonnull align 1 captures(none) %4, ptr nofree noundef nonnull align 1 captures(none) %5, ptr nofree noundef nonnull align 1 captures(none) %6, ptr nofree noundef nonnull align 1 captures(none) %7, ptr nofree noundef nonnull align 1 captures(none) %8, ptr nofree noundef nonnull align 1 captures(none) %9, ptr nofree noundef nonnull align 1 captures(none) %10) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %11 = alloca %struct.double2, align 8           ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !38   ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !40   ; 9 uses
  %i.e = mul nsw i32 %i.d, %i.b                   ; 3 uses
  %i.f = add nsw i32 %i.b, 1                      ; 11 uses
  %i.g = add i32 %i.d, 1                          ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 13 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !36
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
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !41
  %i.s = load ptr, ptr %1, align 8, !tbaa !44     ; 13 uses
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64                 ; 4 uses
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %i.w = ashr exact i64 %i.v, 4
  %i.x = icmp ult i64 %i.w, %i.o
  br i1 %i.x, label %_ZNSt12_Vector_baseI7double2SaIS0_EE11_M_allocateEm.exit.i.i, label %_ZNSt6vectorI7double2SaIS0_EE7reserveEm.exit

_ZNSt12_Vector_baseI7double2SaIS0_EE11_M_allocateEm.exit.i.i: ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !45   ; 3 uses
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
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader843, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.ai = add i64 %i.aa, -16
  %i.aj = sub i64 %i.ai, %i.u
  %i.ak = and i64 %i.aj, -16                      ; 2 uses
  %i.al = or disjoint i64 %i.ak, 8                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ad, i64 %i.al
  %scevgep791 = getelementptr i8, ptr %i.s, i64 %i.al
  %scevgep792 = getelementptr i8, ptr %i.ad, i64 8
  %i.am = add i64 %i.ak, 16                       ; 2 uses
  %scevgep793 = getelementptr i8, ptr %i.ad, i64 %i.am
  %scevgep794 = getelementptr i8, ptr %i.s, i64 8
  %scevgep795 = getelementptr i8, ptr %i.s, i64 %i.am
  %bound0 = icmp ult ptr %i.ad, %scevgep791
  %bound1 = icmp ult ptr %i.s, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0796 = icmp ult ptr %scevgep792, %scevgep795
  %bound1797 = icmp ult ptr %scevgep794, %scevgep793
  %found.conflict798 = and i1 %bound0796, %bound1797
  %conflict.rdx = or i1 %found.conflict, %found.conflict798
  br i1 %conflict.rdx, label %.lr.ph.i.i.i.i.i.i.preheader843, label %vector.ph

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
  %next.gep799 = getelementptr i8, ptr %i.ad, i64 %i.ar
  %next.gep800 = getelementptr i8, ptr %i.s, i64 %i.aq
  %next.gep801 = getelementptr i8, ptr %i.s, i64 %i.ar
  %wide.load = load <2 x double>, ptr %next.gep800, align 8
  %wide.load802 = load <2 x double>, ptr %next.gep801, align 8
  store <2 x double> %wide.load, ptr %next.gep, align 8
  store <2 x double> %wide.load802, ptr %next.gep799, align 8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !46

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorI7double2SaIS0_EE20_M_allocate_and_copyIPKS0_EEPS0_mT_S7_.exit.i, label %.lr.ph.i.i.i.i.i.i.preheader843

.lr.ph.i.i.i.i.i.i.preheader843:                  ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.015.i.i.i.i.i.i.ph = phi ptr [ %i.ad, %vector.memcheck ], [ %i.ad, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ao, %middle.block ]
  %.01214.i.i.i.i.i.i.ph = phi ptr [ %i.s, %vector.memcheck ], [ %i.s, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ap, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader843, %.lr.ph.i.i.i.i.i.i
  %.015.i.i.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i.i ], [ %.015.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader843 ] ; 2 uses
  %.01214.i.i.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i.i ], [ %.01214.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader843 ] ; 2 uses
  %i.at = load <2 x double>, ptr %.01214.i.i.i.i.i.i, align 8, !tbaa !23
  store <2 x double> %i.at, ptr %.015.i.i.i.i.i.i, align 8, !tbaa !23
  %i.au = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.i = icmp eq ptr %i.au, %i.z
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorI7double2SaIS0_EE20_M_allocate_and_copyIPKS0_EEPS0_mT_S7_.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !49

_ZNSt6vectorI7double2SaIS0_EE20_M_allocate_and_copyIPKS0_EEPS0_mT_S7_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseI7double2SaIS0_EE11_M_allocateEm.exit.i.i
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseI7double2SaIS0_EE13_M_deallocateEPS0_m.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorI7double2SaIS0_EE20_M_allocate_and_copyIPKS0_EEPS0_mT_S7_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.v) #16
  br label %_ZNSt12_Vector_baseI7double2SaIS0_EE13_M_deallocateEPS0_m.exit.i

_ZNSt12_Vector_baseI7double2SaIS0_EE13_M_deallocateEPS0_m.exit.i: ; preds = %bb.d, %_ZNSt6vectorI7double2SaIS0_EE20_M_allocate_and_copyIPKS0_EEPS0_mT_S7_.exit.i
  store ptr %i.ad, ptr %1, align 8, !tbaa !44
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  store ptr %i.aw, ptr %i.y, align 8, !tbaa !45
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %i.o
  store ptr %i.ax, ptr %i.q, align 8, !tbaa !41
  br label %_ZNSt6vectorI7double2SaIS0_EE7reserveEm.exit

_ZNSt6vectorI7double2SaIS0_EE7reserveEm.exit:     ; preds = %bb.c, %_ZNSt12_Vector_baseI7double2SaIS0_EE13_M_deallocateEPS0_m.exit.i
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ba = load <2 x double>, ptr %i.ay, align 8, !tbaa !23
  %i.bb = load <2 x i32>, ptr %i.az, align 8, !tbaa !4
  %i.bc = sitofp <2 x i32> %i.bb to <2 x double>
  %i.bd = fdiv <2 x double> %i.ba, %i.bc          ; 2 uses
  %.not532 = icmp slt i32 %i.d, 0
  br i1 %.not532, label %._crit_edge, label %.lr.ph534

.lr.ph534:                                        ; preds = %_ZNSt6vectorI7double2SaIS0_EE7reserveEm.exit
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 84
  %.not152530 = icmp slt i32 %i.b, 0
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.bh = extractelement <2 x double> %i.bd, i64 1
  %i.bi = extractelement <2 x double> %i.bd, i64 0
  br label %bb.m

._crit_edge:                                      ; preds = %.loopexit, %_ZNSt6vectorI7double2SaIS0_EE7reserveEm.exit
  %i.bj = sext i32 %i.e to i64                    ; 6 uses
  %i.bk = icmp slt i32 %i.e, 0
  br i1 %i.bk, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #18
  unreachable

bb.f:                                             ; preds = %._crit_edge
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !50
  %i.bn = load ptr, ptr %2, align 8, !tbaa !53    ; 4 uses
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = ptrtoint ptr %i.bn to i64               ; 2 uses
  %i.bq = sub i64 %i.bo, %i.bp                    ; 2 uses
  %i.br = ashr exact i64 %i.bq, 2
  %i.bs = icmp ult i64 %i.br, %i.bj
  br i1 %i.bs, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i, label %_ZNSt6vectorIiSaIiEE7reserveEm.exit

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %bb.f
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !54
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = sub i64 %i.bv, %i.bp                    ; 3 uses
  %i.bx = shl nuw nsw i64 %i.bj, 2
end_hunk_0
