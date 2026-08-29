Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/GenMesh?download=true
inline.NumInlined: 678
inline.NumDeleted: 216
begin_hunk_0_@_ZN7GenMeshC2EPK9InputFile:._crit_edge.i.i

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.dw = phi double [ %i.du, %bb.x ], [ %i.dv, %bb.y ]
  %i.dx = fptosi double %i.dw to i32              ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.dx, ptr %i.dy, align 4, !tbaa !27
  %i.dz = load i64, ptr %i.b, align 8, !tbaa !12
  %i.ea = icmp eq i64 %i.dz, 3                    ; 2 uses
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
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %12 = load <2 x i32>, ptr %i.a, align 8, !tbaa !4
  %13 = sitofp <2 x i32> %12 to <2 x double>      ; 2 uses
  %14 = extractelement <2 x double> %13, i64 0    ; 3 uses
  %15 = extractelement <2 x double> %13, i64 1    ; 3 uses
  %16 = fcmp ogt double %14, %15                  ; 3 uses
  %.037.i = select i1 %16, double %14, double %15 ; 2 uses
  %.036.i = select i1 %16, double %15, double %14 ; 2 uses
  %i.b = load i32, ptr @_ZN8Parallel5numpeE, align 4, !tbaa !4 ; 6 uses
  %i.c = sitofp i32 %i.b to double
  %i.d = fmul nnan double %.036.i, %i.c
  %i.e = fdiv double %i.d, %.037.i
  %i.f = tail call double @sqrt(double noundef %i.e) #15, !tbaa !4 ; 2 uses
  %i.g = fadd double %i.f, f0x3D719799812DEA11
  %i.h = tail call double @llvm.floor.f64(double %i.g)
  %i.i = fptosi double %i.h to i32
  %.sroa.speculated20.i = tail call i32 @llvm.smax.i32(i32 %i.i, i32 1)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.038.i = phi i32 [ %.sroa.speculated20.i, %bb.a ], [ %i.l, %bb.b ] ; 5 uses
  %i.j = srem i32 %i.b, %.038.i
  %i.k = sdiv i32 %i.b, %.038.i
  %.not.i = icmp eq i32 %i.j, 0
  %i.l = add nsw i32 %.038.i, -1
  br i1 %.not.i, label %bb.c, label %bb.b, !llvm.loop !30

bb.c:                                             ; preds = %bb.b
  %i.m = fadd double %i.f, f0xBD719799812DEA11
  %i.n = tail call double @llvm.ceil.f64(double %i.m)
  %i.o = fptosi double %i.n to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i32 [ %i.o, %bb.c ], [ %i.r, %bb.d ] ; 5 uses
  %i.p = srem i32 %i.b, %.0.i
  %i.q = sdiv i32 %i.b, %.0.i
  %.not11.i = icmp eq i32 %i.p, 0
  %i.r = add nsw i32 %.0.i, 1
  br i1 %.not11.i, label %bb.e, label %bb.d, !llvm.loop !32

bb.e:                                             ; preds = %bb.d
  %i.s = insertelement <2 x i32> poison, i32 %.038.i, i64 0
  %i.t = insertelement <2 x i32> %i.s, i32 %.0.i, i64 1
  %i.u = sitofp <2 x i32> %i.t to <2 x double>
  %i.v = insertelement <2 x double> poison, double %.036.i, i64 0
  %i.w = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> zeroinitializer
  %i.x = fdiv <2 x double> %i.w, %i.u             ; 2 uses
  %i.y = insertelement <2 x i32> poison, i32 %i.k, i64 0
  %i.z = insertelement <2 x i32> %i.y, i32 %i.q, i64 1
  %i.aa = sitofp <2 x i32> %i.z to <2 x double>
  %i.ab = insertelement <2 x double> poison, double %.037.i, i64 0
  %i.ac = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ad = fdiv <2 x double> %i.ac, %i.aa          ; 2 uses
  %i.ae = fcmp olt <2 x double> %i.x, %i.ad
  %i.af = select <2 x i1> %i.ae, <2 x double> %i.ad, <2 x double> %i.x ; 2 uses
  %i.ag = extractelement <2 x double> %i.af, i64 0
  %i.ah = extractelement <2 x double> %i.af, i64 1
  %i.ai = fcmp ole double %i.ag, %i.ah
  %i.aj = select i1 %i.ai, i32 %.038.i, i32 %.0.i ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i32 %i.aj, ptr %i.ak, align 8, !tbaa !33
  %i.al = sdiv i32 %i.b, %i.aj                    ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  store i32 %i.al, ptr %i.am, align 4, !tbaa !34
  br i1 %16, label %bb.f, label %_ZN7GenMesh9calcNumPEEv.exit

bb.f:                                             ; preds = %bb.e
  store i32 %i.al, ptr %i.ak, align 8, !tbaa !4
  store i32 %i.aj, ptr %i.am, align 4, !tbaa !4
  br label %_ZN7GenMesh9calcNumPEEv.exit

_ZN7GenMesh9calcNumPEEv.exit:                     ; preds = %bb.e, %bb.f
  %i.an = phi i32 [ %i.aj, %bb.f ], [ %i.al, %bb.e ] ; 2 uses
  %i.ao = phi i32 [ %i.al, %bb.f ], [ %i.aj, %bb.e ] ; 4 uses
  %i.ap = load i32, ptr @_ZN8Parallel4mypeE, align 4, !tbaa !4 ; 2 uses
  %i.aq = srem i32 %i.ap, %i.ao                   ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.aq, ptr %i.ar, align 8, !tbaa !35
  %i.as = sdiv i32 %i.ap, %i.ao                   ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %i.as, ptr %i.at, align 4, !tbaa !36
  %i.au = load i32, ptr %i.a, align 8, !tbaa !25  ; 2 uses
  %i.av = mul nsw i32 %i.au, %i.aq
  %i.aw = sdiv i32 %i.av, %i.ao                   ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %i.aw, ptr %i.ax, align 8, !tbaa !37
  %i.ay = add nsw i32 %i.aq, 1
  %i.az = mul nsw i32 %i.au, %i.ay
  %i.ba = sdiv i32 %i.az, %i.ao
  %i.bb = sub nsw i32 %i.ba, %i.aw
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %i.bb, ptr %i.bc, align 8, !tbaa !38
  %i.bd = load i32, ptr %11, align 4, !tbaa !27   ; 2 uses
  %i.be = mul nsw i32 %i.bd, %i.as
  %i.bf = sdiv i32 %i.be, %i.an                   ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 %i.bf, ptr %i.bg, align 4, !tbaa !39
  %i.bh = add nsw i32 %i.as, 1
  %i.bi = mul nsw i32 %i.bd, %i.bh
  %i.bj = sdiv i32 %i.bi, %i.an
  %i.bk = sub nsw i32 %i.bj, %i.bf
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 %i.bk, ptr %i.bl, align 4, !tbaa !40
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !12 ; 3 uses
  switch i64 %i.bn, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit35.thread38 [
    i64 3, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 4, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit33
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZN7GenMesh9calcNumPEEv.exit
  %i.bo = load ptr, ptr %0, align 8, !tbaa !16    ; 3 uses
  %i.bp = load i16, ptr %i.bo, align 1
  %i.bq = xor i16 %i.bp, 26992
  %i.br = getelementptr i8, ptr %i.bo, i64 2
  %i.bs = load i8, ptr %i.br, align 1
  %i.bt = zext i8 %i.bs to i16
  %i.bu = xor i16 %i.bt, 101
  %i.bv = or i16 %i.bq, %i.bu
  %i.bw = icmp ne i16 %i.bv, 0
  %i.bx = zext i1 %i.bw to i32
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit35

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  tail call void @_ZN7GenMesh11generatePieERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %2, ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %5, ptr noundef nonnull align 1 %6, ptr noundef nonnull align 1 %7, ptr noundef nonnull align 1 %8, ptr noundef nonnull align 1 %9, ptr noundef nonnull align 1 %10)
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit35.thread38

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit33: ; preds = %_ZN7GenMesh9calcNumPEEv.exit
  %.pre = load ptr, ptr %0, align 8, !tbaa !16
  %bcmp.i32 = tail call i32 @bcmp(ptr %.pre, ptr nonnull @.str.4, i64 %i.bn)
  %i.bz = icmp eq i32 %bcmp.i32, 0
  br i1 %i.bz, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit33.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit35.thread38

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit33.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit33
  tail call void @_ZN7GenMesh12generateRectERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %2, ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %5, ptr noundef nonnull align 1 %6, ptr noundef nonnull align 1 %7, ptr noundef nonnull align 1 %8, ptr noundef nonnull align 1 %9, ptr noundef nonnull align 1 %10)
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit35.thread38

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit35: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %bcmp.i34 = tail call i32 @bcmp(ptr nonnull %i.bo, ptr nonnull @.str.5, i64 %i.bn)
  %i.ca = icmp eq i32 %bcmp.i34, 0
  br i1 %i.ca, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit35.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit35.thread38

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
  %1 = load <2 x i32>, ptr %i.a, align 8, !tbaa !4
  %2 = sitofp <2 x i32> %1 to <2 x double>        ; 2 uses
  %3 = extractelement <2 x double> %2, i64 0      ; 3 uses
  %4 = extractelement <2 x double> %2, i64 1      ; 3 uses
  %5 = fcmp ogt double %3, %4                     ; 3 uses
  %.037 = select i1 %5, double %3, double %4      ; 2 uses
  %.036 = select i1 %5, double %4, double %3      ; 2 uses
  %i.b = load i32, ptr @_ZN8Parallel5numpeE, align 4, !tbaa !4 ; 6 uses
  %i.c = sitofp i32 %i.b to double
  %i.d = fmul nnan double %.036, %i.c
  %i.e = fdiv double %i.d, %.037
  %i.f = tail call double @sqrt(double noundef %i.e) #15, !tbaa !4 ; 2 uses
  %i.g = fadd double %i.f, f0x3D719799812DEA11
  %i.h = tail call double @llvm.floor.f64(double %i.g)
  %i.i = fptosi double %i.h to i32
  %.sroa.speculated20 = tail call i32 @llvm.smax.i32(i32 %i.i, i32 1)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.038 = phi i32 [ %.sroa.speculated20, %bb.a ], [ %i.l, %bb.b ] ; 5 uses
  %i.j = srem i32 %i.b, %.038
  %i.k = sdiv i32 %i.b, %.038
  %.not = icmp eq i32 %i.j, 0
  %i.l = add nsw i32 %.038, -1
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !30

bb.c:                                             ; preds = %bb.b
  %i.m = fadd double %i.f, f0xBD719799812DEA11
  %i.n = tail call double @llvm.ceil.f64(double %i.m)
  %i.o = fptosi double %i.n to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i32 [ %i.o, %bb.c ], [ %i.r, %bb.d ]  ; 5 uses
  %i.p = srem i32 %i.b, %.0
  %i.q = sdiv i32 %i.b, %.0
  %.not11 = icmp eq i32 %i.p, 0
  %i.r = add nsw i32 %.0, 1
  br i1 %.not11, label %bb.e, label %bb.d, !llvm.loop !32

bb.e:                                             ; preds = %bb.d
  %i.s = insertelement <2 x i32> poison, i32 %.038, i64 0
  %i.t = insertelement <2 x i32> %i.s, i32 %.0, i64 1
  %i.u = sitofp <2 x i32> %i.t to <2 x double>
  %i.v = insertelement <2 x double> poison, double %.036, i64 0
  %i.w = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> zeroinitializer
  %i.x = fdiv <2 x double> %i.w, %i.u             ; 2 uses
  %i.y = insertelement <2 x i32> poison, i32 %i.k, i64 0
  %i.z = insertelement <2 x i32> %i.y, i32 %i.q, i64 1
  %i.aa = sitofp <2 x i32> %i.z to <2 x double>
  %i.ab = insertelement <2 x double> poison, double %.037, i64 0
  %i.ac = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ad = fdiv <2 x double> %i.ac, %i.aa          ; 2 uses
  %i.ae = fcmp olt <2 x double> %i.x, %i.ad
  %i.af = select <2 x i1> %i.ae, <2 x double> %i.ad, <2 x double> %i.x ; 2 uses
  %i.ag = extractelement <2 x double> %i.af, i64 0
  %i.ah = extractelement <2 x double> %i.af, i64 1
  %i.ai = fcmp ole double %i.ag, %i.ah
  %i.aj = select i1 %i.ai, i32 %.038, i32 %.0     ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i32 %i.aj, ptr %i.ak, align 8, !tbaa !33
  %i.al = sdiv i32 %i.b, %i.aj                    ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  store i32 %i.al, ptr %i.am, align 4, !tbaa !34
  br i1 %5, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 %i.al, ptr %i.ak, align 8, !tbaa !4
  store i32 %i.aj, ptr %i.am, align 4, !tbaa !4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.an = phi i32 [ %i.al, %bb.f ], [ %i.aj, %bb.e ] ; 2 uses
  %i.ao = load i32, ptr @_ZN8Parallel4mypeE, align 4, !tbaa !4 ; 2 uses
  %i.ap = srem i32 %i.ao, %i.an
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.ap, ptr %i.aq, align 8, !tbaa !35
  %i.ar = sdiv i32 %i.ao, %i.an
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !36
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
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !41
  %i.s = load ptr, ptr %1, align 8, !tbaa !44     ; 11 uses
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64                 ; 4 uses
  %i.v = sub i64 %i.t, %i.u
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
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !46

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
  %i.at = load <2 x double>, ptr %.01214.i.i.i.i.i.i, align 8, !tbaa !23
  store <2 x double> %i.at, ptr %.015.i.i.i.i.i.i, align 8, !tbaa !23
  %i.au = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.i = icmp eq ptr %i.au, %i.z
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorI7double2SaIS0_EE20_M_allocate_and_copyIPKS0_EEPS0_mT_S7_.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !49

_ZNSt6vectorI7double2SaIS0_EE20_M_allocate_and_copyIPKS0_EEPS0_mT_S7_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseI7double2SaIS0_EE11_M_allocateEm.exit.i.i
  %i.aw = load ptr, ptr %1, align 8, !tbaa !44    ; 3 uses
  %.not.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseI7double2SaIS0_EE13_M_deallocateEPS0_m.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorI7double2SaIS0_EE20_M_allocate_and_copyIPKS0_EEPS0_mT_S7_.exit.i
  %i.ax = load ptr, ptr %i.q, align 8, !tbaa !41
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = sub i64 %i.ay, %i.az
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.ba) #16
  br label %_ZNSt12_Vector_baseI7double2SaIS0_EE13_M_deallocateEPS0_m.exit.i

_ZNSt12_Vector_baseI7double2SaIS0_EE13_M_deallocateEPS0_m.exit.i: ; preds = %bb.d, %_ZNSt6vectorI7double2SaIS0_EE20_M_allocate_and_copyIPKS0_EEPS0_mT_S7_.exit.i
  store ptr %i.ad, ptr %1, align 8, !tbaa !44
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  store ptr %i.bb, ptr %i.y, align 8, !tbaa !45
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %i.o
  store ptr %i.bc, ptr %i.q, align 8, !tbaa !41
  br label %_ZNSt6vectorI7double2SaIS0_EE7reserveEm.exit

_ZNSt6vectorI7double2SaIS0_EE7reserveEm.exit:     ; preds = %bb.c, %_ZNSt12_Vector_baseI7double2SaIS0_EE13_M_deallocateEPS0_m.exit.i
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bf = load <2 x double>, ptr %i.bd, align 8, !tbaa !23
  %i.bg = load <2 x i32>, ptr %i.be, align 8, !tbaa !4
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
  %i.bn = extractelement <2 x double> %i.bi, i64 0
  br label %bb.m

._crit_edge:                                      ; preds = %.loopexit, %_ZNSt6vectorI7double2SaIS0_EE7reserveEm.exit
  %i.bo = sext i32 %i.e to i64                    ; 6 uses
  %i.bp = icmp slt i32 %i.e, 0
  br i1 %i.bp, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #18
  unreachable

bb.f:                                             ; preds = %._crit_edge
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !50
  %i.bs = load ptr, ptr %2, align 8, !tbaa !53
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = ptrtoint ptr %i.bs to i64               ; 2 uses
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = ashr exact i64 %i.bv, 2
  %i.bx = icmp ult i64 %i.bw, %i.bo
  br i1 %i.bx, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i, label %_ZNSt6vectorIiSaIiEE7reserveEm.exit

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %bb.f
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !54
  %i.ca = ptrtoint ptr %i.bz to i64
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIiSaIiEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPiS1_EEEEvS6_T_S7_St20forward_iterator_tag:bb.a
  %i.ae = load i32, ptr %1, align 4, !tbaa !4
  store i32 %i.ae, ptr %i.ad, align 4, !tbaa !4
  br label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit

_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit:       ; preds = %bb.h, %bb.i, %bb.j
  br i1 %i.s, label %bb.k, label %bb.l, !prof !102

bb.k:                                             ; preds = %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %1, ptr align 4 %2, i64 %i.c, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.l:                                             ; preds = %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit
  %i.af = icmp eq i64 %i.c, 4
  br i1 %i.af, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.m:                                             ; preds = %bb.l
  %i.ag = load i32, ptr %2, align 4, !tbaa !4
  store i32 %i.ag, ptr %1, align 4, !tbaa !4
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.ah = icmp eq i64 %i.m, 4
  %i.ai = getelementptr inbounds i8, ptr %2, i64 %i.m ; 3 uses
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.a, %i.aj                     ; 3 uses
  %i.al = icmp sgt i64 %i.ak, 4
  br i1 %i.al, label %bb.n, label %bb.o, !prof !102

bb.n:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.h, ptr align 4 %i.ai, i64 %i.ak, i1 false)
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !54
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E.exit

bb.o:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.am = icmp eq i64 %i.ak, 4
  br i1 %i.am, label %bb.p, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E.exit

bb.p:                                             ; preds = %bb.o
  %i.an = load i32, ptr %i.ai, align 4, !tbaa !4
  store i32 %i.an, ptr %i.h, align 4, !tbaa !4
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E.exit: ; preds = %bb.n, %bb.o, %bb.p
  %i.ao = phi ptr [ %.pre, %bb.n ], [ %i.h, %bb.o ], [ %i.h, %bb.p ]
  %i.ap = sub nuw nsw i64 %i.d, %i.n
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.ap ; 5 uses
  store ptr %i.aq, ptr %i.g, align 8, !tbaa !54
  %i.ar = icmp sgt i64 %i.m, 4
  br i1 %i.ar, label %bb.q, label %bb.r, !prof !102

bb.q:                                             ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.aq, ptr align 4 %1, i64 %i.m, i1 false)
  %.pre71 = load ptr, ptr %i.g, align 8, !tbaa !54
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit51

bb.r:                                             ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E.exit
  br i1 %i.ah, label %bb.s, label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit51

bb.s:                                             ; preds = %bb.r
  %i.as = load i32, ptr %1, align 4, !tbaa !4
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !4
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit51

_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit51: ; preds = %bb.q, %bb.r, %bb.s
  %i.at = phi ptr [ %.pre71, %bb.q ], [ %i.aq, %bb.r ], [ %i.aq, %bb.s ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.m
  store ptr %i.au, ptr %i.g, align 8, !tbaa !54
  %i.av = icmp sgt i64 %i.m, 4
  br i1 %i.av, label %bb.t, label %bb.u, !prof !102

bb.t:                                             ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit51
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %1, ptr align 4 %2, i64 %i.m, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.u:                                             ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit51
  %i.aw = icmp eq i64 %i.m, 4
  br i1 %i.aw, label %bb.v, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.v:                                             ; preds = %bb.u
  %i.ax = load i32, ptr %2, align 4, !tbaa !4
  store i32 %i.ax, ptr %1, align 4, !tbaa !4
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.w:                                             ; preds = %bb.b
  %i.ay = load ptr, ptr %0, align 8, !tbaa !53    ; 5 uses
  %i.az = ptrtoint ptr %i.ay to i64               ; 3 uses
  %i.ba = sub i64 %i.j, %i.az
  %i.bb = ashr exact i64 %i.ba, 2                 ; 4 uses
  %i.bc = sub nsw i64 2305843009213693951, %i.bb
  %i.bd = icmp ult i64 %i.bc, %i.d
  br i1 %i.bd, label %bb.x, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit

bb.x:                                             ; preds = %bb.w
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #18
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit:    ; preds = %bb.w
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bb, i64 %i.d)
  %i.be = add nsw i64 %.sroa.speculated.i, %i.bb  ; 2 uses
  %i.bf = icmp ult i64 %i.be, %i.bb
  %i.bg = tail call i64 @llvm.umin.i64(i64 %i.be, i64 2305843009213693951)
  %i.bh = select i1 %i.bf, i64 2305843009213693951, i64 %i.bg ; 3 uses
  %.not.i = icmp eq i64 %i.bh, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit, label %bb.y

bb.y:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.bi = shl nuw nsw i64 %i.bh, 2
  %i.bj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bi) #19
  br label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit:  ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit, %bb.y
  %i.bk = phi ptr [ %i.bj, %bb.y ], [ null, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.bl = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bm = sub i64 %i.bl, %i.az                    ; 4 uses
  %i.bn = icmp sgt i64 %i.bm, 4
  br i1 %i.bn, label %bb.z, label %bb.aa, !prof !102

bb.z:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.bk, ptr align 4 %i.ay, i64 %i.bm, i1 false)
  br label %bb.ac

bb.aa:                                            ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit
  %i.bo = icmp eq i64 %i.bm, 4
  br i1 %i.bo, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bp = load i32, ptr %i.ay, align 4, !tbaa !4
  store i32 %i.bp, ptr %i.bk, align 4, !tbaa !4
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %i.bq = getelementptr inbounds i8, ptr %i.bk, i64 %i.bm ; 3 uses
  %i.br = icmp sgt i64 %i.c, 4
  br i1 %i.br, label %bb.ad, label %bb.ae, !prof !102

bb.ad:                                            ; preds = %bb.ac
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bq, ptr align 4 %2, i64 %i.c, i1 false)
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  %i.bs = icmp eq i64 %i.c, 4
  br i1 %i.bs, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.bt = load i32, ptr %2, align 4, !tbaa !4
  store i32 %i.bt, ptr %i.bq, align 4, !tbaa !4
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %i.bu = getelementptr inbounds i8, ptr %i.bq, i64 %i.c ; 3 uses
  %i.bv = sub i64 %i.j, %i.bl                     ; 4 uses
  %i.bw = icmp sgt i64 %i.bv, 4
  br i1 %i.bw, label %bb.ah, label %bb.ai, !prof !102

bb.ah:                                            ; preds = %bb.ag
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bu, ptr align 4 %1, i64 %i.bv, i1 false)
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ag
  %i.bx = icmp eq i64 %i.bv, 4
  br i1 %i.bx, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.by = load i32, ptr %1, align 4, !tbaa !4
  store i32 %i.by, ptr %i.bu, align 4, !tbaa !4
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.bz = getelementptr inbounds i8, ptr %i.bu, i64 %i.bv
  %.not.i55 = icmp eq ptr %i.ay, null
  br i1 %.not.i55, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ca = load ptr, ptr %i.e, align 8, !tbaa !50
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = sub i64 %i.cb, %i.az
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.cc) #16
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit: ; preds = %bb.ak, %bb.al
  store ptr %i.bk, ptr %0, align 8, !tbaa !53
  store ptr %i.bz, ptr %i.g, align 8, !tbaa !54
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.bh
  store ptr %i.cd, ptr %i.e, align 8, !tbaa !50
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit: ; preds = %bb.v, %bb.u, %bb.t, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #15 = { nounwind }
attributes #16 = { builtin nounwind }
attributes #17 = { cold noreturn nounwind }
attributes #18 = { noreturn }
attributes #19 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !10, i64 0}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!13, !14, i64 8}
!13 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !9, i64 0, !14, i64 8, !6, i64 16}
!14 = !{!"long", !6, i64 0}
!15 = !{!6, !6, i64 0}
!16 = !{!13, !10, i64 0}
!17 = distinct !{null}
!18 = !{!19, !20, i64 0}
!19 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !20, i64 0, !20, i64 8, !20, i64 16}
!20 = !{!"p1 double", !11, i64 0}
!21 = !{!19, !20, i64 16}
!22 = !{!20, !20, i64 0}
!23 = !{!24, !24, i64 0}
!24 = !{!"double", !6, i64 0}
!25 = !{!26, !5, i64 32}
!26 = !{!"_ZTS7GenMesh", !13, i64 0, !5, i64 32, !5, i64 36, !24, i64 40, !24, i64 48, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84}
!27 = !{!26, !5, i64 36}
!28 = !{!26, !24, i64 40}
!29 = !{!26, !24, i64 48}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.mustprogress"}
!32 = distinct !{!32, !31}
!33 = !{!26, !5, i64 56}
!34 = !{!26, !5, i64 60}
!35 = !{!26, !5, i64 64}
!36 = !{!26, !5, i64 68}
!37 = !{!26, !5, i64 80}
!38 = !{!26, !5, i64 72}
!39 = !{!26, !5, i64 84}
!40 = !{!26, !5, i64 76}
!41 = !{!42, !43, i64 16}
!42 = !{!"_ZTSNSt12_Vector_baseI7double2SaIS0_EE17_Vector_impl_dataE", !43, i64 0, !43, i64 8, !43, i64 16}
!43 = !{!"p1 _ZTS7double2", !11, i64 0}
!44 = !{!42, !43, i64 0}
!45 = !{!42, !43, i64 8}
!46 = distinct !{!46, !31, !47, !48}
!47 = !{!"llvm.loop.isvectorized", i32 1}
!48 = !{!"llvm.loop.unroll.runtime.disable"}
!49 = distinct !{!49, !31, !47}
!50 = !{!51, !52, i64 16}
!51 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !52, i64 0, !52, i64 8, !52, i64 16}
!52 = !{!"p1 int", !11, i64 0}
!53 = !{!51, !52, i64 0}
!54 = !{!51, !52, i64 8}
!55 = !{!56, !24, i64 0}
!56 = !{!"_ZTS7double2", !24, i64 0, !24, i64 8}
!57 = !{!56, !24, i64 8}
!58 = distinct !{!58, !31, !47, !48}
!59 = distinct !{!59, !31, !47}
!60 = distinct !{!60, !31}
!61 = distinct !{!61, !31}
!62 = distinct !{!62, !31, !63}
!63 = !{!"llvm.loop.unswitch.partial.disable"}
!64 = distinct !{!64, !31}
!65 = distinct !{!65, !31, !66}
!66 = !{!"llvm.loop.peeled.count", i32 1}
!67 = distinct !{!67, !31}
!68 = distinct !{!68, !31}
!69 = distinct !{!69, !31}
!70 = distinct !{!70, !31, !66}
!71 = distinct !{!71, !31, !47, !48}
!72 = distinct !{!72, !31, !47}
!73 = distinct !{!73, !31}
!74 = distinct !{!74, !31, !47, !48}
!75 = distinct !{!75, !31, !47}
!76 = distinct !{!76, !31}
!77 = distinct !{!77, !31, !63}
!78 = distinct !{!78, !31}
!79 = distinct !{!79, !31, !66}
!80 = distinct !{!80, !31, !66}
!81 = distinct !{!81, !31, !66}
!82 = distinct !{!82, !31, !66}
!83 = distinct !{!83, !31, !47, !48}
!84 = distinct !{!84, !31, !47}
!85 = distinct !{!85, !31}
!86 = distinct !{!86, !31, !47, !48}
!87 = distinct !{!87, !31, !47}
!88 = !{!89}
!89 = distinct !{!89, !90, !"_Z12make_double2RKdS0_: argument 0"}
!90 = distinct !{!90, !"_Z12make_double2RKdS0_"}
!91 = !{!92}
!92 = distinct !{!92, !93, !"_Z12make_double2RKdS0_: argument 0"}
!93 = distinct !{!93, !"_Z12make_double2RKdS0_"}
!94 = !{!95}
!95 = distinct !{!95, !96, !"_Z12make_double2RKdS0_: argument 0"}
!96 = distinct !{!96, !"_Z12make_double2RKdS0_"}
!97 = !{!98}
!98 = distinct !{!98, !99, !"_Z12make_double2RKdS0_: argument 0"}
!99 = distinct !{!99, !"_Z12make_double2RKdS0_"}
!100 = distinct !{!100, !31}
!101 = distinct !{!101, !31}
!102 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!103 = !{!52, !52, i64 0}
!104 = distinct !{!104, !31}
!105 = distinct !{!105, !31, !66}
!106 = distinct !{!106, !31, !66}
!107 = distinct !{!107, !31, !66}
!108 = distinct !{!108, !31, !66}
!109 = distinct !{!109, !31, !47, !48}
!110 = distinct !{!110, !31, !47}
!111 = distinct !{!111, !31, !47, !48}
!112 = distinct !{!112, !31, !47}
end_hunk_1
